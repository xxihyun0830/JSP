<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>가입창_내가 하는 실습</title>
</head>
<body>
<h2>회원가입</h2> <hr>

<form action = "MappingJoinOk" method = "get">
이름 : <input type = "text" name = "name" size= 15 > <br>
ID : <input type = "text" name = "id" size= 15> <br>
PW : <input type = "password" name = "pw" size = 15> <br>
취미 : <input type = "checkbox" name = "hobby" value = "reading"> 독서 
      <input type = "checkbox" name = "hobby" value = "cooking"> 요리
      <input type = "checkbox" name = "hobby" value = "jogging"> 조깅 
      <input type = "checkbox" name = "hobby" value = "swimming"> 수영 <br>
전공 : <input type = "radio" name = "major" value = "DataTech"> 데이터
      <input type = "radio" name = "major" value = "응용"> 응용
      <input type = "radio" name = "major" value = "design"> 디자인
      <input type = "radio" name = "major" value="statics"> 통계 <br>
지역 : <select name = "region">
      <option value = "Seoul"> 서울
      <option value = "Deagu"> 대구
      <option value = "Gwangju"> 광주
      <option value = "Busan"> 부산
</select> <br>

<input type = "submit" value = "전송">
<input type = "submit" value = "취소">
</form>



</body>
</html>