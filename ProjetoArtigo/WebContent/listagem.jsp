<%@page import="Classes.Artigos"%>
<%@page import="DAO.DAOImpl"%>
<%@page import="DAO.DAO"%>
<%@page import="Classes.ArtigosImpl"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%
	DAO dao = new DAOImpl();
	Artigos a = new ArtigosImpl();
	ArrayList<Artigos> artigo = new ArrayList<Artigos>();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Lista de Artigos</title>
</head>
<body>




	<table border="1">


		<tr>
			<th>Código</th>
			<th>Titulo</th>
			<th>Nome dos Autrores</th>
			<th>Journal/Evento</th>
			<th>Páginas</th>
			<th>DOI</th>
			<th>ISBN</th>

		</tr>




		<%
			for (int i=0; i < 10; i++) {
				
				
				String titulo = request.getParameter("titulo");
				String nomeAutores = request.getParameter("nomeAutores");
				String journalEvento = request.getParameter("journalEvento");
				String paginas = request.getParameter("paginas");
				String doi = request.getParameter("doi");
				String isbn = request.getParameter("isbn");

				a.setId(i);
				a.setTitulo(titulo);
				a.setNomeAutores(nomeAutores);
				a.setJournalEvento(journalEvento);
				a.setPaginas(paginas);
				a.setDoi(doi);
				a.setIsbn(isbn);
				
				if (dao.inserir(a) != null) {
					System.out.println(a.getId()+ " " +a.getTitulo() + " cadastrado com sucesso!");
					
				}
		%>
		<tr>
			<td><%=a.getId()%></td>
			<td><%=a.getTitulo()%></td>
			<td><%=a.getNomeAutores()%></td>
			<td><%=a.getJournalEvento()%></td>
			<td><%=a.getPaginas()%></td>
			<td><%=a.getDoi()%></td>
			<td><%=a.getIsbn()%></td>

		</tr>


		<%
		
		
			}
		%>




	</table>
	<form name="formArtigo" action="adicionarArtigos.html" method="post">
		<input type="submit" name="cadastrar" value="Cadastrar">

	</form>


</body>
</html>

<!--  -->