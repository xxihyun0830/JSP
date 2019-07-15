<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>내가 하는 __BMI 계산</title>
</head>
<body>

<h3> BMI 계산 </h3>
<hr>
<p>
<form action = "req_BMI_result.jsp" >
  신장 : <input type = "text" name = "height" size = "10"> cm<br>
  체중 : <input type = "text" name = "weight" size = "10"> kg<br>
 
 <input type = "submit" value = "확인">
 <input type = "reset" value = "cancel">
  
</form>
</p>
</body>
</html>