<script type="text/javascript">
<!--
function MM_jumpMenu(targ,selObj,restore){ //v3.0
  eval(targ+".location='index.php?lang="+selObj.options[selObj.selectedIndex].value+"'");
  if (restore) selObj.selectedIndex=0;
}
//-->
</script>
<div id="top">

    <div class="left" id="weblogo"> 	 
        <a href="index.php">		
            <img src="view/skin1/image/elife_logo_white.png" alt="Elife Logo White"  />
        </a>
    </div>
    
    <div class="left account">
          <?php if($sitename) {?>
            	<h2><?php echo $title_system ?></h2>	
            <?php } else { ?>
            	<h2><?php echo $title_system ?></h2>
            	<span class="title"><?php echo $title ?></span> <span><?php echo $slogan ?></span>
            <?php } ?>
            <div class="clearer">&nbsp;</div>
    </div>

   
    
    <div class="right site_infor">       
         <div> 
            <?php if($username != "") { ?>
            <table>
                <tr>
                    <td width="10%"><img class="png" src="<?php echo DIR_IMAGE?>small_lock.png" alt="" /></td>
                    <td>
                        <?php echo $logged_user ?>: <a href="?route=common/profile"><b><?php echo $username?></b></a><br />
                        <a href="logout.php"> <?php echo $text_logout ?> </a>
                    </td>
                </tr>
            </table>
            <?php } ?>
        </div>
        
        <!-- BEGIN STACK "DOWN" ============================================================ -->
        <div class="stack2">
            <img src="view/skin1/image/stacks/stack-down.png" alt="stack"/>
            <ul id="stack2">
                <!--<li><a  href="cpanel/websitesetting" ><span>Cài&nbsp;đặt&nbsp;Web</span><img src="view/skin1/image/stacks/setting.png" alt="Web Setting" /></a></li>-->
                <?php if($usertypeid == "admin"){ ?>
                <li><a href="?route=elife/setting"><span>Cài&nbsp;đặt&nbsp;Web</span><img src="view/skin1/image/stacks/setting.png" alt="Web Setting" /></a></li>
                <!--<li><a  href="cpanel/conteneditor"><span>Biên&nbsp;tập&nbsp;nội&nbsp;dung</span><img src="view/skin1/image/stacks/content.png" alt="Web Publishing" /></a></li>-->
                <li><a href="?route=elife/sitemap"><span>Sơ&nbsp;đồ&nbsp;Web</span><img src="view/skin1/image/stacks/content.png" alt="Web Publishing" /></a></li>
                <li><a href="?route=core/user"><span>Quản&nbsp;Trị&nbsp;Người&nbsp;Dùng</span><img src="view/skin1/image/stacks/users.png" alt="Admin" /></a></li>
                <?php } ?>
                <li><a href="?route=cpanel/addonmenu"><span>Chức&nbsp;năng&nbsp;bổ&nbsp;sung</span><img src="view/skin1/image/stacks/addon.png" alt="Addon" /></a></li>
                <!--<li><a href="cpanel/product"><span>Sản&nbsp;Phẩm</span><img src="view/skin1/image/stacks/product.png" alt="Product" /></a></li>
                <li><a  href="cpanel/sale"><span>Bán&nbsp;Hàng</span><img src="view/skin1/image/stacks/sale.png" alt="Sale" /></a></li>-->
                <li><a href="?route=core/message"><span>Hộp&nbsp;Thư</span><img src="view/skin1/image/stacks/mail.png" alt="Mail Box" /></a></li>
                <li><a href="?route=common/profile"><span>Tài&nbsp;khoản&nbsp;của&nbsp;tôi</span><img src="view/skin1/image/stacks/account.png" alt="Mail Box" /></a></li>
                <!--<li><a  href="cpanel/management"><span>Quản&nbsp;Trị</span><img src="view/skin1/image/stacks/admin.png" alt="Admin" /></a></li>-->
                <!--<li><a href="cpanel/support"><span>Hỗ&nbsp;Trợ</span><img src="view/skin1/image/stacks/help.png" alt="Admin" /></a></li>-->			
            </ul>
        </div><!-- end div .stack -->
        <!-- END STACK "DOWN" ============================================================ -->
    </div>
    
    <div class="clearer">&nbsp;</div>

</div>