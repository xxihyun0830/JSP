<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% String h = request.getParameter("height");
   String w = request.getParameter("weight"); 
   
   double he = Double.valueOf(h);
   double we = Double.valueOf(w);
   //double weight = Double.parseDouble(request.getParameter("weight"));
   // double height = Double.parseDouble(h);
   
   double bmi = we / (he/100 * he/100);
   double res = Math.floor(bmi);
  
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>내가 하는 __BMI 계산</title>
</head>
<body>

<%! 

public String bmires(double bmi){
	String msg="heello";
	if (bmi >= 30.0 ){
		 msg = "비만 시작";
	}else if(bmi>25 && bmi<29.9){
		 msg = "과제중";
	}else if(bmi>18.5 && bmi<24.9){
		 msg = "정상";
	}else if(bmi<18.5){
		 msg = "저체중";
	}
	return msg;
} 

%>
<h2> 체질량 지수 계산 </h2>
<hr>

-키 : <%= he %> cm<br>
-몸무게: <%= we %> kg<br>
<br>
-BMI 지수: <%= res %><br>
-결과 : 당신은 [<%=bmires(res) %>] 입니다.


</body>
</html>