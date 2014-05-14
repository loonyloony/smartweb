<div class="section">
	
    <form name="frm" action="<?php echo $action?>" method="post" enctype="multipart/form-data">
	<div class="section-title">
        <div class="left titletext"><?php echo $heading_title?></div>
        <div class="button right">
            <input type="submit" value="<?php echo $button_save ?>" class="button"/>
            <input type="button" value="<?php echo $button_cancel ?>" class="button" onclick="linkto('<?php echo $cancel?>')"/>   
            <input type="hidden" name="id" value="<?php echo $site['id']?>" /> 
        </div>
        
        <div class="clearer">^&nbsp;</div>
    </div>
    
    <div class="section-content padding1">
        	<div>
            	<table>
                	<tr>
                    	<td width="100px;"><label><?php echo $entry_siteid?></label></td>
                        <td>
                        	<input type="text" name="siteid" value="<?php echo $site['siteid']?>" class="text" size=60 />
                    		<i class="error"><?php echo $error['siteid']?></i>
                        </td>
                    </tr>
                    
                    <tr>
                    	<td><label><?php echo $entry_sitename?></label><br /></td>
                        <td>
                        	<input type="text" name="sitename" value="<?php echo $site['sitename']?>" class="text" size=60 />
                    		<i class="error"><?php echo $error['sitename']?></i>
                        </td>
                    </tr>
                    
                     <tr>
                    	<td><label><?php echo $entry_slogan?></label></td>
                        <td><input type="text" name="slogan" value="<?php echo $site['slogan']?>" class="text" size=60 /></td>
                    </tr>
                    
                    <tr>
                    	<td><label><?php echo $entry_siteurl?></label></td>
                        <td><input type="text" name="siteurl" value="<?php echo $site['siteurl']?>" class="text" size=60 /></td>
                    </tr>
                    
                    <tr>
                    	<td><label><?php echo $entry_logo?></label></td>
                        <td>
                        	<input type="hidden" id="listselectfile" name="listselectfile" />
                            <input type="hidden" id="handler" />
                            <input type="hidden" id="outputtype" />
                            <table>
                                <tr>
                                    <td width="115px"><a onclick="elifeupload_one('logo','logopreview')" class="button"><?php echo $button_selectimage ?></a></td>
                                    <td>
                                    	<img id="logopreview" height="60px" imagetype="images/root" src="images/root/<?php echo $site['logo']?>" />
                                        <input type="hidden" id="logo" name="logo" value="<?php echo $site['logo']?>" />
                                    </td>
                                </tr>
                            </table>
                            
                        </td>
                    </tr>
                    
                    <tr>
                    	<td><label><?php echo $entry_symbol?></label></td>
                        <td>
                        	<table>
                                <tr>
                                    <td width="115px">
                                        <a onclick="elifeupload_one('symbol','symbolpreview')" class="button"><?php echo $button_selectimage ?></a>
                                    </td>
                                    <td>
                                    	<img id="symbolpreview" height="16px" width="16px" imagetype="images/root" src="images/root/<?php echo $site['symbol']?>" />
                                        <input type="hidden" id="symbol" name="symbol" value="<?php echo $site['symbol']?>" />
                                    </td>
                                </tr>
                            </table>
                        	
                        </td>
                    </tr>
                    
                    <tr>
                    	<td><label><?php echo $entry_language?></label></td>
                        <td>
                        	<input type="text" name="language" value="<?php echo $site['language']?>" class="text" size=60 />
                        	<i class="error"><?php echo $error['language']?></i>
                        </td>
                    </tr>
                    
                    <tr>
                    	<td><label><?php echo $entry_currency?></label></td>
                        <td>
                        	<input type="text" name="currency" value="<?php echo $site['currency']?>" class="text" size=60 />
                             <i class="error"><?php echo $error['currency']?></i>
                        </td>
                    </tr>
                    
                     <tr>
                    	<td><label><?php echo $entry_contactemail?></label></td>
                        <td>
                        	<input type="text" name="contactemail" value="<?php echo $site['contactemail']?>" class="text" size=60 />
                        	<i class="error"><?php echo $error['contactemail']?></i>
                        </td>
                    </tr>
                    
                    <tr>
                    	<td><label><?php echo $entry_pagetopic?></label></td>
                        <td><input type="text" name="pagetopic" value="<?php echo $site['pagetopic']?>" class="text" size=60 /></td>
                    </tr>
                    
                    <tr>
                    	<td><label><?php echo $entry_keywords?></label></td>
                        <td><input type="text" name="keywords" value="<?php echo $site['keywords']?>" class="text" size=60 /></td>
                    </tr>
                    
                    <tr>
                    	<td><label><?php echo $entry_description?></label></td>
                        <td>
                        	<textarea name="description" class="text"><?php echo $site['description']?></textarea>
                        </td>
                    </tr>
                    
                    <tr>
                    	<td><label><?php echo $entry_status?></label></td>
                        <td>
                        	<select name="status">
                            <?php foreach($status as $key=>$val){?>
                                <option value="<?php echo $key?>" <?php if($site['status']==$key) echo "selected"?> >
                                	-- <?php echo $val?> --
                                </option>
                            <?php } ?>                                                      
                            </select>
                        </td>
                    </tr>
                </table> 
            </div>               
    </div>
    </form>
    
</div>