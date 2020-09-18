<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

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
  <link href="/hwabo/resources/maincss/css/sb-admin-2.min.css" rel="stylesheet">

  <!-- Custom styles for this page -->
  <link href="/hwabo/resources/maincss/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">

</head>

<!-- 진행률시작 -->
<style>
#myProgress {
  width: 100%;
  background-color: #ddd;
}

#myBar {
  width: 0%;
  height: 30px;
  background-color: #4CAF50;
  text-align: center;
  line-height: 30px;
  color: white;
}
</style>

<!-- 진행률끝 -->

<body id="page-top">
<!-- 테스트버튼 시작 -->
<div style="position:absolute;z-index:5;"><br>&nbsp;
	원하는 페이지로 :
    <button onclick="javascript:location.href='red.do'">index</button>
    <button onclick="javascript:location.href='404.do'">404</button>
    <button onclick="javascript:location.href='blank.do'">blank</button>
    <button onclick="javascript:location.href='buttons.do'">buttons</button>
    <button onclick="javascript:location.href='cards.do'">cards</button>
    <button onclick="javascript:location.href='charts.do'">charts</button>
    <button onclick="javascript:location.href='fpassword.do'">forgot-password</button>
    <button onclick="javascript:location.href='flogin.do'">login</button>
    <button onclick="javascript:location.href='fregister.do'">register</button>
    <button onclick="javascript:location.href='ftables.do'">tables</button>
    <button onclick="javascript:location.href='fanimation.do'">utilities-animation</button>
    <button onclick="javascript:location.href='fborder.do'">utilities-border</button>
    <button onclick="javascript:location.href='fcolor.do'">utilities-color</button>
    <button onclick="javascript:location.href='fother.do'">utilities-other</button>
    </div>
