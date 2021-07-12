<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
	<style type="text/css">
	
	body { 
		padding 50px;
		
		margin 30px;
		
		color blue;
		text-align: center;
	}
	
	.join_input {
	    padding:10px;
	    margin:10px;
		width: 200px;
		height: 20px;
	
		
	  
	}
	button:hover {
		background: #d3d3d3;
		color: white;
		
	}
	
	</style>
</head>
<body>
<h1>
	회원가입  
</h1>


<form  action="join" method="POST">
   <div>

    ID <br>
	<input class="join_input" type="text" name="userId" placeholder="ID를 입력하세요" /><br>
    PASSWORD<br>
	<input class="join_input"type="password" name="userPw" placeholder="비밀번호를 입력하세요" /><br>
	NAME<br>
	<input class="join_input"type="text" name="userName" placeholder="이름을 입력하세요"/><br>
	<button type="submit">회원가입</button>
	</div>
</form>
</body>
</html>
