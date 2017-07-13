<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="../../laydate/laydate.js"></script>
<!-- jQuery -->
<script src="/index/js/jquery.min.js"></script>
<!-- jQuery.cookie -->
<script src="/index/js/jquery.cookie.js"></script>
<!-- jQuery Easing -->
<script src="/index/js/jquery.easing.1.3.js"></script>
<!-- Bootstrap -->
<script src="/index/js/bootstrap.min.js"></script>
<!-- Waypoints -->
<script src="/index/js/jquery.waypoints.min.js"></script>
<!-- Main -->
<script src="/index/js/main.js"></script>
<!-- 登录判断 -->
<script src="/index/js/restlogin.js"></script>
<html>
<head>
    <title>【图】杭州斯维登天鸿美和院豪华大床房_富阳市短租公寓_途家网</title>
    <link rel="stylesheet" type="text/css" href="../../home/css_detail">
</head>
<body id="'tujia'">
<div class="hd-wrap-fluid ">
    <div class="m-hd">
        <div class="site-logo-cont">
            <a href="https://www.tujia.com/" target="_blank" title="途家网首页" class="site-logo">途家网</a> <span class="logo-text">旅途中的家</span>
        </div>
        <div class="sub-link" lazyloadurl="https://vip.tujia.com/WebParts/Portal/UserInfo?isShowCreateNewStore=False">
            <a href="/home.html" rel="nofollow" class="link-btn">首页</a>
            <a id="registbar" href="/regist.html" rel="nofollow" class="link-btn">注册</a>
            <a id="loginbar" href="/login.html" rel="nofollow">登录</a>
            <a href="https://merchantcrm.tujia.com/merchant-web/StoreApply/" target="_blank" rel="nofollow" class="t-link-btn">免费发布房屋</a>
            <div id="mytujia" class="dn tl" style="display: none">
                <div class="mytujiaWrapper" id="userMessage">
                    <div class="p20">
                        <img src="https://staticfile.tujia.com/Common/images/loader.gif">
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div align="center">

    <c:forEach items="${imageList}" var="images">
        <img src=<c:if test="${!images.imageUrl.startsWith('http')}">http://</c:if>${images.imageUrl}>
    </c:forEach>

</div>

<div class="m-cont m-con-fluid">
    <div class="m-hotel-info">
        <div class="hotel-cont" style="height: 100px">
            <div class="room-info">
                <h1>
                    ${houseInfo.title}
                </h1>
                <div class="district-info">
                    <i class="icon-area"></i> <span class="lab-text">${houseInfo.address}</span>
                </div>
            </div>
            <div class="hotel-sidebar">
                <div class="book-info ">
                    <div class="comment-info">
							<span id="unitscore" rel="unitCommentSummaryTooltip"
                                  class="rating-box"><b class="hotel-value">${houseInfo.evaluate / 10}</b>分</span> <span
                            rel="j-experience-info"
                            class="exp-voucher j-bestproduct-experience"> <i
                            class="icon-desc-text"></i></span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<input type="hidden" id="NeedProductPriceFilter" value="true">

