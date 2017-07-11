<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<link href="/js/kindeditor-4.1.10/themes/default/default.css" type="text/css" rel="stylesheet">
<script type="text/javascript" charset="utf-8" src="/js/kindeditor-4.1.10/kindeditor-all-min.js"></script>
<script type="text/javascript" charset="utf-8" src="/js/kindeditor-4.1.10/lang/zh_CN.js"></script>
<script type="text/javascript" charset="utf-8" src="/js/jquery-easyui-1.4.1/jquery.min.js"></script>
<script type="text/javascript" charset="utf-8" src="/js/kindeditor-4.1.10/plugins/image/image.js"></script>


<body>
<h1>文本域</h1>

<form action="${pageContext.request.contextPath }/kindeditor" method="post" enctype="multipart/form-data">
<textarea style="width:700px;height:350px" id="editor" name="desc"></textarea>
<input type="submit" value="提交">
</form>
</body>

<script type="text/javascript">

$(function(){
	KindEditor.ready(function(){
		KindEditor.create('#editor',
		{
		height:"350px",
		uploadJson:'/js/kindeditor-4.1.10/jsp/upload_json.jsp',
		fileManaerJson:'/js/kindeditor-4.1.10/jsp/file_manager_json.jsp',
		allowFileManager:true	
		
		})
	})
})
</script>
