function show() {
	peoplenum = $('#peoplenum').val();
	type = $('#type').val();
	$.ajax({
		url : '/ReservationView.rv', /* Controller에서 받아줄 URL */
		type : 'POST', /* GET과 POST의 차이는? */
		data : {
			"peoplenum" : peoplenum,
			"type" : type
		},
		context : this,

		complete : function(data) {
		},
		success : function(data) {
			$("#result").html(data);
		},
		error : function(data) {
			console.log(data);
		}
	})
}
