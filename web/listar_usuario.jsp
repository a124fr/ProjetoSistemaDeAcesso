<%-- 
    Document   : listar_usuario
    Created on : 17/12/2020, 22:17:18
    Author     : francisco
--%>
<%@page import="model.UsuarioDAO"%>
<%@page import="model.Usuario"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    ArrayList<Usuario> lista = new ArrayList<Usuario>();
    try {
        UsuarioDAO uDAO = new UsuarioDAO();
        lista = uDAO.listar();
    }catch(Exception e) {
        out.println("ERRO: " + e);
    }

%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de Usuario</title>
        <script>
            function excluir(id,nome) {
                if( confirm('Deseja realmente excluir o Usuario ' + nome + '?') ) {
                    window.open("excluir_usuario.do?id="+id, "_self");
                }
            }
        </script>
    </head>
    <body>
        <h1>Lista de Usuario <a href="form_inserir_usuario.jsp"><img src="assets/images/add.png" /></a> </h1>
        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Nome</th>
                    <th>Login</th>                    
                    <th>Situação</th>
                    <th>Perfil</th>
                    <th>Opções</th>
                </tr>
            </thead>
            <tbody>
            <%
                for(Usuario u:lista) {
            %>
                <tr>
                    <td><%=u.getId() %></td>
                    <td><%=u.getNome() %></td>
                    <td><%=u.getLogin() %></td>
                    <td><%=u.getSituacao() %></td>
                    <td><%=u.getPerfil().getNome() %></td>
                    <td>
                        <a href="form_alterar_usuario.jsp?id=<%=u.getId() %>"><img src="assets/images/edit.png" /></a>
                        <a href="#" onclick="excluir(<%=u.getId() %>, '<%=u.getNome() %>');"><img src="assets/images/delete.png" /></a>
                    </td>
                </tr>
            <%
                }
            %>          
            </tbody>
        </table>
        
        <a href="index.jsp">Voltar</a>
    </body>
</html>
