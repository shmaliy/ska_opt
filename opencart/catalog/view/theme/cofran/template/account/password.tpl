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
                            <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="password">
                            <fieldset>
                            <h3><?php echo $text_password; ?></h3>
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
                                <div class="buttons-set">
                                   <button onclick="location='<?php echo $back; ?>'" class="button back-link" type="button">
                                      <span>
                                        <span>
                                          <span><?php echo $button_back; ?></span>
                                        </span>
                                      </span>
                                    </button>
                                    <button onclick="$('#password').submit();" class="button" type="button">
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