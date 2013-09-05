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
                            
                            </div>
                          </div>
                        </div>
						<div class="clear-block"/>
                      </div>
                    </div>
<?php echo $footer; ?>