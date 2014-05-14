<?php 
class ModelCoreLayout extends Model{
	
	public function getItem($layoutid){
		$sql = "SELECT * FROM `layout` WHERE layoutid = '" . $layoutid . "'";
		$query = $this->db->query($sql);
		
		return $query->row;
	}
	
	public function getList($where = ""){
		$data_layout = array();
		$sql = "SELECT `layout`.*, ld.layoutname FROM `layout` LEFT JOIN `layout_description` ld ON (`layout`.layoutid = ld.layoutid AND ld.languageid = '".$this->config->get('config_languageid')."') WHERE 1=1 " . $where;
		$query = $this->db->query($sql);
		
		if(count($query->rows)){
			foreach($query->rows as $item){
				$item['link'] = $this->url->http('core/layout/update&layoutid='.$item['layoutid']);
				$data_layout[] = $item;
			}	
		}
		
		return $data_layout;
	}
	
	public function getDescriptions($layoutid){
		$sql = "SELECT * FROM `layout_description` WHERE layoutid = '" . $layoutid . "'";
		$query = $this->db->query($sql);
		
		return $query->rows;
	}
	
	public function insert($data){
		$layoutid = $this->db->escape(@$data['layoutid']);
		$imagedemo = $this->db->escape(@$data['imagedemo']);
		$linkdemo = $this->db->escape(@$data['linkdemo']);
		$layouttype = $this->db->escape(@$data['layouttype']);
		
		$field = array(
						'layoutid',
						'imagedemo',
						'linkdemo',
						'layouttype'
					);
					
		$value = array(
						$layoutid,
						$imagedemo,
						$linkdemo,
						$layouttype
					);
					
		$this->db->insertData("layout", $field, $value);
		
		if(isset($data['layout_description'])){
			foreach($data['layout_description'] as $languageid => $layoutname){
				$field = array(
								'layoutid',
								'layoutname',
								'languageid'
							);
							
				$value = array(
								$layoutid,
								$layoutname,
								$languageid
							);
							
				$this->db->insertData("layout_description", $field, $value);
			}	
		}
		
		if(isset($data['sidebar'])){
			foreach($data['sidebar'] as $key => $sidebarid){
				$sidebarid = (int)$sidebarid;
				
				if($key == 'left'){
					$field = array(
									'`sidebarleft`'
								);
								
					$value = array(
									$sidebarid
								);
				}
				
				if($key == 'right'){
					$field = array(
									'`sidebarright`'
								);
								
					$value = array(
									$sidebarid
								);
				}
							
				$where = " layoutid = '" . $layoutid . "'";
				
				$this->db->updateData("layout", $field, $value, $where);
			}
			
		}
		
		$sql = "DELETE FROM `layout_dashboard` WHERE layoutid = '" . $layoutid . "'";
		$this->db->query($sql);	
		
		if(isset($data['dashboard'])){
			foreach($data['dashboard'] as $key => $dashboard){
				$sortorder = (int)$this->db->escape(@$data['dashboardorder'][$key]);
				
				$field = array(
								'layoutid',
								'addonid',
								'sortorder'
							);
							
				$value = array(
								$layoutid,
								$sidebar,
								$sortorder
							);
				
				$this->db->insertData("layout_dashboard", $field, $value);
			}
			
		}
		
		$sql = "DELETE FROM `layout_splash` WHERE layoutid = '" . $layoutid . "'";
		$this->db->query($sql);	
		
		if(isset($data['splash'])){
			foreach($data['splash'] as $key => $dashboard){
				$sortorder = (int)$this->db->escape(@$data['splashorder'][$key]);
				
				$field = array(
								'layoutid',
								'addonid',
								'sortorder'
							);
							
				$value = array(
								$layoutid,
								$sidebar,
								$sortorder
							);
				
				$this->db->insertData("layout_splash", $field, $value);
			}
			
		}
	}
	
