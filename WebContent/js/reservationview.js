function show() {
	peoplenum = $('#peoplenum').val();
	type = $('#type').val();
	usingdate = $('#datepicker').val();

	var r1 = "[0123456789]";
	if (!peoplenum.substr(0, 1).match(r1)) {
		alert("올바른 값을 입력해주세요.");
		$('#peoplenum').focus();
	} else {

		$.ajax({
			url : '/ReservationView.rv',
			type : 'POST',
			data : {
				"peoplenum" : peoplenum,
				"type" : type,
				"usingdate" : usingdate
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

function send() {
	id = $('#id').val();
	$.ajax({
		url : '/MyReservation.rv',
		type : 'POST',
		data : {
			"id" : id
		},
		context : this,

		complete : function(data) {
		},
		success : function(data) {
		},
		error : function(data) {
			console.log(data);
		}
	})
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

function adminOK() {
	
	num = event.target.id;
	obj = event.target.closest('tr').children[4].textContent;
	target =  event.target.closest('tr').children[4];
	$.ajax({
		url : '/ReservationUpdate2.rv',
		type : 'POST', 
		data : {
			"num" : num,
			"obj" : obj
 		},
		context : this,

		complete : function(data) {
			
		},
		success : function(data) {
			if (target.textContent == 'approval') {
				target.textContent = 'cancel';
			} else if (target.textContent == 'waiting') {
				target.textContent = 'true';
			}
		},
		error : function(data) {
		}
	})
}


