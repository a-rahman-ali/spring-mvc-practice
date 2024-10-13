<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Success Page</title>
	</head>
	<body>
		<h1>Details submitted successfully</h1>
<%-- 		<h1>user name: </h1> <%= request.getAttribute("userName")%>
		<h1>user email: </h1> <%= request.getAttribute("userEmail")%>
		<h1>user note: </h1> <%= request.getAttribute("note")%>
 --%>
		<h1>user name: ${ user.userName }</h1> 
		<h1>user email: ${ user.userEmail }</h1>
		<h1>user note: ${ user.note }</h1> <br>
		<h1 style="color: white; background-color: green">${ msg }</h1> 
	</body>
</html>