<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import= "java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>���� �ϴ� --�ζ�</title>
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
<h1>�ζ� ��ȣ ���� ��� </h1>

<br>
�̹� �� �ζǴ� �Ʒ� ��ȣ�� �����ϴ�.<br>
<% 
list = lotto(list);
out.println(list.toString());
list.removeAll(list);// ���� ���� ��� ����
%>

</body>
</html>