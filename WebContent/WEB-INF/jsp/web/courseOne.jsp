<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/web/include/import.jsp"%>

<!DOCTYPE html>
<html>

<head>
<%@ include file="/WEB-INF/jsp/web/include/include.jsp"%>
<link href="${contextPath}/extres/css/web/courseOne.css" rel="stylesheet" />
<script src="${contextPath}/extres/js/web/courseOne.js"></script>

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
				<div id="course_left" class="inlineblock">
					<video width="640" height="480" preload="none" controls="controls" src="${contextPath}/download/question/${question.mp4upid}">
						<source type="video/mp4" src="${contextPath}/download/question/${question.mp4upid}" />
					</video>
				</div>

				<div id="course_right" class="inlineblock">
					<div id="myAccount">我的帐号</div>
					<a href="${contextPath}/practice" class="btn btn-warning">开始口语练习</a> &nbsp; <a href="${contextPath}/faq" class="btn btn-info">查看常见问题</a>
				</div>
			</div>
		</div>

		<jsp:include page="/WEB-INF/jsp/web/include/foot.jsp"></jsp:include>
	</div>
</body>

</html>