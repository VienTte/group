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
<title>老师用户登录成功</title>
</head>
<body>
老师用户登录成功！<br>

<%//页面重定向程序片
String url;
url=request.getParameter("goaddress");
if(url!=null) response.sendRedirect(url);%>

<form name="form1" action="Tiaozhuan.jsp" method="post">
登录
<select name="goaddress" onchange="javascript :form1.submit()">
				<option value="">=============请选择============</option>
				<option value="http://localhost:8080/WebStudentManager/CourseTable.jsp">编辑课表</option>
				<option value="http://localhost:8080/WebStudentManager/selectUserTable1.jsp">课表信息</option>
				<option value="http://localhost:8080/WebStudentManager/selectUserTable2.jsp">学生信息</option>
				<option value="http://localhost:8080/WebStudentManager/selectRegistTable.jsp">已签到信息表</option>
				<option value="http://localhost:8080/WebStudentManager/selectLeaveTable.jsp">请假申请汇总表</option>
				
</select>
</form>
</body>
</html>