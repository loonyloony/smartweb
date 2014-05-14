<?php
$this->document->addScript("jquery-ui.js");
$this->document->addStyle("jquery-ui.css");
$this->document->addStyle("jquery.fancybox.css");
$this->document->addScript("jquery.easing.min.js");
$this->document->addScript("jquery.fancybox-2013.js");
?>
<?php if($product != "") { ?>
<div id="addinfo" class="elife-left">
	<div class="elife-wrapper" >
        <h1><?php echo $product['name']?> (for <?php echo $product['feature'] ?>)</h1>
    
        <div id="tabs">
            <ul id="tabs-featured-detail">
                <li id="tabs1"><a href="#tabs-1">Description</a></li>
                <li id="tabs2"><a href="#tabs-2">Photo</a></li>
            </ul>
            <div id="icon-detail">
                <span class='st_email_large' displayText='Email'></span>
                <span class='st_twitter_large' displayText='Tweet'></span>
                <span class='st_facebook_large' displayText='Facebook'></span>
                <span class='st_googleplus_large' displayText='Google +'></span>
            </div>
            <div id="tabs-1">
                <?php if($product['description'] == '') $product['description'] = '--'?>
                <?php echo html_entity_decode(nl2br($product['description'])) ?>
                <br/><br/>
    
                <h3>Additional Info</h3>
                <table>
                    <?php if(count($additional) > 0){ foreach($additional as $item){ $arrAdditionalSourceValue = explode(",", $item['sourcevalue']);?>
                    <tr>
                        <td class="addinfo-title" style="padding:5px 0px"><?php echo $item['sourcename'] ?></td>
                        <td style="padding:5px 0px"><?php echo $arrAdditionalSourceValue[$item['productadditionalvalue']] ?></td>
                    </tr>
                    <?php } } ?>
                </table>
    
                <p class="addinfo-detail"><strong>Detail</strong></p>
                <table>
                    <tr>
                        <td class="td-style"><strong>Property Type:</strong> <span><?php echo $product['propertyname'] ?></span></td>
                        <td class="td-style">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="td-style"><strong>Room Type:</strong> <span><?php echo $product['roomtypename'] ?></span></td>
                        <td class="td-style">
                            <?php if($product['price'] > 0) {?>
                                <strong>Price:</strong> <span>SGD <?php echo $this->string->numberFormate($product['price']) ?></span>
                            <?php } else {?>
                                <strong>Price:</strong> <span>Call</span>
                            <?php }?>
                        </td>
                    </tr>
                    <tr>
                        <td class="td-style"><strong>Available From:</strong>
                            <?php if($product['date_available_from'] != '') {?>
                            <?php echo $this->date->formatMySQLDate($product['date_available_from'], "DMY", "/"); ?>
                            <?php } else {?>
                            <?php echo "--" ?>
                            <?php }?>
                        </td>
                        <td class="td-style"><strong>Size:</strong>
                            <?php if($product['length'] != 0) {?>
                                <span><?php echo $product['length'] ?> sqft.</span>
                            <?php } else {?>
                                <span>--</span>
                            <?php }?>
                        </td>
                    </tr>
                </table>
                <?php echo $contact_ad_form ?>
            </div>
            <div id="tabs-2">
                <?php if(count($product['product_image'])) { foreach($product['product_image'] as $pimage){?>
                <div class="photo-detail">
                    <?php if($pimage['image'] != "") {?>
                    <a class="gallery" rel="gallery" href="images/root/<?php echo $pimage['image'] ?>">
                        <img width="185" height="142" src="images/fixsize-185x142/<?php echo $pimage['image'] ?>"/>
                    </a>
                    <?php } else {?>
                    <a class="gallery" rel="gallery" href="<?php echo DIR_IMAGE ?>NoImage.png">
                        <img width="185" height="142" src="<?php echo DIR_IMAGE ?>NoImage.png"/>
                    </a>
                    <?php }?>
                </div>
                <?php } } ?>
                <div class="clearer"></div>
            </div>
        </div>
	</div>
</div>
<div id="post-moreinfo" class="right-col-product elife-right">
    <div class="map-detail">
        <div class="title">
            <h3><?php echo $text_location?></h3>
        </div>
        <div class="content">
            <?php 
                include("propertyproduct_map.tpl");
            ?>
        </div>
    </div>
    <div class="related-list">
        <div class="title">
            <h3>Related Listings</h3>
        </div>
        <div class="content">
            <div class="elife-wrapper">
                <table style="table-layout: fixed">
                    <?php if(count($products) > 0) {
                    foreach($products as $item) {
                    ?>
                    <tr>
                        <td width="15%">
                            <a href="<?php echo $item['link'] ?>">
                                <?php if($item['image'] != '') { ?>
                                <img width="85" height="75" src="images/fixsize-85x75/<?php echo $item['image'] ?>"/>
                                <?php } else {?>
                                <img width="85" height="75" src="<?php echo DIR_IMAGE?>NoImage.png"/>
                                <?php }?>
                            </a>
                        </td>
                        <td width="25%">
                            <p class="word-wrap"><strong><a href="<?php echo $item['link'] ?>"><?php echo $item['name'] ?></a></strong></p>
                            <p class="price">$<?php echo $item['price'] ?></p>
                        </td>
                    </tr>
                    <?php
                    }
                }
                ?>
                </table>
            </div>
        </div>
    </div>
</div>
<div class="clearer"></div>

<?php } ?>
<script language="javascript">
    $(document).ready(function () {

        $("a.gallery").fancybox({
            'transitionIn': 'elastic',
            'transitionOut': 'elastic',
            'easingIn': 'swing',
            'easingOut': 'swing',
            'speedIn': 600,
            'speedOut': 200,
            'overlayShow': true
        });
    });
</script>

<script>
    $(function () {
        $("#tabs").tabs();
    });
</script>