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

              <div class="my-account">
               <h3><?php echo $text_my_account; ?></h3>
                <ul>
                  <li><a href="<?php echo $information; ?>"><?php echo $text_information; ?></a></li>
                  <li><a href="<?php echo $password; ?>"><?php echo $text_password; ?></a></li>
                  <li><a href="<?php echo $address; ?>"><?php echo $text_address; ?></a></li>
                </ul>
              </div>
              
              <div class="my-account">
               <h3><?php echo $text_my_orders; ?></h3>
                <ul>
                  <li><a href="<?php echo $history; ?>"><?php echo $text_history; ?></a></li>
                  <li><a href="<?php echo $download; ?>"><?php echo $text_download; ?></a></li>
                </ul>
              </div>

				<div class="clear-block"></div>

              <div class="my-account">
               <h3><?php echo $text_my_newsletter; ?></h3>
                <ul>
                  <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
                </ul>
              </div>
              


                        </div>
						<div class="clear-block"></div>
                      </div>
<?php echo $footer; ?>