<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix=""%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Show Film</title>
</head>
<body>
	<div>
		<h5>${ranger.id} ${ranger.seasonName}</h5>
		<p>Episodes: ${ranger.episodes}</p>

	</div>
	
	<a href= "deleteSeason.do?sid=${ranger.id}">Delete Season</a>
<!-- 	
		<form action="deleteSeason.do" method="GET">
			<a href="addSeason.jsp">Add a new season</a>
    <label for="sName">Delete this film: </label>
       <input type="submit" name="deleteSeason" value="Delete">
       </form> -->
</body>
</html>