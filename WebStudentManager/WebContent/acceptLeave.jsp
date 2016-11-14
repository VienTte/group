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

String sex=codeToString(request.getParameter("sex"));
			if(sex==null)
					sex=" ";
String leavedate=request.getParameter("year")+"-"+request.getParameter("month")+"-"
					+request.getParameter("day");
String depart=codeToString(request.getParameter("depart"));
	if(depart==null)
		 depart=" ";
String address=codeToString(request.getParameter("address"));
		if(address==null)
			address=" ";
String telephone=codeToString(request.getParameter("telephone"));
		if(telephone==null)
			telephone=" ";
String reason=codeToString(request.getParameter("reason"));
		if(reason==null)
			reason=" ";

%>

<%
String sqlString=null;//构造追加记录SQL语句
sqlString="insert into Leave(Sname,Sdept,Ssex,Sleavedate,Saddr,Sphone,Sreason) "
+"values('"+username+"','"+depart + "','"+sex+"','"+leavedate+"','"+address+"','"+telephone+"','"+reason+"')";
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
<title>请假</title></head>
<body>
<center>
<table border="1" width="700">
		<tr>
				<td width="100%" colspan ="2" align="center" >请假申请</td>
		</tr>
		<tr>
			<td width="100%" colspan="2">请假申请成功！</td>
		</tr>
		</table>
					</center>
						</body>
								</html>
		