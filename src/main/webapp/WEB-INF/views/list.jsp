<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 리스트</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
<style type="text/css">
   .datarow:hover{
       background: #ccc;
       cursor : pointer;
   
   }
</style>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
$(function(){
	$(".datarow").click(function(){
		var num = $(this).find(".no").text();
		location.href = "view/"+num;
     }); 
});	
</script>

</head>
<body>

   <div class="container">
       <h2>게시판리스트 </h2>
       <table class="table"> <!-- 부트스트랩적용하고싶음.. -->
          <tr>
            <th>번호</th>
            <th>제목 </th>
            <th>작성자 </th>
           
          </tr>
         <c:if test="${empty list }">
           <tr><td colspan="3">데이터가 존재하지 않습니다 </td></tr>
         </c:if> 
          <c:if test="${! empty list }">
          <c:forEach items="${list}" var="vo">
	          <tr class="datarow">
	           <td class="no">${vo.num }</td>
	           <td><a href='/app/view/${vo.num}'>${vo.title } </td>   <!-- 이거맞나? -->
	           <td>${vo.writerId } </td>
	          </tr>
          </c:forEach>
          </c:if> 
          <%-- <tr>
             <td colspan="3">
                 <pageObject:pageNav pageObject="${pageObject}" listURI="list" />
             </td>  
          </tr> --%>
          <tr>
             <td colspan="3">
                 <a href="insert" class="btn btn-default">글쓰기 </a>
             </td>  
          </tr>
       </table>
       
       <a href="/app/logout">로그아웃 </a>
   
   </div>

</body>
</html>