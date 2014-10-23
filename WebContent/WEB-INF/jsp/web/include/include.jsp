<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">

<link rel="shortcut icon" href="${contextPath}/extres/favicon.ico" mce_href="favicon.ico" type="image/x-icon" />

<meta name="_csrf_header" content="${_csrf.headerName}" />
<meta name="_csrf" content="${_csrf.token}" />

<script src="${contextPath}/extres/static/jquery/jquery.js"></script>
<script src="${contextPath}/extres/static/jquery/jquery-ui.js"></script>
<script src="${contextPath}/extres/static/jquery/jquery.colorPicker.js"></script>
<script src="${contextPath}/extres/static/json2.js"></script>
<script src="${contextPath}/extres/static/bootstrap/js/bootstrap.min.js"></script>
<script src="${contextPath}/extres/static/bootstrap/js/bootstrap-datepicker.js"></script>
<script src="${contextPath}/extres/static/bootstrap/js/validator.min.js"></script>

<link href="${contextPath}/extres/static/jquery/jquery-ui.css" rel="stylesheet" />
<link href="${contextPath}/extres/static/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="${contextPath}/extres/static/bootstrap/css/bootstrap-theme.min.css" rel="stylesheet">
<link href="${contextPath}/extres/static/bootstrap/css/datepicker.css" rel="stylesheet">
<link href="${contextPath}/extres/css/web/main.css" rel="stylesheet" />

<script src="${contextPath}/extres/js/extend.js"></script>
<script src="${contextPath}/extres/js/services.js"></script>
<script src="${contextPath}/extres/js/servicecall_base.js"></script>
<script src="${contextPath}/extres/js/web/ui.js"></script>

<script>
	var contextPath = "${contextPath}";
</script>