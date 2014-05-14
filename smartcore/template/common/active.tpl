<div id="box-anouncement">
	<span style="color:red"><?php echo $title_activate_account_sucessfully ?>.</span>
<?php if($output == "true"){ ?>
	<span></span>
<?php } else { ?>

<?php } ?>
	<h3><?php echo $text_autoredirect ?> <span id="container"></span> <?php echo $text_second ?>!</h3>
    
    <?php echo $war_waiting_for_a_long_time ?>: <a href="<?php echo HTTP_SERVER ?>"><?php echo HTTP_SERVER ?></a>
</div>



<style>
	#box-anouncement{
		border: 1px solid #CF8A1E;
		padding:5px;
		width:800px;
		margin:0 auto;
		text-align:center;
		margin-top:15%;
	}
</style>

<script type="text/javascript">
var time = 5; //How long (in seconds) to countdown
var page = "<?php echo HTTP_SERVER ?>"; //The page to redirect to
function countDown(){
	gett("container").innerHTML = time;
	time--;
	if(time == 0){
		window.location = page;
	}
}
function gett(id){
	if(document.getElementById) return document.getElementById(id);
	if(document.all) return document.all.id;
	if(document.layers) return document.layers.id;
	if(window.opera) return window.opera.id;
}
function init(){
	if(gett('container')){
	setInterval(countDown, 1000);
	gett("container").innerHTML = time;
	}
	else{
		setTimeout(init, 50);
	}
}
document.onload = init();
</script>
