<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改密码</title>
<%-- <link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/bootstrap.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/content.css" />
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.8.2.js"></script> --%>
<style  type="text/css">
body{
	width:1064px;
	margin:0 auto;
}
body {
  margin:0px;
  background-image:none;
  position:relative;
  left:-0px;
  width:1064px;
  margin-left:auto;
  margin-right:auto;
  text-align:left;
}

#base {
  position:absolute;
  z-index:0;
}
#u0_img {
  position:absolute;
  left:0px;
  top:0px;
  width:156px;
  height:162px;
}
#u0 {
  position:absolute;
  left:0px;
  top:-10px;
  width:156px;
  height:162px;
}
#u1 {
  position:absolute;
  left:2px;
  top:73px;
  width:152px;
  visibility:hidden;
  word-wrap:break-word;
}
#u2_img {
  position:absolute;
  left:0px;
  top:0px;
  width:156px;
  height:2px;
}
#u2 {
  position:absolute;
  left:0px;
  top:152px;
  width:156px;
  height:2px;
}
#u3 {
  position:absolute;
  left:2px;
  top:-7px;
  width:152px;
  visibility:hidden;
  word-wrap:break-word;
}
#u4_img {
  position:absolute;
  left:0px;
  top:0px;
  width:8px;
  height:162px;
}
#u4 {
  position:absolute;
  left:156px;
  top:-10px;
  width:8px;
  height:162px;
}
#u5 {
  position:absolute;
  left:2px;
  top:73px;
  width:4px;
  visibility:hidden;
  word-wrap:break-word;
}
#u6_img {
  position:absolute;
  left:0px;
  top:0px;
  width:8px;
  height:2px;
}
#u6 {
  position:absolute;
  left:156px;
  top:152px;
  width:8px;
  height:2px;
}
#u7 {
  position:absolute;
  left:2px;
  top:-7px;
  width:4px;
  visibility:hidden;
  word-wrap:break-word;
}
#u8 {
  position:absolute;
  left:164px;
  top:-10px;
  width:906px;
  height:169px;
}
#u9_img {
  position:absolute;
  left:0px;
  top:0px;
  width:901px;
  height:164px;
}
#u9 {
  position:absolute;
  left:0px;
  top:0px;
  width:901px;
  height:164px;
}
#u10 {
  position:absolute;
  left:2px;
  top:74px;
  width:897px;
  visibility:hidden;
  word-wrap:break-word;
}
#u11_div {
  position:absolute;
  left:0px;
  top:0px;
  width:909px;
  height:154px;
  background:inherit;
  background-color:rgba(0, 117, 186, 1);
  border:none;
  border-left:0px;
  border-top:0px;
  border-right:0px;
  border-bottom:0px;
  border-radius:0px;
  border-top-left-radius:0px;
  border-top-right-radius:0px;
  border-bottom-right-radius:0px;
  border-bottom-left-radius:0px;
  -moz-box-shadow:5px 5px 5px rgba(0, 0, 0, 0.2);
  -webkit-box-shadow:5px 5px 5px rgba(0, 0, 0, 0.2);
  box-shadow:5px 5px 5px rgba(0, 0, 0, 0.2);
  font-family:'Aharoni Negreta', 'Aharoni';
  font-weight:700;
  font-style:normal;
  font-size:48px;
  color:#FFFFFF;
  text-align:center;
}
#u11 {
  position:absolute;
  left:164px;
  top:0px;
  width:909px;
  height:154px;
  font-family:'Aharoni Negreta', 'Aharoni';
  font-weight:700;
  font-style:normal;
  font-size:48px;
  color:#FFFFFF;
  text-align:center;
}
#u12 {
  position:absolute;
  width:909px;
  word-wrap:break-word;
}
#u13_div {
  position:absolute;
  left:0px;
  top:0px;
  width:165px;
  height:930px;
  background:inherit;
  background-color:rgba(0, 117, 186, 1);
  box-sizing:border-box;
  border-width:1px;
  border-style:solid;
  border-color:rgba(121, 121, 121, 1);
  border-left:0px;
  border-top:0px;
  border-right:0px;
  border-bottom:0px;
  border-radius:0px;
  border-top-left-radius:0px;
  border-top-right-radius:0px;
  border-bottom-right-radius:0px;
  border-bottom-left-radius:0px;
  -moz-box-shadow:none;
  -webkit-box-shadow:none;
  box-shadow:none;
}
#u13 {
  position:absolute;
  left:0px;
  top:152px;
  width:165px;
  height:610px;
}
#u14 {
  position:absolute;
  left:2px;
  top:328px;
  width:161px;
  visibility:hidden;
  word-wrap:break-word;
}
#u15_div {
  position:absolute;
  left:0px;
  top:0px;
  width:917px;
  height:69px;
  background:inherit;
  background-color:rgba(0, 117, 186, 1);
  box-sizing:border-box;
  border-width:1px;
  border-style:solid;
  border-color:rgba(121, 121, 121, 1);
  border-left:0px;
  border-top:0px;
  border-right:0px;
  border-bottom:0px;
  border-radius:0px;
  border-top-left-radius:0px;
  border-top-right-radius:0px;
  border-bottom-right-radius:0px;
  border-bottom-left-radius:0px;
  -moz-box-shadow:none;
  -webkit-box-shadow:none;
  box-shadow:none;
}
#u15 {
  position:absolute;
  left:156px;
  top:154px;
  width:917px;
  height:69px;
}
#u16 {
  position:absolute;
  left:2px;
  top:26px;
  width:913px;
  visibility:hidden;
  word-wrap:break-word;
}
#u17 {
  position:absolute;
  left:890px;
  top:115px;
}
#u18 {
	position: absolute;
	left:165px;
	top: 280px;
	width: 908px;
	height:10px;
	word-wrap: break-word;
	background-color:#ccc;
}
#u36 {
	position: absolute;
	top: 1055px;
	width: 1073px;
	height:35px;
	word-wrap: break-word;
	background-color:#0075BA;
	color:white;
	text-align:center;
}
#u37 {
	position: absolute;
	top: 150px;
	width: 1073px;
	height:5px;
	word-wrap: break-word;
	background-color:white;
}
#u39 {
	position: absolute;
	left: 160px;
	top: 160px;
	width: 136px;
	word-wrap: break-word;
}
#u38 {
	position: absolute;
	left: 165px;
	top: 221px;
	width: 135px;
	height:800px;
	word-wrap: break-word;
}
#u40_div {
	position: absolute;
	left: 0px;
	top: 0px;
	width: 140px;
	height: 40px;
	background: inherit;
	background-color: rgba(255, 255, 255, 1);
	box-sizing: border-box;
	border-width: 1px;
	border-style: solid;
	border-color: rgba(121, 121, 121, 1);
	border-left: 0px;
	border-top: 0px;
	border-right: 0px;
	border-bottom: 0px;
	border-radius: 5px;
	border-top-left-radius: 0px;
	border-top-right-radius: 0px;
	border-bottom-right-radius: 0px;
	border-bottom-left-radius: 0px;
	-moz-box-shadow: none;
	-webkit-box-shadow: none;
	box-shadow: none;
}

