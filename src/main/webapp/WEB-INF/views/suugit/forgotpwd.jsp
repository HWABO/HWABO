
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

</head>

<body class="bg-gradient-primary">
	<div class="container mt-5">
		<div class="row justify-content-center">
			<div class="card o-hidden border-0 shadow-lg col-md-6">
				<div class="card-body">
					<center><h2 class="m-4">비밀번호 재발급</h2></center>
					<ul class="list-unstyled text-center">
						<small>
							<li>회원가입시 사용한 사용자의 이메일을 입력해주세요.</li>
							<li>이메일로 발송된 임시코드를 통해 새 비밀번호로 변경합니다.</li>
						</small>
					</ul>
					<form action="forgotpwd.do" method="post">
						<div class="justify-content-center">
							<div class="form-group mx-5">
								<input type="email" class="form-control mb-2" id="uemail" name="uemail"
									placeholder="이메일 입력"> <a href="index.html"
									class="btn btn-primary btn-user btn-block">이메일로 임시코드 받기</a>
							</div>
						</div>
					</form>
					<hr>
					
					
					<div class="text-center">
						<a class="small" href="javascript:location.href='mvlogin.do';">로그인으로 돌아가기</a>
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

</body>

</html>

