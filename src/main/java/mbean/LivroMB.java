package mbean;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;

import modelo.Livro;

@ViewScoped
@ManagedBean
public class LivroMB {

	private Livro livro;
	private int idLivro;
	

	public int getIdLivro() {
		return idLivro;
	}

	public void setIdLivro(int idLivro) {
		this.idLivro = idLivro;
	}
	
	public String excluir() {
		//System.out.println(idLivro);
		livro = new Livro();
		livro.setIdLivro(idLivro);
		return "exemplo.xhtml";
	}

}