<?php 
class ModelDashboardWeblink extends Model{
	public function getListByAddonid($addonid){
		$sql = "SELECT		*
				FROM		`weblink` w
							LEFT JOIN `weblink_description` wd ON (w.weblinkid = wd.weblinkid)
				WHERE		wd.languageid = '" . $this->config->get('config_languageid') . "'
							AND w.addonid = '" . $addonid . "'
				ORDER BY	w.sortorder ASC";

		$query = $this->db->query($sql);
		
		return $query->rows;
	}
	public function getListByAddonidNoLang($addonid){
		$sql = "SELECT		*
				FROM		`weblink` w
							LEFT JOIN `weblink_description` wd ON (w.weblinkid = wd.weblinkid)
				WHERE		w.addonid = '" . $addonid . "'
				ORDER BY	w.sortorder ASC";

		$query = $this->db->query($sql);
		
		return $query->rows;
	}
	
	public function getListDownloadOfProductModule($where = ''){
		$weblink_data = array();
		
		$sql = "SELECT * FROM `weblink` WHERE 1=1 " . $where . "ORDER BY sortorder";
		$weblink_query = $this->db->query($sql);
		
		foreach($weblink_query->rows as $weblink){
			$sql = "SELECT * FROM `weblink_description` WHERE weblinkid = '" . $weblink['weblinkid'] . "' AND languageid = '" . $this->config->get('config_languageid') . "'";	
			$query = $this->db->query($sql);
			$weblink_data[] = array_merge($weblink, $query->row);
		}
		
		return $weblink_data;
	}
}
?>