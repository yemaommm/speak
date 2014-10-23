var ids = [];
var count = 0;

var partOneQuestionService = {

	createPartOneQuestion : function(data) {
		remoteServiceCall({
			uri : contextPath + '/services/partOneQuestion/create',
			ref : {
				callback : "afCreatePartOneQuestion"
			},
			data : data
		});
	},

	updatePartOneQuestion : function(data, afDone) {
		remoteServiceCall({
			uri : contextPath + '/services/partOneQuestion/update/' + data.id,
			ref : {
				callback : afDone
			},
			data : data
		});
	},

	listPartOneQuestion : function(target, pageNo) {
		remoteServiceCall({
			uri : contextPath + '/services/partOneQuestion/list/' + pageNo + "?partOneId=" + partOneId,
			ref : {
				target : target,
				callback : 'afListPartOneQuestion'
			},
			data : {}
		});
	},

	changePartOneQuestion : function(data, afDone) {
		remoteServiceCall({
			uri : contextPath + '/services/partOneQuestion/change',
			ref : {
				callback : afDone
			},
			data : data
		});
	},

	deletePartOneQuestion : function(id) {
		remoteServiceCall({
			uri : contextPath + '/services/partOneQuestion/delete/' + id,
			ref : {
				callback : "afDeletePartOneQuestion"
			},
			data : {}
		});
	},

	unzip : function(data) {
		remoteServiceCall({
			uri : contextPath + '/services/common/unzip',
			ref : {
				callback : 'afUnzip'
			},
			data : data
		});
	}

};

$(function() {

	load(0);

	$("#save_partOneQuestion").click(function() {
		if ($("#q_title").val() == '') {
			alert("请填写音频问题");
			return;
		}

		if ($("#q_content").val() == '') {
			alert("请填写回答范例");
			return;
		}

		var obj = {
			id : $("#q_id").val(),
			title : $("#q_title").val(),
			content : $("#q_content").val()
		};
		partOneQuestionService.updatePartOneQuestion(obj, "afUpdatePartOneQuestion");
	});

	$("#btn_delete_partOneQuestion").click(function() {
		ids = [];

		var check = $("._check").find("input");
		if (check.length == 1) {
			alert("请先选择你要删除的音频");
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
			alert("请先选择你要删除的音频");
			return;
		}

		$("#delete_partOneQuestion_div").modal("show");
	});

	$("#delete_partOneQuestion").click(function() {
		deletePartOneQuestions();
	});

});

function load(page) {
	partOneQuestionService.listPartOneQuestion("#table", page);
}

function afListPartOneQuestion(ref, data) {
	$(ref.target + " .datagrid_row").remove();
	for (var i = 0; i < data.length; i++) {
		fillDatagrid(ref.target, data[i]);
	}
}

function mp3nameConverter(o) {
	var $a = $("<a>", {
		html : o.mp3name
	});
	$a.css("cursor", "pointer");
	$a.data("data", o);
	$a.click(function() {
		var obj = $(this).data("data");
		$("#q_topic").html("编辑音频：" + obj.mp3name);
		$("#q_id").val(obj.id);
		$("#q_title").val(obj.title);
		$("#q_content").val(obj.content);
		$("#partOneQuestion_div").modal("show");
	});

	return $a;
}

function titleConverter(o) {
	return CatString(o.title, 50);
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
			partOneQuestionService.changePartOneQuestion({
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
			partOneQuestionService.changePartOneQuestion({
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
		partOneQuestionService.updatePartOneQuestion(obj, "reloadPage");
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
		partOneQuestionService.updatePartOneQuestion(obj, "reloadPage");
	});

	var $div = $("<div>");
	$div.append($btn_up).append("&nbsp;").append($btn_down).append("&nbsp;").append($btn_top).append("&nbsp;").append($btn_bottom);
	return $div;
}

function reloadPage(ref, data) {
	window.location.reload();
}

function afCreatePartOneQuestion(ref, data) {
	window.location.reload();
}

function afUpdatePartOneQuestion(ref, data) {
	$("#partOneQuestion_div").modal("hide");
	load(0);
}

function upload_success_mp3(refid) {
	$("#uploading").hide();
	$("#loading").show();
	partOneQuestionService.unzip({
		catalog : 'audio',
		file : $("#" + refid).data("upid"),
		id : partOneId,
		type : 'one'
	});
}

function afUnzip(ref, data) {
	load(0);
}

function upload_success_mp3_one(refid) {
	$("#uploading").hide();
	partOneQuestionService.createPartOneQuestion({
		partOneId : partOneId,
		mp3upid : $("#" + refid).data("upid"),
		mp3name : $("#" + refid).data("filename")
	});
}

function deletePartOneQuestions() {
	for (var i = 0; i < ids.length; i++) {
		var id = ids[i];
		partOneQuestionService.deletePartOneQuestion(id);
	}
}

function afDeletePartOneQuestion(ref, data) {
	count = count + 1;
	if (count == ids.length) {
		count = 0;
		window.location.reload();
	}
}