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
    <title>基本会员-基本信息</title>
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
    <script type="text/javascript" src="front/js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript">
    $(function(){
    	
    	//var height = document.documentElement.offsetHeight?document.documentElement.offsetHeight:document.body.offsetHeight;
    	var height = document.documentElement.offsetHeight||document.body.offsetHeight;
    	//alert(height);
    	var rightframe = parent.document.getElementById("rightframe");
    	$(rightframe).attr("height",height);
    	
    	var mainframe = parent.parent.document.getElementById("myiframe");
    	var parentheight = parent.document.documentElement.offsetHeight;
    	$(mainframe).attr("height",parentheight);
    	
    });
    </script>
    
    
    
</head>
<body>
<!--网站顶部-->

<!-- 内容主体区 -->
        <!-- 面包屑导航 -->
        
         <!-- 会员左侧 -->
         
         <!-- 会员右侧 -->
         <div class="member-right">
            <div class="member-main">
                <!-- 基本资料 -->
                <div class="member-column">
                    <!-- 专属交易员 -->
                    <div class="member-exclusive">
                        <div class="exclusive-tit">我的专属交易员</div>
                        <div class="exclusive-con">
                            <div class="exclusive-area">华南区--张三</div>
                            <div class="exclusive-tel">1345678910123</div>
                            <a href="javascript:;" class="exclusive-qq"><img src="front/images/member-qq.png" alt=""></a>
                        </div>
                    </div>
                    <div class="member-tit"><p>基本资料</p></div>
                     <div class="member-con">
                        <div class="controls">
                            <p><span>*</span>用户名：</p>
                            <div class="basic-name">test6288</div>
                        </div>
                        <div class="controls">
                            <p>昵称：</p>
                            <input type="text" class="input03 w250">
                        </div>
                        <div class="controls">
                            <p>头像：</p>
                            <div class="upload-controls">
                                <div class="upload-img head-img"><img src="front/images/upload-img01.png" alt=""></div>
                                <input type="button" value="点击上传" class="upload-btn w100">
                            </div>
                            <div class="tip">
                                <em>1、上传文件要求为清晰照片；尺寸为正方形</em>
                                <em>2、照片要求格式为jpg、jpeg、gif或png，大小不要超过3M。</em>
                            </div>
                        </div>
                        <div class="controls">
                            <p>手机号：</p>
                            <div class="basic-tel">18911111111</div>
                            <a class="change-tel" href="javascript:;">更改手机</a>
                        </div>
                        <div class="controls">
                            <p>邮箱：</p>
                            <input type="text" class="input03 w250">
                        </div>
                        <div class="controls">
                            <p>地区：</p>
                           <select class="selectpicker" data-width="252">
                                <option value="0">请选择</option>
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                            </select>
                        </div>
                        <div class="controls">
                            <p>详细地址：</p>
                            <input type="text" class="input03 w450">
                        </div>
                        <input type="submit" value="保存" class="btn01 submit">
                     </div>
                </div>
                <!-- 银行账户信息 -->
                <div class="member-column">
                    <div class="member-tit">
                        <p>银行账户信息</p>
                        <a href="javascript:;">为什么需要填正确的银行帐号信息？​</a>
                    </div>
                     <div class="member-con">
                        <form action="#" class="member-form">
                            <div class="controls">
                                <p>户名：</p>
                                <input type="text" class="input03 w250">
                            </div>
                            <div class="controls">
                                <p>开户行：</p>
                                <input type="text" class="input03 w250">
                            </div>
                            <div class="controls">
                                <p>银行账号：</p>
                                <input type="text" class="input03 w250">
                            </div>
                            <div class="controls">
                                <div class="bound-tel">当前绑定手机：<span>18911111111</span></div>
                                <input type="button" value="获取验证码" class="btn06 w125">
                            </div>
                            <div class="controls">
                                <p>验证码：</p>
                                <input type="text" class="input03 w250">
                            </div>
                            <input type="submit" value="提交修改" class="btn01 submit">
                        </form>
                     </div>
                </div>
            </div>
          </div>
<!--网站底部-->


<script type="text/javascript" src="front/js/select.js"></script>
</body>
</html>