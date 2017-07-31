<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->
<head>
	<title>오내미 | 오늘일은 내일로 미루자</title>

	<!-- Meta -->
	<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="">
	
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>


	<!-- Favicon -->
	<link rel="shortcut icon" href="favicon.ico">

	<!-- Web Fonts -->
	<link rel='stylesheet' type='text/css' href='//fonts.googleapis.com/css?family=Open+Sans:400,300,600&amp;subset=cyrillic,latin'>

	<!-- CSS Global Compulsory -->
	<link rel="stylesheet" href="assets/plugins/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="assets/css/one.style.css">

	<!-- CSS Footer -->
	<link rel="stylesheet" href="assets/css/footers/footer-v7.css">

	<!-- CSS Implementing Plugins -->
	<link rel="stylesheet" href="assets/plugins/animate.css">
	<link rel="stylesheet" href="assets/plugins/line-icons/line-icons.css">
	<link rel="stylesheet" href="assets/plugins/font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="assets/plugins/pace/pace-flash.css">
	<link rel="stylesheet" href="assets/plugins/owl-carousel/owl.carousel.css">
	<link rel="stylesheet" href="assets/plugins/cube-portfolio/cubeportfolio/css/cubeportfolio.min.css">
	<link rel="stylesheet" href="assets/plugins/cube-portfolio/cubeportfolio/custom/custom-cubeportfolio.css">
	<link rel="stylesheet" href="assets/plugins/revolution-slider/rs-plugin/css/settings.css" type="text/css" media="screen">
	<!--[if lt IE 9]><link rel="stylesheet" href="assets/plugins/revolution-slider/rs-plugin/css/settings-ie8.css" type="text/css" media="screen"><![endif]-->

	<!-- Style Switcher -->
	<link rel="stylesheet" href="assets/css/plugins/style-switcher.css">

	<!-- CSS Theme -->
	<link rel="stylesheet" href="assets/css/theme-colors/default.css" id="style_color">
	<link rel="stylesheet" href="assets/css/theme-skins/one.dark.css">

	<!-- CSS Customization -->
	<link rel="stylesheet" href="assets/css/custom.css">

<style type="text/css">
	.modal-header, h4, .close {
	    background-color: #5cb85c;
	    color:white !important;
	    text-align: center;
	    font-size: 30px;
}
.modal-footer {
    background-color: #f9f9f9;
}

