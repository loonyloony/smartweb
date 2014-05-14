<div class="elife-section-title"><h1><a><?php echo $sitemap ?></a></h1></div>

<div class="elife-section-content">
    <div>
        <h1><?php echo $message_result_search ?></h1>
        <span>
        <?php
            if (isset($empty_key)) {
                echo $empty_key;
            } else {
                if(isset($results)){
                    echo sprintf($message_search_result_success, $totalrow) . "&nbsp;<b>".$key."</b>";
                }
            }
        ?>
        </span>
    </div>
    <div class="elife-item-line"></div>
    <div id="elife-post-contatiner">
    <input type="hidden" id="flag" value="<?php echo $flag?>" />
    <?php 
        if(isset($results)){ 
            foreach($results as $item) {
    ?>
    <div class="elife-post">
        <?php if($item['imagepath'] != "") {?>
        <a href="<?php echo $item['link'] ?>">
        	<img class="elife-post-image" src="images/resizepng-100x0/<?php echo $item['imagepath'] ?>" alt="<?php echo $item['title'] ?>" />
        </a>
        <?php } ?>
        <div>
            <h3><a class="elife-post-title" href="<?php echo $item['link'] ?>" title="<?php echo $item['title'] ?>"><?php echo $item['title'] ?></a></h3>
            <p class="elife-post-date"><?php echo $item['updateddate'] ?></p>
            <div class="elife-post-summary">
                <?php echo $this->string->getTextLength($item['summary'], 0, 60) . "..." ?>
            </div>
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
         <a style="display:none" id="btnpre" class="elife-button"><?php echo $text_previous ?></a>
         <?php if($flag == "true"){?>
         <a id="btnnext" class="elife-button"><?php echo $text_next ?></a>
         <?php } ?>
        
        <div class="clearer">&nbsp;</div>
    </div>
    
    <script language="javascript">
        var from=parseInt("<?php echo $from ?>");
        var totalrow=parseInt("<?php echo $totalrow ?>");
        var to=parseInt("<?php echo $to ?>");
        var key = "<?php echo $key ?>"; 
        
        $('#btnnext').click(function(){
            
            var flag=$('#flag').val();
            if(flag=="true"){       
                from +=5;
                to += 5;
                var url="<?php echo ROOT_HTTP_SERVER?>?route=module/advancesearch/getListPage";
                $.post(url,{from:from,to:to,totalrow:totalrow,key:key},function(data){
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
            if(from > 0){        
                from -=5;
                to -= 5;
                var url="<?php echo ROOT_HTTP_SERVER?>?route=module/advancesearch/getListPage";
                $.post(url,{from:from,to:to,totalrow:totalrow,key:key},function(data){
                    $('#elife-post-contatiner').html();
                    $('#elife-post-contatiner').slideUp();
                    $('#elife-post-contatiner').html(data).slideDown();
                    
                });
                
                $('#btnnext').show();
                $('#flag').val("true");
                if (from < 5) {
                    $('#btnpre').hide();
                }
            } else {
                $('#btnpre').hide();
            }
            
        });
    
    </script>
</div>

<div class="elife-section-footer"></div>