<input type="hidden" value="${houseInfo.houseId}" name="houseId">
<!-- 入住到退房时间 -->
<div class="m-cont t-cont clearfix">
    <div id="unitmaincontainer" class="main-cont ">
        <!-- 产品  -->
        <div class="m-column-box new-column-box" id="saleproductsection">
            <div class="product-filter" id="productfilter">
                <div class="date-change-box">
                    <div class="change-control-group">
                        <span class="controls-span">入住</span>
                        <div class="controls">
                            <input type="hidden" id="UnitId" value="51919">
                            <label for="unitDetailStartDate">
                                <input type="text" name="" id="unitDetailStartDate" class="date-ipt-text date laydate-icon" autocomplete="off" spellcheck="false" dir="ltr" onclick="laydate()"><i class="icon-date"></i>
                            </label>
                        </div>
                    </div>

                    <div class="change-control-group">
                        <span class="controls-span">退房</span>
                        <div class="controls">
                            <label for="unitDetailEndDate">
                                <input type="text" name="" id="unitDetailEndDate"  class="date-ipt-text date laydate-icon" autocomplete="off" spellcheck="false" dir="ltr" onclick="laydate()"><i class="icon-date t-icon-date"></i>
                            </label>
                        </div>
                    </div>
                    <div class="change-control-group btn-group">
                        <div class="controls"><a href="javascript:void(0);" id="changeBtn" class="change-btn" onclick="_gaq.push(['_trackEvent', 'pcDetail', '产品搜索']);">确定</a></div>
                    </div>
                    <div class="room-status">
                        <a class="has-empty-house" href="javascript:;" data-unitid="51919" data-detaillink="" onclick="_gaq.push(['_trackEvent', 'pcDetail', '哪天有房']);">哪天有房</a>
                    </div>
                </div>
                <div id="customerlevelarea" class="hint-text">
                </div>
            </div>
            <div class="room-select-box" id="productcontent">

                <table class="table-products-cont">
                    <tbody>
                    <tr class="" data-scenicspot="fuyang" data-destinationpinyin="hangzhou" data-unittype="Normal">

                        <td class="item-first">
                            <input type="hidden" name="EnumProductShowType" value="0+None">
                            <input type="hidden" id="ProductID" value="244583">
                            <span class="product-name">预付价无早</span>

                        </td>

                        <td class="item-02">
                            <span></span>
                        </td>

                        <td class="item-03">
                        </td>
                        <td class="item-04">
                    <span title="需预付全额房费">
        预付全额
    </span>
                            （<u class="j-product-changerule" rel="changeruletips244583">不可退</u>            ）
                            <div class="m-tips-wrap" id="changeruletips244583" style="display: none">
                                <div class="tips-content text-description">
                                    <h2>不可退</h2>
                                    <div class="tips-info">如果取消订单或没有入住，预付订金将不予退还，入住后如果提前退房，不退还剩余房费</div>
                                </div>
                            </div>

                        </td>
                        <td class="item-05">
                    <span class="price-cont ">
        <dfn class="f-vt">¥</dfn>${houseInfo.price}
    </span>

                        </td>

                        <td class="item-06">
                        </td>


                        <td class="item-07">
                            <span class="addapp" rel="j-addapp-vima" id="showErweima">APP预订 更省钱</span>
                        </td>
                        <td class="item-last">
                            <a href="http://localhost:9002/order/page.html?houseId=${houseInfo.houseId}" target="_blank" class="btn-buy jq-productdetail-buy" rel="nofollow" >立即预订</a>
                        </td>
                    </tr>
                    </tbody>
                </table>
                <input type="hidden" id="reminingSecond" value="0">

                <div id="economicalProduct" style="display: none">
                    <div class="room-price">
                        <p>
                            <span class="staring-price"><dfn>¥</dfn><a href="#productfilter" class="price-box">231</a></span>
                        </p>
                        <!--<p><span class="addapp" rel="j-addapp-vima" id="showErweima">APP专享 返1040积分</span></p>-->
                        <p>
                            <span class="label-text j-zhimacreditTips" rel="zhimacreditTips"><i class="icon-zhimacredit"></i>信用免押金</span>
                            <span class="label-text j-payTips" rel="FaceToFacePaytip"><i class="icon-payment"></i>到店当面付</span>

                            <span class="label-text j-cardTips" rel="PrepaidCard"><i class="icon-card"></i>全额预付</span>
                        </p>

                    </div>
                </div>
                <div id="economicalProductPrice" style="display: none">
                    <dfn class="f-vt">¥</dfn><strong class="price-value">${houseInfo.price}</strong>
                </div>
                <div id="zhimacreditTips" class="m-tips-wrap" style="display: none">
                    <div class="tips-content">
                        <div class="tips-info">支持信用免押金：请先到个人中心或芝麻信用宣传页面进行绑定，芝麻分600分及以上即可享受免押金入住特权！</div>
                    </div>
                </div>
                <div id="PrepaidCard" class="m-tips-wrap" style="display: none">
                    <div class="tips-content">
                        <div class="tips-info">所有产品均可直接全额预付房费，支持使用“途游卡、礼品卡、惠住卡、积分和账户余额”</div>
                    </div>
                </div>
                <div id="PrepaidCardTooltip" class="m-tips-wrap" style="display: none">
                    <div class="tips-content">
                        <div class="tips-info">所有产品均可直接全额预付房费，支持使用“途游卡、礼品卡、惠住卡、积分和账户余额”</div>
                    </div>
                </div>

                <div id="FaceToFacePaytip" class="m-tips-wrap" style="display: none">
                    <div class="tips-content" style="width:220px">
                        <div class="tips-info">到店当面付：到达门店入住时，使用途家手机APP或手机H5网站，找到需到店支付的订单进行当面支付操作，可使用途游卡、积分、余额支付，更方便、更省钱！</div>
                    </div>
                </div>

            </div>
        </div>
        <!-- Tabs  -->
        <div class="m-column-box ">
            <div id="HouseTabs" class="house-tabs-box" style="height: 50px;">
                <div id="contentTab" class="house-tabs">
                    <ul>

                        <li id="unitdetailinfotab" class="current item-first">
                            <a href="#unitdetailinfo">房屋详情</a>
                        </li>
                        <li>
                            <a id="unitcheckinneedtoknowtab" href="#unitcheckinneedtoknow" onclick="_gaq.push(['_trackEvent', 'pcDetail', '入住须知']);">入住须知</a>
                        </li>
                        <li id="unitgoodexperiencetabcontainer" style="display:none">
                            <a id="unitgoodexperience" href="#experience" onclick="_gaq.push(['_trackEvent', 'pcDetail', '达人体验']);">达人体验</a>
                        </li>
                        <li class="house-tabs-last">
                            <a rel="nofollow" id="tabbookprice" href="#productfilter" style="padding: 0; vertical-align: -4px" onclick="_gaq.push(['_trackEvent', 'pcDetail', '置顶条查看房价']);"><span id="pricebox" class="price-box dn" style="display: none;">
            		<dfn class="f-vt">¥</dfn><strong class="price-value">${houseInfo.price}</strong>
    						</span>
                            </a>
                            <a rel="nofollow" id="tabbookbtn" class="book-btn" href="#productfilter" onclick="_gaq.push(['_trackEvent', 'pcDetail', '置顶条查看房价']);" style="display: none;">
                                查看房价
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>

        <!-- 房屋详情  -->
        <div class="m-column-box t-column-box" id="unitdetailinfo">
            <!-- 房屋亮点  -->

            <!-- 房屋描述  -->
            <div class="column-info" id="unitintrocontent">
                <div class="side-box">
                    <i class="icon-unitintro"></i>
                    <h2>房屋描述</h2>
                </div>
                <div id="unitintrocontentcontainer" class="content-box">
                    <div class="desc-info " style="">
                        ${houseInfo.houseDesc}
                    </div>
                </div>
            </div>
        </div>

        <!-- 入住须知  -->
        <div id="unitcheckinneedtoknow" class="m-column-box rule-cont">
            <!-- 入住规则  -->
            <div class="m-column-tit t-column-tit clearfix" id="unitIntro">
                <h2>入住须知</h2>
            </div>
            <div class="column-info">
                <div class="side-box">
                    <i class="icon-hint"></i>
                    <h2>入住提示</h2>
                </div>
                <div class="content-box">
                    <div class="m-key-list t-key-list">
                        <p>${houseInfo.notice}</p>
                    </div>
                </div>
            </div>
        </div>
</body>
</html>
