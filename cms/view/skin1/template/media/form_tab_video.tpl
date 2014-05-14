<div id="tab_video"> <a onclick=uploadMultiFileVideo_download("video") class="button control_form"> Thêm dòng</a>
        <div class="clearer"></div>
        <div class="sitemap treeindex">
        <table class="data-table " style="margin-top:10px;" id="download">
          <tr>
            <th><?php echo $column_image ?></th>
            <th> <?php echo $entry_title ?> </th>
            <th> <?php echo $column_control ?> </th>
          </tr>
         <?php if(count($items['image'])){ foreach($items['image'] as $image){ ?>
			
         
          <tr>
            <td>
               <div class='image_item'><a rel="<?php echo $image['filepath'] ?>"><img class='video-image-contact' src='<?php echo HTTP_SERVER.DIR_IMAGE ?>button/next.png' /><?php echo $image['image'] ?></a></div>
                <input type='hidden' name='subfileid[]'  value="<?php echo $image['fileid'] ?>"  />
                <input type='hidden' name='subfilepath[]'  value="<?php echo $image['image'] ?>"  />
            </td>
            <td>
            	<?php foreach($image['imagetitle'] as $item){ ?>
                <input  type='text' class='text left' value="<?php echo $item['title'] ?>" size='80' name="sub<?php echo $item['languageid'] ?>[]" />
                <div class="icon_language left">
                 <img class="icon_language" width="32" height="26" src="<?php echo HTTP_SERVER.DIR_IMAGE ?>language/<?php echo $item['languageid'] ?>.png "  /></div>
               <?php }?>
            </td>
            <td>
            	<a class="btndeleteimage button"><?php echo $button_remove?></a>
            </td>
          </tr>
           <?php 
           	}
          }
          ?>
        </table>
        </div>
      </div>