#bgSignUpBtn,#bgLoginBtn{
    width: 130px;
    background: none;;
    font-family: fantasy;
    font-size: 18px;
    height:40px;
    z-index: 100;
}
</style>
	
	
</head>
<!--
The #page-top ID is part of the scrolling feature.
The data-spy and data-target are part of the built-in Bootstrap scrollspy function.
-->
<body id="body" data-spy="scroll" data-target=".one-page-header" class="demo-lightbox-gallery">
	<!--=== Header ===-->
	<nav class="one-page-header navbar navbar-default navbar-fixed-top" role="navigation">
		<div class="container">
			<div class="menu-container page-scroll">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				
				<a class="navbar-brand" href="intro.jsp">
					<span>오</span>내미
					<!-- <img src="assets/img/logo1.png" alt="Logo"> -->
				</a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse navbar-ex1-collapse">
				<div class="menu-container">
					<ul class="nav navbar-nav">
						<c:if test="${logNickname eq null}">						
							<li class="page-scroll home" id="myBtn1"><a href="#about">
							<span class="glyphicon glyphicon-log-in"></span>&nbsp;&nbsp;&nbsp;로그인</a></li>
							
							<li class="page-scroll home" id="myBtn2"><a href="#services">
							<span class="glyphicon glyphicon-user"></span>&nbsp;&nbsp;&nbsp;회원가입</a></li>
						</c:if>
						<c:if test="${logNickname ne null}">
							<li class="page-scroll home"><a href="onm.do">
							<span class="glyphicon glyphicon-pencil"></span>&nbsp;&nbsp;&nbsp;오내미로</a></li>
							
							<li class="page-scroll home" id="userDetail"><a href="#detail">
							<span class="glyphicon glyphicon-user"></span>&nbsp;&nbsp;&nbsp;${logNickname}님</a></li>							
							
							<li class="page-scroll home" id="myBtn3"><a href="logOutOK.do">
							<span class="glyphicon glyphicon-remove"></span>&nbsp;&nbsp;&nbsp;로그아웃</a></li>
						</c:if>
					</ul>
				</div>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container -->
	</nav>
	<!--=== End Header ===-->

	<!-- Intro Section -->
	<section id="intro" class="intro-section">
		<div class="fullscreenbanner-container">
			<div class="fullscreenbanner">						
				<ul>
					<!-- SLIDE 1 -->		
					<li data-transition="slidedown" data-slotamount="5" data-masterspeed="700" data-title="Slide 1">						
						<!-- MAIN IMAGE -->
						
						<img src="assets/img/sliders/revolution/test01.jpg" alt="slidebg1" data-bgfit="cover" data-bgposition="center center" data-bgrepeat="no-repeat">
						<!-- LAYERS -->							
					<div class="tp-caption rs-caption-1 sft start"
						data-x="center"
						data-hoffset="0"
						data-y="100"
						data-speed="800"
						data-start="2000"
						data-easing="Back.easeInOut"
						data-endspeed="300">										
						Planning made fun!.	
																				
					</div>
					<!-- LAYER -->
					<div class="tp-caption rs-caption-2 sft"
					data-x="center"
					data-hoffset="0"
					data-y="200"
					data-speed="1000"
					data-start="3000"
					data-easing="Power4.easeOut"
					data-endspeed="300"
					data-endeasing="Power1.easeIn"
					data-captionhidden="off"
					style="z-index: 6">     				
					변명중에서 가장 어리석고 못난 변명은<br>
					'시간이 없어서' 라는 변명이다<br>-에디슨-
					<br>
					<br>
					<span class="page-scroll bgLoginBtn"><a href="#bgLoginBtn" class="btn-u btn-brd btn-brd-hover btn-u-light" id="bgLoginBtn">로그인</a></span>
					<span class="page-scroll bgSignUpBtn"><a href="#bgSignUpBtn" class="btn-u btn-brd btn-brd-hover btn-u-light" id="bgSignUpBtn">회원가입</a></span>			
				</div>	
			</li>

		<!-- SLIDE 2 -->
		<li data-transition="slidedown" data-slotamount="5" data-masterspeed="1000" data-title="Slide 2">
			<!-- MAIN IMAGE -->
			<img src="assets/img/sliders/revolution/test02.jpg" alt="slidebg1"  data-bgfit="cover" data-bgposition="center center" data-bgrepeat="no-repeat">

			<!-- LAYERS -->
          <div class="tp-caption rs-caption-1 sft start"
              data-x="center"
              data-hoffset="0"
              data-y="100"
              data-speed="800"
              data-start="2000"
              data-easing="Back.easeInOut"
              data-endspeed="300">        
			Drag & Drop !!
		</div>

		<!-- LAYER -->
        <div class="tp-caption rs-caption-2 sft"
        data-x="center"
        data-hoffset="0"
        data-y="200"
        data-speed="1000"
        data-start="3000"
        data-easing="Power4.easeOut"
        data-endspeed="300"
        data-endeasing="Power1.easeIn"
        data-captionhidden="off"
        style="z-index: 6">             
		Drag & Drop을 통해 <br>
		일정을 마음대로 수정하세요!!
	</div>
</li>

<!-- SLIDE 3 -->
<li data-transition="slidedown" data-slotamount="5" data-masterspeed="700"  data-title="Slide 3">
	<!-- MAIN IMAGE -->
	<img src="assets/img/sliders/revolution/test003.jpg"  alt="slidebg1"  data-bgfit="cover" data-bgposition="center center" data-bgrepeat="no-repeat">

	<!-- LAYERS -->
	<div class="tp-caption rs-caption-1 sft start"
	data-x="center"
	data-hoffset="0"
	data-y="110"
	data-speed="800"
	data-start="1500"
	data-easing="Back.easeInOut"
	data-endspeed="300">
	
</div>
<!-- LAYER -->
<div class="tp-caption rs-caption-2 sfb"
data-x="center"
data-hoffset="0"
data-y="180"
data-speed="800"
data-start="2500"
data-easing="Power4.easeOut"
data-endspeed="300"
data-endeasing="Power1.easeIn"
data-captionhidden="off"
style="z-index: 6">
일정,텍스트,이미지,체크리스트,링크,파일첨부,지도,해시태그 등 <br>
    많은 기능들과 함께 하세요.
