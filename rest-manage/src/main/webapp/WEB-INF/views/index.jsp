<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://shiro.apache.org/tags" prefix="shiro"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>房屋出租后台管理系统</title>
<jsp:include page="/commons/common-js.jsp"></jsp:include>
<style type="text/css">
	.content {
		padding: 10px 10px 10px 10px;
	}
</style>
</head>
<body class="easyui-layout">
    <div data-options="region:'west',title:'菜单',split:true" style="width:180px;">
    	<ul id="menu" class="easyui-tree" style="margin-top: 10px;margin-left: 5px;">

			<shiro:hasPermission name="房源信息管理">
				<li>
					<span>房源信息管理</span>
					<ul>
						<li data-options="attributes:{'url':'/page/rest-list'}">查询房源</li>
					</ul>
				</li>
			</shiro:hasPermission>
			<shiro:hasPermission name="房源认证管理">
				<li>
					<span>房源认证管理</span>
					<ul>
						<li data-options="attributes:{'url':'/page/content-category'}">房源认证</li>
					</ul>
				</li>
			</shiro:hasPermission>
			<shiro:hasPermission name="用户信息管理">
				<li>
					<span>用户信息管理</span>
					<ul>
						<li data-options="attributes:{'url':'/page/item-list'}">查询用户</li>
					</ul>
				</li>
			</shiro:hasPermission>
			<shiro:hasPermission name="用户认证管理">
				<li>
					<span>用户认证管理</span>
					<ul>
						<li data-options="attributes:{'url':'/page/user-auth'}">用户认证</li>
					</ul>
				</li>
			</shiro:hasPermission>
         </ul>
    </div>
    <div data-options="region:'center',title:''">
    	<div id="tabs" class="easyui-tabs">
		    <div title="首页" style="padding:20px;">
		        	
		    </div>
		</div>
    </div>
    
<script type="text/javascript">
$(function(){
	$('#menu').tree({
		onClick: function(node){
			if($('#menu').tree("isLeaf",node.target)){
				var tabs = $("#tabs");
				var tab = tabs.tabs("getTab",node.text);
				if(tab){
					tabs.tabs("select",node.text);
				}else{
					tabs.tabs('add',{
					    title:node.text,
					    href: node.attributes.url,
					    closable:true,
					    bodyCls:"content"
					});
				}
			}
		}
	});
});
</script>
</body>
</html>