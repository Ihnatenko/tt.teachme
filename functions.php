<?php

// add_action( 'wp_enqueue_scripts', 'true_include_myscript' );
// function true_include_myscript() {
//     wp_enqueue_script( 'themename', get_stylesheet_directory_uri() . '/js/jquery.polaris.js', array('jquery'), null, true );
// }


add_action( 'wp_enqueue_scripts', 'put_scripts' );
function put_scripts(){
  $style_hash = hash_file('md5', get_template_directory_uri() . '/style.css');
  $main_hash = hash_file('md5', get_template_directory_uri() . '/public/main.css');

  wp_enqueue_style( "style", get_template_directory_uri() . "/style.css?v=" . $style_hash);
  wp_enqueue_style( "main", get_template_directory_uri() . "/public/main.css?v=" . $main_hash);
}

add_filter('tablepress_use_default_css', '__return_false');

// add_theme_support('custom-logo');

// function add_editor_styles() {
//     add_editor_style( '/public/css/editor.min.css' );
// }
// add_action( 'admin_init', 'add_editor_styles' );
