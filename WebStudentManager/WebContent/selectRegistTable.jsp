<%@ page  contentType="text/html; charset=gb2312"%>
<%@ page import="java.sql.*"  %>
<html>
<body>
<% 	Connection con;
		Statement sql;
		ResultSet rs;
		try{
			con=DriverManager.getConnection("jdbc:sqlserver:"+
		"//localhost:1433;DatabaseName=管理","sa","905841");
			sql=con.createStatement();
			rs=sql.executeQuery("select * from Regist");
			out.print("<Table Border>");
			out.print("<TR><td colspan=8 align=center>已签到信息表</td></tr>");
			out.print("<TR>");
			out.print("<Td width=50>学号</td>");
			out.print("<Td width=50>姓名</td>");
			out.print("<Td width=50>专业</td>");
			out.print("<Td width=80>签到日期</td>");
			out.print("<Td width=80>授课老师 </td>");
			
			out.print("</TR>");
			while(rs.next()){
						out.print("<TR>");
						out.print("<TD>"+rs.getString("Sno")+"</TD>");
						out.print("<TD>"+rs.getString("Sname")+"</TD>");	
						out.print("<TD>"+rs.getString("Sdept")+"</TD>");
						out.print("<TD>"+rs.getString("Sregistdate")+"</TD>");
						out.print("<TD>"+rs.getString("Steacher")+"</TD>");
			}
			out.print("<Table>");
			con.close();
		}catch(SQLException e1) {
					out.print(e1);
		}
%>
</body>
</html>