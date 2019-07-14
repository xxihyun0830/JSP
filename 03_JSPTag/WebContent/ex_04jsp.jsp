<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import = "java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>내가 하는--게임캐릭터 </title>
</head>
<body>
<h1>당신의 역할</h1>
<br>

<%! String [] role = {"마법사","검사","전사","도둑","기계인간"};
    ArrayList<String> list = new ArrayList<String>();
    int player = 0;
   %>

<% int rr = (int)(Math.random()*5);
   list.add(role[rr]);

   %>
<p>
당신에게 부여된 역할은 [ <%= role[rr] %> ] 입니다.<br>

<%   
for(int i = 0;i< list.size();i++){
	if(role[rr].equals(list.get(i))){
		   player++;
	   }
}
 %>
현재 그룹에 당신과 같은 역할을 가진 플레이어는 [<%=player %>]명 입니다.
</p>

<p>
현재 그룹 구성
<%= list.toString() %><br>
<%= list.size() %>명 참가 중...
</p>

</body>
</html>