<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">

<link rel="stylesheet" href="assets/plugins/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/css/one.style.css">
<link rel="stylesheet" href="assets/dist/dragula.css" type="text/css">
<link rel="shortcut icon" href="favicon.ico">
    
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3-theme-teal.css">
<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css">    <%-- css --%>
    
<link rel='stylesheet' href='calendar/jquery-ui.min.css' />
<link href="calendar/fullcalendar.css" rel="stylesheet" />
<link href="calendar/fullcalendar.print.css" rel='stylesheet' media='print' />
<!-- <link rel="stylesheet" href="http://code.jquery.com/ui/1.9.2/themes/base/jquery-ui.css" /> -->
<link rel="stylesheet" href="WebContent/assets/css/jquery-ui.css" />
<script src="assets/plugins/jquery/jquery.min.js"></script>
<script src="assets/plugins/jquery/jquery-session.js"></script>
<script src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>
<script src="calendar/moment.min.js"></script>
<script src="calendar/fullcalendar.min.js"></script>
<script src="assets/js/jquery.msgbox.min.js"></script>
<script type="text/javascript" src="http://code.jquery.com/ui/1.9.2/jquery-ui.js"></script>
<script type="text/javascript" src="http://www.pureexample.com/js/lib/jquery.ui.touch-punch.min.js"></script>

<script src="assets/plugins/jquery/jquery-migrate.min.js"></script>
<script src='//cdn.tinymce.com/4/tinymce.min.js'></script>
<script type="text/javascript" src="//apis.daum.net/maps/maps3.js?apikey=a41bbfd5db3d2e44b63d4711d5c8d15f&libraries=services"></script>
<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/modules/exporting.js"></script>

   <style type="text/css">
   @media screen and (min-width: 768px) {
	
	#cardDetail .modal-dialog  {width:1000px;}
	#planSearchModal .modal-dialog {width:1200px;}
}

body{
   font-family:'Malgun Gothic';
   padding:20px;
}

.bar {
    width: 100px;
    height: 20px;
    margin: 2px;
    border: 1px solid black;
    background-color: lightgreen;
    text-align: center;
    float: left;
    margin: 2px;
    padding: 2px;
    cursor: pointer;
    border-radius: 3px;
}
 
.list {
    /* background-color: #FFFFFF;  */
    border: 1px solid;
    border-radius: 2em;
    margin: 5px;
    padding : 5px;
    font-size: 20px;
    word-break:break-all;
    

}
 
 #timetable{
     height: 800px;
    border: none;
    /* border-bottom-color: #fff;
    border-top-color: #fff;
    border-right-color: #fff;
    border-left-color: #D7CECC; */
 }
 
.items .ui-selected {
    background: red;
    color: white;
    font-weight: bold;
}
 
.items {
    list-style-type: none;
    margin-top: 30px;
    min-height:10px;
    padding: 0px;
 
    
}
 
.items li {
    margin:2px;
    padding: 2px;
    cursor: pointer;
    border:#fff;
    border-bottom: 2px solid #FFE72C; 
    border-radius: 1px;
    width: 75%;
    margin-bottom: 15px;
    margin-left:7px;
    margin-top: 15px;
}
 
.weekday {

    width: 300px;
    padding: 5px; 
    border: 2px solid #EDE1E7;
    border-radius: 10px;
    margin: 20px;
}
 
.listTitleCancel{
       float:right;
       background: none;
       border: #fff;
 }
.listTitleBtn{
       float:right;
       background: none;
       border: #fff;
 }
 
 .listTitleBtn:hover, .listTitleBtn:active {
   border-bottom: 2px solid #2694e8;
}

 .listTitleCancel:hover, .listTitleCancel:active {
   border-bottom: 2px solid #2694e8;
}

 .cardInsert.btn-primary:hover, .cardInsert.btn-primary:active {
   border-bottom: 2px solid #2694e8;
}

 .cardCancel.btn-primary:hover, .cardCancel.btn-primary:active {
   border-bottom: 2px solid #2694e8;
}

 .cardInsert.btn-primary, .cardCancel.btn-primary{
    float: right;
    background: none;
    color: black;
    border: #fff;
 }


.availablelist {
    background-color: orange;
    display: inline;
}
    
    #draggablePanelList .panel-heading {
        cursor: move;
    } 
   #calendar_attr {
  
      margin: 40px 10px; 
      padding: 0; 
      font-family: "Lucida Grande",Helvetica,Arial,Verdana,sans-serif;
      font-size: 14px;
   }

   #calendar_container {
      /* position:relative; */
      top:700px;
      max-width: 700px;
      /* margin: 0 auto; */
   }
   
    #sist{
       /* width:4500px; */
       height: 700px;
          
    }
    #cardList{
    }

    .listHeader{
       margin: 2px;
       font: bold;
       font-size: 25px;
       
    }

   .footText{
       width:280px;
    }
    .footInput{
        width : 280px; 
        text-align : center;
        margin : 5px;
        height: 50px;
    } 
    .footInput textarea{
       width:280px;
    }
    .cardInsert{
       margin-left: 100px;
    }
    .listHeader{
       margin:5px;
       height: 20px;
    }
    .listHeader p{
       color :black;
       font-size:20px;
       margin: 5px;
       margin-bottom: 10px
    }
    #calendar{

    }
   #cardDetail {
    width:100%;
    overflow-y: hidden;
   }
.modal-dialog 
{

}
.fc-time{
   display : none;
}

#blah {
   width:110px;
   height:80px;
   text-align: center;
   }
.addListBtn {
    background-color: transparent;
    color: black;
    display: block;
    height: 100%;
   /*  line-height: 40px; */
    text-decoration: none;
    /* width: 100%; */
    /* text-align: left; */
    cursor:pointer;
}


.addListTxt{
   background-color: transparent;
    color: black;
    display: block;
    height: 40px;
    line-height: 40px;
    text-decoration: none;
    width: 100%;
    text-align: center;
    border:inherit;
    margin:10px;
}

.btn-primary.footText{
    color: #fff;
    background: none;
    border-color: #fff;
    border: #fff;
    margin-bottom: 5px;
}

.btn.btn-sm.btn-default.listDelete{
float:right;
text-align: center;
width: 30px;
height: 30px;
background: none;
border: #fff;
margin:0px;
padding: 0px;
}

#listtitleaddbtn{
text-align: center;
}

#planSearchModal{
	overflow: hidden;
}

/* #calendarunder{
    height: 30px;
    background:#D3F1B9;
    width: 100px;
}

#calendarunder img{
margin-right:10px;
} */

.ui-progressbar-value{
background: #BCF12A;
}

#datetit{
width: 110px;
height: 27px;
}
#labeltit{
width: 80px;
height: 27px;
margin-bottom: 5px;
}
body {
 background: url("calendar/images/back3.jpg");
 background-repeat: no-repeat;
 background-position: center center;
/*  background: #FFE288; */
 } 
 
 #cardDelete{
 background: none;
 border: none;
  float: left;
 }

/* 일정검색 Modal 넣기 */
	.modal-header, h4, .close {
	    background-color: #5cb85c;
	    color:white !important;
	    text-align: center;
	    font-size: 30px;
}
	.modal-footer {
	    background-color: #f9f9f9;
}
 #commentNick{
font-weight: bold;
 }
    </style> 
