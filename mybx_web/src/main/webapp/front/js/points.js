
/*--------------------------------------首页全屏banner--------------------------------------------------------------------------*/
function change(option){
    var area = (typeof option.area=="undefined")?jQuery(""):option.area;                //鼠标经过停止自动播放的区域
    var box = (typeof option.box=="undefined")?jQuery(""):option.box;                   //包含项目的容器
    var btn = (typeof option.btn=="undefined")?jQuery(""):option.btn;                   //包含焦点按钮的容器
    var leftBtn = (typeof option.leftBtn=="undefined")?jQuery(""):option.leftBtn;       //左按钮
    var rightBtn = (typeof option.rightBtn=="undefined")?jQuery(""):option.rightBtn;    //右按钮
    var waitTime = (typeof option.waitTime=="undefined")?8000:option.waitTime;          //切换间隔时间
    var fadeTime = (typeof option.fadeTime=="undefined")?"slow":option.fadeTime;        //淡入淡出时间
    var autoPlay = (typeof option.autoPlay=="undefined")?true:option.autoPlay;          //是否自动播放

    var listNum = box.find("li").length;
    box.find("li").hide();
    box.find("li:first").addClass("active").show();
    btn.find("li:first").addClass("selected");

    if(listNum <= 1){
        btn.hide();
        autoPlay = false;
    }

    //切换
    function changeItem(k){
        btn.find("li").removeClass("selected");
        btn.find("li").eq(k).addClass("selected");
        box.find("li").removeClass("active");
        box.find("li").eq(k).addClass("active");
        box.find("li").hide();
        box.find("li.active").fadeIn(fadeTime);
    }

    //点击左按钮
    leftBtn.click(function(){
        var e = box.find("li.active").index();
        if(e == 0){e = listNum;}
        e = e - 1;
        changeItem(e);
    });

    //点击右按钮
    rightBtn.click(function(){
        var e = box.find("li.active").index();
        if(e == listNum - 1){e = -1;}
        e = e + 1;
        changeItem(e);
    });

    //点击焦点按钮
    btn.find("li").click(function(){
        var e = jQuery(this).index();
        changeItem(e);
    });

    //自动播放
    function autoRun(){
        var e = box.find("li.active").index();
        if(e == listNum - 1){e = -1;}
        e = e + 1;
        changeItem(e);
    }

    if(autoPlay){
        var intID = setInterval(autoRun,waitTime);
        area.hover(function(){
            clearInterval(intID);
        },function(){
            intID = setInterval(autoRun,waitTime);
        });
    }

}
/*-------------------------------------------------------------------------------------------------------------------------------*/
$(function(){
    var slideDiv = $("#bannerImg");
    var imgWid = slideDiv.find("img").width();
    setWidth();
    function setWidth(){
        var screenWid = $(window).width();
        var hideWid = (screenWid - imgWid)/2;
        var hideWidSmall =  (1190 - imgWid)/2;
        if(screenWid >= imgWid){
            slideDiv.css({"width":imgWid + "px","margin":"0 auto"});
        }else{
            if(screenWid > 1190){
                slideDiv.css({"width":screenWid + "px","overflow":"hidden"});
                slideDiv.find("li").css({"width":screenWid + "px","overflow":"hidden"});
                slideDiv.find("img").css("margin-left",hideWid + "px");
            }else{
                slideDiv.css({"width":"1190px","overflow":"hidden"});
                slideDiv.find("li").css({"width":"1190px","overflow":"hidden"});
                slideDiv.find("img").css("margin-left",hideWidSmall + "px");
            }
        }
    }

    $(window).resize(function(){
        setWidth();
    });

});

//切换
$(function(){
    change({
        area : $("#bannerBox"),             //鼠标经过停止自动播放的区域
        box : $("#bannerImg"),                  //包含项目的容器
        btn : $("#bannerBtn"),                  //包含焦点按钮的容器
        leftBtn : $("#bannerBox a.leftBtn"),        //左按钮
        rightBtn : $("#bannerBox a.rightBtn"),      //右按钮
        waitTime : 3000,                        //切换间隔时间
        fadeTime : 500,                     //淡入淡出时间
        autoPlay : true                         //是否自动播放
    });
});


$(function(){
        $("#bannerBtn ul li").last().css("margin","0px");
          var ulwidth = $("#bannerBtn ul").width();
          $("#bannerBtn").css("width",(ulwidth)+ "px")
           });
