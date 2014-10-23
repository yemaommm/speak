<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/include/import.jsp"%>

<!DOCTYPE html>
<html>

<head>
<%@ include file="/WEB-INF/jsp/include/include.jsp"%>
<script src="${contextPath}/extres/js/servicecall_partOne.js"></script>
<script type="text/javascript">
	$(function() {
		$("#loading").hide();
	});
</script>
</head>

<body>
	<div id="container">
		<jsp:include page="/WEB-INF/jsp/include/head.jsp"></jsp:include>

		<div id="main">
			<ol id="toolbar" class="breadcrumb">
				<li><h4><a href="${contextPath}/admin/partOne/list">Part One</a></h4></li>
				<li><a>新建 Part One</a></li>
			</ol>

			<div class="content">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title">Part One 信息</h3>
					</div>
					<div class="panel-body">
						<form id="form" role="form">
							<div class="form-group">
								<label for="title">Part One 标题</label><input id="title" name="title" class="form-control" placeholder="Part One 标题" />
							</div>
						</form>
					</div>
				</div>

				<button id="btn_save" class="btn btn-primary">保存</button>
				<button id="btn_cancel" class="btn btn-default">取消</button>
			</div>
		</div>

		<jsp:include page="/WEB-INF/jsp/include/foot.jsp"></jsp:include>
	</div>
</body>

</html>