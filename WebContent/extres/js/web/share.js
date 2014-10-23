var shareService = {

	listRecordHistory : function(afDone, pageNo) {
		remoteServiceCall({
			uri : contextPath + '/services/recordHistory/list/' + pageNo + window.location.search,
			ref : {
				callback : afDone
			},
			data : {
				status : 1
			}
		});
	},

	listRecordTopicByQ : function(pageNo, query) {
		remoteServiceCall({
			uri : contextPath + '/services/recordTopic/list/' + pageNo + query,
			ref : {
				callback : 'afListRecordTopicByQ'
			},
			data : {}
		});
	},

	createRecordTopic : function(data, target, afDone) {
		if (afDone == null || afDone == '') {
			afDone = "afCreateRecordTopic";
		}
		remoteServiceCall({
			uri : contextPath + '/services/recordTopic/create',
			ref : {
				callback : afDone,
				target : target
			},
			data : data
		});
	},

	listPartOne : function(target, pageNo) {
		remoteServiceCall({
			uri : contextPath + '/services/partOne/list/0',
			ref : {
				target : target,
				callback : 'afListPartOne'
			},
			data : {}
		});
	},

	listPartTwo : function(target, pageNo) {
		remoteServiceCall({
			uri : contextPath + '/services/partTwo/list/0',
			ref : {
				target : target,
				callback : 'afListPartTwo'
			},
			data : {}
		});
	}

};

$(function() {

	$("#head").find("li").find("a").eq(3).addClass("red");

	listShare(0);

	$("#part").change(function() {
		var value = $(this).val();
		if (value == '') {
			$("#topic").html("<option value=''>所有话题</option>");
		} else if (value == 'part1') {
			shareService.listPartOne("", 0);
		} else {
			shareService.listPartTwo("", 0);
		}
	});

	$("#query").click(function() {
		var url = contextPath + '/share?type=' + $("#part").val() + '&partId=' + $("#topic").val() + '&less=' + $("#less").val() + '&more=' + $("#more").val();
		if ($("#isEx").prop("checked")) {
			url = url + "&isExpert=1";
		}

		location.href = url;
	});

	$("#get_my_record").click(function() {
		if (user_id == '') {
			location.href = contextPath + '/login';
		} else {
			location.href = contextPath + '/share?userid=' + user_id;
		}
	});

});

function afListPartOne(ref, data) {
	$("#topic").html('<option value="">所有话题</option>');
	for (var i = 0; i < data.length; i++) {
		var $option = $("<option>", {
			value : data[i].id,
			html : data[i].title
		});
		$("#topic").append($option);
	}
}

function afListPartTwo(ref, data) {
	$("#topic").html('<option value="">所有话题</option>');
	for (var i = 0; i < data.length; i++) {
		var $option = $("<option>", {
			value : data[i].id,
			html : data[i].title
		});
		$("#topic").append($option);
	}
}

function listShare(pageNo) {
	shareService.listRecordHistory("afListShare", pageNo);
}

