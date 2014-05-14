<?php

class ModelCoreComment extends Model{
	
	public function getItem($id){

		$sql = "SELECT * FROM `comment` WHERE id = '".$id."'";
		$query = $this->db->query($sql);
		return $query->row;
	}
	
	public function deleteItem($id) {
		$where="id = '".$id."'";
		$this->db->deleteData("comment",$where);
	}
	
	public function getList($where){
		$sql = "SELECT c.*,u.email AS user_email, r.email AS receive_email, CONCAT_WS(' ',u.firstname,u.lastname) AS user_name, CONCAT_WS(' ',r.firstname,r.lastname) AS receive_name
					FROM		`comment` c
								LEFT JOIN customer u ON (c.userid = u.customerid)
								LEFT JOIN customer r ON (c.receiveuser = r.customerid)
					WHERE		1 = 1 " . $where;
		$query = $this->db->query($sql);
		return $query->rows;
	}
	
	public function countComment($where) {
		$sql = "SELECT COUNT(*) AS cnt FROM `comment` c WHERE 1 = 1 ".$where;
		$query = $this->db->query($sql);
		$result = $query->row;
		return($result['cnt']);
	}
	
	public function updateStatus($data) {
		$id = $this->db->escape(@$data['id']);
		$status = $this->db->escape(@$data['status']);
		$field = array('status');
		$value = array($status);
		
		$where = " id = '".$id."' ";
		$this->db->updateData("comment",$field,$value,$where);
		return $id;
	}
	
	public function updateCommentId($data) {
		$id = $this->db->escape(@$data['id']);
		$comment_id = $this->db->escape(@$data['comment_id']);
		$field = array('comment_id');
		$value = array($comment_id);
		
		$where = " id = '".$id."' ";
		$this->db->updateData("comment",$field,$value,$where);
		return $id;
	}
	
	public function save($data) {
		$subject=$this->db->escape(@$data['subject']);
		$description=$this->db->escape(@$data['description']);
		$commentdate=$this->date->getToday();
		$mediaid=$this->db->escape(@$data['mediaid']);
		$objtype = $this->db->escape(@$data['objtype']);
		$status= $this->db->escape(@$data['status']);
		$userid=$this->member->getId();
		$receiveuser = $this->db->escape(@$data['receiveuser']);
		$customerid = $this->db->escape(@$data['customerid']);
		$comment_id = $this->db->escape(@$data['comment_id']);
		
		$fields = array (
			'comment_id',
			'subject',
			'description',
			'commentdate',
			'mediaid',
			'objtype',
			'status',
			'userid',
			'receiveuser',
			'customerid'
		);
		
		$values = array (
			$comment_id,
			$subject,
			$description,
			$commentdate,
			$mediaid,
			$objtype,
			$status,
			$userid,
			$receiveuser,
			$customerid
		);
		
		return $this->db->insertData("comment",$fields,$values);		
	}
}
?>