/* CRIANDO DATABASE*/

CREATE DATABASE threeway
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'Portuguese_Brazil.1252'
    LC_CTYPE = 'Portuguese_Brazil.1252'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;
    
*TABELA DE LIVRO*/

/*LIVRO*/

CREATE TABLE livro(
	ID SERIAL NOT NULL PRIMARY KEY,
	TITULO VARCHAR(30) NOT NULL,
	AUTOR VARCHAR(20) NOT NULL,
	PRECO NUMERIC NOT NULL,
	IMAGEM VARCHAR NOT NULL,
	DESCRICAO VARCHAR);
	
/* INSERT DE LIVROS*/

INSERT INTO public.livro (id, titulo, autor, preco, imagem, descricao) VALUES (13, 'PARA ONDE ELA FOI?', 'FORMAN, GAYLE', 20, 'imagens/onde.jpg', 'Meu primeiro impulso n�o � agarr�-la nem beij�-la. Eu s� quero tocar sua bochecha, ainda corada pela apresenta��o desta noite. Eu quero atravessar o espa�o que nos separa, medido em passos � n�o em milhas, n�o em continentes, n�o em anos �, e acariciar seu rosto com um dedo calejado.');
INSERT INTO public.livro (id, titulo, autor, preco, imagem, descricao) VALUES (14, 'O LIVRO DO CEMITERIO', 'GAILMAN, NEIL', 20, 'imagens/cemiterio.jpg', 'Enquanto seus pais e irm� s�o impiedosamente assassinados por um misterioso homem chamado Jack, um beb� consegue escapar de seu ber�o e se aventurar pelo mundo. Uma s�rie de coincid�ncias, aliada a uma grande dose de sorte, salva o pequeno de ter um destino t�o tr�gico quanto o de sua fam�lia.');
INSERT INTO public.livro (id, titulo, autor, preco, imagem, descricao) VALUES (15, 'SANDMAN VOL 1', 'GAILMAN,NEIL', 489, 'imagens/sandman.jpg', 'A saga de Morfeus, o Mestre do Sonhar, continua. Quando Delirium � a mais jovem dos Perp�tuos � decide partir em busca de Destrui��o � seu irm�o h� muito perdido �, cabe aos seus outros irm�os tentarem colocar ju�zo em sua cabe�a. Mas essa nunca � uma tarefa muito f�cil. E essa jornada pode desencad');
INSERT INTO public.livro (id, titulo, autor, preco, imagem, descricao) VALUES (5, 'O CASAMENTO', 'Rodrigues,Nelson', 39.9, 'imagens/casamento.jpg', 'A apenas um dia do casamento de Glorinha e Te�filo, o m�dico da noiva avisa ao pai dela que seu futuro genro foi flagrado em um incidente homossexual. Esse � o ponto de partida para Nelson Rodrigues desfilar sua genialidade ir�nica e o humor negro t�o caracter�sticos de sua narrativa.');
INSERT INTO public.livro (id, titulo, autor, preco, imagem, descricao) VALUES (7, 'VOLTA AO MUNDO EM OITENTA DIAS', 'VERNE, JULIO', 16.5, 'imagens/volta_mundo.jpg', 'Phileas Fogg tinha uma vida regrada e solit�ria, mas com muito dinheiro. Devido a uma aposta com seus amigos, resolve dar a volta ao mundo em 80 dias, acompanhado apenas de seu fiel empregado. Nessa viagem, viver� diversas aventuras e conhecer� v�rios lugares do mundo. Ser� que Fogg conseguir�?');
INSERT INTO public.livro (id, titulo, autor, preco, imagem, descricao) VALUES (8, 'CRISTOVAO COLOMBO', 'VERNE, JULIO', 16.5, 'imagens/cristovao_colombo.jpg', 'Crist�v�o Colombo � uma personalidade que tangencia a esfera da lenda. Sua pertin�cia e aud�cia lhe conferem o tra�o de homem invulgar, o extraordin�rio acompanha seus feitos, a aventura e o maravilhoso caracterizam sua trajet�ria pelo Atl�ntico desconhecido. Esses tra�os alimentam a imagina��o');
INSERT INTO public.livro (id, titulo, autor, preco, imagem, descricao) VALUES (9, 'VINTE MIL LEGUAS SUBMARINAS', 'VERNE, JULIO', 14.9, 'imagens/submarinas.jpg', 'Vinte Mil L�guas Submarinas � uma das obras liter�rias mais famosas do escritor J�lio Verne. Originalmente publicada em forma de uma s�rie no peri�dico Magasin d''�ducation et de R�cr�ation, de Mar�o de 1869 a Junho de 1870, teve uma edi��o ilustrada ...');
INSERT INTO public.livro (id, titulo, autor, preco, imagem, descricao) VALUES (10, 'O SENHOR DOS ANEIS', 'TOLKIEN, J.R.R.', 169.9, 'imagens/senhor.jpg', '� imposs�vel transmitir ao novo leitor todas as qualidades e o alcance do livro. Alternadamente c�mica, singela, �pica, monstruosa e diab�lica, a narrativa desenvolve-se em meio a in�meras mudan�as de cen�rios e de personagens, num mundo imagin�rio absolutamente convincente em seu detalhes.');
INSERT INTO public.livro (id, titulo, autor, preco, imagem, descricao) VALUES (11, 'HARRY POTTER', 'ROWLING,J.K.', 89.7, 'imagens/harry.png', 'A vida do menino Harry Potter n�o tem um pingo de magia. Ele vive com os tios e o primo, que n�o gostam nem um pouco dele. O quarto de Harry �, na verdade, um arm�rio sob a escada, e ele nunca comemorou um anivers�rio sequer em onze anos. At� que, um dia, Harry recebe uma carta misteriosa...');
INSERT INTO public.livro (id, titulo, autor, preco, imagem, descricao) VALUES (12, 'A AVENTURAS DE PI', 'MARTEL, YANN', 23.5, 'imagens/lifeofpi.jpg', 'Um dos romances mais importantes do s�culo, As aventuras de Pi � uma narrativa singular de Yann Martel que se tornou um grande best-seller. O livro narra a trajet�ria do jovem Pi Patel, um garoto cuja vida � revirada quando seu pai, dono de um zool�gico na �ndia, decide embarcar em um navio... ');
INSERT INTO public.livro (id, titulo, autor, preco, imagem, descricao) VALUES (16, 'WATCHMEN', 'MOORE, ALAN', 37.4, 'imagens/watchmen.jpg', 'Um de seus antigos colegas � assassinado, e o vigilante mascarado Rorschach decide investigar um plano para matar e desacreditar todos os super-her�is do passado e do presente. � medida que ele se reconecta com sua antiga legi�o de combate ao crime, um grupo desorganizado de super-her�is aposentados');
INSERT INTO public.livro (id, titulo, autor, preco, imagem, descricao) VALUES (17, 'JUSTICEIRO NOIR', 'TIIER, FRANK', 12.5, 'imagens/justiceiro.jpg', 'Nova York, 1935. Frank Castelione, um veterano da Primeira Guerra Mundial, defende, junto com o filho, Frankie, sua pequena loja contra o crime organizado liderado pelo g�ngster Dutch Schultz. No entanto, que esperan�a eles podem ter diante de assassinos como Barracuda e Retalho? ');
INSERT INTO public.livro (id, titulo, autor, preco, imagem, descricao) VALUES (18, 'SUPERMAN', 'TOMASI,PETER', 5.9, 'imagens/superman.jpg', 'Neste emocionante encadernado, Jeph Loeb, Tim Sale e Bjarne Hansen, unem-se para apresentar uma vis�o �nica e profunda sobre os prim�rdios do Superman. Acompanhando os primeiros passos do jovem Clark Kent, sua vida na pequena Smallville e a intera��o com seus pais adotivos, e a chegada � Metr�polis,');
INSERT INTO public.livro (id, titulo, autor, preco, imagem, descricao) VALUES (19, 'BATMAN', 'SNYDER, SCOTT', 5.9, 'imagens/batman.jpeg', 'Em 1986, Frank Miller e David Mazzucchelli produziram esta reinterpreta��o da origem do Batman - sobre quem ele � e como se tornou o que �. Esta edi��o inclui a hist�ria na �ntegra, uma introdu��o pelo escritor Frank Miller e um posf�cio ilustrado pelo artista David Mazzucchelli. Inclui tamb�m mais ');
INSERT INTO public.livro (id, titulo, autor, preco, imagem, descricao) VALUES (20, 'GRANDE SERTAO - VEREDAS', 'ROSA, JOAO GUIMARAES', 100, 'imagens/grande_sertao.jpg', 'Durante a primeira parte da obra, o narrador em primeira pessoa, Riobaldo, faz um relato de fatos diversos e aparentemente desconexos entre si, que versam sobre suas inquieta��es sobre a vida. Os temas giram em torno das cl�ssicas quest�es filos�ficas ocidentais, tais como a origem do homem...');
INSERT INTO public.livro (id, titulo, autor, preco, imagem, descricao) VALUES (21, 'QUANDO NIETZCHE CHOROU', 'YALOM, IRVIN D.', 49.9, 'imagens/nietzche_chorou.jpg', 'Josef Breuer, um dos pais da psican�lise, est� prestes a se deparar com um grande desafio: tratar do fil�sofo Friedrich Nietzsche, atormentado por uma crise existencial e por uma depress�o suicida. Mentor de Freud, Breuer, entretanto, tamb�m vive um momento de ang�stia, obcecado pelas fantasias...');
INSERT INTO public.livro (id, titulo, autor, preco, imagem, descricao) VALUES (22, 'CASSINO ROYALE - JAMESBOND 00', 'Fleming, Ian', 29.9, 'imagens/cassino_royale.jpg', 'Bond, James Bond, � um charmoso e sofisticado agente secreto. Em �Cassino Royale�, primeiro volume da s�rie do agente 007, Bond assume a arriscada miss�o de derrotar Le Chiffre, um perigoso agente comunista, em um jogo de cartas que pode ser fatal. Antes de se tornar escritor, Ian Fleming trabalhou');
INSERT INTO public.livro (id, titulo, autor, preco, imagem, descricao) VALUES (23, 'FILOSOFIA DO TEDIO', 'SVENDSEN, LARS', 29.9, 'imagens/filosofia_tedio.jpg', 'Esse livro investiga uma das preocupa��es centrais de nossa era ao sondar a natureza do t�dio, quando ele se origina, como nos aflige e por que, ao que parece, somos incapazes de super�-lo por qualquer ato de vontade. De forma leve e espirituosa, com cita��es abrangentes que abarcam nomes como Heide');
INSERT INTO public.livro (id, titulo, autor, preco, imagem, descricao) VALUES (6, 'NEVE', 'PAMUK, ORHAN', 54, 'imagens/neve.jpg', '''Neve'', que o autor Ohran Pamuk - o vencedor do Pr�mio Nobel de Literatura de 2006 - define como ''seu primeiro e �ltimo romance pol�tico'', conta a hist�ria de Ka, poeta exilado na Alemanha, que viaja a uma pequena cidade turca sob o pretexto de investigar a onda de suic�dios entre mul�umanos que ass');


/* FIM TABELA */

/* CRIA TABELA USUARIO*/

CREATE TABLE USUARIO (
	ID SERIAL PRIMARY KEY NOT NULL,
    	USERNAME VARCHAR(255) NOT NULL,
    	NOMEUSUARIO VARCHAR(255) NOT NULL,
    	EMAIL VARCHAR(255) NOT NULL,
	SENHA VARCHAR(255) NULL,
	TIPOUSUARIO VARCHAR(255) NOT NULL
    );

/*INSERI USUARIO ADMINISTRADOR*/

INSERT INTO USUARIO 
		(USERNAME, NOMEUSUARIO, EMAIL, SENHA, TIPOUSUARIO) 
 VALUES 
 		('administrador', 'administrador','rudimarcf@gmail.com', '123456','ADMINISTRADOR');

/* FIM TABELA */