<div style="background-color:#F8E0E6;border:2px solid black;"><br><br><br></div>
<!-- 테스트버튼 끝 -->
  <!-- Page Wrapper -->
  <div id="wrapper">

    <!-- Sidebar -->
    <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

      <!-- Sidebar - Brand -->
      <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.jsp">
        <div class="sidebar-brand-icon rotate-n-15">
          <i class="fas fa-laugh-wink"></i>
        </div>
        <div class="sidebar-brand-text mx-3">SB Admin <sup>2</sup></div>
      </a>

      <!-- Divider -->
      <hr class="sidebar-divider my-0">

      <!-- Nav Item - Dashboard -->
      <li class="nav-item">
        <a class="nav-link" href="index.jsp">
          <i class="fas fa-fw fa-tachometer-alt"></i>
          <span>Dashboard</span></a>
      </li>

      <!-- Divider -->
      <hr class="sidebar-divider">

      <!-- Heading -->
      <div class="sidebar-heading">
        Interface
      </div>

      <!-- Nav Item - Pages Collapse Menu -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">
          <i class="fas fa-fw fa-cog"></i>
          <span>Components</span>
        </a>
        <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <h6 class="collapse-header">Custom Components:</h6>
            <a class="collapse-item" href="buttons.jsp">Buttons</a>
            <a class="collapse-item" href="cards.jsp">Cards</a>
          </div>
        </div>
      </li>

      <!-- Nav Item - Utilities Collapse Menu -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities" aria-expanded="true" aria-controls="collapseUtilities">
          <i class="fas fa-fw fa-wrench"></i>
          <span>Utilities</span>
        </a>
        <div id="collapseUtilities" class="collapse" aria-labelledby="headingUtilities" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <h6 class="collapse-header">Custom Utilities:</h6>
            <a class="collapse-item" href="utilities-color.jsp">Colors</a>
            <a class="collapse-item" href="utilities-border.jsp">Borders</a>
            <a class="collapse-item" href="utilities-animation.jsp">Animations</a>
            <a class="collapse-item" href="utilities-other.jsp">Other</a>
          </div>
        </div>
      </li>

      <!-- Divider -->
      <hr class="sidebar-divider">

      <!-- Heading -->
      <div class="sidebar-heading">
        Addons
      </div>

      <!-- Nav Item - Pages Collapse Menu -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages" aria-expanded="true" aria-controls="collapsePages">
          <i class="fas fa-fw fa-folder"></i>
          <span>Pages</span>
        </a>
        <div id="collapsePages" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <h6 class="collapse-header">Login Screens:</h6>
            <a class="collapse-item" href="login.jsp">Login</a>
            <a class="collapse-item" href="register.jsp">Register</a>
            <a class="collapse-item" href="forgot-password.jsp">Forgot Password</a>
            <div class="collapse-divider"></div>
            <h6 class="collapse-header">Other Pages:</h6>
            <a class="collapse-item" href="404.jsp">404 Page</a>
            <a class="collapse-item" href="blank.jsp">Blank Page</a>
          </div>
        </div>
      </li>

      <!-- Nav Item - Charts -->
      <li class="nav-item">
        <a class="nav-link" href="charts.jsp">
          <i class="fas fa-fw fa-chart-area"></i>
          <span>Charts</span></a>
      </li>

      <!-- Nav Item - Tables -->
      <li class="nav-item active">
        <a class="nav-link" href="tables.jsp">
          <i class="fas fa-fw fa-table"></i>
          <span>Tables</span></a>
      </li>

      <!-- Divider -->
      <hr class="sidebar-divider d-none d-md-block">

      <!-- Sidebar Toggler (Sidebar) -->
      <div class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
      </div>

    </ul>
    <!-- End of Sidebar -->

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

      <!-- Main Content -->
      <div id="content">

        <!-- Topbar -->
        <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

          <!-- Sidebar Toggle (Topbar) -->
          <form class="form-inline">
            <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
              <i class="fa fa-bars"></i>
            </button>
          </form>

          <!-- Topbar Search -->
          <form class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
            <div class="input-group">
              <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
              <div class="input-group-append">
                <button class="btn btn-primary" type="button">
                  <i class="fas fa-search fa-sm"></i>
                </button>
              </div>
            </div>
          </form>

          <!-- Topbar Navbar -->
          <ul class="navbar-nav ml-auto">

            <!-- Nav Item - Search Dropdown (Visible Only XS) -->
            <li class="nav-item dropdown no-arrow d-sm-none">
              <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <i class="fas fa-search fa-fw"></i>
              </a>
              <!-- Dropdown - Messages -->
              <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in" aria-labelledby="searchDropdown">
                <form class="form-inline mr-auto w-100 navbar-search">
                  <div class="input-group">
                    <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
                    <div class="input-group-append">
                      <button class="btn btn-primary" type="button">
                        <i class="fas fa-search fa-sm"></i>
                      </button>
                    </div>
                  </div>
                </form>
              </div>
            </li>

            <!-- Nav Item - Alerts -->
            <li class="nav-item dropdown no-arrow mx-1">
              <a class="nav-link dropdown-toggle" href="#" id="alertsDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <i class="fas fa-bell fa-fw"></i>
                <!-- Counter - Alerts -->
                <span class="badge badge-danger badge-counter">3+</span>
              </a>
              <!-- Dropdown - Alerts -->
              <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="alertsDropdown">
                <h6 class="dropdown-header">
                  Alerts Center
                </h6>
                <a class="dropdown-item d-flex align-items-center" href="#">
                  <div class="mr-3">
                    <div class="icon-circle bg-primary">
                      <i class="fas fa-file-alt text-white"></i>
                    </div>
                  </div>
                  <div>
                    <div class="small text-gray-500">December 12, 2019</div>
                    <span class="font-weight-bold">A new monthly report is ready to download!</span>
                  </div>
                </a>
                <a class="dropdown-item d-flex align-items-center" href="#">
                  <div class="mr-3">
                    <div class="icon-circle bg-success">
                      <i class="fas fa-donate text-white"></i>
                    </div>
                  </div>
                  <div>
                    <div class="small text-gray-500">December 7, 2019</div>
                    $290.29 has been deposited into your account!
                  </div>
                </a>
                <a class="dropdown-item d-flex align-items-center" href="#">
                  <div class="mr-3">
                    <div class="icon-circle bg-warning">
                      <i class="fas fa-exclamation-triangle text-white"></i>
                    </div>
                  </div>
                  <div>
                    <div class="small text-gray-500">December 2, 2019</div>
                    Spending Alert: We've noticed unusually high spending for your account.
                  </div>
                </a>
                <a class="dropdown-item text-center small text-gray-500" href="#">Show All Alerts</a>
              </div>
            </li>

            <!-- Nav Item - Messages -->
            <li class="nav-item dropdown no-arrow mx-1">
              <a class="nav-link dropdown-toggle" href="#" id="messagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <i class="fas fa-envelope fa-fw"></i>
                <!-- Counter - Messages -->
                <span class="badge badge-danger badge-counter">7</span>
              </a>
              <!-- Dropdown - Messages -->
              <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="messagesDropdown">
                <h6 class="dropdown-header">
                  Message Center
                </h6>
                <a class="dropdown-item d-flex align-items-center" href="#">
                  <div class="dropdown-list-image mr-3">
                    <img class="rounded-circle" src="https://source.unsplash.com/fn_BT9fwg_E/60x60" alt="">
                    <div class="status-indicator bg-success"></div>
                  </div>
                  <div class="font-weight-bold">
                    <div class="text-truncate">Hi there! I am wondering if you can help me with a problem I've been having.</div>
                    <div class="small text-gray-500">Emily Fowler Â· 58m</div>
                  </div>
                </a>
                <a class="dropdown-item d-flex align-items-center" href="#">
                  <div class="dropdown-list-image mr-3">
                    <img class="rounded-circle" src="https://source.unsplash.com/AU4VPcFN4LE/60x60" alt="">
                    <div class="status-indicator"></div>
                  </div>
                  <div>
                    <div class="text-truncate">I have the photos that you ordered last month, how would you like them sent to you?</div>
                    <div class="small text-gray-500">Jae Chun Â· 1d</div>
                  </div>
                </a>
                <a class="dropdown-item d-flex align-items-center" href="#">
                  <div class="dropdown-list-image mr-3">
                    <img class="rounded-circle" src="https://source.unsplash.com/CS2uCrpNzJY/60x60" alt="">
                    <div class="status-indicator bg-warning"></div>
                  </div>
                  <div>
                    <div class="text-truncate">Last month's report looks great, I am very happy with the progress so far, keep up the good work!</div>
                    <div class="small text-gray-500">Morgan Alvarez Â· 2d</div>
                  </div>
                </a>
                <a class="dropdown-item d-flex align-items-center" href="#">
                  <div class="dropdown-list-image mr-3">
                    <img class="rounded-circle" src="https://source.unsplash.com/Mv9hjnEUHR4/60x60" alt="">
                    <div class="status-indicator bg-success"></div>
                  </div>
                  <div>
                    <div class="text-truncate">Am I a good boy? The reason I ask is because someone told me that people say this to all dogs, even if they aren't good...</div>
                    <div class="small text-gray-500">Chicken the Dog Â· 2w</div>
                  </div>
                </a>
                <a class="dropdown-item text-center small text-gray-500" href="#">Read More Messages</a>
              </div>
            </li>

            <div class="topbar-divider d-none d-sm-block"></div>

            <!-- Nav Item - User Information -->
            <li class="nav-item dropdown no-arrow">
              <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <span class="mr-2 d-none d-lg-inline text-gray-600 small">Valerie Luna</span>
                <img class="img-profile rounded-circle" src="https://source.unsplash.com/QAB-WJcbgJk/60x60">
              </a>
              <!-- Dropdown - User Information -->
              <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
                <a class="dropdown-item" href="#">
                  <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                  Profile
                </a>
                <a class="dropdown-item" href="#">
                  <i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
                  Settings
                </a>
                <a class="dropdown-item" href="#">
                  <i class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
                  Activity Log
                </a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                  <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                  Logout
                </a>
              </div>
            </li>

          </ul>

        </nav>
        <!-- End of Topbar -->

        <!-- Begin Page Content -->
        <div class="container-fluid">
