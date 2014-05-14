<?php
class ModelElifeDictionary extends Model
{
	private $data = array();
	private $filepath;
	function __construct() 
	{
		$this->filepath = DIR_LANGUAGE."language.json";
		if(!is_file($this->filepath))
		{
			$fp = fopen($this->filepath, 'w');
			fwrite($fp, '');
			fclose($fp);	
		}
		$this->getData();
   	}
	
	
	public function getData()
	{
		$filename = $this->filepath;
		$handle = fopen($filename, "r");
		@$contents = fread($handle, filesize($filename));
		fclose($handle);
		$obj = json_decode($contents);
		if(count($obj))
		{
			foreach($obj as $key=>$item)
			{
				$this->data[$key]['languagekey'] = $item->languagekey;
				foreach($this->language->getLanguages() as $lang)
				{
					$this->data[$key][$lang['languageid']] = $item->$lang['languageid'];		
				}
			}
		}
	}
	
	private function saveData()
	{
		$str = json_encode($this->data);
		$fp = fopen($this->filepath, 'w');
		fwrite($fp, $str);
		fclose($fp);
	}
	
	public function getList()
	{
		return $this->data;	
	}
	
	public function getItem($languagekey)
	{
		foreach($this->data as $key=>$item)
		{
			if($languagekey == $item['languagekey'])
			{
				return $item;
			}
		}
	}
	
	public function insert($datarow)
	{
		$row['languagekey'] = $datarow['languagekey'];
		foreach($this->language->getLanguages() as $lang)
		{
			$row[$lang['languageid']] = $datarow[$lang['languageid']];	
		}
		
		$this->data[] = $row;
		$this->saveData();
	}
	
	public function update($datarow)
	{
		$pos = -1;
		if(count($this->data))
			foreach($this->data as $key=>$item)
			{
				if($datarow['languagekey'] == $item['languagekey'])
				{
					foreach($this->language->getLanguages() as $lang)
					{
						$this->data[$key][$lang['languageid']] = $datarow[$lang['languageid']];		
					}
					
					$pos = $key;
				}
			}
		$this->saveData();
		return $pos;
	}
	
	public function save($data)
	{
		$pos = $this->update($data);
		if($pos == -1)
			$this->insert($data);
	}
	
	public function delete($languagekey)
	{
		foreach($this->data as $key=>$item)
		{
			if($languagekey == $item['languagekey'])
			{
				unset($this->data[$key]);
			}
		}
		$this->saveData();
	}
}
?>