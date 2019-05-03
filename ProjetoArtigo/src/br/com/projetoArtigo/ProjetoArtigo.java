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
    	response.setContentType("text/html; charset	= UTF-8 ");
    	response.setCharacterEncoding("UTF-8");
    	
    	ArrayList<Artigos> artigos = new ArrayList<Artigos>();
    	
    	artigos.add(new Artigos(1, "nada", "Rodrigo", "tudo", "500", "nada", "nada" ));
    	artigos.add(new Artigos(2, "nada", "Rodrigo", "tudo", "500", "nada", "nada" ));
    	
    	request.setAttribute("artigos", artigos);
    	
    	String pagina = "/listagem.jsp";
    	
    	RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(pagina);
    	dispatcher.forward(request, response);
    	
    	
   
    }
    
    

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		

	
	}

}
