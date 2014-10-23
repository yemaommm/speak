<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/web/include/import.jsp"%>

<!DOCTYPE html>
<html>

<head>
<%@ include file="/WEB-INF/jsp/web/include/include.jsp"%>
<script src="${contextPath}/extres/js/web/part.js"></script>
<link href="${contextPath}/extres/css/web/done.css" rel="stylesheet" />
<script src="${contextPath}/extres/js/web/selfDone.js"></script>
<title>自主练习-录音回顾</title>

<script type="text/javascript">
	sn = '${sn}';
	$(function() {
		listRecord();
	});
</script>
</head>

<body>
	<div id="container">
		<jsp:include page="/WEB-INF/jsp/web/include/head.jsp"></jsp:include>

		<div id="main">
			<div id="left" class="inlineblock">
				<div id="left_top">
					<img id="selfF" alt="begin" src="${contextPath}/extres/css/web/selfDetail/selfF.png">

					<div id="detail">
						<div id="title"></div>
						<div id="content"></div>
						<audio id="the_player" src=""></audio>
					</div>
				</div>

				<div id="left_bottom">
					<div id="toolBar">
						<span class="pull-right"><a id="share" class="module"><img alt="begin" src="${contextPath}/extres/css/web/selfDetail/share.png"></a></span>
					</div>
				</div>
			</div>

			<div id="right" class="inlineblock">
				<div id="right_top">我的录音回顾</div>

				<div id="right_bottom"></div>
			</div>
		</div>

		<jsp:include page="/WEB-INF/jsp/web/include/foot.jsp"></jsp:include>
	</div>
</body>

</html>