#u40 {
	position: absolute;
	left: 8px;
	top: 220px;
	width: 140px;
	height: 40px;
}

#u41 {
	position: absolute;
	left: 2px;
	top: 12px;
	width: 136px;
	word-wrap: break-word;
}

#u42_div {
	position: absolute;
	left: 0px;
	top: 0px;
	width: 140px;
	height: 40px;
	background: inherit;
	background-color: rgba(255, 255, 255, 1);
	box-sizing: border-box;
	border-width: 1px;
	border-style: solid;
	border-color: rgba(121, 121, 121, 1);
	border-left: 0px;
	border-top: 0px;
	border-right: 0px;
	border-bottom: 0px;
	border-radius: 5px;
	border-top-left-radius: 0px;
	border-top-right-radius: 0px;
	border-bottom-right-radius: 0px;
	border-bottom-left-radius: 0px;
	-moz-box-shadow: none;
	-webkit-box-shadow: none;
	box-shadow: none;
}

#u42 {
	position: absolute;
	left: 8px;
	top: 260px;
	width: 140px;
	height: 40px;
}

#u43 {
	position: absolute;
	left: 2px;
	top: 12px;
	width: 136px;
	word-wrap: break-word;
}

#u44_div {
	position: absolute;
	left: 0px;
	top: 0px;
	width: 140px;
	height: 40px;
	background: inherit;
	background-color: rgba(255, 255, 255, 1);
	box-sizing: border-box;
	border-width: 1px;
	border-style: solid;
	border-color: rgba(121, 121, 121, 1);
	border-left: 0px;
	border-top: 0px;
	border-right: 0px;
	border-bottom: 0px;
	border-radius: 5px;
	border-top-left-radius: 0px;
	border-top-right-radius: 0px;
	border-bottom-right-radius: 0px;
	border-bottom-left-radius: 0px;
	-moz-box-shadow: none;
	-webkit-box-shadow: none;
	box-shadow: none;
}

#u44 {
	position: absolute;
	left: 8px;
	top: 300px;
	width: 140px;
	height: 40px;
}
.h1{
	height:50px;
	width:150px;
	font-size:21px;
	border:none;
	background-color:#0075BA;
	color:white;
	float:left;
	}
.h1:hover{
	background-color:#eeeeee;
	color:black;
	}
.h2{
	height:50px;
	width:145px;
	font-size:18px;
	border:none;
	background-color:#0075BA;
	color:white;
	}
.h2:hover{
	background-color:#eeeeee;
	color:black;
	}
.h3{
	font-size:15px;
	height:40px;
	width:100px;
	border:none;
	background-color:#eeeeee;
	}
.h3:hover{
	background-color:#0075BA;
	color:white;
	}
.h4{
	font-size:12px;
	height:30px;
	width:60px;
	border:none;
	background-color:#0075BA;
	color:white;
}
.h4:hover{	
	background-color:#eeeeee;
	color:black;
	}
