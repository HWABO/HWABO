<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
  <link href="/hwabo/resources/maincss/css/sb-admin-2.min.css" rel="stylesheet">
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
        <c:import url="/WEB-INF/views/red/topbar.jsp"></c:import>
<!-- End of Topbar -->

<!-- <table style="width:100%;">
<tr>
<td style="width:20%;"></td>

<td style="width:60%;"> -->


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

<!-- 5. Content Wrapper 몸통 영역 width:62%추가 -->
    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column"  style="width:62%;">

      <!-- Main Content -->
      <div id="content">


<!-- 6. 원래 topbar있던자리 공백 채우기 <br>4번 -->
        <!-- Topbar -->
       <br><br><br><br>
        <!-- End of Topbar -->

        <!-- Begin Page Content -->
        <div class="container-fluid">
<!-- 프로젝트생성시작 -->
<div class="card shadow mb-4" onclick="javascript:location.href='createP.do'">
            <div class="card-body">
              <!-- 게시글안쪽 -->
                            <h1 class="m-0 text-primary" style="text-align:center">
                <img src="/hwabo/resources/maincss/img/plus2.png" style="width:45px;height:45px;">            
                            새 프로젝트 생성
                            </h1>


            </div>
          </div>
          <!-- 프로젝트생성끝 -->
         <div class="row">
         <!-- 프로젝트시작 -->
<div class="col-xl-4 col-lg-5" >
              <div class="card shadow mb-4">
                <!-- Card Header - Dropdown -->
                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                  <h6 class="m-0 font-weight-bold text-primary">관공서 UI 12월16일</h6>
                  <div class="dropdown no-arrow">
                    <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                      <i class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
                    </a>
                    <div class="dropdown-menu dropdown-menu-right shadow animated--fade-in" aria-labelledby="dropdownMenuLink">
                      <div class="dropdown-header">Dropdown Header:</div>
                      <a class="dropdown-item" href="#">즐겨찾기 등록</a>
                      <a class="dropdown-item" href="#">프로젝트 복사</a>
                      <div class="dropdown-divider"></div>
                      <a class="dropdown-item" href="#">프로젝트 삭제</a>
                    </div>
                  </div>
                </div>
                <!-- Card Body -->
                <div class="card-body" onclick="javascript:location.href='fborder.do'">
                  <!-- 그래프시작 -->
                  <div class="container">
  <div class="donut-chart-block block"> 
		<div class="donut-chart">
			<div id="part1" class="portion-block"><div class="circle"></div></div>
			<div id="part2" class="portion-block"><div class="circle"></div></div>
			<div id="part3" class="portion-block"><div class="circle"></div></div>
			<p class="center"></p>        
		</div>
   </div>
</div>
<!-- 그래프끝 -->
                  <div class="mt-4 text-center small">
                    <span class="mr-2">
                      <i class="fas fa-circle text-primary"></i> 구름과자 30%
                    </span>
                  </div>
                </div>
              </div>
            </div>
            <!-- 프로젝트끝 -->
            <!-- 프로젝트시작 -->
           <div class="col-xl-4 col-lg-5">
              <div class="card shadow mb-4">
                <!-- Card Header - Dropdown -->
                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                  <h6 class="m-0 font-weight-bold text-primary">google project2</h6>
                  <div class="dropdown no-arrow">
                    <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                      <i class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
                    </a>
                    <div class="dropdown-menu dropdown-menu-right shadow animated--fade-in" aria-labelledby="dropdownMenuLink">
                      <div class="dropdown-header">Dropdown Header:</div>
                      <a class="dropdown-item" href="#">즐겨찾기 등록</a>
                      <a class="dropdown-item" href="#">프로젝트 복사</a>
                      <div class="dropdown-divider"></div>
                      <a class="dropdown-item" href="#">프로젝트 삭제</a>
                    </div>
                  </div>
                </div>
                <!-- Card Body -->
                <div class="card-body" onclick="javascript:location.href='fborder.do'">
                <!-- 그래프시작 -->
                  <div class="container">
  <div class="donut-chart-block block"> 
		<div class="donut-chart">
			<div id="part1" class="portion-block"><div class="circle"></div></div>
			<div id="part2" class="portion-block"><div class="circle"></div></div>
			<div id="part3" class="portion-block"><div class="circle"></div></div>
			<p class="center"></p>        
		</div>
   </div>
