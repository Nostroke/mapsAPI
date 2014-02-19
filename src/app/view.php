<?php

class View
{
	private $controller;
	
	public function __construct(Controller $controller)
	{
		$this->controller = $controller;
	}
	
	public function output()
	{
		return isset($_POST['p']) ? $this->controller->$_POST['p']():
									$this->controller->index();
	}
}

?>