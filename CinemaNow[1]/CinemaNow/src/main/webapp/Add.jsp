<%@page import="classes.Usuario"%>
<%@page import="classes.Vetor"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="pt-br">
	<head>
		<title>Filmes</title>
		<meta charset="UTF-8">
		<meta name="Author" content="Renan-Woitchunas">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="img/icone.png">
		<link rel="stylesheet" type="text/css" href="css/estilos.css">
		<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #101010;
        padding: 20px;
        color: #fff;
    }

    h2 {
        color: #333;
    }

    label {
        font-weight: bold;
    }

    input[type="text"] {
        padding: 5px;
        margin-bottom: 10px;
        width: 200px;
    }

    button {
        padding: 10px 20px;
        background-color: #4caf50;
        color: #fff;
        border: none;
        cursor: pointer;
    }

    button:hover {
        background-color: #45a049;
    }

    #resultado {
        margin-top: 20px;
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
<h2 style="color: orange;">Cadastre-se</h2>
    <br />

    <form action="Cad.jsp" method="GET">
        <fieldset>
            <legend>Dados Pessoais</legend>
            <table>
                <tr>
                    <td>
                        <label for="kjk">Nome: </label>
                    </td>
                    <td align="left">
                        <input type="text" name="nome">
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>Idade:</label>
                    </td>
                    <td align="left">
                        <input type="number" name="idade" size="2" maxlength="2" placeholder="idd">
                    </td>
                </tr>

                <tr>
                    <td>
                        <label>E-mail: </label>
                    </td>
                    <td align="left">
                        <input type="email" name="email">
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>Senha: </label>
                    </td>
                    <td align="left">
                        <input type="password" name="senha">
                    </td>
                </tr>
            </table>
        </fieldset>
        <br>
        <button type="submit">Cadastrar</button>
    </form>


		</main>
		<div style="padding-top: 300px;">
		<footer class="footer" >
			<!-- Link para página de trabalhe conosco -->
            <p style="justify-content: center;">Copyright © 2023 Cinema</p><p style="color: #ee7829ee; justify-content: center;">Now</p>
        </footer>
        </div>
    
	</body>
</html>