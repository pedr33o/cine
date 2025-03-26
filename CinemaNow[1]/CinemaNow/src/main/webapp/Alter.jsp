<%@page import="classes.Vetor"%>
<%@page import="classes.Usuario"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
    String indexParam = request.getParameter("index");
    if (indexParam != null) {
        int index = Integer.parseInt(indexParam);
        if (index >= 0 && index < Vetor.x.size()) {
            Usuario user = Vetor .x.get(index);
    %>
    <form action="Edit.jsp" method="post">
        <input type="hidden" name="index" value="<%= index %>">
        <label for="nome">Nome:</label>
        <input type="text" id="nome" name="nome" value="<%= user.getNome() %>"><br>
        <label for="idade">Idade:</label>
        <input type="text" id="idade" name="idade" value="<%= user.getIdade() %>"><br>
        <label for="email">E-mail:</label>
        <input type="email" id="email" name="email" value="<%= user.getEmail() %>"><br>
        <input type="submit" value="Salvar">
    </form>
    <%
        }
    }
    %>

</body>
</html>