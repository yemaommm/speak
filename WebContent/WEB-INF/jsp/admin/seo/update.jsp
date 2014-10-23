<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/include/import.jsp"%>

<!DOCTYPE html>
<html>

<head>
<%@ include file="/WEB-INF/jsp/include/include.jsp"%>
<script src="${contextPath}/extres/js/servicecall_seo.js"></script>
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
				<li><h4><a href="${contextPath}/admin/seo/list">SEO中心</a></h4></li>
				<li><a>修改SEO</a></li>
			</ol>

			<div class="content">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title">SEO信息</h3>
					</div>
					<div class="panel-body">
						<form id="form" role="form">
							<input type="hidden" name="id" value="${seo.id}">

							<div class="form-group">
								<label for="title">SEO title</label>
								<textarea rows="4" id="title" name="title" class="form-control" placeholder="title">${seo.title}</textarea>
							</div>

							<div class="form-group">
								<label for="keywords">SEO keywords</label>
								<textarea rows="4" id="keywords" name="keywords" class="form-control" placeholder="keywords">${seo.keywords}</textarea>
							</div>

							<div class="form-group">
								<label for="description">SEO description</label>
								<textarea rows="4" id="description" name="description" class="form-control" placeholder="description">${seo.description}</textarea>
							</div>
						</form>
					</div>
				</div>
				<button id="btn_update" class="btn btn-primary">保存</button>
				<button id="btn_cancel" class="btn btn-default">取消</button>
			</div>
		</div>

		<jsp:include page="/WEB-INF/jsp/include/foot.jsp"></jsp:include>
	</div>
</body>

</html>