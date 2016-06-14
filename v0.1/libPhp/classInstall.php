<?php

class Install {

	CONST SEC_DIR              = './';
	CONST LOG_DIR              = 'log/';
	CONST CONF_DIR             = 'conf/';
	CONST MODULE_LIST_DIR      = 'moduleList/';
	CONST CONF_EXT             = '.json';
    CONST LIB_DIR              = '../libPhp/';
	CONST LIB_SPECIFIC_DIR     = 'libSpecific/';
	CONST APP_EXPLOITATION_DIR = './';
	CONST CLASS_EXT            = '.php';
    CONST CLASS_PREFIX         = 'class';
	CONST TRAIT_EXT            = '.php';
    CONST TRAIT_PREFIX         = 'trait';

	public function __construct(){

		self::verif();
	}

	public static function verif() {

	    self::dirVerif(self::LOG_DIR);
	    SecPath::installVerif();
	    SecUuid::installVerif();
	}

	private static function dirVerif($dir) {

	    if(is_dir($dir) === false) {

	        mkdir($dir);
	    }
	    return true;
	}
}

?>