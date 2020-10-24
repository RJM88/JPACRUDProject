<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Power Rangers</title>
</head>
<body>
	<h1>Power Rangers</h1>

	<h3>Search for a season by Id</h3>
	<form action="season.do" method="GET">
		Season ID: <input type="text" name="sid" /> <input type="submit"
			value="Search" />
	</form>
	<a href="addSeason.jsp">Add a new season</a>
	<br>
	<!-- 	<a href="updateSeason.html">Update a season</a>
 -->
	<br />
	<br>
</body>
</html>