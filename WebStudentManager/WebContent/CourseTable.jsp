<%@ page language="java" contentType="text/html; charset=gb2312"%>
<%!
public String codeToString(String str){//处理中文字符串的函数
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
 <title>课表发布信息</title>
 </head><body>
 <center>
 <table border ="1" width="700">
 		<tr>
 			<td width="100%" colspan="2" align="center">课表提交信息</td>
 			</tr>
 			<form  action ="acceptCourseTable.jsp" method="POST"  onsubmit="return on_submit()"  name="form1">
 	
 			<tr>
 					<td width="25%">专业(*):</td>
 					<td width="75%"><input type="text" name="depart" size="20"></td>
 			</tr>
 			<tr>
 					<td>课程号(*):</td>
 					<td ><input type="text" name="Cnumber" size="20"></td>
 			</tr>
 			<tr>
 					<td>课程名(*):</td>
 					<td ><input type="text" name="Cname" size="20"></td>
 			</tr>
 			<tr>
 					<td>学分:</td>
 					<td ><input type="text"name="Credit"size="20" ></td>
 			</tr>
 			<tr>
 					<td>上课时间:</td>
 					<td ><input type ="text" name="Time" size="20"></td>
 			</tr>
 			<tr>
 					<td>上课地点:</td>
 					<td ><input type ="text" name="address" size="20"></td>
 			</tr>
 			<tr>
 					<td>任课老师:</td>
 					<td ><input type ="text" name="teacher" size="20"></td>
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
 			
 			
 			
 			
 			
 			
 			




