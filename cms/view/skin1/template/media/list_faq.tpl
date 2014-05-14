<form id="formlist" name="formlist" action="" method="post">
	<input type="hidden" name="action" value="items" />
	<div class="sitemap treeindex">
        <table class="example data-table">
            <thead>
                <tr>
                    <th width="100px"><input type="checkbox" onclick="checkall(this)" class="inputchk"></th>
                    <th width="400px"><?php echo $column_title ?></th>
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
                        
                        <td class="ben-text-center " >
                        <a title="<?php echo $button_edit ?>" class="button" href="<?php echo $items[$i]['link'] ?>#tabedit"><?php echo $button_edit ?></a> 
                        <a title="<?php echo $button_delete ?>" id="<?php echo $items[$i]['mediaid'] ?>" class="btndelete-item button"><?php echo $button_delete ?></a>
                        <a title="<?php echo $button_view?>" href="<?php echo $items[$i]['linkpreview']?>" target="_blank" class="review button"><?php echo $button_view?></a>
                        </td>
                    </tr>
                <?php } ?>
            </tbody>
        </table>
	</div>
</form>
