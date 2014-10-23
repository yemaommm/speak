<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/include/import.jsp"%>

<!DOCTYPE html>
<html>

<head>
<%@ include file="/WEB-INF/jsp/include/include.jsp"%>
<script src="${contextPath}/extres/js/servicecall_partOne.js"></script>
<script src="${contextPath}/extres/js/servicecall_partOne_u.js"></script>
<script type="text/javascript">
	var partOneId = '${partOne.id}';
</script>
</head>

<body>
	<div id="container">
		<jsp:include page="/WEB-INF/jsp/include/head.jsp"></jsp:include>

		<div id="main">
			<ol id="toolbar" class="breadcrumb">
				<li><h4><a href="${contextPath}/admin/partOne/list">Part One</a></h4></li>
				<li><a>修改 Part One</a></li>
			</ol>

			<div class="content">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title">Part One 信息</h3>
					</div>
					<div class="panel-body">
						<form id="form" role="form">
							<input type="hidden" name="id" value="${partOne.id}">

							<div class="form-group">
								<label for="title">Part One 标题</label><input id="title" name="title" class="form-control" placeholder="Part One 标题" value="${partOne.title}" />
							</div>
						</form>
					</div>
				</div>

				<div class="panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title">Part One 音频</h3>
					</div>
					<div class="panel-body">
						<div>
							<div class="upload-div inlineblock">
								<ui:swfupload id="mp3_upload" width="134" height="30" label="选择本地 zip 文件" fileExtFilter="*.zip;" fileNameFilter="zip压缩文件" catalog="audio" maxSize="500MB" progress="swfupload.progress" error="swfupload.error" prepare="swfupload.prepare" success="upload_success_mp3"></ui:swfupload>
							</div>
							<div class="upload-div inlineblock">
								<ui:swfupload id="mp3_upload_one" width="134" height="30" label="选择本地音频文件" fileExtFilter="*.mp3;*.m4a;" fileNameFilter="音频文件" catalog="audio" maxSize="500MB" progress="swfupload.progress" error="swfupload.error" prepare="swfupload.prepare" success="upload_success_mp3_one"></ui:swfupload>
							</div>
							<div class="pull-right inlineblock">
								<button type="button" class="btn btn-danger" id="btn_delete_partOneQuestion">删除所选音频</button>
							</div>
						</div>
						<br>
						<ui:datagrid id="table" objName="audio" name="table" columns="_check,mp3name,title,_action"></ui:datagrid>
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