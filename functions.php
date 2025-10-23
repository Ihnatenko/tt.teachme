<?php

// add_action( 'wp_enqueue_scripts', 'true_include_myscript' );
// function true_include_myscript() {
//     wp_enqueue_script( 'themename', get_stylesheet_directory_uri() . '/js/jquery.polaris.js', array('jquery'), null, true );
// }


add_action( 'wp_enqueue_scripts', 'put_scripts' );
function put_scripts(){
  $icon_hash = hash_file('md5', get_template_directory_uri() . '/style.css');
}

// add_theme_support('custom-logo');

// function add_editor_styles() {
//     add_editor_style( '/public/css/editor.min.css' );
// }
// add_action( 'admin_init', 'add_editor_styles' );
