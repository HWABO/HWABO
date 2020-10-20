<%@ page import="java.util.ArrayList, com.beet.HWABO.red.model.vo.UserProject"%>
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
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>HWABO</title>

  <!-- Custom fonts for this template-->
  <link href="/hwabo/resources/maincss/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="/hwabo/resources/maincss/css/sb-admin-2.css" rel="stylesheet">
<!-- 차트기능시작 -->
<style>
* {
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;  
}

.donut-chart {
  position: relative;
	width: 100px;
  height: 100px;
	margin: 0 auto 2rem;
	border-radius: 100%
 }
p.center {
  background: white;
  position: absolute;
  text-align: center;
font-size: 28px;
  top:0;left:0;bottom:0;right:0;
  width: 90px;
  height: 90px;
  margin: auto;
  border-radius: 50%;
  line-height: 35px;
  padding: 15% 0 0;
}
	
.portion-block {
    border-radius: 50%;
    clip: rect(0px, 100px, 100px, 50px);
    height: 100%;
    position: absolute;
    width: 100%;
  }
.circle {
    border-radius: 50%;
    clip: rect(0px, 50px, 100px, 0px);
    height: 100%;
    position: absolute;
    width: 100%;
    font-family: monospace;
    font-size: 1.5rem;
  }
	
#part1 {
    transform: rotate(0deg);
  }

	#part1 .circle {
		background-color: #E64C65;
		/*transform: rotate(76deg);*/
		animation: first 1s 1 forwards;
	  }
	
#part2 {
    transform: rotate(100deg);
  }
#part2 .circle {
    background-color: #11A8AB;
    animation: second 1s 1 forwards 1s;
  }
#part3 {
    transform: rotate(250deg);
}
	#part3 .circle {
		background-color: #4FC4F6;
		animation: third 0.5s 1 forwards 2s;
	}
	
/* Animation */
@keyframes first {
    from {transform: rotate(0deg);}
    to {transform: rotate(100deg);}
}
	
@keyframes second {
    from {transform: rotate(0deg);}
    to {transform: rotate(150deg);}
}
	
@keyframes third {
    from {transform: rotate(0deg);}
    to {transform: rotate(111deg);}
}
</style>

<!-- 차트기능끝 -->

</head>

<body id="page-top">

<!-- 1.topbar추가 -->
<!-- Topbar2 -->
        <c:import url="/WEB-INF/views/suugit/topbar.jsp"></c:import>
<!-- End of Topbar -->

<!-- 2.바로아래div추가 및 임포트 추가  -->
<div style="width:100%;display:flex;justify-content:center;align-item:center;">
<!-- Sidebar2right -->
     <c:import url="/WEB-INF/views/red/entersideFixed.jsp"></c:import>
<!-- End of Sidebar2right -->

<!-- 3. id="wrapper" 스타일 1300px설정 -->
  <!-- Page Wrapper -->
  <div id="wrapper"  style="width:1300px;">

<!-- 4. Sidebar 사이드바 영역 width:17%추가 -->
    <!-- Sidebar -->
    <div style="width:17%"></div>
    <!-- End of Sidebar -->

<!-- 5. class="d-flex flex-column bg-white" 그리고 style="width:62%;" -->
 <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column bg-white" style="width:62%;">

 <!-- Main Content -->
     <div id="content">

<!-- 6. 탑바<br>4개  -->
        <!-- Topbar -->
        <br><br><br><br>
        <!-- End of Topbar -->

        <!-- Begin Page Content -->
        <div class="container-fluid">
<!-- 프로젝트생성버튼 시작 -->
<div class="card shadow mb-4" onclick="javascript:location.href='createP.do?ucode=${ who }'">
            <div class="card-body btn btn-outline-info">
              <!-- 게시글안쪽 -->
                            <h2 class="m-0 font-weight-bold" style="text-align:center">
                          <i class="fa fa-plus-circle"></i>  프로젝트 생성
                            </h2>
            </div>
          </div>
          <!-- 프로젝트생성버튼 끝 -->
          
