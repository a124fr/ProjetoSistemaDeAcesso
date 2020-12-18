<%-- 
    Document   : listar_perfil
    Created on : 17/12/2020, 22:17:18
    Author     : francisco
--%>
<%@page import="model.PerfilDAO"%>
<%@page import="model.Perfil"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    ArrayList<Perfil> lista = new ArrayList<Perfil>();
    try {
        PerfilDAO pDAO = new PerfilDAO();
        lista = pDAO.listar();
    }catch(Exception e) {
        out.println("ERRO: " + e);
    }

%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de Perfil</title>
        <script>
            function excluir(id,nome) {
                if( confirm('Deseja realmente excluir o Perfil ' + nome + '?') ) {
                    window.open("excluir_perfil.do?id="+id, "_self");
                }
            }
        </script>
    </head>
    <body>
        <h1>Lista de Perfil <a href="form_inserir_perfil.jsp"><img src="assets/images/add.png" /></a> </h1>
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
                    <td>
                        <img src="assets/images/edit.png" />
                        
                        <a href="#" onclick="excluir(<%=p.getId() %>, '<%=p.getNome() %>');"><img src="assets/images/delete.png" /></a>
                    </td>
                </tr>
            <%
                }
            %>          
            </tbody>
        </table>
        
    </body>
</html>
