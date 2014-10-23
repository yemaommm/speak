var ids = [];
var count = 0;

var examCityService = {

	createExamCity : function(data) {
		remoteServiceCall({
			uri : contextPath + '/services/examCity/create',
			ref : {
				callback : "afCreateExamCity"
			},
			data : data
		});
	},

	updateExamCity : function(data, afDone) {
		remoteServiceCall({
			uri : contextPath + '/services/examCity/update/' + data.id,
			ref : {
				callback : afDone
			},
			data : data
		});
	},

	listExamCity : function(target, pageNo) {
		remoteServiceCall({
			uri : contextPath + '/services/examCity/list/' + pageNo + window.location.search,
			ref : {
				target : target,
				callback : 'afListExamCity'
			},
			data : {}
		});
	},

	deleteExamCity : function(id) {
		remoteServiceCall({
			uri : contextPath + '/services/examCity/delete/' + id,
			ref : {
				callback : "afDeleteExamCity"
			},
			data : {}
		});
	}

};

$(function() {

	$(".examCity_nav").addClass("active");

	$("#btn_search").click(function() {
		var queryStr = $("#form_search").serialize();
		location.href = contextPath + "/admin/examCity/list/1?" + queryStr;
	});

	$("#btn_save").click(function() {
		if ($("#examCity").val() == '') {
			alert("请填写考点");
			return;
		}

		var obj = getFormInput("#form");
		examCityService.createExamCity(obj);
	});

	$("#btn_update").click(function() {
		if ($("#examCity").val() == '') {
			alert("请填写考点");
			return;
		}

		var obj = getFormInput("#form");
		examCityService.updateExamCity(obj, "afUpdateExamCity");
	});

	$("#btn_cancel").click(function() {
		location.href = contextPath + "/admin/examCity/list/1";
	});

	$("#btn_delete_examCity").click(function() {
		ids = [];

		var check = $("._check").find("input");
		if (check.length == 1) {
			alert("请先选择你要删除的考点");
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
			alert("请先选择你要删除的考点");
			return;
		}

		$("#delete_examCity_div").modal("show");
	});

	$("#delete_examCity").click(function() {
		deleteExamCitys();
	});

});

function load(page) {
	examCityService.listExamCity("#table", page);
}

function afListExamCity(ref, data) {
	$(ref.target + " .datagrid_row").remove();
	for (var i = 0; i < data.length; i++) {
		fillDatagrid(ref.target, data[i]);
	}
}

function examCityConverter(o) {
	return "<a href='" + contextPath + "/admin/examCity/update/" + o.id + "'>" + o.examCity + "</a>";
}

function reloadPage(ref, data) {
	window.location.reload();
}

function afCreateExamCity(ref, data) {
	location.href = contextPath + "/admin/examCity/update/" + data.id;
}

function afUpdateExamCity(ref, data) {
	location.href = contextPath + "/admin/examCity/list/1";
}

function deleteExamCitys() {
	for (var i = 0; i < ids.length; i++) {
		var id = ids[i];
		examCityService.deleteExamCity(id);
	}
}

function afDeleteExamCity(ref, data) {
	count = count + 1;
	if (count == ids.length) {
		count = 0;
		window.location.reload();
	}
}