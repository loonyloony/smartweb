<?php
	class ControllerModuleNews extends Controller
	{
		public function index()
		{
			
			if($this->smartweb->sitemapid != "" && $this->smartweb->objectid == "")
			{
				$template=array("template"=>"module/news_list.tpl");
				if(SKINID == "amy" && $this->smartweb->sitemapid == 31) {
					$this->getList(0, 3, $template);
				} else if(SKINID == "elifeprinting") {
					$this->getList(0, 20, $template);
				} else if(SKINID == "bolua") {
					$this->getList(0, 20, $template);
				} else if(SKINID == "danxay") {
					$this->getList(0, 8, $template);
				} else {
					$this->getList(0, 5, $template);
				}
			}
			else
			{
				$this->getNews();
				//$this->smartweb->layoutid = "gioithieu";layout_thucdondetail
				if($this->smartweb->layoutid == "thucdon"){
					$this->smartweb->layoutid = "gioithieu";
				}
				$this->template="module/news_detail.tpl";
			}
			if(SKINID == "labwell")
			{	$this->load->model("core/media");
				$this->data['news'] = $this->model_core_media->getItem($this->smartweb->objectid);
				$this->load->model("core/sitemap");
				$parent_link = $this->model_core_sitemap->getItem(substr($this->data['news']['refersitemap'],1,-1));
				$this->data['pageURL'] = $this->url->getURL($parent_link['seo_url'], 'sitemap', $parent_link['sitemapid']);
			}		
			
			$this->id="content";
			$this->render();
		}
		
		public function getList($from, $to, $template=array(), $mediaid=""){
			
			$this->data['sitemap'] = $this->smartweb->sitemap['sitemap_description']['sitemapname'];
			$this->data['description'] = $this->smartweb->sitemap['sitemap_description']['description'];
			if($mediaid == ""){
				$mediaid=$this->smartweb->sitemapid ;
			} else {
				$this->smartweb->sitemapid = $mediaid;	
			}
			
			$this->data['mediaid'] = $this->smartweb->sitemapid ;
			$this->data['from'] = $from;
			$this->data['to'] = $to;
			$this->load->model("core/media");
			$this->load->helper("image");
			$where = " AND mediatype = 'media_news'";
			$arrayOfNews = $this->model_core_media->getList($where,$from,$to);
			$this->data['medias'] = array();
			if(isset($arrayOfNews)){
				foreach($arrayOfNews as $news){
					$news['link'] = $this->url->getURL($news['alias'], 'media', $news['mediaid']);
					$news['updateddate'] = $this->date->formatMySQLDate($news['updateddate'], 'longdate');
					$news['summary'] = htmlspecialchars_decode($news['summary']);
					if($news['imagepath'] != ''){
						$news['imagethumbnail'] = HelperImage::resizePNG($news['imagepath'], 200, 0);	
					}
					
					$this->data['medias'][] = array(
													'title'				=> 	$news['title'],
													'imagethumbnail'	=>	$news['imagethumbnail'],
													'summary'			=>	$news['summary'],
													'updateddate'		=>	$news['updateddate'],
													'link'				=>	$news['link'],
													'imagepath'			=>	$news['imagepath'],
													'author'			=>	$news['author'],
													'source'			=>	$news['source']
												);
				}	
			}

			$countnext= $this->model_core_media->getList($where , $from+$to, $to);
			if(count($countnext)>0){
				$this->data['flag']= "true";
			}else{
				$this->data['flag']= "false";
			}
			
			/************************************
			* config
			************************************/
			
			//set page title
			if($this->smartweb->sitemap['sitemap_description']['meta_title'] == "")
			{
				$this->document->setTitle($this->smartweb->sitemap['sitemap_description']['sitemapname']);
			}
			else
			{
				$this->document->setTitle($this->smartweb->sitemap['sitemap_description']['meta_title']);	
			}
			
			//meta tag
			$meta_description = $this->smartweb->sitemap['sitemap_description']['meta_description'];
			$this->document->setDescription($meta_description);
			$meta_keywords = $this->smartweb->sitemap['sitemap_description']['meta_keyword'];
			$this->document->setKeywords($meta_keywords);
			
			//link
			$this->document->addLink($this->url->getURL($this->smartweb->sitemap['seo_url'], 'sitemap', $this->smartweb->sitemapid));
			
			//OG
			$og_title = $this->smartweb->sitemap['sitemap_description']['sitemapname'];
			$og_url = $this->url->getURL($this->smartweb->sitemap['seo_url'], 'sitemap', $this->smartweb->sitemapid);
			$og_image = HTTP_SERVER . "images/autosize-130x86/" . $this->smartweb->sitemap['imagepath'];
			$og_summary = $this->smartweb->sitemap['sitemap_description']['summary'];
			$og_description = $this->string->getTextLength($this->smartweb->sitemap['sitemap_description']['description'], 0, 100);
			$og_publicdate = "";
			$og_revisiondate = "";
			$this->smartweb->setOG($og_title, $og_url, $og_image, $og_summary, $og_description, $og_publicdate, $og_revisiondate);
		
			$this->template=$template['template'];
			$this->render();
		}
		
		
		
		public function getListPage(){
			$data=$this->request->post;
			$template=array('template'=>"module/news_list_page.tpl");
			
			$arr=array($data['from'],$data['to'],$template,$data['mediaid']);
			$this->data['output']=$this->loadModule("module/news","getList",$arr);
			
			$this->template="common/output.tpl";			
			$this->render();
		}
		
		private function getNews(){
			$this->load->model("core/media");
			$this->data['news'] = $this->model_core_media->getItem($this->smartweb->objectid);
			
			//update view count
			$this->model_core_media->updateViewcount($this->data['news']['mediaid']);
			
			$where = " AND refersitemap like '%[".$this->smartweb->sitemapid."]%' AND mediaid <> '" . $this->data['news']['mediaid'] . "' AND status = 'active'";
			$arrayOfOtherNews = $this->model_core_media->getList($where , 0, 5);
			
			if(count($arrayOfOtherNews) > 0){
				foreach($arrayOfOtherNews as $othernews){
					$othernews['link'] = $this->url->getURL($news['alias'], 'media', $othernews['mediaid']);
					$this->data['othernews'][] = $othernews;	
				}	
			}
			
			/************************************
			* config
			************************************/
			
			//set page title
			if($this->data['news']['meta_title'] == "")
			{
				$this->document->setTitle($this->data['news']['title']);
			}
			else
			{
				$this->document->setTitle($this->data['news']['meta_title']);	
			}
			
			//meta tag
			$meta_description = $this->smartweb->sitemap['sitemap_description']['meta_description'] . " " . $this->data['news']['metadescription'];
			$this->document->setDescription($meta_description);
			$meta_keywords = $this->smartweb->sitemap['sitemap_description']['meta_keyword'] . " " . $this->data['news']['metakeyword'];
			$this->document->setKeywords($meta_keywords);
			
			//link
			$this->document->addLink($this->url->getURL($this->data['news']['alias'], 'media', $this->data['news']['mediaid']));
			
			//OG
			$og_title = $this->data['news']['title'];
			$og_url = $this->url->getURL($this->data['news']['alias'], 'media', $this->data['news']['mediaid']);
			$og_image = HTTP_SERVER . "images/autosize-130x86/" . $this->data['news']['imagepath'];
			$og_summary = $this->data['news']['summary'];
			$og_description = $this->string->getTextLength($this->data['news']['description'], 0, 100);
			$og_publicdate = str_replace("-", "/", $this->data['news']['statusdate']);
			$og_revisiondate = str_replace("-", "/", $this->data['news']['updateddate']);
			$this->smartweb->setOG($og_title, $og_url, $og_image, $og_summary, $og_description, $og_publicdate, $og_revisiondate);
		}
		
	}
?>