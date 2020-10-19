<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 
<!DOCTYPE html>

<body>
<script type="text/javascript"	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ab3b0466fa883da1d7216010325a5bcc&libraries=services"></script>
   <script src="resources/js/cpost.js"></script>
<script type="text/javascript">
<!--cpost 사진 미리보기작동 안해서 가림 시작  -->
$(function(){
	$('#unknowFixed').hide();
})
<!--cpost 사진 미리보기작동 안해서 가림 끝  -->

function addbcharge0(){
     var name = $(event.target).text();
     var code = $(event.target).val();
       $('#selected').before('<span>'+name + '&nbsp; <i class="fa fa-times" onclick="unSelected()"></i></span>');
       $('#name0').val(name);
       $('#user0').val(code);
       $("input:checkbox[id='user0']").prop("checked", true);
       $("input:checkbox[id='name0']").prop("checked", true);
     
}
function addbcharge1(){
   var name = $(event.target).text();
   var code = $(event.target).val();
    $('#selected').before('<span>'+name + '&nbsp; <i class="fa fa-times" onclick="unSelected()"></i></span>');
    $('#name1').val(name);
    $('#user1').val(code);
    $("input:checkbox[id='user1']").prop("checked", true);
    $("input:checkbox[id='name1']").prop("checked", true);

}
function addbcharge2(){
      var name = $(event.target).text();
      var code = $(event.target).val();
       $('#selected').before('<span>'+name + '&nbsp; <i class="fa fa-times" onclick="unSelected()"></i></span>');
      $('#name2').val(name);
       $('#user2').val(code);
       $("input:checkbox[id='user2']").prop("checked", true);
       $("input:checkbox[id='name2']").prop("checked", true);
  
}
function addbcharge3(){
      var name = $(event.target).text();
      var code = $(event.target).val();
       $('#selected').before('<span>'+name + '&nbsp; <i class="fa fa-times" onclick="unSelected()"></i></span>');
      $('#name3').val(name);
       $('#user3').val(code);
       $("input:checkbox[id='user3']").prop("checked", true);
       $("input:checkbox[id='name3']").prop("checked", true);
   
}
function addbcharge4(){
      var name = $(event.target).text();
      var code = $(event.target).val();
       $('#selected').before('<span>'+name + '&nbsp; <i class="fa fa-times" onclick="unSelected()"></i></span>');
      $('#name4').val(name);
       $('#user4').val(code);
       $("input:checkbox[id='user4']").prop("checked", true);
       $("input:checkbox[id='name4']").prop("checked", true);
    
}
function addbcharge5(){
      var name = $(event.target).text();
      var code = $(event.target).val();
       $('#selected').before('<span>'+name + '&nbsp; <i class="fa fa-times" onclick="unSelected()"></i></span>');
      $('#name5').val(name);
       $('#user5').val(code);
       $("input:checkbox[id='user5']").prop("checked", true);
       $("input:checkbox[id='name5']").prop("checked", true);

}
function addbcharge6(){
      var name = $(event.target).text();
      var code = $(event.target).val();
       $('#selected').before('<span>'+name + '&nbsp; <i class="fa fa-times" onclick="unSelected()"></i></span>');
       $('#user6').val(code);
       $('#name6').val(name);
       $("input:checkbox[id='user6']").prop("checked", true);
       $("input:checkbox[id='name6']").prop("checked", true);
    
}
function addbcharge7(){
    var name = $(event.target).text();
    var code = $(event.target).val();
     $('#selected').before('<span>'+name + '&nbsp; <i class="fa fa-times" onclick="unSelected()"></i></span>');
     $('#user7').val(code);
     $('#name7').val(name);
     $("input:checkbox[id='user7']").prop("checked", true);
     $("input:checkbox[id='name7']").prop("checked", true);

}
function addbcharge8(){
    var name = $(event.target).text();
    var code = $(event.target).val();
     $('#selected').before('<span>'+name + '&nbsp; <i class="fa fa-times" onclick="unSelected()"></i></span>');
     $('#user8').val(code);
     $('#name8').val(name);
     $("input:checkbox[id='user8']").prop("checked", true);
     $("input:checkbox[id='name8']").prop("checked", true);
  
}
function addbcharge9(){
    var name = $(event.target).text();
    var code = $(event.target).val();
     $('#selected').before('<span>'+name + '&nbsp; <i class="fa fa-times" onclick="unSelected()"></i></span>');
     $('#user9').val(code);
     $('#name9').val(name);
     $("input:checkbox[id='user9']").prop("checked", true);
     $("input:checkbox[id='name9']").prop("checked", true);
  
}
function addbcharge10(){
    var name = $(event.target).text();
    var code = $(event.target).val();
     $('#selected').before('<span>'+name + '&nbsp; <i class="fa fa-times" onclick="unSelected()"></i></span>');
     $('#user10').val(code);
     $('#name10').val(name);
     $("input:checkbox[id='user10']").prop("checked", true);
     $("input:checkbox[id='name10']").prop("checked", true);
   
}
function addbcharge11(){
    var name = $(event.target).text();
    var code = $(event.target).val();
     $('#selected').before('<span>'+name + '&nbsp; <i class="fa fa-times" onclick="unSelected()"></i></span>');
     $('#user11').val(code);
     $('#name11').val(name);
     $("input:checkbox[id='user11']").prop("checked", true);
     $("input:checkbox[id='name11']").prop("checked", true);
 
}
function addbcharge12(){
    var name = $(event.target).text();
    var code = $(event.target).val();
     $('#selected').before('<span>'+name + '&nbsp; <i class="fa fa-times" onclick="unSelected()"></i></span>');
     $('#user12').val(code);
     $('#name12').val(name);
     $("input:checkbox[id='user12']").prop("checked", true);
     $("input:checkbox[id='name12']").prop("checked", true);

}
function addbcharge13(){
    var name = $(event.target).text();
    var code = $(event.target).val();
     $('#selected').before('<span>'+name + '&nbsp; <i class="fa fa-times" onclick="unSelected()"></i></span>');
     $('#user13').val(code);
     $('#name13').val(name);
     $("input:checkbox[id='user13']").prop("checked", true);
     $("input:checkbox[id='name13']").prop("checked", true);
 
}
function addbcharge14(){
    var name = $(event.target).text();
    var code = $(event.target).val();
     $('#selected').before('<span>'+name + '&nbsp; <i class="fa fa-times" onclick="unSelected()"></i></span>');
     $('#user14').val(code);
     $('#name14').val(name);
     $("input:checkbox[id='user14']").prop("checked", true);
     $("input:checkbox[id='name14']").prop("checked", true);
   
}
function addbcharge15(){
    var name = $(event.target).text();
    var code = $(event.target).val();
     $('#selected').before('<span>'+name + '&nbsp; <i class="fa fa-times" onclick="unSelected()"></i></span>');
     $('#user15').val(code);
     $('#name15').val(name);
     $("input:checkbox[id='user15']").prop("checked", true);
     $("input:checkbox[id='name15']").prop("checked", true);

}
function addbcharge16(){
    var name = $(event.target).text();
    var code = $(event.target).val();
     $('#selected').before('<span>'+name + '&nbsp; <i class="fa fa-times" onclick="unSelected()"></i></span>');
     $('#user16').val(code);
     $('#name16').val(name);
     $("input:checkbox[id='user16']").prop("checked", true);
     $("input:checkbox[id='name16']").prop("checked", true);

}

