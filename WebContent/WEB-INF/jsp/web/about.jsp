<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/web/include/import.jsp"%>

<!DOCTYPE html>
<html>

<head>
<%@ include file="/WEB-INF/jsp/web/include/include.jsp"%>
<link href="${contextPath}/extres/css/web/about.css" rel="stylesheet" />
<script src="${contextPath}/extres/js/web/about.js"></script>

<title>${seo.title}</title>
<meta name="keywords" content="${seo.keywords}" />
<meta name="description" content="${seo.description}" />
</head>

<body>
	<div id="container">
		<jsp:include page="/WEB-INF/jsp/web/include/head.jsp"></jsp:include>

		<div id="main">
			<div id="about_ad"></div>

			<div id="about_content">
				<div id="about_left" class="inlineblock">
					<c:forEach items="${resourceList}" var="resourceObj" varStatus="obj">
						<c:if test="${resourceObj.id==resource.id}">
							<div class="left_div select">
								<a class="gray-red f16 white" href="${contextPath}/${resourceObj.type}">${resourceObj.title}</a>
							</div>
						</c:if>
						<c:if test="${resourceObj.id!=resource.id}">
							<div class="left_div">
								<a class="gray-red f16" href="${contextPath}/${resourceObj.type}">${resourceObj.title}</a>
							</div>
						</c:if>
					</c:forEach>
				</div>

				<div id="about_right" class="inlineblock">
					<div id="about_title">
						<h3>${resource.title}</h3>
					</div>
					<div id="about_detail">${resource.content}</div>
				</div>
			</div>
		</div>

		<jsp:include page="/WEB-INF/jsp/web/include/foot.jsp"></jsp:include>
	</div>
</body>

</html>