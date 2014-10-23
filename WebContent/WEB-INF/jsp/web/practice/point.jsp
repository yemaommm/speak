<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/web/include/import.jsp"%>

<!DOCTYPE html>
<html>

<head>
<%@ include file="/WEB-INF/jsp/web/include/include.jsp"%>
<link href="${contextPath}/extres/css/web/point.css" rel="stylesheet" />
<script src="${contextPath}/extres/js/web/point.js"></script>
<title>重点练习</title>
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

			<img id="title" alt="title" src="${contextPath}/extres/css/web/point/title.png">

			<div id="module">
				<div id="the-select">
					<div class="form-group">
						<img id="step1" alt="step1" src="${contextPath}/extres/css/web/point/step1.png"> <select name="part" id="part" class="form-control">
							<option value="">选择练习版块</option>
							<option value="part1">Part1</option>
							<option value="part2">Part2</option>
							<option value="part3">Part3</option>
						</select>
					</div>
					<div class="form-group">
						<img id="step2" alt="step2" src="${contextPath}/extres/css/web/point/step2.png">
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
					<div class="form-group">
						<img id="step3" alt="step3" src="${contextPath}/extres/css/web/point/step3.png"> <select id="examNum" class="form-control">
							<option value="">选择题目数量</option>
							<option value="5">5</option>
							<option value="10">10</option>
							<option value="15">15</option>
						</select>
					</div>
				</div>

				<div id="div-begin">
					<a id="begin"><img alt="begin" src="${contextPath}/extres/css/web/point/begin.png" width="170px;"></a>
				</div>
			</div>
		</div>

		<jsp:include page="/WEB-INF/jsp/web/include/foot.jsp"></jsp:include>
	</div>
</body>

</html>