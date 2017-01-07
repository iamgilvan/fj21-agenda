<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib tagdir="/WEB-INF/tags/" prefix="caelum" %>
<html>
    <head>
        <title>Adicioanndo contato</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <c:import url="cabecalho.jsp" />
        
        <form action="adicionaContato" method="POST">
            Nome: <input type="text" name="nome" /> <br/>
            E-mail: <input type="text" name="email" /> <br/>
            Endereço: <input type="text" name="endereco" /> <br/>
            Data Nascimento: <caelum:campoData id="dataNascimento"/> <br/>
            
            <input type="submit" value="Gravar"/>            
        </form> 
        <c:import url="rodape.jsp" />
    </body>
</html>
