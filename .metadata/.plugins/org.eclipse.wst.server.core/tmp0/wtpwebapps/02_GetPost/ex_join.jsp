<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>내가 하는 __ 가입창</title>
</head>
<body>
<h1>회원가입</h1>
<hr>

<form action = "ex_joinOk" method = "post">
이름: <input type = "text" name = "Name" size = "10"> <br>
ID: <input type = "text" name = "Id" size = "10"> <br>
PW: <input type = "password" name = "Pw" size = "20"> <br>
취미: <input type = "checkbox" name = "Hobby" value = "reading"> 독서 &nbsp;
     <input type = "checkbox" name = "Hobby" value = "cooking"> 요리 &nbsp;
     <input type = "checkbox" name = "Hobby" value = "조깅하기"> 조깅 &nbsp;
     <input type = "checkbox" name = "Hobby" value = "수영하기"> 수영 &nbsp; <br>
     
전공: <input type = "radio" name = "Major"  value = "국어국문학과"> 국어국문 &nbsp;
     <input type = "radio" name = "Major" value = "디자인학과"> 디자인 &nbsp;
     <input type = "radio" name = "Major" value = "컴퓨터공학과"> 컴퓨터공학 &nbsp; <br>
     
지역: <select name = "Region">
        <option value = "Seoul"> 서울 </option>
        <option value = "Deajeon"> 대전 </option>
        <option value = "Deagu"> 대구 </option>
        <option value = "Busan"> 부산 </option>
        <option value = "Gwangju"> 광주 </option>
     </select>
<br>
<input type = "submit" value="전송">
<input type = "reset" value = "취소">
</form>



</body>
</html>