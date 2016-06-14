<?php

trait TraitTrace {

    public static function t($c, $exit = true) {

        if(is_object($c) === true) {

            $c = json_encode($c, JSON_PRETTY_PRINT);
        }
        echo '<pre>';
        echo $c."\n";
        echo '</pre>';

        if($exit === true) {

            exit();
        }
    }
}


?>