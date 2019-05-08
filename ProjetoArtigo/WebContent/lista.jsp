<%@page import="Classes.Artigos"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
  <%
  
  	ArrayList<Artigos> artigos = (ArrayList<Artigos>) request.getAttribute("artigos");
  %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
			for(Artigos a : artigos){
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
			}%>


	</table>

</body>
</html>