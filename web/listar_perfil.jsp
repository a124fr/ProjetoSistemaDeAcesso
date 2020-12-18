<%-- 
    Document   : listar_perfil
    Created on : 17/12/2020, 22:17:18
    Author     : francisco
--%>
<%@page import="model.PerfilDAO"%>
<%@page import="model.Perfil"%>
<%@page import="java.util.ArrayList"%>
<%
    ArrayList<Perfil> lista = new ArrayList<Perfil>();
    try {
        PerfilDAO pDAO = new PerfilDAO();
        lista = pDAO.listar();
    }catch(Exception e) {
        out.println("ERRO: " + e);
    }

%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de Perfil</title>
    </head>
    <body>
        <h1>Lista de Perfil</h1>
        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Nome</th>
                    <th>Descricao</th>
                    <th>Opções</th>
                </tr>
            </thead>
            <tbody>
            <%
                for(Perfil p:lista) {
            %>
                <tr>
                    <td><%=p.getId() %></td>
                    <td><%=p.getNome() %></td>
                    <td><%=p.getDescricao() %></td>
                    <td>ALTERAR EXCLUIR</td>
                </tr>
            <%
                }
            %>          
            </tbody>
        </table>
        
    </body>
</html>
