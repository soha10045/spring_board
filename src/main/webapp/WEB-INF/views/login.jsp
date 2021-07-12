<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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

<form action="login" method="POST">
	<input type="text" name="userId" />
	<input type="password" name="userPw" />
	<button type="submit">로그인</button>
	<a href="${pageContext.request.contextPath}/join">회원가입</a>
</form>
</body>
</html>
