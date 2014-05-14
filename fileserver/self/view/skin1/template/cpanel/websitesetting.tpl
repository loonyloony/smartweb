
<?php foreach($items as $item){
?>
    <div class="elife-item-setting left">
      <div class="image-icon"> <a href="<?php echo $item['link'] ?>"><img src="view/skin1/image/stacks/<?php echo $item['image'] ?>" /></a></div>
        <a href="<?php echo $item['link'] ?>" class="elife-item-name"><?php echo $item['name'] ?></a>
        <div class="clearer"></div>
    </div>
<?php
}?>

    