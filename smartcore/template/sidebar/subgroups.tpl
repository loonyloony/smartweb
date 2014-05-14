<?php $this->document->addStyle("sub-menu.css"); ?>
<?php 
if ($this->smartweb->sitemap["moduleid"] == "module/group" || $this->smartweb->sitemap["moduleid"] == "module/product" || $this->smartweb->sitemap["moduleid"] == "module/groupsitemap" || $this->smartweb->sitemap["moduleid"] == "module/searchproduct" || $this->smartweb->sitemap["moduleid"] == "module/news") {
	 

?>

<p style="font-weight:bold">Search</p>                  
<input type="text" id="searchKeyword" name="keyword" value="" placeholder="Enter your keywords..." style="padding: 5px; width: 140px; border-radius: 5px; border:1px solid #000;">

<p style="font-weight:bold; margin-top:10px;">Manufacturer</p>
<select id="manufacid" style="width: 153px; padding: 5px; box-shadow: 2px 2px #ccc; border-radius: 5px; margin-bottom:15px;">
	<option value="">Choose Manufacturer</option>
	<?php if($arrmanu != '') { 
		foreach($arrmanu as $item){
	?>
	<option value="<?php echo $item['name']; ?>"><?php echo $item['name']; ?></option>
	<?php } }?>
	
</select>

	<a class="elife-button btnSearchProduct">Search</a>

<?php if ($menus != "") { ?>
<div id="sub-title">
	<div class="elife-wrapper">
    	<?php echo $sub_title ?>
    </div>
</div>
<ul id="sub-menu">
	<?php echo $menus?>
</ul>
<div class="clearer">&nbsp;</div>
<?php } } ?>

<script language="javascript">

$(".btnSearchProduct").click(function(){
	var keyword = $("#searchKeyword").val();
	lang = "<?php echo $this->request->get['lang'] ?>";
	var manufacid = $("#manufacid").val();
	
	if(lang == 'vi')
	{
		url = "tim-kiem-san-pham.html"
		if(keyword != "")
		{
			url += "?keyword=" + keyword;
			
			if(manufacid != "")
			{
			
				url += "&manufacid=" + manufacid;
			}
		} else {
		
			if(manufacid != "")
			{
			
				url += "?manufacid=" + manufacid;
			}
		
		}
		window.location.href=url;
	} else {
		url = "product-search.html"
		if(keyword != "")
		{
			url += "?keyword=" + keyword;
			
			if(manufacid != "")
			{
			
				url += "&manufacid=" + manufacid;
			}
		} else {
		
			if(manufacid != "")
			{
			
				url += "?manufacid=" + manufacid;
			}
		
		}
		window.location.href=url;
		
	}
	
	
	
	

});

</script>
