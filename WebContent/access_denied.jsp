<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/include/import.jsp"%>

<!DOCTYPE html>
<html>

<head>
<style type="text/css">
.adb {
	width: 400px;
	text-align: center;
	margin: 0 auto;
	background-color: #f0ffff;
	border: 1px solid #ccc;
	padding-top: 60px;
	margin-top: 50px;
}
</style>
</head>

<body>
	<div class="adb">
		<img src="${contextPath}/extres/img/lock.png">
		<h4 style="color: #ccc">无法访问该内容</h4>
		<h6>
			<a href="${contextPath}/">返回首页</a> | <a href="${contextPath}/logout">退出系统</a>
		</h6>
	</div>
</body>

</html>