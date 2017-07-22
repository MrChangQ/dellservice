<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <%@ page session="true" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- <!DOCTYPE html> -->
<html>
  <head>
    <title>用户登陆</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <meta name="apple-mobile-web-app-capable" content="yes"/>
    <link href="resources/css/jquery-ui-themes.css" type="text/css" rel="stylesheet"/>
    <link href="resources/css/axure_rp_page.css" type="text/css" rel="stylesheet"/>
    <link href="data/styles.css" type="text/css" rel="stylesheet"/>
    <link href="files/index0/styles.css" type="text/css" rel="stylesheet"/>
    <!-- <script src="resources/scripts/jquery-1.7.1.min.js"></script>
    <script src="resources/scripts/jquery-ui-1.8.10.custom.min.js"></script>
    <script src="resources/scripts/axure/axQuery.js"></script>
    <script src="resources/scripts/axure/globals.js"></script>
    <script src="resources/scripts/axutils.js"></script>
    <script src="resources/scripts/axure/annotation.js"></script>
    <script src="resources/scripts/axure/axQuery.std.js"></script>
    <script src="resources/scripts/axure/doc.js"></script>
    <script src="data/document.js"></script>
    <script src="resources/scripts/messagecenter.js"></script>
    <script src="resources/scripts/axure/events.js"></script>
    <script src="resources/scripts/axure/recording.js"></script>
    <script src="resources/scripts/axure/action.js"></script>
    <script src="resources/scripts/axure/expr.js"></script>
    <script src="resources/scripts/axure/geometry.js"></script>
    <script src="resources/scripts/axure/flyout.js"></script>
    <script src="resources/scripts/axure/ie.js"></script>
    <script src="resources/scripts/axure/model.js"></script>
    <script src="resources/scripts/axure/repeater.js"></script>
    <script src="resources/scripts/axure/sto.js"></script>
    <script src="resources/scripts/axure/utils.temp.js"></script>
    <script src="resources/scripts/axure/variables.js"></script>
    <script src="resources/scripts/axure/drag.js"></script>
    <script src="resources/scripts/axure/move.js"></script>
    <script src="resources/scripts/axure/visibility.js"></script>
    <script src="resources/scripts/axure/style.js"></script>
    <script src="resources/scripts/axure/adaptive.js"></script>
    <script src="resources/scripts/axure/tree.js"></script>
    <script src="resources/scripts/axure/init.temp.js"></script>
    <script src="files/index0/data.js"></script>
    <script src="resources/scripts/axure/legacy.js"></script>
    <script src="resources/scripts/axure/viewer.js"></script>
    <script src="resources/scripts/axure/math.js"></script> -->
    <!-- <script type="text/javascript">
      $axure.utils.getTransparentGifPath = function() { return 'resources/images/transparent.gif'; };
      $axure.utils.getOtherPath = function() { return 'resources/Other.html'; };
      $axure.utils.getReloadPath = function() { return 'resources/reload.html'; };
    </script> -->
	
  </head>
  <body>
    <div id="base" class="">

      <!-- Unnamed (图片) -->
      <div id="u0" class="ax_default image">
        <img id="u0_img" class="img " src="images/index0/u0.png"/>
        <!-- Unnamed () -->
        <div id="u1" class="text" style="display: none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (图片) -->
      <div id="u2" class="ax_default image">
        <img id="u2_img" class="img " src="images/index0/u2.png"/>
        <!-- Unnamed () -->
        <div id="u3" class="text" style="display: none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (图片) -->
      <div id="u4" class="ax_default image">
        <img id="u4_img" class="img " src="images/index0/u4.png"/>
        <!-- Unnamed () -->
        <div id="u5" class="text" style="display: none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (提交按钮) -->
      <div id="u6" class="ax_default html_button">
        <input id="u6_input" type="button" onclick = "Login()" value="登录"/>
		<label id="u17" hidden = "true" id="fail">登录失败</label>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u7" class="ax_default text_field">
        <input type = "text" name = "username" id = "user" value=""/>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u8" class="ax_default text_field">
        <input type ="password" name = "password" id = "psw" value=""/>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u9" class="ax_default label">
        <div id="u9_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u10" class="text" style="visibility: visible;">
          <p><span style="font-family:'叶根友毛笔行书2.0版 Bold', '叶根友毛笔行书2.0版 常规', '叶根友毛笔行书2.0版';">欢迎来到</span><span style="font-family:'MV Boli Bold', 'MV Boli Normal', 'MV Boli';">Dell</span><span style="font-family:'叶根友毛笔行书2.0版 Bold', '叶根友毛笔行书2.0版 常规', '叶根友毛笔行书2.0版';">，专心做产品</span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u11" class="ax_default label">
        <div id="u11_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u12" class="text" style="visibility: visible;">
          <p><span style="font-family:'Segoe Script Normal', 'Segoe Script';font-weight:400;">Dell</span><span style="font-family:'仿宋 Bold', '仿宋';font-weight:700;">系统登录</span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u13" class="ax_default label">
        <div id="u13_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u14" class="text" style="visibility: visible;">
          <p><span>用户名</span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u15" class="ax_default label">
        <div id="u15_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u16" class="text" style="visibility: visible;">
          <p><span>密&nbsp;&nbsp;&nbsp;码</span></p>
        </div>
      </div>
    </div>
  </body>
  
   <script type= "text/javascript">
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
				/* document.getElementById("fail").style.display = "block"; */
				//$("fail").hidden = "false";
				alert("密码错误！");
				return;
			}
			else{
				var type = xmlhttp.responseText.substring(7);
			     /* type=2; */
				if(type == "0")
					window.location.href="admin.jsp?backurl="+window.location.href; 
				if(type == "2")
					window.location.href="Stuff.jsp?backurl="+window.location.href; 
			}
				
		}
	})
}
</script>
  
</html>
