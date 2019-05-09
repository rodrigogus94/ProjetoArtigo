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
					<td>Titulo:</td>
					<td><input type="text" name="titulo" value="" size="50" /></
					
				</tr>

				<tr>
					<td>Autores:</td>
					<td><input type="text" name="autores" value="" size="50" /></
					
				</tr>
				<tr>
					<td>JornalEvento:</td>
					<td><select name="jornalouevento">
							<option>Jornal</option>
							<option>Evento</option>
					</select></td>
				</tr>
				<td>Ano:</td>
				<td><input type="text" name="ano" value="" size="50" /></
					</tr>
					<td>Paginas:</td>
					<td><input type="text" name="paginas" value="" size="50" /></
						</tr>
						<td>Doi:</td>
						<td><input type="text" name="doi" value="" size="50" /></
							</tr>
							<td>iisbn:</td>
							<td><input type="text" name="isbn" value="" size="50" /></
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