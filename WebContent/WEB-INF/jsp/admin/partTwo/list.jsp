<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/include/import.jsp"%>

<!DOCTYPE html>
<html>

<head>
<%@ include file="/WEB-INF/jsp/include/include.jsp"%>
<script src="${contextPath}/extres/js/servicecall_partTwo.js"></script>
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
				<li><h4><a href="${contextPath}/admin/partTwo/list">Part Two</a></h4></li>
				<a style="float: right !important;" href="${contextPath}/admin/partTwo/create" class="btn btn-primary">新建 Part Two</a>
				<a style="float: right !important; margin-right: 5px;" id="btn_delete_partTwo" class="btn btn-danger">删除所选 Part Two</a>
			</ol>

			<form id="form_search" class="navbar-form navbar-left form-inline" role="search">
				<div class="form-group">
					<input name="topic" class="form-control" placeholder="Part Two 标题" value="${queryForm.topic}">
				</div>

				<button id="btn_search" type="button" class="btn btn-default">
					<i class="glyphicon glyphicon-search"></i>
				</button>
			</form>

			<ui:datagrid id="table" objName="partTwo" name="table" columns="_check,topic,_action"></ui:datagrid>
		</div>
		<jsp:include page="dialog.jsp"></jsp:include>
		<jsp:include page="/WEB-INF/jsp/include/foot.jsp"></jsp:include>
	</div>
</body>

</html>