CKEDITOR.editorConfig = function(config) {

	config.toolbar = [ {
		name : 'basicstyles',
		groups : [ 'basicstyles', 'cleanup' ],
		items : [ 'Bold', 'Italic', 'Underline', 'RemoveFormat' ]
	}, {
		name : 'colors',
		items : [ 'TextColor', 'BGColor' ]
	}, {
		name : 'paragraph',
		groups : [ 'list', 'indent', 'blocks', 'align', 'bidi' ],
		items : [ 'NumberedList', 'BulletedList', '-', 'JustifyLeft', 'JustifyCenter', 'JustifyRight', 'JustifyBlock' ]
	}, {
		name : 'styles',
		items : [ 'Format', 'Font', 'FontSize' ]
	}, {
		name : 'links',
		items : [ 'Link', 'Unlink' ]
	}, {
		name : 'insert',
		items : [ 'Table', 'HorizontalRule' ]
	}, {
		name : 'image',
		items : [ 'Image' ]
	} ];

	config.font_names = '宋体/宋体;黑体/黑体;仿宋/仿宋_GB2312;楷体/楷体_GB2312;隶书/隶书;' + config.font_names;
	config.font_defaultLabel = '宋体';
	config.fontSize_defaultLabel = '13px';

	// 去除默认的P标签
	config.enterMode = CKEDITOR.ENTER_BR;
	config.shiftEnterMode = CKEDITOR.ENTER_BR;

};