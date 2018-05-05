package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import modelo.Livro;
import util.FabricaConexao;

public class LivroDao {
	
	public ArrayList<Livro> pesquisar(String titulo){
		
		String pesquisaPorNome = "SELECT TITULO, COD_LIVRO, AUTOR, PRECO, IMAGEM, DESCRICAO FROM LIVRO WHERE TITULO LIKE ?";
		Livro livro = null;
		
		ArrayList<Livro> lista = new ArrayList<Livro>();
		
		try {
			Connection conexao = FabricaConexao.getConexao();
			PreparedStatement consulta = conexao.prepareStatement(pesquisaPorNome);
			
			consulta.setString(1, "%" + titulo.toUpperCase()+"%");
			ResultSet resultado = consulta.executeQuery();
			
			while (resultado.next()) {
				livro = new Livro();
				livro.setIdLivro(resultado.getInt("COD_LIVRO"));
				livro.setTitulo(resultado.getString("TITULO"));
				livro.setAutor(resultado.getString("AUTOR"));
				livro.setDescricao(resultado.getString("DESCRICAO"));
				livro.setImagem(resultado.getString("IMAGEM"));
				livro.setPreco(resultado.getDouble("PRECO"));
				lista.add(livro);			
			}
		resultado.close();	
		}
			catch (SQLException e) {
				e.printStackTrace();
			}
		return lista;		
	}
	
public int excluir(Livro livro){
		
		String excluirPorId = "DELETE FROM livro WHERE cod_livro = ?";
		
		int id = livro.getIdLivro();
		int resultado= 0;
		
		if(livro.getIdLivro() != 0) {
			try {
				Connection conexao = FabricaConexao.getConexao();
				PreparedStatement consulta = conexao.prepareStatement(excluirPorId);
				
				consulta.setInt(1, id);
				resultado = consulta.executeUpdate();
				
			}
				catch (SQLException e) {
					e.printStackTrace();
				}
		} else {
			System.out.println("Algo deu errado!");
		}
		
		return resultado;
	}

  public void inserirLivro(Livro livro) {
	  String sql="INSERT livro INTO (titulo,autor,preco,imagem,descricao) VALUES (?,?,?,?,?)";
	  try {
		  Connection conn = FabricaConexao.getConexao();
		  PreparedStatement ps = conn.prepareStatement(sql);
		  ps.setString(1, livro.getTitulo());
		  ps.setString(2, livro.getAutor());
		  ps.setDouble(3, livro.getPreco());
		  ps.setString(4,livro.getImagem() );
		  ps.setString(5,livro.getDescricao());
		  ps.execute();
		  System.out.println("Dados inseridos com suscesso!");
		  
	  }catch(SQLException e) {
		  System.out.println(e);
	  }
	  
  }
	
	

}
