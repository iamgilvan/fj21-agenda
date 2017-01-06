<%-- 
    Document   : bemvindo
    Created on : 05/01/2017, 23:44:10
    Author     : gilvan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%-- Comentario JSP aqui: nossa primeira página JSP --%>
        
        <% 
        String mensagem = "Bem vindo ao sistema de agenda fj21!";
        %>
        <%
        out.println(mensagem);%> <br/>
        
        <% String desenvolvido = "Desenvolvido por Gilvan Praxedes de Almeida";%>
        
        <%= desenvolvido %> <br/>
        
        <% System.out.println("Tudo foi executado !");%>
        
    </body>
</html>
