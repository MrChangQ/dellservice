<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
  String path = request.getContextPath();
 String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script  type="text/javascript" src="<%=basePath%>jquery-1.7.1.min.js" charset="utf-8"></script>
<script  type="text/javascript" src="<%=basePath%>jquery-3.0.0.js" charset="utf-8"></script>
<title>管理员管理界面</title>
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
	
<!--左侧菜单-->
<div id="u17">
<table>
<tr><td style="color:white"><%=session.getAttribute("useridall") %></td>
<td><input type = "button" onclick = "tuichu()" value = "退出" class="h4"></td>
<td><input type = "button" onclick = "xiugai()" value = "修改密码" class="h4"></td></tr>
</table></div>

<div id="d1" class="table_1">
<table>
<tr><td  id="u40" class="ax_default button"><input type = "button" onclick = "SysSet()" value = "系统设置" class = "h1"></td></tr>
<tr><td  id="u42" class="ax_default button"><input type = "button" onclick = "UserSet()" value = "用户设置" class = "h1"></td></tr>
<tr><td  id="u44" class="ax_default button"><input type = "button" onclick = "OrderSet()" value = "订单设置" class = "h1"></td></tr>
</table></div>

<!-- 右侧显示界面 -->
<div id="u39" class="table_2">
<table id = "navi" ></table>
</div>
<div id="u38" class="table_3">
<table id = "content"></table>
</div>
</body>
<script  type="text/javascript">
var  xmlhttp;
var direction;
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
function SysSet(){
	var table = document.getElementById("navi");
	document.getElementById("content").innerHTML = "";
	var html = "<tr><td><input type=\"button\" onclick = \"EngiLevel()\" value = \"工程师级别\"  class =\"h2\"></td></tr>";
	table.innerHTML = html;
}
function EngiLevel(){
	LoadAjax("GET","EngiLevel","",function(){
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200){
			var x = xmlhttp.responseXML.documentElement.getElementsByTagName("Engineer");
			var html = "<tr><td>序号</td><td>姓名</td><td>工号</td><td>工程师级别</td></tr>";
			for(var i = 0; i < x.length;i++){
				var name = x[i].getElementsByTagName("name");
				var dellno = x[i].getElementsByTagName("dellno");
				var level = x[i].getElementsByTagName("level");
				var id = x[i].getElementsByTagName("id");
				html += "<tr id = \"" + id[0].firstChild.nodeValue+"\"><td>"
						+ (i+1) + "</td><td>" + name[0].firstChild.nodeValue + "</td>"
						+ "<td>" + dellno[0].firstChild.nodeValue + "</td><td>"
						+ "<input type = \"text\" value = \"" + level[0].firstChild.nodeValue
						+ "\"></td><td><input type = \"button\" onclick = \"ChangeLevel(this)\" "
						+ "value = \"修改\" class=\"h3\"></td></tr>";
				
			}
			document.getElementById("content").innerHTML = html;
		}
	})
}
function ChangeLevel(button){
	var id = button.parentNode.parentNode.id;
	var level = button.parentNode.previousSibling.firstChild.value;
	direction = "id="+ id + "&level=" + level;
	LoadAjax("POST","EngiLevel",direction,function(){
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200){
			if(xmlhttp.responseText == "true")
				alert("修改成功！");
			else
				alert("修改失败！请稍后再试！");
		}
	})
}
function UserSet(){
	var table = document.getElementById("navi");
	document.getElementById("content").innerHTML = "";
	var html = "<tr><td><input type=\"button\" onclick = \"New_Stuff()\" value = \"创建客服账号\"  class =\"h2\"></td>"
		+ "<td><input type = \"button\" onclick = \"New_Engi()\" value = \"创建工程师账号\"  class =\"h2\"></td>"
		+ "<td><input type = \"button\" onclick = \"New_Client()\" value = \"录入客户信息\"  class =\"h2\"></td>"
		+ "<td><input type = \"button\" onclick = \"Find_Client()\" value = \"查询客户信息\"  class =\"h2\"></td>"
		+ "<td><input type = \"button\" onclick = \"Change_Stuff_Status()\" value = \"管理客服账号\"  class =\"h2\"></td></tr>";
    table.innerHTML = html;
}

