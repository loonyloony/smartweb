<div class="section" id="sitemaplist">
<form name="frm" action="<?php echo $action?>" method="post" enctype="multipart/form-data">
	<div class="section-title">
        <div class="left titletext"><?php echo $heading_title?></div>
        <div class="button right">
            <input type="submit" value="<?php echo $button_save ?>" class="button"/>
            <input type="button" value="<?php echo $button_cancel ?>" class="button" onclick="linkto('<?php echo $cancel?>')"/>   
        </div>
        
        <div class="clearer">^&nbsp;</div>
    </div>
    
    <div class="section-content padding1">
    
    	 <div id="container">
              <ul>
                <li><a href="#tab-infor"><span>Cài đặt thông tin website</span></a></li>
                <li><a href="#tab-advand"><span>Cài đặt nâng cao</span></a></li>
               
              </ul>
               <div id="tab-infor">
        	<input type="hidden" name="id" value="<?php echo SITEID?>" />
        	<div>
            	<table>
                	<!--<tr>
                    	<td width="100px;"><label><?php echo $entry_siteid?></label></td>
                        <td>
                        	<input type="text" name="siteid" value="<?php echo $site['siteid']?>" class="text" size=60 />
                    		<i class="error"><?php echo $error['siteid']?></i>
                        </td>
                    </tr>-->
                    
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
                                    <td width="115px"><a onclick="elifeupload_one('imagepath','imagepreview')" class="button"><?php echo $button_selectimage ?></a></td>
                                    <td>
                                    	<img id="imagepreview" imagetype="images/autosize-0x64" src="images/autosize-0x64/<?php echo $site['logo']?>" />
                                        <input type="hidden" id="imagepath" name="logo" value="<?php echo $site['logo']?>" />
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
                                    <td width="115px"><a onclick="elifeupload_one('symbol','imagesymbol')" class="button"><?php echo $button_selectimage ?></a></td>
                                    <td>
                                    	<img id="imagesymbol" imagetype="images/resizepng-150x64" src="images/resizepng-150x64/<?php echo $site['symbol']?>" />
                                        <input type="hidden" id="symbol" name="symbol" value="<?php echo $site['symbol']?>" />
                                    </td>
                                </tr>
                            </table>
                        	
                        </td>
                    </tr>
                    
                    <tr>
                    	<td><label>Image yahoo</label></td>
                        <td>
                        	<table>
                                <tr>
                                    <td width="115px"><a onclick="elifeupload_one('imageyahoo','yahoo')" class="button"><?php echo $button_selectimage ?></a></td>
                                    <td>
                                    	<img id="yahoo" imagetype="images/resizepng-150x64" src="images/resizepng-150x64/<?php echo $site['imageyahoo']?>" />
                                        <input type="hidden" id="imageyahoo" name="imageyahoo" value="<?php echo $site['imageyahoo']?>" />
                                    </td>
                                </tr>
                            </table>
                        	
                        </td>
                    </tr>
                    <tr>
                    	<td><label>Image skype</label></td>
                        <td>
                        	<table>
                                <tr>
                                    <td width="115px"><a onclick="elifeupload_one('imageskype','skype')" class="button"><?php echo $button_selectimage ?></a></td>
                                    <td>
                                    	<img id="skype" imagetype="images/resizepng-150x64" src="images/resizepng-150x64/<?php echo $site['imageskype']?>" />
                                        <input type="hidden" id="imageskype" name="imageskype" value="<?php echo $site['imageskype']?>" />
                                    </td>
                                </tr>
                            </table>
                        	
                        </td>
                    </tr>
                    
                    
                    
                    <tr style="display:none">
                    	<td><label><?php echo $entry_language?></label></td>
                        <td>
                        	<input type="text" name="language" value="<?php echo $site['language']?>" class="text" size=60 />
                        	<i class="error"><?php echo $error['language']?></i>
                        </td>
                    </tr>
                    
                    <tr style="display:none">
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
        	   <div id="tab-advand">
        	
            	<table>
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
                        	<textarea name="description" class="text" cols="120"><?php echo $site['description']?></textarea>
                        </td>
                    </tr>
                	
                
                	 <tr>
                    	<td><label>Google Analytics</label></td>
                        <td>
                        	<textarea name="googleanalytics" class="text" cols="120" rows="10"><?php echo $site['googleanalytics']?></textarea>
                        </td>
                    </tr>
                   
                </table> 
           
        </div>    
        
        </div> 
       
         
            
        	
            
       
    
    </div>
  </form>   
</div>

<script language="javascript">


$(document).ready(function() {
   	// put all your jQuery goodness in here.
	 $('#container').tabs({ fxSlide: true, fxFade: true, fxSpeed: 'slow' });
});



</script>