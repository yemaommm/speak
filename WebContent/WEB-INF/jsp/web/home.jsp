<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/web/include/import.jsp"%>

<!DOCTYPE html>
<html>

<head>
<%@ include file="/WEB-INF/jsp/web/include/include.jsp"%>
<link href="${contextPath}/extres/css/web/home.css" rel="stylesheet" />
<script src="${contextPath}/extres/js/web/home.js"></script>

<title>${seo.title}</title>
<meta name="keywords" content="${seo.keywords}" />
<meta name="description" content="${seo.description}" />
</head>

<body>
	<div id="container">
		<jsp:include page="/WEB-INF/jsp/web/include/head.jsp"></jsp:include>

		<div id="main">
			<div id="home_ad">
				<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
					<div class="carousel-inner img-rounded" role="listbox">
						<div class="item active">
							<a href="${contextPath}/practice"><img src="${contextPath}/extres/css/web/home/home_ad1.png" alt="ad"></a>
						</div>
						<div class="item">
							<a href="${contextPath}/course"><img src="${contextPath}/extres/css/web/home/home_ad2.png" alt="ad"></a>
						</div>
						<div class="item">
							<a href="${contextPath}/community"><img src="${contextPath}/extres/css/web/home/home_ad3.png" alt="ad"></a>
						</div>
					</div>

					<a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span><span class="sr-only">Previous</span></a> <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span><span class="sr-only">Next</span></a>
				</div>
			</div>

			<div id="back1">
				<img id="topic1" alt="topic1" src="${contextPath}/extres/css/web/home/topic1.png">
				<img id="topic2" alt="topic2" src="${contextPath}/extres/css/web/home/topic2.png">
			</div>

			<div id="back2"></div>

			<div id="back3">
				<img id="bbs1" alt="bbs1" src="${contextPath}/extres/css/web/home/bbs1.png">
				<img id="bbs2" alt="bbs2" src="${contextPath}/extres/css/web/home/bbs2.png">
			</div>

			<img alt="back4" src="${contextPath}/extres/css/web/home/back4.png" width="1000"> <br> <br>
		</div>

		<jsp:include page="/WEB-INF/jsp/web/include/foot.jsp"></jsp:include>
	</div>
</body>

</html>