<script type="text/javascript">
    $(document).ready(function(){
		searchCheck();
    	cardTitleLimit();
    	listTitleLimit();
        $("#userDetail2").click(function() {
            var emailChage = $('#emailChage').val();
            var nicknameChange = $('#nicknameChange').val();
            var pwdChange = $('#pwdChange').val("");
            var newPwdChange = $('#newPwdChange').val("");
            var newPwdChange2 = $('#newPwdChange2').val("");
            $("#UserInfoChangeModal").modal();
        });
        
 
      //일정 검색 기능          
	  $("#searchForm").keypress(function (e) {
		  if ((e.which && e.which == 13) || (e.keyCode && e.keyCode == 13)) {
		      $('#btnSearch').click();
		      return false;
		  } else {
		      return true;
		  }
      });
      
      $("#btnSearch").click(function(){
        	var target = "planSearch.do?searchRadios=";
        	var searchRadios = document.querySelector('input[name="searchRadio"]:checked').value;
        	
            var inputSearch = $("#inputSearch").val();
            
             target = target+searchRadios;
             target = target +"&inputSearch=";
             target = target +inputSearch;
            if(inputSearch=="" || inputSearch==null){
                $('#inputSearch').focus();
            }else{
		        	$("#planSearchModal .modal-dialog").load(target, function() {
		            $("#planSearchModal").modal("show");
		            $.session.set('logSearchInput', inputSearch);
		            $.session.set('logSearchType', searchRadios);
	        	});
            }
        }); 
      
        $(this).on("click",".searchUl",function(){
        	var cno= $(this).siblings(".cno").val();
        	 var target = "detail.do?no=card";
			    target= target+cno.trim();
				$("#cardDetail .modal-dialog").load(target, function() {
					$("#cardDetail").modal("show");
				});
        });
       /* $("#btnSearch").click(function(){
            var searchRadios = document.querySelector('input[name="searchRadio"]:checked').value;
            $.alert(searchRadios);
            var inputSearch = $("#inputSearch").val();
            if(inputSearch=="" || inputSearch==null){
                $('#inputSearch').focus();
            } else {                
                $.ajax({
                    url : 'planSearch.do',
                    type : 'post',
                    dataType:'json',
                    data : {
                        "searchRadios" : searchRadios,
                        "inputSearch" : inputSearch
                    },
                    success : function(data) {
                    	$("#planSearchModal").modal();
                    }
                });
            }
        });
        
 */
        $('#calendar').fullCalendar({ 
            theme: true,
            header: {
              left: 'today',
              center: 'prev title next'
              ,right: 'month'
            },
            defaultDate: '2016-05-02',
            selectable: true,
            selectHelper: true,
            eventDurationEditable: false,   // 이벤트 resize disable
    
    /*      select: function(start, end) {
                
                var eventData;
                if (title) {
                    eventData = {
                        title: title,
                        start: start,
                        end: end
                    };
                    
                }
                $('#calendar').fullCalendar('unselect');
            }, */ //이벤트 추가함수
            editable: true,
            eventDrop: function(event, delta, revertFunc) {
                var startdate=event.start.format('YYYY/MM/DD');
                var enddate=event.end.format('YYYY/MM/DD');
                var cardno=event.id;
                 $.ajax({
                     url:'dateDrag.do',
                     type:'post',
                     dataType:"json",
                     data:{"startdate":startdate , "enddate":enddate ,"no":cardno},
                     success:function(data){
                
                             }
                   });
                
            },

            	eventClick: function(event) {
					//ev.preventDefault();
				    var target = "detail.do?no=";
				    var cdno = 'card'+event.id;
				    target= target+cdno.trim();
					$("#cardDetail .modal-dialog").load(target, function() {
						
							$('#sdate').datepicker({ dateFormat: 'yy/mm/dd'});
						    $('#sdate').datepicker("option", "maxDate", $("#edate").val());
						    $('#sdate').datepicker("option", "onClose", function ( selectedDate ) {
						        $("#edate").datepicker( "option", "minDate", selectedDate );
						    });
						    $('#edate').datepicker({ dateFormat: 'yy/mm/dd'});
						    $('#edate').datepicker("option", "minDate", $("#sdate").val());
						    $('#edate').datepicker("option", "onClose", function ( selectedDate ) {
						        $("#sdate").datepicker( "option", "maxDate", selectedDate );
						    });
						    
						    //여기부터 지도
						    $("#txtAddress").keydown(function(e) {
			                      if (e.keyCode == 13) {
			                    	  divHide();
			                    	  $("#modalMap").css("display","block");
			                    	  $("#mapApp").hide();
			                     		/* map.relayout(); */
			                       var searchPlace = $(this).val();   
			                    	// 마커를 클릭하면 장소명을 표출할 인포윈도우 입니다
			                    	
			                    	  var infowindow = new daum.maps.InfoWindow({zIndex:1});

                                      var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
                                          mapOption = {
                                              center: new daum.maps.LatLng(37.566826, 126.9786567), // 지도의 중심좌표
                                              level: 1 // 지도의 확대 레벨
                                          };  

                                      // 지도를 생성합니다    
                                      var map = new daum.maps.Map(mapContainer, mapOption); 

                                      // 장소 검색 객체를 생성합니다
                                      var ps = new daum.maps.services.Places(); 

                                      // 키워드로 장소를 검색합니다
                                      ps.keywordSearch(searchPlace, placesSearchCB); 

                                      // 키워드 검색 완료 시 호출되는 콜백함수 입니다
                                      function placesSearchCB (status, data, pagination) {
                                          if (status === daum.maps.services.Status.OK) {

                                              // 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
                                              // LatLngBounds 객체에 좌표를 추가합니다
                                              var bounds = new daum.maps.LatLngBounds();

                                              for (var i=0; i<data.places.length; i++) {
                                                  displayMarker(data.places[i]);    
                                                  bounds.extend(new daum.maps.LatLng(data.places[i].latitude, data.places[i].longitude));
                                              }       


			                    	          // 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
			                    	          map.setBounds(bounds);
			                    	      } 
			                    	  }


                                      // 지도에 마커를 표시하는 함수입니다
                                      function displayMarker(place) {
                                          
                                          // 마커를 생성하고 지도에 표시합니다
                                          var marker = new daum.maps.Marker({
                                              map: map,
                                              position: new daum.maps.LatLng(place.latitude, place.longitude) 
                                          });

                                          // 마커에 클릭이벤트를 등록합니다
                                          daum.maps.event.addListener(marker, 'click', function() {
                                              // 마커를 클릭하면 장소명이 인포윈도우에 표출됩니다
                                              infowindow.setContent('<div style="padding:5px;font-size:12px;">' + place.title + '</div>');
                                              infowindow.open(map, marker);
                                          });
                                      }

                                        
                                  }
                              });  //지도 끝
                            
                    });
                    
                    $("#cardDetail").modal("show"); 
                   /*이벤트 클릭시 발생하는 함수  $.alert("이벤트 클릭시 발생하는 함수");*/
                   
                },
            eventLimit: true, // allow "more" link when too many events
            events: [
        
            
            ]
        });
        calInit();
        function calInit(){
             <c:forEach var="vo" items="${clist}">
                var events=new Array();   
                event = new Object();       
                event.title = "${vo.title}"; 
                event.start = "${vo.startdate}"+" 00:00:00";
                event.end = "${vo.enddate}"+" 23:59:00";
                event.id ="${vo.no}";
                var labelC =  "${vo.label}";
                
                if(labelC==""){
                event.color =  "green";
                }else{
                   event.color = labelC;
                }
                event.allDay = false;
                events.push(event);
               
                $('#calendar').fullCalendar('addEventSource',events);
                
             </c:forEach>
             
        }
        $(this).on("click",".list",function(){
            //ev.preventDefault();
            var target = "detail.do?no=";
            target= target+$(this).attr("id");
            $("#cardDetail .modal-dialog").load(target, function() {
        
                    $('#sdate').datepicker({ dateFormat: 'yy/mm/dd'});
                    $('#sdate').datepicker("option", "maxDate", $("#edate").val());
                    $('#sdate').datepicker("option", "onClose", function ( selectedDate ) {
                        $("#edate").datepicker( "option", "minDate", selectedDate );
                    });
                    $('#edate').datepicker({ dateFormat: 'yy/mm/dd'});
                    $('#edate').datepicker("option", "minDate", $("#sdate").val());
                    $('#edate').datepicker("option", "onClose", function ( selectedDate ) {
                        $("#sdate").datepicker( "option", "maxDate", selectedDate );
                    });
                    
                    //여기부터 지도
                    $("#txtAddress").keydown(function(e) {
                          if (e.keyCode == 13) {
                        	  divHide();
                              $("#modalMap").css("display","block");
                              $("#mapApp").hide();
                                /* map.relayout(); */
                           var searchPlace = $(this).val();   
                            // 마커를 클릭하면 장소명을 표출할 인포윈도우 입니다
                            showMap(searchPlace);
                            var cardno = $('#cardNo').val(); 
                            $.ajax({
                                  url:'mapUpdate.do',
                                  type:'post',
                                  dataType:"json",
                                  data:{"loc":searchPlace,
                                            "no":cardno},
                                  success:function(data){
                                     /* $.alert("Yes"); */
                                  }
                              });  

                                
                          }
                      });  //지도 끝
                    
            
                    
                    
            });
            $("#cardDetail").modal("show"); 
            /* $('#cardDetail').modal({
                remote : 'detail.do'
            }); */
        });
        $('#cardDetail').on('hidden.bs.modal', function () {
             location.reload();

            });
        $('#planSearchModal').on('hidden.bs.modal', function () {
             $.session.set("logSearchInput","none");
             $.session.set("logSearchType","none");

           });
         $("#timetable .items").sortable({
             connectWith: "ul",
             dropOnEmpty: true,
             update:function(e,ui){    //드롭이 시작한곳에서 한번 실행된후 발생한곳에서 또한번실행
           var listno= $(this).parents('.weekday').attr('id');
           var draghtml = $(this).parents('.weekday').html();
           var ehtml = "<div class='weekday col-md-1' id="+listno+">"+draghtml+"</div>"; 
      	   var cardno= ui.item.attr('id');
                  $.ajax({
                     url:'dragEvent.do',
                     type:'post',
                     dataType:"json",
                     data:{"listno":listno , "html":ehtml},
                     success:function(data){
                     
                             }
                   });  
             	},
/*             	stop:function(event,ui){
           		  var listno= $(this).parents('.weekday').attr('id'); 
           		  alert(listno);
          		},  */
                 receive: function (event, ui) {
               	  var listno= $(this).parents('.weekday').attr('id'); 
           		  var cardno= ui.item.attr('id');
           	     $.ajax({
                     url:'cardListnoUpdate.do',
                     type:'post',
                     dataType:"json",
                     data:{"listno":listno , "cardno":cardno},
                     success:function(data){
                             }
                   }); 
           		}
         
         	});

   
        $(this).on("click",".footText",function(){
            $('.footText').show();
            $(this).css('display', 'none');
            $('.footInput').hide();
            $(this).siblings(".footInput").css('display', 'inline'); 
            $(this).siblings('.footInput').find('textarea').focus();
        });
        $(this).on("click",".cardInsert",function(){
            var text = $(this).siblings('textarea').val();
            if(text.trim()==""){
            	$.alert("카드 제목을 입력 해주세요.");
            }else{
            var cardno = "tmpcard";
            $(this).siblings('textarea').val("");
            $(this).parents(".listFoot").siblings('.items').append("<li class='list' id="+cardno+">"+text+"</li>");
            $(this).parent(".footInput").css('display', 'none');
            $(this).parent(".footInput").siblings('.footText').css('display', 'inline');
            
            
            $.ajax({
                 url:'createCard.do',
                 type:'post',
                 dataType:"json",
                 data:{"title":text},
                 success:function(data){
                     cardno = data;
                    $('#tmpcard').attr('id', "card"+cardno);
                    var listno= $("#card"+cardno).parents('.weekday').attr('id');
                    var draghtml = $("#card"+cardno).parents('.weekday').html();
                    var ehtml = "<div class='weekday col-md-1' id="+listno+">"+draghtml+"</div>";
                    $.ajax({
                         url:'dragEvent2.do',
                         type:'post',
                         dataType:"json",
                         data:{"listno":listno , "html":ehtml,"cardno":cardno},
                         success:function(data){
                        	 
                        	 
                         }
                     });               
                 }
            });
           }
        });
      $(this).on("click",".cardCancel",function(){ 
          
          $('.footText').show();
          $(this).parents('.footInput').hide();
          
      });
        $(this).on("click",".hashLink",function(){
        	$('#cardDetail').modal('hide');
        	var inputSearch=$(this).text().substring(2);
        	$.session.set('logSearchInput', inputSearch);
            $.session.set('logSearchType', '3');
        });
        $(this).on("click",".addListBtn",function(){
            /*  var listTitle =""; */
            $(this).css('display','none');
            $(this).siblings('.addListPanel').show();
            $(this).siblings('.addListPanel').find('.addListTxt').focus();
            
        });
      //모달에서 메일보내기 버튼 클릭 액션
        $(this).on("click", "#mailBtn",function() {
         obj = document.getElementById('mailDiv');
         if(obj.style.display == "none") {
             divHide();
             $("#mailDiv").css("display","inline");
         } else {
             $("#mailDiv").css("display","none");
         }
      });
         
      //일정 메일 보내기
        $(this).on("click","#sendMail",function(){
	  			//$("#mailDiv").css("display","none");
	  			//$("#mailBtn").css("display",'inline');
	  			var toMail = $('#toMail').val();
	  			var planSubject = $('#glypTitle').html();
	  			var planContent = $('#showContent').html();
	  			var sdate = $('#sdateDiv').text();
	  			var edate = $('#edateDiv').text();
	  			$("#mailDiv").hide();
	  			$.alert("일정 전송을 완료했습니다.");
	  			$.ajax({
	  			    url:'sendMail.do',
	  			    type:'post',
	  			    dataType:"json",
	  			    data:{"toMail": toMail,
	  			    		"planSubject":planSubject,
	  			    		"sdateDiv":sdate,
	  			    		"edateDiv":edate,
	  			    		"planContent":planContent},
	  			    		success:function(data){

	  			    		 
	  			    		$('#toMail').val("");
	  			    			divHide();
	  			            }
	  			});
	  			
        });  
        
        $(this).on("click","#cancelMail",function(){
            $("#mailDiv").css('display','none');
            $('#toMail').val("");
            divHide();
        }); 
        $(this).on("click",".listTitleCancel",function(){
            $(this).parent('.addListPanel').hide();
            $(this).parent('.addListPanel').siblings('.addListBtn').show();
            $(this).siblings('.addListTxt').val("");
        });

        $(this).on("click",".listTitleBtn",function(){
            
            var listTitle= $(this).siblings('.addListTxt').val();
            if(listTitle.trim()==""){
            	$.alert('리스트 제목을 입력해주세요');
            }else{
            $(this).parent('.addListPanel').parent('.weekday').hide();
            $.ajax({
                url:"getListNo.do",
                type:'post',
                success:function(data){
                    listno=data;
                    var tmpHtml = "<div class='weekday col-md-1' id=list"+listno+"><div class='listHeader'><p>"+listTitle+
                    "<button type='button' class='btn btn-sm btn-default listDelete'> "+
                    "<img src='calendar/images/deletelist.png'></button></p>"+
                    "</div><ul class='items'></ul><div class = 'listFoot'> "+
                    "<button class='btn-primary footText' id='listtitleaddbtn'><img src='calendar/images/plus-hover.png'></button><div class='footInput' style='display:none;'> "+
                    " <textarea cols='30' rows='3' class='cardText'></textarea>"+
                    " <input type='button' value='취소' class='cardCancel btn-primary'/><input type='button' value='추가' class='cardInsert btn-primary'/> "+
                    "</div></div></div> ";
                    $('#timetable').append(tmpHtml);

                    
                 $('#timetable').append("<div class='weekday col-md-1'><div class='addListBtn'><span><img src='calendar/images/createlist.png' ></span></div> "+
                        "<div class='addListPanel' style='display:none;'><input name='name' class='addListTxt' type='text' placeholder='List Title'/> "+
                        " <input type='button' value='취소' class='listTitleCancel' /><input type='button' value='추가' class='listTitleBtn' />"+
                        "</div><div>");
              
                    cardTitleLimit();
                    listTitleLimit();
                    
                    $.ajax({
                            url:'listAdd.do',
                            type:'post',
                            dataType:"json",
                            data:{"title":listTitle , "html":tmpHtml , "no":listno},
                            success:function(data){
                                /* $.alert(tmpHtml); */
                            }
                    });
                    
                    
                    $("#timetable .items").sortable({
                        connectWith: "ul", 
                        dropOnEmpty: true,
                        update:function(e,ui){    //드롭이 시작한곳에서 한번 실행된후 발생한곳에서 또한번실행
	                      var listno= $(this).parents('.weekday').attr('id');
	                      var draghtml = $(this).parents('.weekday').html();
	                      var ehtml = "<div class='weekday col-md-1' id="+listno+">"+draghtml+"</div>"; 
	                 	  var cardno= ui.item.attr('id');
                             $.ajax({
                                url:'dragEvent.do',
                                type:'post',
                                dataType:"json",
                                data:{"listno":listno , "html":ehtml},
                                success:function(data){
                                    
                                        }
                              });  
                             
                        	},
                        /* 	stop:function(event,ui){
                       	
                      		},  */
                            receive: function (event, ui) {
                          	  var listno= $(this).parents('.weekday').attr('id'); 
                       		  var cardno= ui.item.attr('id');
                       	     $.ajax({
                                 url:'cardListnoUpdate.do',
                                 type:'post',
                                 dataType:"json",
                                 data:{"listno":listno , "cardno":cardno},
                                 success:function(data){
                                         }
                               }); 
                       		}
             
                    	});
               
                     
                }
             });  
            }
        }); 
        
        
        
        $("#insertContent").tooltip();
        $(this).on("click","#insertContent",function(){
            
            $(this).parent("#contentText").siblings("#newTA").css('display','inline');
            $(this).parent("#contentText").siblings("#showContent").css('display','none');
            $(this).css('display','none');
            var content = $("#showContent").html();
            tinymce.init({
              selector: '#mytextarea',
              height: 200,
              theme: 'modern',
              plugins: [
                'advlist autolink lists link image charmap print preview hr anchor pagebreak',
                'searchreplace wordcount visualblocks visualchars code fullscreen',
                'insertdatetime media nonbreaking save table contextmenu directionality',
                'emoticons template paste textcolor colorpicker imagetools'
              ],
              toolbar1: 'insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image',
              toolbar2: 'print preview media | forecolor backcolor emoticons',
              image_advtab: true,
              templates: [
                { title: 'Test template 1', content: 'Test 1' }
              ],
              content_css: [
                '//fast.fonts.net/cssapi/e6dc9b99-64fe-4292-ad98-6974f93cd2a2.css',
                '//www.tinymce.com/css/codepen.min.css'
              ]
               
             });
            tinyMCE.activeEditor.setContent(content);
             
        });
        $(this).on("click","#contentInsert",function(){
            var cardno = $('#cardNo').val();
            var tmp = tinyMCE.activeEditor.getContent();
            $.ajax({
                url:'contentUpdate.do',
                type:'post',
                dataType:"json",
                data:{
                        "content" : tmp,
                        "no":cardno},
                success:function(data){
                   /* $.alert("Yes"); */
                }
          });
            $(this).parent("#newTA").css('display',"none");
            $(this).parent("#newTA").siblings("#showContent").css('display',"inline");
            $(this).parent("#newTA").siblings("#showContent").empty();
            $(this).parent("#newTA").siblings("#showContent").append(tmp);
            $(this).parent("#newTA").siblings("#contentText").children("#insertContent").css('display',"inline");
            // hash
            var message = tinyMCE.activeEditor.getContent();
            $('#hashready').append(message);
            var a=$('#hashready').text();
            var hasht ="";
            a = a.replace(/\n/gi, " ");

            var splitedArray = a.split(' ');
            var linkedContent = "";
          for(var word in splitedArray){
            word = splitedArray[word];
            if(word.indexOf('#')==0){
              hasht += (word.trim()+",");    
              word = '<a href=# class=hashLink>'+word+'</a>';
                  
           }
          else{
                    word='';  
          }
            linkedContent += word+' ';
            
          }
            var cardno = $('#cardNo').val();
            $.ajax({
              url:'hashInsert.do',
              type:'post',
              dataType:"json",
              data:{
                      "hash" : hasht,
                      "no":cardno},
              success:function(data){
                 /* $.alert("Yes"); */
              }
        });
            
            $('#hashtag').css('display',"inline");
            $("#hashready").empty();
            $('#hashtag').empty();
            $('#hashtag').append(linkedContent);
            linkedContent="";
        });
        
        $(this).on("click","#contentCancel",function(){
            var tmp = tinyMCE.activeEditor.getContent();
            $(this).parent("#newTA").css('display',"none");
            $(this).parent("#newTA").siblings("#showContent").css('display',"inline");
            $(this).parent("#newTA").siblings("#contentText").children("#insertContent").css('display',"inline");
       });
        
       $(this).on("click","#priorityBtn",function(){
            obj = document.getElementById('priorityDiv');
            if(obj.style.display == "none"){
                divHide();
                $("#priorityDiv").css('display','inline');
            }else{
                $("#priorityDiv").css('display','none');
            }           
      });
       
      $(this).on("click","#priorityInsert",function(){
            $("#priorityDiv").css('display','none');
            $(".prioritygraph").show();
            var op1 = $(':radio[name="option1"]:checked').val();
            //$.alert(op1);
            var op2 = $(':radio[name="option2"]:checked').val();
            //$.alert(op2);
            var cardno = $('#cardNo').val();
            $.ajax({
                url:'priorityUpdate.do',
                type:'post',
                dataType:"json",
                data:{
                        "op1":op1,
                        "op2":op2,
                        "no":cardno},
                success:function(data){
                   /* $.alert("Yes"); */
                }
          });
            $('#labelDiv input').prop('checked', false);
            drawChart(op1,op2);
            divHide();
            
      });
      $(this).on("click","#priorityCancel",function(){
        $("#priorityDiv").css('display','none');
        $('.prioritygraph').hide();
        var cardno = $('#cardNo').val();
        $.ajax({
            url:'priorityDelete.do',
            type:'post',
            dataType:"json",
            data:{
                    "no":cardno},
            success:function(data){
               /* $.alert("Yes"); */
            }
    	});

      });
      $(this).on("click","#checkBtn",function(){
          obj = document.getElementById('checkDiv');
          if(obj.style.display=="none"){
              
            divHide();
            $("#checkDiv").css("display","inline");
          }else{
            $("#checkDiv").css("display","none");
          }
          
      });
      $(this).on("click","#checkInsert",function(){
    	 if($("#checklistadd").css("display")=="inline"){
    		$. alert("이미 체크리스트 존재합니다.");
    		 return;
    	 }
    		  
    	  
          $("#checkDiv").css("display","none");
          $("#checklistadd").css("display",'inline');
          var title = $('#checkTitle').val();
          $('#checklisttitle').text(title);
          var cardno=$('#cardNo').val();
        
          $.ajax({
             url:'checkCreate.do',
             type:'post',
             dataType:"json",
             data:{"title":title ,"no":cardno},
             success:function(data){

                     }
           });
          $('#checkTitle').val("");
          divHide();
      });
    $(this).on("click","#checkCancel",function(){
          $("#checklistadd").empty();
          var cardno=$('#cardNo').val();
            
          $.ajax({
             url:'checkListDelete.do',
             type:'post',
             dataType:"json",
             data:{"no":cardno},
             success:function(data){

             }
           });
          $('#checkTitle').val("");
          divHide();
      });
        $(this).on("click","#dateBtn",function(){
             obj = document.getElementById('dateDiv');
             if(obj.style.display=="none"){
                 divHide();
                $("#dateDiv").css("display","inline");
             }else{
                $("#dateDiv").css("display","none");
             }
        });
        $(this).on("click","#btnMap",function(){
            obj = document.getElementById('mapApp');
            if(obj.style.display=="none"){
                divHide();
                $("#mapApp").css("display","inline");
        }
            else
                $("#mapApp").css("display","none");
            
/*          obj = document.getElementById('modalMap');
            if(obj.style.display=="block")
                $("#modalMap").css("display","none"); */
        });
        $(this).on("click","#labelBtn",function(){
            obj = document.getElementById('labelDiv');
            if(obj.style.display=="none"){
                divHide();
                $("#labelDiv").css("display","inline");
            }
            else{
                $("#labelDiv").css("display","none");
            }
        });
       $(this).on("click","#labelDelete",function(){
    	   $('#labelDiv').hide(); 
    	   $('#modalLabel').empty();
    	   var cardno = $('#cardNo').val();
           $.ajax({
               url:'labelDelete.do',
               type:'post',
               dataType:"json",
               data:{
                       "no":cardno},
               success:function(data){
                
               }
         });

       });
       $(this).on("click","#labelInsert",function(){
              
            var cardno = $('#cardNo').val();
            $('#labelDiv').hide();
              $('#modalLabel').empty();
              var labelColor = $(':radio[name="option10"]:checked').val();
              $.ajax({
                    url:'labelUpdate.do',
                    type:'post',
                    dataType:"json",
                    data:{
                            "label" : labelColor,
                            "no":cardno},
                    success:function(data){
                     
                    }
              });
              
              var title = $('#glypTitle').text();
              var startDate= $('#sdateDiv').text().substring(5);
              var endDate=$('#edateDiv').text().substring(5);
              if(startDate!=""){
                  $('#calendar').fullCalendar( 'removeEvents', cardno);
                  var events=new Array();     
                  event = new Object();       
                  event.title = title; 
                  event.start = startDate+" 00:00:00";    // its a date string
                  event.end = endDate+" 23:59:00";
                  event.id =  cardno;
                  event.color = labelColor;
                  
                  event.allDay = false;
                  events.push(event);
                  
                  $('#calendar').fullCalendar('addEventSource',events); 
              }
              $('#modalLabel').append("<div id='labeltit'><img src='calendar/images/label-icon.png'>&nbsp;&nbsp;&nbsp;<b>라벨</b></div><div id='labelColor' style='width:50px; background-color:"+labelColor+" '>&nbsp;</div> ");
              divHide();
          });
       
        
       $(this).on("click","#mapSearch",function(){
    	   $("#mapApp").hide();
            $("#modalMap").css("display","block");
            var searchPlace = $('#txtAddress').val();   
            // 마커를 클릭하면 장소명을 표출할 인포윈도우 입니다
            showMap(searchPlace);
            var cardno = $('#cardNo').val(); 
            $.ajax({
                  url:'mapUpdate.do',
                  type:'post',
                  dataType:"json",
                  data:{"loc":searchPlace,
                            "no":cardno},
                  success:function(data){
                 
                  }
              }); 
            $('#txtAddress').val("");
            divHide();
            
        });
          $(this).on("click","#lockaddBtn",function(){
                 var op;
                 var cardno = $('#cardNo').val(); 
                 obj = document.getElementById('lockchange');
                 if(obj.style.display=="inline"){
                     $("#lockchange").css("display","none");
                     $("#lockchacom").css("display",'inline');
                     op = 2;
                }
                 else{
                     $("#lockchange").css("display","inline");
                     $("#lockchacom").css("display",'none');
                     op = 1;
                }
                 $.ajax({
                      url:'openUpdate.do',
                      type:'post',
                      dataType:"json",
                      data:{"open":op,
                                "no":cardno},
                      success:function(data){
                     
                      }
                  }); 
                 divHide();
              });
       $(this).on("click","#mapCancel",function(){
            $("#modalMap").css("display","none");
            var cardno = $('#cardNo').val(); 
            $.ajax({
                  url:'mapDelete.do',
                  type:'post',
                  dataType:"json",
                  data:{
                            "no":cardno},
                  success:function(data){
                     
                  }
              });
            divHide();
        });
       $(this).on("click","#fileDelete",function(){
         $("#modalFile").hide();
         var cardno= $('#cardNo').val();
         $.ajax({
             url:'fileDelete.do',
             type:'post',
             dataType:"json",
             data:{"no":cardno},
             success:function(data){
                
             }
             
        });
         divHide();
       });
       $(this).on("click","#fileInsert",function(){
             $("#modalFile").show();
             $("#fileUpDiv").hide();
             var data = new FormData();
             /* var cardno = $('#cardNo').val(); */ 
             $.each($('#fileUpload')[0].files, function(i, file) {          
               data.append('file-' + i, file);
           });
             $.ajax({
               url:'fileUpload.do',
               type:'post',
               dataType:"text", 
               data:data,
              processData: false,
              contentType: false,
               success:function(data){
                     $('#fileName').empty();
                     $('#fileName').text(data);
                     var cardno= $('#cardNo').val();
                     $.ajax({
                         url:'fileInsert.do',
                         type:'post',
                         dataType:"json",
                         data:{"no":cardno , "file":data},
                         success:function(data){
                         }
                    });
                     
               }
           });
             divHide();
       });
       $(this).on("click","#glydown",function(){
            var fname = $('#fileName').text();
            //window.open("c:\\download\\"+fname);
          // window.location.href("c:\\download\\"+fname); 
              $.ajax({
              url:'filedownload.do',
              type:'post',
              dataType:"json", 
              data:{"name":fname},
              success:function(data){
                location.href = "filedownload.do?name="+fname;
              },
              complete : function(data) {
                location.href = "filedownload.do?name="+fname;
              }
          });  
       });
       $(this).on("click","#modalBdClose",function(){
             $('#cardDetail').modal('hide');
          });
       $(this).on("click","#dateInsert",function(){
              $("#dateDiv").css("display","none");
              var title = $('#glypTitle').text();
              var id = $('#cardNo').val();
              var startDate= $('#sdate').val();
              var endDate=$('#edate').val();
              var labelColor = $('#labelColor').css("background-color");
              var cardno = $('#cardNo').val();
              $('#calendar').fullCalendar( 'removeEvents', cardno);
              var events=new Array();     
              event = new Object();       
              event.title = title; 
              event.start = startDate+" 00:00:00";    // its a date string
              event.end = endDate+" 23:59:00";
              event.id =  id;
              if(labelColor==null){
              event.color = "green";
              }else{
                 event.color = labelColor;
              }
              event.allDay = false;
              events.push(event);
              
              $('#calendar').fullCalendar('addEventSource',events);
              $('#modalDate').empty();
              $('#modalDate').append("<div id='datetit'><img src='calendar/images/calendar-icon.png'>&nbsp;&nbsp;&nbsp;<b>일정날짜</b></div><div id='sdateDiv'> <b id='startD'>시작일 </b>: "+startDate+"</div>");
              if(endDate!=""){
                 $('#modalDate').append("<div id='edateDiv'> <b id='endD'>종료일 </b>: "+endDate+"</div>");
              }
              
              
              $.ajax({
                  url:'dateUpdate.do',
                  type:'post',
                  dataType:"json",
                  data:{"start":startDate,
                            "end":endDate,
                            "no":cardno},
                  success:function(data){
                
                  }
              });
              divHide();
           });
       
       
       $(this).on("click","#dateDelete",function(){
    	   $('#modalDate').empty();
    	   $("#dateDiv").hide();
    	   var cardno = $('#cardNo').val();
    	   $('#calendar').fullCalendar( 'removeEvents', cardno);
    	   $.ajax({
               url:'dateDelete.do',
               type:'post',
               dataType:"json",
               data:{"no":cardno},
               success:function(data){
             
               }
           });
       });
       $(this).on("click",".listDelete",function(){
         var deleteid=$(this).parents(".weekday").attr("id"); 
         if (confirm('해당 리스트를 삭제 하시겠습니까?')) {
              $.ajax({
                  url:'listDelete.do',
                  type:'post',
                  dataType:"json",
                  data:{"id":deleteid},
                  success:function(data){
                	  location.reload();
                  }
          });
           

              $(this).parents(".weekday").remove();    
          } else {
              // Do nothing!
          }
        
     });
     
   
      $(this).on("click","#carddeleteBtn",function(){
         if (confirm('해당 카드를 삭제 하시겠습니까?')) {
             var cardno = $('#cardNo').val(); 
             var cardid='card'+cardno;
             
             var listno=$('#'+cardid).parents('.weekday.col-md-1').attr("id");
             $('.weekday.col-md-1 #'+cardid).remove();
             var uhtml=$('#'+listno).html();
             var ehtml = "<div class='weekday col-md-1' id="+listno+">"+uhtml+"</div>";
             $.ajax({
                 url:'cardDelete.do',
                 type:'post',
                 dataType:"json",
                 data:{"id":cardid},
                 success:function(data){
                         $.ajax({
                          url:'cardUpdate.do',
                          type:'post',
                          dataType:"json",
                          data:{"listno":listno , "html":ehtml},
                          success:function(data){
                          } 
                     }); 
                 }
         });
             $('#cardDetail').modal('toggle');
                
              
             
         } else {
             
         }
         
     });
  
        $(this).on("click","#fileUpButton",function(){
            obj = document.getElementById('fileUpDiv');
            if(obj.style.display=="none"){
                divHide();
                $("#fileUpDiv").css("display","inline");
            }
            else
                $("#fileUpDiv").css("display","none");
        });
        $(this).on("click","#fileDelete",function(){
            $("#fileUpDiv").css('display','none');
        });
/*      $(this).ready(function(){
            function readURL(input) {
                if (input.files && input.files[0]) {
                    var reader = new FileReader();
                    reader.onload = function (e) { 
                        $('#blah').attr('src', e.target.result);
                    }                    
                    reader.readAsDataURL(input.files[0]);
                }
            }
               $("#upload").change(function(){
                   readURL(this);
            });
         }); */
        
        $(this).on("click","#addchecklist",function(){
            $('#checkready').append("<textarea cols='30' rows='1' id='chetext'></textarea>");
            $('#complecheck').css('display',"inline");
            document.getElementById("complecheck").disabled=false;
            document.getElementById("addchecklist").disabled=true;
        }); 
         $(this).on("click",".chkList",function(){
             var id = $(this).attr("id");
             var chk = $(this).is(":checked");
             var func = 0 ;
             if(chk==true){
                 func=4;
             }else{
                 func=3;
             }
             $.ajax({
                  url:'checkListChange.do',
                  type:'post',
                  dataType:"json",
                  data:{"function":func,
                            "id":id},
                  success:function(data){
                                      
                  }
              });
         });
 
        $(this).on("click",'#commentAddBtn',function(){
           var cardno= $('#cardNo').val();
           

           var textcomment= $(this).parent('#commentBtnBox').siblings('#commentBox').val().replace(/\n/g, '<br/>');
           $(this).parents("#modalBottom").append("<div class='commentArea' id=commtmp><button id='commentDelete' style='float:right; background-color:transparent;border:none;'><img src='calendar/images/msgdelete.png'></button><span id='nick''></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span id='addclock'></span><div>"+textcomment+"</div></div>");
           $(this).parents("#modalBottom").append("<div id='commentAdd'><textarea id='commentBox' placeholder='댓글을 입력해주세요..'></textarea><br><div id='commentBtnBox'><button id='commentAddBtn'>추가</button></div></div>");
           $(this).parents('#commentAdd').remove();
           //$.alert(textcomment);
           
           $.ajax({
               url:'commentNick.do',
               type:'post',
               dataType:"text",
               data:{"no":cardno},
               success:function(data){
            	  $('#nick').html(data);
            	  $('#nick').attr("id","commentNick");
            	  $('#addclock').html(getTimeStamp());
            	  $('#addclock').attr("id","clock");
            	  var comm = data+"/"+getTimeStamp()+"/"+textcomment;
            	  $.ajax({
                      url:'commentAdd.do',
                      type:'post',
                      dataType:"json",
                      data:{"no":cardno , "comm":comm},
                      success:function(data){
                        $('#commtmp').attr("id","comm"+data)
                      }
                 });
               }
             });
           
          
           
          
       });
        
      //비밀번호 변경 액션
		$('#changeYes').click(function(){
			var emailChange = $('#emailChange').val();
			var nicknameChange = $('#nicknameChange').val();
			var pwdChange = $('#pwdChange').val();
			var newPwdChange = $('#newPwdChange').val();
			var newPwdChange2 = $('#newPwdChange2').val();
		 	if (nicknameChange.trim() == "" || nicknameChange.length <4) {
				$('#nicknameChange').focus();
				return;
			} else if (pwdChange.trim() == "" || pwdChange.length <1) {
				$('#pwdChange').focus();
				return;
			} else if (newPwdChange.trim() == "" || newPwdChange.length <4) {
				$('#newPwdChange').focus();
				return;
			} else if(newPwdChange2.trim() =="" || newPwdChange2.length <4) {
				$('#newPwdChange2').focus();
				return;
			} else if (newPwdChange.trim() != newPwdChange2.trim()){
				$('#newPwdChange2').val("");
				$('#newPwdChange2').focus();
				return;
			} else {
				$.ajax({
					url : 'changeUserInfoOK.do',
					type : 'post',
					data : $('#changeFrm').serialize(),
					success : function(data) {
						if(data.length>0){
							$.alert("기존 비밀번호가 틀립니다.");
							var pwdChange = $('#pwdChange').val("");
						} else {
							$.alert("회원정보 변경완료");
							$('#UserInfoChangeModal').modal('toggle');
						}
					}
				});						
			}
		});
        
       
       $(this).on("click",'#commentDelete',function(){
          var no = $(this).parents('.commentArea').attr("id");
          $.ajax({
            url:'commentDelete.do',
            type:'post',
            dataType:"json",
            data:{"no":no },
            success:function(data){
              
            }
          });
          $(this).parents('.commentArea').remove(); 
       });
       
       $(this).on("keyup",'#commentBox',function(){
           var txt = $(this).val();
           if(txt==""){
               $(this).siblings('#commentBtnBox').hide();
           }else{
               $(this).siblings('#commentBtnBox').show(); 
           }
       });
        $(this).on("click","#complecheck",function(){
            var message = $('textarea#chetext').val();
            var cardno = $('#cardNo').val(); 
            $.ajax({
                  url:'checkListUpdate.do',
                  type:'post',
                  dataType:"json",
                  data:{"msg":message,
                            "no":cardno},
                  success:function(data){
                      $('#checkready').append("<form id='checkboxform'><p><input type='checkbox' class='chkList' id="+data+">"+message+"</p></form>"); 
                      $('#chetext').css('display',"none");
                      
                      document.getElementById("addchecklist").disabled=false;
                      document.getElementById("complecheck").disabled=true;
                      $('#chetext').remove();
                      $('#checkready').ready(function() {
                        
                        // get box count
                        var count = 0;
                        var checked = 0;
                        function countBoxes() { 
                          count = $("input[type='checkbox']").length;
                          console.log(count);
                        }
                        
                        countBoxes();
                        $(":checkbox").click(countBoxes);
                        
                        // count checks
                       function countChecked() {
                              checked = $("#checkready input:checked").length;
                              
                              var percentage = parseInt(((checked / count) * 100),10);
                              $(".progressbar-bar").progressbar({
                                      value: percentage
                                  });
                              $(".progressbar-label").text(percentage + "%");
                            }
                            
                            countChecked();
                            $(":checkbox").click(countChecked);
                       
                      });
                  }
              });
            
             

        });    
});
    function drawChart(op1,op2){    
      var val1=0;
         switch(op1){
           case "#FDC6C6":
              val1=1;
              break;
           case "#FFACAC":
              val1=2;
              break;
           case "#FC7474":
              val1=3;
              break;
           case "#FC4B4B":
              val1=4;
              break;
           case "#FC0000":
              val1=5;
              break;
         }
         var val2=0;
         switch(op2){
           case "#DFDFFD":
              val2=1;
              break;
           case "#C0C0FF":
              val2=2;
              break;
           case "#8F8FFF":
              val2=3;
              break;
           case "#4E4EFD":
              val2=4;
              break;
           case "#1414FC":
              val2=5;
              break;
           }
         
         
      $(function () {
        Highcharts.setOptions({
          colors: [op1, op2]
      });

      $('#container').highcharts({
          chart: {
              type: 'bar',
              borderColor: '#eee',
              borderRadius: 20,
               borderWidth: 2
          },
          title: {
              text: null
          },
          subtitle: {
              text: '우선순위'
          },
          xAxis: {
              categories: ['중요도', '선호도']
          },
          yAxis: {
              min: 0,
              max: 5,
              tickInterval: 1, 
              title: {
                  text: null
              }
          },
          legend: {
              reversed: false,   
           enabled: false
              
          },
          plotOptions: {
              series: {
                  stacking: 'tick'
              }
          },
          series: [{
              name: 'John',
              data: [val1, 0]
          }, {
              name: 'Jane',
              data: [0, val2]
          }]
      });
  });
      
  }
