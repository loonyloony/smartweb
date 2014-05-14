<?php
/*
 * jQuery File Upload Plugin PHP Example 5.14
 * https://github.com/blueimp/jQuery-File-Upload
 *
 * Copyright 2010, Sebastian Tschan
 * https://blueimp.net
 *
 * Licensed under the MIT license:
 * http://www.opensource.org/licenses/MIT
 */
$user = $_POST['user'];	
$skinid = $_POST['skinid'];
$options = array('upload_dir'=>'../../fileserver/file_'.$skinid.'/file/'.$user.'/');

error_reporting(E_ALL | E_STRICT);
require('UploadHandler.php');


$upload_handler = new UploadHandler($options);
