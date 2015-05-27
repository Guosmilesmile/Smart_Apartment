<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%
String path=request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" href="css/Login_index.css" type="text/css" />
    <link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap.min.css" />
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="css/bootstrap-theme.min.css" rel="stylesheet" type="text/css" />
    <title></title>
</head>
<body id="body">
    <form id="form1" action="login">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="col-lg-3"></div>
                    <div id="outline" class="col-lg-6">
                        <img src="../images/logo.png" class="col-lg-12" />
                    </div>
                </div>
            </div>
        </div>

        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="col-lg-3"></div>
                    <div id="outline1" class="col-lg-6">
                        <div id="input_id">
                            <input id="stuid" type="text" class="form-control" placeholder="请输入学号" name="userid" runat="server" />
                            <input class="reset" type="reset" value="×" tabindex="54" />
                        </div>

                        <div id="input_key">

                            <input id="passwd" type="password" class="form-control" placeholder="请输入密码" name="password" runat="server" />
                            <input class="reset" type="reset" value="×" tabindex="55" />
                        </div>

                        <div id="link">
                            <a class="forget_id" href="#">忘记用户名/密码</a>
                            <a class="register" href="register_index.jsp">注册账号</a>
                            <div id="checkbox">
                                <input type="checkbox" /><span class="remain">保存并自动登录</span>
                            </div>
                        </div>

                        <div id="button">
                            <input type="submit" id="submit" class="btn btn-default btn-block" value="登录系统" runat="server" onserverclick="Unnamed_ServerClick" />
                        </div>


                    </div>
                </div>
            </div>
        </div>

    </form>
</body>
</html>

