<div id="elife-canvas-print">
	<div id="header-print">
    	<div id="logo-print" class="elife-left"><img src="<?php echo DIR_IMAGE ?>logo.png" /></div>
        <div class="cmp-name-1 elife-right">CÔNG TY TNHH MTV THƯƠNG MẠI <br /> DỊCH VỤ HỮU TOÀN</div>
        <div class="clearer"></div>
    </div>
    
    <!-- BODY AREA-->
    <div id="elife-body-print" class="elife-layout-<?php echo $layouttype?>">
        <div class="elife-page-wrapper">

            <div class="elife-content">
                <div class="elife-wrapper">
                    <div class="elife-section">
                    	<div class="elife-breadcrumb"><?php echo $breadcrumb?></div>
                        <?php echo $pagecontent?>
                    </div>
                    <div class="clearer">&nbsp;</div>
                </div>
            </div>
        </div>
    </div>
    
    <div id="footer-print">
    
    </div>
</div>

<div id="elife-fixbackground">
	<?php echo $background?>
</div>

<style type="text/css">
#header-print{margin-top:20px; margin-bottom:15px}

#elife-body-print .elife-page-wrapper{
	width:700px;
	margin:0 auto
}

#logo-print{width:25%}

#elife-canvas-print{
	background:#fff;
	margin:0 auto;
	width:700px
}

#elife-body-print #elife-main #elife-main-bgtop{
	background:#fff;	
}

.cmp-name-1 {
    color: #02B3C3;
    font-size: 1.7em;
    font-weight: bolder;
    padding: 15px 40px 0;
	width:60%;
	text-align:center;
	line-height:1.3em
}
</style>