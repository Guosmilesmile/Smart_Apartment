<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="my_help_take.aspx.cs" Inherits="login_and_attend.font.my_help_take" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap.min.css" />
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="css/bootstrap-theme.min.css" rel="stylesheet" type="text/css" />
    <link href="css/my_help_take.css" rel="stylesheet" type="text/css" />
    <script src="../js/jquery-1.11.1.min.js"></script>
    <script type="text/javascript">
        function delebtn(a, b) {
            buttonid = $(a).attr('id');
            stuid = $("#Hidden1").attr('value');
            buttonid = buttonid.substring(7);
            
            $.ajax({
                type: "POST",
                url: "ajaxdelete.aspx",
                data: {
                    ID: buttonid,
                    stuid: stuid,
                },
                success: function () {
                   
                    window.location.href = "my_help_take.aspx";
                }, error: function () {  }
            });
        };
        $(document).ready(function () {
          
        });


    </script>
</head>
<body>
    <form id="form1" runat="server">

        <nav id="main_menu">

            <a href="main.aspx">系统主页</a>
            <a href="main.aspx#introduction">公寓概况</a>
            <a href="main.aspx#function">功能板块</a>
        </nav>

        <div>
            <div id="top_outline" class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="col-md-10" id="top">
                            <div class="col-lg-1"></div>
                            <img class="col-lg-10" src="../images/title4.png" />
                        </div>
                    </div>
                </div>
            </div>



            <div class="container">

                <div class="row" id="row_outline">
                    <div class="col-md-12" id="outline">
                        <div>
                            <br />
                            <span>【个人记录】</span>
                            <a href="help_take.aspx" class="more">返回 >></a><br />
                            <table class="table table-hover">
                                <tr>
                                    <th class="col-lg-1">ID</th>
                                    <th class="col-lg-1">快递</th>
                                    <th class="col-lg-2">委托人电话</th>
                                    <th class="col-lg-4">备注</th>
                                    <th class="col-lg-2">状态</th>
                                    <th class="col-lg-2">操作</th>
                                </tr>
                                <%=myhelpstr %>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <input id="Hidden1" type="hidden" value="24320132202407" runat="server" />
    </form>
</body>
</html>
