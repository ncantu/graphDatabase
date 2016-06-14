<?php

trait TraitTrace {

    static function t($c, $exit = true) {

        if(is_object($c) === true) {

            $c = json_encode($c, JSON_PRETTY_PRINT);
        }
        echo '<pre>';
        echo $c;
        echo '</pre>';

        if($exit === true) {

            exit();
        }
    }
}


?>