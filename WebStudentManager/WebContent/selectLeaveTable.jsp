<%@ page  contentType="text/html; charset=gb2312"%>
<%@ page import="java.sql.*"  %>
<html>
<body>
<% 	Connection con;
		Statement sql;
		ResultSet rs;
		try{
			con=DriverManager.getConnection("jdbc:sqlserver:"+
		"//localhost:1433;DatabaseName=����","sa","905841");
			sql=con.createStatement();
			rs=sql.executeQuery("select * from Leave");
			out.print("<Table Border>");
			out.print("<TR><td colspan=8 align=center>�����Ϣ</td></tr>");
			out.print("<TR>");
			out.print("<Td width=50>����</td>");
			out.print("<Td width=50>רҵ</td>");
			out.print("<Td width=80>�Ա�</td>");
			out.print("<Td width=80>�������</td>");
			out.print("<Td width=50>��ϵ��ַ </td>");
			out.print("<Td width=50>��ϵ�绰 </td>");
			out.print("<Td width=80>���ԭ��</td>");
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