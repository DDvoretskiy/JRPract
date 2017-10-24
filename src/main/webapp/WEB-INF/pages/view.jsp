<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>

<style type="text/css">
	<%@include file="beauty.css" %>
</style>
<script type="text/javascript">
    <%@include file="scripts.js" %>
</script>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Books</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
</head>
<body onload="load('list');">
<h1 style ="text-align:center;">Список книг</h1>

		<table id="table" border=1 class="tg">
			<tr class="header">
				<th> ID </th>
				<th> Заголовок
					<br>
					<input type="text" id="by_name" required="required" name="by_name" placeholder="Поиск по заголовку" onkeyup="myFunction()">
				</th>
				<th> Описание
					<br>
					<input type="text" id="by_name1" required="required" name="by_name" placeholder="Поиск по описанию" onkeyup="myFunction1()">
				</th>
				<th> Автор
					<br>
					<input type="text" id="by_name2" required="required" name="by_name" placeholder="Поиск по автору" onkeyup="myFunction2()">
				</th>
				<th> ISBN
					<br>
					<input type="text" id="by_name3" required="required" name="by_name" placeholder="Поиск по ISBN" onkeyup="myFunction3()">
				</th>
				<th> Год издания
					<br>
					<input type="text" id="by_name4" required="required" name="by_name" placeholder="Поиск по году издания" onkeyup="myFunction4()">
				</th>
				<th> Прочитано
					<br>
					<input type="text" id="by_name5" required="required" name="by_name" placeholder="Поиск по тегу прочитано" onkeyup="myFunction5()">
				</th>
			</tr>
		</table>

<h2 style ="text-align:left;">Добавить/Изменить запись</h2>
<table border="1" class="tg">
	<tr>
		<td>Id:</td>
		<td><input type="text" id="id" readonly="readonly" name="id"/></td>
	</tr>
	<tr>
		<td>Заголовок:</td>
		<td><input type="text" id="title" required="required" name="title"/></td>
	</tr>
	<tr>
		<td>Описание:</td>
		<td><input type="text" id="description" required="required" name="description"/></td>
	</tr>
	<tr>
		<td>Автор:</td>
		<td><input type="text" id="author" required="required" name="author"/></td>
	</tr>
	<tr>
		<td>ISBN:</td>
		<td><input type="text" id="isbn" required="required" name="isbn"/></td>
	</tr>
	<tr>
		<td>Год издания:</td>
		<td><input type="text" id="printYear" required="required" name="printYear"/></td>
	</tr>
	<tr>
		<td>Прочитано:</td>
		<th><label class="container"> <input type="checkbox"   id="readAlready" required="required" name="readAlready"/> <span class="checkmark"> </span>
		</label> </th>
	</tr>

</table>
<br>
<button onclick="submit();">Добавить/Внести изменения</button>
<br>
<br>
  		<c:forEach var="i" begin = "1" end = "${pages}">
			<a href= "${i}">${i}</a>
		</c:forEach>
	
</body>
</html>