<%@ page contentType="text/html;charset=gb2312"%>
<%@ page import="java.sql.*"%>
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

<%
//���տͻ����ύ�ĺ���


String username=codeToString(request.getParameter("username"));
			if(username==null)//���������趨Ϊ�մ�
			  username=" ";
String usertruename=codeToString(request.getParameter("usertruename"));
			if(usertruename==null)//���������趨Ϊ�մ�
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
String sqlString=null;//����׷�Ӽ�¼SQL���
sqlString="insert into Regist(Sno,Sname,Sdept,Sregistdate,Steacher) "
+"values('"+username+"','"+usertruename+"','"+depart + "','"+registdate+"','"+teacher+"')";
%>
<%//ִ��SQL���
try{
		Connection con;
		Statement sql;
		con=DriverManager.getConnection("jdbc:sqlserver:"+"//localhost :1433;DatabaseName=����",
				"sa","905841");
		sql = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_READ_ONLY);
		sql.executeUpdate(sqlString);
		con.close();
}catch(SQLException e1){
	out.print("SQL�쳣! ");
}
%>

<head>
<title>ǩ��</title></head>
<body>
<center>
<table border="1" width="700">
		<tr>
				<td width="100%" colspan ="2" align="center" >ǩ����Ϣ��</td>
		</tr>
		<tr>
			<td width="100%" colspan="2">��ǩ����</td>
		</tr>
		</table>
					</center>
						</body>
								</html>
		