</div>

</li>
<!-- SLIDE 4 -->
<li data-transition="slidedown" data-slotamount="5" data-masterspeed="700"  data-title="Slide 4">
	<!-- MAIN IMAGE -->
	<img src="assets/img/sliders/revolution/test13.jpg"  alt="slidebg1"  data-bgfit="cover" data-bgposition="center center" data-bgrepeat="no-repeat">

	<!-- LAYERS -->
	<div class="tp-caption rs-caption-1 sft start"
	data-x="center"
	data-hoffset="0"
	data-y="110"
	data-speed="800"
	data-start="1500"
	data-easing="Back.easeInOut"
	data-endspeed="300">
	Calendar!
</div>

<!-- LAYER -->
<div class="tp-caption rs-caption-2 sfb"
data-x="center"
data-hoffset="0"
data-y="210"
data-speed="800"
data-start="2500"
data-easing="Power4.easeOut"
data-endspeed="300"
data-endeasing="Power1.easeIn"
data-captionhidden="off"
style="z-index: 6">
일정을 세웠다면 <br>
달력에 표시해 보세요.
</div>
</li>

<!-- SLIDE 5 -->
<li data-transition="slidedown" data-slotamount="5" data-masterspeed="700"  data-title="Slide 5">
	<!-- MAIN IMAGE -->
	<img src="assets/img/sliders/revolution/test05.jpg"  alt="slidebg1"  data-bgfit="cover" data-bgposition="center center" data-bgrepeat="no-repeat">

	<!-- LAYERS -->
	<div class="tp-caption rs-caption-1 sft start"
	data-x="center"
	data-hoffset="0"
	data-y="110"
	data-speed="800"
	data-start="1500"
	data-easing="Back.easeInOut"
	data-endspeed="300">
	어렵지 않습니다.!!!
</div>

<!-- LAYER -->
<div class="tp-caption rs-caption-2 sfb"
data-x="center"
data-hoffset="0"
data-y="210"
data-speed="800"
data-start="2500"
data-easing="Power4.easeOut"
data-endspeed="300"
data-endeasing="Power1.easeIn"
data-captionhidden="off"
style="z-index: 6">

이해해셨죠? 지금 시작하세요! 
					<br>
					<br>
					<span class="page-scroll bgLoginBtn"><a href="#bgLoginBtn" class="btn-u btn-brd btn-brd-hover btn-u-light" id="bgLoginBtn">로그인</a></span>
					<span class="page-scroll bgSignUpBtn"><a href="#bgSignUpBtn" class="btn-u btn-brd btn-brd-hover btn-u-light" id="bgSignUpBtn">회원가입</a></span>		                 
</div>

