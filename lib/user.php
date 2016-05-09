<?php

class User {
	
	use TUser;

	public static $securityLevel = 0;
	public static $idCryptedT    = Trace::VOID;
	public static $idCryptedS    = Trace::VOID;
	public static $id;
	public static $history       = array();
}
?>