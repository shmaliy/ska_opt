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
                          <div class="account-login">
                            <div class="page-title">
                              <h2><?php echo $heading_title; ?></h2>
                            </div>
                            <?php if ($success) { ?>
                              <ul class="messages">
                                <li class="success-msg">
                                  <ul>
                                    <li><?php echo $success; ?></li>
                                  </ul>
                                </li>
                              </ul>
                            <?php } ?>
                            <?php if ($error) { ?>
                              <ul class="messages">
                                <li class="error-msg">
                                  <ul>
                                    <li><?php echo $error; ?></li>
                                  </ul>
                                </li>
                              </ul>
                            <?php } ?>
                            <div style="display:inline;">
                            <div class="col2-set">
                              <div class="col-1 new-users">
                                <h3><?php echo $text_checkout; ?></h3>
                                  <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="account">
                                    <label for="register" style="cursor: pointer;">
                                      <?php if ($account == 'register') { ?>
                                      <input type="radio" name="account" value="register" id="register" checked="checked" />
                                      <?php } else { ?>
                                      <input type="radio" name="account" value="register" id="register" />
                                      <?php } ?>
                                      <b><?php echo $text_account; ?></b></label>
                                    <br />
                                    <?php if ($guest_checkout) { ?>
                                    <label for="guest" style="cursor: pointer;">
                                      <?php if ($account == 'guest') { ?>
                                      <input type="radio" name="account" value="guest" id="guest" checked="checked" />
                                      <?php } else { ?>
                                      <input type="radio" name="account" value="guest" id="guest" />
                                      <?php } ?>
                                      <b><?php echo $text_guest; ?></b>
                                    </label>
                                    <br />
                                    <?php } ?>
                                    <br />
                                  </form>
                                  <p><?php echo $text_create_account; ?></p>
                              </div>
                              <div class="col-2 registered-users">
                                <h3><?php echo $text_returning_customer; ?></h3>
                                <p><?php echo $text_i_am_returning_customer; ?></p>
                                  <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="login">
                                    <br />
                                    <b><?php echo $entry_email; ?></b><br />
                                    <input type="text" name="email" class="input-text"/>
                                    <br />
                                    <br />
                                    <b><?php echo $entry_password; ?></b><br />
                                    <input type="password" name="password" class="input-text"/>
                                    <br />
                                    <?php if ($redirect) { ?>
                                    <input type="hidden" name="redirect" value="<?php echo $redirect; ?>"/>
                                    <?php } ?>
                                  </form>
                              </div>
                            </div>
                            <div class="col2-set">
                              <div class="col-1">
                                <div class="buttons-set">
                                  <button class="button" onclick="$('#account').submit();" type="button">
                                    <span>
                                      <span>
                                        <span><?php echo $button_continue; ?></span>
                                      </span>
                                    </span>
                                  </button>
                                </div>
                              </div>
                            <div class="col-2">
                              <div class="buttons-set">
                                <a class="f-left" href="<?php echo $forgotten; ?>"><?php echo $text_forgotten_password; ?></a>
                                <button class="button" onclick="$('#login').submit();" type="button">
                                  <span>
                                    <span>
                                      <span><?php echo $button_login; ?></span>
                                    </span>
                                  </span>
                                </button>
                              </div>
                            </div>
                          </div>
                            
                        </div>
                      </div>
                    </div>
                    <div class="clear-block"></div>
                </div>
<script type="text/javascript"><!--
$('#login input').keydown(function(e) {
	if (e.keyCode == 13) {
		$('#login').submit();
	}
});
//--></script>
<?php echo $footer; ?>