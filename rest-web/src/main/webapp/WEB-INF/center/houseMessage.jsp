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
                    <a href="userInfo" class="nav-link tpl-left-nav-link-list">
                        <i class="am-icon-key"></i>
                        <span>个人资料</span>
                    </a>
                </li>
                <%--<li class="tpl-left-nav-item">--%>
                <%--<a href="messageCenter" class="nav-link active">--%>
                <%--<i class="am-icon-bar-chart"></i>--%>
                <%--<span>消息中心</span>--%>
                <%--<i class="tpl-left-nav-content tpl-badge-danger">0</i>--%>
                <%--</a>--%>
                <%--</li>--%>

                <li class="tpl-left-nav-item">
                    <a href="houseMessage" class="nav-link tpl-left-nav-link-list">
                        <i class="am-icon-home"></i>
                        <span>房屋信息</span>
                    </a>
                </li>

                <li class="tpl-left-nav-item">
                    <a href="order" class="nav-link tpl-left-nav-link-list">
                        <i class="am-icon-table"></i>
                        <span>订单信息</span>
                    </a>
                </li>

                <li class="tpl-left-nav-item">
                    <a href="uppassword" class="nav-link tpl-left-nav-link-list">
                        <i class="am-icon-wpforms"></i>
                        <span>修改密码</span>
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
                房屋信息
            </div>
            <ol class="am-breadcrumb">
                <li><a href="addHouse.action" class="am-icon-home"><button type="submit" class="btn btn-default">新增</button></a></li>

            </ol>

            <c:forEach items="${houseList}" var="h">
            <div class="row">
                <div class="am-u-md-6 am-u-sm-12 row-mb">
                    <div class="tpl-portlet">
                        <div class="tpl-portlet-title">
                            <div class="tpl-caption font-green ">
                                <i class="am-icon-cloud-download"></i>
                                <span>城市</span>
                            </div>
                        </div>
                            ${h.city}
                    </div>
                </div>
                <div class="am-u-md-6 am-u-sm-12 row-mb">
                    <div class="tpl-portlet">
                        <div class="tpl-portlet-title">
                            <div class="tpl-caption font-red ">
                                <i class="am-icon-bar-chart"></i>
                                <span> 详细地址</span>
                            </div>

                        </div>
                            ${h.address}
                    </div>
                </div>
            </div>


            <div class="row">
                <div class="am-u-md-6 am-u-sm-12 row-mb">

                    <div class="tpl-portlet">
                        <div class="tpl-portlet-title">
                            <div class="tpl-caption font-green ">
                                <span>联系方式</span>
                                <span class="caption-helper">16 件</span>
                            </div>
                        </div>
                            ${h.tel}
                    </div>
                </div>
                <div class="am-u-md-6 am-u-sm-12 row-mb">
                    <div class="tpl-portlet">
                        <div class="tpl-portlet-title">
                            <div class="tpl-caption font-green ">
                                <span>配套设施</span>
                            </div>

                        </div>
                            ${h.device}

                    </div>
                </div>

                <div class="am-u-md-6 am-u-sm-12 row-mb">
                    <div class="tpl-portlet">


                    </div>
                </div>
                <div class="am-u-md-6 am-u-sm-12 row-mb">
                    <div class="tpl-portlet">


                    </div>
                </div>
            </div>
            </c:forEach>
        </div>
    </div>


</body>

</html>