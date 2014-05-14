<div class="section" id="moduleform">
	<form name="frm" action="" method="post" enctype="multipart/form-data">
	<div class="section-title">
    	<div class="texttitle left"><?php echo $title?></div>
    	
        <div class="button right">
            <input type="submit" value="<?php echo $button_save ?>" class="button"/>
            <input type="button" value="<?php echo $button_cancel ?>" class="button" onclick="linkto('?route=core/module')"/>
        </div>
        <div class="clearer">^&nbsp;</div>
    </div>
    
     <div class="section-content padding1">
     	<?php if(isset($error)){ foreach($error as $item) { ?> <div class="error"> <?php echo $item ;  ?> </div> <?php } } ?>
     	
            
            <div>
            	<table>
                	<tr>
                    	<td width="100px"><label>Area code</label></td>
                        <td>
                        	<select name="areacode">
                            <?php foreach($areacode as $key=>$val){ ?>
                                <option value="<?php echo $key?>" <?php if($module['areacode']==$key) echo "selected"?> >
                                	-- <?php echo $val?> --
                                </option>
                            <?php } ?>                                                      
                            </select>   
                        </td>
                    </tr>
                    
                    <tr>
                    	<td><label>Module type</label></td>
                        <td>
                        	<select name="moduletype">
                            <?php foreach($moduletype as $key=>$val){ ?>
                                <option value="<?php echo $key?>" <?php if($module['moduletype']==$key) echo "selected"?> >
                                	-- <?php echo $val?> --
                                </option>
                            <?php } ?>                                                      
                            </select>
                        </td>
                    </tr>
                    
                    <tr>
                    	<td><label>Object</label></td>
                        <td><input type="text" name="object" value="<?php echo $module['object']?>" class="text" size=60 /></td>
                    </tr>
                    
                    <tr>
                    	<td><label>Module name</label></td>
                        <td><input type="text" name="modulename" value="<?php echo $module['modulename']?>" class="text" size=60 /></td>
                    </tr>
                    
                    <tr>
                    	<td><label>MouduleID</label></td>
                        <td>
                        	<input type="text" name="moduleid" value="<?php echo $module['moduleid']?>" class="text" size=60 />
                        </td>
                    </tr>
                    
                    <tr>
                    	<td><label>Module code</label></td>
                        <td><input type="text" name="modulecode" value="<?php echo $module['modulecode']?>" class="text" size=60 /></td>
                    </tr>
                    
                    <tr>
                    	<td><label>Module path</label></td>
                        <td><input type="text" name="modulepath" value="<?php echo $module['modulepath']?>" class="text" size=60 /></td>
                    </tr>
                    
                    <tr>
                    	<td><label>Status</label></td>
                        <td>
                        	<select name="status">
                            <?php foreach($status as $key=>$val){ ?>
                                <option value="<?php echo $key?>" <?php if($module['status']==$key) echo "selected"?> >
                                	-- <?php echo $val?> --
                                </option>
                            <?php } ?>                                                      
                            </select>
                        </td>
                    </tr>
                    
                    <tr>
                    	<td><label>Language</label></td>
                        <td><input type="text" name="languageid" value="<?php echo $module['languageid']?>" class="text" size=60 /></td>
                    </tr>
                    
                     <tr>
                    	<td><label>Description</label></td>
                        <td><input type="text" name="description" value="<?php echo $module['description']?>" class="text" size=60 /></td>
                    </tr>
                    
                     <tr>
                    	<td><label>Width</label></td>
                        <td><input type="text" name="width" value="<?php echo $module['width']?>" class="text" size=60 /></td>
                    </tr>
                    
                     <tr>
                    	<td><label>Height</label></td>
                        <td><input type="text" name="height" value="<?php echo $module['height']?>" class="text" size=60 /></td>
                    </tr>
                    
                     <tr>
                    	<td><label>Effect code</label></td>
                        <td><input type="text" name="effectcode" value="<?php echo $module['effectcode']?>" class="text" size=60 /></td>
                    </tr>
                    
                    <tr>
                    	<td><label>Permission</label></td>
                        <td><input type="text" name="permission" value="<?php echo $module['permission']?>" class="text" size=60 /></td>
                    </tr>
                </table>
       				
                    <input type="hidden" name="position" value="<?php echo $module['position']?>">

            </div>
        
        </form>
     
     </div>

</div>
 
    