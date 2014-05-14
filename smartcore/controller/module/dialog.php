<?php
	class ControllerModuleDialog extends Controller
	{
		public function index()
		{
			if($this->request->get["id"] == "")
			{
				$this->template="module/dialog.tpl";
			} else {
				$this->template="module/dialog-".$this->request->get["id"].".tpl";
			}
			$this->render();
		}
	}
?>