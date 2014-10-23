<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/web/include/import.jsp"%>

<!DOCTYPE html>
<html>

<head>
<%@ include file="/WEB-INF/jsp/web/include/include.jsp"%>
<link href="${contextPath}/extres/css/web/register.css" rel="stylesheet" />
<script src="${contextPath}/extres/js/web/register.js"></script>
<title>用户注册</title>
</head>

<body>
	<div id="container">
		<div id="head">
			<div class="maincontainer">
				<a id="logo" href="${contextPath}/">
					<img alt="logo" src="${contextPath}/extres/img/logo.png">
				</a>
				<span style="margin-top: 5px;" class="pull-right">已有帐号？<a href="${contextPath}/login" class="gray-red red">直接登录</a></span>
			</div>
		</div>

		<div id="main">
			<div class="content">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title">用户注册</h3>
					</div>
					<div class="panel-body">
						<form id="formRegister" name="formRegister" role="formRegister" data-toggle="validator">
							<div class="form-group">
								<label for="username">用户名</label> <input type="email" class="form-control" id="username" name="username" placeholder="请输入您的邮箱地址" required="required" data-error="请输入有效的邮件地址">
								<div id="check_username" class="help-block with-errors"></div>
							</div>

							<div class="form-group">
								<label for="password1">密码</label> <input type="password" class="form-control password" id="password1" name="password" placeholder="请输入密码">
								<div class="help-block with-errors"></div>
							</div>

							<div class="form-group">
								<label for="password2">确认密码</label> <input type="password" class="form-control password" id="password2" placeholder="请再次输入密码">
								<div id="check_password" class="help-block with-errors"></div>
							</div>

							<div class="form-group">
								<label for="nickname">昵称</label> <input type="text" class="form-control" id="nickname" name="nickname" placeholder="请输入昵称">
								<div id="check_nickname" class="help-block with-errors"></div>
							</div>

							<div class="form-group checkbox">
								<label><input id="isRegister" type="checkbox">我已阅读并认同</label><a id="show_policy" style="cursor: pointer;">会员服务协议</a>
							</div>

							<button type="button" id="btn_register" class="btn btn-danger" style="width: 100%;" disabled="disabled">注 册</button>
						</form>
					</div>
				</div>
			</div>

			<div id="timeBegin">
				<h2>
					注册成功！将在 <label>5</label> 秒后跳转到登录页面
				</h2>
			</div>

			<div id="policy_div" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog" style="width: 720px;">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
							<h4>会员服务协议</h4>
						</div>
						<div class="modal-body">
							<p>
								1.服务协议的确认和接纳<br> <br>欢迎您成为SpeakingSaver正式会员。您在使用SpeakingSaver提供的各项服务之前，请仔细阅读此服务条款。您的使用行为将被视为您对本服务条款完全接受。<br> <br>2.会员使用规则<br> <br>2.1 依注册程序登录并完成付款，经SpeakingSaver完成相关核定后，即取得会员的资格，并开始使用本服务。<br> <br>2.2 会员注册成功后，每个会员将获得一个会员账号及相对应的密码，会员应妥善保管您的账号及密码，不得外泄。会员应对此账号进行的所有活动和事件负责。<br> <br>2.3 会员不应将其账号、密码转让或出借予他人使用。如会员发现其账号遭他人非法使用，应立即通知SpeakingSaver，SpeakingSaver将协助会员完全或部分避免损失。因会员的保管疏忽导致账号、密码遭他人非法使用，SpeakingSaver不承担任何责任。<br> <br>2.4 SpeakingSaver提供的服务中包含的任何文本、图片、音频或视频均受版权或其他财产所有权法律的保护，未经同意，会员不得直接或间接在任何媒体发布上述资料，以及从事任何商业行为或违法使用。如会员的行为伤害到SpeakingSaver合法权益或违反国家法律法规，SpeakingSaver可终止向您提供服务。<br> <br>2.5
								SpeakingSaver有权对会员使用相关服务的情况进行统计和分析，如会员在使用服务时违反了协议任何规定，SpeakingSaver有权要求会员改正或暂停、终止会员使用相关服务。<br> <br>2.6 会员购买的SpeakingSaver服务种类，需在有效期内使用，如有效期结束，SpeakingSaver会自动终止对您的会员服务，您可以根据您的需要选择续费或终止服务。<br> <br>2.7 如因特殊情况需暂停服务，或未在套餐使用期限内使用全部模考及点评等服务，用户需在购买后一年内使用完所有服务。如过期未使用，将视为放弃本服务的使用权。<br> <br>3.退款及赔偿<br> <br>3.1 SpeakingSaver所有套餐及服务，经付款之日起七日内，会员可提交退款申请。如您已使用SpeakingSaver提供的服务,我们将不予返还您的会费。<br> <br>3.2 若因个人原因要求退款，需扣除1%的支付宝手续费。<br> <br>3.3 会员理解，SpeakingSaver需要定期或不定期对提供服务的平台或相关设备进行检修或维护，如因此类情况造成付费服务在合理时间内的中断，SpeakingSaver无需为此承担任何责任，但SpeakingSaver将给予会员事先通告并相关进行补偿。<br> <br>3.4
								因第三方原因如电信部门的通讯线路故障、通讯技术问题、网络、电脑故障、系统不稳定性及其他各种不可抗力而产生的对会员造成的损失，SpeakingSaver不予负责和补偿。<br> <br>本协议遵循国家相关的法律法规，并在其约束下执行。
							</p>
						</div>
						<div class="modal-footer">
							<button class="btn btn-default" data-dismiss="modal" aria-hidden="true">确认</button>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div id="foot"></div>
	</div>
</body>

</html>