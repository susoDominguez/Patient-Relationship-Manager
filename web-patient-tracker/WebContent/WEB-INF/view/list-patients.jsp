<!-- add support for jstl CORE tags -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!-- page preferences -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>List NHS Patients</title>

<!-- reference css style sheet -->
<link type="text/css"
		rel="stylesheet"
		href="${pageContext.request.contextPath}/resources/css/style.css" />
</head>
<body>

	<div id="wrapper">
		<div id="header">
			<h2>PRM - Patient Relationship Manager</h2>
		</div>
	</div>
	
	<div id="container">
		<div id="content">
		
			<!-- put new button: Add Patient -->
			<input type="button" value="Add Patient"
					onclick="window.location.href='showFormForAdd'; return false;"
					class="add-button">
					
			<!-- Add out html table here -->
			<table>
				<tr> 
					<th>First Name</th>
					<th>Last Name</th>
					<th>Email</th>
					<th>Action<th>
				</tr>
				<!-- Loop over and print our customers -->
				<c:forEach var="tempPatient" items="${patients}">
					
					<!-- Construct an Update link with Patient id -->
					<c:url var="updateLink" value="/patient/showFormForUpdate">
						<c:param name="patientId" value="${tempPatient.id}"></c:param>
					</c:url>
					
					<!-- Construct a Delete link with Patient id -->
					<c:url var="deleteLink" value="/patient/delete">
						<c:param name="patientId" value="${tempPatient.id}"></c:param>
					</c:url>
					<tr>
						<td> ${tempPatient.firstName}	</td>
						<td> ${tempPatient.lastName}	</td>
						<td> ${tempPatient.email}	</td>
						<td> 
							<!-- display the Update link -->
							<a href="${updateLink}">Update</a>
							|
							<a href="${deleteLink}"
								onclick="if (!(confirm('Are you sure you wan to delete this patient?'))) return false">Delete</a>
						
						</td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</div>
</body>
</html>