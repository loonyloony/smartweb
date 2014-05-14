<?php
	class ControllerCommonLanguage extends Controller
	{
		public function index()
		{
			$url = $this->request->post['url'];
			$param = str_replace(HTTP_SERVER,"",$url);
			$_SESSION['lang'] = $this->request->get['language'];
			
			//if has html => get seo_url
			$pos = strpos($param,".html");
			if ($pos !== false) {
				$seo_url = substr($param,0,$pos);
				$old_seo = $this->smartweb->getSEOURL($seo_url);
				$this->load->model('core/urlalias');
				$where = " AND object = '".$old_seo['object']."' AND value = '".$old_seo['value']."' AND languageid = '".$this->request->get['language']."' ";
				$new_seo = $this->model_core_urlalias->getItem($where);
				$new_url = ROOT_HTTP_SERVER;
				$new_url .= $this->request->get['language'] == "vn" ? "vi/" : $this->request->get['language']."/";
				if($new_seo['keyword'] != "")
				{
					$new_url .= $new_seo['keyword'].".html";
				}
				else
				{
					if($new_seo['object'] != "")
					{
						$new_url .= "?obj=".$new_seo['object']."&id=".$new_seo['value'];
					}
				}
			} else {
				$new_url = ROOT_HTTP_SERVER;
				$new_url .= $this->request->get['language'] == "vn" ? "vi/" : $this->request->get['language']."/";
				$new_url .= str_replace("amp;","",$param);
			}
			
			
			$this->data['output'] = $new_url;
			$this->template="common/output.tpl";
			$this->render();
		}
	}
?>