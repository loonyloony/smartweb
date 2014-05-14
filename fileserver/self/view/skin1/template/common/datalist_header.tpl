<div class="section">
      <div class="section-title">
    	<div class="titletext left"><?php echo $title ?></div>
        <div class="button right">
            <input class="button" value="<?php echo $button_add ?>" type="button" onclick="linkto('<?php echo $insert?>')">
            <input class="button" value="<?php echo $button_delete ?>" name="btnDel" type="button" onclick="deleteList()">
            <input class="button" value="<?php echo $button_update ?>" name="btnUpdate" type="button" onclick="updateList()">
            <input type="hidden" name="type" value="" />
        </div>
    	<div class="clearer"></div>
    	
    </div>
 <div class="section-content"> 
    <?php echo $dataheader?>
 <div class="clearer"></div>