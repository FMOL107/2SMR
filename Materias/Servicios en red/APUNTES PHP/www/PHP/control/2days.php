<!DOCTYPE html>
<html>
    <head>
        <title>Tutorial PHP</title>
    </head>
    <body>
        <?php
            $a=date("l");

            if ($a == "Monday") {
                echo "Laugh on $a, laugh for danger.";
            } elseif ($a == "Tuesday") {
                echo "Laugh on $a, kiss a stranger.";
            } elseif ($a == "Wednesday") {
                echo "Laugh on $a, laugh for a letter.";
            } elseif ($a == "Thursday") {
                echo "Laugh on $a, something better.";
            } elseif ($a == "Friday") {
                echo "Laugh on $a, laugh for sorrow.";
            } elseif ($a == "Saturday") {
                echo "Laugh on $a, joy tomorrow.";
            } else {
                echo "Today is $a";
            }

            echo "<br/><br/>";

            switch ($a) {
                case "Monday":
                    echo "Laugh on $a, laugh for danger.";
                    break;
                case "Tuesday":
                    echo "Laugh on $a, kiss a stranger.";
                    break;
                case "Wednesday":
                    echo "Laugh on $a, laugh for a letter.";
                    break;
                case "Thursday":
                    echo "Laugh on $a, something better.";
                    break;
                case "Friday":
                    echo "Laugh on $a, laugh for sorrow.";
                    break;
                case "Saturday":
                    echo "Laugh on $a, joy tomorrow.";
                    break;
                case "Sunday":
                    echo "Today is $a";
                    break;
            }
        ?>
    </body>
</html>
