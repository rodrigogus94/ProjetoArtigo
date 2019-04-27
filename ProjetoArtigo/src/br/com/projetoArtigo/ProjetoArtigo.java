package br.com.projetoArtigo;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ProjetoArtigo
 */
@WebServlet("/ProjetoArtigo")
public class ProjetoArtigo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProjetoArtigo() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();
		out.print("<html>");
		out.print("<head>");
		out.print("<title>Formulário</title>");
		out.print("</head>");
		out.print("<body>");
		out.print("<h1>Formulário de Cadastro</h1>");
		
		String nome = (String) request.getParameter("nome");
		String sobrenome = (String) request.getParameter("sobrenome");
		if(nome !=null && sobrenome != null) {
			out.print("Nome: " + nome + "<br>");
			out.print("Sobrenome: " + sobrenome + "<br>");
		}
		
		out.print("<form name=\"RequestForm\"method=get");
		
		out.print("Título:          <input type='text' name='titulo:' size='20'><br>");
		out.print("Nomo do Autores:  <input type='text' name='nomoAutores' size='20'><br>");
		out.print("Journal/Evento:   <input type='text' name='journalEvento' size='20'><br>");
		out.print("Páginas:          <input type='text' name='paginas' size='20'><br>");
		out.print("DOI:              <input type='text' name='doi' size='20'><br>");
		out.print("ISBN:             <input type='text' name='isbn' size='20'><br>");
	
		out.print("<input type='submit' nome='btSend' value='Enviar'><br>");
		out.print("<input type='reset' nome='btClear' value='Limpar'><br>");
		out.print("</form>");
		out.print("</body>");
		out.print("</html>");
		out.close();
	
	}

}
