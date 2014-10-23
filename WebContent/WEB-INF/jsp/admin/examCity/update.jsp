<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/include/import.jsp"%>

<!DOCTYPE html>
<html>

<head>
<%@ include file="/WEB-INF/jsp/include/include.jsp"%>
<script src="${contextPath}/extres/js/servicecall_examCity.js"></script>
<script src="${contextPath}/extres/js/servicecall_examPoint.js"></script>
<script type="text/javascript">
	var examCityId = '${examCity.id}';
</script>
</head>

<body>
	<div id="container">
		<jsp:include page="/WEB-INF/jsp/include/head.jsp"></jsp:include>

		<div id="main">
			<ol id="toolbar" class="breadcrumb">
				<li><h4><a href="${contextPath}/admin/examCity/list">考点列表</a></h4></li>
				<li><a>修改考点</a></li>
			</ol>

			<div class="content">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title">考点信息</h3>
					</div>
					<div class="panel-body">
						<form id="form" role="form">
							<input type="hidden" name="id" value="${examCity.id}">

							<div class="form-group">
								<label for="examCity">考点</label> <input class="form-control" id="examCity" name="examCity" placeholder="考点" value="${examCity.examCity}">
							</div>
						</form>
					</div>
				</div>

				<div class="panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title">具体考点</h3>
					</div>
					<div class="panel-body">
						<div class="pull-right inlineblock">
							<button type="button" class="btn btn-danger" id="btn_delete_examPoint">删除所选考点</button>
							<button type="button" class="btn btn-primary" id="btn_create_examPoint">新建具体考点</button>
						</div>
						<br> <br> <br>
						<ui:datagrid id="table" objName="examPoint" name="table" columns="_check,examPoint"></ui:datagrid>
					</div>
				</div>

				<button id="btn_update" class="btn btn-primary">保存</button>
				<button id="btn_cancel" class="btn btn-default">取消</button>
			</div>
		</div>
		<jsp:include page="dialog.jsp"></jsp:include>
		<jsp:include page="/WEB-INF/jsp/include/foot.jsp"></jsp:include>
	</div>
</body>

</html>