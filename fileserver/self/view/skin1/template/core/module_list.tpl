<div class="section" id="modulelist">

	<div class="section-title">
    	<div class="texttitle left">MODULE MANAGEMENT</div>
    
        <div class="button right">
        	<?php echo $btnAdd ?>
            <input type="button" class="button" value="<?php echo $button_delete ?>" id="btnDelete" />
            <?php echo $btnUpdate ?>
        </div>
        <div class="clearer">^&nbsp;</div>
    </div>
    
	
    <div class="section-content">
    
    	<form action="" name="f" id="f" method="post">
        	<table>
            	<tr>
                    <td width="100px"><label>Area code</label></td>
                    <td>
                        <select name="areacode" id="areacode">
                        	<option value=""> -- <?php echo $button_viewall ?> -- </option>
                        <?php foreach($areacode as $key=>$val){ ?>
                            <option value="<?php echo $key?>" <?php if($module['areacode']==$key) echo "selected"?> >
                                -- <?php echo $val?> --
                            </option>
                        <?php } ?>                                                      
                        </select>   
                    </td>
                </tr>
            	
            </table>
        
            <div class="sitemap treeindex">
                <table class="data-table" cellpadding="0" cellspacing="0">
                <tbody>
                    <tr class="tr-head">
                        <th width="3%"><input class="inputchk" type="checkbox" onclick="$('input[name*=\'delete\']').attr('checked', this.checked);"></th>
                        <th width="10%">ModuleID</th>
                        <th width="25%">ModuleName</th>
                        <th width="10%">Pos</th>
                        <th width="5%">Status</th>                    
                        <th widht="10%"><?php echo $text_control ?></th>                                  
                    </tr>
        <?php
            foreach($modules as $module)
            {
        ?>
                    <tr>
                        <td class="check-column"><input class="inputchk" type="checkbox" name="delete[<?php echo $module['moduleid']?>]" value="<?php echo $module['moduleid'] ?>" ></td>
                        <td><?php echo $module['moduleid']?></td>
                        <td><?php echo $module['modulename']?></td>
                        <td><input class="text" maxlength="2" size="1" type="text" name="position[<?php echo $module['moduleid']?>]" value="<?php echo $module['position']?>"></td>
                        <td><?php echo $module['status']?></td>
                
                        <td class="link-control">
                            <?php echo $module['controlEdit']?>
                            <?php echo $module['controlDelete']?>
                        </td>
                    </tr>
        <?php
            }
        ?>
                        
                                                    
                </tbody>
                </table>
            </div>
        
        </form>
    
    </div>
    
</div>





<script language="javascript">
function submitForm(value)
{
	document.f.type.value=value
	document.f.submit()
}

$('#areacode').change(function(){
	var url = "";
	
	if($(this).val() != "")
		url = "?route=core/module&areacode=" + $(this).val();
	else
		url = "?route=core/module";

	window.location = url;	
});

$('#btnDelete').click(function(){
	if(confirm("<?php echo $warning_delete_confirm ?>")){
		$.blockUI({ message: "<h1><?php echo $announ_infor ?></h1>" });
		$.post("?route=core/module/delete", $('#f').serialize(), function(data){
			if(data	== "true"){
				alert("<?php echo $announ_del_success ?>");
				window.location.reload();	
			}
		});
	}	
});

$('#areacode').val("<?php echo $_GET['areacode'] ?>");
</script>