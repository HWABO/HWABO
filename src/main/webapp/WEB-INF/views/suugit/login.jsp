<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="CONTEXT_PATH" value="${pageContext.request.contextPath}" scope="application"/>
<!DOCTYPE html>
<html lang="kr">

<head>
  <link rel="icon" type="image/x-icon" href="/hwabo/resources/assets/img/favicon.png" />
  <script type="text/javascript">
  if('${sessionScope.ucode}' != ''){
  	location.href='cards.do';
  }
  </script>
  
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>HWABO</title>

  <!-- Custom fonts for this template-->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
  <!-- Custom styles for this template-->
  <link href="/hwabo/resources/maincss/css/styles_suugit.css" rel="stylesheet">
  <script src="https://apis.google.com/js/platform.js" async defer></script>
  <meta name="google-signin-client_id" content="507075818333-an288g3htqli53i5f49hlkdc60bfbq7i.apps.googleusercontent.com">

</head>

<body class="bg-gradient-primary"  >

  <div class="container">

    <!-- Outer Row -->
    <div class="row justify-content-center">

      <div class="col-xl-10 col-lg-12 col-md-9">

        <div class="card o-hidden border-0 shadow-lg my-5"  style="background-color:rgba(248, 249, 252);">
          <div class="card-body p-0">
            <!-- Nested Row within Card Body -->
            <div class="row">
              <div class="col-lg-6 d-none d-lg-block" style="padding-top:10%;">
                <img src="/hwabo/resources/maincss/img/suugit/problem_solving_flatline.svg"></img>
              </div>
              <div class="col-lg-6">
                <div class="p-5">
              <div class="alert-success">  ${message} </div>
              
                  <div class="text-center">
                    <h1 class="h4 text-gray-900 mb-4">화보로고</h1>
                  </div>
                  <form action="login.do" method="post" class="user">
                    <div class="form-group">
                      <input type="email" class="form-control form-control-user" name="uemail" aria-describedby="emailHelp" placeholder="이메일 주소" required>
                    </div>
                    <div class="form-group">
                      <input type="password"  class="form-control form-control-user" name="upwd" placeholder="비밀번호" required>
                    </div>
                    <div class="form-group">
                      <div class="custom-control custom-checkbox small" id="checkBoxError">
                        <input type="checkbox" class="custom-control-input" id="customCheck">
                        <label class="custom-control-label" for="customCheck">이메일 기억하기</label>
                      </div>
                    </div>
                    <input type="submit" class="btn btn-primary btn-user btn-block" value="로그인">
                    <hr>
                    <div id = "naver_id_login"></div>
                    <!-- <a class="btn btn-google btn-user btn-block" data-onsuccess="onSignIn">
                      <i class="fab fa-google fa-fw"></i> Google로 로그인
                    </a>
                    <a href="index.html" class="btn btn-naver btn-user btn-block">
                      <span class="font-weight-bolder" style="font-weight-bolder;font-size:1em">N&nbsp;</span>Naver로 로그인
                    </a> -->
					 <a href="${googleUrl}" class="btn btn-google btn-user btn-block">
                      <i class="fab fa-google fa-fw"></i> Google로 계속하기
                    </a>
                    <a href="${naverUrl}" class="btn btn-naver btn-user btn-block">
                      <span class="font-weight-bolder" style="font-weight-bolder;font-size:1em">N&nbsp;</span>Naver로 계속하기
                    </a>
					<br>
                  </form>
                  <hr>
                  <div class="text-center">
                    <a class="small" href="javascript:location.href='mvforgotpwd.do';">비밀번호가 생각나지 않으신가요?</a>
                  </div>
                  <div class="text-center">
                    화보가 처음이신가요?
                    <a class="small" href="javascript:location.href='mvsign.do';">가입하기</a>
                  </div>
                </div>
              </div>
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
  <script src="resources/js/jquery-3.5.1.min.js"></script>
  <script src="js/sb-admin-2.min.js"></script>
  <script src="https://apis.google.com/js/platform.js" async defer></script>
<script type = "text/javascript" src = "https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
<!-- 이메일 버튼 숨김 시작 -->
  <script type="text/javascript">
  $(function(){
	  $("#checkBoxError").hide();
  })
  </script>
<script>


</script>
</body>

</html>

