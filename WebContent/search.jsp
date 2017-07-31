<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html">
<html>
<style>
.modal-header2, h4, .close {
   background-color: #5cb85c;
   color:white !important;
   text-align: center;
   font-size: 30px;
}

.modal-header2{
}

.modal-body2{
	background-color: #ffffff;
	width:100%;
	min-height: 150px;
	max-height:700px;
	height:auto;
	overflow-y: hidden;
}

.search-group2{
	height: 40px;
	font-size: 17px;
	text-align: center;
}

.search-group3{
	height: 40px;
	font-size: 15px;
}

.list-group-item{
	background-color:rgba(255, 243, 19, 0.5);
	border-color: white;
	height: 49px;
}

.li2{
	background-color:rgba(211, 211, 211, 0.7);
	border-color: white;
}

#nickLabel{
	text-align: center;
}
.searchDiv:hover{
	background-color: gold;
}
</style>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	       <div class="modal-content2" >      
				<div class="modal-header2" style="padding: 30px 30px;">
					<button type="button" class="close" data-dismiss="modal"	style="margin-top: 7px;">
						<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
					</button>
					<h4>
						<span class="glyphicon glyphicon-user"></span> 일정 검색
					</h4>
				</div>
		
				<div class="modal-body2">
					<ul class="search-group2" style="padding:0px 0px;">
						<li class="list-group-item col-sm-2 half" ><span class="glyphicon glyphicon-user"></span> 닉네임</li>
						<li class="list-group-item col-sm-7 half" ><span class="glyphicon glyphicon-list-alt"></span> 제목</li>
						<li class="list-group-item col-sm-3 half"><span class="glyphicon glyphicon-tags"></span> 해시태그</li>
					</ul>
				
			
				<div class="search-group3">
					<c:forEach var="vo" items="${list}">
					<div class="searchDiv">
					<input type="hidden" value="${vo.no}" class="cno">
						<ul class="search-group3 searchUl" style="padding:0px;">                    	
							<li class="list-group-item col-sm-2 half li2" id=nickLabel><label>${vo.nickname}</label></li>
							<li class="list-group-item col-sm-7 half li2"><label>${vo.title}</label></li>
							<li class="list-group-item col-sm-3 half li2"><label>${vo.cardcomm}</label></li>
						</ul>
						</div>
					</c:forEach>    
					
					</div>
				</div>
			</div>
	</body>
</html>