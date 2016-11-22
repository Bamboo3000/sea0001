<!doctype html>
<html class="no-js" <?php language_attributes(); ?>>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title><?php wp_title(); ?></title>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Favicon -->
<!--     <link rel="apple-touch-icon" sizes="57x57" href="/assets/img/favicon/apple-icon-57x57.png">
    <link rel="apple-touch-icon" sizes="60x60" href="/assets/img/favicon/apple-icon-60x60.png">
    <link rel="apple-touch-icon" sizes="72x72" href="/assets/img/favicon/apple-icon-72x72.png">
    <link rel="apple-touch-icon" sizes="76x76" href="/assets/img/favicon/apple-icon-76x76.png">
    <link rel="apple-touch-icon" sizes="114x114" href="/assets/img/favicon/apple-icon-114x114.png">
    <link rel="apple-touch-icon" sizes="120x120" href="/assets/img/favicon/apple-icon-120x120.png">
    <link rel="apple-touch-icon" sizes="144x144" href="/assets/img/favicon/apple-icon-144x144.png">
    <link rel="apple-touch-icon" sizes="152x152" href="/assets/img/favicon/apple-icon-152x152.png">
    <link rel="apple-touch-icon" sizes="180x180" href="/assets/img/favicon/apple-icon-180x180.png">
    <link rel="icon" type="image/png" sizes="192x192" href="/assets/img/favicon/android-icon-192x192.png">
    <link rel="icon" type="image/png" sizes="32x32" href="/assets/img/favicon/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="96x96" href="/assets/img/favicon/favicon-96x96.png">
    <link rel="icon" type="image/png" sizes="16x16" href="/assets/img/favicon/favicon-16x16.png">
    <link rel="manifest" href="/assets/img/favicon/manifest.json">
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="msapplication-TileImage" content="assets/img/favicon/ms-icon-144x144.png">
    <meta name="theme-color" content="#ffffff"> -->

    <!-- ()()    That's an indentation bunny. -->
    <!-- ('.')   He's here to protect this file for propper indentation. -->
    <!-- (()()   Please don't mess with a bunny... -->
    <!--*(_()()  He can be really CrAzY!#$%&@%$ -->
    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
    <!-- Custom CSS -->
    <link href="/assets/css/www/build.css" rel="stylesheet">
    <style>
      object,
      svg {
        pointer-events: none!important;
      }
    </style>
  <?php wp_head(); ?>
</head>
<body <?php body_class($this->post_name); ?> data-page="<?= $this->post_name; ?>"<?php if ($this->helper('pages')->isPage()): ?> data-template="<?= $this->_wp_page_template; ?>"<?php endif; ?>>
  <div class="wrapper">
    <?php $this->partial('header'); ?>
    [foundation-view]
    <?php $this->partial('footer'); ?>
  </div>
  <!-- JavaScript -->
  <?php if ($this->config('minifiedAssets', false)): ?>
    <script src="/assets/js/www/app.min.js"></script>
  <?php else: ?>
    <script src="/assets/js/www/libs.min.js"></script>
    <script src="/assets/js/www/app.js"></script>
  <?php endif; ?>
  <?php /* $this->partial('google-analytics'); */?>
  <?php wp_footer()?>
</body>
</html>