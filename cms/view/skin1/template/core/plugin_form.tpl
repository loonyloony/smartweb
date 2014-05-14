<div class="section" id="sitemaplist">

	<div class="section-title"><?php echo $title_heading_plugin?></div>
    
    <div class="section-content padding1">
    
    	<form name="frm" id="frm" action="<?php echo $action?>" method="post" enctype="multipart/form-data">
        
        	<div class="right" style="width: 45%">
            	<a onclick="save()">
                	<img src="<?php echo HTTP_SERVER.DIR_IMAGE ?>save.png" />
                </a>
                <a onclick="linkto('?route=core/plugin')">
                	<img src="<?php echo HTTP_SERVER.DIR_IMAGE ?>cancel.png" />
                </a>
                <?php foreach($language as $item){ ?>
     	        	<input type="hidden" name="id[<?php echo $item ?>]" value="<?php echo $plugin[$item]['id']?>">
                <?php } ?>
            </div>
            <div class="clearer">^&nbsp;</div>
        	<div id="error" class="error" style="display:none"></div>
        	<div>
            	<p>
                    <label><?php echo $plugin_code ?>:</label><br />
                    <input type="text" name="code" value="<?php echo $plugin['code']?>" class="text" size=60 />
                </p>
            	
                <?php foreach($language as $item){ ?>
                    <p>
                        <label><?php echo $plugin_name ?> (<?php echo $item ?>):</label><br />
                        <input type="text" name="name[<?php echo $item ?>]" value="<?php echo $plugin[$item]['name']?>" class="text" size=60 />
                    </p>
                <?php } ?>
               
                <p>
                     <label><?php echo $plugin_module_type ?></label><br />
                     <select id="moduleid" name="moduleid">
                   		<?php foreach($module as $key => $value){ ?>  	
                        <option value="<?php echo $key ?>"><?php echo $value ?></option>
                        <?php } ?>
                     </select>                    
                </p>  
            </div>
            
        </form>
    
    </div>
    
</div>

<script language="javascript">
$(document).ready(function(e) {
	var moduleid = "<?php echo $plugin['moduleid'] ?>";
    $('#moduleid').val(moduleid);
});

function save()
{
	$.blockUI({ message: "<h1>Đang xử lý...</h1>" });  
	$.post("?route=core/plugin/save", $("#frm").serialize(),
		function(data){
			if(data == "true")
			{
				window.location = "?route=core/plugin";
			}
			else
			{
			
				$('#error').html(data).show('slow');
				$.unblockUI();
				
			}
			
		}
	);
}

</script>
