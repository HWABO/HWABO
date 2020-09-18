<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!-- Custom fonts for this template -->
<link
	href="/hwabo/resources/maincss/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="/hwabo/resources/maincss/css/sb-admin-2.css"
	rel="stylesheet">

<!-- Custom styles for this page -->
<link
	href="/hwabo/resources/maincss/vendor/datatables/dataTables.bootstrap4.min.css"
	rel="stylesheet">

<!DOCTYPE html>
<html lang="kr">
<head>
<meta charset="UTF-8">

<title>HWABO</title>

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
<style type="text/css">
#dis {
	/* display 안보이게 해라 */
	display: none;
	/* background : gray; */
}
</style>
<style type="text/css">
div#showfile imag {
	width: 10%;
	height: 10%;
}
</style>
</head>
<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script type="text/javascript">
	function bkindshow() {
		$("#'${b.bkind}'").button('toggle')
	}

	var names = "";

	function addbcharge() {
		var name = $(event.target).text();
		names += name + " ";

		$('#selected')
				.before(
						'<span>'
								+ name
								+ '&nbsp; <i class="fa fa-times" onclick="unSelected()"></i> </span>');
		//$('#bform').val(name); 
		$('#bform').val(names);
		alert($("#bform").val());
	}

	function unSelected() {
		$(event.target).parent().remove();
	}

	function validate() {
		//날짜에 빈 공백이 들어오니까 공백일때 널로 바꿔라 라는 내용을 추가한다
		return true;
	}
</script>

<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script type="text/javascript">
	function sendInsert(index) {
		console.log("sendInsert : " + index);
		console.log($("#no_" + index).val());
		$.ajax({
			url : "insertcabinet.do",
			data : {
				no : $("#no_" + index).val(),
				ucode : $("#ucode_" + index).val(),
				pnum : $("#pnum_" + index).val()
			},
			type : "post",
			success : function(result) {
				if (result == "ok") {
					alert("보관함 보내기 성공 !");
					console.log("보관함 보내기 성공 !");
				} else {
					alert("값이 보내졌지만 결과는 ok가 아님");
				}

			},
			error : function(request, status, errorData) {

				console.log("error code : " + request.status + "\nMessage : "
						+ request.responseText + "\nError : " + errorData);
			}

		}); //에이작스
	}

	$(function() {
		//보관함

		$(".liketoggle").click(function() {
			$(this).find("i").toggleClass("fas far");
			$(this).find("span").text(function(i, v) {
				return v === '보관' ? '보관됨' : '보관'
			})
		});

	});
</script>


