<div class="elife-section-title"><h1><a><?php echo $text_accountactivation ?></a></h1></div>

<div class="active">
<?php if($active != 'false'){ ?>
	
        <?php echo $title_activate_account_sucessfully ?>. <br />
        <?php echo $text_back ?> <a href="<?php echo HTTP_SERVER ?>"><?php echo $text_home ?></a> <?php echo $text_or ?> <a href="<?php echo HTTP_SERVER ?>thanh-toan.html"><?php echo $text_login ?></a><br />     
<?php } else { ?>
	<?php echo $war_activate_failed ?>. <br />
    <?php echo $texe_pleaseclick ?> <a href="kich-hoat-du-phong.html"><?php echo $text_here ?></a> <?php echo $text_enteractivecode ?>. <br />
    <img src="<?php echo DIR_IMAGE ?>icon-sad.png" />
<?php } ?>
</div>