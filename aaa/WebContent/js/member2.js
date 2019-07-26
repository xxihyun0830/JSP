function login_infoConfirm(){
	if(document.login_form.id.value.length == 0){
		alert("아이디를 입력하세요");
		login_form.id.focus(); //마우스 커서를 자동으로
		return ;
	}
	if(document.login_form.id.value.length < 5){
		alert("아이디는 5자 이상! ");
		login_form.id.focus(); //마우스 커서를 자동으로
		return;
	}
	if(document.login_form.pw.value.length == 0){
		alert("비밀번호를 입력하세요");
		login_form.pw.focus(); //마우스 커서를 자동으로
		return;
	}
	document.login_form.submit();
	
}