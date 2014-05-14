<script src='<?php echo DIR_JS?>ui.datepicker.js' type='text/javascript' language='javascript'> </script>
<div class="section" id="sitemaplist">

	<div class="section-title">
    	<div class="titletext left"><?php echo $label_heading_title ?></div>
     	<div class="button right">
        	<?php if($action == "update"){ ?>
        	<input type="button" value="<?php echo $text_changepassword ?>" class="button" onclick="changePassword(<?php echo $customer['customerid']?>)"/>
            <?php } ?>
            <input type="button" value="<?php echo $button_save ?>" class="button" onclick="save()"/>
            <input type="button" value="<?php echo $button_cancel ?>" class="button" onclick="linkto('<?php echo $cancel?>')"/>
        </div>
        <div class="clearer">^&nbsp;</div>
    </div>
    
    <div class="section-content padding1">
    
    	<form name="frm" id="frm" action="<?php echo $action?>" method="post" enctype="multipart/form-data">
        
        	<input type="hidden" name="customerid" value="<?php echo $customer['customerid']?>" />
            <input type="hidden" name="action" value="<?php echo $action ?>" />
        	
            <div id="error" class="error" style="display:none"></div>
            
        	<div id="container">
            	

                <table>
                
                	<?php if(SKINID == 'fanhanghieu' && isset($customer['customerid'])) {?>
                    <tr>
                    	<td width="150px;">
                      	<label><?php 
                        	echo $text_customerid ?>
                        </label>
                     	</td>
                      <td>
                          <span>
                            <?php echo "FHH" . $this->string->numberToString($customer['customerid'], 4); ?>
                          </span>
                      </td>
                    </tr>
                    <?php }?>
                	
                    <tr>
                        <td><label><?php echo $label_gender ?></label></td>
                        <td>
                            <select id="gender" name="gender">
								<?php echo $cboGenders?>
                            </select>
                        </td>
                    </tr>

                    <?php if(SKINID == 'singapore') {?>
                    <tr>
                        <td><label><?php echo $text_customer_type ?></label></td>
                        <td>
                            <select id="customertype" name="customertype">
                                <?php echo $cboCustomerType?>
                            </select>
                        </td>
                    </tr>
                    <?php }?>
                    	
                    <tr>
                        <td><label><?php echo $label_first_name ?></label></td>
                        <td>
                            <input type="text" class="text" name="firstname" value="<?php echo $customer['firstname'] ?>" size="40"/>
                        </td>
                    </tr>
                    
                    <tr>
                    	<td><label><?php echo $label_last_name ?></label></td>
                        <td>
                        	<input type="text" class="text" name="lastname" value="<?php echo $customer['lastname'] ?>" size="40"/>
                        </td>
                    </tr>
    
                    <tr>
                        <td><label><?php echo $text_phone ?></label></td>
                        <td>
                           <input type="text" class="text" name="telephone" value="<?php echo $customer['telephone'] ?>" size="40"/>
                        </td>
                    </tr>
                    
                    <tr>
                        <td><label><?php echo $text_email ?></label> <span style="color:red;">(*)</span></td>
                        <td>
                           	<input type="text" class="text" name="email" value="<?php echo $customer['email'] ?>" size="40" <?php echo $readonly?> />
                        </td>
                    </tr>
                    
                    <tbody id="account">
                   		
                    </tbody>
                    
                    <tr>
                        <td><label><?php echo $text_fax ?></label></td>
                        <td>
                           <input type="text" class="text" name="fax" value="<?php echo $customer['fax'] ?>" size="40"/>
                        </td>
                    </tr>
                    
                    <?php if(SKINID != 'fanhanghieu' && SKINID != 'singapore') {?>
                    <tr>
                    	<td><label><?php echo $label_customer_group_name ?></label></td>
                        <td>
                            <select id="customer_group_id" name="customer_group_id">
                            	<?php echo $customer_groups ?>
                            </select>                        
                        </td>
                    </tr>
                    <?php }?>
                    
                    <?php if(SKINID != 'singapore') {?>
                    <tr>
                        <td><label><?php echo $text_point ?></label></td>
                        <td>
                           <input type="text" class="text number" name="point" value="<?php echo $customer['point'] ?>" size="40"/>
                        </td>
                    </tr>
                    <?php }?>
                    <tr>
                        <td><label><?php echo $text_address ?></label></td>
                        <td>
                           <input type="text" class="text" name="address" value="<?php echo $customer['address'] ?>" size="40"/>
                        </td>
                    </tr>
                    
                    <tr>
                        <td><label><?php echo $text_birthday ?></label></td>
                        <td>
                        	<?php 
                           		$birthdate = $customer['birthdate']; 
                                if ($birthdate == '0000-00-00 00:00:00') {
                                	$birthdate = '';
                                } else {
                                	$birthdate = date_format(date_create($customer['birthdate']), 'd-m-Y');
                                }
                           	?>
                           	<input id="birthdate" type="text" class="text" name="birthdate" value="<?php echo $birthdate ?>" size="40"/>
                        </td>
                        <script language="javascript">
							$(function() {
								$("#birthdate").datepicker({
										changeMonth: true,
										changeYear: true,
										dateFormat: 'dd-mm-yy'
										});
								});
						</script>
                    </tr>
                    
                    <tr>
                        <td><label><?php echo $text_identification ?></label></td>
                        <td>
                           <input type="text" class="text" name="identification" value="<?php echo $customer['identification'] ?>" size="40"/>
                        </td>
                    </tr>
                    
                    <tr>
                        <td><label><?php echo $text_date_of_issue ?></label></td>
                        <td>
                           <?php 
                           		$issuedate = $customer['issuedate']; 
                                if ($issuedate == '0000-00-00 00:00:00') {
                                	$issuedate = '';
                                } else {
                                	$issuedate = date_format(date_create($customer['issuedate']), 'd-m-Y');
                                }
                           ?>
                           <input id="issuedate" type="text" class="text" name="issuedate" value="<?php echo $issuedate ?>" size="40"/>
                        </td>
                        <script language="javascript">
							$(function() {
								$("#issuedate").datepicker({
										changeMonth: true,
										changeYear: true,
										dateFormat: 'dd-mm-yy'
										});
								});
						</script>
                    </tr>
                    
                    <tr>
                        <td><label><?php echo $text_place_of_birth ?></label></td>
                        <td>
                           <input type="text" class="text" name="birthplace" value="<?php echo $customer['birthplace'] ?>" size="40"/>
                        </td>
                    </tr>
                    
                </table>
				
                <?php if(SKINID != 'fanhanghieu' && SKINID != 'singapore') {?>		
				<fieldset>
                	<legend><label>Thông tin khác</label></legend>
                    <table>
                
                    <tr>
                        <td width="150px;"><label><?php echo $label_first_name ?></label></td>
                        <td>
                            <input type="text" class="text" name="address['firstname']" value="<?php echo $address['firstname'] ?>" size="40"/>
                        </td>
                    </tr>
                    
                    <tr>
                    	<td><label><?php echo $label_last_name ?></label></td>
                        <td>
                        	<input type="text" class="text" name="address['lastname']" value="<?php echo $address['lastname'] ?>" size="40"/>
                        </td>
                    </tr>
    				
                    <tr>
                        <td><label><?php echo $label_company ?></label></td>
                        <td>
                           <input type="text" class="text" name="address['company']" value="<?php echo $address['company'] ?>" size="40"/>
                        </td>
                    </tr>
                    
                    <tr>
                        <td><label><?php echo $label_tax_code ?></label></td>
                        <td>
                           <input type="text" class="text" name="address['taxcode']" value="<?php echo $address['taxcode'] ?>" size="40"/>
                        </td>
                    </tr>
                    
                    <tr>
                        <td><label><?php echo $text_phone ?></label></td>
                        <td>
                           <input type="text" class="text" name="address['telephone']" value="<?php echo $address['telephone'] ?>" size="40"/>
                        </td>
                    </tr>
                    
                    <tr>
                        <td><label><?php echo $text_fax ?></label></td>
                        <td>
                           <input type="text" class="text" name="address['fax']" value="<?php echo $address['fax'] ?>" size="40"/>
                        </td>
                    </tr>
                    
                    <tr>
                        <td><label><?php echo $text_address ?></label></td>
                        <td>
                           <input type="text" class="text" name="address['address']" value="<?php echo $address['address'] ?>" size="40"/>
                        </td>
                    </tr>
                    
                    <tr>
                        <td><label><?php echo $text_postcode ?></label></td>
                        <td>
                           <input type="text" class="text" name="address['postcode']" value="<?php echo $address['postcode'] ?>" size="40"/>
                        </td>
                    </tr>  
                    
                    <tr>
                    	<td><label><?php echo $text_country ?></label></td>
                        <td>
                            <select id="countryid" name="countryid">
                            	<?php echo $country ?>
                            </select>                        
                        </td>
                    </tr>
                    
                    <tr>
                    	<td><label><?php echo $text_all_zones ?></label></td>
                        <td>
                            <select id="zoneid" name="zoneid">

                            </select>                        
                        </td>
                    </tr>
                    
                </table>
                </fieldset>
                <?php }?>

            </div>
            
        </form>
    
    </div>
    
