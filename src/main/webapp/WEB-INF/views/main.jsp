<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
<style type="text/css">

  .board-table{
          margin: 0 auto;
          width: 800px;
  }
  
  .board-table td, .board-table th {
  	padding: 10px;
  	text-align: left;
  	border: 1px solid #999;
  }
  

</style>	
	
</head>
<body>
	
	<table class="board-table">
	     <thead>
	        <tr>
	          <th>번호</th>
	          <th>제목</th>
	          <th>글쓴이</th>
	          
	        </tr>
	     </thead>
	     <tbody>
	        <tr>
	         <td>1</td>
	         <td>ㅎㅇ</td>
	         <td>루비</td>
	         </tr>
	         <tr>
	         <td>1</td>
	         <td>ㅎㅇ</td>
	         <td>루비</td>
	         </tr>
	         <tr>
	         <td>1</td>
	         <td>ㅎㅇ</td>
	         <td>루비</td>
	         </tr>
	         <tr>
	         <td>1</td>
	         <td>ㅎㅇ</td>
	         <td>루비</td>
	         </tr>
	         <tr>
	         <td>1</td>
	         <td>ㅎㅇ</td>
	         <td>루비</td>
	         </tr>
	     </tbody>
	          
	             
	
	
	
	</table>
	
	<button type="button" onclick="window.location.href='/app/write'" >글쓰기 </button>

</body>
</html>
