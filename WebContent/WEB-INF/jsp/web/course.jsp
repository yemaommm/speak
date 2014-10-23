<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/web/include/import.jsp"%>

<!DOCTYPE html>
<html>

<head>
<%@ include file="/WEB-INF/jsp/web/include/include.jsp"%>
<link href="${contextPath}/extres/css/web/course.css" rel="stylesheet" />
<script src="${contextPath}/extres/js/web/course.js"></script>

<title>${seo.title}</title>
<meta name="keywords" content="${seo.keywords}" />
<meta name="description" content="${seo.description}" />
</head>

<body>
	<div id="container">
		<jsp:include page="/WEB-INF/jsp/web/include/head.jsp"></jsp:include>

		<div id="main">
			<div id="course_ad"></div>

			<div id="course_div">
				<ul id="course_ul"></ul>
			</div>
		</div>

		<jsp:include page="/WEB-INF/jsp/web/include/foot.jsp"></jsp:include>
	</div>
</body>

</html>