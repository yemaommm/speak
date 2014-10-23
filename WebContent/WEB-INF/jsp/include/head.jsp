<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/include/import.jsp"%>

<header id="header">
	<nav id="navbar" class="navbar navbar-default" role="navigation">
		<div class="header_nav">
			<div class="navbar-header">
				<a href="${contextPath}/admin" class="navbar-brand" style="color: #fff; font-size: 18px;">后台管理</a>
			</div>

			<div class="collapse navbar-collapse navbar-inverse">
				<ul class="nav navbar-nav sys_nav">
					<li class="dropdown part1_nav">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">Part One<b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="${contextPath}/admin/partOne/create">创建 Part One</a></li>
							<li><a href="${contextPath}/admin/partOne/list">Part One 列表</a></li>
						</ul>
					</li>

					<li class="dropdown part2_nav">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">Part Two&Three<b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="${contextPath}/admin/partTwo/create">创建 Part Two&Three</a></li>
							<li><a href="${contextPath}/admin/partTwo/list">Part Two&Three 列表</a></li>
						</ul>
					</li>

					<li class="dropdown question_nav">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">话题精讲<b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="${contextPath}/admin/question/create">创建话题</a></li>
							<li><a href="${contextPath}/admin/question/list">话题列表</a></li>
						</ul>
					</li>

					<li class="dropdown examTime_nav">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">考期<b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="${contextPath}/admin/examTime/create">创建考期</a></li>
							<li><a href="${contextPath}/admin/examTime/list">考期列表</a></li>
						</ul>
					</li>

					<li class="dropdown examCity_nav">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">考点<b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="${contextPath}/admin/examCity/create">创建考点</a></li>
							<li><a href="${contextPath}/admin/examCity/list">考点列表</a></li>
						</ul>
					</li>

					<li class="dropdown about_nav"><a href="${contextPath}/admin/resource/list">关于我们</a></li>

					<li class="dropdown seo_nav"><a href="${contextPath}/admin/seo/list">SEO</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="${contextPath}/admin/user/list">用户管理</a></li>
					<li><a id="reset_password">修改密码</a></li>
					<li><a href="${contextPath}/j_spring_security_logout">退出系统</a></li>
				</ul>
			</div>
		</div>
	</nav>
</header>

<div id="loading" class="loading">
	<div>
		<img alt="loading" src="${contextPath}/extres/img/loading.gif"> <span>正在加载数据，请稍候 ...</span>
	</div>
</div>

<div id="uploading" class="loading" style="display: none;">
	<div>
		<img alt="loading" src="${contextPath}/extres/img/loading.gif"> <span>正在上传文件，请稍候 ...</span>
	</div>
</div>

<div id="change_password_div" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
				<h3>修改密码</h3>
			</div>
			<div class="modal-body">
				<form id="change_password_form">
					<div class="form-group">
						<label>初始密码</label> <input type="password" id="pre_password" class="form-control" placeholder="初始密码" />
						<div id="check_pre" class="help-block with-errors"></div>
					</div>

					<div class="form-group">
						<label>新密码</label> <input type="password" id="new_password" class="form-control" placeholder="新密码" />
					</div>

					<div class="form-group">
						<label>确认密码</label> <input type="password" id="sec_password" class="form-control" placeholder="确认密码" />
						<div id="check_sec" class="help-block with-errors"></div>
					</div>
				</form>
			</div>
			<div class="modal-footer">
				<button class="btn btn-success" id="save_password">确认</button>
				<button class="btn btn-default" data-dismiss="modal" aria-hidden="true">取消</button>
			</div>
		</div>
	</div>
</div>