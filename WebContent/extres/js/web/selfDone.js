var sn;

var click_id;
var record_id;

var partId;
var partType;
var partString;

var recordService = {

	listRecordHistory : function(afDone) {
		remoteServiceCall({
			uri : contextPath + '/services/recordHistory/list/0?sn=' + sn,
			ref : {
				callback : afDone
			},
			data : {}
		});
	},

	updateRecordHistoryS : function(afDone, ids) {
		remoteServiceCall({
			uri : contextPath + '/services/recordHistoryS/update/' + ids,
			ref : {
				callback : afDone
			},
			data : {}
		});
	}

};

$(function() {

	$("#head").find("li").find("a").eq(1).addClass("red");

	$(".module").mouseover(function() {
		var id = $(this).attr("id");
		$(this).find("img").attr("src", contextPath + '/extres/css/web/selfDetail/' + id + '+.png');
	});

	$(".module").mouseout(function() {
		var id = $(this).attr("id");
		$(this).find("img").attr("src", contextPath + '/extres/css/web/selfDetail/' + id + '.png');
	});

	$("#share").click(function() {
		var k = 0;
		var ids = "";
		var $check = $("#right_bottom").find("input:checkbox");
		for (var i = 0; i < $check.length; i++) {
			var $che = $check.eq(i);
			if ($che.prop("checked")) {
				k = k + 1;
				ids = ids + $che.data("id") + ",";
			}
		}

		if (k == 0) {
			location.href = contextPath + "/share";
		} else {
			recordService.updateRecordHistoryS("afUpdateHistoryS", ids);
		}
	});

});

function afUpdateHistoryS(ref, data) {
	location.href = contextPath + "/share";
}

function listRecord() {
	recordService.listRecordHistory("afListRecord");
}

function afListRecord(ref, data) {
	for (var i = 0; i < data.length; i++) {
		var $div = $("<div>");
		$("#right_bottom").append($div);

		var $checkAll = $("<input>", {
			type : 'checkbox',
			id : 'check_' + data[i].id,
			checked : 'checked'
		});
		$checkAll.addClass("history");
		$checkAll.data("id", data[i].id);
		$checkAll.click(function() {
			if ($(this).prop("checked")) {

			} else {

			}
		});

		var $label = $("<label>", {
			html : data[i].topic
		});
		$label.data("id", data[i].id);
		$label.click(function() {
			var id = 'show_div_' + $(this).data("id");
			$(".show-div").not(id).slideUp();
			$("#" + id).slideDown();
		});
		$div.append($checkAll).append($label);

		var $divList = $("<div>", {
			id : 'show_div_' + data[i].id
		});
		$divList.addClass("show-div");
		$div.append($divList);

		var recordOnes = json(data[i].recordOnes);
		for (var j = 0; j < recordOnes.length; j++) {
			var $img = $("<img>", {
				src : contextPath + "/extres/css/web/selfDetail/playRecord.png"
			});
			$img.addClass("pull-right");

			var $pList = $("<p>", {
				html : recordOnes[j].partString,
				id : recordOnes[j].id
			});
			$pList.append($img);
			$pList.data("data", recordOnes[j]);
			$pList.addClass("img-rounded");
			$pList.click(function() {
				$(".back-a").removeClass("back-a");
				$(this).addClass("back-a");

				var objD = $(this).data("data");
				$("#title").html(objD.partString);
				$("#content").html(objD.answer);

				$("#the_player").attr({
					src : contextPath + '/download/record/' + objD.upid
				});
				document.getElementById('the_player').play();
				document.getElementById('the_player').addEventListener("ended", function() {
					// alert(0);
				});
			});
			$divList.append($pList);

			if (i == 0 && j == 0) {
				$pList.click();
				document.getElementById('the_player').pause();
			}
		}

		if (i == 0) {
			$label.click();
		}
	}
}