//시간출력
function getTimeStamp() {
  	  var d = new Date();
  	  var s =
  	    leadingZeros(d.getFullYear(), 4) + '-' +
  	    leadingZeros(d.getMonth() + 1, 2) + '-' +
  	    leadingZeros(d.getDate(), 2) + ' ' +

  	    leadingZeros(d.getHours(), 2) + ':' +
  	    leadingZeros(d.getMinutes(), 2) + ':' +
  	    leadingZeros(d.getSeconds(), 2);

  	  return s;
}


function leadingZeros(n, digits) {
  	  var zero = '';
  	  n = n.toString();

  	  if (n.length < digits) {
  	    for (i = 0; i < digits - n.length; i++)
  	      zero += '0';
  	  }
  	  return zero + n;
}
//여기까지  시간출력함수


function resize(obj) {
      obj.style.height = "1px";
      obj.style.height = (50+obj.scrollHeight)+"px";
}

function divHide(){
    $('#fileUpDiv').hide();
    $('#checkDiv').hide();
    $('#mapApp').hide();
    $('#priorityDiv').hide();
    $('#labelDiv').hide();
    $('#dateDiv').hide();   
    $('#mailDiv').hide();
}//디테일카드에서 버튼클릭시 다른버튼 지워주는기능

function showMap(searchPlace){
  var infowindow = new daum.maps.InfoWindow({zIndex:1});
      var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
          mapOption = {
              center: new daum.maps.LatLng(37.566826, 126.9786567), // 지도의 중심좌표
              level: 1 // 지도의 확대 레벨
          };  
      // 지도를 생성합니다    
      
      var map = new daum.maps.Map(mapContainer, mapOption); 
      // 장소 검색 객체를 생성합니다
      var ps = new daum.maps.services.Places(); 
      // 키워드로 장소를 검색합니다
      ps.keywordSearch(searchPlace, placesSearchCB); 
      // 키워드 검색 완료 시 호출되는 콜백함수 입니다
      function placesSearchCB (status, data, pagination) {
          if (status === daum.maps.services.Status.OK) {
              // 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
              // LatLngBounds 객체에 좌표를 추가합니다
              var bounds = new daum.maps.LatLngBounds();
              for (var i=0; i<data.places.length; i++) {
                  displayMarker(data.places[i]);    
                  bounds.extend(new daum.maps.LatLng(data.places[i].latitude, data.places[i].longitude));
              }       
              // 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
              map.relayout();
              map.setBounds(bounds);
          } 
      }
      // 지도에 마커를 표시하는 함수입니다
      function displayMarker(place) {
          
          // 마커를 생성하고 지도에 표시합니다
          var marker = new daum.maps.Marker({
              map: map,
              position: new daum.maps.LatLng(place.latitude, place.longitude) 
          });
          // 마커에 클릭이벤트를 등록합니다
          daum.maps.event.addListener(marker, 'click', function() {
              // 마커를 클릭하면 장소명이 인포윈도우에 표출됩니다
              infowindow.setContent('<div style="padding:5px;font-size:12px;">' + place.title + '</div>');
              infowindow.open(map, marker);
          });
      }
      map.relayout();
}
function listTitleLimit(){
    $('.addListTxt').on('keypress', function() {
        if($(this).val().length > 24) {
        $(this).val($(this).val().substring(0,24));
    	}
	 });  //리스트제목 글자수 12 제한 
    $('.addListTxt').on('keyup', function() {
        if($(this).val().length > 24) {
        $(this).val($(this).val().substring(0,24));
    	}
	 });  //리스트제목 글자수 12 제한 	 
    $('.addListTxt').on('keydown', function() {
        if($(this).val().length > 24) {
        $(this).val($(this).val().substring(0,24));
    	}
	 });  //리스트제목 글자수 12 제한 	 

}

