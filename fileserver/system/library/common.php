<?php
final class Common
{
	public function combobox($data = array(), $displaymember = "", $valuemember = "", $selectedvalue = "", $firstdisplay = "", $firstvalue = "")
	{
		$result = "";
		if($firstdisplay != "" || $firstvalue != "")
		{
			$result .= "<option value='".$firstvalue."'>".$firstdisplay."</option>";
		}
		if($valuemember == "" && $displaymember == "")
		{
			foreach($data as $value => $display)
			{
				$selected = "";
				if($value == $selectedvalue) $selected = "selected='selected'";
				$result .= "<option value='".$value."' ".$selected.">".$display."</option>";
			}
		}
		else
		{
			for($i=0; $i<count($data); $i++)
			{
				$selected = "";
				if($data[$i][$valuemember] == $selectedvalue) $selected = "selected='selected'";
				$result .= "<option value='".$data[$i][$valuemember]."' ".$selected.">".$data[$i][$displaymember]."</option>";
			}	
		}
		return $result;
	}
	
	public function radiobutton($data = array(), $inputname, $selectedvalue = "")
	{
		$result = "";
		foreach($data as $value=>$text)
		{
			$checked = "";
			if($value."" == $selectedvalue) $checked = "checked";
			$result .= '<span class="radio">';
			$result .= '<input type="radio" name="'.$inputname.'" id="'.$inputname.'" value="'.$value.'" '.$checked.'> <label for="'.$inputname.'" class="radio">'.$text.'</label>';
			$result .= '</span>';	
		}
		return $result;
	}
	
	public function checkbox($labeltext, $inputname, $inputvalue, $selectedvalue = "")
	{
		$result = "";
		$checked = "";
		if($inputvalue."" == $selectedvalue) $checked = 'checked = "checked"';
		$result .= '<span class="checkbox">';
		$result .= '<input type="checkbox" id="'.$inputname.'" name="'.$inputname.'" value="'.$inputvalue.'" '.$checked.'/>';
		$result .= '<label for="'.$inputname.'">'.$labeltext.'</label>';	
		$result .= '</span>';	
		return $result;
	}
	
	//Sap xep array
	public function array_sort($records, $field, $reverse=false)
	{
		$hash = array();
		
		foreach($records as $record)
		{
			$hash[$record[$field]] = $record;
		}
		
		($reverse)? krsort($hash) : ksort($hash);
		
		$records = array();
		
		foreach($hash as $record)
		{
			$records []= $record;
		}
		
		return $records;
	}
	
	function search_array($array, $key, $value)
	{
		$results = array();
	
		if (is_array($array))
		{
			if (isset($array[$key]) && $array[$key] == $value)
				$results[] = $array;
	
			foreach ($array as $subarray)
				$results = array_merge($results, $this->search_array($subarray, $key, $value));
		}
	
		return $results;
	}
	
}
?>