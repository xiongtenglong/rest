<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<!doctype html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>共享租房</title>
    <meta name="description" content="这是一个center 页面">
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
    <script type="text/javascript" src="/index/js/jquery-1.4.2.js"></script>
</head>

<body data-type="chart" style="margin:0 200px">
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
                    <a href="orderMessage.action" class="nav-link active">
                        <i class="am-icon-table"></i>
                        <span>订单信息</span>
                    </a>
                </li>

                <li class="tpl-left-nav-item">
                    <a href="storyMessage.action" class="nav-link tpl-left-nav-link-list">
                        <i class="am-icon-wpforms"></i>
                        <span>旅途故事</span>
                    </a>
                </li>
            </ul>
        </div>
    </div>
</div>


       <div class="tpl-content-wrapper">
            <div class="tpl-content-page-title">
                	订单消息
            </div>
            <ol class="am-breadcrumb">
            </ol>
            <div class="tpl-content-scope">

            </div>


            <div class="row">

                <div class="am-u-md-6 am-u-sm-12 row-mb">
                    <c:forEach items="${orderList}" var="order">
                    <div class="tpl-portlet">
                        <div class="tpl-portlet-title">
                            <div class="tpl-caption font-green ">
                                <i class="am-icon-cloud-download"></i>
                                <span> 我的订单</span>
                            </div>
                        </div>
                        订单编号:${order.orderId}
                        <br/>
                        用户id:${order.userId}
                        <br/>
                        预定房屋id:${order.houseId}
                       <%-- <br/>
                        房东姓名:${}--%>
                        <br/>
                        创建时间:${order.createTime}
                        <br/>
                        支付状态:
                        <c:if test="${order.paystate ==1}"><font color="green">已支付</font></c:if>
                        <c:if test="${order.paystate ==0}"><font color="red">未支付</font></c:if>
                        <br/>
                        <button  class="btn btn-default"><a href="/updateOrder.action?orderId=${order.orderId}" >确认</a></button>
                        <button  class="btn btn-default"><a href="/deleteOrder.action?orderId=${order.orderId}" >删除</a></button>
                        <br/>
                        <br/>
                        <br/>
                    </div>
                    </c:forEach>
                </div>

            </div>







        </div>

    </div>


    <script src="/center/assets/js/jquery.min.js"></script>
    <script src="/center/assets/js/amazeui.min.js"></script>
    <script src="/center/assets/js/iscroll.js"></script>
    <script src="/center/assets/js/app.js"></script>
</body>

</html>