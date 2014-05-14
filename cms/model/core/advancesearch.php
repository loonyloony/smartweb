<?php
/*
 * ProjectName: smartweb
 * FileName: advancesearch.php
 * Created by: pham huynh quoc dung
 * Updated by:
 * Date: Nov 2, 2013
 */
class ModelCoreAdvanceSearch extends Model {

	public function getItem($where="")
	{
		$sql = "Select `advance_search`.* from `advance_search` where ".$where;
		$query = $this->db->query($sql);
		
		return $query->row;
	}

	/**
	 * Method: insert
	 * Parameters: 
	 * 		$data: It's a advancesearch object for insert 
	 * Return:
	 * 		the searchadvanceid
	*/
	function insert($data) {

		$common = Registry :: get("common");

		$objtype = $this->db->escape($data['objtype']);
		$objid = $this->db->escape($data['objid']);
		$rootcontent = $this->db->escape($data['rootcontent']);
		$escapecontent = $this->db->escape($common->utf8_to_ascii($data['rootcontent']));

		//get alt of image and title
		//$info = $common->getAdvanceSearchInfo($escapecontent);
		$info = $common->getAdvanceSearchInfo($rootcontent);
		$alt_image = $this->db->escape($info['img']);
		$others = $this->db->escape($info['title']);
		
		$languageid = $data['languageid'];
		$title = $data['title'];
		$imagepath = $data['imagepath'];
		$summary = $data['summary'];
		$updateddate = $data['updateddate'];
		$seo_url = $data['seo_url'];

		$field = array (
			'objtype',
			'objid',
			'rootcontent',
			'escapecontent',
			'alt_image',
			'others',
			'languageid',
			'title',
			'imagepath',
			'summary',
			'updateddate',
			'seo_url'
		);

		$value = array (
			$objtype,
			$objid,
			$rootcontent,
			$escapecontent,
			$alt_image,
			$others,
			$languageid,
			$title,
			$imagepath,
			$summary,
			$updateddate,
			$seo_url
		);

		$id = $this->db->insertData('advance_search', $field, $value);

		return $id;
	}

	private function nextID($prefix) {
		return $this->db->getNextIdVarChar("advance_search", "advancesearchid", $prefix);
	}
	
	function updateOrInsert($data) {
		
		try {
			$common = Registry :: get("common");

			$objtype = $this->db->escape($data['objtype']);
			$objid = $this->db->escape($data['objid']);
			$rootcontent = $this->db->escape($data['rootcontent']);
			$escapecontent = $this->db->escape($common->utf8_to_ascii($data['rootcontent']));
			
			//get alt of image and title
			//$info = $common->getAdvanceSearchInfo($escapecontent);
			$info = $common->getAdvanceSearchInfo($rootcontent);
			$alt_image = $this->db->escape($info['img']);
			$others = $this->db->escape($info['title']);
			
			$languageid = $data['languageid'];
			$title = $data['title'];
			$imagepath = $data['imagepath'];
			$summary = $data['summary'];
			$updateddate = $data['updateddate'];
			$seo_url = $data['seo_url'];
			
			$field = array (
				'objtype',
				'objid',
				'rootcontent',
				'escapecontent',
				'alt_image',
				'others',
				'languageid',
				'title',
				'imagepath',
				'summary',
				'updateddate',
				'seo_url'
			);
	
			$value = array (
				$objtype,
				$objid,
				$rootcontent,
				$escapecontent,
				$alt_image,
				$others,
				$languageid,
				$title,
				$imagepath,
				$summary,
				$updateddate,
				$seo_url
			);
			
			$where = "objid = '".$objid."' and objtype = '".$objtype."' AND languageid = '".$languageid."'";
			if (count($this->getItem($where)) > 0) {
				$this->db->updateData('advance_search', $field, $value, $where);	
			} else {
				$this->db->insertData('advance_search', $field, $value);
			}
			
		} catch (Exception $e) {
			die('exception: '. $e->getMessage()."\n");
			return false;
		}
		
		return true;
	}

	function update($data) {
		
		try {
			$common = Registry :: get("common");

			$objtype = $this->db->escape($data['objtype']);
			$objid = $this->db->escape($data['objid']);
			$rootcontent = $this->db->escape($data['rootcontent']);
			$escapecontent = $this->db->escape($common->utf8_to_ascii($data['rootcontent']));
	
			//get alt of image and title
			//$info = $common->getAdvanceSearchInfo($escapecontent);
			$info = $common->getAdvanceSearchInfo($rootcontent);
			$alt_image = $this->db->escape($info['img']);
			$others = $this->db->escape($info['title']);
			
			$languageid = $data['languageid'];
			$title = $data['title'];
			$imagepath = $data['imagepath'];
			$summary = $data['summary'];
			$updateddate = $data['updateddate'];
			$seo_url = $data['seo_url'];
			
			$field = array (
				'objtype',
				'objid',
				'rootcontent',
				'escapecontent',
				'alt_image',
				'others',
				'languageid',
				'title',
				'imagepath',
				'summary',
				'updateddate',
				'seo_url'
			);
	
			$value = array (
				$objtype,
				$objid,
				$rootcontent,
				$escapecontent,
				$alt_image,
				$others,
				$languageid,
				$title,
				$imagepath,
				$summary,
				$updateddate,
				$seo_url
			);
		
			$where = "objid = '$objid' and objtype = '$objtype'";	
			$this->db->updateData('advance_search', $field, $value, $where);
		} catch (Exception $e) {
			die('exception: '. $e->getMessage()."\n");
			return false;
		}
		
		return true;
	}

	function delete() {

	}
}
?>
