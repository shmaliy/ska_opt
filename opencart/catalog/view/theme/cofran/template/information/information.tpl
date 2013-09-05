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
						<div class="middle"><?php echo $description; ?></div>
                            <div class="buttons-set">
                                <button class="button" onclick="location='<?php echo $continue; ?>'" type="button"><span><span><span><?php echo $button_continue; ?></span></span></span></button>
                            </div>
                        </div>
						<div class="clear-block"></div>
                      </div>
<?php echo $footer; ?>