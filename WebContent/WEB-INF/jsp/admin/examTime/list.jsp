<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/include/import.jsp"%>

<!DOCTYPE html>
<html>

<head>
<%@ include file="/WEB-INF/jsp/include/include.jsp"%>
<script src="${contextPath}/extres/js/servicecall_examTime.js"></script>
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
				<li><h4><a href="${contextPath}/admin/examTime/list">考期列表</a></h4></li>
				<a style="float: right !important;" href="${contextPath}/admin/examTime/create" class="btn btn-primary">新建考期</a>
				<a style="float: right !important; margin-right: 5px;" id="btn_delete_examTime" class="btn btn-danger">删除所选考期</a>
			</ol>

			<ui:datagrid id="table" objName="examTime" name="table" columns="_check,examTime"></ui:datagrid>
		</div>
		<jsp:include page="dialog.jsp"></jsp:include>
		<jsp:include page="/WEB-INF/jsp/include/foot.jsp"></jsp:include>
	</div>
</body>

</html>