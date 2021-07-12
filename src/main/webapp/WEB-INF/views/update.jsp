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

 $(document).ready(function(){
	var formObj = $("form[role='form']");
	console.log(formObj);
	
	$(".btn-warning").on("click",function(){
		self.location="/list";
	});
	
	$(".btn-primary").on("click",function(){
		formObj.submit();
	});
 });

</script>

</head>
<body>

<form role="form" method="post" action="/app/update">
  



   <div class="container">
       <h2>게시판 수정 </h2>
       <table class="table" > <!-- 부트스트랩적용하고싶음.. -->
         <tr>
            <th>글번호 </th>
            <td><input  class="form-control" type="text" name="num" readonly value="${item.num }" ></td>
         </tr>
         
          <tr>
           
            <th>제목 </th>
            <td><input class="form-group" name="title"  value="${item.title}" ></td> 
           
          </tr>
           <tr>
           
            <th>내용  </th>
            <td><textarea class="form-group" name="contents" >${item.contents}</textarea></td> 
           
          </tr>
         
          
  </form>        
          <tr>
             <td colspan="2">
                 
                 <button type="submit" class="btn btn-primary">저장하기 </button>
                  <button type="submit" class="btn btn-warning">취소하기  </button>
                   
             </td>  
          </tr>
          
       </table>
   </div>
</body>
</html>