<div class="section" id="sitemaplist">

    <div class="section-title">
    	<div class="titletext left"><?php echo $title_heading_layout?></div>
        <div class="button right">
            <input class="button" value="<?php echo $button_save ?>" name="btnSave" type="button" onclick="save()">
            <input class="button" value="<?php echo $button_cancel ?>" name="btnCancel" type="button" onclick="linkto('?route=core/layout')">
        </div>
    	<div class="clearer"></div> 	
    </div>
    
    
    <div class="section-content padding1">
    
    	<form name="frm" id="frm" action="<?php echo $action?>" method="post" enctype="multipart/form-data">
        
        <div class="right">            
            <input type="hidden" name="id" value="<?php echo $layout['id']?>">
            <input type="hidden" id="selectaddon" name="selectaddon">
        </div>
        <div class="clearer"></div>
        <div id="container">
        	<ul>
            	<li><a href="#fragment-content"><?php echo $tab_editor ?></a></li>
                <li><a href="#fragment-information"><?php echo $tab_information ?></a></li>
                <li><a href="#fragment-dashboard"> Dashboard </a></li>
                <li><a href="#fragment-splash"> Splash </a></li>
            </ul>
            <!------------------------------------- 
            ***************************************
            * tab content 
            ***************************************
            -------------------------------------->
            
            <div id="fragment-content">
            	<table>
                	 <?php 
                    	if(isset($language)){
                    		foreach($language as $item){ 
                    ?>
                    <tr>
                    	<td><label><?php echo $layout_name ?> (<?php echo $item['name'] ?>):</label></td>
                        <td>
                        	<input type="text" name="layout_description[<?php echo $item['languageid'] ?>]" value="<?php echo $layout_description[$item['languageid']]?>" class="text" size=60 />
                        </td>
                    </tr>
                    <?php 		
                    		} 
                    	} 
                    ?>
                </table>
            </div>
            
            <!------------------------------------- 
            ***************************************
            * tab information 
            ***************************************
            -------------------------------------->
            <div id="fragment-information">
            	<div id="error" class="error" style="display:none"></div>
            	<table>
                	<tr>
                    	<td width="150px;"><label><?php echo $layout_code ?>:</label></td>
                        <td>
                        	<input type="text" name="layoutid" value="<?php echo $layout['layoutid']?>" <?php echo $readonly ?> class="text" size=60 />
                        </td>
                    </tr>
                    
                   
                                        
                    <tr>
                    	<td><label><?php echo $layout_image ?></label></td>
                        <td>
                        	<table>
                            	<tr>
                                	<td width="150px">
                                    	<a onclick="elifeupload_one('imagepath','imagepreview')" class="button"><?php echo $button_selectimage ?></a>
                                    </td>
                                    <td>
                                    	<img id="imagepreview" imagetype="images/resizepng-200x160" src="images/resizepng-200x160/<?php echo $layout['imagedemo']?>" />
                                        <input type="hidden" id="imagepath" name="imagedemo" value="<?php echo $layout['imagedemo']?>" />
                                    </td>
                                </tr>
                            </table>
                          
                        </td>
                    </tr>
                    
                    <tr>
                    	<td><label><?php echo $layout_link ?></label></td>
                        <td><input type="text" name="linkdemo" value="<?php echo $layout['linkdemo']?>" class="text" size=60 /></td>
                    </tr>
                    
                    <tr>
                    	<td><label><?php echo $layout_type ?></label></td>
                        <td>
                        	<select id="layouttype" name="layouttype">
                            	<option value="nosidebar"> -- No sidebar -- </option>
                                <option value="leftsidebar"> -- Left sidebar -- </option>
                                <option value="rightsidebar"> -- Right sidebar -- </option>
                                <option value="twosidebar"> -- Two sidebar -- </option>
                            </select>
                        </td>
                    </tr>
                    
                    <tbody id="sidebarposition">
                    
                    </tbody>
                </table>
            </div>
            
            <!------------------------------------- 
            ***************************************
            * tab dashboard 
            ***************************************
            -------------------------------------->
            <div id="fragment-dashboard">
            	<div class="right">
                    <a class="button" id="btnAddDashboard"><?php echo $button_add ?></a>
                    <a class="button" id="btnDeleteDashboard"><?php echo $button_delete ?></a>
                </div>
                <div class="clearer"></div>
                <table class="data-table" width="100%">
                	<thead>
                        <th width="6%"></th>
                        <th width="40%"><?php echo $addon_name ?></th>
                        <th width="20%"><?php echo $text_sortorder ?></th>
                	</thead>
                    <tbody id="listdashboard">
                    	
                    </tbody>
                </table>
            </div>
            
            <!-------------------------------------
            ***************************************
            * tab splash 
            ***************************************
            -------------------------------------->
            
            <div id="fragment-splash">
            	<div class="right">
                    <a class="button" id="btnAddSplash"><?php echo $button_add ?></a>
                    <a class="button" id="btnDeleteSplash"><?php echo $button_delete ?></a>
                </div>
                <div class="clearer"></div>
                <table class="data-table" width="100%">
                	<thead>
                        <th width="6%"></th>
                        <th width="40%"><?php echo $addon_name ?></th>
                        <th width="20%"><?php echo $text_sortorder ?></th>
                	</thead>
                    <tbody id="listsplash">
                    	
                    </tbody>
                </table>
            </div>
        </div>
        
        </form>
    
    </div>
    
