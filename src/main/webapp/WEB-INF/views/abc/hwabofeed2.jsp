<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<style>
 .img-fluid {
      max-width: 200px;
      height: auto;
    }
</style>

<style type="text/css">

hr {
    margin-top: 20px;
    margin-bottom: 20px;
    border: 0;
    border-top: 1px solid #FFFFFF;
}
a {
    color: #82b440;
    text-decoration: none;
}
.blog-comment::before,
.blog-comment::after,
.blog-comment-form::before,
.blog-comment-form::after{
    content: "";
	display: table;
	clear: both;
}

.blog-comment ul{
	list-style-type: none;
	padding: 0;
}

.blog-comment img{
	opacity: 1;
	filter: Alpha(opacity=100);
	-webkit-border-radius: 4px;
	   -moz-border-radius: 4px;
	  	 -o-border-radius: 4px;
			border-radius: 4px;
}

.blog-comment img.avatar {
	position: relative;
	float: left;
	margin-left: 10px; 
	width: 40px;
	height: 40px;
}
 ul {
    margin-top: auto;
    margin-bottom: auto;
}

hr {
border: 1px solid #eee;
}


 .blog-comment .post-comments{
	border: 2px solid #eee;
    margin-bottom: 10px;
    margin-left: 60px;  /* 상자 오른쪽 왼쪽 중요 */
	margin-right: 10px;
    padding: 5px 5px;
    position: relative;
    -webkit-border-radius: 4px;
       -moz-border-radius: 4px;
       	 -o-border-radius: 4px;
    		border-radius: 4px;
	background: #fff;
	color: #6b6e80;
	position: relative;
} 

.blog-comment .meta {
	font-size: 13px;
	color: #aaaaaa;
	padding-bottom: 1px;  /*  */
	margin-bottom: 10px !important;
	border-bottom: 1px solid #eee;
}

.blog-comment ul.comments ul{
	list-style-type: none;
	
	padding: 0;
	margin-left: 50px; /*대댓글 위치 */
}

</style>
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ab3b0466fa883da1d7216010325a5bcc&libraries=services"></script>
	
<script type="text/javascript" src="resources/js/jquery-3.5.1.min.js"></script>
<script type="text/javascript">

function addbcharge_0(){
    var name = $(event.target).text();
    var code = $(event.target).val();
      $('#selectedup').before('<span>'+name + '&nbsp; <i class="fa fa-times" onclick="unSelected()"></i></span>');
      $('#name_0').val(name);
      $('#user_0').val(code);
      $("input:checkbox[id='user_0']").prop("checked", true);
      $("input:checkbox[id='name_0']").prop("checked", true);
    /*   alert($("#user_0").val()+" 0번"+ $("#name_0").val());  */
}
function addbcharge_1(){
  var name = $(event.target).text();
  var code = $(event.target).val();
   $('#selectedup').before('<span>'+name + '&nbsp; <i class="fa fa-times" onclick="unSelected()"></i></span>');
   $('#name_1').val(name);
   $('#user_1').val(code);
   $("input:checkbox[id='user_1']").prop("checked", true);
   $("input:checkbox[id='name_1']").prop("checked", true);
   /* alert($("#user_1").val()+" 1번"+ $("#name_1").val());  */
}
function addbcharge_2(){
     var name = $(event.target).text();
     var code = $(event.target).val();
      $('#selectedup').before('<span>'+name + '&nbsp; <i class="fa fa-times" onclick="unSelected()"></i></span>');
     $('#name_2').val(name);
      $('#user_2').val(code);
      $("input:checkbox[id='user_2']").prop("checked", true);
      $("input:checkbox[id='name_2']").prop("checked", true);
    /*   alert($("#user_2").val()+" 2번" + $("#name_2").val()); */ 
}
function addbcharge_3(){
     var name = $(event.target).text();
     var code = $(event.target).val();
      $('#selectedup').before('<span>'+name + '&nbsp; <i class="fa fa-times" onclick="unSelected()"></i></span>');
     $('#name_3').val(name);
      $('#user_3').val(code);
      $("input:checkbox[id='user_3']").prop("checked", true);
      $("input:checkbox[id='name_3']").prop("checked", true);
    /*   alert($("#user_3").val()+" 3번");  */
}
function addbcharge_4(){
     var name = $(event.target).text();
     var code = $(event.target).val();
      $('#selectedup').before('<span>'+name + '&nbsp; <i class="fa fa-times" onclick="unSelected()"></i></span>');
     $('#name4').val(name);
      $('#user4').val(code);
      $("input:checkbox[id='user4']").prop("checked", true);
      $("input:checkbox[id='name4']").prop("checked", true);
     /*  alert($("#user_4").val()+" 4번");  */
}
function addbcharge_5(){
     var name = $(event.target).text();
     var code = $(event.target).val();
      $('#selectedup').before('<span>'+name + '&nbsp; <i class="fa fa-times" onclick="unSelected()"></i></span>');
     $('#name_5').val(name);
      $('#user_5').val(code);
      $("input:checkbox[id='user_5']").prop("checked", true);
      $("input:checkbox[id='name_5']").prop("checked", true);
    /*   alert($("#user_5").val()+" 5번");  */
}
function addbcharge_6(){
     var name = $(event.target).text();
     var code = $(event.target).val();
      $('#selectedup').before('<span>'+name + '&nbsp; <i class="fa fa-times" onclick="unSelected()"></i></span>');
      $('#user_6').val(code);
      $('#name_6').val(name);
      $("input:checkbox[id='user_6']").prop("checked", true);
      $("input:checkbox[id='name_6']").prop("checked", true);
    /*   alert($("#user_6").val()+" 6번");  */
}
function addbcharge_7(){
    var name = $(event.target).text();
    var code = $(event.target).val();
     $('#selectedup').before('<span>'+name + '&nbsp; <i class="fa fa-times" onclick="unSelected()"></i></span>');
     $('#user_7').val(code);
     $('#name_7').val(name);
     $("input:checkbox[id='user_7']").prop("checked", true);
     $("input:checkbox[id='name_7']").prop("checked", true);
   /*   alert($("#user_6").val()+" 6번");  */
}
function addbcharge_8(){
    var name = $(event.target).text();
    var code = $(event.target).val();
     $('#selectedup').before('<span>'+name + '&nbsp; <i class="fa fa-times" onclick="unSelected()"></i></span>');
     $('#user_8').val(code);
     $('#name_8').val(name);
     $("input:checkbox[id='user_8']").prop("checked", true);
     $("input:checkbox[id='name_8']").prop("checked", true);
   /*   alert($("#user_6").val()+" 6번");  */
}
function addbcharge_9(){
    var name = $(event.target).text();
    var code = $(event.target).val();
     $('#selectedup').before('<span>'+name + '&nbsp; <i class="fa fa-times" onclick="unSelected()"></i></span>');
     $('#user_9').val(code);
     $('#name_9').val(name);
     $("input:checkbox[id='user_9']").prop("checked", true);
     $("input:checkbox[id='name_9']").prop("checked", true);
   /*   alert($("#user_6").val()+" 6번");  */
}
function addbcharge_10(){
    var name = $(event.target).text();
    var code = $(event.target).val();
     $('#selectedup').before('<span>'+name + '&nbsp; <i class="fa fa-times" onclick="unSelected()"></i></span>');
     $('#user_10').val(code);
     $('#name_10').val(name);
     $("input:checkbox[id='user_10']").prop("checked", true);
     $("input:checkbox[id='name_10']").prop("checked", true);
   /*   alert($("#user_6").val()+" 6번");  */
}
function addbcharge_11(){
    var name = $(event.target).text();
    var code = $(event.target).val();
     $('#selectedup').before('<span>'+name + '&nbsp; <i class="fa fa-times" onclick="unSelected()"></i></span>');
     $('#user_11').val(code);
     $('#name_11').val(name);
     $("input:checkbox[id='user_11']").prop("checked", true);
     $("input:checkbox[id='name_11']").prop("checked", true);
   /*   alert($("#user_6").val()+" 6번");  */
}
function unSelected(){
  $(event.target).parent().remove();
}

