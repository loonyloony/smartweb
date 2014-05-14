<div class="section" id="sitemaplist">
    <div class="section-title">
        <div class="titletext left"><?php echo $heading_title ?></div>
        <div class="button right">
            <a class="button" onclick="save()">Save</a>
            <a class="button" href="<?php echo $cancel_link ?>">Cancel</a>
        </div>
        <div class="clearer"></div>
    </div>

    <div class="section-content padding1">

        <form id="frm" name="frm" action="<?php echo $action?>" method="post" enctype="multipart/form-data">

            <div class="error hidden"></div>
            <div>
                <div>
                    <p>
                        <label>Key:</label><br>

                        <input type="text" class="text" size="40" id="languagekey" name="languagekey" value="<?php echo $item['languagekey']?>"/>(*)

                    </p>

                    <p>
                        <label>Tiếng Việt:</label><br>

                        <input type="text" class="text" size="40" id="vn" name="vn" value="<?php echo $item['vn']?>"/>(*)

                    </p>

                    <p>
                        <label>English:</label><br>

                        <input type="text" class="text" size="40" id="en" name="en" value="<?php echo $item['en']?>"/>(*)

                    </p>

                    <p>
                        <label>Russian:</label><br>

                        <input type="text" class="text" size="40" id="ru" name="ru" value="<?php echo $item['ru']?>"/>(*)

                    </p>

                    <p>
                        <label>Khmer:</label><br>

                        <input type="text" class="text" size="40" id="kh" name="kh" value="<?php echo $item['kh']?>"/>(*)

                    </p>

                    <p>
                        <label>Trung Quốc:</label><br>

                        <input type="text" class="text" size="40" id="cn" name="cn" value="<?php echo $item['cn']?>"/>(*)

                    </p>

                    <p>
                        <label>France:</label><br>

                        <input type="text" class="text" size="40" id="fr" name="fr" value="<?php echo $item['fr']?>"/>(*)

                    </p>

                    <p>
                        <label>Japan:</label><br>

                        <input type="text" class="text" size="40" id="jp" name="jp" value="<?php echo $item['jp']?>"/>(*)

                    </p>
                </div>

            </div>
        </form>

    </div>

</div>

<script src='<?php echo DIR_JS?>ajaxupload.js' type='text/javascript' language='javascript'></script>

<script language="javascript">
    var DIR_UPLOADPHOTO = "<?php echo $DIR_UPLOADPHOTO?>";
    function save() {
        $.blockUI({ message: "<h1><?php echo $announ_infor ?></h1>" });
        $.post("index.php?route=<?php echo $route?>/save",
                $("#frm").serialize(),
                function (data) {
                    if (data == "true")
                        window.location = '?route=<?php echo $route?>';
                    else {
                        $(".error").html(data).show('slow');
                        $.unblockUI();
                    }

                }
        );


    }
    $(document).ready(function () {
        if ($("#languagekey").val() != "") {
            $("#languagekey").val("<?php echo $item['languagekey']?>");
            $("#skinname").val("<?php echo $item['skinname']?>");
            $("#imagepath").val("<?php echo $item['imagepath']?>");
            $("#imageid").val("<?php echo $item['imageid']?>");
            $("#imagethumbnail").val("<?php echo $item['imagethumbnail']?>");
            $("#preview").attr('src', "<?php echo $item['imagethumbnail']?>")
        }
    });
</script>
<script src="<?php echo DIR_JS?>uploadpreview.js" type="text/javascript"></script>
