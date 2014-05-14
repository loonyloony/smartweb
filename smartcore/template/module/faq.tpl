<div class="elife-section-title"><h1><a><?php echo $sitemap ?></a></h1></div>

<div class="elife-section-content">
    <div class="elife-item-line"></div>
    <div id="elife-post-contatiner">
    <?php if(count($faq)) { foreach($faq as $item) { ?>
    <div class="elife-post">
        <h3><a class="elife-post-title"><?php echo $item['title'] ?></a></h3>
        <p class="elife-post-summary"><?php echo $item['summary'] ?></p>
    </div>
    <div class="elife-item-line"></div>
    <?php } } ?>
    <div class="elife-product-toolbar">
    	<div class="elife-left">
        	<a class="elife-button" onclick="faqRequest()"><?php echo $text_sendquestion ?></a>
        </div>
        <div class="elife-wrapper elife-right">
            <form>
                <div class="elife-pagination elife-right">
                    <!-- Pagination -->
                    <?php echo $paginationDisplay ?>
                </div>
                <div class="clearer"></div>
            </form>
        </div>
        <div class="clearer"></div>
    </div>
    </div>
</div>

<div class="elife-section-footer"></div>

<div id="elife-question">
    <form method="post" action="" id="faq" name="faq">
    	<input type="hidden" name="sitemapname" value="<?php echo $sitemap ?>" />
        <h1><?php echo $text_sendquestion ?></h1>
        <div class="elife-error elife-hidden"></div>
        <p>
            <label><?php echo $title_fullname ?></label><br>
            <input type="text" name="fullname" id="fullname" class="elife-textbox"><i>(*)</i>
        </p>
        <p>
            <label><?php echo $text_email ?></label><br>
            <input type="text" name="email" id="email" class="elife-textbox"><i>(*)</i>
        </p>
        <p>
            <label><?php echo $text_phone ?></label><br>
            <input type="text" name="telephone" id="telephone" class="elife-textbox">
        </p>
        <p>
            <label><?php echo $text_question ?></label><br>
            <textarea name="description" id="description" rows="10"></textarea>
        </p>
        <p>
            <input type="button" class="elife-button" value="<?php echo $text_sendtous ?>" onclick="sendRequest()" />
            <input type="button" class="elife-button" value="<?php echo $button_reset ?>" onclick="resetRequest()" />
        </p>
    </form>
</div>
<script language="javascript">
$(document).ready(function(e) {
    $('#elife-question').hide();
});

function faqRequest(){
	$.blockUI({ message: $('#elife-question'), css: { top: '5%' } });
	$('.blockOverlay').attr('title',"<?php echo $text_clicktoexit ?>").click($.unblockUI); 
}

function sendRequest(){
	$.blockUI({ message: "<h1><?php echo $text_pleasewait ?></h1>" }); 

	$.post("?route=module/faq/sendFAQ", $("#faq").serialize(), 
		function(data){
			if(data!="true"){
				faqRequest();
				$('.elife-error').html(data);
				$('.elife-error').fadeIn("slow");
			} else {
				alert("<?php echo $text_your_question_have_been_send ?>");
				window.location.reload();
				//$.unblockUI();
			}
		});
}

function resetRequest(){
	$('#faq').each (function(){
		this.reset();
	});	
}
</script>