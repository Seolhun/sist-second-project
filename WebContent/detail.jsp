<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style type="text/css">

label{
   color : black;
}

body{
      font-family:'Malgun Gothic';
      font-size: 15px;
      padding : 20px;
}
#modalBody{
   background: url("calendar/images/back7.jpg");
   background-repeat: no-repeat;
   width:100%;
   min-height:800px;
   max-height:1800px;
   padding:20px;
   border-radius: 10px;
   margin:5px;
   max-height: calc(100vh - 210px);
   overflow-y: auto;
}
#modalTitle{
   border : #eee;
   margin:20px;
   padding:20px;
   
}
#modalMid{
   border-top: 3px solid #eee;
   margin:20px;
   padding:20px;
}
#modalBottom{
   border-top: 3px solid #eee;
   margin:20px;
   padding:20px;
}
#commentBox {
    border: 2px solid rgb(173, 204, 204);
    height: 100px;
    width: 50%;
    box-shadow: 0 0 27px rgb(204, 204, 204) inset;
    transition: 500ms all ease;
    padding: 3px 3px 3px 3px;
}
#commentBox:hover,
#commentBox:focus {
    width: 80%;
    transition: 500ms all ease;
    background: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyBpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMC1jMDYwIDYxLjEzNDc3NywgMjAxMC8wMi8xMi0xNzozMjowMCAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNSBXaW5kb3dzIiB4bXBNTTpJbnN0YW5jZUlEPSJ4bXAuaWlkOjYxRDEzQTBCMzI0MzExRTFBNDYzRkQ4Qzc3RDdBOTg5IiB4bXBNTTpEb2N1bWVudElEPSJ4bXAuZGlkOjYxRDEzQTBDMzI0MzExRTFBNDYzRkQ4Qzc3RDdBOTg5Ij4gPHhtcE1NOkRlcml2ZWRGcm9tIHN0UmVmOmluc3RhbmNlSUQ9InhtcC5paWQ6NjFEMTNBMDkzMjQzMTFFMUE0NjNGRDhDNzdEN0E5ODkiIHN0UmVmOmRvY3VtZW50SUQ9InhtcC5kaWQ6NjFEMTNBMEEzMjQzMTFFMUE0NjNGRDhDNzdEN0E5ODkiLz4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1ldGE+IDw/eHBhY2tldCBlbmQ9InIiPz52VTCHAAABFUlEQVR42uxV0Q2DIBBV4z8bdAM26AZ1Ap3AToAT6AR1Ap2gbuAGzKD/TkCP5NmQRpQaSH96yQsJHO/k7t0ZK6WikJZEgS14gHSeZxX6BQuhwerL3pw6ACMIQkuQHsgluDQnM2ugN3rgrK33ha3INdbqBHn1wWFVUU7ghMKxLgt8Oe46yVQ7lrgoD/JdwDf/tg+ueK4mGDfOR5zV8D3VaBwFy6CM1VrsCfjYG81BclrPHVZp7HcoLN8LshdgNMg50pDh7In+uSCIsKUpnqZJWfQ8EB4gOlLRnXBzVVFvpIA5yJTBV241aeLSLI622aRmiho8k3uYRcM6LlLksEWzMA/DjqP4+oNLW5G9Wfz/J/88wEuAAQA9yExzBAEQqwAAAABJRU5ErkJggg==) no-repeat right;
    background-size: 25px 25px;
    background-position: 96% 62%;
    padding: 3px 32px 3px 3px;
}
#commentBtnBox{
   display:none;
}
.commentArea{
    margin-top: 10px;
    margin-bottom: 5px;
    min-width: 60%;
    word-break: break-all;
    display: inline-block;
    position: relative;
    border-bottom: 2px solid #e3e3e3;
}
#commentAdd{
margin-top:15px;
}
#commentBtnBox{
float:left;
margin-top:10px;
}
#content{
   height : 50px;
   border: 2px;
   text-align: right;
    padding-right: 30px;
   
}
/* .modal-content{
   position: relative;
   margin:0 auto;
   width:90%;
   
} */
#glypTitle,#listName{
margin-bottom:10px;
}
#glypTitle{
   font-size: 25px;
}
#glypMid{
   font-size: 25px;
}
#glypBottom{
   font-size: 25px;
}
#mytextarea{
   
}
#contentInsert,#contentCancel{
float:left;
width:45px;
height:30px;
margin-left:5px;
margin-right:5px;
border:none;
padding:3px;
text-align: center;
background: none;
margin-top: 5px;
}
#contentInsert:hover, #contentInsert:active, #contentCancel:hover, #contentCancel:active{