function cardTitleLimit(){
    $('.cardText').on('keypress', function() {
        if($(this).val().length > 24) {
        $(this).val($(this).val().substring(0,24));
    	}
	 });  //리스트제목 글자수 12 제한 
    $('.cardText').on('keyup', function() {
        if($(this).val().length > 24) {
        $(this).val($(this).val().substring(0,24));
    	}
	 });  //리스트제목 글자수 12 제한 	 
	 
    $('.cardText').on('keydown', function() {
        if($(this).val().length > 24) {
        $(this).val($(this).val().substring(0,24));
    	}
	 });  //리스트제목 글자수 12 제한 	 
	 
}
function searchCheck(){
    //alert($.session.get("logSearchInput"));
    /* if($.session.get("logSearchInput") == "none"){
      alert("yes");
    } */
	if($.session.get("logSearchInput") != "none"){
		var target = "planSearch.do?searchRadios=";
		var searchRadios = $.session.get("logSearchType");
		var inputSearch = $.session.get("logSearchInput");
		target = target+searchRadios;
        target = target +"&inputSearch=";
        target = target +inputSearch;
		$("#planSearchModal .modal-dialog").load(target, function() {
            $("#planSearchModal").modal("show");
		});
	} 
} 

          
</script>
<title>오늘 일을 내일로 미루자</title>
</head>

