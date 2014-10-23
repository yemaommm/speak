<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/include/import.jsp"%>

<!DOCTYPE html>
<html>

<head>
<%@ include file="/WEB-INF/jsp/include/include.jsp"%>
<script src="${contextPath}/extres/js/servicecall_resource.js"></script>
<script type="text/javascript">
	$(function() {
		$("#loading").hide();
		resourceEditor = CKEDITOR.replace('content', {
			width : 900,
			height : 500
		});
		resourceService.findResource('${resource.id}');
	});

	function afFindResource(ref, data) {
		resourceEditor.setData(data.content);
	}
</script>
</head>

<body>
	<div id="container">
		<jsp:include page="/WEB-INF/jsp/include/head.jsp"></jsp:include>

		<div id="main">
			<ol id="toolbar" class="breadcrumb">
				<li><h4><a href="${contextPath}/admin/resource/list">关于我们列表</a></h4></li>
				<li><a>修改关于我们</a></li>
			</ol>

			<div class="content">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title">关于我们信息</h3>
					</div>
					<div class="panel-body">
						<form id="form" role="form">
							<input type="hidden" name="id" value="${resource.id}">

							<div class="form-group">
								<label for="title">关于我们标题</label> <input class="form-control" value="${resource.title}" readonly="readonly" />
							</div>

							<div style="position: relative;">
								<label for="content">关于我们内容</label>
								<ui:swfupload id="image_upload" width="70" height="30" label="插入图片" fileExtFilter="*.jpg;*.png;*.gif;" fileNameFilter="图片文件" catalog="resource" maxSize="15MB" progress="swfupload.progress" error="swfupload.error" prepare="swfupload.prepare" success="upload_success"></ui:swfupload>
								<textarea id="content" name="content" style="resize: none;" class="form-control" rows="4" cols="4" placeholder="关于我们内容"></textarea>
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