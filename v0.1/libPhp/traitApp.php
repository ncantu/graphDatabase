<?php

require_once dirname(__FILE__).'/traitModule.php';

trait TraitApp {

    use TraitModule;

    private static $installClass = '/classInstall.php';
    private static $dataBaseName = false;
    private static $className    = false;

    public static $dataBase      = false;

    private static $appClassList = array('SecPath', 'SecUuid');
    private static $appTraitList = array('Trace', 'Test', 'Sec', 'Path');

	public function __construct() {

	    set_time_limit(self::EXECUTION_TIME_LIMIT);

		require_once dirname(__FILE__).self::$installClass;

		self::requireFrameWorkTraitList();
		self::requireFrameWorkClassList();

		$this->requireTraitList();
		$this->requireClassList();

		Install::verif();

		self::$className = get_class($this);
		$result          = self::configure(self::$className, self::CONF_FILE_BASENAME);

		if($result === false) {

		    return false;
		}
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

	    $confFile = self::configureFileGet($mask);

	    if(is_file($confFile) === false) {

	        return true;
	    }
	    $confContent = file_get_contents($confFile);
	    $confObj     = json_decode($confContent);

	    if($confObj === false) {

	        return false;
	    }
	    if(is_object($className::$conf) === false) {

	        $className::$conf = new stdClass();
	    }
	    foreach($confObj as $k => $v) {

	       if(isset($className::$conf->$k)  === true) {

	           $className::$conf->$k  = $v;
	       }
	       elseif(isset($className::$conf::$$k) === true) {

	           $className::$conf::$$k = $v;
	       }
	       else {

	           $className::$conf->$k = $v;
	       }
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

	    foreach(self::$appTraitList as $traitName) {

	        self::requireFrameWork(Install::TRAIT_PREFIX.$traitName.Install::TRAIT_EXT);
	    }

	    return true;
	}

	final private static function requireFrameWorkClassList($mask = '*') {

	    foreach(self::$appClassList as $className) {

	        self::requireFrameWork(Install::CLASS_PREFIX.$className.Install::CLASS_EXT);
	    }
	    return true;
	}

	final private function requireTraitList() {

	    foreach($this->traitList as $traitName) {

	        require_once Install::LIB_SPECIFIC_DIR.Install::TRAIT_PREFIX.$traitName.Install::TRAIT_EXT;
	    }
		return true;
	}

	final private function requireClassList() {

	    foreach($this->classList as $className) {

	        require_once Install::LIB_SPECIFIC_DIR.Install::CLASS_PREFIX.$className.Install::CLASS_EXT;
	    }
		return true;
	}
}

?>