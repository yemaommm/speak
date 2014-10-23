var ids = [];
var count = 0;
var update_point_id;

var examPointService = {

	createExamPoint : function(data) {
		remoteServiceCall({
			uri : contextPath + '/services/examPoint/create',
			ref : {
				callback : "afCreateExamPoint"
			},
			data : data
		});
	},

	updateExamPoint : function(data, afDone) {
		remoteServiceCall({
			uri : contextPath + '/services/examPoint/update/' + data.id,
			ref : {
				callback : afDone
			},
			data : data
		});
	},

	listExamPoint : function(target, pageNo) {
		remoteServiceCall({
			uri : contextPath + '/services/examPoint/list/' + pageNo + "?cityId=" + examCityId,
			ref : {
				target : target,
				callback : 'afListExamPoint'
			},
			data : {}
		});
	},

	deleteExamPoint : function(id) {
		remoteServiceCall({
			uri : contextPath + '/services/examPoint/delete/' + id,
			ref : {
				callback : "afDeleteExamPoint"
			},
			data : {}
		});
	}

};

$(function() {

	load(0);

	$("#btn_create_examPoint").click(function() {
		$("#h_point").html("创建具体考点");
		$("#q_id").val("");
		$("#examPointInput").val("");

		$("#examPoint_div").modal("show");
	});

	$("#save_examPoint").click(function() {
		if ($("#examPointInput").val() == '') {
			alert("请填写具体考点");
			return;
		}

		var obj = {
			examPoint : $("#examPointInput").val()
		};

		if ($("#q_id").val() == '') {
			obj.cityId = examCityId;
			examPointService.createExamPoint(obj);
		} else {
			obj.id = $("#q_id").val();
			examPointService.updateExamPoint(obj, "afUpdateExamPoint");
		}
	});

	$("#btn_delete_examPoint").click(function() {
		ids = [];

		var check = $("._check").find("input");
		if (check.length == 1) {
			alert("请先选择你要删除的具体考点");
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
			alert("请先选择你要删除的具体考点");
			return;
		}

		$("#delete_examPoint_div").modal("show");
	});

	$("#delete_examPoint").click(function() {
		deleteExamPoints();
	});

});

function load(page) {
	examPointService.listExamPoint("#table", page);
}

function afListExamPoint(ref, data) {
	$(ref.target + " .datagrid_row").remove();
	for (var i = 0; i < data.length; i++) {
		fillDatagrid(ref.target, data[i]);
	}
}

function examPointConverter(o) {
	var $a = $("<a>", {
		html : o.examPoint
	});
	$a.css("cursor", "pointer");
	$a.data("data", o);
	$a.click(function() {
		var obj = $(this).data("data");
		$("#h_point").html("编辑具体考点");
		$("#q_id").val(obj.id);
		$("#examPointInput").val(obj.examPoint);

		$("#examPoint_div").modal("show");
	});

	return $a;
}

function reloadPage(ref, data) {
	load(0);
}

function afCreateExamPoint(ref, data) {
	$("#examPoint_div").modal("hide");
	load(0);
}

function afUpdateExamPoint(ref, data) {
	$("#examPoint_div").modal("hide");
	load(0);
}

function deleteExamPoints() {
	for (var i = 0; i < ids.length; i++) {
		var id = ids[i];
		examPointService.deleteExamPoint(id);
	}
}

function afDeleteExamPoint(ref, data) {
	count = count + 1;
	if (count == ids.length) {
		count = 0;
		window.location.reload();
	}
}