function addbcharge17(){
    var name = $(event.target).text();
    var code = $(event.target).val();
     $('#selected').before('<span>'+name + '&nbsp; <i class="fa fa-times" onclick="unSelected()"></i></span>');
     $('#user17').val(code);
     $('#name17').val(name);
     $("input:checkbox[id='user17']").prop("checked", true);
     $("input:checkbox[id='name17']").prop("checked", true);

}



function unSelected(){
   $(event.target).parent().remove();
}





var maxSize = 2048;
var SPACE_KB = 1024;
function fileCheck() {
	//input file 태그.
	var file = document.getElementById('fileInput');
	//파일 경로.
	var filePath = file.value;
	//전체경로를 \ 나눔.
	var filePathSplit = filePath.split('\\'); 
	//전체경로를 \로 나눈 길이.
	var filePathLength = filePathSplit.length;
	//마지막 경로를 .으로 나눔.
	var fileNameSplit = filePathSplit[filePathLength-1].split('.');
	//파일명 : .으로 나눈 앞부분
	var fileName = fileNameSplit[0];
	//파일 확장자 : .으로 나눈 뒷부분
	var fileExt = fileNameSplit[1];
	//파일 크기
	var fileSize = (file.files[0].size)/1000;
	  $('#kb').val(fileSize);
      $('#kind').val(fileExt);
/* 	alert("파일경로" + filePath + "확장자" + fileExt);
	console.log('파일 경로 : ' + filePath);
	console.log('파일명 : ' + fileName);
	console.log('파일 확장자 : ' + fileExt);
	console.log('파일 크기kb : ' + fileSize +"KB"); */
}
////dont touch////////////////////////
///                                ///
$(function() {
jQuery('.kyuMain').click(function () {  
    jQuery('#kyukyuMain').css("display", "block");  
    jQuery('#suugitsuugitMain').css("display", "none");
    jQuery('#abcabcMain').css("display", "none");
});
jQuery('.abcMain').click(function () {  
	console.log("sdsd");
    jQuery('#kyukyuMain').css("display", "none");  
    jQuery('#suugitsuugitMain').css("display", "none");
    jQuery('#abcabcMain').css("display", "block");  
});
jQuery('.suugitMain').click(function () {  
	jQuery('#kyukyuMain').css("display", "none");  
    jQuery('#suugitsuugitMain').css("display", "block");
    jQuery('#abcabcMain').css("display", "none"); 
});
});//$function
///                                ///
////dont touch////////////////////////
  $("input[type='file']").on('change',function(e){
	   alert('hhr');
		var fileArea = $('#InsertTable [id=preview]');
   //div 내용 비워주기
	//var fileArea = $('#InsertTable [id=preview]');
	fileArea.empty();
	
   var files = e.target.files;
   var arr =Array.prototype.slice.call(files);

   preview(fileArea, arr);
   
 });
 
