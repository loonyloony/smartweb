<?php
class ModelCoreDesign extends Model
{ 
	public function getSidebarModules($sidebarid){
		$sql = "Select addon.*, ad.addonname from sidebar_addon, addon 
						LEFT JOIN addon_description ad ON (addon.addonid = ad.addonid AND languageid = '".$this->config->get("config_languageid")."')
						where sidebar_addon.addonid = addon.id and sidebar_addon.sidebarid = '".$sidebarid."'
						order by sidebar_addon.sortorder ASC";
		$query = $this->db->query($sql);
		return $query->rows;
	}
	
	public function getDashboardModules($layoutid){
		$sql = "Select addon.*, ad.addonname from layout_dashboard, addon 
						LEFT JOIN addon_description ad ON (addon.addonid = ad.addonid AND languageid = '".$this->config->get("config_languageid")."')
						where layout_dashboard.addonid = addon.addonid and layout_dashboard.layoutid = '".$layoutid."'
						order by layout_dashboard.sortorder ASC";
		$query = $this->db->query($sql);
		return $query->rows;
	}
	
	public function getSplashModules($layoutid){
		$sql = "Select addon.*, ad.addonname from layout_splash, addon 
						LEFT JOIN addon_description ad ON (addon.addonid = ad.addonid AND languageid = '".$this->config->get("config_languageid")."')
						where layout_splash.addonid = addon.addonid and layout_splash.layoutid = '".$layoutid."'
						order by layout_splash.sortorder ASC";
		$query = $this->db->query($sql);
		return $query->rows;	
	}
}
?>