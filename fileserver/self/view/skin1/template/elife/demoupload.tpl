<div class="section">

	<div class="section-title">
        <div class="titletext left">DEMO UPLOAD FILE</div>
        <div class="button right">
            <a class="button" href="#">Button</a>
        </div>
    	<div class="clearer"></div>
   	</div>
    
    <div class="section-content">
    	
        <form action="" method="get" id="listitem" name="listitem">
            <div class="select-many">
            	<p><b>Chọn nhiều file:</b></p>
                <a class="button" onclick="elifeupload_multi('ketqua1')">Chọn file</a>
                <input id="ketqua1" type="text" class="text" value="" size="120" />
            </div>
            
            <img id="tuanpham" imagetype="file/resize-400x300" />
            
            <div class="select-many">
            	<p><b>Chọn một file:</b></p>
                <a class="button" onclick="elifeupload_one('imagepath','tuanpham')">Chọn hình 1</a>
                <input id="imagepath" name="imagepath" type="text" class="text" value="" size="120" />
                <br />
                <a class="button" onclick="elifeupload_one('imagepath2','tuanpham')">Chọn hình 2</a>
                <input id="imagepath2" name="imagepath2" type="text" class="text" value="" size="120" />
                
            </div>
            
            <div class="previewimagesample">
            	<p><b>Cách xem hình ko cần helper:</b></p>
                <a href="http://pqtuan2:81/elifecms/cms/images/resize-400x300/upload/085.jpg" target="_blank">images/resize-400x300/upload/085.jpg</a>
            
            </div>
            
        
        
        </form>
    </div>
</div>

