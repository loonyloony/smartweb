<?php
class ControllerElifeImage extends Controller
{
	public $path;
	public $width;
	public $height;
	function __construct() 
	{
	 	$this->load->helper('image');
		$this->path = $this->request->get['path'];
		$this->width = (int)$this->request->get['width'];
		$this->height = (int)$this->request->get['height'];
   	}
	public function index()
	{
		$this->id='content';
		$this->template='common/output.tpl';
		$this->render();
	}
	public function resize()
	{
		$this->data['imagepath'] = HelperImage::resize($this->path,$this->width,$this->height);
		$this->id='content';
		$this->template='elife/image.tpl';
		$this->render();
	}
	public function resizepng()
	{
		$this->data['imagepath'] = HelperImage::resizepng($this->path,$this->width,$this->height);
		$this->id='content';
		$this->template='elife/image.tpl';
		$this->render();
	}
	public function autosize()
	{
		$this->data['imagepath'] = HelperImage::autosizePNG($this->path,$this->width,$this->height);
		$this->id='content';
		$this->template='elife/image.tpl';
		$this->render();
	}
	public function fixsize()
	{
		$this->data['imagepath'] = HelperImage::fixsize($this->path,$this->width,$this->height);
		$this->id='content';
		$this->template='elife/image.tpl';
		$this->render();
	}
	
	
	
}