$(function(){
	//수정폼 가리기
	$("[id^=up]").css("display", "none" );

	//수정폼 입력부분 빈칸이면 주소입력창띄우기
	$("#sample5_address3").on("click", function(){
		if($(this).val().length == 0 ){
			sample5_execDaumPostcode2()
		}
	});	
	
});	//document.ready;

//일정게시글 수정시 날짜 유효성 체크
function daycheckUp(id) {

	var i = id.replace("uspost", "");
	var beforestart = $('#beforesstartdayuu'+i).val().replace("T", " ");
	var beforeend = $('#beforesenddayuu'+i).val().replace("T", " ");
	
	var start2 = new Date(beforestart);
	var end2 = new Date(beforeend);
	if(start2>end2){	
		$("#dayspan"+i).html("끝 날짜가 시작날짜보다 이전일 수 없습니다");
		$("#beforesenddayuu"+i).focus();
	}else{
		spostupdate(i);
	}
};
	
	
	//일정게시글 등록시 날짜 유효성 체크
	function daycheck() {
	
		var startday = document.spostInsert.beforesstartdayi.value.replace("T", " ");
		var endday = document.spostInsert.beforesenddayi.value.replace("T"," ");

		var start = new Date(startday);
		var end = new Date(endday);

		if (start > end) {
			$("#placespani").html("끝 날짜가 시작날짜보다 이전일 수 없습니다");
			$("#beforesenddayi").focus();
			return false;
		} else {
			return true;
		}
	};
	
	//수정폼 띄우기
	function moveupdateform(click) {
		
		$("#up"+click).css("display", "block" );
		$("#se"+click).css("display", "none" );
	};
	
	//출력폼 띄우기
	function moveselectfeed(click) {
		
		$("#up"+click).css("display", "none" );
		$("#se"+click).css("display", "block" );
	};
	
	//수정완료 버튼 누르면 실행되는 펑션
	function spostupdate(i){

		var param = $("#uspostform"+i).serialize();

			$.ajax({
				url: "supdate.do",
				data: param,
				type: "post", 
				dataType: "json",
				success: function(post){
					
					$("#se"+post.sno).load(window.location.reload("#se"+post.sno));
					$("#up"+post.sno).css("display", "none" );
					$("#se"+post.sno).css("display", "block" );
					
				},
				error: function(request, status, errorData){
					console.log("error code : " + request.status + "\nMessage : "+ request.responseText + "\nError : " + errorData);
				}
			}); //ajax	


}; 
	//삭제 메소드
	function spostdelete(){
		
		if(confirm("정말로 삭제하시겠어요?")){
			$.ajax({
				url: "sdelete.do",
				data: { sno: $("#sno").val() },
				type: "post", 
				dataType: "text",
				success: function(sno){
						alert("삭제에 성공하였습니다");
						$("#up"+sno).css("display", "none" );
						$("#se"+sno).css("display", "none" );
				},
				error: function(request, status, errorData){ //에러는 위에서 복붙
					console.log("error code : " + request.status + "\nMessage : "+ request.responseText + "\nError : " + errorData);
				}
			}); //ajax
		}//확인
	}; 
	//spost function 끗
	
/* 		
// bpost update !!!!!!!!!!!!!! 	
	function bpostupdate(idd){
		eventtarget.preventDefault();
		 var i = idd.replace("ubpost", "");
   
	    var formdata = new FormData($('#bpostform'+i)[0]);

		$.ajax({ 
	        url: "updatebpost.do",
	        data: formdata, 
	        type: "post",
	        enctype: 'multipart/form-data',
	        dataType: "JSON",
	        processData: false,
			contentType:false,
	        success: function(b){

	           $("#up"+b.bno).css("display", "none" );
	         $("#se"+b.bno).load(window.location.reload("#se"+b.bno));

	           $("#se"+b.bno).css("display", "block" );
	           jQuery("#se"+b.bno)[0].scrollIntoView();
	        },
	        error: function(request, status, errorData){
	           console.log("error code : " + request.status + "\nMessage : "+ request.responseText + "\nError : " + errorData);
	        }
	        
	     });
		
	}; */
	
	
	//bpost 삭제 메소드
	function bpostdelete(){
		if(confirm("정말로 삭제하시겠어요?")){
			
			var bbb = $("#bno").val();
			$.ajax({
				url: "deletebpost.do",
				data: { bno: $("#bno").val() },
				type: "post", 
				dataType: "text",
				success: function(bno){
						alert("삭제에 성공하였습니다");
					
						$("#up"+bno).css("display", "none" );
						$("#se"+bno).css("display", "none" );
				},
				error: function(request, status, errorData){ //에러는 위에서 복붙
					console.log("error code : " + request.status + "\nMessage : "+ request.responseText + "\nError : " + errorData);
				}
			}); //ajax
		}//확인
	}; 
	
</script> 
<body>

	<c:forEach var="main" items="${ requestScope.list }" varStatus="status">
		<%-- ${ status.count } --%>
		<c:if test="${ main.firstword eq 's' }">
