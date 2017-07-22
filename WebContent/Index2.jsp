<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<%
  String path = request.getContextPath();
 String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<script  type="text/javascript" src="<%=basePath%>jquery-1.7.1.min.js" charset="utf-8"></script>
<script  type="text/javascript" src="<%=basePath%>jquery-3.0.0.js" charset="utf-8"></script>
<title>首页</title>
</head>
<body>
	<table>
		<tr><td>用户名：<input type = "text" name = "username" id = "user"></td></tr>
		<tr><td>密码：<input type ="password" name = "password" id = "psw"></td></tr>
		<tr><td><input type="button" onclick = "Login()" value="登录"></td><td><label hidden = "true" id="fail">登录失败</label></tr>
	</table>
</body>

<script type= "text/javascript">
var  xmlhttp;
function LoadAjax(method,url,direction,cfunc){
	if (window.XMLHttpRequest){
	 	  xmlhttp=new XMLHttpRequest();
	 	}
	else{
	 	 xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
	}
	if(method == "GET"){
		xmlhttp.open(method,url,false);
		xmlhttp.onreadystatechange=cfunc;
		xmlhttp.send(null);
	}
	else{
		xmlhttp.open(method,url,false);
		xmlhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
		xmlhttp.onreadystatechange=cfunc;
		xmlhttp.send(direction);
	}
}

function Login(){
	var user = document.getElementById("user");
	var psw = document.getElementById("psw");
	if(user.value == ""){
		alert("请输入用户名！");
		return;
	}
	else if(psw.value == ""){
		alert("请输入密码！");
		return;
	}
	direction = "user=" + user.value +"&psw="+ psw.value;
	LoadAjax("POST","Login",direction,function(){
		if (xmlhttp.readyState==4 && xmlhttp.status==200){
			if(xmlhttp.responseText == ""){
				document.getElementById("fail").style.display = "block";
				//$("fail").hidden = "false";
				return;
			}
			else{
				var type = xmlhttp.responseText.substring(7);
				if(type == "0")
					window.location.href="admin.jsp?backurl="+window.location.href; 
			}
				
		}
	})
}
</script>
</html>