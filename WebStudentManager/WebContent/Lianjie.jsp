<%@ page language="java" contentType="text/html; charset=gb2312"%>
<%!
public String codeToString(String str){//���������ַ����ĺ���
	String s=str;
	try{
		byte tempB[]=s.getBytes("ISO-8859-1");
		s=new String(tempB);
		return s;
	}catch(Exception e){
		return s;
	}
}
%>
<html>
<head>
<title>ѧ���û���¼�ɹ�</title>
</head>
<body>
ѧ���û���¼�ɹ���<br>

<%//ҳ���ض������Ƭ
String url;
url=request.getParameter("goaddress");
if(url!=null) response.sendRedirect(url);%>

<form name="form1" action="Lianjie.jsp" method="post">
��¼
<select name="goaddress" onchange="javascript :form1.submit()">
				<option value="">=============��ѡ��============</option>
				<option value="http://localhost:8080/WebStudentManager/selectUserTable1.jsp">�α���Ϣ</option>
				<option value="http://localhost:8080/WebStudentManager/selectUserTable2.jsp">ѧ����Ϣ</option>
				<option value="http://localhost:8080/WebStudentManager/StudentRegist.jsp">�Ͽ�ǩ����</option>
				<option value="http://localhost:8080/WebStudentManager/leave.jsp">ѧ���������</option>
				
				
</select>
</form>
</body>
</html>