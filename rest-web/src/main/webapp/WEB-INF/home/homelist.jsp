<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="../../laydate/laydate.js"></script>
<script type="text/javascript" src="../../show/js/jquery.min.js"></script>
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

<script>

$().ready(function () {
    $(".houseDetail").click(function () {
//        alert("ahahha");
        var a = $(this);
        var val = a.children("input").val();
//        alert(val);
//        alert("localhost:9002/house/detail.html?houseId=" + val)
        window.location.href = "http://localhost:9002/house/detail.html?houseId=" + val;
    });
})

</script>
<html>
<head>
    <meta charset="UTF-8">
    <title>【杭州住宿】杭州酒店式公寓住宿_杭州公寓酒店民宿推荐-途家网</title>

    <link rel="stylesheet" type="text/css" href="../../home/css_list">

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
<!--- 面包屑  结束  -->

<div class="wrap-large">
    <div class="unit-list-search " id="search">
        <div class="m-search-box form-horizontal">
            <div class="tab-content">

                <form id="mainSearchForm"
                      action="http://localhost:9002/house/validHouse.html"
                      class="mainSearchForm mainSearchForm_unitlist" target="_top"
                      method="post">
                    <div class="control-group  city-group">
                        <span class="controls-span">目的地</span>
                        <div class="controls">
                            <select name="areaId"  style="display: block;width:184px;height:32px;text-align-all: center">
                                <option  value="101">上城</option>
                                <option  value="102">下城</option>
                                <option  value="103">西湖</option>
                                <option value="104">江干</option>
                                <option value="105">拱墅</option>
                                <option value="106">滨江</option>
                                <option value="107">萧山</option>
                                <option value="108">余杭</option>
                                <option value="109">富阳</option>
                                <option value="111">临安</option>
                                <option value="112">桐庐</option>
                                <option value="113">建德</option>
                                <option value="114">淳安</option>
                            </select>
                            <i class="icon-city"></i>
                        </div>
                    </div>
                    <div class="control-group date-group">
                        <span class="controls-span">入住</span>
                        <div class="controls" style="height: 24px">
                            <label for="startDate"> <input placeholder="请输入日期"
                                                           class="ipt-text startDate date laydate-icon" id="startDate" name="startDate"
                                                           type="text" value="2017-07-10" autocomplete="off"
                                                           spellcheck="false" dir="ltr" onclick="laydate()"> <i class="icon-calendar"></i>
                            </label>
                        </div>
                    </div>

                    <div class="control-group date-group">
                        <span class="controls-span">退房</span>
                        <div class="controls">
                            <label for="endDate"> <input placeholder="请输入日期"
                                                         class="ipt-text endDate date laydate-icon" id="endDate" name="endDate"
                                                         type="text" value="2017-07-11" autocomplete="off"
                                                         spellcheck="false" dir="ltr" onclick="laydate()"> <i class="icon-calendar"></i>
                            </label>
                        </div>
                    </div>
                    <div class="control-group key-group">
                        <span class="controls-span">关键词</span>
                        <div class="controls">
                            <label for="adress"> <input type="text" id="adress"
                                                        class="ipt-text" autocomplete="off"
                                                        onfocus="_gaq.push(['_trackEvent', 'pcList', '关键词输入框']);">
                                <span class="address-mark" style="">位置/公寓名/房型等</span> <i
                                        class="icon-key"></i>
                            </label>
                        </div>
                    </div>
                    <div class="control-group search-btn-group" id="submitBox">
                        <input type="submit" value="搜索" class="search-btn"
                               id="searchHouse"
                               >
                    </div>

                </form>

            </div>
        </div>
    </div>
</div>

