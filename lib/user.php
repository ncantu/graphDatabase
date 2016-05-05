<?php

class User {
	
	use TUser;

	public static $securityLevel      = 0;
	public static $sessionEnd         = 0;
	public static $sessionStart       = 2;
	public static $idCryptedT         = Trace::VOID;
	public static $sessionIdCryptedT  = Trace::VOID;
	public static $idCryptedS         = Trace::VOID;
	public static $sessionIdCryptedS  = Trace::VOID;
	public static $id;
	public static $sessionId;
	public static $history            = array();
}
?>