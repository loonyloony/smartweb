<!-- HTML TIN TỨC -->
<div class="elife-section-title"><h1><a><?php echo $product['name'] ?></a></h1></div>

<div class="elife-section-content">
    <div class="elife-item-line"></div>
    <div class="elife-product-detail">
        <table width="100%">
            <tr>
                <td width="300px">
                    <a title="<?php echo $product['name'] ?>" href="">
                        <img src="images/resizepng-250x0/<?php echo $product['image']?>" alt="<?php echo $product['name'] ?>" />
                    </a>
                </td>
                <td>
                    <p><label><?php echo $text_model ?>:</label> <span class="model"><?php echo $product['model'] ?></span></p>
                    <p>
                    	<?php $addprice = 0; ?>
                    	<?php if(count($product_option) > 0 && $product['price'] != 0) { foreach($product_option as $prop) { ?>
                        <p>
                    		<label><?php echo $prop['name'] ?></label>
                            <?php $temp = 0;?>
                            <?php if($prop['type'] == 'radio') { if(count($prop['product_option_value']) > 0 ){ foreach($prop['product_option_value'] as $pov) { ?>
                            <input type="radio" name="<?php echo $prop['optionid'] ?>" class="radiooptionvalue" value="<?php echo $pov['price'] ?>" <?php echo ($temp==0) ? 'checked' : '' ?> /> &nbsp; <?php echo $pov['name'] ?> &nbsp;&nbsp;
                            <?php if($temp == 0) {$addprice += $pov['price'];} ?>
                            <?php $temp++;} } } ?>
                            
                            <?php if($prop['type'] == 'combobox') { if(count($prop['product_option_value']) > 0 ){ ?>
                            <br />
                            <select class="cboptionvalue">
                            	<?php foreach($prop['product_option_value'] as $pov) { ?>
                            	<option value="<?php echo $pov['price'] ?>"><?php echo $pov['name'] ?> (<?php echo $this->string->numberFormate($pov['price']) ?> đ)</option>
                                <?php if($temp == 0) {$addprice += $pov['price'];} ?>
                                <?php $temp++; } ?>
                            </select>
                            <?php } } ?>     
                        </p>
                        <?php } } ?>
                    </p>
                    <p><label><?php echo $text_price ?>:</label>
                        <span class="product-price">
                            <span id="displayprice"><?php echo ($product['price'] != 0) ? $this->string->numberFormate($product['price'] + $addprice).' đ' : 'Call' ?></span> 
                        </span>
                    </p>
                    <p>
                       <?php echo htmlspecialchars_decode($product['summary']) ?>
                    </p>
                </td>
            </tr>
        </table>
        <div class="product-description">
            <p><?php echo htmlspecialchars_decode($product['description']) ?></p>
        </div>	
        <div class="clearer"></div>
    </div>
    
    <div class="elife-content-line"></div>
    <h2><?php echo $title_other ?></h2>
    <div class="elife-product-list">
        <div class="elife-wrapper">
            <ul id="product-row-0" class="product-row">
                <!--Product-->
                <?php if(count($products) > 0) { foreach ($products as $item) { ?>
                    <li id="productid" class="product">
                        <div class="product-image">
                            <a class="product-link" href="<?php echo $item['link'] ?>">
                                <!--<span class="sale-icon"></span>-->
                                <img height="182px" alt="<?php echo $item['name'] ?>" src="images/resizeblack-182x182/<?php echo $item['image']?>">
                            </a>
                        </div>
                        <div class="product-name" title="<?php echo $item['name'] ?>">
                            <a class="product-link" href="<?php echo $item['link'] ?>">
                                <!--<span class="model">Model: <?php echo $item['model'] ?></span>-->
                                <span class="name"><?php echo $item['name'] ?></span>
                                
                                <span class="product-price">
                                    <span class="sale-price"><?php if($item['price'] != 0){ echo $this->string->numberFormate($item['price']); ?> </span> đ <?php  } else { echo 'Call'; } ?>
                                </span>
                            </a>
                        </div>
                    </li>
                <?php } } ?>
            </ul>
            <div class="clearer"></div>
        </div>
    </div>
</div>

<div class="elife-section-footer"></div>

<script language="javascript">
	/* option has radio type */
	$(".radiooptionvalue").click(function(){		
		$(".radiooptionvalue").each(function(index, element) {
            if($(this).is(":checked")){
				//alert($(this).val());
				addprice += Number($(this).val());
				//addprice += $(this).val();		
			}
        });
		
		var originalprice = "<?php echo $product['price'] ?>";
		var totalprice = parseFloat(originalprice) + addprice;
		result = formateNumber(totalprice);
		$("#displayprice").html(result + " đ");
	});
	
	/* option has combobox type */
	$(".cboptionvalue").change(function(){
		var addprice = 0;
		$(".cboptionvalue").each(function(index, element) {
            addprice += parseFloat($(this).val());
        });
		
		var originalprice = "<?php echo $product['price'] ?>";
		var totalprice = parseFloat(originalprice) + addprice;
		result = formateNumber(totalprice);
		$("#displayprice").html(result + " đ");
	});
	
	/*function ReplaceNumberWithCommas(number) {
		//Seperates the components of the number
		var n= yourNumber.toString().split(".");
		//Comma-fies the first part
		n[0] = n[0].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
		//Combines the two sections
		return n.join(".");
	}*/
	
	/*
		***********************************************
		FORMAT NUMBER
		***********************************************
	*/
	
	/*(function($){
	   $.fn.extend({
		   formatInput: function(settings) {
				   var $elem = $(this);
				   settings = $.extend({
						   errback: null
				   }, settings);
				   $elem.bind("keyup.filter_input", $.fn.formatEvent);
		   },
		   formatEvent: function(e) {
				   var elem = $(this);
				   var initial_value = elem.val();
				   elem.val($.fn.insertCommas(initial_value));
		   },
		   insertCommas: function(number) {
				   return number.replace(/,/g, "").replace(/(\d)(?=(\d{3})+(?!\d))/g, "$1,");
		   }
		});
	})(jQuery);*/
		   
	function formateNumber(num)
	{
		//num = Math.round(num*100)/100;
		var obj = new Number(num);
		
		//num=obj.toFixed(2);
		ar = (""+num).split("\.");
		div = ar[0];
		mod = ar[1];

		arr = new Array();
		block = "";
		
		for(i=div.length-1; i>=0 ; i--)
		{
			
			block = div[i] + block;
			
			if(block.length == 3)
			{
				arr.unshift(block);
				block ="";
			}
			
		}
		arr.unshift(block);
		divnum = arr.join(",");
		divnum = trim(divnum,",");
		divnum = replaceall(divnum,"-,","-");

		if(mod == undefined || mod == "00")
		{
			return divnum;
		}
		else
		{
			return divnum+"\."+mod;
		}
	}
	
	function trim(str, chars) {
		return ltrim(rtrim(str, chars), chars);
	}
	
	function ltrim(str, chars) {
		chars = chars || "\\s";
		return str.replace(new RegExp("^[" + chars + "]+", "g"), "");
	}
 
	function rtrim(str, chars) {
		chars = chars || "\\s";
		return str.replace(new RegExp("[" + chars + "]+$", "g"), "");
	}
	
	function replaceall(Source,stringToFind,stringToReplace){
		var temp = Source;
		var index = temp.indexOf(stringToFind);
		while(index != -1){
			temp = temp.replace(stringToFind,stringToReplace);
			index = temp.indexOf(stringToFind);
		}
		return temp;
	}
</script>