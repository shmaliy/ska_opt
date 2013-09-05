<!-- Título del Bloque -->
<div class="block block-categorias">
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
<!-- Contenido del Bloque -->
  <div class="block-content">
	<ul class="list-block">
      <?php foreach ($informations as $information) { ?>
      <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
      <?php } ?>
      <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
      <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
    </ul>
  </div>
</div>