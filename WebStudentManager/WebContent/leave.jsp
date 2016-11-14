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
<title>请假申请</title>
</head>
<body>
请假申请！<br>
<form method="POST" action="acceptLeave.jsp" name="form1" onsubmit="return on_submit()">
		申请人信息<br>
		姓      名(*):<input type="text" name="username" size="20"><br>
		专&nbsp;&nbsp;&nbsp;&nbsp;业:<input type="text" name="depart" size="20"><br>
		性别:<input type="radio" value="男" checked name="sex">男<input type="radio" name="sex" value="女">
		女<br>
		
		请 &nbsp;假 &nbsp;日 &nbsp;期：<input name="year" size="4" maxlength=4>年
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
		联系方式(*):<input name="telephone" maxlength=28><br>
		联系地址(*):<input type ="text" name="address" size="20"><br>
		请&nbsp;假&nbsp;原&nbsp;因:<input type ="text" name="reason" size="20"><br>
					<input type="submit" value="提交"  name="B1">
</body>
</html>