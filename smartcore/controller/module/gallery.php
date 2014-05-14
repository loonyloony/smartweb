<?php 
class ControllerModuleGallery extends Controller{
	public function index(){
		
		$this->load->model("core/media");
		
		$this->data['media'] = $this->model_core_media->getItem($this->smartweb->objectid);
		$this->data['files'] = $this->model_core_media->getFileByMediaId($this->data['media']['mediaid'],"image");
		
		/************************************
		* config
		************************************/
		
		//set page title
		if($this->data['media']['meta_title'] == "")
		{
			$this->document->setTitle($this->data['media']['title']);
		}
		else
		{
			$this->document->setTitle($this->data['media']['meta_title']);	
		}
		
		//meta tag
		$meta_description = $this->smartweb->sitemap['sitemap_description']['meta_description'] . " " . $this->data['media']['metadescription'];
		$this->document->setDescription($meta_description);
		$meta_keywords = $this->smartweb->sitemap['sitemap_description']['meta_keyword'] . " " . $this->data['media']['metadescription'];
		$this->document->setKeywords($meta_keywords);
		
		//link
		$this->document->addLink($this->url->getURL($this->data['media']['alias'], 'media', $this->data['media']['mediaid']));
		
		//OG
		$og_title = $this->data['media']['title'];
		$og_url = $this->url->getURL($this->data['media']['alias'], 'media', $this->data['media']['mediaid']);
		$og_image = HTTP_SERVER . "images/autosize-130x86/" . $this->data['media']['imagepath'];
		$og_summary = $this->data['media']['summary'];
		$og_description = $this->string->getTextLength($this->data['media']['description'], 0, 100);
		$og_publicdate = str_replace("-", "/", $this->data['media']['statusdate']);
		$og_revisiondate = str_replace("-", "/", $this->data['media']['updateddate']);
		$this->smartweb->setOG($og_title, $og_url, $og_image, $og_summary, $og_description, $og_publicdate, $og_revisiondate);

		$this->template = "module/gallery.tpl";
		$this->id="content";
		
		$this->render();	
	}	
}
?>