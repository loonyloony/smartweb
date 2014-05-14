<!-- HTML TIN TỨC -->
<div class="elife-section-title"><h1><a><?php echo $sitemap ?></a></h1></div>

<div class="elife-section-content">
    <div class="elife-left blog-list">
        <div id="elife-post-contatiner">
        <input type="hidden" id="flag" value="<?php echo $flag?>" />
        <?php 
            if(isset($medias)){ 
                foreach($medias as $item) {
        ?>
        <div class="elife-post">
        	<h3><a class="elife-post-title" href="<?php echo $item['link'] ?>" title="<?php echo $item['title'] ?>"><?php echo $item['title'] ?></a></h3>
            <p class="elife-post-date"><?php echo $item['updateddate'] ?></p>
            <?php if($item['imagepath'] != "") {?>
            <img class="elife-post-image" src="images/resizepng-700x0/<?php echo $item['imagepath'] ?>" alt="<?php echo $item['title'] ?>" />
            <?php } else {
            	echo "<p></p>";
           	} ?>
            <div>
                
                <p class="elife-post-summary">
                    <?php echo $item['summary'] ?>
                </p>
                
            </div>
            <div class="clearer">&nbsp;</div>
            <div class="elife-left elife-post-social">
            <!-- Social -->
			<script type="text/javascript" src="http://platform.twitter.com/widgets.js"></script>
            <script type="text/javascript" src="https://apis.google.com/js/plusone.js"></script>
            <!-- Make Social Buttons Load in Ajax -->
            <script type="text/javascript">
                jQuery(document).ajaxComplete(function($) {
                    gapi.plusone.go();
                    twttr.widgets.load();
                    try {
                        FB.XFBML.parse();
                    }catch(ex){}
                });
            </script>
            <!-- Social -->
            <div id="fb-root"></div>
            <script>(function(d, s, id) {
              var js, fjs = d.getElementsByTagName(s)[0];
              if (d.getElementById(id)) return;
              js = d.createElement(s); js.id = id;
							js.async=true;
              js.src = "//connect.facebook.net/en_US/all.js#xfbml=1&appId=246727095428680";
              fjs.parentNode.insertBefore(js, fjs);
            }(document, 'script', 'facebook-jssdk'));
            </script>
            <div class="like_btn">
                <div class="fb-like" href="<?php echo $item['link'] ?>" data-send="false" data-layout="button_count" data-width="100" data-show-faces="false"></div>
            </div>
            <div class="tweet_btn">
                <a href="http://twitter.com/share" class="twitter-share-button"
                data-url="<?php echo $item['link'] ?>"
                data-via="organicthemes"
                data-text="The Current State Of The Music Industry"
                data-related=""
                data-count="horizontal">Tweet</a>
            </div>
            <div class="plus_btn">
                <g:plusone size="medium" href="<?php echo $item['link'] ?>"></g:plusone>
            </div>
            <div class="clearer">&nbsp;</div>
            </div>
            <div class="elife-right"><b><a title="<?php echo $item['title'] ?>" href="<?php echo $item['link'] ?>"><?php echo ($this->config->get('config_languageid') == 'vn')?'Xem chi tiết' : 'View detail' ?></a></b></div>
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
             <a style="display:none" id="btnpre"><?php echo ($this->config->get('config_languageid') == 'vn')?'Trở về' : 'Previous' ?></a>
             <?php if($flag == "true"){?>
             <a id="btnnext"><?php echo ($this->config->get('config_languageid') == 'vn')?'Xem tiếp' : 'Next' ?></a>
             <?php } ?>
            
            <div class="clearer">&nbsp;</div>
        </div>
        <?php 
        	$route = "?route=module/blog/getListPage";
            if($this->request->get['tag'] != '')
            	$route .= "&tag=".$this->request->get['tag'];
            if($this->request->get['date'] != '')
            	$route .= "&date=".$this->request->get['date'];
        ?>
        <script language="javascript">
            var from=parseInt("<?php echo $from ?>");
            
            var row=parseInt("<?php echo $rows ?>");
            var to=parseInt("<?php echo $to ?>");
            
            $('#btnnext').click(function(){
                var flag=$('#flag').val();
                if(flag=="true"){		
                    from +=10;
                    var mediaid="<?php echo $mediaid ?>";
                    var url="<?php echo $route ?>";
                    
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
                    from -=10;
                    var mediaid="<?php echo $mediaid ?>";
                    var url="?route=module/blog/getListPage";
                    
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
    <?php
        $pageURL = 'http';
        if ($_SERVER["HTTPS"] == "on") {$pageURL .= "s";}
        $pageURL .= "://";
        if ($_SERVER["SERVER_PORT"] != "80") {
        	$pageURL .= $_SERVER["SERVER_NAME"].":".$_SERVER["SERVER_PORT"].$_SERVER["REQUEST_URI"];
        } else {
            $pageURL .= $_SERVER["SERVER_NAME"].$_SERVER["REQUEST_URI"];
        }
        $vars = parse_url($pageURL);
        parse_str($vars['query'], $query);
        unset($query['tag']);
        unset($query['date']);
        $vars['query'] = http_build_query($query);
        $urlnofilter = $vars['scheme']."://".$vars['host'].":".$vars['port'].$vars['path'];
        if ($vars['query']) $urlnofilter .= "?".$vars['query']."&";
        	else
        $urlnofilter .= "?";
        
    ?>
    <div class="elife-right blog-nav">
    	<h2>Chủ đề</h2>
        <div class="tag-list">
        	<ul>
            	<?php 
                if (count($tags) != 0) {
                	foreach ($tags as $item) {
                ?> 
                <li><a href="<?php echo $urlnofilter.'tag='.$item['key'] ?>" ><?php echo $item['key'] ?> (<?php echo $item['count']?>)</a></li>
                <?php }} ?>
            </ul>
        </div>
        <h2>Theo thời gian</h2>
        <div class="tag-list">
        	<?php if(count($listmonth) != 0) {
            echo "<ul>";	
            foreach ($listmonth as $item){ ?>
            	<li><a href="<?php echo $urlnofilter.'date='.$item ?>">Tháng <?php echo $item ?></a></li>
            
            <?php }
            echo "</ul>";
            } ?>
        </div>
    </div>
    <div class="clearer"></div>
</div>

<div class="elife-section-footer"></div>