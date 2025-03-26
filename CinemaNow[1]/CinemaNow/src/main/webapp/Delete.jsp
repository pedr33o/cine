<%@page import="classes.Vetor"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/estilos.css">
<style type="text/css">
	h1{
		color: orange;
		padding-left1: 380px;
	}
	h2{
		color: white;
		padding-left1: 380px;
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
	<%
    	String indexParam = request.getParameter("index");
    	if (indexParam != null) {
        	int index = Integer.parseInt(indexParam);
       			if (index >= 0 && index < Vetor.x.size()) {
            		Vetor.x.remove(index);
            		
        		}
    		}
    		%>
    		<h1>Usuario cadastrado com sucesso!!</h1>
      	    <h2>Retorne à página inicial</h2>
    		
    		
</body>
</html>