<!-- 조회된 프로젝트들 시작 -->

<% 
if(request.getAttribute("project") != null){
ArrayList<UserProject> list = (ArrayList<UserProject>)request.getAttribute("project");
int w = 0;
if(list.size() != 0)
for(UserProject p : list ){
if((++w + 5) % 3 == 0){
	out.write("<div class='row'>");
}
%>
<!-- 프로젝트 낱개 폼 시작 -->
<div class="col-xl-4 col-lg-5" >
              <div class="card shadow mb-4">
                <!-- Card Header - Dropdown -->
                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                <% 
                int len = p.getName().length(); 
                if(len > 9){
                	len = 9;
                }
                %>
                  <h6 class="m-0 font-weight-bold text-primary" id="projectTitle"><%= p.getName().substring(0,len) %></h6>
                  <div class="dropdown no-arrow">
                    <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                      <i class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
                    </a>
                    <div class="dropdown-menu dropdown-menu-right shadow animated--fade-in" aria-labelledby="dropdownMenuLink">
                      <form action="starProject.do" method="post" >
                      
                      <input type="text" value="<%= p.getProject_num() %>" name="star" style="display:none">
                      <input type="text" value="${ who }" name="ucode" style="display:none">
                      <button class="dropdown-item" type="submit">즐겨찾기 등록</button>
                      </form>
                      <div class="dropdown-divider"></div>
                      <a class="dropdown-item" href="deleteProject.do?projectNumber=<%= p.getProject_num() %>">프로젝트 삭제</a>
                    </div>
                  </div>
                </div>
                <!-- Card Body -->
                <div class="card-body" onclick="javascript:location.href='ftables0.do?project_num=<%= p.getProject_num() %>&setSession=beet'">
                  <!-- 그래프시작 -->
                  <div class="container">
                  <center>
                  
					<% if(p.getOpen() == null){ %> 
						<img src="resources/maincss/img/projectChoice/easter_bunny_flatline.svg" class="boarder rounded " style="min-height:100px;max-width:120px;max-height:100px">
					<% }else{ %>
					<img src="<%= p.getOpen() %>" class="boarder rounded " style="min-height:100px;max-width:120px;max-height:100px">
					<% } %>
				</center>
</div>
<!-- 그래프끝 -->
                  <div class="mt-4 text-center small">
                    <span class="mr-2">
                    <% //int num = p.getGoal() > 0 ? p.getGoal() : 0; %>
                      <i class="fas fa-circle text-primary"></i> 진행률 <%= p.getDone() * 100 / p.getGoal() %>%
                    </span>
                  </div>
                </div>
              </div>
</div>
<!-- 프로젝트 낱개 폼 끝 -->
<% 
if((w >= 3 && (w + 9) % 3 == 0) || 
	(list.size() % 3 != 0 && list.size() - w == 0 ) || 
	(list.size() % 3 != 0 && list.size() - w == 1 && w + 1 != list.size())
	){
		out.write("</div>");
	}
}//forEach
}//null check
%>

<!-- 조회된 프로젝트들 끝 -->

        </div>
        <!-- /.container-fluid -->

      </div>
      <!-- End of Main Content -->

    </div>
 	 <!-- End of Content Wrapper -->
<!-- 7번  -->
<div style="width:25%"></div>
</div>

</div><!-- flex -->
<!-- 7번끝 -->
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

  <!-- Page level plugins -->
  <script src="/hwabo/resources/maincss/vendor/chart.js/Chart.min.js"></script>

  <!-- Page level custom scripts -->
  <script src="/hwabo/resources/maincss/js/demo/chart-area-demo.js"></script>
  <script src="/hwabo/resources/maincss/js/demo/chart-pie-demo.js"></script>
<!-- 차트기능불러오기 시작 -->
<script src="https://canvasjs.com/assets/script/jquery-1.11.1.min.js"></script>
<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
<!-- 차트기능불러오기 끝 -->
</body>

</html>
