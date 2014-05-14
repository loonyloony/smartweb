<script src='<?php echo DIR_JS?>ui.datepicker.js' type='text/javascript' language='javascript'></script>
<div id="updateinfor">
	<div class="up-title"><?php echo $text_updatepersonalinfo ?></div>
	
    <div id="announcement"></div>
    <div class="up-content">
    	
    	<form id="frm">
    	<dl>
        	<dt><a href="/"> <?php echo $text_basic_info ?> </a></dt>
            <dd>
            	<ul>
                	<li>
                    	<div class="row">
                    		<label for="firstname"><?php echo $text_firstname ?></label>
                    		<span class="bcr1">
                            	<input type="text" class="text" value="<?php echo $customer['firstname'] ?>" name="firstname" size="50" />
                            </span>
                            <div class="clearer">&nbsp;</div>
                        </div>
                    </li>
                    <li>
                    	<div class="row">
                            <label for="lastname"><?php echo $text_lastname ?></label>
                            <span class="bcr1">
                                <input type="text" class="text" value="<?php echo $customer['lastname'] ?>" name="lastname" size="50" />
                            </span>
                            <div class="clearer">&nbsp;</div>
                        </div>
                    </li>
                    <li>
                    	<div class="row">
                            <label for="birthday"><?php echo $text_birthday ?></label>
                            <span class="bcr1">
                                <input type="text" id="birthday" class="text" value="<?php echo $this->date->formatMySQLDate($customer['birthday']) ?>" name="birthday" size="50" />
                            </span>
                            <div class="clearer">&nbsp;</div>
                            <script language="javascript">
								$(function() {
									$("#birthday").datepicker({
											changeMonth: true,
											changeYear: true,
											dateFormat: 'dd-mm-yy'
											});
									});
							</script>
                        </div>
                    </li>
                    <li>
                    	<div class="row">
                            <label for="gender"><?php echo $text_gender ?></label>
                            <span class="bcr1">
                                <input type="radio" class="text" value="1" name="gender" <?php echo ($customer['gender'] == 1)? 'checked = checked' : '' ?> />&nbsp;<?php echo $text_female ?>
                                &nbsp; &nbsp;
	                            <input type="radio" class="text" value="0" name="gender" <?php echo ($customer['gender'] == 0)? 'checked = checked' : '' ?> />&nbsp;<?php echo $text_male ?>
                            </span>
                            <div class="clearer">&nbsp;</div>
                        </div>
                    </li>
                </ul>
            </dd>
        </dl>
        
        <dl>
        	<dt><a href="/"> <?php echo $title_contactinfo ?> </a></dt>
            <dd>
            	<ul>
                	<li>
                    	<div class="row">
                            <label for="telephone"><?php echo $text_phone ?></label>
                            <span class="bcr1">
                                <input type="text" class="text" value="<?php echo $customer['telephone'] ?>" name="telephone" size="50" />
                            </span>
                            <div class="clearer">&nbsp;</div>
                        </div>
                    </li>
                    <li>
                    	<div class="row">
                            <label for="fax"><?php echo $text_fax ?></label>
                            <span class="bcr1">
                                <input type="text" class="text" value="<?php echo $customer['fax'] ?>" name="fax" size="50" />
                            </span>
                            <div class="clearer">&nbsp;</div>
                        </div>
                    </li>
                </ul>
            </dd>
        </dl>
        
        <dl>
        	<dt><a href="/"> <?php echo $text_addinfo ?> </a></dt>
            <dd>
            	<ul>
                	<li>
                    	<div class="row">
                            <label for="address"><?php echo $title_address ?></label>
                            <span class="bcr1">
                                <input type="text" class="text" value="<?php echo $customer['address'] ?>" name="address" size="50" />
                            </span>
                            <div class="clearer">&nbsp;</div>
                        </div>
                    </li>
                    <li>
                    	<div class="row">
                            <label for="country"><?php echo $text_country ?></label>
                            <span class="bcr1">
                                <select id="country" name="countryid"><?php echo $country ?></select>
                            </span>
                            <div class="clearer">&nbsp;</div>
                        </div>
                    </li>
                    <li>
                    	<div class="row">
                            <label for="province"><?php echo $text_province_city ?></label>
                            <span class="bcr1">
                                <select id="zone" name="zoneid"></select>
                            </span>
                            <div class="clearer">&nbsp;</div>
                        </div>
                    </li>
                </ul>
            </dd>
        </dl>
        
        <dl>
        	<dt><a href="/"> <?php echo $text_accountinfo ?> </a></dt>
            <dd>
            	<ul>
                	<li>
                    	<div class="row">
                            <label for="email"><?php echo $text_email?></label>
                            <span class="bcr1">
                                <strong><?php echo $customer['email'] ?></strong>
                            </span>
                            <div class="clearer">&nbsp;</div>
                        </div>
                    </li>
                    
                            			
                    <li>
                    	<div class="row">
                            <label for="password"><?php echo $text_password ?></label>
                            <span class="bcr1">
                                **************
                                <br />
                                <a href="?route=nhacxuan/updateinfor/changepassword"><?php echo $button_change_password ?></a>
                            </span>
                            <div class="clearer">&nbsp;</div>
                        </div>
                    </li>
                </ul>
            </dd>
        </dl>
        </form>
    </div>
    
    <div class="up-bottom">
    	<div class="up-bottom-button">
            <a class="btn_submit" id="btn_submit"><?php echo $button_update ?></a>
            <a class="btn_reset" id="btn_reset"><?php echo $button_reset ?></a>
        </div>
    </div>
