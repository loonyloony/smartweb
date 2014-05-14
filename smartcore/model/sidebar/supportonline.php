<?php 
class ModelSidebarSupportonline extends Model{
	
	public function getListByAddonid($addonid){
		$sql = "SELECT 	* 
				FROM 	`support` s
						LEFT JOIN `support_description` sd ON (s.supportid = sd.supportid)
				WHERE	s.addonid = '" . $addonid . "' AND sd.languageid = '" . $this->config->get('config_languageid') . "'";
				
		$sql .= " ORDER BY s.sortorder ASC, sd.title ASC";
		$query = $this->db->query($sql);
		
		return $query->rows;
	}
		
}
?>