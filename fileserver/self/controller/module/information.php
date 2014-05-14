<?php
class ControllerModuleInformation extends Controller
{
	private $error = array();
	function __construct() 
	{}
	
	function index()
	{	$this->data = array_merge($this->data, $this->language->getData());
		$this->getForm();
	}
	
	public function getForm()
	{
		$config = array(
			"sitemapid" => $this->request->get['sitemapid'],
			"mediatype" => "media_information",
			"arr_tabs" => array("tab_editor","tab_information")
		);
		$this->data['dataform'] = $this->loadmodule("media/dataform","getForm",$config);
		
		$this->id='content';
		$this->template='module/mediaform.tpl';
		$this->layout='layout/center';
		$this->render();
	}
	
	public function insert()
	{
		$this->data = array_merge($this->data, $this->language->getData());
		$this->data['arr_language']=$this->document->getLanguage();	
		$sitemapid=$this->request->get['sitemapid'];										
		$mediaid=$this->user->getSiteId().$this->request->get['sitemapid'];
		//xử lý phần title
		$backhistory=HTTP_SERVER;
		$this->data['sitemap']=$this->model_core_sitemap->getItem($sitemapid,$this->user->getSiteId());	
		$backhistory=HTTP_SERVER;
		
		$title="Quản lý ".$this->data['sitemap']['sitemapname'];
		$arr=array($title,$backhistory);
		$this->data['dataform']['header']=$this->loadModule("common/dataform","getDataheader",$arr);
		
			
		//Xử lý dữ liệu
		$this->data['sitemapnews']=array();
		$this->data['items']=array();
		if($mediaid!=""){
				
				foreach($this->data['arr_language'] as $key=>$item){
					$where=" AND languageid='".$key."' AND mediatype='media_information'";
					$this->data['items'][$key]=$this->model_core_elifemedia->getItem($mediaid,$where);
					$dk= " AND mediatype='media_information'";
					$this->data['items']['common']=$this->model_core_elifemedia->getItem($mediaid,$dk);
					$this->data['items']['common']['imagethumbnail']=HelperImage::resize($this->data['items']['common']['imagepath'], 200, 200);
					$this->data['items']['groupkey']=explode("]",$this->data['items']['common']['groupkeys']);
				}
				
				foreach($this->data['items']['groupkey'] as $key=>$item){
					$this->data['items']['groupkey'][$key]=str_replace("[","",$item); 
				}

				$where=" AND mediafileid='".$mediaid."' AND filetype='image'";
				$this->data['items']['image']=$this->model_core_mediafiledescription->getList($where);
			
				foreach($this->data['items']['image'] as $k=>$v){
					
					$where=" AND mediafiledecriptionid='".$v['id']."' AND filetype='image'";
					$this->data['items']['image'][$k]['imagethumbnail']=HelperImage::resize($this->data['items']['image'][$k]['image'], 120, 120);
					$this->data['items']['image'][$k]['imagetitle']=$this->model_core_mediafile->getList($where);	
				}
				
				
				foreach($this->data['items']['groupkey'] as $key=>$item){
					$this->data['items']['groupkey'][$key]=str_replace("[","",$item); 
				}
				
				$where=" AND mediafileid='".$mediaid."' AND filetype='image'";
				$this->data['items']['image']=$this->model_core_mediafiledescription->getList($where);
			
				foreach($this->data['items']['image'] as $k=>$v){
					
					$where=" AND mediafiledecriptionid='".$v['id']."' AND filetype='image'";
					$this->data['items']['image'][$k]['imagethumbnail']=HelperImage::resize($this->data['items']['image'][$k]['image'], 120, 120);
					$this->data['items']['image'][$k]['imagetitle']=$this->model_core_mediafile->getList($where);	
				}
				
				
				
		}else{									
			$where=' AND sitemap.moduleid like "%module/media_information%"';						
			$this->data['items']['group']=$this->model_core_sitemap->getList("default",$where);
		}
		
		$where=' AND sitemap.moduleid = "module/information"';											
		$this->data['items']['group']=$this->model_core_sitemap->getList("default",$where);	
		$arr=array($this->data['items'],$this->data['arr_language'],"information");
		
		$this->data['dataform']['middle']=$this->loadModule("common/dataform","getDataMiddle",$arr);
		$this->data['dataform']['footer']=$this->loadModule("common/dataform","getDatafooter");
		
		$arr=array("information",$backhistory,$this->data['arr_language']);	
		$this->data['dataform']['script']=$this->loadModule("common/dataform","getScript",$arr);
		
		$this->id='content';
		$this->template='module/dataform.tpl';
		$this->layout='layout/center';
		$this->render();
	}
	
