$(function() {

	$("#head").find("li").find("a").eq(1).addClass("red");

	$(".module").click(function() {
		if (!$(this).hasClass("partW")) {
			$(".partW").removeClass("partW");
			$(this).addClass("partW");
		} else {
			return;
		}

		var id = $(this).attr("id");
		$(this).find("img").attr("src", contextPath + '/extres/css/web/self/' + id + '+.png');
		if (id == 'part1') {
			$("#part2").find("img").attr("src", contextPath + '/extres/css/web/self/part2.png');
			$("#part3").find("img").attr("src", contextPath + '/extres/css/web/self/part3.png');
			$("#part1-div").show();
			$("#part2-div").hide();
			$("#part3-div").hide();
		} else if (id == 'part2') {
			$("#part1").find("img").attr("src", contextPath + '/extres/css/web/self/part1.png');
			$("#part3").find("img").attr("src", contextPath + '/extres/css/web/self/part3.png');
			$("#part1-div").hide();
			$("#part2-div").show();
			$("#part3-div").hide();
		} else if (id == 'part3') {
			$("#part1").find("img").attr("src", contextPath + '/extres/css/web/self/part1.png');
			$("#part2").find("img").attr("src", contextPath + '/extres/css/web/self/part2.png');
			$("#part1-div").hide();
			$("#part2-div").hide();
			$("#part3-div").show();
		}
	});

	partService.listPartOne("afListPartOne");
	partService.listPartTwo("afListPartTwo");

	$("#part1").click();

	$(".module").mouseover(function() {
		var id = $(this).attr("id");
		$(this).find("img").attr("src", contextPath + '/extres/css/web/self/' + id + '+.png');
	});

	$(".module").mouseout(function() {
		if (!$(this).hasClass("partW")) {
			var id = $(this).attr("id");
			$(this).find("img").attr("src", contextPath + '/extres/css/web/self/' + id + '.png');
		}
	});

	$("#begin").click(function() {
		var $inputs = $("#chosenUl").find("input");
		if ($inputs.size() == 0) {
			alert("请先选择你要练习的题目");
			return;
		}

		var partOne = "";
		var partTwo = "";
		var partThree = "";
		var topic = "";
		var partOneString = "";
		var partTwoString = "";
		var partThreeString = "";
		for (var i = 0; i < $inputs.size(); i++) {
			var $this = $inputs.eq(i);
			var type = $this.data("type");
			var id = $this.data("id");
			var title = $this.data("title");
			topic = topic + title + ',';
			if (type == 'partOne') {
				partOne = partOne + id + ',';
				partOneString = partOneString + title + ",";
			} else if (type == 'partTwo') {
				partTwo = partTwo + id + ',';
				partTwoString = partTwoString + title + ",";
			} else if (type == 'partThree') {
				partThree = partThree + id + ',';
				partThreeString = partThreeString + title + ",";
			}
		}

		var obj = {
			partOne : partOne,
			partTwo : partTwo,
			partThree : partThree,
			topic : topic,
			partOneString : partOneString,
			partTwoString : partTwoString,
			partThreeString : partThreeString
		};

		partService.createPart(obj, "afCreatePart");
	});

});

function afCreatePart(ref, data) {
	location.href = contextPath + '/self/' + data;
}

function afListPartOne(ref, data) {
	fillList(data, "partOne", "part1-div");
}

function afListPartTwo(ref, data) {
	fillList(data, "partTwo", "part2-div");
	fillList(data, "partThree", "part3-div");
}

function fillList(data, type, tableid) {
	$("#" + tableid).find("table").html("");

	if (data == null || data.length == 0) {
		$("#" + tableid).find("h4").html("很抱歉，该部分暂时没有题目");
	} else {
		$("#" + tableid).find("h4").html("");

		var $tr = $("<tr>");
		$("#" + tableid).find("table").append($tr);
		for (var i = 0; i < data.length; i++) {
			if (i % 4 == 0 && i != 0) {
				$tr = $("<tr>");
				$("#" + tableid).find("table").append($tr);
			}

			var $td = $("<td>");
			$tr.append($td);

			var $input = $("<input>", {
				type : 'checkbox',
				id : type + '_' + data[i].id
			});
			$input.data("id", data[i].id);
			$input.data("title", data[i].title);
			$input.data("type", type);
			$input.click(function() {
				var input_id = $(this).data("id");
				var input_type = $(this).data("type");
				if ($(this).prop("checked")) {
					$("#chosenList").find("h4").remove();
					$("#begin").find("img").attr("src", contextPath + '/extres/css/web/self/begin+.png');
					var input_title = $(this).data("title");
					if (type == 'partTwo') {
						input_title = input_title + '(Part2)';
					} else if (type == 'partThree') {
						input_title = input_title + '(Part3)';
					}

					var $lis = $("#chosenUl").find("li");
					if ($lis.size() >= 10) {
						alert("选题车已满啦，请量力而行");
						$(this).prop("checked", false);
					} else {
						$(this).parent().addClass("get");
						addChosenList(input_id, input_title, input_type);
					}
				} else {
					removeChosenList(input_id, input_type);
				}
			});
			var $p = $("<p>", {
				html : data[i].title
			});
			var $label = $("<label>");
			$label.append($input).append($p);

			$td.append($label);
		}
	}
}

function addChosenList(id, title, type) {
	var $li = $("<li>");
	$("#chosenUl").append($li);

	var $input = $("<input>", {
		type : 'checkbox',
		checked : 'checked',
		id : type + '_chosen_' + id
	});
	$input.data("id", id);
	$input.data("type", type);
	$input.data("title", title);
	$input.click(function() {
		var t = $(this).data("type");
		var i = $(this).data("id");
		$("#" + t + "_" + i).click();
	});
	var $p = $("<p>", {
		html : title
	});
	var $label = $("<label>");
	$label.append($input).append($p);

	$li.append($label);

	var $lis = $("#chosenUl").find("li");
	$("#count").html("选题车 " + $lis.size() + "/10");
}

function removeChosenList(id, type) {
	$("#" + type + "_" + id).parent().removeClass("get");
	$("#" + type + "_chosen_" + id).parent().parent().remove();

	var $lis = $("#chosenUl").find("li");
	if ($lis.size() == 0) {
		var $h4 = $("<h4>勾选话题添加到选题车，可以一起练习多个话题</h4>");
		$("#chosenUl").before($h4);
		$("#begin").find("img").attr("src", contextPath + '/extres/css/web/self/begin.png');
	}

	$("#count").html("选题车 " + $lis.size() + "/10");
}