</div>

<style>
	#updateinfor{
		border: 3px solid #210504;
		width:98%;
		background-color:#e5e5e5;
		padding:5px;	
	}
	
	.up-title{
		background-color:#210504;
		color:white;
		padding:5px;
		font-size:1.5em;
		font-weight:bold;	
	}
	
	.up-content{
		margin-top:10px;
	}
	
	dl{}
	dl.dt{margin:0}
	dt{background-color:#ffb443; padding:5px; margin-bottom:5px}
	dt a{color:#fff}
	dd a{color:#000}
	dt a{color:#000; text-decoration:none; font-size:1em}
	dt a:hover, a:focus{color:#000}
	ul{list-style-type:none; padding:5px}
	dd ul li{width:575px;}
	.up-content label {
		float: left;
		font-weight: bold;
		line-height: 16px;
		margin-right: 17px;
		text-align: right;
		width: 110px;
	}
	
	.bcr1 {
		float: left;
		line-height: 16px;
		width: 400px;
	}
	
	.row input[type="text"]{
		width:300px;	
	}
	
	
	.btn_submit {
		background-color: #210504;
		border: 1px solid #1A5B99;
		color: #FFFFFF;
		font-size: 12px;
		font-weight: bold;
		padding:5px;
		text-decoration:none;
	}
	
	
	.btn_reset {
		background-color: #F2F2F2;
		border: 1px solid #888888;
		color: #555555;
		font-size: 12px;
		font-weight: bold;
		margin-left: 5px;
		padding:5px;
		text-decoration:none;
		cursor:pointer
	}
	
	.up-bottom-button{
		width:130px;
		margin:0 auto;
		cursor:pointer
	}
	
	#announcement{
		margin-top:5px;	
	}
	
	.up-bottom{
		margin-bottom:30px;	
	}
	
	.row{
		margin-bottom:5px;	
	}
</style>

<script type="text/javascript">
	$(document).ready(function(){
		$("dd:not(:first)").hide();
		$("dt a").click(function(){
			$("dd:visible").slideUp('slow');
			$(this).parent().next().slideDown('slow');
			return false;	
		});
		
	});
	
	$("#country").change(function(){
		$("#zone").load("?route=nhacxuan/updateinfor/getZone&countryid=" + $("#country").val());	
	});
	
	$("#country").change();
	
	$("#btn_submit").click(function(){
		
		$.post("?route=nhacxuan/updateinfor/updateinfor", $("#frm").serialize(), function(data){
			if(data == "true")
			{
				$("#announcement").html("<p class='success'><?php echo $text_updatesuccess ?>!</p>");
				$("#announcement").fadeIn().delay(2000).fadeOut();
				
				window.location.href="index.php";
			}
			else
			{
				$("#announcement").html("<p class='error'><?php echo $text_reenter_info ?>!</p>");
				$("#announcement").fadeIn().delay(2000).fadeOut();
			}
			
		});	
	});
	
	$("#btn_reset").click(function(){
		$('#frm').each (function(){
			this.reset();
		});	
	});
</script>