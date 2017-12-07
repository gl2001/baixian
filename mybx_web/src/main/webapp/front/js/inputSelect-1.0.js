+(function(){
    'use strict';
    $.fn.tab =function(ops){
        var defaults = {
            currentClass:'current',
            tabNav:'.tabNav>li',
            tabConent:'.tabContent>div',
            eventType:'click'
        };
        var ops = $.extend({},defaults,ops);
        this.each(function(){
            var _this = $(this);
            // 初始化显示
            var showIndex = _this.find('.'+ops.currentClass).index();
            _this.find(ops.tabConent).eq(showIndex).show();
            _this.find(ops.tabNav).on(ops.eventType,function(){
                $(this).addClass(ops.currentClass)
                    .siblings().removeClass(ops.currentClass);
                $(this).children('.more').show();
                $(this).siblings().children('.more').hide();
                var index = $(this).index();
                _this.find(ops.tabConent).eq(index).fadeIn(200)
                    .siblings().hide();
            });
        });
        return this;
    }
})(jQuery);

$(function(){
    // 切换
    $('.select-box').tab({
         currentClass:'selected',
         tabNav:'.sort-first>span',
         tabConent:'.sorts-second>div'
    });
    // 显示
    $('.select-sorts').on('click',function(){
        $('.select-mask').fadeIn(400);
    })
    //隐藏
    $('.selects-closed').click(function(event){
        $('.select-mask').fadeOut(400);
         event.stopPropagation();
    });
    // 赋值
    $('.sorts-second a').on('click',function(event){
        $('.select-mask').fadeOut(400);
         event.stopPropagation();
         var html = $(this).html();
         $('.select-sorts').html(html);
    });
});