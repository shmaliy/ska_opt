<!-- Título del Bloque -->
<div class="block block-cart">
  <div class="block-title">
    <div class="border-top-title">
      <div class="border-bot-title">
        <div class="left-top-title">
          <div class="right-top-title">
            <div class="left-bot-title">
              <div class="right-bot-title">
                <h2><?php echo $heading_title; ?></h2>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
<!-- Contenido del Bloque -->
  <div class="block-content"  id="module_cart">
    <div class="agregar_al_carrito">
    <?php if ($products) { ?>
    <table cellpadding="2" cellspacing="0" style="width: 100%;">
      <?php foreach ($products as $product) { ?>
      <tr>
        <td valign="top" align="right" width="1"><?php echo $product['quantity']; ?>&nbsp;x&nbsp;</td>
        <td align="left" valign="top"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
          <div>
            <?php foreach ($product['option'] as $option) { ?>
            - <small style="color: #999;"><?php echo $option['name']; ?> <?php echo $option['value']; ?></small><br />
            <?php } ?>
          </div></td>
      </tr>
      <?php } ?>
    </table>
    <br />
    <div class="subtotal">
      <div class="precio" style="text-align: right;"><?php echo $text_subtotal; ?>&nbsp;<?php echo $subtotal; ?></div>
    </div>
    <?php } else { ?>
    <p class="no-items">
      <strong><?php echo $text_empty; ?></strong>
    </p>
    <?php } ?>
    </div>
  </div>



</div><!-- Fin block block-cart -->



<?php if ($ajax) { ?>
<script type="text/javascript"><!--
$(document).ready(function () {
	$('#add_to_cart').replaceWith('<a onclick="" id="add_to_cart" class="button">' + $('#add_to_cart').html() + '</a>');

	$('#add_to_cart').click(function () {
		$.ajax({
			type: 'post',
			url: 'index.php?route=module/cart/callback',
			dataType: 'html',
			data: $('#product :input'),
			success: function (html) {
				$('#module_cart .agregar_al_carrito').html(html);
				$(".agregar_al_carrito").children("div").addClass("precio").wrap("<div class='subtotal'></div>");

			},	
			complete: function () {
				var image = $('#image').offset();
				var cart  = $('#module_cart').offset();
	
				$('#image').before('<img src="' + $('#image').attr('src') + '" id="temp" style="position: absolute; top: ' + image.top + 'px; left: ' + image.left + 'px;" />');
	
				params = {
					top : cart.top + 'px',
					left : cart.left + 'px',
					opacity : 0.0,
					width : $('#module_cart').width(),  
					heigth : $('#module_cart').height()
				};		
	
				$('#temp').animate(params, 'slow', false, function () {
					$('#temp').remove();
				});		
			}			
		});			
	});			
});
//--></script>
<?php } ?>
