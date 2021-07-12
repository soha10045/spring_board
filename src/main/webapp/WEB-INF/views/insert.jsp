<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 글쓰기 </title>

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
</script>

</head>
<body>

   <div class="container">
       <h2>게시판 글쓰기  </h2>
       <form method="post" class="form-group">
       <table class="table" > <!-- 부트스트랩적용하고싶음.. -->
          <tr>
           
            <th>제목 </th>
            <td><input class="form-control" name="title"></td> 
           
          </tr>
           <tr>
           
            <th>내용  </th>
            <td><textarea class="form-control" name="contents"></textarea></td> 
           
          </tr>
         
          
          <tr>
             <td colspan="2">
                 <button>등록 </button>
                 <button type="reset">새로입력  </button>
                 <button type="button" class="cancelBtn">취소  </button>
             </td>  
          </tr>
          
       </table>
       </form>
   
   </div>

</body>
</html>