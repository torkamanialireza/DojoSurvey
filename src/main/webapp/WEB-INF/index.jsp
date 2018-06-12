<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/style.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Dojo Survey</title>
</head>
<body>
<fieldset>
<form action="/survey" method="post">
<p>YourName : <input type="text" name="yourName"/></p>
<p>Location : <select name="location">
<option value="not selected">Location</option>
<option value="Burbank">Burbank</option>
<option value="San-jose">San-Jose</option>
<option value="Chicago">Chicago</option>
<option value="La">La</option>
</select>
<p>Language: 
<select name="language">
<option value="not selected">Language</option>
<option value="Python">Python</option>
<option value="Java">Java</option>
<option value="Django">Django</option>
<option value="Spring">Spring</option>
</select></p>
<p>Comment (Optional) : <textarea name="comment"></textarea></p>
<input type="submit" value="Survey"/>
</form>
</fieldset>
</body>
</html>