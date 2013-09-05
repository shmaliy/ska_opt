<?php echo $header; ?>
<!-- Contenido central -->
<div class="main col2-right-layout">
  <div class="page">
    <div class="indent-bg-main">
      <div class="border-left">
        <div class="border-right">
          <div class="border-top">
            <div class="border-bot">
              <div class="left-top">
                <div class="right-top">
                  <div class="left-bot">
                    <div class="right-bot">
                      <div class="indent-binder">
<!-- Columna Derecha SOLAMENTE!! -->
                        <div class="col-right sidebar">
                          <?php echo $column_right; ?>
						</div>
<!-- Columna de contenido principal -->
						<div class="col-main">
						  <div class="std">
                            <div class="category-title">
                              <h2><?php echo $heading_title; ?></h2>
                            </div>
                            
                            <div class="middle"><b><?php echo $text_critea; ?></b>
                                <div id="content_search" style="border: 1px solid #DDDDDD; padding: 10px; margin-top: 3px; margin-bottom: 10px;">
                                  <table>
                                    <tr>
                                      <td><?php echo $entry_search; ?></td>
                                    </tr>
                                    <tr>
                                      <td><?php if ($keyword) { ?>
                                        <input type="text" value="<?php echo $keyword; ?>" id="keyword" class="input-text" />
                                        <?php } else { ?>
                                        <input class="input-text" type="text" value="<?php echo $text_keyword; ?>" id="keyword" onclick="this.value = '';" onkeydown="this.style.color = '000000'" style="color: #999;" />
                                        <?php } ?>
                                        <select id="category_id">
                                          <option value="0"><?php echo $text_category; ?></option>
                                          <?php foreach ($categories as $category) { ?>
                                          <?php if ($category['category_id'] == $category_id) { ?>
                                          <option value="<?php echo $category['category_id']; ?>" selected="selected"><?php echo $category['name']; ?></option>
                                          <?php } else { ?>
                                          <option value="<?php echo $category['category_id']; ?>"><?php echo $category['name']; ?></option>
                                          <?php } ?>
                                          <?php } ?>
                                        </select></td>
                                    </tr>
                                    <tr>
                                      <td colspan="2"><?php if ($description) { ?>
                                        <input type="checkbox" name="description" id="description" checked="checked" />
                                        <?php } else { ?>
                                        <input type="checkbox" name="description" id="description" />
                                        <?php } ?>
                                        <?php echo $entry_description; ?></td>
                                    </tr>
                                  </table>
                                </div>
                                
                                <div class="buttons-set">
                                  <button class="button" onclick="contentSearch();">
                                    <span>
                                      <span>
                                        <span><?php echo $button_search; ?></span>
                                      </span>
                                    </span>
                                  </button>
                                </div>
                              </div>
                                <div class="category-title">
                                  <h2><?php echo $text_search; ?></h2>
                                </div>
                                <?php if (isset($products)) { ?>
                            
                            <div class="category-products">
                              <div class="bg-toolbar">
                                <div class="pager">
                                  <?php echo $pagination; ?>
                                </div>
                                <div class="sorter">
                                  <fieldset class="sort-by">
                                    <select name="sort" onchange="location=this.value">
                                      <?php foreach ($sorts as $sorts) { ?>
                                      <?php if (($sort . '-' . $order) == $sorts['value']) { ?>
                                      <option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
                                      <?php } else { ?>
                                      <option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
                                      <?php } ?>
                                      <?php } ?>
                                    </select>
                                  </fieldset>                                
                                </div>
                              </div>
                            <table id="products-grid-table" class="products-grid">
                              <?php for ($i = 0; $i < sizeof($products); $i = $i + 3) { ?>
                              <tr class="first odd">
                                <?php for ($j = $i; $j < ($i + 3); $j++) { ?>
                                <td>
                                <?php if (isset($products[$j])) { ?>
                                  <div class="border-bot-prod">
                                    <div class="left-top-prod">
                                      <div class="right-top-prod">
                                        <div class="left-bot-prod">
                                          <div class="right-bot-prod">
                                            <div class="inside-prod">
                                              <div class="product-image-box">
                                                <a href="<?php echo $products[$j]['href']; ?>" class="product-image">
                                                  <span class="side-left-img">
                                                    <span class="side-right-img">
                                                      <span class="side-top-img">
                                                        <span class="side-bot-img">
                                                          <span class="left-top-img">
                                                            <span class="right-top-img">
                                                              <span class="left-bot-img">
                                                                <span class="right-bot-img">
                                                                  <span class="inside-img">
                                                                    <img src="<?php echo $products[$j]['thumb']; ?>" title="<?php echo $products[$j]['name']; ?>" alt="<?php echo $products[$j]['name']; ?>" />
                                                                  </span>
                                                                </span>
                                                              </span>
                                                            </span>
                                                          </span>
                                                        </span>
                                                      </span>
                                                    </span>
                                                  </span>
                                                </a>
                                              </div>
                                              <div class="indent-product">
                                                <h3 class="product-name">
                                                  <a href="<?php echo $products[$j]['href']; ?>"><?php echo $products[$j]['name']; ?></a>
                                                </h3>
                                                <span style="color: #999; font-size: 11px;"><?php echo $products[$j]['model']; ?></span>
                                                <?php if ($display_price) { ?>
                                                <div class="price-box">
                                                <?php if (!$products[$j]['special']) { ?>
                                                  <span class="regular-price">
                                                    <span class="price">
                                                      <?php echo $products[$j]['price']; ?>
                                                    </span>
                                                  </span>
                                                <?php } else { ?>
                                                  <span class="old-price">
                                                    <span class="price">
                                                      <?php echo $products[$j]['price']; ?>
                                                    </span>
                                                  </span>
                                                  <span class="special-price">
                                                    <span class="price">
                                                      <?php echo $products[$j]['special']; ?>
                                                    </span>
                                                  </span>
                                                <?php } ?>
                                                </div>
                                              <?php } ?>
                                              <?php if ($products[$j]['rating']) { ?>
                                                <img src="catalog/view/theme/cofran/image/stars_<?php echo $products[$j]['rating'] . '.png'; ?>" alt="<?php echo $products[$j]['stars']; ?>" />
                                              <?php } ?>
                                              </div>
                                            </div>
                                          </div>
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                                <?php }?>
                                </td>
                                <?php } ?>
                              </tr>
                              <?php } ?>
                            </table>
                            
                                <div class="pagination"><?php echo $pagination; ?></div>
                                <?php } else { ?>
                                <div style="border: 1px solid #DDDDDD; padding: 10px; margin-top: 3px; margin-bottom: 15px;"><?php echo $text_empty; ?></div>
                                <?php }?>
                            
                            </div>
                          </div>
                        </div>
						<div class="clear-block"/>
                      </div>
                    </div>
<script type="text/javascript"><!--
$('#content_search input').keydown(function(e) {
	if (e.keyCode == 13) {
		contentSearch();
	}
});

function contentSearch() {
	url = 'index.php?route=product/search';
	
	var keyword = $('#keyword').attr('value');
	
	if (keyword) {
		url += '&keyword=' + encodeURIComponent(keyword);
	}

	var category_id = $('#category_id').attr('value');
	
	if (category_id) {
		url += '&category_id=' + encodeURIComponent(category_id);
	}
	
	if ($('#description').attr('checked')) {
		url += '&description=1';
	}

	location = url;
}
//--></script>
<?php echo $footer; ?> 