</script>
<!-- CPOST start -->
<div class="card shadow mb-4" style="display:block;" id="suugitsuugitMain">
            
               <div class="card-body rounded" style="background-color:#FAFDF9; border: 6px double #DAF8ED;">
              <!-- 게시글안쪽 -->
              <div class="clearfix d-flex ">
              	</div><table id="InsertTable" style="text-align:center;width:100%;">
              <tbody>
              
  <tr class="m-0 font-weight-bold text-primary"><td style="width:20%;">
              </td><td style="width:20%;">
              </td><td style="width:20%;">
              </td><td style="width:20%;">
              </td><td style="width:20%;">
              </td></tr>
<!-- @@@@시작@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
<!-- @@@  -->                                                                                                        <!-- @@@  -->
			  <tr class="m-0 font-weight-bold text-primary"><td style="width:100%;" colspan="5"><table style="width:100%;">
			  <tr class="m-0 font-weight-bold text-primary" style="width:100%;">
			  <td style="width:33%;height:100%;" class="suugitMain hovercheck">          
              <span><i class="fas fa-pencil-alt"></i>글작성</span>
              </td><td style="width:33%;height:100%;" class="kyuMain hovercheck">
              <span><i class="fas fa-business-time"></i>업무</span>
              </td><td style="width:33%;height:100%;" class="abcMain hovercheck">
              <span><i class="fas fa-map-marked-alt"></i>일정</span>
              </td></tr>
              </table></td></tr>
<!-- @@@  -->                                                                                                        <!-- @@@  -->
<!-- @@@@끝@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->              

              
              <!-- 구분선 -->
              <tr><td colspan="5">
              <hr>
              </td></tr>
              <!-- 글작성 본문 -->
