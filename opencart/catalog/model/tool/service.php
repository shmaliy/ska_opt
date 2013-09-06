<?php
class ModelToolService extends Model {	
	
    public function servicemenu()
    {
        $tUrl = DB_PREFIX . 'url_alias';
        $services_urls_query = "SELECT * FROM `" . $tUrl . "` WHERE `keyword` like 'service-%'";
        $urls = $this->db->query($services_urls_query);
        if ($urls->num_rows) {
            $ids = array();
            foreach ($urls->rows as $result) { 		
                $id = explode('=', $result['query']);
                $ids[] = end($id);
            }
        }
        
        $in = implode(', ', $ids);
        
        $pUrl = DB_PREFIX . 'information_description';
        $posts_query = "SELECT `information_id`, `title` FROM `" . $pUrl . "` WHERE `information_id` in (" . $in . ") AND `language_id` = 1";
        
        $posts = $this->db->query($posts_query);
        $links = array();
        if ($posts->num_rows) {
            foreach ($posts->rows as $link) {
                $title = explode('(', rtrim($link['title'], ')'));
                
                $links[] = array(
                    'url' => '/index.php?route=information/information&information_id=' . $link['information_id'],
                    'title' => end($title)
                );
            } 	
        }
        
        return $links;
        
        echo '<pre>';
        var_export($links);
        echo '</pre>';
        
    }
    
    public function whosonline($ip, $customer_id, $url, $referer) {
		$this->db->query("DELETE FROM `" . DB_PREFIX . "customer_online` WHERE (UNIX_TIMESTAMP(`date_added`) + 3600) < UNIX_TIMESTAMP(NOW())");
		 
		$this->db->query("REPLACE INTO `" . DB_PREFIX . "customer_online` SET `ip` = '" . $this->db->escape($ip) . "', `customer_id` = '" . (int)$customer_id . "', `url` = '" . $this->db->escape($url) . "', `referer` = '" . $this->db->escape($referer) . "', `date_added` = NOW()");
	}
}
?>