<?php
class ModelCoreMedia extends Model {
	public function getItem($mediaid, $where = "") {
		$sql = "Select `media`.* from `media` where mediaid ='" . $mediaid . "' " . $where;
		$query = $this->db->query($sql);

		return $query->row;
	}

	public function getItemBySitemapID($sitemapid, $mediatype, $where = "") {
		$query = $this->db->query("Select `media`.* 
										from `media` 
										where refersitemap like '%[" . $sitemapid . "]%' AND mediatype = '" . $mediatype . "' AND status not like 'delete' " . $where);
		return $query->row;
	}

	public function getByAlias($alias, $where = "") {
		$query = $this->db->query("Select `media`.* 
										from `media` 
										where alias ='" . $alias . "' " . $where);
		return $query->row;
	}

	public function getList($where = "", $from = 0, $to = 0) {

		$sql = "Select `media`.* 
										from `media` 
										where status not like 'delete' AND temp not like 'temp' AND mediaid like '%" . $this->user->getSiteId() . "%' " . $where . " Order by position, statusdate DESC";
		if ($to > 0) {
			$sql .= " Limit " . $from . "," . $to;
		}

		$query = $this->db->query($sql);
		return $query->rows;
	}
	public function getMedias($where = "", $from = 0, $to = 5) {

		$sql = "Select `media`.* 
										from `media` 
										where status not like 'delete' " . $where;
		if ($to > 0) {
			$sql .= " Limit " . $from . "," . $to;
		}

		$query = $this->db->query($sql);
		return $query->rows;
	}
	
	public function getPaginationList($options, $step = 0, $to = 20) {
		//From
		if ((int) $step < 0)
			$step = 0;
		$from = (int) $step * (int) $to;

		//All Options
		$mediaparent = $options['mediaparent'];
		$mediatype = $options['mediatype'];
		$day = $options['day'];
		$month = $options['month'];
		$year = $options['year'];
		$refersitemap = $options['refersitemap'];

		//Where Command
		$where = "";

		//Media Parent
		if (is_array($mediaparent)) {
			foreach ($mediaparent as $item) {
				$where .= " AND mediaparent ='" . $item . "'";
			}
		}
		elseif ($mediaparent != "%") {
			$where .= " AND mediaparent ='" . $mediaparent . "'";
		}

		//Media Type
		if (is_array($mediatype)) {
			foreach ($mediatype as $item) {
				$where .= " AND mediatype ='" . $item . "'";
			}
		}
		elseif ($mediatype != "%") {
			$where .= " AND mediatype ='" . $mediatype . "'";
		}

		//Date
		if ($month != "" && $day != "" && $year != "") {
			$php_start_time = mktime(0, 0, 0, $month, $day, $year);
			$php_end_time = $php_start_time + (24 * 60 * 60); // Add 1 day to start date.
			$start_date = date('Y-m-d', $php_start_time) . ' 000000';
			$end_date = date('Y-m-d', $php_end_time) . ' 000000';

			$where .= " AND statusdate >= '" . $start_date . "' AND statusdate < '" . $end_date . "'";
		}

		//refersitemap
		if (is_array($refersitemap)) {
			foreach ($refersitemap as $item) {
				$arr[] = " refersitemap like '%[" . $item . "]%'";
			}

			$where .= "AND (" . implode($arr, " OR ") . ")";
		}
		elseif ($refersitemap != "%") {
			$where .= " AND refersitemap like '%[" . $refersitemap . "]%'";
		}

		return $this->getList($where, $from, $to);
	}

	public function getInformationMedia($sitemapid, $type) {
		$query = $this->db->query("Select `media`.* 
											from `media` 
											where refersitemap like '%[" . $sitemapid . "]%' AND mediatype = '" . $type . "'");

		return $query->row;
	}

	public function getListBySitemap($sitemapid, $type) {
		$query = $this->db->query("Select `media`.* 
											from `media` 
											where refersitemap like '%[" . $sitemapid . "]%' AND mediatype = '" . $type . "'");

		return $query->rows;
	}

	public function getListByParent($parent, $order = "", $from = 0, $length = 0) {
		$where = "AND mediaparent = '" . $parent . "' " . $order;
		return $this->getMedias($where, $from, $length);

	}

	public function updateMediaDate($mediaid, $statusdate) {
		$createddate = $this->date->getToday();
		$sql = "Update `media` set `createddate` = '" . $createddate . "' where `mediaid` = '" . $mediaid . "'";
		$this->db->query($sql);
	}

	public function updatePos($data) {
		$mediaid = $this->db->escape(@ $data['mediaid']);
		$position = (int) @ $data['position'];

		$field = array (
			'position'
		);
		$value = array (
			$position
		);

		$where = "mediaid = '" . $mediaid . "'";
		$this->db->updateData('media', $field, $value, $where);
	}

	public function updatePosition($mediaid, $position) {
		$position = (int) @ $position;

		$field = array (
			'position'
		);
		$value = array (
			$position
		);

		$where = "mediaid = '" . $mediaid . "'";
		$this->db->updateData('media', $field, $value, $where);
	}

	public function updateStatus($mediaid, $status) {
		$mediaid = $this->db->escape(@ $mediaid);
		$status = $this->db->escape(@ $status);
		$statusdate = $this->date->getToday();
		$statusby = $this->db->escape(@ $this->user->getUsername());

		$field = array (
			'status',
			'statusdate',
			'statusby'
		);
		$value = array (
			$status,
			$statusdate,
			$statusby
		);

		$where = "mediaid = '" . $mediaid . "'";
		$this->db->updateData('media', $field, $value, $where);
	}
	public function updateCol($mediaid, $col, $val) {
		$mediaid = $mediaid;
		$col = $col;
		$val = $val;

		$field = array (
			$col
		);
		$value = array (
			$val
		);

		$where = "mediaid = '" . $mediaid . "'";
		$this->db->updateData('media', $field, $value, $where);
	}
	public function initialization($mediaid, $mediatype) {

		$mediaid = $this->db->escape(@ $mediaid);
		$arr = $this->getItem($mediaid);

		if (count($arr) == 0) {
			$mediatype = $this->db->escape(@ $mediatype);
			$status = "active";
			$statusdate = $this->date->getToday();
			$statusby = $this->db->escape(@ $data['userid']);
			$updateddate = $this->date->getToday();

			$field = array (
				'mediaid',
				'mediatype',
				'status',
				'statusdate',
				'statusby',
				'updateddate'
			);
			$value = array (
				$mediaid,
				$mediatype,
				$status,
				$statusdate,
				$statusby,
				$updateddate
			);
			$this->db->insertData("media", $field, $value);

		}
		return $arr;
	}

	private function nextID($prefix) {
		return $this->db->getNextIdVarChar("media", "mediaid", $prefix);
	}

	public function insertTemp($data) {
		$mediaid = $this->nextID($this->user->getSiteId() . time());
		$mediaparent = $this->db->escape(@ $data['mediaparent']);
		$mediatype = $this->db->escape(@ $data['mediatype']);
		$refersitemap = $this->db->escape(@ $data['refersitemap']);
		$userid = $this->db->escape(@ $data['userid']);

		$title = $this->db->escape(@ $data['title']);
		$alias = $this->db->escape(@ $data['alias']);
		$summary = $this->db->escape(@ $data['summary']);
		$price = $this->db->escape(@ $data['price']);
		$description = (@ $data['description']);
		$author = $this->db->escape(@ $data['author']);
		$source = $this->db->escape(@ $data['source']);

		$imageid = (int) @ $data['imageid'];
		$imagepath = $this->db->escape(@ $data['imagepath']);
		$fileid = (int) @ $data['fileid'];
		$filepath = $this->db->escape(@ $data['filepath']);

		$groupkeys = $this->db->escape(@ $data['groupkeys']);
		$viewcount = 0;
		$position = (int) @ $data['position'];
		$status = "delete";
		$temp = "temp";
		$statusdate = $this->date->getToday();
		$statusby = $this->db->escape(@ $data['userid']);

		$updateddate = $this->date->getToday();

		$field = array (
			'mediaid',
			'mediaparent',
			'mediatype',
			'refersitemap',
			'userid',
			'title',
			'alias',
			'summary',
			'price',
			'description',
			'author',
			'source',
			'imageid',
			'imagepath',
			'fileid',
			'filepath',
			'groupkeys',
			'viewcount',
			'position',
			'status',
			'temp',
			'statusdate',
			'statusby',
			'updateddate',
		);
		
		$value = array (
			$mediaid,
			$mediaparent,
			$mediatype,
			$refersitemap,
			$userid,
			$title,
			$alias,
			$summary,
			$price,
			$description,
			$author,
			$source,
			$imageid,
			$imagepath,
			$fileid,
			$filepath,
			$groupkeys,
			$viewcount,
			$position,
			$status,
			$temp,
			$statusdate,
			$statusby,
			$updateddate,

			
		);
		$this->db->insertData("media", $field, $value);
		$this->updateFileTemp($imageid);
		$this->updateFileTemp($fileid);
		return $mediaid;
	}

	public function insert($data) {
		if ($data['mediaid'] == '') {
			$mediaid = $this->nextID($this->user->getSiteId() . time());
		} else {
			$mediaid = $this->db->escape(@ $data['mediaid']);
		}
		$retunvalue = $mediaid;
		$mediaparent = $this->db->escape(@ $data['mediaparent']);
		$mediatype = $this->db->escape(@ $data['mediatype']);
		$refersitemap = $this->db->escape(@ $data['refersitemap']);
		$userid = $this->db->escape(@ $data['userid']);
		$alias = $this->db->escape(@ $data['alias']);

		$title = $this->db->escape(@ $data['title']);
		$summary = $this->db->escape(@ $data['summary']);
		$price = $this->db->escape(@ $data['price']);
		$description = (@ $data['description']);
		$author = $this->db->escape(@ $data['author']);
		$source = $this->db->escape(@ $data['source']);

		$imageid = (int) @ $data['imageid'];
		$imagepath = $this->db->escape(@ $data['imagepath']);
		$fileid = (int) @ $data['fileid'];
		$filepath = $this->db->escape(@ $data['filepath']);

		$groupkeys = $this->db->escape(@ $data['groupkeys']);
		$viewcount = 0;
		$position = (int) @ $data['position'];
		$status = $this->db->escape(@ $data['status']);
		$statusdate = $this->date->getToday();
		$statusby = $this->db->escape(@ $data['userid']);
		$languageid = $this->db->escape(@ $data['languageid']);
		$updateddate = $this->date->getToday();
		$meta_title = $this->db->escape(@ $data['meta_title']);
		$metakeyword = $this->db->escape(@ $data['metakeyword']);
		$metadescription = $this->db->escape(@ $data['metadescription']);
		$link = $this->db->escape(@ $data['link']);
		$email = $this->db->escape(@ $data['email']);
		$keyword = $this->db->escape(@ $data['keyword']);
		$seo_content = $this->db->escape(@ $data['seo_content']);

		$field = array (
			'mediaid',
			'mediaparent',
			'mediatype',
			'refersitemap',
			'userid',
			'title',
			'summary',
			'price',
			'description',
			'author',
			'source',
			'imageid',
			'imagepath',
			'fileid',
			'filepath',
			'groupkeys',
			'viewcount',
			'position',
			'status',
			'statusdate',
			'statusby',
			'updateddate',
			'languageid',
			'meta_title',
			'metakeyword',
			'metadescription',
			'alias',
			'link',
			'email',
			'keyword',
			'seo_content'
		);
		$value = array (
			$mediaid,
			$mediaparent,
			$mediatype,
			$refersitemap,
			$userid,
			$title,
			$summary,
			$price,
			$description,
			$author,
			$source,
			$imageid,
			$imagepath,
			$fileid,
			$filepath,
			$groupkeys,
			$viewcount,
			$position,
			$status,
			$statusdate,
			$statusby,
			$updateddate,
			$languageid,
			$meta_title,
			$metakeyword,
			$metadescription,
			$alias,
			$link,
			$email,
			$keyword,
			$seo_content
		);

		$mediaid = $this->db->insertData("media", $field, $value);

		if (SKINID == "elifesupport") {
			if (isset ($data['top'])) {
				$sql = " update `media` set `top` = 'top' where id = '" . $mediaid . "'";
				$this->db->query($sql);
			} else {
				$sql = " update `media` set `top` = '' where id = '" . $mediaid . "'";
				$this->db->query($sql);
			}
		}

		$zoom = $this->db->escape(@ $data['zoom']);
		$x = $this->db->escape(@ $data['x']);
		$y = $this->db->escape(@ $data['y']);

		if ($zoom != "") {
			$this->saveInformation($mediaid, 'zoom', $zoom);
			$this->saveInformation($mediaid, 'x', $x);
			$this->saveInformation($mediaid, 'y', $y);
		}

		//insert data into advance_search 6/11 anh dung
		$data_advance_search = array ();
		$data_advance_search['objtype'] = 'media';
		$data_advance_search['objid'] = $retunvalue;
		$data_advance_search['rootcontent'] = "&lt;p&gt;" . $data['title'] . "&lt;/p&gt;" . $data['summary'] . $data['description'];
		$data_advance_search['languageid'] = $languageid;
		$data_advance_search['title'] = $title;
		$data_advance_search['imagepath'] = $imagepath;
		$data_advance_search['summary'] = $this->db->escape(@ $data['summary']);
		$data_advance_search['updateddate'] = $updateddate;
		$data_advance_search['seo_url'] = $alias;
		
		$this->load->model('core/advancesearch');
		$this->model_core_advancesearch->insert($data_advance_search);

		return $retunvalue;
	}

	public function updates($data) {
		$mediaid = $this->db->escape(@ $data['mediaid']);
		$mediaparent = $this->db->escape(@ $data['mediaparent']);
		$mediatype = $this->db->escape(@ $data['mediatype']);
		$refersitemap = $this->db->escape(@ $data['refersitemap']);
		//$userid=$this->db->escape(@$data['userid']);
		$alias = $this->db->escape(@ $data['alias']);

		$title = $this->db->escape(@ $data['title']);
		$summary = $this->db->escape(@ $data['summary']);
		$price = $this->db->escape(@ $data['price']);
		$description = (@ $data['description']);
		$author = $this->db->escape(@ $data['author']);
		$source = $this->db->escape(@ $data['source']);

		$imageid = (int) @ $data['imageid'];
		$imagepath = $this->db->escape(@ $data['imagepath']);
		$fileid = (int) @ $data['fileid'];
		$filepath = $this->db->escape(@ $data['filepath']);

		$groupkeys = $this->db->escape(@ $data['groupkeys']);
		$viewcount = 0;
		$position = (int) @ $data['position'];
		$status = $this->db->escape(@ $data['status']);
		$statusby = $this->db->escape(@ $data['userid']);
		$languageid = $this->db->escape(@ $data['languageid']);
		$updateddate = $this->date->getToday();
		$meta_title = $this->db->escape(@ $data['meta_title']);
		$metakeyword = $this->db->escape(@ $data['metakeyword']);
		$metadescription = $this->db->escape(@ $data['metadescription']);
		$link = $this->db->escape(@ $data['link']);
		$email = $this->db->escape(@ $data['email']);
		$keyword = $this->db->escape(@ $data['keyword']);
		$seo_content = $this->db->escape(@ $data['seo_content']);

		$field = array (
			'mediaid',
			'mediaparent',
			'mediatype',
			'refersitemap',
			'title',
			'summary',
			'price',
			'description',
			'author',
			'source',
			'imageid',
			'imagepath',
			'fileid',
			'filepath',
			'groupkeys',
			'viewcount',
			'position',
			'status',
			'statusby',
			'updateddate',
			'languageid',
			'meta_title',
			'metakeyword',
			'metadescription',
			'alias',
			'link',
			'email',
			'keyword',
			'seo_content'
		);
		$value = array (
			$mediaid,
			$mediaparent,
			$mediatype,
			$refersitemap,
			$title,
			$summary,
			$price,
			$description,
			$author,
			$source,
			$imageid,
			$imagepath,
			$fileid,
			$filepath,
			$groupkeys,
			$viewcount,
			$position,
			$status,
			$statusby,
			$updateddate,
			$languageid,
			$meta_title,
			$metakeyword,
			$metadescription,
			$alias,
			$link,
			$email,
			$keyword,
			$seo_content
		);
		
		
		$data_advance_search = array ();
		
		//-----------------------------------------------------------------------------------
		//insert data into advance_search 6/11 anh dung
		$data_advance_search['objtype'] = 'media';
		$data_advance_search['objid'] = $mediaid;
		$data_advance_search['rootcontent'] = "&lt;p&gt;" . $data['title'] . "&lt;/p&gt;" . $data['summary'] . $data['description'];
		$data_advance_search['languageid'] = $languageid;
		$data_advance_search['title'] = $title;
		$data_advance_search['imagepath'] = $imagepath;
		$data_advance_search['summary'] = $this->db->escape(@ $data['summary']);
		$data_advance_search['updateddate'] = $updateddate;
		$data_advance_search['seo_url'] = $alias;
		
		$this->load->model('core/advancesearch');	
		
		if (count($this->getItem($mediaid, " AND languageid = '" . $languageid . "'")) > 0) {
			$where = " mediaid = '" . $mediaid . "' AND languageid = '" . $languageid . "'";
			$this->db->updateData("media", $field, $value, $where);

			//update advance_search 6/11 anh dung
			$this->model_core_advancesearch->updateOrInsert($data_advance_search);	
			
		} else {
			$this->db->insertData("media", $field, $value);

			//insert advance_search 6/11 anh dung
			$this->model_core_advancesearch->insert($data_advance_search);
			
		}
		//----------------------------------------------------------------------------------

		//
		if (SKINID == "elifesupport") {
			if (isset ($data['top'])) {
				$sql = " update `media` set `top` = 'top' where mediaid = '" . $mediaid . "'";
				$this->db->query($sql);
			} else {
				$sql = " update `media` set `top` = '' where mediaid = '" . $mediaid . "'";
				$this->db->query($sql);
			}
		}

		$zoom = $this->db->escape(@ $data['zoom']);
		$x = $this->db->escape(@ $data['x']);
		$y = $this->db->escape(@ $data['y']);

		if ($zoom != "") {
			$this->saveInformation($mediaid, 'zoom', $zoom);
			$this->saveInformation($mediaid, 'x', $x);
			$this->saveInformation($mediaid, 'y', $y);
		}

		return $mediaid;
	}

	public function update($data) {
		$mediaid = $this->db->escape(@ $data['mediaid']);
		$mediaparent = $this->db->escape(@ $data['mediaparent']);
		$mediatype = $this->db->escape(@ $data['mediatype']);
		$refersitemap = $this->db->escape(@ $data['refersitemap']);
		$userid = $this->db->escape(@ $data['userid']);

		$title = $this->db->escape(@ $data['title']);
		$summary = $this->db->escape(@ $data['summary']);
		$price = $this->db->escape(@ $this->string->toNumber($data['price']));
		$description = (@ $data['description']);
		$alias = $this->db->escape(@ $data['alias']);
		$keyword = $this->db->escape(@ $data['keyword']);
		$author = $this->db->escape(@ $data['author']);
		$source = $this->db->escape(@ $data['source']);
		$imageid = (int) @ $data['imageid'];
		$imagepath = $this->db->escape(@ $data['imagepath']);
		$fileid = (int) @ $data['fileid'];
		$filepath = $this->db->escape(@ $data['filepath']);
		$status = "active";
		$groupkeys = $this->db->escape(@ $data['groupkeys']);
		$tagkeyword = $this->db->escape(@ $data['tagkeyword']);

		//$createddate=$this->db->escape(@$data['createddate']);

		$viewcount = (int) @ $data['viewcount'];

		$updateddate = $this->date->getToday();

		$field = array (
			'mediaparent',
			'mediatype',
			'refersitemap',
			'userid',
			'title',
			'summary',
			'price',
			'description',
			'alias',
			'keyword',
			'author',
			'source',
			'imageid',
			'imagepath',
			'fileid',
			'filepath',
			'groupkeys',
			'status',
			'updateddate'
		);
		$value = array (
			$mediaparent,
			$mediatype,
			$refersitemap,
			$userid,
			$title,
			$summary,
			$price,
			$description,
			$alias,
			$keyword,
			$author,
			$source,
			$imageid,
			$imagepath,
			$fileid,
			$filepath,
			$groupkeys,
			$status,
			$updateddate
		);

		$where = "mediaid = '" . $mediaid . "'";
		$this->db->updateData('media', $field, $value, $where);

		if (SKINID == "elifesupport") {
			if (isset ($data['top'])) {
				$sql = " update `media` set `top` = 'top' where id = '" . $mediaid . "'";
				$this->db->query($sql);
			} else {
				$sql = " update `media` set `top` = '' where id = '" . $mediaid . "'";
				$this->db->query($sql);
			}
		}

		//update or insert data into advance_search 6/11 anh dung
		$data_advance_search = array ();
		$data_advance_search['objtype'] = 'media';
		$data_advance_search['objid'] = $mediaid;
		$data_advance_search['rootcontent'] = "&lt;p&gt;" . $data['title'] . "&lt;/p&gt;" . $data['summary'] . $data['description'];
		$data_advance_search['languageid'] = $languageid;
		$data_advance_search['title'] = $title;
		$data_advance_search['imagepath'] = $imagepath;
		$data_advance_search['summary'] = $this->db->escape(@ $data['summary']);
		$data_advance_search['updateddate'] = $updateddate;
		$data_advance_search['seo_url'] = $alias;
		
		$this->load->model('core/advancesearch');
		$this->model_core_advancesearch->updateOrInsert($data_advance_search);			

		$this->updateFileTemp($imageid);
		$this->updateFileTemp($fileid);
		return true;
	}

	public function saveAttachment($mediaid, $listfile) {
		if (count($listfile)) {
			$listfileid = implode(",", $listfile);
			$this->model_core_media->saveInformation($mediaid, "attachment", $listfileid);
			$this->model_core_media->updateListFileTemp($listfile);
		} else
			$this->model_core_media->saveInformation($mediaid, "attachment", "");
	}

	public function getInformation($mediaid, $fieldname) {
		$sql = "Select * from media_information where mediaid = '" . $mediaid . "' and fieldname = '" . $fieldname . "'";

		$query = $this->db->query($sql);
		$info = $query->row;
		return $info['fieldvalue'];
	}

	public function saveInformation($mediaid, $fieldname, $fieldvalue) {
		$sql = "Select * from media_information where mediaid = '" . $mediaid . "' and fieldname = '" . $fieldname . "'";
		$query = $this->db->query($sql);
		$info = $query->rows;

		$field = array (
			"mediaid",
			"fieldname",
			"fieldvalue"
		);

		$value = array (
			$mediaid,
			$fieldname,
			$fieldvalue,
			
		);

		if (count($info) > 0) {
			$where = "mediaid = '" . $mediaid . "' AND fieldname = '" . $fieldname . "'";
			$this->db->updateData('media_information', $field, $value, $where);
		} else {
			$this->db->insertData("media_information", $field, $value);
		}
	}

	public function delete($mediaid) {
		$status = "delete";
		$statusdate = $this->date->getToday();
		$statusby = $this->user->getId();

		if ($mediaid != "") {
			$sql = "Update `media` set status='" . $status . "', statusdate='" . $statusdate . "', statusby='" . $statusby . "' where mediaid = '" . $mediaid . "'";
			$this->db->query($sql);
		}
		//decrease in the tags table
		
		//query the row
		$sql = "Select `media`.* from `media` where mediaid ='" . $mediaid . "' ";
		$query = $this->db->query($sql);
		$medias = $query->rows;
		
		foreach($medias as $me) {
			$tags = $me['groupkeys'];
			$arr_old = explode(",",$tags);
			
			if(count($arr_old) != 0) {
				foreach ($arr_old as $item) {
					$item = trim($item);
					if ($item != "") {
						$tag_data = array (
							'sitemapid' => 	$mediaid,
							'key' => $item,
							'language' => $me['languageid']
						);
						$this->model_core_tag->decrease_count($tag_data);
					}
				}
			}
		}
	}

	public function removeSitemap($mediaid, $sitemapid) {
		if ($mediaid != "") {
			$media = $this->getItem($mediaid);
			$refersitemap = $this->getReferSitemapString($sitemapid, $media['refersitemap'], "delete");
			$sql = "Update `media` set refersitemap='" . $refersitemap . "' where mediaid = '" . $mediaid . "'";
			$this->db->query($sql);
		}
	}

	public function clearTempFile() {
		$this->clearTemp();
	}

	public function getReferSitemapString($sitemapid, $oldReferSitemap = "", $type = "add") {
		$sitemapid = "[" . $sitemapid . "]";
		$pos = strrpos($oldReferSitemap, $sitemapid);
		if ($pos === false) {
			if ($type == "add") {
				$oldReferSitemap .= $sitemapid;
			}
		}
		elseif ($type == "delete") {
			$oldReferSitemap = str_replace($sitemapid, "", $oldReferSitemap);
		}
		return $oldReferSitemap;
	}

	public function getPaginationLinks($index, $queryoptions, $querystring, $step, $to) {
		$step = (int) $step;
		$result = array ();
		if ($index > -1) {
			$alink = "";
			$newstep = $step +1;
			$oldstep = $step -1;

			$newerlist = $this->model_core_media->getPaginationList($queryoptions, $newstep, $to);
			$olderlist = $this->model_core_media->getPaginationList($queryoptions, $oldstep, $to);

			$newerid = (float) $medias[0]['id'];
			$olderid = (float) $medias[$index]['id'];

			if (count($newerlist) > 0 && $newstep >= 0) {
				$a = HTTP_SERVER . $querystring . "&step=" . $newstep;
				$result['nextlink'] = '<a href="' . $a . '" class="right more">Next &raquo;</a>';
			}

			if (count($olderlist) > 0 && $oldstep >= 0) {
				//$alink = HTTP_SERVER.$username."/blog/?step=".$olderid.$alink;
				$a = HTTP_SERVER . $querystring . "&step=" . $oldstep;
				$result['prevlink'] = '<a href="' . $a . '" class="left more">&laquo; Previous</a>';
			}
		}
		return $result;
	}

	public function getMediaIdBySitemap($mediatype, $refersitemap) {
		$sql = "SELECT * FROM `media` WHERE mediatype = '" . $mediatype . "' AND refersitemap like '%[" . $refersitemap . "]%'";
		$query = $this->db->query($sql);

		return $query->row['mediaid'];
	}

	public function remove($mediaid) {
		$this->db->query("DELETE FROM `media` where mediaid = '" . $mediaid . "'");
		$this->db->query("DELETE FROM `media_event` where mediaid = '" . $mediaid . "'");
		$this->db->query("DELETE FROM `media_file` where mediaid = '" . $mediaid . "'");
		$this->db->query("DELETE FROM `media_file_description` where mediaid = '" . $mediaid . "'");
		$this->db->query("DELETE FROM `media_information` where mediaid = '" . $mediaid . "'");
		$this->db->query("DELETE FROM `media_log` where mediaid = '" . $mediaid . "'");
	}
}
?>