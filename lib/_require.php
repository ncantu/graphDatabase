<?php

$libDir = '../lib/';
$libExt = '.php';
$env    = 'dev';

require_once $libDir.'trace'.$libExt;

require_once $libDir.'ttrace'.$libExt;
require_once $libDir.'tmerge'.$libExt;
require_once $libDir.'ttemplate'.$libExt;
require_once $libDir.'tdesignCore'.$libExt;

require_once $libDir.'conf'.$libExt;
require_once $libDir.'score'.$libExt;
require_once $libDir.'template'.$libExt;

require_once $libDir.'attribut'.$libExt;
require_once $libDir.'attributList'.$libExt;
require_once $libDir.'element'.$libExt;
require_once $libDir.'elementList'.$libExt;

?>
