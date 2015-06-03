<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login_error.aspx.cs" Inherits="login_and_attend.font.login_error" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap.min.css" />
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
	<link href="css/bootstrap-theme.min.css" rel="stylesheet" type="text/css" />
    <link href="css/login_error.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="container" id="container1">
        <div class="col-md-12">
            <h1>用户名或密码错误！</h1>
            <a id="a" href="Login_index.aspx"><p>如页面未自动跳转请点这里</p></a>
        </div>
    </div>
    </form>
</body>
</html>
