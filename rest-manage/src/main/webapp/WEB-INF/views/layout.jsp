<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>京淘商城后台管理系统</title>
	<jsp:include page="/commons/common-js.jsp"></jsp:include>
</head>
<body>
	<div id="cc" class="easyui-layout" style="width:600px;height:400px;"> 
	
		<div data-options="region:'west',title:'West',split:true" style="width:100px;">
			<ul id="menu" class="easyui-tree" style="margin-top: 10px;margin-left: 5px;">
	         	<li>
	         		<span>商品管理</span>
	         		<ul>
		         		<li data-options="attributes:{'url':'/page/item-add'}">新增商品</li>
		         		<li data-options="attributes:{'url':'/page/item-list'}">查询商品</li>
		         		<li data-options="attributes:{'url':'/page/item-param-list'}">规格参数</li>
		         	</ul>
	         	</li>
	         	<li>
	         		<span>网站内容管理</span>
	         		<ul>
		         		<li data-options="attributes:{'url':'/page/content-category'}">内容分类管理</li>
		         		<li data-options="attributes:{'url':'/page/content'}">内容管理</li>
		         	</ul>
	         	</li>
	         </ul>
		</div> 
		
		<div data-options="region:'center',title:'center title'" style="padding:5px;background:#eee;">
	    	<div id="tabs" class="easyui-tabs">
			    <div title="首页" style="padding:20px;">
			        	
			    </div>
			</div>		
		</div> 
		
	</div>
    
<script type="text/javascript">
$(function(){
	$('#menu').tree({
		onClick: function(node){
			if($('#menu').tree("isLeaf",node.target)){		//判断是否为叶子节点
				var tabs = $("#tabs");						//获取到tabs容器
				var tab = tabs.tabs("getTab",node.text);	//根据页夹的名称获取页夹的对象
				if(tab){
					tabs.tabs("select",node.text);			//如果存在，选中当前的页夹
				}else{
					tabs.tabs('add',{						//如果不存在，就创建一个页夹
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