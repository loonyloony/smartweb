<?php
if (file_exists(DIR_FILE.$imagepath)) {
    $file = DIR_FILE.$imagepath;

    $info = getimagesize($file);

    $imageinfor = array(
        "width"  => $info[0],
        "height" => $info[1],
        "bits"   => $info["bits"],
        "mime"   => $info["mime"],
        'type'	 => $info[2]
    );
    
    $mime = $imageinfor['mime'];
	
    header('Content-Type: '.$mime);
    	
    /*if ($mime == 'image/gif') {
        $image = imagecreatefromgif($file);
    } elseif ($mime == 'image/png') {
        $image = imagecreatefrompng($file);
    } elseif ($mime == 'image/jpeg') {
        $image = imagecreatefromjpeg($file);
    }*/
    
    readfile($file);
    
    /*switch ( $imageinfor['type'] ) {
      case IMAGETYPE_GIF:
        imagegif($image , NULL);
      break;
      case IMAGETYPE_JPEG:
        @imagejpeg($image , NULL);
      break;
      case IMAGETYPE_PNG:
        imagepng($image , NULL);
      break;
      default:
	  break;
    }*/
    
    //imagedestroy($image);
}
?>