var resourceService = {

	updateResource : function(data, afDone) {
		remoteServiceCall({
			uri : contextPath + '/services/resource/update/' + data.id,
			ref : {
				callback : afDone
			},
			data : data
		});
	},

	listResource : function(target, pageNo) {
		remoteServiceCall({
			uri : contextPath + '/services/resource/list/' + pageNo + window.location.search,
			ref : {
				target : target,
				callback : 'afListResource'
			},
			data : {}
		});
	},

	changeResource : function(data, afDone) {
		remoteServiceCall({
			uri : contextPath + '/services/resource/change',
			ref : {
				callback : afDone
			},
			data : data
		});
	},

	findResource : function(id) {
		remoteServiceCall({
			uri : contextPath + '/services/resource/find/' + id,
			ref : {
				callback : "afFindResource"
			},
			data : {}
		});
	}

};

$(function() {

	$(".about_nav").addClass("active");

	$("#btn_search").click(function() {
		var queryStr = $("#form_search").serialize();
		location.href = contextPath + "/admin/resource/list/1?" + queryStr;
	});

	$("#btn_update").click(function() {
		var obj = getFormInput("#form");
		obj.content = resourceEditor.document.getBody().getHtml();
		resourceService.updateResource(obj, "afUpdateResource");
	});

	$("#btn_cancel").click(function() {
		location.href = contextPath + "/admin/resource/list/1";
	});

});

function load(page) {
	resourceService.listResource("#table", page);
}

function afListResource(ref, data) {
	$(ref.target + " .datagrid_row").remove();
	for (var i = 0; i < data.length; i++) {
		fillDatagrid(ref.target, data[i]);
	}
}

function titleConverter(o) {
	return "<a href='" + contextPath + "/admin/resource/update/" + o.id + "'>" + o.title + "</a>";
}

function _actionConverter(o) {
	var $btn_up = $("<button>");
	$btn_up.addClass("btn");
	$btn_up.addClass("btn-info");
	$btn_up.addClass("btn-sm");
	$btn_up.html("上移");
	$btn_up.data("id", o.id);
	$btn_up.click(function() {
		var $tr = $(this).parent().parent().parent().prev().filter(".datagrid_row");
		if ($tr != null) {
			var id1 = $(this).data("id");
			resourceService.changeResource({
				id1 : id1,
				id2 : $tr.data("data").id
			}, "reloadPage");
		}
	});

	var $btn_down = $("<button>");
	$btn_down.addClass("btn");
	$btn_down.addClass("btn-primary");
	$btn_down.addClass("btn-sm");
	$btn_down.html("下移");
	$btn_down.data("id", o.id);
	$btn_down.click(function() {
		var $tr = $(this).parent().parent().parent().next().filter(".datagrid_row");
		if ($tr != null) {
			var id1 = $(this).data("id");
			resourceService.changeResource({
				id1 : id1,
				id2 : $tr.data("data").id
			}, "reloadPage");
		}
	});

	var $btn_top = $("<button>");
	$btn_top.addClass("btn");
	$btn_top.addClass("btn-success");
	$btn_top.addClass("btn-sm");
	$btn_top.html("置顶");
	$btn_top.data("id", o.id);
	$btn_top.click(function() {
		var id = $(this).data("id");
		var obj = {};
		var myDate = new Date();
		var seq = myDate.getTime();
		obj.seq = 0 - seq;
		obj.id = id;
		resourceService.updateResource(obj, "reloadPage");
	});

	var $btn_bottom = $("<button>");
	$btn_bottom.addClass("btn");
	$btn_bottom.addClass("btn-warning");
	$btn_bottom.addClass("btn-sm");
	$btn_bottom.html("置底");
	$btn_bottom.data("id", o.id);
	$btn_bottom.click(function() {
		var id = $(this).data("id");
		var obj = {};
		var myDate = new Date();
		var seq = myDate.getTime();
		obj.seq = seq;
		obj.id = id;
		resourceService.updateResource(obj, "reloadPage");
	});

	var $div = $("<div>");
	$div.append($btn_up).append("&nbsp;").append($btn_down).append("&nbsp;").append($btn_top).append("&nbsp;").append($btn_bottom);
	return $div;
}

function reloadPage(ref, data) {
	window.location.reload();
}

function afUpdateResource(ref, data) {
	location.href = contextPath + "/admin/resource/list/1";
}

function upload_success(refid) {
	$("#uploading").hide();

	var upid = $("#" + refid).data("upid");
	var url = contextPath + "/download/resource/" + upid;
	var imgHtml = CKEDITOR.dom.element.createFromHtml("<img src=" + url + ">");
	resourceEditor.insertElement(imgHtml);

	makeNewFlash();
}

function makeNewFlash() {
	$("#image_upload").html("");
	var $div = $("<div>", {
		id : "image_upload_swf"
	});
	$("#image_upload").append($div);

	createSwfUpload('image_upload_swf', "70", "30", {
		refid : "image_upload",
		catalog : "resource",
		label : "插入图片",
		service : uploadServer + "/upload",
		maxSize : "15MB",
		success : "upload_success",
		error : "swfupload.error",
		prepare : "swfupload.prepare",
		progress : "swfupload.progress",
		fileExtFilter : "*.jpg;*.png;*.gif;",
		fileNameFilter : "图片文件"
	});
}