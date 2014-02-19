<?php

class Controller
{
	private $model;
	private $parse_data;

	public function __construct(Model $model)
	{
		$this->model = $model;
		
		$this->parse_data = [];
		$this->parse_data[0] = ['[[[base_url]]]'];
		$this->parse_data[1] = [base_url()];
	}
	
	public function index()
	{
		return str_replace(	$this->parse_data[0],
							$this->parse_data[1],
							file_get_contents('sys/template.php'));
	}
	
	public function branches()
	{
		return json_encode($this->model->db_branch(isset($_POST['id']) ? $_POST['id']:null));
	}
	
	public function areas()
	{
		return json_encode($this->model->db_areas());
	}
	
}

?>