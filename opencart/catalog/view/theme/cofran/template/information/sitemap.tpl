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
								<table cellspacing="0" cellpadding="5" border="0" align="center" width="100%">
									<tr>
										<td width="33%" valign="top">
											<?php echo $category; ?>
										</td>
										<td width="33%" valign="top">
											<h4><?php echo $text_account; ?></h4><br />
								            <ul>
                                                <li><a href="<?php echo $edit; ?>"><?php echo $text_edit; ?></a></li>
                                                <li><a href="<?php echo $password; ?>"><?php echo $text_password; ?></a></li>
                                                <li><a href="<?php echo $address; ?>"><?php echo $text_address; ?></a></li>
                                                <li><a href="<?php echo $history; ?>"><?php echo $text_history; ?></a></li>
                                                <li><a href="<?php echo $download; ?>"><?php echo $text_download; ?></a></li>
                                                <li><a href="<?php echo $cart; ?>"><?php echo $text_cart; ?></a></li>
                                                <li><a href="<?php echo $checkout; ?>"><?php echo $text_checkout; ?></a></li>
                                                <li><a href="<?php echo $search; ?>"><?php echo $text_search; ?></a></li>
									        <ul>
										</td>
										<td width="33%" valign="top">
											<h4><?php echo $text_information; ?></h4><br />
								            <ul>
                                            	<?php foreach ($informations as $information) { ?>
                                            	<li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
	                                            <?php } ?>
                                            	<li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
                                            </ul>
  
										</td>
									</tr>
								</table>
                            </div>
                        <div class="clear-block"></div>
                      </div>
<?php echo $footer; ?>