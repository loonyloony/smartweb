<?php
class ControllerElifeDemoupload extends Controller
{
	function __construct() 
	{
		
	}
	function index()
	{	
		$this->id='content';
		$this->template='elife/demoupload.tpl';
		$this->layout="layout/center";
		$this->render();
	}
}
?>