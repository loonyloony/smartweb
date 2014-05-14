<form id="formlist" name="formlist" action="" method="post">
	<input type="hidden" name="action" value="items" />
	<div class="sitemap treeindex">
        <table class="example data-table news">
            <thead>
                <tr>
                    <th width="100px"><input type="checkbox" onclick="checkall(this)" class="inputchk"></th>
                    <th width="400px"><?php echo $column_title ?></th>
                    <th width="200px"><?php echo $column_image ?></th>
                    <th width="200px"> <?php echo $column_control ?> </th>
                </tr>
            </thead>
            
            <tbody>
                <?php
                $index = 0;	 
                for($i=0;$i<count($items);$i++) { 
                $index++;
                ?>
                    <tr class="media-<?php echo $items[$i]['status']?>" class="<?php echo ($index % 2 == 1 ? 'even' : 'even') ?>">
                        <td><input name="delete[<?php echo $item['mediaid'] ?>]" type="checkbox" value="<?php echo $items[$i]['mediaid'] ?>" /><input type="text" name="position[<?php echo $items[$i]['mediaid']?>]" class="text" size="2" value="<?php echo $items[$i]['position']?>"   /></td>
                        <td>
                        <a class="elife-table-title" href="<?php echo $items[$i]['link'] ?>#tabedit"><?php echo $items[$i]['title'] ?></a>
                        </td>
                        
                        <td class="ben-text-center"><img imagetype="images/resizepng-150x64" src="images/resizepng-150x64/<?php echo $items[$i]['imagepath'] ?>" /></td>
                        
                        <td class="ben-text-center " >
                        <a title="Chỉnh sửa thông tin" class="button" href="<?php echo $items[$i]['link'] ?>#tabedit"><?php echo $button_edit ?></a> 
                        <a title="xóa bài viết" id="<?php echo $items[$i]['mediaid'] ?>" class="btndelete-item button"><?php echo $button_delete ?></a>
                        <a title="Xem hiển thị" href="<?php echo $items[$i]['linkpreview']?>" target="_blank" class="review button"><?php echo $button_view?></a>
                        <?php 
                        if($this->user->getUserTypeId() == "admin") {
                        	if($items[$i]['status'] == "pending") { 
                        ?>
                        <a title="Xuất bản" class="button" onclick="publish('<?php echo $items[$i]['mediaid'] ?>','active')"><?php echo $button_publish?></a>
                        <?php
                        } else {
                        ?>
                        <a title="Tạm ẩn" class="button" onclick="publish('<?php echo $items[$i]['mediaid'] ?>','pending')"><?php echo $button_hidden?></a>
                        <?php
                        }}
                        ?>
                        </td>
                    </tr>
                <?php } ?>
            </tbody>
        </table>
	</div>
</form>
<script>
	function publish(mediaid,status) {
		$.post("<?php echo HTTP_SERVER ?>?route=module/news/active", {mediaid : mediaid, status : status},function(data) {
			if(data == "true") {
				alert("<?php echo $announ_update_success?>");
				window.location.reload();
			}
			else
				alert("<?php echo $announ_update_unsuccess?>");
		});
	}

</script>
