<?php

trait TraitApp {

	public function __construct() {

		require_once dirname(__FILE__).'/classInstall.php';

		self::requireFrameWorkTraitList();
		self::requireFrameWorkClassList();

		$this->requireTraitList();
		$this->requireClassList();

		Install::verif();

		$confFile = Install::CONF_DIR.self::CONF_VERSION.DIRECTORY_SEPARATOR.self::CONF_FILE_BASENAME.Install::CONF_EXT;

		if(is_file($confFile) === false) {

		    return false;
		}
		$confContent = file_get_contents($confFile);
		$confObj     = json_decode($confContent);

		if($confObj === false) {

		    return false;
		}
		$this->run($confObj);
	}

	final private static function requireFrameWork($mask) {

	    foreach(glob(Install::LIB_DIR.$mask) as $file) {

	        require_once $file;
	    }
	    return true;
	}

	final private static function requireFrameWorkTraitList() {

	    self::requireFrameWork(Install::TRAIT_PREFIX.'*'.Install::TRAIT_EXT);

	    return true;
	}

	final private static function requireFrameWorkClassList() {

	    self::requireFrameWork(Install::CLASS_PREFIX.'*'.Install::CLASS_EXT);

	    return true;
	}

	final private function requireTraitList() {

	    foreach($this->traitList as $traitName){

	        require_once Install::LIB_SPECIFIC_DIR.Install::TRAIT_PREFIX.$traitName.Install::TRAIT_EXT;
	    }
		return true;
	}

	final private function requireClassList() {

	    foreach($this->classList as $className){

	        require_once Install::LIB_SPECIFIC_DIR.Install::CLASS_PREFIX.$className.Install::CLASS_EXT;
	    }
		return true;
	}
}

?>