<!-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ -->
 <!-- 회원정보 변경 모달  -->
	<!-- Modal -->
	<div class="modal fade" id="UserInfoChangeModal" role="dialog"  tabindex="-1" aria-labelledby="modal-login-label" aria-hidden="true">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header" style="padding: 30px 30px;">
					<button type="button" class="close" data-dismiss="modal" style="margin-top: 7px;">
						<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
					</button>
					<h4>
						<span class="glyphicon glyphicon-user"></span> 회원정보 변경
					</h4>
					
				</div>
				<form class="form-horizontal" method="POST" id="changeFrm" name="changeFrm">
					<div class="modal-body" style="padding:40px 50px;height: 410px;">
						<div class="form-group" id="divEmail" >
							<label for="email"><span class="glyphicon glyphicon-user"></span> 이메일</label>
							<input type="text" class="email form-control" id="emailChange" name="emailChange" placeholder="이메일을 입력하세요" value=${logEmail }>
						</div>						
						<div class="form-group" id="divNickname">
							<label for="nickname">
							<span class="glyphicon glyphicon-apple"></span> 닉네임</label>
							<input type="text" class="pwd form-control" id="nicknameChange" name="nicknameChange" placeholder="사용하실 대화명을 입력하세요.(4자리 이상)" value=${logNickname }>
						</div>
						<div class="form-group" id="divPwd">
							<label for="psw">
							<span class="glyphicon glyphicon-eye-open"></span> 기존 비밀번호</label>
							<input type="password" class="pwd form-control" id="pwdChange" name="pwdChange"
								placeholder="기존 비밀번호를 입력하세요(4자리 이상)">
						</div>
						<div class="form-group" id="divNewPwd">
							<label for="psw"><span
								class="glyphicon glyphicon-eye-open"></span> 새 비밀번호</label> <input
								type="password" class="form-control" id="newPwdChange" name="newPwdChange"
								placeholder="새 비밀번호를 입력하세요(4자리 이상)">
						</div>
						<div class="form-group" id="divNewPwd2">
							<label for="checknum"><span	class="glyphicon glyphicon-eye-open"></span> 새 비밀번호 확인</label> 
							<input type="password" class="form-control" id="newPwdChange2" name="newPwdChange2" placeholder="새 비밀번호를 입력하세요(4자리 이상)">
						</div>
					</div>
				<div class="modal-footer">
					<button type="button" id="changeYes" name="chageYes" class="btn btn-success btn-default pull-left"  value="Send" style="margin: 10px; margin-left: 35px">
						<span class="glyphicon glyphicon-plus"></span>완 료
					</button>
					<button type="button" class="btn btn-danger btn-default pull-left"
						data-dismiss="modal" value="Input Button" style="margin: 10px">
						<span class="glyphicon glyphicon-remove"></span>취 소
					</button>
				</div>
				</form>
			</div>
		</div>
	</div>
