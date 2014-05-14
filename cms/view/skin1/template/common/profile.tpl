<div class="section" id="sitemaplist">
	<form name="frm" action="" method="post" enctype="multipart/form-data">
	<div class="section-title">
        <div class="left titletext"><?php echo $text_userprofile ?></div>
        <div class="button right">    
            <input class="button" type="button" name="cancel" value="<?php echo $button_cancel ?>" onclick="linkto('index.php')"/>  
        </div>
        <div class="clearer">&nbsp;</div>
    </div>
    
    <div class="section-content padding1">
            
        <div class="profile">
            
            <table>
            	<tr>
                	<td width="150px"><label><?php echo $text_fullname ?></label></td>
                    <td><b><?php echo $userProfile['fullname']?></b></td>
                </tr>
                
                <tr>
                	<td><label><?php echo $text_username ?></label></td>
                    <td><b><?php echo $userProfile['username']?></b></td>
                </tr>
                
                <tr>
                	<td><label><?php echo $text_password ?></label></td>
                    <td><a href="?route=common/changepassword"><?php echo $button_change_password ?></a></td>
                </tr>
                
                <tr>
                	<td><label><?php echo $text_email ?></label></td>
                    <td><?php echo $userProfile['email']?></td>
                </tr>
                
                <tr>
                	<td><label><?php echo $text_personalid ?></label></td>
                    <td><?php echo $userProfile['personalid']?></td>
                </tr>
                
                <tr>
                	<td><label><?php echo $text_birthday ?></label></td>
                    <td><?php echo $userProfile['birthday']?></td>
                </tr>
                
                <tr>
                	<td><label><?php echo $text_phone ?></label></td>
                    <td><?php echo $userProfile['phone']?></td>
                </tr>
                
                <tr>
                	<td><label><?php echo $text_address ?></label></td>
                    <td><?php echo $userProfile['address']?></td>
                </tr>
                
                <tr>
                	<td><label><?php echo $lbl_province ?></label></td>
                    <td><?php echo $userProfile['provincecity']?></td>
                </tr>
                
                <tr>
                	<td><label><?php echo $label_country ?></label></td>
                    <td><?php echo $userProfile['country']?></td>
                </tr>
            </table>           
        
        </div>
            
    </div>
	</form>
</div>

<style>
	.profile label{display:inline-block; width:100px}
</style>