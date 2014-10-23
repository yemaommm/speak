var help = 1;

$(function() {

	$("#head").find("li").find("a").eq(1).addClass("red");

	$(".module").mouseover(function() {
		var id = $(this).attr("id");
		$(this).find("img").attr("src", contextPath + '/extres/css/web/practice/' + id + '+.png');
	});

	$(".module").mouseout(function() {
		var id = $(this).attr("id");
		$(this).find("img").attr("src", contextPath + '/extres/css/web/practice/' + id + '.png');
	});

	$("#shadow").click(function() {
		nextModule();
	});

	$(".help").click(function() {
		nextModule();
	});

});

function nextModule() {
	$("#help" + help).hide();
	help = help + 1;
	if (help < 4) {
		$("#help" + help).show();
	} else {
		$("#shadow").hide();
		makeSecond();
	}
}

function makeSecond() {
	userService.updateUser({
		isFirst : 0
	}, "afMakeSecond");
}

function afMakeSecond(ref, data) {

}