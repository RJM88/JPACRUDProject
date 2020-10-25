
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix=""%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">
<meta charset="UTF-8">
<title>Show Film</title>
</head>
<body>
	<div class="container-fluid">
	<form action="addSeason.do" method="POST">

<a class="text-danger">
		Season Name: <input type="text" name="seasonName" /> <br> Number
		of Episodes: <input type="text" name="episodes" /> <br> First
		Episode: <input type="text" name="firstEpisode" /> <br> Last
		Episode: <input type="text" name="lastEpisode" /> <br> Original
		Air Date: <input type="text" name="originalYear" /> <br> Final
		Air Date: <input type="text" name="mainVillain" /> <br> <input
			type="submit" class="btn btn-danger" class="button" value="Add" />
			</a>
	</form>
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
