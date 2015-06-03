<%@page import="com.opensymphony.xwork2.ActionContext"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path=request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" type="text/css" href="css/repair.css" />
    <link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap.min.css" />
    <title></title>
	<script type="text/javascript" src="<%=basePath%>js/jquery-1.4.2.min.js"></script>
	<script type="text/javascript">
	function GetAllRepair(){
		$.ajax({
			type:'post',
			url:'<%=basePath%>getallrepair',
			data:{},
			success:function(List){
				var tbody = $('#trrepair');
				var str =" <tr>"
                    +"<th>宿舍号</th>"
                    +"<th>维修内容</th>"
                    +"<th>状态</th>"
                    +"<th>操作</th>"
                    +"<th>评价</th>"
                	+"</tr>";
				if(List.length > 0){
					for(var i=0;i<List.length;i++){
						 str += " <tr><td>" + List[i].sturoom + "</td><td>" + List[i].repaircontent + "</td><td>"+List[i].flag+"</td><td><button type='button' class='btn btn-primary'>未评价</button></td>"
                         + "<td><button type='button' class='btn btn-primary'>查看</button></td>"
                        + "</tr>";
					}
				}
				tbody.html(str);
			},error:function(){alert("fail");}
		})
	};
		$(document).ready(function(){
			GetAllRepair();
		});
	</script>
</head>
<body>
    <form id="form1" action="addrepair" method="post">
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
                            <img class="col-lg-10" src="../images/title1.png" />
                        </div>
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row" id="row_outline">
                    <div class="col-md-12" id="outline">
                        <div>
                            <span>维修申请</span><br />
                            宿舍号：
                        <input type="text" id="Sturoom" name="sturoom" class="form-control" placeholder="例:09040421" />
                        <s:fielderror>   
    							<s:param>sturoom</s:param>   
							</s:fielderror> 
                            联系电话：
                        <input type="text"  id="Stutel" name="telphone" class="form-control" placeholder="请输入" />
         					<s:fielderror>   
    							<s:param>telphone</s:param>   
							</s:fielderror>                   
                            具体留言：
                        <textarea class="form-control" rows="2" id="Stucontent" name="repaircontent"></textarea>
                            <s:fielderror>   
    							<s:param>repaircontent</s:param>   
							</s:fielderror> 
                            <br />
                            <div class="row">
                                <div class="col-lg-1">
                                    <input id="Button1" type="submit" class="btn btn-default btn-block"  value="提交" >
                                </div>
                                <div class="col-lg-1">
                                    <button type="button" class="btn btn-default btn-block">查询</button>
                                </div>
                            </div>
                        </div>

                        <div>
                            <br />
                            <span>申请记录</span><a href="#" id="more">查看更多 >></a><br />
                            <table id="trrepair" class="table table-hover">
                               <tr>
                                    <th>宿舍号</th>
                                    <th>维修内容</th>
                                    <th>状态</th>
                                    <th>操作</th>
                                    <th>评价</th>
                                </tr>
                            </table>

                        </div>

                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
