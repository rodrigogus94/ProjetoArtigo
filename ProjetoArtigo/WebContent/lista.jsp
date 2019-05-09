<?xml version="1.0" encoding="ISO-8859-1" ?>

<%@page import="Classes.Artigos"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
	
<% 
		ArrayList<Artigos> artigos = (ArrayList<Artigos>) request.getAttribute("artigo");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"
	xmlns:f="http://java.sun.com/jsf/core"
	xmlns:h="http://java.sun.com/jsf/html">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Insert title here</title>
</head>
<body>
	<f:view>

		<table border="1">

			<tr>
				<th>Código Random</th>
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
				<td><%=a.getId() %></td>
				<td><%=a.getTitulo() %></td>
				<td><%=a.getNomeAutores() %></td>
				<td><%=a.getJournalEvento() %></td>
				<td><%=a.getPaginas() %></td>
				<td><%=a.getDoi() %></td>
				<td><%=a.getIsbn() %></td>
			
			
			</tr>
			
			
			<%
				}
			%>
		


		</table>
		
		<form nome="formArtigo" action="adicionarArtigo.jsp" method="post">
		
		<input type="submit" value="Cadastrar"/>
		
		
		</form>


	</f:view>
</body>
</html>