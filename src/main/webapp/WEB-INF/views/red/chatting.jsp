<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- 채팅기능 시작 -->

<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" type="text/css" rel="stylesheet">

<link href="/hwabo/resources/maincss/css/chatting.css" type="text/css" rel="stylesheet">

<!-- 삭제버튼 css 시작 -->
<style>
.button {
  background-color: #4CAF50; /* Green */
  border: none;
  color: white;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 6px;
  margin: 1px 1px;
  transition-duration: 0.4s;
  cursor: pointer;
}
.button3 {
  background-color: white; 
  color: #f44336; 
  /* border: 1px solid #f44336; */
  border-radius:50%;
}
/* 
.button3:hover {
  background-color: #f44336;
  color: white;
} 
*/
<!-- 삭제버튼 css 끝 -->
</style>

<script>
var speed = ${ sessionScope.cspeed };
$(function(){
	$("#enter_chat").on("click", function(){
		enterChat();
	}); //enter btn click
});
function enterChat(){
		$.ajax({
			url:"sendChat.do",
			data: {
				content : $("#enter_content").val().toString(),
				ucode :	$("#enter_ucode").val().toString(),
				project_num : $("#enter_project_num").val().toString(),
				project_name : $("#enter_project_name").val().toString(),
				uname : $("#enter_uname").val().toString()
			},
			type: "POST",
			success: function(result){
				selectChat();
				$("#enter_content").val("");
				if(result == "ok"){
					console.log("채팅 보내기 성공...");
					
				}else{
					console.log("채팅 전송 실패...");
				}
			},
			error: function(request,status, errorDate){
				console.log("error code : " + requet.status + "\nMessage :" + request.responseText + "\nError :" + errorData);
			}
	 	}); //ajax
		$("#chat").scrollTop($("#chat")[0].scrollHeight);
}
function delChat(target){
		$.ajax({
			url:"delChat.do",
			data: {
				content : target,
				ucode :	$("#enter_ucode").val().toString(),
				project_num : $("#enter_project_num").val().toString()
			},
			type: "POST",
			success: function(result){
				selectChat();
				if(result == "ok"){
					console.log("메시지 삭제성공...");
				}else{
					console.log("메시지 삭제실패...");
				}
			},
			error: function(request,status, errorDate){
				console.log("error code : " + requet.status + "\nMessage :" + request.responseText + "\nError :" + errorData);
			}
	 	}); //ajax
		$("#chat").scrollTop($("#chat")[0].scrollHeight);
}
function selectChat(){
	$.ajax({
		url: "riseChat.do?project_num=${ sessionScope.pnum }",
		type: "POST",
		dataType: "json", 
		success: function(json){
			var jsonStr = JSON.stringify(json);
			var json = JSON.parse(jsonStr);
			var values = "";
			//시계 시작 ///////////////////
			/* 
			const date = new Date();
			var h = date.getHours();
			if(h < 10){
				h = "0" + h; 
			}
			var m = date.getMinutes();
			if(m < 10){
				m = "0" + m; 
			}
			values +=
				"<center><div style=\"width:70%;\"><div style=\"position:fixed;font-size:300%;\"><br>HWABO<br>" +
				h +":"+ m + 
				"</div></div></center>"; 
			*/
			//시계 끝 ////////////////////
			for(var i in json.chatList){
				var chat_ucode = decodeURIComponent(json.chatList[i].ucode).replace(/\+/gi, " ");
				var chat_uname = decodeURIComponent(json.chatList[i].uname).replace(/\+/gi, " ");
				var chat_content = decodeURIComponent(json.chatList[i].content).replace(/\+/gi, " ");
				var chat_pnum = decodeURIComponent(json.chatList[i].pnum).replace(/\+/gi, " ");
				var chat_time = decodeURIComponent(json.chatList[i].time).replace(/\+/gi, " ");
				if(json.chatList[i].uimg != null){
					var chat_uimg = decodeURIComponent(json.chatList[i].uimg).replace(/\+/gi, " ");
				}else{
					var chat_uimg = "https://ptetutorials.com/images/user-profile.png";
				}
				if(chat_ucode == "${ sessionScope.ucode }"){
					values += 
					"<div align:right; class=\"outgoing_msg \" id=\"outgoing_msg\" style=\"position:relative;z-index:2; \"><div align:right; class=\"sent_msg\"><p style='max-width:200px; background-color:#93DAEE; word-break:break-all;'>" +
					chat_content +
		            "</p><span class=\"time_date\">" +
		            chat_time.substring(0, 16) +
		            //삭제버튼 시작
		            
	                "&nbsp;&nbsp;<button class=\"button button3\" " +
					"onclick=\"javascript:delChat(\'"+chat_time+"\')\" >X</button>" +
	                //삭제버튼끝
		            "</span> </div></div>";
				}else{
				values += 
					"<div class=\"incoming_msg\"  style=\"position:relative;z-index:2;\">" +
	              	"<div class=\"incoming_msg_img\"> <img src=\"" + chat_uimg + "\" alt=\"sunil\" id=\"chatProfile\" style=\"width:100%;height:15px;border-radius:50%;\"></div>" +
	              	"<span style=\"font-size:9pt;\">" +
	              	chat_uname +
	              	"</span><div class=\"received_msg\">" +
	                "<div class=\"received_withd_msg\"><p>" +
	                chat_content +
	                "</p><span class=\"time_date\">" +
	                chat_time.substring(0, 16) +
	                "</span></div></div></div>";
				}
			}
			$("#chat").html(values); 
			$("#chat").scrollTop($("#chat")[0].scrollHeight);
		},
		error: function(jqXHR, textstatus, errorthrown){
			console.log("error : " +jqXHR+", "+textstatus+", "+errorthrown);
		}
	});//ajax
};

