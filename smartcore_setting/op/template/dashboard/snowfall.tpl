<?php
    $this->document->addScript("jquery.min.js");
?>
<script type="text/javascript" src="http://www.skypeassets.com/i/scom/js/skype-uri.js"></script>

<div id="fanpage" style="top: 18%; left: -308px;">
    <div id="fanpage_div">	    	
        <img id="facebook_left" src="<?php echo DIR_IMAGE?>contactus.png" alt="contact us" style="width:85px;">     
			<h3 style="margin-left:20px;margin-top:10px;">Contact Online :</h3>
			<div style="margin-left:40px;margin-top:10px; ">
				<h4>Quốc Huân</h4>							
				<p>Yahoo: <a href="ymsgr:sendIM?hakuna_matata04"><img border="0" src="http://opi.yahoo.com/online?u=hakuna_matata04&amp;m=g&amp;t=1"></a></p>
				<div id="SkypeButton_Call_nguyenkhoahocdo_1">
					  <script type="text/javascript">
						Skype.ui({
						  "name": "dropdown",
						  "element": "SkypeButton_Call_nguyenkhoahocdo_1",
						  "participants": ["nguyenkhoahocdo"],
						  "imageSize": 12
						});
					  </script>
				</div>				
				<p>ĐT: 093 752847</p>
			</div>
			<div style="margin-left:40px;margin-top:10px; ">
				<h4>Anh Khoa</h4>							
				<p>Yahoo: <a href="ymsgr:sendIM?hakuna_matata04"><img border="0" src="http://opi.yahoo.com/online?u=hakuna_matata04&amp;m=g&amp;t=1"></a></p>
				<div id="SkypeButton_Call_hakuna_matata04_1">
					  <script type="text/javascript">
						Skype.ui({
						  "name": "dropdown",
						  "element": "SkypeButton_Call_hakuna_matata04_1",
						  "participants": ["hakuna_matata04"],
						  "imageSize": 12
						});
					  </script>
				</div>				
				<p>ĐT: 092 761732</p>
			</div>
	</div>
</div>


<script type="text/javascript">
	var jqkites = jQuery.noConflict();
</script>
<script>
	jqkites(document).ready(function () {
    
    jqkites("#fanpage_div").hover(function () {jqkites("#fanpage").stop(true, false).animate({ left: 0 }, 500);},
    function () {jqkites("#fanpage").stop(true, false).animate({ left: -308 }, 500);});
    });
</script>
