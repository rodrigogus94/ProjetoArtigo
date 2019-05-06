<%@page import="Classes.Artigos"%>
<%@page import="DAO.DAOImpl"%>
<%@page import="DAO.DAO"%>
<%@page import="Classes.ArtigosImpl"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Lista de Artigos</title>
</head>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Page</title>
</head>
<body>
	<h1>Contatos Cadastrados</h1>

	<%
	
		ArrayList<ArtigosImpl> a = (ArrayList<ArtigosImpl>) request.getAttribute("artigo");
	%>

	<table border='1'>
		<tr>
			<td>Código</td>
			<td>Nome</td>
			<td>Endereço</td>
			<td>Telefone</td>
			<td>Celular</td>
		</tr>

		<%
			for (int i = 0; i < a.size(); i++) {
				
				String titulo = request.getParameter("titulo");
				String nomeAutores = request.getParameter("nomeAutores");
				String journalEvento = request.getParameter("journalEvento");
				String paginas = request.getParameter("paginas");
				String doi = request.getParameter("doi");
				String isbn = request.getParameter("isbn");
				
		%>
		<tr>
			<td><%=a.get(i).getTitulo()%></td>
			<td><%=a.get(i).getNomeAutores()%></td>
			<td><%=a.get(i).getJournalEvento()%></td>
			<td><%=a.get(i).getPaginas()%></td>
			<td><%=a.get(i).getDoi()%></td>
			<td><%=a.get(i).getIsbn()%></td>
		</tr>
		<%
			}
		%>
	</table>
</body>
</html>

<!--  -->