<!-- 진행률 시작 -->
<div class="card shadow mb-4">
            <div class="card-header py-3">
            </div>
            <div class="card-body">
              <!-- 게시글안쪽 -->
                            <h1 class="m-0 text-primary">전체 진행률</h1>
                            <hr>

<div id="myProgress">
  <div id="myBar">0%</div>
</div>
<br>
<table style="text-align:center;width:100%;color:white;"><tr><td style="width:20%;"></td><td style="width:20%;"></td>
<td style="width:20%;"></td><td style="width:20%;"></td><td style="width:20%;">
<a class="btn btn-success btn-icon-split" style="width:90%;" onclick="move()">
<span class="text">진행률바 테스트</span>
</a>
</td>
</tr></table>
<script>
var i = 0;
let c = 5;//목표 갯수 현재 5개
var devide = 0;
function move() {
	devide += 100 / c;
    if(devide > 100){
    	devide = 100;
    }
  if (i == 0) {

    var elem = document.getElementById("myBar");
    var width = 0;
    var id = setInterval(frame, 10);
    function frame() {
      if (width >= devide) {
        clearInterval(id);
        i = 0;
      } else {
        width++;
        elem.style.width = width + "%";
        elem.innerHTML = width  + "%";
      }
    }
  }
}
</script>
            </div>
          </div>
