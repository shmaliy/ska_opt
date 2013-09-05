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
                              <dt class="complete">Shipping Address</dt>
							  <dt class="complete">Shipping Method</dt>
							  <dt class="complete"><?php echo $text_payment_address; ?></dt>
                              	<dd class="complete"><address><?php echo $address; ?></address><br />
								<small class="info"><?php echo $text_payment_to; ?></small><br />
								<b><a href="<?php echo str_replace('&', '&amp;', $change_address); ?>"><?php echo $button_change_address; ?></a></b></dd>
                              <dt>Payment Method</dt>
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
    <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="payment">
      <fieldset>
      <?php if ($payment_methods) { ?>
      <div class="content">
        <p style="padding-bottom:5px;"><?php echo $text_payment_methods; ?></p>
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
        <button onclick="$('#payment').submit();" class="button" type="button"><span><span><span><?php echo $button_continue; ?></span></span></span></button>
      </div>
      </fieldset>
    </form>



            </div>
        </div>
    </div>
    <div class="clear-block"></div>
</div>
<?php echo $footer; ?> 