<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/include/import.jsp"%>

<!DOCTYPE html>
<html>

<head>
<%@ include file="/WEB-INF/jsp/include/include.jsp"%>
<script src="${contextPath}/extres/js/servicecall_partTwo.js"></script>
<script src="${contextPath}/extres/js/servicecall_partThree.js"></script>
<script type="text/javascript">
	var partTwoId = '${partTwo.id}';
</script>
</head>

<body>
	<div id="container">
		<jsp:include page="/WEB-INF/jsp/include/head.jsp"></jsp:include>

		<div id="main">
			<ol id="toolbar" class="breadcrumb">
				<li><h4><a href="${contextPath}/admin/partTwo/list">Part Two</a></h4></li>
				<li><a>修改 Part Two</a></li>
			</ol>

			<div class="content">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title">Part Two 信息</h3>
					</div>
					<div class="panel-body">
						<form id="form" role="form">
							<input type="hidden" name="id" value="${partTwo.id}">

							<div class="form-group">
								<label for="topic">Part Two 标题</label><input id="topic" name="topic" class="form-control" placeholder="Part Two 标题" value="${partTwo.topic}" />
							</div>

							<div class="form-group">
								<label>Part Two 问题</label>
								<textarea rows="3" class="form-control" id="title" name="title" placeholder="Part Two 问题" style="resize: none;">${partTwo.title}</textarea>
							</div>

							<div class="form-group">
								<label>Part Two Should Say</label>
								<textarea rows="4" class="form-control" id="shouldSay" name="shouldSay" placeholder="Part Two Should Say" style="resize: none;">${partTwo.shouldSay}</textarea>
							</div>

							<div class="form-group">
								<label>Part Two 范例</label>
								<textarea rows="5" class="form-control" id="content" name="content" placeholder="Part Two 范例" style="resize: none;">${partTwo.content}</textarea>
							</div>

							<div class="form-group">
								<label for="mp3">Part Two 音频</label>
								<div class="upload-div">
									<ui:swfupload id="two_upload" width="134" height="30" label="选择本地音频文件" fileExtFilter="*.mp3;*.m4a" fileNameFilter="音频文件" catalog="audio" maxSize="500MB" progress="swfupload.progress" error="swfupload.error" prepare="swfupload.prepare" success="upload_success_two"></ui:swfupload>
								</div>
								<input type="hidden" name="mp3name" id="mp3name" value="${partTwo.mp3name}"><input type="hidden" name="mp3upid" id="mp3upid" value="${partTwo.mp3upid}">
							</div>

							<label id="mp3_upload_success">音频 ${partTwo.mp3name}</label>
						</form>
					</div>
				</div>

				<div class="panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title">相关 Part Three 音频</h3>
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
								<button type="button" class="btn btn-danger" id="btn_delete_partThree">删除所选音频</button>
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