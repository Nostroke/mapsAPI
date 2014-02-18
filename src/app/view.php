<?php

class View
{
	private $model;
	private $controller;
	
	public function __construct(Controller $controller,Model $model)
	{
		$this->controller = $controller;
		$this->model = $model;
	}
	
	public function output()
	{
		return '<h1>' . $this->model->text .'</h1>';
	}
	
}

?>