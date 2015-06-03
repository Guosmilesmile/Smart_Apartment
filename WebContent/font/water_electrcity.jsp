<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path=request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="stylesheet" type="text/css" href="css/water_electricity.css" />
    <link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap.min.css" />
	<script type="text/javascript" src="<%=basePath%>js/jquery-1.4.2.min.js"></script>
	<script type="text/javascript">
	function GetWaterElect(){
		var housernumber=$('#input_id').val();
		$.ajax({
			type:'post',
			url:'<%=basePath%>waterelect',
			data:{housernumber:housernumber},
			success:function(List){
				$('#housernumber1').val(List.housernumber);
				$('#housernumber2').val(List.housernumber);
				$('#electnumber').val(List.electnumber);
				$('#electmoney').val(List.electmoney);
				$('#waternumber').val(List.waternumber);
				$('#watermoney').val(List.watermoney);
			},error:function(){alert("fail");}
		})
	};
		
	</script>
</head>
<body>
    <form id="form1" action="waterelect">

        <nav id="main_menu">

            <a href="main.jsp">系统主页</a>
            <a href="main.jsp#introduction">公寓概况</a>
            <a href="main.jsp#function">功能板块</a>
        </nav>

        <div>
            <div id="top_outline" class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="col-md-10" id="top">
                            <div class="col-lg-1"></div>
                            <img class="col-lg-10" src="../images/title2.png" />
                        </div>
                    </div>
                </div>
            </div>

            <div class="container">

                <div class="row" id="row_outline">
                    <div class="col-md-12" id="outline">
                        <div>
                            <div id="input">
                                <br />
                                <div class="col-lg-4">
                                    <input type="text" class="form-control" id="input_id" name="housernumber" placeholder="请输入8位宿舍号" />
                                </div>
                                <div class="col-lg-1">
                                    <input id="button" type="button" class="btn btn-default btn-block" value="查询" onclick="GetWaterElect()"/>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>


            <div class="container">

                <div class="row">
                    <div class="col-md-12" id="outline1">
                        <div>

                            <div id="electricity">
                                <br />
                                <span class="lable">电费使用情况：</span>
                                <br />

                                <div class="container-fluid" id="elec_remain">
                                    <div class="col-md-4">宿舍编号</div>
                                    <div class="col-md-4">账户余额</div>
                                    <div class="col-md-4">剩余电量</div>
                                </div>

                                <div class="container-fluid">
                                    <input class="col-md-4" id="housernumber1" type="text" value=""  readonly="true"/>
                                    <input class="col-md-4" id="electmoney" type="text" value=""  readonly="true"/>
                                    <input class="col-md-4" id="electnumber" type="text" value=""  readonly="true"/>

                                </div>

                            </div>
                            <div id="water">
                                <br />
                                <span class="lable">水费使用情况：</span>
                                <br />

                                <div class="container-fluid" id="water_remain">
                                    <div class="col-md-4">宿舍编号</div>
                                    <div class="col-md-4">账户余额</div>
                                    <div class="col-md-4">剩余水量</div>
                                </div>
                                <div class="container-fluid">
                                    <input class="col-md-4" id="housernumber2" type="text" value=""  readonly="true"/>
                                    <input class="col-md-4" id="watermoney" type="text" value=""  readonly="true"/>
                                    <input class="col-md-4" id="waternumber" type="text" value=""  readonly="true"/>

                                </div>

                            </div>

                        </div>

                    </div>
                </div>
            </div>

        </div>
    </form>
</body>
</html>
