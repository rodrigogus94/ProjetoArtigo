<%@page import="Classes.Artigos"%>
<%@page import="DAO.DAOImpl"%>
<%@page import="DAO.DAO"%>
<%@page import="Classes.ArtigosImpl"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Lista de artigos</title>
</head>
<body>
	<h1>Contatos Cadastrados</h1>

	<%
		
		Artigos artigos = new ArtigosImpl();
	
		
		
	
		
		DAO dao = new DAOImpl();
		List<ArtigosImpl> lista;
		
		
		
	%>

	<table border='1'>

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
			for(ArtigosImpl a: lista){
				lista = dao.pesquisar(id);	
			
		
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
		<form name="formArtigo" action="adicionarArtigos.jsp" method="post">
			<input type="submit" name="cadastrar" value="Cadastrar">

		</form>

	</table>


</body>
</html>

<!--  -->