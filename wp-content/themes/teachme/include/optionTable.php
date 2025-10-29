<?php

add_action( 'admin_menu', 'tt_options_add_admin_menu' );
function tt_options_add_admin_menu() {
    add_menu_page(
        'Налаштування таблиці',
        'Таблиця',
        'manage_options',
        'tt_options',
        'tt_options_page_html',
        'dashicons-table-row-after',
        60 
    );
}

add_action( 'admin_init', 'tt_options_settings_init' );
function tt_options_settings_init() {
    register_setting( 'tt_options_group', 'tt_options' );

    add_settings_section(
        'tt_options_section',
        '',
        '__return_false',
        'tt_options'
    );

    add_settings_field(
        'tt_table',
        'Таблиця',
        'tt_table_field_cb',
        'tt_options',
        'tt_options_section'
    );
}

function tt_table_field_cb() {
    $options = get_option('tt_options');
    $val = isset($options['tt_table']) ? $options['tt_table'] : '';

    echo '<textarea id="tt_textarea" name="tt_options[tt_table]" style="display: none">' . esc_textarea($val) . '</textarea>';
    echo '<div id="tt_table_editor"></div>';
}

function tt_options_page_html(){
    ?>
    <div class="wrap">
      <h1>Таблиця</h1>
      <form action="options.php" method="post">
        <?php settings_fields('tt_options_group'); ?>
        <?php do_settings_sections('tt_options'); ?>
        <?php submit_button(); ?>
      </form>
    </div>
    <?php
}
