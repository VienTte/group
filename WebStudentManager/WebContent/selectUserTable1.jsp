<%@ page  contentType="text/html; charset=gb2312"%>
<%@ page import="java.sql.*"  %>
<html>
<body>
<% 	Connection con;
		Statement sql;
		ResultSet rs;
		try{
			con=DriverManager.getConnection("jdbc:sqlserver:"+"//localhost:1433;DatabaseName=����","sa","905841");
			sql=con.createStatement();
			rs=sql.executeQuery("select * from Course");
			out.print("<Table Border>");
			out.print("<TR><td colspan=8 align=center>�α���Ϣ</td></tr>");
			out.print("<TR>");
			out.print("<Td width=50>רҵ</td>");
			out.print("<Td width=50>�γ̺�</td>");
			out.print("<Td width=100>�γ���</td>");
			out.print("<Td width=50>ѧ�� </td>");
			out.print("<Td width=50>�Ͽ�ʱ�� </td>");
			out.print("<Td width=50>�Ͽεص� </td>");
			out.print("<Td width=80>�ο���ʦ </td>");
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