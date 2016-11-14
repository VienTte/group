<%@ page contentType="text/html;charset=gb2312"%>
<%@ page import="java.sql.*"%>
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

<%
//接收客户端提交的函数


String username=codeToString(request.getParameter("username"));
			if(username==null)//无内容则设定为空串
			  username=" ";
String usertruename=codeToString(request.getParameter("usertruename"));
			if(usertruename==null)//无内容则设定为空串
			  usertruename=" ";



String depart=codeToString(request.getParameter("depart"));
	if(depart==null)
		 depart=" ";
	
String registdate=request.getParameter("year")+"-"+request.getParameter("month")+"-"
			+request.getParameter("day");

String teacher=codeToString(request.getParameter("teacher"));
		if(teacher==null)
			teacher=" ";

%>

<%
String sqlString=null;//构造追加记录SQL语句
sqlString="insert into Regist(Sno,Sname,Sdept,Sregistdate,Steacher) "
+"values('"+username+"','"+usertruename+"','"+depart + "','"+registdate+"','"+teacher+"')";
%>
<%//执行SQL语句
try{
		Connection con;
		Statement sql;
		con=DriverManager.getConnection("jdbc:sqlserver:"+"//localhost :1433;DatabaseName=管理",
				"sa","905841");
		sql = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_READ_ONLY);
		sql.executeUpdate(sqlString);
		con.close();
}catch(SQLException e1){
	out.print("SQL异常! ");
}
%>

<head>
<title>签到</title></head>
<body>
<center>
<table border="1" width="700">
		<tr>
				<td width="100%" colspan ="2" align="center" >签到信息表</td>
		</tr>
		<tr>
			<td width="100%" colspan="2">已签到！</td>
		</tr>
		</table>
					</center>
						</body>
								</html>
		