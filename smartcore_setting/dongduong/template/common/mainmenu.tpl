<div id="elife-menu">
    <ul>
        <?php echo $mainmenu?>
    </ul>
    <div class="clearer">&nbsp;</div>
    <!--<div class="pop-img">
    	<div class="more-pop-img"></div>
    </div>-->

    <div id="menuSearch">
    <form method="get" action="<?php echo ROOT_HTTP_SERVER . $this->request->get[lang] . "/" ?><?php echo ($this->request->get[lang] == 'vi') ? 'tim-kiem.html' : 'search.html' ?>">
    	<input type="text" value="<?php echo ($this->request->get[lang] == 'vi' || $this->request->get[lang] == '') ? ' Tìm kiếm tin tức' : ' Search news' ?>" id="search-box-head" name="key" size="15" autocomplete="off" style="outline: none;">
        <input type="submit" id="search-submit-head" value="">
    </form>
    </div>
</div>

<script language="javascript">
/*	$("#search-submit-head").click(function(){
		alert("abc");
		var key = $("#search-box-head").val();
		$.post("?route=module/advancesearch/getListPage", {from : 0, to : 20, totalrow: 10, key : key}, function(data){
			window.location.href="module/advancesearch";
		});
	});*/
</script>