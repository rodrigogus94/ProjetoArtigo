package br.com.projetoArtigo;

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
import Classes.ArtigosImpl;
import DAO.DAO;
import DAO.DAOImpl;

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
    	  
        String Titulo = request.getParameter("titulo");
        String NomeAutores = request.getParameter("nomeAutores");
       


 
     
        
        Artigos a = new ArtigosImpl();
     
        a.setTitulo(Titulo);
        a.setNomeAutores(NomeAutores);
        
        response.setContentType("text/html;charset=UTF-8");s
        
        
       
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Livraria</title>");
            
            out.println("</head>");
            
            out.println("<body>");
            out.println("<h1>Concluido como sucesso </h1>");
            out.println("<a href=\"index.html\" >Voltar</a>");
            
            out.println("</body>");
            out.println("</html>"); 
  
    
      

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		response.setContentType("text/html; charset	= UTF-8 ");
    	response.setCharacterEncoding("UTF-8");
    	response.getWriter().append("está aq ").append(request.getContextPath());
    	
    	DAO dao = new DAOImpl();
    	Artigos a = new ArtigosImpl();
    	
    	ArrayList<Artigos> artigo = new ArrayList<Artigos>();
    	
    	request.setAttribute("artigos", dao);
    	
    	String pagina = "/adicionarArtigos.html";
    	
    	RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(pagina);
    	dispatcher.forward(request, response);
    	
    	
   
		
		

	
	}

}
