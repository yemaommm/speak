$(function() {

	$(".num").change(function() {
		var num = $(this).val();
		if (num == '') {
			num = 0;
		} else {
			num = parseInt(num);
			if (isNaN(num)) {
				num = 0;
			}
		}
		$(this).val(num);
	});

});

function CatString(string, num) {
	if (string.length > num) {
		return string.substring(0, num) + "...";
	} else {
		return string;
	}
}