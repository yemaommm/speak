var userService = {

	changePassword : function(data) {
		remoteServiceCall({
			uri : contextPath + '/services/user/changepassword',
			ref : {
				callback : 'afchangepassword'
			},
			data : data
		});
	}

};

$(function() {

	$("#reset_password").click(function() {
		$("#change_password_div").modal("show");
	});

	$("#save_password").click(function() {
		var pre_password = $("#pre_password").val();
		var new_password = $("#new_password").val();
		var sec_password = $("#sec_password").val();

		if (pre_password == '') {
			alert("请输入初始密码!");
			return;
		}

		if (new_password == '') {
			alert("请输入新密码!");
			return;
		}

		if (sec_password == '') {
			alert("请再次输入密码!");
			return;
		}

		if (new_password != sec_password) {
			alert("两次输入密码不相同!");
			return;
		}

		var q = {
			"pre_password" : pre_password,
			"new_password" : new_password
		};

		userService.changePassword(q);
	});

});

function afchangepassword(ref, data) {
	if (data == 1) {
		alert("密码修改成功，请重新登录系统");
		location.href = contextPath + "/logout";
	} else if (data == 0) {
		alert("初始密码输入错误");
		$("#pre_password").focus();
		return;
	} else {
		alert("系统用户不能修改密码");
	}
}