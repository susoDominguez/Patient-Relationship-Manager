<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Save Patient</title>

<!-- reference css style sheet -->
<link type="text/css"
		rel="stylesheet"
		href="${pageContext.request.contextPath}/resources/css/style.css" />

<link type="text/css"
		rel="stylesheet"
		href="${pageContext.request.contextPath}/resources/css/add-patient-style.css" />
</head>
<body>


	<div id="wrapper">
		<div id="header">
			<h2>PRM - Patient Relationship Manager</h2>
		</div>
	</div>
	
	<div id="container">
		<h3>Save Patient</h3>
		
		<form:form action="savePatient" modelAttribute="patient" method="POST">
		
		<!-- need to associate this data with patient Id -->
		<form:hidden path="id" />
		<table>
		<tbody>
		<tr>
		<td><label>First name:</label></td>
		<td><form:input path="firstName" /> </td>
		</tr>
		
		<tr>
		<td><label>Last name:</label></td>
		<td><form:input path="lastName" /> </td>
		</tr>
		
		<tr>
		<td><label>email:</label></td>
		<td><form:input path="email" /> </td>
		</tr>
		
		<tr>
		<td><label></label></td>
		<td><input type="submit" value="Save" class="save" /> </td>
		</tr>
		
		</tbody>
		</table>
		</form:form>
		
		<div style="clear; both;"> </div>
		<p>
			<a href="${pageContext.request.contextPath}/patient/list"> Back to List</a>
		</p>
		
	</div>
		

</body>
</html>