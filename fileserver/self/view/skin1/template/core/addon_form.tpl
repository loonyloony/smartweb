<div class="section" id="sitemaplist">
	<div class="section-title">
    	<div class="titletext left"><?php echo $title_heading_addon?></div>
        <div class="button right">
            <a onclick="save()" class="button"><?php echo $button_save ?></a>
            <a onclick="linkto('?route=core/addon')" class="button"><?php echo $button_cancel ?></a> 
        </div>
        <div class="clearer">^&nbsp;</div>
    </div>
    
    <div class="section-content padding1">
    
    	<form name="frm" id="frm" action="<?php echo $action?>" method="post" enctype="multipart/form-data">
			<input type="hidden" name="id" value="<?php echo $addon['id']?>">
        	<div id="error" class="error" style="display:none"></div>
        	<div>
            	<table id="addontable">
                	<tr width="150px">
                    	<td><label><?php echo $addon_code ?>:</label></td>
                        <td>
                        	<input type="text" name="addonid" value="<?php echo $addon['addonid']?>" <?php echo $readonly ?> class="text" size=60 />
                        </td>
                    </tr>
                    
                    <?php foreach($language as $item){ ?>
                    <tr>
                    	<td><label><?php echo $addon_name ?> (<?php echo $item[name] ?>):</label></td>
                        <td><input type="text" name="addon_description[<?php echo $item['languageid'] ?>]" value="<?php echo $addon_description[$item['languageid']]?>" class="text" size=60 /></td>
                    </tr>
                    <?php } ?>
                     
                    <tr>
                    	<td><label><?php echo $label_area_code ?></label></td>
                        <td>
                        	<select id="areacode" name="areacode">
                            	<?php echo $areacode ?>
                            </select>
                        </td>
                    </tr>
                    
                    <tr>
                    	<td><label><?php echo $addon_module_type ?></label></td>
                        <td>
                             <select id="moduleid" name="moduleid">
                             </select>
                        </td>
                    </tr>
                    
                   <!-- <div id="showposition"></div>-->
                </table>
        
            </div>
            
        </form>
    
    </div>
    
</div>

<script language="javascript">
$(document).ready(function(e) {
	var areacode = "<?php echo $addon['areacode'] ?>"
	$('#areacode').val(areacode);
	
	$('#areacode').change(function(){
		$('.moduleid').each(function(index, element) {
			$(this).remove();
		});
		
		$.ajax({
		url: '?route=core/addon/getModule&areacode='+$('#areacode').val(),
		cache: false,
		success: function(html){
				var obj = jQuery.parseJSON(html);
				for(var i in obj.module){
					var option = "<option class='moduleid' value='" + obj.module[i].moduleid + "'>" + obj.module[i].modulename + "</option>";	
					$('#moduleid').append(option);
				}
				var moduleid = "<?php echo $addon['moduleid'] ?>";
				$('#moduleid').val(moduleid);		
			}
		});
	});
		
	$('#areacode').change();

	/*$('#moduleid').change(function(e) {
		var moduleid = $('#moduleid').val();

        $.post("?route=core/addon/getAddonPosition", 
			{moduleid : moduleid}, 
			function(data){
				var arr = data.split("-");
				if(arr[1] == "sidebar")
				{
					var row = "<tr id='positionrow'>";
					row += "<td><label>position</label></td>";
					row += "<td>";
					row += "<select id='position' name='position'>";
					row += "<option value='left'>-- Left --</option>";
					row += "<option value='right'>-- Right --</option>";
					row += "</select>";
					row += "</td>";
					row += "</tr>";
					
					$('#addontable').append(row);
					
					var position = "<?php echo $addon['position'] ?>";
					$('#position').val(position);
				}else{
					$('#positionrow').remove();	
				}
			});
    });
	
	$('#moduleid').change();*/
});

function save()
{
	$.blockUI({ message: "<h1><?php echo $announ_infor ?></h1>" });  
	$.post("?route=core/addon/save", $("#frm").serialize(),
		function(data){
			if(data == "true")
			{
				window.location = "?route=core/addon";
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
