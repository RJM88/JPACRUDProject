<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">
<meta charset="UTF-8">
<title>Show Season</title>
</head>
<body>

	<div class="container-fluid">
		<c:choose>
			<c:when test="${! empty ranger}">
				<div>

					<a class="text-danger">
						<h5>
							Season: ${ranger.id} <br> Season name: ${ranger.seasonName}
						</h5>
						<p>Episodes: ${ranger.episodes}</p>
						<p>First episode: ${ranger.firstEpisode}</p>
						<p>Last episodes: ${ranger.lastEpisode}</p>
						<p>Original year: ${ranger.originalYear}</p>
						<p>Main villain : ${ranger.mainVillain}</p>
				</div>
				<br>
				<form action="deleteSeason.do">
					<button type="submit" class="btn btn-danger" name="sid"
						value="${ranger.id}">Delete</button>
				</form>
				<br>
				<br>
				<h3>Update this season</h3>
				<form action="updateSeason.do">
					Season Name: <input type="text" name="seasonName" /> <br>
					Number of Episodes: <input type="text" name="episodes" /> <br>
					First Episode: <input type="text" name="firstEpisode" /> <br>
					Last Episode: <input type="text" name="lastEpisode" /> <br>
					Original Year: <input type="text" name="originalYear" /> <br>
					Main Villain: <input type="text" name="mainVillain" /> <br>
					<button type="submit" class="btn btn-danger" name="sid"
						value="${ranger.id}">Update</button>
				</form>
			</c:when>
			<c:otherwise>This Season Does Not exist.</c:otherwise>
		</c:choose>
		</a>
		<style>
body {
	background: #292929;
	padding: 10px 15px 8px;
}
</style>
		<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
			integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
			crossorigin="anonymous"></script>
		<script
			src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
			integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
			crossorigin="anonymous"></script>
		<script
			src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js"
			integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s"
			crossorigin="anonymous"></script>
</body>
</html>