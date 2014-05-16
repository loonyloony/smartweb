<?php 
class ModelSplashBanner extends Model{
    
    public function insert($data){
        $addonid = $this->db->escape(@$data['addonid']);
        $link = $this->db->escape(@$data['link']);
        $image = $this->db->escape(@$data['image']);
        $sitemapid = $this->db->escape(@$data['sitemapid']);
        $sortorder = 1;
        
        $field = array(
                        '`addonid`',
                        '`link`',
                        '`image`',
                        '`sitemapid`',
                        '`sortorder`'
                    );
                    
        $value = array(
                        $addonid,
                        $link,
                        $image,
                        $sitemapid,
                        $sortorder
                    );
                    
        $weblinkid = $this->db->insertData("weblink", $field, $value);
        
        if(isset($data['weblink_description'])){
            foreach($data['weblink_description'] as $languageid => $weblink_description){
                $weblinkid = (int)$weblinkid;
                $languageid = $languageid;
                $title = $this->db->escape(@$weblink_description['title']);
                $description = $this->db->escape(@$weblink_description['description']);
                $link = $this->db->escape(@$weblink_description['link']);
                
                $field = array(
                                '`weblinkid`',
                                '`title`',
                                '`description`',
                                '`link`',
                                '`languageid`'
                            );  
                            
                $value = array(
                                $weblinkid,
                                $title,
                                $description,
                                $link,
                                $languageid
                            );
                            
                $this->db->insertData("weblink_description", $field, $value);
            }   
        }
    }
    
    public function update($data){

        $weblinkid = $this->db->escape(@$data['weblinkid']);
        $addonid = $this->db->escape(@$data['addonid']);
        $image = $this->db->escape(@$data['image']);
        $link = $this->db->escape(@$data['link']);
        $sitemapid = $this->db->escape(@$data['sitemapid']);
        
        $field = array(
                        '`addonid`',
                        '`image`',
                        '`link`',
                        '`sitemapid`',
                    );
                    
        $value = array(
                        $addonid,
                        $image,
                        $link,
                        $sitemapid
                    );
        
        $where = " weblinkid = '" . $weblinkid . "'";
        
        $this->db->updateData("weblink", $field, $value, $where);
        
        $this->db->deleteData("weblink_description", " weblinkid = '" . $weblinkid . "'");
        
        if(isset($data['weblink_description'])){
            foreach($data['weblink_description'] as $languageid => $weblink_description){
                $weblinkid = (int)$weblinkid;
                $languageid = $languageid;
                $title = $this->db->escape(@$weblink_description['title']);
                $description = $this->db->escape(@$weblink_description['description']);
                $link = $this->db->escape(@$weblink_description['link']);
                
                $field = array(
                                '`weblinkid`',
                                '`title`',
                                '`description`',
                                '`link`',
                                '`languageid`'
                            );  
                            
                $value = array(
                                $weblinkid,
                                $title,
                                $description,
                                $link,
                                $languageid
                            );
                            
                $this->db->insertData("weblink_description", $field, $value);
            }
        }
    }
    
    public function getList($where = ''){
        $weblink_data = array();
        
        $sql = "SELECT * FROM `weblink` WHERE 1=1 " . $where . "ORDER BY sortorder";
        $weblink_query = $this->db->query($sql);
        
        foreach($weblink_query->rows as $weblink){
            $weblink['linkedit'] = "?route=splash/banner/update&addonid=" . $weblink['addonid'] . "&weblinkid=" . $weblink['weblinkid'];
            $sql = "SELECT * FROM `weblink_description` WHERE weblinkid = '" . $weblink['weblinkid'] . "' AND languageid = '" . $this->config->get('config_languageid') . "'";  
            $query = $this->db->query($sql);
            $weblink_data[] = array_merge($weblink, $query->row);
        }
        
        return $weblink_data;
    }
    
    public function getListText($where = ''){
        $weblink_data = array();
        
        $sql = "SELECT * FROM `weblink` WHERE 1=1 " . $where . "ORDER BY sortorder";
        $weblink_query = $this->db->query($sql);
        
        foreach($weblink_query->rows as $weblink){
            $weblink['linkedit'] = "?route=splash/bannertext/update&addonid=" . $weblink['addonid'] . "&weblinkid=" . $weblink['weblinkid'];
            $sql = "SELECT * FROM `weblink_description` WHERE weblinkid = '" . $weblink['weblinkid'] . "' AND languageid = '" . $this->config->get('config_languageid') . "'";  
            $query = $this->db->query($sql);
            $weblink_data[] = array_merge($weblink, $query->row);
        }
        
        return $weblink_data;
    }
    
    public function delete($listweblinkid){
        foreach($listweblinkid as $weblinkid){
            $this->db->query("DELETE FROM `weblink` WHERE weblinkid = '" . $weblinkid . "'");
            $this->db->query("DELETE FROM `weblink_description` WHERE weblinkid = '" . $weblinkid . "'");
        }
    }
    
    public function getItem($weblinkid){
        $sql = "SELECT * FROM `weblink` WHERE weblinkid = '" . $weblinkid . "'";
        $query = $this->db->query($sql);
        
        return $query->row;
    }
    
    public function getDescriptions($weblinkid){
        $weblink_description = array();
        $sql = "SELECT * FROM `weblink_description` WHERE weblinkid = '" . $weblinkid . "'";
        $query = $this->db->query($sql);
        
        foreach ($query->rows as $result) {
            $weblink_description[$result['languageid']] = array(
                                                                    'title'             => $result['title'],
                                                                    'description'       => $result['description'],
                                                                    'link'              => $result['link']
                                                                );
        }
        
        return $weblink_description;
    }
    
    public function sortorder($weblinkid, $sortorder){
        
        $field = array(
                        '`sortorder`'
                    );
                    
        $value = array(
                        $sortorder
                    );
                    
        $where = " weblinkid = '" . $weblinkid . "'";
        $this->db->updateData("weblink", $field, $value, $where);
    }
}
?>