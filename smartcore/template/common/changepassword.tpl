<script src='<?php echo DIR_JS?>ui.datepicker.js' type='text/javascript' language='javascript'></script>
<div id="updateinfor">
	<div class="up-title"><?php echo $button_change_password ?></div>
	
    <div id="announcement"></div>
    <div class="up-content">
    	
    	<form id="frm">
    		<div class="row">
                <label for="firstname"><?php echo $text_oldpass ?></label>
                <span class="bcr1">
                    <input type="password" class="text" value="" name="oldpassword" size="50" />
                </span>
                <div class="clearer">&nbsp;</div>
            </div>
            
            <div class="row">
                <label for="firstname"><?php echo $text_newpass ?></label>
                <span class="bcr1">
                    <input type="password" class="text" value="" name="password" size="50" />
                </span>
                <div class="clearer">&nbsp;</div>
            </div>
            
            <div class="row">
                <label for="firstname"><?php echo $text_confirmpass ?></label>
                <span class="bcr1">
                    <input type="password" class="text" value="" name="repassword" size="50" />
                </span>
                <div class="clearer">&nbsp;</div>
            </div>
        </form>
    </div>
    
    <div class="up-bottom">
    	<div class="up-bottom-button">
            <a class="btn_submit" id="btn_submit"><?php echo $button_update ?></a>
        </div>
    </div>
</div>

<style>
	#updateinfor{
		border: 3px solid #210504;
		height:400px;
		width:98%;
		background-color:#e5e5e5;
		padding:5px;	
	}
	
	.up-title{
		background-color:#210504;
		color:white;
		padding:5px;
		font-size:1.5em;
		font-weight:bold;	
	}
	
	.up-content{
		margin-top:10px;
	}
	
	dl{}
	dl.dt{margin:0}
	dt{background-color:#ffb443; padding:5px; margin-bottom:5px}
	dt a{color:#fff}
	dd a{color:#000}
	dt a{color:#000; text-decoration:none; font-size:1em}
	dt a:hover, a:focus{color:#000}
	ul{list-style-type:none; padding:5px}
	dd ul li{width:575px;}
	.up-content label {
		float: left;
		font-weight: bold;
		line-height: 16px;
		margin-right: 17px;
		text-align: right;
		width: 110px;
	}
	
	.bcr1 {
		float: left;
		line-height: 16px;
		width: 400px;
	}
	
	.row input[type="text"]{
		width:300px;	
	}
	
	
	.btn_submit {
		background-color: #210504;
		border: 1px solid #1A5B99;
		color: #FFFFFF;
		font-size: 12px;
		font-weight: bold;
		padding:5px;
		text-decoration:none;
	}
	
	
	.btn_reset {
		background-color: #F2F2F2;
		border: 1px solid #888888;
		color: #555555;
		font-size: 12px;
		font-weight: bold;
		margin-left: 5px;
		padding:5px;
		text-decoration:none;
		cursor:pointer
	}
	
	.up-bottom{
		margin-top:10px	
	}
	
	.up-bottom-button{
		width:130px;
		margin:0 auto;
		cursor:pointer
	}
	
	#announcement{
		margin-top:5px;	
	}
</style>

<script type="text/javascript">
	
	$("#btn_submit").click(function(){
		
		$.post("?route=nhacxuan/updateinfor/verifypassword", $("#frm").serialize(), function(data){
			if(data == "true")
			{
				$("#announcement").html("<p class='success'><?php echo $text_changepasssuccess ?>!</p>");
				$("#announcement").fadeIn().delay(2000).fadeOut();
				
				window.location.href="index.php";
			}
			else
			{
				$("#announcement").html("<p class='error'>" + data + "</p>");
				$("#announcement").fadeIn().delay(2000).fadeOut();
			}
			
		});	
	});
	
</script>