<?php
final class Common {
	public function combobox($data = array (), $displaymember = "", $valuemember = "", $selectedvalue = "", $firstdisplay = "", $firstvalue = "") {
		$result = "";
		if ($firstdisplay != "" || $firstvalue != "") {
			$result .= "<option value='" . $firstvalue . "'>" . $firstdisplay . "</option>";
		}
		if ($valuemember == "" && $displaymember == "") {
			foreach ($data as $value => $display) {
				$selected = "";
				if ($value == $selectedvalue)
					$selected = "selected='selected'";
				$result .= "<option value='" . $value . "' " . $selected . ">" . $display . "</option>";
			}
		} else {
			for ($i = 0; $i < count($data); $i++) {
				$selected = "";
				if ($data[$i][$valuemember] == $selectedvalue)
					$selected = "selected='selected'";
				$result .= "<option value='" . $data[$i][$valuemember] . "' " . $selected . ">" . $data[$i][$displaymember] . "</option>";
			}
		}
		return $result;
	}

	public function radiobutton($data = array (), $inputname, $selectedvalue = "") {
		$result = "";
		foreach ($data as $value => $text) {
			$checked = "";
			if ($value . "" == $selectedvalue)
				$checked = "checked";
			$result .= '<span class="radio">';
			$result .= '<input style="vertical-align: middle" type="radio" name="' . $inputname . '" id="' . $inputname . '" value="' . $value . '" ' . $checked . '>&nbsp;<label for="' . $inputname . '" class="radio">' . $text . '</label>&nbsp;&nbsp;';
			$result .= '</span>';
		}
		return $result;
	}

	public function checkbox($labeltext, $inputname, $inputvalue, $selectedvalue = "") {
		$result = "";
		$checked = "";
		if ($inputvalue . "" == $selectedvalue)
			$checked = 'checked = "checked"';
		$result .= '<span class="checkbox">';
		$result .= '<input type="checkbox" id="' . $inputname . '" name="' . $inputname . '" value="' . $inputvalue . '" ' . $checked . '/>';
		$result .= '<label for="' . $inputname . '">' . $labeltext . '</label>';
		$result .= '</span>';
		return $result;
	}

	//Sap xep array
	public function array_sort($records, $field, $reverse = false) {
		$hash = array ();

		foreach ($records as $record) {
			$hash[$record[$field]] = $record;
		}

		($reverse) ? krsort($hash) : ksort($hash);

		$records = array ();

		foreach ($hash as $record) {
			$records[] = $record;
		}

		return $records;
	}

	function search_array($array, $key, $value) {
		$results = array ();

		if (is_array($array)) {
			if (isset ($array[$key]) && $array[$key] == $value)
				$results[] = $array;

			foreach ($array as $subarray)
				$results = array_merge($results, $this->search_array($subarray, $key, $value));
		}

		return $results;
	}

