<?php
class ControllerMediaDataform extends Controller
{
	private $error = array();
	function __construct() 
	{
		$this->load->model('core/media');
		$this->load->model('core/sitemap');
		$this->load->model('core/mediafile');
	}
	
	public function index()
	{
		$this->template='media/formlayout.tpl';
		$this->render();
	}
	
	public function getTags($sitemapid) {
			$this->load->model('core/tag');
			$where = "AND sitemapid = '".$sitemapid."' AND language = '".$this->config->get('config_languageid')."' AND count > 0";
			$this->data['tags'] = $this->model_core_tag->getList($where);			
		}
	
	public function getForm($sitemapid, $mediatype, $arr_tabs)
	{		
		$mediaid = $this->request->get['mediaid'];
		$this->data['tabs'] = $this->getTabs($arr_tabs);
		$this->data['arr_tabs'] = $arr_tabs;
		$this->data['mediatype'] = $mediatype;
		
		//get tags
		$this->getTags($this->request->get['sitemapid']);	
		
		//Mảng language
		$this->data['arr_language'] = $this->document->getLanguage();	
		
		//Load Sitemap
		$sitemap = $this->model_core_sitemap->getItem($sitemapid, SITEID);

		$data_sitemap = $this->model_core_sitemap->getDescription($sitemapid,$this->config->get("config_languageid"));	
		$this->data['sitemap'] = $data_sitemap[0];
		
		//xử lý phần title
		$this->data["config_backurl"] = HTTP_SERVER;
		$this->data["config_title"] = $this->language->get('label_editor_section')." ".$this->data['sitemap']['sitemapname'];
		
		//Load Media
		$mediaid = $this->getMediaId($mediaid, $sitemapid, $mediatype, $sitemap['moduleid']);
		$this->data['items'] = array();
		//
		$this->data['items']['mediaid'] = $mediaid;
		
		//Data da ngon ngu
		foreach($this->data['arr_language'] as $key=>$item){
			$where=" AND languageid='".$key."' ";
			//$this->data['items'][$key] = $this->model_core_media->getItemBySitemapID($sitemapid, $mediatype, $where);
			$this->data['items'][$key]=$this->model_core_media->getItem($mediaid,$where);

			// check if item belong to mod or not
			if($this->user->getUserTypeId() != "admin") {
				if ($this->data['items'][$key]['userid'] != $this->user->getUsername()) {
					$this->response->redirect(HTTP_SERVER."?route=error/not_found");
				}
			}
			$mediaid = $this->data['items'][$key]['mediaid'];
			$this->data['items']['common']=$this->data['items'][$key];
		}
		
		//Load tab map
		$this->data['location']['zoom'] = $this->model_core_media->getInformation($mediaid, 'zoom');
		if($this->data['location']['zoom']=="")
			$this->data['location']['zoom'] = 5;
		$this->data['location']['x'] = $this->model_core_media->getInformation($mediaid, 'x');
			if($this->data['location']['x']=="")
		$this->data['location']['x']=14.058324;
		$this->data['location']['y'] = $this->model_core_media->getInformation($mediaid, 'y');
		if($this->data['location']['y']=="")
			$this->data['location']['y']=108.277199;
		
		//Load tab Image
		
		//Load tab File
		$where=" AND mediaid='".$mediaid."' AND filetype='file' ";
		$this->data['items']['file']=$this->model_core_mediafile->getList($where);
		
		foreach($this->data['items']['file'] as $k=>$v){
			$this->data['items']['file'][$k]['imagetitle']=$this->model_core_mediafile->getDescription($this->data['items']['file'][$k]['mediafileid']);	
			/*$filedescription_data=$this->model_core_mediafile->getDescription($this->data['items']['file'][$k]['mediafileid']);	
			foreach($this->data['arr_language'] as $key=>$item){
				$this->data['items']['file'][$k]['imagetitle'][$key] = $filedescription_data
			}*/
			
		}
		
		//load tab image
		$where = " AND mediaid = '" . $mediaid . "' AND filetype = 'image'";
		$this->data['items']['image'] = $this->model_core_mediafile->getList($where);
		if(count($this->data['items']['image']) > 0){
			foreach($this->data['items']['image'] as $k	=> $v){
				$this->data['items']['image'][$k]['imagetitle'] = $this->model_core_mediafile->getDescription($this->data['items']['image'][$k]['mediafileid']);	
			}	
		}
		
		//Load tab Video
		
		//Load tab link
		
		$this->template='media/form_layout.tpl';
		$this->render();
	}
	
