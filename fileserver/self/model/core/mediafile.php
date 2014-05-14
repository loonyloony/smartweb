<?php 
class ModelCoreMediafile extends Model {

	public function getItem($id, $where="")
	{
		 $sql="Select `media_file`.* 
									from `media_file` 
									where id ='".$id."' ".$where;
		$query = $this->db->query($sql);
		return $query->row;
	}
	
	public function getList($where="")
	{
		$query = $this->db->query("Select * from `media_file` WHERE 1=1 ".$where);
		return $query->rows;
	}
	
	public function getDescription($mediafileid, $where="")
	{
		$query = $this->db->query("Select * from `media_file_description` WHERE mediafileid='".$mediafileid."' ".$where);
		return $query->rows;
	}
	
	public function insert($data)
	{
		$mediaid =$this->db->escape(@$data['mediaid']);
		$fileid=$this->db->escape(@$data['fileid']);
		$filepath=$this->db->escape(@$data['filepath']);
		$filetype=$this->db->escape(@$data['filetype']);		
		//$mediafiledecriptionid=$this->db->escape(@$data['mediafiledecriptionid']);
		
		
		$field=array(
						
						'mediaid',
						'fileid',
						'filepath',
						'filetype'
					);
		$value=array(
						
						$mediaid,
						$fileid,
						$filepath,
						$filetype
					);
		$mediafileid = $this->db->insertData("media_file",$field,$value);
		
		return $mediafileid;
	}
	
	public function insertdescription($data)
	{
		$mediafileid =$this->db->escape(@$data['mediafileid']);
		$languageid=$this->db->escape(@$data['languageid']);
		$mediaid=$this->db->escape(@$data['mediaid']);
		$title=$this->db->escape(@$data['title']);		
		//$mediafiledecriptionid=$this->db->escape(@$data['mediafiledecriptionid']);
		
		
		$field=array(
						
						'mediafileid',
						'languageid',
						'mediaid',
						'title'
					);
		$value=array(
						
						$mediafileid,
						$languageid,
						$mediaid,
						$title
					);
		$this->db->insertData("media_file_description",$field,$value);
		
		return $mediafileid;
	}
	
	public function delete($mediaid)
	{
		$mediaid=$this->db->escape(@$mediaid);
		$where="mediaid = '".$mediaid."'";
		$this->db->deleteData('media_file',$where);
		$this->db->deleteData('media_file_description',$where);
	}

}

?>