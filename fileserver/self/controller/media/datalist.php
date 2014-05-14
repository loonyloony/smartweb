<?php
class ControllerMediaDatalist extends Controller
{
	private $error = array();
	function __construct() 
	{
		$this->load->model('core/media');
		$this->load->model('core/sitemap');
		$this->load->helper('image');
	}
	
	public function index()
	{
		$this->template='media/list_layout.tpl';
		$this->render();
	}
	
	public function getList($sitemapid, $mediatype, $layoutpath, $column_list)
	{
		$this->data['layoutpath'] = $layoutpath;
		//Load Sitemap
		$sitemap = $this->model_core_sitemap->getItem($sitemapid, SITEID);
		$data_sitemap = $this->model_core_sitemap->getDescription($sitemapid,$this->config->get("config_languageid"));	
		$this->data['sitemap'] = $data_sitemap[0];
		$this->data['insert'] = $this->url->http($sitemap['moduleid'].'/insert&sitemapid='.$sitemapid);
		$this->data['title'] ="Quản lý ".$this->data['sitemap']['sitemapname'];
		
		//Cai dat
		/*$column_list = array(
			0 => "text;title;Tiêu đề",			
			1 => "text;mediaid;Mã bài viết",
			
		);*/
		
		$links_per_page = 5;
		if($sitemapid!=""){
			
		$sql = "Select `media`.* from `media` where 1=1 AND mediatype='".$mediatype."' AND refersitemap like '%[".$sitemapid."]%' AND languageid='".LANGUAGE_DEFAULT."' AND status <>'delete'";
		}else{
			$sql = "Select `media`.* from `media` where 1=1 AND mediatype='".$mediatype."'  AND languageid='".LANGUAGE_DEFAULT."' AND status <>'delete'";
		}
		$defaultorderby = " Order by position DESC, statusdate DESC ";
		
		//////////////////////
		$args = array($column_list, $sitemap['moduleid'], "index.php?route=".$sitemap['moduleid']."&sitemapid=".$sitemapid);
		$this->data['dataheader'] = $this->loadModule("common/dataheader","displaysearch",$args);
		
		/////////////////////////////
		$rows_per_page = $this->request->get['rpp'];
		
		$pager = new Edwin_Pager($sql, $rows_per_page, $links_per_page, $defaultorderby);
		$pager->paginate();
		
		//Render Data & Pagination
		$this->data['items'] = $pager->getDataset();
		foreach($this->data['items'] as $key=>$value){
				$this->data['items'][$key]['imagethumbnail']=HelperImage::resize($this->data['items'][$key]['imagepath'],'160', '120');
				$this->data['items'][$key]['sitemapid']=explode(",",$this->data['items'][$key]['refersitemap']);
				$this->data['items'][$key]['sitemapid']=str_replace("[","",str_replace("]","",$this->data['items'][$key]['sitemapid'][0]));
				$this->data['items'][$key]['link']=$this->url->http($sitemap['moduleid'].'/insert&sitemapid='.$this->data['items'][$key]['sitemapid']."&mediaid=".$this->data['items'][$key]['mediaid']);
				$this->data['items'][$key]['linkpreview'] = $this->url->getURL($this->data['items'][$key]['alias'], "media", $this->data['items'][$key]['mediaid']);

			}
		$this->data['pager_fullnavs'] = $pager->renderFullNav();
		$this->data['pager_jump'] = $pager->renderJumpMenu("Xem nhanh trang:");
		$this->data['pager_rpp'] = $pager->renderRowsPerPage("");

		$this->template='media/list_layout.tpl';
		$this->render();
	}
	
	public function delete()
	{
		$data=$this->request->post;
		switch($data['action']){
			case 'item':
				$this->model_core_media->delete($data['mediaid']);
				$this->smartweb->deleteSEOURL("media",$data['mediaid']);
				$this->data['output']="true";
			break;
			case 'items':
				if($data['delete'])
				{
					foreach($data['delete'] as $key=>$value){
						$this->model_core_media->delete($value);
						$this->smartweb->deleteSEOURL("media",$value);
					}
				}
				$this->data['output']="true";
			break;
		}
		$this->template='common/output.tpl';
		$this->render();
	}
	
	public function updatePosition()
	{
		$data=$this->request->post;
		foreach($data['position'] as $key=>$value){
			$this->model_core_media->updatePosition($key,$value);
		}
		$this->data['output']="true";
		$this->template='common/output.tpl';
		$this->render();
	}

}
?>