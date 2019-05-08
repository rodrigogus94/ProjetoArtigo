package br.com.artigo;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Classes.Artigos;



/**implementation class ProjetoArtigo
 **/

@WebServlet("/ProjetoArtigo")
public class ProjetoArtigo extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public ProjetoArtigo() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    
    
    }   

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		response.setContentType("text/html; charset	= UTF-8 ");
    	response.setCharacterEncoding("UTF-8");
    	response.getWriter().append("está aq ").append(request.getContextPath());
    	
    	
    	
    	
    	
    	
    	ArrayList<Artigos> artigos = new ArrayList<Artigos>();
    	Artigos artigo = new Artigos();
    	for(int i=0; i < artigos.size(); i++ ) {
    		artigo.setTitulo(request.getParameter("titulo"));
    		artigo.setNomeAutores(request.getParameter("nomeAutores"));
    		artigo.setJournalEvento(request.getParameter("journalEvento"));
    		artigo.setPaginas(request.getParameter("paginas"));
    		artigo.setDoi(request.getParameter("doi"));
    		artigo.setIsbn(request.getParameter("isbn"));
    		artigos.add(artigo);
    	}
    	
    	artigos.add(new Artigos(1, "nada", "Rdoigo", "nada", "10", "asd", "asda"));
    	artigos.add(new Artigos(2, "nada", "Alisson", "nada", "10", "asd", "asda"));
    	
    	request.setAttribute("artigos", artigos);
		
		String pagina = "/lista.jsp";
		
		
		
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(pagina);
    	dispatcher.forward(request, response);
    	
		
    	
   
		
		

	
	}

}