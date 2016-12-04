// 아이디 중복 확인
	var idCheck;
	
	function checkEvents(){
		var email = $('#email').val();
		var password1 = $('#pw1').val();
		var password2 = $('#pw2').val();
		var name = $('#uname').val();
		idCheck = $('#idcheck').val();
		
		if(email.length == 0) {
			alert('아이디를 입력하세요.');
			$('#email').focus();	 
			return false;
		}
				
		url = "/idcheck.do?id=" + email; 
		cw = screen.availWidth; // 화면 너비
		ch = screen.availHeight; // 화면 높이
		sw = 300; // 띄울 창의 너비
		sh = 200; // 띄울 창의 높이
		ml = (cw-sw)/2; // 가운데 띄우기 위한 창의 x위치
		mt = (ch-sh)/2; // 가운데 띄우기 위한 창의 y위치
		NewWindow = window.open(url, 'idCheck', 'width = '+sw+', height = '+sh+', top = '+mt+', left = '+ml+', toobar = no, scrollbars = auto, menubar = no, status = no, directories = no,');
		idCheck = 1;
	}
	
	
	// 로그인 부분
	function loginform_clearbg(type) {
		if (type == "email") {
			document.loginform.id.style.backgroundImage = '';
		}else if (type == "pw1") {
			document.loginform.pw1.style.backgroundImage = ''
		}
	}
		var r1 = "[0123456789]"; // 숫자 0에서 9까지의 문자 클래스
		var r2= "[^a-zA-Z0-9]"; // 영문자와 숫자를 제외한 모든 문자
		var r3 = "~!@#$%^&*()_+|\/?:\"'<>,.{}[]";

	function signUp() {
		var email = $('#email').val();
		var password1 = $('#pw1').val();
		var password2 = $('#pw2').val();
		var name = $('#uname').val();
		
		if(idCheck=="" || idCheck==2){
			alert('아이디 중복체크를 해주세요.');
			return false;
		}
	
	
		if(password1 != password2){
			alert('비밀번호가 맞지 않습니다.');
			$('#pw2').focus();
			return; 
		}
		
		if( email, password1, password2, name == ""){
			alert('빈 칸을 채워주세요.');
			return; 
		}
	
		if(email.replace(".*[ㄱ-ㅎㅏ-ㅣ가-힣]+.*","") == ""){
			alert("한글 아이디는 입력하실 수 없습니다.");
			email = "";
			$('#email').focus();
	
			return false;
		}
	
		if(email.substr(0,1).match(r1)) {
			alert("아이디의 첫 글자에는 숫자가 올 수 없습니다.");
			email = "";
			$('#email').focus();
	
			return false;
		}
	
		if(email.length < 4 || email.length > 30 ){
			alert('아이디는 4자~30자만 가능합니다.');
			email = "";
			$('#email').focus();
			
			return false;
		}
		
		// 비밀번호 범위
		if(password1.length < 4 || password1.length > 12 || password2.length < 4 || password2.length > 12 ){
			alert('비밀번호는 4자~12자만 가능합니다.');
			password1 = "";
			password2 = "";
			$('#password1').focus();
			
			return false;
		}
		
		$('#join').submit();
	}