<c:set var="post" value="${ main }"></c:set>
	<div id="se${post.sno }" class="card shadow mb-4">
		<div id="${status.index }"  class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
			<h6 class="m-0 font-weight-bold text-primary">
				<i class="fas fa-user-circle"></i> 
				${post.swriter}<br>
				<fmt:formatDate value="${post.senrolldate}" pattern="yyyy-MM-dd"/>
			</h6>
			<div class="dropdown no-arrow">
				<!-- 보관함 담기여부 -->
				<button id="cavinetin_${status.index }"
							class="btn btn-custom btn-sm liketoggle${status.index }"
							name="like" onclick="sendInsert(${status.index});">
							<span>보관</span> <i class="far fa-bookmark"></i>
						</button>
						<input type="hidden" id="ucode_${status.index }"	value="${sessionScope.ucode }"> 
						<input type="hidden"id="no_${status.index }" value="${post.sno }"> 
						<input	type="hidden" id="pnum_${status.index }" value="${post.spnum }">

				<!-- 드롭다운 -->
				<c:if test="${post.sucode eq sessionScope.ucode }">
					<a class="dropdown-toggle" href="#" role="button"
						id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true"	aria-expanded="false"> 
						<i 	class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
					</a>
					<div class="dropdown-menu dropdown-menu-right shadow animated--fade-in"	aria-labelledby="dropdownMenuLink">
						<div class="dropdown-header">메뉴:</div>
						<button class="dropdown-item" id="${post.sno}"   onclick="moveupdateform(this.id);">수정</button>
						
						<button class="dropdown-item"  id="dspost" type="submit" onclick="spostdelete(); return false;">삭제</button>
						
					</div>
				</c:if>
				

			</div>
			<!-- 드롭다운 끝 -->
		</div>
		<div class="card-body" style="margin: 0px;">
			<!-- 게시글안쪽 -->
			<h6><strong>제목</strong> : ${post.stitle }</h6>
			<hr>
			<table style="width: 100%;">
				<tr>
					<th width="50%"><i class="far fa-calendar-alt"></i> 시 작 날 짜</th><th width="50%"><i class="far fa-calendar-alt"></i> 끝 날 짜</th>
				</tr>
				<tr>
				<c:set var="start1" value="${post.stringstart }"/>
				<c:set var="start2" value="${fn:replace(start1, 'T', '  ')}" />
				<c:set var="end1" value="${post.stringend }"/>
				<c:set var="end2" value="${fn:replace(end1, 'T', '  ')}" />
					<td><c:out value="${ start2}" /></td>
					<td><c:out value="${ end2}" /></td>
				</tr>
				<c:if test="${ !empty post.splace }">
					<tr>
						<td colspan="2">&nbsp;</td>
					</tr>
				<tr>
					<th colspan="2">장 소</th>
				</tr>
				<tr>
					<td colspan="2">
					${post.splace }
					<div id="map1_${status.index }"  style="width:100%; height:200px; margin-top:5px;" ></div> <br>
<script>
var index = ${status.index}
var mapContainer1_${ status.index } = document.getElementById('map1_'+'${ status.index }'), // 지도를 표시할 div 
    mapOption1_${ status.index } = {
        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
       
        level: 4 // 지도의 확대 레벨
    };  
// 지도를 생성합니다    
var map1_${ status.index } = new kakao.maps.Map(mapContainer1_${ status.index }, mapOption1_${ status.index }); 

// 주소-좌표 변환 객체를 생성합니다
var geocoder1_${ status.index } = new kakao.maps.services.Geocoder();

var spostplace1_${ status.index } ="${post.splace}";
// 주소로 좌표를 검색합니다
geocoder1_${ status.index }.addressSearch(spostplace1_${ status.index }, function(result, status) {

    // 정상적으로 검색이 완료됐으면 
     if (status === kakao.maps.services.Status.OK) {

        var coords1_${ status.index } = new kakao.maps.LatLng(result[0].y, result[0].x);

        // 결과값으로 받은 위치를 마커로 표시합니다
        var marker1_${ status.index } = new kakao.maps.Marker({
            map: map1_${ status.index },
            position: coords1_${ status.index }
        });

        // 인포윈도우로 장소에 대한 설명을 표시합니다
        var infowindow1_${ status.index } = new kakao.maps.InfoWindow({
            content: '<div style="width:130px;text-align:center;padding:6px 0;">일정장소</div>'
        });
        infowindow1_${ status.index }.open(map1_${ status.index }, marker1_${ status.index }); 

        //지도의 중심을 결과값으로 받은 위치로 이동시킵니다
        map1_${ status.index }.setCenter(coords1_${ status.index });
    } 
});    

$(function(){
	//수정폼에 spost내용값 읽어와서 (200 - 입력된 값)를 글자수에 적용
	var content = $('#scontent_${status.index}').val();
	$('#counter_${status.index}').val(200-content.length);
	var str = $('#scontent_${status.index}').val();
	str = str.split('<br>').join("\r\n");
	$('#scontent_${status.index}').val(str);
	
});

</script>
				</td>
			</tr>
			
			</c:if>
			<c:if test="${ !empty post.scontent }">	
			<tr><td colspan="2">&nbsp;</td></tr>		
					<tr><th colspan="2">메  모</th></tr>
					<tr><td colspan="2">${post.scontent }</td></tr>
			</c:if>
		</table>
		<hr>
	</div>
					<!-- 댓글 -->
						<div class="px-3 pb-5 text-white" id="replyy">
							
											<a class="btn btn-outline-success btn-sm" data-toggle="collapse" href="#collapseExample${status.index }" aria-expanded="false" aria-controls="collapseExample">
											  댓글
											</a>
									
											<div class="collapse" id="collapseExample${status.index }">
											  <div class="well">
													<br>
														<div class="commentList_${status.index }" id="commentList_${status.index }" name="${post.sno }"></div>
								
													<div style="height: 2px;">
								
														<input type="hidden" id="reply_no_${status.index }" name="no" value="${post.sno }"> 
														<input type="text" class="form-control" id="reply_content_${status.index }"
															name="content" placeholder="enter를 누르면 댓글이 등록됩니다"
															onKeypress="javascript:if(event.keyCode == 13) {enterkey(${status.index});}" />
													</div>
								
												</div>
										
											</div>
										</div>
			<!-- 댓글 끝 -->
	</div>
	

<!-- spost 수정폼 -->

<form name="uspostform" id="uspostform${status.index }" method="post">
	<div id="up${post.sno }" class="card shadow mb-4">
		<div id="${status.index }" class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
		
		<input type="hidden" id="sno" name=sno value="${post.sno }">
			<h6 class="m-0 font-weight-bold text-primary">
				수정페이지
			</h6>

			<div class="dropdown no-arrow">

				<button class="btn btn-custom btn-sm"  id="uspost${status.index }" type="submit" onclick="daycheckUp(this.id); return false;">수정하기</button> 
				<button class="btn btn-custom btn-sm"  id="dspost" type="submit" onclick="spostdelete(); return false;">삭제하기</button>
				<button id="${post.sno }" class="btn btn-custom btn-sm"  onclick="moveselectfeed(this.id); return false;" >수정취소</button>				
			</div>
			<!-- 드롭다운 끝 -->

		</div>
		<div class="card-body">
			<!-- 게시글안쪽 -->
			<table style="width: 100%;">
				<tr>
					<th>제 목</th>
				</tr>
				<tr>
					<td colspan="2"><input type="text" maxlength="20" id="stitle" name="stitle" class="form-control" required="required" value="${post.stitle }">
			</td>
			</tr>
				<tr>
					<td>&nbsp;</td>
				</tr>

				<tr>
					<th>시 작 날 짜</th><th>끝 날 짜</th>
				</tr>
				
				<c:set var="startday1" value="" />

				<tr>
					<td width="50%">
					
					
					
					<input type="datetime-local" class="form-control" name="beforesstartday" id="beforesstartdayuu${status.index }" 
					required="required"  value="${post.stringstart }"	></td>

					<td width="50%">
					<input type="datetime-local" class="form-control" name="beforesendday"  id="beforesenddayuu${status.index }" 
					required="required"  value="${post.stringend }"	></td>
					
				</tr>
				<tr><td style="text-align: center;" colspan="3"><span style="color: blue;" id="dayspan${status.index }"></span></td></tr>
				<tr>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<th>장 소</th>
				</tr>
				<tr>
					<td colspan="2">
					<c:if test="${ empty post.splace }">
						<input type="text" id="sample_address_${status.index }" placeholder=" 장소를 입력해주세요" class="form-control" id ="splace" name="splace" >
					</c:if>	
					<c:if test="${ !empty post.splace }">
						<input type="text" id="sample_address_${status.index }"  class="form-control" id ="splace" name="splace"  value="${post.splace }">
					</c:if>
						<input type="button" onclick="sample5_execDaumPostcode_${status.index}(); return false;" value="장소검색"  class="form-control"><br>
						<div id="map8_${status.index }" class="map"
					style="width: 100%; height: 150px; margin-top: 10px; display: none"></div>
