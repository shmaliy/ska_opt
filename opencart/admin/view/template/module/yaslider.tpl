<?php echo $header; ?>
<?php if ($error_warning) { ?>
<div class="warning"><?php echo $error_warning; ?></div>
<?php } ?>
<div class="box">
  <div class="left"></div>
  <div class="right"></div>
  <div class="heading">
    <h1 style="background-image: url('view/image/yaSlider_ico.png');"><?php echo $heading_title; ?></h1>
    <div class="buttons"><a onclick="$('#form').submit();" class="button"><span><?php echo $button_save; ?></span></a><a onclick="location = '<?php echo $cancel; ?>';" class="button"><span><?php echo $button_cancel; ?></span></a></div>
  </div>
  <div class="content">
    <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
      <table class="form">
        <tr style="background: #f2f2f2;">
          <td><strong><?php echo $text_yaslider_main_settings; ?></strong></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td><?php echo $entry_limit; ?></td>
          <td><input type="text" name="yaslider_limit" value="<?php echo $yaslider_limit; ?>" size="2" /></td>
        </tr>
        <tr>
          <td><?php echo $entry_position; ?></td>
          <td><select name="yaslider_position">
              <?php foreach ($positions as $position) { ?>
              <?php if ($yaslider_position == $position['position']) { ?>
              <option value="<?php echo $position['position']; ?>" selected="selected"><?php echo $position['title']; ?></option>
              <?php } else { ?>
              <option value="<?php echo $position['position']; ?>"><?php echo $position['title']; ?></option>
              <?php } ?>
              <?php } ?>
            </select></td>
        </tr>
        <tr>
          <td><?php echo $entry_status; ?></td>
          <td><select name="yaslider_status">
              <?php if ($yaslider_status) { ?>
              <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
              <option value="0"><?php echo $text_disabled; ?></option>
              <?php } else { ?>
              <option value="1"><?php echo $text_enabled; ?></option>
              <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
              <?php } ?>
            </select></td>
        </tr>
        <tr>
          <td><?php echo $entry_sort_order; ?></td>
          <td><input type="text" name="yaslider_sort_order" value="<?php echo $yaslider_sort_order; ?>" size="2" /></td>
        </tr>
		<tr>
      	  <td><?php echo $entry_product; ?></td>
          <td>
            <table>
              <tr>
                <td style="padding: 0;" colspan="3"><select id="category" style="margin-bottom: 5px;" onchange="getProducts();">
                  <?php foreach ($categories as $category) { ?>
                  <option value="<?php echo $category['category_id']; ?>"><?php echo $category['name']; ?></option>
                  <?php } ?>
                </select></td>
              </tr>
              <tr>
                <td style="padding: 0;"><select multiple="multiple" id="product" size="10" style="width: 350px;">
                  </select></td>
                  <td style="vertical-align: middle;"><input type="button" value="--&gt;" onclick="addYaSlider();" />
                  <br />
                  <input type="button" value="&lt;--" onclick="removeYaSlider();" /></td>
                  <td style="padding: 0;"><select multiple="multiple" id="yaslider" size="10" style="width: 350px;">
                </select></td>
              </tr>
            </table>
            <div id="product_yaslider">
              <?php foreach ($product_yaslider as $yaslider_id) { ?>
              <input type="hidden" name="product_yaslider[]" value="<?php echo $yaslider_id; ?>" />
              <?php } ?>
            </div>
          </td>
        </tr>
        <tr style="background: #f2f2f2;">
          <td><strong><?php echo $text_yaslider_settings; ?></strong></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td><?php echo $entry_timeout; ?><br/><span class="help"><?php echo $entry_timeout_desc; ?></span></td>
          <td><input type="text" name="slider_timeout" value="<?php echo $slider_timeout; ?>" size="10" /></td>
        </tr>
        <tr>
          <td><?php echo $slider_fx; ?></td>
          <td><select name="yaslider_fx_info">
              <?php foreach ($yaslider_fxs as $yaslider_fx) { ?>
              <?php if ($yaslider_fx_info == $yaslider_fx['yaslider_fx']) { ?>
              <option value="<?php echo $yaslider_fx['yaslider_fx']; ?>" selected="selected"><?php echo $yaslider_fx['title']; ?></option>
              <?php } else { ?>
              <option value="<?php echo $yaslider_fx['yaslider_fx']; ?>"><?php echo $yaslider_fx['title']; ?></option>
              <?php } ?>
              <?php } ?>
            </select></td>
        </tr>
        <tr>
          <td><?php echo $slider_random; ?></td>
          <td><select name="yaslider_randomize_info">
              <?php foreach ($yaslider_randomize as $yaslider_random) { ?>
              <?php if ($yaslider_randomize_info == $yaslider_random['yaslider_random']) { ?>
              <option value="<?php echo $yaslider_random['yaslider_random']; ?>" selected="selected"><?php echo $yaslider_random['title']; ?></option>
              <?php } else { ?>
              <option value="<?php echo $yaslider_random['yaslider_random']; ?>"><?php echo $yaslider_random['title']; ?></option>
              <?php } ?>
              <?php } ?>
            </select></td>
        </tr>
	    <tr>
          <td><?php echo $slider_style; ?></td>
          <td><select name="yaslider_style_info">
              <?php foreach ($yaslider_styles as $yaslider_style) { ?>
              <?php if ($yaslider_style_info == $yaslider_style['yaslider_style']) { ?>
              <option value="<?php echo $yaslider_style['yaslider_style']; ?>" selected="selected"><?php echo $yaslider_style['title']; ?></option>
              <?php } else { ?>
              <option value="<?php echo $yaslider_style['yaslider_style']; ?>"><?php echo $yaslider_style['title']; ?></option>
              <?php } ?>
              <?php } ?>
            </select></td>
        </tr>
      </table>
    </form>
  </div>
