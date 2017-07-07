<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <!--TU-->
    <link type="text/css" rel="Stylesheet" href="/houseView/css/imageflow.css" />
    <script type="text/javascript" src="/houseView/js/jquery.js"></script>
    <script type="text/javascript" src="/houseView/js/imageflow.js"></script>
    <!-- Animate.css -->
    <link rel="stylesheet" href="/houseView/css/animate.css">
    <!-- Icomoon Icon Fonts-->
    <link rel="stylesheet" href="/houseView/css/icomoon.css">
    <!-- Bootstrap  -->
    <link rel="stylesheet" href="/houseView/css/bootstrap.css">
    <!-- Theme style  -->
    <link rel="stylesheet" href="/houseView/css/style.css">

    <!-- Modernizr JS -->
    <script src="/houseView/js/modernizr-2.6.2.min.js"></script>
    <!-- FOR IE9 below -->
    <!--[if lt IE 9]>
    <script src="/houseView/js/respond.min.js"></script>
    <![endif]-->

</head>
<body>
<div class="fh5co-loader"></div>

<div id="page">
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
                <div id="fh5co-logo"><a href="home.action">Air<span>.</span></a></div>
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
    <header id="fh5co-header" class="fh5co-cover fh5co-cover-sm" role="banner" style="background-image:url(/index/images/img_bg_1.jpg);">
        <div class="overlay"></div>
        <div class="container">
            <div class="row">
                <!--TU-->
                <div class="col-md-8 col-md-offset-2 text-center">
                    <div class="display-t">
                        <div class="display-tc animate-box" data-animate-effect="fadeIn">
                            <h1>${house.city}</h1>
                            <h2>${house.address}<a href="#" target="_blank"></a></h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <div id="fh5co-services" class="fh5co-bg-section">
        <div class="container">
            <div class="row">
                <div id="LoopDiv">
                    <input id="S_Num" type="hidden" value="8" />
                    <div id="starsIF" class="imageflow">
                        <img src="${house.img2}" longdesc="#" width=550px height=350px alt="Picture" />
                        <img src="${house.img3}" longdesc="#" width=550px height=350px alt="Picture" />
                        <img src="${house.img4}" longdesc="#" width=550px height=350px alt="Picture" />
                        <img src="${house.img5}" longdesc="#" width=550px height=350px alt="Picture" />
                        <img src="${house.img6}" longdesc="#" width=550px height=350px alt="Picture" />
                    </div>
                </div>

                <!--BIAO-->
                <div class="col-md-1 col-sm-1">
                    <div class="feature-center animate-box" data-animate-effect="fadeIn">
						<span class="icon">
							<i class="icon-eye"></i>
						</span>
                        <h3>城市，类型，面积</h3>
                        <p>${house.city},${house.type},${house.area}</p>
                    </div>
                </div>
                <div class="col-md-1 col-sm-1">
                    <div class="feature-center animate-box" data-animate-effect="fadeIn">
						<span class="icon">
							<i class="icon-command"></i>
						</span>
                        <h3>易居人数，房间数量，房屋租金</h3>
                        <p>${house.liveNum},${house.roomNum},${house.money}</p>
                    </div>
                </div>
                <div class="col-md-1 col-sm-1">
                    <div class="feature-center animate-box" data-animate-effect="fadeIn">
						<span class="icon">
							<i class="icon-mouse"></i>
						</span>
                        <h3>交通情况</h3>
                        <p>${house.ask}</p>
                    </div>
                </div>
                <div class="col-md-1 col-sm-1">
                    <div class="feature-center animate-box" data-animate-effect="fadeIn">
						<span class="icon">
							<i class="icon-publish"></i>
						</span>
                        <h3>详细信息</h3>
                        <p>${house.address}</p>
                    </div>
                </div>
                <div class="col-md-1 col-sm-1">
                    <div class="feature-center animate-box" data-animate-effect="fadeIn">
						<span class="icon">
							<i class="icon-suitcase"></i>
						</span>
                        <h3>配套设施</h3>
                        <p>${house.device}</p>
                    </div>
                </div>
                <div class="col-md-1 col-sm-1">
                    <div class="feature-center animate-box" data-animate-effect="fadeIn">
						<span class="icon">
							<i class="icon-shield"></i>
						</span>
                        <h3>联系方式</h3>
                        <p>${house.tel}</p>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <div id="fh5co-started">
        <div class="container">
            <div class="row animate-box">
                <div class="col-md-8 col-md-offset-2 text-center fh5co-heading">
                    <h2>立即预定</h2>
                    <p>开始全新的旅途住宿体验</p>
                </div>
            </div>
            <div class="row animate-box">
                <div class="col-md-8 col-md-offset-2">
                    <form class="form-inline" action="advance?houseId=${house.houseId}" method="post">
                        <div class="col-md-6 col-md-offset-3 col-sm-6">
                           <button type="submit" class="btn btn-default btn-block" >预定</button>
                        </div>
                    </form>
                </div>
            </div>

        </div>
    </div>

    <!-- jQuery -->
    <script src="/houseView/js/jquery.min.js"></script>
    <!-- jQuery Easing -->
    <script src="/houseView/js/jquery.easing.1.3.js"></script>
    <!-- Bootstrap -->
    <script src="/houseView/js/bootstrap.min.js"></script>
    <!-- Waypoints -->
    <script src="/houseView/js/jquery.waypoints.min.js"></script>
    <!-- Main -->
    <script src="/houseView/js/main.js"></script>

</body>
</html>

