<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.*,br.com.caelum.agenda.dao.*,br.com.caelum.agenda.modelo.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<table>
		<%
			ContatoDao dao = new ContatoDao();
			List<Contato> contatos = dao.getLista();
			
			for(Contato contato : contatos){
		%>
			<tr>
				<td> <%= contato.getNome() %> </td>
				<td> <%= contato.getEmail() %> </td>
				<td> <%= contato.getEndereco() %> </td>
				<% 
					SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
					String data = sdf.format(contato.getDataNascimento().getTime()); // faz um date a partir de um calendar
				%>
				<td> <%= data %> </td>
			</tr>
			<%
			}
			%>
	
	</table>
	
</body>
</html>