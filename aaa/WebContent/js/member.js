function infoConfirm(){
	if(document.reg_form.id.value.length == 0){
		alert("아이디를 입력하세요");
		reg_form.id.focus(); //마우스 커서를 자동으로
		return ;
	}
	if(document.reg_form.id.value.length < 5){
		alert("아이디는 5자 이상! ");
		reg_form.id.focus(); //마우스 커서를 자동으로
		return;
	}
	if(document.reg_form.pw.value.length == 0){
		alert("비밀번호를 입력하세요");
		reg_form.pw.focus(); //마우스 커서를 자동으로
		return;
	}
	if(document.reg_form.pw.value != document.reg_form.pwcheck.value){
		alert("비밀번호가 일치하지 않아! ");
		reg_form.pwcheck.focus(); //마우스 커서를 자동으로
		return;
	}
	if(document.reg_form.name.value.length == 0){
		alert("이름을 입력하세요");
		reg_form.name.focus(); //마우스 커서를 자동으로
		return;
	}if(document.reg_form.email.value.length == 0){
		alert("메일을 입력하세요");
		reg_form.email.focus(); //마우스 커서를 자동으로
		return;
	}
	
	document.reg_form.submit();
	
}