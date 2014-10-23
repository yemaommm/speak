$(function() {

	$("#head").find("li").find("a").eq(0).addClass("red");

	setTimeout(function() {
		showMorePic();
	}, 5000);

});

function showMorePic() {
	$("#topic2").fadeIn();
	$("#bbs2").fadeIn();
}