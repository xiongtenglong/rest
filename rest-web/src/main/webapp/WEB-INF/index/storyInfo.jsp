<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML>
<html>
	<body>
	<%@include file="/WEB-INF/index/_head.jsp" %>
	<div class="fh5co-loader"></div>
	
	<div id="page">

		<header id="fh5co-header" class="fh5co-cover fh5co-cover-sm" role="banner" style="background-image:url(/index/images/img_bg_1.jpg);">
			<div class="overlay"></div>
			<div class="container">
				<div class="row">
					<div class="col-md-8 col-md-offset-2 text-center">
						<div class="display-t">
							<div class="display-tc animate-box" data-animate-effect="fadeIn">
								<h1>分享旅途的快乐</h1>
								<h2></h2>
							</div>
						</div>
					</div>
				</div>
			</div>
		</header>

		<div id="fh5co-about">
			<div class="container">
				<div class="about-content">
					<div class="row animate-box">
						<div class="col-md-6 col-md-push-6">
							<div class="desc">
								<h3>${story.name}</h3>
								<p>${story.text}</p>
							</div>

						</div>
						<div class="col-md-6 col-md-pull-6">
							<img class="img-responsive" src="${story.img}" alt="about">
						</div>

					</div>
				</div>
				<div class="row animate-box">
					<div class="col-md-8 col-md-offset-2 text-center fh5co-heading">
						<span>Related story</span>
						<h2>相关故事</h2>
					</div>
				</div>
				<div class="row">
					<div class="col-md-4 col-sm-4 animate-box" data-animate-effect="fadeIn">
						<div class="fh5co-staff">
							<img src="/images/story/4/1.jpg" alt="Free HTML5 Templates by FreeHTML5.co">
							<h3>道顿堀闹市中，静享法善寺神秘时光</h3>
							<strong class="role">Web Designer</strong>

						</div>
					</div>
					<div class="col-md-4 col-sm-4 animate-box" data-animate-effect="fadeIn">
						<div class="fh5co-staff">
							<img src="/images/story/5/1.jpg" alt="Free HTML5 Templates by FreeHTML5.co">
							<h3>法租界探店之设计师咖啡厅</h3>
							<strong class="role">Front-end Developer</strong>

						</div>
					</div>
					<div class="col-md-4 col-sm-4 animate-box" data-animate-effect="fadeIn">
						<div class="fh5co-staff">
							<img src="/images/story/6/1.jpg" alt="Free HTML5 Templates by FreeHTML5.co">
							<h3>这家少女心的甜点店让我觉得，成都，是甜的</h3>
							<strong class="role">Back-end Developer</strong>

						</div>
					</div>
				</div>
			</div>
		</div>






		<%@include file="/WEB-INF/index/_foot.jsp" %>
	</div>

	<div class="gototop js-top">
		<a href="#" class="js-gotop"><i class="icon-arrow-up"></i></a>
	</div>
	

	</body>
</html>

