<form action="<?php echo $action; ?>" method="post" id="checkout">
<input type="hidden" name="price" value="<?php echo $price; ?>">
<input type="hidden" name="currency" value="<?php echo $currency; ?>">
<input type="hidden" name="acc_id" value="<?php echo $acc_id; ?>">
<input type="hidden" name="item_id" value="<?php echo $item_id; ?>">
<input type="hidden" name="name" value="<?php foreach ($products as $product) { echo $product['name'].' - '; } ?>">
<input type="hidden" name="shipping_cost" value="">
<input type="hidden" name="url_succesfull" value="<?php echo $url_succesfull; ?>">
<input type="hidden" name="url_cancel" value="<?php echo $url_cancel; ?>">
<input type="hidden" name="url_process" value="">
<input type="hidden" name="enc" value="<?php echo $enc; ?>">
<input type="hidden" name="extraPar" value="">
</form>
<div class="buttons">
  <table>
    <tr>
      <td align="left"><a onclick="location = '<?php echo $back; ?>'" class="button"><span><?php echo $button_back; ?></span></a></td>
      <td align="right"><a onclick="$('#checkout').submit();" class="button"><span><?php echo $button_confirm; ?></span></a></td>
    </tr>
  </table>
</div>