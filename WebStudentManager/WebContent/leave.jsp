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
<title>�������</title>
</head>
<body>
������룡<br>
<form method="POST" action="acceptLeave.jsp" name="form1" onsubmit="return on_submit()">
		��������Ϣ<br>
		��      ��(*):<input type="text" name="username" size="20"><br>
		ר&nbsp;&nbsp;&nbsp;&nbsp;ҵ:<input type="text" name="depart" size="20"><br>
		�Ա�:<input type="radio" value="��" checked name="sex">��<input type="radio" name="sex" value="Ů">
		Ů<br>
		
		�� &nbsp;�� &nbsp;�� &nbsp;�ڣ�<input name="year" size="4" maxlength=4>��
		<select name="month">
					<option value="1" selected>1</option>
					<option value="2">2</option>
					<option value="3" >3</option>
					<option value="4" >4</option>
					<option value="5" >5</option>
					<option value="6" >6</option>
					<option value="7" >7</option>
					<option value="8" >8</option>
					<option value="9">9</option>
					<option value="10" >10</option>
					<option value="11" >11</option>
					<option value="12" >12</option>
					</select>��
					<input name="day" size="3" maxlength=4>��<br>
		��ϵ��ʽ(*):<input name="telephone" maxlength=28><br>
		��ϵ��ַ(*):<input type ="text" name="address" size="20"><br>
		��&nbsp;��&nbsp;ԭ&nbsp;��:<input type ="text" name="reason" size="20"><br>
					<input type="submit" value="�ύ"  name="B1">
</body>
</html>