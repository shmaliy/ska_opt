<?php
class ModelToolCfooter extends Model {	

    public function footermenu($col)
    {
        $tUrl = DB_PREFIX . 'url_alias';
        $urls_query = "SELECT * FROM `" . $tUrl . "` WHERE `keyword` like '" . $col . "-%'";
        $urls = $this->db->query($urls_query);
        $links = array();
        if ($urls->num_rows) {
            $ids = array();
            foreach ($urls->rows as $result) { 		
                $id = explode('=', $result['query']);
                $ids[] = end($id);
            }
        
        
            $in = implode(', ', $ids);

            $pUrl = DB_PREFIX . 'information_description';
            $posts_query = "SELECT `information_id`, `title` FROM `" . $pUrl . "` WHERE `information_id` in (" . $in . ") AND `language_id` = 1";

            $posts = $this->db->query($posts_query);
            
            if ($posts->num_rows) {
                foreach ($posts->rows as $link) {
                    $title = explode('(', rtrim($link['title'], ')'));

                    $links[] = array(
                        'url' => '/index.php?route=information/information&information_id=' . $link['information_id'],
                        'title' => end($title)
                    );
                } 	
            }
        }
        
        return $links;
        
        echo '<pre>';
        var_export($links);
        echo '</pre>';
        
    }
}
?>