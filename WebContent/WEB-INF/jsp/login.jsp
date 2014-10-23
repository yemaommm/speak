<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/web/include/import.jsp"%>

<!DOCTYPE html>
<html>

<head>
<%@ include file="/WEB-INF/jsp/web/include/include.jsp"%>
<link href="${contextPath}/extres/css/web/login.css" rel="stylesheet" />
<title>用户登录</title>
</head>

<body>
	<div id="container">
		<div id="head">
			<div class="maincontainer">
				<a id="logo" href="${contextPath}/">
					<img alt="logo" src="${contextPath}/extres/img/logo.png">
				</a>
				<span style="margin-top: 5px;" class="pull-right">还没有帐号？立即<a href="${contextPath}/register" class="gray-red red">免费注册</a></span>
			</div>
		</div>

		<div id="main">
			<div class="content">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title">登录信息</h3>
					</div>
					<div class="panel-body">
						<form id="formLogin" name="formLogin" role="formLogin" data-toggle="validator" action="${contextPath}/j_spring_security_check" method="POST">
							<div class="form-group">
								<label for="username">用户名</label> <input type="email" class="form-control" id="username" name="j_username" placeholder="请输入用户名邮箱" required="required" value="${SPRING_SECURITY_LAST_USERNAME}" data-error="请输入有效的邮件地址">
								<div class="help-block with-errors"></div>
							</div>

							<div class="form-group">
								<label for="password">密码</label> <input type="password" class="form-control" id="password" name="j_password" placeholder="请输入密码" required="required" data-error="请输入密码">
								<div class="help-block with-errors"></div>
							</div>

							<div class="form-group checkbox">
								<label><input id="isRemember" type="checkbox" name="_spring_security_remember_me" checked="checked">记住我的登录信息</label>
							</div>

							<div class="form-group">
								<button type="submit" id="btn_register" class="btn btn-danger" style="width: 100%;">登 录</button>
							</div>

							<a class="pull-right gray-red red" href="${contextPath}/getpassword">忘记密码？</a>

							<c:if test="${!empty SPRING_SECURITY_LAST_EXCEPTION}">
								<p class="error">
									<c:if test="${SPRING_SECURITY_LAST_EXCEPTION.message=='Bad credentials'}">用户名或密码错误</c:if>
									<c:if test="${SPRING_SECURITY_LAST_EXCEPTION.message=='User account is locked'}">用户被锁定,请联系管理员</c:if>
								</p>
								<c:remove scope="session" var="SPRING_SECURITY_LAST_EXCEPTION" />
							</c:if>
						</form>
					</div>
				</div>
			</div>
		</div>

		<div id="foot"></div>
	</div>
</body>

</html>