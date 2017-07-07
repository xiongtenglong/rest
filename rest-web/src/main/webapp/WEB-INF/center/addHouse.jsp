<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!doctype html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>共享租房</title>
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

<body data-type="chart" style="margin:0 200px">

<%@include file="/WEB-INF/index/_head.jsp" %>







    <div class="tpl-page-container tpl-page-header-fixed">

        




       <div class="tpl-content-wrapper">
            <div class="tpl-content-page-title">
                	房屋信息
            </div>
            <ol class="am-breadcrumb">
               <!--  <li><a href="/center/center.jsp" class="am-icon-home">首页</a></li>
                <li><a href="/center/house.jsp">返回</a></li> -->
            </ol>


			<form action="saveHouse.action" style="font-family:Microsoft YaHei" method="post">
            <div class="row">
                <div class="am-u-md-6 am-u-sm-12 row-mb">
                    <div class="tpl-portlet" >
                        <div class="tpl-portlet-title">
                            <div class="tpl-caption">
                            	
                                <i class="am-icon-cloud-download"></i>
                     		房源信息
                            </div>
                        </div>
                     &nbsp;&nbsp;&nbsp;房源城市: &nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="city"/><br/><br/>
					 &nbsp;&nbsp;&nbsp;房源类型: &nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="type" style="border:0.1px solid #F0F0F0"></input><br/><br/>
                        &nbsp;&nbsp;&nbsp;房屋面积: &nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="area" style="border:0.1px solid #F0F0F0"></input><br/><br/>
					 &nbsp;&nbsp;&nbsp;宜居人数: &nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="liveNum" style="border:0.1px solid #F0F0F0"></input><br/><br/>
					 &nbsp;&nbsp;&nbsp;房间数量: &nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="roomNum" style="border:0.1px solid #F0F0F0"><br/><br/>
					 &nbsp;&nbsp;&nbsp;租房花费: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="money" style="border:0.1px solid #F0F0F0"><br/><br/>
					 &nbsp;&nbsp;&nbsp;入住要求: &nbsp;&nbsp;&nbsp;&nbsp; <textarea name="ask" style="border:0.1px solid #F0F0F0"></textarea><br/><br/>
					 &nbsp;&nbsp;&nbsp;具体地址: &nbsp;&nbsp;&nbsp;&nbsp; <textarea name="address" style="border:0.1px solid #F0F0F0"></textarea><br/><br/>
					 &nbsp;&nbsp;&nbsp;联系方式: &nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="tel" style="border:0.1px solid #F0F0F0"></input>&nbsp;&nbsp;<br/><br/>
                        &nbsp;&nbsp;&nbsp;房屋设备: &nbsp;&nbsp;&nbsp;&nbsp; <textarea name="device" style="border:0.1px solid #F0F0F0"></textarea><br/><br/>
					 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" style="background:#F0F0F0" value="提交"></input>
					 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <a href="/center/house.jsp" style="color:black;"><input type="button" style="blackground:#F0F0F0" value="返回"></input></a>
                        <button type="submit" class="btn btn-default">提交</button>
                    </div>
                </div>
        </div>
        </form>
    </div>


    <script src="/center/assets/js/jquery.min.js"></script>
    <script src="/center/assets/js/amazeui.min.js"></script>
    <script src="/center/assets/js/iscroll.js"></script>
    <script src="/center/assets/js/app.js"></script>
</body>

</html>