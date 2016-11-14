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
<title>学生用户登录成功</title>
</head>
<body>
学生用户登录成功！<br>

<%//页面重定向程序片
String url;
url=request.getParameter("goaddress");
if(url!=null) response.sendRedirect(url);%>

<form name="form1" action="Lianjie.jsp" method="post">
登录
<select name="goaddress" onchange="javascript :form1.submit()">
				<option value="">=============请选择============</option>
				<option value="http://localhost:8080/WebStudentManager/selectUserTable1.jsp">课表信息</option>
				<option value="http://localhost:8080/WebStudentManager/selectUserTable2.jsp">学生信息</option>
				<option value="http://localhost:8080/WebStudentManager/StudentRegist.jsp">上课签到表</option>
				<option value="http://localhost:8080/WebStudentManager/leave.jsp">学生请假申请</option>
				
				
</select>
</form>
</body>
</html>