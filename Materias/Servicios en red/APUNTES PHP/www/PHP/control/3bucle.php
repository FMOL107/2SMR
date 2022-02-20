<!DOCTYPE html>
<html>
    <head>
        <title>Ejercicio PHP</title>
    </head>
    <body>
        <?php
            $i = 1;

            while ($i <= 8) {
                $i++;
                echo "abc ";
                if ($i == 9) {
                    echo "abc";
                } 
            }

            echo "<br/>";
            echo "<br/>";

            $i = 0;

            do {
                if ($i == 0) {
                    echo "xyz";
                } 
                echo " xyz";
                $i++;
            } while ($i < 8);

            echo "<br/>";
            echo "<br/>";

            for ($i = 1; $i <= 9; $i++) {
                echo "$i ";
            }

            echo "<br/>";
            echo "<br/>";

            for ($i = 1; $i <= 6; $i++) {
                for ($e = 0; $e <= 4; $e++) {
                    echo "$i. Item ".chr($e + ord('A'))."<br/>";
                }
            }
        ?>
    </body>
</html>
