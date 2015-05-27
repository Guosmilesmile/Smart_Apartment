<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>欢迎登录本科教学质量保障系统</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" src="js/jquery.js"></script>


<script language="javascript">
	$(function(){
    $('.loginbox').css({'position':'absolute','left':($(window).width()-692)/2});
	$(window).resize(function(){  
    $('.loginbox').css({'position':'absolute','left':($(window).width()-692)/2});
    })
});  
</script> 


</head>

<body style="background-color:#1c77ac; background-image:url(images/light.png); background-repeat:no-repeat; background-position:center top; overflow:hidden;">
    <div id="mainBody">
      <div id="cloud1" class="cloud"></div>
     

    <div class="logintop">    
       <span>欢迎登录厦门大学本科教学质量保障系统</span>    
       <ul>
       <li><a href="ch/index.jsp">回首页</a></li>
       <li><a href="#">帮助</a></li>
       <li><a href="#">关于</a></li>
       </ul>    
    </div>
    
    <div class="loginbody">
    
       <span class="systemlogo"></span> 
         
       <div class="loginbox">
       
       <form action="login" method="post" enctype="application/x-www-form-urlencoded">
       <div class="logininfo">
       <ul>
       <li><input class="loginuser"  name="userid" type="text"  placeholder="账号" /></li>
       <li><input class="loginpwd"   name="password" type="password"  placeholder="密码"/></li>
       <li>
       </li>
       <li>
       <input class="loginbtn" name="" type="submit" value="登录"/>&nbsp;&nbsp;
       <a id="openxmu" href="http://open.xmu.edu.cn/oauth2/authorize?client_id=1044&response_type=code"><img  src="images/openxmu.png"></a>
       <label><a href="#">忘记密码？</a></label>&nbsp;&nbsp;
       </li>
       </ul>
        </div>
       </form>
       </div>
    </div>
       
    <div class="loginbm">版权所有  2014<a href="http://www.xmu.edu.cn/">厦门大学</a> </div>
	 </div>   
</body>

</html>
