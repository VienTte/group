<%@ page  contentType="text/html; charset=gb2312"%>
<%@ page import="java.sql.*"  %>
<html>
<body>
<% 	Connection con;
		Statement sql;
		ResultSet rs;
		try{
			con=DriverManager.getConnection("jdbc:sqlserver:"+"//127.0.0.1:1433;DatabaseName=管理","sa","905841");
			sql=con.createStatement();
			rs=sql.executeQuery("select * from Student");
			out.print("<Table Border>");
			out.print("<TR><td colspan=8 align=center>学生信息</td></tr>");
			out.print("<TR>");
			out.print("<Td width=50>学号</td>");
			out.print("<Td width=50>姓名</td>");
			out.print("<Td width=50>性别</td>");
			out.print("<Td width=50>年龄 </td>");
			out.print("<Td width=50>专业 </td>");
			out.print("<Td width=50>籍贯 </td>");
			out.print("<Td width=50>联系方式 </td>");
			out.print("</TR>");
			while(rs.next()){
						out.print("<TR>");
						out.print("<TD>"+rs.getString("Sno")+"</TD>");
						out.print("<TD>"+rs.getString("Sname")+"</TD>");	
						out.print("<TD>"+rs.getString("Ssex")+"</TD>");
						out.print("<TD>"+rs.getInt("Sage")+"</TD>");
						out.print("<TD>"+rs.getString("Sdept")+"</TD>");
						out.print("<TD>"+rs.getString("Saddr")+"</TD>");
						out.print("<TD>"+rs.getString("Sphone")+"</TD>");
			}
			out.print("<Table>");
			con.close();
		}catch(SQLException e1) {
					out.print(e1);
		}
%>
</body>
</html>