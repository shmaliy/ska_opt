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
                          	<!-- Contenedor del detalle del producto -->
							<div class="product-view">
                              <!-- Parte superior del contenedor del detalle del producto -->
                              <div class="product-essential">
                                <!-- Imagenes de los productos -->
                                <div class="product-img-box">
                                <span class="side-left-img">
                                  <span class="side-right-img">
                                    <span class="side-top-img">
                                      <span class="side-bot-img">
                                        <span class="left-top-img">
                                          <span class="right-top-img">
                                            <span class="left-bot-img">
                                              <span class="right-bot-img">
                                                <span class="inside-img">
                                                  <p class="product-image product-image-zoom">
           											<a href="<?php echo $popup; ?>" title="<?php echo $heading_title; ?>" class="thickbox">
                                                      <img src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" id="image" />
                                                    </a>
            									  </p>
                                                </span>
                                              </span>
                                            </span>
                                          </span>
	                                    </span>
      		                          </span>
             		                </span>
                     		      </span>
                                </span>
                               <span class="clear-img"></span>
                               <p id="track_hint" class="zoom-notice"><?php echo $text_enlarge; ?></p>
                                
                                <?php if ($images) { ?>
                                <div class="more-views"><!-- Más Imagenes -->
                                  <h3><?php echo $tab_image; ?></h3>
                                  <ul>
                                    <?php foreach ($images as $image) { ?>
                                    <li>
                                    <a href="<?php echo $image['popup']; ?>" title="<?php echo $heading_title; ?>" class="thickbox">
                                      <span class="side-left-img">
				                        <span class="side-right-img">
                			              <span class="side-top-img">
                              			    <span class="side-bot-img">
		                                      <span class="left-top-img">
          		                                <span class="right-top-img">
                  		                          <span class="left-bot-img">
                        	                        <span class="right-bot-img">
                            	                      <span class="inside-img"><img src="<?php echo $image['thumb']; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /></span>
                                                     </span>
                                                   </span>
                                                 </span>
                                               </span>
                                             </span>
                                           </span>
                                         </span>
                                       </span>
                                     </a>
                					    <span class="clear-img"></span>
                                    </li>
                                    <?php } ?>

                                  </ul>
                                </div><!-- Fin Más Imagenes -->
								<?php } ?>
                                
                                </div><!-- Fin Imagenes de los productos -->
								
                                <!-- Detalle del producto,descripcion, precio, etc -->
                                <div class="product-shop">
                                  
                                  <div class="product-name">
                                    <h2><?php echo $heading_title; ?></h2>
                                  </div>
                                  
                                  <?php if ($display_price) { ?>
                                  <div class="price-box">
                                    <?php if (!$special) { ?>
                                    <span class="regular-price">
                                      <span class="price"><?php echo $text_price; ?>&nbsp;<?php echo $price; ?></span>
                                    </span>
                                    <?php } else { ?>
                                    <span class="old-price">
                                      <span class="price"><?php echo $price; ?></span>
                                    </span>
                                    <span class="special-price">
                                      <span class="price"><?php echo $special; ?></span>
                                    </span>
                                    <?php } ?>
                                  </div>
                                  <?php } ?>
                                  <!-- STOCK -->
                                  <p class="availability">
                                    <?php echo $text_availability; ?><span><?php echo $stock; ?></span>
                                  </p>
                                  <br class="clear-block">
                                  <!-- MODELO -->
                                  <p class="availability">
                                    <?php echo $text_model; ?><span><?php echo $model; ?></span>
                                  </p>
                                  <br class="clear-block">
                                  <!-- FABRICANTE -->
                                  <?php if ($manufacturer) { ?>
                                  <p class="availability">
                                  <?php echo $text_manufacturer; ?><span><a href="<?php echo $manufacturers; ?>"><?php echo $manufacturer; ?></a></span>
                                  </p>
                                  <br class="clear-block">
                                  <?php } ?>
                                  <!-- REVISIONES -->
                                  <p class="availability average">
                                  <?php echo $text_average; ?>
                                  <?php if ($average) { ?>
                                  <span><img src="catalog/view/theme/cofran/image/stars_<?php echo $average . '.png'; ?>" alt="<?php echo $text_stars; ?>" style="margin-top: 2px;" />
                                  <?php } else { ?>
                                  <?php echo $text_no_rating; ?>
                                  <?php } ?></span>
								  </p>
                                  <br class="clear-block">
                                  <div id="votar"><a onclick="$('#votar');" style="cursor:pointer;" ><?php echo $text_write; ?></a></div>
                                  <br class="clear-block">
                                  
                                  <?php if ($display_price) { ?>
                                    <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="product">
                                      <?php if ($options) { ?>
                                      <fieldset id="product-options-wrapper" class="product-options">
                                        <dl>
	                                     <?php foreach ($options as $option) { ?>
                                          <dt>
                                            <label>
                                              <?php echo $option['name']; ?>:
                                            </label>
                                          </dt>
                                          <dd>
                                          <select name="option[<?php echo $option['option_id']; ?>]">
                                            <?php foreach ($option['option_value'] as $option_value) { ?>
                                            <option value="<?php echo $option_value['option_value_id']; ?>"><?php echo $option_value['name']; ?>
                                            <?php if ($option_value['price']) { ?>
                                            <?php echo $option_value['prefix']; ?><?php echo $option_value['price']; ?>
                                            <?php } ?>
                                            </option>
                                            <?php } ?>
                                          </select>
                                          </dd>
                                         <?php } ?>
                                        </dl>
                                      </fieldset>
                                  	  <?php } ?>

                                  <div class="product-options-bottom">
                                    <div class="price-box">
                                      <?php if (!$special) { ?>
                                      <span class="regular-price">
                                        <span class="price">
                                          <?php echo $price; ?>
                                        </span>
                                      </span>
                                      <?php } else { ?>
									  <span class="special-price">
                                        <span class="price">
                                          <?php echo $special; ?>
                                        </span>
                                      </span>
                                      <?php } ?>
                                    </div>
                                    <fieldset class="add-to-cart">
                                      <label for="qty"><?php echo $text_qty; ?></label>
                                      <input type="text" name="quantity" class="input-text qty" size="3" value="1" />
                                      <input type="hidden" name="product_id" value="<?php echo $product_id; ?>" />
 						              <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
                                      <button class="button" onclick="$('#product').submit();" id="add_to_cart" type="button">
                                        <span>
                                          <span>
                                            <span><?php echo $button_add_to_cart; ?></span>
                                          </span>
                                        </span>
                                      </button>
                                    </fieldset>
                                  </div>
                                </form>
                                <?php } ?>

				<?php if ($display_price) { ?>
	              <?php if ($discounts) { ?>
                      <b><?php echo $text_discount; ?></b><br />
                      <div style="background: #F7F7F7; border: 1px solid #DDDDDD; padding: 10px; margin-top: 2px; margin-bottom: 15px;">
                        <table style="width: 100%;">
                          <tr>
                            <td style="text-align: right;"><b><?php echo $text_order_quantity; ?></b></td>
                            <td style="text-align: right;"><b><?php echo $text_price_per_item; ?></b></td>
                          </tr>
                          <?php foreach ($discounts as $discount) { ?>
                          <tr>
                            <td style="text-align: right;"><?php echo $discount['quantity']; ?></td>
                            <td style="text-align: right;"><?php echo $discount['price']; ?></td>
                          </tr>
                          <?php } ?>
                        </table>
                      </div>
				   <?php } ?>
    			<?php } ?>


