<div class="section">

    <div class="section-title">
    	<div class="titletext left"> QUẢN LÝ NGƯỜI DÙNG </div>
        <div class="button right">
           	 	<input class="button" type="button" name="active" value="Xác nhận" onclick="active()"/>
                <input class="button" type="button" name="delivered" value="hoàn tất" onclick="deliver()"/> 
                <input class="button" type="button" name="cancel" value="hủy" onclick="cancel()"/>   
         </div>
         <div class="clearer">^&nbsp;</div>
    </div>
        
    <div class="section-content">
        
        <form action="<?php echo HTTP_SERVER ?>?route=cpanel/customer" method="post" id="listitem" name="listitem">
            <div id="elife-search">
            	<label>Username</label>
                <input type="text" id="search_id" name="search_id" class="text" value="<?php echo $post_data['search_id'] ?>" />
                <label>Tên khách hàng</label>
                <input type="text" id="search_customer" name="search_customer" class="text" value="<?php echo $post_data['search_customer'] ?>" />
                <br />
                <input type="button" class="button" name="btnSearch" value="Tìm" onclick="paginate(1)"/>
                <input type="button" class="button" name="btnSearch" value="Xem tất cả" onclick="location.reload()"/>
            </div>
            
            
            <div class="sitemap treeindex">
            
            	<table class="data-table order-table" cellpadding="0" cellspacing="0">
                <tbody>
                    <tr class="tr-head">
                        <th width="1%"><input class="inputchk" type="checkbox" onclick="$('input[name*=\'delete\']').attr('checked', this.checked);"></th>
                        <th width="9%"><?php echo $text_number ?></th>
                        <th width="10%">ID</th>
                        <th width="20%">Khách hàng</th>
                        <th width="40%">Thông tin</th>
                        <th width="10%"><?php echo $text_price ?></th>
                        <th width="10%"></th>
                    </tr>
        		</tbody>
                </table>
                <?php print_r($list_customer) ?>
            </div>
            <input type="hidden" id="page" name="page" value="<?php echo $post_data['page'] ?>"  />
        	<?php echo $paginate ?>
        </form>
        
    </div>
    
</div>
<script>
	function show_sub(id) {
		if($("#"+id).is(":visible")) {
			$("#"+id).hide("slow");
		} else {
			$("#"+id).show("slow");	
		}
	}
	
	function paginate(page) {
		$("#page").val(page);
		document.listitem.submit();
	}
	
	
</script>