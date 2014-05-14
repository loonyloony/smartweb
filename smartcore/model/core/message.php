<?php

class ModelCoreMessage extends Model{
	public function insert($data){

		$messageid=time();
		$userid=$this->db->escape(@$data['userid']);
		$from=$this->db->escape(@$data['from']);
		$to=$this->db->escape(@$data['to']);
		$title=$this->db->escape(@$data['title']);
		$description=$this->db->escape(@$data['description']);
		$title=$this->db->escape(@$data['title']);
		$summary=$this->db->escape(@$data['summary']);
		$attachment=$this->db->escape(@$data['attachment']);
		$status=$this->db->escape(@$data['status']);
		$folder=$this->db->escape(@$data['folder']);
		$senddate=$this->date->getToday();
		$replyfrom=$this->db->escape(@$data['replyfrom']);

		

		$field=array(
						'`messageid`',
						'`userid`',
						'`from`',
						'`to`',
						'`title`',
						'`description`',
						'`attachment`',
						'`status`',
						'`folder`',
						'`senddate`',
						'`replyfrom`'
					);

		$value=array(
						$messageid,
						$userid,
						$from,
						$to,
						$title,
						$description,
						$attachment,
						$status,
						$folder,
						$senddate,
						$replyfrom,

					);

		$this->db->insertData("message",$field,$value);

		return $messageid;
	}
}
?>