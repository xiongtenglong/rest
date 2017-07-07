<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
							<h1>全部房源</h1>
							<h2>无论您想在公寓里住一个晚上，或在城堡里呆一个星期，又或在别墅住上一个月，您都能以任何价位享受到爱彼迎在全球191个国家的65,000多个城市为您带来的独一无二的住宿体验。</h2>
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>

	<div id="fh5co-project">
		<div class="container">
			<div class="row">
				<c:forEach items="${houseList}" var="h">
					<div class="col-md-4 col-sm-6 fh5co-project animate-box" data-animate-effect="fadeIn">
						<a href="view.action?houseId=${h.houseId}"><img src="${h.img1}" alt="Free HTML5 Website Template by FreeHTML5.co" class="img-responsive">
							<h3>${h.city}</h3>
							<span>${h.type}</span>
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

