<div class="elife-section-title"><h1><a><?php echo $sitemap ?></a><!--<span class="elife-product-count">(<?php echo $count ?> items)</span>--></h1></div>
<div class="elife-section-content elife-product">
    
    <!-- HTML PRODUCT -->
   
    <div class="elife-product-toolbar">
        <div class="elife-wrapper">
           <!-- <form>
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
            </form>-->
        </div>
    </div>

    <!--<div class="elife-hline"></div>-->

    <div class="elife-product-list">
        <div class="elife-wrapper">
        <?php if(count($products) > 0) { foreach ($products as $product) { ?>
        	<div class="product-group">
            	<div class="product-group-name elife-left"><?php echo $product['sitemapname'] ?></div>
                <div class="product-view-more elife-right"><a href="<?php echo $product['sitemaplink'] ?>"><?php echo $text_viewmore ?></a></div>
                <div class="clearer"></div>
            </div>
            <ul id="product-row-0" class="product-row">
                <!--Product-->
                <?php if(count($product['items']) > 0) { for ($i = 0; $i < 2; $i++) { ?>
                	<?php if($product['items'][$i]['productid'] != ""){ ?>
                    <li id="product-<?php echo $product['items'][$i]['productid'] ?>" class="product">
                        <div class="product-image">
                            <a class="product-link" href="<?php echo $product['items'][$i]['link'] ?>">
                                <!--<span class="sale-icon"></span>-->
                                <img height="110px" alt="<?php echo $item['name'] ?>" src="images/resize-144x110/<?php echo $product['items'][$i]['image']?>">
                            </a>
                        </div>
                        <div class="product-name" title="<?php echo $product['items'][$i]['name'] ?>">
                            <a class="product-link" href="<?php echo $product['items'][$i]['link'] ?>">
                                <span class="model"><?php echo $text_model ?>: <?php echo $product['items'][$i]['name'] ?></span>
                            </a>
                           <!-- <span class="name"><?php echo $product['items'][$i]['name'] ?></span>-->
                            <span class="product-capacity"><?php echo $text_capacity ?>(KVA): <?php echo $product['items'][$i]['quantity'] ?></span>
                            <span class="product-capacity"><?php echo $text_origin ?>: <?php echo ($product['items'][$i]['location'] != "") ? $product['items'][$i]['location'] : '' ?></span>
                            <span class="product-capacity"><?php echo $text_status ?>: <?php echo ($product['items'][$i]['goodsstatus'] != "") ? $product['items'][$i]['goodsstatus'] : '' ?></span>
                            <span class="product-price">
                                <span class="sale-price"><?php if($product['items'][$i]['price'] != 0){ echo $this->string->numberFormate($product['items'][$i]['price']).'đ'; }else{ echo 'Call';} ?></span>
                            </span>
                            
                        </div>
                        <div class="clearer"></div>
                    </li>
                    <?php } ?>
                <?php } } ?>
            </ul>
            <div class="clearer"></div>
        <?php } } ?>
        </div>
    </div>
    
    <div class="elife-product-toolbar">
        <!--<div class="elife-wrapper">
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
        </div>-->
    </div>
    
</div>
<div class="elife-section-footer"></div>

<style type="text/css">
.product-capacity {display:block}
</style>

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