function New_Stuff(){
	var table = document.getElementById("content");
	var html = "<tr><td>用户名：</td><td><input type = \"text\" id = \"username\"></td></tr>"
				+ "<tr><td>密码：</td><td><input type = \"password\" id = \"psw\"></td></tr>"
				+ "<tr><td>姓名：</td><td><input type = \"text\" id = \"realname\"></td></tr>"
				+ "<tr><td>工号：</td><td><input type = \"text\" id = \"dellno\"></td></tr>"
				+ "<tr><td>电话:</td><td><input type = \"text\" id = \"tele\"></td></tr>"
				+ "<tr><td><td><input type = \"button\" onclick = \"New_Stuff_Go()\" value = \"创建\"  class=\"h3\"></td></td></tr>";
	table.innerHTML = html;
}
function New_Stuff_Go(){
	var username = $("#username").val();
	var psw = $("#psw").val();
	var realname = $("#realname").val();
	var dellno = $("#dellno").val();
	var tele = $("#tele").val();
	if(username == ""|| psw == "" || realname =="" || dellno == ""){
		alert("请输入账号信息！");
		return;
	}
	direction = "username=" + username + "&psw=" + psw + "&realname=" + realname + "&dellno="
				+ dellno + "&tele=" + tele;
	LoadAjax("POST","Stuff_Control",direction,function(){
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200){
			if(xmlhttp.responseText == "true"){
				alert("创建成功！");
			}
			else
				alert("创建失败！请稍后再试！");
		}
	})
	New_Staff();
}
function New_Engi(){
	var table = document.getElementById("content");
	var html = "<tr><td>用户名：</td><td><input type = \"text\" id = \"username\"></td></tr>"
				+ "<tr><td>密码：</td><td><input type = \"password\" id = \"psw\"></td></tr>"
				+ "<tr><td>姓名：</td><td><input type = \"text\" id = \"realname\"></td></tr>"
				+ "<tr><td>工号：</td><td><input type = \"text\" id = \"dellno\"></td></tr>"
				+ "<tr><td>电话:</td><td><input type = \"text\" id = \"tele\"></td></tr>"
				+ "<tr><td>工程师级别：</td><td><input type = \"text\" id = \"level\"></td></tr>"
				+ "<tr><td>APP版本号：</td><td><input type = \"text\" id = \"version\"></td></tr>"
				+ "<tr><td><td><input type = \"button\" onclick = \"New_Engi_Go()\" value = \"创建\"  class=\"h3\"></td></td></tr>";
	table.innerHTML = html;
}
function New_Engi_Go(){
	var username = $("#username").val();
	var psw = $("#psw").val();
	var realname = $("#realname").val();
	var dellno = $("#dellno").val();
	var tele = $("#tele").val();
	var level = $("#level").val();
	var version = $("#version").val();
	if(username == ""|| psw == "" || realname =="" || dellno == "" || level =="" || version == ""){
		alert("请输入账号信息！");
		return;
	}
	direction = "username=" + username + "&psw=" + psw + "&realname=" + realname + "&dellno="
				+ dellno + "&tele=" + tele + "&level=" + level + "&version=" + version;
	LoadAjax("POST","Engineer_Control",direction,function(){
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200){
			if(xmlhttp.responseText == "true"){
				alert("创建成功！");
			}
			else
				alert("创建失败！请稍后再试！");
		}
	})
	New_Engi();
}
function New_Client(){
	var table = document.getElementById("content");
	var html = "<tr><td>姓名：</td><td><input type = \"text\" id = \"name\"></td></tr>"
				+ "<tr><td>地区：</td><td><input type = \"text\" id = \"region\"></td></tr>"
				+ "<tr><td>城市：</td><td><input type = \"text\" id = \"city\"></td></tr>"
				+ "<tr><td>邮编：</td><td><input type = \"text\" id = \"postcode\"></td></tr>"
				+ "<tr><td><td><input type = \"button\" onclick = \"New_Client_Go()\" value = \"创建\" class=\"h3\"></td></td></tr>";
	table.innerHTML = html;
}

