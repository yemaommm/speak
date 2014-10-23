<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/web/include/import.jsp"%>

<!DOCTYPE html>
<html>

<head>
<%@ include file="/WEB-INF/jsp/web/include/include.jsp"%>
<script src="${contextPath}/extres/js/web/part.js"></script>
<link href="${contextPath}/extres/css/web/self.css" rel="stylesheet" />
<script src="${contextPath}/extres/js/web/self.js"></script>
<title>自主练习</title>
</head>

<body>
	<div id="container">
		<jsp:include page="/WEB-INF/jsp/web/include/head.jsp"></jsp:include>

		<div id="main">
			<div id="module">
				<a id="part1" class="module"><img alt="part1" src="${contextPath}/extres/css/web/self/part1.png"></a> <a id="part2" class="module"><img alt="part2" src="${contextPath}/extres/css/web/self/part2.png"></a> <a id="part3" class="module"><img alt="part3" src="${contextPath}/extres/css/web/self/part3.png"></a>
			</div>

			<div id="topicList">
				<div id="part1-div" style="display: none;">
					<h4></h4>
					<table class="topicTable"></table>
				</div>

				<div id="part2-div" style="display: none;">
					<h4></h4>
					<table class="topicTable"></table>
				</div>

				<div id="part3-div" style="display: none;">
					<h4></h4>
					<table class="topicTable"></table>
				</div>
			</div>

			<div id="toolBar">
				<div id="cart-div" class="inlineblock">
					<img alt="cart" src="${contextPath}/extres/css/web/self/cart.png" height="60px;"> <br> <label id="count">选题车 0/10</label>
				</div>

				<div id="chosenList" class="inlineblock">
					<h4>勾选话题添加到选题车，可以一起练习多个话题</h4>
					<ul id="chosenUl"></ul>
				</div>

				<a id="begin"><img alt="begin" src="${contextPath}/extres/css/web/self/begin.png" width="150px;"></a>
			</div>
		</div>

		<jsp:include page="/WEB-INF/jsp/web/include/foot.jsp"></jsp:include>
	</div>
</body>

</html>