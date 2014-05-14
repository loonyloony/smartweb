<?php
class ModelCoreModule extends Model 
{ 
	public function getModules($where = '')
	{
		$query = $this->db->query("Select * from `module` WHERE 1=1 " . $where . " Order By position");
		return $query->rows;
	}
	
	public function getSitemapModules()
	{
		$query = $this->db->query("Select * from `module` where areacode = 'module' AND status = 'Active' Order By position");
		return $query->rows;
	}
	
	public function getModulesIn($list)
	{
		$query = $this->db->query("Select * from `module` Where moduleid in ($list) Order By position");
		return $query->rows;
	}
	
	public function getModule($moduleid)
	{
		$query = $this->db->query("SELECT * 
									FROM `module` 
									WHERE `moduleid` = '".$moduleid."'
									");
		return $query->row;
	}	
	
	public function liststatus()
	{
		return array(
					"Active"	=>"Active",
					"Sitemap"	=>"Sitemap",
					"UnActive"	=>"UnActive"
				);
	}
	
	public function listAreaCode(){
		return array(
					"module" 	=> "module",
					"sidebar" 	=> "sidebar",
					"splash"	=> "splash",
					"dashboard"	=> "dashboard"
				);	
	}
	
	public function listModuleType(){
		return array(
					"code"		=> "code",
					"manage"	=> "manage",
					"refer"		=> "refer"
				);	
	}
	
	public function nextID()
	{
		return $this->db->getNextIdVarChar("module","moduleid","Module");
	}
	
	public function nextPosition($parent)
	{
		$query = $this->db->query("Select max(position) as max From module where moduleparent='".$parent."' Order By position");
		return $query->rows[0]['max'] +1 ;
	}
	
	public function insertModule($data)
	{
		$areacode = $this->db->escape(@$data['areacode']);
		$moduleid=$this->db->escape(@$data['moduleid']);
		$modulecode = $this->db->escape(@$data['modulecode']);
		$modulename=$this->db->escape(@$data['modulename']);
		$moduletype = $this->db->escape(@$data['moduletype']);
		$object = $this->db->escape(@$data['object']);
		$moduleparent=$this->db->escape(@$data['moduleparent']);
		$position=(int)@$data['position'];
		$status=$this->db->escape(@$data['status']);
		$modulepath=$this->db->escape(@$data['modulepath']);
		$permission=$this->db->escape(@$data['permission']);	
		$languageid=$this->db->escape(@$data['languageid']);
		$description = $this->db->escape(@$data['description']);
		$width = $this->db->escape(@$data['width']);
		$height = $this->db->escape(@$data['height']);
		$effectcode = (int)$this->db->escape(@$data['effectcode']);
		
		$field=array(
						'`areacode`',
						'`moduleid`',
						'`modulecode`',
						'`modulename`',
						'`moduletype`',
						'`object`',
						'`moduleparent`',
						'`position`',
						'`status`',
						'`modulepath`',
						'`permission`',
						'`languageid`',
						'`description`',
						'`width`',
						'`height`',
						'`effectcode`'
					);
		$value=array(
						$areacode,
						$moduleid,
						$modulecode,
						$modulename,
						$moduletype,
						$object,
						$moduleparent,
						$position,
						$status,
						$modulepath,
						$permission,
						$languageid,
						$description,
						$width,
						$height,
						$effectcode
					);
		$this->db->insertData("module",$field,$value);
	}
		
	
	
	
	public function updateModule($data, $cache)
	{
		$lastmoduleid = $this->db->escape(@$cache['moduleid']);
		$areacode = $this->db->escape(@$data['areacode']);
		$moduleid=$this->db->escape(@$data['moduleid']);
		$modulecode = $this->db->escape(@$data['modulecode']);
		$modulename=$this->db->escape(@$data['modulename']);
		$moduletype = $this->db->escape(@$data['moduletype']);
		$object = $this->db->escape(@$data['object']);
		$moduleparent=$this->db->escape(@$data['moduleparent']);
		$status=$this->db->escape(@$data['status']);
		$modulepath=$this->db->escape(@$data['modulepath']);
		$permission=$this->db->escape(@$data['permission']);	
		$languageid=$this->db->escape(@$data['languageid']);
		$description = $this->db->escape(@$data['description']);
		$width = $this->db->escape(@$data['width']);
		$height = $this->db->escape(@$data['height']);
		$effectcode = (int)$this->db->escape(@$data['effectcode']);
			
		$field=array(
						'`areacode`',
						'`moduleid`',
						'`modulecode`',
						'`modulename`',
						'`moduletype`',
						'`object`',
						'`moduleparent`',
						'`status`',
						'`modulepath`',
						'`permission`',
						'`languageid`',
						'`description`',
						'`width`',
						'`height`',
						'`effectcode`'
					);
		$value=array(
						$areacode,
						$moduleid,
						$modulecode,
						$modulename,
						$moduletype,
						$object,
						$moduleparent,
						$status,
						$modulepath,
						$permission,
						$languageid,
						$description,
						$width,
						$height,
						$effectcode
					);
		$where="moduleid = '".$lastmoduleid."'";
		$this->db->updateData("module",$field,$value,$where);
	}
	
	public function updateModulePosition($moduleid,$position)
	{
		$moduleid=$this->db->escape(@$moduleid);
		
		$position=(int)@$position;
		
		$field=array(
						'moduleid',
						
						'position'
						
					);
		$value=array(
						$moduleid,
						
						$position
						
					);
		$where="moduleid = '".$moduleid."'";
		$this->db->updateData("module",$field,$value,$where);
	}
	
	public function deleteModule($moduleid)
	{
		if($this->validateDelete($moduleid))
		{
			$where="moduleid = '".$moduleid."'";
			$this->db->deleteData('module',$where);	
			return true;
		}
		return false;
	}
	
	public function validateDelete($id)
	{
		//Sitemap
		$moduleid=$this->db->escape(@$id);
		$sql="SELECT * 
									FROM `sitemap` 
									WHERE `moduleid` = '".$moduleid."'
									";
		$query = $this->db->query($sql);
		$arr = $query->rows;
		if(count($arr))
			return false;
		
		return true;
	}
	
	public function validateDuplikey($id)
	{
		$rows=$this->getModule($id);
		if(count($rows))
			return true;
		else
			return false;
	}
	
	public function getListByAreaCode($areacode){
		$sql = "SELECT * FROM `module` WHERE areacode = '" . $areacode . "'";
		$query = $this->db->query($sql);
		
		return $query->rows;
	}
}
?>