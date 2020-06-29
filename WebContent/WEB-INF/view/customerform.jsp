<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Spring MVC Validation</title>
	<style type="text/css">
		.error{
			color: red;
		}
	</style>
</head>
<body>
	<h1>Hello! Welcome to Spring MVC Validation API App</h1> <hr><br>
	
	<i>(*) fields are required fields</i> <br><br>
	
	<form:form action="processForm" modelAttribute="customer">
		First Name : <form:input path="firstName"/> <br><br>
		
		Last Name (*) : <form:input path="lastName"/> 
		<form:errors path="lastName" cssClass="error"/> <!-- This says, display an error message, if an error is there -->
		<br><br>
		
		Free Passes (*) : <form:input path="freePasses"/>
		<form:errors path="freePasses" cssClass="error"/> 
		<br><br>
		
		Postal Code : <form:input path="postalCode"/>
		<form:errors path="postalCode" cssClass="error"/>
		<br><br>		
		
			<input type="submit" value="submit"/>
	</form:form>
</body>
</html>