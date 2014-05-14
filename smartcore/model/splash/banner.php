<?php 
class ModelSplashBanner extends Model{
	public function getListByAddonid($addonid){
		$sql = "SELECT		*
				FROM		`weblink` w
							LEFT JOIN `weblink_description` wd ON (w.weblinkid = wd.weblinkid)
				WHERE		wd.languageid = '" . $this->config->get('config_languageid') . "'
							AND w.addonid = '" . $addonid . "'
				ORDER BY	w.sortorder ASC
				LIMIT		0, 10";

		$query = $this->db->query($sql);
		
		return $query->rows;
	}	
}
?>