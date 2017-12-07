/* 图片放大 旋转 插件          *
 * 制作人：SF                  *
 * 兼容主流浏览器              *
 * ie8(ie8会有一些显示问题)    */
+(function(){
    'use strict';
    $.fn.imgRotate =function(ops){
        var defaults = {
            imgScale : 0.8,          // 图片最大的宽高比例（相对于窗口大小）
            defaultsAngle : 0,       // 图片默认旋转角度
            defaultsScale : 1,       // 图片默认比例
            angleSize:90,            // 每次旋转的角度
            scaleSize:0.2,           // 每次缩放的比例
            scaleMin:0.6             // 最小缩放比例
        };
        var ops = $.extend({},defaults,ops);
        //共有属性
        var zoomImg=$("<div/>").css({
            "width":"100%",
            "height":"100%",
            "opacity":"0.5",
            "background":"#000000",
            "position": 'fixed',
            "left": 0,
            "top": 0,
            "z-index":"100000000"
        }).appendTo('body');
        var bigBox = $('<div id="bigBox">\
                              <span></span>\
                              <img/>\
                        </div>').appendTo('body');
        var operateImg =$('<ul id="imgOperate">\
                                <li id="imgColosed">关闭</li>\
                                <li id="Clockwise">顺时针</li>\
                                <li id="Counterclockwise">逆时针</li>\
                                <li id="enlarge">放大</li>\
                                <li id="Narrow">缩小</li>\
                                <li id="decline">还原</li>\
                            </ul>').appendTo('body');
        //共有方法
        function showImg(){
            zoomImg.show();
            bigBox.css({
                "display":'block'
            });
            operateImg.css({
                "display":'block'
            });
        }
        function hideImg(){
            zoomImg.hide();
            bigBox.hide();
            operateImg.hide();
            bigBox.find('img').removeAttr('style');
        }
        function dragImg(dragEle){
            dragEle.click(function(event){
                event.stopPropagation();
                return false;
            });
            var dragging = false;
            var iX, iY;
            dragEle.mousedown(function(e){
                dragging = true;
                iX = e.clientX - this.offsetLeft;
                iY = e.clientY - this.offsetTop;
                dragEle.css({
                    "position":"absolute"
                });
                e.stopPropagation();
                return false;
            });
            $(document).mousemove(function(e){
                if (dragging) {
                    var e = e || window.event;
                    var oX = e.clientX - iX;
                    var oY = e.clientY - iY;
                    dragEle.css({"left":oX + "px", "top":oY + "px"});
                    e.stopPropagation();
                    return false;
                }
            });
            $(document).mouseup(function(e) {
                dragging = false;
                e.cancelBubble = true;
            })
        }
        //初始化
        hideImg();
        dragImg(bigBox.find('img'));
        this.each(function(){
            var _this = $(this);
            //私有属性
            var _angle = ops.defaultsAngle;
            var _scale = ops.defaultsScale;
            //私有方法
            function bigImgSet(){
                bigBox.find('img').attr({
                    "src": _this.attr('src')
                    })
                    .css({
                        'max-width':100*ops.imgScale+'%',
                        'max-height':100*ops.imgScale+'%'
                    })
            }
            function rotatesScale(op){
                var widImg = bigBox.find('img').width();
                var heiImg = bigBox.find('img').height();
                switch(op)
                    {
                      case "clockwise":
                       _angle = _angle + ops.angleSize;
                          break;
                      case "counterclockwise":
                       _angle = _angle - ops.angleSize;
                          break;
                      case "narrow":
                          (_scale<ops.scaleMin) ? (_scale = _scale) :(_scale = _scale-ops.scaleSize);
                          break;
                      case "enlarge":
                          _scale = _scale+ops.scaleSize;
                          break;
                      default:
                       _angle = 0;
                       _scale = 1;
                    }
                if (bigBox.find('img')[0] && bigBox.find('img')[0].nodeType === 1) {
                    _angle = parseFloat(_angle) || 0;
                    if (typeof(_angle) === "number") {
                        var rad = _angle * (Math.PI / 180);
                        var m11 = Math.cos(rad) * _scale, m12 = -1 * Math.sin(rad) * _scale, m21 = Math.sin(rad) * _scale, m22 = m11;
                        if (!bigBox.find('img')[0].style.Transform) {
                            bigBox.find('img').css({
                                'filter':"progid:DXImageTransform.Microsoft.Matrix(M11="+ m11 +",M12="+ m12 +",M21="+ m21 +",M22="+ m22 +",SizingMethod='auto expand')"
                            });
                        }
                        bigBox.find('img').css({
                            "transform": "rotate(" + _angle + "deg) scale(" + _scale + ")",
                            "-ms-transform": "rotate(" + _angle + "deg) scale(" + _scale + ")",
                            "-moz-transform": "rotate(" + _angle + "deg) scale(" + _scale + ")",
                            "-webkit-transform": "rotate(" + _angle + "deg) scale(" + _scale + ")",
                            "-o-transform": "rotate(" + _angle + "deg) scale(" + _scale + ")"
                        });
                    }
                }
            }
            //方法调用
            _this.click(function(){
                showImg();
                bigImgSet();
            });
            bigBox.click(function(){
                hideImg();
            });
            $('#imgColosed').click(function(){
                hideImg();
            });
            $('#Clockwise').click(function(){
                rotatesScale("clockwise");
            });
            $('#Counterclockwise').click(function(){
                rotatesScale("counterclockwise");
            });
            $('#enlarge').click(function(){
                rotatesScale("enlarge");
            });
            $('#Narrow').click(function(){
                rotatesScale("narrow");
            });
            $('#decline').click(function(){
                rotatesScale();
                bigBox.find('img').css({
                    "position":"relative",
                    "top":0,
                    "left":0
                })
            })
        });
        return this;
    }
})(jQuery);
