<form method="post" enctype="multipart/form-data" name="frmform" id="frmform">
    <div id="error" class="ben-error" style="display:none;margin-left:10px;color:red"></div>
    
    <input type="hidden" name="refersitemap" value="[<?php echo $_GET['sitemapid'] ?>]" />
    <input type="hidden" name="sitemapid" value="<?php echo $_GET['sitemapid'] ?>" />
    <input type="hidden" name="mediaid" value="<?php echo $items['common']['mediaid'] ?>" />
    <input type="hidden" id="handler" />
    <input type="hidden" id="outputtype" />
    
    <input type="hidden" id="imageid" name="imageid" value="<?php echo $imageid?>" />
    <input type="hidden" id="imagethumbnail" name="imagethumbnail" value="<?php echo $imagethumbnail?>" />
    <div id="container">
      <ul>
        <li><a href="#tabedit"><span><?php echo $tab_editcontent ?></span></a></li>
        <li><a href="#tabinfor"><span>Thông tin</span></a></li>
        <li><a href="#tabtime"><span>Thời gian</span></a></li>
        <li><a href="#tabimage"><span><?php echo $filename ?></span></a></li>
        <li><a href="#tablink"><span>Liên kết</span></a></li>
        
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
                                <td><input class="text" type="text" size="60" name="title<?php echo $key ?>" id="title<?php echo $key ?>" value="<?php echo $items[$key]['title'] ?>"/></td>
                            </tr>
                      
                        	<tr>
                            	<td class="ben-title-content ben-text-right">Summary</td>
                                <td><textarea id="summary<?php echo $key ?>" name="summary<?php echo $key ?>" ><?php echo $items[$key]['summary'] ?></textarea></td>
                            </tr>
                       
                        	<tr>
                            	<td class="ben-title-content ben-text-right">Description</td>
                                <td><textarea id="description<?php echo $key ?>" name="description<?php echo $key ?>" ><?php echo $items[$key]['description'] ?></textarea></td>
                            </tr>
                        </table>
                        	
                        </div>
                    <?php }?>
              </div>
             
       
        
        <table class="data-table ">
              <tr>
              
                <td class="ben-title-content ben-text-right"><?php echo $entry_author ?></td>
                <td><input type="text" class="text" size="60" name="author" value="<?php echo $items['common']['author'] ?>" /></td>
                 
              </tr>
            
              <tr>
            
                <td class="ben-title-content ben-text-right"><?php echo $entry_source ?></td>
                <td><input type="text" class="text" size="60" name="source" value="<?php echo $items['common']['source'] ?>" /></td>
              </tr>
          </table>
       
      </div>
      <div id="tabinfor">
        <input type="hidden" id="listselectfile" name="listselectfile" />
        <table class="data-table ">
          <tr>
            <td class="ben-title-content ben-text-right"> hình đại diện: </td>
            <td ><a onclick="elifeupload_one('imagepath','imagepreview')" class="button"> <?php echo $button_selectimage ?></a><br />
            	<input type="hidden" id="imagepath" name="imagepath" value="<?php echo $items['common']['imagepath']?>" />
               <div class="clearer"></div>
              <div id="image-content"> <img id="imagepreview" imagetype="images/resizepng-200x160" src="images/resizepng-200x160/<?php echo $items['common']['imagepath']?>" /> </div></td>
          </tr>
          <tr>
            <td class="ben-title-content ben-text-right"> Seo url: </td>
            <td><input type="text" size="60" class="text"  id="seourl" name="seourl" value="<?php echo $items['common']['alias'] ?>" /></td>
          </tr>
        </table>
             
                <div id="container_infor">
                  <ul>
                    <?php foreach($arr_language as $key=>$item){ ?>
                       <li><a href="#tab-infor<?php echo $key ?>"><span><?php echo $item ?></span></a></li>
                    <?php } ?>
                  </ul>
                  
                    <?php foreach($arr_language as $key=>$item){ ?>
                        <div id="tab-infor<?php echo $key ?>">
                        <table class="data-table">
                        	<tr>
                            	<td class=" ben-title-content ben-text-right ben-text-right">Meta keyword</td>
                                <td><textarea id="metakeyword<?php echo $key ?>" name="metakeyword<?php echo $key ?>" ><?php echo $items[$key]['metakeyword'] ?></textarea></td>
                            </tr>
                       
                        	<tr>
                            	<td class="ben-title-content  ben-text-right ben-text-right">Meta Description</td>
                                <td><textarea id="metadescription<?php echo $key ?>" name="metadescription<?php echo $key ?>" ><?php echo $items[$key]['metadescription'] ?></textarea></td>
                            </tr>
                        </table>
                        	
                        </div>
                    <?php }?>
              </div>
             
           
          
        
      </div>
      <div id="tabtime">
      
      	<table class="data-table">
          
          <tr>
            <td class="ben-title-content">Từ ngày</td>
            <td>
                Ngày :<input type="text" id="startdate" class="text" size="40" name="startdate" value="<?php echo $items['event']['startdate'] ?>" />
                Giờ  :<input type="text" class="text" size="40" name="starthour" value="<?php echo $items['event']['starthour'] ?>" />
            </td>
          </tr>
          <tr>
            <td class="ben-title-content ben-text-right">Đến ngày</td>
            <td>
                Ngày :<input type="text" id="enddate" class="text" size="40" name="enddate" value="<?php echo $items['event']['enddate'] ?>" />
                Giờ  :<input type="text" class="text" size="40" name="endhour" value="<?php echo $items['event']['endhour'] ?>" />
             </td>
          </tr>
          <tr>
            <td class="ben-title-content ben-text-right">Địa điểm</td>
            <td><textarea cols="120" rows="5" name="address"><?php echo $items['event']['address'] ?></textarea></td>
          </tr>
        </table>
      
      
      </div>
      
      <?php echo $subfile ?>
      <div id="tablink">
        <?php for($i=0;$i<count($items['group']);$i++){
                if($items['groupkey'][$i]==$items['group'][$i]['sitemapid']){
        ?>
        <input class="refersitemap" id="<?php echo $items['group'][$i]['sitemapid'] ?>" type="checkbox" checked="checked" name="groupkey[]" value="<?php echo $items['group'][$i]['sitemapid'] ?>" />
        <span class="refersitemap"> <?php echo $items['group'][$i]['sitemapname'] ?></span>
        <?php
        		
                
        	}else{
            	?>
        <input class="refersitemap" id="<?php echo $items['group'][$i]['sitemapid'] ?>" type="checkbox"  name="groupkey[]" value="<?php echo $items['group'][$i]['sitemapid'] ?>" />
        <span class="refersitemap"><?php echo $items['group'][$i]['sitemapname'] ?></span>
        <?php
            }
        } ?>
        <br /><textarea name="link" cols="80"><?php echo $items['common']['link'] ?></textarea>
        
      </div>
    </div>
  </form>
  <script language="javascript">
  	$('#'+"<?php echo $_GET['sitemapid'] ?>").attr('checked',"true");
		$("#startdate").datepicker({
				changeMonth: true,
				changeYear: true,
				dateFormat: 'dd-mm-yy'
		});
		
		
		$("#enddate").datepicker({
				changeMonth: true,
				changeYear: true,
				dateFormat: 'dd-mm-yy'
		});
		
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
  
  
  
		
			  
		  function uploadMultiFileVideo_download(filetype){
							var imagetype="";
							if(filetype=="file"){
								imagetype="dinhkem";
							}
							if(filetype=="video"){
								imagetype="next";
							}
							var img="<div style='margin-bottom:10px;'><img class='video-image-contact' src='<?php echo HTTP_SERVER.DIR_IMAGE ?>button/"+imagetype+".png' /><span id=subimagepreview"+index+"></span><br /><input type='hidden' name='subfileid[]'   />"
							img +="<input id=imagepath"+index+"  type='hidden' name='subfilepath[]'  /> <div class='clearer'></div></div> <a onclick=elifeupload_onefile('imagepath"+index+"','subimagepreview"+index+"') class='button'>Chọn File</a>";
											
							var strlanguage="<?php foreach($arr_language as $key=>$value){ ?>";
								strlanguage +="<input type='text' class='text left' size='80' name=sub<?php echo $key ?>[] />   <div class='icon_language left'><img class='icon_language' width='32' height='24' src='<?php echo HTTP_SERVER.DIR_IMAGE ?>language/<?php echo $key ?>.png'  /></div><br>";
								strlanguage +="<?php }?>";
								
							var control='<a class="btndeleteimage button"><?php echo $button_remove ?></a>';
						
							var row	="<tr><td width='150px'>"+img+"</td><td>"+strlanguage+"</td><td>"+control+"</td></tr>";
							$('#download').append(row);
							index++;
		  }
		  
  
  </script>