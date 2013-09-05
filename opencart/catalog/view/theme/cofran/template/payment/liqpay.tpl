<form action="<?php echo $action; ?>" method="post" id="checkout">
  <input type="hidden" name="xml" value="<?php echo $xml; ?>">
  <input type="hidden" name="signature" value="<?php echo $signature; ?>">
</form>

  <div class="buttons-set">
    <button class="back-link button" onclick="location = '<?php echo str_replace('&', '&amp;', $back); ?>'" type="button"><span><span><span><?php echo $button_back; ?></span></span></span></button>
    <button onclick="confirmSubmit();" class="button" type="button"><span><span><span><?php echo $button_confirm; ?></span></span></span></button>
  </div>

<script type="text/javascript"><!--
function confirmSubmit() {
	$.ajax({
		type: 'GET',
		url: 'index.php?route=payment/liqpay/confirm',
		success: function() {
			$('#checkout').submit();
		}
	});
}
//--></script>
