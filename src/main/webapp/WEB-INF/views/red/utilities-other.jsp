<%@page import="java.util.ArrayList,java.util.Set,com.beet.HWABO.red.model.vo.Progress"%>
<%@ page session="true" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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

  <!-- Custom fonts for this template-->
  <link href="/hwabo/resources/maincss/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
<!-- 진행률시작 -->
<style>
#myProgress {
  width: 100%;
  background-color: #ddd;
  border-radius:8px;
}

#myBar {
  width: ${ tp }%;
  height: 30px;
  background-color: #4e73df;
  text-align: center;
  line-height: 30px;
  color: white;
  border-radius:8px;
}
#ptitle:hover{
background-color:#CEF6F5;
border-radius:5px;
}
</style>

<!-- 진행률끝 -->
<link href="/hwabo/resources/maincss/css/sb-admin-2.css" rel="stylesheet">
<link href="/hwabo/resources/maincss/css/progressbar2.css" rel="stylesheet">
</head>

<body id="page-top">

<!-- 1.topbar추가 -->
<!-- Topbar2 -->
        <c:import url="/WEB-INF/views/suugit/topbar.jsp"></c:import>
<!-- End of Topbar -->

<!-- 2.바로아래div추가 및 임포트 추가  -->
<div style="width:100%;display:flex;justify-content:center;align-item:center;">
<!-- Sidebar2right -->
     <c:import url="/WEB-INF/views/red/sideFixed.jsp"></c:import>
<!-- End of Sidebar2right -->

<!-- 3. id="wrapper" 스타일 1300px설정 -->
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
<div class="card shadow mb-4">
            <div class="card-header py-3">
           	프로젝트 진행률
            </div>
            <div class="card-body">
              <!-- 게시글안쪽 -->

<div id="myProgress">
  <div id="myBar">${ sessionScope.totalProgress }%</div>
