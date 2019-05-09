<%-- 
    Document   : display
    Created on : 08/05/2019, 22:13:41
    Author     : Aluno
--%>

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

	String Titulo = request.getParameter("titulo");
        String Autores = request.getParameter("autores");
        String JornalEvento = request.getParameter("jornalouevento");
        String Paginas = request.getParameter("paginas");
        String Ano = request.getParameter("ano");
        String Doi = request.getParameter("doi");
        String iisbn = request.getParameter("isbn");
%>
    <table border="1">
        <tbody>
    <tr>
        <td> Titulo: </td>
        <td><%= Titulo %></td>
    </tr>
    <tr>
        <td> Autores: </td>
        <td><%= Autores %></td>
    </tr>
    
    <tr>
        <td> JornalEvento: </td>
        <td><%= JornalEvento %></td>
    </tr>
    <tr>
        <td> Paginas: </td>
        <td><%= Paginas %></td>
    </tr>
    
    <tr>
        <td> Ano: </td>
        <td><%= Ano %></td>
    </tr>
     <tr>
        <td> DOI: </td>
        <td><%= Doi %></td>
    </tr>
     <tr>
        <td> ISBN: </td>
        <td><%= iisbn%></td>
    </tr>
    </body>
</html>