<div class="short-description std">
  <h3><?php echo $tab_description; ?></h3>
	<p><?php echo $description; ?></p>
</div>

                                </div><!-- Fin Detalle del producto,descripcion, precio, etc -->
                                <div class="clearer"></div>
                              </div><!-- Fin Parte superior del contenedor del detalle del producto -->

							<!-- Quedo lindo el sistemita de votos che!!! -->
                            <div id="vote" style="display:none;">
                                  <div id="review"></div>
                                  <h3 id="review_title"><?php echo $text_write; ?></h3>
                                  <div class="content"><b><?php echo $entry_name; ?></b><br />
                                    <input type="text" name="name" value="" />
                                    <br />
                                    <br />
                                    <b><?php echo $entry_review; ?></b>
                                    <textarea name="text" style="width: 98%;" rows="8"></textarea>
                                    <span style="font-size: 11px;"><?php echo $text_note; ?></span><br />
                                    <br />
                                    <b><?php echo $entry_rating; ?></b> <span><?php echo $entry_bad; ?></span>&nbsp;
                                    <input type="radio" name="rating" value="1" style="margin: 0;" />
                                    &nbsp;
                                    <input type="radio" name="rating" value="2" style="margin: 0;" />
                                    &nbsp;
                                    <input type="radio" name="rating" value="3" style="margin: 0;" />
                                    &nbsp;
                                    <input type="radio" name="rating" value="4" style="margin: 0;" />
                                    &nbsp;
                                    <input type="radio" name="rating" value="5" style="margin: 0;" />
                                    &nbsp; <span><?php echo $entry_good; ?></span><br />
                                    <br />
                                    <b><?php echo $entry_captcha; ?></b><br />
                                    <input type="text" name="captcha" value="" />&nbsp;&nbsp;&nbsp;&nbsp;
                                    <img src="index.php?route=product/product/captcha" id="captcha" /></div>
                                  <div class="buttons-set">
                                    <button class="button" onclick="review();" type="submit"><span><span><span><?php echo $button_continue; ?></span></span></span></button>
                                  </div>
                            </div>
                              
                              <!-- Parte inferior del contenedor del detalle del producto -->
                              <div class="product-collateral">
								<!-- Productos Relacionados -->
                              <?php if ($products) { ?>
                                <div class="up-sell">
                                  <h3><?php echo $tab_related; ?></h3>
                                    <table id="products-grid-table" class="products-grid">
                                      <?php for ($i = 0; $i < sizeof($products); $i = $i + 4) { ?>
                                      <tr class="first odd">
                                        <?php for ($j = $i; $j < ($i + 3); $j++) { ?>
                                        <td>
                                          <?php if ($j < sizeof($products)) { ?>
                                          <div class="border-bot-prod">
                                            <div class="left-top-prod">
                                              <div class="right-top-prod">
                                                <div class="left-bot-prod">
                                                  <div class="right-bot-prod">
                                                    <div class="inside-prod">
                                                      <?php if (isset($products[$j])) { ?>
                                                      <div class="product-image-box">
                                                        <a href="<?php echo $products[$j]['href']; ?>" class="product-image">
                                                          <span class="side-left-img">
                                                            <span class="side-right-img">
                                                              <span class="side-top-img">
                                                                <span class="side-bot-img">
                                                                  <span class="left-top-img">
                                                                    <span class="right-top-img">
                                                                      <span class="left-bot-img">
                                                                        <span class="right-bot-img">
                                                                          <span class="inside-img">
                                                                            <img src="<?php echo $products[$j]['thumb']; ?>" title="<?php echo $products[$j]['name']; ?>" alt="<?php echo $products[$j]['name']; ?>" />
                                                                          </span>
                                                                        </span>
                                                                      </span>
                                                                    </span>
                                                                  </span>
                                                                </span>
                                                              </span>
                                                            </span>
                                                          </span>
                                                        </a>
                                                      </div>
                                                      <div class="indent-product">
                                                        <h4 class="product-name">
                                                          <a href="<?php echo $products[$j]['href']; ?>"><?php echo $products[$j]['name']; ?></a>
                                                        </h4>
                                                        <?php if ($display_price) { ?>
                                                        <div class="price-box">
                                                        <?php if (!$products[$j]['special']) { ?>
                                                          <span class="regular-price">
                                                            <span class="price">
                                                              <?php echo $products[$j]['price']; ?>
                                                            </span>
                                                          </span>
                                                        <?php } else { ?>
                                                          <span class="old-price">
                                                            <span class="price">
                                                              <?php echo $products[$j]['price']; ?>
                                                            </span>
                                                          </span>
                                                          <div class="discount-label">
                                                            <em><span><?php echo $products[$j]['special']; ?></span></em>
                                                          </div>
                                                        <?php } ?>
                                                        </div>
                                                      <?php } ?>
                                                      <?php if ($products[$j]['rating']) { ?>
                                                        <img src="catalog/view/theme/cofran/image/stars_<?php echo $products[$j]['rating'] . '.png'; ?>" alt="<?php echo $products[$j]['stars']; ?>" />
                                                      <?php } ?>
                                                      </div>
                                                      <?php } ?>
                                                    </div>
                                                  </div>
                                                </div>
                                              </div>
                                            </div>
                                          </div>
                                          <?php } ?>
                                        </td>
                                        <?php } ?>
                                      </tr>
                                      <?php } ?>
                                    </table>
                                </div><!-- Fin Productos Relacionados -->
                              <?php } ?>

                                
                              </div><!-- Fin Parte inferior del contenedor del detalle del producto -->
                            </div><!-- Fin Contenedor del detalle del producto -->
						  </div><!-- Fin Columna de contenido principal -->
						<div class="clear-block"></div>
                    </div>
