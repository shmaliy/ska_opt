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
                            <div class="category-title">
                              <h2><?php echo $heading_title; ?></h2>
                            </div>
                            <div style="background: #F7F7F7; border: 1px solid #DDDDDD; padding: 10px; margin-bottom: 10px;">
                              <table width="536">
                                <tr>
                                  <td width="33.3%" valign="top">
                                  	<?php if ($invoice_id) { ?>
                                    <b><?php echo $text_invoice_id; ?></b><br />
                                    <?php echo $invoice_id; ?><br />
                                    <br />
                                    <?php } ?>
                                    <b><?php echo $text_order_id; ?></b><br />
                                    #<?php echo $order_id; ?><br />
                                    <br />
                                    <b><?php echo $text_email; ?></b><br />
                                    <?php echo $email; ?><br />
                                    <br />
                                    <b><?php echo $text_telephone; ?></b><br />
                                    <?php echo $telephone; ?><br />
                                    <br />
                                    <?php if ($fax) { ?>
                                    <b><?php echo $text_fax; ?></b><br />
                                    <?php echo $fax; ?><br />
                                    <br />
                                    <?php } ?>
                                    <?php if ($shipping_method) { ?>
                                    <b><?php echo $text_shipping_method; ?></b><br />
                                    <?php echo $shipping_method; ?><br />
                                    <br />
                                    <?php } ?>
                                    <b><?php echo $text_payment_method; ?></b><br />
                                    <?php echo $payment_method; ?>
                                  </td>
                                  <td width="33.3%" valign="top"><?php if ($shipping_address) { ?>
                                    <b><?php echo $text_shipping_address; ?></b><br />
                                    <?php echo $shipping_address; ?><br />
                                    <?php } ?></td>
                                  <td width="33.3%" valign="top"><b><?php echo $text_payment_address; ?></b><br />
                                    <?php echo $payment_address; ?><br /></td>
                                </tr>
                              </table>
                            </div>
                            <div style="background: #F7F7F7; border: 1px solid #DDDDDD; padding: 10px; margin-bottom: 10px;">
                              <table width="536">
                                <tr>
                                  <th align="left"><?php echo $text_product; ?></th>
                                  <th align="left"><?php echo $text_model; ?></th>
                                  <th align="right"><?php echo $text_quantity; ?></th>
                                  <th align="right"><?php echo $text_price; ?></th>
                                  <th align="right"><?php echo $text_total; ?></th>
                                </tr>
                                <?php foreach ($products as $product) { ?>
                                <tr>
                                  <td align="left" valign="top"><?php echo $product['name']; ?>
                                    <?php foreach ($product['option'] as $option) { ?>
                                    <br />
                                    &nbsp;<small> - <?php echo $option['name']; ?> <?php echo $option['value']; ?></small>
                                    <?php } ?></td>
                                  <td align="left" valign="top"><?php echo $product['model']; ?></td>
                                  <td align="right" valign="top"><?php echo $product['quantity']; ?></td>
                                  <td align="right" valign="top"><?php echo $product['price']; ?></td>
                                  <td align="right" valign="top"><?php echo $product['total']; ?></td>
                                </tr>
                                <?php } ?>
                              </table>
                              <br />
                              <div style="width: 100%; display: inline-block;">
                                <table style="float: right; display: inline-block;">
                                  <?php foreach ($totals as $total) { ?>
                                  <tr>
                                    <td align="right"><?php echo $total['title']; ?></td>
                                    <td align="right"><?php echo $total['text']; ?></td>
                                  </tr>
                                  <?php } ?>
                                </table>
                              </div>
                            </div>
                            <?php if ($comment) { ?>
                            <b style="margin-bottom: 2px; display: block;"><?php echo $text_comment; ?></b>
                            <div style="background: #F7F7F7; border: 1px solid #DDDDDD; padding: 10px; margin-bottom: 10px;"><?php echo $comment; ?></div>
                            <?php } ?>
                            <b style="margin-bottom: 2px; display: block;"><?php echo $text_order_history; ?></b>
                            <div style="background: #F7F7F7; border: 1px solid #DDDDDD; padding: 10px; margin-bottom: 10px;">
                              <table width="536">
                                <tr>
                                  <th align="left"><?php echo $column_date_added; ?></th>
                                  <th align="left"><?php echo $column_status; ?></th>
                                  <th align="left"><?php echo $column_comment; ?></th>
                                </tr>
                                <?php foreach ($historys as $history) { ?>
                                <tr>
                                  <td valign="top"><?php echo $history['date_added']; ?></td>
                                  <td valign="top"><?php echo $history['status']; ?></td>
                                  <td valign="top"><?php echo $history['comment']; ?></td>
                                </tr>
                                <?php } ?>
                              </table>
                            </div>
                            <div class="buttons">
                              <table>
                                <tr>
                                  <td align="a-right"><button onclick="location='<?php echo $continue; ?>'" class="button"><span><span><span><?php echo $button_continue; ?></span></span></span></td>
                                </tr>
                              </table>
                            </div>

                        </div>
						<div class="clear-block"></div>
                      </div>
