<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/web/include/import.jsp"%>

<!DOCTYPE html>
<html>

<head>
<%@ include file="/WEB-INF/jsp/web/include/include.jsp"%>
<link href="${contextPath}/extres/css/web/getpassword.css" rel="stylesheet" />
<script src="${contextPath}/extres/js/web/getpassword.js"></script>
<title>找回密码</title>
</head>

<body>
	<div id="container">
		<div id="head">
			<div class="maincontainer">
				<a id="logo" href="${contextPath}/">
					<img alt="logo" src="${contextPath}/extres/img/logo.png">
				</a>
				<span style="margin-top: 5px;" class="pull-right"><a href="${contextPath}/login" class="gray-red">登录</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="${contextPath}/register" class="gray-red">注册</a></span>
			</div>
		</div>

		<div id="main">
			<div class="content">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title">找回密码</h3>
					</div>
					<div class="panel-body">
						<form id="formReset" name="formReset" role="formReset" data-toggle="validator">
							<div class="form-group">
								<label for="username">用户名</label> <input type="text" class="form-control" id="username" name="username" placeholder="请输入用户名邮箱">
								<div id="check_username" class="help-block with-errors"></div>
							</div>

							<div class="form-group">
								<label for="verifiCode">验证码</label>
								<div class="form-inline">
									<input type="text" class="form-control" id="verifiCode" placeholder="请输入验证码"> <img id="verifiCode_Pic" src="${contextPath}/verifiCode.do" onclick="reverify();" /> <a id="changeVerifiCode" href="javascript:reverify();">看不清楚，换一张</a>
									<div id="check_verifiCode" class="help-block with-errors"></div>
								</div>
							</div>

							<div class="form-group" id="replace_div"></div>

							<button type="button" id="btn_reset" class="btn btn-danger" style="width: 100%;" disabled="disabled">获 取 新 密 码</button>
						</form>
					</div>
				</div>
			</div>
		</div>

		<div id="foot"></div>
	</div>
</body>

</html>