<!-- 진행률끝 -->
          <!-- Page Heading -->
          <h1 class="h3 mb-2 text-gray-800"></h1>
          <p class="mb-4"></p>

          <!-- DataTales Example -->
          <div class="card shadow mb-4">
            <div class="card-header py-3">
            </div>
            <div class="card-body">
              <!-- 게시글안쪽 -->
              <form action="blank.do" id="mainInsert">
              <table style="text-align:center;width:100%;">
              <tr class="m-0 font-weight-bold text-primary"><td style="width:20%;">
              <span>글작성</span>
              </td><td style="width:20%;">
              <span>업무</span>
              </td><td style="width:20%;">
              <span>일정</span>
              </td><td style="width:20%;">
              <span>할일</span>
              </td><td style="width:20%;">
              <span>투표</span>
              </td></tr>
              <tr><td colspan="5">
              <hr>
              </td></tr>
              <tr><td colspan="5">
              <input type="text" class="form-control" placeholder="일정 제목을 입력하세요">
              </td></tr>
              <tr><td colspan="5">&nbsp;</td></tr>
              <tr><td colspan="2">
              <input type="date" class="form-control">
              </td><td>
              <img src="/hwabo/resources/maincss/img/tilde.png" style="width:100px;height:35px;">
              </td><td colspan="2">
              <input type="date" class="form-control">
              </td></tr>
              <tr><td colspan="5">&nbsp;</td></tr>
              <tr><td colspan="5">
              <input type="text" class="form-control" placeholder="장소를 입력하세요">
              </td></tr>
              <tr><td colspan="5">&nbsp;</td></tr>
              <tr><td colspan="5">
              <input type="text" class="form-control" placeholder="일정 제목을 입력하세요">
              </td></tr>
              <tr><td colspan="5">&nbsp;</td></tr>
              <tr><td colspan="5">
              <input type="text" class="form-control" placeholder="메모를 입력하세요">
              </td></tr>
              <tr><td colspan="5">&nbsp;</td></tr>
              <tr><td colspan="3"></td>
              <td>
              <a class="btn btn-success btn-icon-split" href="javascript:mainInsert.submit();" style="width:90%;" >
                    <span class="text">등록</span>
                  </a>
              </td><td>
              <a href="javascript:mainInsert.reset();" class="btn btn-danger btn-icon-split" style="width:90%;">
                    <span class="text">취소</span>
              </a>
              </td></tr>
              </table>
              </form>
            </div>
          </div>
