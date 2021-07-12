<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 조회</title>

<style type="text/css">
   .datarow:hover{
       background: #ccc;
       cursor : pointer;
   } 
 
</style>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
$(function(){
	$(".cancelBtn").click(function(){
		history.back();	
	});
});	

$(document).ready(function(){
	var formObj = $("form[role='form']");
	console.log(formObj);
	
	$(".btn-warning").on("click",function(){
		window.location.href = '/app/update/' + $('#num').val();
	});
	
	$(".btn-danger").on("click",function(){
		formObj.attr("action","/app/delete");
		formObj.submit();
	});
	
	$(".btn-primary").on("click",function(){
		window.location.href = "/app/list";
	});
	
});
</script>

</head>
<body>

<form role="form" method="post">
  <input type="hidden" name='num' id="num" value="${item.num }">
  
</form>


   <div class="container">
       <h2>게시판 조회</h2>
       <table class="table" > <!-- 부트스트랩적용하고싶음.. -->
          <tr>
           
            <th>제목 </th>
            <td><input class="form-group" name="title" readonly value="${item.title}" ></td> 
           
          </tr>
           <tr>
           
            <th>내용  </th>
            <td><textarea class="form-group" name="contents" readonly>${item.contents}</textarea></td> 
           
          </tr>
         
          
          <tr>
             <td colspan="2">
                 <button type="button" class="cancelBtn">뒤로</button>
                 <button type="submit" class="btn btn-warning">수정하기</button>
                  <button type="submit" class="btn btn-danger">삭제하기 </button>
                   <button type="submit" class="btn btn-primary">목록보기 </button>
             </td>  
          </tr>
          
       </table>
   </div>
</body>
</html>