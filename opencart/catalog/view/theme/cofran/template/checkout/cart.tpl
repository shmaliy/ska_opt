<?php echo $header; ?>
<!-- Contenido central -->
<div class="main col1-layout">
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
						<div class="col-main">
						  <div class="cart">
							<div class="border-cart">
							  <div class="page-title title-buttons">
								<h2><?php echo $heading_title; ?></h2>
							  </div>
							  <?php if ($error_warning) { ?>
								<ul class="messages">
                                  <li class="notice-msg">
                                    <ul>
                                      <li><?php echo $error_warning; ?></li>
                                    </ul>
                                  </li>
                                </ul>
							  <?php } ?>
                              <form action="<?php echo str_replace('&', '&amp;', $action); ?>" method="post" enctype="multipart/form-data" id="cart">
                                <fieldset>
                                  <table class="data-table cart-table">
                                    <tr>
                                      <th class="a-center" rowspan="1"><?php echo $column_remove; ?></th>
                                      <th rowspan="1"><?php echo $column_image; ?></th>
                                      <th rowspan="1"><?php echo $column_name; ?>&nbsp;(<?php echo $column_model; ?>)</th>
                                      <th colspan="1" class="a-center"><?php echo $column_quantity; ?></th>
                                      <th class="a-center" rowspan="1"><?php echo $column_price; ?></th>
                                      <th colspan="1" class="a-center"><?php echo $column_total; ?></th>
                                    </tr>
                                    <?php foreach ($products as $product) { ?>
                                    <tr>
                                      <td class="a-center" valign="middle"><input type="checkbox" name="remove[<?php echo $product['key']; ?>]" /></td>
                                      <td class="a-center"><a href="<?php echo str_replace('&', '&amp;', $product['href']); ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" /></a></td>
                                      <td class="a-left" valign="top">
                                        <h3 class="product-name"><a href="<?php echo str_replace('&', '&amp;', $product['href']); ?>"><?php echo $product['name']; ?></a>
                                          <?php if (!$product['stock']) { ?>
                                            <span style="color: #FF0000; font-weight: bold;">***</span>
                                          <?php } ?>
                                          <span style="color: #333; font-weight: normal;">(<?php echo $product['model']; ?>)</span>
                                        </h3>
                                          <dl class="item-options">
                                            <?php foreach ($product['option'] as $option) { ?>
                                            <dt><?php echo $option['name']; ?></dt>
                                            <dd><?php echo $option['value']; ?></dd>
                                            <?php } ?>
                                          </dl>
                                      </td>
                                      <td class="a-center" valign="top"><input type="text" name="quantity[<?php echo $product['key']; ?>]" value="<?php echo $product['quantity']; ?>" size="3" /></td>
                                      <td class="a-right" valign="top"><span class="price"><?php echo $product['price']; ?></span></td>
                                      <td class="a-right" valign="top"><span class="price"><?php echo $product['total']; ?></span></td>
                                    </tr>
                                    <?php } ?>
									<tr>
									  <td class="a-right cart-buttons" colspan="50">
                                        <button onclick="$('#cart').submit();" class="button button-left"><span><span><span><?php echo $button_update; ?></span></span></span></button>
                                        <button onclick="location = '<?php echo str_replace('&', '&amp;', $continue); ?>'" class="button" type="button"><span><span><span><?php echo $button_shopping; ?></span></span></span></button>
									  </td>
									</tr>
								  </table>
								</fieldset>
							  </form>
							  <div class="totals">
								<table id="shopping-cart-totals-table">
								  <tr>
									<th class="a-right" style="" colspan="1">
        							  <?php echo $text_sub_total; ?>
                                    </th>
									<td class="a-right" style="">
									<span class="price"><?php echo $sub_total; ?></span>
									</td>
								  </tr>
								  <?php if ($weight) { ?>
								  <tr>
									<th class="a-right" style="" colspan="1">
        							  <?php echo $text_weight; ?>
                                    </th>
									<td class="a-right" style="">
									<span class="price"><?php echo $weight; ?></span>
									</td>
								  </tr>
								  <?php } ?>
								</table>
							<ul class="checkout-types">
							  <li>
								<button onclick="location = '<?php echo str_replace('&', '&amp;', $checkout); ?>'" class="button" type="button"><span><span><span><?php echo $button_checkout; ?></span></span></span></button>
                              </li>
							</ul>
                    </div>
            <div class="clear-block"></div>
            </div>
        </div>
    </div>
    <div class="clear-block"></div>
</div>
<?php echo $footer; ?> 