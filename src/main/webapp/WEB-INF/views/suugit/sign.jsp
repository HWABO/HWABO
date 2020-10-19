
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="CONTEXT_PATH" value="${pageContext.request.contextPath}"
	scope="application" />
<!DOCTYPE html>
<html lang="kr">

<head>
<link rel="icon" type="image/x-icon" href="/hwabo/resources/assets/img/favicon.png" />
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>HWABO</title>

<!-- Custom fonts for this template-->
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
	type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template-->
<link href="/hwabo/resources/maincss/css/styles_suugit.css"
	rel="stylesheet">

<meta name="google-signin-client_id"
	content="192518420510-3u38nsrlthastefi8ri8r5k31hf46eid.apps.googleusercontent.com">
</head>

<body class="bg-gradient-primary">
	<div class="container mt-5">
		<div class="row justify-content-center">
			<div class="card o-hidden border-0 shadow-lg col-md-10">
				<div class="row card-body">
					<div class="col-md-5 align-items-center" style="margin-top: 100px">
						<img
							src="/hwabo/resources/maincss/img/suugit/easter_bunny_flatline.svg"></img>
					</div>
					<div class="col-md-7">
						<center>
							<h1 class="m-4">회원가입</h1>
							 <div class="alert-danger rounded">  ${message} </div>
							 <br>
						</center>
						<div>
							<span id="chkmsg"></span>
						</div>
						<form action="sign.do" method="post" id="signForm"
						>
							<div class="form-group row">
								<label for="email" class="col-sm-3 col-form-label ">이메일
									주소</label>
								<div class="col-sm-9">
									<input type="email" id="uemail" class="form-control" name="uemail"
										placeholder="Email" value="${uemail}" required>
								</div>
							</div>
							<div class="form-group row">
								<label for="email" class="col-sm-3 col-form-label ">이름</label>
								<div class="col-sm-9">
									<input id="uname" type="text" class="form-control" name="uname"
										placeholder="Name" required>
								</div>
							</div>
							<div class="form-group row">
								<label for="upwd" class="col-sm-3 col-form-label ">비밀번호
								</label>
								<div class="col-sm-9">
									<input type="password" class="form-control" id="upwd" name="upwd"
										placeholder="Password" minlength="6" maxlength="12" required>
								</div>
							</div>
							<div class="form-group row">
								<label for="pwdchk" class="col-sm-3 col-form-label ">비밀번호
									확인</label>
								<div class="col-sm-9">
									<input type="password" class="form-control" id="pwdchk" name="pwdchk"
										placeholder="Password" minlength="6" maxlength="12"
										required|same:upwd>
								</div>
							</div>

							<div class="form-check mb-4 text-center">
								<input class="form-check-input" type="checkbox" value=""
									id="toschk"> <label class="form-check-label text-sm"
									for="toschk"> <small>위의 <a
										href="javascript:window.open('${CONTEXT_PATH}/terms.do','', 'popup');">이용약관
											및 개인정보 수집 및 이용</a>에 대한 안내에 동의합니다.
								</small>
								</label>
							</div>
						</form>
						<div class="col-md-9 m-auto">
							<button class="btn btn-primary btn-user btn-block" onclick="validSignChk();">가입하기</button>
						</div>

						<hr>
						<div class="col-md-9 mt-1 mb-4 mx-auto text-center">
						<a class="small" href="javascript:history.go(-1)">이전 페이지로 돌아가기</a>
						<br>
						<a class="small" href="javascript:location.href='${pageContext.servletContext.contextPath}/mvlogin.do';">이미 회원이신가요? 로그인하러가기</a>
						<!--	<a href="javascript:location.href='welcome.do'" ><span class="btn btn-outline-secondary">시작 페이지로 돌아가기</span> </a>
							 <a href="index.html" class="btn btn-google btn-user btn-block">
								<i class="fab fa-google fa-fw"></i> Google로 가입하기
							</a> <a href="index.html" class="btn btn-naver btn-user btn-block">
								<span class="font-weight-bolder" style="font-size: 1em">N&nbsp;</span>Naver로
								가입하기
							</a> -->
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


	<!-- Bootstrap core JavaScript-->
	<script src="vendor/jquery/jquery.min.js"></script>

	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Core plugin JavaScript-->
	<script src="vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Custom scripts for all pages-->
	<script src="js/sb-admin-2.min.js"></script>

	<!-- google -->
	<script src="https://apis.google.com/js/platform.js" async defer></script>

	<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
	  <script src="https://apis.google.com/js/platform.js?onload=init" async defer></script>
	<script src="resources/js/jquery-3.5.1.min.js"></script>
	<script src="/hwabo/resources/js/user.js"></script>

</body>

</html>

