<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<!DOCTYPE html>
<html lang="ko">


<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ashion Template">
    <meta name="keywords" content="Ashion, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title><spring:message code="message.about.title"/></title>
    
    <!-- 파비콘 삽입 -->
	<link rel="icon" href="img/StarToUp_Logo.png">

	<link
   href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined"
   rel="stylesheet" />
	
    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cookie&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500;600;700;800;900&display=swap"
    rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="css/font.css" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css">
    
    <link rel="stylesheet" href="css/header.css" type="text/css">

  
</head>

<style>
	
    .about{
       position:relative;
        background-image: url("img/about1.jpg");
        background-repeat: no repeat;
       
        border:none;
        height:1900px;
        margin-top:10%;
       
    }
    
    .content{
    	position:absolute;
        font-family: 'Montserrat', sans-serif;
        font-size: 50px;
        font-weight: bold;  
        z-index:2;
    }
    
    .aboutImg{
    	position:absolute;
    	z-index:2;
    }
    .about-cover{
    	position:absolute;
    	height:100%;
    	width:100%;
    	
    	background: linear-gradient(to top, rgba(255,255,255,1)  ,transparent, rgba(255,255,255,1) );
    	background-repeat: no repeat;
    	border:none;
    	
    	z-index:1;
    }
    
</style>
<header>
	   <div class="header_box">
      <div class="top_left_box">
         <div class="logo_box"><a href="main.do" style="color: black;
    "><img src="img/default.png" style="margin-top:5px; width: 30px; height:30px;"/></a></div>
         <div class="menu_item1"><a href="store.do" style="color: black;
    ">STORE</a></div>
         <div class="menu_item1"><a href="info.do" style="color: black;
    ">INFO</a></div>
         <div class="menu_item1"><a href="about.do" style="color: black;
    ">ABOUT</a></div>
      </div>
      <div class="top_right_box">
      <c:choose>
      	<c:when test="${param.lang eq 'en'}">
      		<div style="width: 20px; margin-right:15%; align:left;"><a href="about.do?lang=ko"><img alt="ENGLISH" src="img/lang.png"></a></div>
     	</c:when>
     	<c:otherwise>
      		<div style="width: 20px; margin-right:15%; align:left;"><a href="about.do?lang=en"><img alt="한국어" src="img/lang.png"></a></div>
      	</c:otherwise>
      </c:choose>
        <c:if test="${member.mId == 'admin' || member.mId == 'ADMIN' }">
            <div style="margin-right:10%; margin-top:5%;">
               <p style="font-weight: bold; color:black;"> <a href="adminFunding.do">ADMIN</a></p>
            </div>
         </c:if>
         <div class="icon_box1">
            <div class="header__right1">
               <ul class="header__right__widget">
                  <li><a href="shopcart.do"><span class="material-symbols-outlined">&#xE87D;</span>
                        <c:if test="${member.mId != null}">
                            <div class="tip">${member.mLikecnt}</div> 
                        </c:if>
                      </a>
                  </li>

               </ul>
            </div>
            <div class="icon_box1">
               <nav class="header__menu">
                  <ul>
                     <li style="position: relative;"><a href="#"><span
                           class="material-symbols-outlined">&#xF0D3;</span></a>
                        <ul class="dropdown"
                           style="text-align: right; width: 110px; border-radius: 5px; background-color: rgba(0, 0, 0, 0.3); position: absolute; left: -80px; top: 38px">
                           <c:choose>
                               <c:when test="${member.mId == 'admin' || member.mId == 'ADMIN' }">
                                   <li><a href="myFundingList.do"><spring:message code="message.about.gnb1"/></a></li>
                                    <li><a href="shopcart.do"><spring:message code="message.about.gnb2"/></a></li>
                                    <li><a href="logout.do"><spring:message code="message.about.gnb3"/></a></li>
                               </c:when>
                              <c:when test="${member.mId != null && member.mPw == 'KAKAO'}">
                                 <li><a href="myFundingList.do"><spring:message code="message.about.gnb4"/></a></li>
                                 <li><a href="shopcart.do"><spring:message code="message.about.gnb5"/></a></li>
                                <li><a href="withdrowal2.do"><spring:message code="message.about.gnb6"/></a></li>
                                 <li><a href="logout.do"><spring:message code="message.about.gnb7"/></a></li>
                              </c:when>
                              <c:when test="${member.mId != null }">
                                 <li><a href="myFundingList.do"><spring:message code="message.about.gnb4"/></a></li>
                                 <li><a href="shopcart.do"><spring:message code="message.about.gnb5"/></a></li>
                                <li><a href="withdrowal.do"><spring:message code="message.about.gnb6"/></a></li>
                                 <li><a href="logout.do"><spring:message code="message.about.gnb7"/></a></li>
                              </c:when>
                               <c:otherwise>
                                  <li><a href="login.do"><spring:message code="message.about.gnb8"/></a></li>
                                 <li><a href="agreement.do"><spring:message code="message.about.gnb9"/></a></li>
                     </c:otherwise>
                    </c:choose>      
                        </ul></li>
                  </ul>
               </nav>

            </div>
         </div>
      </div>
   </div>
   <div class="header_box_space"></div>
