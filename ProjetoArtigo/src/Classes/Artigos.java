package Classes;

import java.io.FileWriter;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Artigos {
	
	private int id;
	private String titulo;
	private String nomeAutores;
	private String journalEvento;
	private String paginas;
	private String doi;
	private String isbn;
	
	
	
	public Artigos(int id, String titulo, String nomeAutores, String journalEvento, String paginas, String doi,String isbn) {
		
		
		this.id = id;
		this.titulo = titulo;
		this.nomeAutores = nomeAutores;
		this.journalEvento = journalEvento;
		this.paginas = paginas;
		this.doi = doi;
		this.isbn = isbn;
	}
	
	



	public Artigos() {
		
	}





	public int getId() {
		return id;
	}



	public void setId(int id) {
		this.id = id;
	}



	public String getTitulo() {
		return titulo;
	}



	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}



	public String getNomeAutores() {
		return nomeAutores;
	}



	public void setNomeAutores(String nomeAutores) {
		this.nomeAutores = nomeAutores;
	}



	public String getJournalEvento() {
		return journalEvento;
	}



	public void setJournalEvento(String journalEvento) {
		this.journalEvento = journalEvento;
	}



	public String getPaginas() {
		return paginas;
	}



	public void setPaginas(String paginas) {
		this.paginas = paginas;
	}



	public String getDoi() {
		return doi;
	}



	public void setDoi(String doi) {
		this.doi = doi;
	}



	public String getIsbn() {
		return isbn;
	}



	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}
	
	
	public String salvar() {
		
		try {
			
			FileWriter fw = new FileWriter("Artigos.txt",true);
			PrintWriter pw = new PrintWriter(fw);
			pw.println("Titulo: " + this.titulo);
			pw.println("Nome Autores: " + this.nomeAutores);
			pw.println("Journal/Evento: " + this.journalEvento);
			pw.println("Paginas: " + this.paginas);
			pw.println("DOI: " + this.doi);
			pw.println("ISBN: " + this.isbn);
			
			
		}catch (Exception e) {
			Logger.getLogger(Artigos.class.getName()).log(Level.SEVERE, null, e);
		}
		
		
		
		return "Cadastro com Sucesso!";
	}
	
	

	
	
}
