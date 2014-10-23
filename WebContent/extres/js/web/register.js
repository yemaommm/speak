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

	createUser : function(data, afDone) {
		remoteServiceCall({
			uri : contextPath + '/services/user/create',
			ref : {
				callback : afDone
			},
			data : data
		});
	}

};

var check_username = false;
var check_password = false;
var check_nickname = false;
var check_readme = false;

$(function() {

	$("#show_policy").click(function() {
		$("#policy_div").modal("show");
	});

	$("#username").blur(function() {
		var username = $(this).val();
		if (username != '') {
			userService.findUserByName({
				"username" : username
			}, "afFindUserByUsername");
		}
	});

	$(".password").blur(function() {
		if ($(this).val() == '') {
			$(this).parent().addClass("has-error");
			$(this).next().html("<ul class='list-unstyled'><li>请输入密码</li></ul>");
		} else {
			$(this).parent().removeClass("has-error");
			$(this).next().html("");
		}

		var password1 = $("#password1").val();
		var password2 = $("#password2").val();
		if (password1 != '' && password2 != '') {
			if (password1 == password2) {
				$("#check_password").parent().removeClass("has-error");
				$("#check_password").html("");
				check_password = true;
			} else {
				$("#check_password").parent().addClass("has-error");
				$("#check_password").html("<ul class='list-unstyled'><li>两次输入的密码不一致</li></ul>");
				check_password = false;
			}
		}

		checkRegister();
	});

	$("#nickname").blur(function() {
		var nickname = $(this).val();
		if (nickname != '') {
			userService.findUserByName({
				"nickname" : nickname
			}, "afFindUserByNickname");
		} else {
			$("#check_nickname").parent().addClass("has-error");
			$("#check_nickname").html("<ul class='list-unstyled'><li>请输入昵称</li></ul>");
			check_nickname = false;
		}
	});

	$("#isRegister").click(function() {
		if ($(this).prop("checked")) {
			check_readme = true;
		} else {
			check_readme = false;
		}

		checkRegister();
	});

	$("#btn_register").click(function() {
		if (check_username && check_password && check_nickname && check_readme) {
			var obj = getFormInput("#formRegister");
			obj.status = 1;
			userService.createUser(obj, "afCreateUser");
		}
	});

});

function afFindUserByUsername(ref, data) {
	if (data != null) {
		$("#check_username").parent().addClass("has-error");
		$("#check_username").html("<ul class='list-unstyled'><li>该用户名已存在，请重新输入</li></ul>");
		check_username = false;
	} else {
		check_username = true;
	}

	checkRegister();
}

function afFindUserByNickname(ref, data) {
	if (data != null) {
		$("#check_nickname").parent().addClass("has-error");
		$("#check_nickname").html("<ul class='list-unstyled'><li>该昵称已存在，请重新输入</li></ul>");
		check_nickname = false;
	} else {
		$("#check_nickname").parent().removeClass("has-error");
		$("#check_nickname").html("");
		check_nickname = true;
	}

	checkRegister();
}

function checkRegister() {
	if ($(".has-error").size() == 0 && check_username && check_password && check_nickname && check_readme) {
		$("#btn_register").removeAttr("disabled");
	} else {
		$("#btn_register").attr("disabled", "disabled");
	}
};

function afCreateUser(ref, data) {
	if (data == null) {
		window.location.reload();
	} else {
		timeBegin();
	}
}

function timeBegin() {
	$(".content").hide();
	$("#timeBegin").show();

	setTimeout(function() {
		countTime(5);
	}, 1000);
}

function countTime(num) {
	num = num - 1;
	$("#timeBegin").find("label").html(num);
	if (num == 0) {
		location.href = contextPath + '/login';
	} else {
		setTimeout(function() {
			countTime(num);
		}, 1000);
	}
}