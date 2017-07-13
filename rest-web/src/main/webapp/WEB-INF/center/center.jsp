<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

    <div class="tpl-page-container tpl-page-header-fixed">
        <form method="post" action="saveUser">
        <div class="tpl-content-wrapper">
            <div class="tpl-content-page-title">
                个人资料
            </div>
           <%--  <ol class="am-breadcrumb">
                <li>
                    <form action="userInfo.action" class="am-icon-home" method="post">
                        <input type="text" value=${user.userId} name="userId" hidden="hidden"/>
                        <button type="submit" class="btn btn-default">补全信息</button>
                    </form>
                </li>

            </ol> --%>

            <div class="row">
                <div class="am-u-md-6 am-u-sm-12 row-mb">
                    <div class="tpl-portlet">
                        <div class="tpl-portlet-title">
                            <div class="tpl-caption font-green ">
                                <i class="am-icon-cloud-download"></i>
                                <span>基本信息:</span>
                            </div>
                        </div>
                        <table style="color: #8f0222">
                            <tr>
                                <td style=" align-content: center">用户名:</td>
                                <td style="align-content: center"><input type="text" name="username" value="${user.username}" readonly="readonly"/></td>
                            </tr>
                            <tr>
                                <td style="align-content: center">真实姓名:</td>
                                <td style="align-content: center"><input type="text" name="userInfo.name" value="${user.userInfo.name}" /></td>
                            </tr>
                            <tr>
                                <td style=" align-content: center">邮箱:</td>
                                <td style="align-content: center"><input type="text" name="email" value="${user.userInfo.email}"/></td>
                            </tr>
                            <tr>
                                <td style=" align-content: center">性别:</td>
                                <td style="align-content: center">
                                    <input type="radio" name="userInfo.gender" value="男" <c:if test="${user.userInfo.gender=='男' }">checked="checked"</c:if>/>男
                                    <input type="radio" name="userInfo.gender" value="女" <c:if test="${user.userInfo.gender=='女' }">checked="checked"</c:if>/>女
                                </td>
                            </tr>
                            <tr>
                                <td style=" align-content: center">身份证号:</td>
                                <td style=" align-content: center"><input type="text" name="userInfo.cardNo" value="${user.userInfo.cardNo}"/></td>
                            </tr>
                            <tr>
                                <td style=" align-content: center">实名认证:</td>
                                <td style=" align-content: center">
                                    <input type="radio" name="userInfo.state" value="0" <c:if test="${user.userInfo.status==1 }">checked="checked"</c:if> readonly="readonly"/>未认证
                                    <input type="radio" name="userInfo.state" value="1" <c:if test="${user.userInfo.status==2 }">checked="checked"</c:if> readonly="readonly"/>认证中
                                    <input type="radio" name="userInfo.state" value="1" <c:if test="${user.userInfo.status==3 }">checked="checked"</c:if> readonly="readonly"/>已认证
                                </td>

                            </tr>

                            <tr>
                                <td style=" align-content: center">用户级别:</td>
                                <td style="align-content: center"><input type="text" name="userInfo.grade" value="${user.userInfo.grade}" readonly="readonly"/></td>
                            </tr>
                        </table>
                    </div>
                </div>

            </div>
        </div>
        </form>
           <%--  <div class="row">
                <div class="am-u-md-6 am-u-sm-12 row-mb">
                    <div class="tpl-portlet">
                        <div class="tpl-portlet-title">
                            <div class="tpl-caption font-green ">
                                <i class="am-icon-cloud-download"></i>
                                <span>详细信息:</span>
                            </div>
                        </div>
                        <table>
                            <tr>
                                <td style="color: #00b3ee; align-content: center">真实姓名:</td>
                                <td style="color: #00b3ee; align-content: center">${user.userInfo.name}</td>
                            </tr>
                            <tr>
                                <td style="color: #00b3ee; align-content: center">身份证号:</td>
                                <td style="color: #00b3ee; align-content: center">${user.userInfo.card}</td>
                            </tr>
                            <tr>
                                <td style="color: #00b3ee; align-content: center">电话:</td>
                                <td style="color: #00b3ee; align-content: center">${user.userInfo.phone}</td>
                            </tr>
                            <tr>
                                <td style="color: #00b3ee; align-content: center">邮箱:</td>
                                <td style="color: #00b3ee; align-content: center">${user.userInfo.mail}</td>
                            </tr>

                        </table>
                    </div>
                </div>

            </div>
        </div>

    </div> --%>

<%-- <div class="row">
                <div class="am-u-md-6 am-u-sm-12 row-mb">
                    <div class="tpl-portlet">
                        <div class="tpl-portlet-title">
                            <div class="tpl-caption font-green ">
                                <i class="am-icon-cloud-download"></i>
                                <span> 真实姓名:</span>
                            </div>
                        </div>
                        ${user.userInfo.name}
                    </div>
                </div>
                <div class="am-u-md-6 am-u-sm-12 row-mb">
                    <div class="tpl-portlet">
                        <div class="tpl-portlet-title">
                            <div class="tpl-caption font-red ">
                                <i class="am-icon-bar-chart"></i>
                                <span> 性别:</span>
                            </div>

                        </div>
						${user.userInfo.sex}
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="am-u-md-6 am-u-sm-12 row-mb">

                    <div class="tpl-portlet">
                        <div class="tpl-portlet-title">
                            <div class="tpl-caption font-green ">
                                <i class="am-icon-cloud-download"></i>
                                <span>年龄:</span>
                            </div>
                        </div>
						${user.userInfo.age}
                    </div>
                </div>
                <div class="am-u-md-6 am-u-sm-12 row-mb">
                    <div class="tpl-portlet">
                        <div class="tpl-portlet-title">
                            <div class="tpl-caption font-red ">
                                <i class="am-icon-bar-chart"></i>
                                <span>电话:</span>
                            </div>

                        </div>
                        ${user.userInfo.phone}
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="am-u-md-6 am-u-sm-12 row-mb">
                    <div class="tpl-portlet">
                        <div class="tpl-portlet-title">
                            <div class="tpl-caption font-green ">
                                <i class="am-icon-cloud-download"></i>
                                <span>QQ:</span>
                            </div>
                        </div>
                        ${user.userInfo.qQ}
                    </div>
                </div>
                <div class="am-u-md-6 am-u-sm-12 row-mb">
                    <div class="tpl-portlet">
                        <div class="tpl-portlet-title">
                            <div class="tpl-caption font-red ">
                                <i class="am-icon-bar-chart"></i>
                                <span>email:</span>
                            </div>

                        </div>
                        ${user.userInfo.email}
                    </div>
                </div>
            </div>--%>

    <script src="/center/assets/js/jquery.min.js"></script>
    <script src="/center/assets/js/amazeui.min.js"></script>
    <script src="/center/assets/js/iscroll.js"></script>
    <script src="/center/assets/js/app.js"></script>
</body>

</html>