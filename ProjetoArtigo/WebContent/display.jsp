<%-- 
    Document   : display
    Created on : 08/05/2019, 22:13:41
    Author     : Aluno
--%>

<%@page import="Classes.Artigos"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.lang.reflect.Array"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Artigos Cadastrados:</title>
</head>
<body>
	<h1>Artigos Cadastrados:</h1>


	<%
	
	/*ArrayList<Artigos> artigos = (ArrayList<Artigos>) request.getAttribute("artigos");
		int cont = artigos.size();

		int id=0;
		String Titulo="";
		String Autores="";
		String JornalEvento="";
		String Paginas="";
		String Doi="";
		String isbn="";

		for (int i = 0; i < cont; i++) {
			id = i;
			Titulo = request.getParameter("titulo");
			Autores = request.getParameter("autores");
			JornalEvento = request.getParameter("jornalouevento");
			Paginas = request.getParameter("paginas");
			Doi = request.getParameter("doi");
			isbn = request.getParameter("isbn");

		}*/
	
		ArrayList<Artigos> artigos = (ArrayList<Artigos>) request.getAttribute("artigos");

		String Titulo = request.getParameter("titulo");
		String Autores = request.getParameter("nomeAutores");
		String JornalEvento = request.getParameter("jornalouevento");
		String Paginas = request.getParameter("paginas");
		String Ano = request.getParameter("ano");
		String Doi = request.getParameter("doi");
		String iisbn = request.getParameter("isbn");
	%>
	<table border="1">
		<tbody>
			<tr>
				<!--  <td>Código</td>-->
				<td>Titulo:</td>
				<td>Autores:</td>
				<td>JornalEvento:</td>
				<td>Paginas:</td>
				<td>DOI:</td>
				<td>ISBN:</td>
				
			</tr>
		
			
			<tr>
				
				<td><%=Titulo%></td>
				<td><%=Autores%></td>
				<td><%=JornalEvento%></td>
				<td><%=Paginas%></td>
				<td><%=Doi%></td>
				<td><%=iisbn%></td>
			</tr>
		

</body>
</html>