</header>


<body>
 
   <div class="header_box_space"></div>

    

    <!-- About Section Begin -->
    <section class="blog spad" >
      
            
            	 <div style="margin-top:5%; margin-left:5%;" >
            	 	 <div class="blog__item" style="text-align:center">
            	 	 <div class="blog__item__text">
            	 	 	<h1 style="font-weight: bold; font-size: 50px; "><spring:message code="message.about.title2"/></h1>
            	 	 </div>
            	 	 </div>
            	 
            	</div>
            	<div style="margin-top:10%; margin-left:5%;" >
            	 	 <div class="blog__item" style="text-align:center">
            	 	 <div class="blog__item__text">
            	 	 	<h1 style="font-weight: bold; font-size: 60px; "><spring:message code="message.about.center"/></h1>
            	 	 </div>
            	 	 </div>
            	 
            	</div>
            	<div style="margin-top:5%; margin-left:5%;" >
            	 	 <div class="blog__item" style="text-align:center">
            	 	 <div class="blog__item__text">
            	 	 	<h1 style="font-weight: bold; font-size: 60px; "><spring:message code="message.about.content1"/></h1>
            	 	 </div>
            	 	 </div>
            	</div>
            	<div style="margin-top:5%; margin-left:5%;" >
            	 	 <div class="blog__item" style="text-align:center">
            	 	 <div class="blog__item__text">
            	 	 	<h1 style="font-weight: bold; font-size: 60px; display:inline;"><spring:message code="message.about.content2"/></h1>
            	 	 	<h1 style="font-weight: bold; font-size: 60px; color:#787878; display:inline;"><spring:message code="message.about.content3"/></h1>
            	 	 	<h1 style="font-weight: bold; font-size: 60px; display:inline; margin-left:20px;"><spring:message code="message.about.content4"/></h1>
            	 	 	<h1 style="font-weight: bold; font-size: 60px; color:#787878; display:inline;"><spring:message code="message.about.content5"/></h1>
            	 	 </div>
            	 	 </div>
            	</div>
            	<!-- margin-left:50%; margin-top:100%; -->
            	<div class="about">
            		<div class="content" style="margin-left:15%; margin-top:40%; text-align:right;">
            			<h1 style="color:white; font-weight:bold; "><spring:message code="message.about.fund1"/></h1>
            			<h1 style="color:black; font-weight:bold; "><spring:message code="message.about.fund2"/></h1>
            			<h1 style="color:white; font-weight:bold; "><spring:message code="message.about.fund3"/></h1>
            		</div>
            		<div class="aboutImg" style="transform: translate(80%, 40%);">
            		    <img alt="행성이미지1" src="img/about2.png"> 
            		</div>
            		<div class="aboutImg" style="transform: translate(10%, 220%);">
            		    <img alt="행성이미지2" src="img/about3.png"> 
            		</div>
            		<div class="content" style="transform: translate(160%, 725%); text-align:left;">
            			<h1 style="color:white; font-weight:bold;"><spring:message code="message.about.fund4"/></h1>
            			<h1 style="color:black; font-weight:bold; display:inline; "><spring:message code="message.about.fund5"/></h1>
            			<h1 style="color:white; font-weight:bold; display:inline; "><spring:message code="message.about.fund6"/></h1>
            		</div>
            		<div class="about-cover"></div>
            	</div>
            	<div style="margin-top:10%; margin-left:5%;" >
            	 	 <div class="blog__item" style="text-align:center">
            	 	 <div class="blog__item__text">
            	 	 	<h1 style="font-weight: bold; font-size: 70px; "><spring:message code="message.about.about"/></h1>
            	 	 </div>
            	 	 </div>
            	</div>
            	<div style="margin-top:5%; margin-left:5%;" >
            	 	 <div class="blog__item" style="text-align:center">
            	 	 <div class="blog__item__text">
            	 	 	<h1 style=" font-size: 45px; "><spring:message code="message.about.us1"/></h1>
            	 	 	<h1 style="font-size: 45px; "><spring:message code="message.about.us2"/></h1>
            	 	 </div>
            	 	 </div>
            	</div>
		<div class="row" style="margin-left: 15%; margin-right: 15%;">
			<div class="col-lg-6 col-md-4 col-sm-6">
				<div style="display: flex; justify-content: center;">
					<img alt="재환" src="img/jae-hwan.png"
						style="width: 280px; height: 280px;">
				</div>
				<h3 style="text-align: center; font-weight: bold; margin-top: 5%;"><spring:message code="message.about.jh1"/></h3>
				<h5 style="text-align: center; margin-top: 3%;"><spring:message code="message.about.jh2"/></h5>
				<h5 style="text-align: center; margin-top: 3%;"><spring:message code="message.about.jh3"/></h5>
			</div>
			<div class="col-lg-6 col-md-4 col-sm-6">
				<div style="display: flex; justify-content: center;">
					<img alt="소진" src="img/so-jin.png"
						style="width: 280px; height: 280px;">
				</div>
				<h3 style="text-align: center; font-weight: bold; margin-top: 5%;"><spring:message code="message.about.sj1"/></h3>
				<h5 style="text-align: center; margin-top: 3%;"><spring:message code="message.about.sj2"/></h5>
				<h5 style="text-align: center; margin-top: 3%;"><spring:message code="message.about.sj3"/></h5>
			</div>
			<div class="col-lg-6 col-md-4 col-sm-6" style="margin-top: 5%;">
				<div style="display: flex; justify-content: center;">
					<img alt="정연" src="img/jeong-yeon.png"
						style="width: 280px; height: 280px;">
				</div>
				<h3 style="text-align: center; font-weight: bold; margin-top: 5%;"><spring:message code="message.about.jy1"/></h3>
				<h5 style="text-align: center; margin-top: 3%;"><spring:message code="message.about.jy2"/></h5>
				<h5 style="text-align: center; margin-top: 3%;"><spring:message code="message.about.jy3"/></h5>

			</div>
			<div class="col-lg-6 col-md-4 col-sm-6" style="margin-top: 5%;">
				<div style="display: flex; justify-content: center;">
					<img alt="민경" src="img/min-gyeong.png"
						style="width: 280px; height: 280px;">
				</div>
				<h3 style="text-align: center; font-weight: bold; margin-top: 5%;"><spring:message code="message.about.mg1"/></h3>
				<h5 style="text-align: center; margin-top: 3%;"><spring:message code="message.about.mg2"/></h5>
				<h5 style="text-align: center; margin-top: 3%;"><spring:message code="message.about.mg3"/></h5>
			</div>
			<div class="col-lg-6 col-md-4 col-sm-6" style="margin-top: 5%;">
				<div style="display: flex; justify-content: center;">
					<img alt="지원" src="img/ji-won.png"
						style="width: 280px; height: 280px;">
				</div>
				<h3 style="text-align: center; font-weight: bold; margin-top: 5%;"><spring:message code="message.about.jw1"/></h3>
				<h5 style="text-align: center; margin-top: 3%;"><spring:message code="message.about.jw2"/></h5>
				<h5 style="text-align: center; margin-top: 3%;"><spring:message code="message.about.jw3"/></h5>
			</div>
			<div class="col-lg-6 col-md-4 col-sm-6" style="margin-top: 5%;">
				<div style="display: flex; justify-content: center;">
					<img alt="재호" src="img/jae-ho.png"
						style="width: 280px; height: 280px;">
				</div>
				<h3 style="text-align: center; font-weight: bold; margin-top: 5%;"><spring:message code="message.about.jh4"/></h3>
				<h5 style="text-align: center; margin-top: 3%;"><spring:message code="message.about.jh5"/></h5>
				<h5 style="text-align: center; margin-top: 3%;"><spring:message code="message.about.jh6"/></h5>
			</div>

		</div>
		</section>
		
		<div>
		 <h1 style="font-size:21vw; font-weight:bold; margin-left:-6%;margin-top:10%; white-space:nowrap;  "><spring:message code="message.about.under"/></h1>
		</div>
		 <!-- About Section End -->
		 
    <!-- Js Plugins -->
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.magnific-popup.min.js"></script>
    <script src="js/jquery-ui.min.js"></script>
    <script src="js/mixitup.min.js"></script>
    <script src="js/jquery.countdown.min.js"></script>
    <script src="js/jquery.slicknav.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/jquery.nicescroll.min.js"></script>
    <script src="js/main.js"></script>
</body>

</html>    
    