<div class="section">
	<?php if($ispopup == ''){ ?>
	<div class="section-title">Quản lý đánh giá</div>
    <?php } ?>
    <div class="section-content">
    	
        <form action="" method="post" id="listitem" name="listitem">
        	<div id="elife-search">
            	<label>Họ tên</label>
                <input type="text" id="fullname" name="fullname" class="text" value="" />
                <label>Email</label>
                <input type="text" id="email" name="email" class="text" value="" />
                <label>Từ ngày</label>
                <script language="javascript">
					$(function() {
						$("#tungay").datepicker({
								changeMonth: true,
								changeYear: true,
								dateFormat: 'dd-mm-yy'
								});
						});
				 </script>
                <input id="tungay" name="tungay" type="text" class="text" />
                <label>Đến ngày</label>
                <script language="javascript">
					$(function() {
						$("#denngay").datepicker({
								changeMonth: true,
								changeYear: true,
								dateFormat: 'dd-mm-yy'
								});
						});
				 </script>
                <input id="denngay" name="denngay" type="text" class="text" />
               	<label>Tình trạng</label>
                <select id="status" name="status">
                	<option value=""></option>
                	<?php foreach($this->document->status_comment as $key => $status){ ?>
                    <option value="<?php echo $key?>"><?php echo $status?></option>
                    <?php } ?>
                </select>
                <br />
                <input type="button" class="button" name="btnSearch" value="Tìm" onclick="searchForm()"/>
                <input type="button" class="button" name="btnSearch" value="Xem tất cả" onclick="window.location = '?route=core/comment'"/>
            </div>
        	<div class="button right">
            	<?php if($ispopup == ''){ ?>
            
                <?php } ?>
            	<input class="button" type="button" name="delete_all" value="Delete" onclick="deleteitem()"/>
                
                	
            </div>
            <div class="clearer">^&nbsp;</div>
            
            <div class="sitemap treeindex">
                <table class="data-table" cellpadding="0" cellspacing="0">
                <thead>
                    <tr class="tr-head">
                        <th width="1%">
                        	<?php if($dialog!=true){ ?>
                        	<input class="inputchk" type="checkbox" onclick="$('input[name*=\'delete\']').attr('checked', this.checked);">
                            <?php } ?>
                        </th>
                        <th>Họ tên</th>
                        <th>Email</th>
                        
                        <th>Đánh giá về</th>
                        <th>Ngày</th>
                        <th>Nội dung</th>
                        
                        
                        
                        <?php if($dialog!=true){ ?>
                        <th>Control</th>     
                        <?php } ?>
                    </tr>
                </thead>
                <tbody>
        
        
        <?php
            foreach($datas as $key => $item)
            {
        ?>
                    <tr <?php echo ($item['status']=='new')?'class="new"':''?>>
                        <td class="check-column"><input class="inputchk" type="checkbox" name="delete[<?php echo $item['id']?>]" value="<?php echo $item['id']?>" ></td>
                        
                        
                        <td>
                        	<?php echo $item['fullname']?>
                        </td>
                        <td><?php echo $item['email']?></td>
                        
                        <!--<td><?php echo $this->document->getMedia($item['mediaid'])?></td>-->
                        <td><a href="<?php echo $item['link'] ?>"><?php echo $item['productname'] ?></a></td>
                       	<td><?php echo $this->date->formatMySQLDate($item['commentdate'],'longdate')?></td> 
                        <td><?php echo $item['description']?></td>
                        
                        
                        <td class="link-control">
                        	<?php if($item['status'] == 'published'){ ?>
                           	
                            <input type="button" class="button" value="Không duyệt" onclick="kiemduyet(<?php echo $item['id']?>,'denial')">
                            <?php }else{ ?>
               				<input type="button" class="button" value="Duyệt" onclick="kiemduyet(<?php echo $item['id']?>,'published')">	             
                            <?php } ?>
                            
                        </td>
                        
                    </tr>
        <?php
            }
        ?>
                        
                                                    
                </tbody>
                </table>
            </div>
        	<?php echo $pager?>
        
        </form>
        
    </div>
    
</div>
<script language="javascript">

function deleteitem()
{
	var answer = confirm("Bạn có muốn xóa không?")
	if (answer)
	{
		$.post("?route=core/comment/delete", 
				$("#listitem").serialize(), 
				function(data)
				{
					if(data!="")
					{
						<?php if($ispopup == ''){ ?>
						alert(data)
						window.location.reload();
						<?php } else{ ?>
						callbackLoadCommnet();
						<?php } ?>
					}
				}
		);
	}
}



function kiemduyet(id,status)
{
	$.post("?route=core/comment/kiemduyet", 
			{
				id:id,
				status:status
			},
			function(data)
			{
				if(data=="true")
				{
					<?php if($ispopup == ''){ ?>
					window.location.reload();
					<?php } else{ ?>
					callbackLoadCommnet();
					<?php } ?>
				
				}
			}
	);
}

function searchForm()
{
	var url =  "?route=core/comment";
	if($("#fullname").val() != "")
		url += "&fullname="+ $("#fullname").val();
	if($("#email").val() != "")
		url += "&email=" + $("#email").val();
	
	if($("#tungay").val() != "")
		url += "&tungay=" + $("#tungay").val();
	if($("#denngay").val() != "")
		url += "&denngay=" + $("#denngay").val();
	if($("#status").val() != "")
		url += "&status=" + $("#status").val();
	if("<?php echo $_GET['opendialog']?>" == "true")
	{
		url += "&opendialog=true";
	}
	
	window.location = url;
}
$("#fullname").val("<?php echo urldecode($_GET['fullname'])?>");
$("#email").val("<?php echo urldecode($_GET['email'])?>");
$("#tungay").val("<?php echo $_GET['tungay']?>");
$("#denngay").val("<?php echo $_GET['denngay']?>");
$("#status").val("<?php echo $_GET['status']?>");
</script>