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
			rs=sql.executeQuery("select * from Leave");
			out.print("<Table Border>");
			out.print("<TR><td colspan=8 align=center>请假信息</td></tr>");
			out.print("<TR>");
			out.print("<Td width=50>姓名</td>");
			out.print("<Td width=50>专业</td>");
			out.print("<Td width=80>性别</td>");
			out.print("<Td width=80>请假日期</td>");
			out.print("<Td width=50>联系地址 </td>");
			out.print("<Td width=50>联系电话 </td>");
			out.print("<Td width=80>请假原因</td>");
			out.print("</TR>");
			while(rs.next()){
						out.print("<TR>");
						out.print("<TD>"+rs.getString("Sname")+"</TD>");	
						out.print("<TD>"+rs.getString("Sdept")+"</TD>");
						out.print("<TD>"+rs.getString("Ssex")+"</TD>");
						out.print("<TD>"+rs.getString("Sleavedate")+"</TD>");
						out.print("<TD>"+rs.getString("Saddr")+"</TD>");
						out.print("<TD>"+rs.getString("Sphone")+"</TD>");
						out.print("<TD>"+rs.getString("Sreason")+"</TD>");
			}
			out.print("<Table>");
			con.close();
		}catch(SQLException e1) {
					out.print(e1);
		}
%>
</body>
</html>