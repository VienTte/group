<%@ page contentType="text/html;charset=gb2312"%>
<%@ page import="java.sql.*"%>
<%!
		public String codeToString(String str){//���������ַ����ĺ���
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
//���տͻ����ύ�ĺ���
String username=codeToString(request.getParameter("username"));
			if(username==null)//���������趨Ϊ�մ�
			  username=" ";
String password=codeToString(request.getParameter("password"));
			if(password==null)//���������趨Ϊ�մ�
			password=" ";			
String usertruename=codeToString(request.getParameter("usertruename"));
			if(usertruename==null)//���������趨Ϊ�մ�
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
String sqlString=null;//����׷�Ӽ�¼SQL���
sqlString="insert into Student(Sno,Spassword,Sname,Ssex,Sage,Sdept,Saddr,Sphone)"
		+"values('"+username+"','"+password+"','"+usertruename+"','"+sex+"',"+ageint+",'"+depart + "','"+address+"','"+telephone+"')";
%>
<%//ִ��SQL���
try{
		Connection con;
		Statement sql;
		con=DriverManager.getConnection("jdbc:sqlserver:"+"//localhost :1433;DatabaseName=����","sa","905841");
		sql = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_READ_ONLY);
		sql.executeUpdate(sqlString);
		con.close();
}catch(SQLException e1){
	out.print("SQL�쳣! ");
}
%>
<html>
<head>
<title>�û�ע�����</title></head>
<body>
<center>
<table border="1" width="700">
		<tr>
				<td width="100%" colspan ="2" align="center" >ע�ἰ��¼</td>
		</tr>
		<tr>
			<td width="100%" colspan="2">�û�ע��ɹ���</td>
		</tr>
		
			
<form name="form2"  method="POST" action="Lianjie.jsp"   onsubmit="return on_submit2()">
<tr aligin="center">
<td>
�û���¼:
</td>
</tr>
<tr aligin="center">
<td>
�������û���:<input type="text" name="username" size="20">
</td>
</tr>
<tr aligin="center">
<td>
����������:&nbsp;&nbsp;<input type="password" name="password" size="20">
</td>
</tr>
<tr>
 					<td colspan="2" align="center"><input type="submit" value="�ύ">
 							<input type="reset" value="����"></td>
 </tr>
		</form>
				</table>
					</center>
						</body>
								</html>








