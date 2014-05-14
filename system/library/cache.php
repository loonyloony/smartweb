<?php
final class Cache { 
	private $expire = 3600;

  	public function __construct() {
		/*$files = glob(DIR_CACHE . 'cache.*');
		
    	if(count($files)>0)
		{
			foreach ($files as $file) 
			{
				$time = end(explode('.', basename($file)));
	
				if ($time < time()) {
					@unlink($file);
				}
			}	
		}*/
  	}

	public function get($key) {
		$key = preg_replace('[/]', '_', $key);
		$key = preg_replace('[ ]', '_', $key);
    	foreach (glob(DIR_CACHE . 'cache.' . $key . '.*') as $file) {
      		$handle = fopen($file, 'r');
      		$cache  = fread($handle, filesize($file));
      		fclose($handle);
      		return unserialize($cache);
    	}
  	}

  	public function set($key, $value) {
		$key = preg_replace('[/]', '_', $key);
		$key = preg_replace('[ ]', '_', $key);
    	$this->delete($key);

		$file = DIR_CACHE . 'cache.' . $key . '.' . (time() + $this->expire);
		$handle = fopen($file, 'w');
    	fwrite($handle, serialize($value));
    	fclose($handle);
  	}
	
  	public function delete($key) {
    	foreach (glob(DIR_CACHE . 'cache.' . $key . '.*') as $file) {
      		@unlink($file);
    	}
  	}
}
?>