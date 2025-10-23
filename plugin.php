<?php /* Template name: Plugin table */ ?>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>TeachMe</title>
        <?php wp_head() ?>
    </head>
    <body <?php echo body_class()?>>
        
        <div class="table">
            <?php
                echo do_shortcode("[table id=1 /]");
            ?>
        </div>
        <?php wp_head() ?>
    </body>
</html>
