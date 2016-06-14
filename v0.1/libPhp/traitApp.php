<?php

trait TraitApp {

    use TraitModule;

    private static $frameWork    = 'Framework';
    private static $installClass = '/classInstall.php';
    private static $dataBaseName = false;

    public static $dataBase      = false;

	public function __construct() {

	    set_time_limit(self::EXECUTION_TIME_LIMIT);

		require_once dirname(__FILE__).self::$installClass;

		self::requireFrameWorkTraitList();
		self::requireFrameWorkClassList();

		$this->requireTraitList();
		$this->requireClassList();

		Install::verif();

		self::configure(self::$frameWork, self::CONF_FILE_BASENAME);
        self::moduleListLoad();

        if(self::$dataBaseName !== false) {

            self::dataBaseConnect();
        }
		$this->run();
	}

	final private static function dataBaseConnect() {

	    $dataBaseName   = self::$dataBaseName;
	    self::$database = new $dataBaseName();

	    self::$dataBaseName->connect();

	    return true;
	}

	final private static function configureFileGet($mask) {

	    return Install::CONF_DIR.self::CONF_VERSION.DIRECTORY_SEPARATOR.$mask.Install::CONF_EXT;
	}

	final private static function configure($className, $mask) {

	    $confFile = self::configureFileGet($mask.$confDetailList->confName);

	    $confContent = file_get_contents($confFile);
	    $confObj     = json_decode($confContent);

	    if($confObj === false) {

	        return false;
	    }
	    if(is_object($$className::$conf) === false) {

	        $$className::$conf = new stdClass();
	    }
	    foreach($confObj as $k => $v) {

	       if(isset($$className::$conf->$k)  === true) $$className::$conf->$k  = $v;
	       if(isset($$className::$conf::$$k) === true) $$className::$conf::$$k = $v;
	    }
	    return true;
	}

	final private static function requireFrameWork($mask) {

	    foreach(glob(Install::LIB_DIR.$mask) as $file) {

	        require_once $file;
	    }
	    return true;
	}

	final private static function requireFrameWorkTraitList($mask = '*') {

	    self::requireFrameWork(Install::TRAIT_PREFIX.$mask.Install::TRAIT_EXT);

	    return true;
	}

	final private static function requireFrameWorkClassList($mask = '*') {

	    self::requireFrameWork(Install::CLASS_PREFIX.$mask.Install::CLASS_EXT);

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