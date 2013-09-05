<form action="<?php echo $action; ?>" method="post" id="checkout">
  <input type="hidden" name="instId" value="<?php echo $merchant; ?>" />
  <input type="hidden" name="cartId" value="<?php echo $order_id; ?>" />
  <input type="hidden" name="amount" value="<?php echo $amount; ?>" />
  <input type="hidden" name="currency" value="<?php echo $currency; ?>" />
  <input type="hidden" name="desc" value="<?php echo $description; ?>" />
  <input type="hidden" name="name" value="<?php echo $name; ?>" />
  <input type="hidden" name="address" value="<?php echo $address; ?>" />
  <input type="hidden" name="postcode" value="<?php echo $postcode; ?>" />
  <input type="hidden" name="country" value="<?php echo $country; ?>" />
  <input type="hidden" name="tel" value="<?php echo $telephone; ?>" />
  <input type="hidden" name="email" value="<?php echo $email; ?>" />
  <input type="hidden" name="testMode" value="<?php echo $test; ?>" />
</form>

  <div class="buttons-set">
    <button class="back-link button" onclick="location = '<?php echo str_replace('&', '&amp;', $back); ?>'" type="button"><span><span><span><?php echo $button_back; ?></span></span></span></button>
    <button onclick="$('#checkout').submit();" class="button" type="button"><span><span><span><?php echo $button_confirm; ?></span></span></span></button>
  </div>
