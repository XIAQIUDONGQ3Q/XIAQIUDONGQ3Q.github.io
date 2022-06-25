<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>统计网页访问次数</title>
</head>
<body>
	<%
		int number=0;
		//从session对象中获取number
		Object obj=session.getAttribute("number");
		if(obj==null){
			//设定session对象中的number变量
			session.setAttribute("number", String.valueOf(number));
		}else{
			//取得session对象中的number变量
			number=Integer.parseInt(obj.toString());
			//统计页面的访问次数
			number+=1;
			//设定session对象中的number变量
			session.setAttribute("number", String.valueOf(number));
		}
	%>
	
	<br>
	<div align="center">
		<table>
			<tr>
				<th>第<%=number+1 %>个用户访问本站</th>
			</tr>
		</table>
	</div>
</body>
</html>