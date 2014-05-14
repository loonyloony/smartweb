<form id="datalist" name="datalist" action="" method="post">
        <input type="hidden" name="action" value="items" />
         <div class="sitemap treeindex">

               
              <?php
                $index = 0;	 
                for($i=0;$i<count($items);$i++) { 
                   
                ?>
                
                <div class="left" >
               		<!--<div><img src="<?php echo $items[$i]['imagethumbnail'] ?>" /></div>-->
                    <div class="elife-catalog-imagethumnail left">
                    	<div style="text-align:center">
                    		<img width="200px" height="160px" src="<?php echo HTTP_SERVER.DIR_IMAGE ?>lock.png" />
                            <span class="catalog-title" style="margin:20px;"><?php echo $items[$i]['title'] ?></span>
                    	</div>
                   		<div class="clearer"></div>
                        <div style="text-align:center;margin-top:10px">
                            <a title="Chỉnh sửa thông tin" class="button" href="<?php echo $items[$i]['link'] ?>#tabedit"><?php echo $button_edit ?></a> 
                            <a title="xóa bài viết" id="<?php echo $items[$i]['mediaid'] ?>" class="btndelete-item button"><?php echo $button_remove ?></a>
                            <a title="Xem hiển thị" id="<?php echo $item['mediaid'] ?>" class="review button">Xem</a>
                        </div>
                    
                    </div>
                    
                  
                    
                </div>
              
              <?php 
              		
              } ?>
          
          </div>
        </form>