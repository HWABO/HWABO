<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HWABO 댓글</title>
</head>
<body>


 <div class="px-3 py-5 bg-gradient-light text-white" style="height: 10px;">
	<input type="hidden" name="no" value="${b.bno }" >	
	<input type="text" class="form-control" id="content" name="content" placeholder="답글을 입력하세요">
	 <button class="btn btn-default" type="button" name="commentInsertBtn">등록</button>
</div>

 <!--  댓글  -->
    <div class="container">
        <label for="content">comment</label>
        <form name="commentInsertForm">
            <div class="input-group">
               <input type="hidden" name="bno" value="${detail.bno}"/>
               <input type="text" class="form-control" id="content" name="content" placeholder="내용을 입력하세요.">
               <span class="input-group-btn">
                    <button class="btn btn-default" type="button" name="commentInsertBtn">등록</button>
               </span>
              </div>
        </form>
    </div>
    
    <div class="container">
        <div class="commentList"></div>
    </div>
</div>
 
<!--                     추가                         -->
<%-- <%@include file="commentS.jsp" %> --%>


출처: https://private.tistory.com/65 [공부해서 남 주자]



</body>
</html>