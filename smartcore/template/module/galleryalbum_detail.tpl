<!-- add css libraries-->
<style>
/* Just for the example. Fee free to delete these three lines */
a{color:white;}
.pikachoose {width: 520px; margin: 0 auto;}

/* Style the thumbnails */
.pika-thumbs{ padding: 0 16px; height: 75px; }
.pika-thumbs li{ width: 144px; height:74px; margin: 10px 0 0 17px; padding: 0; overflow: hidden; float: left; list-style-type: none;padding: 3px; margin: 0 5px; background: #fafafa; border: 1px solid #e5e5e5; cursor: pointer;}
.pika-thumbs li .clip {position:relative;height:100%;text-align: center; vertical-align: middle; overflow: hidden;}
	
/* The stage is the wrapper. The image fills 100% the height of the stage */
.pika-stage, .pika-textnav {width: 500px;}
.pika-stage {position: relative; background: #fafafa; border: 1px solid #e5e5e5; padding: 10px 10px 40px 10px; text-align:center; height:250px;}
.pika-stage img{height:100%;}
.pika-stage .caption {position: absolute; background: #000; background: rgba(0,0,0,0.75);  border: 1px solid #141414; font-size: 11px; color: #fafafa; padding: 10px; text-align: right; bottom: 50px; right: 10px;}
.pika-stage .caption p {padding: 0; margin: 0; line-height: 14px;}

/* Ths play, pause, prev and next buttons */
.pika-imgnav a {position: absolute; text-indent: -5000px; display: block;z-index:3;}
.pika-imgnav a.previous {background: url(./fileserver/smartweb_tulap/image/galleryalbum/prev.png) no-repeat left 45%; height: 100%; width: 50px; top: 10px; left: 10px;cursor:pointer;}
.pika-imgnav a.next {background: url(./fileserver/smartweb_tulap/image/galleryalbum/next.png) no-repeat right 45%; height: 100%; width: 50px; top: 10px; right: 10px;cursor:pointer;}
.pika-imgnav a.play {background: url(./fileserver/smartweb_tulap/image/galleryalbum/play.png) no-repeat 0% 50%; height: 100px; width: 44px;top:0;left:50%;display: none;cursor:pointer;}
.pika-imgnav a.pause {background: url(./fileserver/smartweb_tulap/image/galleryalbum/pause.png) no-repeat 0% 50%; height: 100px; width: 44px;top:0;left:50%;display:none;cursor:pointer;}

/* The previous and next textual buttons */
.pika-textnav {overflow: hidden; margin: 10px 0 0 0;bottom:10px; position:absolute;}
.pika-textnav a {font-size: 12px; text-decoration: none; color: #333; padding: 4px;}
.pika-textnav a.previous {float: left; width: auto; display: block;}
.pika-textnav a.next {float: right; width: auto; display: block;}

/*for the tool tips*/
.pika-tooltip{font-size:12px;position:absolute;color:white;padding:3px; background-color: rgba(0,0,0,0.7);border:3px solid black;}
.pika-counter{position: absolute;bottom: 45px;left:15px;color:white;background:rgba(0,0,0,0.7);font-size:11px;padding:3px;-moz-border-radius: 5px;border-radius:5px;}

/* If using user thumbnails there's a pause well the new large image loads. This is the loader for that */		
.pika-loader{ background:url(./fileserver/smartweb_tulap/image/galleryalbum/loading.gif) 3px 3px no-repeat #000; background-color:rgba(0,0,0,0.9); color:white; width:60px; font-size:11px; padding:5px 3px; text-align:right; position:absolute; top:15px; right:15px; }
	
/* jCarousel Styles */
/*if you're not using the carousel you can delete everything below this */
.jcarousel-skin-pika .jcarousel-container-horizontal { padding: 15px 20px; overflow:hidden;}
.jcarousel-skin-pika .jcarousel-clip-horizontal {height: 90px; width: 485px;}
.jcarousel-skin-pika .jcarousel-item-horizontal { margin-right: 10px;}
</style>

<!-- add javascript libraries -->
<?php echo $this->document->addScript("jquery.galleriffic.js"); ?>
<?php echo $this->document->addScript("jquery.pikachoose.full.js"); ?>
<?php echo $this->document->addScript("jquery.jcarousel.js"); ?>
<?php echo $this->document->addScript("jquery.colorbox-min.js"); ?>

<div class="pikachoose">
    <ul id="pikame" class="jcarousel-skin-pika">
        <?php if(count($files)){ foreach($files as $item){ ?>               
        <li>
            <a href='#'>
                <img src="images/resizepng-500x0/<?php echo $item['filepath'] ?>" alt="" />
            </a>
        </li>
        <?php } } ?>
    </ul>
</div>

<!--<div class="jcarousel-skin-pika">
     <ul style='display: none'>
                        
                                <li><a class="group" href='/UserUpload/Products/634866081255781250.jpg'>
                                    <img src='/UserUpload/Products/634866081255781250.jpg'
                                        alt="" />
                                </a></li>
                            
                                <li><a class="group" href='/UserUpload/Products/634866081268593750.jpg'>
                                    <img src='/UserUpload/Products/634866081268593750.jpg'
                                        alt="" />
                                </a></li>
                                </ul>
</div>-->



<script type="text/javascript">
$(document).ready(
	function (){
		$("#pikame").PikaChoose({carousel:true,carouselOptions:{wrap:'circular'}});
});
</script>


<script type="text/javascript">
//$(document).ready(function () {
	//Oct-03-2012 add
	/*$("#pikame").PikaChoose({
		buildFinished: function (self) {
			self.anchor.colorbox({ rel: "group", transition: "fade", title: false });
			$(".group").colorbox({ rel: "group", transition: "fade", title: false });
		},
		carousel: true,
		carouselOptions: { wrap: 'circular' },
		transition: [3]
	});*/

	/*$("#send_mail").click(function () {
		jPrompt('Type something:', 'Prefilled value', 'Prompt Dialog', function (r) {
			if (r) alert('You entered ' + r);
		});
	});
	$(".print").click(function () {
		//var container = $(this).attr('rel');
		$(".pika-stage").printArea();
		//return false;
	});*/
//});
</script>
          
<script type="text/javascript">
/*function mycarousel_initCallback(carousel) {
	// Disable autoscrolling if the user clicks the prev or next button.
	carousel.buttonNext.bind('click', function () {
		carousel.startAuto(0);
	});

	carousel.buttonPrev.bind('click', function () {
		carousel.startAuto(0);
	});

	// Pause autoscrolling if the user moves with the cursor over the clip.
	carousel.clip.hover(function () {
		carousel.stopAuto();
	}, function () {
		carousel.startAuto();
	});
};
*/
/*jQuery(document).ready(function () {
	jQuery('#').jcarousel({
		vertical: true,
		auto: 2,
		scroll: 1,
		wrap: 'circular',
		initCallback: mycarousel_initCallback
	});
});*/
</script> 

<script type="text/javascript">
/*	$(document).ready(function () {
		$(".jcarouse").jCarouselLite({  // Lấy class của ul và gọi hàm jCarouselLite() trong thư viện
			vertical: true, 			// chạy theo chiều dọc
			hoverPause: true, 			// Hover vào nó sẽ dừng lại
			visible: 3, 				// Số bài viết cần hiện
			auto: 700, 					// Tự động scroll
			speed: 1200					// Tốc độ scroll
		});
	})*/;
</script>                    
