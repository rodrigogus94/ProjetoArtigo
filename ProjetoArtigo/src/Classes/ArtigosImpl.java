package Classes;


public class ArtigosImpl implements Artigos {
	
	private int id;
	private String titulo;
	private String nomeAutores;
	private String journalEvento;
	private String paginas;
	private String doi;
	private String isbn;
	
	
	
	public ArtigosImpl(int id, String titulo, String nomeAutores, String journalEvento, String paginas, String doi,String isbn) {
		
		
		this.id = id;
		this.titulo = titulo;
		this.nomeAutores = nomeAutores;
		this.journalEvento = journalEvento;
		this.paginas = paginas;
		this.doi = doi;
		this.isbn = isbn;
	}
	
	



	public ArtigosImpl() {
		
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
	
	
	
	
	

	
	
}
