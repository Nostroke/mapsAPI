<?php

class Model {
	
	public $text;
	public $data;
	
	private $db;
	
	public function __construct()
	{
		$this->text = 'Alinsito!';
		
		$this->db = new MySQL('localhost','root','passwd');
	}
	
	public function db_link()
	{
		
	}
	
	public function link()
	{
		
	}
}

?>