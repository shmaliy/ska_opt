<?php

class ControllerModuleYaSlider extends Controller {
	private $error = array();

	public function addYaSlider($data) {
      	$this->db->query("DELETE FROM " . DB_PREFIX . "product_yaslider");

		if (isset($data['product_yaslider'])) {
      		foreach ($data['product_yaslider'] as $product_id) {
        		$this->db->query("INSERT INTO " . DB_PREFIX . "product_yaslider SET product_id = '" . (int)$product_id . "'");
      		}
		}
	} 

	public function getYaSliderProducts() {
		$product_yaslider_data = array();

		$query = $this->db->query("SELECT product_id FROM " . DB_PREFIX . "product_yaslider");

		foreach ($query->rows as $result) {
			$product_yaslider_data[] = $result['product_id'];
		}
		return $product_yaslider_data;
	}
 
	
	public function index() {   
		$this->load->language('module/yaslider');

		$this->document->title = $this->language->get('heading_title');
		
		$this->load->model('setting/setting');

		$this->db->query("CREATE TABLE IF NOT EXISTS " . DB_PREFIX . "product_yaslider (`product_id` int(11) NOT NULL DEFAULT '0', PRIMARY KEY (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin");

		if (($this->request->server['REQUEST_METHOD'] == 'POST') && ($this->validate())) {
			
			$this->load->model('catalog/product');

			$this->addYaSlider($this->request->post);
						
			unset($this->request->post['product_yaslider']);
			
			$this->model_setting_setting->editSetting('yaslider', $this->request->post);		
			
			$this->cache->delete('product');
			
			$this->session->data['success'] = $this->language->get('text_success');
						
			$this->redirect(HTTPS_SERVER . 'index.php?route=extension/module&token=' . $this->session->data['token']);
		}
				
		$this->data['heading_title'] = $this->language->get('heading_title');

		$this->data['text_enabled'] = $this->language->get('text_enabled');
		$this->data['text_disabled'] = $this->language->get('text_disabled');
		$this->data['text_left'] = $this->language->get('text_left');
		$this->data['text_right'] = $this->language->get('text_right');
		$this->data['text_home'] = $this->language->get('text_home');
		
		$this->data['entry_limit'] = $this->language->get('entry_limit');
		$this->data['entry_position'] = $this->language->get('entry_position');
		$this->data['entry_status'] = $this->language->get('entry_status');
		$this->data['entry_sort_order'] = $this->language->get('entry_sort_order');
		$this->data['entry_product'] = $this->language->get('entry_product');
		
		$this->data['button_save'] = $this->language->get('button_save');
		$this->data['button_cancel'] = $this->language->get('button_cancel');

		//yaSlider
		$this->data['text_yaslider_main_settings'] = $this->language->get('text_yaslider_main_settings');
		$this->data['text_yaslider_settings'] = $this->language->get('text_yaslider_settings');
		$this->data['entry_timeout'] = $this->language->get('entry_timeout');
		$this->data['entry_timeout_desc'] = $this->language->get('entry_timeout_desc');
		$this->data['slider_fx'] = $this->language->get('slider_fx');
		$this->data['slider_fx_vert'] = $this->language->get('slider_fx_vert');
		$this->data['slider_fx_horz'] = $this->language->get('slider_fx_horz');
		$this->data['slider_fx_fade'] = $this->language->get('slider_fx_fade');
		
		$this->data['slider_random'] = $this->language->get('slider_random');
		$this->data['slider_random_yes'] = $this->language->get('slider_random_yes');
		$this->data['slider_random_no'] = $this->language->get('slider_random_no');
				
		//yaSlider styles
		$this->data['slider_style'] = $this->language->get('slider_style');
		$this->data['slider_style_default'] = $this->language->get('slider_style_default');
		$this->data['slider_style_blue'] = $this->language->get('slider_style_blue');
		$this->data['slider_style_green'] = $this->language->get('slider_style_green');
        $this->data['slider_style_red'] = $this->language->get('slider_style_red');
                

 		if (isset($this->error['warning'])) {
			$this->data['error_warning'] = $this->error['warning'];
		} else {
			$this->data['error_warning'] = '';
		}

  		$this->document->breadcrumbs = array();

   		$this->document->breadcrumbs[] = array(
       		'href'      => HTTPS_SERVER . 'index.php?route=common/home&token=' . $this->session->data['token'],
       		'text'      => $this->language->get('text_home'),
      		'separator' => FALSE
   		);

   		$this->document->breadcrumbs[] = array(
       		'href'      => HTTPS_SERVER . 'index.php?route=extension/module&token=' . $this->session->data['token'],
       		'text'      => $this->language->get('text_module'),
      		'separator' => ' :: '
   		);
		
   		$this->document->breadcrumbs[] = array(
       		'href'      => HTTPS_SERVER . 'index.php?route=module/yaslider&token=' . $this->session->data['token'],
       		'text'      => $this->language->get('heading_title'),
      		'separator' => ' :: '
   		);
		
		$this->data['action'] = HTTPS_SERVER . 'index.php?route=module/yaslider&token=' . $this->session->data['token'];
		
		$this->data['cancel'] = HTTPS_SERVER . 'index.php?route=extension/module&token=' . $this->session->data['token'];

		$this->data['token'] = $this->session->data['token'];
		
		if (isset($this->request->post['yaslider_limit'])) {
			$this->data['yaslider_limit'] = $this->request->post['yaslider_limit'];
		} else {
			$this->data['yaslider_limit'] = $this->config->get('yaslider_limit');
		}	

		if (isset($this->request->post['slider_timeout'])) {
			$this->data['slider_timeout'] = $this->request->post['slider_timeout'];
		} else {
			$this->data['slider_timeout'] = $this->config->get('slider_timeout');
		}
		
		// FX
		$this->data['yaslider_fxs'] = array();
		
		$this->data['yaslider_fxs'][] = array(
			'yaslider_fx' => 'scrollVert',
			'title'    => $this->language->get('slider_fx_vert'),
		);
		
		$this->data['yaslider_fxs'][] = array(
			'yaslider_fx' => 'scrollHorz',
			'title'    => $this->language->get('slider_fx_horz'),
		);

		$this->data['yaslider_fxs'][] = array(
			'yaslider_fx' => 'fade',
			'title'    => $this->language->get('slider_fx_fade'),
		);
		
		if (isset($this->request->post['yaslider_fx_info'])) {
			$this->data['yaslider_fx_info'] = $this->request->post['yaslider_fx_info'];
		} else {
			$this->data['yaslider_fx_info'] = $this->config->get('yaslider_fx_info');
		}

		//Styles
		$this->data['yaslider_styles'] = array();
		
		$this->data['yaslider_styles'][] = array(
			'yaslider_style' => 'default',
			'title'    => $this->language->get('slider_style_default'),
		);
		
		$this->data['yaslider_styles'][] = array(
			'yaslider_style' => 'blue',
			'title'    => $this->language->get('slider_style_blue'),
		);

		$this->data['yaslider_styles'][] = array(
			'yaslider_style' => 'green',
			'title'    => $this->language->get('slider_style_green'),
		);

		$this->data['yaslider_styles'][] = array(
			'yaslider_style' => 'red',
			'title'    => $this->language->get('slider_style_red'),
		);
		
		if (isset($this->request->post['yaslider_style_info'])) {
			$this->data['yaslider_style_info'] = $this->request->post['yaslider_style_info'];
		} else {
			$this->data['yaslider_style_info'] = $this->config->get('yaslider_style_info');
		}
		
		//Random Slides
		$this->data['yaslider_randomize'] = array();
		
		$this->data['yaslider_randomize'][] = array(
			'yaslider_random' => '0',
			'title'    => $this->language->get('slider_random_no'),
		);
		
		$this->data['yaslider_randomize'][] = array(
			'yaslider_random' => 'true',
			'title'    => $this->language->get('slider_random_yes'),
		);
		
		if (isset($this->request->post['yaslider_randomize_info'])) {
			$this->data['yaslider_randomize_info'] = $this->request->post['yaslider_randomize_info'];
		} else {
			$this->data['yaslider_randomize_info'] = $this->config->get('yaslider_randomize_info');
		}		

		$this->data['positions'] = array();
		
		$this->data['positions'][] = array(
			'position' => 'home',
			'title'    => $this->language->get('text_home'),
		);
		$this->data['positions'][] = array(
			'position' => 'left',
			'title'    => $this->language->get('text_left'),
		);
		
		$this->data['positions'][] = array(
			'position' => 'right',
			'title'    => $this->language->get('text_right'),
		);
		
		if (isset($this->request->post['yaslider_position'])) {
			$this->data['yaslider_position'] = $this->request->post['yaslider_position'];
		} else {
			$this->data['yaslider_position'] = $this->config->get('yaslider_position');
		}
		
		if (isset($this->request->post['yaslider_status'])) {
			$this->data['yaslider_status'] = $this->request->post['yaslider_status'];
		} else {
			$this->data['yaslider_status'] = $this->config->get('yaslider_status');
		}
		
		if (isset($this->request->post['yaslider_sort_order'])) {
			$this->data['yaslider_sort_order'] = $this->request->post['yaslider_sort_order'];
		} else {
			$this->data['yaslider_sort_order'] = $this->config->get('yaslider_sort_order');
		}				
		
		$this->load->model('catalog/category');
				
		$this->data['categories'] = $this->model_catalog_category->getCategories(0);
		
		$this->load->model('catalog/product');


				
		if (isset($this->request->post['product_yaslider'])) {
      		$this->data['product_yaslider'] = $this->request->post['product_yaslider'];
    	} else {
      		$this->data['product_yaslider'] = $this->getYaSliderProducts();
		}
			
		$this->template = 'module/yaslider.tpl';
		$this->children = array(
			'common/header',	
			'common/footer'	
		);
		
		$this->response->setOutput($this->render(TRUE), $this->config->get('config_compression'));
	}
	
