<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix = "r" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/style.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Dojo Survey Result</title>
</head>
<body>
<fieldset>
<h1>Submitted Info</h1>
		<p>Your Name: <r:out value="${yourName}"/><br></p>
		<p>Dojo Location: <r:out value="${location}"/><br>
		<p>Language: <r:out value="${language}"/><br></p>
		<p>Comment: <r:out value="${comment}"/><br></p>
		

		<a href="/">Go Back</a>
</fieldset>
</body>
</html>