	public function save(){
		
		$this->data['arr_language']=$this->document->getLanguage();
		
		$data=$this->request->post;
		
		if($this->vadilateForm($data))
		{
			$mediaid=$data['mediaid'];
			
			//Save Table Media
			
			foreach($this->data['arr_language'] as $key=>$val)
			{	
				$data['status']= $this->user->getUserTypeId() == "admin" ? "active" : "pending";
				$data['title']=$data['title'.$key];	
				$data['summary']=$data['summary'.$key];	
				$data['meta_title']=$data['meta_title'.$key];
				$data['description']=$data['description'.$key];
				$data['metakeyword']=$data['metakeyword'.$key];
				$data['metadescription']=$data['metadescription'.$key];
				$data['seo_content']=$data['seo_content'.$key];
				$data['groupkeys']=$data['groupkeys'.$key];
				$data['userid']=$this->user->getUsername();		
				$data['languageid']=$key;
				$data['alias']=$data['seourl'.$key];	
				if($mediaid==""){
					if($tempid != ""){
						$data['mediaid'] = $tempid;	
					}
					$idmedia=$this->model_core_media->insert($data);
					$tempid = $idmedia;
				}else{
					if($tempid != ""){
						$data['mediaid'] = $tempid;	
					}
					$idmedia=$this->model_core_media->updates($data);
					$tempid = $idmedia;
				}
				
				//Save URL_ALIAS
				$this->smartweb->saveSEOURL($data['alias'], "media", $idmedia, $key);
				
				$this->load->model("core/tag");
				// save tags
				// decrease count in tag
				$oldtags = $data['old_groupkeys'.$key];
				$arr_old = explode(",",$oldtags);
				
				if(count($arr_old) != 0) {
					foreach ($arr_old as $item) {
						$item = trim($item);
						if ($item != "") {
							$tag_data = array (
								'sitemapid' => 	$data['sitemapid'],
								'key' => $item,
								'language' => $key
							);
							$this->model_core_tag->decrease_count($tag_data);
						}
					}
				}
				
				$tags = $data['groupkeys'.$key];
				$arr_tags = explode(",",$tags);
				if(count($arr_tags) != 0) {
					foreach ($arr_tags as $item) {
						$item = trim($item);
						if ($item != "") {
							$tag_data = array (
								'sitemapid' => 	$data['sitemapid'],
								'key' => $item,
								'language' => $key,
							);
							$this->model_core_tag->save($tag_data);
						}
					}
				}
			}
			
			$this->model_core_mediafile->delete($data['mediaid']);
			//Save file
			$file = array();
			for($i=0; $i<count($data['subfilepath']); $i++){
				$file['mediaid']=$idmedia;
				$file['filepath']=$data['subfilepath'][$i];
				$file['filetype']="file";
				$mediafileid = $this->model_core_mediafile->insert($file);
				
				

				foreach($this->data['arr_language'] as $key => $val){
					$filedescription['mediafileid'] = $mediafileid;
					$filedescription['languageid'] = $key;
					$filedescription['mediaid'] = $idmedia;
					$filedescription['title']=$data['subfiletitle'.$key][$i];
					$mediafiledecriptionid = $this->model_core_mediafile->insertdescription($filedescription);
				}
					
			}
			
			//save image			
			$subimage = array();
			for($i = 0; $i < count($data['subimagepath']); $i++){
				$subimage['mediaid'] = $idmedia;
				$subimage['filepath'] = $data['subimagepath'][$i];
				$subimage['filetype'] = "image";
				
				$mediasubimageid = $this->model_core_mediafile->insert($subimage);
				
				foreach($this->data['arr_language'] as $key => $val){
					$imagedescription['mediafileid'] = $mediasubimageid;
					$imagedescription['languageid'] = $key;
					$imagedescription['mediaid'] = $idmedia;
					$imagedescription['title'] = $data['subimagetitle'.$key][$i];
					$mediaimagedescriptionid = $this->model_core_mediafile->insertdescription($imagedescription);
				}
			}
			
			
			
			$this->data['output']="true";
			
			
		}
		else
		{
			foreach($this->error as $item)
			{
					$this->data['output'].=$item."<br>";
			}
		}
		
		$this->template='common/output.tpl';
		$this->render();
	}
	
