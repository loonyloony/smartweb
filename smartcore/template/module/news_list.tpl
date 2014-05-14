<!-- HTML TIN TỨC -->
<div class="elife-section-title"><h1><a><?php echo $sitemap ?></a></h1></div>

<div class="elife-section-content">
    <div class="elife-item-line"></div>
    <div id="elife-post-contatiner">
    <input type="hidden" id="flag" value="<?php echo $flag?>" />
    <?php 
        if(isset($medias)){ 
            foreach($medias as $item) {
    ?>
    <div class="elife-post">
        <?php if($item['imagepath'] != "") {?>
        <img class="elife-post-image" src="images/resizepng-150x0/<?php echo $item['imagepath'] ?>" alt="<?php echo $item['title'] ?>" />
        <?php } ?>
        <div>
            <h3><a class="elife-post-title" href="<?php echo $item['link'] ?>" title="<?php echo $item['title'] ?>"><?php echo $item['title'] ?></a></h3>
            <p class="elife-post-date"><?php echo $item['updateddate'] ?></p>
            <p class="elife-post-summary">
                <?php echo $item['summary'] ?>
            </p>
            <p class="elife-text-right"><a title="News title" href="<?php echo $item['link'] ?>"><?php echo $button_view ?></a></p>
        </div>
        <div class="clearer">&nbsp;</div>
    </div>
    <div class="elife-item-line"></div>
    <?php 	
            } 
        }
    ?>
    </div>
    <div id="paging"></div>
    
    <div class="elife-pagination">
         <a style="display:none" id="btnpre"><?php echo $text_previous ?></a>
         <?php if($flag == "true"){?>
         <a id="btnnext"><?php echo $text_next ?></a>
         <?php } ?>
        
        <div class="clearer">&nbsp;</div>
    </div>
    
    <script language="javascript">
        var from=parseInt("<?php echo $from ?>");
        
        var row=parseInt("<?php echo $rows ?>");
        var to=parseInt("<?php echo $to ?>");
        
        $('#btnnext').click(function(){
            var flag=$('#flag').val();
            if(flag=="true"){		
                from +=5;
                var mediaid="<?php echo $mediaid ?>";
                var url="?route=module/news/getListPage";
                
                $.post(url,{from:from,to:to,mediaid:mediaid},function(data){
                    $('#elife-post-contatiner').html();
                    $('#elife-post-contatiner').slideUp();
                    $('#elife-post-contatiner').html(data).slideDown();
                    flag=$('#flag').val();
                    if(flag=="false"){
                        $('#btnnext').hide();
                    }
                    
                });
                
                $('#btnpre').show();
            }
            
            
        });
        
        $('#btnpre').click(function(){
            if(from >0){		
                from -=5;
                var mediaid="<?php echo $mediaid ?>";
                var url="?route=module/news/getListPage";
                
                $.post(url,{from:from,to:to,mediaid:mediaid},function(data){
                    $('#elife-post-contatiner').html();
                    $('#elife-post-contatiner').slideUp();
                    $('#elife-post-contatiner').html(data).slideDown();
                    
                });
                
                $('#btnnext').show();
                $('#flag').val("true");
            }if(from==0){
                $('#btnpre').hide();
            }
            
        });
    
    </script>
</div>

<div class="elife-section-footer"></div>