function New_Client_Go(){
	var name = $("#name").val();
	var region = $("#region").val();
	var city = $("#city").val();
	var postcode = $("#postcode").val();
	var contactor = $("#contactor").val();
	var tele = $("#tele").val();
	var fax = $("#fax").val();
	if(name == "" || region == "" || contactor == ""){
		alert("请输入数据！");
		return;
	}
	direction = "name=" + name + "&region=" + region + "&city=" + city + "&postcode="
				+ postcode + "&contactor=" + contactor + "&tele=" + tele + "&fax=" + fax;
	LoadAjax("POST","Client_Control",direction,function(){
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200){
			if(xmlhttp.responseText == "true"){
				alert("创建成功！");
			}
			else
				alert("创建失败！请稍后再试！");
		}
	})
}

function Find_Client(){
	LoadAjax("GET","Client_Control","",function(){
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200){
			var table = document.getElementById("content");
			var x = xmlhttp.responseXML.documentElement.getElementsByTagName("client");
			var html = "<tr><td>姓名：</td><td><input type = \"text\" id = \"client_name\"></td>"
				+ "<td><input type = \"button\" onclick = \"Find_Client_By_Name()\""
				+ "value = \"查询\"  class=\"h3\"></td></tr><tr><td>姓名</td><td>地区</td><td>邮编</td><td>联系人</td><td>"
				+ "传真</td><td>城市</td><td>电话</td></tr>";
			for(var i = 0; i < x.length;i++){
				var name = x[i].getElementsByTagName("name");
				var region = x[i].getElementsByTagName("region");
				var postcode = x[i].getElementsByTagName("postcode");
				var contactor = x[i].getElementsByTagName("contactor");
				var fax = x[i].getElementsByTagName("fax");
				var city = x[i].getElementsByTagName("city");
				var tele = x[i].getElementsByTagName("tele");
				html += "<tr><td>" + name[0].firstChild.nodeValue + "</td>"
					    + "<td>" + region[0].firstChild.nodeValue + "</td><td>"
					    + postcode[0].firstChild.nodeValue + "</td><td>" 
					    + contactor[0].firstChild.nodeValue + "</td><td>"
					    + fax[0].firstChild.nodeValue + "</td><td>"
					    + city[0].firstChild.nodeValue + "</td><td>"
					    + tele[0].firstChild.nodeValue + "</td></tr>";
			}
			table.innerHTML = html;
		}
	})
}

function Find_Client_By_Name(){
	var name = $("#client_name").val();
	if(name == null){
		alert("请输入查询姓名！");
		return;
	}
	var url = "Client_Control?client_name="+name;
	LoadAjax("GET",url,"",function(){
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200){
			var table = document.getElementById("content");
			var x = xmlhttp.responseXML.documentElement.getElementsByTagName("client");
			var html = "<tr><td>姓名：</td><td><input type = \"text\" id = \"client_name\"></td>"
				+ "<td><input type = \"button\" onclick = \"Find_Client_By_Name()\""
				+ "value = \"查询\"  class=\"h3\"></td></tr><tr><td>姓名</td><td>地区</td><td>邮编</td><td>联系人</td><td>"
				+ "传真</td><td>城市</td><td>电话</td></tr>";
			if(x.length == 0){
				alert("用户不存在！");
				return;
			}	
			for(var i = 0; i < x.length;i++){
				var name = x[i].getElementsByTagName("name");
				var region = x[i].getElementsByTagName("region");
				var postcode = x[i].getElementsByTagName("postcode");
				var contactor = x[i].getElementsByTagName("contactor");
				var fax = x[i].getElementsByTagName("fax");
				var city = x[i].getElementsByTagName("city");
				var tele = x[i].getElementsByTagName("tele");
				html += "<tr><td>" + name[0].firstChild.nodeValue + "</td>"
					    + "<td>" + region[0].firstChild.nodeValue + "</td><td>"
					    + postcode[0].firstChild.nodeValue + "</td><td>" 
					    + contactor[0].firstChild.nodeValue + "</td><td>"
					    + fax[0].firstChild.nodeValue + "</td><td>"
					    + city[0].firstChild.nodeValue + "</td><td>"
					    + tele[0].firstChild.nodeValue + "</td></tr>";
			}
			table.innerHTML = html;
		}
	})
}

