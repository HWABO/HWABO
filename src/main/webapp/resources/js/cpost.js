//$('#btn-save').click( function() {
//		 alert('hi');
//		} );
   var cno = "" ;
   var table="";
   var cpost = "";
   var tmplist = "";

   function toEdit(click) {

		$("#cpEdit"+click).css("display", "block" );
		$("#cpView"+click).css("display", "none" );
		cno = click;
		alert(cno);
		cpost = "#updatecForm" + cno;
		table = "#CpostUpTable" + cno;
	}
	
   
function cpSave(){
	alert(tmplist);
	event.preventDefault();
 	 var formData = new FormData($(cpost)[0]);
 	 var ee;
 	 
 	formData.append("cflist", tmplist);
	alert(formData.cflist);
 	 $.ajax({
 		url: "upcp.do",
 		type: "post",
 		enctype: 'multipart/form-data',
 		data: formData,
 		contentType:false,
 		processData:false,
 		dataType: "JSON",
 		success: function(c){
 			alert('성공');
 			$("#cpView"+cno).load("selcpnew.do",c,function() {
 				$("#cpView"+cno).css("display", "block" );
 				$("#cpEdit"+cno).css("display", "none" );
 			    alert("글 수정 성공");
 			});
 			
 		},
 		error: function(){ 
 			alert('업데이트 실패');
 		
 		}
 		
 	});   
  }




	    $(document).ready(function(){
	        $('.del_img').click(function(){
	            $(this).parent().hide();
	         
	            return false;
	        });
	    });
	    
	    var dropFile = function(event) {
	    	   event.preventDefault();
	    	}
	    
	    $('.updatecPost').find("input[type='file']").on('change',function(e){
	 		var fileArea = $(table).find('tr.preview');
	 		//fileArea.empty();
	 		if(fileArea.children('td').length >= 3){
	 			alert('첨부파일은 최대 3개까지 가능합니다');
	 			return false;
	 		}
	 		
	 		tmp = Array.prototype.slice.call(fileArea.children('td'));
	 		tmplist = Array.prototype.slice.call(fileArea.children('td')).innerHTML;
	 		var files = e.target.files;
	 		var arr = Array.prototype.slice.call(files);
	 		tmp.push(arr);
	 		alert(tmp);
	 		preview(fileArea, arr);
	 		
	 		});

  function preview(fileArea, arr){
	  alert('hh');
    arr.forEach(function(f){
    	
    	var fileName = f.name;
        
        if(fileName.length > 10){
          fileName = fileName.substring(0,15)+"...";
        }
        
      //div에 이미지 추가
      var str = '<td>';
      if(f.type.match('image.*')){
        var reader = new FileReader(); 
        reader.onload = function (e) { 
         // str += '<button type="button" class="btn btn-danger" value="'+f.name+'" >x</button><br>';
        str += '<img class="rounded img-fluid" src="'+ e.target.result +'" style="max-height:100px;">'
        str += '<i class="border btn-danger fa fa-times mt-2 p-1" onclick="removefile()"> 삭제</i>'
        str += '<br><a class="ml-4 font-weight-bold">'+ f.name +'</a></td>'
          $(str).appendTo(fileArea);
        alert('h22');
        } 
        reader.readAsDataURL(f);
      }else{
        str += '<img class="rounded img-fluid " src="resources/maincss/img/suugit/file_altimg.svg" style="max-height:100px;">'
        str	+= '<i class="border btn-danger fa fa-times mt-2 p-1" onclick="removefile()"> 삭제</i>'
        str += '<br><a class="ml-4 font-weight-bold">'+ f.name +'</a></td>'
        $(str).appendTo(fileArea);
      }
    }); 
  }




function removeuptd() {
	

}

function removefile(){
	$(event.target).value = "";
	$(event.target).closest('td').remove();
	alert('삭제')
	var fileArea = $(table).find('tr.preview');
	tmplist =Array.prototype.slice.call(fileArea.children('td')).innerHTML;
}
function resize(img){

 

   // 원본 이미지 사이즈 저장
   var width = img.width;
   var height = img.height;

 

   // 가로, 세로 최대 사이즈 설정
   var maxWidth = width * 0.5;   // 원하는대로 설정. 픽셀로 하려면 maxWidth = 100  이런 식으로 입력
   var maxHeight = height * 0.5;   // 원래 사이즈 * 0.5 = 50%

 

   // 가로나 세로의 길이가 최대 사이즈보다 크면 실행  
   if(width > maxWidth || height > maxHeight){

 

      // 가로가 세로보다 크면 가로는 최대사이즈로, 세로는 비율 맞춰 리사이즈
      if(width > height){
         resizeWidth = maxWidth;
         resizeHeight = Math.Round((height * resizeWidth) / width);

 

      // 세로가 가로보다 크면 세로는 최대사이즈로, 가로는 비율 맞춰 리사이즈
      }else{
         resizeHeight = maxHeight;
         resizeWidth = Math.Round((width * resizeHeight) / height);
      }

 

   // 최대사이즈보다 작으면 원본 그대로
   }else{
      resizeWidth = width;
      resizeHeight = height;
   }

 

   // 리사이즈한 크기로 이미지 크기 다시 지정
   img.width = resizeWidth;
   img.height = resizeHeight;
}


