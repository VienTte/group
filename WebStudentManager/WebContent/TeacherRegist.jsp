<%@ page contentType="text/html; charset=gb2312"%>
<script  language ="javascript">
function on_submit(){//验证数据的合法性
	 	if(form1.username.value ==" "){
	 				alert("用户名不能为空,请输入用户名!");
	 				form1.username.focus();
	 				return false;
	 	}
 		if(form1.password.value==" "){
 					alert("用户密码不能为空,请输入密码!");
 					form1.password.focus();
 					return false;
 		}
 		if(form1.repassword.value==""){
 					alert("用户确认密码不能为空，请输入密码！");
 					form1.repassword.focus();
 					return false;
 		}
 		if(form1.password.value!=form1.repassword.value){
 					alert("密码与确认密码不同");
 					form1.password.focus();
 					return false;
 		}
 		
 	}
 </script>
 <head>
 <title>用户注册程序</title>
 </head><body>
 <center>
 <table border ="1" width="700">
 		<tr>
 			<td width="100%" colspan="2" align="center">老师注册</td>
 			</tr>
 			<form  action ="acceptTeacherUser.jsp" method="POST"  onsubmit="return on_submit()"  name="form1">
 	
 			<tr>
 					<td width="25%">工号(*):</td>
 					<td width="75%"><input type="text" name="username"></td>
 			</tr>
 			<tr>
 					<td>密码(*):</td>
 					<td ><input type="password" name="password"></td>
 			</tr>
 			<tr>
 					<td>再输一次密码(*):</td>
 					<td ><input type="password" name="repassword"></td>
 			</tr>
 			<tr>
 					<td>姓名(*):</td>
 					<td ><input type="text" name="usertruename"></td>
 			</tr>
 			<tr>
 					<td>性别:</td>
 					<td ><input type="radio"name="sex" value="男" checked>男<input type="radio" value="女" name="sex">女</td>
 			</tr>
 			<tr>
 					<td>年龄:</td>
 					<td ><input type="text" name="age"></td>
 			</tr>
 			<tr>
 					<td>所在学院:</td>
 					<td ><input type="text" name="department"></td>
 			</tr>
 			
 			<tr>
 					<td>联系地址:</td>
 					<td ><input type="text" name="address"></td>
 			</tr>
 			<tr>
 					<td>联系电话:</td>
 					<td ><input type="text" name="telephone"></td>
 			</tr>
 			
 			<tr>
 					<td colspan="2" align="center"><input type="submit" value="提交">
 							<input type="reset" value="重输"></td>
 			</tr>
 			</form>
 			</table>
 			</center>
 			</body>
 			</html>
 			
 			
 			
 			
 			
 			
 			
 			
 			
 			
 			
 			
 			
 			
 			
 			
 			
 			
 			
 			
 			