<?php foreach($modules as $item){?>
<div id="<?php echo $item['addonid']?>" class="elife-splash">
    <div class="elife-page-wrapper">
        <div class="elife-dashboard-content">
            <?php echo $item['modulecontent']?>
        </div>
    </div>
</div>
<div class="clearer">&nbsp;</div>
<?php } ?>