</div>
<!-- 그래프끝 -->
                  <div class="mt-4 text-center small">
                    <span class="mr-2">
                      <i class="fas fa-circle text-primary"></i> 감전직전 40%
                    </span>
                  </div>
                </div>
              </div>
            </div>
<!-- 프로젝트끝 -->
<!-- 프로젝트시작 -->
            <!-- Pie Chart -->
            <div class="col-xl-4 col-lg-5">
              <div class="card shadow mb-4">
                <!-- Card Header - Dropdown -->
                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                  <h6 class="m-0 font-weight-bold text-primary">clone kakaoTalk</h6>
                  <div class="dropdown no-arrow">
                    <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                      <i class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
                    </a>
                    <div class="dropdown-menu dropdown-menu-right shadow animated--fade-in" aria-labelledby="dropdownMenuLink">
                      <div class="dropdown-header">Dropdown Header:</div>
                      <a class="dropdown-item" href="#">즐겨찾기 등록</a>
                      <a class="dropdown-item" href="#">프로젝트 복사</a>
                      <div class="dropdown-divider"></div>
                      <a class="dropdown-item" href="#">프로젝트 삭제</a>
                    </div>
                  </div>
                </div>
                <!-- Card Body -->
                <div class="card-body" onclick="javascript:location.href='fborder.do'">
                  <!-- 그래프시작 -->
                  <div class="container">
  <div class="donut-chart-block block"> 
		<div class="donut-chart">
			<div id="part1" class="portion-block"><div class="circle"></div></div>
			<div id="part2" class="portion-block"><div class="circle"></div></div>
			<div id="part3" class="portion-block"><div class="circle"></div></div>
			<p class="center"></p>        
		</div>
   </div>
