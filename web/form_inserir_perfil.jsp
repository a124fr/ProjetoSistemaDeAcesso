<%-- 
    Document   : form_inserir_perfil
    Created on : 17/12/2020, 18:59:11
    Author     : francisco
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Novo Perfil</title>
    </head>
    <body>
        <h1>Novo Perfil</h1>
        <form name="novo_perfil" method="POST" action="inserir_perfil.do">
            Nome:<input type="text" name="nome" required /><br/>
            
            Descrição:<textarea name="descricao" required></textarea><br/>
            
            <input type="submit" value="Inserir" />
        </form>
    </body>
</html>