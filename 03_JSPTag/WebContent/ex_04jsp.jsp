<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import = "java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>���� �ϴ�--����ĳ���� </title>
</head>
<body>
<h1>����� ����</h1>
<br>

<%! String [] role = {"������","�˻�","����","����","����ΰ�"};
    ArrayList<String> list = new ArrayList<String>();
    int player = 0;
   %>

<% int rr = (int)(Math.random()*5);
   list.add(role[rr]);

   %>
<p>
��ſ��� �ο��� ������ [ <%= role[rr] %> ] �Դϴ�.<br>

<%   
for(int i = 0;i< list.size();i++){
	if(role[rr].equals(list.get(i))){
		   player++;
	   }
}
 %>
���� �׷쿡 ��Ű� ���� ������ ���� �÷��̾�� [<%=player %>]�� �Դϴ�.
</p>

<p>
���� �׷� ����
<%= list.toString() %><br>
<%= list.size() %>�� ���� ��...
</p>

</body>
</html>