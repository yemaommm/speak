var seoService = {

	updateSeo : function(data, afDone) {
		remoteServiceCall({
			uri : contextPath + '/services/seo/update/' + data.id,
			ref : {
				callback : afDone
			},
			data : data
		});
	},

	listSeo : function(target, pageNo) {
		remoteServiceCall({
			uri : contextPath + '/services/seo/list/' + pageNo,
			ref : {
				target : target,
				callback : 'afListSeo'
			},
			data : {}
		});
	}

};

$(function() {

	$(".seo_nav").addClass("active");

	$("#btn_update").click(function() {
		var obj = getFormInput("#form");
		seoService.updateSeo(obj, "afUpdateSeo");
	});

	$("#btn_cancel").click(function() {
		location.href = contextPath + "/admin/seo/list/1";
	});

});

function load(page) {
	seoService.listSeo("#table", page);
}

function afListSeo(ref, data) {
	$(ref.target + " .datagrid_row").remove();
	for (var i = 0; i < data.length; i++) {
		fillDatagrid(ref.target, data[i]);
	}
}

function titleConverter(o) {
	return "<a href='" + contextPath + "/admin/seo/update/" + o.id + "'>" + CatString(o.title, 10) + "</a>";
}

function keywordsConverter(o) {
	return CatString(o.keywords, 30);
}

function descriptionConverter(o) {
	return CatString(o.description, 50);
}

function afUpdateSeo(ref, data) {
	location.href = contextPath + "/admin/seo/list/1";
}

function CatString(string, num) {
	if (string.length > num) {
		return string.substring(0, num) + "...";
	} else {
		return string;
	}
}