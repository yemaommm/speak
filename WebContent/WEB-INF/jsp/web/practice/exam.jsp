<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/web/include/import.jsp"%>

<!DOCTYPE html>
<html>

<head>
<%@ include file="/WEB-INF/jsp/web/include/include.jsp"%>
<link href="${contextPath}/extres/css/web/exam.css" rel="stylesheet" />
<script src="${contextPath}/extres/js/web/exam.js"></script>
<title>模拟考试</title>
<script type="text/javascript">
	var time = '${user.examTime}';
	var city = '${user.examCity}';
	var point = '${user.examPoint}';
</script>
</head>

<body>
	<div id="container">
		<jsp:include page="/WEB-INF/jsp/web/include/head.jsp"></jsp:include>

		<div id="main">
			<h2>完成以下选项，以便系统为您定制题目</h2>

			<img id="title" alt="title" src="${contextPath}/extres/css/web/exam/title.png">

			<div id="module">
				<div id="the-select">
					<div class="form-group">
						<img id="step" alt="step" src="${contextPath}/extres/css/web/exam/step.png">
						<div class="form-inline">
							<select id="examDate" class="form-control">
								<option value="">选择考试日期</option>
							</select> <select id="examCity" class="form-control">
								<option value="">选择考试城市</option>
							</select> <select id="examPoint" class="form-control">
								<option value="">选择具体考点</option>
							</select>
						</div>
					</div>
				</div>

				<div id="div-begin">
					<a id="begin"><img alt="begin" src="${contextPath}/extres/css/web/exam/begin.png" width="170px;"></a>
				</div>
			</div>
		</div>

		<jsp:include page="/WEB-INF/jsp/web/include/foot.jsp"></jsp:include>
	</div>
</body>

</html>