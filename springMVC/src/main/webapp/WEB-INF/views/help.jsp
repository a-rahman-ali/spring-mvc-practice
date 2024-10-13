<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Help</title>
	</head>
	<body>
	
	<!-- Here we've made use of ModelAndView --> 
 	<%-- <!-- 
 		<h1>This is help page</h1>
		<%
			String role = (String) request.getAttribute("role");
		%>
		<h2><%= role %> is here to help you...!</h2>
		
	--> --%>
	
	<!-- Here we've used JSP Expression Language -->
 		<h1>This is help page</h1>
 		<h2>${ role } is here to help you...!</h2>
 		<hr>
		<p>${ marks }</p>
		
		<c:forEach var="item" items="${ marks }">
			<%-- <p>${ item }</p> --%>
			<c:out value="${ item }"/>
		</c:forEach>
		
	</body>
</html>