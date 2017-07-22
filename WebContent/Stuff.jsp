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
<title>客服界面</title>
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
	width:83px;
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
<tr><td id="u40" class="ax_default button"><input type = "button" onclick = "New_Work_Sheet()" value = "创建工单" class = "h1"></td></tr>
<tr><td id="u42" class="ax_default button"><input type = "button" onclick = "My_Work_Sheet()" value = "我创建的工单" class = "h1"></td></tr>
<tr><td id="u44" class="ax_default button"><input type = "button" onclick = "Client_Info()" value = "查看客户信息" class = "h1"></td></tr>
</table></div>

<!-- 右侧显示界面 -->
<div id="u39" class="table_2">
<table id = "navi"></table>
</div>
<div id="u38" class="table_3">
<table id = "content"></table>
</div>
</body>
<script type = "text/javascript">
var  xmlhttp;
var direction;
var orderid;
var userid = 2;//客服id,应从cookie或session读取
var clientid;//客户id
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

function New_Work_Sheet(){
	var table = document.getElementById("content");
	var html = "<tr><td>客户姓名：</td><td><input type = \"text\" id = \"client_name\"></td>"
				+ "<td><input type=\"button\" onclick=\"Find_Client()\" value=\"确定\"  class=\"h3\"	>"
				+ "</td></tr>";
	table.innerHTML = html;
}
function Find_Client(){
	var name = $("#client_name").val();
	if(name == ""){
		alert("请输入客户姓名！");
		return;
	}
	var url = "Client_Control?client_name="+name;
	LoadAjax("GET",url,"",function(){
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200){
			var table = document.getElementById("content");
			var x = xmlhttp.responseXML.documentElement.getElementsByTagName("client");
			var html = "<tr><td>姓名：</td><td><input type = \"text\" id = \"client_name\"></td>"
				+ "<td><input type = \"button\" onclick = \"Find_Client_By_Name()\""
				+ "value = \"查询\" class=\"h3\"></td></tr><tr><td>姓名</td><td>地区</td><td>邮编</td><td>联系人</td><td>"
				+ "传真</td><td>城市</td><td>电话</td><td></td></tr>";
			if(x.length == 0){
				alert("用户不存在！");
				return;
			}	
			for(var i = 0; i < x.length;i++){
				var id = x[i].getElementsByTagName("id");
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
					    + tele[0].firstChild.nodeValue + "</td><td>"
					    + "<input type = \"button\" onclick = \"New_Work_Sheet_Go(this)\""
					    + " value = \"选择\" class=\"h3\" id =\"" + id[0].firstChild.nodeValue
					    + "\"></td></tr>";
			}
			table.innerHTML = html;
		}
	})
}
function New_Work_Sheet_Go(button){
	clientid = button.id;
	orderid = new Date().getTime();
	var table = document.getElementById("content");
	var html = "<tr><td>订单号：</td><td>" + orderid + "</td></tr><tr><td>产品名:</td><td>"
				+ "<input type = \"text\" id = \"product\"></td></tr><tr><td>机型：</td>"
				+ "<td><input type = \"text\" id = \"model\"></td></tr><tr><td>主机号：</td>"
				+ "<td><input type = \"text\" id = \"host\"></td></tr><tr><td>是否三包：</td>"
				+ "<td><input type =\"radio\" name =\"three\" value=\"1\">是"
				+ "<input type=\"radio\" name = \"three\" value =\"0\">否</td></tr>"
				+ "<tr><td>是否保留硬盘服务</td><td><input type=\"radio\" name = \"hardware\""
				+ " value=\"1\">是<input type=\"radio\" name = \"hardware\""
				+ " value=\"0\">否</td></tr><tr><td>客户保修故障现象:</td><td><textarea id=\"phenomenon\">"
				+ "</textarea></td></tr><tr><td>客户保修故障详情：</td><td>"
				+ "<textarea id=\"description\"></textarea></td></tr><tr><td></td><td>"
				+ "<input type=\"button\" onclick=\"Submit_WorkSheet()\" value=\"创建\" class=\"h3\"></td></tr>";
	table.innerHTML = html;
}
function Submit_WorkSheet(){
	var product = $("#product").val();
	var model = $("#model").val();
	var host = $("#host").val();
	var three = $('#content input[name="three"]:checked').val();
	var hardware = $('#content input[name="hardware"]:checked').val();
	var phenomenon = $("#phenomenon").val();
	var description = $("#description").val();
	alert(orderid);
	direction = "orderid=" + orderid + "&product=" + product
				+ "&model=" + model + "&host=" + host
				+ "&three=" + three + "&hardware=" + hardware
				+ "&phenomenon=" + phenomenon + "&description=" + description
				+ "&clientid=" + clientid + "&userid=" + userid;
	LoadAjax("POST","Worksheet_Control",direction,function(){
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200){
			My_Work_Sheet();
		}
	});	
}
function My_Work_Sheet(){
	var url = "Worksheet_Control?userid=" + userid;
	LoadAjax("GET",url,"",function(){
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
				
						
				if(status[0].firstChild.nodeValue == "待预约")
					{html += "<td><input type=\"button\" onclick=\"Change_Worksheet(this)\""
						+ "id=\"" + orderid[0].firstChild.nodeValue + "\" value=\"修改工单\" class=\"h3\"></td>"
					html += "<td></td>"
					html += "<td><input type=\"button\" onclick=\"Worksheet_Detail(this)\""
						+ "id=\"" + orderid[0].firstChild.nodeValue + "\" value=\"查看详情\" class=\"h3\"></td></tr>";}
				if(status[0].firstChild.nodeValue == "已取消")
					{html += "<td></td><td></td><td><input type=\"button\" onclick=\"Worksheet_Detail(this)\""
						+ "id=\"" + orderid[0].firstChild.nodeValue + "\" value=\"查看详情\" class=\"h3\"></td></tr>"}
				if(status[0].firstChild.nodeValue == "待分配")
					{html += "<td><input type=\"button\" onclick=\"Change_Worksheet(this)\""
						+ "id=\"" + orderid[0].firstChild.nodeValue + "\" value=\"修改工单\" class=\"h3\"></td>"
					html  += "<td><input type=\"button\" onclick =\"Dispatch_Engi(this)\""
						+ "id=\"" + orderid[0].firstChild.nodeValue + "\" value=\"分配工程师\" class=\"h3\"></td>";
					html += "<td><input type=\"button\" onclick=\"Worksheet_Detail(this)\""
						+ "id=\"" + orderid[0].firstChild.nodeValue + "\" value=\"查看详情\" class=\"h3\"></td></tr>";	}
	  			
			}
			table.innerHTML = html;
		}
	})
}
function Change_Worksheet(button){
	orderid = button.id;
	var url = "Worksheet_Control?orderid=" + button.id;
	LoadAjax("GET",url,"",function(){
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200){
			var table = document.getElementById("content");
			var x = xmlhttp.responseXML.getElementsByTagName("worksheet");
			for(var i = 0; i < x.length;i++){
				var orderid = x[i].getElementsByTagName("orderid");
				var product = x[i].getElementsByTagName("product");
				var model = x[i].getElementsByTagName("model");
				var host = x[i].getElementsByTagName("host");
				var hard = x[i].getElementsByTagName("hard");
				var phenonmenon = x[i].getElementsByTagName("phenonmenon");
				var description = x[i].getElementsByTagName("description");
				var three =  x[i].getElementsByTagName("three");
				var html = "<tr><td>订单号：</td><td>" + orderid[0].firstChild.nodeValue
					+ "</td></tr><tr><td>产品名:</td><td>"
					+ "<input type = \"text\" id = \"product\"></td></tr><tr><td>机型：</td>"
					+ "<td><input type = \"text\" id = \"model\"></td></tr><tr><td>主机号：</td>"
					+ "<td><input type = \"text\" id = \"host\"></td></tr><tr><td>是否三包：</td>"
					+ "<td><input type =\"radio\" name =\"three\" value=\"1\">是"
					+ "<input type=\"radio\" name = \"three\" value =\"0\">否</td></tr>"
					+ "<tr><td>是否保留硬盘服务</td><td><input type=\"radio\" name = \"hardware\""
					+ " value=\"1\">是<input type=\"radio\" name = \"hardware\""
					+ " value=\"0\">否</td></tr><tr><td>客户保修故障现象:</td><td><textarea id=\"phenomenon\">"
					+ "</textarea></td></tr><tr><td>客户保修故障详情：</td><td>"
					+ "<textarea id=\"description\"></textarea></td></tr><tr><td></td><td>"
					+ "<input type=\"button\" onclick=\"Submit_WorkSheet()\" value=\"修改\"   class=\"h3\"></td></tr>";
				table.innerHTML = html;
				$("#product").val(product[0].firstChild.nodeValue);
				$("#model").val(model[0].firstChild.nodeValue);
				$("#host").val(host[0].firstChild.nodeValue);
				$("#content input[name='three'][value='" + three[0].firstChild.nodeValue + "']").attr("checked",'checked');
				$("#content input[name='hardware'][value='" + hard[0].firstChild.nodeValue + "']").attr("checked",'checked');
				$("#phenomenon").val(phenonmenon[0].firstChild.nodeValue);
				$("#description").val(description[0].firstChild.nodeValue);
			}
		}
	})
}

