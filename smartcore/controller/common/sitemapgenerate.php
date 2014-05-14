<?php
	class ControllerCommonSitemapGenerate extends Controller
	{
		private $FORMAT_ITEM = "<url><loc>%s</loc><lastmod>%s</lastmod><changefreq>%s</changefreq><priority>%.2f</priority></url>";
		
		public function index()
		{	
			$this->template = "common/sitemapgenerate.tpl";
			$this->render();
		}
		
		public function genSitemap() {
			try {
				$this->createSitemapXMLOnlySeo_URL();
				$this->data['output'] = 'true';
			} catch (Exception $e) {
				$this->data['output'] = 'false';
			}
			$this->template = "common/output.tpl";
			$this->render();
		}
		
		//main function
		/**
		create sitemap with table alias, only link with alias show
		*/
		private function createSitemapXMLOnlySeo_URL() {
			
			require_once(DIR_SERVERROOT.'simple_html_dom.php');
			ini_set("memory_limit","-1"); //no limit memory
			set_time_limit(1000 * 60 * 30); //30 minutes
			
			//echo date("Y-m-d H:i:s")."<br/>";
			$LAST_MOD = date("Y-m-d");
			$CHANGE_FRED = "weekly";
			
			//echo "before memory=".memory_get_peak_usage()."<br/>";
			$this->load->model("core/site");
			$site = $this->model_core_site->getItem(SITEID);
			$site_language = $site['language'];
			$languageArr = explode(",", $site_language);
			
			$locations = $this->collectUrlFromURLAlias();
			$contentXMLItem = "";
			
			//level 0
			$locationCollection = $locations;			
			foreach($locations as $location) {
				$locationCollection[$location] = $location;
				$contentXMLItem .= sprintf($this->FORMAT_ITEM, $location, $LAST_MOD, $CHANGE_FRED, "0.8");
			}			
			
			$locations = null;
			unset($locations);
			
			$this->writeSitemapXML($contentXMLItem);
		}
		
		
		/*
		Get full link to deep = 2 of site
		*/
		private function createSitemapXMLFull() {
			
			require_once(DIR_SERVERROOT.'simple_html_dom.php');
			ini_set("memory_limit","-1"); //no limit memory
			set_time_limit(1000 * 60 * 30); //30 minutes
			
			//echo date("Y-m-d H:i:s")."<br/>";
			$LAST_MOD = date("Y-m-d");
			$CHANGE_FRED = "weekly";
			
			$this->load->model("core/site");
			$site = $this->model_core_site->getItem(SITEID);
			$site_language = $site['language'];
			$languageArr = explode(",", $site_language);
			
			$locations = array();
			$urlFromAlias = $this->collectUrlFromURLAlias();
			$urlFromMedia = $this->collectUrlFromMedia();
			$urlFromProduct = $this->collectUrlFromProduct();
			$locations = array_merge($urlFromAlias, $urlFromMedia, $urlFromProduct);
			unset($urlFromAlias);
			unset($urlFromMedia);
			unset($urlFromProduct);
			
			
			$contentXMLItem = "";
			
			//level 0
			$locationCollection = $locations;			
			foreach($locations as $location) {
				$locationCollection[$location] = $location;
				$contentXMLItem .= sprintf($this->FORMAT_ITEM, $location, $LAST_MOD, $CHANGE_FRED, "0.8");
			}			
			
			//level 1
			foreach($locations as $key => $location) {
				$this->getLinkFromLocation($locationCollection, $location, $languageArr);
			}
			$locationsLevel1 = array_diff($locationCollection, $locations);
			foreach($locationsLevel1 as $location) {
				$contentXMLItem .= sprintf($this->FORMAT_ITEM, $location, $LAST_MOD, $CHANGE_FRED, "0.64");
			}
			
			
			//level 2
			foreach($locationsLevel1 as $key => $location) {
				$this->getLinkFromLocation($locationCollection, $location, $languageArr);
			}
			$locationsLevel2 = array_diff($locationCollection, $locations, $locationsLevel1);
			foreach($locationsLevel2 as $location) {
				$contentXMLItem .= sprintf($this->FORMAT_ITEM, $location, $LAST_MOD, $CHANGE_FRED, "0.5");
			}
			
			$locations = null;
			$locationsLevel1 = null;
			$locationsLevel2 = null;
			unset($locations);
			unset($locationsLevel1);
			unset($locationsLevel2);
			
			$this->writeSitemapXML($contentXMLItem);
		}
		
		//common function
		private function writeSitemapXML($contentXMLItem) {
			$dir = DIR_SERVERROOT;
			$filename = "sitemap.xml";
			$modeWrite = "w";
			$content = $this->composeContentSitemapXMLDocument($contentXMLItem);
			//echo $content;
			$this->common->writeFileText($dir, $filename, $content, $modeWrite);
		}
		
		private function composeContentSitemapXMLDocument($contentXMLItem) {			
			$content = '<?xml version="1.0" encoding="UTF-8"?><urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.sitemaps.org/schemas/sitemap/0.9 http://www.sitemaps.org/schemas/sitemap/0.9/sitemap.xsd">';
			$content .= $contentXMLItem;
            $content .= '</urlset>';
			return $content;
		}
		
		private function getLinkFromLocation(&$locationCollection, $location, $languageArr) {
			//echo "** process location: " . $location."<br/>";
			$html = file_get_html_streaming($location);	
			$linkArr = $html->find('a');
			foreach($linkArr as $keyLink => $element) {
				
				$link = $element->href;
				
				if(strpos($link, 'http') === false) {
					foreach($languageArr as $languageid) {
						if ($languageid == "vn") {
							$languageid = "vi";
						}
						$link = ROOT_HTTP_SERVER . $languageid . "/" . $link;
						if(!isset($locationCollection[$link])) { 
							$locationCollection[$link] = $link;
							//echo $link . "<br/>";
						}
					}
				} else {
					if(!isset($locationCollection[$link]) && strpos($link, ROOT_HTTP_SERVER) !== false) {
						$locationCollection[$link] = $link;	
						//echo $link . "<br/>";	
					}
				}
				
				$linkArr[$keyLink] = null;
				unset($linkArr[$keyLink]);
			}
			
			$html->clear();
			$html = null;
			unset($html);
			
			//echo "--> memory=".memory_get_peak_usage()."<br/>";
		}
		
		
		/**
		collect url from product has no seo_url
		*/
		private function collectUrlFromProduct() {
			$urlArray = array();
			
			$sql = "select p.productid, pd.languageid
				FROM 	`product` p INNER JOIN `product_description` pd ON p.productid = pd.productid
				WHERE	p.status = 0 AND seo_url = ''
			";
			$products = $this->db->query($sql)->rows;
			
			foreach($products as $product) {
				if($product['languageid'] == "vn") {
					$product['languageid'] = "vi";
				}
				$urlArray[] = (ROOT_HTTP_SERVER.$product['languageid']."/").htmlentities("?obj=product&id=".$product['productid']);
			}
			
			return $urlArray;
		}
		
		/**
		collect url from media has alias = ''
		*/
		private function collectUrlFromMedia() {
			
			$urlArray = array();
			
			$this->load->model("core/media");
			
			//get media with alias = ''
			$where = " AND alias = ''";
			$medias = $this->model_core_media->getListMediaNoLang($where);
			
			foreach($medias as $media) {
				if($media['languageid'] == "vn") {
					$media['languageid'] = "vi";
				}
				$urlArray[] = (ROOT_HTTP_SERVER.$media['languageid']."/").htmlentities("?obj=media&id=".$media['mediaid']);
			}
			
			//var_dump($urlArray);
			
			return $urlArray;
		}
		
		/**
		collect url from table url_alias
		*/
		private function collectUrlFromURLAlias() {
			
			$urlArray = array();
			
			$this->load->model("core/urlalias");
			$this->load->model("core/site");
			
			$site = $this->model_core_site->getItem(SITEID);
			$site_language = $site['language'];
			$languageArr = explode(",", $site_language);
			
			$where = " AND keyword != ''";
			$aliasList = $this->model_core_urlalias->getList($where);
			foreach($aliasList as $alias) {
				foreach($languageArr as $languageid) {
					if ($languageid == "vn") {
						$languageid = "vi";
					}
					$urlArray[] = ROOT_HTTP_SERVER . $languageid . "/" . $alias['keyword'] . ".html";
				}
			}
			
			return $urlArray;
			
		}
	}
?>