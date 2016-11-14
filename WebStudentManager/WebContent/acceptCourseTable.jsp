<%@ page contentType="text/html;charset=gb2312"%>
<%@ page import="java.sql.*"%>
<%!
		public String codeToString(String str){//处理中文字符串的函数
			String s=str;
			try{
			byte tempB[]=s.getBytes("ISO-8859-1");
			s=new String(tempB);
			return s;
			}catch (Exception e){
				return s;
			}
}
%>

<%
//接收客户端提交的函数
String depart=codeToString(request.getParameter("depart"));
	if(depart==null)
		 depart=" ";

String Cnumber=codeToString(request.getParameter("Cnumber"));
			if(Cnumber==null)//无内容则设定为空串
				Cnumber=" ";
String Cname=codeToString(request.getParameter("Cname"));
			if(Cname==null)//无内容则设定为空串
				Cname=" ";		
String Credit=codeToString(request.getParameter("Credit"));
			int CreditInt;
			try{
				CreditInt=Integer.parseInt(Credit.trim());
			}catch(Exception e){
				CreditInt=0;
			}
String address=codeToString(request.getParameter("address"));
			if(address==null)//无内容则设定为空串
				address=" ";
String Time=codeToString(request.getParameter("Time"));
			if(Time==null)
				Time=" ";
String teacher=codeToString(request.getParameter("teacher"));
			if(teacher==null)
				teacher=" ";


%>

<%
String sqlString=null;//构造追加记录SQL语句
sqlString="insert into Course(Cdpt,Cno,Cna,Cdit,Ctime,Caddr,Cteacher)"
		+"values('"+depart+"','"+Cnumber+"','"+Cname+"',"+CreditInt+",'"+Time+"','"+address+"','"+teacher+"')";
%>
<%//执行SQL语句
try{
		Connection con;
		Statement sql;
		con=DriverManager.getConnection("jdbc:sqlserver:"+"//localhost :1433;DatabaseName=管理","sa","905841");
		sql = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_READ_ONLY);
		sql.executeUpdate(sqlString);
		con.close();
}catch(SQLException e1){
	out.print("SQL异常! ");
}
%>
<html>
<body>
<center>
<table border="1" width="700">
		<tr>
			<td width="100%" colspan="2">课表发布成功！</td>
		</tr>