<!-- 게시글시작 -->
<div class="card shadow mb-4">
            <div class="card-header py-3">
            </div>
            <div class="card-body">
              <!-- 게시글안쪽 -->
<h1>게시글 제목</h1>
<hr>
가<br>
나다<br>
라마바<br>
사아자차<br>
<br>
<br>
<hr>
<table style="width:100%;">
<tr><td style="width:20%;">
<a href="#" class="btn btn-primary btn-icon-split btn-sm">
                    <span class="icon text-white-50">
                      <i class="fas fa-flag"></i>
                    </span>
                    <span class="text">좋아요 0</span>
                  </a>
</td><td style="width:20%;"></td><td style="width:20%;"></td>
<td style="width:20%;"></td><td style="width:20%;float:right;">
</td>
</tr>
</table>
            </div>
<div class="px-3 py-5 bg-gradient-light text-white" style="height:10px;">
<input type="text" class="form-control" placeholder="답글을 입력하세요">
</div>
          </div>
<!-- 게시글끝 -->
<!-- 게시글시작 -->
<div class="card shadow mb-4">
            <div class="card-header py-3">
            </div>
            <div class="card-body">
              <!-- 게시글안쪽 -->
<h1>게시글 제목</h1>
<hr>
가<br>
나다<br>
라마바<br>
사아자차<br>
<br>
<br>
<hr>
<table style="width:100%;">
<tr><td style="width:20%;">
<a href="#" class="btn btn-primary btn-icon-split btn-sm">
                    <span class="icon text-white-50">
                      <i class="fas fa-flag"></i>
                    </span>
                    <span class="text">좋아요 0</span>
                  </a>
</td><td style="width:20%;"></td><td style="width:20%;"></td>
<td style="width:20%;"></td><td style="width:20%;float:right;">
</td>
</tr>
</table>
            </div>
<div class="px-3 py-5 bg-gradient-light text-white" style="height:10px;">
<input type="text" class="form-control" placeholder="답글을 입력하세요">
</div>
          </div>
<!-- 게시글끝 -->
<!-- 게시글시작 -->
<div class="card shadow mb-4">
            <div class="card-header py-3">
            </div>
            <div class="card-body">
              <!-- 게시글안쪽 -->
<h1>게시글 제목</h1>
<hr>
가<br>
나다<br>
라마바<br>
사아자차<br>
<br>
<br>
<hr>
<table style="width:100%;">
<tr><td style="width:20%;">
<a href="#" class="btn btn-primary btn-icon-split btn-sm">
                    <span class="icon text-white-50">
                      <i class="fas fa-flag"></i>
                    </span>
                    <span class="text">좋아요 0</span>
                  </a>
</td><td style="width:20%;"></td><td style="width:20%;"></td>
<td style="width:20%;"></td><td style="width:20%;float:right;">
</td>
</tr>
</table>
            </div>
<div class="px-3 py-5 bg-gradient-light text-white" style="height:10px;">
<input type="text" class="form-control" placeholder="답글을 입력하세요">
</div>
          </div>
<!-- 게시글끝 -->
<!-- 게시글시작 -->
<div class="card shadow mb-4">
            <div class="card-header py-3">
            </div>
            <div class="card-body">
              <!-- 게시글안쪽 -->
<h1>게시글 제목</h1>
<hr>
가<br>
나다<br>
라마바<br>
사아자차<br>
<br>
<br>
<hr>
<table style="width:100%;">
<tr><td style="width:20%;">
<a href="#" class="btn btn-primary btn-icon-split btn-sm">
                    <span class="icon text-white-50">
                      <i class="fas fa-flag"></i>
                    </span>
                    <span class="text">좋아요 0</span>
                  </a>
