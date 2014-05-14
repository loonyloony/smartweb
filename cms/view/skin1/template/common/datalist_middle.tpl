<form id="datalist" name="datalist" action="" method="post">
        <input type="hidden" name="action" value="items" />
         <div class="sitemap treeindex">

                <link href="<?php echo DIR_VIEW?>css/jquery.treeTable.css" rel="stylesheet" type="text/css" />
                  <script type="text/javascript" src="<?php echo DIR_VIEW?>js/jquery.treeTable.js"></script>
                  <script type="text/javascript">
                  $(document).ready(function() {
                    // TODO Fix issue with multiple treeTables on one page, each with different options
                    // Moving the #example3 treeeTable call down will break other treeTables that are expandable...
                    $(".example").treeTable();
                  });
                  
                  </script>
          <table class="example data-table">
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
              <tr class="<?php echo ($index % 2 == 1 ? 'even' : 'even') ?>">
                <td><input name="delete[<?php echo $item['mediaid'] ?>]" type="checkbox" value="<?php echo $items[$i]['mediaid'] ?>" /><input type="text" name="position[<?php echo $items[$i]['mediaid']?>]" class="text" size="2" value="<?php echo $items[$i]['position']?>"   /></td>
                <td>
               		 <a class="elife-table-title" href="<?php echo $items[$i]['link'] ?>#tabedit"><?php echo $items[$i]['title'] ?></a>
                </td>
            
                <td class="ben-text-center"><img src="images/resizepng-150x64/<?php echo $items[$i]['imagepath'] ?>" /></td>
                
                <td class="ben-text-center " >
                    <a title="Chỉnh sửa thông tin" class="button" href="<?php echo $items[$i]['link'] ?>#tabedit"><?php echo $button_edit ?></a> 
                    <a title="xóa bài viết" id="<?php echo $items[$i]['mediaid'] ?>" class="btndelete-item button"><?php echo $button_remove ?></a>
                    <a title="Xem hiển thị" id="<?php echo $item['mediaid'] ?>" class="review button">Xem</a>
                </td>
              </tr>
              <?php } ?>
            </tbody>
          </table>
          </div>
        </form>
<script language="javascript">
	function postform(){
		
	}
</script>    