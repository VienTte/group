<%@ page  contentType="text/html; charset=gb2312"%>
<%@ page import="java.sql.*"  %>
<html>
<body>
<% 	Connection con;
		Statement sql;
		ResultSet rs;
		try{
			con=DriverManager.getConnection("jdbc:sqlserver:"+"//127.0.0.1:1433;DatabaseName=����","sa","905841");
			sql=con.createStatement();
			rs=sql.executeQuery("select * from Student");
			out.print("<Table Border>");
			out.print("<TR><td colspan=8 align=center>ѧ����Ϣ</td></tr>");
			out.print("<TR>");
			out.print("<Td width=50>ѧ��</td>");
			out.print("<Td width=50>����</td>");
			out.print("<Td width=50>�Ա�</td>");
			out.print("<Td width=50>���� </td>");
			out.print("<Td width=50>רҵ </td>");
			out.print("<Td width=50>���� </td>");
			out.print("<Td width=50>��ϵ��ʽ </td>");
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