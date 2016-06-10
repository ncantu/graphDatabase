<?php

trait TraitTrace {

    static function t($c, $exit = true) {

        echo $c;

        if($exit === true) exit();
    }
}


?>