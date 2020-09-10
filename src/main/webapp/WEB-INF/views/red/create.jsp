<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                    <h1 class="h4 text-gray-900 mb-4">프로젝트를 생성해주세요</h1>
                  </div>
                  <form class="user">
                    <div class="form-group">
                      <input type="text" name="" class="form-control form-control-user" id="exampleInputEmail" aria-describedby="emailHelp" placeholder="프로젝트 이름을 입력해주세요">
                    </div>
                    <div class="form-group">
                      <input type="text" class="form-control form-control-user" id="exampleInputPassword" placeholder="프로젝트 설명을 입력해주세요">
                    </div>
                    <div class="form-group">
                      <div class="custom-control custom-checkbox small">
                        <input type="checkbox" class="custom-control-input" id="customCheck">
                        <label class="custom-control-label" for="customCheck">가입시 관리자 승인후 가능</label>
                      </div>
                    </div>
                    <a href="cards.do" class="btn btn-primary btn-user btn-block">
                      	새 프로젝트 생성
                    </a>
                    <hr>
                    <a href="cards.do" class="btn btn-google btn-user btn-block">
                      	 취소
                    </a>
                  </form>
                  
                </div>
</td><td style="width:30%;"></td></tr>
<tr><td>&nbsp;</td><td style="height:35%;">&nbsp;</td><td>&nbsp;</td></tr>      
</table>
<!-- 팝업끝 -->
<c:import url="/WEB-INF/views/red/cards.jsp"></c:import>
</body>
</html>
