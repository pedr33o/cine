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
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
		<style>
		body{
			backgroud-color: #000000;
		}
        /* Estilos da tabela */
        table {
            width: 80%;
            margin: auto;
            border-collapse: collapse;
        }

        th, td {
            padding: 10px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #f2f2f2;
        }

        caption {
            font-size: 1.5em;
            margin-bottom: 10px;
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
		<main>
    <table>
        <caption>Lista de usuários</caption>
        <thead>
        <tr>
            <th scope="col">ID</th>
            <th scope="col">NOME</th>
            <th scope="col">EMAIL</th>
            <th scope="col">IDADE</th>
            <th scope="col">#</th>
        </tr>
        </thead>
        <%for(int i=0;i<Vetor.x.size();i++){ %>
        <tbody>
        <tr>
            <th scope="row"><%= i%></th>
            <td><%=Vetor.x.get(i).getNome()%></td>
            <td><%=Vetor.x.get(i).getEmail()%></td>
            <td><%=Vetor.x.get(i).getIdade()%></td>
            <td>
                <a href="Edit.jsp"><button>EDITAR</button></a>
                <a href="Exc.jsp"><button>EXCLUIR</button></a>
            </td>
		        </tr>
		        </tbody>
		        <% } %>
		    </table>
		</main>
		<div style="padding-top: 300px;">
		    <footer class="footer">
		        <!-- Link para página de trabalhe conosco -->
		        <p style="justify-content: center;">Copyright © 2023 Cinema</p>
		        <p style="color: #ee7829ee; justify-content: center;">Now</p>
		    </footer>
		</div>
		        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
	</body>
</html>