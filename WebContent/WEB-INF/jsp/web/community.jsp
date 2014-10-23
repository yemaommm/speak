<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/web/include/import.jsp"%>

<!DOCTYPE html>
<html>

<head>
<%@ include file="/WEB-INF/jsp/web/include/include.jsp"%>
<link href="${contextPath}/extres/css/web/share.css" rel="stylesheet" />
<script src="${contextPath}/extres/js/web/share.js"></script>

<title>${seo.title}</title>
<meta name="keywords" content="${seo.keywords}" />
<meta name="description" content="${seo.description}" />
</head>

<body>
	<div id="container">
		<jsp:include page="/WEB-INF/jsp/web/include/head.jsp"></jsp:include>

		<div id="main">
			<img alt="top" src="${contextPath}/extres/css/web/share/top.png" width="1000">

			<div id="share-div">
				<div id="share-left" class="inlineblock">
					<audio id="the_player" src=""></audio>
				</div>

				<div id="share-right" class="inlineblock">
					<a id="get_my_record" style="cursor: pointer;"><img alt="myREcord" src="${contextPath}/extres/css/web/share/myRecord.png"></a>

					<div id="select-div">
						<img alt="select" src="${contextPath}/extres/css/web/share/select.png">

						<div class="select-query">
							版块： <select id="part" name="type">
								<option value="">所有版块</option>
								<option value="part1">Part1</option>
								<option value="part2">Part2</option>
								<option value="part3">Part3</option>
							</select>
						</div>

						<div class="select-query">
							话题： <select id="topic" name="topic">
								<option value="">所有话题</option>
							</select>
						</div>

						<div class="select-query">
							分数区间： <input class="point" type="text" id="less"> - <input class="point" type="text" id="more">
						</div>

						<div class="select-query checkbox">
							<label><input id="isEx" type="checkbox">有专家点评</label>
						</div>

						<img id="query" alt="query" src="${contextPath}/extres/css/web/share/query.png">
					</div>
				</div>
			</div>
		</div>

		<jsp:include page="/WEB-INF/jsp/web/include/foot.jsp"></jsp:include>
	</div>
</body>

</html>