</li>
</ul>
<div class="tp-bannertimer tp-bottom"></div>
<div class="tp-dottedoverlay twoxtwo"></div>
</div>
</div>
</section>
<!-- End Intro Section -->
	<!-- JS Global Compulsory -->
	<script src="assets/plugins/jquery/jquery.min.js"></script>
	<script src="assets/plugins/jquery/jquery-migrate.min.js"></script>
	<script src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>
	<!-- JS Implementing Plugins -->
	<script src="assets/plugins/smoothScroll.js"></script>
	<script src="assets/plugins/jquery.easing.min.js"></script>
	<script src="assets/plugins/pace/pace.min.js"></script>
	<script src="assets/plugins/jquery.parallax.js"></script>
	<script src="assets/plugins/counter/waypoints.min.js"></script>
	<script src="assets/plugins/counter/jquery.counterup.min.js"></script>
	<script src="assets/plugins/owl-carousel/owl.carousel.js"></script>
	<script src="assets/plugins/sky-forms-pro/skyforms/js/jquery.form.min.js"></script>
	<script src="assets/plugins/sky-forms-pro/skyforms/js/jquery.validate.min.js"></script>
	<script src="assets/plugins/revolution-slider/rs-plugin/js/jquery.themepunch.tools.min.js"></script>
	<script src="assets/plugins/revolution-slider/rs-plugin/js/jquery.themepunch.revolution.min.js"></script>
	<script src="assets/plugins/cube-portfolio/cubeportfolio/js/jquery.cubeportfolio.min.js"></script>
	<!-- JS Page Level-->
	<script src="assets/plugins/jquery/jquery-session.js"></script>
	<script src="assets/js/one.app.js"></script>
	<script src="assets/js/forms/login.js"></script>
	<script src="assets/js/forms/contact.js"></script>
	<script src="assets/js/plugins/pace-loader.js"></script>
	<script src="assets/js/plugins/owl-carousel.js"></script>
	<script src="assets/js/plugins/style-switcher.js"></script>
	<script src="assets/js/plugins/revolution-slider.js"></script>
	<script src="assets/js/plugins/cube-portfolio/cube-portfolio-lightbox.js"></script>
	<script>
		jQuery(document).ready(function() {
			App.init();
			App.initCounter();
			App.initParallaxBg();
			LoginForm.initLoginForm();
			ContactForm.initContactForm();
			OwlCarousel.initOwlCarousel();
			StyleSwitcher.initStyleSwitcher();
			RevolutionSlider.initRSfullScreen();
		});
	</script>
	<!--[if lt IE 9]>
		<script src="assets/plugins/respond.js"></script>
		<script src="assets/plugins/html5shiv.js"></script>
		<script src="assets/js/plugins/placeholder-IE-fixes.js"></script>
		<script src="assets/plugins/sky-forms-pro/skyforms/js/sky-forms-ie8.js"></script>
		<![endif]-->

	<!--[if lt IE 10]>
		<script src="assets/plugins/sky-forms-pro/skyforms/js/jquery.placeholder.min.js"></script>
		<![endif]-->

