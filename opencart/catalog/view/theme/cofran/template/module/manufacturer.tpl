<div class="block block-manufacturer">
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
  <div class="block-content">
    <select onchange="location=this.value">
      <option value=""><?php echo $text_select; ?></option>
      <?php foreach ($manufacturers as $manufacturer) { ?>
      <?php if ($manufacturer['manufacturer_id'] == $manufacturer_id) { ?>
      <option value="<?php echo $manufacturer['href']; ?>" selected="selected"><?php echo $manufacturer['name']; ?></option>
      <?php } else { ?>
      <option value="<?php echo $manufacturer['href']; ?>"><?php echo $manufacturer['name']; ?></option>
      <?php } ?>
      <?php } ?>
    </select>
  </div>
</div>