function afListShare(ref, data) {
	for (var i = 0; i < data.length; i++) {
		var $div = $("<div>");
		$div.addClass("div-one");
		$("#share-left").append($div);

		var $a_user = $("<a>", {
			html : data[i].userid
		});
		$a_user.addClass("gray-red");
		$a_user.addClass("red");
		$div.append($a_user).append("<font color='white'>&nbsp;同学练习了话题&nbsp;</font>");
		$div.append("<font color='rgb(49,154,12)'>" + data[i].topic + "</font>");

		var $span = $("<span>");
		$span.addClass("pull-right");

		var $img = $("<img>", {
			src : contextPath + "/extres/css/web/share/time.png"
		});
		$span.append($img).append("<font color='white'>&nbsp;" + data[i].dayLine + "</font>");
		$div.append($span);

		$div.mouseover(function() {
			$(this).find("span").hide();
		});

		$div.mouseout(function() {
			$(this).find("span").show();
		});

		$div.data("id", data[i].id);
		$div.click(function() {
			var id = 'show_div_' + $(this).data("id");
			$("#" + id).slideToggle();
		});

		var $divList = $("<div>", {
			id : 'show_div_' + data[i].id,
			class : 'show_div'
		});
		$("#share-left").append($divList);
		var recordOnes = json(data[i].recordOnes);
		for (var j = 0; j < recordOnes.length; j++) {
			var $img = $("<img>", {
				src : contextPath + "/extres/css/web/selfDetail/playRecord.png"
			});
			// $img.addClass("pull-right");

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
		}

		var $span_talk = $("<span>");
		$span_talk.addClass("talk");
		$span_talk.data("id", data[i].id);

		var $img_topic = $("<img>", {
			src : contextPath + "/extres/css/web/share/talk.png",
			id : 'talk_' + data[i].id
		});
		var $label_topic = $("<label>", {
			html : '0',
			id : 'ta_' + data[i].id
		});
		$label_topic.data("num", 0);
		$span_talk.append($img_topic).append($label_topic);
		$divList.append($span_talk);
		$span_talk.click(function() {
			var id = 'show_topic_' + $(this).data("id");
			$("#" + id).slideToggle();
		});

		var $div_topic = $("<div>", {
			id : 'show_topic_' + data[i].id,
			class : 'show_topic'
		});
		$("#share-left").append($div_topic);

		var $div_talk = $("<div>");
		$div_talk.addClass("talk-div");
		$div_topic.append($div_talk);

		// textarea
		var $textarea = $("<textarea>");
		$textarea.addClass("form-control");
		$div_talk.append($textarea);

		// button
		var $button_img = $("<img>", {
			src : contextPath + "/extres/css/web/share/topic.png"
		});
		$button_img.addClass("talk-div-btn");
		$button_img.data("recordId", data[i].id);
		$button_img.data("reuserid", data[i].userid);
		$button_img.click(function() {
			if (user_id == "") {
				location.href = contextPath + '/login';
				return;
			}

			var recordId = $(this).data("recordId");
			var reuserid = $(this).data("reuserid");
			var content = $(this).prev().val();
			if (content != '') {
				shareService.createRecordTopic({
					"content" : content,
					"userid" : user_id,
					"recordId" : recordId,
					"reuserid" : reuserid,
					"parent" : recordId,
					"status" : 1
				}, recordId, "afCreateRevert");
			}
		});

		$div_talk.append($button_img);
	}

	listRecordTopic(0);
}

function listRecordTopic(pageNo) {
	var query = "?status=1";
	shareService.listRecordTopicByQ(pageNo, query);
}

function afListRecordTopicByQ(ref, data) {
	for (var i = 0; i < data.length; i++) {
		ref = {
			target : data[i].parent,
			flag : "no"
		};
		afCreateRevert(ref, data[i]);
	}
}

function afCreateRevert(ref, data) {
	var id = ref.target;
	$("#ta_" + id).data("num", $("#ta_" + id).data("num") + 1);
	$("#ta_" + id).html($("#ta_" + id).data("num"));

	var $div = $("<div>");
	$div.addClass("div-revert");

	var $p_div = $("<div>");

	// alert(data.nickname);

	var $a_user = $("<a>", {
		html : data.nickname,
		target : '_blank',

	});
	var $a_reuser = $("<a>", {
		html : data.renickname,
		target : '_blank',

	});
	$p_div.append($a_user).append("：回复 ").append($a_reuser).append("：" + data.content + "(" + data.dayLine + ")");
	$p_div.addClass("p_div");
	$div.append($p_div);

	var $a = $("<a>", {
		html : '回复'
	});
	$a.data("data", data);
	$a.addClass("div-revert-abtn");
	$a.addClass("talk-btn");
	$a.addClass("pull-right");
	$a.click(function() {
		if (user_id == '') {
			location.href = contextPath + '/login';
		} else {
			$(this).next().slideToggle("middle");
		}
	});
	$div.append($a);

	// revert revert div
	var $div_revert_revert = $("<div>");
	$div_revert_revert.addClass("revert-div-revert");
	$div.append($div_revert_revert);

	// textarea
	var $textarea = $("<textarea>");
	$textarea.addClass("form-control");
	$div_revert_revert.append($textarea);

	// button
	var $button = $("<img>", {
		src : contextPath + "/extres/css/web/share/topic.png"
	});
	$button.data("parent", data.parent);
	$button.data("reuserid", data.userid);
	$button.data("recordId", data.recordId);
	$button.addClass("revert-div-btn");
	$button.click(function() {
		var parent = $(this).data("parent");
		var recordId = $(this).data("recordId");
		var reuserid = $(this).data("reuserid");
		var content = $(this).prev().val();
		if (content != '') {
			shareService.createRecordTopic({
				"content" : content,
				"userid" : user_id,
				"recordId" : recordId,
				"reuserid" : reuserid,
				"parent" : parent,
				"status" : 1
			}, parent, "afCreateRevert");
		}
	});
	$div_revert_revert.append($button);

	if (ref.flag == 'no') {
		$("#show_topic_" + id).append($div);
	} else {
		$("#show_topic_" + id).find("div.talk-div").after($div);
		$(".revert-div-revert").hide();
		$(".revert-div-revert").find("textarea").val("");
		$(".talk-div").find("textarea").val("");
	}
}