<!--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------->
	<!-- 로그인 Modal  -->
	<!-- Modal -->
	<div class="modal fade" id="LoginModal" role="dialog">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">
			<form class="form-horizontal" method="POST" id="logFrm">
				<div class="modal-header" style="padding: 30px 30px;">
					<button type="button" class="close" data-dismiss="modal" style="margin-top: 7px;">
						<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
					</button>
					<h4>
						<span class="glyphicon glyphicon-lock"></span> 로 그 인
					</h4>
				</div>
				<div class="modal-body" style="padding: 30px 30px; height: 220px">
						<div class="form-group">
							<label for="usrname"><span class="glyphicon glyphicon-user"></span> 이메일</label> 
							<input type="text" class="form-control" name="logEmail" placeholder="이메일을 입력하세요" id="logEmail" value="${emailSave }" width="200px">
						</div>
						<div class="form-group">
							<label for="psw"><span class="glyphicon glyphicon-eye-open"></span> 비밀번호</label> 
							<input type="password" class="form-control" name="logPwd" placeholder="비밀번호를 입력하세요" id="logPwd">
						</div>
						<div class="form-group">
							<label><input type="checkbox" value="1" id="logSave" name="logSave">아이디 저장</label>
						</div>					
				</div>
				<div class="modal-footer">
					<button type="button" id="logYes" name="logYes" form="logFrm"
						class="btn btn-success btn-default pull-left" value="Send" style="margin: 10px; margin-left: 35px">
						<span class="glyphicon glyphicon-plus"></span>완 료
					</button>	
					<button type="button" class="btn btn-danger btn-default pull-left" data-dismiss="modal" style="margin: 10px; margin-left: 15px">
						<span class="glyphicon glyphicon-remove"></span>취 소
					</button>
					<p style="float: right; margin: 10px; height: 30px" id="pwdSearch2">
						비밀번호<a href="#"> 찾기 </a><span class="glyphicon glyphicon-search"></span>
					</p>			
				</div>
				</form>
			</div>
		</div>
	</div>
	<!--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------->
	<!-- 회원가입  -->
	<!-- Modal -->
	<div class="modal fade" id="SignUpModal" role="dialog"  tabindex="-1" aria-labelledby="modal-login-label" aria-hidden="true">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header" style="padding: 30px 30px;">
					<button type="button" class="close" data-dismiss="modal" style="margin-top: 7px;">
						<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
					</button>
					<h4>
						<span class="glyphicon glyphicon-user"></span> 회 원 가 입
					</h4>
					
				</div>
				<form class="form-horizontal" method="POST" id="Frm" name="Frm">
					<div class="modal-body" style="padding: 40px 50px; height: 360px;">
						<div class="form-group" style="float: left; width: 83%" id="divEmail" >
							<label for="email"><span class="glyphicon glyphicon-user"></span> 이메일</label>
							<input type="text" class="email form-control" id="email" name="email" placeholder="이메일을 입력하세요">
						</div>
						<div class="form-group"	style="float: right; margin-top: 25px" id="divEmailCheck">
							<button type="button" class="btn btn-primary btn-block" name="emailCheck" id="emailCheck">
								<span class="glyphicon glyphicon-off"></span> 중복확인
							</button>
						</div>
						
						<div class="form-group" id="divNickname">
							<label for="nickname">
							<span class="glyphicon glyphicon-apple"></span> 닉네임</label>
							<input type="text" class="pwd form-control" id="nickname" name="nickname"
								placeholder="사용하실 대화명을 입력하세요.(4자리 이상)">
						</div>
						<div class="form-group" id="divPwd">
							<label for="psw">
							<span class="glyphicon glyphicon-eye-open"></span> 1차 비밀번호</label>
							<input type="password" class="pwd form-control" id="pwd" name="pwd"
								placeholder="1차 비밀번호를 입력하세요(4자리 이상)">
						</div>
						<div class="form-group" id="divPwd2">
							<label for="psw"><span
								class="glyphicon glyphicon-eye-open"></span> 2차 비밀번호</label> <input
								type="password" class="form-control" id="pwd2" name="pwd2"
								placeholder="2차 비밀번호를 입력하세요(4자리 이상)">
						</div>
						<div class="form-group" style="float:left; width : 75%" id="divCheckNum">
							<label for="checknum"><span	class="glyphicon glyphicon-envelope"></span> 인증번호</label> 
							<input type="text" class="form-control" id="inputCheckNum" name="inputCheckNum" placeholder="인증번호를 입력하세요">
						</div>
						<div class="form-group" style="float: right; margin-top: 25px" id="divCheckConfirm" >
							<button type="button" class="btn btn-primary btn-block" id="checkConfirm" name="checkConfirm">
								<span class="glyphicon glyphicon-ok"></span>확인
							</button>
						</div>
						<div class="form-group" style="float: right; margin-top: 25px; margin-right: 20px" id="divinputCheckNum">
							<button type="button" class="btn btn-primary btn-block"	id="sendCheckNum">
								<span class="glyphicon glyphicon-envelope"></span>인증
							</button>
						</div>
					</div>
				<div class="modal-footer">
					<button type="button" id="signYes" name="signYes" class="btn btn-success btn-default pull-left"  value="Send" style="margin: 10px; margin-left: 35px" disabled>
						<span class="glyphicon glyphicon-plus"></span>완 료
					</button>
					<button type="button" class="btn btn-danger btn-default pull-left"
						data-dismiss="modal" value="Input Button" style="margin: 10px">
						<span class="glyphicon glyphicon-remove"></span>취 소
					</button>
					<p style="float: right; margin: 10px; height: 30px" id="pwdSearch">
						비밀번호<a href="#"> 찾기 </a><span class="glyphicon glyphicon-search"></span>
					</p>
				</div>
				</form>
			</div>
		</div>
	</div>
	<!-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ -->
	<!-- 이메일,비밀번호 찾기 Modal  -->
	<!-- Modal -->
	<div class="modal fade" id="searchModal" role="dialog">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">
			<form class="form-horizontal" method="POST" id="searchFrm">
				<div class="modal-header" style="padding: padding: 30px 30px;">
					<button type="button" class="close" data-dismiss="modal" style="margin-top: 7px;">
						<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
					</button>
					<h4>
						<span class="glyphicon glyphicon-lock"></span> 비밀번호 찾기
					</h4>
				</div>
				<div class="modal-body" style="padding: 30px 30px;height: 185px">
						<div class="form-group">
							<label for="usrname"><span class="glyphicon glyphicon-user"></span> 이메일</label> 
							<input type="text" class="form-control" name="searchEmail" placeholder="이메일을 입력하세요" id="searchEmail" value="${emailSave }">
						</div>
						<div class="form-group">
							<label for="psw"><span class="glyphicon glyphicon-eye-open"></span> 닉네임</label> 
							<input type="password" class="form-control" name="searchNickname" placeholder="비밀번호를 입력하세요" id="searchNickname">
						</div>				
				</div>
				<div class="modal-footer">
					<button type="button" id="searchYes" name="searchYes" form="searchFrm"
						class="btn btn-success btn-default pull-left" value="Send" style="margin: 10px; margin-left: 35px">
						<span class="glyphicon glyphicon-plus"></span>완 료
					</button>	
					<button type="button" class="btn btn-danger btn-default pull-left" data-dismiss="modal" style="margin: 10px; margin-left: 15px">
						<span class="glyphicon glyphicon-remove"></span>취 소
					</button>					
				</div>
				</form>
			</div>
		</div>
	</div>
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
			<script>	
			$(document).ready(function() {
				//로그인 Modal 실행 (아이디 저장까지)
				$("#myBtn1").click(function() {
					//var logEmail = $('#logEmail').val("");
					var logPwd = $('#logPwd').val("");
					var logNickname = $('#logNickname').val("");
					$.ajax({
						url : 'emailSaveGet.do',
						type : 'post',
						data : $('#logFrm').serialize(),
						success : function(data) {
							var logEmail = $('#logEmail').val(data);
							if (data != "")
								$('#logSave').attr('checked', true);
							else
								$('#logSave').attr('checked', false);
						}
					});
					$("#LoginModal").modal();
				});
				
				$(".bgLoginBtn").click(function() {
					//var logEmail = $('#logEmail').val("");
					var logPwd = $('#logPwd').val("");
					var logNickname = $('#logNickname').val("");
					$.ajax({
						url : 'emailSaveGet.do',
						type : 'post',
						data : $('#logFrm').serialize(),
						success : function(data) {
							var logEmail = $('#logEmail').val(data);
							if (data != "")
								$('#logSave').attr('checked', true);
							else
								$('#logSave').attr('checked', false);
						}
					});
					$("#LoginModal").modal();
				});				

				//회원가입 창 액션
				$("#myBtn2").click(function() {
					$("#SignUpModal").modal();
				});
				
				$(".bgSignUpBtn").click(function() {
					$("#SignUpModal").modal();
				});
				
				//비밀번호 찾기 창 액션
				$("#pwdSearch").click(function() {
					$('#SignUpModal').modal('toggle');
					var searchEmail = $('#searchEmail').val("");
					var searchNickname = $('#searchNickname').val("");
					$("#searchModal").modal();
				});
				$("#pwdSearch2").click(function() {
					$('#LoginModal').modal('toggle');
					var searchEmail = $('#searchEmail').val("");
					var searchNickname = $('#searchNickname').val("");
					$("#searchModal").modal();
				});
				
				//비밀번호 변경 창 액션
				$("#userDetail").click(function() {
					var emailChange = $('#emailChange').val();
					//$('#emailChange').attr('disabled', true);
					var nicknameChange = $('#nicknameChange').val();
					var pwdChange = $('#pwdChange').val("");
					var newPwdChange = $('#newPwdChange').val("");
					var newPwdChange2 = $('#newPwdChange2').val("");
					$("#UserInfoChangeModal").modal();
				});
				
				//아이디 중복확인 액션
				$('#emailCheck').click(function() {
					$.ajax({
						url : 'emailCheckOK.do',
						type : 'post',
						data : $('#Frm').serialize(),
						success : function(data) {
							if (data == "0") {
								alert("사용가능한 email입니다.");
							} else {
								alert("이미 사용중인 email입니다.");
							}
						}
					});
				});
				
				//이메일 보내기
				$('#sendCheckNum').click(function() {
					var email = $('#email').val();
					if (email.trim()=="") {
						$('#email').focus();
						return;
					} else {
						alert("이메일 전송");	
					}
					$.ajax({
						url : 'emailCheckNumSend.do',
						type : 'post',
						data : $('#Frm').serialize(),
						success : function(data) {
							//이메일 전송완료
						}
					});
				});
				
				//이메일 인증확인 액션
				$('#checkConfirm').click(function() {
					$.ajax({
						url : 'checkConfirm.do',
						type : 'post',
						data : $('#Frm').serialize(),
						success : function(data) {
							if(data=="ok"){
								alert("인증번호가 확인되었습니다.")
								$("#signYes").attr("disabled", false);	
							} else {
								alert("인증번호가 틀립니다.");
							}
						}
					});
				});

				//회원가입 액션
				$('#signYes').click(function() {
					var email = $('#email').val();
					var nickname = $('#nickname').val();
					var pwd = $('#pwd').val();
					var pwd2 = $('#pwd2').val();
					var inputCheckNum = $('#inputCheckNum').val();
					if (email.trim() == "" || email.length < 10) {
						$('#email').focus();
						return;
					} else if (nickname.trim() == "" || nickname.length <4) {
						$('#nickname').focus();
						return;
					} else if (pwd.trim() == "" || pwd.length <4) {
						$('#pwd').focus();
						return;
					} else if (pwd2.trim() == "" || pwd2.length <4) {
						$('#pwd2').focus();
						return;
					} else if (inputCheckNum.trim() == "" || inputCheckNum.length <6) {
						$('#inputCheckNum').focus();
						return;
					} else if (pwd != pwd2) {
						alert("비밀번호가 다릅니다");
						$('#pwd2').val("");
						$('#pwd2').focus();
						return;
					} else {
						$.ajax({
							url : 'joinOK.do',
							type : 'post',
							data : $('#Frm').serialize(),
							success : function(data) {
								alert("회원가입이 완료되었습니다.");
								$('#SignUpModal').modal('toggle');
								$('#email').val("");
								$('#nickname').val("");
								$('#pwd').val("");
								$('#pwd2').val("");
								$('#inputCheckNum').val("");
							}
						});
					}
				});

				//로그인 액션
				$('#logYes').click(function() {
					var logEmail = $('#logEmail').val();
					var logPwd = $('#logPwd').val();
					var logSave = $('#logSave').val();
					if (logEmail.trim() == "" || logEmail.trim() == null) {
						alert("Email을 입력해주세요.");
						$('#logEmail').focus();
						return;
					} else if (logPwd.trim() == "") {
						alert("비밀번호를 입력해주세요.");
						$('#logPwd').focus();
						return;
					} else {
						$.ajax({
							url : 'loginOK.do',
							type : 'post',
							data : $('#logFrm').serialize(),
							success : function(data) {
								if (data == "noemail") {
									alert("E-Mail이 존재하지 않습니다.");
									$('#logEmail').val("");
									return;
								} else if (data == "nopwd") {
									alert("비밀번호가 틀립니다.");
									$('#logPwd').val("");
									return;
								} else {
									alert("로그인 성공");
									$('#logEmail').val("");
									$('#logPwd').val("");
									$('#LoginModal').modal('toggle');
						             $.session.set("logSearchInput","none");
						             $.session.set("logSearchType","none"); 
									location.href = "onm.do";
								}
							}
						});
					}
				});

				// 로그인 시 아이디 저장하는 액션
				$('#logYes').click(function() {
					if ($('#logSave').attr('checked')) {
						$.ajax({
							url : 'emailSaveOK.do',
							type : 'post',
							data : $('#logFrm').serialize(),
							success : function(data) {
							}
						});
					} else {
						$.ajax({
							url : 'emailSaveOK.do',
							type : 'post',
							data : $('#logFrm').serialize(),
							success : function(data) {
							}
						});
					}
				});

				//로그인 아이디 저장 액션
				$('#logSave').click(function() {
					var logSave = $('#logSave').val();
					if ($('#logSave').attr('checked')) {
						alert("개인 컴퓨터가 아닐시 개인정보 유출에 위험이 있을 수 있습니다.");
					}
				});

				//로그아웃
				$('#myBtn3').click(function() {
					$.ajax({
						url : 'logOutOK.do',
						type : 'post',
						data : $('#logFrm').serialize(),
						success : function(data) {
							alert("성공적으로 로그아웃 되었습니다");
						}
					});
				});
				
				//비밀번호 찾기 액션
				$('#searchYes').click(function(){
					alert("정확히 입력하셨다면, 이메일을 확인해보세요.")
					$.ajax({
						url : 'searchPwdOK.do',
						type : 'post',
						data : $('#searchFrm').serialize(),
						success : function(data) {
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
									alert("기존 비밀번호가 틀립니다.");
									var pwdChange = $('#pwdChange').val("");
								} else {
									alert("회원정보 변경완료");
									$('#UserInfoChangeModal').modal('toggle');
								}
							}
						});						
					}
				});
			});
		</script>
</body>
</html>