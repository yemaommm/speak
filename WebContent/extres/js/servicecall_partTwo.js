var ids = [];
var count = 0;

var partTwoService = {

	createPartTwo : function(data) {
		remoteServiceCall({
			uri : contextPath + '/services/partTwo/create',
			ref : {
				callback : "afCreatePartTwo"
			},
			data : data
		});
	},

	updatePartTwo : function(data, afDone) {
		remoteServiceCall({
			uri : contextPath + '/services/partTwo/update/' + data.id,
			ref : {
				callback : afDone
			},
			data : data
		});
	},

	listPartTwo : function(target, pageNo) {
		remoteServiceCall({
			uri : contextPath + '/services/partTwo/list/' + pageNo + window.location.search,
			ref : {
				target : target,
				callback : 'afListPartTwo'
			},
			data : {}
		});
	},

	changePartTwo : function(data, afDone) {
		remoteServiceCall({
			uri : contextPath + '/services/partTwo/change',
			ref : {
				callback : afDone
			},
			data : data
		});
	},

	deletePartTwo : function(id) {
		remoteServiceCall({
			uri : contextPath + '/services/partTwo/delete/' + id,
			ref : {
				callback : "afDeletePartTwo"
			},
			data : {}
		});
	}

};

$(function() {

	$(".part2_nav").addClass("active");

	$("#btn_search").click(function() {
		var queryStr = $("#form_search").serialize();
		location.href = contextPath + "/admin/partTwo/list/1?" + queryStr;
	});

	$("#btn_save").click(function() {
		if ($("#topic").val() == '') {
			alert("请填写标题");
			return;
		}

		if ($("#title").val() == '') {
			alert("请填写问题");
			return;
		}

		if ($("#shouldSay").val() == '') {
			alert("请填写 Should Say");
			return;
		}

		if ($("#content").val() == '') {
			alert("请填写范例");
			return;
		}

		if ($("#mp3name").val() == '') {
			alert("请上传 Part Two 音频");
			return;
		}

		var obj = getFormInput("#form");
		partTwoService.createPartTwo(obj);
	});

	$("#btn_update").click(function() {
		if ($("#topic").val() == '') {
			alert("请填写标题");
			return;
		}

		if ($("#title").val() == '') {
			alert("请填写问题");
			return;
		}

		if ($("#shouldSay").val() == '') {
			alert("请填写 Should Say");
			return;
		}

		if ($("#content").val() == '') {
			alert("请填写范例");
			return;
		}

		if ($("#mp3name").val() == '') {
			alert("请上传 Part Two 音频");
			return;
		}

		var obj = getFormInput("#form");
		partTwoService.updatePartTwo(obj, "afUpdatePartTwo");
	});

	$("#btn_cancel").click(function() {
		location.href = contextPath + "/admin/partTwo/list/1";
	});

	$("#btn_delete_partTwo").click(function() {
		ids = [];

		var check = $("._check").find("input");
		if (check.length == 1) {
			alert("请先选择你要删除的 Part Two");
			return;
		}

		var k = 0;
		for (var i = 0; i < check.length; i++) {
			var ck = check.eq(i + 1);
			if (ck.prop("checked")) {
				ids[k] = parseInt(ck.val());
				k++;
			}
		}

		if (ids == [] || ids == '') {
			alert("请先选择你要删除的 Part Two");
			return;
		}

		$("#delete_partTwo_div").modal("show");
	});

	$("#delete_partTwo").click(function() {
		deletePartTwos();
	});

});

function load(page) {
	partTwoService.listPartTwo("#table", page);
}

function afListPartTwo(ref, data) {
	$(ref.target + " .datagrid_row").remove();
	for (var i = 0; i < data.length; i++) {
		fillDatagrid(ref.target, data[i]);
	}
}

function topicConverter(o) {
	return "<a href='" + contextPath + "/admin/partTwo/update/" + o.id + "'>" + o.topic + "</a>";
}

function _actionConverter(o) {
	var $btn_up = $("<button>");
	$btn_up.addClass("btn");
	$btn_up.addClass("btn-info");
	$btn_up.addClass("btn-sm");
	$btn_up.html("上移");
	$btn_up.data("id", o.id);
	$btn_up.click(function() {
		var $tr = $(this).parent().parent().parent().prev().filter(".datagrid_row");
		if ($tr != null) {
			var id1 = $(this).data("id");
			partTwoService.changePartTwo({
				id1 : id1,
				id2 : $tr.data("data").id
			}, "reloadPage");
		}
	});

	var $btn_down = $("<button>");
	$btn_down.addClass("btn");
	$btn_down.addClass("btn-primary");
	$btn_down.addClass("btn-sm");
	$btn_down.html("下移");
	$btn_down.data("id", o.id);
	$btn_down.click(function() {
		var $tr = $(this).parent().parent().parent().next().filter(".datagrid_row");
		if ($tr != null) {
			var id1 = $(this).data("id");
			partTwoService.changePartTwo({
				id1 : id1,
				id2 : $tr.data("data").id
			}, "reloadPage");
		}
	});

	var $btn_top = $("<button>");
	$btn_top.addClass("btn");
	$btn_top.addClass("btn-success");
	$btn_top.addClass("btn-sm");
	$btn_top.html("置顶");
	$btn_top.data("id", o.id);
	$btn_top.click(function() {
		var id = $(this).data("id");
		var obj = {};
		var myDate = new Date();
		var seq = myDate.getTime();
		obj.seq = 0 - seq;
		obj.id = id;
		partTwoService.updatePartTwo(obj, "reloadPage");
	});

	var $btn_bottom = $("<button>");
	$btn_bottom.addClass("btn");
	$btn_bottom.addClass("btn-warning");
	$btn_bottom.addClass("btn-sm");
	$btn_bottom.html("置底");
	$btn_bottom.data("id", o.id);
	$btn_bottom.click(function() {
		var id = $(this).data("id");
		var obj = {};
		var myDate = new Date();
		var seq = myDate.getTime();
		obj.seq = seq;
		obj.id = id;
		partTwoService.updatePartTwo(obj, "reloadPage");
	});

	var $div = $("<div>");
	$div.append($btn_up).append("&nbsp;").append($btn_down).append("&nbsp;").append($btn_top).append("&nbsp;").append($btn_bottom);
	return $div;
}

function reloadPage(ref, data) {
	window.location.reload();
}

function afCreatePartTwo(ref, data) {
	location.href = contextPath + "/admin/partTwo/update/" + data.id;
}

function afUpdatePartTwo(ref, data) {
	location.href = contextPath + "/admin/partTwo/list/1";
}

function upload_success_two(refid) {
	$("#uploading").hide();
	$("#mp3upid").val($("#" + refid).data("upid"));
	$("#mp3name").val($("#" + refid).data("filename"));
	$("#mp3_upload_success").html("音频 " + $("#" + refid).data("filename") + " 上传成功");
}

function deletePartTwos() {
	for (var i = 0; i < ids.length; i++) {
		var id = ids[i];
		partTwoService.deletePartTwo(id);
	}
}

function afDeletePartTwo(ref, data) {
	count = count + 1;
	if (count == ids.length) {
		count = 0;
		window.location.reload();
	}
}