</div>

<script language="javascript">
$(document).ready(function(e) {
	var layouttype = "<?php echo $layout['layouttype'] ?>";
	var rightsidebar = "<?php echo $rightsidebar ?>";
	$('#layouttype').val(layouttype);
	
	$('#layouttype').change(function(){
		$('.layout_sidebar').each(function(index, element) {
            $(this).remove();
        });
		
		if($('#layouttype').val() == 'nosidebar'){
			
		}
		
		if($('#layouttype').val() == 'leftsidebar'){
			$.ajax({
				url: '?route=core/layout/getSidebar',
				cache: false,
				success: function(html){
						var obj = jQuery.parseJSON(html);
						var cell_label_left_sidebar = "<td><label><?php echo $label_left_sidebar ?></label></td>";
						var cell_select = "<td><select id='leftsidebar' name='sidebar[left]'></select></td>";
						
						var row = "<tr class='layout_sidebar'>";
						row += cell_label_left_sidebar;
						row += cell_select;
						row += "</tr>";
						
						$('#sidebarposition').append(row);
						
						for(var i in obj.sidebar){
							var option = "<option class='moduleid' value='" + obj.sidebar[i].sidebarid + "'>" + obj.sidebar[i].sidebar_name + "</option>";	
							$('#leftsidebar').append(option);
						}
						
						var leftsidebar = "<?php echo $leftsidebar ?>"
						$('#leftsidebar').val(leftsidebar);		
				}
			});	
		}
		
		if($('#layouttype').val() == 'rightsidebar'){
			$.ajax({
				url: '?route=core/layout/getSidebar',
				cache: false,
				success: function(html){
						var obj = jQuery.parseJSON(html);
						var cell_label_right_sidebar = "<td><label><?php echo $label_right_sidebar ?></label></td>";
						var cell_select = "<td><select id='rightsidebar' name='sidebar[right]'></select></td>";
						
						var row = "<tr class='layout_sidebar'>";
						row += cell_label_right_sidebar;
						row += cell_select;
						row += "</tr>";
						
						$('#sidebarposition').append(row);
						
						for(var i in obj.sidebar){
							var option = "<option class='moduleid' value='" + obj.sidebar[i].sidebarid + "'>" + obj.sidebar[i].sidebar_name + "</option>";	
							$('#rightsidebar').append(option);
						}
						
						var rightsidebar = "<?php echo $rightsidebar ?>"
						$('#rightsidebar').val(rightsidebar);		
				}
			});	
		}
		
		if($('#layouttype').val() == 'twosidebar'){
			$.ajax({
				url: '?route=core/layout/getSidebar',
				cache: false,
				success: function(html){
						var obj = jQuery.parseJSON(html);
						//right sidebar
						var cell_label_right_sidebar = "<td><label><?php echo $label_right_sidebar ?></label></td>";
						var cell_select = "<td><select id='rightsidebar' name='sidebar[right]'></select></td>";
						
						var row = "<tr class='layout_sidebar'>";
						row += cell_label_right_sidebar;
						row += cell_select;
						row += "</tr>";
						
						$('#sidebarposition').append(row);
						
						for(var i in obj.sidebar){
							var option = "<option class='moduleid' value='" + obj.sidebar[i].sidebarid + "'>" + obj.sidebar[i].sidebar_name + "</option>";	
							$('#rightsidebar').append(option);
						}
						
						var rightsidebar = "<?php echo $rightsidebar ?>";
						$('#rightsidebar').val(rightsidebar);
						
						//left sidebar
						var cell_label_left_sidebar = "<td><label><?php echo $label_left_sidebar ?></label></td>";
						var cell_select = "<td><select id='leftsidebar' name='sidebar[left]'></select></td>";
						
						var row = "<tr class='layout_sidebar'>";
						row += cell_label_left_sidebar;
						row += cell_select;
						row += "</tr>";
						
						$('#sidebarposition').append(row);
						
						for(var i in obj.sidebar){
							var option = "<option class='moduleid' value='" + obj.sidebar[i].sidebarid + "'>" + obj.sidebar[i].sidebar_name + "</option>";	
							$('#leftsidebar').append(option);
						}
						
						var leftsidebar = "<?php echo $leftsidebar ?>";
						$('#leftsidebar').val(leftsidebar);	
				}
			});	
		}
		
	});
	
	$('#layouttype').change();
	//tabs
	$('#container').tabs({ fxSlide: true, fxFade: true, fxSpeed: 'slow' });
	
	//load dashboard
	var arrdashboard = "<?php echo $dashboard ?>";
	var arrayOfDashboard = arrdashboard.split(',');
	if(arrayOfDashboard != ''){
		var row = '';
		for(i=0; i<arrayOfDashboard.length; i++)
		{
			row = arrayOfDashboard[i];
			dashboard.addRow(row);
		}
	}
	
	//load splash
	var arrsplash = "<?php echo $splash ?>";
	var arrayOfSplash = arrsplash.split(',');
	if(arrayOfSplash != ''){
		var row = '';
		for(i=0; i<arrayOfSplash.length; i++)
		{
			row = arrayOfSplash[i];
			splash.addRow(row);	
		}
	}
	
});