</div>
<!-- 그래프끝 -->
                  <div class="mt-4 text-center small">
                    <span class="mr-2">
                      <i class="fas fa-circle text-primary"></i> 마차 0%
                    </span>
                  </div>
                </div>
              </div>
            </div>
            <!-- 프로젝트끝 -->
          </div>
          <% for(int i = 0; i < 10; i++){ %>
          <div class="row">
          <!-- 프로젝트시작 -->
<div class="col-xl-4 col-lg-5">
              <div class="card shadow mb-4">
                <!-- Card Header - Dropdown -->
                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                  <h6 class="m-0 font-weight-bold text-primary">beet</h6>
                  <div class="dropdown no-arrow">
                    <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                      <i class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
                    </a>
                    <div class="dropdown-menu dropdown-menu-right shadow animated--fade-in" aria-labelledby="dropdownMenuLink">
                      <div class="dropdown-header">Dropdown Header:</div>
                      <a class="dropdown-item" href="#">즐겨찾기 등록</a>
                      <a class="dropdown-item" href="#">프로젝트 복사</a>
                      <div class="dropdown-divider"></div>
                      <a class="dropdown-item" href="#">프로젝트 삭제</a>
                    </div>
                  </div>
                </div>
                <!-- Card Body -->
                <div class="card-body" onclick="javascript:location.href='fborder.do'">
                  <!-- 그래프시작 -->
                  <div class="container">
  <div class="donut-chart-block block"> 
		<div class="donut-chart">
			<div id="part1" class="portion-block"><div class="circle"></div></div>
			<div id="part2" class="portion-block"><div class="circle"></div></div>
			<div id="part3" class="portion-block"><div class="circle"></div></div>
			<p class="center"></p>        
		</div>
   </div>
</div>
<!-- 그래프끝 -->
                  <div class="mt-4 text-center small">
                    <span class="mr-2">
                      <i class="fas fa-circle text-primary"></i> 도도로 25%
                    </span>
                  </div>
                </div>
              </div>
            </div>
            <!-- 프로젝트끝 -->
            <!-- 프로젝트시작 -->
           <div class="col-xl-4 col-lg-5">
              <div class="card shadow mb-4">
                <!-- Card Header - Dropdown -->
                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                  <h6 class="m-0 font-weight-bold text-primary">naehaksa</h6>
                  <div class="dropdown no-arrow">
                    <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                      <i class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
                    </a>
                    <div class="dropdown-menu dropdown-menu-right shadow animated--fade-in" aria-labelledby="dropdownMenuLink">
                      <div class="dropdown-header">Dropdown Header:</div>
                      <a class="dropdown-item" href="#">즐겨찾기 등록</a>
                      <a class="dropdown-item" href="#">프로젝트 복사</a>
                      <div class="dropdown-divider"></div>
                      <a class="dropdown-item" href="#">프로젝트 삭제</a>
                    </div>
                  </div>
                </div>
                <!-- Card Body -->
                <div class="card-body" onclick="javascript:location.href='fborder.do'">
                  <!-- 그래프시작 -->
                  <div class="container">
  <div class="donut-chart-block block"> 
		<div class="donut-chart">
			<div id="part1" class="portion-block"><div class="circle"></div></div>
			<div id="part2" class="portion-block"><div class="circle"></div></div>
			<div id="part3" class="portion-block"><div class="circle"></div></div>
			<p class="center"></p>        
		</div>
   </div>
</div>
<!-- 그래프끝 -->
                  <div class="mt-4 text-center small">
                    <span class="mr-2">
                      <i class="fas fa-circle text-primary"></i> 뚜기 50%
                    </span>
                  </div>
                </div>
              </div>
            </div>
<!-- 프로젝트끝 -->
<!-- 프로젝트시작 -->
            <!-- Pie Chart -->
            <div class="col-xl-4 col-lg-5">
              <div class="card shadow mb-4">
                <!-- Card Header - Dropdown -->
                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                  <h6 class="m-0 font-weight-bold text-primary">팡팡팡</h6>
                  <div class="dropdown no-arrow">
                    <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                      <i class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
                    </a>
                    <div class="dropdown-menu dropdown-menu-right shadow animated--fade-in" aria-labelledby="dropdownMenuLink">
                      <div class="dropdown-header">Dropdown Header:</div>
                      <a class="dropdown-item" href="#">즐겨찾기 등록</a>
                      <a class="dropdown-item" href="#">프로젝트 복사</a>
                      <div class="dropdown-divider"></div>
                      <a class="dropdown-item" href="#">프로젝트 삭제</a>
                    </div>
                  </div>
                </div>
                <!-- Card Body -->
                <div class="card-body" onclick="javascript:location.href='fborder.do'">
                  <!-- 그래프시작 -->
                  <div class="container">
  <div class="donut-chart-block block"> 
		<div class="donut-chart">
			<div id="part1" class="portion-block"><div class="circle"></div></div>
			<div id="part2" class="portion-block"><div class="circle"></div></div>
			<div id="part3" class="portion-block"><div class="circle"></div></div>
			<p class="center"></p>        
		</div>
   </div>
</div>
<!-- 그래프끝 -->
                  <div class="mt-4 text-center small">
                    <span class="mr-2">
                      <i class="fas fa-circle text-primary"></i> abc 34%
                    </span>
                  </div>
                </div>
              </div>
            </div>
            <!-- 프로젝트끝 -->
          </div>
<% } %>
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

</div>

</div><!-- flex -->
<!-- </td><td style="width:20%;"></td>
</tr>
</table> -->
  <!-- End of Page Wrapper -->

  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>

  <!-- Logout Modal-->
  <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">Ã</span>
          </button>
        </div>
        <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
        <div class="modal-footer">
          <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
          <a class="btn btn-primary" href="login.jsp">Logout</a>
        </div>
      </div>
    </div>
  </div>

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
