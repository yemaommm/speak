var examService = {

	listExamTime : function(afDone) {
		remoteServiceCall({
			uri : contextPath + '/services/examTime/list/0',
			ref : {
				callback : afDone
			},
			data : {}
		});
	},

	listExamCity : function(afDone) {
		remoteServiceCall({
			uri : contextPath + '/services/examCity/list/0',
			ref : {
				callback : afDone
			},
			data : {}
		});
	},

	listExamPoint : function(afDone, cityid) {
		remoteServiceCall({
			uri : contextPath + '/services/examPoint/list/0?cityId=' + cityid,
			ref : {
				callback : afDone
			},
			data : {}
		});
	},

	createExam : function(data, afDone) {
		remoteServiceCall({
			uri : contextPath + '/services/part/createexam',
			ref : {
				callback : afDone
			},
			data : data
		});
	}

};

$(function() {

	$("#head").find("li").find("a").eq(1).addClass("red");

	$("#module").find("select").change(function() {
		checkSelect();
	});

	examService.listExamTime("afListTime");
	examService.listExamCity("afListCity");

	$("#examCity").change(function() {
		var city = $(this).val();
		if (city == '') {
			$("#examPoint").html("<option value=''>选择具体考点</option>");
		} else {
			examService.listExamPoint("afListPoint", city);
		}
	});

	$("#begin").click(function() {
		if (!$(this).hasClass("click")) {
			return;
		} else {
			var obj = {
				time : $("#examDate").find("option:selected").text(),
				city : $("#examCity").find("option:selected").text(),
				point : $("#examPoint").find("option:selected").text(),
				examTime : $("#examDate").val(),
				examCity : $("#examCity").val(),
				examPoint : $("#examPoint").val()
			};
			examService.createExam(obj, "afCreateExam");
		}
	});

});

function afCreateExam(ref, data) {
	location.href = contextPath + '/exam/' + data;
}

function checkSelect() {
	var $selects = $("#module").find("select");
	var k = 0;
	for (var i = 0; i < $selects.size(); i++) {
		if ($selects.eq(i).val() == '') {
			break;
		}
		k++;
	}
	if (k == $selects.size()) {
		$("#begin").addClass("click");
		$("#begin").find("img").attr("src", contextPath + '/extres/css/web/exam/begin+.png');
	} else {
		$("#begin").removeClass("click");
		$("#begin").find("img").attr("src", contextPath + '/extres/css/web/exam/begin.png');
	}
}

function afListTime(ref, data) {
	for (var i = 0; i < data.length; i++) {
		var $option = $("<option>", {
			value : data[i].id,
			html : data[i].examTime
		});
		$("#examDate").append($option);
	}

	if (time != '') {
		$("#examDate").val(time);
	}
}

function afListCity(ref, data) {
	for (var i = 0; i < data.length; i++) {
		var $option = $("<option>", {
			value : data[i].id,
			html : data[i].examCity
		});
		$("#examCity").append($option);
	}

	if (city != '') {
		$("#examCity").val(city);
		examService.listExamPoint("afListPoint", city);
	}
}

function afListPoint(ref, data) {
	$("#examPoint").html("<option value=''>选择具体考点</option>");
	for (var i = 0; i < data.length; i++) {
		var $option = $("<option>", {
			value : data[i].id,
			html : data[i].examPoint
		});
		$("#examPoint").append($option);
	}

	if (point != '') {
		$("#examPoint").val(point);
	}

	checkSelect();
}