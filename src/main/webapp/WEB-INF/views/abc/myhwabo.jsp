<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<link rel="icon" type="image/x-icon"
	href="/hwabo/resources/assets/img/favicon.png" />
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">


<title>HWABO</title>

<!-- Custom fonts for this template -->
<link
	href="/hwabo/resources/maincss/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="/hwabo/resources/maincss/css/sb-admin-2.min.css"
	rel="stylesheet">

<!-- Custom styles for this page -->
<link
	href="/hwabo/resources/maincss/vendor/datatables/dataTables.bootstrap4.min.css"
	rel="stylesheet">

</head>

<body id="page-top">
<!-- 1.탑바 임포트 -->
	<c:import url="/WEB-INF/views/abc/topbar.jsp"></c:import>
	
<!-- 2.바로아래div추가 및 임포트 추가  -->
	<div style="width:100%;display:flex;justify-content:center;align-item:center;">
<!-- Sidebar2right -->
     <c:import url="/WEB-INF/views/abc/entersideFixed.jsp"></c:import>
<!-- End of Sidebar2right -->



	<!-- Page Wrapper -->
	<div id="wrapper" style="width:1300px;">

		<!-- Sidebar -->
<div style="width:17%"></div>
		<!-- End of Sidebar -->

		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column bg-white"  style="width:62%;">

			<!-- Main Content -->
			<div id="content">

				<!-- Topbar -->
