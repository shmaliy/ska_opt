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
                              <dt class="complete"><?php echo $text_shipping_address; ?></dt>
                              	<dd class="complete"><address><?php echo $address; ?></address><br />
								<small class="info"><?php echo $text_shipping_to; ?></small><br />
								<b><a href="<?php echo str_replace('&', '&amp;', $change_address); ?>"><?php echo $button_change_address; ?></a></b></dd>
							  <dt><?php echo $text_shipping_method; ?></dt>
							  <dt>Payment Address</dt>
                              <dt>Payment Method</dt>
						  </div>
						</div>
					  </div>
						<div class="col-main">
						  <div class="cart">
							<div class="border-cart">
							  <div class="page-title title-buttons">
								<h2><?php echo $heading_title; ?>&nbsp;-&nbsp;<?php echo $text_shipping_method; ?></h2>
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
    <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="shipping">
      <fieldset>
      <?php if ($shipping_methods) { ?>
      <h3></h3>
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
      <b style="margin-top: 15px; display: block;"><?php echo $text_comments; ?></b>
      <div class="comment">
        <textarea name="comment" rows="8" style="width: 99%;"><?php echo $comment; ?></textarea>
      </div>
	  <div class="buttons-set">
        <button class="back-link button" onclick="location = '<?php echo str_replace('&', '&amp;', $back); ?>'" type="button"><span><span><span><?php echo $button_back; ?></span></span></span></button>
        <button onclick="$('#shipping').submit();" class="button" type="button"><span><span><span><?php echo $button_continue; ?></span></span></span></button>
      </div>
      </fieldset>
    </form>



            </div>
        </div>
    </div>
    <div class="clear-block"></div>
</div>
<?php echo $footer; ?> 