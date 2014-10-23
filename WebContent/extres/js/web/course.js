var questionService = {

	listQuestion : function(target, pageNo) {
		remoteServiceCall({
			uri : contextPath + '/services/question/list/' + pageNo + window.location.search,
			ref : {
				target : target,
				callback : 'afListQuestion'
			},
			data : {}
		});
	}

};

$(function() {

	$("#head").find("li").find("a").eq(2).addClass("red");

	questionService.listQuestion("", 0);

});

function afListQuestion(ref, data) {
	for (var i = 0; i < data.length; i++) {
		var $li = $("<li>");
		$("#course_ul").append($li);

		var $img = $("<img>", {
			width : 290,
			height : 240,
			src : contextPath + "/download/question/" + data[i].imgupid
		});
		var $a = $("<a>", {
			html : $img,
			href : contextPath + "/course/" + data[i].mp4upid
		});

		var $a_title = $("<a>", {
			html : data[i].title,
			href : contextPath + "/course/" + data[i].mp4upid
		});
		$a_title.addClass("gray-red");
		var $h3 = $("<h3>", {
			html : $a_title
		});

		$li.append($a).append($h3);
	}
}