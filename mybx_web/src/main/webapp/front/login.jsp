<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basepath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

%>
<!DOCTYPE html>
<html>
<head lang="en">
	<base href="<%=basepath %>" />
    <meta charset="UTF-8">
    <title>超鲜网-登录页</title>
    <link rel="stylesheet" href="front/css/public.css"/>
    <link rel="stylesheet" href="front/css/page.css"/>
    <link rel="stylesheet" href="front/css/member.css"/>
    <link rel="stylesheet" href="front/css/banner.css"/>
    <link rel="stylesheet" href="front/css/tab.css"/>
    <link rel="stylesheet" href="front/css/table.css"/>
    <link rel="stylesheet" href="front/css/select.css">
    <link rel="stylesheet" href="front/css/font-awesome.min.css">
    <link rel="stylesheet" href="front/css/font-awesome-ie7.css">
    <!--[if lt IE 10]>
    <script src="js/html5shiv.min.js"></script>
    <![endif]-->
    <script type="text/javascript" src="front/js/jquery-1.8.3.min.js" ></script>
    <script type="text/javascript">
    $(function(){
    	var height = document.documentElement.offsetHeight;
    	var iframe = parent.document.getElementById("myiframe");
    	$(iframe).attr("height",height);
    	
    	
    	$("#btn").click(function(){
    		loginform.submit();
    	});
    	
    	
    	
    	
    });
    </script>
</head>
<body>
    <div class="container">
        <!-- 面包屑导航 -->
        <div class="bread-crumbs">
            <a href="javascript:;">首页</a>
            <span><i class="fa fa-angle-double-right"></i></span>
            <a href="javascript:;" class="selected">登录</a>
        </div>
        <div class="content-reg">
            <!-- 登录表单 -->
            <div class="login-form">
                <!-- 登录左 -->
                <div class="login-left">
                    <img src="front/images/login-pic.png" alt="">
                </div>
                <!-- 登录右 -->
                <div class="login-right">
                    <form id="loginform" name="loginform" action="vuc/islogin" method="post">
                        <div class="controls">
                            <div class="login-controls">
                                <p>用户名：</p>
                                <div class="login-tools">未注册用户<i class="fa fa-angle-double-right"></i> 
                                    <a href="javascript:;">注册</a>
                                </div>
                            </div>
                            <input type="text" name="loginname" class="input03 w400">
                        </div>
                        <div class="controls">
                            <div class="login-controls">
                                <p>密码：</p>
                                <div class="login-tools">
                                    <a href="javascript:;">忘记密码</a>
                                </div>
                            </div>
                            <input type="password" name="loginpwd" class="input03 w400">
                        </div>
                        <div class="controls">
                            <div class="login-controls">
                                <p>验证码：</p>
                            </div>
                            <input type="text" class="input03 w250">
                            <img src="front/images/login-code.png" alt="" class="code-img">
                            <a href="javascript:;" class="code-change">换一张</a>
                        </div>
                        <div class="controls">
                            <input type="button" id="btn" value="登录" class="btn07 w400">
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

</body>
</html>