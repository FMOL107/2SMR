<!DOCTYPE html>
<html>
    <head>
        <title>Tutorial PHP</title>
    </head>
    <body>
        <?php
            if (strpos($_SERVER['HTTP_USER_AGENT'], 'MSIE') !== FALSE) {
                echo 'Está usando Internet Explorer.<br />';
            } else {
		echo 'NO está usando Internet Explorer.<br />';
	    }
        ?>
    </body>
</html>
