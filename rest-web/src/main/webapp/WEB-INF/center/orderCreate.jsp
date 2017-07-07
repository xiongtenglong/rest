<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<html>
<head>
<meta charset="utf-8">
<title>确认订单</title>
<link rel="stylesheet" href="/center/assets/css/min_123.css">

</head>
<body id="invest_content">
<%@include file="/WEB-INF/index/_head.jsp" %>
<div class="ctn-960 mg shadow-5">
  <form  action="saveOrder" class="js-form-validate" method="post"  data-arg-one="#" data-arg-two="100">
    <div class="confirm-info-list mgt clearfix" style="position: relative; margin:0 auto;">
      <dl class="confirm-info-list-dl confirm-info-list-project">
        <dt class="tc1-title">
          <h2>订单编号：</h2>
        <li ><input name="orderId" style="color: #2D93CA" style="border: hidden;" value="${orderId}" width="100px" readonly="readonly" hidden="hidden"/>${orderId}</li>
        </dt>
        <dd class="clearfix">
          <ul class="list-style-1 list-style-1-first">
            <li style="letter-spacing:3px">用户：<input name="username" style="border: hidden;" value="${session_user.username}" readonly="readonly"/></li>
            <li style="letter-spacing:3px">真实姓名：<input name="userInfo.name" style="border: hidden;" value="${session_user.userInfo.name}" readonly="readonly"/></li>
            <li style="letter-spacing:3px">联系方式：<input name="userInfo.phone" style="border: hidden;" value="${session_user.userInfo.phone}" readonly="readonly"/></li>
            <li style="letter-spacing:3px">身份证号：<input name="userInfo.card" style="border: hidden;" value="${session_user.userInfo.card}" readonly="readonly"/></li>
            
            <li style="letter-spacing:3px">房屋ID：<input name="houseId" style="border: hidden;" value="${houseId}" readonly="readonly"/></li>
              <input name="userId"   value="${session_user.userId}" hidden="hidden"/>

          </ul>
          <ul class="list-style-1 list-style-1-two">
            <li style="letter-spacing:3px"><span ></span><span></span></li>
            <li style="letter-spacing:3px"><span >创建时间：</span><input name="date" style="border: hidden;" value="${date}" readonly="readonly"/></li>
          </ul>
        </dd>
      </dl>
      <dl class="confirm-info-list-dl">
        <dt class="tc1-title">
          <h2>订单确认</h2>
        </dt>
        <dd>
          <ul class="confirm-info-list-money-ul clearfix">
           

          </ul>
              <!--input type="checkbox" id="use_remain_amount" checked="true" /-->
     <div class="confirmationForm clearfix">
              <div class="invest-btn-line">
                <input tabindex="3" id="confirm-btn" type="submit" value="确认" class="i-p-c-i-btn clearButton"/>
            </div>
             <div class="invest-btn-line">
               <a tabindex="3" id="confirm-btn2" class="i-p-c-i-btn clearButton" href="delete.action">取消</a>
             </div>
          </div>
        </dd>
      </dl>
    </div>
  </form>
</div>
</body>
</html>