function Change_Stuff_Status(){
	LoadAjax("GET","Stuff_Control","",function(){
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200){
			var table = document.getElementById("content");
			var x = xmlhttp.responseXML.documentElement.getElementsByTagName("Stuff");
			var html = "<tr><td>姓名：</td><td><input type = \"text\" id = \"stuff_name\"></td>"
				+ "<td>工号：</td><td><input type = \"text\" id = \"stuff_dellno\"></td>"
				+ "<td><input type = \"button\" onclick = \"Find_Stuff_By()\""
				+ "value = \"查询\"  class=\"h3\"></td></tr><tr><td>姓名</td><td>用户名</td><td>密码</td><td>"
				+ "工号</td><td>创建时间</td><td>状态</td><td>电话</td><td></td></tr>";
			for(var i = 0; i < x.length;i++){
				var id = x[i].getElementsByTagName("id");
				var realname = x[i].getElementsByTagName("realname");
				var username = x[i].getElementsByTagName("username");
				var psw = x[i].getElementsByTagName("psw");
				var dellno = x[i].getElementsByTagName("dellno");
				var addtime = x[i].getElementsByTagName("addtime");
				var status = x[i].getElementsByTagName("status");
				var tele = x[i].getElementsByTagName("tele");
				html += "<tr><td>" + realname[0].firstChild.nodeValue + "</td><td>"
					 + username[0].firstChild.nodeValue + "</td><td>"
					 + psw[0].firstChild.nodeValue + "</td><td>"
					 + dellno[0].firstChild.nodeValue + "</td><td>"
					 + addtime[0].firstChild.nodeValue + "</td><td>"
					 + status[0].firstChild.nodeValue + "</td><td>"
					 + tele[0].firstChild.nodeValue + "</td><td><input type =\"button\""
					 + " onclick = \"Change_Stuff_Status_Go(this)\""
					 + " id = \"" + id[0].firstChild.nodeValue + "\" value = \"冻结/激活\" class=\"h3\"></td></tr>";
			}
			table.innerHTML = html;
		}
	})
}

function Find_Stuff_By(){
	var realname = $("#stuff_name").val();
	var dellno = $("#stuff_dellno").val();
	if(realname == "" && dellno == ""){
		alert("请输入查询条件！");
		return;
	}
	var url = "Stuff_Control?username="+realname + "&dellno=" + dellno;
	LoadAjax("GET",url,"",function(){
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200){
			var table = document.getElementById("content");
			var x = xmlhttp.responseXML.documentElement.getElementsByTagName("Stuff");
			var html = "<tr><td>姓名：</td><td><input type = \"text\" id = \"stuff_name\"></td>"
				+ "<td>工号：</td><td><input type = \"text\" id = \"stuff_dellno\"></td>"
				+ "<td><input type = \"button\" onclick = \"Find_Stuff_By()\""
				+ "value = \"查询\"   class=\"h3\"></td></tr><tr><td>姓名</td><td>用户名</td><td>密码</td><td>"
				+ "工号</td><td>创建时间</td><td>状态</td><td>电话</td></tr>";
			if(x.length == 0){
				alert("用户不存在！");
				return;
			}	
			for(var i = 0; i < x.length;i++){
				var id = x[i].getElementsByTagName("id");
				var realname = x[i].getElementsByTagName("realname");
				var username = x[i].getElementsByTagName("username");
				var psw = x[i].getElementsByTagName("psw");
				var dellno = x[i].getElementsByTagName("dellno");
				var addtime = x[i].getElementsByTagName("addtime");
				var status = x[i].getElementsByTagName("status");
				var tele = x[i].getElementsByTagName("tele");
				html += "<tr><td>" + realname[0].firstChild.nodeValue + "</td><td>"
				 + username[0].firstChild.nodeValue + "</td><td>"
				 + psw[0].firstChild.nodeValue + "</td><td>"
				 + dellno[0].firstChild.nodeValue + "</td><td>"
				 + addtime[0].firstChild.nodeValue + "</td><td>"
				 + status[0].firstChild.nodeValue + "</td><td>"
				 + tele[0].firstChild.nodeValue + "</td><td><input type =\"button\""
				 + " onclick = \"Change_Stuff_Status_Go(this)\""
				 + " id = \"" + id[0].firstChild.nodeValue + "\" value = \"冻结/激活\"   class=\"h3\"></td></tr>";
			}
			table.innerHTML = html;
		}
	})
}

