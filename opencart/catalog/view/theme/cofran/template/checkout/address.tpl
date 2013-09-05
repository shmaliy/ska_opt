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
                              <dt class="complete">Shipping Address</dt>
							  <dt>Shipping Method</dt>
                              <dt>Payment Address</dt>
                              <dt>Payment Method</dt>
						  </div>
						</div>
					  </div>
						<div class="col-main">
						  <div class="cart">
							<div class="border-cart">
							  <div class="page-title title-buttons">
								<h2><?php echo $heading_title; ?></h2>
							  </div>


    <?php if ($addresses) { ?>
    <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="address_1">
      <h3><?php echo $text_entries; ?></h3>
      <div style="border: 1px solid #DDDDDD; padding: 10px; margin-bottom: 10px;">
        <table width="100%" cellpadding="3">
          <?php foreach ($addresses as $address) { ?>
          <?php if ($address['address_id'] == $default) { ?>
          <tr>
            <td width="20" style="padding:4px;"><input type="radio" name="address_id" value="<?php echo $address['address_id']; ?>" id="address_id[<?php echo $address['address_id']; ?>]" checked="checked" style="margin: 0px;" /></td>
            <td style="padding:4px;"><label for="address_id[<?php echo $address['address_id']; ?>]" style="cursor: pointer;"><?php echo $address['address']; ?></label></td>
          </tr>
          <?php } else { ?>
          <tr>
            <td width="20" style="padding:4px;"><input type="radio" name="address_id" value="<?php echo $address['address_id']; ?>" id="address_id[<?php echo $address['address_id']; ?>]" style="margin: 0px;" /></td>
            <td style="padding:4px;"><label for="address_id[<?php echo $address['address_id']; ?>]" style="cursor: pointer;"><?php echo $address['address']; ?></label></td>
          </tr>
          <?php } ?>
          <?php } ?>
        </table>
      </div>
      <div class="buttons">
        <table>
          <tr>
            <td align="left"><button onclick="$('#address_1').submit();" class="button" id="continuar"><span><span><span><?php echo $button_continue; ?></span></span></span></button></td>
          </tr>
        </table>
      </div>
    </form>
    <?php } ?>
    
    <div style="padding-top:10px;">
    <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="address_2">
      <fieldset>
      <h3><?php echo $text_new_address; ?></h3>
      	<ul class="form-list group-select">
          <li>
            <div class="customer-name">
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
                <label for="company">
                <?php echo $entry_company; ?>
                </label><br />
                <input type="text" name="company" value="<?php echo $company; ?>" class="input-text" />
              </div>
              <div class="clear-block"></div>
              
              <div class="input-box">
                <label for="address_1">
                <span class="required">*</span><?php echo $entry_address_1; ?>
                </label><br />
                <input type="text" name="address_1" value="<?php echo $address_1; ?>" class="input-text" />
                <?php if ($error_address_1) { ?>
                <span class="error"><?php echo $error_address_1; ?></span>
                <?php } ?>
              </div>
              
              <div class="input-box">
                <label for="address_2">
                <?php echo $entry_address_2; ?>
                </label><br />
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
               
              </li>
            </ul>
            </fieldset>
            
          <div class="buttons-set">
            <button onclick="$('#address_2').submit();" class="button">
              <span>
                <span>
                  <span><?php echo $text_new_address; ?></span>
                </span>
              </span>
            </button>
          </div>
          
        </form>
        </div>


            </div>
        </div>
    </div>
    <div class="clear-block"></div>
</div>
<script type="text/javascript"><!--
$('select[name=\'zone_id\']').load('index.php?route=checkout/address/zone&country_id=<?php echo $country_id; ?>&zone_id=<?php echo $zone_id; ?>');

$('#country_id').attr('value', '<?php echo $country_id; ?>');
//--></script>
<?php echo $footer; ?> 