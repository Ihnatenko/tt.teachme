<?php

use Carbon_Fields\Container;
use Carbon_Fields\Field;

include_once( get_template_directory() . '/include/optionTable.php' );

add_action( 'wp_enqueue_scripts', 'put_scripts' );
function put_scripts(){
  $style_hash = hash_file('md5', get_template_directory() . '/style.css');
  $maincss_hash = hash_file('md5', get_template_directory() . '/public/main.css');
  $mainjs_hash = hash_file('md5', get_template_directory() . '/public/main.js');

  wp_enqueue_style( "style", get_template_directory_uri() . "/style.css", array(), $style_hash);
  wp_enqueue_style( "main", get_template_directory_uri() . "/public/main.css", array(), $maincss_hash);
  wp_enqueue_script( "main", get_template_directory_uri() . "/public/main.js", array(), $mainjs_hash);
}

add_filter('tablepress_use_default_css', '__return_false');

add_action( 'carbon_fields_register_fields', 'crb_attach_post_meta' );
function crb_attach_post_meta() {
Container::make( 'post_meta', 'Таблиця' )
    ->where( 'post_type', '=', 'page' )
    ->add_fields( array(
        Field::make( 'complex', 'tt_header', 'Заголовок таблиці')
          ->add_fields( array(
              Field::make( 'text', 'tt_head', 'Назва колонки')
          )),
        Field::make( 'complex', 'tt_table', 'Тіло таблиці')
          ->add_fields( array(
              Field::make( 'text', 'tt_name', 'Назва рядка' ),
              Field::make( 'complex', 'tt_table_row', 'Рядок' )
              ->add_fields( array(
                  Field::make( 'text', 'tt_cell', 'Комірка' )
              ))
          ))
    ));
  }

add_action( 'admin_enqueue_scripts', 'tt_enqueue_option_table_script' );
function tt_enqueue_option_table_script( $hook ){
  if ( 'toplevel_page_tt_options' !== $hook ) return;

  wp_register_style( 'handsontable-css', 'https://cdn.jsdelivr.net/npm/handsontable@11.1.0/dist/handsontable.min.css' );
  wp_register_script( 'handsontable', 'https://cdn.jsdelivr.net/npm/handsontable@11.1.0/dist/handsontable.min.js' );
  wp_enqueue_style( 'handsontable-css' );
  wp_enqueue_script( 'handsontable' );

  $admin_hash = hash_file('md5', get_template_directory() . '/public/adminTable.js');
  wp_enqueue_script( 'tt-admin-table', get_template_directory_uri() . '/public/adminTable.js', array('jquery','handsontable'), $admin_hash );
}
