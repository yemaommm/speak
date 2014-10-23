<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/web/include/import.jsp"%>

<!DOCTYPE html>
<html>

<head>
<%@ include file="/WEB-INF/jsp/web/include/include.jsp"%>
<link href="${contextPath}/extres/css/web/practice.css" rel="stylesheet" />
<script src="${contextPath}/extres/js/web/practice.js"></script>

<title>${seo.title}</title>
<meta name="keywords" content="${seo.keywords}" />
<meta name="description" content="${seo.description}" />
</head>

<body>
	<div id="container">
		<jsp:include page="/WEB-INF/jsp/web/include/head.jsp"></jsp:include>

		<div id="main">
			<img alt="title" src="${contextPath}/extres/css/web/practice/title.png">

			<div id="module">
				<a id="self" class="module" href="${contextPath}/self"><img alt="self" src="${contextPath}/extres/css/web/practice/self.png"></a><a id="point" class="module" href="${contextPath}/point"><img alt="point" src="${contextPath}/extres/css/web/practice/point.png"></a><a id="exam" class="module" href="${contextPath}/exam"><img alt="exam" src="${contextPath}/extres/css/web/practice/exam.png"></a>
			</div>

			<c:if test="${user.isFirst==1}">
				<img class="help" id="help1" alt="help1" src="${contextPath}/extres/css/web/practice/help1.png">
				<img class="help" id="help2" alt="help2" src="${contextPath}/extres/css/web/practice/help2.png">
				<img class="help" id="help3" alt="help3" src="${contextPath}/extres/css/web/practice/help3.png">
			</c:if>
		</div>

		<c:if test="${user.isFirst==1}">
			<div id="shadow"></div>
		</c:if>

		<jsp:include page="/WEB-INF/jsp/web/include/foot.jsp"></jsp:include>
	</div>
</body>

</html>