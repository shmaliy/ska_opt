<?php echo $header; ?>
<div class="main col1-layout">
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
                        <div class="col-main">
                          <div class="page-title">
                            <h2><?php echo $heading_title; ?></h2>
                          </div>
                            <?php if ($error_warning) { ?>
                              <ul class="messages">
                                <li class="error-msg">
                                  <ul>
                                    <li><?php echo $error_warning; ?></li>
                                  </ul>
                                </li>
                              </ul>
							<?php } ?>

    <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="create">
      <p><?php echo $text_account_already; ?></p><br />
      <fieldset>
      <h3><?php echo $text_your_details; ?></h3>
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
                <label for="email">
                <span class="required">*</span><?php echo $entry_email; ?>
                </label><br />
                <input type="text" name="email" value="<?php echo $email; ?>" class="input-text" />
                <?php if ($error_email) { ?>
                <span class="error"><?php echo $error_email; ?></span>
                <?php } ?>
              </div>
              <div class="clear-block"></div>
              
              <div class="input-box">
                <label for="telephone">
                <span class="required">*</span><?php echo $entry_telephone; ?>
                </label><br />
                <input type="text" name="telephone" value="<?php echo $telephone; ?>" class="input-text" />
                <?php if ($error_telephone) { ?>
                <span class="error"><?php echo $error_telephone; ?></span>
                <?php } ?>
              </div>
              
              <div class="input-box">
                <label for="fax">
                <?php echo $entry_fax; ?>
                </label><br />
                <input type="text" name="fax" value="<?php echo $fax; ?>" class="input-text" />
              </div>
              
          </li>
        </ul>
        </fieldset>
        
        <fieldset>
        <h3><?php echo $text_your_address; ?></h3>
        <ul class="form-list group-select">
          <li>
            <div class="input-box">
             <label for="company">
             <?php echo $entry_company; ?>
             </label><br/>
             <input type="text" name="company" value="<?php echo $company; ?>" class="input-text" />
           </div>
           
           <div class="clear-block"></div>
      
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

          </li>
        </ul>
        </fieldset>
        
        <fieldset>
        <h3><?php echo $text_your_password; ?></h3>
        <ul class="form-list group-select">
          <li>

           <div class="input-box">
             <label for="password">
             <span class="required">*</span><?php echo $entry_password; ?>
             </label><br/>
             <input type="password" name="password" value="<?php echo $password; ?>" class="input-text" />
             <?php if ($error_password) { ?>
             <span class="error"><?php echo $error_password; ?></span>
             <?php } ?>
           </div>
           
           <div class="input-box">
             <label for="confirm">
             <span class="required">*</span><?php echo $entry_confirm; ?>
             </label><br/>
             <input type="password" name="confirm" value="<?php echo $confirm; ?>" class="input-text" />
             <?php if ($error_confirm) { ?>
             <span class="error"><?php echo $error_confirm; ?></span>
             <?php } ?>
           </div>

          </li>
        </ul>
        </fieldset>

        <fieldset>
        <h3><?php echo $text_newsletter; ?></h3>
        <ul class="form-list group-select">
          <li>

           <div class="input-box">
             <label for="newsletter">
             <?php echo $entry_newsletter; ?>
             </label><br/>
			  <?php if ($newsletter == 1) { ?>
              <input type="radio" name="newsletter" value="1" checked="checked" />
              <?php echo $text_yes; ?>
              <input type="radio" name="newsletter" value="0" />
              <?php echo $text_no; ?>
              <?php } else { ?>
              <input type="radio" name="newsletter" value="1" />
              <?php echo $text_yes; ?>
              <input type="radio" name="newsletter" value="0" checked="checked" />
              <?php echo $text_no; ?>
              <?php } ?>
           </div>

          </li>
        </ul>
        </fieldset>
	  <div class="buttons-set">
      <?php if ($text_agree) { ?>
        <div class="back-lnk">
          <?php echo $text_agree; ?>
			<?php if ($agree) { ?>
              <input type="checkbox" name="agree" value="1" checked="checked" />
              <?php } else { ?>
              <input type="checkbox" name="agree" value="1" />
            <?php } ?>
        </div>
        <?php } ?>
		<button onclick="$('#create').submit();" class="button" type="button">
		  <span>
			<span>
			  <span><?php echo $button_continue; ?></span>
			</span>
		  </span>
		</button>
      </div>
    </form>




                        </div>
                      <div class="clear-block"></div>
                    </div>
<script type="text/javascript"><!--
$('select[name=\'zone_id\']').load('index.php?route=account/create/zone&country_id=<?php echo $country_id; ?>&zone_id=<?php echo $zone_id; ?>');

$('#country_id').attr('value', '<?php echo $country_id; ?>');
//--></script>
<?php echo $footer; ?> 