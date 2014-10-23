var ids = [];
var count = 0;

var examTimeService = {

	createExamTime : function(data) {
		remoteServiceCall({
			uri : contextPath + '/services/examTime/create',
			ref : {
				callback : "afCreateExamTime"
			},
			data : data
		});
	},

	updateExamTime : function(data, afDone) {
		remoteServiceCall({
			uri : contextPath + '/services/examTime/update/' + data.id,
			ref : {
				callback : afDone
			},
			data : data
		});
	},

	listExamTime : function(target, pageNo) {
		remoteServiceCall({
			uri : contextPath + '/services/examTime/list/' + pageNo + window.location.search,
			ref : {
				target : target,
				callback : 'afListExamTime'
			},
			data : {}
		});
	},

	deleteExamTime : function(id) {
		remoteServiceCall({
			uri : contextPath + '/services/examTime/delete/' + id,
			ref : {
				callback : "afDeleteExamTime"
			},
			data : {}
		});
	}

};

$(function() {

	$(".examTime_nav").addClass("active");

	$("#btn_save").click(function() {
		if ($("#examTime").val() == '') {
			alert("请填写考期");
			return;
		}

		var obj = getFormInput("#form");
		examTimeService.createExamTime(obj);
	});

	$("#btn_update").click(function() {
		if ($("#examTime").val() == '') {
			alert("请填写考期");
			return;
		}

		var obj = getFormInput("#form");
		examTimeService.updateExamTime(obj, "afUpdateExamTime");
	});

	$("#btn_cancel").click(function() {
		location.href = contextPath + "/admin/examTime/list/1";
	});

	$("#btn_delete_examTime").click(function() {
		ids = [];

		var check = $("._check").find("input");
		if (check.length == 1) {
			alert("请先选择你要删除的考期");
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
			alert("请先选择你要删除的考期");
			return;
		}

		$("#delete_examTime_div").modal("show");
	});

	$("#delete_examTime").click(function() {
		deleteExamTimes();
	});

});

function load(page) {
	examTimeService.listExamTime("#table", page);
}

function afListExamTime(ref, data) {
	$(ref.target + " .datagrid_row").remove();
	for (var i = 0; i < data.length; i++) {
		fillDatagrid(ref.target, data[i]);
	}
}

function examTimeConverter(o) {
	return "<a href='" + contextPath + "/admin/examTime/update/" + o.id + "'>" + o.examTime + "</a>";
}

function reloadPage(ref, data) {
	window.location.reload();
}

function afCreateExamTime(ref, data) {
	location.href = contextPath + "/admin/examTime/list/1";
}

function afUpdateExamTime(ref, data) {
	location.href = contextPath + "/admin/examTime/list/1";
}

function deleteExamTimes() {
	for (var i = 0; i < ids.length; i++) {
		var id = ids[i];
		examTimeService.deleteExamTime(id);
	}
}

function afDeleteExamTime(ref, data) {
	count = count + 1;
	if (count == ids.length) {
		count = 0;
		window.location.reload();
	}
}