<script
					src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
var mapContainer8_${status.index} = document.getElementById('map8_${status.index}'), // 지도를 표시할 div
mapOption8_${status.index} = {
	center : new daum.maps.LatLng(37.537187, 127.005476), // 지도의 중심좌표
	level : 4
// 지도의 확대 레벨
};

//지도를 미리 생성
var map8_${status.index} = new daum.maps.Map(mapContainer8_${status.index}, mapOption8_${status.index});
//주소-좌표 변환 객체를 생성
var geocoder8_${status.index} = new daum.maps.services.Geocoder();
//마커를 미리 생성
var marker8_${status.index} = new daum.maps.Marker({
	position : new daum.maps.LatLng(37.537187, 127.005476),
	map : map8_${status.index}
});

function sample5_execDaumPostcode_${status.index}() {
	new daum.Postcode({
				oncomplete : function(data) {
					var addr3_${status.index} = data.address; // 최종 주소 변수
	                // 주소 정보를 해당 필드에 넣는다.
	                document.getElementById("sample_address_${status.index }").value = addr3_${status.index};
					// 주소로 상세 정보를 검색
					geocoder8_${status.index}.addressSearch(data.address,	function(results,status) {
										// 정상적으로 검색이 완료됐으면
										if (status === daum.maps.services.Status.OK) {

											var result8_${status.index} = results[0]; //첫번째 결과의 값을 활용

											// 해당 주소에 대한 좌표를 받아서
											var coords8_${status.index} = new daum.maps.LatLng(result8_${status.index}.y,	result8_${status.index}.x);
											// 지도를 보여준다.
											mapContainer8_${status.index}.style.display = "block";
											map8_${status.index}.relayout();
											// 지도 중심을 변경한다.
											map8_${status.index}.setCenter(coords8_${status.index});
											// 마커를 결과값으로 받은 위치로 옮긴다.
											marker8_${status.index}.setPosition(coords8_${status.index})
										}
									});
				}
			}).open();
}

$(function(){
	$("#sample_address_${status.index }").on("click", function(){
		if($(this).val().length == 0 ){
			sample5_execDaumPostcode_${status.index }();
		}
	});	
});
</script>
					</td>
				</tr>		
				<tr>
					<td>&nbsp;</td>
				</tr>

				<tr>
					<td>메  모</td>
				</tr>
				<tr>
				<td colspan="2">
<textarea name="scontent" id="scontent_${status.index }" cols="30" rows="10" class="form-control" maxlength="200"	 style="width: 100%; height: 200px; overflow: auto; resize: none;">${post.scontent }</textarea> </td>
									</tr>
		
			</table>
		</div>
			</div>
</form>

</c:if><!-- spost끝 -->
		
