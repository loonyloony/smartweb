<div class="section" id="sitemaplist">

	<div class="section-title">
    	<div class="texttitle left"><?php echo $title_heading ?></div>
        <div class="button right">
            <a onclick="save()" class="button"><?php echo $button_save ?></a>
            <a onclick="linkto('?route=sidebar/weblink')" class="button"><?php echo $button_cancel ?></a>
        </div>
    	<div class="clearer">^&nbsp;</div>
    </div>
    
    <div class="section-content padding1">
    
    	<form name="frm" id="frm" action="<?php echo $action?>" method="post" enctype="multipart/form-data">
        
        	<input type="hidden" name="weblinkid" value="<?php echo $weblink['weblinkid']?>">
            <input type="hidden" name="addonid" value="<?php echo $_GET['addonid']?>">
           
        	<div id="error" class="error" style="display:none"></div>
            <div>
            	<table>
                    <tr>
                        <td width="100px"><label><?php echo $label_link ?></label></td>
                        <td><input type="text" name="link" value="<?php echo $weblink['link']?>" class="text" size=60 /></td>
                    </tr>
                </table>
            </div>
            
            <div>
                <div id="multilang">
                    <ul>
                        <?php 
                            if(isset($language)){
                                foreach($language as $key => $item){
                                    $class = "";
                                    if($key == 1){
                                        $class = "tabs-selected";
                                    }
                        ?>
                        <li class="<?php echo $class ?>"><a href="#fragment-<?php echo $item ?>"><?php echo $item ?></a></li>
                        <?php 
                                }
                            }
                        ?>
                    </ul>
                    
                    <!-- tabs editor -->
                    <?php
                        $count = 1;
                        if(isset($language)){ 
                            foreach($language as $key => $item){
                    ?>
                    <div id="fragment-<?php echo $item ?>">

                        <table>
                            <tr>
                                <td width="100px;"><label><?php echo $text_title ?></label></td>
                                <td><input type="text" class="text" name="weblink_description[<?php echo $key ?>][title]" value="<?php echo $weblink_description[$key][title] ?>" size="60" /></td>
                            </tr>
                            <?php $count++ ?>
                        </table>
                    
                    </div>
                    <?php 
                            }
                        }
                    ?>
                </div>
                
            </div>
            
        </form>
    
    </div>
    
</div>

<script language="javascript">

$(document).ready(function() {
	$('#container').tabs({ fxSlide: true, fxFade: true, fxSpeed: 'slow' });
	$('#multilang').tabs({ fxSlide: true, fxFade: true, fxSpeed: 'slow' });
	
	$('#sub_preview').attr("src", "<?php echo $manufacturer['imagepreview'] ?>");	
});

function save()
{
	$.blockUI({ message: "<h1><?php echo $announ_infor ?></h1>" });  
		
	$.post("?route=sidebar/weblink/save", $("#frm").serialize(),
		function(data){
			if(data == "true")
			{
				window.location = "?route=sidebar/weblink";
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