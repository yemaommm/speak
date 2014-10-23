<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/include/import.jsp"%>

<!DOCTYPE html>
<html>

<head>
<%@ include file="/WEB-INF/jsp/include/include.jsp"%>
<script src="${contextPath}/extres/js/servicecall_resource.js"></script>
<script type="text/javascript">
	current = '${currentPage}';
	$(function() {
		load(0);
	});
</script>
</head>

<body>
	<div id="container">
		<jsp:include page="/WEB-INF/jsp/include/head.jsp"></jsp:include>

		<div id="main">
			<ol id="toolbar" class="breadcrumb">
				<li><h4><a href="${contextPath}/admin/resource/list">关于我们列表</a></h4></li>
			</ol>

			<form id="form_search" class="navbar-form navbar-left form-inline" role="search">
				<div class="form-group">
					<input name="title" class="form-control" placeholder="关于我们标题" value="${queryForm.title}">
				</div>

				<button id="btn_search" type="button" class="btn btn-default">
					<i class="glyphicon glyphicon-search"></i>
				</button>
			</form>

			<ui:datagrid id="table" objName="resource" name="table" columns="_check,title,_action"></ui:datagrid>
		</div>

		<jsp:include page="/WEB-INF/jsp/include/foot.jsp"></jsp:include>
	</div>
</body>

</html>