</div>
<script type="text/javascript"><!--
function addYaSlider() {
	$('#product :selected').each(function() {
		$(this).remove();
		
		$('#yaslider option[value=\'' + $(this).attr('value') + '\']').remove();
		
		$('#yaslider').append('<option value="' + $(this).attr('value') + '">' + $(this).text() + '</option>');
		
		$('#product_yaslider input[value=\'' + $(this).attr('value') + '\']').remove();
		
		$('#product_yaslider').append('<input type="hidden" name="product_yaslider[]" value="' + $(this).attr('value') + '" />');
	});
}

function removeYaSlider() {
	$('#yaslider :selected').each(function() {
		$(this).remove();
		
		$('#product_yaslider input[value=\'' + $(this).attr('value') + '\']').remove();
	});
}

function getProducts() {
	$('#product option').remove();
	
	$.ajax({
		url: 'index.php?route=module/yaslider/category&token=<?php echo $token; ?>&category_id=' + $('#category').attr('value'),
		dataType: 'json',
		success: function(data) {
			for (i = 0; i < data.length; i++) {
	 			$('#product').append('<option value="' + data[i]['product_id'] + '">' + data[i]['name'] + ' (' + data[i]['model'] + ') </option>');
			}
		}
	});
}

function getYaSlider() {
	$('#yaslider option').remove();
	
	$.ajax({
		url: 'index.php?route=module/yaslider/yaslider&token=<?php echo $token; ?>',
		type: 'POST',
		dataType: 'json',
		data: $('#product_yaslider input'),
		success: function(data) {
			$('#product_yaslider input').remove();
			
			for (i = 0; i < data.length; i++) {
	 			$('#yaslider').append('<option value="' + data[i]['product_id'] + '">' + data[i]['name'] + ' (' + data[i]['model'] + ') </option>');
				
				$('#product_yaslider').append('<input type="hidden" name="product_yaslider[]" value="' + data[i]['product_id'] + '" />');
			} 
		}
	});
}

getProducts();
getYaSlider();
//--></script>
<?php echo $footer; ?>