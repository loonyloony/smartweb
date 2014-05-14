<div id="elife-canvas">
    <!-- TOP: DATE/SEARCH/MENU -->
    <div id="elife-top">
        <div class="elife-page-wrapper">
            <?php echo $top?>
            <div class="clearer">&nbsp;</div>
        </div>
    </div>
    
    <!-- HEADER -->
    <div id="elife-header">
        <div class="elife-page-wrapper">
            <?php echo $header?>
            <div class="clearer">&nbsp;</div>
        </div>
    </div>
    
    <!-- MAIN NAVIGATION -->
    <div id="elife-navigation" class="png">
        <div class="elife-page-wrapper">
            <?php echo $mainmenu?>
            <div class="clearer">&nbsp;</div>
        </div>
    </div>
    
    <div class="clearer">&nbsp;</div>
    
    <!-- SPLASH AREA-->
    <?php echo $splash?>
    
    <!-- BODY AREA-->
    <div id="elife-body" class="elife-layout-<?php echo $layouttype?>">
        <div class="elife-page-wrapper">
            <div class="elife-sidebar-left elife-sidebar">
                <div class="elife-wrapper">
                    <?php echo $sidebar_left?>
                    <div class="clearer">&nbsp;</div>
                </div>
            </div>
            <div class="elife-content">
                <div class="elife-wrapper">
                    <div class="elife-section">
                    	<div class="elife-breadcrumb"><?php echo $breadcrumb?></div>
                        <?php echo $pagecontent?>
                    </div>
                    <div class="clearer">&nbsp;</div>
                </div>
            </div>
            <div class="elife-sidebar-right elife-sidebar">
                <div class="elife-wrapper">
                    <?php echo $sidebar_right?>
                    <div class="clearer">&nbsp;</div>
                </div>
            </div>
            <div class="clearer">&nbsp;</div>
        </div>
    </div>
    
    <?php echo $dashboard?>
    
    <div id="elife-footer">
        <div class="elife-page-wrapper">
            <?php echo $footer?>
            <div class="clearer">&nbsp;</div>
        </div>
    </div>

</div>

<!--<div id="elife-fixbackground">
	<?php echo $background?>
</div>-->