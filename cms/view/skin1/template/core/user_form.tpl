<div class="section" id="sitemaplist">

	<div class="section-title">
    	<?php echo $header_title_user ?>
    </div>
    
    <div class="section-content padding1">
    
    	<form name="frm" action="<?php echo $action?>" method="post" enctype="multipart/form-data">
        
        	<div class="button right">
            	<input type="submit" value="<?php echo $button_save ?>" class="button"/>
     	        <input type="button" value="<?php echo $button_cancel ?>" class="button" onclick="linkto('<?php echo $cancel?>')"/>   
     	        <input type="hidden" name="userid" value="<?php echo $user['userid']?>" />   
            </div>
            <div class="clearer">^&nbsp;</div>
        
        	<div>
            	<p>
            		<label><?php echo $text_fullname ?></label><br />
					<input type="text" name="fullname" value="<?php echo $user['fullname']?>" class="text" size=60 />
                    <i class="error"><?php echo $error['fullname']?></i>
            	</p>
                <p>
            		<label><?php echo $text_email ?></label><br />
					<input type="text" name="email" value="<?php echo $user['email']?>" class="text" size=60 />
                    <i class="error"><?php echo $error['email']?></i>
            	</p>
            	<p>
            		<label><?php echo $lbl_username ?></label><br />
					<input type="text" name="username" value="<?php echo $user['username']?>" class="text" size=60 <?php echo $usernamereadonly?>/>
                    <i class="error"><?php echo $error['username']?></i>
            	</p>
              	<?php if($haspass){?>
                <p>
            		<label><?php echo $lbl_password ?></label><br />
					<input type="password" name="password" value="<?php echo $user['password']?>" class="text" size=60 />
                    <i class="error"><?php echo $error['password']?></i>
            	</p>
                <p>
            		<label><?php echo $lbl_confirmpass ?></label><br />
					<input type="password" name="confrimpassword" value="<?php echo $user['confrimpassword']?>" class="text" size=60 />
                    <i class="error"><?php echo $error['confrimpassword']?></i>
            	</p>
                <?php }?>
                <p>
            		<label><?php echo $text_user_type ?></label><br />
					<select name="usertypeid">
<?php
	foreach($usertype as $item)
    {
    	$sel="";
    	if($user['usertypeid'] == $item['usertypeid'])
        	$sel='selected="selected"';
?>
						<option value="<?php echo $item['usertypeid']?>" <?php echo $sel?>><?php echo $item[usertypename]?></option>
<?php
    }
?>
                    </select>
            	</p>
                
            </div>
            
        </form>
    
    </div>
    
</div>