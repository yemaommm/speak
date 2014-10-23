<div id="${id}">
	<div id="${id}_swf"></div>
</div>

<script>
	var uploadServer = "${uploadServer}";
	var downloadUrl = "${downloadUrl}";
	$(function() {
		createSwfUpload(
			'${id}_swf',
			'${width}',
			'${height}',
			{
				refid : "${id}",
				catalog : "${catalog}",
				label : "${label}",
				service : "${uploadServer}/upload",
				maxSize : "${maxSize}",
				success : "${success}",
				error : "${error}",
				prepare : "${prepare}",
				progress : "${progress}",
				fileExtFilter : "${fileExtFilter}",
				fileNameFilter : "${fileNameFilter}"
			}
		);
	});
</script>