border-bottom: 2px solid #2694e8;
}
#modalTextarea{
}
#insertContext:HOVER {
   color : gray;
   font-size: 150%;
}
#listName{
   padding-left:20px;
}
#contentText{
   font-size : 17px;
   margin:10px;
}
#sideBar{
   
   padding : 10px;
}
#map{
max-height:100%;
max-width:100%;
}
#priorityDiv .btn span.glyphicon {             
   opacity: 0;            
}
#priorityDiv .btn.active span.glyphicon {            
   opacity: 1;            
}
#labelDiv .btn span.glyphicon {             
   opacity: 0;            
}
#labelDiv .btn.active span.glyphicon {            
   opacity: 1;            
}
input[type="checkbox"] { 
  height: 20px; 
  width: 20px; 
  margin-right: 10px;
}   
.checkready { font-size: 1.5em; }
.ui-progressbar-value { background: ##BCF12A; }
.progressbar-container {
  position: relative;
  width: 350px; 
}
.progressbar-bar { 
  height: 25px;
margin: 10px 0;
border-radius: 7px;
}
.progressbar-label {
  position: absolute;
  top: 2px;
  left: 45%;
  z-index: 2;
}

#dateBtn,#manaddBtn,#lockaddBtn,#mailaddBtn,#checkBtn,#btnMap,#priorityBtn,#labelBtn,#fileaddiBtn,#carddeleteBtn{
border: 2px;
margin: 8px;
background: none;
}
.btn.btn-default.btn-sm:hover, .btn.btn-default.btn-sm:active {
   background: #ECFF97;
}
/* #fileaddiBtn{
width: 100px;
height: 24px;
} */
.textcss{
border: 2px solid #FFE925;
border-radius: 5px;
margin:1px;
}
#fileInsert,#fileDelete{
width: 46px;
height: 28px;
}
.btniconcss{
background: none;
border:none;
float:center;
}
.btniconcss:hover, .btniconcss:active {
border-bottom:2px solid #2694e8;
} 
#dateInsert, #dateDelete, #fileInsert, #fileDelete{
background: none;
border:none;
float:center;
color:black;
}
#dateInsert:hover, #dateInsert:active, #dateDelete:hover, #dateDelete:active, #fileInsert:hover, #fileInsert:active, #fileDelete:hover, #fileDelete:active{
border-bottom:2px solid #2694e8;
} 
#addsearch{
margin:10px;
}
#insertContent{
background: none;
border-bottom: 2px solid #2694e8;
border-radius: 0px;
color: black;
margin: 10px;
text-align: center;
cursor : pointer;
}
#insertContent:hover, #insertContent:active{
background: #C8E1F1;
}
#checkunder{
    margin: 5px;
    height: 30px;
    width: 120px;
}
#checklisttitle{
font-size:20px;
font-weight: bold;
}
#addchecklist,#complecheck{
background: none;
border:none;
}

#addchecklist:hover,#addchecklist:active,#complecheck:hover#complecheck:active{
border-bottom: 2px solid #2694e8;
}
#chetext{
border: 2px solid #FFE925;
border-radius: 3px;
width: 400px;
height: 30px;
font-size: 20px;
}
#checkboxform p{
font-size:18px;
margin:0px;
}
#mapunder{
width:120px;
height: 35px;
margin:5px;
margin-bottom:0px;
padding:10px;
padding-top:0px;
}
#map{
margin:5px;
}
.priorityunder{
width:120px;
height: 35px;
padding:5px;
margin-bottom: 5px;
}
#labelunder{
margin:5px;
width: 80px;
height: 35px;
margin-left:0px;
padding:5px;
}
#modalBdClose{
background: none;
border: none;
width: 48px;
height: 48px;
}
.chart_div rect{
width:200px;
}
#fileUpButton,#mailBtn{
   background: none;
   margin: 8px;
   width: 127.063px;
}
#ui-datepicker-div{
background: #fff;
}

