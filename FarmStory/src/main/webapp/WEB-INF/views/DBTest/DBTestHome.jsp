<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	Hello world!  
</h1>
	<h2>Hi!! yeah~~!</h2>

<P>  The time on the server is ${serverTime}. </P>
<br>

<p> DB 입력 테스트 </p>
<form action="dbtest.action" method="post">
	이름 : <input type="text" name="userName"><br>
	번호 : <input type="text" name="phoneNumber"><br>
	내용 : <textarea rows="10" cols="100" name="content"></textarea><br>
	<input type="submit" value="입력 테스트 전송">
</form>


</body>
</html>
