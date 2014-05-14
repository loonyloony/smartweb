<div class="section" id="sitemaplist">
	<div class="section-title">
    	<div class="titletext left"><?php echo $heading_title ?></div>
        <div class="button right">
            <a onclick="save()" class="button"><?php echo $button_save ?></a>
            <a onclick="linkto('?route=core/currency')" class="button"><?php echo $button_cancel ?></a> 
        </div>
        <div class="clearer">^&nbsp;</div>
    </div>
    
    <div class="section-content padding1">
    
    	<form name="frm" id="frm" action="<?php echo $action?>" method="post" enctype="multipart/form-data">
        	<div id="error" class="error" style="display:none"></div>
            <input type="hidden" name="currencyid" value="<?php echo $currency['currencyid']?>" class="text" size=40 />
        	<div>
            	<table id="addontable">
                	<tr>
                    	<td width="150px"><label><?php echo $text_title ?></label></td>
                        <td>
                        	<input type="text" name="title" value="<?php echo $currency['title']?>" class="text" size=40 />
                        </td>
                    </tr>                   
                     
                    <tr>
                    	<td><label><?php echo $currency_code ?></label></td>
                        <td>
                        	<input type="text" name="code" value="<?php echo $currency['code']?>" class="text" size=40 />
                        </td>
                    </tr>
                    
                    <tr>
                    	<td><label><?php echo $text_currency_value ?></label></td>
                        <td>
                        	<input type="text" name="value_currency" value="<?php echo $currency['value_currency']?>" class="text" size=40 />
                            <i><span style="color:red">(= 1 USD)</span></i>
                        </td>
                    </tr>
                    
                    <tr>
                    	<td><label><?php echo $label_currency_decimal ?></label></td>
                        <td>
                        	<input type="text" name="decimal_place" value="<?php echo $currency['decimal_place']?>" class="text" size=40 />
                            <i><span style="color:red">(= 1 : 0,1; = 2 : 0,19; = 3 : 0,195 ...)</span></i>
                        </td>
                    </tr>
                    
                    <tr>
                    	<td><label><?php echo $label_symbol_left ?></label></td>
                        <td>
                        	<input type="text" name="symbol_left" value="<?php echo $currency['symbol_left']?>" class="text" size=40 />
                        </td>
                    </tr>
                    
                    <tr>
                    	<td><label><?php echo $label_symbol_right ?></label></td>
                        <td>
                            <input type="text" name="symbol_right" value="<?php echo $currency['symbol_right']?>" class="text" size=40 />
                        </td>
                    </tr>
                    
                </table>
        
            </div>
            
        </form>
    
    </div>
    
</div>

<script language="javascript">

function save()
{
	$.blockUI({ message: "<h1><?php echo $announ_infor ?></h1>" });  
	$.post("?route=core/currency/save", $("#frm").serialize(),
		function(data){
			if(data == "true")
			{
				window.location = "?route=core/currency";
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
