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
        <?php wp_footer() ?>
    </body>
</html>
