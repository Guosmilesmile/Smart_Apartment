<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="lost-thing_index.aspx.cs" Inherits="login_and_attend.font.lost_thing_index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link type="text/css" rel="stylesheet" href="css/lost-thing_index.css" />
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="css/bootstrap-theme.min.css" rel="stylesheet" type="text/css" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">

        <nav id="main_menu">

            <a href="main.aspx">系统主页</a>
            <a href="main.aspx#introduction">公寓概况</a>
            <a href="main.aspx#function">功能板块</a>
        </nav>

        <div id="top_outline" class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="col-md-10" id="top">
                        <div class="col-lg-1"></div>
                        <img class="col-lg-10" src="../images/title3.png" />
                    </div>
                </div>
            </div>
        </div>

        <div class="container">

            <div class="row" id="row_outline">
                <div class="col-md-12" id="outline">
                    <div>
                        <br/>
                        <span id="title">【失物招领】</span>
                        <p class="more">温馨提示： 请失主前往相应公寓办认领</p><br />
                        <table id="information" class="table table-hover">
                            <tr>
                                <th class="col-lg-3">物件</th>
                                <th class="col-lg-3">地点</th>
                                <th class="col-lg-3">物件特点</th>
                                <th class="col-lg-3">是否已经被认领</th>
                            </tr>
                            <%=Strlost%>
                        </table>

                    </div>
                </div>
            </div>

        </div>
    </form>
</body>
</html>
