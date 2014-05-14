<?php 
class ModelCoreMediafiledescription extends Model {

public function getItem($id, $where="")
	{
		 $sql="Select `media_file_description`.* 
									from `media_file_description` 
									where id ='".$id."' ".$where;
		$query = $this->db->query($sql);
		return $query->row;
	}
public function getList($where="")
	{
		$query = $this->db->query("Select * from `media_file_description` WHERE 1=1 ".$where);
		return $query->rows;
	}
public function insert($data)
	{
		
		$mediafileid =$this->db->escape(@$data['mediafileid']);
		$image=$this->db->escape(@$data['image']);
		$fileid =$this->db->escape(@$data['fileid']);
		$filetype=$this->db->escape(@$data['filetype']);
		
		
		
		$field=array(
						
						'mediafileid',
						'image',
						'fileid',
						'filetype'
					);
		$value=array(
						
						$mediafileid,
						$image,
						$fileid,
						$filetype
					);
		return $this->db->insertData("media_file_description",$field,$value);
		
		
	}
	
	public function delete($mediafileid)
	{
		$mediafileid=$this->db->escape(@$mediafileid);
		$where="mediafileid = '".$mediafileid."'";
		$this->db->deleteData('media_file_description',$where);
	}

}

?>