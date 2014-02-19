<?php

class Model {
	
	private $db;
	
	public function __construct()
	{
		$this->db = new MySQL('mapsapi','root','passwd');
		
		$this->db->ExecuteSQL('SET NAMES utf8');
	}
	
	public function db_branch($id = null)
	{
		return is_null($id) ?	$this->db->Select('branch'):
								$this->db->ExecuteSQL('SELECT * FROM branch WHERE area_id = '.$id);
	}
	
	public function db_areas()
	{
		return $this->db->Select('area');
	}
}

?>