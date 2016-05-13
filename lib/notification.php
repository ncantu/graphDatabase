<?php

class Notification {
	
	use TDesignCore;
	
	CONST VARC     = 'not';
	CONST RELATION = 'notifie';
	
	public $text;
	
	public function __construct($name) {
		
		$this->designCoreConstuctInit($name);
	}
	
	public function send(){
				
		return $this->designCoreConstuctFinish(__FUNCTION__);
	}
}

?>