</td><td style="width:20%;"></td><td style="width:20%;"></td>
<td style="width:20%;"></td><td style="width:20%;float:right;">
</td>
</tr>
</table>
            </div>
<div class="px-3 py-5 bg-gradient-light text-white" style="height:10px;">
<input type="text" class="form-control" placeholder="답글을 입력하세요">
</div>
          </div>
<!-- 게시글끝 -->
<!-- 게시글시작 -->
<div class="card shadow mb-4">
            <div class="card-header py-3">
            </div>
            <div class="card-body">
              <!-- 게시글안쪽 -->
<h1>게시글 제목</h1>
<hr>
가<br>
나다<br>
라마바<br>
사아자차<br>
<br>
<br>
<hr>
<table style="width:100%;">
<tr><td style="width:20%;">
<a href="#" class="btn btn-primary btn-icon-split btn-sm">
                    <span class="icon text-white-50">
                      <i class="fas fa-flag"></i>
                    </span>
                    <span class="text">좋아요 0</span>
                  </a>
</td><td style="width:20%;"></td><td style="width:20%;"></td>
<td style="width:20%;"></td><td style="width:20%;float:right;">
</td>
</tr>
</table>
            </div>
<div class="px-3 py-5 bg-gradient-light text-white" style="height:10px;">
<input type="text" class="form-control" placeholder="답글을 입력하세요">
</div>
          </div>
<!-- 게시글끝 -->
<!-- 게시글시작 -->
<div class="card shadow mb-4">
            <div class="card-header py-3">
            </div>
            <div class="card-body">
              <!-- 게시글안쪽 -->
<h1>게시글 제목</h1>
<hr>
가<br>
나다<br>
라마바<br>
사아자차<br>
<br>
<br>
<hr>
<table style="width:100%;">
<tr><td style="width:20%;">
<a href="#" class="btn btn-primary btn-icon-split btn-sm">
                    <span class="icon text-white-50">
                      <i class="fas fa-flag"></i>
                    </span>
                    <span class="text">좋아요 0</span>
                  </a>
</td><td style="width:20%;"></td><td style="width:20%;"></td>
<td style="width:20%;"></td><td style="width:20%;float:right;">
</td>
</tr>
</table>
            </div>
<div class="px-3 py-5 bg-gradient-light text-white" style="height:10px;">
<input type="text" class="form-control" placeholder="답글을 입력하세요">
</div>
          </div>
<!-- 게시글끝 -->
<!-- 게시글시작 -->
<div class="card shadow mb-4">
            <div class="card-header py-3">
            </div>
            <div class="card-body">
              <!-- 게시글안쪽 -->
<h1>게시글 제목</h1>
<hr>
가<br>
나다<br>
라마바<br>
사아자차<br>
<br>
<br>
<hr>
<table style="width:100%;">
<tr><td style="width:20%;">
<a href="#" class="btn btn-primary btn-icon-split btn-sm">
                    <span class="icon text-white-50">
                      <i class="fas fa-flag"></i>
                    </span>
                    <span class="text">좋아요 0</span>
                  </a>
</td><td style="width:20%;"></td><td style="width:20%;"></td>
<td style="width:20%;"></td><td style="width:20%;float:right;">
</td>
</tr>
</table>
            </div>
<div class="px-3 py-5 bg-gradient-light text-white" style="height:10px;">
<input type="text" class="form-control" placeholder="답글을 입력하세요">
</div>
          </div>
<!-- 게시글끝 -->


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
  <script src="/hwabo/resources/maincss/vendor/datatables/jquery.dataTables.min.js"></script>
  <script src="/hwabo/resources/maincss/vendor/datatables/dataTables.bootstrap4.min.js"></script>

  <!-- Page level custom scripts -->
  <script src="/hwabo/resources/maincss/js/demo/datatables-demo.js"></script>

</body>

</html>
