<%@ page session="true" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset='utf-8' />
<link href='/hwabo/resources/calendar/lib/main.css' rel='stylesheet' />
<script src='/hwabo/resources/calendar/lib/main.js'></script>
<script>
function showCalendar(){
  document.addEventListener('DOMContentLoaded', function() {
    var calendarEl = document.getElementById('calendar');

    var calendar = new FullCalendar.Calendar(calendarEl, {
      headerToolbar: {
        left: 'prev,next today',
        center: 'title',
        right: 'dayGridMonth,timeGridWeek,timeGridDay'
      },
      initialDate: new Date().toISOString(),
      navLinks: true, // can click day/week names to navigate views
      selectable: true,
      selectMirror: true,
      select: function(arg) {
      var title = prompt('일정 메모');
      arg.view.dateEnv.locale.codeArg = 'kr';
      arg.view.dateEnv.locale.codes = ['kr'];
      //ajax insert 시작////////////////////////
      var argAllDay = 1;
      if(arg.allDay != true){
        	argAllDay = 0;
      }
/*       console.log('arg.end.toISOString().slice(0, 19).replace(\'T\', \' \')' + arg.end.toISOString().slice(0, 19).replace('T', ' '));
      console.log('arg.end.toISOString().slice(0, 19)' + arg.end.toISOString().slice(0, 19));
      console.log('arg.end.toISOString()' + arg.end.toISOString());
      console.log('arg.end' + arg.end);
      console.log('-----------------------------');
      console.log(arg.start.getTime()/1000);
      console.log('-----------------------------');
      console.log(new Date(arg.start.getTime()).toISOString());
      console.log('-----------------------------');
      console.log(new Date(arg.start.getTime()));
      console.log('-----------------------------');
      console.log(new Date(arg.end.getTime() - (arg.end.getTimezoneOffset() * 60000)).toISOString().slice(0, 10));
      console.log('-----------------------------');
      console.log(new Date(arg.start.getTime() - (arg.start.getTimezoneOffset() * 60000)).toISOString().slice(0, 10));
      console.log('-----------------------------');
      console.log(arg);
      console.log('-----------------------------');
      console.log(title);
      console.log('-----------------------------'); */
      if(title != ""  && title != " "  && title != "  "  && title != "   "
    	  && title != "    "  && title != "     "  && title != "      "
      && title != null){
      $(function(){//등록 에이작스 시작
        	$.ajax({
        		url:"sendCalendar.do",
        		data:{
        			pnum : $("#calpnum").val(), 
        			ucode : $("#calucode").val(), 
        			uname : $("#caluname").val(),
        			title : title,
        			start_date : /*arg.start.toISOString(),*/new Date(arg.start.getTime() - (arg.start.getTimezoneOffset() * 60000)).toISOString().slice(0, 10),
        			end_date : /*arg.end.toISOString(),*/new Date(arg.end.getTime() + (arg.end.getTimezoneOffset() * 60000)).toISOString().slice(0, 10),
        			allday : argAllDay
        		},
        		type: "post",
        		success: function(result){
        			if(result == "ok"){
    					console.log("달력 일정 등록 완료...");
    					if (title) {
    				          calendar.addEvent({
    				            title: title,
    				            start: arg.start,
    				            end: arg.end,
    				            allDay: arg.allDay//true false (return boolean)
    				          })
    				        }
    				        calendar.unselect()
    					
    				}else{
    					console.log("달력 일정 등록 실패...");
    				}
        		},
        		error: function(request,status,errorData){
        			console.log("error code : " + request.status + "\nMessage :" + request.responseText + "\nError :" + errorData);
        		}
        	})
      });//등록 에이작스 끝
      }

      },
      eventClick: function(arg) {
    	  console.log(arg)
    	  if (confirm(arg.el.innerText +'일정을 삭제 하시겠습니까?')) {
    		  $(function(){// 삭제 에이작스 시작
            	$.ajax({
            		url:"deleteCalendar.do",
            		data:{
            			calno : arg.event._def.publicId,
            			pnum : $("#calpnum").val(), 
            			ucode : $("#calucode").val(), 
            			title : arg.el.innerText,
            			uname : arg.el.innerText.substring(4,arg.el.innerText.length)
            		},
            		type: "post",
            		success: function(result){
            			if(result == "ok"){
        					console.log("일정 삭제 완료...");
        					arg.event.remove()
        				}else{
        					console.log("일정 삭제 실패...");
        				}
            		},
            		error: function(request,status,errorData){
            			console.log("error code : " + request.status + "\nMessage :" + request.responseText + "\nError :" + errorData);
            		}
            	})
          });// 삭제 에이작스 끝
        //arg.event.remove()
        }
      },
      editable: true,
      dayMaxEvents: true, // allow "more" link when too many events
      events: [
    	  <c:forEach var="calIndex" items="${ requestScope.cal }" varStatus="status">
    	  
      	  <c:if test="${ !status.first }">
          ,
          </c:if>
          
          {
        	id:'${calIndex.calno}',
            title: '${calIndex.title}',
         	start: '${fn:substring(calIndex.start_date,0,10)}',
	        end:  '${fn:substring(calIndex.end_date,0,10)}'//new Date('${fn:substring(calIndex.end_date,0,10)}').setDate(new Date('${fn:substring(calIndex.end_date,0,10)}').getDate() + 1)
          }
          </c:forEach>
  			
  		 	/* ,{
  		 		id:'s11111s',
  	            title: 'tetete',
  	            start: '2020-09-01',
  	            end: '2020-09-01'
  	          }  */
  			
      ]
    });

    calendar.render();
  });
}
showCalendar();
</script>
<style>

#calendar_body{
    margin: 0;
    padding: 0;
    font-family: Arial, Helvetica Neue, Helvetica, sans-serif;
    font-size: 14px;
}

#calendar {
    max-width: 1100px;
    margin: 0 auto;
}

</style>
</head>
<body>
<div id="calendar_body">
  <div id='calendar'></div>
</div>
<input type="hidden" value="${ pnum }" id="calpnum">
<input type="hidden" value="${ ucode }" id="calucode">
<input type="hidden" value="${ uname }" id="caluname">

<script type="text/javascript">
function cssInit(){
	$(function(){
			$(".fc-dayGridMonth-button").html("작게 보기");
			$(".fc-dayGridMonth-button").on("click",function(){
				location.href='/hwabo/fborder2.do';
			});
			$(".fc-timeGridWeek-button").html("크게 보기");
			$(".fc-timeGridWeek-button").on("click",function(){
				$(".fc-view-harness").hide();
				location.href='/hwabo/fborder.do';
			});
			//$(".fc-dayGridMonth-button").hide();
			//$(".fc-timeGridWeek-button").hide();
			$(".fc-timeGridDay-button").hide();
			$(".fc-today-button").html("이번달");
	});
};
setInterval(cssInit,1000);
/* 
$(".fc-button-group").on("click",function(){
	setTimeout(cssInit,0);
}); 
*/
</script>
</body>
</html>
