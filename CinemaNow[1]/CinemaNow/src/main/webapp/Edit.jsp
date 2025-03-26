<%@page import="classes.Usuario"%>
<%@page import="classes.Vetor"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <title>Editar Usuários</title>
    <meta charset="UTF-8">
    <link rel="shortcut icon" href="img/icone.png">
	<link rel="stylesheet" type="text/css" href="css/estilos.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #000000;
            margin: 0;
            padding: 0;
        }

        h2 {
            color: orange;
        }

        table {
            border-collapse: collapse;
            width: 80%;
            margin: auto;
            margin-top: 20px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        th, td {
            padding: 10px;
            text-align: left;
        }

        th {
            background-color: #333;
            color: #fff;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        form {
            margin-top: 20px;
            padding: 10px;
            border: 1px solid #ccc;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 80%;
            margin: auto;
        }

        label, input[type="text"], input[type="email"] {
            display: block;
            margin-bottom: 10px;
        }

        input[type="submit"] {
            background-color: #333;
            color: #fff;
            border: none;
            padding: 8px 15px;
            cursor: pointer;
        }
    </style>
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
		<br><br><br>
    <h2 style="padding-left: 540px;">Editar Usuários</h2>
    <table>
        <tr>
            <th>ID</th>
            <th>Nome</th>
            <th>Idade</th>
            <th>E-mail</th>
            <th>Ação</th>
        </tr>
        <% for (int i = 0; i < Vetor.x.size(); i++) { %>
            <tr>
                <td><%= i %></td>
                <td><%= Vetor.x.get(i).getNome() %></td>
                <td><%= Vetor.x.get(i).getIdade() %></td>
                <td><%= Vetor.x.get(i).getEmail() %></td>
                <td>
                    <form action="Edit.jsp" method="post">
                        <input type="hidden" name="index" value="<%= i %>">
                        <input type="submit" value="Editar">
                    </form>
                </td>
            </tr>
        <% } %>
    </table>
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
