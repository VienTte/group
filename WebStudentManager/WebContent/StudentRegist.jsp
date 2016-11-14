<%@ page language="java" contentType="text/html; charset=gb2312"%>
<%!
public String codeToString(String str){//处理中文字符串的函数
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
<title>学生签到</title>
</head>
<body>
上课签到表:<br>
<form method="POST" action="acceptStudentRegist.jsp" name="form1" onsubmit="return on_submit()">
		签到人信息<br>
		学      号(*):<input type="text" name="username" size="20"><br>
		姓      名(*):<input type="text" name="usertruename" size="20"><br>
		专&nbsp;&nbsp;&nbsp;&nbsp;业:<input type="text" name="depart" size="20"><br>
		
		
		签 &nbsp;到 &nbsp;日 &nbsp;期：<input name="year" size="4" maxlength=4>年
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
					</select>月
					<input name="day" size="3" maxlength=4>日<br>
		
		授&nbsp;课&nbsp;老&nbsp;师:<input type ="text" name="teacher" size="20"><br>
					<input type="submit" value="提交"  name="B1">
</body>
</html>