function Change_Stuff_Status_Go(button){
	var c = confirm("确认冻结/激活账号？");
	if(c){
		var url = "Stuff_Control?userid=" + button.id;
		LoadAjax("GET",url,"",function(){
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200){
				if(xmlhttp.responseText == "true"){
					alert("修改成功！");
				}
				else
					alert("修改失败！请稍后再试！");
			}
		});
		Change_Stuff_Status();
	}
	else return;
}
function OrderSet(){
	var table = document.getElementById("navi");
	var html = "<tr><td><input type=\"button\" onclick=\"Manage_Worksheet()\" value=\"工单管理\"   class=\"h2\">"
				+ "</td></tr>";
	table.innerHTML = html;
	document.getElementById("content").innerHTML = "";
}
function Manage_Worksheet(){
	LoadAjax("GET","Admin_Worksheet","",function(){
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200){
			var table = document.getElementById("content");
			var html = "<tr><td>订单号</td><td>产品名</td><td>机型</td><td>主机号</td>"
						+ "<td>创建时间</td><td>客户姓名</td><td>电话</td><td>状态</td>";
			var x = xmlhttp.responseXML.documentElement.getElementsByTagName("worksheet");
			for(var i = 0; i < x.length;i++){
				var orderid = x[i].getElementsByTagName("orderid");
				var product = x[i].getElementsByTagName("product");
				var model = x[i].getElementsByTagName("model");
				var host = x[i].getElementsByTagName("host");
				var date = x[i].getElementsByTagName("date");
				var name = x[i].getElementsByTagName("name");
				var tele = x[i].getElementsByTagName("tele");
				var status = x[i].getElementsByTagName("status");
				html += "<tr><td>" + orderid[0].firstChild.nodeValue + "</td><td>" 
					 	+ product[0].firstChild.nodeValue + "</td><td>"
					 	+ model[0].firstChild.nodeValue + "</td><td>"
					 	+ host[0].firstChild.nodeValue + "</td><td>"
					 	+ date[0].firstChild.nodeValue + "</td><td>"
					 	+ name[0].firstChild.nodeValue + "</td><td>"
					 	+ tele[0].firstChild.nodeValue + "</td><td>"
					 	+ status[0].firstChild.nodeValue + "</td>";
				html += "<td><input type=\"button\" onclick=\"Cancel_Worksheet(this)\""
						+ "id=\"" + orderid[0].firstChild.nodeValue + "\" value=\"取消工单\"   class=\"h3\"></td></tr>";
				
			}
			table.innerHTML = html;
		}
	});
}

function Cancel_Worksheet(button){
	var c = confirm("确认取消工单？");
	if(c == false)
		return;
	var url = "Admin_Worksheet?orderid=" + button.id;
	LoadAjax("GET",url,"",function(){
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200){
			if(xmlhttp.responseText == "true"){
				Manage_Worksheet();
			}
			else
				alert("取消失败！请稍后再试！");
		}
	});
}
function Manage_Service(){
	LoadAjax("GET","Service_Control","",function(){
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200){
			var x = xmlhttp.responseXML.documentElement.getElementsByTagName("service");
			var table = doucment.getElementById("content");
			var html = "<tr><td>工单号</td><td>工程师</td><td>预约状态</td><td>首次预约客户时间</td><td>预约上门时间</td></tr>";
		}
	})
}
function tuichu(){
	window.location.href="index.jsp";
}
function xiugai(){
	window.location.href="updateLogPwd.jsp";
}
</script>
</html>