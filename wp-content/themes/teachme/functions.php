<?php

use Carbon_Fields\Container;
use Carbon_Fields\Field;

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
