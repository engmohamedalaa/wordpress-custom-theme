<!DOCTYPE html>
<html lang="en">
  <head>
      <meta charset="utf-8" />
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
      <meta name="description" content="" />
      <meta name="author" content="" />
      <title>
        <?php wp_title('|', 'true', 'right'); ?>
        <?php bloginfo('name'); ?>
      </title>
      <!-- Favicon-->
      <link rel="icon" type="image/x-icon" href="<?php echo get_template_directory_uri();?>/assets/favicon.ico" />
      <link rel="pingback" href="<?php bloginfo('pingback_url'); ?>" />
      <?php wp_head();?>
      <style>

      </style>
  </head>
  <body id="page-top">
