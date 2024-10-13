<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Home</title>
	</head>
	<body>
		<h1>This is Home Page</h1>
		<h1>Called by home controller</h1>
		<h1>url /home</h1>
		<%
			String name = (String) request.getAttribute("name");
			int id = (int) request.getAttribute("id");
			List<String> frnds = (List<String>)request.getAttribute("frnds");
		%>
		<h2>Id stored in model is <%= id %></h2>
		<h2>Name stored in model is <%= name %></h2>
		<%
			for(String frnd : frnds) {
		%>
			<ul>
				<li><%= frnd %></li>
			</ul>
		<%
				// out.println(frnd);
			}
		%>
	</body>
</html>