<!-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ -->
<!-- 일정검색 Modal  -->
<div class="container">
    <!-- Modal -->
    <div class="modal fade" id="planSearchModal" role="dialog">
        <div class="modal-dialog">
        			<!-- Modal content-->
				<!-- serach.jsp로 간당 -->
        </div>
    </div>
</div>
<!-- ================================================================= -->
<body id="body" data-spy="scroll" data-target=".one-page-header"
    class="demo-lightbox-gallery">
    <!--=== Header ===-->
    <nav class="one-page-header navbar navbar-default navbar-fixed-top"
        role="navigation">
        <div class="container">
            <div class="menu-container page-scroll">
                <!--<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                -->
                <a class="navbar-brand" href="#intro"> <span>오</span>내미 <!-- <img src="assets/img/logo1.png" alt="Logo"> -->
                </a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse navbar-ex1-collapse">
                <div class="menu-container">
                    <ul class="nav navbar-nav">
                        <c:if test="${logNickname eq null}">
                            <li class="page-scroll home" id="myBtn1"><a href="#about">
                                    <span class="glyphicon glyphicon-log-in"></span>&nbsp;&nbsp;&nbsp;로그인
                            </a></li>

                            <li class="page-scroll home" id="myBtn2"><a href="#services">
                                    <span class="glyphicon glyphicon-user"></span>&nbsp;&nbsp;&nbsp;회원가입
                            </a></li>
                        </c:if>
                        <c:if test="${logNickname ne null}">
                            <li class="page-scroll home"><a href="intro.do"> <span
                                    class="glyphicon glyphicon-pencil"></span>&nbsp;&nbsp;&nbsp;집으로
                            </a></li>

                            <li class="page-scroll home" id="userDetail2"><a
                                href="#detail"> <span class="glyphicon glyphicon-user"></span>&nbsp;&nbsp;&nbsp;${logNickname}님
                            </a></li>

                            <li class="page-scroll home" id="myBtn3"><a
                                href="logOutOK.do"> <span class="glyphicon glyphicon-remove"></span>&nbsp;&nbsp;&nbsp;로그아웃
                            </a></li>
                        </c:if>
                    </ul>
                </div>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>
    <!--=== End Header ===-->
    <div id="sist" class="row">
        <div class=" col-md-6 half" id='calendar'>
            <div id="calendar_attr">
                <div id='calendar_container'></div>
            </div>
        </div>

         <div class="col-md-6 half" id ='cardList' >
                <!-------- 일정 검색 위치 ------------------------------------------------------------------------------------------------------------------>
		        <form role="form" id="searchForm">
		            <div class="form-group has-success has-feedback">
		                <div  id="planSearch">
		                    <label class="col-lg-0 control-label" for="inputSuccess" style="float: left; text-align: center; height: auto; padding-top: 6px;color:#fff;">
		                    &nbsp;&nbsp;&nbsp;&nbsp;일정검색 <span class="glyphicon glyphicon-search"></span>
		                    </label>
		                    <div class="col-md-3" style="height: 34px">
		                        <input type="text" class="form-control" id="inputSearch" placeholder="찾고싶은 일정을 입력하세요..."> &nbsp;&nbsp;&nbsp;                        
		                    </div>
		                    <div id="searchRadios" style="float: left; width:auto"> 
		                        <button type="button" class="btn btn-success" id="btnSearch">검색</button>
		                            &nbsp;&nbsp;&nbsp;
		                        <label class="radio-inline" style="padding-top: 3px;color:#fff;">
		                            <input type="radio" name="searchRadio" id="radioMyPlan" value="1" checked="checked">내 일정
		                        </label> 
		                        <label class="radio-inline" style="padding-top: 3px;color:#fff;"> 
		                            <input type="radio" name="searchRadio" id="radioAllPlan" value="2">모든 일정
		                        </label> 
		                        <label class="radio-inline" style="padding-top: 3px;color:#fff;"> 
		                            <input type="radio" name="searchRadio" id="radioHash" value="3">#해시태그
		                        </label>
		                    </div>
		                </div>
		            </div>
		        </form>
  <!-------- 일정 검색 위치 마무리 ------------------------------------------------------------------------------------------------------------------>
            <div style="clear:both"></div>
                
    

            <div id="timetable" style="float:left;max-width:7000px; margin-top:50px;">
                
                <div style="text-align:center">
                
                </div>
                <c:forEach var="vo" items="${list}">

                    ${vo.html}

                </c:forEach>
                <div class="weekday col-md-1">
                
                    
                    <div class="addListBtn">
                        <span><img src="calendar/images/createlist.png" ></span>
                    </div>
                    
                    <div class="addListPanel" style="display:none;">
                        <input name="name" class="addListTxt" type="text" placeholder="리스트 추가하기.."/>
                        <input type="button" value="취소" class="listTitleCancel" />
                        <input type="button" value="추가" class="listTitleBtn" />
                    </div>
                </div>  
            </div>
        </div>
    </div>


      <div class="modal fade" id="cardDetail" role="dialog" >
    <div class="modal-dialog">
        <div>

              <%-- <jsp:include page="detail.do" flush="false" /> --%> 
        </div>   

    </div>
  </div>    
    
</body>
        <!-- JS Global Compulsory -->       
</html>