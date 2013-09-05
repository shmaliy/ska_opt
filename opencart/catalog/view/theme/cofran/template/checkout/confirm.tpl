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
                      	<div class="col-right sidebar"><div class="block block-progress">
						  <div class="block-title">
							<h2>Your Checkout Progress</h2>
						  </div>
						  <div class="block-content">
							<dl>
                            <?php if ($shipping_address) { ?>
							  <dt class="complete"><?php echo $text_shipping_address; ?></dt>
                              	<dd class="complete"><address><?php echo $shipping_address; ?></address><br />
								<b><a href="<?php echo str_replace('&', '&amp;', $checkout_shipping_address); ?>"><?php echo $text_change; ?></a></b></dd>
                              <?php } if ($shipping_method) { ?>
                              <dt class="complete"><?php echo $text_shipping_method; ?></dt>
                                <dd class="complete"><address><?php echo $shipping_method; ?></address><br />
                                <b><a href="<?php echo str_replace('&', '&amp;', $checkout_shipping); ?>"><?php echo $text_change; ?></a></b></dd>
                              <?php } ?>
							  <dt class="complete"><?php echo $text_payment_address; ?></dt>
                              	<dd class="complete"><address><?php echo $payment_address; ?></address><br />
								<b><a href="<?php echo str_replace('&', '&amp;', $checkout_payment_address); ?>"><?php echo $text_change; ?></a></b></dd>
                              <dt class="complete"><?php echo $text_payment_method; ?></dt>
                              <dd class="complete" style="border-bottom:1px solid #B6B6B6;"><address><?php echo $payment_method; ?></address><br />
                              <b><a href="<?php echo str_replace('&', '&amp;', $checkout_payment); ?>"><?php echo $text_change; ?></a></b></dd>
						  </div>
						</div>
					  </div>
						<div class="col-main">
						  <div class="cart">
							<div class="border-cart">
							  <div class="page-title title-buttons">
								<h2><?php echo $heading_title; ?>&nbsp;-&nbsp;<?php echo $text_payment_method; ?></h2>
							  </div>

    <?php if ($error_warning) { ?>
    <ul class="messages">
      <li class="error-msg">
        <ul>
          <li><?php echo $error_warning; ?></li>
        </ul>
      </li>
    </ul>
    <?php } ?>
    <?php if ($success) { ?>
    <ul class="messages">
      <li class="success-msg">
        <ul>
		  <li><?php echo $success; ?></li>
        </ul>
      </li>
    </ul>
    <?php } ?>
                                  <table class="data-table cart-table">
                                    <tr>
                                      <th rowspan="1"><?php echo $column_product; ?>&nbsp;(<?php echo $column_model; ?>)</th>
                                      <th colspan="1" class="a-center"><?php echo $column_quantity; ?></th>
                                      <th class="a-center" rowspan="1"><?php echo $column_price; ?></th>
                                      <th colspan="1" class="a-center"><?php echo $column_total; ?></th>
                                    </tr>
                                    <?php foreach ($products as $product) { ?>
                                    <tr>
                                      <td class="a-left" valign="top">
                                        <h3 class="product-name"><a href="<?php echo str_replace('&', '&amp;', $product['href']); ?>"><?php echo $product['name']; ?>
                                          <span style="color: #333; font-weight: normal;">(<?php echo $product['model']; ?>)</span>
                                        </h3>
                                          <dl class="item-options">
                                            <?php foreach ($product['option'] as $option) { ?>
                                            <dt><?php echo $option['name']; ?></dt>
                                            <dd><?php echo $option['value']; ?></dd>
                                            <?php } ?>
                                          </dl>
                                      </td>
                                      <td class="a-center" valign="top"><?php echo $product['quantity']; ?></td>
                                      <td class="a-right" valign="top"><span class="price"><?php echo $product['price']; ?></span></td>
                                      <td class="a-right" valign="top"><span class="price"><?php echo $product['total']; ?></span></td>
                                    </tr>
                                    <?php } ?>
								  </table>
							<?php if ($coupon_status) { ?>
                              <div class="discount">
                                <h3><?php echo $entry_coupon; ?></h3>
                                <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="coupon">
                                  <fieldset>
                                  <label for="coupon"><?php echo $text_coupon; ?></label>
                                  <input type="text" name="coupon" value="<?php echo $coupon; ?>" id="coupon" class="input-text" />
                                  <button value="<?php echo $button_coupon; ?>" type="button" onclick="$('#coupon').submit();" class="button"><span><span><span><?php echo $button_coupon; ?></span></span></span></button>
                                  </fieldset>
                                </form>
                              </div>
                            <?php } ?>
							  <div class="totals" style="width:285px;">
								<table>
								  <tr>
                                  <?php foreach ($totals as $total) { ?>
									<th class="a-right" style="" colspan="1">
        							  <?php echo $total['title']; ?>
                                    </th>
									<td class="a-right" style="">
									<span class="price"><?php echo $total['text']; ?></span>
									</td>
								  </tr>
								  <?php } ?>
								</table>
			                  </div>
                              <div class="clear-block"></div>
                          <?php if ($comment) { ?>
                          <div class="comment" style="padding:5px; border: 1px solid #999;">
                            <?php echo $comment; ?>
                          </div>
                          <?php } ?>
                          <div id="payment"><?php echo $payment; ?></div>


            </div>
        </div>
    </div>
    <div class="clear-block"></div>
</div>
<?php echo $footer; ?> 