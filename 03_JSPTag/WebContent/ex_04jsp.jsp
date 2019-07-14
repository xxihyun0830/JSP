<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import = "java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>내가 하는--게임캐릭터 </title>
</head>
<body>
<h1>당신의 역할</h1>
<br>

<%! 
  ArrayList<String> list = new ArrayList<String>();
%>

<% int rr = (int)(Math.random()*5);
   String [] role = {"마법사","검사","전사","도둑","기계인간"};
   String chosenrole = role[rr];
   list.add(chosenrole);
   int player = 0;
%>

<p>
당신에게 부여된 역할은 [ <%= chosenrole %> ] 입니다.<br>

<%
//python으로 치면 for i in list와 같다!! 자주 써먹을 듯
for(String e: list){
	if(chosenrole.equals(e)){
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