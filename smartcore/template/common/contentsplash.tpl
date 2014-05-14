<?php foreach($modules as $item){?>
<div id="<?php echo $item['moduleid']?>" class="elife-splash">
    <div class="elife-wrapper">
        <div class="elife-splash-content">
            <?php echo $item['modulecontent']?>
        </div>
    </div>
</div>
<div class="clearer">&nbsp;</div>
<?php } ?>