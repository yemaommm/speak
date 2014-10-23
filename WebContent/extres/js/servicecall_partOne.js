var ids = [];
var count = 0;

var partOneService = {

	createPartOne : function(data) {
		remoteServiceCall({
			uri : contextPath + '/services/partOne/create',
			ref : {
				callback : "afCreatePartOne"
			},
			data : data
		});
	},

	updatePartOne : function(data, afDone) {
		remoteServiceCall({
			uri : contextPath + '/services/partOne/update/' + data.id,
			ref : {
				callback : afDone
			},
			data : data
		});
	},

	listPartOne : function(target, pageNo) {
		remoteServiceCall({
			uri : contextPath + '/services/partOne/list/' + pageNo + window.location.search,
			ref : {
				target : target,
				callback : 'afListPartOne'
			},
			data : {}
		});
	},

	changePartOne : function(data, afDone) {
		remoteServiceCall({
			uri : contextPath + '/services/partOne/change',
			ref : {
				callback : afDone
			},
			data : data
		});
	},

	deletePartOne : function(id) {
		remoteServiceCall({
			uri : contextPath + '/services/partOne/delete/' + id,
			ref : {
				callback : "afDeletePartOne"
			},
			data : {}
		});
	}

};

$(function() {

	$(".part1_nav").addClass("active");

	$("#btn_search").click(function() {
		var queryStr = $("#form_search").serialize();
		location.href = contextPath + "/admin/partOne/list/1?" + queryStr;
	});

	$("#btn_save").click(function() {
		if ($("#title").val() == '') {
			alert("请填写标题");
			return;
		}

		var obj = getFormInput("#form");
		partOneService.createPartOne(obj);
	});

	$("#btn_update").click(function() {
		if ($("#title").val() == '') {
			alert("请填写标题");
			return;
		}

		var obj = getFormInput("#form");
		partOneService.updatePartOne(obj, "afUpdatePartOne");
	});

	$("#btn_cancel").click(function() {
		location.href = contextPath + "/admin/partOne/list/1";
	});

	$("#btn_delete_partOne").click(function() {
		ids = [];

		var check = $("._check").find("input");
		if (check.length == 1) {
			alert("请先选择你要删除的 Part One");
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
			alert("请先选择你要删除的 Part One");
			return;
		}

		$("#delete_partOne_div").modal("show");
	});

	$("#delete_partOne").click(function() {
		deletePartOnes();
	});

});

function load(page) {
	partOneService.listPartOne("#table", page);
}

function afListPartOne(ref, data) {
	$(ref.target + " .datagrid_row").remove();
	for (var i = 0; i < data.length; i++) {
		fillDatagrid(ref.target, data[i]);
	}
}

function titleConverter(o) {
	return "<a href='" + contextPath + "/admin/partOne/update/" + o.id + "'>" + o.title + "</a>";
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
			partOneService.changePartOne({
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
			partOneService.changePartOne({
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
		partOneService.updatePartOne(obj, "reloadPage");
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
		partOneService.updatePartOne(obj, "reloadPage");
	});

	var $div = $("<div>");
	$div.append($btn_up).append("&nbsp;").append($btn_down).append("&nbsp;").append($btn_top).append("&nbsp;").append($btn_bottom);
	return $div;
}

function reloadPage(ref, data) {
	window.location.reload();
}

function afCreatePartOne(ref, data) {
	location.href = contextPath + "/admin/partOne/update/" + data.id;
}

function afUpdatePartOne(ref, data) {
	location.href = contextPath + "/admin/partOne/list/1";
}

function deletePartOnes() {
	for (var i = 0; i < ids.length; i++) {
		var id = ids[i];
		partOneService.deletePartOne(id);
	}
}

function afDeletePartOne(ref, data) {
	count = count + 1;
	if (count == ids.length) {
		count = 0;
		window.location.reload();
	}
}