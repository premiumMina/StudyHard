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
		
	if(name, phoneNum,id == ""){
		alert('빈 칸을 채워주세요.');
		$('#name').focus();
		return false;
	}
//		
//
//	var strtxt_residentno1=find2.jumin1.value; //첫 번째 필드
//	var strtxt_residentno2=find2.jumin2.value; //두번째 필드
//
//	var chk=0;
//	var yy=find2.jumin1.value.substring(0, 2); //출생년도 추출
//	var mm=find2.jumin1.value.substring(2, 4); //출생월 추출
//	var dd=find2.jumin1.value.substring(4, 6); //출생일 추출
//	var sex=find2.jumin2.value.substring(0, 1); //성별 추출
//
//
//	if((strtxt_residentno1==111111) || (strtxt_residentno2==1111118)){
//		find2.jumin1.value='';
//		find2.jumin2.value='';
//		alert('주민번호가 올바르지 않습니다.');
//		find2.jumin1.focus();
//		return false;
//	}
//
//	//첫 번째필드가 6자리가 아니거나 출생월일이 날짜 형식에 위배될때
//	if((strtxt_residentno1.length!=6) || (mm<1 || mm>12 || dd<1 || dd>31)){
//		find2.jumin1.value='';
//	    alert('주민번호 첫번째자리 형식이 잘못 되었습니다.');
//	    find2.jumin1.focus();
//	    return false;
//	}
//	//성별형식이 틀리거나 두 번째 필드가 7자리가 아닐때
//	if((sex!=1 && sex!=2 ) || (strtxt_residentno2.length!=7 )){
//		find2.jumin2.value='';
//	    alert('주민번호 두번째자리 형식이 잘못 되었습니다.');
//	    find2.jumin2.focus();
//	    return false;
//	}
//	//주민등록번호 체크에 관한  계산
//	for(i=0; i<=5; i++)
//	    chk=chk+((i%8+2)*parseInt(find2.jumin1.value.substring(i, i+1)));
//	for(i=6; i<=11; i++)
//	    chk=chk+((i%8+2)*parseInt(find2.jumin2.value.substring(i-6, i-5)));
//	chk=(11-(chk%11))%10;
//	if(chk!=strtxt_residentno2.substring(6, 7)){
//		find2.jumin1.value='';
//		find2.jumin2.value='';
//	    alert('주민번호 형식이 잘못 되었습니다.');
//	    find2.jumin1.focus();
//	    return false;
//	}
	///////////////////////////////////////////////////////////////////////////////////////////////////////
	$('#find2').submit();
}
