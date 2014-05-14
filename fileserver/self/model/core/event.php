<?php 
class ModelCoreEvent extends ModelCoreFile {
	
	public function getItem($mediaid){
		$sql="SELECT * FROM media_event WHERE mediaid = '" .$mediaid . "'";
		$query = $this->db->query($sql);
		return $query->row;
	}
	
	public function insert($data){
			
		$startdate=$this->db->escape(@$data['startdate']);
		$mediaid=$this->db->escape(@$data['mediaid']);
		$enddate=$this->db->escape(@$data['enddate']);
		$starthour=$this->db->escape(@$data['starthour']);
		$endhour=$this->db->escape(@$data['endhour']);
		$address=$this->db->escape(@$data['address']);
		$status=$this->db->escape(@$data['status']);
		
		$field=array(
						'mediaid',
						'startdate',
						'starthour',
						'enddate',
						'endhour',
						'address',
						'status'
					);
		$values=array(
						$mediaid,
						$startdate,
						$starthour,
						$enddate,
						$endhour,
						$address,
						$status
						
					);
		$arr=$this->getItem($mediaid);
		if(count($arr)<=0){
			$url_alias_id=$this->db->insertData("media_event",$field,$values);	
		
		}else{
			
			$where="mediaid = '".$mediaid."'";
			$this->db->updateData('media_event',$field,$values,$where);
		}
					
			
		
	}

}

?>