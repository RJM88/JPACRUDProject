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
<title>Power Rangers</title>
</head>
<body>
	<div class="container-fluid">
	
		<a class="text-danger"><h1>Find Your Favorite Power Rangers
				Season!</h1></a>

		<iframe width="100%" height="250" scrolling="no" frameborder="1"
			allow="autoplay"
			src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/68763528&color=%2398a4ed&auto_play=true&hide_related=true&show_comments=false&show_user=false&show_reposts=false&show_teaser=false&visual=true"></iframe>
		<div
			style="font-size: 10px; color: #cccccc; line-break: anywhere; word-break: normal; overflow: hidden; white-space: nowrap; text-overflow: ellipsis; font-family: Interstate, Lucida Grande, Lucida Sans Unicode, Lucida Sans, Garuda, Verdana, Tahoma, sans-serif; font-weight: 100;">
		</div>

		</a> <a class="text-danger"><h3>Search for a season</h3></a>
		<form action="season.do" method="GET">
			<a class="text-danger">Season number:</a> <input type="text"
				name="sid" /> <input type="submit" value="Search"
				class="btn btn-danger" />
		</form>

		<br>
		<form action="addSeason.jsp">
			<button type="submit" class="btn btn-danger">Add new season</button>
		</form>
		<br>
		<table class="table table-striped table-hover, table-dark">
			<thead class="thead thead-dark">
				<tr>
					<th>Season</th>
					<th>Title</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${seasonList}" var="ranger">
					<tr>

						<td><a class="text-danger">${ranger.id}</a></td>
						<td><p>
								<a href="season.do?sid=${ranger.id}" class="text-danger">${ranger.seasonName}</a>
							</p></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>

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