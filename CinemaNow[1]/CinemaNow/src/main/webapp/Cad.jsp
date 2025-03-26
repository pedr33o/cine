<%@page import="classes.Vetor"%>
<%@page import="classes.Usuario"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Verificação de cadastro</title>
<link rel="stylesheet" type="text/css" href="css/estilos.css">
<style>
</style>
</head>
<body>
	   <%
    if (request.getParameter("nome") != null) {
    	
        String nome = request.getParameter("nome");
        String idade = request.getParameter("idade");
        String email = request.getParameter("email");
        Vetor.x.add(new Usuario(nome, idade, email));
    }
	
    %>
    <div class="header-container">
		<header>
			<a href="Home.html"><img src="img/cinema.png" alt="Logo do Site" style="width: 260px; justify-content: center;"  class="iconeindex"></a>
		
			<div class="menu" style="border: 1px; border-color: black;">
			<nav id="topo">
				<ul>
					<li style="	list-style:none; border-radius: 4px; border-color: orange;"><a href="Home.html">Menu</a>
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
    <h1 style="color: orange; padding-left: 380px;">Usuario cadastrado com sucesso!!</h1>
    <h2 style="color: white; padding-left: 380px;">Retorne à página inicial</h2>

</body>
</html>