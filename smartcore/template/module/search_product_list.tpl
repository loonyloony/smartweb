<?php if($empty_key != "") {
	echo $empty_key; } else {
?>
<div class="elife-section-title"><h1><a><?php echo $sitemap." : ".$now_key ?></a><span class="elife-product-count">(<?php echo $count ?> items)</span></h1></div>
<div class="elife-section-content elife-product">
    
    <!-- HTML PRODUCT -->
   
    <div class="elife-product-toolbar">
        <div class="elife-wrapper">
            <form>
                <div class="elife-product-sort elife-left">
                    <label for="filter_orderby"><?php echo $text_sort ?></label>
                    <select name="filter_orderby" class="filter_orderby">
                        <option value="sort_order"><?php echo $text_position ?></option>
                        <option value="date_added"><?php echo $text_updateddate ?></option>
                        <option value="price"><?php echo $text_price ?></option>
                        <option value="productname"><?php echo $text_productname ?></option>
                    </select>
                    <input type="radio" name="order" class="order" id="DESC" value="DESC" checked > <label for="input-5" class="radio">Z-A</label>
                    <input type="radio" name="order" class="order" id="ASC" value="ASC"> <label for="input-4" class="radio">A-Z</label> 
                </div>
                <div class="elife-pagination elife-right">
                    <?php echo $paginationDisplay ?>
                </div>
                <div class="clearer"></div>
            </form>
        </div>
    </div>

    <div class="elife-hline"></div>

    <div class="elife-product-list">
        <div class="elife-wrapper">
            <ul id="product-row-0" class="product-row">
                <!--Product-->
                <?php if(count($products) > 0) { foreach ($products as $item) { ?>
                    <li id="productid" class="product">
                        <div class="product-image">
                            <a class="product-link" href="<?php echo $item['link'] ?>" title="<?php echo $item['name'] ?>">
                                <!--<span class="sale-icon"></span>-->
                                <img height="182px" alt="<?php echo $item['name'] ?>" src="images/resizeblack-182x182/<?php echo $item['image']?>">
                            </a>
                        </div>
                        <div class="product-name" title="<?php echo $item['name'] ?>">
                            <a class="product-link" href="<?php echo $item['link'] ?>" title="<?php echo $item['name'] ?>">
                                <span class="model"><?php echo $text_model ?>: <?php echo $item['model'] ?></span>
                                <span class="name"><?php echo $item['name'] ?></span>
                                
                                <span class="product-price">
                                    <span class="sale-price"><?php if($item['price'] != 0){ echo $this->string->numberFormate($item['price']).'đ'; }else{ echo 'Call';} ?></span>
                                </span>
                            </a>
                        </div>
                    </li>
                <?php } } ?>
            </ul>
            <div class="clearer"></div>
        </div>
    </div>
    
    <div class="elife-product-toolbar">
        <div class="elife-wrapper">
            <form>
                <div class="elife-product-sort elife-left">
                    <label for="filter_orderby"><?php echo $text_sort ?></label>
                    <select name="filter_orderby" class="filter_orderby">
                        <option value="sort_order"><?php echo $text_position ?></option>
                        <option value="date_added"><?php echo $text_updateddate ?></option>
                        <option value="price"><?php echo $text_price ?></option>
                        <option value="productname"><?php echo $text_productname ?></option>
                    </select>
                    <input type="radio" name="order-bottom" class="order-bottom" id="order-DESC" value="DESC" checked > <label for="input-5" class="radio">Z-A</label>
                    <input type="radio" name="order-bottom" class="order-bottom" id="order-ASC" value="ASC"> <label for="input-4" class="radio">A-Z</label> 
                </div>
                <div class="elife-pagination elife-right">
                    <?php echo $paginationDisplay ?>
                </div>
                <div class="clearer"></div>
            </form>
        </div>
    </div>
    
</div>
<div class="elife-section-footer"></div>


<script language="javascript">
$('.filter_orderby').change(function(){
	var order = $('input:radio[name=order]:checked').val();
	var url = "<?php echo $this->smartweb->weburl ?>?filter=" + $(this).val() + "&order=" + order;
	var page = "<?php echo $_GET['page'] ?>";
	if(page != ''){
		url += "&page=" + page;	
	}
	window.location = url;
});

$('.order').click(function(){
	$(this).attr('checked', true);
	order = this.value;
	$('#order-' + order).attr('checked', true);
	$('.filter_orderby').change();
});

$('.order-bottom').click(function(){
	$(this).attr('checked', true);
	order = this.value;
	$('#' + order).attr('checked', true);
	$('.filter_orderby').change();
});

$('.filter_orderby').each(function(index, element) {
    $(this).val("<?php echo $_GET['filter'] ?>");
});

$(document).ready(function(e) {
	$('.order').each(function(index, element) {
        $(this).attr('checked', false);
    });
	
	$('.order-bottom').each(function(index, element) {
        $(this).attr('checked', false);
    });
	
    order = "<?php echo $_GET['order'] ?>";
	if(order == ''){
		order = 'DESC';	
	}
	$('#' + order).attr('checked', true);
	$('#order-' + order).attr('checked', true);
});
//alert("<?php echo $_GET['order'] ?>");

</script>
<?php } ?>