	public function update($data){
		$id = $this->db->escape(@$data['id']);
		$layoutid = $this->db->escape(@$data['layoutid']);
		$imagedemo = $this->db->escape(@$data['imagedemo']);
		$linkdemo = $this->db->escape(@$data['linkdemo']);
		$layouttype = $this->db->escape(@$data['layouttype']);
		$sidebarleft = 0;
		$sidebarright = 0;
		
		$field = array(
						'`layoutid`',
						'`imagedemo`',
						'`linkdemo`',
						'`layouttype`',
						'`sidebarleft`',
						'`sidebarright`'
					);
					
		$value = array(
						$layoutid,
						$imagedemo,
						$linkdemo,
						$layouttype,
						$sidebarleft,
						$sidebarright
					);
		
		$where = " id = '" . $id . "'";
		
		$this->db->updateData("layout", $field, $value, $where);
		
		$sql = "DELETE FROM `layout_description` WHERE layoutid = '" . $layoutid . "'";
		$this->db->query($sql);		
		
		if(isset($data['layout_description'])){
			foreach($data['layout_description'] as $languageid => $layoutname){
				$field = array(
								'layoutid',
								'layoutname',
								'languageid'
							);
							
				$value = array(
								$layoutid,
								$layoutname,
								$languageid
							);
							
				$this->db->insertData("layout_description", $field, $value);
			}	
		}
		
		//$sql = "DELETE FROM `layout_sidebar` WHERE layoutid = '" . $layoutid . "'";
		//$this->db->query($sql);	
		
		if(isset($data['sidebar'])){
			foreach($data['sidebar'] as $key => $sidebarid){
				$sidebarid = (int)$sidebarid;
				
				if($key == 'left'){
					$field = array(
									'`sidebarleft`'
								);
								
					$value = array(
									$sidebarid
								);
				}
				
				if($key == 'right'){
					$field = array(
									'`sidebarright`'
								);
								
					$value = array(
									$sidebarid
								);
				}
							
				$where = " layoutid = '" . $layoutid . "'";
				
				$this->db->updateData("layout", $field, $value, $where);
			}
		}
		
		$sql = "DELETE FROM `layout_dashboard` WHERE layoutid = '" . $layoutid . "'";
		$this->db->query($sql);	
		
		if(isset($data['dashboard'])){
			foreach($data['dashboard'] as $key => $dashboard){
				$sortorder = (int)$this->db->escape(@$data['dashboardorder'][$key]);
				
				$field = array(
								'layoutid',
								'addonid',
								'sortorder'
							);
							
				$value = array(
								$layoutid,
								$dashboard,
								$sortorder
							);
				
				$this->db->insertData("layout_dashboard", $field, $value);
			}
			
		}
		
		$sql = "DELETE FROM `layout_splash` WHERE layoutid = '" . $layoutid . "'";
		$this->db->query($sql);	
		
		if(isset($data['splash'])){
			foreach($data['splash'] as $key => $splash){
				$sortorder = (int)$this->db->escape(@$data['splashorder'][$key]);
				
				$field = array(
								'layoutid',
								'addonid',
								'sortorder'
							);
							
				$value = array(
								$layoutid,
								$splash,
								$sortorder
							);
				
				$this->db->insertData("layout_splash", $field, $value);
			}
			
		}
	}
	
	public function getListLayoutSplash($layoutid){
		$sql = "SELECT * FROM `layout_splash` WHERE layoutid = '" . $layoutid . "' ORDER BY sortorder ASC";
		$query = $this->db->query($sql);
		
		return $query->rows;	
	}
	
	public function getListLayoutDashboard($layoutid){
		$sql = "SELECT * FROM `layout_dashboard` WHERE layoutid = '" . $layoutid . "' ORDER BY sortorder ASC";
		$query = $this->db->query($sql);
		
		return $query->rows;	
	}
	
	public function getDashboardByAddonid($addonid){
		$sql = "SELECT * FROM `layout_dashboard` WHERE addonid = '" . $addonid . "'";
		$query = $this->db->query($sql);
		
		return $query->row;
	}
	
	public function getSplashByAddonid($addonid){
		$sql = "SELECT * FROM `layout_splash` WHERE addonid = '" . $addonid . "'";
		$query = $this->db->query($sql);
		return $query->row;
	}
	
	public function delete($layoutid){
		$this->db->query("DELETE FROM `layout` WHERE layoutid = '" . $layoutid . "'");
		$this->db->query("DELETE FROM `layout_description` WHERE layoutid = '" . $layoutid . "'");
		$this->db->query("DELETE FROM `layout_dashboard` WHERE layoutid = '" . $layoutid . "'");
		$this->db->query("DELETE FROM `layout_splash` WHERE layoutid = '" . $layoutid . "'");	
	}
}
?>