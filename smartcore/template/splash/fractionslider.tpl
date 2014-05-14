<?php
    $this->document->addScript("jquery.fractionslider.min.js");
    $this->document->addScript("jquery.easing.min.1.3.js");
    $this->document->addStyle("fractionslider.css");
    $this->document->addStyle("fractionslider_responsive.css");
?>

<div class="slider-wrapper">
    <div class="responisve-container">
        <div class="slider">
            <div class="fs_loader"></div>

            <!--slide1 dinh cua dinh-->
            <div class="slide">
                <img src="<?php echo DIR_IMAGE?>slidedinh_phaobong.jpg"
                     width="839" height="587"
                     data-position="0,0" data-in="left" data-delay="200" data-out="top"
                     style="border-left:1px solid #fcff00; border-right:1px solid #fcff00"/>

                <img src="<?php echo DIR_IMAGE?>slidedinh_cailuong.jpg"
                     width="508" height="265"
                     data-position="0,841" data-in="scrollRight" data-delay="500" data-out="left"
                     style="border-bottom:1px solid #fcff00; border-right:1px solid #fcff00"/>

                <img src="<?php echo DIR_IMAGE?>slidedinh_thuyen.jpg"
                     width="508" height="321"
                     data-position="266,841" data-in="left" data-delay="700" data-out="left"
                     style="border-right:1px solid #fcff00"/>

                <img src="<?php echo DIR_IMAGE?>slidedinh_chuong.jpg"
                     width="250" height="320"
                     data-position="0,1350" data-in="bottom" data-delay="200" data-out="left"
                     style="border-bottom:1px solid #fcff00;"/>

                <img src="<?php echo DIR_IMAGE?>slidedinh_nhaysap.jpg"
                     width="250" height="266"
                     data-position="321,1350" data-in="scrollLeft" data-delay="100" data-out="left"/>

                <img id="slidedinh_text" src="<?php echo DIR_IMAGE?>slidedinh_text.png"
                     width="458" height="311" style="cursor: pointer"
                     data-position="100,600" data-in="top" data-delay="200" data-out="left"/>
            </div>

            <!--slide2 nam du-->
            <div class="slide">
                <img src="<?php echo DIR_IMAGE?>slidenamdu_thapvang.jpg"
                     width="421" height="587"
                     data-position="0,0" data-in="right" data-delay="300" data-out="left"/>

                <img src="<?php echo DIR_IMAGE?>slidenamdu_hang.jpg"
                     width="470" height="587"
                     data-position="0,421" data-in="bottom" data-delay="500" data-out="bottom"/>

                <img src="<?php echo DIR_IMAGE?>slidenamdu_suthay.jpg"
                     width="709" height="373"
                     data-position="0,891" data-in="left" data-delay="400" data-out="right"/>

                <img src="<?php echo DIR_IMAGE?>slidenamdu_chuatang.jpg"
                     width="328" height="214"
                     data-position="373,891" data-in="right" data-delay="600" data-out="top"/>

                <img src="<?php echo DIR_IMAGE?>slidenamdu_duongvao.jpg"
                     width="381" height="214"
                     data-position="373,1219" data-in="bottom" data-delay="200" data-out="scrollLeft">

                <img id="slidenamdu_text" src="<?php echo DIR_IMAGE?>slidenamdu_text.png"
                     width="458" height="311" style="cursor: pointer"
                     data-position="100,600" data-in="top" data-delay="500" data-out="fade">
            </div>


            <!--slide3 campuchia-->
            <div class="slide">
                <img src="<?php echo DIR_IMAGE?>slidecampuchia_dao.jpg"
                     width="887" height="587"
                     data-position="0,0" data-in="scrollRight" data-delay="300" data-out="scrollLeft"/>

                <img src="<?php echo DIR_IMAGE?>slidecampuchia_nhatho.jpg"
                     width="372" height="280"
                     data-position="0,887" data-in="top" data-delay="500" data-out="right"/>

                <img src="<?php echo DIR_IMAGE?>slidecampuchia_thac.jpg"
                     width="341" height="280"
                     data-position="0,1259" data-in="scrollRight" data-delay="400" data-out="scrollLeft"/>

                <img src="<?php echo DIR_IMAGE?>slidecampuchia_thuyen.jpg"
                     width="713" height="341"
                     data-position="280,887" data-in="bottom" data-delay="600" data-out="top"/>

                <img id="slidecampuchia_text" src="<?php echo DIR_IMAGE?>slidecampuchia_text.png"
                     width="458" height="311" style="cursor: pointer"
                     data-position="100,600" data-in="top"  data-delay="300" data-out="fade">
            </div>


            <!--slide4 phuclinh-->
            <div class="slide">
                <img src="<?php echo DIR_IMAGE?>slidephuclinh_chuadem.jpg"
                     width="971" height="587"
                     data-position="0,0" data-in="bottom" data-delay="300" data-out="scrollRight"/>

                <img src="<?php echo DIR_IMAGE?>slidephuclinh_chuado.jpg"
                     width="629" height="266"
                     data-position="0,971" data-in="scrollRight" data-delay="500" data-out="left"/>

                <img src="<?php echo DIR_IMAGE?>slidephuclinh_chauthap.jpg"
                     width="261" height="322"
                     data-position="266,971" data-in="left" data-delay="400" data-out="top"/>

                <img src="<?php echo DIR_IMAGE?>slidephuclinh_song.jpg"
                     width="367" height="322"
                     data-position="266,1232" data-in="bottomLeft" data-delay="600" data-out="bottom"/>

                <img id="slidephuclinh_text" src="<?php echo DIR_IMAGE?>slidephuclinh_text.png"
                     width="458" height="311" style="cursor: pointer"
                     data-position="100,600" data-in="top" data-delay="300" data-out="fade">
            </div>


            <!--slide5 chonoi-->
            <div class="slide">
                <img src="<?php echo DIR_IMAGE?>slidechonoi_cogai.jpg"
                     width="357" height="587"
                     data-position="0,0" data-in="left" data-delay="300" data-out="top"/>

                <img src="<?php echo DIR_IMAGE?>slidechonoi_chonoi.jpg"
                     width="849" height="587"
                     data-position="0,357" data-in="bottom" data-delay="500" data-out="bottom"/>

                <img src="<?php echo DIR_IMAGE?>slidechonoi_chuaran.jpg"
                     width="394" height="296"
                     data-position="0,1206" data-in="left" data-delay="400" data-out="right"/>

                <img src="<?php echo DIR_IMAGE?>slidechonoi_chuamien.jpg"
                     width="394" height="291"
                     data-position="296,1206" data-in="top" data-delay="600" data-out="scrollLeft"/>

                <img id="slidechonoi_text" src="<?php echo DIR_IMAGE?>slidechonoi_text.png"
                     width="458" height="311" style="cursor: pointer"
                     data-position="100,600" data-in="top" data-delay="300" data-out="fade">
            </div>


            <!--slide6 muine-->
            <div class="slide">
                <img src="<?php echo DIR_IMAGE?>slidemuine_biencat.jpg"
                     width="967" height="587"
                     data-position="0,0" data-in="right" data-delay="300" data-out="left"/>

                <img src="<?php echo DIR_IMAGE?>slidemuine_haidang.jpg"
                     width="633" height="253"
                     data-position="0,967" data-in="topLeft" data-delay="500" data-out="right"/>

                <img src="<?php echo DIR_IMAGE?>slidemuine_concat.jpg"
                     width="633" height="334"
                     data-position="253,967" data-in="bottom" data-delay="400" data-out="bottom"/>

                <img id="slidemuine_text" src="<?php echo DIR_IMAGE?>slidemuine_text.png"
                     width="458" height="311" style="cursor: pointer"
                     data-position="100,600" data-in="top" data-delay="300" data-out="fade">
            </div>




        </div>
    </div>
</div>

<script>
    $(window).load(function () {

        $('.slider').fractionSlider({
            'timeout' : 5000,
            'fullWidth': true,
            'controls': true,
            'pager': true,
            'responsive': true,
            'dimensions': "1600,587",
            'increase': false,
            'pauseOnHover': false,
            'data-ease-in':'swing',
            'data-ease-out':'swing'
        });
    });

    $('#slidedinh_text').click(function(data){
        window.location.href = "dinh-cua-dinh.html";
    });

    $('#slidenamdu_text').click(function(data){
        window.location.href = "nam-du-thap-tu-xuan.html";
    });

    $('#slidecampuchia_text').click(function(data){
        window.location.href = "tuk-tuk-campuchia.html";
    });

    $('#slidephuclinh_text').click(function(data){
        window.location.href = "hanh-trinh-ve-mien-phuc-linh.html";
    });

    $('#slidechonoi_text').click(function(data){
        window.location.href = "dong-bang-song-cuu-long.html";
    });

    $('#slidemuine_text').click(function(data){
        window.location.href = "phan-thiet.html";
    });

</script>

