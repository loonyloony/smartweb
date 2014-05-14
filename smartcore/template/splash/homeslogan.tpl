<div class="homeslogan">
	<div class="slogan1"><img src="skin/image/buffethanoi/slogan1.png" /></div>
    <div class="slogan2"><img src="skin/image/buffethanoi/slogan2.png" /></div>
</div>

<style>
.homeslogan{position:relative}
.slogan1, .slogan2{position:absolute}
</style>

<script>
$(document).ready(function(){
	runslogan();
});

function runslogan()
{
	$('.slogan1').animate
	(
		{top: '100px', opacity: 0},
		{duration:0,queue:false}
	)
	.delay(1500)
	.animate({top:'150px', opacity:1},{duration:1000});	
	
	$('.slogan2').animate
	(
		{top: '290px', right:'100px', opacity: 0},
		{duration:0,queue:false}
	)
	.delay(2500)
	.animate({top:'230px', right:'100px', opacity:1},{duration:1000});
	setTimeout("runslogan()",8000);
}

</script>