<?php
class ControllerModuleYaSlider extends Controller {

	public function getYaSliderProducts($limit) {
		$product_data = $this->cache->get('product.yaslider.' . $this->config->get('config_language_id') . '.' . (int)$this->config->get('config_store_id') . '.' . $limit);

		if (!$product_data) { 
			$query = $this->db->query("SELECT *, pd.name AS name, p.image, m.name AS manufacturer, ss.name AS stock, (SELECT AVG(r.rating) FROM " . DB_PREFIX . "review r WHERE p.product_id = r.product_id GROUP BY r.product_id) AS rating FROM " . DB_PREFIX . "product_yaslider f LEFT JOIN " . DB_PREFIX . "product p ON (f.product_id=p.product_id) LEFT JOIN " . DB_PREFIX . "product_description pd ON (f.product_id = pd.product_id) LEFT JOIN " . DB_PREFIX . "product_to_store p2s ON (p.product_id = p2s.product_id) LEFT JOIN " . DB_PREFIX . "manufacturer m ON (p.manufacturer_id = m.manufacturer_id) LEFT JOIN " . DB_PREFIX . "stock_status ss ON (p.stock_status_id = ss.stock_status_id) WHERE p.status = '1' AND p.date_available <= NOW() AND pd.language_id = '" . (int)$this->config->get('config_language_id') . "' AND p2s.store_id = '" . (int)$this->config->get('config_store_id') . "' AND ss.language_id = '" . (int)$this->config->get('config_language_id') . "' LIMIT " . (int)$limit);
	
			$product_data = $query->rows;

			$this->cache->set('product.yaslider.' . $this->config->get('config_language_id') . '.' . (int)$this->config->get('config_store_id') . '.' . $limit, $product_data);
		}
		
		return $product_data;
	}


	protected function index() {
		$this->language->load('module/yaslider');

	$this->document->addStyle('catalog/view/theme/default/stylesheet/yaslider.css', $rel = 'stylesheet', $media = 'screen');
	
	$this->document->addScript('catalog/view/javascript/jquery/jquery.cycle.all.min.js');

    $this->data['heading_title'] = $this->language->get('heading_title');
	$this->data['text_buy'] = $this->language->get('text_buy');
	$this->data['text_details'] = $this->language->get('text_details');

	$this->data['timeout'] = $this->config->get('slider_timeout');
	$this->data['slider_fx'] = $this->config->get('yaslider_fx_info');
	$this->data['slider_style'] = $this->config->get('yaslider_style_info');
	$this->data['random'] = $this->config->get('yaslider_randomize_info');

		$this->load->model('catalog/product');
		$this->load->model('catalog/review');
		$this->load->model('tool/seo_url');
		$this->load->model('tool/image');

		$this->data['button_add_to_cart'] = $this->language->get('button_add_to_cart');

		$this->data['products'] = array();

		$results = $this->getYaSliderProducts($this->config->get('yaslider_limit'));

		foreach ($results as $result) {
			if ($result['image']) {
				$image = $result['image'];
			} else {
				$image = 'no_image.jpg';
			}

			if ($this->config->get('config_review')) {
				$rating = $this->model_catalog_review->getAverageRating($result['product_id']);
			} else {
				$rating = false;
			}

			$special = FALSE;

			$discount = $this->model_catalog_product->getProductDiscount($result['product_id']);

			if ($discount) {
				$price = $this->currency->format($this->tax->calculate($discount, $result['tax_class_id'], $this->config->get('config_tax')));
			} else {
				$price = $this->currency->format($this->tax->calculate($result['price'], $result['tax_class_id'], $this->config->get('config_tax')));

				$special = $this->model_catalog_product->getProductSpecial($result['product_id']);

				if ($special) {
					$special = $this->currency->format($this->tax->calculate($special, $result['tax_class_id'], $this->config->get('config_tax')));
				}
			}

			$options = $this->model_catalog_product->getProductOptions($result['product_id']);

			if ($options) {
				$add = $this->model_tool_seo_url->rewrite(HTTP_SERVER . 'index.php?route=product/product&amp;product_id=' . $result['product_id']);
			} else {
				$add = HTTPS_SERVER . 'index.php?route=checkout/cart&amp;product_id=' . $result['product_id'];
			}

			$this->data['products'][] = array(
				'product_id'    => $result['product_id'],
				'name'    		=> $result['name'],
				'model'   		=> $result['model'],
				'rating'  		=> $rating,
				'stars'   		=> sprintf($this->language->get('text_stars'), $rating),
				'price'   		=> $price,
				'options'   	=> $options,
				'special' 		=> $special,
				'image'   		=> $this->model_tool_image->resize($image, 152, 152),
				'thumb'   		=> $this->model_tool_image->resize($image, $this->config->get('config_image_product_width'), $this->config->get('config_image_product_height')),
				'href'    		=> $this->model_tool_seo_url->rewrite(HTTP_SERVER . 'index.php?route=product/product&product_id=' . $result['product_id']),
				'add'    		=> $add
			);
		}

		if (!$this->config->get('config_customer_price')) {
			$this->data['display_price'] = TRUE;
		} elseif ($this->customer->isLogged()) {
			$this->data['display_price'] = TRUE;
		} else {
			$this->data['display_price'] = FALSE;
		}

		$this->id = 'yaslider';

		if ($this->config->get('yaslider_position') == 'home') {
			$this->data['heading_title'] .= (' ' . $this->language->get('text_products'));
			if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/yaslider_home.tpl')) {
				$this->template = $this->config->get('config_template') . '/template/module/yaslider_home.tpl';
			} else {
				$this->template = 'default/template/module/yaslider_home.tpl';
			}
		} else {
			if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/yaslider.tpl')) {
				$this->template = $this->config->get('config_template') . '/template/module/yaslider.tpl';
			} else {
				$this->template = 'default/template/module/yaslider.tpl';
			}
		}

		$this->render();
	}
}
?>