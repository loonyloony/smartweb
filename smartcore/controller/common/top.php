<?php
	class ControllerCommonTop extends Controller
	{
		public function index()
		{
			$this->id="top";
			$this->template="common/top.tpl";
			$this->render();
		}
	}
?>