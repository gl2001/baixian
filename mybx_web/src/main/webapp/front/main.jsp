<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	String path = request.getContextPath();
	String basepath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

%>
<!DOCTYPE html>
<html>
<head lang="en">
	<base href="<%=basepath %>" />
    <meta charset="UTF-8">
    <title>超鲜网-首页</title>
    <link rel="stylesheet" href="front/css/member.css"/>
    <link rel="stylesheet" href="front/css/index.css"/>
    <link rel="stylesheet" href="front/css/public.css"/>
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
    	$("#pleaseloign").click(function(){
    		$("#myiframe").attr("src","vuc/prelogin");
    	});
    	
    	
    	$("#vipcenter").click(function(){
    		gopage("enterVipCenter");
    	});
    	
    	
    	
    });
    
    function gopage(myurl){
    	$("#myiframe").attr("src",myurl);
    }
    
    
    
    
    
    
    </script>
</head>
<body>
<!--网站顶部-->
<div class="top">
    <div class="container">
        <div class="top-left">
            <p>欢迎来到超鲜网</p>
            <!-- <a href="vuc/prelogin" target="myiframe">请登录</a> -->
            
            <c:if test="${sessionScope.vipuser==null }">
            <a href="javascript:void(0);" id="pleaseloign" >请登录</a>
            <span>|</span>
            <a href="javascript:;">免费注册</a>
            </c:if>
            <c:if test="${sessionScope.vipuser!=null }">
            	<span>欢迎您：${sessionScope.vipuser.nikname }</span><a href="javascript:void(0);" id="vipcenter" >会员中心</a>
            	<span>|</span>
            	<a href="javascript:;">退出</a>
            </c:if>
            
        </div>
        <div class="top-right">
            <ul>
                <li><a href="javascript:;">帮助中心&nbsp;&nbsp;|</a></li>
                <li><a href="javascript:;">我的关注&nbsp;&nbsp;|</a></li>
                <li><a href="javascript:;">联系客服&nbsp;&nbsp;|</a></li>
                <li><a href="javascript:;">网站导航&nbsp;&nbsp;|</a></li>
                <li><a href="javascript:;">客服热线：<span>400-888-8888</span>&nbsp;&nbsp;|</a></li>
            </ul>
            <div class="attention">
                <p>关注我们：</p>
                <a class="weixin" href="javascript:;">
                    <img src="front/images/top-icon01.png" alt=""/>
                    <div class="weixin-erweima">
                        <i></i>
                        <img src="front/images/erweima.png" alt=""/>
                    </div>
                </a>
                <a class="xl" href="javascript:;"><img src="front/images/top-icon02.png" alt=""/></a>
                <a class="tx" href="javascript:;"><img src="front/images/top-icon03.png" alt=""/></a>
                <span>|</span>
            </div>
            <a class="version" href="javascript:;">English</a></div>
    </div>
</div>
<!--网站头部-->
<header>
    <div class="container">
         <a href="javascript:;" class="logo">
           <img src="front/images/logo.png" alt=""/>
         </a>
        <div class="search">
            <div class="search-form">
                <div class="input"><input type="text"/></div>
                <div class="button">
                    <button type="submit"><i class="fa fa-search"></i></button>
                </div>
            </div>
            <div class="search-list">
                <a class="selected" href="javascript:;">A级牛肉</a>
                <span>|</span>
                <a href="javascript:;">进口猪肉</a>
                <span>|</span>
                <a href="javascript:;">A级排骨肉</a>
                <span>|</span>
                <a href="javascript:;">A级牛肉</a>
                <span>|</span>
                <a href="javascript:;">进口猪肉</a>
                <span>|</span>
                <a class="selected" href="javascript:;">A级排骨肉</a>
            </div>
        </div>
        <div class="cart">购物车中<span>0</span>件</div>
    </div>
