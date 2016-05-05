<?php

trait TUser {
	
	static private function userSecurityLevelupdate($add) {
	
		User::$securityLevel += $add;
		
		self::userSave();
	
		return true;
	}
	
	static private function userSave() {
	
		$vars    = get_class_vars('User');
		$varsTmp = $vars;
		
		unset($varsTmp['history']);
		
		User::$history['history'] = $varsTmp;
				
		// $vars save in graph

		return true;
	}
}

?>