<!-- 글작성 본문 -->
              <form action="incp.do" id="InsertCpost" method="post" enctype="multipart/form-data">
             
              <tr><td colspan="5"> <input name="ctitle" type="text" class="form-control mb-1" placeholder="제목을 입력하세요" required style="background-color:#FAFAFA;" ></td></tr>
              <tr><td colspan="5"><textarea id="ccontent" name="ccontent" rows="6" class="w-100 form-control "  placeholder="내용을 입력해주세요"  required style="background-color:#FAFAFA;"></textarea></td></tr>
              <tr id="preview"></tr>
              <tr id="file_list">
       				<input type="hidden" name="cwriter" value="${sessionScope.uname }">
       				<input type="hidden" name="cucode" value="${sessionScope.ucode }">
       				<input type="hidden" name="cpnum" value="${sessionScope.pnum}">
       				
              	<td>
              		<img src="" />
              		<a class="del_img" style="position:relative;bottom:80%;left:20%"><i class="fa fa-times-circle"></i></a>
              		</div>
              		</div>
              	</td>
              	<td>
              		<div class="select_img rounded float-left">
              		<a class="del_img" style="position:relative;bottom:80%;left:20%"><i class="fa fa-times-circle"></i></a>
              		</div>
              	</td>
              	<td>
              		<div class="select_img rounded float-left">
              		<img src="" />
              		<a class="del_img" style="position:relative;bottom:80%;left:20%"><i class="fa fa-times-circle"></i></a>
              		</div>
              	</td>
              	<td>
              	<div class="imgs_wrap">
              		<img id="img" />
               	</div>
              	</td>
              
              </tr>
              <tr>
              <!-- 옵션메뉴 --> 
              	<div class="clearfix d-flex ">
              	<td colspan="2" class="flex-grow-5" style="text-align: left;">
              		<label class="btn btn-light small" onclick="fileUpload" >
              			 <input type="file" name="file" id="file" style="display:none" multiple>
              			<i class="fa fa-link ">&nbsp;&nbsp;파일</i>
              		</label>&nbsp;
              		 <label class="btn btn-light small" id="unknowFixed">
              			<input type="file" name="ofile" style="display:none" id="atchm_img" accept=".jpg,.png,.svg" multiple>
              			<i class="fa fa fa-image ">&nbsp;&nbsp;사진</i>
              		</label> 
              		
              	</td>
              	
              	<td>
              	<select name="copen" class="form-control form-control-small selectpicker" style="display: none;">
  					<option value="Y" selected>전체공개</option>
  					<option value="N">비공개</option>
				</select>
				
              	</td>
				
		
              	 <!-- 버튼 -->
              	 <td colspan="3"  style="text-align:right; vertical-align: middle;  width: 30%;"> 
             	 	<button type="submit" id="btn-save" class="btn btn-outline-info btn-sm px-4" form="InsertCpost">등록</button>
             		<button type="reset" class="btn btn-outline-danger btn-sm px-4">취소
             		</button>
              	</td>
              </tr>
           </form>
	<tr>
			<td> 		
			
			</td>
			</tr> 
             <!-- 본문! -->
              </tbody></table>
            </div>
          </div>
             <script src="resources/js/jquery-3.5.1.min.js"></script>
          <script src="resources/js/cpost.js"></script>
   <script>
   $("input[type='file']").on('change',function(e){
	   alert('hhr');
		var fileArea = $('#InsertTable [id=preview]');
   //div 내용 비워주기
	//var fileArea = $('#InsertTable [id=preview]');
	fileArea.empty();
	
   var files = e.target.files;
   var arr =Array.prototype.slice.call(files);

   preview(fileArea, arr);
   
 });
   </script>
<!-- CPOST end &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&-->

<!-- BPOST start -->
               <div class="card shadow mb-4" style="display:none;" id="kyukyuMain">
<!-- @@@@시작@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->               
<!-- @@@  -->                                                          <!-- @@@  -->
<!-- @@@@끝@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
                 <div class="card-body rounded" style="background-color:#FAFDF9; border: 6px double #DAF8ED;">
                     <!-- 게시글안쪽 -->
                  <form action="insertbpostMain.do" name="b" method="post" id="bInsert" enctype="multipart/form-data">
                     <input type="hidden" name="bucode" value="${sessionScope.ucode }">
                     <input type="hidden" name="bwriter" value="${sessionScope.uname }">
                     <input type="hidden" name="bpnum" value="${sessionScope.pnum }">
                     <!-- filebox -->
                     <input type="hidden" name="kb" id="kb">
                     <input type="hidden" name="kind" id="kind">
                     <input type="hidden" name="pnum" value="${sessionScope.pnum }">
                        <table style="text-align: center; width: 100%;">
