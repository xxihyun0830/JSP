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
<title>���� �ϴ� __BMI ���</title>
</head>
<body>

<%! 

public String bmires(double bmi){
	String msg="heello";
	if (bmi >= 30.0 ){
		 msg = "�� ����";
	}else if(bmi>25 && bmi<29.9){
		 msg = "������";
	}else if(bmi>18.5 && bmi<24.9){
		 msg = "����";
	}else if(bmi<18.5){
		 msg = "��ü��";
	}
	return msg;
} 

%>
<h2> ü���� ���� ��� </h2>
<hr>

-Ű : <%= he %> cm<br>
-������: <%= we %> kg<br>
<br>
-BMI ����: <%= res %><br>
-��� : ����� [<%=bmires(res) %>] �Դϴ�.


</body>
</html>