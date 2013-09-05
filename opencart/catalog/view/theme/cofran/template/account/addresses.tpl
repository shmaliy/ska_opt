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
                        <?php if ($success) { ?>
                          <ul class="messages">
                            <li class="success-msg">
                              <ul>
                                <li><?php echo $success; ?></li>
                              </ul>
                            </li>
                          </ul>
                        <?php } ?>
                        <?php if ($error_warning) { ?>
                          <ul class="messages">
                            <li class="error-msg">
                              <ul>
                                <li><?php echo $error_warning; ?></li>
                              </ul>
                            </li>
                          </ul>
                        <?php } ?>
                        
                          <?php foreach ($addresses as $result) { ?>
			              <div class="my-account">
                              <table width="100%" id="addresses">
                                <tr>
                                  <td><?php echo $result['address']; ?></td>
								</tr>
                                <tr>
                                  <td style="padding-top:5px;">
                                  <a onclick="location='<?php echo $result['update']; ?>'" style="padding-top:5px; cursor:pointer;"><b><?php echo $button_edit; ?></b></a>&nbsp;&nbsp;|&nbsp;&nbsp;<a onclick="location='<?php echo $result['delete']; ?>'" style="padding-top:5px; cursor:pointer;"><b><?php echo $button_delete; ?></b></a>
                                  </td>
                                </tr>
                              </table>
                          </div>
                          <?php } ?>
                            <div class="buttons-set">
                               <button onclick="location='<?php echo $back; ?>'" class="button back-link" type="button">
                                  <span>
                                    <span>
                                      <span><?php echo $button_back; ?></span>
                                    </span>
                                  </span>
                                </button>
                                <button onclick="location='<?php echo $insert; ?>'" class="button" type="button">
                                  <span>
                                    <span>
                                      <span><?php echo $button_new_address; ?></span>
                                    </span>
                                  </span>
                                </button>
                            </div>
                        </div>
						<div class="clear-block"></div>
                      </div>
<?php echo $footer; ?>