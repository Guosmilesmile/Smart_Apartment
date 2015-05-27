<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="help_take.aspx.cs" Inherits="login_and_attend.font.help_take" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap.min.css" />
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="css/bootstrap-theme.min.css" rel="stylesheet" type="text/css" />
    <link href="css/help_take.css" rel="stylesheet" type="text/css" />
    <script src="../js/jquery-1.11.1.min.js"></script>
    <script type="text/javascript">
        var buttonid = "";
        function takeclick(a, b) {
            buttonid = $(a).attr('id');
            stuid = $("#hidid").attr('value');
            buttonid = buttonid.substring(5);
            $.ajax({
                type: "POST",
                //url: "ajax.cs/sayHi",
                url: "ajax.aspx",
                data: {
                    ID: buttonid,
                    stuid: stuid,
                },
                success: function () {
                    window.location.href = "help_take.aspx";

                },
                error: function (err) { alert(err) }
            });

        };
        $(document).ready(function () {


        });
    </script>
</head>
<body>
    <form id="form1" runat="server">

        <nav id="main_menu">

            <a href="main.aspx#main">系统主页</a>
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
                            <span>【快递申请】</span>
                            <a href="my_help_take.aspx" class="more">我的领取 >></a><br />
                            <table class="table table-hover">
                                <tr>
                                    <th class="col-lg-1">快递</th>
                                    <th class="col-lg-2">电话</th>

                                    <th class="col-lg-2">备注</th>
                                    <th class="col-lg-1"></th>
                                </tr>
                                <tr>
                                    <td>
                                        <input type="text" class="form-control" placeholder="请输入" id="Expre" runat="server" /></td>
                                    <td>
                                        <input type="text" class="form-control" placeholder="请输入" runat="server" id="Telphon" /></td>

                                    <td>
                                        <input type="text" class="form-control" placeholder="请输入" id="Conten" runat="server" /></td>
                                    <td>
                                        <button id="btn_sub" type="submit" class="btn btn-primary" runat="server" onserverclick="btn_sub_ServerClick1">提交</button></td>
                                </tr>

                            </table>




                            <br />
                            <span>【当天日期】</span>
                            <a href="#" class="more">查看更多 >></a><br />
                            <table class="table table-hover">
                                <tr>
                                    <th class="col-lg-2">快递</th>
                                    <th class="col-lg-2">姓名</th>
                                    <th class="col-lg-2">电话</th>

                                    <th class="col-lg-4">备注</th>
                                    <th class="col-lg-2">操作</th>
                                </tr>
                                <%=helpstr %>
                               
                            </table>
                        </div>
                    </div>
                </div>
            </div>



            <input id="hidid" type="hidden" value="24320132202407" runat="server" />
        </div>
    </form>
</body>
</html>
