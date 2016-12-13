function show() {
	peoplenum = $('#peoplenum').val();
	type = $('#type').val();
	var r1 = "[0123456789]";
	if (!peoplenum.substr(0, 1).match(r1)) {
		alert("올바른 값을 입력해주세요.");
		$('#peoplenum').focus();
	} else {

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
	
}
function sendReservation() {
	peoplenum = $('#peoplenum').val()
	type = $('#type').val();
	room = $('#room').val();
	startusingtime = $('#startusingtime').val();
	endusingtime = $('#endusingtime').val();
	state = $('#state').val();
	price = $('#price').val();

	$('#reservationform').submit();
}