<!-- @@@@시작@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
<!-- @@@  -->                                                                                                        <!-- @@@  -->
			  <tr><td style="width:100%;" colspan="5"><table style="width:100%;">
			  <tr class="m-0 font-weight-bold text-primary" style="width:100%;">
			  <td style="width:33%;height:100%;" class="suugitMain hovercheck">          
              <span><i class="fas fa-pencil-alt"></i>글작성</span>
              </td><td style="width:33%;height:100%;" class="kyuMain hovercheck">
              <span><i class="fas fa-business-time"></i>업무</span>
              </td><td style="width:33%;height:100%;" class="abcMain hovercheck">
              <span><i class="fas fa-map-marked-alt"></i>일정</span>
              </td></tr>
              <tr><td colspan="5">
              <hr>
              </td></tr></table></td></tr>
<!-- @@@  -->                                                                                                        <!-- @@@  -->
<!-- @@@@끝@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->  
                           <tr>
                              <td colspan="5">
                              <div class="btn-group btn-group-toggle" data-toggle="buttons" style="width:100%;">
                                <label class="btn btn-secondary active">
                                  <input type="radio" name="bkind" id="option1" value="요청" checked>요청
                                </label>
                                <label class="btn btn-secondary">
                                  <input type="radio" name="bkind" id="option2" value="진행">진행
                                </label>
                                <label class="btn btn-secondary">
                                  <input type="radio" name="bkind" id="option3" value="피드백" >피드백
                                </label>
                                 <label class="btn btn-secondary">
                                  <input type="radio" name="bkind" id="option3" value="완료">완료
                                </label>
                                 <label class="btn btn-secondary">
                                  <input type="radio" name="bkind" id="option3" value="보류">보류
                                </label>
                              </div>
                              </td>
                           </tr>
                           <tr>
                              <td colspan="5">&nbsp;</td>
                           </tr>
                           <tr>
                              <td colspan="5">                       
                              <input type="text" name="btitle" class="form-control" placeholder="제목을 입력하세요" required="required" style="background-color:#FAFAFA;"></td>
                           </tr>
                           <tr>
                              <td colspan="5">&nbsp;</td>
                           </tr>
                           <tr>
                           <td colspan="5">
                           <div>   
                        <nav class="navbar navbar-expand navbar-light bg-light mb-4">
                    <div class="dropdown">
                    <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenu2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                      담당자
                    </button>
                    
<!-- @@@@시작@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->               
<!-- @@@  -->
<% if(request.getParameter("choicethat") != null){ %>
	<b style="color:red;position:relative;z-index:10;">&nbsp;&nbsp; 담당자 지정은 필수 입니다.</b>
<% } %>			                   
<!-- @@@  -->                                                                                                       <!-- @@@  -->
<!-- @@@@끝@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
                      <div id="selected"></div>
                    <div class="dropdown-menu" aria-labelledby="dropdownMenu2" >
                     <c:forEach var="pm" items="${sessionScope.pmlist}" varStatus="status">
                     <button class="dropdown-item" type="button" onclick="addbcharge${status.index}();" value="${pm.ucode }">${pm.uname }</button>
                     <input type="checkbox" id="user${status.index }" name="bcharge" style="display:none" >
                     <input type="checkbox" id="name${status.index }" name="bchargename" style="display:none">
                     </c:forEach>
                    </div>
                  </div>
                        <a class="navbar-brand" href="#"></a>
                    <ul class="navbar-nav ml-auto">
                      <li class="nav-item dropdown">
                      </li>
                    </ul>
                  </nav>
                </div>
                     </td>
                     </tr>      
                           <tr>
                              <td width="50%"><span style="float: left;"><i class="far fa-calendar-alt"></i>&nbsp;시 작 날 짜</span>
                              <input type="date" class="form-control" name="bstartday" id="beforesstartday" required style="background-color:#FAFAFA;"></td>
                              <td width="50%"><span style="float: left;"><i class="far fa-calendar-alt"></i>&nbsp;끝 날 짜</span>
                              <input type="date" class="form-control" name="bendday" id="beforesendday" required style="background-color:#FAFAFA;"x></td>
                             
                           </tr>
                           <tr>
                              <td colspan="3" style="text-align: left;"><span style="color: blue;" id="placespan"></span></td>
                              <td colspan="2">&nbsp;</td>
                           </tr>
                           <tr>
                              <td colspan="5"><span style="float: left;"><i class="far fa-keyboard"></i>&nbsp;글쓰기</span>
                              <textarea cols="50" rows="6" class="w-100 form-control" name="bcontent" style="background-color:#FAFAFA;"></textarea>
                              </td>
                           </tr>
                           <tr>
                              <td colspan="5">&nbsp;</td>
                           </tr>
                           <tr>
                              <td><input type="file" name="ofile" id="fileInput" onchange='fileCheck()'></td>
                              <!--  #f8f9fc   -->
                              
                              <select name="bopen" class="form-control" style="display:none">
                                 <option value="y" selected>전체공개</option>
                                 <option value="n">나만보기</option>
                              </select>
                              
                              <td colspan="3" style="width:30px; text-align: right;">
                                    <input type="submit" class="btn btn-sm btn-outline-info px-4" value=" 등  록 ">
                                    <input type="reset" class="btn btn-sm btn-outline-danger px-4" value=" 취  소 ">
                              </td>
                              
                   
                              
                           </tr>
                        </table>
                     </form>
                  </div>
               </div>
