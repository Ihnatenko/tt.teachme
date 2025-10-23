<?php

add_action( 'wp_enqueue_scripts', 'put_scripts' );
function put_scripts(){
  $style_hash = hash_file('md5', get_template_directory_uri() . '/style.css');
  $maincss_hash = hash_file('md5', get_template_directory_uri() . '/public/main.css');
  $mainjs_hash = hash_file('md5', get_template_directory_uri() . '/public/main.js');

  wp_enqueue_style( "style", get_template_directory_uri() . "/style.css?v=" . $style_hash);
  wp_enqueue_style( "main", get_template_directory_uri() . "/public/main.css?v=" . $maincss_hash);
  wp_enqueue_script( "main", get_template_directory_uri() . "/public/main.js?v=" . $mainjs_hash);
}

add_filter('tablepress_use_default_css', '__return_false');
