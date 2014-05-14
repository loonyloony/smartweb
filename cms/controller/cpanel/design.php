<?php
class ControllerCpanelDesign extends Controller
{
	public function index()
	{
		$this->id="content";
		$this->template="cpanel/design.tpl";
		$this->render();
	}
}
?>