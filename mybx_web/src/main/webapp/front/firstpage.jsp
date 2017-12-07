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
    <script type="text/javascript" src="front/js/jquery-1.8.3.min.js" ></script>
    <script type="text/javascript">
    $(function(){
    	var height = document.documentElement.offsetHeight;
    	var iframe = parent.document.getElementById("myiframe");
    	$(iframe).attr("height",height);
    	<%-- parent.location.href = "<%=basepath %>"; --%>
    });
    </script>
</head>
<body>
	<div class="container">
        <!--首页banner-->
        <div id="bannerIndex" class="banner-index">
            <div class="hd">
                <ul>
                    <li class="on">1</li>
                    <li>2</li>
                    <li>3</li>
                </ul>
            </div>
            <div class="bd">
                <ul>
                	<c:forEach items="${turnlist }" var="tl">
                    <li>
                    	<a href="javascript:;" target="_blank">
                    		<img src="${tl.turnUrl }">
                    	</a>
                    </li>
                   	</c:forEach>
                </ul>
            </div>
            <a class="prev" href="javascript:void(0)"></a>
            <a class="next" href="javascript:void(0)"></a>
        </div>
        <!--交易行情01-->
        <div class="quotes01">
            <div class="lib-tab1">
                <ul class="lib-menu">
                    <li class="hover">交易行情</li>
                    <li>物流行情</li>
                    <li>市场行情</li>
                </ul>
                <div class="lib-content">
                    <div class="child-content" style="display: block;">
                        <div class="banner-quotes01">
                            <div class="hd">
                                <ul>
                                    <li class="on"></li>
                                    <li></li>
                                    <li></li>
                                </ul>
                            </div>
                            <div class="bd">
                                    <ul>
                                    <li>
                                        <dl class="accordion" id="my-accordion">
                                          <dt>
                                              <div class="quotes01-name">鱿鱼</div>
                                              <div class="quotes01-weight">120G</div>
                                              <div class="quotes01-prices">20-100</div>
                                          </dt>
                                          <dd>
                                              <div class="quotes01-date">交易日期：05月14日  10:20</div>
                                              <div class="quotes01-name">鱿鱼</div>
                                              <div class="quotes01-prices"><span>80</span>￥</div>
                                              <div class="quotes01-percent">16.3%</div>
                                              <div class="quotes01-weight">120G</div>
                                          </dd>
                                          <dt>
                                              <div class="quotes01-name">鱿鱼</div>
                                              <div class="quotes01-weight">120G</div>
                                              <div class="quotes01-prices">20-100</div>
                                          </dt>
                                          <dd>
                                              <div class="quotes01-date">交易日期：05月14日  10:20</div>
                                              <div class="quotes01-name">鱿鱼</div>
                                              <div class="quotes01-prices"><span>80</span>￥</div>
                                              <div class="quotes01-percent">16.3%</div>
                                              <div class="quotes01-weight">120G</div>
                                          </dd>
                                          <dt>
                                              <div class="quotes01-name">鱿鱼</div>
                                              <div class="quotes01-weight">120G</div>
                                              <div class="quotes01-prices">20-100</div>
                                          </dt>
                                          <dd>
                                              <div class="quotes01-date">交易日期：05月14日  10:20</div>
                                              <div class="quotes01-name">鱿鱼</div>
                                              <div class="quotes01-prices"><span>80</span>￥</div>
                                              <div class="quotes01-percent">16.3%</div>
                                              <div class="quotes01-weight">120G</div>
                                          </dd>
                                          <dt>
                                              <div class="quotes01-name">鱿鱼</div>
                                              <div class="quotes01-weight">120G</div>
                                              <div class="quotes01-prices">20-100</div>
                                          </dt>
                                          <dd>
                                              <div class="quotes01-date">交易日期：05月14日  10:20</div>
                                              <div class="quotes01-name">鱿鱼</div>
                                              <div class="quotes01-prices"><span>80</span>￥</div>
                                              <div class="quotes01-percent">16.3%</div>
                                              <div class="quotes01-weight">120G</div>
                                          </dd>
                                        </dl>
                                    </li>
                                    <li>
                                        <dl class="accordion" id="my-accordion">
                                          <dt>
                                              <div class="quotes01-name">鱿鱼</div>
                                              <div class="quotes01-weight">120G</div>
                                              <div class="quotes01-prices">20-100</div>
                                          </dt>
                                          <dd>
                                              <div class="quotes01-date">交易日期：05月14日  10:20</div>
                                              <div class="quotes01-name">鱿鱼</div>
                                              <div class="quotes01-prices"><span>80</span>￥</div>
                                              <div class="quotes01-percent">16.3%</div>
                                              <div class="quotes01-weight">120G</div>
                                          </dd>
                                          <dt>
                                              <div class="quotes01-name">鱿鱼</div>
                                              <div class="quotes01-weight">120G</div>
                                              <div class="quotes01-prices">20-100</div>
                                          </dt>
                                          <dd>
                                              <div class="quotes01-date">交易日期：05月14日  10:20</div>
                                              <div class="quotes01-name">鱿鱼</div>
                                              <div class="quotes01-prices"><span>80</span>￥</div>
                                              <div class="quotes01-percent">16.3%</div>
                                              <div class="quotes01-weight">120G</div>
                                          </dd>
                                          <dt>
                                              <div class="quotes01-name">鱿鱼</div>
                                              <div class="quotes01-weight">120G</div>
                                              <div class="quotes01-prices">20-100</div>
                                          </dt>
                                          <dd>
                                              <div class="quotes01-date">交易日期：05月14日  10:20</div>
                                              <div class="quotes01-name">鱿鱼</div>
                                              <div class="quotes01-prices"><span>80</span>￥</div>
                                              <div class="quotes01-percent">16.3%</div>
                                              <div class="quotes01-weight">120G</div>
                                          </dd>
                                          <dt>
                                              <div class="quotes01-name">鱿鱼</div>
                                              <div class="quotes01-weight">120G</div>
                                              <div class="quotes01-prices">20-100</div>
                                          </dt>
                                          <dd>
                                              <div class="quotes01-date">交易日期：05月14日  10:20</div>
                                              <div class="quotes01-name">鱿鱼</div>
                                              <div class="quotes01-prices"><span>80</span>￥</div>
                                              <div class="quotes01-percent">16.3%</div>
                                              <div class="quotes01-weight">120G</div>
                                          </dd>
                                        </dl>
                                    </li>
                                    <li>  
                                        <dl class="accordion" id="my-accordion">
                                          <dt>
                                              <div class="quotes01-name">鱿鱼</div>
                                              <div class="quotes01-weight">120G</div>
                                              <div class="quotes01-prices">20-100</div>
                                          </dt>
                                          <dd>
                                              <div class="quotes01-date">交易日期：05月14日  10:20</div>
                                              <div class="quotes01-name">鱿鱼</div>
                                              <div class="quotes01-prices"><span>80</span>￥</div>
                                              <div class="quotes01-percent">16.3%</div>
                                              <div class="quotes01-weight">120G</div>
                                          </dd>
                                          <dt>
                                              <div class="quotes01-name">鱿鱼</div>
                                              <div class="quotes01-weight">120G</div>
                                              <div class="quotes01-prices">20-100</div>
                                          </dt>
                                          <dd>
                                              <div class="quotes01-date">交易日期：05月14日  10:20</div>
                                              <div class="quotes01-name">鱿鱼</div>
                                              <div class="quotes01-prices"><span>80</span>￥</div>
                                              <div class="quotes01-percent">16.3%</div>
                                              <div class="quotes01-weight">120G</div>
                                          </dd>
                                          <dt>
                                              <div class="quotes01-name">鱿鱼</div>
                                              <div class="quotes01-weight">120G</div>
                                              <div class="quotes01-prices">20-100</div>
                                          </dt>
                                          <dd>
                                              <div class="quotes01-date">交易日期：05月14日  10:20</div>
                                              <div class="quotes01-name">鱿鱼</div>
                                              <div class="quotes01-prices"><span>80</span>￥</div>
                                              <div class="quotes01-percent">16.3%</div>
                                              <div class="quotes01-weight">120G</div>
                                          </dd>
                                          <dt>
                                              <div class="quotes01-name">鱿鱼</div>
                                              <div class="quotes01-weight">120G</div>
                                              <div class="quotes01-prices">20-100</div>
                                          </dt>
                                          <dd>
                                              <div class="quotes01-date">交易日期：05月14日  10:20</div>
                                              <div class="quotes01-name">鱿鱼</div>
                                              <div class="quotes01-prices"><span>80</span>￥</div>
                                              <div class="quotes01-percent">16.3%</div>
                                              <div class="quotes01-weight">120G</div>
                                          </dd>
                                        </dl>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="child-content" style="display: none;">
                         <dl class="pop-quotation">
                             <dd>
                                 <div id="total-1">
                                     <span class="num"></span>
                                 </div>
                             </dd>
                             <dt>
                                家认证承运商
                             </dt>
                             <dd>
                                 <div id="total-2">
                                     <span class="num"></span>
                                 </div>
                             </dd>
                             <dt>
                                 条线路正在运营中
                             </dt>
                             <dd>
                                 <div id="total-3">
                                     <span class="num"></span>
                                 </div>
                             </dd>
                             <dt>
                                 单托运已经在平台上达成
                             </dt>
                         </dl>
                    </div>
                    <div class="child-content" style="display: none;">
                         <div class="banner-quotes01">
                            <div class="hd">
                                <ul>
                                    <li class="on"></li>
                                    <li></li>
                                    <li></li>
                                </ul>
                            </div>
                            <div class="bd">
                                <ul>
                                    <li>
                                        <dl class="accordion" id="my-accordion">
                                          <dt>
                                              <div class="quotes01-name">鱿鱼</div>
                                              <div class="quotes01-weight">120G</div>
                                              <div class="quotes01-prices">20-100</div>
                                          </dt>
                                          <dd>
                                              <div class="quotes01-date">交易日期：05月14日  10:20</div>
                                              <div class="quotes01-name">鱿鱼</div>
                                              <div class="quotes01-prices"><span>80</span>￥</div>
                                              <div class="quotes01-percent">16.3%</div>
                                              <div class="quotes01-weight">120G</div>
                                          </dd>
                                          <dt>
                                              <div class="quotes01-name">鱿鱼</div>
                                              <div class="quotes01-weight">120G</div>
                                              <div class="quotes01-prices">20-100</div>
                                          </dt>
                                          <dd>
                                              <div class="quotes01-date">交易日期：05月14日  10:20</div>
                                              <div class="quotes01-name">鱿鱼</div>
                                              <div class="quotes01-prices"><span>80</span>￥</div>
                                              <div class="quotes01-percent">16.3%</div>
                                              <div class="quotes01-weight">120G</div>
                                          </dd>
                                          <dt>
                                              <div class="quotes01-name">鱿鱼</div>
                                              <div class="quotes01-weight">120G</div>
                                              <div class="quotes01-prices">20-100</div>
                                          </dt>
                                          <dd>
                                              <div class="quotes01-date">交易日期：05月14日  10:20</div>
                                              <div class="quotes01-name">鱿鱼</div>
                                              <div class="quotes01-prices"><span>80</span>￥</div>
                                              <div class="quotes01-percent">16.3%</div>
                                              <div class="quotes01-weight">120G</div>
                                          </dd>
                                          <dt>
                                              <div class="quotes01-name">鱿鱼</div>
                                              <div class="quotes01-weight">120G</div>
                                              <div class="quotes01-prices">20-100</div>
                                          </dt>
                                          <dd>
                                              <div class="quotes01-date">交易日期：05月14日  10:20</div>
                                              <div class="quotes01-name">鱿鱼</div>
                                              <div class="quotes01-prices"><span>80</span>￥</div>
                                              <div class="quotes01-percent">16.3%</div>
                                              <div class="quotes01-weight">120G</div>
                                          </dd>
                                        </dl>
                                    </li>
                                    <li>
                                        <dl class="accordion" id="my-accordion">
                                          <dt>
                                              <div class="quotes01-name">鱿鱼</div>
                                              <div class="quotes01-weight">120G</div>
                                              <div class="quotes01-prices">20-100</div>
                                          </dt>
                                          <dd>
                                              <div class="quotes01-date">交易日期：05月14日  10:20</div>
                                              <div class="quotes01-name">鱿鱼</div>
                                              <div class="quotes01-prices"><span>80</span>￥</div>
                                              <div class="quotes01-percent">16.3%</div>
                                              <div class="quotes01-weight">120G</div>
                                          </dd>
                                          <dt>
                                              <div class="quotes01-name">鱿鱼</div>
                                              <div class="quotes01-weight">120G</div>
                                              <div class="quotes01-prices">20-100</div>
                                          </dt>
                                          <dd>
                                              <div class="quotes01-date">交易日期：05月14日  10:20</div>
                                              <div class="quotes01-name">鱿鱼</div>
                                              <div class="quotes01-prices"><span>80</span>￥</div>
                                              <div class="quotes01-percent">16.3%</div>
                                              <div class="quotes01-weight">120G</div>
                                          </dd>
                                          <dt>
                                              <div class="quotes01-name">鱿鱼</div>
                                              <div class="quotes01-weight">120G</div>
                                              <div class="quotes01-prices">20-100</div>
                                          </dt>
                                          <dd>
                                              <div class="quotes01-date">交易日期：05月14日  10:20</div>
                                              <div class="quotes01-name">鱿鱼</div>
                                              <div class="quotes01-prices"><span>80</span>￥</div>
                                              <div class="quotes01-percent">16.3%</div>
                                              <div class="quotes01-weight">120G</div>
                                          </dd>
                                          <dt>
                                              <div class="quotes01-name">鱿鱼</div>
                                              <div class="quotes01-weight">120G</div>
                                              <div class="quotes01-prices">20-100</div>
                                          </dt>
                                          <dd>
                                              <div class="quotes01-date">交易日期：05月14日  10:20</div>
                                              <div class="quotes01-name">鱿鱼</div>
                                              <div class="quotes01-prices"><span>80</span>￥</div>
                                              <div class="quotes01-percent">16.3%</div>
                                              <div class="quotes01-weight">120G</div>
                                          </dd>
                                        </dl>
                                    </li>
                                    <li>
                                        <dl class="accordion" id="my-accordion">
                                          <dt>
                                              <div class="quotes01-name">鱿鱼</div>
                                              <div class="quotes01-weight">120G</div>
                                              <div class="quotes01-prices">20-100</div>
                                          </dt>
                                          <dd>
                                              <div class="quotes01-date">交易日期：05月14日  10:20</div>
                                              <div class="quotes01-name">鱿鱼</div>
                                              <div class="quotes01-prices"><span>80</span>￥</div>
                                              <div class="quotes01-percent">16.3%</div>
                                              <div class="quotes01-weight">120G</div>
                                          </dd>
                                          <dt>
                                              <div class="quotes01-name">鱿鱼</div>
                                              <div class="quotes01-weight">120G</div>
                                              <div class="quotes01-prices">20-100</div>
                                          </dt>
                                          <dd>
                                              <div class="quotes01-date">交易日期：05月14日  10:20</div>
                                              <div class="quotes01-name">鱿鱼</div>
                                              <div class="quotes01-prices"><span>80</span>￥</div>
                                              <div class="quotes01-percent">16.3%</div>
                                              <div class="quotes01-weight">120G</div>
                                          </dd>
                                          <dt>
                                              <div class="quotes01-name">鱿鱼</div>
                                              <div class="quotes01-weight">120G</div>
                                              <div class="quotes01-prices">20-100</div>
                                          </dt>
                                          <dd>
                                              <div class="quotes01-date">交易日期：05月14日  10:20</div>
                                              <div class="quotes01-name">鱿鱼</div>
                                              <div class="quotes01-prices"><span>80</span>￥</div>
                                              <div class="quotes01-percent">16.3%</div>
                                              <div class="quotes01-weight">120G</div>
                                          </dd>
                                          <dt>
                                              <div class="quotes01-name">鱿鱼</div>
                                              <div class="quotes01-weight">120G</div>
                                              <div class="quotes01-prices">20-100</div>
                                          </dt>
                                          <dd>
                                              <div class="quotes01-date">交易日期：05月14日  10:20</div>
                                              <div class="quotes01-name">鱿鱼</div>
                                              <div class="quotes01-prices"><span>80</span>￥</div>
                                              <div class="quotes01-percent">16.3%</div>
                                              <div class="quotes01-weight">120G</div>
                                          </dd>
                                        </dl>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--找货助手-->
        <div class="helpMe">
           <img src="front/images/helpMe-icon01.png" alt="" class="helpMe-img">
           <form action="">
               <input type="text" class="helpMe-input">
               <input type="submit" class="helpMe-sub">
           </form>
           <div class="helpMe-tel">400-888-8888</div>
        </div>
        <!--交易行情02-->
        <div class="quotes02">
            <h5>交易行情</h5>
            <div class="lib-tab2">
                <ul class="lib-menu">
                    <li class="hover">水产类</li>
                    <li>速冻食品类</li>
                    <li>调理品类</li>
                    <li>禽类</li>
                    <li>冻肉类</li>
                    <li>其它冻肉类</li>
                </ul>
                <div class="lib-content">
                    <div class="child-content" style="display: block;">
                        <!-- 交易行情02广告 -->
                        <div class="banner-quotes02">
                            <div class="hd">
                                <ul>
                                    <li class="on">1</li>
                                    <li>2</li>
                                    <li>3</li>
                                </ul>
                            </div>
                            <div class="bd">
                                <ul>
                                    <li><a href="javascript:;"><img src="front/images/lastTrade-pic01.jpg" alt=""></a></li>
                                    <li><a href="javascript:;"><img src="front/images/lastTrade-pic01.jpg" alt=""></a></li>
                                    <li><a href="javascript:;"><img src="front/images/lastTrade-pic01.jpg" alt=""></a></li>
                                </ul>
                            </div>
                        </div>
                        <!-- 交易行情02 信息列表 -->
                        <table class="quotes02-list">
                            <thead>
                                <tr>
                                    <th colspan="2">最近价格概况</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>
                                        <table>
                                            <thead>
                                                <tr>
                                                    <th style="width:100px;">产品</th>
                                                    <th>规格</th>
                                                    <th>价格区间</th>
                                                    <th>波动</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>鱿鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                <tr>
                                                    <td>大头鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                 <tr>
                                                    <td>蟹类</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                 <tr>
                                                    <td>鱿鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                <tr>
                                                    <td>大头鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                 <tr>
                                                    <td>蟹类</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                <tr>
                                                    <td>鱿鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                <tr>
                                                    <td>大头鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                 <tr>
                                                    <td>蟹类</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                 <tr>
                                                    <td>鱿鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                <tr>
                                                    <td>大头鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                    <td>
                                        <table>
                                            <thead>
                                                <tr>
                                                    <th style="width:100px;">产品</th>
                                                    <th>规格</th>
                                                    <th>价格区间</th>
                                                    <th>波动</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>鱿鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                <tr>
                                                    <td>大头鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                 <tr>
                                                    <td>蟹类</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                 <tr>
                                                    <td>鱿鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                <tr>
                                                    <td>大头鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                 <tr>
                                                    <td>蟹类</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                <tr>
                                                    <td>鱿鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                <tr>
                                                    <td>大头鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                 <tr>
                                                    <td>蟹类</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                 <tr>
                                                    <td>鱿鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                <tr>
                                                    <td>大头鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="child-content" style="display: none;">
                               <!-- 交易行情02广告 -->
                        <div class="banner-quotes02">
                            <div class="hd">
                                <ul>
                                    <li class="on">1</li>
                                    <li>2</li>
                                    <li>3</li>
                                </ul>
                            </div>
                            <div class="bd">
                                <ul>
                                    <li><a href="javascript:;"><img src="front/images/lastTrade-pic01.jpg" alt=""></a></li>
                                    <li><a href="javascript:;"><img src="front/images/lastTrade-pic01.jpg" alt=""></a></li>
                                    <li><a href="javascript:;"><img src="front/images/lastTrade-pic01.jpg" alt=""></a></li>
                                </ul>
                            </div>
                        </div>
                        <!-- 交易行情02 信息列表 -->
                        <table class="quotes02-list">
                            <thead>
                                <tr>
                                    <th colspan="2">最近价格概况</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>
                                        <table>
                                            <thead>
                                                <tr>
                                                    <th style="width:100px;">产品</th>
                                                    <th>规格</th>
                                                    <th>价格区间</th>
                                                    <th>波动</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>鱿鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                <tr>
                                                    <td>大头鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                 <tr>
                                                    <td>蟹类</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                 <tr>
                                                    <td>鱿鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                <tr>
                                                    <td>大头鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                 <tr>
                                                    <td>蟹类</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                <tr>
                                                    <td>鱿鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                <tr>
                                                    <td>大头鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                 <tr>
                                                    <td>蟹类</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                 <tr>
                                                    <td>鱿鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                <tr>
                                                    <td>大头鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                    <td>
                                        <table>
                                            <thead>
                                                <tr>
                                                    <th style="width:100px;">产品</th>
                                                    <th>规格</th>
                                                    <th>价格区间</th>
                                                    <th>波动</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>鱿鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                <tr>
                                                    <td>大头鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                 <tr>
                                                    <td>蟹类</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                 <tr>
                                                    <td>鱿鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                <tr>
                                                    <td>大头鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                 <tr>
                                                    <td>蟹类</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                <tr>
                                                    <td>鱿鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                <tr>
                                                    <td>大头鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                 <tr>
                                                    <td>蟹类</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                 <tr>
                                                    <td>鱿鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                <tr>
                                                    <td>大头鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="child-content" style="display: none;">
                               <!-- 交易行情02广告 -->
                        <div class="banner-quotes02">
                            <div class="hd">
                                <ul>
                                    <li class="on">1</li>
                                    <li>2</li>
                                    <li>3</li>
                                </ul>
                            </div>
                            <div class="bd">
                                <ul>
                                    <li><a href="javascript:;"><img src="front/images/lastTrade-pic01.jpg" alt=""></a></li>
                                    <li><a href="javascript:;"><img src="front/images/lastTrade-pic01.jpg" alt=""></a></li>
                                    <li><a href="javascript:;"><img src="front/images/lastTrade-pic01.jpg" alt=""></a></li>
                                </ul>
                            </div>
                        </div>
                        <!-- 交易行情02 信息列表 -->
                        <table class="quotes02-list">
                            <thead>
                                <tr>
                                    <th colspan="2">最近价格概况</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>
                                        <table>
                                            <thead>
                                                <tr>
                                                    <th style="width:100px;">产品</th>
                                                    <th>规格</th>
                                                    <th>价格区间</th>
                                                    <th>波动</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>鱿鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                <tr>
                                                    <td>大头鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                 <tr>
                                                    <td>蟹类</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                 <tr>
                                                    <td>鱿鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                <tr>
                                                    <td>大头鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                 <tr>
                                                    <td>蟹类</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                <tr>
                                                    <td>鱿鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                <tr>
                                                    <td>大头鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                 <tr>
                                                    <td>蟹类</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                 <tr>
                                                    <td>鱿鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                <tr>
                                                    <td>大头鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                    <td>
                                        <table>
                                            <thead>
                                                <tr>
                                                    <th style="width:100px;">产品</th>
                                                    <th>规格</th>
                                                    <th>价格区间</th>
                                                    <th>波动</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>鱿鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                <tr>
                                                    <td>大头鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                 <tr>
                                                    <td>蟹类</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                 <tr>
                                                    <td>鱿鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                <tr>
                                                    <td>大头鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                 <tr>
                                                    <td>蟹类</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                <tr>
                                                    <td>鱿鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                <tr>
                                                    <td>大头鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                 <tr>
                                                    <td>蟹类</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                 <tr>
                                                    <td>鱿鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                <tr>
                                                    <td>大头鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="child-content" style="display: none;">
                        <!-- 交易行情02广告 -->
                        <div class="banner-quotes02">
                            <div class="hd">
                                <ul>
                                    <li class="on">1</li>
                                    <li>2</li>
                                    <li>3</li>
                                </ul>
                            </div>
                            <div class="bd">
                                <ul>
                                    <li><a href="javascript:;"><img src="front/images/lastTrade-pic01.jpg" alt=""></a></li>
                                    <li><a href="javascript:;"><img src="front/images/lastTrade-pic01.jpg" alt=""></a></li>
                                    <li><a href="javascript:;"><img src="front/images/lastTrade-pic01.jpg" alt=""></a></li>
                                </ul>
                            </div>
                        </div>
                        <!-- 交易行情02 信息列表 -->
                        <table class="quotes02-list">
                            <thead>
                                <tr>
                                    <th colspan="2">最近价格概况</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>
                                        <table>
                                            <thead>
                                                <tr>
                                                    <th style="width:100px;">产品</th>
                                                    <th>规格</th>
                                                    <th>价格区间</th>
                                                    <th>波动</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>鱿鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                <tr>
                                                    <td>大头鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                 <tr>
                                                    <td>蟹类</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                 <tr>
                                                    <td>鱿鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                <tr>
                                                    <td>大头鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                 <tr>
                                                    <td>蟹类</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                <tr>
                                                    <td>鱿鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                <tr>
                                                    <td>大头鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                 <tr>
                                                    <td>蟹类</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                 <tr>
                                                    <td>鱿鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                <tr>
                                                    <td>大头鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                    <td>
                                        <table>
                                            <thead>
                                                <tr>
                                                    <th style="width:100px;">产品</th>
                                                    <th>规格</th>
                                                    <th>价格区间</th>
                                                    <th>波动</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>鱿鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                <tr>
                                                    <td>大头鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                 <tr>
                                                    <td>蟹类</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                 <tr>
                                                    <td>鱿鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                <tr>
                                                    <td>大头鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                 <tr>
                                                    <td>蟹类</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                <tr>
                                                    <td>鱿鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                <tr>
                                                    <td>大头鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                 <tr>
                                                    <td>蟹类</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                 <tr>
                                                    <td>鱿鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                <tr>
                                                    <td>大头鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="child-content" style="display: none;">
                                <!-- 交易行情02广告 -->
                        <div class="banner-quotes02">
                            <div class="hd">
                                <ul>
                                    <li class="on">1</li>
                                    <li>2</li>
                                    <li>3</li>
                                </ul>
                            </div>
                            <div class="bd">
                                <ul>
                                    <li><a href="javascript:;"><img src="front/images/lastTrade-pic01.jpg" alt=""></a></li>
                                    <li><a href="javascript:;"><img src="front/images/lastTrade-pic01.jpg" alt=""></a></li>
                                    <li><a href="javascript:;"><img src="front/images/lastTrade-pic01.jpg" alt=""></a></li>
                                </ul>
                            </div>
                        </div>
                        <!-- 交易行情02 信息列表 -->
                        <table class="quotes02-list">
                            <thead>
                                <tr>
                                    <th colspan="2">最近价格概况</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>
                                        <table>
                                            <thead>
                                                <tr>
                                                    <th style="width:100px;">产品</th>
                                                    <th>规格</th>
                                                    <th>价格区间</th>
                                                    <th>波动</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>鱿鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                <tr>
                                                    <td>大头鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                 <tr>
                                                    <td>蟹类</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                 <tr>
                                                    <td>鱿鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                <tr>
                                                    <td>大头鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                 <tr>
                                                    <td>蟹类</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                <tr>
                                                    <td>鱿鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                <tr>
                                                    <td>大头鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                 <tr>
                                                    <td>蟹类</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                 <tr>
                                                    <td>鱿鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                <tr>
                                                    <td>大头鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                    <td>
                                        <table>
                                            <thead>
                                                <tr>
                                                    <th style="width:100px;">产品</th>
                                                    <th>规格</th>
                                                    <th>价格区间</th>
                                                    <th>波动</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>鱿鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                <tr>
                                                    <td>大头鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                 <tr>
                                                    <td>蟹类</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                 <tr>
                                                    <td>鱿鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                <tr>
                                                    <td>大头鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                 <tr>
                                                    <td>蟹类</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                <tr>
                                                    <td>鱿鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                <tr>
                                                    <td>大头鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                 <tr>
                                                    <td>蟹类</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                 <tr>
                                                    <td>鱿鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                <tr>
                                                    <td>大头鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="child-content" style="display: none;">
                               <!-- 交易行情02广告 -->
                        <div class="banner-quotes02">
                            <div class="hd">
                                <ul>
                                    <li class="on">1</li>
                                    <li>2</li>
                                    <li>3</li>
                                </ul>
                            </div>
                            <div class="bd">
                                <ul>
                                    <li><a href="javascript:;"><img src="front/images/lastTrade-pic01.jpg" alt=""></a></li>
                                    <li><a href="javascript:;"><img src="front/images/lastTrade-pic01.jpg" alt=""></a></li>
                                    <li><a href="javascript:;"><img src="front/images/lastTrade-pic01.jpg" alt=""></a></li>
                                </ul>
                            </div>
                        </div>
                        <!-- 交易行情02 信息列表 -->
                        <table class="quotes02-list">
                            <thead>
                                <tr>
                                    <th colspan="2">最近价格概况</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>
                                        <table>
                                            <thead>
                                                <tr>
                                                    <th style="width:100px;">产品</th>
                                                    <th>规格</th>
                                                    <th>价格区间</th>
                                                    <th>波动</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>鱿鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                <tr>
                                                    <td>大头鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                 <tr>
                                                    <td>蟹类</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                 <tr>
                                                    <td>鱿鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                <tr>
                                                    <td>大头鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                 <tr>
                                                    <td>蟹类</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                <tr>
                                                    <td>鱿鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                <tr>
                                                    <td>大头鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                 <tr>
                                                    <td>蟹类</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                 <tr>
                                                    <td>鱿鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                <tr>
                                                    <td>大头鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                    <td>
                                        <table>
                                            <thead>
                                                <tr>
                                                    <th style="width:100px;">产品</th>
                                                    <th>规格</th>
                                                    <th>价格区间</th>
                                                    <th>波动</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>鱿鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                <tr>
                                                    <td>大头鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                 <tr>
                                                    <td>蟹类</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                 <tr>
                                                    <td>鱿鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                <tr>
                                                    <td>大头鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                 <tr>
                                                    <td>蟹类</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                <tr>
                                                    <td>鱿鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                <tr>
                                                    <td>大头鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                 <tr>
                                                    <td>蟹类</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                 <tr>
                                                    <td>鱿鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                <tr>
                                                    <td>大头鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <!--实时交易-->
        <div class="trading">
           <div class="tit">实时交易信息</div>
           <dl class="con">
               <dt>
                   <div class="trading-user">用户</div>
                   <div class="trading-con">采购内容</div>
                   <div class="trading-state">交易状态</div>
                   <div class="trading-date">时间</div>
               </dt>
               <dd class="txtScroll-top">
                    <div class="bd">
                        <ul>
                            <li><a href="javascript:;">
                                <div class="trading-user">陈**</div>
                                <div class="trading-con">水产类</div>
                                <div class="trading-state">在线下单</div>
                                <div class="trading-date">11:01</div>
                            </a></li>
                            <li><a href="javascript:;">
                                <div class="trading-user">陈**</div>
                                <div class="trading-con">水产类</div>
                                <div class="trading-state">在线下单</div>
                                <div class="trading-date">11:01</div>
                            </a></li>
                            <li><a href="javascript:;">
                                <div class="trading-user">陈**</div>
                                <div class="trading-con">水产类</div>
                                <div class="trading-state">在线下单</div>
                                <div class="trading-date">11:01</div>
                            </a></li>
                            <li><a href="javascript:;">
                                <div class="trading-user">陈**</div>
                                <div class="trading-con">水产类</div>
                                <div class="trading-state">在线下单</div>
                                <div class="trading-date">11:01</div>
                            </a></li>
                            <li><a href="javascript:;">
                                <div class="trading-user">陈**</div>
                                <div class="trading-con">水产类</div>
                                <div class="trading-state">在线下单</div>
                                <div class="trading-date">11:01</div>
                            </a></li>
                            <li><a href="javascript:;">
                                <div class="trading-user">陈**</div>
                                <div class="trading-con">水产类</div>
                                <div class="trading-state">在线下单</div>
                                <div class="trading-date">11:01</div>
                            </a></li>
                            <li><a href="javascript:;">
                                <div class="trading-user">陈**</div>
                                <div class="trading-con">水产类</div>
                                <div class="trading-state">在线下单</div>
                                <div class="trading-date">11:01</div>
                            </a></li>
                            <li><a href="javascript:;">
                                <div class="trading-user">陈**</div>
                                <div class="trading-con">水产类</div>
                                <div class="trading-state">在线下单</div>
                                <div class="trading-date">11:01</div>
                            </a></li>
                            <li><a href="javascript:;">
                                <div class="trading-user">陈**</div>
                                <div class="trading-con">水产类</div>
                                <div class="trading-state">在线下单</div>
                                <div class="trading-date">11:01</div>
                            </a></li>
                            <li><a href="javascript:;">
                                <div class="trading-user">陈**</div>
                                <div class="trading-con">水产类</div>
                                <div class="trading-state">在线下单</div>
                                <div class="trading-date">11:01</div>
                            </a></li>
                            <li><a href="javascript:;">
                                <div class="trading-user">陈**</div>
                                <div class="trading-con">水产类</div>
                                <div class="trading-state">在线下单</div>
                                <div class="trading-date">11:01</div>
                            </a></li>
                            <li><a href="javascript:;">
                                <div class="trading-user">陈**</div>
                                <div class="trading-con">水产类</div>
                                <div class="trading-state">在线下单</div>
                                <div class="trading-date">11:01</div>
                            </a></li>
                            <li><a href="javascript:;">
                                <div class="trading-user">陈**</div>
                                <div class="trading-con">水产类</div>
                                <div class="trading-state">在线下单</div>
                                <div class="trading-date">11:01</div>
                            </a></li>
                            <li><a href="javascript:;">
                                <div class="trading-user">陈**</div>
                                <div class="trading-con">水产类</div>
                                <div class="trading-state">在线下单</div>
                                <div class="trading-date">11:01</div>
                            </a></li>
                            <li><a href="javascript:;">
                                <div class="trading-user">陈**</div>
                                <div class="trading-con">水产类</div>
                                <div class="trading-state">在线下单</div>
                                <div class="trading-date">11:01</div>
                            </a></li>
                            <li><a href="javascript:;">
                                <div class="trading-user">陈**</div>
                                <div class="trading-con">水产类</div>
                                <div class="trading-state">在线下单</div>
                                <div class="trading-date">11:01</div>
                            </a></li>
                            <li><a href="javascript:;">
                                <div class="trading-user">陈**</div>
                                <div class="trading-con">水产类</div>
                                <div class="trading-state">在线下单</div>
                                <div class="trading-date">11:01</div>
                            </a></li>
                            <li><a href="javascript:;">
                                <div class="trading-user">陈**</div>
                                <div class="trading-con">水产类</div>
                                <div class="trading-state">在线下单</div>
                                <div class="trading-date">11:01</div>
                            </a></li>
                            <li><a href="javascript:;">
                                <div class="trading-user">陈**</div>
                                <div class="trading-con">水产类</div>
                                <div class="trading-state">在线下单</div>
                                <div class="trading-date">11:01</div>
                            </a></li>
                            <li><a href="javascript:;">
                                <div class="trading-user">陈**</div>
                                <div class="trading-con">水产类</div>
                                <div class="trading-state">在线下单</div>
                                <div class="trading-date">11:01</div>
                            </a></li>
                            <li><a href="javascript:;">
                                <div class="trading-user">陈**</div>
                                <div class="trading-con">水产类</div>
                                <div class="trading-state">在线下单</div>
                                <div class="trading-date">11:01</div>
                            </a></li>
                            <li><a href="javascript:;">
                                <div class="trading-user">陈**</div>
                                <div class="trading-con">水产类</div>
                                <div class="trading-state">在线下单</div>
                                <div class="trading-date">11:01</div>
                            </a></li>
                            <li><a href="javascript:;">
                                <div class="trading-user">陈**</div>
                                <div class="trading-con">水产类</div>
                                <div class="trading-state">在线下单</div>
                                <div class="trading-date">11:01</div>
                            </a></li>
                            <li><a href="javascript:;">
                                <div class="trading-user">陈**</div>
                                <div class="trading-con">水产类</div>
                                <div class="trading-state">在线下单</div>
                                <div class="trading-date">11:01</div>
                            </a></li>
                        </ul>
                    </div>
               </dd>
           </dl>
        </div>
        <!-- 首页广告 -->
        <a class="index-add">
            <img src="front/images/index-add01.jpg" alt="">
        </a>
        <!--查询工具-->
         <div class="inquiry-tool">
            <div class="lib-tab3">
                <ul class="lib-menu">
                    <li class="hover"><i class="fa fa-search-plus"></i>查询路线</li>
                    <li><i class="fa fa-home"></i>仓库查询</li>
                    <li><i class="fa fa-truck"></i>物流跟踪</li>
                </ul>
                <div class="lib-content">
                    <div class="child-content" style="display: block;">
                        <label for ="" style="z-index:3;">
                            <p>发货地：</p>
                            <div class="city-linkage">
                                <input type="text" class="input01 w170">
                                <i class="fa fa-bars"></i>
                                <div class="inquiry-list">
                                     <div class="lib-tab9">
                                        <a href="javascript:;" class="closed">X</a>
                                        <ul class="lib-menus">
                                            <li class="hover">常用</li>
                                            <li>省</li>
                                            <li>市</li>
                                            <li>区县</li>
                                        </ul>
                                        <div class="lib-contents">
                                            <div class="child-contents" style="display: block;">
                                                <div class="inquiry-span" index="0">
                                                    <span data-name="北京-北京市1">深圳</span>
                                                    <span data-name="北京-北京市2">深圳深圳</span>
                                                    <span data-name="北京-北京市3">深圳深圳深圳</span>
                                                    <span data-name="北京-北京市4">深圳是</span>
                                                    <span data-name="北京-北京市5">深圳</span>
                                                    <span data-name="北京-北京市6">深圳</span>
                                                    <span data-name="北京-北京市7">深圳</span>
                                                    <span data-name="北京-北京市8">深圳</span>
                                                    <span data-name="北京-北京市">深圳</span>
                                                    <span data-name="北京-北京市">深圳深圳</span>
                                                    <span data-name="北京-北京市">深圳深圳深圳</span>
                                                    <span data-name="北京-北京市">深圳是</span>
                                                    <span data-name="北京-北京市">深圳</span>
                                                    <span data-name="北京-北京市">深圳</span>
                                                </div>
                                            </div>
                                            <div class="child-contents" style="display: none;">
                                                <div class="inquiry-span" index="1">
                                                    <dl>
                                                        <dt>A-G</dt>
                                                        <dd>
                                                            <span data-name="北京-北京市1">深圳</span>
                                                            <span data-name="北京-北京市2">深圳深圳</span>
                                                            <span data-name="北京-北京市3">深圳深圳深圳</span>
                                                            <span data-name="北京-北京市4">深圳是</span>
                                                            <span data-name="北京-北京市5">深圳</span>
                                                            <span data-name="北京-北京市6">深圳</span>
                                                            <span data-name="北京-北京市7">深圳</span>
                                                            <span data-name="北京-北京市8">深圳</span>
                                                            <span data-name="北京-北京市">深圳</span>
                                                            <span data-name="北京-北京市">深圳深圳</span>
                                                            <span data-name="北京-北京市">深圳深圳深圳</span>
                                                            <span data-name="北京-北京市">深圳是</span>
                                                            <span data-name="北京-北京市">深圳</span>
                                                            <span data-name="北京-北京市">深圳</span>
                                                        </dd>
                                                    </dl>
                                                    <dl>
                                                        <dt>H-K</dt>
                                                        <dd>
                                                            <span data-name="北京-北京市1">深圳</span>
                                                            <span data-name="北京-北京市2">深圳深圳</span>
                                                            <span data-name="北京-北京市3">深圳深圳深圳</span>
                                                            <span data-name="北京-北京市4">深圳是</span>
                                                            <span data-name="北京-北京市5">深圳</span>
                                                            <span data-name="北京-北京市6">深圳</span>
                                                            <span data-name="北京-北京市7">深圳</span>
                                                            <span data-name="北京-北京市8">深圳</span>
                                                            <span data-name="北京-北京市">深圳</span>
                                                            <span data-name="北京-北京市">深圳深圳</span>
                                                            <span data-name="北京-北京市">深圳深圳深圳</span>
                                                            <span data-name="北京-北京市">深圳是</span>
                                                            <span data-name="北京-北京市">深圳</span>
                                                            <span data-name="北京-北京市">深圳</span>
                                                        </dd>
                                                    </dl>
                                                </div>
                                            </div>
                                            <div class="child-contents" style="display: none;">
                                                <div class="inquiry-span" index="2">
                                                   <span data-name="北京-北京市1">深圳</span>
                                                    <span data-name="北京-北京市2">深圳深圳</span>
                                                    <span data-name="北京-北京市3">深圳深圳深圳</span>
                                                    <span data-name="北京-北京市4">深圳是</span>
                                                    <span data-name="北京-北京市5">深圳</span>
                                                    <span data-name="北京-北京市6">深圳</span>
                                                    <span data-name="北京-北京市7">深圳</span>
                                                    <span data-name="北京-北京市8">深圳</span>
                                                    <span data-name="北京-北京市">深圳</span>
                                                    <span data-name="北京-北京市">深圳深圳</span>
                                                    <span data-name="北京-北京市">深圳深圳深圳</span>
                                                    <span data-name="北京-北京市">深圳是</span>
                                                    <span data-name="北京-北京市">深圳</span>
                                                    <span data-name="北京-北京市">深圳</span>
                                                </div>
                                            </div>
                                            <div class="child-contents" style="display: none;">
                                                 <div class="inquiry-span" index="3">
                                                    <span data-name="北京-北京市1">深圳</span>
                                                    <span data-name="北京-北京市2">深圳深圳</span>
                                                    <span data-name="北京-北京市3">深圳深圳深圳</span>
                                                    <span data-name="北京-北京市4">深圳是</span>
                                                    <span data-name="北京-北京市5">深圳</span>
                                                    <span data-name="北京-北京市6">深圳</span>
                                                    <span data-name="北京-北京市7">深圳</span>
                                                    <span data-name="北京-北京市8">深圳</span>
                                                    <span data-name="北京-北京市">深圳</span>
                                                    <span data-name="北京-北京市">深圳深圳</span>
                                                    <span data-name="北京-北京市">深圳深圳深圳</span>
                                                    <span data-name="北京-北京市">深圳是</span>
                                                    <span data-name="北京-北京市">深圳</span>
                                                    <span data-name="北京-北京市">深圳</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </label>
                        <label for ="" class="city-linkage">
                            <p>收货地：</p>
                            <div class="city-linkage">
                                <input type="text" class="input01 w170">
                                <i class="fa fa-bars"></i>
                                <div class="inquiry-list">
                                     <div class="lib-tab9">
                                        <a href="javascript:;" class="closed">X</a>
                                        <ul class="lib-menus">
                                            <li class="hover">常用</li>
                                            <li>省</li>
                                            <li>市</li>
                                            <li>区县</li>
                                        </ul>
                                        <div class="lib-contents">
                                            <div class="child-contents" style="display: block;">
                                                <div class="inquiry-span" index="0">
                                                    <span data-name="北京-北京市1">深圳</span>
                                                    <span data-name="北京-北京市2">深圳深圳</span>
                                                    <span data-name="北京-北京市3">深圳深圳深圳</span>
                                                    <span data-name="北京-北京市4">深圳是</span>
                                                    <span data-name="北京-北京市5">深圳</span>
                                                    <span data-name="北京-北京市6">深圳</span>
                                                    <span data-name="北京-北京市7">深圳</span>
                                                    <span data-name="北京-北京市8">深圳</span>
                                                    <span data-name="北京-北京市">深圳</span>
                                                    <span data-name="北京-北京市">深圳深圳</span>
                                                    <span data-name="北京-北京市">深圳深圳深圳</span>
                                                    <span data-name="北京-北京市">深圳是</span>
                                                    <span data-name="北京-北京市">深圳</span>
                                                    <span data-name="北京-北京市">深圳</span>
                                                </div>
                                            </div>
                                            <div class="child-contents" style="display: none;">
                                                <div class="inquiry-span" index="1">
                                                    <dl>
                                                        <dt>A-G</dt>
                                                        <dd>
                                                            <span data-name="北京-北京市1">深圳</span>
                                                            <span data-name="北京-北京市2">深圳深圳</span>
                                                            <span data-name="北京-北京市3">深圳深圳深圳</span>
                                                            <span data-name="北京-北京市4">深圳是</span>
                                                            <span data-name="北京-北京市5">深圳</span>
                                                            <span data-name="北京-北京市6">深圳</span>
                                                            <span data-name="北京-北京市7">深圳</span>
                                                            <span data-name="北京-北京市8">深圳</span>
                                                            <span data-name="北京-北京市">深圳</span>
                                                            <span data-name="北京-北京市">深圳深圳</span>
                                                            <span data-name="北京-北京市">深圳深圳深圳</span>
                                                            <span data-name="北京-北京市">深圳是</span>
                                                            <span data-name="北京-北京市">深圳</span>
                                                            <span data-name="北京-北京市">深圳</span>
                                                        </dd>
                                                    </dl>
                                                    <dl>
                                                        <dt>H-K</dt>
                                                        <dd>
                                                            <span data-name="北京-北京市1">深圳</span>
                                                            <span data-name="北京-北京市2">深圳深圳</span>
                                                            <span data-name="北京-北京市3">深圳深圳深圳</span>
                                                            <span data-name="北京-北京市4">深圳是</span>
                                                            <span data-name="北京-北京市5">深圳</span>
                                                            <span data-name="北京-北京市6">深圳</span>
                                                            <span data-name="北京-北京市7">深圳</span>
                                                            <span data-name="北京-北京市8">深圳</span>
                                                            <span data-name="北京-北京市">深圳</span>
                                                            <span data-name="北京-北京市">深圳深圳</span>
                                                            <span data-name="北京-北京市">深圳深圳深圳</span>
                                                            <span data-name="北京-北京市">深圳是</span>
                                                            <span data-name="北京-北京市">深圳</span>
                                                            <span data-name="北京-北京市">深圳</span>
                                                        </dd>
                                                    </dl>
                                                </div>
                                            </div>
                                            <div class="child-contents" style="display: none;">
                                                <div class="inquiry-span" index="2">
                                                   <span data-name="北京-北京市1">深圳</span>
                                                    <span data-name="北京-北京市2">深圳深圳</span>
                                                    <span data-name="北京-北京市3">深圳深圳深圳</span>
                                                    <span data-name="北京-北京市4">深圳是</span>
                                                    <span data-name="北京-北京市5">深圳</span>
                                                    <span data-name="北京-北京市6">深圳</span>
                                                    <span data-name="北京-北京市7">深圳</span>
                                                    <span data-name="北京-北京市8">深圳</span>
                                                    <span data-name="北京-北京市">深圳</span>
                                                    <span data-name="北京-北京市">深圳深圳</span>
                                                    <span data-name="北京-北京市">深圳深圳深圳</span>
                                                    <span data-name="北京-北京市">深圳是</span>
                                                    <span data-name="北京-北京市">深圳</span>
                                                    <span data-name="北京-北京市">深圳</span>
                                                </div>
                                            </div>
                                            <div class="child-contents" style="display: none;">
                                                 <div class="inquiry-span" index="3">
                                                    <span data-name="北京-北京市1">深圳</span>
                                                    <span data-name="北京-北京市2">深圳深圳</span>
                                                    <span data-name="北京-北京市3">深圳深圳深圳</span>
                                                    <span data-name="北京-北京市4">深圳是</span>
                                                    <span data-name="北京-北京市5">深圳</span>
                                                    <span data-name="北京-北京市6">深圳</span>
                                                    <span data-name="北京-北京市7">深圳</span>
                                                    <span data-name="北京-北京市8">深圳</span>
                                                    <span data-name="北京-北京市">深圳</span>
                                                    <span data-name="北京-北京市">深圳深圳</span>
                                                    <span data-name="北京-北京市">深圳深圳深圳</span>
                                                    <span data-name="北京-北京市">深圳是</span>
                                                    <span data-name="北京-北京市">深圳</span>
                                                    <span data-name="北京-北京市">深圳</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </label>
                        <input type="submit" value="查询" class="btn02">
                    </div>
                    <div class="child-content" style="display: none;">
                        <label for ="" style="z-index:3;" class="city-linkage">
                            <p>地区：</p>
                           <div class="city-linkage">
                                <input type="text" class="input01 w170">
                                <i class="fa fa-bars"></i>
                                <div class="inquiry-list">
                                     <div class="lib-tab9">
                                        <a href="javascript:;" class="closed">X</a>
                                        <ul class="lib-menus">
                                            <li class="hover">常用</li>
                                            <li>省</li>
                                            <li>市</li>
                                            <li>区县</li>
                                        </ul>
                                        <div class="lib-contents">
                                            <div class="child-contents" style="display: block;">
                                                <div class="inquiry-span" index="0">
                                                    <span data-name="北京-北京市1">深圳</span>
                                                    <span data-name="北京-北京市2">深圳深圳</span>
                                                    <span data-name="北京-北京市3">深圳深圳深圳</span>
                                                    <span data-name="北京-北京市4">深圳是</span>
                                                    <span data-name="北京-北京市5">深圳</span>
                                                    <span data-name="北京-北京市6">深圳</span>
                                                    <span data-name="北京-北京市7">深圳</span>
                                                    <span data-name="北京-北京市8">深圳</span>
                                                    <span data-name="北京-北京市">深圳</span>
                                                    <span data-name="北京-北京市">深圳深圳</span>
                                                    <span data-name="北京-北京市">深圳深圳深圳</span>
                                                    <span data-name="北京-北京市">深圳是</span>
                                                    <span data-name="北京-北京市">深圳</span>
                                                    <span data-name="北京-北京市">深圳</span>
                                                </div>
                                            </div>
                                            <div class="child-contents" style="display: none;">
                                                <div class="inquiry-span" index="1">
                                                    <dl>
                                                        <dt>A-G</dt>
                                                        <dd>
                                                            <span data-name="北京-北京市1">深圳</span>
                                                            <span data-name="北京-北京市2">深圳深圳</span>
                                                            <span data-name="北京-北京市3">深圳深圳深圳</span>
                                                            <span data-name="北京-北京市4">深圳是</span>
                                                            <span data-name="北京-北京市5">深圳</span>
                                                            <span data-name="北京-北京市6">深圳</span>
                                                            <span data-name="北京-北京市7">深圳</span>
                                                            <span data-name="北京-北京市8">深圳</span>
                                                            <span data-name="北京-北京市">深圳</span>
                                                            <span data-name="北京-北京市">深圳深圳</span>
                                                            <span data-name="北京-北京市">深圳深圳深圳</span>
                                                            <span data-name="北京-北京市">深圳是</span>
                                                            <span data-name="北京-北京市">深圳</span>
                                                            <span data-name="北京-北京市">深圳</span>
                                                        </dd>
                                                    </dl>
                                                    <dl>
                                                        <dt>H-K</dt>
                                                        <dd>
                                                            <span data-name="北京-北京市1">深圳</span>
                                                            <span data-name="北京-北京市2">深圳深圳</span>
                                                            <span data-name="北京-北京市3">深圳深圳深圳</span>
                                                            <span data-name="北京-北京市4">深圳是</span>
                                                            <span data-name="北京-北京市5">深圳</span>
                                                            <span data-name="北京-北京市6">深圳</span>
                                                            <span data-name="北京-北京市7">深圳</span>
                                                            <span data-name="北京-北京市8">深圳</span>
                                                            <span data-name="北京-北京市">深圳</span>
                                                            <span data-name="北京-北京市">深圳深圳</span>
                                                            <span data-name="北京-北京市">深圳深圳深圳</span>
                                                            <span data-name="北京-北京市">深圳是</span>
                                                            <span data-name="北京-北京市">深圳</span>
                                                            <span data-name="北京-北京市">深圳</span>
                                                        </dd>
                                                    </dl>
                                                </div>
                                            </div>
                                            <div class="child-contents" style="display: none;">
                                                <div class="inquiry-span" index="2">
                                                   <span data-name="北京-北京市1">深圳</span>
                                                    <span data-name="北京-北京市2">深圳深圳</span>
                                                    <span data-name="北京-北京市3">深圳深圳深圳</span>
                                                    <span data-name="北京-北京市4">深圳是</span>
                                                    <span data-name="北京-北京市5">深圳</span>
                                                    <span data-name="北京-北京市6">深圳</span>
                                                    <span data-name="北京-北京市7">深圳</span>
                                                    <span data-name="北京-北京市8">深圳</span>
                                                    <span data-name="北京-北京市">深圳</span>
                                                    <span data-name="北京-北京市">深圳深圳</span>
                                                    <span data-name="北京-北京市">深圳深圳深圳</span>
                                                    <span data-name="北京-北京市">深圳是</span>
                                                    <span data-name="北京-北京市">深圳</span>
                                                    <span data-name="北京-北京市">深圳</span>
                                                </div>
                                            </div>
                                            <div class="child-contents" style="display: none;">
                                                 <div class="inquiry-span" index="3">
                                                    <span data-name="北京-北京市1">深圳</span>
                                                    <span data-name="北京-北京市2">深圳深圳</span>
                                                    <span data-name="北京-北京市3">深圳深圳深圳</span>
                                                    <span data-name="北京-北京市4">深圳是</span>
                                                    <span data-name="北京-北京市5">深圳</span>
                                                    <span data-name="北京-北京市6">深圳</span>
                                                    <span data-name="北京-北京市7">深圳</span>
                                                    <span data-name="北京-北京市8">深圳</span>
                                                    <span data-name="北京-北京市">深圳</span>
                                                    <span data-name="北京-北京市">深圳深圳</span>
                                                    <span data-name="北京-北京市">深圳深圳深圳</span>
                                                    <span data-name="北京-北京市">深圳是</span>
                                                    <span data-name="北京-北京市">深圳</span>
                                                    <span data-name="北京-北京市">深圳</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </label>
                        <label for ="" class="city-linkage">
                            <p>街道：</p>
                          <div class="city-linkage">
                                <input type="text" class="input01 w170">
                                <i class="fa fa-bars"></i>
                                <div class="inquiry-list">
                                     <div class="lib-tab9">
                                        <a href="javascript:;" class="closed">X</a>
                                        <ul class="lib-menus">
                                            <li class="hover">常用</li>
                                            <li>省</li>
                                            <li>市</li>
                                            <li>区县</li>
                                        </ul>
                                        <div class="lib-contents">
                                            <div class="child-contents" style="display: block;">
                                                <div class="inquiry-span" index="0">
                                                    <span data-name="北京-北京市1">深圳</span>
                                                    <span data-name="北京-北京市2">深圳深圳</span>
                                                    <span data-name="北京-北京市3">深圳深圳深圳</span>
                                                    <span data-name="北京-北京市4">深圳是</span>
                                                    <span data-name="北京-北京市5">深圳</span>
                                                    <span data-name="北京-北京市6">深圳</span>
                                                    <span data-name="北京-北京市7">深圳</span>
                                                    <span data-name="北京-北京市8">深圳</span>
                                                    <span data-name="北京-北京市">深圳</span>
                                                    <span data-name="北京-北京市">深圳深圳</span>
                                                    <span data-name="北京-北京市">深圳深圳深圳</span>
                                                    <span data-name="北京-北京市">深圳是</span>
                                                    <span data-name="北京-北京市">深圳</span>
                                                    <span data-name="北京-北京市">深圳</span>
                                                </div>
                                            </div>
                                            <div class="child-contents" style="display: none;">
                                                <div class="inquiry-span" index="1">
                                                    <dl>
                                                        <dt>A-G</dt>
                                                        <dd>
                                                            <span data-name="北京-北京市1">深圳</span>
                                                            <span data-name="北京-北京市2">深圳深圳</span>
                                                            <span data-name="北京-北京市3">深圳深圳深圳</span>
                                                            <span data-name="北京-北京市4">深圳是</span>
                                                            <span data-name="北京-北京市5">深圳</span>
                                                            <span data-name="北京-北京市6">深圳</span>
                                                            <span data-name="北京-北京市7">深圳</span>
                                                            <span data-name="北京-北京市8">深圳</span>
                                                            <span data-name="北京-北京市">深圳</span>
                                                            <span data-name="北京-北京市">深圳深圳</span>
                                                            <span data-name="北京-北京市">深圳深圳深圳</span>
                                                            <span data-name="北京-北京市">深圳是</span>
                                                            <span data-name="北京-北京市">深圳</span>
                                                            <span data-name="北京-北京市">深圳</span>
                                                        </dd>
                                                    </dl>
                                                    <dl>
                                                        <dt>H-K</dt>
                                                        <dd>
                                                            <span data-name="北京-北京市1">深圳</span>
                                                            <span data-name="北京-北京市2">深圳深圳</span>
                                                            <span data-name="北京-北京市3">深圳深圳深圳</span>
                                                            <span data-name="北京-北京市4">深圳是</span>
                                                            <span data-name="北京-北京市5">深圳</span>
                                                            <span data-name="北京-北京市6">深圳</span>
                                                            <span data-name="北京-北京市7">深圳</span>
                                                            <span data-name="北京-北京市8">深圳</span>
                                                            <span data-name="北京-北京市">深圳</span>
                                                            <span data-name="北京-北京市">深圳深圳</span>
                                                            <span data-name="北京-北京市">深圳深圳深圳</span>
                                                            <span data-name="北京-北京市">深圳是</span>
                                                            <span data-name="北京-北京市">深圳</span>
                                                            <span data-name="北京-北京市">深圳</span>
                                                        </dd>
                                                    </dl>
                                                </div>
                                            </div>
                                            <div class="child-contents" style="display: none;">
                                                <div class="inquiry-span" index="2">
                                                   <span data-name="北京-北京市1">深圳</span>
                                                    <span data-name="北京-北京市2">深圳深圳</span>
                                                    <span data-name="北京-北京市3">深圳深圳深圳</span>
                                                    <span data-name="北京-北京市4">深圳是</span>
                                                    <span data-name="北京-北京市5">深圳</span>
                                                    <span data-name="北京-北京市6">深圳</span>
                                                    <span data-name="北京-北京市7">深圳</span>
                                                    <span data-name="北京-北京市8">深圳</span>
                                                    <span data-name="北京-北京市">深圳</span>
                                                    <span data-name="北京-北京市">深圳深圳</span>
                                                    <span data-name="北京-北京市">深圳深圳深圳</span>
                                                    <span data-name="北京-北京市">深圳是</span>
                                                    <span data-name="北京-北京市">深圳</span>
                                                    <span data-name="北京-北京市">深圳</span>
                                                </div>
                                            </div>
                                            <div class="child-contents" style="display: none;">
                                                 <div class="inquiry-span" index="3">
                                                    <span data-name="北京-北京市1">深圳</span>
                                                    <span data-name="北京-北京市2">深圳深圳</span>
                                                    <span data-name="北京-北京市3">深圳深圳深圳</span>
                                                    <span data-name="北京-北京市4">深圳是</span>
                                                    <span data-name="北京-北京市5">深圳</span>
                                                    <span data-name="北京-北京市6">深圳</span>
                                                    <span data-name="北京-北京市7">深圳</span>
                                                    <span data-name="北京-北京市8">深圳</span>
                                                    <span data-name="北京-北京市">深圳</span>
                                                    <span data-name="北京-北京市">深圳深圳</span>
                                                    <span data-name="北京-北京市">深圳深圳深圳</span>
                                                    <span data-name="北京-北京市">深圳是</span>
                                                    <span data-name="北京-北京市">深圳</span>
                                                    <span data-name="北京-北京市">深圳</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </label>
                        <input type="submit" value="查询" class="btn02">
                    </div>
                    <div class="child-content" style="display: none;">
                        <label for ="">
                            <p>物流公司：</p>
                            <select class="w170">
                                <option value="">请选择</option>
                                <option value="">1</option>
                                <option value="">2</option>
                                <option value="">3</option>
                            </select>
                        </label>
                        <label for ="">
                            <p>运单号：</p>
                            <input type="text" class="input01 w170">
                        </label>
                        <input type="submit" value="查询" class="btn02">
                    </div>
                </div>
            </div>
            <div class="inquiry-pic">
                <img src="front/images/inquiry-pic01.png" alt="">
            </div>
        </div>
        <!--热门路线-->
        <div class="popular-routes">
            <div class="tit">热门线路</div>
            <div class="con">
                <div class="routes-left">
                    <a class="otw" href="javascript:;">深圳市 <i class="fa fa-long-arrow-right"></i> 上海市 0.44元/公斤 120元/立方</a>
                    <a class="otw" href="javascript:;">深圳市 <i class="fa fa-long-arrow-right"></i> 上海市 0.44元/公斤 120元/立方</a>
                    <a class="otw" href="javascript:;">深圳市 <i class="fa fa-long-arrow-right"></i> 上海市 0.44元/公斤 120元/立方</a>
                    <a class="otw" href="javascript:;">深圳市 <i class="fa fa-long-arrow-right"></i> 上海市 0.44元/公斤 120元/立方</a>
                    <a class="otw" href="javascript:;">深圳市 <i class="fa fa-long-arrow-right"></i> 上海市 0.44元/公斤 120元/立方</a>
                </div>
                <div class="routes-right">
                    <a class="otw" href="javascript:;">深圳市 <i class="fa fa-long-arrow-right"></i> 上海市 0.44元/公斤 120元/立方</a>
                    <a class="otw" href="javascript:;">深圳市 <i class="fa fa-long-arrow-right"></i> 上海市 0.44元/公斤 120元/立方</a>
                    <a class="otw" href="javascript:;">深圳市 <i class="fa fa-long-arrow-right"></i> 上海市 0.44元/公斤 120元/立方</a>
                    <a class="otw" href="javascript:;">深圳市 <i class="fa fa-long-arrow-right"></i> 上海市 0.44元/公斤 120元/立方</a>
                    <a class="otw" href="javascript:;">深圳市 <i class="fa fa-long-arrow-right"></i> 上海市 0.44元/公斤 120元/立方</a>
                </div>
            </div>
        </div>
        <!--查询货物信息-->
        <div class="inquiry-infor">
            <div class="tit">查询货物信息</div>
            <div class="con">
                <label for="" style="z-index: 1980331; position:relative;">
                    <p>发货地：</p>
                    <div class="city-linkage">
                        <input type="text" class="input01 w155">
                        <i class="fa fa-bars"></i>
                        <div class="inquiry-list inquiry-tool" style="top:18px; right:0; left:inherit; border-radius:0">
                            <div class="lib-tab9">
        <a href="javascript:;" class="closed">X</a>
        <ul class="lib-menus">
            <li class="hover">常用</li>
            <li>省</li>
            <li>市</li>
            
        </ul>
        <div class="lib-contents">
            <div class="child-contents" style="display: block;">
                <div class="inquiry-span" index="0">
                    
                            <span data-name="北京市-北京市" data-id="377" data-pid="1">
                                北京市</span>
                        
                            <span data-name="广东省-广州市" data-id="573" data-pid="19">
                                广州市</span>
                        
                            <span data-name="广东省-深圳市" data-id="575" data-pid="19">
                                深圳市</span>
                        
                            <span data-name="天津市-天津市" data-id="3884" data-pid="2">
                                天津市</span>
                        
                </div>
            </div>
            <div class="child-contents" style="display: none;">
                <div class="inquiry-span" index="1">
                    <dl>
                        <dt>A-G</dt>
                        <dd>
                            
                                    <span data-name="北京市" data-pid="1">
                                        北京市</span>
                                
                                    <span data-name="安徽省" data-pid="12">
                                        安徽省</span>
                                
                                    <span data-name="福建省" data-pid="13">
                                        福建省</span>
                                
                                    <span data-name="广东省" data-pid="19">
                                        广东省</span>
                                
                                    <span data-name="广  西" data-pid="20">
                                        广  西</span>
                                
                                    <span data-name="重庆市" data-pid="22">
                                        重庆市</span>
                                
                                    <span data-name="贵州省" data-pid="24">
                                        贵州省</span>
                                
                                    <span data-name="甘肃省" data-pid="28">
                                        甘肃省</span>
                                
                                    <span data-name="澳  门" data-pid="34">
                                        澳  门</span>
                                
                        </dd>
                    </dl>
                    <dl>
                        <dt>H-K</dt>
                        <dd>
                            
                                    <span data-name="河北省" data-pid="3">
                                        河北省</span>
                                
                                    <span data-name="吉林省" data-pid="7">
                                        吉林省</span>
                                
                                    <span data-name="黑龙江" data-pid="8">
                                        黑龙江</span>
                                
                                    <span data-name="江苏省" data-pid="10">
                                        江苏省</span>
                                
                                    <span data-name="江西省" data-pid="14">
                                        江西省</span>
                                
                                    <span data-name="河南省" data-pid="16">
                                        河南省</span>
                                
                                    <span data-name="湖北省" data-pid="17">
                                        湖北省</span>
                                
                                    <span data-name="湖南省" data-pid="18">
                                        湖南省</span>
                                
                                    <span data-name="海南省" data-pid="21">
                                        海南省</span>
                                
                        </dd>
                    </dl>
                    <dl>
                        <dt>L-S</dt>
                        <dd>
                            
                                    <span data-name="山西省" data-pid="4">
                                        山西省</span>
                                
                                    <span data-name="内蒙古" data-pid="5">
                                        内蒙古</span>
                                
                                    <span data-name="辽宁省" data-pid="6">
                                        辽宁省</span>
                                
                                    <span data-name="上海市" data-pid="9">
                                        上海市</span>
                                
                                    <span data-name="山东省" data-pid="15">
                                        山东省</span>
                                
                                    <span data-name="四川省" data-pid="23">
                                        四川省</span>
                                
                                    <span data-name="陕西省" data-pid="27">
                                        陕西省</span>
                                
                                    <span data-name="青海省" data-pid="29">
                                        青海省</span>
                                
                                    <span data-name="宁  夏" data-pid="30">
                                        宁  夏</span>
                                
                        </dd>
                    </dl>
                    <dl>
                        <dt>T-Z</dt>
                        <dd>
                            
                                    <span data-name="天津市" data-pid="2">
                                        天津市</span>
                                
                                    <span data-name="浙江省" data-pid="11">
                                        浙江省</span>
                                
                                    <span data-name="云南省" data-pid="25">
                                        云南省</span>
                                
                                    <span data-name="西  藏" data-pid="26">
                                        西  藏</span>
                                
                                    <span data-name="新  疆" data-pid="31">
                                        新  疆</span>
                                
                                    <span data-name="台湾省" data-pid="32">
                                        台湾省</span>
                                
                                    <span data-name="香  港" data-pid="33">
                                        香  港</span>
                                
                        </dd>
                    </dl>
                </div>
            </div>
            <div class="child-contents" style="display: none;">
                <div class="inquiry-span" index="2">
                </div>
            </div>
             
        </div>
    </div>
                        </div>
                    </div>
                </label>
                <label for="" style="z-index: 1980330; position:relative;">
                    <p>收货地：</p>
                    <div class="city-linkage">
                        <input type="text" class="input01 w155">
                        <i class="fa fa-bars"></i>
                        <div class="inquiry-list" style="right:0; left:inherit;">
                             <div class="lib-tab9">
                                <a href="javascript:;" class="closed">X</a>
                                <ul class="lib-menus">
                                    <li class="hover">常用</li>
                                    <li>省</li>
                                    <li>市</li>
                                    <li>区县</li>
                                </ul>
                                <div class="lib-contents">
                                    <div class="child-contents" style="display: block;">
                                        <div class="inquiry-span" index="0">
                                            <span data-name="北京-北京市1">深圳</span>
                                            <span data-name="北京-北京市2">深圳深圳</span>
                                            <span data-name="北京-北京市3">深圳深圳深圳</span>
                                            <span data-name="北京-北京市4">深圳是</span>
                                            <span data-name="北京-北京市5">深圳</span>
                                            <span data-name="北京-北京市6">深圳</span>
                                            <span data-name="北京-北京市7">深圳</span>
                                            <span data-name="北京-北京市8">深圳</span>
                                            <span data-name="北京-北京市">深圳</span>
                                            <span data-name="北京-北京市">深圳深圳</span>
                                            <span data-name="北京-北京市">深圳深圳深圳</span>
                                            <span data-name="北京-北京市">深圳是</span>
                                            <span data-name="北京-北京市">深圳</span>
                                            <span data-name="北京-北京市">深圳</span>
                                        </div>
                                    </div>
                                    <div class="child-contents" style="display: none;">
                                        <div class="inquiry-span" index="1">
                                            <dl>
                                                <dt>A-G</dt>
                                                <dd>
                                                    <span data-name="北京-北京市1">深圳</span>
                                                    <span data-name="北京-北京市2">深圳深圳</span>
                                                    <span data-name="北京-北京市3">深圳深圳深圳</span>
                                                    <span data-name="北京-北京市4">深圳是</span>
                                                    <span data-name="北京-北京市5">深圳</span>
                                                    <span data-name="北京-北京市6">深圳</span>
                                                    <span data-name="北京-北京市7">深圳</span>
                                                    <span data-name="北京-北京市8">深圳</span>
                                                    <span data-name="北京-北京市">深圳</span>
                                                    <span data-name="北京-北京市">深圳深圳</span>
                                                    <span data-name="北京-北京市">深圳深圳深圳</span>
                                                    <span data-name="北京-北京市">深圳是</span>
                                                    <span data-name="北京-北京市">深圳</span>
                                                    <span data-name="北京-北京市">深圳</span>
                                                </dd>
                                            </dl>
                                            <dl>
                                                <dt>H-K</dt>
                                                <dd>
                                                    <span data-name="北京-北京市1">深圳</span>
                                                    <span data-name="北京-北京市2">深圳深圳</span>
                                                    <span data-name="北京-北京市3">深圳深圳深圳</span>
                                                    <span data-name="北京-北京市4">深圳是</span>
                                                    <span data-name="北京-北京市5">深圳</span>
                                                    <span data-name="北京-北京市6">深圳</span>
                                                    <span data-name="北京-北京市7">深圳</span>
                                                    <span data-name="北京-北京市8">深圳</span>
                                                    <span data-name="北京-北京市">深圳</span>
                                                    <span data-name="北京-北京市">深圳深圳</span>
                                                    <span data-name="北京-北京市">深圳深圳深圳</span>
                                                    <span data-name="北京-北京市">深圳是</span>
                                                    <span data-name="北京-北京市">深圳</span>
                                                    <span data-name="北京-北京市">深圳</span>
                                                </dd>
                                            </dl>
                                        </div>
                                    </div>
                                    <div class="child-contents" style="display: none;">
                                        <div class="inquiry-span" index="2">
                                           <span data-name="北京-北京市1">深圳</span>
                                            <span data-name="北京-北京市2">深圳深圳</span>
                                            <span data-name="北京-北京市3">深圳深圳深圳</span>
                                            <span data-name="北京-北京市4">深圳是</span>
                                            <span data-name="北京-北京市5">深圳</span>
                                            <span data-name="北京-北京市6">深圳</span>
                                            <span data-name="北京-北京市7">深圳</span>
                                            <span data-name="北京-北京市8">深圳</span>
                                            <span data-name="北京-北京市">深圳</span>
                                            <span data-name="北京-北京市">深圳深圳</span>
                                            <span data-name="北京-北京市">深圳深圳深圳</span>
                                            <span data-name="北京-北京市">深圳是</span>
                                            <span data-name="北京-北京市">深圳</span>
                                            <span data-name="北京-北京市">深圳</span>
                                        </div>
                                    </div>
                                    <div class="child-contents" style="display: none;">
                                         <div class="inquiry-span" index="3">
                                            <span data-name="北京-北京市1">深圳</span>
                                            <span data-name="北京-北京市2">深圳深圳</span>
                                            <span data-name="北京-北京市3">深圳深圳深圳</span>
                                            <span data-name="北京-北京市4">深圳是</span>
                                            <span data-name="北京-北京市5">深圳</span>
                                            <span data-name="北京-北京市6">深圳</span>
                                            <span data-name="北京-北京市7">深圳</span>
                                            <span data-name="北京-北京市8">深圳</span>
                                            <span data-name="北京-北京市">深圳</span>
                                            <span data-name="北京-北京市">深圳深圳</span>
                                            <span data-name="北京-北京市">深圳深圳深圳</span>
                                            <span data-name="北京-北京市">深圳是</span>
                                            <span data-name="北京-北京市">深圳</span>
                                            <span data-name="北京-北京市">深圳</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </label>
                <label for="">
                    <p>货物类型：</p>
                    <select name="" id=""  class="selectpicker" data-width="157">
                          <option value="">请选择</option>
                          <option value="">类型一</option>
                          <option value="">类型二</option>
                          <option value="">类型三</option>
                          <option value="">类型一</option>
                          <option value="">类型二</option>
                          <option value="">类型三</option>
                          <option value="">类型一</option>
                          <option value="">类型二</option>
                          <option value="">类型三</option>
                          <option value="">类型一</option>
                          <option value="">类型二</option>
                          <option value="">类型三</option>
                    </select>
                </label>
                <input value="查询" type="submit" class="btn02"/>
            </div>
        </div>
    </div>
<script type="text/javascript" src="front/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="front/js/jquery.SuperSlide.2.1.1.js"></script>
<script type="text/javascript" src="front/js/animateBackground-plugin.js"></script>
<script type="text/javascript" src="front/js/global.js"></script>
<script type="text/javascript" src="front/js/jquery.accordion.js"></script>
<script type="text/javascript" src="front/js/es5-shim.js"></script>
<script type="text/javascript" src="front/js/select.js"></script>
<script type="text/javascript">
    jQuery("#bannerIndex").slide({mainCell:".bd ul",autoPlay:true});
    jQuery(".banner-quotes01").each(function(){
        $(this).slide({mainCell:".bd ul",autoPlay:false});
    });
     jQuery(".banner-quotes02").each(function(){
        $(this).slide({mainCell:".bd ul",autoPlay:false});
    });
    jQuery(".txtScroll-top").slide({titCell:".hd ul",mainCell:".bd ul",autoPage:true,effect:"top",autoPlay:true,vis:13});
</script>
<script type="text/javascript">
    $(function(){
      $('dl#my-accordion').accordion({open:true});
     });
</script>
</body>
</html>