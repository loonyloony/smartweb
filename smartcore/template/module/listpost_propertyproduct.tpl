<?php if($this->member->getId() != '') { ?>
<div id="frm-profile">
    <div class="control elife-left">
        <div class="customer-status">
            <div class="button-control">
                <span>Edit your information</span><br/>
                <span>PROFILE</span>
            </div>
            
            <div class="button-control">
                <span>Who contact you? </span><br/>
                <span>MESSAGE</span>
            </div>
            
            <div class="button-control active">
                <span>What You have posted</span><br/>
                <span>YOUR ADS</span>
            </div>
        </div>
    </div>
    <div id="list-propertyproduct" class="elife-right">
    	<div class="elife-wrapper" >		  
            <table class="item product-list">
                <thead>
                    <tr>		 
                        <th>
                            Image
                        </th>
                        <th>
                            Ad Title
                        </th>
                        <th>
                            Property Type
                         </th>
                         <th>
                            Room Type
                        </th>
                         <th>
                            Price
                        </th>
                        <th>
                            Action
                        </th>
                    </tr>
            	</thead>
                <tbody> 
            <?php if(count($products) > 0) { foreach($products as $item) { ?>             	       
                    <tr>
                        <td style="text-align:center" >
                            <a href="<?php echo $item['link'] ?>">
                                <img width="75px" height="75px" src="images/fixsize-75x75/<?php echo $item['image'] ?>">
                            </a>
                        </td>
                        <td style="text-align: left;" width="150px" >
                            <p class="item-title"><a href="<?php echo $item['link'] ?>"><?php echo $item['name'] ?></a></p>
                            <p><a class="elife-button" href="messages.html?mediaid=<?php echo $item['productid'] ?>">view messages</a></p>
                        </td>
                        <td>
                             <?php echo $item['propertytypename'] ?>
                        </td>
                        <td>
                            <?php echo $item['roomtypename'] ?>
                        </td>
                        <td>
                            $ <?php echo $this->string->numberFormate($item['price']) ?>
                        </td>
                        <td width="150px" style="text-align: center" >
                            <a class="elife-button" onclick="linkto('<?php echo $item[link_edit] ?>')" ><?php echo $button_edit ?></a>&nbsp;<a class="elife-button" onclick="updateStatus('<?php echo $item['productid']?>','3')" ><?php echo $button_delete ?></a><br />
                            <select alt="<?php echo $item['productid']?>" class="cboStatus">
                                <?php echo $item['cboStatus']?>
                            </select>
                        </td>            
                    </tr>  
              	        
            <?php } } ?> 
            	</tbody>    
            </table>
            <div>
            	<ul class="elife-navigation elife-right">
                	<?php echo $pagination_li ?>
                    <div class="clearer" ></div>
                </ul>
                <br/>
            </div>
      	</div>
    </div>
    <div class="clearer" ></div>
</div>
<?php } ?>

<script>
$(document).ready(function() {
	$(".cboStatus").change(function(){
		var productid = $(this).attr('alt');
		var status = $(this).val();
		updateStatus(productid,status);
	});
});

function updateStatus(productid,status) {

	var _check = confirm('Do you really want to do this?');
	if (_check == false) return;
	$.blockUI({ message: "<h1><?php echo $text_pleasewait ?></h1>" }); 
	$.post("?route=module/listpost/updatePropertyStatus", {productid: productid, status: status}, function(data){
		if(data == "true") {
			$.unblockUI();
			window.location.reload();
		} else {
			alert(data);
			$.unblockUI();
		}
	});	
}
</script>