<div class="section" id="sitemaplist">

    <div class="section-title">
        <div class="titletext left"><?php echo $menu_sitemap?></div>
        <div class="button right">
            <input class="button" value="<?php echo $button_add ?>"    type="button" name="btnAdd" onclick="linkto('<?php echo $insert?>')">
            <input class="button" value="<?php echo $button_delete ?>" type="button" name="btnDel" onclick="data_deleteList('<?php echo $deletelist?>')">
            <input class="button" value="<?php echo $button_update ?>" type="button" name="btnUpdate" onclick="data_updateList('<?php echo $updatelist?>')">
            <input type="hidden" name="type" value="" />
        </div>
        <div class="clearer"></div>
        
    </div>
    
    <div class="section-content">
    
        <form action="" id="formlist" name="formlist" method="post">
        
            <table class="data-table">
                <thead>
                    <tr>
                        <th width="5%"><input class="inputchk" type="checkbox" onclick="$('input[name*=\'delete\']').attr('checked', this.checked);"></th>
                        <th><?php echo $text_sitemapname?></th>
                        <th><?php echo $label_module_type?></th>
                        <th><?php echo $text_position?></th>
                        <th><?php echo $text_status?></th>
                        <th><?php echo $text_control?></th>
                    </tr>
                </thead>
                <tbody>
                    <?php 
                    foreach($sitemaps as $item) {?>
                    <tr class="<?php echo ($item['parentid'] == '') ? sitemapparent . '-' . $item['sitemapid'] : sitemapchild . '-' . $item['parentid'] . ' child' ?>">
                        <td><input class="inputchk" type="checkbox" name="delete[<?php echo $item['sitemapid']?>]" value="<?php echo $item['sitemapid']?>" >
                        </td>
                        <td>
                            <span id="plus-<?php echo $item['sitemapid'] ?>" class="<?php echo ($item['flg_plus'] != '') ? 'flg_plus' : 'none' ?>"><?php echo $item['flg_plus'] ?></span><?php echo $item['treetext'] ?>
                        </td>
                        <td>
                            <?php echo $item['modulename'] ?>
                        </td>
                        <td><input class="text" maxlength="2" size="1" type="text" name="position[<?php echo $item['sitemapid']?>]" value="<?php echo $item['position']?>"></td>
                        <td><?php echo $item['statustext'] ?></td>
                        <td>
                        <a class="button" href="<?php echo $item['previewlink']?>" target="_blank"><?php echo $button_preview?></a>
                        <a class="button" href="?route=elife/sitemap/update&sitemapid=<?php echo $item['sitemapid']?>" ><?php echo $button_edit?></a>
                        </td>
                    </tr>
                    <?php } ?>
                </tbody>
            </table>
        </form>
    </div>
</div>

<script type="text/javascript">
    $(document).ready(function(){
        $(".child").hide();
    });
    $("tr").click(function(){
        $(".child").hide();
        //$("tr").children("tr").hide();
        var value=$(this).attr('class');
        var arr = value.split("-");
        if(arr[0] == 'sitemapparent')
        {
            $(".sitemapchild-" + arr[1]).slideToggle();
            $(".flg_plus").text('+');
            $("#plus-" + arr[1]).text('-');
        }
    });
</script>