	public function vadilateForm($data)
	{
		foreach($this->data['arr_language'] as $key=>$item){
			if(trim($data['title'.$key])==""){
				$this->error['productname'] = "Vui lòng nhập tất cả tiêu đề các ngôn ngữ";
			}
			if(!$this->smartweb->checkSEOURL($data['seourl'.$key],"media",$data['mediaid'],$key))
			{
				$this->error['seourl'] = "Seo url đã tồn tại : ".$data['seourl'.$key];
			}
		}
		
		
		
		if (count($this->error)==0) {
	  		return TRUE;
		} else {
	  		return FALSE;
		}	
	}
	
	//Private function
	private function getTabs($arr_tabs)
	{
		$array_tabs = array(
			"tab_editor" => '<li><a href="#tab_editor"><span>'.$this->language->get("tab_editor").'</span></a></li>',
			"tab_summary" => '<li><a href="#tab_summary"><span>'.$this->language->get("tab_editor").'</span></a></li>',
			"tab_subinformation" => '<li><a href="#tab_subinformation"><span>'.$this->language->get("label_subinformation").'</span></a></li>',
			"tab_faq" => '<li><a href="#tab_faq"><span>'.$this->language->get("tab_editor").'</span></a></li>',
			"tab_partnerlinks" => '<li><a href="#tab_partnerlinks"><span>'.$this->language->get("tab_information").'</span></a></li>',
			"tab_information" => '<li><a href="#tab_information"><span>'.$this->language->get("tab_information").'</span></a></li>',
			"tab_image" => '<li><a href="#tab_image"><span>'.$this->language->get("tab_image").'</span></a></li>',
			"tab_file" => '<li><a href="#tab_file"><span>'.$this->language->get("tab_file").'</span></a></li>',
			"tab_video" => '<li><a href="#tab_video"><span>'.$this->language->get("tab_video").'</span></a></li>',
			"tab_link" => '<li><a href="#tab_link"><span>'.$this->language->get("tab_link").'</span></a></li>',
			"tab_map" => '<li><a href="#tab_map"><span>'.$this->language->get("label_map").'</span></a></li>',
			"tab_tag" => '<li><a href="#tab_tag"><span>'.$this->language->get("label_tag").'</span></a></li>'
		);
		
		$result = array();
		foreach($arr_tabs as $tabid)
		{
			$result[$tabid] = $array_tabs[$tabid];
		}
		
		return $result;		
	}
	
	private function getMediaId($mediaid, $sitemapid, $mediatype, $moduleid = "")
	{
		if($moduleid == "")
		{
			$route = substr($this->request->get['route'],0,-7);
			$this->data['config_savesuccessurl'] = HTTP_SERVER."index.php?route=".$route."&sitemapid=".$sitemapid;
		}
		else
			$this->data['config_savesuccessurl'] = HTTP_SERVER."index.php?route=".$moduleid."&sitemapid=".$sitemapid;
		switch($mediatype)
		{
			case "media_information":
			case "media_contactmap":
			case "media_download":
			case "media_gallery":
			case "media_video":
				$this->data["config_backurl"] = HTTP_SERVER;
				if($mediaid == "")
				{
					$media = $this->model_core_media->getItemBySitemapID($sitemapid, $mediatype, " AND languageid='".$this->config->get("config_languageid")."' ");
					return $media['mediaid'];
				}
			break;
			default:
				$this->data["config_backurl"] = HTTP_SERVER."index.php?route=".$moduleid."&sitemapid=".$sitemapid;
				return $mediaid;
			break;
		}
		return $mediaid;
	}
	
