<?php

final class Fw {

	CONST DIR          = '../lib/';
	CONST CLASS_EXT    = '.php';
	CONST TRAIT_EXT    = '.php';
	
	public static $classList = array('trace', 'app', 'user', 'session', 'conf', 'mock', 'score', 'template', 'attribut', 'attributList', 'element', 'elementList');
	
	final public function __construct() {
		
		$this->requireTrait('tuser');
		$this->requireTrait('ttrace');
		$this->requireTrait('trequest');
		$this->requireTrait('tmerge');
		$this->requireTrait('ttemplate');
		$this->requireTrait('tdesignCore');
				
		foreach(self::$classList as $class){
			
			$this->requireClass($class);
		}
	}
	
	final private function requireTrait($traitName) {
		
		require_once self::DIR.$traitName.self::TRAIT_EXT;
	}
	
	final private function requireClass($className) {
		
		require_once self::DIR.$className.self::CLASS_EXT;
	}
}
new Fw();

?>
