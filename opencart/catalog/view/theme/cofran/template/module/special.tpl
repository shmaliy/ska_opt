<?php if ($products) { ?>
<div class="block block-related">
    <div class="block-title">
        <div class="border-top-title">
            <div class="border-bot-title">
                <div class="left-top-title">
                    <div class="right-top-title">
                        <div class="left-bot-title">
                            <div class="right-bot-title">
								<h2><?php echo $heading_title; ?></h2>
							</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
	</div>
    <div class="block-content">
        <ol id="block-related">
        	<?php foreach ($products as $product) { ?>
	        <li class="item odd">
	            <div class="item">
                    <a class="product-image" href="<?php echo $product['href']; ?>" title="<?php echo $product['name']; ?>">
                    <span class="side-left-img">
						<span class="side-right-img">
							<span class="side-top-img">
								<span class="side-bot-img">
									<span class="left-top-img">
										<span class="right-top-img">
											<span class="left-bot-img">
												<span class="right-bot-img">
													<span class="inside-img"><img src="<?php echo $product['image']; ?>" alt="<?php echo $product['name']; ?>" />
                                                	</span>
                                                </span>
                                            </span>
                                        </span>
                                    </span>
                                </span>
                            </span>
                        </span>
                    </span>
					<span class="clear-img"></span></a>
    	                <div class="product-details">
        	                <h3 class="product-name">
                            	<a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
                            </h3>
                            <?php if ($display_price) { ?>
                            <div class="price-box">
                            <?php if (!$product['special']) { ?>
                              <span class="regular-price">
                                <span class="price">
                                  <?php echo $product['price']; ?>
                                </span>
                              </span>
                            <?php } else { ?>
                              <span class="old-price">
                                <span class="price">
                                  <?php echo $product['price']; ?>
                                </span>
                              </span>
                              <span class="special-price">
                                <span class="price">
                                  <?php echo $product['special']; ?>
                                </span>
                              </span>
                            <?php } ?>
                            </div>
                          <?php } ?>
						</div>
                    <div class="clear-block"></div>
				</div>
            </li>
            <?php } ?>
		</ol>
    </div>
</div>
<?php } ?>