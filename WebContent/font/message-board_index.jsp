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
<head >
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link type="text/css" rel="stylesheet" href="css/message-board_index.css" />

    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="css/bootstrap-theme.min.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="<%=basePath%>js/jquery-1.4.2.min.js"></script>



    <title></title>
    <script type="text/javascript">
    $(document).ready(function () {
    	$.ajax({
    		type:'post',
			url:'<%=basePath%>getallmessage',
			success:function(List){
				var str="";
				if(List.length>0){
					for(var i=0;i<List.length;i++){
					str+="<ul><li id='lione'>" +List[i].title+"</li><li class='type'>"+List[i].content+"</li><li>"+List[i].user.userid+"</li></ul><hr>";
					}
				}
				$('#messages').html(str);
			},error:function(){alert("fail");}
    	});
    })
    </script>
</head>
<body id="body">
    <form id="form1" action="addmessage">

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
                            <img class="col-lg-10" src="../images/title5.png" />
                        </div>
                    </div>
                </div>
            </div>

            <div class="container">
                <div class="row" id="row_outline">
                    <div class="col-lg-12" id="outline">
                        <div id="display">
                            <div id="title">
                                <span>留下你的足迹</span>
                                <a href="#message-board" class="more">发表留言 >></a><br />
                            </div>

                            <div id="messages">
                                
                            </div>
                            <div class="col-lg-1"></div>
                            <div id="message-board" class="col-lg-10">
                                <div id="topic">
                                    <span class="label_input">标题</span>
                                    <input class="form-control" type="text"  id="messtitle" name="title"/>
                                </div>
                                <div id="content">
                                    <span class="label_input">内容</span><br />
                                    <textarea class="form-control" rows="10"  id="messcntent" name="content"></textarea>
                                </div>

                                <div class="col-lg-3"></div>
                                <div id="submit" class="col-lg-3">
                                    <input class="btn btn-default btn-block" type="submit" value="提交"  id="messsub" onserverclick="messsub_ServerClick" />
                                </div>
                                <div id="reset" class="col-lg-3">
                                    <input class="btn btn-default btn-block" type="reset" value="重置" />
                                </div>
                                <a href="#" class="more">返回顶部 >></a><br />
                            </div>

                        </div>

                    </div>
                </div>
            </div>
        </div>
        <input id="Hidden1" type="hidden" value="24320132202407"  />
    </form>
</body>
</html>
