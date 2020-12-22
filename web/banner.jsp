<%-- 
    Document   : banner
    Created on : 21/12/2020, 23:58:10
    Author     : francisco
--%>

<%@page import="model.Menu"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Usuario"%>
<%
    Usuario uLogado = new Usuario();
    
    try {
        uLogado = (Usuario) session.getAttribute("usuario");
        
        ArrayList<Menu> menusDoUsuario = uLogado.getPerfil().getMenus();
        for(Menu mu:menusDoUsuario) {
        
%>
            <a href="<%=mu.getLink() %>"><%=mu.getTitulo() %></a>
            |            
<%    
        }
        out.print(" (" + uLogado.getNome() + ") <a href='sair.jsp'>Sair</a>");

    } catch(Exception e) {
        response.sendRedirect("login.jsp");
    }
    
%>