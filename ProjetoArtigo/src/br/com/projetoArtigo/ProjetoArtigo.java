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
    
    
    }   

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		response.setContentType("text/html; charset	= UTF-8 ");
    	response.setCharacterEncoding("UTF-8");
    	response.getWriter().append("está aq ").append(request.getContextPath());
    	
    	
		DAO dao = new DAOImpl();
		ArtigosImpl artigos = new ArtigosImpl();
		
	
		
		
		System.out.println("passou aqui");
		
		String pagina = "/adicionarArtigos.jsp";
		
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(pagina);
    	dispatcher.forward(request, response);
    	
		//response.sendRedirect(pagina);
		
    	
   
		
		

	
	}

}
