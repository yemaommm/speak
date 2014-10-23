<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/web/include/import.jsp"%>

<!DOCTYPE html>
<html>

<head>
<%@ include file="/WEB-INF/jsp/web/include/include.jsp"%>
<link href="${contextPath}/extres/static/bootstrap/css/bootstrap-switch.min.css" rel="stylesheet" />
<script src="${contextPath}/extres/static/bootstrap/js/bootstrap-switch.min.js"></script>
<script src="${contextPath}/extres/js/web/part.js"></script>
<link href="${contextPath}/extres/css/web/pointDetail.css" rel="stylesheet" />
<script src="${contextPath}/extres/js/web/pointDetail.js"></script>
<title>重点练习</title>

<script type="text/javascript">
	sn = '${sn}';
	$(function() {
		listPart('${sn}');
	});
</script>
</head>

<body>
	<div id="container">
		<jsp:include page="/WEB-INF/jsp/web/include/head.jsp"></jsp:include>

		<div id="main">
			<div id="left" class="inlineblock">
				<div id="left_top">
					<img id="pointF" alt="begin" src="${contextPath}/extres/css/web/pointDetail/pointF.png">

					<div id="detail">
						<div id="title"></div>
						<div id="content"></div>
						<!-- <audio id="the_player" src=""></audio> -->
					</div>
				</div>

				<div id="left_bottom">
					<div id="status">状态</div>
					<div id="toolBar">
						<button class="btn btn-primary" id="btnStart">开始</button>

						<span id="record-flash" class="pull-right"> <object type="application/x-shockwave-flash" width="300" height="138" id="swf_record" name="swf_record" align="middle" data="${contextPath}/extres/recordPoint/voicePlay.swf">
								<param name="quality" value="high">
								<param name="wmode" value="transparent">
								<param name="allowscriptaccess" value="always">
								<param name="allowfullscreen" value="true">
								<param name="flashvars" value="servletUrl=${contextPath}/uploadRecordPoint&sn=${sn}">
							</object>
						</span>
					</div>
				</div>
			</div>

			<div id="right" class="inlineblock">
				<div id="right_top">
					<a id="topic"><img alt="topic" src="${contextPath}/extres/css/web/pointDetail/topic.png"></a> <a id="note"><img alt="note" src="${contextPath}/extres/css/web/pointDetail/note.png"></a>
				</div>

				<div id="right_bottom"></div>
			</div>
		</div>

		<jsp:include page="/WEB-INF/jsp/web/include/foot.jsp"></jsp:include>
	</div>
</body>

</html>