var swfupload = {

	prepare : function(refid, upid, filename) {
		$("#" + refid).data("upid", upid);
		$("#" + refid).data("filename", filename);
	},

	progress : function(refid, l, t) {
		$("#uploading").show();
	},

	success : function(refid) {
		$("#uploading").hide();

		var $img = $("#" + refid).find("div").filter(".img");
		var upid = $("#" + refid).data("upid");
		var filename = $("#" + refid).data("filename");
		var ext = "";
		if (filename.indexOf(".") != -1) {
			ext = filename.substring(filename.indexOf("."));
		}
		if ($img.length == 0) {
			$img = $("<img>");
			$img.attr("src", downloadUrl + "/" + upid + ext);
			$("#" + refid).append($img);
		}
	},

	error : function(refid, msg) {
		alert(msg);
	}

};