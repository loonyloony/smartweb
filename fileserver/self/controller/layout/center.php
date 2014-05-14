<?php
	class ControllerLayoutCenter extends Controller
	{
		public function index()
		{
			$this->template="layout/center.tpl";
			$this->children=array(
				'common/header',
				'common/footer',
				'common/leftsidebar'
			);
			$this->render();
		}
	}
?>