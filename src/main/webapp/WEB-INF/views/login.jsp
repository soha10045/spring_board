<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
</head>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<script>

 $(document).ready(function(){
	var formObj = $("#loginForm"); 
	$("#loginButton").on("click",function(){
		var id = $("#userId");
		var pw = $("#userPw");
		
		if(id.val() =="" ){
			alert("아이디를 입력하세요");
			id.focus();
			return false;
		}
		if(pw.val() == ""){
			alert("비밀번호를 입력하세요");
			pw.focus();
			return false;
		}
		else{
			
			formObj.submit();
		}
		
		
		
	});
	
	$("#joinButton").on("click",function(){
		window.location.href="${pageContext.request.contextPath}/join"
	});
	
 });


</script>
<body>
<h1>
	INNI's Spring board   
</h1>

<h4>로그인 </h4>

<form action="login" id="loginForm" method="POST">
	ID<input type="text" id="userId" name="userId" />
Password<input type="password" id="userPw" name="userPw" />
	<button type="button" id="loginButton">로그인</button>
	<button type="button" id="joinButton">회원가입</button>
	<%-- <a href="${pageContext.request.contextPath}/join">회원가입</a> --%>
</form>
</body>
</html>