/********************************************************************************************
* Dashboard
*********************************************************************************************/
//function dashboard
function Dashboard(){
	this.index = 0;
	this.addRow = function(id){
		$.getJSON("?route=core/layout/getAddon&type=dashboard&addonid="+id,
		function(data){
				var hidden_dashboardid = '<input type="hidden" class="dashboardid" id="dashboardid-'+ dashboard.index +'" name="dashboard['+ dashboard.index +']" value="'+data.addon.addonid+'">';
				var cellcheckbox = '<td><input type="checkbox" class="rowDashboard inputcheck" value="' + dashboard.index + '" /></td>';
				var celladdonname = "<td>";
				for(i in data.addon.addonname){				
					celladdonname += i + "<br />" + data.addon.addonname[i] + "<br />";
				}
				celladdonname += "</td>";
				var cellsortorder = '<td><input class="text" type="text" name="dashboardorder[' + dashboard.index + ']" value="' + data.addon.sortorder + '"</td>';
				var row = "<tr id='rowDashboard" + dashboard.index + "'>";
				row += cellcheckbox;
				row += celladdonname;
				row += cellsortorder;
				row += hidden_dashboardid;
				row += "</tr>";
				
				$('#listdashboard').append(row);
				dashboard.index++;
				numberReady();
		});
	}
}

var dashboard = new Dashboard();

//delete dashboard
$('#btnDeleteDashboard').click(function(){
	if(confirm("<?php echo $warning_delete_confirm ?>")){
		$(".rowDashboard").each(function(index, element) {
			if(this.checked == true){
				$('#rowDashboard' + this.value).remove();	
			}
		});
	}
});

//add dashboard
$('#btnAddDashboard').click(function(){
	var result = window.showModalDialog("index.php?route=core/addon&areacode=dashboard&dialog=true","", "dialogWidth:1000px; dialogHeight:800px; center:yes");	
	
	var arr = $('#selectaddon').val().split(',');
	for(i=0;i<arr.length - 1;i++)
	{
		dashboard.addRow(arr[i]);	
	}
	
});

/********************************************************************************************
* Splash
*********************************************************************************************/
$('#btnAddSplash').click(function(){
	var result = window.showModalDialog("index.php?route=core/addon&areacode=splash&dialog=true","", "dialogWidth:1000px; dialogHeight:800px; center:yes");	
	
	var arr = $('#selectaddon').val().split(',');
	for(i=0;i<arr.length - 1;i++)
	{
		splash.addRow(arr[i]);	
	}
	
});

function Splash(){
	this.index = 0;
	this.addRow = function(id){
		$.getJSON("?route=core/layout/getAddon&type=splash&addonid="+id,
		function(data){
				var hidden_splashid = '<input type="hidden" class="splashid" id="splashid-'+ splash.index +'" name="splash['+ splash.index +']" value="'+data.addon.addonid+'">';
				var cellcheckbox = '<td><input type="checkbox" class="rowSplash inputcheck" value="' + splash.index + '" /></td>';
				var celladdonname = "<td>";
				for(i in data.addon.addonname){				
					celladdonname += i + "<br />" + data.addon.addonname[i] + "<br />";
				}
				celladdonname += "</td>";
				var cellsortorder = '<td><input class="text" type="text" name="splashorder[' + splash.index + ']" value="' + data.addon.sortorder + '"/></td>';
				var row = "<tr id='rowSplash" + splash.index + "'>";
				row += cellcheckbox;
				row += celladdonname;
				row += cellsortorder;
				row += hidden_splashid;
				row += "</tr>";
				
				$('#listsplash').append(row);
				splash.index++;
				numberReady();
		});
	}
}

var splash = new Splash();

//delete splash
$('#btnDeleteSplash').click(function(){
	if(confirm("<?php echo $warning_delete_confirm ?>")){
		$(".rowSplash").each(function(index, element) {
			if(this.checked == true){
				$('#rowSplash' + this.value).remove();	
			}
		});
	}
});


$('#btnDelRows').click(function(){
	$('.rowitem').each(function(){
		
		if(this.checked == true)
		{
			$('#row'+this.value).remove();
		}
	});
	$('.inputchk').attr('checked', false);
});


function save()
{
	$.blockUI({ message: "<h1>Đang xử lý...</h1>" });  
	$.post("?route=core/layout/save", $("#frm").serialize(),
		function(data){
			if(data == "true")
			{
				window.location = "?route=core/layout";
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
