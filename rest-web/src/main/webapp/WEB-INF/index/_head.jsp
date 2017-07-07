<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML>
<html>
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Orange &mdash; Free Website Template, Free HTML5 Template by FreeHTML5.co</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Free HTML5 Website Template by FreeHTML5.co" />
	<meta name="keywords" content="free website templates, free html5, free template, free bootstrap, free website template, html5, css3, mobile first, responsive" />

  	<!-- Facebook and Twitter integration -->
	<meta property="og:title" content=""/>
	<meta property="og:image" content=""/>
	<meta property="og:url" content=""/>
	<meta property="og:site_name" content=""/>
	<meta property="og:description" content=""/>
	<meta name="twitter:title" content="" />
	<meta name="twitter:image" content="" />
	<meta name="twitter:url" content="" />
	<meta name="twitter:card" content="" />

	<link href='https://fonts.googleapis.com/css?family=Work+Sans:400,300,600,400italic,700' rel='stylesheet' type='text/css'>
	<link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,700" rel="stylesheet">
	
	<!-- Animate.css -->
	<link rel="stylesheet" href="/index/css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="/index/css/icomoon.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="/index/css/bootstrap.css">
	<!-- Theme style  -->
	<link rel="stylesheet" href="/index/css/style.css">

	<!-- Modernizr JS -->
	<script src="/index/js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="/index/js/respond.min.js"></script>
	<![endif]-->
	</head>
	<body>
	<nav id="tf-menu" >
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
              <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
             <div id="fh5co-logo"><a href="home.action">AirBin<span>.</span></a></div>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div>
              <ul class="nav navbar-nav navbar-right">
                <li><a href="home.action" class="scroll123">主页</a></li>
                <li><a href="center.action" class="scroll123">个人中心</a></li>
                <li><a href="houseAll.action" class="scroll123">房源</a></li>
                <li><a href="story.action" class="scroll123">故事</a></li>
				  <li class="top">
					  <a href="#" class="top-weixin">
						  手机端<div><img src="/index/images/index/ewm.jpg"></div>
					  </a></li>
				  <!-- 如果用户没有登陆, 就提示用户登陆或注册 -->
				  <c:if test="${ empty session_user}">
					  <li><a href="toLogin.action" class="scroll123">注册</a></li>
					  <li><a href="toLogin.action" class="scroll123">登录</a></li>
				  </c:if>
				  <!-- 如果用户已经登陆了, 就提示欢迎xxx回来 -->
				  <c:if test="${ !(empty session_user) }">
					<%--  <li>欢迎, ${ session_user.username }回来</li>--%>
					  <li><a href="logout.action" class="scroll123">退出</a></li>
				  </c:if>
			  </ul>
            </div><!-- /.navbar-collapse -->
        </div><!-- /.container-fluid -->
    </nav>


	<!-- jQuery -->
	<script src="/index/js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="/index/js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="/index/js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="/index/js/jquery.waypoints.min.js"></script>
	<!-- Main -->
	<script src="/index/js/main.js"></script>
	</body>
</html>

