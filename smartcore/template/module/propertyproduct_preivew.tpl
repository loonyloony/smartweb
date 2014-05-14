<?php	
	$this->document->addScript("jquery-ui-sgp.js");
    $this->document->addStyle("jquery-ui-sgp.css");
	 $this->document->addStyle("jquery.fancybox.css");
    $this->document->addStyle("jquery.easing.min.js");
    $this->document->addScript("jquery.fancybox-2013.js");
    
    $product = $this->session->data["PostPropertyProduct"];
    //var_dump($product);
?>
<?php if($product != "") { ?>
<div id="preview-product" >
    <div id="preview-post" class="elife-left">
    	<div class="elife-right">
        	<a onclick="goBack()" class="elife-button-process"><?php echo $button_back?></a>
        	<a id="btnProcess" class="elife-button-process"><?php echo $button_post_ad?></a>
        </div>
        <div class="clearer">&nbsp;</div>
    	<h1><?php echo $product['product_description'][$_SESSION['lang_session']]['name']?> (<?php echo $product['feature']?>)</h1>
        <div id="tabs">
          <ul id="tabs-featured-detail">
            <li id="tabs1"><a href="#tabs-1">Discription</a></li>
            <li id="tabs2"><a href="#tabs-2">Photo</a></li>	
          </ul>
          <div id="tabs-1">
            <?php echo html_entity_decode($product['product_description'][$_SESSION['lang']]['description']) ?>
            <br/>
            <br/>
            <p><h3>Additional Info</h3></p>
            <table>
                
                <?php foreach($arrAdditionalSource as $additionalsource) {
                ?>
                <tr>
                    <td class="addinfo-title" style="padding:5px 0px"><?php echo $additionalsource['sourcename'] ?></td>
                <?php	
                    $arrSource = explode(',',$additionalsource['sourcevalue']);
                    $indexValue = 0;
                    foreach($arrSource as $value) {
                        if($product['additional'][$additionalsource['additionalsourceid']] == $indexValue) {
                ?>
                            <td style="padding:5px 0px"><?php echo $value ?></td>
                <?php     		   	
                        }
                        $indexValue++;
                    }
                ?>
                </tr>	
                <?php }?>
                <!--
                <?php if(count($additional) > 0){ foreach($additional as $item){ $arrAdditionalSourceValue = explode(",", $item['sourcevalue']);?>
                <tr>
                    <td class="addinfo-title" style="padding:5px 0px"><?php echo $item['title'] ?></td>
                    <td style="padding:5px 0px"><?php echo $arrAdditionalSourceValue[$item['productadditionalvalue']] ?></td>
                </tr>
                <?php } } ?>
                -->
            </table>
            
            <p class="addinfo-detail"><strong>Detail</strong></p>
            <table>
                <tr>
                    <td class="td-style"><strong>Property Type:</strong> <span class="info"><?php echo $product['propertytypename'] ?></span></td>
                    <td class="td-style">&nbsp;</td>		
                </tr>
                <tr>
                    <td class="td-style"><strong>Room Type:</strong> <span class="info"><?php echo $product['roomtypename'] ?></span></td>
                    <td class="td-style"><strong>Price:</strong> <span class="info">SGD <?php echo $this->string->numberFormate($product['price']) ?></span></span></td>
                    
                </tr>
                <tr>							
                    <td class="td-style"><strong>Available From: </strong><?php echo $product['date_available_from'] ?></td>
                    <td class="td-style"><strong>Size:</strong> <span class="info"><?php echo $product['length'] ?> sqft.</span></td>	
                </tr>
            </table>
          </div>
          <div id="tabs-2">
            <?php if(count($product['product_image'])) { foreach($product['product_image'] as $pimage){?>
                <div class="photo-detail">			
                    <a class="gallery" href="images/root/<?php echo $pimage['image'] ?>"><img src="images/fixsize-158x115/<?php echo $pimage['image'] ?>" /></a>					
                </div>
            <?php } } ?>
            <div class="clearer"></div>
          </div> 
        </div>
    </div>
    
    <div id="preview-post-location" class="elife-right">    	
        <div class="title">
            <h3><?php echo $text_location?></h3>
        </div>
        <div class="content">
            <?php 
                include(DIR_TEMPLATE."module/product_map.tpl");
            ?>
        </div>
    
    </div>
</div>
	

<div class="clearer">&nbsp;</div>
<?php } ?>
<script language="javascript">
	$(document).ready(function() {
		
		 $("a.gallery").fancybox({
			'transitionIn'	:	'elastic',
			'transitionOut'	:	'elastic',
			'speedIn'		:	600, 
			'speedOut'		:	200, 
			'overlayShow'	:	true
		});		
	});
</script>

<script>
	
	function goBack() {
		window.history.back();
	}

	$('#btnProcess').on('click', function(){
		
		$.blockUI({ message: "<h1><?php echo $announ_infor ?></h1>"});
		$.post("?route=module/postproduct/postpreview", null, function(data){
			if(data == "insert") {
				window.location.href = "<?php echo HTTP_WEB?>";
			} else if(data == "lostsession") {
				window.location.href = "<?php echo HTTP_WEB?>free-listing.html";
			} else {
				$('#message').html(data).show('slow');
				$.unblockUI();
			}
		});
		
	});
	
	$(function() {
		$( "#tabs" ).tabs();
	});
</script>