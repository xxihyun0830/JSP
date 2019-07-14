<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import= "java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>내가 하는 --로또</title>
</head>
<body>
<%! ArrayList<Integer> list = new ArrayList<Integer>(); 

    public ArrayList<Integer> lotto(ArrayList<Integer> list ){
    	for(int i=0; i<6;i++){
    		int r = (int)(Math.random()*100)+1; 
    		list.add(i,r);
    	}
    	return list;
    }
%>
<h1>로또 번호 생성 결과 </h1>

<br>
이번 주 로또는 아래 번호와 같습니다.<br>
<% 
list = lotto(list);
out.println(list.toString());
list.removeAll(list);// 이전 내용 모두 삭제
%>

</body>
</html>