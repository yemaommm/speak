var partService = {

	listPartOne : function(afDone) {
		remoteServiceCall({
			uri : contextPath + '/services/partOne/list/0',
			ref : {
				callback : afDone
			},
			data : {}
		});
	},

	listPartOneQuestion : function(partOneId, afDone) {
		remoteServiceCall({
			uri : contextPath + '/services/partOneQuestion/list/0?partOneId=' + partOneId,
			ref : {
				callback : afDone
			},
			data : {}
		});
	},

	listPartTwo : function(afDone) {
		remoteServiceCall({
			uri : contextPath + '/services/partTwo/list/0',
			ref : {
				callback : afDone
			},
			data : {}
		});
	},

	listPartThree : function(partTwoId, afDone) {
		remoteServiceCall({
			uri : contextPath + '/services/partThree/list/0?partTwoId=' + partTwoId,
			ref : {
				callback : afDone
			},
			data : {}
		});
	},

	createPart : function(data, afDone) {
		remoteServiceCall({
			uri : contextPath + '/services/part/createself',
			ref : {
				callback : afDone
			},
			data : data
		});
	},

	listPart : function(sn, afDone) {
		remoteServiceCall({
			uri : contextPath + '/services/part/listself/' + sn,
			ref : {
				callback : afDone
			},
			data : {}
		});
	}

};