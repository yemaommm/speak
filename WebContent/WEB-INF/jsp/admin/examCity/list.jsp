<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/include/import.jsp"%>

<!DOCTYPE html>
<html>

<head>
<%@ include file="/WEB-INF/jsp/include/include.jsp"%>
<script src="${contextPath}/extres/js/servicecall_examCity.js"></script>
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
				<li><h4><a href="${contextPath}/admin/examCity/list">考点列表</a></h4></li>
				<a style="float: right !important;" href="${contextPath}/admin/examCity/create" class="btn btn-primary">新建考点</a>
				<a style="float: right !important; margin-right: 5px;" id="btn_delete_examCity" class="btn btn-danger">删除所选考点</a>
			</ol>

			<form id="form_search" class="navbar-form navbar-left form-inline" role="search">
				<div class="form-group">
					<input name="examCity" class="form-control" placeholder="考点城市" value="${queryForm.examCity}">
				</div>

				<button id="btn_search" type="button" class="btn btn-default">
					<i class="glyphicon glyphicon-search"></i>
				</button>
			</form>

			<ui:datagrid id="table" objName="examCity" name="table" columns="_check,examCity"></ui:datagrid>
		</div>
		<jsp:include page="dialog.jsp"></jsp:include>
		<jsp:include page="/WEB-INF/jsp/include/foot.jsp"></jsp:include>
	</div>
</body>

</html>