<%@ page contentType="text/html; charset=gb2312"%>
<script  language ="javascript">
function on_submit(){//��֤���ݵĺϷ���
	 	if(form1.username.value ==" "){
	 				alert("�û�������Ϊ��,�������û���!");
	 				form1.username.focus();
	 				return false;
	 	}
 		if(form1.password.value==" "){
 					alert("�û����벻��Ϊ��,����������!");
 					form1.password.focus();
 					return false;
 		}
 		if(form1.repassword.value==""){
 					alert("�û�ȷ�����벻��Ϊ�գ����������룡");
 					form1.repassword.focus();
 					return false;
 		}
 		if(form1.password.value!=form1.repassword.value){
 					alert("������ȷ�����벻ͬ");
 					form1.password.focus();
 					return false;
 		}
 		
 	}
 </script>
 <head>
 <title>�û�ע�����</title>
 </head><body>
 <center>
 <table border ="1" width="700">
 		<tr>
 			<td width="100%" colspan="2" align="center">��ʦע��</td>
 			</tr>
 			<form  action ="acceptTeacherUser.jsp" method="POST"  onsubmit="return on_submit()"  name="form1">
 	
 			<tr>
 					<td width="25%">����(*):</td>
 					<td width="75%"><input type="text" name="username"></td>
 			</tr>
 			<tr>
 					<td>����(*):</td>
 					<td ><input type="password" name="password"></td>
 			</tr>
 			<tr>
 					<td>����һ������(*):</td>
 					<td ><input type="password" name="repassword"></td>
 			</tr>
 			<tr>
 					<td>����(*):</td>
 					<td ><input type="text" name="usertruename"></td>
 			</tr>
 			<tr>
 					<td>�Ա�:</td>
 					<td ><input type="radio"name="sex" value="��" checked>��<input type="radio" value="Ů" name="sex">Ů</td>
 			</tr>
 			<tr>
 					<td>����:</td>
 					<td ><input type="text" name="age"></td>
 			</tr>
 			<tr>
 					<td>����ѧԺ:</td>
 					<td ><input type="text" name="department"></td>
 			</tr>
 			
 			<tr>
 					<td>��ϵ��ַ:</td>
 					<td ><input type="text" name="address"></td>
 			</tr>
 			<tr>
 					<td>��ϵ�绰:</td>
 					<td ><input type="text" name="telephone"></td>
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
 			
 			
 			
 			
 			
 			
 			
 			
 			
 			
 			
 			
 			
 			
 			
 			
 			
 			
 			
 			
 			