	public function save(){
		
		$this->data['arr_language']=$this->document->getLanguage();
		
		$data=$this->request->post;
		
		if($this->vadilateForm($data)){
		$mediaid=$data['mediaid'];
		if($data['mediaid']==""){
			$data['mediaid'] = $this->user->getSiteId().$data['sitemapid'];
		}
		$this->model_core_mediafile->delete($data['mediaid']);
		$this->model_core_mediafiledescription->delete($data['mediaid']);
		
		$data['alias']=$data['seourl'];
		
		foreach($this->data['arr_language'] as $key=>$val){
			$data['mediatype']="media_information";
			$data['status']="active";
			$data['title']=$data['title'.$key];	
			$data['summary']=$data['summary'.$key];	
			$data['description']=$data['description'.$key];
			$data['metakeyword']=$data['metakeyword'.$key];
			$data['metadescription']=$data['metadescription'.$key];
			$data['userid']=$this->user->getUsername();		
			$data['languageid']=$key;	
			if($mediaid==""){		
				$idmedia=$this->model_core_elifemedia->insert($data);
			}else{
				$idmedia=$this->model_core_elifemedia->updates($data);
			}
		}
		
		//cập nhật url_alias
		$seourl['object']="media";
		$seourl['value']=$idmedia;
		$seourl['keyword']=$data['seourl'];
		
		$this->model_core_seourl->insert($seourl);
		
		
		
		$file=array();
		for($i=0;$i<count($data['subfileid']);$i++){
				$filedescription['mediafileid']=$mediaid;
				$filedescription['fileid']=$data['subfileid'][$i];
				$filedescription['image']=$data['subfilepath'][$i];
				$filedescription['filetype']="image";
				$mediafiledecriptionid=$this->model_core_mediafiledescription->insert($filedescription);
			foreach($this->data['arr_language'] as $key=>$val){
				
				$file['mediaid']=$data['mediaid'];
				$file['fileid']=$data['subfileid'][$i];
				$file['filepath']=$data['subfilepath'][$i];
				$file['title']=$data['sub'.$key][$i];
				$file['languageid']=$key;
				$file['filetype']="image";
				$file['mediafiledecriptionid']=$mediafiledecriptionid;
				$this->model_core_mediafile->insert($file);
				}
				
			}
		
		$arr=array();
		for($i=0;$i<count($data['downloadfileid']);$i++){
				$filedes['mediafileid']=$mediaid;
				$filedes['fileid']=$data['downloadfileid'][$i];
				$filedes['image']=$data['downloadfilepath'][$i];
				$filedes['filetype']="file";
				$id=$this->model_core_mediafiledescription->insert($filedes);
			foreach($this->data['arr_language'] as $key=>$val){
				//$fileimage=explode("_",$data['downloadfileid'][$i]);
				$arr['mediaid']=$data['mediaid'];
				$arr['fileid']=$data['downloadfileid'][$i];
				$arr['filepath']=$data['downloadfilepath'][$i];
				$arr['title']=$data['sub'.$key][$i];
				$arr['languageid']=$key;
				$arr['filetype']="file";
				$arr['mediafiledecriptionid']=$id;
				$this->model_core_mediafile->insert($arr);
				}
				
			}
			
			$this->data['output']="true";
			}else{
			foreach($this->error as $item){
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
		}
		if(!$this->smartweb->checkSEOURL($data['seourl'],"media",$data['mediaid']))
		{
			$this->error['seourl'] = "Seo url đã tồn tại";
		}
		
		
		if (count($this->error)==0) {
	  		return TRUE;
		} else {
	  		return FALSE;
		}	
	}	
}
?>