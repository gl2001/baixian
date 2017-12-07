$(function(){
    // 计算总价格
    function getTotal(){
        var priceTotal = 0,
            numTotal = 0;
        var tr =$('#cart-table').find('tr');
        for(var i = 0; i< tr.length; i++){
            if($(tr[i]).find('.checkbox').attr('checked') == 'checked'){
                priceTotal += parseFloat($(tr[i]).find('.total-tr span').html());
                numTotal += parseFloat($(tr[i]).find('.num input').val());
            }
        }
        $('.total-table span').html(priceTotal);
        $('.goods-selected span').html(numTotal);
    };
    // 计算单行价格
    function getSubtotal(){
        $('#cart-table').find('tr').each(function(){
            var priceTr = $(this).find('.price span').html();
            var num = $(this).find('.num input').val();
            var priceSub = (priceTr * num).toFixed(2);
            $(this).find('.total-tr span').html(priceSub);
        });
    };
    // 初始化
    getTotal();
    getSubtotal();
    // 大全选
    var boxTable = $('#cart-table').find('input[type="checkbox"]');
    $('.check-all').click(function(){
    	($(this).attr('checked') == 'checked') ? boxTable.attr('checked','checked'): boxTable.removeAttr('checked');
    });
    // 小全选
    $('.check-tr').click(function(){
    	var flag = $(this).attr('checked');
    	if(flag == 'checked'){
    		$(this).closest('tbody').find('input[type="checkbox"]').attr('checked','checked');
    	}else{
    		$(this).closest('tbody').find('input[type="checkbox"]').removeAttr('checked');
    	}
    });
    // 单击单选按钮
    boxTable.click(function(){
    	getTotal();
		if($(this).attr('checked') != 'checked'){
    		$('.check-all').removeAttr('checked');
    		$(this).closest('tbody').find('.check-tr').removeAttr('checked');
    	}
    });
    // 删除单品
    $('.del-btn').click(function(){
    	var len = $(this).closest('tbody').children('tr').length;
        var conf = confirm('确定删除此商品吗？');
        if(conf) (len == 3) ? $(this).closest('tbody').remove() : $(this).closest('tr').remove();
        // 更新总计
        getTotal();
    });
    // 删除选中
    $('.cart-del').click(function(){
        if($('#cart-table').find('input[type="checkbox"]').atrr('checked')!='checked'){
            alert('没有选择商品');
        }
    	var conf = confirm('确定删除此商品吗？');
    	if(conf){
    		$('#cart-table tr').each(function(){
	    		var len = $(this).closest('tbody').children('tr').length;
		    	if($(this).find('.checkbox').attr('checked') == 'checked'){
		    		(len == 3) ? $(this).closest('tbody').remove() : $(this).closest('tr').remove();
		    	}
	    	});
    	};
        // 更新总计
    	getTotal();
    });
    $('#cart-table').find('tr').each(function(){
        var input =$(this).find('.num input');
        var add = $(this).find('.add');
        var cut = $(this).find('.cut');
        // 输入产品数量
    	input.keyup(function(){
    		var val = $(this).val();
            if (isNaN(val) || val <= 0) {
                $(this).val(1);
            } else if (val > 999) {
                alert("商品数量不能大于999");
                $(this).val(1);
            }
            getSubtotal();
            getTotal();
        });
        // 产品数量增减
        add.click(function(){
           var input = parseFloat($(this).siblings('input').val());
           if(input <999){
              $(this).siblings('input').val(input+1);
           }else{
              alert("商品数量不能大于999");
           }
            // 更新总计 小计
            getSubtotal();
            getTotal();
        });
        cut.click(function(){
           var input = parseFloat($(this).siblings('input').val());
           if(input>1){
             $(this).siblings('input').val(input-1);
           }else{
            alert("商品数量不能小于1");
            $(this).siblings('input').val(1);
           }
            // 更新总计 小计
            getSubtotal();
            getTotal();
    	});
    });
});