.h5{
	font-size:15px;
	height:40px;
	width:100px;
	border:none;
	background-color:#ccc;
	}
.h5:hover{
	background-color:#0075BA;
	color:white;
	}
#d1{
	height:100%;
	line-height:100px;
    width:165px;
    float:left;	
	}
#navi{
	float:left;
	width:950px;
	}
#content{
	font-size:13px;
	text-align:center;
	line-height:60px;
	float:left;
	width:910px;
	}
#UPC{
	font-size:17px;
	width:910px;
	text-align:center;
	line-height:60px;
	background-color:white;
}
#TJ{
	font-size:17px;
	width:910px;
	button-align:center;
	text-align:center;
	line-height:60px;
	background-color:white;	
}
.table_3 table tr:nth-child(even){
	background: #ccc;
}	
</style>
</head>
<body>
<div id="base" class="">

      <!-- Unnamed (图片) -->
      <div id="u0" class="ax_default image">
        <img id="u0_img" class="img " src="images/index/u0.png"/>
        <!-- Unnamed () -->
        <div id="u1" class="text" style="display: none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (图片) -->
      <div id="u2" class="ax_default image">
        <img id="u2_img" class="img " src="images/index/u2.png"/>
        <!-- Unnamed () -->
        <div id="u3" class="text" style="display: none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (图片) -->
      <div id="u4" class="ax_default image">
        <img id="u4_img" class="img " src="images/index/u4.png"/>
        <!-- Unnamed () -->
        <div id="u5" class="text" style="display: none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (图片) -->
      <div id="u6" class="ax_default image">
        <img id="u6_img" class="img " src="images/index/u6.png"/>
        <!-- Unnamed () -->
        <div id="u7" class="text" style="display: none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (表格) -->
      <div id="u8" class="ax_default">

        <!-- Unnamed (单元格) -->
        <div id="u9" class="ax_default table_cell">
          <img id="u9_img" class="img " src="images/index/u9.png"/>
          <!-- Unnamed () -->
          <div id="u10" class="text" style="display: none; visibility: hidden">
            <p><span></span></p>
          </div>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u11" class="ax_default sticky_2">
        <div id="u11_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u12" class="text" style="visibility: visible;">
          <p><span>欢迎来到DELL，专心做产品</span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u13" class="ax_default box_1">
        <div id="u13_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u14" class="text" style="display: none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u15" class="ax_default box_1">
        <div id="u15_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u16" class="text" style="display: none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>
    </div>
	
	<div id="u36">
	<tr><td>Thanks For Support</td></tr>
	</div>
	<div id="u37">
	</div >
	<div id="u18">
	</div >
	
	<div id="u38"  class="table_3">
	<table id="UPC">
	<td>用户密码修改</td>
	</table >
	<table id = "content">
		<tr>
			<td>用户名：</td>
			<td><input type="text" name="user" id="user"
				value="<%=session.getAttribute("useridall") %>" readonly="readonly" /></td>
		</tr>
		<tr>
			<td>密码：</td>
			<td><input type="oldpsw" name="oldpsw" id="oldpsw"/></td>
		</tr>
		<tr>
			<td>新密码：</td>
		<td><input type="password" name="newpsw1" id="newpsw1" /></td>
		</tr>
		<tr>
			<td>确认密码：</td>
			<td><input type="password" id="newpsw2"/></td>
		</tr>
	</table>
	<table id="TJ">
	<td><input type="button"
		value="提交" class="h5" onclick = "Update_Log_Psw()" name="button" ></td>
	</table>
	</div>
	
</body>
<script type="text/javascript">
var  xmlhttp;
var direction;
var username
var oldpsw;
var newpsw1;
var newpsw2;
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



function Update_Log_Psw(){
	var username = document.getElementById("user");
	var oldpsw = document.getElementById("oldpsw");
	var newpsw1 = document.getElementById("newpsw1");
	var newpsw2 = document.getElementById("newpsw2");
	
	if(user.value == ""){
		alert("请输入用户名！");
		return;
	}
	else if(oldpsw.value == ""){
		alert("请输入原密码！");
		return;
	}else if(newpsw1.value == ""){
		alert("请输入新密码！");
		return;
	}else if(newpsw2.value == ""){
		alert("请再次输入新密码！");
		return;
	}
	if(newpsw1.value != newpsw2.value){
		alert("请保持两次输入新密码一致！");
		return;
	}
	direction = "user=" + user.value +"&oldpsw="+ oldpsw.value+"&newpsw1=" + newpsw1.value;
	alert(direction);
	LoadAjax("POST","UpdateLogPsw",direction,function(){
		if (xmlhttp.readyState==4 && xmlhttp.status==200){
			if(xmlhttp.responseText == "false"){
				alert("原密码输入错误！");
				/* document.getElementById("fail").style.display = "block"; */
				//$("fail").hidden = "false";
				return;
			}
			else{		
				alert("修改成功请重新登陆");
					window.location.href="index.jsp?backurl="+window.location.href; 
			}
				
		}
	})
}






</script>
</html>