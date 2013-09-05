<form action="<?php echo $action; ?>" method="post" id="checkout">
  <input type="hidden" name="ap_merchant" value="<?php echo $ap_merchant; ?>" />
  <input type="hidden" name="ap_amount" value="<?php echo $ap_amount; ?>" />
  <input type="hidden" name="ap_currency" value="<?php echo $ap_currency; ?>" />
  <input type="hidden" name="ap_purchasetype" value="<?php echo $ap_purchasetype; ?>" />
  <input type="hidden" name="ap_itemname" value="<?php echo $ap_itemname; ?>" />
  <input type="hidden" name="ap_itemcode" value="<?php echo $ap_itemcode; ?>" />
  <input type="hidden" name="ap_returnurl" value="<?php echo $ap_returnurl; ?>" />
  <input type="hidden" name="ap_cancelurl" value="<?php echo $ap_cancelurl; ?>" />
</form>
	  <div class="buttons-set">
        <button class="back-link button" onclick="location = '<?php echo str_replace('&', '&amp;', $back); ?>'" type="button"><span><span><span><?php echo $button_back; ?></span></span></span></button>
        <button onclick="$('#checkout').submit();" class="button" type="submit"><span><span><span><?php echo $button_confirm; ?></span></span></span></button>
      </div>