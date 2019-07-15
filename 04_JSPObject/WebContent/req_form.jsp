<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>내가 하는 request 객체</title>
</head>
<body>

<p>
<h1> JSP Object를 이용해서 회원 가입하기 </h1>
</p>
<hr>
<p>
<form action = "req_formOk.jsp">
이름: <input type = "text" name = "Name" size = "15"> <br>
ID: <input type = "text" name = "Id" size = "15"> <br>
PW: <input type = "password" name = "Pw" size = "15"> <br>
취미:
 <input type = "checkbox" name = "Hobby" value = "독서"> reading &nbsp;
 <input type = "checkbox" name = "Hobby" value = "요리"> cooking &nbsp;
 <input type = "checkbox" name = "Hobby" value = "먹기"> eating &nbsp;
 <input type = "checkbox" name = "Hobby" value = "수영"> swimming &nbsp;
<br>

전공: 
 <input type = "radio" name = "Major" value = "국어국문"> kor &nbsp;
 <input type = "radio" name = "Major" value = "디자인"> design &nbsp;
 <input type = "radio" name = "Major" value = "컴퓨터공학"> computer Engineering &nbsp;
<br>

지역: <select name = "Region">
 <option value = "서울"> Seoul</option>
 <option value = "대전"> Deajeon</option>
 <option value = "대구"> Deagu </option>
 <option value = "경기"> Gyeonggi</option>
 <option value = "광주"> Gwangju</option>
 <option value = "제주"> Jeju</option>

</select>
</p >

<p align = "center">
<input type = "submit" value = "전송">
<input type = "reset" value = "취소">

</form>
</p>

</body>
</html>