<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>TeachMe</title>
        <?php wp_head() ?>
    </head>
    <body class="<?php ?>">
        <?php
            echo do_shortcode("[table id=1 /]");
        ?>
        <?php wp_head() ?>
    </body>
</html>
