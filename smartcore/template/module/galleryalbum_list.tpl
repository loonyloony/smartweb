<div class="elife-section-title"><h1><a><?php echo $sitemap ?></a><span class="elife-product-count">(<?php echo $count ?> items)</span></h1></div>
<div class="elife-section-content elife-product">

    <div class="elife-hline"></div>

    <?php if(count($galleryalbum) > 0){ foreach($galleryalbum as $item){ ?>
   	<div class='gallery_album'>
		<!-- image -->
		<a href="<?php echo $item['link'] ?>"><img src="images/fixsize-250x200/<?php echo $item['imagepath'] ?>" /></a>
		<!-- album_title div -->
		<div class='album_title'>
			<!-- album_title content -->
			<div class='album_title_content'><a href="<?php echo $item['link'] ?>"><?php echo $item['title'] ?></a></div>
			<!-- end album_title content -->
		</div>
		<!-- end album_title div -->
	</div>
    <?php } } ?>

</div>
<div class="elife-section-footer"></div>

<style>
div.gallery_album{
	position:relative;	
}

div.album_title{
	background-color: black;
    bottom: 0;
    color: white;
    font-family: 'tahoma';
    font-size: 15px;
    left: 0;
    position: absolute;	
}

div.album_title_content{
	padding:10px;
	display:none;	
}

div.album_title_content a{
	color:white;
}

.gallery_album{
	float:left;
	margin-right:15px;
}
</style>

<script type="text/javascript">
$(window).load(function(){
	//for each album_title div...
	$('div.album_title').each(function(){
		//...set the opacity to 0...
		$(this).css('opacity', 0);
		//..set width same as the image...
		$(this).css('width', $(this).siblings('img').width());
		//...get the parent (the gallery_album) and set it's width same as the image width... '
		$(this).parent().css('width', $(this).siblings('img').width());
		//...set the display to block
		$(this).css('display', 'block');
	});
	
	$('div.gallery_album').hover(function(){
		//when mouse hover over the gallery_album div
		//get it's children elements with class descriptio
		//and show it using fadeTo
		$(this).children('.album_title').children('.album_title_content').css('display', 'block');
		$(this).children('.album_title').stop().fadeTo(100, 0.7);
	},function(){
		//when mouse out of the gallery_album div
		//use fadeTo to hide the div
		$(this).children('.album_title').stop().fadeTo(500, 0);
	});
	
}); 
</script>