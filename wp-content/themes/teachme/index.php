<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <title>TeachMe</title>
        <?php wp_head() ?>
    </head>
    <body <?php echo body_class("main")?>>
        <h1>Головна сторінка</h1>
        <p>
            Цей приклад має дві таблиці. <br>
            Вони простилізовані однаково, але створені порізному
        </p>
        <h2>Таблиця, добавлена нативно</h2>
        <div class="table">
            <?php
                the_content();
            ?>
        </div>
        <h2>Таблиця, добавлена за допомогою плагіна</h2>
        <div class="table">
            <?php echo do_shortcode('[table id=1 /]'); ?>
        </div>


        <h2>Таблиця, добавлена за допомогою Carbon Fields</h2>
        <div class="table">
        <table>
            <tbody>
                <?php
                    $headers = carbon_get_post_meta( get_the_ID(), 'tt_header' );
                    $table_rows = carbon_get_post_meta( get_the_ID(), 'tt_table' );

                    if ( ! empty( $headers ) && is_array( $headers ) ) {
                        echo '<tr class="table-header">';
                        echo '<td class="table-header-cell table-header-cell--first-col"></td>';

                        foreach ( $headers as $header ) {
                            echo '<td class="table-header-cell">' . esc_html( $header['tt_head'] ) . '</td>';
                        }

                        echo '</tr>';
                    }

                    if ( ! empty( $table_rows ) && is_array( $table_rows ) ) {
                        foreach ( $table_rows as $row ) {
                            echo '<tr class="table-row">';
                            echo '<td class="table-row-cell table-row-cell--header">' . esc_html( $row['tt_name'] ) . '</td>';

                            if ( ! empty( $row['tt_table_row'] ) ) {
                                foreach ( $row['tt_table_row'] as $cell ) {
                                    echo '<td class="table-row-cell">' . esc_html( $cell['tt_cell'] ) . '</td>';
                                }
                            }
                            echo '</tr>';
                        }
                    }
                ?>
            </tbody>
        </table>
        </div>

        <?php wp_footer() ?>
    </body>
</html>