<!-- kyu끝 &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&-->

<!-- abc start -->
<%@ page import="java.util.Date"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%
	long time = System.currentTimeMillis();
	Date nowTime1 = new Date();
	Date nowTime2 = new Date();
	SimpleDateFormat sf1 = new SimpleDateFormat("yyyy-MM-dd");
	SimpleDateFormat sf2 = new SimpleDateFormat("kk:mm");

	String now = sf1.format(nowTime1).toString() + "T" + sf2.format(nowTime2).toString();
%>
<div class="card shadow mb-4" style="display:none;" id="abcabcMain">
            
             <div class="card-body rounded" style="background-color:#FAFDF9; border: 6px double #DAF8ED;">
              <!-- 게시글안쪽 -->
        <form action="sinsertMain.do" id="spostInsert" name="spostInsert"	method="post" onsubmit="return daycheck();">
        <input type="hidden" name="swriter" value="${sessionScope.uname }">
		<input type="hidden" name="sucode" value="${sessionScope.ucode }">
		<input type="hidden" name="spnum" value="${sessionScope.pnum}">

		<input type="hidden" name="sopen" value="y">
              <table style="text-align:center;width:100%;">
              <tbody>
<!-- @@@@시작@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
<!-- @@@  -->                                                                                                        <!-- @@@  -->
			  <tr><td style="width:100%;" colspan="5"><table style="width:100%;">
			  <tr class="m-0 font-weight-bold text-primary" style="width:100%;">
			  <td style="width:33%;height:100%;" class="suugitMain hovercheck">          
              <span><i class="fas fa-pencil-alt"></i>글작성</span>
              </td><td style="width:33%;height:100%;" class="kyuMain hovercheck">
              <span><i class="fas fa-business-time"></i>업무</span>
              </td><td style="width:33%;height:100%;" class="abcMain hovercheck">
              <span><i class="fas fa-map-marked-alt"></i>일정</span>
              </td></tr>
              <tr><td colspan="5">
              <hr>
              </td></tr></table></td></tr>
