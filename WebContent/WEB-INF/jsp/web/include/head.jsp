<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/web/include/import.jsp"%>

<script type="text/javascript">
	user_id = '${sessionScope.SPRING_SECURITY_CONTEXT.authentication.principal.id}';
</script>

<div id="head">
	<div class="maincontainer">
		<a id="logo" href="${contextPath}/"><img alt="logo" src="${contextPath}/extres/img/logo.png"></a>
		<ul class="inlineblock">
			<li><a class="gray-red f16" href="${contextPath}/">首页</a></li>
			<li><a class="gray-red f16" href="${contextPath}/practice">口语练习</a></li>
			<li><a class="gray-red f16" href="${contextPath}/course">话题精讲</a></li>
			<li><a class="gray-red f16" href="${contextPath}/share">趴趴社区</a></li>
			<li><a class="gray-red f16" href="${contextPath}/aboutus">关于我们</a></li>
		</ul>

		<span id="loginInfo1" class="pull-right">
			<a href="${contextPath}/login" class="gray-red">登录</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="${contextPath}/register" class="gray-red">注册</a>
		</span>
		
		<span id="loginInfo2" class="pull-right" style="display: none;">
			<li class="dropdown">
				<a class="dropdown-toggle" data-toggle="dropdown"><span id="screenname"></span><span class="caret"></span></a>
				<ul class="dropdown-menu" role="menu">
					<li><a href="${contextPath}/vip">会员中心</a></li>
					<li><a href="${contextPath}/setup">个人设置</a></li>
					<li class="divider"></li>
					<li><a href="${contextPath}/j_spring_security_logout">退出</a></li>
				</ul>
			</li>
		</span>
	</div>
</div>