	function buildMaxtrixTranslateUnicode() {
		$array_A = array (
			'Á' => 'A',
			'À' => 'A',
			'Ả' => 'A',
			'Ã' => 'A',
			'Ạ' => 'A',
			'Ă' => 'A',
			'Ắ' => 'A',
			'Ằ' => 'A',
			'Ẳ' => 'A',
			'Ẵ' => 'A',
			'Ặ' => 'A',
			'Â' => 'A',
			'Ấ' => 'A',
			'Ầ' => 'A',
			'Ẩ' => 'A',
			'Ẫ' => 'A',
			'Ậ' => 'A'
		);
		$array_a = array (
			'á' => 'a',
			'à' => 'a',
			'ả' => 'a',
			'ã' => 'a',
			'ạ' => 'a',
			'ă' => 'a',
			'ắ' => 'a',
			'ằ' => 'a',
			'ẳ' => 'a',
			'ẵ' => 'a',
			'ặ' => 'a',
			'â' => 'a',
			'ấ' => 'a',
			'ầ' => 'a',
			'ẩ' => 'a',
			'ẫ' => 'a',
			'ậ' => 'a'
		);
		$array_D = array (
			'Đ' => 'D'
		);
		$array_d = array (
			'đ' => 'd'
		);
		$array_E = array (
			'É' => 'E',
			'È' => 'E',
			'Ẻ' => 'E',
			'Ẽ' => 'E',
			'Ẹ' => 'E',
			'Ê' => 'E',
			'Ế' => 'E',
			'Ề' => 'E',
			'Ể' => 'E',
			'Ễ' => 'E',
			'Ệ' => 'E'
		);
		$array_e = array (
			'é' => 'e',
			'è' => 'e',
			'ẻ' => 'e',
			'ẽ' => 'e',
			'ẹ' => 'e',
			'ê' => 'e',
			'ế' => 'e',
			'ề' => 'e',
			'ể' => 'e',
			'ễ' => 'e',
			'ệ' => 'e'
		);
		$array_I = array (
			'Í' => 'I',
			'Ì' => 'I',
			'Ỉ' => 'I',
			'Ĩ' => 'I',
			'Ị' => 'I'
		);
		$array_i = array (
			'í' => 'i',
			'ì' => 'i',
			'ỉ' => 'i',
			'ĩ' => 'i',
			'ị' => 'i'
		);
		$array_O = array (
			'Ó' => 'O',
			'Ò' => 'O',
			'Ỏ' => 'O',
			'Õ' => 'O',
			'Ọ' => 'O',
			'Ô' => 'O',
			'Ố' => 'O',
			'Ồ' => 'O',
			'Ổ' => 'O',
			'Ỗ' => 'O',
			'Ộ' => 'O',
			'Ơ' => 'O',
			'Ớ' => 'O',
			'Ờ' => 'O',
			'Ở' => 'O',
			'Ỡ' => 'O',
			'Ợ' => 'O'
		);
		$array_o = array (
			'ó' => 'o',
			'ò' => 'o',
			'ỏ' => 'o',
			'õ' => 'o',
			'ọ' => 'o',
			'ô' => 'o',
			'ố' => 'o',
			'ồ' => 'o',
			'ổ' => 'o',
			'ỗ' => 'o',
			'ộ' => 'o',
			'ơ' => 'o',
			'ớ' => 'o',
			'ờ' => 'o',
			'ở' => 'o',
			'ỡ' => 'o',
			'ợ' => 'o'
		);
		$array_U = array (
			'Ú' => 'U',
			'Ù' => 'U',
			'Ủ' => 'U',
			'Ũ' => 'U',
			'Ụ' => 'U',
			'Ư' => 'U',
			'Ứ' => 'U',
			'Ừ' => 'U',
			'Ử' => 'U',
			'Ữ' => 'U',
			'Ự' => 'U'
		);
		$array_u = array (
			'ú' => 'u',
			'ù' => 'u',
			'ủ' => 'u',
			'ũ' => 'u',
			'ụ' => 'u',
			'ư' => 'u',
			'ứ' => 'u',
			'ừ' => 'u',
			'ử' => 'u',
			'ữ' => 'u',
			'ự' => 'u'
		);
		$array_Y = array (
			'Ý' => 'Y',
			'Ỳ' => 'Y',
			'Ỷ' => 'Y',
			'Ỹ' => 'Y',
			'Ỵ' => 'Y'
		);
		$array_y = array (
			'ý' => 'y',
			'ỳ' => 'y',
			'ỷ' => 'y',
			'ỹ' => 'y',
			'ỵ' => 'y'
		);

		$array_translate = array_merge($array_A, $array_a, $array_D, $array_d, $array_E, $array_e, $array_I, $array_i, $array_O, $array_o, $array_U, $array_u, $array_Y, $array_y);
		unset ($array_A);
		unset ($array_a);
		unset ($array_D);
		unset ($array_d);
		unset ($array_E);
		unset ($array_e);
		unset ($array_I);
		unset ($array_i);
		unset ($array_O);
		unset ($array_o);
		unset ($array_U);
		unset ($array_u);
		unset ($array_Y);
		unset ($array_y);

		return $array_translate;
	}

	//********
	//helper to implement to advance search's function
	function utf8_to_ascii($str) {
		if (!isset ($str))
			return "";

		global $GLOBAL_ARRAY_TRANSLATE_UNICODE;

		$str = strtr($str, $GLOBAL_ARRAY_TRANSLATE_UNICODE);
		return $str;
	}

	function getAdvanceSearchInfo($content) {
		
		require_once(DIR_SERVERROOT.'simple_html_dom.php');
		
		$result = array('img'=>'', 'title'=>'');
		
		$content = htmlspecialchars_decode($content);
		
		//load html dom
		$html = str_get_html($content);
		
		//find title
		foreach($html->find('title') as $title) {
			if ($title->plaintext != '') {
				$result['title'] .= $title->plaintext."##";
			}
		}
		
		foreach($html->find('img') as $image) {
			if ($image->alt != '') {
				$result['img'] .= $image->alt."##";
			}
		}	
		
		return $result;
	}
	
	/**
	Save file
	parameters:
	$dir: path to folder write file
	$filename: name of file
	$content: content to write
	$modeWrite: one of list ("w", "a", vvv..)
	*/
	function writeFileText($dir, $filename, $content, $modeWrite) {
		try {
			if ($dir != $DIR_SERVERROOT) {
				if(!is_dir($dir)) {
					mkdir($dir);
				}	
			}
			
			$fp = fopen($dir.$filename, $modeWrite);
			
			fwrite($fp, $content);
			fclose($fp);
		} catch (Exception $e) {
			echo 'Caught exception: ',  $e->getMessage(), "\n";
		}
	}
}
?>