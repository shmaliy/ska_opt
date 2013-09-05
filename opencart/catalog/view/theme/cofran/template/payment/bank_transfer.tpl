<div style="background: #F7F7F7; border: 1px solid #DDDDDD; padding: 10px; margin-bottom: 10px;"><?php echo $text_instruction; ?><br />
  <br />
  <?php echo $bank; ?><br />
  <br />
  <?php echo $text_payment; ?></div>

  <div class="buttons-set">
    <button class="back-link button" onclick="location = '<?php echo str_replace('&', '&amp;', $back); ?>'" type="button"><span><span><span><?php echo $button_back; ?></span></span></span></button>
    <button id="checkout" class="button" type="button"><span><span><span><?php echo $button_confirm; ?></span></span></span></button>
  </div>
<script type="text/javascript"><!--
$('#checkout').click(function() {
	$.ajax({ 
		type: 'GET',
		url: 'index.php?route=payment/bank_transfer/confirm',
		success: function() {
			location = '<?php echo $continue; ?>';
		}		
	});
});
//--></script>
