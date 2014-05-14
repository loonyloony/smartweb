<?php	
	$this->document->addScript("jquery-ui-sgp.js");
    $this->document->addStyle("jquery-ui-sgp.css");    
?>
<?php if($search == "true"){ ?>
	<div id="search-result">
	<h1 class="search-title-result">Search for <?php echo $_GET['feature'] ?> found:&nbsp;<?php echo ($count > 0)? $count : '0';?> Room(s)</h1>
		
        <div id="tabs">
		  <ul id="tabs-featured">
			<li id="tabs1"><a href="#tabs-1">List View</a></li>
			<li id="tabs2"><a href="#tabs-2">Photo View</a></li>  
		  </ul>		 
		  <div id="tabs-1">		  
            <table class="item result">
			<tr>		 
				<th style="color:#fff; width:122px;">
					Image
				</th>
				<th style="color:#fff; width:112px;">
					Ad Title
				</th>
				<th class="mobile-property">
					<select class="propertytype-search property-search">
						<option value="all">Property Type</option>
						<?php echo $cbpropertytype ?>
					</select>
				 </th>
				<th class="mobile-zonename">
					<select class="district-search property-search">
						<option value="all">District</option>
						<?php echo $cbdistrict ?>
					</select>
				</th>
				 <th class="mobile-roomtype">
					<select class="roomtype-search property-search">
						<option value="all">Room Type</option>
						<?php echo $cbroomtype ?>
					</select>
				</th>
				 <th>
					<select class="price-search property-search">
						<option value="all">Price</option>
						 <?php if(count($cbprice) > 0) { foreach ($cbprice as $item) { ?>
						<option value="<?php echo $item ?>">S$ <?php echo $this->string->numberFormate($item) ?></option>
						<?php } } ?>
				   </select>
				</th>
				<th class="mobile-size">
					<select class="size-search property-search">
						<option value="all">Size</option>
						<?php if(count($cbsize) > 0) { foreach($cbsize as $key => $item) { ?>
						<option value="<?php echo $key ?>"><?php echo $key ?> sqft (<?php echo $item ?>)</option>
						<?php } } ?>
					</select>
				</th>
		    </tr>
            <?php $indexProductListView = 0;?>
            <?php if(count($products) > 0) { foreach($products as $item) { ?>
            	<?php if($indexProductListView % 2 == 0) { ?>
                	<tr class="search-item-odd">
                <?php } else {?>
                	<tr class="search-item-even">
                <?php } ?>
                    <td>
                    	<a href="<?php echo $item['link'] ?>">
                        	<?php if($item['image'] == "") { ?>
                    		<img width="100" height="73" class="item-img" src="<?php echo DIR_IMAGE ?>NoImage.png">
                            <?php } else { ?>
                            <img width="100" height="73" class="item-img" src="images/fixsize-100x73/<?php echo $item['image'] ?>">
                            <?php } ?>
                        </a>
                    </td>
                    <td style="text-align: left;">
                        <p class="item-title"><a href="<?php echo $item['link'] ?>"><?php echo $item['name'] ?></a></p>
					</td>
					<td class="mobile-property">
						 <?php echo $item['propertytypename'] ?>
					</td>
					<td class="mobile-zonename">
						<?php echo $item['zonename'] ?>
					</td>
					<td class="mobile-roomtype">
						<?php echo $item['roomtypename'] ?>
					</td>
					<td>
                    	<?php if($item['price'] > 0) {?>
							S$ <?php echo $this->string->numberFormate($item['price']) ?>
                        <?php } else { ?>
                        	Call
                        <?php }?>
					</td>
					<td class="mobile-size">
						<?php echo $item['length'] ?> sqft
					</td>              
                </tr>   
                <?php $indexProductListView++?>         
            <?php } } ?>
            	<tr><td colspan="7"><div class="paginationproduct"><?php echo $paginationDisplay ?><div class="clearer"></div></div></td></tr>
            </table>
            
		  </div>
		  <div id="tabs-2">		   			
			<div class="photo-view elife-left">
            	<div class="elife-wrapper" >    
				 <?php if(count($products) > 0) { foreach($products as $item) { ?> 	
					<div class="item-photo-view">
						<a href="<?php echo $item['link'] ?>">
                        <?php if($item['image'] == "") { ?>
                        <img width="180" height="135" class="item-img" src="<?php echo DIR_IMAGE ?>NoImage.png">
                        <?php } else { ?>
                        <img width="180" height="135" class="item-img" src="images/fixsize-180x135/<?php echo $item['image'] ?>">
                        <?php } ?>
                        </a>
						<p class="item-search-price"><span class="item-price-bold">
                        	<?php if($item['price'] > 0) {?>
                        		S$ <?php echo $this->string->numberFormate($item['price']) ?></span>&nbsp;/month
                            <?php } else { ?>
                            	Call
                            <?php } ?>
                        </p>
						<p class="item-title"><a href="<?php echo $item['link'] ?>"><?php echo $item['location'] ?></a></p>	
					</div>
				  <?php } } ?>            
                	<div class="clearer"></div>
                	<div class="paginationproduct" id="pag2"><?php echo $paginationDisplay ?><div class="clearer"></div></div>
                    </div>
				</div>
                
				<div class="content-right elife-right">
					<div class="refine-search">
						<p class="title-refine">REFINE YOUR SEARCH</p>
						<p>Property Type</p>					
						<select class="property-search repropertytype-search">
							<option value="all">All Types</option>
							<?php echo $cbpropertytype ?>		 
					    </select>
						<p>District</p>					
						<select class="property-search redistrict-search">
							<option value="all">All Types</option>
							<?php echo $cbdistrict ?>		 
					    </select>
						<p>Room Type</p>					
						<select class="property-search reroomtype-search">
							<option value="all">All Types</option>
							<?php echo $cbroomtype ?>		 
					    </select>
						<p>Price</p>					
						<select class="property-search reprice-search">
							<option value="all">Min Price</option>
							 <?php if(count($cbprice) > 0) { foreach ($cbprice as $item) { ?>
							<option value="<?php echo $item ?>">S$ <?php echo $this->string->numberFormate($item) ?></option>
							<?php } } ?>		 
					    </select>
						<select class="property-search remaxprice-search">
							<option value="all">Max Price</option>
							 <?php if(count($cbprice) > 0) { foreach ($cbprice as $item) { ?>
							<option value="<?php echo $item ?>">S$ <?php echo $this->string->numberFormate($item) ?></option>
							<?php } } ?>		 
					    </select>
						<p>Size (sq.ft.)</p>					
						<select class="property-search resize-search">
							<option value="all">Min</option>
							<?php if(count($cbsize) > 0) { foreach($cbsize as $key => $item) { ?>
							<option value="<?php echo $key ?>"><?php echo $key ?> sqft (<?php echo $item ?>)</option>
							<?php } } ?>		 
					    </select>
						<select class="property-search remaxsize-search">
							<option value="all">Max</option>
							<?php if(count($cbsize) > 0) { foreach($cbsize as $key => $item) { ?>
							<option value="<?php echo $key ?>"><?php echo $key ?> sqft (<?php echo $item ?>)</option>
							<?php } } ?>	 
					    </select>
                        <p class="elife-text-center">	
							<a id="bt-refine">Refine</a>
                        </p>
				  </div>
				</div>
				<div class="clearer"></div>
               				
		  </div> 
		</div>
	</div>
<?php } else{?>
<div id="search">
	<div id="search-above">
		<p><input type="text" name="enter-keyword" class="enter-keyword" id="keyword-search" placeholder="Enter Keyword"></p>
        <div class="elife-left mg">
            <p class="search-title">Property Type</p>
            <select id="propertytype-search" class="property-search">
                <option value="all">All Types</option>
                <?php echo $cbpropertytype ?>		 
            </select>
            
            <p class="search-title">Price</p>
            <select id="price-search" class="property-search">
                <option value="all">All Price</option>
                <?php if(count($cbprice) > 0) { foreach ($cbprice as $item) { ?>
                <option value="<?php echo $item ?>">S$ <?php echo $this->string->numberFormate($item) ?></option>
                <?php } } ?>
            </select>				
        </div>
		<div class="elife-left mg">
			<p class="search-title">District</p>
				<select id="district-search" class="property-search">
				  <option value="all">All District</option>
				  <?php echo $cbdistrict ?>		 
				</select>
			<p class="search-title">Size</p>
				<select id="size-search" class="property-search">
				  <option value="all">All Size</option>
				  <?php if(count($cbsize) > 0) { foreach($cbsize as $key => $item) { ?>
				  <option value="<?php echo $key ?>"><?php echo $key ?> sqft (<?php echo $item ?>)</option>
                  <?php } } ?>
				</select>				
		</div>
		<div class="elife-left mg-last">
			<p class="search-title-listing">Listing For</p>
				<div id="radio-search">
					<input class="radio-bt" type="radio" name="feature" value="rent" checked="checked"> For Rent
					&nbsp;&nbsp;&nbsp;
					<input class="radio-bt" type="radio" name="feature" value="sale"> For Sale
				</div>
			<p class="search-title">Room Type</p>
				<select class="property-search" id="roomtype-search">
				  <option value="all">All</option>
				  <?php echo $cbroomtype ?>	 
				</select>				
		</div>
		<div class="clearer"></div>
		<a href="#"><div class="bt-search" id="btnsearch">SEARCH</div></a>
	</div>
</div>

<!-- tabs -->
<div id="tabs">
    <ul id="tabs-featured">
        <li id="tabs1" class="tab-web"><a href="#tabs-1">Featured Listings for Rent</a></li>
        <li id="tabs2" class="tab-web"><a href="#tabs-2">Featured Listings for Sales</a></li> 
		<li id="tabs1" class="tab-mobile"><a href="#tabs-1">Rent</a></li>
        <li id="tabs2" class="tab-mobile"><a href="#tabs-2">Sales</a></li>		
    </ul>	
    <div id="tabs-1">

	<?php if(count($products['rent']) > 0) { foreach($products['rent'] as $item) { ?>
		<table class="item">
			<tr>
				<td class="td-img" style="width:180px;"><a href="<?php echo $item['link'] ?>">
                    <?php if($item['image'] == "") { ?>
                    <img width="158" height="115" class="item-img" src="<?php echo DIR_IMAGE ?>NoImage.png">
                    <?php } else { ?>
                    <img width="158" height="115" class="item-img" src="images/fixsize-158x115/<?php echo $item['image'] ?>">
                    <?php } ?>
                </a></td>			
				<td class="td-width" style="padding-right:20px;">
					<p class="item-title"><a href="<?php echo $item['link'] ?>"><?php echo $item['name'] ?></a></p>
					<p style="margin-bottom:5px;"><?php echo $item['location'] ?></p>				
					<p>Property type: <?php echo $item['propertytypename'] ?></p>
					<p>District: <?php echo $item['zonename'] ?></p>
					<p>Room type: <?php echo $item['roomtypename'] ?></p>
					<p>Size: <?php echo $item['length'] ?> sqft</p>
				</td>

				<td class="td-more" style="text-align:right; padding-right:15px;">
				<td style="text-align:right; padding-right:10px;">
					<p class="item-title">Singapore</p>
					<p class="item-price">
                    	<?php if($item['price'] > 0) {?>
                    		S$ <?php echo $this->string->numberFormate($item['price']) ?>
                        <?php } else { ?>
                        	Call
                        <?php }?>
                    </p>
					<a href="<?php echo $item['link'] ?>"><img class="more" src="<?php echo DIR_IMAGE?>more.png"></a>
				</td>
			</tr>
		</table>			
	<?php } } ?>       
    </div>    
    <div id="tabs-2">
        <?php if(count($products['sale']) > 0) { foreach($products['sale'] as $item) { ?>
           <table class="item">
			<tr>
				<td class="td-img" style="width:180px;"><a href="<?php echo $item['link'] ?>">
                <?php if($item['image'] == "") { ?>
                <img width="158" height="115" class="item-img" src="<?php echo DIR_IMAGE ?>NoImage.png">
                <?php } else { ?>
                <img width="158" height="115" class="item-img" src="images/fixsize-158x115/<?php echo $item['image'] ?>">
                <?php } ?>
                
                </a></td>			
				<td class="td-width" style="padding-right:20px;">
					<p class="item-title"><a href="<?php echo $item['link'] ?>"><?php echo $item['name'] ?></a></p>
					<p style="margin-bottom:5px;"><?php echo $item['location'] ?></p>				
					<p>Property type: <?php echo $item['propertytypename'] ?></p>
					<p>District: <?php echo $item['zonename'] ?></p>
					<p>Room type: <?php echo $item['roomtypename'] ?></p>
					<p>Size: <?php echo $item['length'] ?> sqft</p>
				</td>
				<td class="td-more" style="text-align:right; padding-right:15px;">
					<p class="item-title">Singapore</p>
					<p class="item-price">
                    	<?php if($item['price'] > 0) {?>
                    		S$ <?php echo $this->string->numberFormate($item['price']) ?>
                        <?php } else { ?>
                        	Call
                        <?php } ?>
                    </p>
					<a href="<?php echo $item['link'] ?>"><img class="more" src="<?php echo DIR_IMAGE?>more.png"></a>
				</td>
			</tr>
		</table>		
        <?php } } ?>
    </div> 
</div>
<?php } ?>


