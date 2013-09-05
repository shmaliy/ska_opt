<?php echo $header; ?>
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
                            <div class="page-title">
                              <h2><?php echo $heading_title; ?></h2>
                            </div>
                                <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="contact">
                                    <fieldset>
                                        <div style="float: left; display: inline-block; width: 50%;"><b><?php echo $text_address; ?></b><br />
                                            <?php echo $store; ?><br />
                                            <?php echo $address; ?><br /><br /></div>
                                          <div style="float: right; display: inline-block; width: 50%;">
                                            <?php if ($telephone) { ?>
                                            <b><?php echo $text_telephone; ?></b><br />
                                            <?php echo $telephone; ?><br />
                                            <br />
                                            <?php } ?>
                                            <?php if ($fax) { ?>
                                            <b><?php echo $text_fax; ?></b><br />
                                            <?php echo $fax; ?><br />
                                            <?php } ?>
                                            <br />
                                          </div>
                                        <ul class="form-list group-select">
                                            <li>
                                                <div class="input-box">
                                                    <label for="name"><?php echo $entry_name; ?><span class="required">*</span></label><br/>
                                                    <input type="text" name="name" value="<?php echo $name; ?>" class="input-text required-entry" />
                                                      <?php if ($error_name) { ?>
                                                      <span class="error"><?php echo $error_name; ?></span>
                                                      <?php } ?>
                                                </div>
                                
                                                <div class="input-box">
                                                    <label for="email"><?php echo $entry_email; ?><span class="required">*</span></label><br/>
                                                    <input type="text" name="email" value="<?php echo $email; ?>" class="input-text required-entry validate-email" />
                                                      <?php if ($error_email) { ?>
                                                      <span class="error"><?php echo $error_email; ?></span>
                                                      <?php } ?>
                                                </div>
                                            </li>
                                            <li>
                                                <label for="comment"><?php echo $entry_enquiry; ?><span class="required">*</span></label><br/>
                                                <textarea name="enquiry" style="width: 99%;" rows="10" class="required-entry input-text"><?php echo $enquiry; ?></textarea>
                                                  <?php if ($error_enquiry) { ?>
                                                  <span class="error"><?php echo $error_enquiry; ?></span>
                                                  <?php } ?>
                                            </li>
                                            <li>
                                            	<div class="input-box">
                                                <label for="captcha"><?php echo $entry_captcha; ?></label><br/>
                                                <input type="text" name="captcha" value="<?php echo $captcha; ?>" class="required-entry input-text"/>
                                                <?php if ($error_captcha) { ?>
                                                <span class="error"><?php echo $error_captcha; ?></span>
                                                <?php } ?>
                                                <br />
                                                <img src="index.php?route=information/contact/captcha" />
                                                </div>
										    </li>
                                        </ul>
                                    </fieldset>
                                    <div class="buttons-set">
                                        <button class="button" onclick="$('#contact').submit();" type="submit"><span><span><span><?php echo $button_continue; ?></span></span></span></button>
                                    </div>
                                </form>
                        </div>
						<div class="clear-block"></div>
                      </div>
<?php echo $footer; ?>