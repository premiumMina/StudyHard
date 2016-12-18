function idfind(){

	name = $('#name').val()
	phoneNum = $('#phoneNum').val()
	if(name, phoneNum== ""){
		alert('빈 칸을 채워주세요.');
		$('#name').focus();
		return false; 
	}
	
	$('#find1').submit();
}

function pw(){
	
	name = $('#name').val()
	phoneNum=$('#phoneNum').val()
	id= $('#id').val()
		
	$('#find2').submit();
}
