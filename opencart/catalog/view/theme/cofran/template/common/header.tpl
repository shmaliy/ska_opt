<?php echo '<?xml version="1.0" encoding="UTF-8"?>' . "\n"; ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" xml:lang="<?php echo $lang; ?>">
<head>
<!-- metaetiquetas -->
<title><?php echo $title; ?></title>
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<base href="<?php echo $base; ?>" />
<?php if ($icon) { ?>
<link href="image/<?php echo $icon; ?>" rel="icon" />
<?php } ?>
<!-- fin metaetiquetas -->
<link rel="stylesheet" type="text/css" href="catalog/view/theme/cofran/stylesheet/reset.css" media="all" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/cofran/stylesheet/styles.css" media="all" />
<!--[if lt IE 8]>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/styles-ie.css" media="all" />
<![endif]-->
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.0/jquery.min.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/thickbox/thickbox-compressed.js"></script>
<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/thickbox/thickbox.css" />
<script type="text/javascript" src="catalog/view/javascript/jquery/tab.js"></script>
<?php foreach ($scripts as $script) { ?>
<script type="text/javascript" src="view/javascript/jquery/<?php echo $script; ?>"></script>
<?php } ?>
</head>
<body>
<!-- wrapper -->
<div class="wrapper">
<!-- cabecera -->
	<div class="header-container">
	<div class="header">
        <div class="page">
            <div class="header-row">
            	<div class="logo-block">
                    <h1 id="logo" class="logo" style="background-image: url(<?php echo $logo; ?>);" title="<?php echo $store; ?>">
<a href="<?php echo $home; ?>"><?php echo $store; ?></a></h1>

                </div>
                <div class="navigation">
                	<div class="navigation-row">
                    	<fieldset class="form-language">
                          <?php if ($languages) { ?>
                            <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="language_form">
                              <div class="switcher">
                                <?php foreach ($languages as $language) { ?>
                                <?php if ($language['code'] == $language_code) { ?>
                                <div class="selected"><a><img src="image/flags/<?php echo $language['image']; ?>" alt="<?php echo $language['name']; ?>" />&nbsp;&nbsp;<?php echo $language['name']; ?></a></div>
                                <?php } ?>
                                <?php } ?>
                                <div class="option">
                                <?php foreach ($languages as $language) { ?>
                                <a onclick="$('input[name=\'language_code\']').attr('value', '<?php echo $language['code']; ?>'); $('#language_form').submit();"><img src="image/flags/<?php echo $language['image']; ?>" alt="<?php echo $language['name']; ?>" />&nbsp;&nbsp;<?php echo $language['name']; ?></a>
                                <?php } ?>
                                </div>
                                </div>
                              <input type="hidden" name="language_code" value="" />
                              <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
                            </form>
                          <?php } ?>
                          <?php if ($currencies) { ?>
		                    <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="currency_form">
                              <div class="switcher">
                                <?php foreach ($currencies as $currency) { ?>
                                <?php if ($currency['code'] == $currency_code) { ?>
                                <div class="selected"><a><?php echo $currency['title']; ?></a></div>
                                <?php } ?>
                                <?php } ?>
                                <div class="option">
                                  <?php foreach ($currencies as $currency) { ?>
                                  <a onclick="$('input[name=\'currency_code\']').attr('value', '<?php echo $currency['code']; ?>'); $('#currency_form').submit();"><?php echo $currency['title']; ?></a>
                                  <?php } ?>
                                </div>
                              </div>
                              <input type="hidden" name="currency_code" value="" />
                              <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
                            </form>
                          <?php } ?>
                       </fieldset>
                    <div class="clear-block"></div>
                    </div>
                    <div class="block-search">
                       <div class="indent-search">
                        <fieldset class="form-search">
                          <?php if ($keyword) { ?>
                          <input type="text" value="<?php echo $keyword; ?>" id="filter_keyword" class="input-text" />
                          <?php } else { ?>
                          <input type="text" value="<?php echo $text_keyword; ?>" id="filter_keyword" onclick="this.value = '';" onkeydown="this.style.color = '000000'" style="color: #999;" class="input-text" />
                          <?php } ?>
                          <button class="button" type="submit" onclick="moduleSearch();"> </button>
                        </fieldset>
                       </div>
                        <p class="search-text"><?php echo $entry_search; ?></p>
                    </div>
                    <ul class="links">
	                  <li class="first"><a href="<?php echo $contact; ?>" title="<?php echo $text_contact; ?>" ><?php echo $text_contact; ?></a></li>
                      <li><a href="<?php echo $sitemap; ?>" title="<?php echo $text_sitemap; ?>" ><?php echo $text_sitemap; ?></a></li>
                      <li class="last"><a href="<?php echo $advanced; ?>" title="<?php echo $text_advanced; ?>"><?php echo $text_advanced; ?></a></li>
                    </ul>
                    <div class="clear-block"></div>
                </div>
                <div class="clear-block"></div>
            </div>
        </div>

	  <div class="row-menu">
        <div class="page">
          <ul id="nav">
            <li><a href="<?php echo $home; ?>" id="tab_home"><span><?php echo $text_home; ?></span></a></li>
            <li><a href="<?php echo $special; ?>"><span><?php echo $text_special; ?></span></a></li>
              <?php if (!$logged) { ?>
            <li><a href="<?php echo $login; ?>"><span><?php echo $text_login; ?></span></a></li>
              <?php } else { ?>
            <li><a href="<?php echo $logout; ?>"><span><?php echo $text_logout; ?></span></a></li>
              <?php } ?>
            <li><a href="<?php echo $account; ?>"><span><?php echo $text_account; ?></span></a></li>
            <li><a href="<?php echo $cart; ?>"><span><?php echo $text_cart; ?></span></a></li>
            <li><a href="<?php echo $checkout; ?>"><span><?php echo $text_checkout; ?></a></span></li>
          </ul>
        </div>
      </div>
	</div>
</div>
<!-- fin cabecera -->
<script type="text/javascript"><!-- 
function getURLVar(urlVarName) {
	var urlHalves = String(document.location).toLowerCase().split('?');
	var urlVarValue = '';
	
	if (urlHalves[1]) {
		var urlVars = urlHalves[1].split('&');

		for (var i = 0; i <= (urlVars.length); i++) {
			if (urlVars[i]) {
				var urlVarPair = urlVars[i].split('=');
				
				if (urlVarPair[0] && urlVarPair[0] == urlVarName.toLowerCase()) {
					urlVarValue = urlVarPair[1];
				}
			}
		}
	}
	
	return urlVarValue;
} 
//--></script>
<script type="text/javascript"><!--
$('#module_search input').keydown(function(e) {
	if (e.keyCode == 13) {
		moduleSearch();
	}
});

function moduleSearch() {
	url = 'index.php?route=product/search';
	
	var filter_keyword = $('#filter_keyword').attr('value')
	
	if (filter_keyword) {
		url += '&keyword=' + encodeURIComponent(filter_keyword);
	}
	
	var filter_category_id = $('#filter_category_id').attr('value');
	
	if (filter_category_id) {
		url += '&category_id=' + filter_category_id;
	}
	
	location = url;
}
//--></script>
<script type="text/javascript"><!--
$('.switcher').bind('click', function() {
	$(this).find('.option').slideToggle('fast');
});
//--></script>