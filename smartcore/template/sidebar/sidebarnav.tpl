<?php if(count($banner) > 0){ foreach($banner as $item){ ?>
<div class="sidebar-header">
	<?php echo $item['title'] ?>
</div>
<div class="sidebar-content">
	<?php echo htmlspecialchars_decode($item['description']) ?>
</div>
<?php } } ?>