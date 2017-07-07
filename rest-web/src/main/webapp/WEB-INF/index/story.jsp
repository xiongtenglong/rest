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
								<h1>旅途中的故事</h1>
								<h2>每一次旅途都是你这一生宝贵的财富，朝花夕拾，你会泪流满面，在爱彼邻社区分享你旅途中的故事</h2>
							</div>
						</div>
					</div>
				</div>
			</div>
		</header>

		<div id="fh5co-project">
			<div class="container">
				<div class="row">
<c:forEach items="${storyList}" var="s">
					<div class="col-md-4 col-sm-6 fh5co-project animate-box" data-animate-effect="fadeIn">
						<a href="storyInfo.action?storyId=${s.storyId}"><img src="${s.img}" alt="Free HTML5 Website Template by FreeHTML5.co" class="img-responsive">
							<h3>${s.name}</h3>
							<span>${s.createTime}</span>
						</a>
					</div>
</c:forEach>

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

