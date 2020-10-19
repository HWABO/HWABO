<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="kr">
<head>
<link rel="icon" type="image/x-icon" href="/hwabo/resources/assets/img/favicon.png" />
</head>


<body id="page-top">

   <!-- Topbar -->
<nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow" style="position:fixed;width:100%;z-index:99;width:100%;display:flex;justify-content:center;align-item:center;">

          <!-- Sidebar Toggle (Topbar) -->
          <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
            <i class="fa fa-bars"></i>
          </button>

<!--  -->
<table style="width:1300px"><tr><td></td><td>
<!--  -->
<script type="text/javascript">
//검색기능 시작
function doSearch(){
	var contentV = document.getElementById("searchBarcontent") 
	const xhr = new XMLHttpRequest();
	xhr.open('POST', 'contentSearch.do');
	xhr.setRequestHeader('Content-type', 'application/json');
	const data = { pnum:'${sessionScope.pnum}', bcontent:contentV.val()};
	xhr.send(JSON.stringify(data));
	
	xhr.onreadystatechange = function (e) {
		if (xhr.readyState !== XMLHttpRequest.DONE) return;
		if(xhr.status === 200) {
			console.log('바닐라 성공');
			//document.getElementById('barContents').innerHTML = xhr.responseText;
		 } else {
		    console.log('서버오류에요...');
		 }
	}
}
//검색기능 끝
</script>
<c:if test="${ empty project }">
<c:set var="barContent" value="Search for..."></c:set>
<c:set var="barRead" value=""></c:set>
</c:if>
<c:if test="${ !empty project }">
<c:set var="barContent" value="프로젝트 선택 후 검색 가능합니다"></c:set>
<c:set var="barRead" value="readonly"></c:set>
</c:if>
          <!-- Topbar Search -->
          <form class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search" action="contentSearch.do" method="post" id="searchBar">
            <!-- <div class="input-group" onKeyPress="javascript:if(event.keyCode==13){doSearch();event.preventDefault();}"> -->
            <div class="input-group">
              <input type="text" class="form-control bg-light border-0 small" name="searchBarcontent" id="searchBarcontent" placeholder="${ barContent }" ${ barRead } aria-label="Search" aria-describedby="basic-addon2">
              <input type="hidden" name="pnum" value="${ sessionScope.pnum }">
              <div class="input-group-append" id="scanner" onclick="javascript:if('${project}' == ''){document.getElementById('searchBar').submit();}">
                <button class="btn btn-primary" type="button">
                  <i class="fas fa-search fa-sm"></i>
                </button>
              </div>
            </div>
          </form>

<!--  -->
</td><td style="width:43%;"></td><td>
<!--  -->

          <!-- Topbar Navbar -->
          <ul class="navbar-nav ml-auto">

            <!-- Nav Item - Search Dropdown (Visible Only XS) -->
            <li class="nav-item dropdown no-arrow d-sm-none">
              <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <i class="fas fa-search fa-fw"></i>
              </a>
              <!-- Dropdown - Messages -->
              <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in " aria-labelledby="searchDropdown">
                <form class="form-inline mr-auto w-100 navbar-search">
                  <div class="input-group">
                    <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..sds." aria-label="Search" aria-describedby="basic-addon2">
                    <div class="input-group-append">
                      <button class="btn btn-primary" type="button">
                        <i class="fas fa-search fa-sm"></i>
                      </button>
                    </div>
                  </div>
                </form>
              </div>
            </li>


            <!-- Nav Item - User Information -->
            <li class="nav-item dropdown no-arrow">
              <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <span class="mr-2 d-none d-lg-inline text-capitalize font-weight-bold text-primary mr-1">${sessionScope.uname}</span>
                <img class="img-profile rounded-circle border border-primary" src="${uimg}" style="max-width:80px;max-height:80px">
              </a>
              <!-- Dropdown - User Information -->
              <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
              	<c:url var="Myinfo" value="myinfo.do">
					<c:param name="ucode" value="${ucode}"></c:param>
				</c:url>
                <a class="dropdown-item" href="${Myinfo}"><i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>내 정보</a>
                <a class="dropdown-item" href="#"><i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i> 환경설정 </a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="${pageContext.servletContext.contextPath}/logout.do" data-toggle="modal" data-target="#logoutModal">
                  <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                  Logout
                </a>
              </div>
            </li>

          </ul>

<!--  -->
</td>
</tr>
</table>
<!--  -->

        </nav>
        <!-- End of Topbar -->
        
	 <!-- Logout Modal-->
  <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">로그아웃 하시겠습니까?</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true"><i class="fa fa-times-circle"></i></span>
          </button>
        </div>
        <div class="modal-body">~로그아웃~ </div>
        <div class="modal-footer d-flex justify-content-center ">
          <button class="btn btn-secondary w-25" type="button" data-dismiss="modal">취소</button>
          <a class="btn btn-primary w-25" href="${pageContext.servletContext.contextPath}/logout.do">로그아웃</a>
        </div>
      </div>
    </div>
  </div>
	
 	<script type="text/javascript" src="resources/js/jquery-3.5.1.min.js"></script>
</body>

</html>