<div class="wrap-large" style="overflow: hidden">
    <div class="unit-list-content">

        <!-- column-box -->
        <div class="showmorefilter-box">

            <div class="filters-panel" id="filtersPanel" style="display: none;">
                <div class="filters-key">您已选择：</div>
                <div class="filters-values j-filter-selectedItemsContainer"></div>
            </div>
        </div>
        <div class="expand-box clearfix">
            <div id="sortWrapper" class="sort-cont">

                <div id="sortArea" class="m-sort-area" data-sortval="">
                    <a href="javascript:void(0)" data-cat="1"
                       onclick="_gaq.push(['_trackEvent', 'pcList', '推荐排序']);"
                       data-type="o" data-val="1" name="TujiaRecommendedSort" class=""
                       >推荐排序</a> <a
                        href="javascript:void(0)" data-cat="2"
                        onclick="_gaq.push(['_trackEvent', 'pcList', '房价排序']);"
                        data-type="o" data-val="3" class="link-btn " style=""
                        name="PriceSort" title="点击按价格从低到高排序"><i class="icon-down"></i>房价</a>

                    <a href="javascript:void(0)" data-cat="2"
                       onclick="_gaq.push(['_trackEvent', 'pcList', '房价排序']);"
                       data-type="o" data-val="4" class="link-btn "
                       style="display: none;" name="PriceSort" title="点击按价格从高到低排序"><i
                            class="icon-up"></i>房价</a> <a href="javascript:void(0)" data-cat="3"
                                                          onclick="_gaq.push(['_trackEvent', 'pcList', '点评分排序']);"
                                                          data-type="o" data-val="18" name="commentscoresort" class=""
                                                          title="点击按点评分从高到低排序">点评分</a> <a href="javascript:void(0)"
                                                                                          data-cat="5"
                                                                                          onclick="_gaq.push(['_trackEvent', 'pcList', '销量排序']);"
                                                                                          data-type="o" data-val="21" name="CommentCountSort" class=""
                                                                                          title="点击按销量从多到少排序">销量</a> <a href="javascript:void(0)"
                                                                                                                        data-cat="6"
                                                                                                                        onclick="_gaq.push(['_trackEvent', 'pcList', '面积排序']);"
                                                                                                                        data-type="o" data-val="7" class="link-btn   "
                                                                                                                        style="display: none;" name="GrossAreaSort" title="点击按面积从大到小排序"><i
                        class="icon-up"></i>面积</a> <a href="javascript:void(0)" data-type="o"
                                                      style="display: none;" data-val="15" name="distancesort"
                                                      title="按距离从近到远排序" class="">距离</a>
                </div>
            </div>

            <div class="f-clear"></div>
        </div>

        <%--====================================--%>

        <div class="m-hot-room" style="" id="recom-list" data-url="/UnitList/Recommend?cityId=7">
            <h2>城市热门推荐</h2>
            <div class="room-list">
                <a href="javascript:;" class="prev-btn" id="recom_carousel_prev" style="display: none;"></a>
                <a href="javascript:;" class="next-btn" id="recom_carousel_next" style="display: none;"></a>
                <a href="javascript:;" class="close-btn" id="recom_close" title="关闭"></a>
                <div class="carousel">
                    <div class="house-group carousel_inner clearfix" id="recom-list-carousel" style="overflow: hidden; position: relative;"><div style="position: relative; left: -1038px; height: 90px; width: 5190px;"><div class="carousel_group_inner" style="float: left; width: 1038px;"><div class="carousel_box house-group" style="float: left;">
                        <div class="room-cont">
                            <a href="https://go.tujia.com/1007/?code=CZLB-ZSK-hz&amp;id=242505" target="_blank" title="环西湖地铁口.近莲花奥体168方大宅度假" class="pic-box" rel="nofollow">
                                <img src="./rest_files/201704250150195601_120_90.jpg" alt="环西湖地铁口.近莲花奥体168方大宅度假">
                            </a>
                            <div class="info-box">
                                <a href="https://go.tujia.com/1007/?code=CZLB-ZSK-hz&amp;id=242505" target="_blank" class="room-tit" title="环西湖地铁口.近莲花奥体168方大宅度假">环西湖地铁口.近莲花奥体168方大宅度假</a>
                                <p class="picer-info"><span class="price-box"><dfn>¥</dfn><b class="number-box">2180</b></span>/晚起 </p><p class="hint-text"></p>
                            </div>
                        </div>
                    </div><div class="carousel_box house-group" style="float: left;">
                        <div class="room-cont">
                            <a href="https://go.tujia.com/1007/?code=CZLB-ZSK-hz&amp;id=197467" target="_blank" title="西湖边雷峰塔旁温馨家庭套房" class="pic-box" rel="nofollow">
                                <img src="./rest_files/201706142104065883_120_90.jpg" alt="西湖边雷峰塔旁温馨家庭套房">
                            </a>
                            <div class="info-box">
                                <a href="https://go.tujia.com/1007/?code=CZLB-ZSK-hz&amp;id=197467" target="_blank" class="room-tit" title="西湖边雷峰塔旁温馨家庭套房">西湖边雷峰塔旁温馨家庭套房</a>
                                <p class="picer-info"><span class="price-box"><dfn>¥</dfn><b class="number-box">348</b></span>/晚起 </p><p class="hint-text"></p>
                            </div>
                        </div>
                    </div><div class="carousel_box house-group" style="float: left;">
                        <div class="room-cont">
                            <a href="https://go.tujia.com/1007/?code=CZLB-ZSK-hz&amp;id=250081" target="_blank" title="玺生活Loft精品大床房" class="pic-box" rel="nofollow">
                                <img src="./rest_files/201705032150481263_120_90.jpg" alt="玺生活Loft精品大床房">
                            </a>
                            <div class="info-box">
                                <a href="https://go.tujia.com/1007/?code=CZLB-ZSK-hz&amp;id=250081" target="_blank" class="room-tit" title="玺生活Loft精品大床房">玺生活Loft精品大床房</a>
                                <p class="picer-info"><span class="price-box"><dfn>¥</dfn><b class="number-box">228</b></span>/晚起 </p><p class="hint-text"></p>
                            </div>
                        </div>
                    </div></div><div class="carousel_group_inner" style="float: left; width: 1038px;"><div class="carousel_box house-group" style="float: left;">
                        <div class="room-cont">
                            <a href="https://go.tujia.com/1007/?code=CZLB-ZSK-hz&amp;id=295794" target="_blank" title="临近城西银泰、西溪湿地复式豪华loft" class="pic-box" rel="nofollow">
                                <img src="./rest_files/201706121451032868_120_90.jpg" alt="临近城西银泰、西溪湿地复式豪华loft">
                            </a>
                            <div class="info-box">
                                <a href="https://go.tujia.com/1007/?code=CZLB-ZSK-hz&amp;id=295794" target="_blank" class="room-tit" title="临近城西银泰、西溪湿地复式豪华loft">临近城西银泰、西溪湿地复式豪华loft</a>
                                <p class="picer-info"><span class="price-box"><dfn>¥</dfn><b class="number-box">388</b></span>/晚起 </p><p class="hint-text"></p>
                            </div>
                        </div>
                    </div><div class="carousel_box house-group" style="float: left;">
                        <div class="room-cont">
                            <a href="https://go.tujia.com/1007/?code=CZLB-ZSK-hz&amp;id=297325" target="_blank" title="黄/近西湖地铁150m民国理想家/有投影" class="pic-box" rel="nofollow">
                                <img src="./rest_files/201707031313343084_120_90.jpg" alt="黄/近西湖地铁150m民国理想家/有投影">
                            </a>
                            <div class="info-box">
                                <a href="https://go.tujia.com/1007/?code=CZLB-ZSK-hz&amp;id=297325" target="_blank" class="room-tit" title="黄/近西湖地铁150m民国理想家/有投影">黄/近西湖地铁150m民国理想家/有投影</a>
                                <p class="picer-info"><span class="price-box"><dfn>¥</dfn><b class="number-box">368</b></span>/晚起 </p><p class="hint-text"></p>
                            </div>
                        </div>
                    </div><div class="carousel_box house-group" style="float: left;">
                        <div class="room-cont">
                            <a href="https://go.tujia.com/1007/?code=CZLB-ZSK-hz&amp;id=93619" target="_blank" title="花与爱丽丝民宿夜莺主题大床房" class="pic-box" rel="nofollow">
                                <img src="./rest_files/201603171843147129_120_90.jpg" alt="花与爱丽丝民宿夜莺主题大床房">
                            </a>
                            <div class="info-box">
                                <a href="https://go.tujia.com/1007/?code=CZLB-ZSK-hz&amp;id=93619" target="_blank" class="room-tit" title="花与爱丽丝民宿夜莺主题大床房">花与爱丽丝民宿夜莺主题大床房</a>
                                <p class="picer-info"><span class="price-box"><dfn>¥</dfn><b class="number-box">188</b></span>/晚起 </p><p class="hint-text"></p>
                            </div>
                        </div>
                    </div></div><div class="carousel_group_inner" style="float: left; width: 1038px;"><div class="carousel_box house-group" style="float: left;">
                        <div class="room-cont">
                            <a href="https://go.tujia.com/1007/?code=CZLB-ZSK-hz&amp;id=261722" target="_blank" title="漫画师紫菜Room2  提拉米苏 西湖" class="pic-box" rel="nofollow">
                                <img src="./rest_files/201705250112579106_120_90.jpg" alt="漫画师紫菜Room2  提拉米苏 西湖">
                            </a>
                            <div class="info-box">
                                <a href="https://go.tujia.com/1007/?code=CZLB-ZSK-hz&amp;id=261722" target="_blank" class="room-tit" title="漫画师紫菜Room2  提拉米苏 西湖">漫画师紫菜Room2  提拉米苏 西湖</a>
                                <p class="picer-info"><span class="price-box"><dfn>¥</dfn><b class="number-box">379</b></span>/晚起 </p><p class="hint-text"></p>
                            </div>
                        </div>
                    </div><div class="carousel_box house-group" style="float: left;">
                        <div class="room-cont">
                            <a href="https://go.tujia.com/1007/?code=CZLB-ZSK-hz&amp;id=258719" target="_blank" title="近西湖西溪湿地超阔巨屏家庭影院-提拉米苏" class="pic-box" rel="nofollow">
                                <img src="./rest_files/201706261748016292_120_90.jpg" alt="近西湖西溪湿地超阔巨屏家庭影院-提拉米苏">
                            </a>
                            <div class="info-box">
                                <a href="https://go.tujia.com/1007/?code=CZLB-ZSK-hz&amp;id=258719" target="_blank" class="room-tit" title="近西湖西溪湿地超阔巨屏家庭影院-提拉米苏">近西湖西溪湿地超阔巨屏家庭影院-提拉米苏</a>
                                <p class="picer-info"><span class="price-box"><dfn>¥</dfn><b class="number-box">379</b></span>/晚起 </p><p class="hint-text"></p>
                            </div>
                        </div>
                    </div><div class="carousel_box house-group" style="float: left;">
                        <div class="room-cont">
                            <a href="https://go.tujia.com/1007/?code=CZLB-ZSK-hz&amp;id=177176" target="_blank" title="定安路地铁口  精品3室1小厅 南宋御街" class="pic-box" rel="nofollow">
                                <img src="./rest_files/201706011410392605_120_90.jpg" alt="定安路地铁口  精品3室1小厅 南宋御街">
                            </a>
                            <div class="info-box">
                                <a href="https://go.tujia.com/1007/?code=CZLB-ZSK-hz&amp;id=177176" target="_blank" class="room-tit" title="定安路地铁口  精品3室1小厅 南宋御街">定安路地铁口  精品3室1小厅 南宋御街</a>
                                <p class="picer-info"><span class="price-box"><dfn>¥</dfn><b class="number-box">599</b></span>/晚起 </p><p class="hint-text"></p>
                            </div>
                        </div>
                    </div></div><div class="carousel_group_inner" style="float: left; width: 1038px;"><div class="carousel_box house-group" style="float: left;">
                        <div class="room-cont">
                            <a href="https://go.tujia.com/1007/?code=CZLB-ZSK-hz&amp;id=242505" target="_blank" title="环西湖地铁口.近莲花奥体168方大宅度假" class="pic-box" rel="nofollow">
                                <img src="./rest_files/201704250150195601_120_90.jpg" alt="环西湖地铁口.近莲花奥体168方大宅度假">
                            </a>
                            <div class="info-box">
                                <a href="https://go.tujia.com/1007/?code=CZLB-ZSK-hz&amp;id=242505" target="_blank" class="room-tit" title="环西湖地铁口.近莲花奥体168方大宅度假">环西湖地铁口.近莲花奥体168方大宅度假</a>
                                <p class="picer-info"><span class="price-box"><dfn>¥</dfn><b class="number-box">2180</b></span>/晚起 </p><p class="hint-text"></p>
                            </div>
                        </div>
                    </div><div class="carousel_box house-group" style="float: left;">
                        <div class="room-cont">
                            <a href="https://go.tujia.com/1007/?code=CZLB-ZSK-hz&amp;id=197467" target="_blank" title="西湖边雷峰塔旁温馨家庭套房" class="pic-box" rel="nofollow">
                                <img src="./rest_files/201706142104065883_120_90.jpg" alt="西湖边雷峰塔旁温馨家庭套房">
                            </a>
                            <div class="info-box">
                                <a href="https://go.tujia.com/1007/?code=CZLB-ZSK-hz&amp;id=197467" target="_blank" class="room-tit" title="西湖边雷峰塔旁温馨家庭套房">西湖边雷峰塔旁温馨家庭套房</a>
                                <p class="picer-info"><span class="price-box"><dfn>¥</dfn><b class="number-box">348</b></span>/晚起 </p><p class="hint-text"></p>
                            </div>
                        </div>
                    </div><div class="carousel_box house-group" style="float: left;">
                        <div class="room-cont">
                            <a href="https://go.tujia.com/1007/?code=CZLB-ZSK-hz&amp;id=250081" target="_blank" title="玺生活Loft精品大床房" class="pic-box" rel="nofollow">
                                <img src="./rest_files/201705032150481263_120_90.jpg" alt="玺生活Loft精品大床房">
                            </a>
                            <div class="info-box">
                                <a href="https://go.tujia.com/1007/?code=CZLB-ZSK-hz&amp;id=250081" target="_blank" class="room-tit" title="玺生活Loft精品大床房">玺生活Loft精品大床房</a>
                                <p class="picer-info"><span class="price-box"><dfn>¥</dfn><b class="number-box">228</b></span>/晚起 </p><p class="hint-text"></p>
                            </div>
                        </div>
                    </div></div><div class="carousel_group_inner" style="float: left; width: 1038px;"><div class="carousel_box house-group" style="float: left;">
                        <div class="room-cont">
                            <a href="https://go.tujia.com/1007/?code=CZLB-ZSK-hz&amp;id=295794" target="_blank" title="临近城西银泰、西溪湿地复式豪华loft" class="pic-box" rel="nofollow">
                                <img src="./rest_files/201706121451032868_120_90.jpg" alt="临近城西银泰、西溪湿地复式豪华loft">
                            </a>
                            <div class="info-box">
                                <a href="https://go.tujia.com/1007/?code=CZLB-ZSK-hz&amp;id=295794" target="_blank" class="room-tit" title="临近城西银泰、西溪湿地复式豪华loft">临近城西银泰、西溪湿地复式豪华loft</a>
                                <p class="picer-info"><span class="price-box"><dfn>¥</dfn><b class="number-box">388</b></span>/晚起 </p><p class="hint-text"></p>
                            </div>
                        </div>
                    </div><div class="carousel_box house-group" style="float: left;">
                        <div class="room-cont">
                            <a href="https://go.tujia.com/1007/?code=CZLB-ZSK-hz&amp;id=297325" target="_blank" title="黄/近西湖地铁150m民国理想家/有投影" class="pic-box" rel="nofollow">
                                <img src="./rest_files/201707031313343084_120_90.jpg" alt="黄/近西湖地铁150m民国理想家/有投影">
                            </a>
                            <div class="info-box">
                                <a href="https://go.tujia.com/1007/?code=CZLB-ZSK-hz&amp;id=297325" target="_blank" class="room-tit" title="黄/近西湖地铁150m民国理想家/有投影">黄/近西湖地铁150m民国理想家/有投影</a>
                                <p class="picer-info"><span class="price-box"><dfn>¥</dfn><b class="number-box">368</b></span>/晚起 </p><p class="hint-text"></p>
                            </div>
                        </div>
                    </div><div class="carousel_box house-group" style="float: left;">
                        <div class="room-cont">
                            <a href="https://go.tujia.com/1007/?code=CZLB-ZSK-hz&amp;id=93619" target="_blank" title="花与爱丽丝民宿夜莺主题大床房" class="pic-box" rel="nofollow">
                                <img src="./rest_files/201603171843147129_120_90.jpg" alt="花与爱丽丝民宿夜莺主题大床房">
                            </a>
                            <div class="info-box">
                                <a href="https://go.tujia.com/1007/?code=CZLB-ZSK-hz&amp;id=93619" target="_blank" class="room-tit" title="花与爱丽丝民宿夜莺主题大床房">花与爱丽丝民宿夜莺主题大床房</a>
                                <p class="picer-info"><span class="price-box"><dfn>¥</dfn><b class="number-box">188</b></span>/晚起 </p><p class="hint-text"></p>
                            </div>
                        </div>
                    </div></div></div></div><div class="carousel_indicator"><span class="active"></span><span></span><span></span></div>
                </div>
            </div>
        </div>
        <%--========================================--%>



        <div class="panel-cont">

            <div id="listWrapper" class="mainbar-cont">
                <div id="unitSearchResult">

                    <!-- 房屋信息集合 -->
                    <div class="house-list">
                        <c:forEach items="${houseInfoList}" var="houseInfo">
                            <div class="houseDetail searchresult-cont new-searchresult-cont  clearfix"
                                 data-unitid="51919" data-growing-idx="1">
                                <input type="hidden" value="${houseInfo.house_id}" name="houseId">
                                <div class="pic-box">
                                    <a href= ""  target="_blank" onclick="">
                                        <img
                                            alt=${houseInfo.title}  width="300" height="200"
                                            src= <c:if test="${!houseInfo.image_url.startsWith('http')}">http://</c:if>${houseInfo.image_url} >
                                    </a>
                                </div>

                                <div class="house-info">
                                    <div class="main-box ">
                                        <div class="house-content">
                                            <h2 id="divcvinfo_51919" class="title-box">
                                                <a
                                                        href=""
                                                        target="_blank"
                                                        onclick=""
                                                        title = "${houseInfo.title}">${houseInfo.title}</a>

                                            </h2>

                                            <div class="htladdress-box">
                                                <span class="label-text">${houseInfo.address}</span>
                                            </div>
                                            <div class="text-description">
                                                <span class="hotel-value" >&nbsp;${houseInfo.evaluate / 10}</span>分
                                            </div>
                                        </div>

                                        <div class="sid-box">
                                            <div class="price-cont">
                                                <p>
                                                    <a
                                                            target="_blank" rel="nofollow" class="h-price"
                                                            >
                                                        <dfn class="f-vt">¥</dfn><span class="price-value">${houseInfo.price}</span>
                                                    </a>
                                                </p>
                                            </div>

                                            <div class="icon-list">
                                                <i class="icon-zhimacredit" rel="zhimacreditTips"></i> <i
                                                    class="icon-payment" rel="FaceToFacePaytip"></i> <i
                                                    class="icon-card j-icon-card" rel="PrepaidCardTooltip"></i>
                                            </div>
                                        </div>
                                        <div style="clear: left"></div>
                                    </div>

                                    <div class="m-table t-table-products" id="divUnit_51919"
                                         unitid="51919">
                                        <table>
                                            <tbody data-scenicspot="fuyang"
                                                   data-destinationpinyin="hangzhou">
                                            <tr
                                                    data-link=""
                                                    class=" ">



                                                <td class="cols-2"><span class="price-cont"
                                                                         pdid="244583" tdprice="231"><dfn>¥</dfn><b>${houseInfo.price}</b></span>
                                                </td>

                                                <td class="last">

                                                    <a class="btn-buy"
                                                                    href="javascript:void(0);" rel="nofollow"
                                                                    >查看</a>
                                                </td>

                                            </tr>

                                            </tbody>
                                        </table>
                                        <div class="searchresult-toggle"></div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                        <!-- foreach -->

                        <!-- /foreach -->


                        <div id="pages">

                            <!--MvcPager 1.5 for ASP.NET MVC 3.0 © 2009-2011 Webdiyer (http://www.webdiyer.com)-->
                            <div class="pages">
                                <span class="selected">1</span><a
                                    href="https://www.tujia.com/hangzhou_gongyu/2/">2</a><a
                                    href="https://www.tujia.com/hangzhou_gongyu/3/">3</a><a
                                    href="https://www.tujia.com/hangzhou_gongyu/4/">4</a><a
                                    href="https://www.tujia.com/hangzhou_gongyu/5/">5</a><a
                                    href="https://www.tujia.com/hangzhou_gongyu/6/">...</a><a
                                    href="https://www.tujia.com/hangzhou_gongyu/2/">下一页</a><a
                                    href="https://www.tujia.com/hangzhou_gongyu/132/">尾页</a>
                            </div>
                            <!--MvcPager 1.5 for ASP.NET MVC 3.0 © 2009-2011 Webdiyer (http://www.webdiyer.com)-->

                        </div>

                        <div style="display: none;">UnitSearchResult cost: 43ms</div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="m-seo-list">
        <div id="seolink">
            <div class="seo-group">
                <div class="seo-cont">
                    <span class="more-btn" style="display: none;">更多</span>
                    <ul style="height: 28px;">

                        <li><a href="https://www.tujia.com/duanzu_hangzhou/"
                               target="_blank" title="杭州短租公寓">杭州短租公寓</a></li>

                        <li><a href="https://www.tujia.com/hangzhou_gongyu/hm1/"
                               target="_blank" title="杭州度假公寓">杭州度假公寓</a></li>

                        <li><a href="https://www.tujia.com/hangzhou_gongyu/shotel/"
                               target="_blank" title="杭州酒店">杭州酒店</a></li>

                        <li><a
                                href="https://www.tujia.com/hangzhou_gongyu/binjiangqu_s17/"
                                target="_blank" title="杭州滨江区住宿">杭州滨江区住宿</a></li>

                        <li><a
                                href="https://www.tujia.com/hangzhou_gongyu/jiangganqu_s70/"
                                target="_blank" title="杭州江干区住宿">杭州江干区住宿</a></li>

                        <li><a
                                href="https://www.tujia.com/hangzhou_gongyu/shangchengqu_s15/"
                                target="_blank" title="杭州上城区住宿">杭州上城区住宿</a></li>

                        <li><a
                                href="https://www.tujia.com/hangzhou_gongyu/xiachengqu_s35/"
                                target="_blank" title="杭州下城区住宿">杭州下城区住宿</a></li>

                        <li><a
                                href="https://www.tujia.com/hangzhou_gongyu/linan_s692/"
                                target="_blank" title="杭州临安市住宿">杭州临安市住宿</a></li>

                        <li><a
                                href="https://www.tujia.com/hangzhou_gongyu/fuyang_s694/"
                                target="_blank" title="杭州富阳市住宿">杭州富阳市住宿</a></li>

                        <li><a
                                href="https://www.tujia.com/hangzhou_gongyu/xiaoshanqu_s40/"
                                target="_blank" title="杭州萧山区住宿">杭州萧山区住宿</a></li>

                        <li><a
                                href="https://www.tujia.com/hangzhou_gongyu/xihuqu_s13/"
                                target="_blank" title="杭州西湖区住宿">杭州西湖区住宿</a></li>

                        <li><a
                                href="https://www.tujia.com/hangzhou_gongyu/yuhang_s693/"
                                target="_blank" title="杭州余杭区住宿">杭州余杭区住宿</a></li>

                        <li><a
                                href="https://www.tujia.com/hangzhou_gongyu/gongshuqu_s80/"
                                target="_blank" title="杭州拱墅区住宿">杭州拱墅区住宿</a></li>

                        <li><a
                                href="https://www.tujia.com/hangzhou_gongyu/chunan_s699/"
                                target="_blank" title="杭州淳安县住宿">杭州淳安县住宿</a></li>

                        <li><a
                                href="https://www.tujia.com/hangzhou_gongyu/tonglu_s697/"
                                target="_blank" title="杭州桐庐县住宿">杭州桐庐县住宿</a></li>

                        <li><a
                                href="https://comment.tujia.com/hangzhou/qingnianlvguan.htm"
                                target="_blank" title="杭州青年旅馆">杭州青年旅馆</a></li>

                        <li><a href="https://comment.tujia.com/hangzhou/gongyu.htm"
                               target="_blank" title="杭州酒店公寓">杭州酒店公寓</a></li>

                        <li><a href="https://comment.tujia.com/hangzhou/bieshu.htm"
                               target="_blank" title="杭州别墅">杭州别墅</a></li>

                    </ul>
                </div>
            </div>
        </div>
    </div>

    <!-- foot -->

</div>

</body>
</html>