<br><br><br><br>
				<!-- End of Topbar -->

				<!-- Begin Page Content -->
				<div class="container-fluid">

					<div class="row">
						<!-- 내정보 시작 -->
						<div class="col-md-4">
							<div class="card mb-4 py-3 border-left-info">
								<div style="margin-top: 0px;">
									<h1>&nbsp;&nbsp;내&nbsp; 정 보</h1>
									<hr>
								</div>
								<div class="card-body" style="height: 400px;">
									<!-- 게시글안쪽 -->
									<table style="width: 100%; height: 90%; overflow: auto;">
										<tr>
											<th style="text-align: center;" rowspan="4" width="25%;">사진</th>
											<th style="text-align: center;" width="25%;">이 &nbsp;름</th>
											<td width="50%;">OOO</td>
										</tr>
										<tr>
											<th style="text-align: center;" width="25%;">이메일</th>
											<td width="55%;">OOO@naver.com</td>
										</tr>
										<tr>
											<th style="text-align: center;" width="25%;">휴대폰</th>
											<td width="55%;">010-0000-0000</td>
										</tr>
										<tr>
											<th style="text-align: center;" width="25%;">부 &nbsp;서</th>
											<td width="55%;">마케팅부</td>
										</tr>
									</table>

								</div>
							</div>
						</div>
						<!-- 내정보 끝 -->

						<!-- 즐겨찾기 시작 -->
						<div class="col-md-8">
							<div class="card mb-4 py-3 border-left-info">
								<div style="margin-top: 0px;">
									<h1>&nbsp;&nbsp;즐 겨 찾 기</h1>
									<hr>
								</div>
								<!-- 게시글안쪽 -->

								<div class="card-body" style="height: 400px; overflow: auto;">
									<div class="table-responsive">
										<table class="table table-bordered" id="dataTable"
											style="width: 90%; cellspacing: 0;">
											<thead>
												<tr>
													<th>유형</th>
													<th>제목</th>
													<th>내용</th>
													<th>수정일</th>
													<th>등록일</th>
												</tr>

											</thead>
											<tbody>
												<tr>
													<td>글</td>
													<td>제목</td>
													<td>내용</td>
													<td>수정일</td>
													<td>등록일</td>
												</tr>
												<tr>
													<td>업무</td>
													<td>제목</td>
													<td>내용</td>
													<td>수정일</td>
													<td>등록일</td>
												</tr>
												<tr>
													<td>일정</td>
													<td>제목</td>
													<td>내용</td>
													<td>수정일</td>
													<td>등록일</td>
												</tr>
												<tr>
													<td>할일</td>
													<td>제목</td>
													<td>내용</td>
													<td>수정일</td>
													<td>등록일</td>
												</tr>
												<tr>
													<td>할일</td>
													<td>제목</td>
													<td>내용</td>
													<td>수정일</td>
													<td>등록일</td>
												</tr>
												<tr>
													<td>할일</td>
													<td>제목</td>
													<td>내용</td>
													<td>수정일</td>
													<td>등록일</td>
												</tr>
												<tr>
													<td>할일</td>
													<td>제목</td>
													<td>내용</td>
													<td>수정일</td>
													<td>등록일</td>
												</tr>
												<tr>
													<td>할일</td>
													<td>제목</td>
													<td>내용</td>
													<td>수정일</td>
													<td>등록일</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
						<!-- 즐겨찾기 끝 -->
					</div>

					<br>
					<div class="checks" align="left"
						style="margin-left: 1%; font-size: 23px;">
						<form action="#">
							<span style="color: #42BBBA;"><label><input
									name="type" type="radio">&nbsp;글
									&nbsp;&nbsp;&nbsp;&nbsp; </label></span> <span style="color: #42BBBA;"><label><input
									name="type" type="radio">&nbsp;업 무
									&nbsp;&nbsp;&nbsp;&nbsp; </label></span> <span style="color: #42BBBA;"><label><input
									name="type" type="radio">&nbsp;일
									정&nbsp;&nbsp;&nbsp;&nbsp; </label></span> <span style="color: #42BBBA;"><label><input
									name="type" type="radio">&nbsp;할
									일&nbsp;&nbsp;&nbsp;&nbsp; </label></span> <span style="color: #42BBBA;"><label><input
									name="type" type="radio">&nbsp;투
									표&nbsp;&nbsp;&nbsp;&nbsp;</label></span>
						</form>
					</div>

					<!-- 게시글시작 -->
					<div class="card shadow mb-4">
						<div class="card-header py-3">
							<h1>게시글 제목</h1>
						</div>
						<div class="card-body">
							<!-- 게시글안쪽 -->
							테이블 넣을 공간
							<table>

							</table>
							<hr>
							<table style="width: 100%;">
								<tr>
									<td style="width: 20%;"><a href="#"
										class="btn btn-primary btn-icon-split btn-sm"> <span
											class="icon text-white-50"> <i class="far fa-heart"></i>
										</span> <span class="text">좋아요 0</span>
									</a></td>
									<td style="width: 20%;"></td>
									<td style="width: 20%;"></td>
									<td style="width: 20%;"></td>
									<td style="width: 20%; float: right;"></td>
								</tr>
							</table>
						</div>
						<div class="px-3 py-5 bg-gradient-light text-white"
							style="height: 10px;">
							<input type="text" class="form-control" placeholder="답글을 입력하세요">
						</div>
					</div>
					<!-- 게시글끝 -->

					<!-- 게시글시작 -->
					<div class="card shadow mb-4">
						<div class="card-header py-3">
							<h1>게시글 제목</h1>
						</div>
						<div class="card-body">
							<!-- 게시글안쪽 -->
							테이블 넣을 공간
							<table>

							</table>
							<hr>
							<table style="width: 100%;">
								<tr>
									<td style="width: 20%;"><a href="#"
										class="btn btn-primary btn-icon-split btn-sm"> <span
											class="icon text-white-50"> <i class="far fa-heart"></i>
										</span> <span class="text">좋아요 0</span>
									</a></td>
									<td style="width: 20%;"></td>
									<td style="width: 20%;"></td>
									<td style="width: 20%;"></td>
									<td style="width: 20%; float: right;"></td>
								</tr>
							</table>
						</div>
						<div class="px-3 py-5 bg-gradient-light text-white"
							style="height: 10px;">
							<input type="text" class="form-control" placeholder="답글을 입력하세요">
						</div>
					</div>
					<!-- 게시글끝 -->


					<!-- 게시글시작 -->
					<div class="card shadow mb-4">
						<div class="card-header py-3">
							<h1>게시글 제목</h1>
						</div>
						<div class="card-body">
							<!-- 게시글안쪽 -->
							테이블 넣을 공간
							<table>

							</table>
							<hr>
							<table style="width: 100%;">
								<tr>
									<td style="width: 20%;"><a href="#"
										class="btn btn-primary btn-icon-split btn-sm"> <span
											class="icon text-white-50"> <i class="far fa-heart"></i>
										</span> <span class="text">좋아요 0</span>
									</a></td>
									<td style="width: 20%;"></td>
									<td style="width: 20%;"></td>
									<td style="width: 20%;"></td>
									<td style="width: 20%; float: right;"></td>
								</tr>
							</table>
						</div>
						<div class="px-3 py-5 bg-gradient-light text-white"
							style="height: 10px;">
							<input type="text" class="form-control" placeholder="답글을 입력하세요">
						</div>
					</div>
					<!-- 게시글끝 -->

					<!-- 게시글시작 -->
					<div class="card shadow mb-4">
						<div class="card-header py-3">
							<h1>게시글 제목</h1>
						</div>
						<div class="card-body">
							<!-- 게시글안쪽 -->
							테이블 넣을 공간
							<table>

							</table>
							<hr>
							<table style="width: 100%;">
								<tr>
									<td style="width: 20%;"><a href="#"
										class="btn btn-primary btn-icon-split btn-sm"> <span
											class="icon text-white-50"> <i class="far fa-heart"></i>
										</span> <span class="text">좋아요 0</span>
									</a></td>
									<td style="width: 20%;"></td>
									<td style="width: 20%;"></td>
									<td style="width: 20%;"></td>
									<td style="width: 20%; float: right;"></td>
								</tr>
							</table>
						</div>
						<div class="px-3 py-5 bg-gradient-light text-white"
							style="height: 10px;">
							<input type="text" class="form-control" placeholder="답글을 입력하세요">
						</div>
					</div>
					<!-- 게시글끝 -->

					<!-- 게시글시작 -->
					<div class="card shadow mb-4">
						<div class="card-header py-3">
							<h1>게시글 제목</h1>
						</div>
						<div class="card-body">
							<!-- 게시글안쪽 -->
							테이블 넣을 공간
							<table>

							</table>
							<hr>
							<table style="width: 100%;">
								<tr>
									<td style="width: 20%;"><a href="#"
										class="btn btn-primary btn-icon-split btn-sm"> <span
											class="icon text-white-50"> <i class="far fa-heart"></i>
										</span> <span class="text">좋아요 0</span>
									</a></td>
									<td style="width: 20%;"></td>
									<td style="width: 20%;"></td>
									<td style="width: 20%;"></td>
									<td style="width: 20%; float: right;"></td>
								</tr>
							</table>
						</div>
						<div class="px-3 py-5 bg-gradient-light text-white"
							style="height: 10px;">
							<input type="text" class="form-control" placeholder="답글을 입력하세요">
						</div>
					</div>
					<!-- 게시글끝 -->




				</div>
				<!-- /.container-fluid -->

				<!-- Begin Page Content -->
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
</div>
		<!-- Scroll to Top Button-->
		<a class="scroll-to-top rounded" href="#page-top"> <i
			class="fas fa-angle-up"></i>
		</a>

		<!-- Logout Modal-->
		<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">Ready to
							Leave?</h5>
						<button class="close" type="button" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">Ã</span>
						</button>
					</div>
					<div class="modal-body">Select "Logout" below if you are
						ready to end your current session.</div>
					<div class="modal-footer">
						<button class="btn btn-secondary" type="button"
							data-dismiss="modal">Cancel</button>
						<a class="btn btn-primary" href="login.jsp">Logout</a>
					</div>
				</div>
			</div>
		</div>

		<!-- Bootstrap core JavaScript-->
		<script src="/hwabo/resources/maincss/vendor/jquery/jquery.min.js"></script>
		<script
			src="/hwabo/resources/maincss/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

		<!-- Core plugin JavaScript-->
		<script
			src="/hwabo/resources/maincss/vendor/jquery-easing/jquery.easing.min.js"></script>

		<!-- Custom scripts for all pages-->
		<script src="/hwabo/resources/maincss/js/sb-admin-2.min.js"></script>

		<!-- Page level plugins -->
		<script
			src="/hwabo/resources/maincss/vendor/datatables/jquery.dataTables.min.js"></script>
		<script
			src="/hwabo/resources/maincss/vendor/datatables/dataTables.bootstrap4.min.js"></script>

		<!-- Page level custom scripts -->
		<script src="/hwabo/resources/maincss/js/demo/datatables-demo.js"></script>
</body>

</html>