<%@ page language="java" contentType="text/html; charset=gb2312"%>
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


<head>
 <title>�α�����Ϣ</title>
 </head><body>
 <center>
 <table border ="1" width="700">
 		<tr>
 			<td width="100%" colspan="2" align="center">�α��ύ��Ϣ</td>
 			</tr>
 			<form  action ="acceptCourseTable.jsp" method="POST"  onsubmit="return on_submit()"  name="form1">
 	
 			<tr>
 					<td width="25%">רҵ(*):</td>
 					<td width="75%"><input type="text" name="depart" size="20"></td>
 			</tr>
 			<tr>
 					<td>�γ̺�(*):</td>
 					<td ><input type="text" name="Cnumber" size="20"></td>
 			</tr>
 			<tr>
 					<td>�γ���(*):</td>
 					<td ><input type="text" name="Cname" size="20"></td>
 			</tr>
 			<tr>
 					<td>ѧ��:</td>
 					<td ><input type="text"name="Credit"size="20" ></td>
 			</tr>
 			<tr>
 					<td>�Ͽ�ʱ��:</td>
 					<td ><input type ="text" name="Time" size="20"></td>
 			</tr>
 			<tr>
 					<td>�Ͽεص�:</td>
 					<td ><input type ="text" name="address" size="20"></td>
 			</tr>
 			<tr>
 					<td>�ο���ʦ:</td>
 					<td ><input type ="text" name="teacher" size="20"></td>
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
 			
 			
 			
 			
 			
 			
 			




