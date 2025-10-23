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
                the_content();
            ?>
        </div>
        <?php wp_head() ?>
    </body>
</html>
