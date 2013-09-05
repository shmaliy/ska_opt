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
                            <?php if ($error_warning) { ?>
                              <ul class="messages">
                                <li class="error-msg">
                                  <ul>
                                    <li><?php echo $error_warning; ?></li>
                                  </ul>
                                </li>
                              </ul>
							<?php } ?>

                            <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="edit">
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
                                <div class="buttons-set">
                                   <button onclick="location='<?php echo $back; ?>'" class="button back-link" type="button">
                                      <span>
                                        <span>
                                          <span><?php echo $button_back; ?></span>
                                        </span>
                                      </span>
                                    </button>
                                    <button onclick="$('#edit').submit();" class="button" type="button">
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
<?php echo $footer; ?>