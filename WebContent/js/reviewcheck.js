function check(type) {
	var name = $('#name').val();
	var subject = $('#subject').val();
	var content = $('#content').val();
	if (name == "null" || name=="") {
		alert('로그인 해주세요.');
		location.href = '/main.do';
		return false;
	}

	if (subject == "" || content == "") {
		alert('빈 칸을 채워주세요.');
		return;
	}
	
	$('#listup').submit();
}