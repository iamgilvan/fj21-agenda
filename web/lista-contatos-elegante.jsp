<%-- 
    Document   : lista-contatos-elegante
    Created on : 06/01/2017, 16:23:19
    Author     : gilvan
--%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de contatos elegante</title>
    </head>
    <body>
        <c:import url="cabecalho.jsp" />
        
        <!-- cria a lista dao-->
        <jsp:useBean id="dao" class="br.com.caelum.agenda.dao.ContatoDAO"/>
        
        <table>
            <!-- percorre contato usando as linahs da tebala -->
            <c:forEach var="contato" items="${dao.lista}">
                <tr>
                    <td>${contato.nome}</td>
                    <td>
                        <c:if test="${not empty contato.email}">
                            <a href="mailto:${contato.email}">${contato.email}</a>                            
                        </c:if> 
                            
                        <c:if test="${empty contato.email}">
                            E-mail não informado.
                        </c:if>
                    </td>
                    <td>${contato.endereco}</td>
                    <td>${contato.dataNascimento.time}</td>
                </tr>
            </c:forEach>
        </table>
        <c:import url="rodape.jsp" />
                    
    </body>
</html>
