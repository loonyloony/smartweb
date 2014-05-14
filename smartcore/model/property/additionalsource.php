<?php
class ModelPropertyAdditionalSource extends Model
{							
	public function getItem($additionalsourceid, $where="")
	{
		$sql = "Select * from `additional_source` where additionalsourceid = '" . $additionalsourceid . "'" . $where;
		$query = $this->db->query($sql);
		return $query->row;
	}
	
	public function getDescriptions($additionalsourceid, $where="")
	{
		$sql = "Select * from `additional_source_description` where additionalsourceid = '" . $additionalsourceid . "'".$where;
		$query = $this->db->query($sql);
		return $query->rows;
	}
	
	public function getAll($where = "") {
		
		$sql = "Select * 
				from `additional_source` ass left join `additional_source_description` asd on ass.additionalsourceid = asd.additionalsourceid
				where asd.languageid = '" . $this->config->get('config_languageid') . "' " . $where . " order by ass.sortorder asc";
		$query = $this->db->query($sql);
		return $query->rows;
		
	}
	
	public function getList($where="", $from=0, $to=0)
	{
		$sql = "Select * from `additional_source` where 1=1 " . $where . " order by sortorder asc";
		if($to > 0)
		{
			$sql .= " Limit ".$from.",".$to;
		}
		$query = $this->db->query($sql);
		return $query->rows;
	}
	
	private function nextID($prefix) {
		return $this->db->getNextIdVarChar("additional_source", "additionalsourceid", $prefix);
	}
	
	public function insert($data)
	{
		$additionalsourceid = $this->nextID($this->user->getSiteId() . time());
		$title = $this->db->escape(@$data['title']);
		$type = $this->db->escape(@$data['type']);
		$sortorder = 1;
		
		$field = array(
						'`additionalsourceid`',
						'`title`',
						'`type`',
						'`sortorder`'
					);
					
		$value = array(
						$additionalsourceid,
						$title,
						$type,
						$sortorder
					);
			
		$this->db->insertData("additional_source", $field, $value);

		if(isset($data['additional_source_description'])){
			foreach($data['additional_source_description'] as $key => $additionalsource){
				$languageid = $key;
				$sourcename = $this->db->escape(@$additionalsource['sourcename']);
				$sourcevalue = $this->db->escape(@$additionalsource['sourcevalue']);
				
				$field = array(
								'`additionalsourceid`',
								'`languageid`',
								'`sourcename`',
								'`sourcevalue`'
							);
							
				$value = array(
								$additionalsourceid,
								$languageid,
								$sourcename,
								$sourcevalue
							);
						
				$this->db->insertData("additional_source_description", $field, $value);
			}	
		}		
	}
	
	public function update($data)
	{
		$additionalsourceid = $this->db->escape(@$data['additionalsourceid']);
		$title = $this->db->escape(@$data['title']);
		$type = $this->db->escape(@$data['type']);
		
		$field = array(
						'`additionalsourceid`',
						'`title`',
						'`type`'
					);
					
		$value = array(
						$additionalsourceid,
						$title,
						$type
					);
		
		$where = " additionalsourceid = '" . $additionalsourceid . "'";
		$this->db->updateData("additional_source", $field, $value, $where);
		
		$sql = "DELETE FROM `additional_source_description` where additionalsourceid = '" . $additionalsourceid . "'";
		$this->db->query($sql);
		if(isset($data['additional_source_description'])){
			foreach($data['additional_source_description'] as $key => $additionalsource){
				$languageid = $key;
				$sourcename = $this->db->escape(@$additionalsource['sourcename']);
				$sourcevalue = $this->db->escape(@$additionalsource['sourcevalue']);				
				
				$field = array(
								'`additionalsourceid`',
								'`languageid`',
								'`sourcename`',
								'`sourcevalue`'
							);
							
				$value = array(
								$additionalsourceid,
								$languageid,
								$sourcename,
								$sourcevalue
							);
						
				$this->db->insertData("additional_source_description", $field, $value);
			}	
		}
	}
	
	public function delete($additionalsourceid)
	{
		$where = " additionalsourceid = '" . $additionalsourceid . "'";
		$this->db->deleteData('additional_source', $where);
		$this->db->deleteData('additional_source_description', $where);	
	}
	
	public function sortorder($additionalsourceid, $sortorder){
		
		$field = array(
						'`sortorder`'
					);
					
		$value = array(
						$sortorder
					);
					
		$where = " additionalsourceid = '" . $additionalsourceid . "'";
		$this->db->updateData("additional_source", $field, $value, $where);
	}
	
}
?>