	public function loadSubInfor()
	{
		$this->load->model("core/media");
		$this->load->helper('image');
		$sitemapid = $this->request->get['sitemapid'];
		
		$this->data['child']=$this->model_core_media->getList(" AND keyword like '%[" . $sitemapid . "]%' AND mediatype = 'subinfor' ");
		
		//$this->data['subImage'] = $this->string->array_Filter($this->data['child'],"mediatype","image");
		
		foreach($this->data['child'] as $key => $item)
		{
			$this->data['child'][$key]['link'] = '#sublink' . $this->data['child'][$key]['id'];
		} 
		$this->id='post';
		$this->template='media/list_subinformation.tpl';	
		$this->render();
	}
	
	public function addSubInfor()
	{
		$this->load->model("core/site");
		$this->load->model("core/media");
		$this->load->model("core/language");
		$site = $this->model_core_site->getItem($this->member->getSiteId());
		$arr_site_language = explode(",", $site['language']);
		foreach($arr_site_language as $site_language){
			$language = $this->model_core_language->getLanguageByCode(trim($site_language));
			if(isset($language)){
				$this->data['arr_language'][] = $language;
			}
		}
	
		if($this->request->get['mediaid'] != "")
		{
			$listsub = $this->model_core_media->getList(" AND mediaid='" . $this->request->get['mediaid'] . "'");
			if(count($listsub))
			{
				foreach($listsub as $item)
				{
					$sub = array();

					$sub[$item['languageid']]['mediaid'] = $item['mediaid'];
					$sub[$item['languageid']]['title'] = $item['title'];
					$sub[$item['languageid']]['subdescription'] = $item['description'];
					
					$this->data['items']['mediaid'] = $item['mediaid'];
					$this->data['items']['description'][$item['languageid']] = $sub;
				}
			}
		}

		$this->data['sitemap'] = $this->request->get['sitemapid'];
			
		$this->id='post';
		$this->template='media/form_tab_subeditor.tpl';
		$this->render();	
	}
	
	public function saveSubInfor()
	{
		$this->data['arr_language']=$this->document->getLanguage();
		
		$data=$this->request->post;

		//if($this->vadilateForm($data))
		//{
			$mediaid=$data['mediaid'];
			
			//Save Table Media
			$data['alias']=$data['seourl'];
			foreach($this->data['arr_language'] as $key=>$val)
			{	
				$data['status']="active";
				$data['title']=$data['subtitle'.$key];	
				//$data['summary']=$data['summary'.$key];	
				
				$data['description']=$data['subdescription'.$key];
				//$data['metakeyword']=$data['metakeyword'.$key];
				//$data['metadescription']=$data['metadescription'.$key];
				$data['userid']=$this->user->getUsername();		
				$data['languageid']=$key;
				
				if($mediaid==""){
					if($tempid != ""){
						$data['mediaid'] = $tempid;	
					}	
					$idmedia=$this->model_core_media->insert($data);
					$tempid = $idmedia;
				}else{
					if($tempid != ""){
						$data['mediaid'] = $tempid;	
					}
					$idmedia=$this->model_core_media->updates($data);
					$tempid = $idmedia;
				}
			}
			
			//Save URL_ALIAS
		//	$this->smartweb->saveSEOURL($data['seourl'], "media", $idmedia);
		//}
		
		$this->data['output'] = "true";
		
		$this->template="common/output.tpl";
		$this->render();
	}

	public function removeSubInfor()
	{
		$mediaid = $this->request->get['mediaid'];
		
		$this->model_core_media->remove($mediaid);
		
		$this->data['output'] = "true";
		
		$this->template="common/output.tpl";
		$this->render();
	}


}
?>