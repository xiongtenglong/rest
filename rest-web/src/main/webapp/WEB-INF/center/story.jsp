<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>个人信息</title>
    <meta name="description" content="这是一个 center 页面">
    <meta name="keywords" content="center">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <link rel="icon" type="image/png" href="/center/assets/i/favicon.png">
    <link rel="apple-touch-icon-precomposed" href="/center/assets/i/app-icon72x72@2x.png">
    <meta name="apple-mobile-web-app-title" content="Amaze UI" />
    <link rel="stylesheet" href="/center/assets/css/amazeui.min.css" />
    <link rel="stylesheet" href="/center/assets/css/admin.css">
    <link rel="stylesheet" href="/center/assets/css/app.css">
    <script src="/center/assets/js/echarts.min.js"></script>
</head>

<body data-type="index" style="margin:0 200px">

<%@include file="/WEB-INF/index/_head.jsp" %>
<div class="tpl-page-container tpl-page-header-fixed">
    <div class="tpl-left-nav tpl-left-nav-hover">
        <div class="tpl-left-nav-title">
            用户中心
        </div>
        <div class="tpl-left-nav-list">
            <ul class="tpl-left-nav-menu">
                <li class="tpl-left-nav-item">
                    <a href="center.action" class="nav-link tpl-left-nav-link-list">
                        <i class="am-icon-key"></i>
                        <span>个人资料</span>
                    </a>
                </li>
                <li class="tpl-left-nav-item">
                    <a href="messageCenter.action" class="nav-link tpl-left-nav-link-list">
                        <i class="am-icon-bar-chart"></i>
                        <span>消息中心</span>
                        <i class="tpl-left-nav-content tpl-badge-danger">12</i>
                    </a>
                </li>

                <li class="tpl-left-nav-item">
                    <a href="houseMessage.action" class="nav-link tpl-left-nav-link-list">
                        <i class="am-icon-home"></i>
                        <span>房屋信息</span>
                    </a>
                </li>

                <li class="tpl-left-nav-item">
                    <a href="orderMessage.action" class="nav-link tpl-left-nav-link-list">
                        <i class="am-icon-table"></i>
                        <span>订单信息</span>
                    </a>
                </li>

                <li class="tpl-left-nav-item">
                    <a href="storyMessage.action" class="nav-link active">
                        <i class="am-icon-wpforms"></i>
                        <span>旅途故事</span>
                    </a>
                </li>
            </ul>
        </div>
    </div>
</div>
<script src="/center/assets/js/jquery.min.js"></script>
<script src="/center/assets/js/amazeui.min.js"></script>
<script src="/center/assets/js/iscroll.js"></script>
<script src="/center/assets/js/app.js"></script>
    <div class="tpl-page-container tpl-page-header-fixed">



       <div class="tpl-content-wrapper">
            <div class="tpl-content-page-title">
                	旅途故事
            </div>
            <ol class="am-breadcrumb">
            </ol>

           <div class="tpl-content-scope">
               <div class="note note-info">
                   <h3 font="微软雅黑">分享你的旅途故事
                       <span class="close" data-close="note"></span>
                   </h3>
                   <p font="微软雅黑">记录下旅途中的欢笑与泪水</p>
                   <p font="微软雅黑">与他人分享，也给自己留下一份记忆</p>
               </div>
           </div>


            <div class="row">
                <div class="am-u-md-6 am-u-sm-12 row-mb">
                    <div class="tpl-portlet">
                        <div class="tpl-portlet-title">
                            <div class="tpl-caption font-green ">
                                <span>已经发布的故事</span>
                            </div>
                        </div>
                        <c:forEach items="${storyList}" var="s">
                        	<a href="storyInfo.action?storyId=${s.storyId}">${s.name}</a>
                            <br/>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </div>
    </div>


</body>

</html>