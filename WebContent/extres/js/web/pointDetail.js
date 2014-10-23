var sn;

var click_id;
var record_id;

var partId;
var partType;
var partString;

var countSecond = 0;
var totalSeconds = "";
var record_ids = "";
var partIdstring = "";

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

	$("#btnStart").click(function() {
		// document.getElementById('the_player').play();
		// $(this).unbind("click");
		// $(this).unbind("mouseover");

		document.getElementById('swf_record').startRecording();
	});

	// $('#mySwitch').on('switch-change', function(e, data) {
	// if (data.value == true) {
	// $("#content").show();
	// } else {
	// $("#content").hide();
	// }
	// });

	$("#getDone").click(function() {
		location.href = contextPath + '/selfDone/' + sn;
	});

});

function listPart(sn) {
	partService.listPart(sn, "afListPart");
}

function afListPart(ref, data) {
	var partIds = data.partIds;

	var partOne = data.partOne;
	for (var i = 0; i < partOne.length; i++) {
		var $div = $("<div>");
		$("#right_bottom").append($div);

		var $label = $("<label>", {
			html : partOne[i].title
		});
		$label.data("id", partOne[i].id);
		$label.click(function() {
			var id = 'show_div_' + $(this).data("id");
			$(".show-div").not(id).slideUp();
			$("#" + id).slideDown();
		});
		$div.append($label);

		var $divList = $("<div>", {
			id : 'show_div_' + partOne[i].id
		});
		$divList.addClass("show-div");
		$div.append($divList);
		var partOneQuestion = json(partOne[i].partOneQuestion);
		for (var j = 0; j < partOneQuestion.length; j++) {
			var $pList = $("<p>", {
				html : partOneQuestion[j].title,
				id : 'p_' + partOne[i].id + '_' + partOneQuestion[j].id
			});
			$pList.data("data", partOneQuestion[j]);
			$pList.data("recordId", partIds["partOne_" + partOne[i].id]);
			$pList.addClass("img-rounded");
			$pList.click(function() {
				record_id = $(this).data("recordId");
				click_id = $(this).attr("id");

				$(".back-a").removeClass("back-a");
				$(this).addClass("back-a");
				var objD = $(this).data("data");
				// $("#title").html(objD.title);
				// $("#title").html("");
				// $("#content").html(objD.content);

				partId = objD.id;
				partType = 'part1';
				partString = objD.title;

				record_ids = record_ids + record_id + ",";
				partIdstring = partIdstring + partId + ",";

				var $audio = $("<audio>", {
					id : "the_player"
				});
				$("#detail").append($audio);
				$("#the_player").attr({
					src : contextPath + '/download/audio/' + objD.mp3upid
				});

				countSecond = 0;
				setTimeout(function() {
					countAddTime();
				}, 1000);

				document.getElementById('the_player').play();
				document.getElementById('the_player').addEventListener("ended", function() {
					clearTimeout(t);

					totalSeconds = totalSeconds + countSecond + ',';

					setTimeout(function() {
						autoNext();
					}, 20000);

					$("#the_player").remove();
				});
			});
			$divList.append($pList);

			// if (i == 0 && j == 0) {
			// $pList.click();
			// document.getElementById('the_player').pause();
			// }
		}

		// if (i == 0) {
		// $label.click();
		// }
	}

	var partTwo = data.partTwo;
	for (var i = 0; i < partTwo.length; i++) {
		var $div = $("<div>");
		$("#right_bottom").append($div);

		var $label = $("<label>", {
			html : partTwo[i].topic + "(Part2)"
		});
		$label.data("id", "PTWO" + partTwo[i].id);
		$label.click(function() {
			var id = 'show_div_' + $(this).data("id");
			$(".show-div").not(id).slideUp();
			$("#" + id).slideDown();
		});
		$div.append($label);

		var $divList = $("<div>", {
			id : 'show_div_' + "PTWO" + partTwo[i].id
		});
		$divList.addClass("show-div");
		$div.append($divList);

		var $pList = $("<p>", {
			html : partTwo[i].title,
			id : 'ptwo_' + partTwo[i].id
		});
		$pList.data("data", partTwo[i]);
		$pList.data("recordId", partIds["partTwo_" + partTwo[i].id]);
		$pList.addClass("img-rounded");
		$pList.click(function() {
			record_id = $(this).data("recordId");
			click_id = $(this).attr("id");

			$(".back-a").removeClass("back-a");
			$(this).addClass("back-a");
			var objD = $(this).data("data");
			$("#title").html(objD.title + "<br>" + objD.shouldSay);
			$("#content").html(objD.content);

			partId = objD.id;
			partType = 'part2';
			partString = objD.title;

			$("#the_player").attr({
				src : contextPath + '/download/audio/' + objD.mp3upid
			});
			document.getElementById('the_player').play();
			document.getElementById('the_player').addEventListener("ended", function() {
				// alert(0);
			});
		});
		$divList.append($pList);

		if (i == 0 && (partOne == null || partOne.length == 0)) {
			$label.click();
			$pList.click();
			document.getElementById('the_player').pause();
		}
	}

	var partThree = data.partThree;
	for (var i = 0; i < partThree.length; i++) {
		var $div = $("<div>");
		$("#right_bottom").append($div);

		var $label = $("<label>", {
			html : partThree[i].topic + "(Part3)"
		});
		$label.data("id", "PTHREE" + partThree[i].id);
		$label.click(function() {
			var id = 'show_div_' + $(this).data("id");
			$(".show-div").not(id).slideUp();
			$("#" + id).slideDown();
		});
		$div.append($label);

		var $divList = $("<div>", {
			id : 'show_div_' + "PTHREE" + partThree[i].id
		});
		$divList.addClass("show-div");
		$div.append($divList);
		var partThreeQuestion = json(partThree[i].partThreeQuestion);
		for (var j = 0; j < partThreeQuestion.length; j++) {
			var $pList = $("<p>", {
				html : partThreeQuestion[j].title,
				id : 'p_' + partThree[i].id + '_' + partThreeQuestion[j].id
			});
			$pList.data("data", partThreeQuestion[j]);
			$pList.data("recordId", partIds["partThree_" + partThree[i].id]);
			$pList.addClass("img-rounded");
			$pList.click(function() {
				record_id = $(this).data("recordId");
				click_id = $(this).attr("id");

				$(".back-a").removeClass("back-a");
				$(this).addClass("back-a");
				var objD = $(this).data("data");
				// $("#title").html(objD.title);
				$("#title").html("");
				$("#content").html(objD.content);

				partId = objD.id;
				partType = 'part3';
				partString = objD.title;

				$("#the_player").attr({
					src : contextPath + '/download/audio/' + objD.mp3upid
				});
				document.getElementById('the_player').play();
				document.getElementById('the_player').addEventListener("ended", function() {
					// alert(0);
				});
			});
			$divList.append($pList);

			if ((partTwo == null || partTwo.length == 0) && (partOne == null || partOne.length == 0)) {
				if (i == 0 && j == 0) {
					$pList.click();
					document.getElementById('the_player').pause();
				}
			}
		}

		if ((partTwo == null || partTwo.length == 0) && (partOne == null || partOne.length == 0)) {
			if (i == 0) {
				$label.click();
			}
		}
	}
}

function countAddTime() {
	countSecond = countSecond + 1;
	t = setTimeout(function() {
		countAddTime();
	}, 1000);
}

function autoNext() {
	if ($("#" + click_id).next().length) {
		$("#" + click_id).next().click();
	} else {
		if ($("#" + click_id).parent().parent().next().length) {
			$("#" + click_id).parent().parent().next().find("label").click();
			$("#" + click_id).parent().parent().next().find("p").eq(0).click();
		}
	}
}

// flex调用js获取参数
function flashReady() {
	// alert(0);
}

function returnRecordId() {
	alert(record_ids);
	return record_ids;
}

function returnpartId() {
	alert(partIdstring);
	return partIdstring;
}

// function returnpartString() {
// return partString;
// }

function returnpartType() {
	return partType;
}

function returnRecordSecond() {
	return totalSeconds;
}

function ToStartRecord() {
	$("#right_bottom").find("label").eq(0).click();
	$("#right_bottom").find("p").eq(0).click();
}