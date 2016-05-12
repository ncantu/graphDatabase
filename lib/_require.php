<?php

final class Fw {

	CONST DIR                  = '../lib/';
	CONST DIR_APP_EXPLOITATION = '../appExploitation/';
	CONST CLASS_EXT            = '.php';
	CONST TRAIT_EXT            = '.php';
	
	public static $classList   = array('cypher', 'trace', 'app', 'user', 'session', 'conf', 'mock', 'score', 'template', 'attribut', 'attributList', 'element', 'elementList');
	public static $traitList   = array('tcypher', 'tuser', 'trequest', 'ttrace', 'tmerge', 'ttemplate', 'tdesignCore');
	
	final public function __construct() {
		
		foreach(self::$traitList as $trait){
			
			self::requireTrait($trait);
		}
		foreach(self::$classList as $class){
			
			self::requireClass($class);
		}
	}
	
	final private static function requireTrait($traitName) {
		
		require_once self::DIR.$traitName.self::TRAIT_EXT;
	}
	
	final private static function requireClass($className) {
		
		require_once self::DIR.$className.self::CLASS_EXT;
	}
	
	final public static function requireAppExploitation($appName) {
		
		require_once self::DIR_APP_EXPLOITATION.$appName.self::CLASS_EXT;
	}
}
new Fw();

?>
