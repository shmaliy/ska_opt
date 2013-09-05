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
                            <?php if ($error) { ?>
                              <ul class="messages">
                                <li class="error-msg">
                                  <ul>
                                    <li><?php echo $error; ?></li>
                                  </ul>
                                </li>
                              </ul>
                            <?php } ?>
                            <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="forgotten">
                                <p><?php echo $text_email; ?></p><br />
                              <label for="email"><?php echo $text_your_email; ?></label><span class="required">*</span>
                                <table>
                                  <tr>
                                    <td><input type="text" name="email" class="input-text" /></td>
                                  </tr>
                                </table>
                            <div class="buttons-set">
                              <button class="button back-link" type="button" onclick="location='<?php echo $back; ?>'">
                                <span>
                                  <span>
                                    <a onclick="location='<?php echo $back; ?>'" class="button"><span><?php echo $button_back; ?></a>
                                  </span>
                                </span>
                              </button>
                              <button class="button" type="submit">
                                <span>
                                  <span>
                                    <a onclick="$('#forgotten').submit();" class="button"><span><?php echo $button_continue; ?></a>
                                  </span>
                                </span>
                              </button>
                            </div>
                            </form>
                        </div>
                      <div class="clear-block"></div>
                    </div>
<?php echo $footer; ?>