</div>

<script src="<?php echo DIR_JS?>jquery.tabs.pack.js" type="text/javascript"></script>

<script type="text/javascript" charset="utf-8">
$(document).ready(function() {

    $('#container').tabs({ fxSlide: true, fxFade: true, fxSpeed: 'slow' });
	$('#multilang').tabs({ fxSlide: true, fxFade: true, fxSpeed: 'slow' });
	
	var action = "<?php echo $action ?>";
	if(action == 'insert'){
		var row = "<tr>";
        row += '<td width="150px;"><label><?php echo $text_confirm_email ?></label> <span style="color:red;">(*)</span></td>';
        row += '<td>';
        row += '<input type="text" class="text" name="confirm_email" value="" size="40"/>';
        row += '</td>';
		row += '</tr>';
		row += '<tr>';
        row += '<td><label><?php echo $text_password ?></label> <span style="color:red;">(*)</span></td>';
        row += '<td>';
        row += '<input type="password" class="text" name="password" value="" size="40"/>';
        row += '</td>';
        row += '</tr>';
                    
        row += '<tr>';
        row += '<td><label><?php echo $text_confirmpassword ?></label> <span style="color:red;">(*)</span></td>';
        row += '<td>';
        row += '<input type="password" class="text" name="confirm_password" value="" size="40"/>';
        row += '</td>';
        row += '</tr>';
		
		$('#account').append(row);
	}
	
	$('#countryid').change(function(){
		$('#zoneid').load('?route=customer/customer/getZone&countryid=' + $(this).val() + '&customerid=<?php echo $_GET[customerid] ?>');
	});
	
	$('#countryid').change();
});

function changePassword(customerid){
	var url =  "?route=customer/customer/changePassword&customerid=" + customerid;
	
	window.location = url;	
}

function save()
{
	$.blockUI({ message: "<h1><?php echo $announ_infor ?></h1>" });  
	
	$.post("?route=customer/customer/save", $("#frm").serialize(),
		function(data){
			if(data == "true")
			{
				window.location = "?route=customer/customer";
			}
			else
			{
			
				$('#error').html(data).show('slow');
				$.unblockUI();
				
			}
			
		}
	);
}

$('#gender').val("<?php echo $customer['gender']?>");
$('#customertype').val("<?php echo $customer['customertype']?>");
</script>