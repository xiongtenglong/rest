<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML>
<html>
	<body>
	<%@include file="/WEB-INF/index/_head.jsp" %>

	<!-- 搜索框 -->
	<header id="fh5co-header" class="fh5co-cover" role="banner" style="background-image:url(/index/images/img_bg_1.jpg);">
		<div class="overlay"></div>
		<div class="container">
			<div class="row">
				<div class="col-md-10 col-md-offset-1 text-center">
					<div class="display-t">
						<div class="display-tc animate-box" data-animate-effect="fadeIn">
							<h1>旅行中，像当地人一样生活</h1>
							<h2></h2>
							<div class="row">
								<form class="form-inline" id="fh5co-header-subscribe" action="/search.html" method="post">
									<div class="col-md-6 col-md-offset-3">
										<div class="form-group">
											<input type="text" class="form-control" name="q" placeholder="目的地，城市，地址">
											<button type="submit" class="btn btn-default">搜索</button>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>

	<!-- 三大特色 -->
	<div id="fh5co-services" class="fh5co-bg-section">
		<div class="container">
			<div class="row">
				<div class="col-md-4 col-sm-4">
					<div class="feature-center animate-box" data-animate-effect="fadeIn">
						<span class="icon">
							<i class="icon-eye"></i>
						</span>
						<h3>好客标准</h3>
						<p>遵守这些标准，为房客提供卓越、可靠的好客服务，便能获得好评。您可以通过查看房客对您的评分和反馈来了解自己的表现。</p>
					</div>
				</div>
				<div class="col-md-4 col-sm-4">
					<div class="feature-center animate-box" data-animate-effect="fadeIn">
						<span class="icon">
							<i class="icon-command"></i>
						</span>
						<h3>房东义务</h3>
						<p>我们建议房东认真考虑自己的责任。出租能带来丰富的阅历，但同时意味着需要承担一定的义务。</p>
					</div>
				</div>
				<div class="col-md-4 col-sm-4">
					<div class="feature-center animate-box" data-animate-effect="fadeIn">
						<span class="icon">
							<i class="icon-mouse"></i>
						</span>
						<h3>待客之道</h3>
						<p>成为爱彼迎房东或者体验达人吧，您可以赚取收入早日实现梦想。</p>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- 推荐房源 -->
	<div id="fh5co-project">
		<div class="container">
			<div class="row animate-box">
				<div class="col-md-8 col-md-offset-2 text-center fh5co-heading">
					<h2>推荐房源</h2>
					<p>无论您想在公寓里住一个晚上，或在城堡里呆一个星期，又或在别墅住上一个月，您都能以任何价位享受到爱彼迎在全球191个国家的65,000
						多个城市为您带来的独一无二的住宿体验。爱彼迎拥有世界一流的客户服务和日益增长的用户社区，为人们提供了一个最简单有效的途径，
						让他们可以利用闲置空间赚钱，并将它们展示给成百上千万受众。</p>
				</div>
			</div>
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

	<!-- 热门评价 -->
	<div id="fh5co-testimonial" style="background-image:url(/index/images/img_bg_2.jpg);">
		<div class="overlay"></div>
		<div class="container">
			<div class="row animate-box">
				<div class="col-md-8 col-md-offset-2 text-center fh5co-heading">
					<h2>热门评价</h2>
				</div>
			</div>
			<div class="row">
				<div class="col-md-4">
					<div class="box-testimony animate-box">
						<blockquote>
							<span class="quote"><span><i class="icon-quote"></i></span></span>
							<p>&ldquo;住在花莲最美好的记忆,便是在Michael的品悦设计小宅的两晚。出身建筑设计师的Michael,对室内设计的细节把握非常细致。喜欢摄影的他在工作室里摆满了各年份的胶片相机,喜欢摄影的朋友一定会让你过目难忘。住所周遭非常安静,常常会让人觉得自己深处日本小城。感谢Michael一家,给我们在花莲的最美体验。&rdquo;</p>
						</blockquote>
						<p class="author">彥霖, 2016年10月 <a href="#" target="_blank"> </a> <span class="subtext"> </span></p>
					</div>
					
				</div>
				<div class="col-md-4">
					<div class="box-testimony animate-box">
						<blockquote>
							<span class="quote"><span><i class="icon-quote"></i></span></span>
							<p>&ldquo;nice.房间nice.房东同事们nice.房东喵nice~帮我们叫车,借电脑给我们用,还为我们备茶备咖啡~下次,再约一次!再住一次!再聊一次!&rdquo;</p>
						</blockquote>
						<p class="author">卷卷,2017年5月 <a href="#" target="_blank"> </a> <span class="subtext"> </span></p>
					</div>
					
					
				</div>
				<div class="col-md-4">
					<div class="box-testimony animate-box">
						<blockquote>
							<span class="quote"><span><i class="icon-quote"></i></span></span>
							<p>&ldquo;年轻设计师做的小楼民宿 养有小猫一只 周边是清静的各式民宅 一楼为民宿主人的工作区域兼一部分公共空间 大卫生间 水压很好 床够舒适 唯一不提供早餐 但也并非必需 总之推荐&rdquo;</p>
						</blockquote>
						<p class="author">Chaoran,2017年2月 <a href="#"> </a> <span class="subtext"> </span></p>
					</div>
					
				</div>
			</div>
		</div>
	</div>

	<!-- 热门故事 -->
	<div id="fh5co-blog" class="fh5co-bg-section">
		<div class="container">
			<div class="row animate-box">
				<div class="col-md-8 col-md-offset-2 text-center fh5co-heading">
					<h2>热门故事</h2>
					<p>每一次旅途都是你这一生宝贵的财富，朝花夕拾，你会泪流满面，在爱彼邻社区分享你旅途中的故事</p>
				</div>
			</div>
			<div class="row">

<c:forEach items="${storyList}" var="s">
				<div class="col-lg-4 col-md-4">
					<div class="fh5co-blog animate-box">
						<a href="storyInfo.action?storyId=${s.storyId}"><img class="img-responsive" src="${s.img}" alt=""></a>
						<div class="blog-text">
							<h3><a href="storyInfo.action?storyId=${s.storyId}">${s.name}</a></h3>
							<span class="posted_on">${s.createTime}</span>
							<span class="comment"><a href="">21<i class="icon-speech-bubble"></i></a></span>
						</div> 
					</div>
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

