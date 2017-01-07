<%-- 
    Document   : lista-contato-scriptlet
    Created on : 05/01/2017, 23:55:49
    Author     : gilvan
--%>

<%@page import="br.com.caelum.agenda.modelo.Contato"%>
<%@page import="br.com.caelum.agenda.dao.ContatoDAO"%>
<%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de contatos</title>
    </head>
    <body>
        <table>
            <%
            ContatoDAO dao = new ContatoDAO();
            List<Contato> contatos = dao.getLista();
            for (Contato contato : contatos) {
            %>
                <tr>
                    <td><%=contato.getNome() %></td>
                    <td><%=contato.getEmail() %></td>
                    <td><%=contato.getEndereco() %></td>
                    <td><%=contato.getDataNascimento().getTime() %></td>
                </tr>
            <%
            }
            %>
        </table>
            
    </body>
</html>
