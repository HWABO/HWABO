<%@ page session="true" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>  
<!DOCTYPE html>
<html lang="kr">

<head>

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
   <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  
  
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
<script type="text/javascript"	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script type="text/javascript">

$(function(){
$("#allCheckbox").click(function(){

	if($('#allCheckbox').prop("checked")){
		
		$("input[type=checkbox]").prop("checked",true);
	}else{
		
		$("input[type='checkbox']").prop("checked",false);
	}
	
	
	
})
})

</script>


<body id="page-top">

<c:import url="/WEB-INF/views/kyukyu/topbar.jsp"></c:import>
 
 <div style="width:100%;display:flex;justify-content:center;align-item:center;">
<!-- Sidebar2right -->
        <c:import url="/WEB-INF/views/kyukyu/entersideFixed1.jsp"></c:import> 
<!-- End of Sidebar2right -->
<!-- dd -->
 
 
  <!-- Page Wrapper -->
  <div id="wrapper"  >

    <!-- Sidebar -->
    <!-- <div style="width:17%"></div> -->
    <!-- End of Sidebar -->

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column bg-white" style="width:100%; ">

      <!-- Main Content -->
     <div id="content">

        <!-- Topbar -->
        <br><br><br><br>
        <!-- End of Topbar -->

        <!-- Begin Page Content -->
        <div class="container-fluid" style="width:1000px; position:relative; left:50px;">

          <!-- Page Heading -->
          <h1 class="h3 mb-2 text-gray-800">보관함</h1>
         <div class="col-lg-12">
          <p class="mb-4"></p>

	
          <div class="container">
         
          <ui class="nav nav-tabs nav-justified" >
          <li class="nav-item">
             <a class="nav-link " href="Fileboxlist.do?pnum=${sessionScope.pnum }" role="tab" aria-controls="img" aria-selected="ture"><i class="far fa-file-image"></i>&nbsp&nbsp	이미지</a></li>
          <li class="nav-item">
             <a class="nav-link active" href="FileboxTxtlist.do?pnum=${sessionScope.pnum }" role="tab" aria-controls="pnd" aria-selected="ture"><i class="far fa-file-pdf"></i>&nbsp&nbsp 문서</a>
          </li>
          <li class="nav-item">
             <a class="nav-link" href="FileboxZiplist.do?pnum=${sessionScope.pnum }" role="tab" aria-controls="zip" aria-selected="ture"><i class="far fa-file-archive"></i>&nbsp&nbsp 압축파일</a>
          </li> 
          <li class="nav-item">
             <a class="nav-link" href="FileboxEtcTxtlist.do?pnum=${sessionScope.pnum }" role="tab" aria-controls="etc" aria-selected="ture"><i class="far fa-file-code"></i>&nbsp&nbsp 기타</a>
          </li> 
         </ul>
  
          
      	</div>         

   
   
 <%--  <ul class="nav nav-tabs nav-justified">
  <li class="nav-item">
    <a class="nav-link active" href="#">Active</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="FileboxTxtlist.do?pnum=${sessionScope.pnum }">Link</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="FileboxZiplist.do?pnum=${sessionScope.pnum }" >Link</a>
  </li>
  <li class="nav-item">
    <a class="nav-link disabled" href="FileboxEtcTxtlist.do?pnum=${sessionScope.pnum }">Disabled</a>
  </li>
</ul>
        --%>   
   <!-- 파일 리스트 -->
         
             <div class="tab-pane active" id="img" role="tabpanel" style="font-size: 84%;">
            <div class="card-body">
              <div class="table-responsive">
              
              
         
                <table class="table table-bordered" id="dataTable" >
                  
                  <thead>
                    <tr>
                      <th>전체<input type="checkbox" id="allCheckbox"></th>
                      <th>파일명</th>
                      <th>올린이</th>
                      <th>원본 글 제목</th>
                      <th>업로드 날짜</th>
                    </tr>
                  </thead>
                  
                  
                  
                  
                  
                   <tbody>
                    <c:forEach var="file" items="${requestScope.list}" varStatus="status">
               		 <tr>
                    	<th>
                    	 	<input type="checkbox" id="downnum">
                    	
                    	 	<i class="far fa-arrow-alt-circle-down"></i>
                    		
                    		
                    	</th>
                    	<th> <img src="resources/bupfile/${file.r }" style="width:40px; height : 40px" > &nbsp; &nbsp; &nbsp;${file.o} </th>
                    	<th> ${file.writer}</th>
                    	<th>${file.title }</th>
                    	<th> ${file.enroll } </th>
                    	
                    </tr>
                    
                    </c:forEach>
                    </tbody>
                    <input type="button" value="모두 저장" >
       </table>
       
       
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
       </div>
       </div>	







        </div>
        <!-- /.container-fluid -->
</div>
     </div>
      <!-- End of Main Content -->

      <!-- Footer -->
    <!--   <footer class="sticky-footer bg-white">
        <div class="container my-auto">
          <div class="copyright text-center my-auto">
            <span>Copyright &copy; Your Website 2020</span>
          </div>
        </div>
      </footer> -->
      <!-- End of Footer -->

    </div>
    <!-- End of Content Wrapper -->
<!-- <div style="width:25%"></div> !!!!!!!!!!!!!!!!!!!!!!-->
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