<script>	
	$(window).resize(function(){
		var width = $(window).width();
		var count = "<?php echo count($products) ?>";		
		
		if(width > 767){			
			$("#tabs").tabs({active: 0});
			$("#elife-navigation").css("cssText","display:block !important");
		}else{
		
			$("#tabs").tabs({active: 2});			
			$("#elife-navigation").css("cssText","display:none");
			
		}
	});
	$(document).ready(function(){
	//mobile
		var width = $(window).width(); 	
		var count = "<?php echo count($products) ?>";
		var search = "<?php echo $_GET['search'] ?>";
		
		if(width < 767){			
			
				$("#tabs").tabs({active: 2});
				
		}
		else{
			$("#tabs").tabs({active: 0});			
		}
	
		var tab = "<?php echo $_GET['tab'] ?>";
		if(tab == "2")
		{
			$("#tabs").tabs({active: 1});
		} else {
			$("#tabs").tabs();	
		}	
		
		
		$("#pag2 li>a").each(function(index, element) {
			if(typeof $(this).prop('href') !== undefined && $(this).prop('href') != "")
			{
				tablink = $(this).prop('href') + "&tab=2";
				$(this).prop('href', tablink);
			}
        });
	});
	
	$("#bt-refine").click(function(){
		var url = "";
		var keyword = "<?php echo $_GET['keyword'] ?>";
		/*var page = "<?php echo $_GET['page'] ?>";
		if($.trim(page) != ""){
			url += "&page=" + page;	
		}*/
		
		if($.trim(keyword) != ""){
			url += "&keyword=" + keyword;
		}
		if($(".repropertytype-search").val() != "all")
		{
			url += "&propertytype="	+ $(".repropertytype-search").val();
		}
		if($(".redistrict-search").val() != "all")
		{
			url += "&district="	+ $(".redistrict-search").val();
		}
		if($(".reroomtype-search").val() != "all")
		{
			url += "&roomtype="	+ $(".reroomtype-search").val();
		}
		if($(".reprice-search").val() != "all")
		{
			url += "&price=" + $(".reprice-search").val();
		}
		if($(".remaxprice-search").val() != "all")
		{
			url += "&maxprice="	 + $(".remaxprice-search").val();
		}
		if($(".resize-search").val() != "all")
		{
			url += "&size=" + $(".resize-search").val();
		}
		if($(".remaxsize-search").val() != "all")
		{
			url += "&maxsize="	 + $(".remaxsize-search").val();
		}
		
		url = "search.html?search=true&tab=2&feature=<?php echo $_GET['feature'] ?>" + url;
		window.location.href = url;
	});
	
	$("#btnsearch").click(function(){
		var url="";
		
		$(".radio-bt").each(function(){
			if($(this).is(':checked')){
				url += 	"&feature=" + $(this).val();
			}
		});
		
		/*var page = "<?php echo $_GET['page'] ?>";
		if($.trim(page) != ""){
			url += "&page=" + page;	
		}*/
		
		if($("#keyword-search").val() != "Enter Keyword" && $.trim($("#keyword-search").val()) != "")
		{
			url += 	"&keyword=" + $("#keyword-search").val();
		}
		
		if($("#propertytype-search").val() != "all")
		{
			url += 	"&propertytype=" + $("#propertytype-search").val();
		}
		
		if($("#district-search").val() != "all")
		{
			url += "&district="	+ $("#district-search").val();
		}
		
		if($("#price-search").val() != "all")
		{
			url += "&price=" + $("#price-search").val();
		}
		
		if($("#size-search").val() != "all")
		{
			url += "&size=" + $("#size-search").val();
		}

		if($("#roomtype-search").val() != "all")
		{
			url += "&roomtype=" + $("#roomtype-search").val();
		}
		
		if(url != "")
		{
			url = "search.html?search=true" + url;
			window.location.href = url;
		}
	});
	
	$(".propertytype-search").val("<?php echo $_GET['propertytype'] ?>");
	$(".price-search").val("<?php echo $_GET['price'] ?>");
	$(".size-search").val("<?php echo urldecode($_GET['size']) ?>");
	$(".roomtype-search").val("<?php echo $_GET['roomtype'] ?>");
	$(".district-search").val("<?php echo $_GET['district'] ?>");
	$("#district-search").val("<?php echo $_GET['district'] ?>");
	
	//refine
	$(".repropertytype-search").val("<?php echo $_GET['propertytype'] ?>");
	$(".reprice-search").val("<?php echo $_GET['price'] ?>");
	$(".remaxprice-search").val("<?php echo $_GET['maxprice'] ?>");
	$(".resize-search").val("<?php echo urldecode($_GET['size']) ?>");
	$(".remaxsize-search").val("<?php echo urldecode($_GET['maxsize']) ?>");
	$(".reroomtype-search").val("<?php echo $_GET['roomtype'] ?>");
	$(".redistrict-search").val("<?php echo $_GET['district'] ?>");
	
	$(".propertytype-search").change(function(){
		var url = "";
		
		var feature = "<?php echo $_GET['feature'] ?>";
		var keyword = "<?php echo $_GET['keyword'] ?>";
		/*var page = "<?php echo $_GET['page'] ?>";
		if($.trim(page) != ""){
			url += "&page=" + page;	
		}*/
		if(keyword != ""){
			url += "&keyword=" + keyword;	
		}
		if($(".district-search").val() != "all")
		{
			url += "&district="	+ $(".district-search").val();
		}
		
		if($(".size-search").val() != "all")
		{
			url += "&size=" + $(".size-search").val();
		}

		if($(".roomtype-search").val() != "all")
		{
			url += "&roomtype=" + $(".roomtype-search").val();
		}
		if($(".price-search").val() != "all")
		{
			url += "&price=" + $(".price-search").val();
		}
		if($(".propertytype-search").val() != "all")
		{
			url += "&propertytype=" + $(".propertytype-search").val();
		}
		
		url = "search.html?search=true&feature=" + feature + url;
		window.location.href = url;
		
	});
	
	$(".price-search").change(function(){
		var url = "";
		
		var feature = "<?php echo $_GET['feature'] ?>";
		var keyword = "<?php echo $_GET['keyword'] ?>";
		/*var page = "<?php echo $_GET['page'] ?>";
		if($.trim(page) != ""){
			url += "&page=" + page;	
		}*/
		if(keyword != ""){
			url += "&keyword=" + keyword;	
		}
		if($(".district-search").val() != "all")
		{
			url += "&district="	+ $(".district-search").val();
		}
		
		if($(".size-search").val() != "all")
		{
			url += "&size=" + $(".size-search").val();
		}

		if($(".roomtype-search").val() != "all")
		{
			url += "&roomtype=" + $(".roomtype-search").val();
		}
		if($(".price-search").val() != "all")
		{
			url += "&price=" + $(".price-search").val();
		}
		if($(".propertytype-search").val() != "all")
		{
			url += "&propertytype=" + $(".propertytype-search").val();
		}
		
		url = "search.html?search=true&feature=" + feature + url;
		window.location.href = url;
		
		
	});
	
	$(".district-search").change(function(){
		var url = "";
		
		var feature = "<?php echo $_GET['feature'] ?>";
		var keyword = "<?php echo $_GET['keyword'] ?>";
		/*var page = "<?php echo $_GET['page'] ?>";
		if($.trim(page) != ""){
			url += "&page=" + page;	
		}*/
		if(keyword != ""){
			url += "&keyword=" + keyword;	
		}
		if($(".district-search").val() != "all")
		{
			url += "&district="	+ $(".district-search").val();
		}
		
		if($(".size-search").val() != "all")
		{
			url += "&size=" + $(".size-search").val();
		}

		if($(".roomtype-search").val() != "all")
		{
			url += "&roomtype=" + $(".roomtype-search").val();
		}
		if($(".price-search").val() != "all")
		{
			url += "&price=" + $(".price-search").val();
		}
		if($(".propertytype-search").val() != "all")
		{
			url += "&propertytype=" + $(".propertytype-search").val();
		}

		url = "search.html?search=true&feature=" + feature + url;
		window.location.href = url;
		
	});
	
	$(".price-search").change(function(){
		var url = "";
		
		var feature = "<?php echo $_GET['feature'] ?>";
		var keyword = "<?php echo $_GET['keyword'] ?>";
		/*var page = "<?php echo $_GET['page'] ?>";
		if($.trim(page) != ""){
			url += "&page=" + page;	
		}*/
		if(keyword != ""){
			url += "&keyword=" + keyword;	
		}
		if($(".district-search").val() != "all")
		{
			url += "&district="	+ $(".district-search").val();
		}
		
		if($(".size-search").val() != "all")
		{
			url += "&size=" + $(".size-search").val();
		}

		if($(".roomtype-search").val() != "all")
		{
			url += "&roomtype=" + $(".roomtype-search").val();
		}
		if($(".price-search").val() != "all")
		{
			url += "&price=" + $(".price-search").val();
		}
		if($(".propertytype-search").val() != "all")
		{
			url += "&propertytype=" + $(".propertytype-search").val();
		}

		url = "search.html?search=true&feature=" + feature + url;
		window.location.href = url;
		
	});
	
	$(".size-search").change(function(){
		var url = "";
		
		var feature = "<?php echo $_GET['feature'] ?>";
		var keyword = "<?php echo $_GET['keyword'] ?>";
		/*var page = "<?php echo $_GET['page'] ?>";
		if($.trim(page) != ""){
			url += "&page=" + page;	
		}*/
		if(keyword != ""){
			url += "&keyword=" + keyword;	
		}
		if($(".district-search").val() != "all")
		{
			url += "&district="	+ $(".district-search").val();
		}
		
		if($(".size-search").val() != "all")
		{
			url += "&size=" + $(".size-search").val();
		}

		if($(".roomtype-search").val() != "all")
		{
			url += "&roomtype=" + $(".roomtype-search").val();
		}
		if($(".price-search").val() != "all")
		{
			url += "&price=" + $(".price-search").val();
		}
		if($(".propertytype-search").val() != "all")
		{
			url += "&propertytype=" + $(".propertytype-search").val();
		}
		
		url = "search.html?search=true&feature=" + feature + url;
		window.location.href = url;
		
	});
	
	$(".roomtype-search").change(function(){
		var url = "";
		
		var feature = "<?php echo $_GET['feature'] ?>";
		var keyword = "<?php echo $_GET['keyword'] ?>";
		/*var page = "<?php echo $_GET['page'] ?>";
		if($.trim(page) != ""){
			url += "&page=" + page;	
		}*/
		if(keyword != ""){
			url += "&keyword=" + keyword;	
		}
		if($(".district-search").val() != "all")
		{
			url += "&district="	+ $(".district-search").val();
		}
		
		if($(".size-search").val() != "all")
		{
			url += "&size=" + $(".size-search").val();
		}

		if($(".roomtype-search").val() != "all")
		{
			url += "&roomtype=" + $(".roomtype-search").val();
		}
		if($(".price-search").val() != "all")
		{
			url += "&price=" + $(".price-search").val();
		}
		if($(".propertytype-search").val() != "all")
		{
			url += "&propertytype=" + $(".propertytype-search").val();
		}

		url = "search.html?search=true&feature=" + feature + url;
		window.location.href = url;
		
	});
</script>