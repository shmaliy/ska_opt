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
                            <?php foreach ($orders as $order) { ?>
                            <div style="display: inline-block; margin-bottom: 10px; width: 100%;">
                              <div style="width: 49%; float: left; margin-bottom: 2px;"><b><?php echo $text_order; ?></b> #<?php echo $order['order_id']; ?></div>
                              <div style="width: 49%; float: right; margin-bottom: 2px; text-align: right;"><b><?php echo $text_status; ?></b> <?php echo $order['status']; ?></div>
                              <div class="content" style="clear: both; border-bottom: 1px solid #8E8782;">
                                <div style="padding: 5px;">
                                  <table width="100%">
                                    <tr>
                                      <td><?php echo $text_date_added; ?> <?php echo $order['date_added']; ?></td>
                                      <td><?php echo $text_customer; ?> <?php echo $order['name']; ?></td>
                                      <td rowspan="2" style="text-align: right;"><button onclick="location='<?php echo $order['href']; ?>'" class="button"><span><span><span><?php echo $button_view; ?></span></span></span></td>
                                    </tr>
                                    <tr>
                                      <td><?php echo $text_products; ?> <?php echo $order['products']; ?></td>
                                      <td><?php echo $text_total; ?> <?php echo $order['total']; ?></td>
                                    </tr>
                                  </table>
                                </div>
                              </div>
                            </div>
                            <?php } ?>
                            <div class="pagination"><?php echo $pagination; ?></div>
                            <div class="buttons">
                              <table>
                                <tr>
                                  <td align="right"><button onclick="location='<?php echo $continue; ?>'" class="button"><span><span><span><?php echo $button_continue; ?></span></span></span></td>
                                </tr>
                              </table>
                            </div>
                        </div>
						<div class="clear-block"></div>
                      </div>
<?php echo $footer; ?>