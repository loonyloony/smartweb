<?php
	include('system/plugin/jsmin.php');
	class ControllerCommonStyle extends Controller
	{
		public function index()
		{
			$files = $this->request->get['style'];
			$array_file = explode(",",$files);
			$this->data['css_styles'] = $array_file;
			$this->id="style";
			$this->template="common/style.tpl";
			$this->render();
		}
		public function script()
		{
			
			$files = $this->request->get['script'];
			$key = md5($files);
			$file = DIR_CACHEHTML . 'cachejs.' . $key;
			
			//check if we have cache
			if(file_exists($file))
			{
				header( 'Location: '.ROOT_HTTP_SERVER.$file );
			}
			else
			{
				$array_file = explode(",",$files);
				$output = "";
				foreach ($array_file as $item) {
					if ($item != "")
						$output .= file_get_contents(DIR_JS.$item);
				}
				$output .= file_get_contents(DIR_USERJS."elife_default.js");
				$output=JSMin::minify($output);
				//$this->data['output'] = $output;
				
				if (!is_dir(DIR_CACHEHTML))
				mkdir( DIR_CACHEHTML , 0777 );
				$handle = fopen($file, 'w');
				fwrite($handle, $output);
				fclose($handle);
				header( 'Location: '.ROOT_HTTP_SERVER.$file );
				
				//$this->id="style";
				//$this->template="common/script.tpl";
				//$this->render();
			}
		}
		public function style()
		{
			
			$files = $this->request->get['style'];
			$key = md5($files);
			$file = DIR_CACHEHTML . 'cachecss.' . $key;
			
			//check if we have cache
			if(file_exists($file))
			{
				header( 'Location: '.ROOT_HTTP_SERVER.$file );
			}
			else
			{
				$array_file = explode(",",$files);
				$output = "";
				foreach ($array_file as $item) {
					if ($item != "")
					{
						try {
							$output .= file_get_contents(DIR_CSS.$item);	
						} catch (Exception $e) {}
					}
						
				}
				
				//$output=JSMin::minify($output);
				//$this->data['output'] = $output;
				
				if (!is_dir(DIR_CACHEHTML))
				mkdir( DIR_CACHEHTML , 0777 );
				$handle = fopen($file, 'w');
				fwrite($handle, $output);
				fclose($handle);
				header( 'Location: '.ROOT_HTTP_SERVER.$file );
				
				//$this->id="style";
				//$this->template="common/script.tpl";
				//$this->render();
			}
		}
	}
?>