<!-- bpost 시작 -->		
		<c:if test="${ main.firstword eq 'b' }">
			<c:set var="b" value="${ main }"></c:set>
			<div id="se${b.bno }" class="card shadow mb-4">
				<div
					class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
					<h6 class="m-0 font-weight-bold text-primary">
						<i class="fas fa-user-circle"></i> ${b.bwriter}<br>${b.benrolldate }
					</h6>
					<!-- 수정삭제 드롭다운 -->
					<div class="dropdown no-arrow">
						<!-- 보관함 담기 여부 -->
						<button id="cavinetin_${status.index }"
							class="btn btn-custom btn-sm liketoggle${status.index }"
							name="like" onclick="sendInsert(${status.index});">
							<span>보관</span> <i class="far fa-bookmark"></i>
						</button>
						<input type="hidden" id="ucode_${status.index }"	value="${sessionScope.ucode }"> 
						<input type="hidden"id="no_${status.index }" value="${b.bno }"> 
						<input	type="hidden" id="pnum_${status.index }" value="${b.bpnum }">


						<c:if test="${sessionScope.ucode eq b.bucode }">
							<a class="dropdown-toggle" href="#" role="button"
								id="dropdownMenuLink" data-toggle="dropdown"
								aria-haspopup="true" aria-expanded="false"> <i
								class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
							</a>
							<div class="dropdown-menu dropdown-menu-right shadow animated--fade-in"	aria-labelledby="dropdownMenuLink">
							<input	type="hidden" id="bno" value="${b.bno }">
								<button class="dropdown-item" id="${b.bno}"   onclick="moveupdateform(this.id);">수정</button>
							<button class="dropdown-item"  id="dspost" type="submit" onclick="bpostdelete(); return false;">삭제</button>
							</div>
						</c:if>
					</div>
					<!-- 드롭다운 끝 -->
					
					
					
				</div>
				<!-- card-header py-3 d-flex flex-row align-items-center justify-content-between -->
				<!-- 게시글안쪽 -->
				<div class="card-body">
					<b>제목 : ${b.btitle}</b>
					<hr>
					<div class="btn-group btn-group-toggle">
						<c:if test="${b.bkind eq '요청' }">
							<label class="btn btn-info"> <input type="radio"
								name="진행" id="요청" value="요청" readonly>요청
							</label>
							<label class="btn btn-secondary"> <input type="radio"
								name="진행" id="진행" value="진행" readonly>진행
							</label>
							<label class="btn btn-secondary"> <input type="radio"
								name="피드백" id="피드백" value="피드백" readonly>피드백
							</label>
							<label class="btn btn-secondary"> <input type="radio"
								name="완료" id="완료" value="완료" readonly>완료
							</label>
							<label class="btn btn-secondary"> <input type="radio"
								name="보류" id="보류" value="보류" readonly>보류
							</label>
						</c:if>
						<c:if test="${b.bkind eq '진행' }">
							<label class="btn btn-secondary"> <input type="radio"
								name="진행" id="요청" value="요청" readonly>요청
							</label>
							<label class="btn btn-info"> <input type="radio"
								name="진행" id="진행" value="진행" readonly>진행
							</label>
							<label class="btn btn-secondary""> <input type="radio"
								name="피드백" id="피드백" value="피드백" readonly>피드백
							</label>
							<label class="btn btn-secondary"> <input type="radio"
								name="완료" id="완료" value="완료" readonly>완료
							</label>
							<label class="btn btn-secondary"> <input type="radio"
								name="보류" id="보류" value="보류" readonly>보류
							</label>
						</c:if>
						<c:if test="${b.bkind eq '피드백' }">
							<label class="btn btn-secondary"> <input type="radio"
								name="진행" id="요청" value="요청" readonly>요청
							</label>
							<label class="btn btn-secondary"> <input type="radio"
								name="진행" id="진행" value="진행" readonly>진행
							</label>
							<label class="btn btn-info"> <input type="radio"
								name="피드백" id="피드백" value="피드백" readonly>피드백
							</label>
							<label class="btn btn-secondary"> <input type="radio"
								name="완료" id="완료" value="완료" readonly>완료
							</label>
							<label class="btn btn-secondary"> <input type="radio"
								name="보류" id="보류" value="보류" readonly>보류
							</label>
						</c:if>
						<c:if test="${b.bkind eq '완료' }">
							<label class="btn btn-secondary"> <input type="radio"
								name="진행" id="요청" value="요청" readonly>요청
							</label>
							<label class="btn btn-secondary"> <input type="radio"
								name="진행" id="진행" value="진행" readonly>진행
							</label>
							<label class="btn btn-secondary""> <input type="radio"
								name="피드백" id="피드백" value="피드백" readonly>피드백
							</label>
							<label class="btn btn-info"> <input type="radio"
								name="완료" id="완료" value="완료" readonly>완료
							</label>
							<label class="btn btn-secondary"> <input type="radio"
								name="보류" id="보류" value="보류" readonly>보류
							</label>
						</c:if>
						<c:if test="${b.bkind eq '보류' }">
							<label class="btn btn-secondary"> <input type="radio"
								name="진행" id="요청" value="요청" readonly>요청
							</label>
							<label class="btn btn-secondary"> <input type="radio"
								name="진행" id="진행" value="진행" readonly>진행
							</label>
							<label class="btn btn-secondary""> <input type="radio"
								name="피드백" id="피드백" value="피드백" readonly>피드백
							</label>
							<label class="btn btn-secondary"> <input type="radio"
								name="완료" id="완료" value="완료" readonly>완료
							</label>
							<label class="btn btn-info"> <input type="radio"
								name="보류" id="보류" value="보류" readonly>보류
							</label>
						</c:if>
					</div>
					<br>
					<br>
					<div>
						<i class="fas fa-user-friends"></i> 담당자 : ${b.bchargename }
					</div>
					<hr>
					<div>
						<table>
							<tr>
								<td width="9%"><span style="float: left;"> <i
										class="far fa-calendar-alt"> 시작일 : &nbsp;${b.bstartday }</i></span></td>
								<td width="20%"><span style="float: left;"> <i
										class="far fa-calendar-alt"> 마감일 : &nbsp;${b.bendday }</i></span></td>
							</tr>
						</table>
					</div>
					
					
					<c:if test="${! empty b.bcontent }">
					<hr>
						<table>
	
								<tr>
									<td><b>${b.bcontent}</b></td>
								</tr>
							
						</table>
						</c:if>
						<br>
						<table>
							<c:if test="${! empty b.boriginfile }">
								<tr>
									<td><c:url var="ubf" value="bfdown.do">
											<c:param name="ofile" value="${b.boriginfile}" />
											<c:param name="rfile" value="${b.brenamefile}" />
										</c:url>
										<div id="showfile" style="overflow: hidden;">
											<c:forTokens var="ext" items="${b.brenamefile}" delims="."
												varStatus="status2">

												<c:if test="${status2.last}">
													<c:choose>
														<c:when test="${ext eq 'jpg' or ext eq 'gif' or ext eq 'png'}">
															<img src="resources/bupfile/${b.brenamefile}"
																class="rounded" style="width: 220px; height: 150px;">
														</c:when>
														<c:when test="${ext eq 'txt' }">
															<img src="resources/img/filemoon.png"
																style="width: 40px; height: 40px">
														</c:when>
														<c:when test="${ext eq 'ppt'}">
															<img src="resources/img/pppptttt.png"
																style="width: 40px; height: 40px">
														</c:when>
														<c:when test="${ext eq 'pdf'}">
															<img src="resources/img/pdf-01-512.webp"
																style="width: 65px; height: 65px">
														</c:when>
														<c:when
															test="${ext != 'jpg' and ext != 'txt' and ext != 'pdf' and ext != 'gif' and ext != 'ppt' and ext != 'png'}">
															<img src="resources/img/eettcc.png"
																style="width: 40px; height: 40px">
														</c:when>

													</c:choose>
												</c:if>
											</c:forTokens>

											<br> <a href="${ubf }"><i class="far fa-file"></i> :
												${b.boriginfile}</a>
										</div></td>

								</tr>
							</c:if>
							<c:if test="${empty b.boriginfile}">
					&nbsp;
				</c:if>
						</table>
						<hr>

				
				</div>
				<!-- 게시글안쪽  -->

				<!-- 댓글 -->
							<div class="px-3 pb-5 text-white" id="replyy">
							
											<a class="btn btn-outline-success btn-sm" data-toggle="collapse" href="#collapseExample${status.index }" aria-expanded="false" aria-controls="collapseExample">
											  댓글
											</a>
									
											<div class="collapse" id="collapseExample${status.index }">
											  <div class="well">
													<br>
														<div class="commentList_${status.index }" id="commentList_${status.index }" name="${b.bno }"></div>
								
													<div style="height: 2px;">
								
														<input type="hidden" id="reply_no_${status.index }" name="no"
															value="${b.bno }"> <input type="text"
															class="form-control" id="reply_content_${status.index }"
															name="content" placeholder="enter를 누르면 댓글이 등록됩니다"
															onKeypress="javascript:if(event.keyCode == 13) {enterkey(${status.index});}" />
													</div>
								
												</div>
										
											</div>
										</div>
				<!-- 댓글 끝 -->




			</div>
			<!-- card shadow mb-4 -->
			

			<!-- bpost 수정폼 -->
 			<form action="updatebpost.do" id="bpostform${status.index }" enctype="multipart/form-data" method="post" >
 			<div id="up${b.bno }" class="card shadow mb-4">
 			 
            
          <div  class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
         	<h6 class="m-0 font-weight-bold text-primary">
				수정페이지
			</h6>

			<div class="dropdown no-arrow">

				
				<button class="btn btn-custom btn-sm"  id="ubpost${status.index }" type="submit">수정하기</button> 
				<button class="btn btn-custom btn-sm"  id="dbpost" onclick="bpostdelete(); return false;">삭제하기</button>
				<button id="${b.bno }" class="btn btn-custom btn-sm"  onclick="moveselectfeed(this.id); return false;" >수정취소</button>					
			</div>
			</div>

                  <div class="card-body">
                     <!-- 게시글안쪽 -->
                 
            
            		<input type ="hidden" id="${b.bno }"name="bno" value="${b.bno }">
                     <input type="hidden" name="bucode" value="${sessionScope.ucode }">
                     <input type="hidden" name="bwriter" value="${sessionScope.uname }">
                     <input type="hidden" name="bpnum" value="${sessionScope.pnum }">
                   	 <input type="hidden" id="bform" name="bcharge">
                   	 <c:if test="${b.boriginfile ne null }">
                   	 
                   	 <input type="hidden" name="boriginfile" value="${b.boriginfile }">
                   	 <input type="hidden" name="brenamefile" value="${b.brenamefile }">
                   	  </c:if>
                   	 <input type="hidden" name="bopen" value="${b.bopen }">
                  
                        <table style="text-align: center; width: 100%;">
                          
                           <tr>
                              <td colspan="5"><span style="float: left;">&nbsp;제 목</span>                                 
                              <input type="text" name="btitle" class="form-control" placeholder="일정 제목을 입력하세요" required="required" value="${b.btitle }"></td>
                           </tr>
                           <tr>
                              <td colspan="5">&nbsp;</td>
                           </tr>
                        
                           <tr>
    							<td>
                              	<div class="btn-group btn-group-toggle"  data-toggle="buttons" >
								  <c:if test="${b.bkind eq '요청' }">
									
									
									 <label class="btn btn-info">
									    <input type="radio" name="bkind" id="요청" value="요청" checked>요청
									  </label> 
									  <label class="btn btn-secondary">
									    <input type="radio" name="bkind" id="진행" value="진행">진행
									  </label>
									  <label class="btn btn-secondary">
									    <input type="radio" name="bkind" id="피드백" value="피드백">피드백
									  </label>
									   <label class="btn btn-secondary">
									    <input type="radio" name="bkind" id="완료" value="완료">완료
									  </label>
									   <label class="btn btn-secondary">
									    <input type="radio" name="bkind" id="보류" value="보류">보류
									  </label>
									
									
								  </c:if>
								  
								  
								  <c:if test="${b.bkind eq '진행' }">
										
										
									 <label class="btn btn-secondary">
									    <input type="radio" name="bkind" id="요청" value="요청">요청
									  </label> 
									  <label class="btn btn-info">
									    <input type="radio" name="bkind" id="진행" value="진행" checked>진행
									  </label>
									  <label class="btn btn-secondary"">
									    <input type="radio" name="bkind" id="피드백" value="피드백">피드백
									  </label>
									   <label class="btn btn-secondary">
									    <input type="radio" name="bkind" id="완료" value="완료">완료
									  </label>
									   <label class="btn btn-secondary">
									    <input type="radio" name="bkind" id="보류" value="보류">보류
									  </label>			
								  </c:if>
								 
								  <c:if test="${b.bkind eq '피드백' }">
										
									 <label class="btn btn-secondary">
									    <input type="radio" name="bkind" id="요청" value="요청">요청
									  </label> 
									  <label class="btn btn-secondary">
									    <input type="radio" name="bkind" id="진행" value="진행">진행
									  </label>
									  <label class="btn btn-info">
									    <input type="radio" name="bkind" id="피드백" value="피드백" checked>피드백
									  </label>
									   <label class="btn btn-secondary">
									    <input type="radio" name="bkind" id="완료" value="완료">완료
									  </label>
									   <label class="btn btn-secondary">
									    <input type="radio" name="bkind" id="보류" value="보류">보류
									  </label>				
								  </c:if>
								  
								   <c:if test="${b.bkind eq '완료' }">
											
									 <label class="btn btn-secondary">
									    <input type="radio" name="bkind" id="요청" value="요청">요청
									  </label> 
									  <label class="btn btn-secondary">
									    <input type="radio" name="bkind" id="진행" value="진행">진행
									  </label>
									  <label class="btn btn-secondary"">
									    <input type="radio" name="bkind" id="피드백" value="피드백">피드백
									  </label>
									   <label class="btn btn-info">
									    <input type="radio" name="bkind" id="완료" value="완료" checked>완료
									  </label>
									   <label class="btn btn-secondary">
									    <input type="radio" name="bkind" id="보류" value="보류">보류
									  </label>			
								  </c:if>
								  
								  
								   <c:if test="${b.bkind eq '보류' }">
											
									 <label class="btn btn-secondary">
									    <input type="radio" name="bkind" id="요청" value="요청" >요청
									  </label> 
									  <label class="btn btn-secondary">
									    <input type="radio" name="bkind" id="진행" value="진행">진행
									  </label>
									  <label class="btn btn-secondary"">
									    <input type="radio" name="bkind" id="피드백" value="피드백">피드백
									  </label>
									   <label class="btn btn-secondary">
									    <input type="radio" name="bkind" id="완료" value="완료">완료
									  </label>
									   <label class="btn btn-info">
									    <input type="radio" name="bkind" id="보류" value="보류" checked>보류
									  </label>			
								  </c:if>
					
								</div>
					 
                   			 </td>
                             
                           </tr>
                           
                           <tr>
                           
                            <td style="text-align:left;"><br><i class="fas fa-user-friends"></i> 기존 담당자 : ${ b.bchargename }</td>
                            
                               
                           </tr>
                     		
                           <tr>
                           <td colspan="5">
                           	<div>   
                       		 <nav class="navbar navbar-expand navbar-light bg-light mb-4">
                    
                    
			                
			               <div class="dropdown"> 
			                    <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenu2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" >
			                     	 담당자 수정
			                    </button>
			                      <div id="selectedup"></div>
			                     
			                  
			                    <div class="dropdown-menu" aria-labelledby="dropdownMenu2">
			                  	
			                     <c:forEach var="pm" items="${sessionScope.pmlist}" varStatus="status">
			                     <button class="dropdown-item" type="button" onclick="addbcharge_${status.index}();" value="${pm.ucode }">${pm.uname }</button>
			                     <input type="checkbox" id="user_${status.index }" name="bcharge" style="display:none">
			                     <input type="checkbox" id="name_${status.index }" name="bchargename" style="display:none">
			                     </c:forEach>
			                    </div>
			            	</div> 
			      
			     
			                        
			     <!--      <a class="navbar-brand" href="#"></a>
	               <ul class="navbar-nav ml-auto">
                    <li class="nav-item dropdown">
			      </li>
               	</ul> -->
			    </nav>
		 	  </div>
                     </td>
                     </tr>      
                           
                           <tr>
                              <td width="20%"><span style="float: left;"><i
                                    class="far fa-calendar-alt"></i>&nbsp;시 작 날 짜</span><input
                                 type="date" class="form-control" name="bstartday" id="beforesstartday" value="${b.bstartday }"></td>

                              <td width="20%"><span style="float: left;"><i
                                    class="far fa-calendar-alt"></i>&nbsp;끝 날 짜</span><input
                                 type="date" class="form-control" name="bendday" id="beforesendday" value="${b.bendday }"></td>
                              <td colspan="3"></td>
                           </tr>
                           <tr>
                              <td colspan="3" style="text-align: left;"><span style="color: blue;" id="placespan"></span></td>
                              <td colspan="2">&nbsp;</td>
                           </tr>
                        
                        
                           <tr>
                              <td colspan="5"><span style="float: left;"><i class="far fa-keyboard"></i>&nbsp;메 모</span>
                              <textarea cols="50" rows="6" class="w-100 form-control" name="bcontent">${b.bcontent }</textarea>
                              </td>
                           </tr>
                           
                           <tr>
                              <td colspan="5">&nbsp;</td>
                           </tr>
                           <tr>
                              <td>
                               <c:if test="${!empty b.boriginfile }">
                             	${b.boriginfile }
                             
                             	<input type="checkbox" name="deleteFlag" value="yes">삭제
                          	  </c:if>
                             </td>
                           </tr>
                           <tr>
                             <td>
                               <input type="file" name="upfile">
                             </td>
                            </tr>
                         <!--    <tr>
                             
                              <td colspan="3">
                             
                                    <input type="submit" class="btn btn-sm btn-info" value="수 정 ">
                                
                                    <input type="reset" class="btn btn-sm btn-danger" alue="취 소">
                                   
                              </td>
                           </tr> -->
                        </table>
                     

                     
                  </div>
              
               </div>
			    </form>
			
			
			
			
			
			
		</c:if>
		<!-- bpost끝 -->

		<!-- cpost 시작 -->
		<c:if test="${ main.firstword eq 'c' }">
			<c:set var="c" value="${ main }"></c:set>
			<div class="card shadow mb-4" id="cbody${c.cno}">
				<div
					class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
					<h6 class="m-0 font-weight-bold text-primary">
						<i class="fas fa-user-circle"></i> ${c.cwriter}<br>
						${c.cenrolldate}
					</h6>

					<div class="dropdown no-arrow">

						<!-- 보관함 담기여부 -->

						<button id="cavinetin_${status.index }"
							class="btn btn-custom btn-sm liketoggle${status.index }"
							name="like" onclick="sendInsert(${status.index});">
							<span>보관</span> <i class="far fa-bookmark"></i>
						</button>
						<input type="hidden" id="ucode_${status.index }"
							value="${sessionScope.ucode }"> <input type="hidden"
							id="no_${status.index }" value="${c.cno }"> <input
							type="hidden" id="pnum_${status.index }" value="${c.cpnum }">


						<!-- 드롭다운 -->

						<c:if test="${sessionScope.ucode eq c.cucode}">
							<a class="dropdown-toggle" href="#" role="button"
								id="dropdownMenuLink" data-toggle="dropdown"
								aria-haspopup="true" aria-expanded="false"> <i
								class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
							</a>
							<div
								class="dropdown-menu dropdown-menu-right shadow animated--fade-in"
								aria-labelledby="dropdownMenuLink">
								<div class="dropdown-header">메뉴:</div>
								<a id="${c.cno}" name="mine" class="dropdown-item"
									onclick="toEdit(this.id)">수정</a>
								<a id="y${c.cno}" name="mine" class="dropdown-item" onclick="cpDelete(this.id)">삭제</a>
							</div>
						</c:if>
					</div>
					<!-- 드롭다운 끝 -->

				</div>
				<div id="cpEdit${c.cno}" style="display: none">
					<div class="updatecPost" class="card-body">
						<!-- 게시글안쪽 -->
						<form id="1updatecForm${c.cno}" method="post"
							enctype="multipart/form-data">
							<h6>
								<input name="ctitle" type="text" class="form-control mb-1"
									value="${c.ctitle}" required>
							</h6>
							<input type="hidden" name="cno" value="${c.cno}">
							<hr>
							<table class="w-100" id="CpostUpTable${c.cno}">
								<tr class="mb-1">
									<td colspan="3"><textarea id="ccontent" name="ccontent"
											rows="6" class="w-100 form-control" required>${c.ccontent }</textarea>
									</td>
								</tr>
								<tr class="preview" style="max-height:100px;">
								<c:if test="${!empty c.ofile1 }">
									<input type="hidden" name="cindex" value="0">
									<input type="hidden" name="ofile1" value="${c.ofile1 }">
									<input type="hidden" name="rfile1" value="${c.rfile1 }">
											<td class="rounded align-bottom" style="width: 33%">
											<c:set var="fileName" value="${fn:split(c.ofile1, '.')}" /> 
											<c:set var="fileType" value="${fileName[fn:length(fileName)-1]} " />
												<c:choose>
													<c:when test="${fn:contains(fileType,'jp') || fn:contains(fileType,'png') || fn:contains(fileType,'svg') || fn:contains(fileType,'gif')}">
													<img class="rounded img-fluid " src="resources/bupfile/${c.rfile1}" style="max-height:100px;">
													<i class="border btn-danger fa fa-times mt-2 p-1" name="0" onclick="removefile()"> 삭제</i>
													</c:when>	
													<c:otherwise>
													<img class="rounded img-fluid " src="resources/maincss/img/suugit/file_altimg.svg" style="max-height:100px;">
													<i class="border btn-danger fa fa-times mt-2 p-1" name="0" onclick="removefile()"> 삭제</i>
													</c:otherwise>
												</c:choose>
												<br><a href="javascript:location.href='cfiledown.do?ofile=${c.ofile1}&rfile=${c.rfile1}'" class="ml-4 font-weight-bold" style="margin-top:12px">${c.ofile1}</a></td>
										</c:if>
										<c:if test="${!empty c.ofile2 }">
											<input type="hidden" name="cindex" value="1">
											<input type="hidden" name="ofile2" value="${c.ofile2}">
											<input type="hidden" name="rfile2" value="${c.rfile2}">
											<td class="rounded align-bottom" style="width: 33%"><c:set
													var="fileName" value="${fn:split(c.ofile2, '.')}" /> <c:set
													var="fileType" value="${fileName[fn:length(fileName)-1]} " />
												<c:choose>
													<c:when test="${fn:contains(fileType,'jp') || fn:contains(fileType,'png') || fn:contains(fileType,'svg') || fn:contains(fileType,'gif')}">
													<img class="rounded img-fluid" src="resources/bupfile/${c.rfile2}" style="max-height:100px;">
													<i class="border btn-danger fa fa-times mt-2 p-1" name="1" onclick="removefile()"> 삭제</i>
													</c:when>	
													<c:otherwise>
													<img class="rounded img-fluid " src="resources/maincss/img/suugit/file_altimg.svg" style="max-height:100px;">
													<i class="border btn-danger fa fa-times mt-2 p-1" name="1" onclick="removefile()"> 삭제</i>
													</c:otherwise>
												</c:choose>
												<br><a href="javascript:location.href='cfiledown.do?ofile=${c.ofile2}&rfile=${c.rfile2}'" class="ml-4 font-weight-bold ">${c.ofile2}</a></td>
										</c:if>
										<c:if test="${!empty c.ofile3 }">
											<input type="hidden" name="cindex" value="2">
											<input type="hidden" name="ofile3" value="${c.ofile3}">
											<input type="hidden" name="rfile3" value="${c.rfile3}">
											<td class="rounded align-bottom" style="width: 33%"><c:set
													var="fileName" value="${fn:split(c.ofile3, '.')}" /> <c:set
													var="fileType" value="${fileName[fn:length(fileName)-1]} " />
												<c:choose>
													<c:when test="${fn:contains(fileType,'jp') || fn:contains(fileType,'png') || fn:contains(fileType,'svg') || fn:contains(fileType,'gif')}">
													<img class="rounded img-fluid " src="resources/bupfile/${c.rfile3}" style="max-height:100px;">
													<i class="border btn-danger fa fa-times mt-2 p-1" name="2" onclick="removefile()"> 삭제</i>
													</c:when>	
													<c:otherwise>
													<img class="rounded img-fluid" src="resources/maincss/img/suugit/file_altimg.svg" style="max-height:100px;">
													<i class="border btn-danger fa fa-times mt-2 p-1" name="2" onclick="removefile()"> 삭제</i>
													</c:otherwise>
												</c:choose>
												<br><a href="javascript:location.href='cfiledown.do?ofile=${c.ofile3}&rfile=${c.rfile3}'" class="ml-4 font-weight-bold ">${c.ofile3}</a></td>
										</c:if>
									
										
								</tr>
								<tr id="preview1">
								</tr>
								<tr>
									<td colspan="1"><label class="btn btn-light small">
											<input type="file" name="file" id="file"
											style="display: none" multiple> <i
											class="fa fa-link ">&nbsp;파일</i>
									</label> <label class="btn btn-light small"> <input type="file"
											name="file" style="display: none" id="atchm_img"
											accept=".jpg,.png,.svg" multiple> <i
											class="fa fa fa-image ">&nbsp;사진</i>
									</label> <!-- <label class="btn btn-light small testfile"> <input
											type="file" name="hashtag" style="display: none"> <i
											class="fa fa-hashtag ">&nbsp;</i>
									</label> --></td>
									<td colspan="2">
										<button class="btn btn-danger p-1"
											style="width: 40%; float: right;" onclick="toReset(); return false;">
											<span class="text">취소</span>
										</button>
										<button id="btn1-save${c.cno}"
											class="btn1-save btn btn-success p-1 mr-2"
											style="width: 40%; float: right;" onclick="cpSave()">등록</button>
									</td>
								</tr>
							</table>
						</form>


						<hr>
					</div>
				</div>
				<!-- 수정폼 끝 -->
				<div id="cpView${c.cno}">
					<div class="card-body">
						<!-- 게시글안쪽 -->
						<h6 class="ctt">${c.ctitle}<h6>
								<hr>
								<table>
									<tr>
										<td class="ccon">${c.ccontent}</td>

									</tr>
									<tr>

										<td><br>
										<hr></td>
									</tr>
									<tr id="preview">
										<c:if test="${!empty c.ofile1 }">
											<td class="rounded align-bottom" style="width: 33%"><c:set
													var="fileName" value="${fn:split(c.ofile1, '.')}" /> <c:set
													var="fileType" value="${fileName[fn:length(fileName)-1]} " />
												<c:choose>
													<c:when test="${fn:contains(fileType,'jp') || fn:contains(fileType,'png') || fn:contains(fileType,'svg') || fn:contains(fileType,'gif')}">
													<img class="rounded img-fluid " src="resources/bupfile/${c.rfile1}" >
													</c:when>	
													<c:otherwise>
													<img class="rounded img-fluid " src="resources/maincss/img/suugit/file_altimg.svg">
													</c:otherwise>
												</c:choose>
												<p class="my-2" />
												<a href="javascript:location.href='cfiledown.do?ofile=${c.ofile1}&rfile=${c.rfile1}'" class="ml-4 font-weight-bold" style="margin-top:12px">
												<i class="far fa-file"></i> :  ${c.ofile1}</a></td>
										</c:if>
										<c:if test="${!empty c.ofile2 }">
											<td class="rounded align-bottom" style="width: 33%"><c:set
													var="fileName" value="${fn:split(c.ofile2, '.')}" /> <c:set
													var="fileType" value="${fileName[fn:length(fileName)-1]} " />
												<c:choose>
													<c:when test="${fn:contains(fileType,'jp') || fn:contains(fileType,'png') || fn:contains(fileType,'svg') || fn:contains(fileType,'gif')}">
													<img class="rounded img-fluid " src="resources/bupfile/${c.rfile2}">
													</c:when>	
													<c:otherwise>
													<img class="rounded img-fluid " src="resources/maincss/img/suugit/file_altimg.svg">
													</c:otherwise>
												</c:choose>
												<p class="my-2" />
												<a href="javascript:location.href='cfiledown.do?ofile=${c.ofile2}&rfile=${c.rfile2}'" class="ml-4 font-weight-bold" style="margin-top:12px">
												<i class="far fa-file"></i> :  ${c.ofile2}</a></td>
										</c:if>
										<c:if test="${!empty c.ofile3 }">
											<td class="rounded align-bottom" style="width: 33%"><c:set
													var="fileName" value="${fn:split(c.ofile3, '.')}" /> <c:set
													var="fileType" value="${fileName[fn:length(fileName)-1]} " />
												<c:choose>
													<c:when test="${fn:contains(fileType,'jp') || fn:contains(fileType,'png') || fn:contains(fileType,'svg') || fn:contains(fileType,'gif')}">
													<img class="rounded img-fluid " src="resources/bupfile/${c.rfile3}">
													</c:when>	
													<c:otherwise>
													<img class="rounded img-fluid" src="resources/maincss/img/suugit/file_altimg.svg" >
													</c:otherwise>
												</c:choose>
												<p class="my-2" />
												<a href="javascript:location.href='cfiledown.do?ofile=${c.ofile3}&rfile=${c.rfile3}'" class="ml-4 font-weight-bold" style="margin-top:12px">
												<i class="far fa-file"></i> :  ${c.ofile3}</a></td>
										</c:if>
									</tr>
									
								</table>


								<hr>

					</div>
				</div>

				<!-- 댓글 -->
							<div class="px-3 pb-5 text-white" id="replyy">
							
											<a class="btn btn-outline-success btn-sm" data-toggle="collapse" href="#collapseExample${status.index }" aria-expanded="false" aria-controls="collapseExample">
											  댓글
											</a>
									
											<div class="collapse" id="collapseExample${status.index }">
											  <div class="well">
													<br>
														<div class="commentList_${status.index }" id="commentList_${status.index }" name="${c.cno }"></div>
								
													<div style="height: 2px;">
								
														<input type="hidden" id="reply_no_${status.index }" name="no"
															value="${c.cno }"> <input type="text"
															class="form-control" id="reply_content_${status.index }"
															name="content" placeholder="enter를 누르면 댓글이 등록됩니다"
															onKeypress="javascript:if(event.keyCode == 13) {enterkey(${status.index});}" />
													</div>
								
												</div>
										
											</div>
										</div>
				<!-- 댓글 끝 -->



			</div>

		</c:if>
	</c:forEach>
	<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script src="resources/js/jquery-3.5.1.min.js"></script>
	<script src="resources/js/cpost.js"></script>
</body>
