<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"
	xmlns:f="http://java.sun.com/jsf/core"
	xmlns:h="http://java.sun.com/jsf/html">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Insert title here</title>
</head>
<body>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Cadastramento de Artigos</title>
</head>
<body>
	<h1>Cadastro de Artigos!</h1>
	<form name="MeuFormulario" action="display.jsp" method="post">
		<table border="0">
			<tbody>
			
			
			<tr>
				<td>Título</td>
				<td><input type="text" name="titulo" /></td>
			</tr>
			<tr>
				<td>Nome do Autores</td>
				<td><input type="text" name="nomeAutores" /></td>
			</tr>
			<tr>
					<td>JornalEvento:</td>
					<td><select name="jornalouevento">
							<option>Jornal</option>
							<option>Evento</option>
					</select></td>
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
			
			</tbody>
			
			<tr>
				<td colspan="2"><input type="submit" value="Enviar" /><input
					type="reset" value="Limpar Campos" /></td>
			</tr>
		</table>

		
	</form>
</body>
</html>