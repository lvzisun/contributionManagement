<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<title>查看--中软高科-2015</title>
<link rel="stylesheet" type="text/css" href="Css/bootstrap.css" />
<link rel="stylesheet" type="text/css"
	href="Css/bootstrap-responsive.css" />
<link rel="stylesheet" type="text/css" href="Css/style.css" />
<script type="text/javascript" src="Js/jquery.js"></script>
<script type="text/javascript" src="Js/jquery.sorted.js"></script>
<script type="text/javascript" src="Js/bootstrap.js"></script>
<script type="text/javascript" src="Js/ckform.js"></script>
<script type="text/javascript" src="Js/common.js"></script>
<script type="text/javascript" src="Js/ckeditor/ckeditor.js"></script>


<style type="text/css">
body {
	padding-bottom: 40px;
}

.sidebar-nav {
	padding: 9px 0;
}

@media ( max-width : 980px) {
	/* Enable use of floated navbar text */
	.navbar-text.pull-right {
		float: none;
		padding-left: 5px;
		padding-right: 5px;
	}
}
</style>
<script type="text/javascript">
	$(function() {
		$('#backid').click(function() {
			window.location.href = "index.html";
		});
	});
</script>
</head>
<body>
	<form action="index.html" method="post" class="definewidth m20">
		<table class="table table-bordered table-hover definewidth m10">
			<tr>
				<td width="10%" class="tableleft">标题</td>
				<td>项目完成咋样</td>
			</tr>
			<tr>
				<td width="10%" class="tableleft">发件人/收件人</td>
				<td>大B哥</td>
			</tr>
			<tr>
				<td width="10%" class="tableleft">发送时间</td>
				<td>2015-08-10</td>
			</tr>
			<tr>
				<td width="10%" class="tableleft">内容</td>
				<td><textarea name="" readonly="readonly" id=""
						class="control-row4 input-large" cols="8" rows="6">
            
            最近工作累不？项目完成的咋样?加油哈
        </textarea></td>
			</tr>
			<tr>
				<td width="10%" class="tableleft">附件</td>
				<td>我和幸福生活.txt</td>
			</tr>
			<tr>
				<td colspan="2">
					<center>
						<button type="button" class="btn btn-success" name="backid"
							id="backid">返回列表</button>
					<center>>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>