<?php foreach($modules as $item){?>
<div id="<?php echo $item['addonid']?>" class="elife-section">
    <div class="elife-section-title">
        <div class="elife-wrapper">
            <h4><a><?php echo $item['addonname']?></a></h4>
        </div>
        <div class="clearest">&nbsp;</div>
    </div>
    <div class="elife-section-content">
        <div class="elife-wrapper">
            <?php echo $item['modulecontent']?>
        </div>
    </div>
</div>
<div class="clearer">&nbsp;</div>
<?php } ?>