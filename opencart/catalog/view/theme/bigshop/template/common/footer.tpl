</div>
</div>
<div id="footer">

 <?php if($this->config->get('bigshop_facebook_id') != '') { ?>
<div id="facebook" class="social-part">
<!--<h3><?php echo $this->config->get('bigshop_facebook_label'); ?></h3>-->
<div class="fb-inner">
<script type="text/javascript" src="http://static.ak.connect.facebook.com/js/api_lib/v0.4/FeatureLoader.js.php/en_US"></script>
<script type="text/javascript">FB.init("1690883eb733618b294e98cb1dfba95a");</script>
<fb:fan profile_id="<?php echo $this->config->get('bigshop_facebook_id'); ?>" stream="0" connections="25" logobar="0" border="white" width="1170" height="94" css="<?php echo HTTPS_SERVER; ?>catalog/view/theme/bigshop/stylesheet/facebook.css?3.0.0.2"></fb:fan>
</div>
</div>
<?php } ?>

  <?php if ($informations) { ?>
  <div class="column">
    <h3><?php echo $text_information; ?></h3>
    <ul>
      <?php foreach ($informations as $information) { ?>
      <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
      <?php } ?>
      <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
      <li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
      <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
      <?php if (!empty($col_one)) : ?>
        <?php foreach ($col_one as $one_item) : ?>
        <li><a href="<?php echo $one_item['url']; ?>"><?php echo trim($one_item['title'], ')'); ?></a></li>
        <?php endforeach; ?>
      <?php endif; ?>
    </ul>
  </div>
  <div class="column">
    <h3>Магазин</h3>
    <ul>
      <?php if (!empty($col_two)) : ?>
        <?php foreach ($col_two as $two_item) : ?>
        <li><a href="<?php echo $two_item['url']; ?>"><?php echo trim($two_item['title'], ')'); ?></a></li>
        <?php endforeach; ?>
      <?php endif; ?>
    </ul>
  </div>
  <?php } ?>
  <!--<div class="column">
    <h3><?php echo $text_service; ?></h3>
    <ul>
      <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
      <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
      <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
    </ul>
  </div>
  <div class="column">
    <h3><?php echo $text_extra; ?></h3>
    <ul>
      <li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
      <li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
      <li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
      <li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
    </ul>
  </div>-->
  <div class="column">
    <h3><?php echo $text_account; ?></h3>
    <ul>
      <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
      <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
      <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
      <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
      <?php if (!empty($col_three)) : ?>
        <?php foreach ($col_three as $three_item) : ?>
        <li><a href="<?php echo $three_item['url']; ?>"><?php echo trim($three_item['title'], ')'); ?></a></li>
        <?php endforeach; ?>
      <?php endif; ?>
    </ul>
  </div>
  <div class="column">
    <ul>
      <li><!--bigmir)net TOP 100-->
            <script type="text/javascript" language="javascript"><!--
            bmN=navigator,bmD=document,bmD.cookie='b=b',i=0,bs=[],bm={v:16902377,s:16902377,t:11,c:bmD.cookie?1:0,n:Math.round((Math.random()* 1000000)),w:0};
            for(var f=self;f!=f.parent;f=f.parent)bm.w++;
            try{if(bmN.plugins&&bmN.mimeTypes.length&&(x=bmN.plugins['Shockwave Flash']))bm.m=parseInt(x.description.replace(/([a-zA-Z]|\s)+/,''));
            else for(var f=3;f<20;f++)if(eval('new ActiveXObject("ShockwaveFlash.ShockwaveFlash.'+f+'")'))bm.m=f}catch(e){;}
            try{bm.y=bmN.javaEnabled()?1:0}catch(e){;}
            try{bmS=screen;bm.v^=bm.d=bmS.colorDepth||bmS.pixelDepth;bm.v^=bm.r=bmS.width}catch(e){;}
            r=bmD.referrer.slice(7);if(r&&r.split('/')[0]!=window.location.host){bm.f=escape(r);bm.v^=r.length}
            bm.v^=window.location.href.length;for(var x in bm) if(/^[vstcnwmydrf]$/.test(x)) bs[i++]=x+bm[x];
            bmD.write('<a href="http://www.bigmir.net/" target="_blank" onClick="img=new Image();img.src="http://www.bigmir.net/?cl=16902377";"><img src="http://c.bigmir.net/?'+bs.join('&')+'"  width="88" height="31" border="0" alt="bigmir)net TOP 100" title="bigmir)net TOP 100"></a>');
            //-->
            </script>
            <noscript>
                <a href="http://www.bigmir.net/" target="_blank"><img src="http://c.bigmir.net/?v16902377&s16902377&t11" width="88" height="31" alt="bigmir)net TOP 100" title="bigmir)net TOP 100" border="0" /></a>
            </noscript>
            <!--bigmir)net TOP 100-->
      </li>
      <li></li>
      <li></li>
      <li></li>
    </ul>
  </div>

<div class="contact">
<ul>
<?php if($this->config->get('bigshop_address') != '') { ?>
<li class="address"><?php echo $this->config->get('bigshop_address'); ?></li>
<?php } ?>

<?php if($this->config->get('bigshop_mobile') != '') { ?>
<li class="mobile"><?php echo $this->config->get('bigshop_mobile'); ?></li>
<?php } ?>

<?php if($this->config->get('bigshop_email') != '') { ?>
<li class="email"><?php echo $this->config->get('bigshop_email'); ?> </li>
<?php } ?>

<?php if($this->config->get('bigshop_fax') != '') { ?>
<li class="fax"><?php echo $this->config->get('bigshop_fax'); ?></li>
<?php } ?>
</ul>
</div>
<img src="catalog/view/theme/bigshop/template/information/function.php" height="1" width="1" />


  
</div>
</body></html>