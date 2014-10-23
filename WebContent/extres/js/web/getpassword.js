var userService = {

	findUserByName : function(data, afDone) {
		remoteServiceCall({
			uri : contextPath + '/services/user/findName',
			ref : {
				callback : afDone
			},
			data : data
		});
	},

	sendMail : function(data, afDone) {
		remoteServiceCall({
			uri : contextPath + '/services/user/sendpasswordmail',
			ref : {
				callback : afDone
			},
			data : data
		});
	}

};

var check_username = false;
var check_verificode = false;

$(function() {

	$("#username").blur(function() {
		var username = $(this).val();
		if (username != '') {
			userService.findUserByName({
				"username" : username
			}, "afFindUserByUsername");
		} else {
			$("#check_username").parent().addClass("has-error");
			$("#check_username").html("<ul class='list-unstyled'><li>请输入用户名邮箱</li></ul>");
			check_username = false;
		}
	});

	$("#verifiCode").blur(function() {
		if ($("#verifiCode").val() != '') {
			check_verifiCode();
		} else {
			$("#check_verifiCode").parent().parent().addClass("has-error");
			$("#check_verifiCode").html("<ul class='list-unstyled'><li>请输入验证码</li></ul>");
			check_verificode = false;
		}
	});

	$("#btn_reset").click(function() {
		if (check_username && check_verificode) {
			var obj = getFormInput("#formReset");
			userService.sendMail(obj, "afSendMail");
		}
	});

});

function reverify() {
	var obj = document.getElementById("verifiCode_Pic");
	obj.src = "verifiCode.do?m=" + Math.random();
	$("#verifiCode").val("");

	check_verificode = false;
	checkReset();
}

function check_verifiCode() {
	$.ajax({
		url : contextPath + "/verifiyCheck.do",
		type : "get",
		data : "code=" + $("#verifiCode").val(),
		async : false,
		dataType : 'json',
		success : function(data) {
			if (data.result == "yes") {
				$("#check_verifiCode").parent().parent().removeClass("has-error");
				$("#check_verifiCode").html("");
				check_verificode = true;
			} else {
				$("#check_verifiCode").parent().parent().addClass("has-error");
				$("#check_verifiCode").html("<ul class='list-unstyled'><li>验证码错误，请重新输入</li></ul>");
				check_verificode = false;
			}

			checkReset();
		}
	});
}

function afFindUserByUsername(ref, data) {
	if (data == null) {
		$("#check_username").parent().addClass("has-error");
		$("#check_username").html("<ul class='list-unstyled'><li>该用户名不存在，请重新输入</li></ul>");
		check_username = false;
	} else {
		$("#check_username").parent().removeClass("has-error");
		$("#check_username").html("");
		check_username = true;
	}

	checkReset();
}

function checkReset() {
	if ($(".has-error").size() == 0 && check_username && check_verificode) {
		$("#btn_reset").removeAttr("disabled");
	} else {
		$("#btn_reset").attr("disabled", "disabled");
	}
}

function afSendMail(ref, data) {
	if (data == "error") {
		window.location.reload();
	} else {
		timeBegin();
	}
}

function timeBegin() {
	$("#replace_div").html("<p>密码已发送至您的邮箱，请尽快登录修改密码。</p>");
	$("#btn_reset").html("重 新 发 送 (60)");
	$("#btn_reset").attr("disabled", "disabled");

	setTimeout(function() {
		countTime(60);
	}, 1000);
}

function countTime(num) {
	num = num - 1;
	$("#btn_reset").html("重 新 发 送 (" + num + ")");
	if (num == 0) {
		$("#btn_reset").html("获 取 新 密 码");
		$("#btn_reset").removeAttr("disabled");
	} else {
		setTimeout(function() {
			countTime(num);
		}, 1000);
	}
}