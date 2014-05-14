<div class="elife-section-title"><h1><a><?php echo $media['title'] ?></a></h1></div>

<div class="elife-section-content">
    <div class="elife-item-line"></div>
    <div class="elife-partners-detail">
        <table width="100%">
            <tr>
                <td width="300px">
                    <a title="<?php echo $media['title'] ?>" href="<?php echo $media['link'] ?>">
                        <img src="images/resizepng-250x0/<?php echo $media['imagepath']?>" alt="<?php echo $media['title'] ?>" />
                    </a>
                </td>
                <td>
                   <?php echo htmlspecialchars_decode($media['description']) ?>
                    <p>
                        Website: <a href="<?php echo $media['link'] ?>"><?php echo $media['link'] ?></a>
                    </p>
                </td>
            </tr>
        </table>	
        <div class="clearer"></div>
    </div>
</div>

<div class="elife-section-footer"></div>