<!-- @@@  -->                                                                                                        <!-- @@@  -->
<!-- @@@@끝@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
		<tr>
			<td colspan="3"><input type="text" name="stitle"
				class="form-control" maxlength="20" placeholder="일정 제목을 입력하세요" required="required" style="background-color:#FAFAFA;"></td>
		</tr>
		<tr>
			<td colspan="3">&nbsp;</td>
		</tr>
		<tr>
			<td width="50%"><span style="float: left;"><i
					class="far fa-calendar-alt"></i>&nbsp;시 작 날 짜</span><input
				type="datetime-local" class="form-control" name="beforesstartday"
				id="beforesstartdayi" required="required" value="<%=now%>" style="background-color:#FAFAFA;"></td>
			<td>&nbsp;</td>
			<td width="50%"><span style="float: left;"><i
					class="far fa-calendar-alt"></i>&nbsp;끝 날 짜</span><input
				type="datetime-local" class="form-control" name="beforesendday"
				id="beforesenddayi" required="required" value="<%=now%>" style="background-color:#FAFAFA;"></td>
			<td colspan="3"></td>
		</tr>
		<tr>
			<td colspan="5" style="text-align: center;"><span
				style="color: blue;" id="placespani"></span></td>
		</tr>
		<tr>
			<td colspan="3">&nbsp;</td>
		</tr>
		<tr>
			<td colspan="3"><span style="float: left;"><i
					class="fas fa-map-marker-alt"></i>&nbsp;장 소</span> <input type="text"
				id="sample5_address1" placeholder="장소를 입력하세요" class="form-control"
				name="splace" style="background-color:#FAFAFA;"> <input type="button"
				onclick="sample5_execDaumPostcode()" value="주소 검색"
				class="form-control" style="background-color:#FAFAFA;"><br>
				<div id="map2" class="map"
					style="width: 100%; height: 150px; margin-top: 10px; display: none"></div>

				<script
					src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

				<script>
					var mapContainer2 = document.getElementById('map2'), // 지도를 표시할 div
					mapOption2 = {
						center : new daum.maps.LatLng(37.537187, 127.005476), // 지도의 중심좌표
						level : 4
					// 지도의 확대 레벨
					};

					//지도를 미리 생성
					var map2 = new daum.maps.Map(mapContainer2, mapOption2);
					//주소-좌표 변환 객체를 생성
					var geocoder2 = new daum.maps.services.Geocoder();
					//마커를 미리 생성
					var marker2 = new daum.maps.Marker({
						position : new daum.maps.LatLng(37.537187, 127.005476),
						map : map2
					});

					function sample5_execDaumPostcode() {
						new daum.Postcode(
								{
									oncomplete : function(data) {
										var addr2 = data.address; // 최종 주소 변수

										// 주소 정보를 해당 필드에 넣는다.
										document
												.getElementById("sample5_address1").value = addr2;
										// 주소로 상세 정보를 검색
										geocoder2
												.addressSearch(
														data.address,
														function(results,
																status) {
															// 정상적으로 검색이 완료됐으면
															if (status === daum.maps.services.Status.OK) {

																var result2 = results[0]; //첫번째 결과의 값을 활용

																// 해당 주소에 대한 좌표를 받아서
																var coords2 = new daum.maps.LatLng(
																		result2.y,
																		result2.x);
																// 지도를 보여준다.
																mapContainer2.style.display = "block";
																map2.relayout();
																// 지도 중심을 변경한다.
																map2
																		.setCenter(coords2);
																// 마커를 결과값으로 받은 위치로 옮긴다.
																marker2
																		.setPosition(coords2)
															}
														});
									}
								}).open();
					}
				</script></td>
		
		</tr>

		<tr>
			<td colspan="3">&nbsp;</td>
		</tr>
		<tr>
			<td colspan="3"><span style="float: left;"><i
					class="far fa-keyboard"></i>&nbsp;메 모</span> <span style="float: left;">&nbsp;&nbsp;&nbsp;(
					남은글자수 : <input size="2px;" type="text" readonly value="200"
					name="counter" id="counter" style="border: none; height: 13px;">)
			</span> <textarea name="scontent" id="contentText" cols="30" rows="10" maxlength="200"
					class="form-control" onkeypress="onTestChange();"
					style="width: 100%; height: 100px; overflow: auto; resize: none;" style="background-color:#FAFAFA;"></textarea>
			</td>
		</tr>

		<tr>
			<td colspan="2">&nbsp;</td>
		</tr>
		<tr>
		
			<td  colspan="3" style="text-align: right; width: 30%;">
			 <input type="submit"class="btn btn-sm btn-outline-info px-4 " value=" 등  록 "> 
			 <input type="reset"	class="btn btn-sm btn-outline-danger px-4" value=" 취  소 ">

			</td>
		</tr>
              </tbody></table>
              </form>
  </div>
</div>
<!-- abc end -->
</body>