selectChat();
setInterval(selectChat,speed);

</script>
<!-- 채팅기능 끝 -->

<!-- 시계 시작 -->
<script type="text/javascript">
const date = new Date();
var h = date.getHours();
if(h < 10){
	h = "0" + h; 
}
var m = date.getMinutes();
if(m < 10){
	m = "0" + m; 
}
var toke =
	"<div style=\"width:100%;display:flex;justify-content:center;align-item:center;\">" +
	"<div style=\"position:fixed;font-size:250%;\"><div><center>" +
	"<div style=\"color:#19BFAF;font-size:150%;word-break:break-all;max-width:200px;\"><br>${sessionScope.pnames}<br></div>" +
	h +":"+ m + 
	"</center></div></div></div>";
	
function showToke(){
	const incoming = ($('.outgoing_msg').length == 0);
	const outgoing = ($('.incoming_msg').length == 0);
	if(incoming && outgoing){
	$(function(){$("#chat").html(toke);});
	}
}
setInterval(showToke,1000);
</script>
<!-- 시계 끝 -->

</head>
<body>

<div class="messaging">
      <div class="inbox_msg rounded">
        <div class="mesgs">
          <div class="msg_history" id="chat" style="word-break:break-all;">
            
            <!-- <div class="incoming_msg">
              <div class="incoming_msg_img"> <img src="https://ptetutorials.com/images/user-profile.png" alt="sunil"></div>
              <span style="font-size:9pt;">우리 사랑스러운 비뜨</span>
              <div class="received_msg">
                <div class="received_withd_msg">
                  <p>Test which is a new approach to have all
                    solutions</p>
                  <span class="time_date"> 11:01 AM    |    June 9</span></div>
              </div>
            </div>
            
            <div class="outgoing_msg">
              <div class="sent_msg">
                <p>Test which is a new approach to have all
                  solutions</p>
                <span class="time_date"> 11:01 AM    |    June 9</span> </div>
            </div> -->
          
          </div>
          <div class="type_msg">
            <div class="input_msg_write">
<!-- 채팅 입력창 시작 -->
            <input id="enter_ucode" type="hidden" value="${ sessionScope.ucode }" />
            <input id="enter_project_num" type="hidden" value="${ sessionScope.pnum }" />
            <input id="enter_project_name" type="hidden" value="${ sessionScope.pnames }" />
            <input id="enter_uname" type="hidden" value="${ sessionScope.uname }" />
            
<input style="min-height: 45px;" id="enter_content" type="text" class="write_msg d-flex" placeholder="Type a message" onKeypress="javascript:if(event.keyCode==13) {enterChat();}"/>
              <button id="enter_chat" class="msg_send_btn" type="button"  style="margin:5px; background-color:#19BFAF; " ><i class="fa fa-paper-plane-o"aria-hidden="true"></i></button>
<!-- 채팅 입력창 끝 -->            
            </div>
          </div>
        </div>
      </div>
</div>

</body>
</html>