<%@page import="classes.Vetor"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
	<head>
		<title>Filmes</title>
		<meta charset="UTF-8">
		<meta name="Author" content="Jefferson-Augusto">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="img/icone.png">
		<link rel="stylesheet" type="text/css" href="css/estilos.css">
	</head>
	<body>
		<div class="header-container">
		<header>
			<a href="Home.html"><img src="img/cinema.png" alt="Logo do Site" style="width: 260px; justify-content: center;"  class="iconeindex"></a>
		
			<div class="menu" style="border: 1px; border-color: black;">
			<nav id="topo">
				<ul>
					<li style="	list-style:none; border-color: orange;"><a href="Home.html">Menu</a>
						<ul style="padding-left: 8%; padding-top: 0px;">
							<li><a href="Add.jsp">Adicionar conta</a></li>
							<li><a href="Exc.jsp">Excluir conta</a></li>
							<li><a href="Edit.jsp">Editar conta</a></li>
							<li><a href="Buscar.html">Buscar filme</a></li>
							<li><a href="Consulta.jsp">Consultar cadastros</a></li>
						</ul>
					</li>
				</ul>
			</nav>
			</div>
		</header>
		</div>
		<main>
			<h2 style="color: orange;">Excluir Usuários</h2>
    <table>
        <tr style="color: orange;">
            <th>ID</th>
            <th>Nome</th>
            <th>Idade</th>
            <th>E-mail</th>
            <th>Ação</th>
        </tr>
        <% for (int i = 0; i < Vetor.x.size(); i++) { %>
            <tr style="color: white;">
                <td><%= i %></td>
                <td><%= Vetor.x.get(i).getNome() %></td>
                <td><%= Vetor.x.get(i).getIdade() %></td>
                <td><%= Vetor.x.get(i).getEmail() %></td>
                <td>
                    <form action="Delete.jsp" method="post">
                       	  <input type="hidden" name="index" value="<%= i %>">
                      	  <input type="submit" value="Excluir">
                    </form>
              	  </td>
            	</tr>
        	<% } %>
    	</table>
   		
		</main>
		<div style="padding-top: 300px;">s
		<footer class="footer" >
			<!-- Link para página de trabalhe conosco -->
            <p style="justify-content: center;">Copyright © 2023 Cinema</p><p style="color: #ee7829ee; justify-content: center;">Now</p>
        </footer>
        </div>
	</body>
</html>