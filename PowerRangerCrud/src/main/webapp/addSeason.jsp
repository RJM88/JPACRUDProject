
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
<%-- 	<div>
		<h5>Season: ${ranger.id} Season Name: ${ranger.seasonName}</h5>
		<p>Number of Episodes: ${ranger.episodes}</p>
		<p>First Episodes: ${ranger.firstEpisode}</p>
		<p>Last Episodes: ${ranger.lastEpisode}</p>
		<p>Original Air Date: ${ranger.originalAirDate}</p>
		<p>Final Air Date: ${ranger.finalAirDate}</p>

	</div> --%>

	<form action="addSeason.do" method="POST">
	

		Season Name: <input type="text" name="seasonName" /> <br> Number
		of Episodes: <input type="text" name="episodes" /> <br> First
		Episode: <input type="text" name="firstEpisode" /> <br> Last
		Episode: <input type="text" name="lastEpisode" /> <br> Original
		Air Date: <input type="Date" name="originalAirDate" /> <br>
		Final Air Date: <input type="Date" name="finalAirDate" /> <br> 
		<input type="submit" class="button" value="ranger" />
	</form>
</body>
</html>
