<div class="section" id="sitemaplist">
	<div class="section-title">
    	<div class="texttitle left"><?php echo $title_heading_sidebar?></div>
        
        <div class="button right">
         	<input type="button" value="<?php echo $button_save ?>" class="button" onclick="save()"/>
			<input type="button" value="<?php echo $button_cancel ?>" class="button" onclick="linkto('?route=core/sidebar')" />             
         </div>
    </div>
    
    <div class="section-content padding1">
    
    	<form name="frm" id="frm" action="<?php echo $action?>" method="post" enctype="multipart/form-data">
        
        	<input type="hidden" name="sidebarid" value="<?php echo $sidebar['sidebarid']?>">
            <input type="hidden" id="selectaddon" name="selectaddon">
            
            <div class="clearer">^&nbsp;</div>
        	<div id="error" class="error" style="display:none"></div>
        	<div>
            	<table id="addontable">
                	<tr>
                    	<td width="100px"><label><?php echo $label_sidebar_name ?>:</label></td>
                        <td>
                        	<input type="text" name="sidebar_name" value="<?php echo $sidebar['sidebar_name']?>" class="text" size=60 />
                        </td>
                    </tr>
                </table>
            </div> 
            <!-------------------------------------
            ***************************************
            * tab sidebar
            ***************************************
            -------------------------------------->
            <div id="sidebar-items">
            	<div class="right">
                    <a class="button" id="btnAddSidebar"><?php echo $button_add ?></a>
                    <a class="button" id="btnDeleteSidebar"><?php echo $button_delete ?></a>
                </div>
                <div class="clearer"></div>
                <table class="data-table" width="100%">
                	<thead>
                        <th width="10%"></th>
                        <th width="45%"><?php echo $addon_name ?></th>
                        <th width="45%"><?php echo $text_sortorder ?></th>
                	</thead>
                    <tbody id="listsidebar">
                    	
                    </tbody>
                </table>
            </div>
            
        </form>
    
    </div>
    
</div>

<script language="javascript">
$(document).ready(function(e) {
	//load sidebar
	var arraddon = "<?php echo $addon ?>";
	var arrayOfAddon = arraddon.split(',');
	if(arrayOfAddon != ''){
		for(i=0; i<arrayOfAddon.length; i++)
		{
			arr = arrayOfAddon[i].split('-');
			sidebar.addRow(arr[0], arr[1]);	
		}
	}
});

/********************************************************************************************
* Sidebar
*********************************************************************************************/
//function sidebar
function Sidebar(){
	this.index = 0;
	this.addRow = function(id, sortorder){
		$.getJSON("?route=core/sidebar/getAddonById&type=sidebar&addonid="+id,
		function(data){
				var hidden_sidebarid = '<input type="hidden" class="sidebarid" id="sidebarid-'+ sidebar.index +'" name="sidebar['+ sidebar.index +']" value="'+data.addon.id+'">';
				var cellcheckbox = '<td><input type="checkbox" class="rowSidebar inputcheck" value="' + sidebar.index + '" /></td>';
				var celladdonname = "<td>";
				for(i in data.addon.addonname){				
					celladdonname += i + "<br />" + data.addon.addonname[i] + "<br />";
				}
				celladdonname += "</td>";
				var cellsortorder = '<td><input class="text" type="text" name="sidebarorder[' + sidebar.index + ']" value="' + sortorder + '"</td>';
				var row = "<tr id='rowSidebar" + sidebar.index + "'>";
				row += cellcheckbox;
				row += celladdonname;
				row += cellsortorder;
				row += hidden_sidebarid;
				row += "</tr>";
				
				$('#listsidebar').append(row);
				sidebar.index++;
				numberReady();
		});
	}	
}

var sidebar = new Sidebar();

//delete sidebar
$('#btnDeleteSidebar').click(function(){
	$('.rowSidebar').each(function(){
        if(this.checked == true){
			$('#rowSidebar' + this.value).remove();	
		}
    });
	
	$('.inputcheck').attr("checked",false);
});

//add sidebar
$('#btnAddSidebar').click(function(){
	var result = window.showModalDialog("index.php?route=core/addon&dialog=true&areacode=sidebar","", "dialogWidth:1000px; dialogHeight:800px; center:yes");	
	
	var arr = $('#selectaddon').val().split(',');
	for(i=0;i<arr.length - 1;i++)
	{
		var flag = false;
		$('.sidebarid').each(function() {
            if(this.value == arr[i]){
				flag = true;	
			}
        });
		
		if(flag == false){
			sidebar.addRow(arr[i], 1);
		}else{
			alert("<?php echo $announcement_select_addon ?>");
		}
	}
	
});

function save()
{
	$.blockUI({ message: "<h1><?php echo $announ_infor ?></h1>" });  
	$.post("?route=core/sidebar/save", $("#frm").serialize(),
		function(data){
			if(data == "true")
			{
				window.location = "?route=core/sidebar";
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
