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
<title>ѧ��ǩ��</title>
</head>
<body>
�Ͽ�ǩ����:<br>
<form method="POST" action="acceptStudentRegist.jsp" name="form1" onsubmit="return on_submit()">
		ǩ������Ϣ<br>
		ѧ      ��(*):<input type="text" name="username" size="20"><br>
		��      ��(*):<input type="text" name="usertruename" size="20"><br>
		ר&nbsp;&nbsp;&nbsp;&nbsp;ҵ:<input type="text" name="depart" size="20"><br>
		
		
		ǩ &nbsp;�� &nbsp;�� &nbsp;�ڣ�<input name="year" size="4" maxlength=4>��
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
		
		��&nbsp;��&nbsp;��&nbsp;ʦ:<input type ="text" name="teacher" size="20"><br>
					<input type="submit" value="�ύ"  name="B1">
</body>
</html>