</div>
<br>
</div>
</div>
<!-- 진행률끝 -->
<% 
String color[] = new String[]{"#F6CECE","#F5F6CE","#CEF6CE","#F5A9F2","#D8CEF6"};
for(String pnames : (Set<String>)request.getAttribute("MemberNames")){ 
%>
<!-- 개인진행률시작 -->
          <div class="card mb-4">
                <div class="card-header py-3">
                  <h6 class="m-0 font-weight-bold text-primary"><%= pnames %></h6>
                </div>
                <div class="card-body">
                  <% 
                  int i = 0;
                  int goal = 0;
                  int done = 0;
                  for(Progress info : (ArrayList<Progress>)request.getAttribute(pnames)){
       				goal += info.getGoal();
       				done += info.getDone();
                  }
                  int total = done * 100 / goal;
                  %>
                  <div class="mb-1 small">개인 전체 진행률 <%= total %>%</div>
                  <div class="progress mb-4">
                    <div class="progress-bar progress-bar1" role="progressbar" style="background-color:#4e73df;width: <%= total %>%;backgound-color:#F8E0E0;" aria-valuenow="<%= total %>" aria-valuemin="0" aria-valuemax="100"></div>
                  </div>
                  <% int count = 0; %>
                  <c:forEach var="userInfo" items="<%= (ArrayList<Progress>)request.getAttribute(pnames) %>" varStatus="status">
                  <fmt:parseNumber var= "percent" integerOnly= "true" value="${userInfo.done * 100 / userInfo.goal}" />
                  <!-- 디테일뷰 폼시작 -->
                  <form action="detailP.do" method="post" id="detailForm<%= ++count %>${ userInfo.ucode }">
                  <input type="hidden" name="ucode" value="${ userInfo.ucode }">
                  <input type="hidden" name="project_num" value="${ userInfo.project_num }">
                  <input type="hidden" name="name" value="${ userInfo.name }">
                  <input type="hidden" name="goal" value="${ userInfo.goal }">
                  <input type="hidden" name="done" value="${ userInfo.done }">
                  <input type="hidden" name="title" value="${ userInfo.title }">
                  <input type="hidden" name="content" value="${ userInfo.content }">
                  </form>
                  <!-- 디테일뷰 폼끝 -->
                  <div class="mb-1 small" id="ptitle" onclick="javascript:document.getElementById('detailForm<%= count %>${ userInfo.ucode }').submit();">
                  ${ userInfo.title } 
                  </div>
                  <div class="progress progress-sm mb-2">
                    <div class="progress-bar progress-bar2" role="progressbar" style="background-color:<%= color[i++] %>;width: ${ userInfo.done * 100 / userInfo.goal }%" aria-valuenow="${ userInfo.done * 100 / userInfo.goal }" aria-valuemin="0" aria-valuemax="100"></div>
                  <% if(i == 4){i=0;} %>
                  </div>
                  </c:forEach>
                </div>
              </div>
<!-- 개인진행률끝 -->
<% } %>
<!-- 샘플 폼시작 -->
 <div class="card mb-4" id="sampleProgress">
                <div class="card-header py-3">
                  <h6 class="m-0 font-weight-bold text-primary">영원한 친구 비트 (샘플 폼 입니다)</h6>
                </div>
                <div class="card-body">
                  <div class="mb-1 small">개인 전체 진행률 80%</div>
                  <div class="progress mb-4">
                    <div class="progress-bar1 progress-bar" role="progressbar" style="background-color:#4e73df;width: 80%;backgound-color:#F8E0E0;" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100"></div>
                  </div>
                  <div class="mb-1 small">목표1 진행률 75%</div>
                  <div class="progress progress-sm mb-2">
                    <div class="progress-bar progress-bar2" role="progressbar" style="background-color:skyblue;width: 75%" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100"></div>
                  </div>
                  <div class="mb-1 small">목표2 진행률 45%</div>
                  <div class="progress progress-sm mb-2">
                    <div class="progress-bar progress-bar3" role="progressbar" style="background-color:pink;width: 45%" aria-valuenow="45" aria-valuemin="0" aria-valuemax="100"></div>
                  </div>
                  <div class="mb-1 small">목표3 진행률 65%</div>
                  <div class="progress progress-sm mb-2">
                    <div class="progress-bar progress-bar4" role="progressbar" style="background-color:black;width: 65%" aria-valuenow="65" aria-valuemin="0" aria-valuemax="100"></div>
                  </div>
                  <div class="mb-1 small">목표4 진행률 100%</div>
                  <div class="progress progress-sm mb-2">
                    <div class="progress-bar progress-bar5" role="progressbar" style="background-color:green;width: 100%" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
                  </div>
                  <div class="mb-1 small">목표5 진행률 50%</div>
                  <div class="progress progress-sm mb-2">
                    <div class="progress-bar progress-bar6" role="progressbar" style="background-color:red;width: 50%" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
                  </div>
                  <div class="mb-1 small">목표5 진행률 50%</div>
                  <div class="progress progress-sm mb-2">
                    <div class="progress-bar progress-bar6" role="progressbar" style="background-color: #F6CECE;width: 50%" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
                  </div>
                  <div class="mb-1 small">목표5 진행률 50%</div>
                  <div class="progress progress-sm mb-2">
                    <div class="progress-bar progress-bar6" role="progressbar" style="background-color:#F5F6CE;width: 50%" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
                  </div>
                </div>  
            </div>
<!-- 샘플폼 끝 -->
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
 
</div><!-- flex -->
  <!-- End of Page Wrapper -->

  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>

  <!-- Logout Modal-->
  <!-- 8.로그아웃모달 -->
        <c:import url="/WEB-INF/views/red/logoutModal.jsp"></c:import>
  <!-- 8끝 -->

  <!-- Bootstrap core JavaScript-->
  <script src="/hwabo/resources/maincss/vendor/jquery/jquery.min.js"></script>
  <script src="/hwabo/resources/maincss/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="/hwabo/resources/maincss/vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="/hwabo/resources/maincss/js/sb-admin-2.min.js"></script>

<script type="text/javascript">
//샘플폼 가리기
$(function(){
$("#sampleProgress").hide();
});
</script>

</body>

</html>
