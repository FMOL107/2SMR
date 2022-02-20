<!DOCTYPE html>
<html>
    <head>
        <title>Tutorial PHP</title>
    </head>
    <body>
        <?php
            $a=date("F");

            if ($a=="August") {
                echo "It's ".date("F").", so it's really hot.";
            } else {
                echo "Not ".date("F").", so at least not in the peak of the heat.";
            }
        ?>
    </body>
</html>