<script type="text/javascript"><!--
$("#votar a").click(function () {
$("#vote").toggle("slow");
$.scrollTo('#vote', {speed:1000});
});


$('#review .pagination a').live('click', function() {
	$('#review').slideUp('slow');
		
	$('#review').load(this.href);
	
	$('#review').slideDown('slow');
	
	return false;
});			

$('#review').load('index.php?route=product/product/review&product_id=<?php echo $product_id; ?>');

function review() {
	$.ajax({
		type: 'post',
		url: 'index.php?route=product/product/write&product_id=<?php echo $product_id; ?>',
		dataType: 'json',
		data: 'name=' + encodeURIComponent($('input[name=\'name\']').val()) + '&text=' + encodeURIComponent($('textarea[name=\'text\']').val()) + '&rating=' + encodeURIComponent($('input[name=\'rating\']:checked').val() ? $('input[name=\'rating\']:checked').val() : '') + '&captcha=' + encodeURIComponent($('input[name=\'captcha\']').val()),
		beforeSend: function() {
			$('.success-msg, .error-msg').remove();
			$('#review_button').attr('disabled', 'disabled');
			$('#review_title').after('<div class="wait"><img src="catalog/view/theme/cofran/image/loading_1.gif" alt="" /> <?php echo $text_wait; ?></div>');
		},
		complete: function() {
			$('#review_button').attr('disabled', '');
			$('.wait').remove();
		},
		success: function(data) {
			if (data.error) {
				$('#review_title').after('<div class="error-msg">' + data.error + '</div>');
			}
			
			if (data.success) {
				$('#review_title').after('<div class="success-msg">' + data.success + '</div>');
								
				$('input[name=\'name\']').val('');
				$('textarea[name=\'text\']').val('');
				$('input[name=\'rating\']:checked').attr('checked', '');
				$('input[name=\'captcha\']').val('');
			}
		}
	});
}
//--></script>
<script type="text/javascript"><!--
$.tabs('.tabs a'); 
//--></script>
<script type="text/javascript"><!--
/**
 * jQuery.ScrollTo - Easy element scrolling using jQuery.
 * Copyright (c) 2007-2009 Ariel Flesler - aflesler(at)gmail(dot)com | http://flesler.blogspot.com
 * Dual licensed under MIT and GPL.
 * Date: 5/25/2009
 * @author Ariel Flesler
 * @version 1.4.2
 *
 * http://flesler.blogspot.com/2007/10/jqueryscrollto.html
 */
