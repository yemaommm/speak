var current = 1;
var error = "error";
var success = "success";
var converter = [];
var threads = 0;

function remoteServiceCall(service) {

	var csrfHeader = $("meta[name='_csrf_header']").attr("content");
	var csrfToken = $("meta[name='_csrf']").attr("content");
	var headers = {};
	headers[csrfHeader] = csrfToken;

	threads++;
	$.ajax({
		type : "POST",
		url : service.uri,
		data : {
			ref : str(service.ref),
			data : str(service.data)
		},
		headers : headers,
		dataType : "json",
		success : function(data, textStatus, jqXHR) {
			callback(data);
		},
		error : function(jqXHR, textStatus, errorThrown) {
			// alert("发生错误了，请再试一次！");
		},
		beforeSend : function(jqXHR, settings) {

		},
		complete : function(jqXHR, textStatus) {
			threads--;
			if (threads == 0) {
				$("#loading").hide();
			}
		}
	});
}

function callback(data) {
	if (checkCallbackStatus(data)) {
		var ref = json(data.ref);
		if (ref.callback) {
			eval(ref.callback)(ref, data.data, data.page);
		}
	}
}

function str(query) {
	return JSON.stringify(query);
}

function json(string) {
	return JSON.parse(string);
}

function checkCallbackStatus(callback) {
	return callback.message == "success";
}

function getFormInput(id) {
	var $inputs = $(id + " input," + id + " textarea," + id + " select");
	return $inputs.serializeObject();
}

function resetFormInput(id) {
	var $inputs = $(id + " input," + id + " textarea," + id + " select");
	for (var i = 0; i < $inputs.length; i++) {
		var name = $inputs.eq(i).attr("name");
		if (!name) {
			continue;
		}
		$inputs.eq(i).val("");
	}
}

function setFormInput(id, data) {
	var $inputs = $(id + " input," + id + " textarea," + id + " select");
	for (var i = 0; i < $inputs.length; i++) {
		var name = $inputs.eq(i).attr("name");
		if (!name) {
			continue;
		}
		var value = "";
		eval("value = data." + name);
		$inputs.eq(i).val(value);
	}
}

$(function() {
	$("._calendar").datepicker({
		format : 'yyyy-mm-dd'
	}).on("changeDate", function(e) {
		$(this).datepicker('hide');
	});

	$("._colorPicker").colorPicker();
});

function pageCtrl(count, url) {
	var $ul = $("<ul class='pagination pagination-sm'>");
	for (var i = 1; i <= count; i++) {
		if (current <= 20) {
			if (i > 40) {
				if (i != count && i != 1) {
					continue;
				}
			}
		} else {
			if ((i > (parseInt(current) + 20)) || (i < parseInt(current) - 20)) {
				if (i != count && i != 1) {
					continue;
				}
			}
		}
		var $li = $("<li>");
		if (i == current) {
			$li.addClass("active");
		}
		$li.append("<a href='" + contextPath + url + i + window.location.search + "'>" + i + "</a>");
		$ul.append($li);
	}
	return $ul;
}

function pageCtrlDialog(count, pageno, func) {
	var $ul = $("<ul class='pagination pagination-sm'>");
	for (var i = 1; i <= count; i++) {
		var $li = $("<li>");
		if (i == pageno) {
			$li.addClass("active");
		}
		if (func) {
			var $a = $("<a onclick='" + func + "(" + i + ")'>" + i + "</a>");
			$li.append($a);
		}
		$ul.append($li);
	}
	return $ul;
}

function fillDatagrid(target, obj) {
	var $table = $(target);
	var $htd = $(target + " .datagrid_header td");

	var $tr = $("<tr>");
	$tr.addClass("datagrid_row");
	$tr.data("data", obj);
	$table.append($tr);
	for (var i = 0; i < $htd.length; i++) {
		$td = $("<td>");
		$tr.append($td);
		var name = $htd.eq(i).attr("name");

		var cell;
		try {
			cell = eval(name + "Converter")(obj);
		} catch (e) {
			cell = eval("obj." + name);
			if (name == '_seq') {
				cell = $table.find("tr").length - 1;
			}
		}
		$td.append(cell);
		$td.addClass(name);
	}
}

function _checkConverter(o) {
	var $chk = $("<input type='checkbox' value='" + o.id + "'>");
	return $chk;
}

function _actionConverter(o) {
	var $btn = $("<input type='button' class='btn btn-danger btn-sm' value='删 除' onclick='deleteOneRow(" + o.id + ")' />");
	return $btn;
}

function checkAll(obj) {
	var $td = $(obj).parent();
	var $tr = $td.parent();
	var idx = $tr.find("td").index($td);
	var $trs = $tr.parent().find("tr:gt(0)");
	for (var i = 0; i < $trs.length; i++) {
		var $chk = $trs.eq(i).find("td:eq(" + idx + ")").find("input[type=checkbox]");
		$chk[0].checked = obj.checked;
	}
}

var createIcon = function($editable) {
	$i = $("<i>");
	$i.addClass("remove_ctrl");
	$i.addClass("glyphicon glyphicon-remove");
	$i.click(function() {
		$(this).parent().remove();
	});
	$editable.append($i);
};

// 保留n位小数点
function toDecimal2(x, n) {
	if (n == null) {
		n = 2;
	}

	var f = parseFloat(x);
	if (isNaN(f)) {
		f = 0.0;
	}

	f = Math.round(f * 100) / 100;
	var s = f.toString();
	var rs = s.indexOf('.');
	if (rs < 0) {
		rs = s.length;
		s += '.';
	}

	while (s.length <= rs + n) {
		s += '0';
	}
	return s;
}

// 初始化flash-upload
function createSwfUpload(p, width, height, flashvars) {
	var swfVersionStr = "10.0.0";
	var xiSwfUrlStr = uploadServer + "/extres/static/swf/playerProductInstall.swf";
	var params = {};
	params.quality = "high";
	params.bgcolor = "#eeeeee";
	params.allowscriptaccess = "always";
	params.allowfullscreen = "true";
	var attributes = {};
	attributes.id = "swf_upload_" + flashvars.refid;
	attributes.name = "swf_upload";
	attributes.align = "middle";
	swfobject.embedSWF(uploadServer + "/extres/static/swf/upd.swf", p, width, height, swfVersionStr, xiSwfUrlStr, flashvars, params, attributes);
}