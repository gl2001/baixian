$(function(){
	$(".bj_b table .gz").click(function(event) {
		$(this).find("i").toggleClass('hover')
	});

	// 指数-类型切换
	$(".s_type ul li").click(function(event) {
		$(this).addClass('selected').siblings().removeClass('selected');
		var indexed=$(".s_type ul").find("li").index(this);
		$(".s_l").hide();
		$(".s_l").eq(indexed).show();
	});
	// 提交订单
	$(".ress_l i").click(function(event) {
		$(".ress_l i").removeClass("click");
		$(this).addClass('click');
	});
})

