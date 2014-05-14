<form id="dataheader" name="dataheader" action="" method="get" enctype="multipart/form-data">
<input type="hidden" id="route" name="route" value="<?php echo $module ?>" />
<input type="hidden" id="sitemapid" name="sitemapid" value="<?php echo $_GET['sitemapid'] ?>" />
<input type="hidden" id="id" name="id" value="<?php echo $_GET['id'] ?>" />
<input type="hidden" id="tab" name="tab" value="<?php echo $_GET['tab'] ?>" />
<input type="hidden" id="rpp" name="rpp" value="<?php echo $_GET['rpp'] ?>" />
<div class="ben-table-header-framework">
    <div class="left" >
        <a href="#" class="button btnTimKiem"><img src="view/skin1/image/button/search.png" /><?php echo $button_search?></a>
        <a href="<?php echo $link_xemtatca ?>" class="button"><img src="view/skin1/image//button/viewall.png" /><?php echo $button_view_all?></a>
    </div>
    <div class="right" >
        <?php echo $label_order_by ?>:
        <select class="ben-textbox-framework" name="orderby">
        	<?php echo $cbx_orderby ?>
        </select>
        <select class="ben-textbox-framework" name="ordertype">
            <?php echo $cbx_ordertype ?>
        </select>
        <a href="#" class="button" onclick="$('#dataheader').submit()"><img src="view/skin1/image//button/sort.png" /><?php echo $button_order ?></a>
    </div>
    <div class="clearer">&nbsp;</div>
</div>
<div class="clearer">&nbsp;</div>
<div class="pnlSearch">
    <table class="table-search">
        <tr>
            <?php if($flag_date == true) {?>
            <td class="vmiddle">
            	<select name="datefield">
                    <?php echo $cbx_date ?>
                </select>
            	Từ <input name="datefrom" id="searchdatefrom" readonly="readonly" type="text" class="ben-textbox ben-textbox-framework" size="8" value="<?php echo $datasearch['datefrom']?>" /> đến <input name="dateto"  id="searchdateto" readonly="readonly" type="text" class="ben-textbox ben-textbox-framework" size="8" value="<?php echo $datasearch['dateto']?>" />
            </td>
            <?php } ?>
            
            <?php if($flag_text == true) {?>
            <td class="vmiddle">
                <select  class="ben-textbox-framework" name="textfield">
                    <?php echo $cbx_text ?>
                </select>
                <input name="text" type="text" class="ben-textbox ben-textbox-framework" size="8" value="<?php echo $datasearch['text']?>" />
            </td>
            <?php } ?>
            
            <?php if($flag_numb == true) {?>
            <td class="vmiddle">
                <select  class="ben-textbox-framework" name="numbfield">
                    <?php echo $cbx_numb ?>
                </select>
                <select  class="ben-textbox-framework" name="numbtype">
                    <?php echo $cbx_numbtype ?>
                </select>
                <input name="numb" type="text" class="ben-textbox ben-textbox-framework" size="8" value="<?php echo $datasearch['numb']?>" />
            </td>
            <?php } ?>
            <td>
                <a  onclick="$('#dataheader').submit()"><img src="view/skin1/image//button/search32.png" /></a>
            </td>
        </tr>
    </table>
    
</div>
</form>
<script>
	$(document).ready(function() {
		$("#searchdatefrom").datepicker({
				changeMonth: true,
				changeYear: true,
				dateFormat: 'dd/mm/yy'
		});
		
		
		$("#searchdateto").datepicker({
				changeMonth: true,
				changeYear: true,
				dateFormat: 'dd/mm/yy'
		});
		
		
	
		
	});
</script>