	private function validate() {
		if (!$this->user->hasPermission('modify', 'module/yaslider')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}
		
		if (!$this->error) {
			return TRUE;
		} else {
			return FALSE;
		}	
	}
	
	public function category() {
		$this->load->model('catalog/product');
		
		if (isset($this->request->get['category_id'])) {
			$category_id = $this->request->get['category_id'];
		} else {
			$category_id = 0;
		}
		
		$product_data = array();
		
		$results = $this->model_catalog_product->getProductsByCategoryId($category_id);
		
		foreach ($results as $result) {
			$product_data[] = array(
				'product_id' => $result['product_id'],
				'name'       => $result['name'],
				'model'      => $result['model']
			);
		}
		
		$this->load->library('json');
		
		$this->response->setOutput(Json::encode($product_data));
	}
	
	public function yaslider() {
		$this->load->model('catalog/product');
		
		if (isset($this->request->post['product_yaslider'])) {
			$products = $this->request->post['product_yaslider'];
		} else {
			$products = array();
		}
	
		$product_data = array();
		
		foreach ($products as $product_id) {
			$product_info = $this->model_catalog_product->getProduct($product_id);
			
			if ($product_info) {
				$product_data[] = array(
					'product_id' => $product_info['product_id'],
					'name'       => $product_info['name'],
					'model'      => $product_info['model']
				);
			}
		}
		
		$this->load->library('json');
		
		$this->response->setOutput(Json::encode($product_data));
	}
}
?>