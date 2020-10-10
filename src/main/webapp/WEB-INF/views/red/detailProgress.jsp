<%@page import="java.util.Random"%>
<%@ page session="true" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:if test="${ empty sessionScope.ucode }">
<c:set var="who" value="Guest"></c:set>
</c:if>
<c:if test="${ !empty sessionScope.ucode }">
<c:set var="who" value="${ sessionScope.ucode }"></c:set>
</c:if>
<!DOCTYPE html>
<html lang="kr">
<head>
<link rel="icon" type="image/x-icon" href="/hwabo/resources/assets/img/favicon.png" />
  <title>HWABO</title>
</head>
<body id="page-top">
<!-- 팝업시작 -->
<table style="position:fixed;z-index:8; width:100%;height:100%;">
<tr><td>&nbsp;</td><td style="height:20%;">&nbsp;</td><td>&nbsp;</td></tr>
<tr><td style="width:30%;"></td><td style="width:40%;height:45%;background-color:white;border:1px solid skyblue;">
<div class="p-5" style="width:100%;">
                  <div class="text-center">
                  <div class="alert-danger rounded" id="messageArea"></div><br>

                    <h1 class="h4 text-gray-900 mb-4">${ progress.title }</h1>
                  </div>
                  <form action="createProject.do" method="post" id="projectInsert" class="user">
                    <div class="form-group">
                      	작성자 : ${ progress.name }
                    </div>
                    <div class="form-group">
                    
                      	진행상태 : <fmt:formatNumber value="${ progress.done * 100 / progress.goal }" pattern=".00" />%
                    </div>
                    <div class="form-group">
                      ${ progress.content }
                    </div>
                    <hr>
                    <a href="fother.do?project_num=${ progress.project_num }" class="btn btn-user btn-block" style="font-size:110%;">
                      	 확인
                    </a>
                  </form>
                </div>
</td><td style="width:30%;"></td></tr>
<tr><td>&nbsp;</td><td style="height:35%;">&nbsp;</td><td>&nbsp;</td></tr>      
</table>
<!-- 팝업끝 -->
<c:import url="/WEB-INF/views/red/utilities-other.jsp"></c:import>
</body>
</html>
