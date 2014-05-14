
<form method="post" enctype="multipart/form-data" name="frmform" id="frmform">
    <div id="error" class="ben-error" style="display:none;margin-left:10px;color:red"></div>
    
    <input type="hidden" name="refersitemap" value="[<?php echo $_GET['sitemapid'] ?>]" />
    <input type="hidden" name="sitemapid" value="<?php echo $_GET['sitemapid'] ?>" />
    <input type="hidden" name="mediaid" value="<?php echo $items['common']['mediaid'] ?>" />
    <input type="hidden" id="handler" />
    <input type="hidden" id="outputtype" />
    <input type="hidden" id="imagepath" name="imagepath" value="<?php echo $items['common']['imagepath']?>" />
    <input type="hidden" id="imageid" name="imageid" value="<?php echo $imageid?>" />
    <input type="hidden" id="imagethumbnail" name="imagethumbnail" value="<?php echo $imagethumbnail?>" />
    <div id="container">
      <ul>
        <li><a href="#tabedit"><span><?php echo $tab_editcontent ?></span></a></li>
        <li><a href="#tabinfor"><span>Thông tin</span></a></li>
        <li><a href="#tabimage"><span><?php echo $filename ?></span></a></li>
        <?php if($flag=="true"){ ?>
         <li><a href="#tablink"><span>Liên kết</span></a></li>
        <?php } ?>
        <?php if($module=="information"){ ?>
         <li><a href="#tabfile"><span>File</span></a></li>
      <?php } ?>
       
      </ul>
      <div id="tabedit">
      
             
               <div id="container_infor">
                  <ul>
                    <?php foreach($arr_language as $key=>$item){ ?>
                       <li><a href="#tab-edit<?php echo $key ?>"><span><?php echo $item ?></span></a></li>
                    <?php } ?>
                  </ul>
                  
                    <?php foreach($arr_language as $key=>$item){ ?>
                        <div id="tab-edit<?php echo $key ?>">
                        <table class="data-table ">
                        	<tr>
                            	<td class="ben-title-content ben-text-right">Title</td>
                                <td><input class="text" type="text" size="120" name="title<?php echo $key ?>" id="title<?php echo $key ?>" value="<?php echo $items[$key]['title'] ?>"/></td>
                            </tr>
                      
                        	<tr>
                            	<td class="ben-title-content ben-text-right">Summary</td>
                                <td><textarea id="summary<?php echo $key ?>" name="summary<?php echo $key ?>" ><?php echo $items[$key]['summary'] ?></textarea></td>
                            </tr>
                       
                        	
                        </table>
                        	
                        </div>
                    <?php }?>
              </div>
             
       
        
        
       
      </div>
      <div id="tabinfor">
        <input type="hidden" id="listselectfile" name="listselectfile" />
        <table class="data-table ">
          <tr>
            <td class="ben-title-content ben-text-right">Hình đai diên: </td>
            <td ><a onclick="elifeupload_one('imagepath','imagepreview')" class="button">Chọn hình</a><br />
            	<input type="hidden" id="imagepath" name="imagepath" value="<?php echo $items['common']['imagepath']?>" />
               <div class="clearer"></div>
              <div id="image-content"> <img id="imagepreview" imagetype="images/resizepng-200x160" src="images/resizepng-200x160/<?php echo $items['common']['imagepath']?>" /> </div></td>
          </tr>
          <tr>
            <td class="ben-title-content ben-text-right"> Seo url: </td>
            <td><input type="text" size="120" class="text"  id="seourl" name="seourl" value="<?php echo $items['common']['alias'] ?>" /></td>
          </tr>
        </table>
             
                
             
           
          
        
      </div>
      <?php echo $subfile ?>
      
      <?php if($module=="information") echo $downloadfile?>
      <?php if($flag=="true"){ ?>
      <div id="tablink">
        <?php for($i=0;$i<count($items['group']);$i++){
                if($items['groupkey'][$i]==$items['group'][$i]['sitemapid']){
        ?>
        <input class="refersitemap" id="refe-<?php echo $items['group'][$i]['sitemapid'] ?>" type="checkbox" checked="checked" name="groupkey[]" value="<?php echo $items['group'][$i]['sitemapid'] ?>" />
        <span class="refersitemap"> <?php echo $items['group'][$i]['sitemapname'] ?></span>
        <?php
        		
                
        	}else{
            	?>
        <input class="refersitemap" id="refe-<?php echo $items['group'][$i]['sitemapid'] ?>" type="checkbox"  name="groupkey[]" value="<?php echo $items['group'][$i]['sitemapid'] ?>" />
        <span class="refersitemap"><?php echo $items['group'][$i]['sitemapname'] ?></span>
        <?php
            }
        } ?>
        <br /><textarea name="link" cols="80"><?php echo $items['common']['link'] ?></textarea>
        
      </div>
      <?php } ?>
      
    </div>
  </form>
  <script language="javascript">
  	$('#refe-'+"<?php echo $_GET['sitemapid'] ?>").attr('checked',"true");
	
	
	var index=parseInt("<?php echo count($items['image']) ?>");

  function uploadMultiImage(){
  					var img="<div style='margin-bottom:10px;'><img imagetype='images/resizepng-150x100' id=subimagepreview"+index+" src=''/><br /><input type='hidden' name='subfileid[]'   />"
					img +="<input id=imagepath"+index+"  type='hidden' name='subfilepath[]'  /> <div class='clearer'></div></div> <a onclick=elifeupload_one('imagepath"+index+"','subimagepreview"+index+"') class='button'>Chọn hình ảnh</a>";
									
					var strlanguage="<?php foreach($arr_language as $key=>$value){ ?>";
						strlanguage +="<input type='text' class='text left' size='80' name=sub<?php echo $key ?>[] />   <div class='icon_language left'><img class='icon_language' width='32' height='24' src='<?php echo HTTP_SERVER.DIR_IMAGE ?>language/<?php echo $key ?>.png'  /></div><br>";
						strlanguage +="<?php }?>";
						
					var control='<a class="btndeleteimage button"><?php echo $button_remove ?></a>';
				
					var row	="<tr><td width='150px'>"+img+"</td><td>"+strlanguage+"</td><td>"+control+"</td></tr>";
					$('#attachment').append(row);
					index++;
  }
  
  </script>