function Client_Info(){
	LoadAjax("GET","Client_Control","",function(){
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200){
			var table = document.getElementById("content");
			var x = xmlhttp.responseXML.documentElement.getElementsByTagName("client");
			var html = "<tr><td>姓名：</td><td><input type = \"text\" id = \"client_name\"></td>"
				+ "<td><input type = \"button\" onclick = \"Find_Client_By_Name()\""
				+ "value = \"查询\" class=\"h3\"></td></tr><tr><td>姓名</td><td>地区</td><td>邮编</td><td>联系人</td><td>"
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
				+ "value = \"查询\" class=\"h3\"></td></tr><tr><td>姓名</td><td>地区</td><td>邮编</td><td>联系人</td><td>"
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
function Dispatch_Engi(button){
	orderid = button.id;
	LoadAjax("GET","Engineer_Control","",function(){
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200){
			var table = document.getElementById("content");
			var html = "<tr><td>订单号</td><td>" + orderid + "</td></tr>"
						+ "<tr><td>姓名</td><td>工号</td><td>电话</td><td>级别</td><td></td></tr>";
			var x = xmlhttp.responseXML.documentElement.getElementsByTagName("engineer");
			for(var i = 0; i < x.length;i++){
				var name = x[i].getElementsByTagName("name");
				var dellno = x[i].getElementsByTagName("dellno");
				var tele =  x[i].getElementsByTagName("tele");
				var level =  x[i].getElementsByTagName("level");
				var id = x[i].getElementsByTagName("id");
				html += "<tr><td>" + name[0].firstChild.nodeValue + "</td><td>"
						+ dellno[0].firstChild.nodeValue + "</td><td>"
						+ tele[0].firstChild.nodeValue + "</td><td>"
						+ level[0].firstChild.nodeValue + "</td>";
				html += "<td><input type=\"button\" class=\"h3\" onclick=\"Dispatch_Engi_Go(this)\""
						+ " value=\"选择\" id=\""  + id[0].firstChild.nodeValue + "\" ></td></tr>";
			}
			table.innerHTML = html;
		}
	});
}
function Dispatch_Engi_Go(button){
	var url = "Engineer_Control?orderid=" + orderid + "&engiid=" + button.id;
	LoadAjax("GET",url,"",function(){
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200){
			if(xmlhttp.responseText == "true"){
				alert("分配成功！");
				My_Work_Sheet();
			}
			else
				alert("分配失败！请稍后再试！");
		}
	})
}
function Worksheet_Detail(button){
	orderid = button.id;
	var url = "Worksheet_Detail?orderid=" + button.id;
	LoadAjax("GET",url,"",function(){
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200){ 
			var table = document.getElementById("content");
			var x = xmlhttp.responseXML.getElementsByTagName("worksheet");
			for(var i = 0; i < x.length;i++){
				var orderid = x[i].getElementsByTagName("orderid");
				var product = x[i].getElementsByTagName("product");
				var model = x[i].getElementsByTagName("model");
				var host = x[i].getElementsByTagName("host");
				var date = x[i].getElementsByTagName("date");
				var dispatch = x[i].getElementsByTagName("dispatch");
				var three = x[i].getElementsByTagName("three");
				var hard = x[i].getElementsByTagName("hard");
				var phenonmenon = x[i].getElementsByTagName("phenonmenon");
				var description = x[i].getElementsByTagName("description");
				var name = x[i].getElementsByTagName("name");
				var tele = x[i].getElementsByTagName("tele");
				var status = x[i].getElementsByTagName("status");
				var html = "<tr><td>订单号</td><td>" + orderid[0].firstChild.nodeValue + "</td></tr>"
				        +"<tr><td>产品名</td><td>" + product[0].firstChild.nodeValue + "</td></tr>"
					 	+"<tr><td>机型</td><td>" + model[0].firstChild.nodeValue + "</td></tr>"
					 	+"<tr><td>主机号</td><td>" + host[0].firstChild.nodeValue + "</td></tr>"
					 	+"<tr><td>创建时间</td><td>" + date[0].firstChild.nodeValue + "</td></tr>"
					 	+"<tr><td>派单时间</td><td>" + dispatch[0].firstChild.nodeValue + "</td></tr>"
					 	+"<tr><td>是否三包</td><td>" + three[0].firstChild.nodeValue + "</td></tr>"
					 	+"<tr><td>是否有保存硬盘服务</td><td>" + hard[0].firstChild.nodeValue + "</td></tr>"
					 	+"<tr><td>客户保修故障状态</td><td>" + phenonmenon[0].firstChild.nodeValue + "</td></tr>"
					 	+"<tr><td>客户保修故障详情</td><td>" + description[0].firstChild.nodeValue + "</td></tr>"
					 	+"<tr><td>客户姓名</td><td>" + name[0].firstChild.nodeValue + "</td></tr>"
					 	+"<tr><td>电话</td><td>" + tele[0].firstChild.nodeValue + "</td></tr>"
					 	+"<tr><td>状态</td><td>" + status[0].firstChild.nodeValue + "</td></tr>"
				
				table.innerHTML = html;
			}
			
		}
	})
}
function tuichu(){
	window.location.href="index.jsp?backurl="+window.location.href;
}
function xiugai(){
	window.location.href="updateLogPwd.jsp?backurl="+window.location.href;
}
</script>
</html>