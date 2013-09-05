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
<!-- Columna Derecha SOLAMENTE!! -->
                        <div class="col-right sidebar">
                          <?php echo $column_right; ?>
						</div>
<!-- Columna de contenido principal -->
						<div class="col-main">
                            <div class="category-title">
                              <h2><?php echo $heading_title; ?></h2>
                            </div>
    <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="address">
      <fieldset>
      <h3><?php echo $text_edit_address; ?></h3>
      	<ul class="form-list group-select">
          <li>

            <div class="customer-name">
              <div class="input-box">
                <label for="company">
                <?php echo $entry_company; ?>
                </label><br />
                <input type="text" name="company" value="<?php echo $company; ?>" class="input-text" />
              </div>
              <div class="clear-block"></div>

              <div class="input-box name-firstname">
                <label for="firstname">
                <span class="required">*</span><?php echo $entry_firstname; ?>
                </label><br />
				<input type="text" name="firstname" value="<?php echo $firstname; ?>" class="input-text" />
                <?php if ($error_firstname) { ?>
                <span class="error"><?php echo $error_firstname; ?></span>
                <?php } ?>
              </div>
              
              <div class="input-box name-lastname">
                <label for="lastname">
                <span class="required">*</span><?php echo $entry_lastname; ?>
				</label><br />
                <input type="text" name="lastname" value="<?php echo $lastname; ?>" class="input-text" />
                <?php if ($error_lastname) { ?>
                <span class="error"><?php echo $error_lastname; ?></span>
                <?php } ?>
              </div>
              
           <div class="input-box">
             <label for="address_1">
             <span class="required">*</span><?php echo $entry_address_1; ?>
             </label><br/>
             <input type="text" name="address_1" value="<?php echo $address_1; ?>" class="input-text" />
             <?php if ($error_address_1) { ?>
             <span class="error"><?php echo $error_address_1; ?></span>
             <?php } ?>
           </div>
           
           <div class="input-box">
             <label for="address_2">
             <?php echo $entry_address_2; ?>
             </label><br/>
             <input type="text" name="address_2" value="<?php echo $address_2; ?>" class="input-text" />
            </div>

           <div class="input-box">
             <label for="country">
             <span class="required">*</span><?php echo $entry_country; ?>
             </label><br/>
			  <select name="country_id" id="country_id" onchange="$('select[name=\'zone_id\']').load('index.php?route=account/create/zone&country_id=' + this.value + '&zone_id=<?php echo $zone_id; ?>');">
                <option value="FALSE"><?php echo $text_select; ?></option>
                <?php foreach ($countries as $country) { ?>
                <option value="<?php echo $country['country_id']; ?>"><?php echo $country['name']; ?></option>
                <?php } ?>
              </select>
              <?php if ($error_country) { ?>
              <span class="error"><?php echo $error_country; ?></span>
              <?php } ?>
           </div>

           <div class="input-box">
             <label for="zone">
             <span class="required">*</span><?php echo $entry_zone; ?>
             </label><br/>
			  <select name="zone_id">
              </select>
              <?php if ($error_zone) { ?>
              <span class="error"><?php echo $error_zone; ?></span>
              <?php } ?>
           </div>

           <div class="input-box">
             <label for="city">
             <span class="required">*</span><?php echo $entry_city; ?>
             </label><br/>
             <input type="text" name="city" value="<?php echo $city; ?>" class="input-text" />
             <?php if ($error_city) { ?>
             <span class="error"><?php echo $error_city; ?></span>
             <?php } ?>
           </div>
           
           <div class="input-box">
             <label for="postcode">
             <span class="required">*</span><?php echo $entry_postcode; ?>
             </label><br/>
             <input type="text" name="postcode" value="<?php echo $postcode; ?>" class="input-text" />
           </div>

              <div class="input-box" style="padding-top:10px;">
                <label for="default">
                <?php echo $entry_default; ?>
                </label>
			  <?php if ($default) { ?>
                <input type="radio" name="default" value="1" checked="checked" />
              <?php echo $text_yes; ?>
                <input type="radio" name="default" value="0" />
              <?php echo $text_no; ?>
              <?php } else { ?>
                <input type="radio" name="default" value="1" />
              <?php echo $text_yes; ?>
                <input type="radio" name="default" value="0" checked="checked" />
              <?php echo $text_no; ?>
              <?php } ?>
              </div>

		  </li>
		</ul>
	  </fieldset>
        <div class="buttons-set">
           <button onclick="location='<?php echo $back; ?>'" class="button back-link" type="button">
              <span>
                <span>
                  <span><?php echo $button_back; ?></span>
                </span>
              </span>
            </button>
            <button onclick="$('#address').submit();" class="button" type="button">
              <span>
                <span>
                  <span><?php echo $button_continue; ?></span>
                </span>
              </span>
            </button>
        </div>
      
                        </div>
						<div class="clear-block"></div>
                      </div>
<script type="text/javascript"><!--
$('select[name=\'zone_id\']').load('index.php?route=account/address/zone&country_id=<?php echo $country_id; ?>&zone_id=<?php echo $zone_id; ?>');

$('#country_id').attr('value', '<?php echo $country_id; ?>');
//--></script>
<?php echo $footer; ?> 