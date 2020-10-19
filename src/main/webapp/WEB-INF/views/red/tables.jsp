<%@ page import="java.util.ArrayList, com.beet.HWABO.red.model.vo.MemberProject"%>
<%@ page session="true" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:if test="${ sessionScope.totalProgress < 4 }"><c:set var="tp" value="4" /></c:if>
<c:if test="${ sessionScope.totalProgress >= 4 }"><c:set var="tp" value="${ sessionScope.totalProgress }" /></c:if>
<!DOCTYPE html>
<html lang="kr">

<head>
  <link rel="icon" type="image/x-icon" href="/hwabo/resources/assets/img/favicon.png" />
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>HWABO</title>

  <!-- Custom fonts for this template -->
  <link href="/hwabo/resources/maincss/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="/hwabo/resources/maincss/css/sb-admin-2.css" rel="stylesheet">

  <!-- Custom styles for this page -->
  <link href="/hwabo/resources/maincss/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">

<style type="text/css">
.hovercheck:hover{
background-color:#dff9fb;
border-radius:15%;
}
</style>
<!-- 스크립트 모으기 시작 ################################### -->
<c:import url="/WEB-INF/views/red/metaKyu.jsp"></c:import>
<c:import url="/WEB-INF/views/red/metaAbc.jsp"></c:import>
<c:import url="/WEB-INF/views/red/metaSuugit.jsp"></c:import>
<!-- 스크립트 모으기 끝 ##################################### -->
</head>
<body id="page-top">
<!-- 11111111111111111 -->
<c:import url="/WEB-INF/views/suugit/topbar.jsp"></c:import>
 <div style="width:100%;display:flex;justify-content:center;align-item:center;">
<!-- Sidebar2right -->
     <c:import url="/WEB-INF/views/red/sideFixed.jsp"></c:import>
<!-- End of Sidebar2right -->
<!-- 111111111111111111 -->
  <!-- Page Wrapper -->
  <div id="wrapper" style="width:1300px;">
    <!-- Sidebar -->
    <div style="width:17%"></div>
    <!-- End of Sidebar -->
    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column bg-white" style="width:62%;">
      <!-- Main Content -->
     <div id="content">
        <!-- Topbar -->
        <br><br><br><br>
        <!-- End of Topbar -->
        <!-- Begin Page Content -->
        <div class="container-fluid">
<!-- 진행률 시작 -->
<div class="card mb-4">
                <div class="card-body">
                  <div class="mb-1 small">프로젝트 진행률 ${ sessionScope.totalProgress }%</div>
                  <div class="progress progress-sm mb-2">
                    <div class="progress-bar" role="progressbar" style="width: ${ tp }%" aria-valuenow="${ tp }" aria-valuemin="0" aria-valuemax="100"></div>
                  </div>
                </div>
             
              </div>
<!-- 진행률끝 -->
          <!-- Page Heading -->
          <h1 class="h3 mb-2 text-gray-800"></h1>
          <p class="mb-4"></p>
<!-- 글작성 시작 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
<c:import url="/WEB-INF/views/red/MainListInsert.jsp"></c:import>
<!-- 글작성 끝 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->

<!-- 피드 모아보기 시작 !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->   
<div id="barContents">
<c:import url="/WEB-INF/views/red/MainList.jsp"></c:import>
</div>
<!-- 피드 모아보기 끝 !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->   
    

        </div>
        <!-- /.container-fluid -->

     </div>
      <!-- End of Main Content -->

      <!-- Footer -->
      <footer class="sticky-footer bg-white">
        <div class="container my-auto">
          <div class="copyright text-center my-auto">
            <span>Copyright &copy; Your Website 2020</span>
          </div>
        </div>
      </footer>
      <!-- End of Footer -->

    </div>
    <!-- End of Content Wrapper -->
<div style="width:25%"></div>
  </div>
  <!-- End of Page Wrapper -->
</div><!-- div flex -->
  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>

  <!-- Logout Modal-->
  <!-- 8.로그아웃모달 -->
        <c:import url="/WEB-INF/views/red/logoutModal.jsp"></c:import>
  <!-- 8끝 -->
  
<% if(request.getParameter("choicethat") != null){ %>
<script type="text/javascript">
$(function(){
    jQuery('#kyukyuMain').css("display", "block");  
    jQuery('#suugitsuugitMain').css("display", "none");
    jQuery('#abcabcMain').css("display", "none");	
});
</script>
<% } %>
	
  <!-- Bootstrap core JavaScript-->
  <script src="/hwabo/resources/maincss/vendor/jquery/jquery.min.js"></script>
  <script src="/hwabo/resources/maincss/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="/hwabo/resources/maincss/vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="/hwabo/resources/maincss/js/sb-admin-2.min.js"></script>

  <!-- Page level plugins -->
  <script src="/hwabo/resources/maincss/vendor/datatables/jquery.dataTables.min.js"></script>
  <script src="/hwabo/resources/maincss/vendor/datatables/dataTables.bootstrap4.min.js"></script>

  <!-- Page level custom scripts -->
  <script src="/hwabo/resources/maincss/js/demo/datatables-demo.js"></script>

</body>

</html>
