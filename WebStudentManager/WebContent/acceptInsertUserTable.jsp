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
String username=codeToString(request.getParameter("username"));
			if(username==null)//无内容则设定为空串
			  username=" ";
String password=codeToString(request.getParameter("password"));
			if(password==null)//无内容则设定为空串
			password=" ";			
String usertruename=codeToString(request.getParameter("usertruename"));
			if(usertruename==null)//无内容则设定为空串
			usertruename=" ";
String sex=codeToString(request.getParameter("sex"));
			if(sex==null)
					sex=" ";
String age=codeToString(request.getParameter("age"));
int ageint;
try{
		ageint=Integer.parseInt(age.trim());
}catch(Exception e){
	ageint=0;
}

String depart=codeToString(request.getParameter("depart"));
	if(depart==null)
		 depart=" ";
String address=codeToString(request.getParameter("address"));
		if(address==null)
			address=" ";
String telephone=codeToString(request.getParameter("telephone"));
		if(telephone==null)
			telephone=" ";

%>

<%
String sqlString=null;//构造追加记录SQL语句
sqlString="insert into Student(Sno,Spassword,Sname,Ssex,Sage,Sdept,Saddr,Sphone)"
		+"values('"+username+"','"+password+"','"+usertruename+"','"+sex+"',"+ageint+",'"+depart + "','"+address+"','"+telephone+"')";
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
<head>
<title>用户注册程序</title></head>
<body>
<center>
<table border="1" width="700">
		<tr>
				<td width="100%" colspan ="2" align="center" >注册及登录</td>
		</tr>
		<tr>
			<td width="100%" colspan="2">用户注册成功！</td>
		</tr>
		
			
<form name="form2"  method="POST" action="Lianjie.jsp"   onsubmit="return on_submit2()">
<tr aligin="center">
<td>
用户登录:
</td>
</tr>
<tr aligin="center">
<td>
请输入用户名:<input type="text" name="username" size="20">
</td>
</tr>
<tr aligin="center">
<td>
请输入密码:&nbsp;&nbsp;<input type="password" name="password" size="20">
</td>
</tr>
<tr>
 					<td colspan="2" align="center"><input type="submit" value="提交">
 							<input type="reset" value="重输"></td>
 </tr>
		</form>
				</table>
					</center>
						</body>
								</html>