/*产品详细页*/
function scrollLeft(box,leftBtn,rightBtn,showNum,waitTime,animateTime,easing){
    var config = {
        box : $(box),                   //包含要滚动的ul的div
        leftBtn : $(leftBtn),           //左按钮
        rightBtn : $(rightBtn),         //右按钮
        showNum : showNum,              //容器显示的项目个数
        waitTime : waitTime,            //滚动间隔，多久滚动一次
        animateTime : animateTime,      //滚动时间，每次滚动持续多长时间
        easing : easing                 //滚动方式
    }//最后一个变量后面不要逗号

    var listNum = config.box.find("li").length;                     //当前项目总数
    var listWid = config.box.find("li").first().outerWidth(true);   //单个项目的宽度（包括内外边距），每个项目的宽度必须一致
    var indexRight = config.showNum;                                //容器后面不可见区 - 第一个项目的序号
    var leftAllow = true;                                           //防止连续点击左按钮
    var rightAllow = true;                                          //防止连续点击右按钮

    //如果总项目数小于或等于容器容纳的项目数，不滚动
    if(listNum <= config.showNum){
        leftAllow = false;
        rightAllow = false;
    }else{
        config.rightBtn.find("img").attr("src","images/rightBtn_pro.png");
    }

    //点击左按钮 - 向右滚动
    config.leftBtn.click(function(){
        var marLeft = parseInt(config.box.find("ul").css("margin-left"),10);
        var indexLeft = Math.abs(marLeft/listWid);
        //左侧未滚动的项目大于容器显示的项目时
        if(leftAllow && indexLeft > config.showNum){
            leftAllow = false;
            config.box.find("ul").animate({marginLeft:marLeft+config.showNum*listWid+"px"},config.animateTime,config.easing,function(){
                indexRight = Math.abs(parseInt(config.box.find("ul").css("margin-left"),10))/listWid + config.showNum;
                config.rightBtn.find("img").attr("src","images/rightBtn_pro.png");
                leftAllow = true ;
            });
        }//end - if
        //左侧未滚动的项目大于 0 且小于或等于容器显示的项目时
        if(leftAllow && indexLeft > 0 && indexLeft <= config.showNum){
            leftAllow = false;
            config.box.find("ul").animate({marginLeft:marLeft+indexLeft*listWid+"px"},config.animateTime,config.easing,function(){
                indexRight = Math.abs(parseInt(config.box.find("ul").css("margin-left"),10))/listWid + config.showNum;
                config.leftBtn.find("img").attr("src","images/leftBtn_pro.png");
                config.rightBtn.find("img").attr("src","images/rightBtn_pro.png");
                leftAllow = true ;
            });
        }//end - if
    });

    //点击右按钮 - 向左滚动
    config.rightBtn.click(function(){
        //右侧未滚动的项目大于容器显示的项目时
        if(rightAllow && listNum - indexRight > config.showNum){
            rightAllow = false;
            var marLeft = parseInt(config.box.find("ul").css("margin-left"),10);
            config.box.find("ul").animate({marginLeft:marLeft-config.showNum*listWid+"px"},config.animateTime,config.easing,function(){
                indexRight = Math.abs(parseInt(config.box.find("ul").css("margin-left"),10))/listWid +config.showNum;
                config.leftBtn.find("img").attr("src","images/leftBtn_pro.png");
                rightAllow = true;
            });
        }//end - if
        //右侧未滚动的项目大于 0 且小于或等于容器显示的项目时
        if(rightAllow && listNum - indexRight > 0 && listNum - indexRight <= config.showNum){
            rightAllow = false;
            var marLeft = parseInt(config.box.find("ul").css("margin-left"),10);
            config.box.find("ul").animate({marginLeft:marLeft-(listNum - indexRight)*listWid+"px"},config.animateTime,config.easing,function(){
                indexRight = Math.abs(parseInt(config.box.find("ul").css("margin-left"),10))/listWid + config.showNum;
                config.leftBtn.find("img").attr("src","images/leftBtn_pro.png");
                config.rightBtn.find("img").attr("src","images/rightBtn_pro.png");
                rightAllow = true ;
            });
        }//end - if
    });

}
//小图滚动
$(function(){
    scrollLeft(
        ".smallBox",            //包含要滚动的ul的div
        ".smallImg a.leftBtn",  //左按钮
        ".smallImg a.rightBtn", //右按钮
        5,                      //容器显示的项目个数
        5000,                   //间隔时间,每隔多久滚动一次
        "slow",                 //滚动时间，每次滚动持续多长时间
        "swing"                 //滚动方式
    );//最后一个变量后面不要逗号
});
//大图切换
$(function(){
    var bigBox = $(".bigImg");
    var smallBox = $(".smallBox");
    var firstImg = smallBox.find("li:first").find("img").attr("src");
    smallBox.find("li:first").find("a").addClass("selected");
    bigBox.find("img").attr("src",firstImg);
    smallBox.find("li").click(function(){
        var imgAddr = $(this).find("img").attr("src");
        smallBox.find("a").removeClass("selected");
        $(this).find("a").addClass("selected");
        bigBox.find("a").attr("href",imgAddr);
        bigBox.find("img").attr("src",imgAddr);
    });
});
/*选择型号*/
$(function(){
    $(".product_intro dd.banben a").first().addClass("selected");
    $(".product_intro dd.banben a").click(function(){
        $(".product_intro dd.banben a").removeClass("selected");
        $(this).addClass("selected");
        });
    });
/*产品数量点击*/
    $(function () {
        $(".product_intro dd input").attr("value", 1);
        $(".product_intro dd a.rightBtn").click(function () {
            var num = $(".product_intro dd input").attr("value");
            num++;
            $(".product_intro dd input").attr("value", num);
        });
        $(".product_intro dd a.leftBtn").click(function () {
            var i = $(".product_intro dd input").attr("value");
            i--;
            if (i < 1) { i = 1 }
            $(".product_intro dd input").attr("value", i);
        })
    });
/*新增地址弹出层*/
