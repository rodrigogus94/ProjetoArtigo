<%@page import="Classes.Artigos"%>
<%@page import="DAO.DAOImpl"%>
<%@page import="DAO.DAO"%>
<%@page import="Classes.ArtigosImpl"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%
	
	Artigos artigos = new ArtigosImpl();
	ArrayList<ArtigosImpl> a = new ArrayList<ArtigosImpl>();

	artigos.setTitulo(request.getParameter("titulo"));
	artigos.setNomeAutores(request.getParameter("nomeAutores"));
	artigos.setJournalEvento(request.getParameter("journalEvento"));
	artigos.setPaginas(request.getParameter("paginas"));
	artigos.setDoi(request.getParameter("doi"));
	artigos.setIsbn(request.getParameter("isbn"));

	DAO dao = new DAOImpl();
	dao.inserir(artigos);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<form name="formArtigo" action="listagem.jsp" method="post">


		<table>
			<tr>
				<td>Título</td>
				<td><input type="text" name="titulo" /></td>
			</tr>
			<tr>
				<td>Nome do Autores</td>
				<td><input type="text" name="nomeAutores" /></td>
			</tr>
			<tr>
				<td>Journal/Evento</td>
				<td><input type="text" name="journalEvento" /></td>
			</tr>
			<tr>
				<td>Páginas</td>
				<td><input type="text" name="paginas" /></td>
			</tr>
			<tr>
				<td>DOI</td>
				<td><input type="text" name="doi" /></td>
			</tr>

			<tr>
				<td>ISBN</td>
				<td><input type="text" name="isbn" /></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="Enviar" /><input
					type="reset" value="Limpar Campos" /></td>
			</tr>

		</table>

	</form>

</body>
</html>