</header>
<!--网站导航-->
<nav>
    <div class="container">
        <dl>
            <dt>
                <a class="pro-all" href="javascript:;">商品全部分类&nbsp;&nbsp;<i class="fa fa-sort-desc fa-caret-up"></i></a>
                <ul>
                   
                   <c:forEach items="${menulist }" var="ml" >
                   <c:if test="${ml.parentid==0 }">
                    <li class="pro-sort">
                        <div class="sort-first">
                            <i class="fa fa-caret-right"></i>
                            <a class="tit" href="${ml.menuUrl }">${ml.menuName }</a>
                            <div class="con">
                            	<c:forEach items="${menulist }" var="secondmenu">
                            	<c:if test="${secondmenu.parentid==ml.menuid }">
                               <a href="${secondmenu.menuUrl }">${secondmenu.menuName }</a>
                               </c:if>
                               </c:forEach>
                               
                            </div>
                        </div>
                        <div class="sort-second">
                        	<c:forEach items="${menulist }" var="secondmenu">
                        	<c:if test="${secondmenu.parentid==ml.menuid }">
                            <div class="second-list">
                                <a class="second-tit" href="${secondmenu.menuUrl }">${secondmenu.menuName }<i class="fa fa-angle-right"></i></a>
                                <div class="second-con">
                                	<c:forEach items="${menulist }" var="thirdmenu" >
                                	<c:if test="${thirdmenu.parentid==secondmenu.menuid }">
                                    <span>|</span><a href="${thirdmenu.menuUrl }">${thirdmenu.menuName }</a>
                                    </c:if>
                                    </c:forEach>
                                </div>
                            </div>
                            </c:if>
                            </c:forEach>
                            
                            
                            
                            <a class="second-add" href=""><img src="${ml.menuImage }" alt=""/></a>
                        </div>
                    </li>
                    
                    </c:if>
                    </c:forEach>
                    
                    
                    
                    
                    
                    
                    
                    
                    
                </ul>
            </dt>
            <dd><a class="selected" href="javascript:gopage('firstpage');">首页</a></dd>
            <dd><a href="javascript:gopage('资源的控制器的路径');">资源</a></dd>
            <dd><a href="javascript:gopage('资源的控制器的路径');;">采购</a></dd>
            <dd><a href="javascript:gopage('资源的控制器的路径');;">搜索</a></dd>
            <dd><a href="javascript:gopage('资源的控制器的路径');;">物流</a></dd>
            <dd><a href="javascript:gopage('资源的控制器的路径');;">行情</a></dd>
            <dd><a href="javascript:gopage('资源的控制器的路径');;">积分商城</a></dd>
            <dd><a href="javascript:gopage('资源的控制器的路径');;">会员俱乐部</a></dd>
        </dl>
    </div>
</nav>
<div class="content">
    <iframe id="myiframe" name="myiframe" frameborder="0" name="myiframe" src="firstpage" width="100%"  ></iframe>
</div>
<!--网站底部-->
<footer>
    <div class="footer-top">
        <div class="container">
            <div class="footer-left">
                <div class="footer-logo"><img src="front/images/logo.png" alt=""/></div>
                <div class="footer-tel">
                    <h6>服务热线：</h6>
                    <p>400-888-8888</p>
                </div>
            </div>
            <div class="footer-nav">
                <dl style="background: url(front/images/footer-icon01.png) no-repeat top left;">
                    <dt><a href="javascript:;">购物指南</a></dt>
                    <dd><a href="">购物流程</a><a href="">订货方式</a><a href="">联系客服</a><a href="">交易条款</a></dd>
                </dl>
                <dl style="background: url(front/images/footer-icon02.png) no-repeat top left;">
                    <dt><a href="javascript:;">支付方式</a></dt>
                    <dd><a href="">银行付款</a><a href="">在线支付</a><a href="">组合支付</a></dd>
                </dl>
                <dl style="background: url(front/images/footer-icon03.png) no-repeat top left;">
                    <dt><a href="javascript:;">物流帮助</a></dt>
                    <dd><a href="">如何找车</a><a href="">常见问题</a><a href="">运送流程</a></dd>
                </dl>
                <dl style="background: url(front/images/footer-icon04.png) no-repeat top left;">
                    <dt><a href="javascript:;">售后服务</a></dt>
                    <dd><a href="">售后服务总则</a><a href="">服务政策</a></dd>
                </dl>
                <dl style="background: url(front/images/footer-icon05.png) no-repeat top left;">
                    <dt><a href="javascript:;">帮助中心</a></dt>
                    <dd><a href="">网点分布</a><a href="">加盟商区</a></dd>
                </dl>
            </div>
        </div>
    </div>
    <div class="copy">
        <div class="copy-nav">
            <a href="javascript:;">关于我们</a>
            <span>|</span>
            <a href="javascript:;">法律声明</a>
            <span>|</span>
            <a href="javascript:;">诚聘英才</a>
            <span>|</span>
            <a href="javascript:;">联系我们</a>
            <span>|</span>
            <a href="javascript:;">友情链接</a>
        </div>
        <p>Copyright <i class="fa fa-copyright"></i> 超鲜网 粤ICP备 13013915号-3  ICP证：粤B2-201401448</p>
    </div>
</footer>
<!-- 右侧悬浮菜单 -->
<ul class="right-fixed">
    <li class="icon01"><a href="javascript:;">
        <em></em>
        <p>在线客服</p>
    </a></li>
    <li class="icon02"><a href="javascript:;">
        <em></em>
        <p>官方微博</p>
        <div class="maskMenu">
            <img src="front/images/erweima.jpg" alt="">
        </div>
    </a></li>
    <li class="icon03"><a href="javascript:;">
        <em></em>
        <p>客服电话</p>
    </a></li>
    <li class="returnTop"><a href="javascript:;">
        <em></em>
    </a></li>
</ul>
<script type="text/javascript" src="front/js/jquery.SuperSlide.2.1.1.js"></script>
<script type="text/javascript" src="front/js/animateBackground-plugin.js"></script>
<script type="text/javascript" src="front/js/global.js"></script>
<script type="text/javascript" src="front/js/jquery.accordion.js"></script>
<script type="text/javascript" src="front/js/es5-shim.js"></script>
<script type="text/javascript" src="front/js/select.js"></script>


</body>
</html>