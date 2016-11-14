<%@ page  contentType="text/html; charset=gb2312"%>
<%@ page import="java.sql.*"  %>
<html>
<body>
<% 	Connection con;
		Statement sql;
		ResultSet rs;
		try{
			con=DriverManager.getConnection("jdbc:sqlserver:"+"//localhost:1433;DatabaseName=管理","sa","905841");
			sql=con.createStatement();
			rs=sql.executeQuery("select * from Course");
			out.print("<Table Border>");
			out.print("<TR><td colspan=8 align=center>课表信息</td></tr>");
			out.print("<TR>");
			out.print("<Td width=50>专业</td>");
			out.print("<Td width=50>课程号</td>");
			out.print("<Td width=100>课程名</td>");
			out.print("<Td width=50>学分 </td>");
			out.print("<Td width=50>上课时间 </td>");
			out.print("<Td width=50>上课地点 </td>");
			out.print("<Td width=80>任课老师 </td>");
			out.print("</TR>");
			while(rs.next()){
						out.print("<TR>");
						
						out.print("<TD>"+rs.getString("Cdpt")+"</TD>");
						out.print("<TD>"+rs.getString("Cno")+"</TD>");
						out.print("<TD>"+rs.getString("Cna")+"</TD>");
						out.print("<TD>"+rs.getInt("Cdit")+"</TD>");
						out.print("<TD>"+rs.getString("Ctime")+"</TD>");	
						out.print("<TD>"+rs.getString("Caddr")+"</TD>");
						out.print("<TD>"+rs.getString("Cteacher")+"</TD>");
			}
			out.print("<Table>");
			con.close();
		}catch(SQLException e1) {
					out.print(e1);
		}
%>
</body>
</html>