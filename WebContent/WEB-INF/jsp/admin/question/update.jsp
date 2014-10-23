<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/include/import.jsp"%>

<!DOCTYPE html>
<html>

<head>
<%@ include file="/WEB-INF/jsp/include/include.jsp"%>
<script src="${contextPath}/extres/js/servicecall_question.js"></script>
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
				<li><h4><a href="${contextPath}/admin/question/list">话题精讲</a></h4></li>
				<li><a>修改话题精讲</a></li>
			</ol>

			<div class="content">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title">话题信息</h3>
					</div>
					<div class="panel-body">
						<form id="form" role="form">
							<input type="hidden" name="id" value="${question.id}">

							<div class="form-group">
								<label for="title">话题标题</label><input id="title" name="title" class="form-control" placeholder="话题标题" value="${question.title}" />
							</div>

							<div class="form-group">
								<label for="title">话题封面(建议尺寸290*240)</label>
								<div class="upload-div">
									<ui:swfupload id="img_upload" width="134" height="30" label="选择图片文件" fileExtFilter="*.jpg;*.png;*.gif;" fileNameFilter="图片文件" catalog="question" maxSize="500MB" progress="swfupload.progress" error="swfupload.error" prepare="swfupload.prepare" success="upload_success_img"></ui:swfupload>
								</div>
								<input type="hidden" name="imgupid" id="imgupid" value="${question.imgupid}"> <img id="img-pic" src="${contextPath}/download/question/${question.imgupid}" width="290" height="240" style="margin-top: 10px;">
							</div>

							<div class="form-group">
								<label for="content">话题内容</label>
								<div class="upload-div">
									<ui:swfupload id="mp4_upload" width="134" height="30" label="选择本地 mp4 文件" fileExtFilter="*.mp4;" fileNameFilter="视频文件" catalog="question" maxSize="500MB" progress="swfupload.progress" error="swfupload.error" prepare="swfupload.prepare" success="upload_success"></ui:swfupload>
								</div>
								<input type="hidden" name="mp4name" id="mp4name" value="${question.mp4name}"><input type="hidden" name="mp4upid" id="mp4upid" value="${question.mp4upid}">
							</div>

							<label id="mp4_upload_success">视频 ${question.mp4name}</label>
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