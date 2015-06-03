<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path=request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head >
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link type="text/css" rel="stylesheet" href="css/register_index.css" />
    <link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap.min.css" />
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="css/bootstrap-theme.min.css" rel="stylesheet" type="text/css" />
    <title></title>
    <script type="text/javascript" src="<%=basePath %>js/jquery-1.4.2.min.js"></script>
    <script type="text/javascript">
     function submitclick(){
    	var pass = $('#Stupass').val();
		var passes = $('#Stupasses').val();
		if(pass!=passes){
			alert("密码输入不一致");
			return false;
		}else{
			return true;
		}
    };
    	$(document).ready(function(){
    		
    		
    	})
    </script>
</head>
<body id="body">
    <form id="form1" action="register" method="post">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="col-lg-2"></div>
                    <div id="outline" class="col-lg-8">
                        <span id="title">register a new account</span>
                        <div id="input_name">
                            <span class="label_input">姓名:</span>
                            <input id="Stuname" class="form-control" type="text" name="username"/>
                         	<s:fielderror>   
    							<s:param>nameerror</s:param>   
							</s:fielderror>  
                        </div>
                        <div id="input_id">
                            <span class="label_input">学号:</span>
                            <input id="Stunum" class="form-control" type="text" name="userid"/>
                            <s:fielderror>   
    							<s:param>iderror</s:param>   
							</s:fielderror>  
                        </div>
                        <div id="input_key">
                            <span class="label_input">密码:</span>
                            <input id="Stupass" class="form-control" type="password" name="password" />
                        	<s:fielderror>   
    							<s:param>passworderror</s:param>   
							</s:fielderror>  
                        </div>
                        <div id="confirm_key">
                            <span class="label_input">确认密码:</span>
                            <input id="Stupasses" class="form-control" type="password" name="compassword" />
                          
                        </div>

                        <div id="input_buildingnum">
                            <span class="label_input">宿舍编号:</span>
                            <span class="hint">（例如：09020321）</span>
                            <input id="Sturoom" class="form-control" type="text" name="housernumber"/>
                             	<s:fielderror>   
    							<s:param>housererror</s:param>   
							</s:fielderror>  
                        </div>
                        <div class="col-lg-2"></div>
                        <div id="button" class="col-lg-8">
                            <div class="col-lg-1"></div>
                            <div id="submit" class="col-lg-4">
                                <input class="btn btn-default btn-block" type="submit" id="btn1" value="注册"  onclick="submitclick()"/>
                            </div>
                            <div id="reset" class="col-lg-4">
                                <input class="btn btn-default btn-block" id="btn2" type="reset" value="重置" />
                            </div> 
                            <div class="col-lg-7" id="login"><a href="Login_index.jsp" >已有帐号，请登录</a></div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
