var ids = [];
var count = 0;

var questionService = {

	createQuestion : function(data) {
		remoteServiceCall({
			uri : contextPath + '/services/question/create',
			ref : {
				callback : "afCreateQuestion"
			},
			data : data
		});
	},

	updateQuestion : function(data, afDone) {
		remoteServiceCall({
			uri : contextPath + '/services/question/update/' + data.id,
			ref : {
				callback : afDone
			},
			data : data
		});
	},

	listQuestion : function(target, pageNo) {
		remoteServiceCall({
			uri : contextPath + '/services/question/list/' + pageNo + window.location.search,
			ref : {
				target : target,
				callback : 'afListQuestion'
			},
			data : {}
		});
	},

	changeQuestion : function(data, afDone) {
		remoteServiceCall({
			uri : contextPath + '/services/question/change',
			ref : {
				callback : afDone
			},
			data : data
		});
	},

	deleteQuestion : function(id) {
		remoteServiceCall({
			uri : contextPath + '/services/question/delete/' + id,
			ref : {
				callback : "afDeleteQuestion"
			},
			data : {}
		});
	}

};

$(function() {

	$(".question_nav").addClass("active");

	$("#btn_search").click(function() {
		var queryStr = $("#form_search").serialize();
		location.href = contextPath + "/admin/question/list/1?" + queryStr;
	});

	$("#btn_save").click(function() {
		if ($("#title").val() == '') {
			alert("请填写话题标题");
			return;
		}

		if ($("#mp4name").val() == '') {
			alert("请上传话题视频");
			return;
		}

		if ($("#imgupid").val() == '') {
			alert("请上传话题封面");
			return;
		}

		var obj = getFormInput("#form");
		questionService.createQuestion(obj);
	});

	$("#btn_update").click(function() {
		if ($("#title").val() == '') {
			alert("请填写话题标题");
			return;
		}

		if ($("#mp4name").val() == '') {
			alert("请上传话题视频");
			return;
		}

		if ($("#imgupid").val() == '') {
			alert("请上传话题封面");
			return;
		}

		var obj = getFormInput("#form");
		questionService.updateQuestion(obj, "afUpdateQuestion");
	});

	$("#btn_cancel").click(function() {
		location.href = contextPath + "/admin/question/list/1";
	});

	$("#btn_delete_question").click(function() {
		ids = [];

		var check = $("._check").find("input");
		if (check.length == 1) {
			alert("请先选择你要删除的话题");
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
			alert("请先选择你要删除的话题");
			return;
		}

		$("#delete_question_div").modal("show");
	});

	$("#delete_question").click(function() {
		deleteQuestions();
	});

});

function load(page) {
	questionService.listQuestion("#table", page);
}

function afListQuestion(ref, data) {
	$(ref.target + " .datagrid_row").remove();
	for (var i = 0; i < data.length; i++) {
		fillDatagrid(ref.target, data[i]);
	}
}

function titleConverter(o) {
	return "<a href='" + contextPath + "/admin/question/update/" + o.id + "'>" + o.title + "</a>";
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
			questionService.changeQuestion({
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
			questionService.changeQuestion({
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
		questionService.updateQuestion(obj, "reloadPage");
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
		questionService.updateQuestion(obj, "reloadPage");
	});

	var $div = $("<div>");
	$div.append($btn_up).append("&nbsp;").append($btn_down).append("&nbsp;").append($btn_top).append("&nbsp;").append($btn_bottom);
	return $div;
}

function reloadPage(ref, data) {
	window.location.reload();
}

function afCreateQuestion(ref, data) {
	location.href = contextPath + "/admin/question/list/1";
}

function afUpdateQuestion(ref, data) {
	location.href = contextPath + "/admin/question/list/1";
}

function upload_success(refid) {
	$("#uploading").hide();
	$("#mp4upid").val($("#" + refid).data("upid"));
	$("#mp4name").val($("#" + refid).data("filename"));
	$("#mp4_upload_success").html("视频 " + $("#" + refid).data("filename") + " 上传成功");
}

function upload_success_img(refid) {
	$("#uploading").hide();
	$("#imgupid").val($("#" + refid).data("upid"));
	$("#img-pic").attr("src", contextPath + "/download/question/" + $("#" + refid).data("upid"));
}

function deleteQuestions() {
	for (var i = 0; i < ids.length; i++) {
		var id = ids[i];
		questionService.deleteQuestion(id);
	}
}

function afDeleteQuestion(ref, data) {
	count = count + 1;
	if (count == ids.length) {
		count = 0;
		window.location.reload();
	}
}