;(function(d){var k=d.scrollTo=function(a,i,e){d(window).scrollTo(a,i,e)};k.defaults={axis:'xy',duration:parseFloat(d.fn.jquery)>=1.3?0:1};k.window=function(a){return d(window)._scrollable()};d.fn._scrollable=function(){return this.map(function(){var a=this,i=!a.nodeName||d.inArray(a.nodeName.toLowerCase(),['iframe','#document','html','body'])!=-1;if(!i)return a;var e=(a.contentWindow||a).document||a.ownerDocument||a;return d.browser.safari||e.compatMode=='BackCompat'?e.body:e.documentElement})};d.fn.scrollTo=function(n,j,b){if(typeof j=='object'){b=j;j=0}if(typeof b=='function')b={onAfter:b};if(n=='max')n=9e9;b=d.extend({},k.defaults,b);j=j||b.speed||b.duration;b.queue=b.queue&&b.axis.length>1;if(b.queue)j/=2;b.offset=p(b.offset);b.over=p(b.over);return this._scrollable().each(function(){var q=this,r=d(q),f=n,s,g={},u=r.is('html,body');switch(typeof f){case'number':case'string':if(/^([+-]=)?\d+(\.\d+)?(px|%)?$/.test(f)){f=p(f);break}f=d(f,this);case'object':if(f.is||f.style)s=(f=d(f)).offset()}d.each(b.axis.split(''),function(a,i){var e=i=='x'?'Left':'Top',h=e.toLowerCase(),c='scroll'+e,l=q[c],m=k.max(q,i);if(s){g[c]=s[h]+(u?0:l-r.offset()[h]);if(b.margin){g[c]-=parseInt(f.css('margin'+e))||0;g[c]-=parseInt(f.css('border'+e+'Width'))||0}g[c]+=b.offset[h]||0;if(b.over[h])g[c]+=f[i=='x'?'width':'height']()*b.over[h]}else{var o=f[h];g[c]=o.slice&&o.slice(-1)=='%'?parseFloat(o)/100*m:o}if(/^\d+$/.test(g[c]))g[c]=g[c]<=0?0:Math.min(g[c],m);if(!a&&b.queue){if(l!=g[c])t(b.onAfterFirst);delete g[c]}});t(b.onAfter);function t(a){r.animate(g,j,b.easing,a&&function(){a.call(this,n,b)})}}).end()};k.max=function(a,i){var e=i=='x'?'Width':'Height',h='scroll'+e;if(!d(a).is('html,body'))return a[h]-d(a)[e.toLowerCase()]();var c='client'+e,l=a.ownerDocument.documentElement,m=a.ownerDocument.body;return Math.max(l[h],m[h])-Math.min(l[c],m[c])};function p(a){return typeof a=='object'?a:{top:a,left:a}}})(jQuery);
//--></script>
<?php echo $footer; ?>