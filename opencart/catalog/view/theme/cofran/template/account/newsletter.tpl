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

    <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="newsletter">
                            <fieldset>
                            <ul class="form-list group-select">
                              <li>
                              <div class="input-box">
                                <label for="newsletter">
                                <?php echo $entry_newsletter; ?>
                                </label>&nbsp;
                              <?php if ($newsletter) { ?>
                              <input type="radio" name="newsletter" value="1" checked="checked" />
                              <?php echo $text_yes; ?>&nbsp;
                              <input type="radio" name="newsletter" value="0" />
                              <?php echo $text_no; ?>
                              <?php } else { ?>
                              <input type="radio" name="newsletter" value="1" />
                              <?php echo $text_yes; ?>&nbsp;
                              <input type="radio" name="newsletter" value="0" checked="checked" />
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
                                    <button onclick="$('#newsletter').submit();" class="button" type="button">
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