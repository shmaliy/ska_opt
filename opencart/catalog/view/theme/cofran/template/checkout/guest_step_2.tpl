<?php echo $header; ?>
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
                          <div class="page-title">
                            <h2><?php echo $heading_title; ?></h2>
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
                            <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="guest">
                              <fieldset>
                              <?php if ($shipping_methods) { ?>
                              <h3><?php echo $text_shipping_method; ?></h3>
                              <div class="content">
                                <p style="padding-bottom:5px;"><?php echo $text_shipping_methods; ?></p>
                                <dl class="sp-methods">
                                  <?php foreach ($shipping_methods as $shipping_method) { ?>
                                  
                                    <dt><?php echo $shipping_method['title']; ?></dt>
                                  
                                  <?php if (!$shipping_method['error']) { ?>
                                  <?php foreach ($shipping_method['quote'] as $quote) { ?>
                                  <dd>
                                    <label for="<?php echo $quote['id']; ?>">
                                        <?php if ($quote['id'] == $shipping) { ?>
                                        <input type="radio" name="shipping_method" value="<?php echo $quote['id']; ?>" id="<?php echo $quote['id']; ?>" checked="checked" class="radio" />
                                        <?php } else { ?>
                                        <input type="radio" name="shipping_method" value="<?php echo $quote['id']; ?>" id="<?php echo $quote['id']; ?>" class="radio" />
                                        <?php } ?>
                                      </label>
                                    <label for="<?php echo $quote['id']; ?>" style="cursor: pointer;"><?php echo $quote['title']; ?></label>
                                    <label for="<?php echo $quote['id']; ?>" style="cursor: pointer; padding-left:2px; color:#000;"><b><?php echo $quote['text']; ?></b></label>
                                  </dd>
                                  <?php } ?>
                                  <?php } else { ?>
                                  <dd>
                                    <div class="error"><?php echo $shipping_method['error']; ?></div>
                                  </dd>
                                  <?php } ?>
                                  <?php } ?>
                                </dl>
                              </div>
                              <?php } ?>
                              </fieldset>

                              <fieldset>
                              <?php if ($payment_methods) { ?>
                              <div class="content">
                                <h3 style="padding-top:15px;"><?php echo $text_payment_method; ?></h3>
                                <p><?php echo $text_shipping_methods; ?></p>
                                <dl class="sp-methods">
                                  <?php foreach ($payment_methods as $payment_method) { ?>
                                    <dt><?php echo $payment_method['title']; ?></dt>
                                  <dd>
                                    <label for="<?php echo $payment_method['id']; ?>">
                                        <?php if ($payment_method['id'] == $payment) { ?>
                                        <input type="radio" name="payment_method" value="<?php echo $payment_method['id']; ?>" id="<?php echo $payment_method['id']; ?>" checked="checked" class="radio" />
                                        <?php } else { ?>
                                        <input type="radio" name="payment_method" value="<?php echo $payment_method['id']; ?>" id="<?php echo $payment_method['id']; ?>" class="radio" />
                                        <?php } ?>
                                      </label>
                                    <label for="<?php echo $payment_method['id']; ?>" style="cursor: pointer;"><?php echo $payment_method['title']; ?></label>
                                  </dd>
                                  <?php } ?>
                                  <?php } else { ?>
                                  <dd>
                                    <div class="error"><?php echo $payment_method['error']; ?></div>
                                  </dd>
                                  <?php } ?>
                                </dl>
                              </div>
                              <b style="margin-top: 15px; display: block;"><?php echo $text_comments; ?></b>
                              <div class="comment">
                                <textarea name="comment" rows="8" style="width: 99%;"><?php echo $comment; ?></textarea>
                              </div>
                              <?php if ($text_agree) { ?>
                              <div style="padding:5px;">
                                <span><?php echo $text_agree; ?></span>
                                <?php if ($agree) { ?>
                                  <input type="checkbox" name="agree" value="1" checked="checked" />
                                    <?php } else { ?>
                                  <input type="checkbox" name="agree" value="1" />
                                <?php } ?>
                              </div>
                              <?php } ?>
                        
                              <div class="buttons-set">
                                <button class="back-link button" onclick="location = '<?php echo str_replace('&', '&amp;', $back); ?>'" type="button"><span><span><span><?php echo $button_back; ?></span></span></span></button>
                                <button onclick="$('#guest').submit();" class="button" type="button"><span><span><span><?php echo $button_continue; ?></span></span></span></button>
                              </div>
                              </fieldset>
                        </div>
                      <div class="clear-block"></div>
                    </div>
<?php echo $footer; ?> 