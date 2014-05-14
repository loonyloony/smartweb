<div class="section">

	<div class="section-title">
        <div class="titletext left"><?php echo $heading_title ?></div>
        <div class="button right">
            <a class="button" href="<?php echo $insert?>">Add new</a>
            <a class="button" onclick="deletelist()">Delete</a>
            <a class="button" href="index.php">Cancel</a>  
        </div>
    	<div class="clearer"></div>
   	</div>
    
    <div class="section-content">
    	
        <form action="" method="get" id="listitem" name="listitem">
            
            <div id="container">
                <table class="data-table" cellpadding="0" cellspacing="0">
                <tbody>
                    <tr class="tr-head">
                        <th width="5%"><input class="inputchk" type="checkbox" onclick="$('input[name*=\'delete\']').attr('checked', this.checked);"></th>
                        <th>Key</th>
                        <th>Việt Nam</th>
                        <th>English</th>
                        <th>Russian</th>
                        <th>Khmer</th>
                        <th>Trung Quốc</th>
						<th>Japan</th>
						<th>France</th>
                        
                        <th width="18%">&nbsp;</th>                 
                    </tr>
        
        
        <?php
            foreach($rows as $item)
            {
        ?>
                    <tr>
                        <td class="check-column"><input class="inputchk" type="checkbox" name="delete[<?php echo $item['languagekey']?>]" value="<?php echo $item['languagekey']?>" ></td>
                        <td><?php echo $item['languagekey']?></td>
                        <td><?php echo $item['vn']?></td>
                        <td><?php echo $item['en']?></td>
                        <td><?php echo $item['ru']?></td>
                        <td><?php echo $item['kh']?></td>
                        <td><?php echo $item['cn']?></td>
						<td><?php echo $item['fr']?></td>
                        <td><?php echo $item['jp']?></td>
                        <td class="link-control">
                            
                            <a class="button" href="?route=<?php echo $route?>&languagekey=<?php echo $item['languagekey']?>">Edit</a>
                            
                            
                        </td>
                    </tr>
        <?php
            }
        ?>
                        
                                                    
                </tbody>
                </table>
                <?php echo $pager?>
            </div>
        
        
        </form>
    </div>
</div>
<iframe id="printvoucher" src="" width="1px" height="1px"></iframe>
<script language="javascript">
$(document).ready(function() {
  	
});

function deletelist()
{
	var ans = confirm("do you want to delete?");
	if(ans)
	{
		$.blockUI({ message: "<h1><?php echo $announ_infor ?></h1>" }); 
		$.post("index.php?route=<?php echo $route?>/delete", 
			   $("#listitem").serialize(),
			   function(data)
			   {
				   $.blockUI({ message: "<h1>"+data+"</h1>" }); 
					window.location.reload();
				}
			   );
	}
}
function updatePosition()
{
	
	$.blockUI({ message: "<h1><?php echo $announ_infor ?></h1>" }); 
	$.post("index.php?route=addon/visa/updataPosition", 
		   $("#listitem").serialize(),
		   function(data)
		   {
			   $.blockUI({ message: "<h1>"+data+"</h1>" }); 
				window.location.reload();
			}
		   );
	
}
</script>

