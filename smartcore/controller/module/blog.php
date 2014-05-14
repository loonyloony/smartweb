<?php
	class ControllerModuleBlog extends Controller
	{
		public function index()
		{
			
			if($this->smartweb->sitemapid != "" && $this->smartweb->objectid == "")
			{
				$template=array("template"=>"module/blog_list.tpl");
				if(SKINID == "taoemail")
					$this->getList(0, 15, $template);
				else
					$this->getList(0, 10, $template);
				
			}
			else
			{
				$this->getBlog();
				$this->template="module/blog_detail.tpl";
			}
			
			$this->id="content";
			$this->render();
		}
		
		public function getTags($sitemapid) {
			$this->load->model('core/tag');
			$where = "AND sitemapid = '".$sitemapid."' AND language = '".$this->config->get('config_languageid')."' AND count > 0";
			$this->data['tags'] = $this->model_core_tag->getList($where);
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
			$tag = rawurldecode($this->request->get['tag']);
			$date = rawurldecode($this->request->get['date']);
			$this->data['from'] = $from;
			$this->data['to'] = $to;
			$this->load->model("core/media");
			$this->load->helper("image");
			$where = " AND mediatype = 'media_blog' AND groupkeys LIKE '%".$tag."%' ";
			if($date != "") $where .= "AND DATE_FORMAT(updateddate, '%m/%Y') = '".$date."' ";
			
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
			
			$this->getTags($this->smartweb->sitemapid);
			//get month list
			$listmonth = $this->model_core_media->getListMonth(" AND mediatype = 'media_blog' AND refersitemap LIKE '%[".$this->data['mediaid']."]%' " , 0, 5);
			foreach ($listmonth as &$item) {
				$item = $this->date->formatMySQLDate($item['updateddate'], 'MY', "/");
			}
			$this->data['listmonth'] = $listmonth;
			
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
			$template=array('template'=>"module/blog_list_page.tpl");
			
			$arr=array($data['from'],$data['to'],$template,$data['mediaid']);
			$this->data['output']=$this->loadModule("module/blog","getList",$arr);
			
			$this->template="common/output.tpl";			
			$this->render();
		}
		
		private function getBlog(){
			$this->load->model("core/media");
			$this->data['news'] = $this->model_core_media->getItem($this->smartweb->objectid);
			if(SKINID == "quocca" && $this->data['news']['groupkeys'] !='')
			{
				$where = "AND mediatype = 'media_blog' AND mediaid != '" . $this->data['news']['mediaid'] . "' AND groupkeys LIKE '%" . $this->data['news']['groupkeys'] . "%' ";
				$arrayofTags = $this->model_core_media->getListMedia($where,0,4);
				
				if(count($arrayofTags) > 0){
				foreach($arrayofTags as $btags){
					$btags['link'] = $this->url->getURL($news['alias'], 'media', $btags['mediaid']);
					$this->data['btags'][] = $btags;	
				}	
				}
			}
			
			$where = " AND refersitemap like '%[".$this->smartweb->sitemapid."]%' AND mediaid <> '" . $this->data['news']['mediaid'] . "' ";
			$arrayOfOtherNews = $this->model_core_media->getList($where , 0, 5);
			
			if(count($arrayOfOtherNews) > 0){
				foreach($arrayOfOtherNews as $othernews){
					$othernews['link'] = $this->url->getURL($news['alias'], 'media', $othernews['mediaid']);
					$this->data['othernews'][] = $othernews;	
				}	
			}
			
			
			// get parent url
			$this->load->model("core/sitemap");
			$parent_link = $this->model_core_sitemap->getItem(substr($this->data['news']['refersitemap'],1,-1));
			$pageURL = $this->url->getURL($parent_link['seo_url'], 'sitemap', $parent_link['sitemapid']);
			$vars = parse_url($pageURL);
			parse_str($vars['query'], $query);
			unset($query['tag']);
			unset($query['date']);
			$vars['query'] = http_build_query($query);
			$urlnofilter = $vars['scheme']."://".$vars['host'].":".$vars['port'].$vars['path'];
			if ($vars['query']) $urlnofilter .= "?".$vars['query']."&";
				else
			$urlnofilter .= "?";
			$this->data['urlnofilter'] = $urlnofilter;
					
			$this->getTags(substr($this->data['news']['refersitemap'],1,-1));
			//get month list
			$listmonth = $this->model_core_media->getListMonth(" AND mediatype = 'media_blog' AND refersitemap LIKE '%".$this->data['news']['refersitemap']."%' " , 0, 5);
			foreach ($listmonth as &$item) {
				$item = $this->date->formatMySQLDate($item['updateddate'], 'MY', "/");
			}
			$this->data['listmonth'] = $listmonth;
			
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