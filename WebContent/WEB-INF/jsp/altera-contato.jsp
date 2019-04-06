<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="caelum" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Adiciona Contato</title>
	
	<link href="css/jquery.css" rel="stylesheet">
	<script src="js/jquery.js"></script>
	<script src="js/jquery-ui.js"></script>
</head>
<body>
	<c:import url="cabecalho.jsp"/>

	<h1>Adiciona Contatos</h1>
	<hr />
	
	
	<form action="alteraContato" method="POST">
		Nome: <input type="text" name="nome" value="${contato.nome}" /><br>
		Email: <input type="text" name="email" value="${contato.email}" /><br>
		Endereço: <input type="text" name="endereco" value="${contato.endereco}" /><br>
		Data Nascimento: <caelum:campoData id="dataNascimento" value="${contato.dataNascimento}" /><br>
		
		<input type="submit" value="Gravar" />
	
	</form>
	
	<c:import url="rodape.jsp"/>
</body>
</html>