#commentAddBtn{
border: none;
background: none;
}
#commentAddBtn:hover, #commentAddBtn:active {
border-bottom:2px solid #2694e8;
} 
#glydown{
background: none;
border: none;
}
</style>


<script type="text/javascript">
	$(function(){
		 setTimeout("showMap('${map}')",500);
	/* 	showMap("${map}"); */
	});

</script>
</head>
<body>
	<div class="modal-dialog container" id="modalBody">
		<div class="row">
			<div id="content" >
				<button type="button" id="modalBdClose"><img src="calendar\images\closeB-icon.png" ></button>
			</div>
			<div class="col-lg-9">
				<div id="modalTitle">
					<input type="hidden" id="cardNo" value="${card.no}"/>
					<span class="glyphicon glyphicon-list-alt" id="glypTitle"> ${card.title}</span>
					<div id="modalDate">
						<c:if test="${card.startdate!=null}">
							<span class='glyphicon glyphicon-calendar'>일정날짜</span>
							<div id='sdateDiv'><b id="startD">시작일 : </b>${card.startdate}</div>
						</c:if>
						<c:if test="${card.enddate!=null}">
							<div id='edateDiv'> <b id="endD">종료일 : </b>${card.enddate}</div>
						</c:if>
					</div>
					<div id="modalPriority">
					<c:if test="${card.priority1!=null || card.priority2!=null}">
					<script type="text/javascript">
						drawChart("${card.priority1}","${card.priority2}")
					</script>
					<%-- <span class='glyphicon glyphicon-star'>우선순위</span><br/>
					<div id='priorityIf'>
						<span style='background-color:${card.priority1}'>중요도</span>
						<span style='background-color:${card.priority2}'>선호도</span>
					</div> --%>
					</c:if>
					
					</div>
					<div id="modalLabel">
					<c:if test="${card.label!=null}">
						<span class='glyphicon glyphicon-tags'>라벨</span><br/><div id="labelColor" style='width:50px; background-color:${card.label} '>&nbsp;</div>
					</c:if>
					</div>
					<div id="modalTextarea">
						<div id="contentText" style="font: bold;"><img src="calendar\images\text-icon.png" style="text-align:left;font-size:20px;">&nbsp;&nbsp;일정내용
						<c:if test="${own=='show'}">
						<span id="insertContent" data-toggle="tooltip" title="일정 내용 수정">  수정  </span>
						</c:if>
						</div>
						<div id="newTA" style="display:none">
						 	<textarea id="mytextarea" >
				
						 	</textarea>
		  					<button type="button" class="btn btn-default btn-sm" id="contentInsert"> <b>입력</b></button>
		  					<button type="button" class="btn btn-default btn-sm" id="contentCancel"> <b>취소</b></button>
  					  </div>
  					  <c:if test="${card.content!=null}">
	  					  <div id="showContent" style="display: inline">
	  					  	${card.content} 					  
	  					  </div>
	  					  <div id="hashready" style="display:none"></div>    
                          <c:if test="${hashList!=null}">       
                          <div id="hashtag" style="border-top: 2px solid #eee;width: 500;" >

                           <c:forEach var="tt" items="${hashList}">
                               <a href="#" class='hashLink'> ${tt} </a>
                           </c:forEach>
                          </div>
                          </c:if>                 
                          <c:if test="${hashList==null}">
                           <div id="hashtag" style="display:none;border-top: 2px solid #eee;width: 500;" ></div>
                          </c:if>                 
                      </c:if>
                      <c:if test="${card.content==null}">
                          <div id="showContent" style="display:none">                     
                          </div>
                          <div id="hashready" style="display:none"></div>           
                          <div id="hashtag" style="display:none;border-top: 2px solid #eee;width: 500;" ></div>     
                          
                      </c:if>
                    </div>              
                </div>
                
                <div id="modalMid"> 
                    <span class="glyphicon glyphicon-th-list" id="glypMid"> 추가기능</span><br>
                    <c:if test="${map!=null}">
                    <div id="modalMap" style="display:block">           
                        <div id="mapunder"><img src="calendar\images\map-icon.png" style="text-align:left;">&nbsp;&nbsp;위치정보</div>
                        
                        <div id="map" style="width:400px;height:300px;"></div>
                    </div>
                    <script type="text/javascript">
                        
                    </script>
                    </c:if>
                    <c:if test="${map==null}">
                    <div id="modalMap" style="display:none">            
                        <div id="mapunder"><img src="calendar\images\map-icon.png" style="text-align:left;">&nbsp;&nbsp;<b>위치정보</b></div>
                        
                        <div id="map" style="width:400px;height:300px;"></div>
                    </div>
                    </c:if>
                    <c:if test="${checkTitle!=null}">
                    <div id="checklistadd"style="display:inline">
                        <div id="checkunder"><img src="calendar\images\checkbox-icon.png" style="text-align:left;">&nbsp;&nbsp;<b>체크리스트</b></div>
                        <p id="checklisttitle">${checkTitle}</p>
                        <div class="progressbar-container" id="progressbar-container">
                            <div class="progressbar-bar" id="progressbar-bar"></div>
                            <div class="progressbar-label" id="progressbar-label" ></div>     
                        </div>
            
                        <div class="checkready" id= "checkready" >
                        <c:forEach var="chk" items="${checkList}">
                        <c:if test="${chk.function==3}">
                            <form id='checkboxform'>
                            	<p>
                            	<c:if test="${own=='show'}">
                            		<input type='checkbox' class='chkList' id='${chk.no}' >
                            	</c:if>
                            	<c:if test="${own=='hide'}">
                            		<input type='checkbox' class='chkList' id='${chk.no}' disabled="disabled">
                            	</c:if>
                            		${chk.cardcomm}
                            	</p>
                            </form>
                        </c:if>
                        <c:if test="${chk.function==4}">
                            <form id='checkboxform'>
                            	<p>
                            	<c:if test="${own=='show'}">
                            		<input type='checkbox' class='chkList' id='${chk.no}' checked="checked">
                            	</c:if>
                            	<c:if test="${own=='hide'}">
                            		<input type='checkbox' class='chkList' id='${chk.no}' checked="checked" disabled="disabled" >
                            	</c:if>
                            		${chk.cardcomm}
                            	</p>
                            </form>
                        </c:if>
                        </c:forEach>
                        </div>
                        <c:if test="${own=='show'}">
                        <div id="addcheck">
                          <button type="button" class="addlistcheck" id="addchecklist">추가</button>
                          <button type="button" class="checkcomplete" id="complecheck" style="display:none">완료</button>
                        </div>
                        </c:if>
                    </div>
                    <script type="text/javascript">
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
                    </script>
                    </c:if>
                    <c:if test="${checkTitle==null}">
                    <div id="checklistadd" style="display:none">
                        <div id="checkunder"><img src="calendar\images\checkbox-icon.png" style="text-align:left;">&nbsp;&nbsp;체크리스트</div>
                        <p id="checklisttitle"></p>
                        <div class="progressbar-container" id="progressbar-container">
                            <div class="progressbar-bar" id="progressbar-bar"></div>
                            <div class="progressbar-label" id="progressbar-label" ></div>     
                        </div>
            
                        <div class="checkready" id= "checkready" >
                   
                        </div>
                        <div id="addcheck">
                          <button type="button" class="addlistcheck" id="addchecklist">추가</button>
                          <button type="button" class="checkcomplete" id="complecheck" style="display:none">완료</button>
                        </div>
                    </div>
                    </c:if>
                    <c:if test="${file==null}">
                    <div id="modalFile" style="display:none">
                        <form class="fileUpload" action="download.jsp" method="post" enctype="multipart/form-data">
                            <div id="fileUpField" >
                                <img src="calendar\images\fileup-icon.png">&nbsp;&nbsp;<b>파일첨부</b><br/>
                                <span id="fileName"></span>&nbsp;&nbsp;<button type="button" class="btn btn-default btn-sm" id="glydown">
                                    <span class="glyphicon glyphicon-download-alt" ></span> 다운로드</button>
                                <!-- <button type="button" class="btn btn-default btn-sm" id="glyremove">
                                    <span class="glyphicon glyphicon-remove-sign"></span> 삭제하기</button> -->
                            </div>
                        </form>
                    </div>
                    </c:if>
                    <c:if test="${file!=null}">
                    <div id="modalFile">
                        <form class="fileUpload" action="download.jsp" method="post" enctype="multipart/form-data">
                            <div id="fileUpField" >
                           		 <img src="calendar\images\fileup-icon.png">&nbsp;&nbsp;<b>파일첨부</b><br/>
                                <span id="fileName">${file}</span>&nbsp;&nbsp;<button type="button" class="btn btn-default btn-sm" id="glydown">
                                    <span class="glyphicon glyphicon-download-alt" ></span> 다운로드</button>
                                <!-- <button type="button" class="btn btn-default btn-sm" id="glyremove">
                                    <span class="glyphicon glyphicon-remove-sign"></span> 삭제하기</button> -->
                            </div>
                        </form>
                    </div>
                    </c:if>
                </div>
                
                <div id=modalBottom>
                    <span class="glyphicon glyphicon-comment" id="glypBottom"> 댓글</span><br>
                    <c:forEach var="comm" items="${commList}">
                       <div class='commentArea' id='comm${comm.no}'>
                            <c:if test="${own=='show'}">
                           <button id='commentDelete' style='float:right; background-color:transparent; border:none;'><img src="calendar\images\msgdelete.png"></button>
                           </c:if>
                           <span id='nick${comm.no}''><b>${comm.user}</b></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span id='clock'>${comm.time}</span>
                           <div>${comm.content}</div>
                         </div>
                    </c:forEach>
                    <div id="commentAdd">
                        <textarea id="commentBox" cols="50" placeholder="댓글을 입력해주세요.."></textarea><br>
                        <div id="commentBtnBox">
                            <button id="commentAddBtn">추가</button>
                        </div>
                    </div>
                </div>
                
            </div>
            <div class="col-lg-3" id="sideBar">
            <c:if test="${own=='show'}">
                 <button type="button" class="btn btn-default btn-sm" id="lockaddBtn">
                 <c:if test="${card.done==1}">
                    <div id="lockchange" style="display: inline"><img src="calendar\images\openlock-icon.png">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>공개</b></div>
                    <div id="lockchacom" style="display: none"><img src="calendar\images\closelock-icon.png">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>비공개</b></div>
                 </c:if>
                 <c:if test="${card.done==2}">
                    <div id="lockchange" style="display: none"><img src="calendar\images\openlock-icon.png">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>공개</b></div>
                    <div id="lockchacom" style="display: inline"><img src="calendar\images\closelock-icon.png">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>비공개</b></div>
                 </c:if>
                </button>      
                <br/>
                <button type="button" class="btn btn-default btn-sm"  id="dateBtn">
                     <img src="calendar\images\calendar-icon.png" style="text-align:left;">
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>일정</b>
                </button>
                <div id="dateDiv" style="display:none">
                    <div>
                    시작일  <input type='text' id='sdate' class="textcss">
                    </div>
                    <div>
                    종료일  <input type='text' id='edate' class="textcss">
                    </div>
                    <div>
                        <input type="button" id="dateInsert" class="btn-sm" value="저장"/>
                        <input type="button" id="dateDelete" class="btn-sm" value="삭제"/>
                    </div>
                </div>
                
    <!--            <br/>
                <button type="button" class="btn btn-default btn-sm" id="manaddBtn">
                  <img src="calendar\images\man-icon.png" class="addicon">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;인원 추가
                </button> -->
        
                
                <br>                          <%-- 뛰어 --%>        

                
                    <button type="button" class="btn btn-default btn-sm" id="fileUpButton" style="border:0">
                    <img src="calendar\images\fileadd-icon.png">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>파일첨부</b>
                    </button>
                    <div id="fileUpDiv" style="display:none">
                        <form class="fileUpload" action="fileInsert.do" method="post" enctype="multipart/form-data" id="fileaddiBtn">
                        <input type="file" name="fileupload" id="fileUpload" style="width:200px"/>
                        <input type="hidden" id="cardNo" value="${card.no}"/>
                        <!-- <input type="button" id="btn" value="전송" />  -->
                        <button type="button" class="btn btn-default btn-sm" id="fileInsert">확인</button>
                        <button type="button" class="btn btn-default btn-sm" id="fileDelete">삭제</button>
                        </form>
                    </div>
                    <br>
                
                                      <%-- 뛰어 --%>
                
                <button type="button" class="btn btn-default btn-sm" id="mailBtn" style="border:0px;">
                <img src="calendar\images\email-icon.png">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b>메일</b>
               </button>      
               <div id ="mailDiv" style="display:none">
                 <div style="margin:10px;"> 받는 사람 :
                 <input type="text" id="toMail" class="textcss"/>
                 </div>
                 <div>
                     <input type="button" id="sendMail"  class="btniconcss" value="보내기"/>
                     <input type="button" id="cancelMail" class="btniconcss" value="취소"/>
                 </div>
               </div>
               <br>                       <%-- 뛰어 --%>
                 
                 <button type="button" class="btn btn-default btn-sm" id="checkBtn">
                  <img src="calendar\images\checkbox-icon.png">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>체크리스트</b>
                </button>
                <div id="checkDiv" style="display:none">
                    <div style="margin:10px;">
                       제목  <input type="text" id="checkTitle" class="textcss"/>
                    </div>
                    <div>
                        <input type="button" id="checkInsert"  class="btniconcss" value="생성"/>
                        <input type="button" id="checkCancel" class="btniconcss" value="삭제"/>
                    </div>
                
                </div>
                
                 <br>                        <%-- 뛰어 --%>
                
                <button type="button" class="btn btn-default btn-sm" id="btnMap">
                  <img src="calendar\images\map-icon.png">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>위치설정</b>
                  </button>           
                <!--  <div id="map" style="width:100%;height:350px; display:none;"></div>   -->
                 <div id="mapApp" style="display:none"><br>
                     <label id="addsearch">주소검색 </label>
                      <input id = "txtAddress" class="textcss" type="text" style="width : 150px">
                      <br>
                       <button type="button" onclick="Search();" id="mapSearch"  class="btniconcss">찾기</button>
                      <button type="button"  id="mapCancel" class="btniconcss">삭제</button>
                </div>



                
                <br>
                <button class="btn btn-default btn-sm" type="button" id="priorityBtn" >                 
                  <img src="calendar\images\star-icon.png">&nbsp;&nbsp;<b>우선순위 설정  </b>                     
                </button>
                <div class="container" id ="priorityDiv" style="display:none">
                    <p>중요도</p>
                        <div class="btn-group" data-toggle="buttons" >          
                            <label class="btn" style="background-color: #FDC6C6" >
                                <input type="radio" name="option1" class="option1" autocomplete="off" value="#FDC6C6">
                                <span class="glyphicon glyphicon-ok" ></span>
                            </label>
                
                            <label class="btn" style="background-color: #FFACAC">
                                <input type="radio" name="option1" class="option1" autocomplete="off" value="#FFACAC">
                                <span class="glyphicon glyphicon-ok"></span>
                            </label>
                
                            <label class="btn btn-warning" style="background-color: #FC7474">
                                <input type="radio" name="option1" id="option1" autocomplete="off" value="#FC7474">
                                <span class="glyphicon glyphicon-ok"></span>
                            </label>
                
                            <label class="btn btn-warning" style="background-color: #FC4B4B">
                                <input type="radio" name="option1" id="option1" autocomplete="off" value="#FC4B4B">
                                <span class="glyphicon glyphicon-ok"></span>
                            </label>
                
                            <label class="btn btn-warning" style="background-color: #FC0000">
                                <input type="radio" name="option1" id="option1" autocomplete="off" value="#FC0000">
                                <span class="glyphicon glyphicon-ok"></span>
                            </label>
                        </div> 
                            <p>선호도</p>
                        <div class="btn-group" data-toggle="buttons">           
                            <label class="btn" style="background-color:#DFDFFD">
                                <input type="radio" name="option2" id="option2" autocomplete="off" value="#DFDFFD">
                                <span class="glyphicon glyphicon-ok" ></span>
                            </label>
                
                            <label class="btn" style="background-color:#C0C0FF">
                                <input type="radio" name="option2" id="option1" autocomplete="off" value="#C0C0FF">
                                <span class="glyphicon glyphicon-ok"></span>
                            </label>
                
                            <label class="btn btn-warning" style="background-color:#8F8FFF ">
                                <input type="radio" name="option2" id="option2" autocomplete="off" value="#8F8FFF">
                                <span class="glyphicon glyphicon-ok"></span>
                            </label>
                
                            <label class="btn btn-warning" style="background-color:#4E4EFD">
                                <input type="radio" name="option2" id="option2" autocomplete="off" value="#4E4EFD">
                                <span class="glyphicon glyphicon-ok"></span>
                            </label>
                
                            <label class="btn btn-warning" style="background-color:#1414FC">
                                <input type="radio" name="option2" id="option2" autocomplete="off" value="#1414FC">
                                <span class="glyphicon glyphicon-ok"></span>
                            </label>
                        </div> 
                        <div>
                            <input type="button" id="priorityInsert"  class="btniconcss" value="확인"/>
                            <input type="button" id="priorityCancel"  class="btniconcss" value="삭제"/>
                        </div>
                </div>
                <br>
                <button class="btn btn-default btn-sm" type="button" id="labelBtn" >                 
                     <img src="calendar\images\label-icon.png"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>라벨</b>
                </button>
                <div class="container" id ="labelDiv" style="display:none">
                  <div class="btn-group" data-toggle="buttons" >         
                     <label class="btn" style="background-color: #F5876E" >
                        <input type="radio" name="option10" id="option10" autocomplete="off" checked  value="#F5876E">
                        <span class="glyphicon glyphicon-ok" ></span>
                     </label>
                     <label class="btn" style="background-color: #61A8DC">
                        <input type="radio" name="option10" id="option10" autocomplete="off" value="#61A8DC">
                        <span class="glyphicon glyphicon-ok"></span>
                     </label>
            
                     <label class="btn btn-warning" style="background-color: #8EBD40 ">
                        <input type="radio" name="option10" id="option10" autocomplete="off" value="#8EBD40">
                        <span class="glyphicon glyphicon-ok"></span>
                     </label>
                     <label class="btn btn-warning" style="background-color: #988CC3 ">
                        <input type="radio" name="option10" id="option10" autocomplete="off" value="#988CC3">
                        <span class="glyphicon glyphicon-ok"></span>
                     </label>
                     <label class="btn btn-warning" style="background-color: #D8C86E ">
                        <input type="radio" name="option10" id="option10" autocomplete="off" value="#D8C86E">
                        <span class="glyphicon glyphicon-ok"></span>
                     </label>
                  </div> 
                  <div>
                     <input type="button" id="labelInsert"  class="btniconcss" value="확인"/>
                    <input type="button" id="labelDelete"  class="btniconcss" value="삭제"/>
                  </div>
            </div>
            
            
            <br>
            <button class="btn btn-default btn-sm" type="button" id="carddeleteBtn" >                 
                <img src="calendar\images\carddelete.png">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b>카드삭제 </b>                  
          </button>
          </c:if>
          <br>
            <div class="prioritygraph" style="width: 230px;height: 200px;"> 
                 <div id="container" style="min-width: 200px; max-width: 210px; height: 150px; margin: 0 auto"></div>
            </div>
            
        </div>
        </div>
    </div>
    
</body>
</html>