<?php echo $footer; ?>












<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content">
  <div class="top">
    <div class="left"></div>
    <div class="right"></div>
    <div class="center">
      <h1><?php echo $heading_title; ?></h1>
    </div>
  </div>
  <div class="middle">
    <div style="background: #F7F7F7; border: 1px solid #DDDDDD; padding: 10px; margin-bottom: 10px;">
      <table width="536">
        <tr>
          <td width="33.3%" valign="top"><b><?php echo $text_order; ?></b><br />
            #<?php echo $order_id; ?><br />
            <br />
            <b><?php echo $text_email; ?></b><br />
            <?php echo $email; ?><br />
            <br />
            <b><?php echo $text_telephone; ?></b><br />
            <?php echo $telephone; ?><br />
            <br />
            <?php if ($fax) { ?>
            <b><?php echo $text_fax; ?></b><br />
            <?php echo $fax; ?><br />
            <br />
            <?php } ?>
            <?php if ($shipping_method) { ?>
            <b><?php echo $text_shipping_method; ?></b><br />
            <?php echo $shipping_method; ?><br />
            <br />
            <?php } ?>
            <b><?php echo $text_payment_method; ?></b><br />
            <?php echo $payment_method; ?></td>
          <td width="33.3%" valign="top"><?php if ($shipping_address) { ?>
            <b><?php echo $text_shipping_address; ?></b><br />
            <?php echo $shipping_address; ?><br />
            <?php } ?></td>
          <td width="33.3%" valign="top"><b><?php echo $text_payment_address; ?></b><br />
            <?php echo $payment_address; ?><br /></td>
        </tr>
      </table>
    </div>
    <div style="background: #F7F7F7; border: 1px solid #DDDDDD; padding: 10px; margin-bottom: 10px;">
      <table width="536">
        <tr>
          <th align="left"><?php echo $text_product; ?></th>
          <th align="left"><?php echo $text_model; ?></th>
          <th align="right"><?php echo $text_quantity; ?></th>
          <th align="right"><?php echo $text_price; ?></th>
          <th align="right"><?php echo $text_total; ?></th>
        </tr>
        <?php foreach ($products as $product) { ?>
        <tr>
          <td align="left" valign="top"><?php echo $product['name']; ?>
            <?php foreach ($product['option'] as $option) { ?>
            <br />
            &nbsp;<small> - <?php echo $option['name']; ?> <?php echo $option['value']; ?></small>
            <?php } ?></td>
          <td align="left" valign="top"><?php echo $product['model']; ?></td>
          <td align="right" valign="top"><?php echo $product['quantity']; ?></td>
          <td align="right" valign="top"><?php echo $product['price']; ?></td>
          <td align="right" valign="top"><?php echo $product['total']; ?></td>
        </tr>
        <?php } ?>
      </table>
      <br />
      <div style="width: 100%; display: inline-block;">
        <table style="float: right; display: inline-block;">
          <?php foreach ($totals as $total) { ?>
          <tr>
            <td align="right"><?php echo $total['title']; ?></td>
            <td align="right"><?php echo $total['text']; ?></td>
          </tr>
          <?php } ?>
        </table>
      </div>
    </div>
    <?php if ($comment) { ?>
    <b style="margin-bottom: 2px; display: block;"><?php echo $text_comment; ?></b>
    <div style="background: #F7F7F7; border: 1px solid #DDDDDD; padding: 10px; margin-bottom: 10px;"><?php echo $comment; ?></div>
    <?php } ?>
    <b style="margin-bottom: 2px; display: block;"><?php echo $text_order_history; ?></b>
    <div style="background: #F7F7F7; border: 1px solid #DDDDDD; padding: 10px; margin-bottom: 10px;">
      <table width="536">
        <tr>
          <th align="left"><?php echo $column_date_added; ?></th>
          <th align="left"><?php echo $column_status; ?></th>
          <th align="left"><?php echo $column_comment; ?></th>
        </tr>
        <?php foreach ($historys as $history) { ?>
        <tr>
          <td valign="top"><?php echo $history['date_added']; ?></td>
          <td valign="top"><?php echo $history['status']; ?></td>
          <td valign="top"><?php echo $history['comment']; ?></td>
        </tr>
        <?php } ?>
      </table>
    </div>
    <div class="buttons">
      <table>
        <tr>
          <td align="right"><a onclick="location='<?php echo $continue; ?>'" class="button"><span><?php echo $button_continue; ?></span></a></td>
        </tr>
      </table>
    </div>
  </div>
  <div class="bottom">
    <div class="left"></div>
    <div class="right"></div>
    <div class="center"></div>
  </div>
</div>
<?php echo $footer; ?> 