<?php
class ControllerSidebarManufacturer extends Controller
{
    public function index()
    {
        $this->load->model("core/sitemap");
        $this->load->model("core/product");
        //get all sitemapid with moduleid = module/product
        $listSitemap = $this->model_core_sitemap->getList("default", " AND sitemap.moduleid = 'module/product'");
        foreach ($listSitemap as $item) {
            $productList = $this->model_core_product->getList(" AND sitemapid = '" . $item['sitemapid'] . "' ", true);

            if (count($productList) > 0) {
                $this->data['category'][$item['sitemapid']]['sitemapname'] = $item['sitemapname'];
                $this->data['category'][$item['sitemapid']]['seo_url'] = $item['seo_url'];
                $this->data['category'][$item['sitemapid']]['sitemapid'] = $item['sitemapid'];
                foreach ($productList as $product) {
                    $manufacturer = $this->model_core_product->getManufacturer($product['manufacturerid']);
                    $this->data['category'][$item['sitemapid']]['manufacturer'][$manufacturer['name']]['name'] = $manufacturer['name'];
                    $this->data['category'][$item['sitemapid']]['manufacturer'][$manufacturer['name']]['image'] = $manufacturer['image'];
                    $this->data['category'][$item['sitemapid']]['manufacturer'][$manufacturer['name']]['seo_url'] = $manufacturer['seo_url'];
                    $this->data['category'][$item['sitemapid']]['manufacturer'][$manufacturer['name']]['manufacturerid'] = $manufacturer['manufacturerid'];
                }
                array_unique($this->data['category'][$item['sitemapid']]['manufacturer']);
            }
        }
        $this->id = "manufacturer";
        $this->template = "sidebar/manufacturer.tpl";
        $this->render();
    }

}

?>