<body id="page-top">


	<div class="card shadow mb-4">




		<div
			class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
			<h6 class="m-0 font-weight-bold text-primary">

				<i class="fas fa-user-circle"></i> ${post.bwriter}<br>${post.benrolldate }</h6>
			<!-- 	<button type="submit" class="btn btn-custom btn-sm liketoggle" name="like"><span>보관</span> <i class="far fa-bookmark"></i></button>
					 -->


			<!-- 수정삭제 드롭다운 -->
			<div class="dropdown no-arrow">

				<!-- 보관함 담기여부 -->
				<!--   <button id="cabinetshow" class="btn btn-custom btn-sm ">
			   <i class="far fa-bookmark"></i></button>
           		 -->

				<!-- <form action="insertcabinet.do" method="post"> -->

				<button id="cabinetshow" class="btn btn-custom btn-sm liketoggle"
					name="like" onclick="sendInsert();">
					<span>보관</span> <i class="far fa-bookmark"></i>
				</button>
				<input type="hidden" id="ucode" value="${sessionScope.ucode }">
				<input type="hidden" id="no" value="${post.bno }"> <input
					type="hidden" id="pnum" value="${post.bpnum }">



				<div id="d5"></div>
				<c:if test="${sessionScope.ucode eq post.bucode }">
					<a class="dropdown-toggle" href="#" role="button"
						id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false"> <i
						class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
					</a>
					<div
						class="dropdown-menu dropdown-menu-right shadow animated--fade-in"
						aria-labelledby="dropdownMenuLink">

						<c:url var="bup" value="buppage.do">
							<c:param name="bno" value="${post.bno }" />

						</c:url>
						<a class="dropdown-item" href="${bup }">수정</a>

						<c:url var="bdel" value="deletebpost.do">
							<c:param name="bno" value="${post.bno }" />
							<c:param name="brenamefile" value="${post.brenamefile }" />
						</c:url>
						<a class="dropdown-item" href="${bdel }">삭제</a>

					</div>
				</c:if>
			</div>
			<!-- 드롭다운 끝 -->

		</div>
		<!-- card-header py-3 d-flex flex-row align-items-center justify-content-between -->

		<!-- 게시글안쪽 -->
		<div class="card-body">

			<c>제목 : ${post.btitle}</c>
			<hr>

		<c:if test="${post.bkind eq '요청'}">
			<div>
				<label class="btn btn-info">요청
				</label> <label class="btn btn-light"> 진행
				</label> <label class="btn btn-light">피드백
				</label> <label class="btn btn-light">완료
				</label> <label class="btn btn-light">보류
				</label>
			</div>
		</c:if>
		<c:if test="${post.bkind eq '진행'}">
			<div class="btn-group" >
				<label class="btn btn-light">요청
				</label> <label class="btn btn-primary">진행
				</label> <label class="btn btn-light">피드백
				</label> <label class="btn btn-light">완료
				</label> <label class="btn btn-light">보류
				</label>
			</div>
		</c:if>
		<c:if test="${post.bkind eq '피드백'}">
			<div class="btn-group" >
				<label class="btn btn-light">요청
				</label> <label class="btn btn-light">진행
				</label> <label class="btn btn-warning">피드백
				</label> <label class="btn btn-light">완료
				</label> <label class="btn btn-light">보류
				</label>
			</div>
		</c:if>
		<c:if test="${post.bkind eq '완료'}">
			<div class="btn-group" >
				<label class="btn btn-light"> 요청
				</label> <label class="btn btn-light">진행
				</label> <label class="btn btn-light">피드백
				</label> <label class="btn btn-success">완료
				</label> <label class="btn btn-light">보류
				</label>
			</div>
		</c:if>
		<c:if test="${post.bkind eq '보류'}">
			<div class="btn-group" >
				<label class="btn btn-light">요청
				</label> <label class="btn btn-light">진행
				</label> <label class="btn btn-light">피드백
				</label> <label class="btn btn-light">완료
				</label> <label class="btn btn-secondary">보류
				</label>
			</div>
		</c:if>

			
			<hr>



			<div>
				<i class="fas fa-users">담당자 : ${post.bchargename }</i>
			</div>
			<hr>

			<div>
				<table>
					<tr>
						<td>내용 :</td>
						<td>${post.bcontent}</td>
					</tr>
				</table>

				<table>
					<c:if test="${! empty post.boriginfile }">
						<tr>
							<td>파일 :</td>
							<br>
						</tr>
						<tr>
							<th>

								<div id="showfile" style="overflow: hidden;">
									<img src="resources/bupfile/${post.brenamefile}"
										style="width: 40%; height: 10%;">
								</div>
							</th>
							<c:url var="ubf" value="bfdown.do">
								<c:param name="ofile" value="${post.boriginfile}" />
								<c:param name="rfile" value="${post.brenamefile}" />
							</c:url>
							<td><a href="${ubf }"> ${post.boriginfile}</a></td>
						</tr>
					</c:if>
					<c:if test="${empty post.boriginfile}">
					&nbsp;
					</c:if>
				</table>
				<hr>
				<table style="width: 100%;">
					<tr>


						<td style="width: 20%;"><a href="#"
							class="btn btn-primary btn-icon-split btn-sm"> <span
								class="icon text-white-50"> <i class="far fa-heart"></i>
							</span> <span class="text">좋아요 </span>
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
		<!-- 게시글안쪽  -->
		
		
	</div>
	
	<!-- card shadow mb-4 -->
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


</body>

</html>