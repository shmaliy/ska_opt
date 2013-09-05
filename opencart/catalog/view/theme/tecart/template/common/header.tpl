<?php if (isset($_SERVER['HTTP_USER_AGENT']) && !strpos($_SERVER['HTTP_USER_AGENT'], 'MSIE 6')) echo '<?xml version="1.0" encoding="UTF-8"?>'. "\n"; ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" xml:lang="<?php echo $lang; ?>">
<head>
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content="<?php echo $keywords; ?>" />
<?php } ?>
<?php if ($icon) { ?>
<link href="<?php echo $icon; ?>" rel="icon" />
<?php } ?>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/tecart/stylesheet/stylesheet.css" />

<?php foreach ($styles as $style) { ?>
<link rel="<?php echo $style['rel']; ?>" type="text/css" href="<?php echo $style['href']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script type="text/javascript" src="catalog/view/javascript/jquery/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-1.8.16.custom.min.js"></script>
<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/ui/themes/ui-lightness/jquery-ui-1.8.16.custom.css" />
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/external/jquery.cookie.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/colorbox/jquery.colorbox.js"></script>
<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/colorbox/colorbox.css" media="screen" />
<script type="text/javascript" src="catalog/view/javascript/jquery/tabs.js"></script>
<script type="text/javascript" src="catalog/view/javascript/common.js"></script>

<script type="text/javascript" src="catalog/view/javascript/tecart.js"></script>
<?php foreach ($scripts as $script) { ?>
<script type="text/javascript" src="<?php echo $script; ?>"></script>
<?php } ?>
<!--[if IE 7]>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/tecart/stylesheet/ie7.css" />
<![endif]-->
<!--[if lt IE 7]>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/tecart/stylesheet/ie6.css" />
<script type="text/javascript" src="catalog/view/javascript/DD_belatedPNG_0.0.8a-min.js"></script>
<script type="text/javascript">
DD_belatedPNG.fix('#logo img');
</script>
<![endif]-->
<?php if ($stores) { ?>
<script type="text/javascript"><!--
$(document).ready(function() {
<?php foreach ($stores as $store) { ?>
$('body').prepend('<iframe src="<?php echo $store; ?>" style="display: none;"></iframe>');
<?php } ?>
});
//--></script>
<?php } ?>
<!-- RedHelper -->
<script id="rhlpscrtg" type="text/javascript" charset="utf-8" async="async" 
	src="https://web.redhelper.ru/service/main.js?c=skashop">
</script> 
<!--/Redhelper -->
<?php echo $google_analytics; ?>
</head>
<body>
    <?php if (isset($_SESSION['customer_id']) && !is_null($_SESSION['customer_id'])) : ?>
    
    <?php endif; ?>
    
    
<div id="container">
<div id="header">
    <div class="header-resize">
    <div class="tab-top cf">
        <div class="auth">
            <?php if (!$logged) { ?>
            <?php echo $text_welcome; ?>
            <?php } else { ?>
            <?php echo $text_logged; ?>
            <?php } ?>
        </div>
        <div class="links cf">
            <a href="<?php echo $home; ?>"><?php echo $text_home; ?></a>
            <a href="<?php echo $wishlist; ?>" id="wishlist-total"><?php echo $text_wishlist; ?></a>
            <a href="<?php echo $account; ?>"><?php echo $text_account; ?></a>
            <?php if (isset($_SESSION['customer_id']) && !is_null($_SESSION['customer_id'])) : ?>
            <a href="<?php echo $checkout; ?>"><?php echo $text_checkout; ?></a>
            <?php endif; ?>
        </div>    
    </div>
    <div class="new-header cf">
        <div class="header-left">
            <?php if ($logo) { ?>
            <div id="logo"><a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" /></a></div>
            <?php } ?>
            <div class="slogan"></div>
        </div>
        
        <div class="header-right">
            <div id="search" class="search cf">
                <div class="button-search"></div>
                <?php if ($search) { ?>
                <input type="text" name="search" value="<?php echo $search; ?>" />
                <?php } else { ?>
                <input type="text" name="search" placeholder="<?php echo $text_search; ?>" value="<?php echo $search; ?>" />
                <?php } ?>
            </div>
            
        </div>
        <?php if ($logged) { ?>
            <?php echo $cart; ?>
        
        <?php } ?>
    </div>
    <div class="town">
        г. Днепропетровск, тел. (056) 370-20-21, (056) 370-22-02, (067) 564-63-84
    </div>
  
  <?php echo $language; ?>
  <?php echo $currency; ?>
    </div>
  
  
  
</div>
<?php if ($categories) { ?>
<div id="menu">
  <ul>
    <?php foreach ($categories as $category) { ?>
    <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
      <?php if ($category['children']) { ?>
      <div>
        <?php for ($i = 0; $i < count($category['children']);) { ?>
        <ul>
          <?php $j = $i + ceil(count($category['children']) / $category['column']); ?>
          <?php for (; $i < $j; $i++) { ?>
          <?php if (isset($category['children'][$i])) { ?>
          <li><a href="<?php echo $category['children'][$i]['href']; ?>"><?php echo $category['children'][$i]['name']; ?></a></li>
          <?php } ?>
          <?php } ?>
        </ul>
        <?php } ?>
      </div>
      <?php } ?>
    </li>
    <?php } ?>
    <?php 
        $s_url = '/index.php?route=information/information&information_id=8'; 
        $s_p_v_url = 'http://dev.ska.com.ua/index.php?route=information/information&information_id=9';
        $bt_url = 'http://dev.ska.com.ua/index.php?route=information/information&information_id=10';
        $c_url = 'http://dev.ska.com.ua/index.php?route=information/information&information_id=11';

    ?>
    <li>
        <a href="#">Сервис-центр</a>
        <div>
            <ul>
                <li><a href="<?php echo $s_p_v_url; ?>">Фото-видео</a></li>
                <li><a href="<?php echo $bt_url; ?>">Бытовая техника</a></li>
                <li><a href="<?php echo $c_url; ?>">Canon</a></li>
            </ul>
        </div>
    </li>
  </ul>
</div>
<?php } ?>
<div id="notification"></div>
