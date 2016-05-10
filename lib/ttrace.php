<?php

trait TTrace {
	
	use TUser;
	
	private $traceSentence                             = Trace::VOID;
	private $traceLog                                  = Trace::VOID;
	private $cypherLog                                 = Trace::VOID;
	private $returnValue;
	private $errorLevelInfo;
	private $errorInfoLevel;
	private $errorInfo;
	private $exitFunc;
	private $stdoutFunc;
	private $errVerbose;
	private $traceFileFunc;
	private $t_time;
	private $t_u;
	private $t_c;
	private $t_e;
	private $t_i;
	private $t_O;
	private $t_SERVER_REQUEST_TIME_FLOAT;
	private $t_SERVER_REQUEST_TIME;
	private $tdy_z;
	private $ty_Y;
	private $tmon_m;
	private $tdm_d;
	private $th_H;
	private $tmin_i;
	private $ts_s;
	private $code_major;
	private $code_minor;
	private $l_baktrace;
	private $code_level;
	private $req_SERVER_SCRIPT_NAME;
	private $req_SERVER_REQUEST_URI;
	private $req_SERVER_QUERY_STRING;
	private $req_SERVER_REQUEST_METHOD;
	private $req_SERVER_SERVER_PROTOCOL;
	private $req_SERVER_GATEWAY_INTERFACE;
	private $req_SERVER_REQUEST_SCHEME;
	private $req_SERVER_SCRIPT_FILENAME;
	private $req_SERVER_SERVER_PORT;
	private $req_SERVER_SERVER_ADDR;
	private $req_SERVER_HTTP_ACCEPT_ENCODING;
	private $req_SERVER_HTTP_UPGRADE_INSECURE_REQUESTS;
	private $req_SERVER_HTTP_ACCEPT;
	private $req_SERVER_HTTP_CONNECTION;
	private $req_SERVER_HTTP_HOST;
	private $req_SERVER_FCGI_ROLE;
	private $req_SERVER_PHP_SELF;
	private $req_REQUEST_JSON;
	private $req_cpu;
	private $req_memory;
	private $req_diskSpace;
	private $req_pid;
	private $i_name;
	private $c_name;
	private $m_name;
	private $l_name;
	private $r_json;
	private $app_name;
	private $app_id;
	private $app_json;
	private $app_ttl;
	private $app_idCryptedT;
	private $app_idCryptedS;
	private $hApp_SERVER_PATH;
	private $hApp_SERVER_SYSTEMROOT;
	private $hApp_SERVER_COMSPEC;
	private $hApp_SERVER_PATHEXT;
	private $hApp_SERVER_WINDIR;
	private $hApp_SERVER_SYSTEMDRIVE;
	private $hApp_SERVER_TEMP;
	private $hApp_SERVER_TMP;
	private $hApp_SERVER_QT_PLUGIN_PATH;
	private $hApp_SERVER_PHPRC;
	private $hApp_SERVER_PHP_FCGI_MAX_REQUESTS;
	private $hApp_SERVER__FCGI_SHUTDOWN_EVENT_;
	private $hApp_SERVER_DOCUMENT_ROOT;
	private $hApp_SERVER_SERVER_NAME;
	private $hApp_SERVER_CONTEXT_PREFIX;
	private $hApp_SERVER_SERVER_SOFTWARE;
	private $hApp_SERVER_SERVER_SIGNATURE;
	private $hApp_SERVER_CONTEXT_DOCUMENT_ROOT;
	private $hApp_SERVER_SystemRoot;
	private $hApp_json;
	private $env_name;
	private $env_SERVER_SERVER_ADMIN;
	private $cf_json;
	private $u_securityLevel;
	private $u_idCryptedT;
	private $u_idCryptedS;
	private $u_id;
	private $u_json;
	private $hClient_SERVER_REMOTE_PORT;
	private $hClient_SERVER_REMOTE_ADDR;
	private $hClient_SERVER_HTTP_USER_AGENT;
	private $ss_id;
	private $ss_startTime;
	private $ss_endTime;
	private $ss_SERVER_HTTP_COOKIE;
	private $ss_SESSION_JSON;
	private $ss_idCryptedT;
	private $ss_idCryptedS;
	private $ss_json;
	private $ss_userId;
	private $ss_appId;
	private $ssClient_userIdCryptedS;
	private $ssClient_userIdCryptedT;
	private $ssApp_appIdCryptedS;
	private $ssApp_appIdCryptedT;
	private $mock_userId;
	private $mock_appName;
	private $mock_mockName;
	private $mock_json;
	
	private function traceVoid($opt = ''){
		
		return;
	}
	
	private function traceStdout(){
		
		echo $this->traceSentence;
		
		return true;
	}
	
	private function traceExit(){
	
		exit();
	}
	
	private function traceSysVar($sysVar) {
		
		$sysVar = str_replace("\\", "\\\\", json_encode($sysVar));
		
		return str_replace("'", "\'", $sysVar);
	}
	
	private function traceSysVarItem($sysVar, $itemName) {
		
		if(isset($sysVar[$itemName]) === false) return Trace::VOID;
		
		return $sysVar[$itemName];
	}
	
	private function traceClassExport($className) {
		
		$classVar = str_replace("\\", "\\\\", json_encode(get_class_vars($className)));
		
		return str_replace("'", "\'", $classVar);
	}
	
	private function traceSentence($description, $lineTag = Trace::LINE_TAG, $methodTag = Trace::METHOD_TAG, $classTag = Trace::CLASS_TAG, $instanceTag = Trace::INSTANCE_TAG) {
		
		$code = $description->major->code.'-'.$description->secondary->code;
		
		switch($this->errVerbose){
		
			case Trace::ERR_VERBOSE_FULL:
				$description->major->short->msg     .= ' '.$description->major->full->msg;
				$description->secondary->short->msg .= ' '.$description->secondary->full->msg;
				break;
			default: break;
		}
		$this->traceSentence .= ucfirst(strtolower($this->errorInfoLevel)).' '.$code.': '.$description->major->short->msg;
		$this->traceSentence .= ' '.$description->secondary->short->msg;
		$this->traceSentence  = str_replace($lineTag, $line, $this->traceSentence);
		$this->traceSentence  = str_replace($methodTag, $method, $this->traceSentence);
		$this->traceSentence  = str_replace($classTag, $class, $this->traceSentence);
		$this->traceSentence  = str_replace($instanceTag, $instance, $this->traceSentence);
		$this->traceSentence .= $sep;
		
		return true;
	}
	
	private function traceTime() {
		
		$this->t_time                      = time();
		$this->t_u                         = date('u', $traceLog->time->time);
		$this->t_c                         = date('c', $traceLog->time->time);
		$this->t_e                         = date('e', $traceLog->time->time);
		$this->t_i                         = date('I', $traceLog->time->time);
		$this->t_O                         = date('O', $traceLog->time->time);
		$this->t_SERVER_REQUEST_TIME_FLOAT = $this->traceSysVarItem($_SERVER, 'REQUEST_TIME_FLOAT');
		$this->t_SERVER_REQUEST_TIME_FLOAT = $this->traceSysVarItem($_SERVER, 'REQUEST_TIME');
		$this->tdy_z                       = date('z', $traceLog->time->time);
		$this->ty_Y                        = date('Y', $traceLog->time->time);
		$this->tmon_m                      = date('m', $traceLog->time->time);
		$this->tdm_d                       = date('d', $traceLog->time->time);
		$this->th_H                        = date('H', $traceLog->time->time);
		$this->tmin_i                      = date('i', $traceLog->time->time);
		$this->ts_s                        = date('s', $traceLog->time->time);
		
		return true;
	}
	
	private function traceCode() {
		
		$this->code_major = $description->major->code;
		$this->code_minor = $description->secondary->code;
		$this->code_level = $errorInfoLevel;
		$this->i_name     = $line;
		$this->c_name     = $class;
		$this->m_name     = $method;
		$this->l_name     = $line;
		$this->r_json     = get_class($this);
		$this->l_baktrace = debug_backtrace(DEBUG_BACKTRACE_PROVIDE_OBJECT, 10);
		
		return true;
	}
	
	public function traceRequest() {
		
		$this->req_SERVER_SCRIPT_NAME                    = $this->traceSysVarItem($_SERVER, 'SCRIPT_NAME');
		$this->req_SERVER_REQUEST_URI                    = $this->traceSysVarItem($_SERVER, 'REQUEST_URI');
		$this->req_SERVER_QUERY_STRING                   = $this->traceSysVarItem($_SERVER, 'QUERY_STRING');
		$this->req_SERVER_REQUEST_METHOD                 = $this->traceSysVarItem($_SERVER, 'REQUEST_METHOD');
		$this->req_SERVER_SERVER_PROTOCOL                = $this->traceSysVarItem($_SERVER, 'SERVER_PROTOCOL');
		$this->req_SERVER_GATEWAY_INTERFACE              = $this->traceSysVarItem($_SERVER, 'GATEWAY_INTERFACE');
		$this->req_SERVER_REQUEST_SCHEME                 = $this->traceSysVarItem($_SERVER, 'REQUEST_SCHEME');
		$this->req_SERVER_SCRIPT_FILENAME                = $this->traceSysVarItem($_SERVER, 'SCRIPT_FILENAME');
		$this->req_SERVER_SERVER_PORT                    = $this->traceSysVarItem($_SERVER, 'SERVER_PORT');
		$this->req_SERVER_SERVER_ADDR                    = $this->traceSysVarItem($_SERVER, 'SERVER_ADDR');
		$this->req_SERVER_HTTP_ACCEPT_ENCODING           = $this->traceSysVarItem($_SERVER, 'HTTP_ACCEPT_ENCODING');
		$this->req_SERVER_HTTP_UPGRADE_INSECURE_REQUESTS = $this->traceSysVarItem($_SERVER, 'HTTP_UPGRADE_INSECURE_REQUESTS');
		$this->req_SERVER_HTTP_ACCEPT                    = $this->traceSysVarItem($_SERVER, 'HTTP_ACCEPT');
		$this->req_SERVER_HTTP_CONNECTION                = $this->traceSysVarItem($_SERVER, 'HTTP_CONNECTION');
		$this->req_SERVER_HTTP_HOST                      = $this->traceSysVarItem($_SERVER, 'HTTP_HOST');
		$this->req_SERVER_FCGI_ROLE                      = $this->traceSysVarItem($_SERVER, 'FCGI_ROLE');
		$this->req_SERVER_PHP_SELF                       = $this->traceSysVarItem($_SERVER, 'PHP_SELF');
		$this->req_REQUEST_JSON                          = $this->traceSysVar($_REQUEST);
		$this->req_cpu                                   = sys_getloadavg()[0];
		$this->req_memory                                = memory_get_usage(true);
		$this->req_diskSpace                             = disk_free_space('.');
		$this->req_pid                                   = getmypid();
		
		return true;
	}
	
	private function traceApp() {
		
		$this->app_name       = App::$name;
		$this->app_id         = App::$id;
		$this->app_ttl 	      = App::$ttl;
		$this->app_idCryptedT = App::$idCryptedST;
		$this->app_idCryptedS = App::$idCryptedS;
		$this->app_json       = $this->traceClassExport('App');
		
		return true;
	}
	
	private function traceHostApp() {
		
		$this->hApp_SERVER_PATH                  = $this->traceSysVarItem($_SERVER, 'PATH');
		$this->hApp_SERVER_SYSTEMROOT            = $this->traceSysVarItem($_SERVER, 'SYSTEMROOT');
		$this->hApp_SERVER_COMSPEC               = $this->traceSysVarItem($_SERVER, 'COMSPEC');
		$this->hApp_SERVER_PATHEXT               = $this->traceSysVarItem($_SERVER, 'PATHEXT');
		$this->hApp_SERVER_WINDIR                = $this->traceSysVarItem($_SERVER, 'WINDIR');
		$this->hApp_SERVER_SYSTEMDRIVE           = $this->traceSysVarItem($_SERVER, 'SYSTEMDRIVE');
		$this->hApp_SERVER_TEMP                  = $this->traceSysVarItem($_SERVER, 'TEMP');
		$this->hApp_SERVER_TMP                   = $this->traceSysVarItem($_SERVER, 'TMP');
		$this->hApp_SERVER_QT_PLUGIN_PATH        = $this->traceSysVarItem($_SERVER, 'QT_PLUGIN_PATH');
		$this->hApp_SERVER_PHPRC                 = $this->traceSysVarItem($_SERVER, 'PHPRC');
		$this->hApp_SERVER_PHP_FCGI_MAX_REQUESTS = $this->traceSysVarItem($_SERVER, 'PHP_FCGI_MAX_REQUESTS');
		$this->hApp_SERVER__FCGI_SHUTDOWN_EVENT_ = $this->traceSysVarItem($_SERVER, '_FCGI_SHUTDOWN_EVENT_');
		$this->hApp_SERVER_DOCUMENT_ROOT         = $this->traceSysVarItem($_SERVER, 'DOCUMENT_ROOT');
		$this->hApp_SERVER_SERVER_NAME           = $this->traceSysVarItem($_SERVER, 'SERVER_NAME');
		$this->hApp_SERVER_CONTEXT_PREFIX        = $this->traceSysVarItem($_SERVER, 'CONTEXT_PREFIX');
		$this->hApp_SERVER_SERVER_SOFTWARE       = $this->traceSysVarItem($_SERVER, 'SERVER_SOFTWARE');
		$this->hApp_SERVER_SERVER_SIGNATURE      = $this->traceSysVarItem($_SERVER, 'SERVER_SIGNATURE');
		$this->hApp_SERVER_CONTEXT_DOCUMENT_ROOT = $this->traceSysVarItem($_SERVER, 'CONTEXT_DOCUMENT_ROOT');
		$this->hApp_SERVER_SystemRoot            = $this->traceSysVarItem($_SERVER, 'SystemRoot');
		$this->hApp_json                         = $this->traceSysVar($_SERVER);
		
		return true;
	}
	
	private function traceEnv() {
		
		$this->env_name                = Conf::$envName;
		$this->env_SERVER_SERVER_ADMIN = $this->traceSysVarItem($_SERVER, 'SERVER_ADMIN');
		
		return true;
	}
	
	private function traceConf() {
		
		$this->cf_json = $this->traceClassExport('Conf');
		
		return true;
	}
	
	private function traceUser() {
		
		$this->u_securityLevel = User::$securityLevel;
		$this->u_idCryptedT    = User::$idCryptedT;
		$this->u_idCryptedS    = User::$idCryptedS;
		$this->u_id            = User::$id;
		$this->u_json          = $this->traceClassExport('User');
		
		return true;
	}
	
	private function traceHostClient() {
		
		$this->hClient_SERVER_REMOTE_PORT     = $this->traceSysVarItem($_SERVER, 'REMOTE_PORT');
		$this->hClient_SERVER_REMOTE_ADDR     = $this->traceSysVarItem($_SERVER, 'REMOTE_ADDR');
		$this->hClient_SERVER_HTTP_USER_AGENT = $this->traceSysVarItem($_SERVER, 'HTTP_USER_AGENT');
		
		return true;
	}
	
	private function traceSession() {
		
		$this->ss_id                 = Session::$id;
		$this->ss_startTime          = Session::$startTime;
		$this->ss_endTime            = Session::$endTime;
		$this->ss_SERVER_HTTP_COOKIE = $this->traceSysVarItem($_SERVER, 'HTTP_COOKIE');
		
		if(isset($_SESSION) === true) $this->ss_SESSION_JSON = $this->traceSysVar($_SESSION);
		
		$this->ss_idCryptedT           = Session::$idCryptedT;
		$this->ss_idCryptedS           = Session::$idCryptedS;
		$this->ss_json                 = $this->traceClassExport('Session');
		$this->ss_userId               = Session::$userId;
		$this->ss_appId				   = Session::$appId;
		$this->ssClient_userIdCryptedS = User::$idCryptedS;
		$this->ssClient_userIdCryptedT = User::$idCryptedT;
		$this->ssApp_appIdCryptedS     = App::$idCryptedS;
		$this->ssApp_appIdCryptedT     = App::$idCryptedT;
		
		return true;
	}
	
	private function traceMock() {
		
		$this->mock_userId   = Mock::$userId;
		$this->mock_appName  = Mock::$appName;
		$this->mock_mockName = Mock::$name;
		$this->mock_json     = $this->traceClassExport('Mock');
		
		return true;
	}
	
	private function traceShort() {
		
		$this->line             = Trace::VOID;
		$this->method           = Trace::VOID;
		$this->class            = Trace::VOID;
		$this->instance         = Trace::VOID;
		$this->varJson          = Trace::VOID;
		$this->app_json         = Trace::VOID;
		$this->req_REQUEST_JSON = Trace::VOID;
		$this->u_json	        = Trace::VOID;
		$this->ss_json	        = Trace::VOID;
		$this->ss_SESSION_JSON	= Trace::VOID;
		$this->cf_json 	        = Trace::VOID;
		$this->l_baktrace       = Trace::VOID;
		
		return true;
	}
	
	private function traceLogOptimize() {
		
		switch($this->errVerbose){
		
			case Trace::ERR_VERBOSE_SHORT:
				$this->traceShort();
				break;
			case Trace::ERR_VERBOSE_FULL:
		
				switch ($this->errorInfoLevel) {
					case 'notice':
						$this->line             = Trace::VOID;
						$this->method           = Trace::VOID;
						$this->class            = Trace::VOID;
						$this->instance         = Trace::VOID;
						$this->varJson          = Trace::VOID;
						$this->app_json         = Trace::VOID;
						$this->req_REQUEST_JSON = Trace::VOID;
						$this->u_json	        = Trace::VOID;
						$this->ss_json	        = Trace::VOID;
						$this->ss_SESSION_JSON	= Trace::VOID;
						$this->cf_json 	        = Trace::VOID;
						$this->l_baktrace       = Trace::VOID;
						$this->l_baktrace = debug_backtrace(DEBUG_BACKTRACE_PROVIDE_OBJECT, 3);
						break;
					case 'warning':
						$this->app_json         = Trace::VOID;
						$this->req_REQUEST_JSON = Trace::VOID;
						$this->u_json	        = Trace::VOID;
						$this->ss_json	        = Trace::VOID;
						$this->ss_SESSION_JSON	= Trace::VOID;
						$this->l_baktrace       = Trace::VOID;
						$this->l_baktrace = debug_backtrace(DEBUG_BACKTRACE_PROVIDE_OBJECT, 5);
						break;
					case 'fatal':
						$this->l_baktrace = debug_backtrace(DEBUG_BACKTRACE_PROVIDE_OBJECT, 0);
						break;
					default:
						$this->traceShort();
						break;
				}
				break;
			default: break;
		}
		$toTrace = $this;
		
		unset($toTrace->traceLog);
		unset($toTrace->cypherLog);
		
		return $toTrace;
	}
	
	
	private function traceLog($line, $method, $class, $var = Trace::VOID, $sep = Trace::SEP, $lineTag = Trace::LINE_TAG,
			$methodTag = Trace::METHOD_TAG, $classTag = Trace::CLASS_TAG, $instanceTag = Trace::INSTANCE_TAG,
			$dateFormat = Trace::DATE_FORMAT) {
		
		$description         = $this->errorInfo->description;
		$this->traceSentence = '';
		$this->traceLog      = '';
				
	    $this->traceSentence($description, $lineTag, $methodTag, $classTag, $instanceTag);
		$this->traceTime();
		$this->traceCode();
		$this->traceRequest();
		$this->traceApp();
		$this->traceHostApp();
		$this->traceEnv();
		$this->traceConf();
		$this->traceUser();
		$this->traceHostClient();
		$this->traceSession();
		$this->traceMock();
		
		$toTrace         = $this->traceLogOptimize();
		$this->traceLog  = json_encode($toTrace);
		$this->traceLog  = str_replace($sep, Trace::SEP_REPLACE, $this->traceLog);
		$this->traceLog .= $sep;
		$this->cypherLog = file_get_contents(Trace::CYPHER_TEMPLATE);
		
		foreach($toTrace as $k => $v) {
			
			$this->cypherLog = str_replace('{'.$k.'}', $v, $this->cypherLog);
		}
		return true;
	}
	
	private function traceFile($fileSeparator = Trace::FILE_SEPARATPOR, $fileExt = Trace::FILE_EXT, $fileWriteMode = Trace::FILE_WRITE_MODE) {
				
		switch(Mock::$mock) {
			case false: $prefix = '';
			 break;
			default: $prefix = Mock::$mock->mockState.$fileSeparator;
		 	 break;
		}
		$userId   = filter_var(User::$idCryptedT, FILTER_SANITIZE_STRING, FILTER_FLAG_STRIP_HIGH);
		$userId   = str_replace('/', 'I', $userId);
		$userId   = str_replace('\\', 'I', $userId);
		$userId   = str_replace("'", 'I', $userId);
		$filename = Trace::DIR.$prefix.date(Trace::FILE_DATE_FORMAT, time()).$fileSeparator.$userId.$fileExt;
		$fp       = fopen($filename, $fileWriteMode);
		
		if($fp === false) return false;
		
		fwrite($fp, $this->traceLog);
		
		return fclose($fp);
	}
	
	private function traceTestFatal($line, $method, $class, $result, $funcVoid = Trace::VOID_FUNC,
			$traceExitFunc = Trace::EXIT_FUNC, $traceStdoutFunc = Trace::STDOUT_FUNC, $errorVerboseShortSuffix = Trace::ERR_VERBOSE_SHORT_SUFFIX,
			$errorVerboseFullSuffix = Trace::ERR_VERBOSE_FULL_SUFFIX,
			$traceFileFunc = Trace::FILE_FUNC, $okState = Trace::CODE_INFO) {
		
		if($result === false) return $this->t(Trace::CODE_FATAL, $line, $method, $class, $instance, $result, $funcVoid, $traceExitFunc, $traceStdoutFunc, $errorVerboseShortSuffix, $errorVerboseFullSuffix, $traceFileFunc);
		
		return $this->t($okState, $line, $method, $class, $result, $funcVoid, $traceExitFunc, $traceStdoutFunc, $errorVerboseShortSuffix, $errorVerboseFullSuffix, $traceFileFunc);
	}
	
	private function traceTestFatalEnd($line, $method, $class, $var = Trace::VOID, $funcVoid = Trace::VOID_FUNC,
			$traceExitFunc = Trace::EXIT_FUNC, $traceStdoutFunc = Trace::STDOUT_FUNC, $errorVerboseShortSuffix = Trace::ERR_VERBOSE_SHORT_SUFFIX,
			$errorVerboseFullSuffix = Trace::ERR_VERBOSE_FULL_SUFFIX,
			$traceFileFunc = Trace::FILE_FUNC) {
		
		return $this->traceTestFatal($result, $line, $method, $class, $var, $funcVoid,
			$traceExitFunc, $traceStdoutFunc, $errorVerboseShortSuffix,
			$errorVerboseFullSuffix,
			$traceFileFunc, Trace::CODE_END_OK);
	}
	
	private function traceTestWarning($line, $method, $class, $var = Trace::VOID, $funcVoid = Trace::VOID_FUNC,
			$traceExitFunc = Trace::EXIT_FUNC, $traceStdoutFunc = Trace::STDOUT_FUNC, $errorVerboseShortSuffix = Trace::ERR_VERBOSE_SHORT_SUFFIX,
			$errorVerboseFullSuffix = Trace::ERR_VERBOSE_FULL_SUFFIX,
			$traceFileFunc = Trace::FILE_FUNC) {
		
		if($result === false) return $this->t(Trace::CODE_Warning, $line, $method, $class, $var, $funcVoid, $traceExitFunc, $traceStdoutFunc, $errorVerboseShortSuffix, $errorVerboseFullSuffix, $traceFileFunc);
		
		return $this->t(Trace::CODE_END_OK, $line, $method, $class, $instance, $var, $funcVoid, $traceExitFunc, $traceStdoutFunc, $errorVerboseShortSuffix, $errorVerboseFullSuffix, $traceFileFunc);
	}
	
	private function traceStart($line, $method, $class, $var = Trace::VOID, $funcVoid = Trace::VOID_FUNC,
			$traceExitFunc = Trace::EXIT_FUNC, $traceStdoutFunc = Trace::STDOUT_FUNC, $errorVerboseShortSuffix = Trace::ERR_VERBOSE_SHORT_SUFFIX,
			$errorVerboseFullSuffix = Trace::ERR_VERBOSE_FULL_SUFFIX,
			$traceFileFunc = Trace::FILE_FUNC){
		
		return $this->t(Trace::CODE_START, $line, $method, $class, $var, $funcVoid, $traceExitFunc, $traceStdoutFunc, $errorVerboseShortSuffix, $errorVerboseFullSuffix, $traceFileFunc);
	}
	
	public static function traceStartStatic($line, $method, $class, $var = Trace::VOID, $funcVoid = Trace::VOID_FUNC,
			$traceExitFunc = Trace::EXIT_FUNC, $traceStdoutFunc = Trace::STDOUT_FUNC, $errorVerboseShortSuffix = Trace::ERR_VERBOSE_SHORT_SUFFIX,
			$errorVerboseFullSuffix = Trace::ERR_VERBOSE_FULL_SUFFIX,
			$traceFileFunc = Trace::FILE_FUNC){
		
		$trace = new Trace();
	
		return $trace->t(Trace::CODE_START, $line, $method, $class, $var, $funcVoid, $traceExitFunc, $traceStdoutFunc, $errorVerboseShortSuffix, $errorVerboseFullSuffix, $traceFileFunc);
	}
	
	private function traceStartparam($line, $method, $class, $var = Trace::VOID, $funcVoid = Trace::VOID_FUNC,
			$traceExitFunc = Trace::EXIT_FUNC, $traceStdoutFunc = Trace::STDOUT_FUNC, $errorVerboseShortSuffix = Trace::ERR_VERBOSE_SHORT_SUFFIX,
			$errorVerboseFullSuffix = Trace::ERR_VERBOSE_FULL_SUFFIX,
			$traceFileFunc = Trace::FILE_FUNC){
	
		return $this->t(Trace::CODE_START_PARAM, $line, $method, $class, $var, $funcVoid, $traceExitFunc, $traceStdoutFunc, $errorVerboseShortSuffix, $errorVerboseFullSuffix, $traceFileFunc);
	}
	
	private function traceEndOK($line, $method, $class, $var = Trace::VOID, $funcVoid = Trace::VOID_FUNC,
			$traceExitFunc = Trace::EXIT_FUNC, $traceStdoutFunc = Trace::STDOUT_FUNC, $errorVerboseShortSuffix = Trace::ERR_VERBOSE_SHORT_SUFFIX,
			$errorVerboseFullSuffix = Trace::ERR_VERBOSE_FULL_SUFFIX,
			$traceFileFunc = Trace::FILE_FUNC){
	
		return $this->t(Trace::CODE_END_OK, $line, $method, $class, $var, $funcVoid, $traceExitFunc, $traceStdoutFunc, $errorVerboseShortSuffix, $errorVerboseFullSuffix, $traceFileFunc);
	}
	
	public static function traceEndOKStatic($line, $method, $class, $var = Trace::VOID, $funcVoid = Trace::VOID_FUNC,
			$traceExitFunc = Trace::EXIT_FUNC, $traceStdoutFunc = Trace::STDOUT_FUNC, $errorVerboseShortSuffix = Trace::ERR_VERBOSE_SHORT_SUFFIX,
			$errorVerboseFullSuffix = Trace::ERR_VERBOSE_FULL_SUFFIX,
			$traceFileFunc = Trace::FILE_FUNC){
	
		$trace = new Trace();
	
		return $trace->t(Trace::CODE_END_OK, $line, $method, $class, $var, $funcVoid, $traceExitFunc, $traceStdoutFunc, $errorVerboseShortSuffix, $errorVerboseFullSuffix, $traceFileFunc);
	}
	
	private function traceEndValue($line, $method, $class, $var = Trace::VOID, $funcVoid = Trace::VOID_FUNC,
			$traceExitFunc = Trace::EXIT_FUNC, $traceStdoutFunc = Trace::STDOUT_FUNC, $errorVerboseShortSuffix = Trace::ERR_VERBOSE_SHORT_SUFFIX,
			$errorVerboseFullSuffix = Trace::ERR_VERBOSE_FULL_SUFFIX,
			$traceFileFunc = Trace::FILE_FUNC){
	
		return $this->t(Trace::CODE_END_VALUE, $line, $method, $class, $var, $funcVoid, $traceExitFunc, $traceStdoutFunc, $errorVerboseShortSuffix, $errorVerboseFullSuffix, $traceFileFunc);
	}
	
	public static function traceEndValueStatic($line, $method, $class, $var = Trace::VOID, $funcVoid = Trace::VOID_FUNC,
			$traceExitFunc = Trace::EXIT_FUNC, $traceStdoutFunc = Trace::STDOUT_FUNC, $errorVerboseShortSuffix = Trace::ERR_VERBOSE_SHORT_SUFFIX,
			$errorVerboseFullSuffix = Trace::ERR_VERBOSE_FULL_SUFFIX,
			$traceFileFunc = Trace::FILE_FUNC){
	
		$trace = new Trace();
	
		return $trace->t(Trace::CODE_END_VALUE, $line, $method, $class, $var, $funcVoid, $traceExitFunc, $traceStdoutFunc, $errorVerboseShortSuffix, $errorVerboseFullSuffix, $traceFileFunc);
	}
	
	private function traceFatal($line, $method, $class, $var = Trace::VOID, $funcVoid = Trace::VOID_FUNC,
			$traceExitFunc = Trace::EXIT_FUNC, $traceStdoutFunc = Trace::STDOUT_FUNC, $errorVerboseShortSuffix = Trace::ERR_VERBOSE_SHORT_SUFFIX,
			$errorVerboseFullSuffix = Trace::ERR_VERBOSE_FULL_SUFFIX,
			$traceFileFunc = Trace::FILE_FUNC){
	
		return $this->t(Trace::CODE_FATAL, $line, $method, $class, $var, $funcVoid, $traceExitFunc, $traceStdoutFunc, $errorVerboseShortSuffix, $errorVerboseFullSuffix, $traceFileFunc);
	}
	
	private function traceWarning($line, $method, $class, $var = Trace::VOID, $funcVoid = Trace::VOID_FUNC,
			$traceExitFunc = Trace::EXIT_FUNC, $traceStdoutFunc = Trace::STDOUT_FUNC, $errorVerboseShortSuffix = Trace::ERR_VERBOSE_SHORT_SUFFIX,
			$errorVerboseFullSuffix = Trace::ERR_VERBOSE_FULL_SUFFIX,
			$traceFileFunc = Trace::FILE_FUNC){
	
		return $this->t(Trace::CODE_WARNING, $line, $method, $class, $var, $funcVoid, $traceExitFunc, $traceStdoutFunc, $errorVerboseShortSuffix, $errorVerboseFullSuffix, $traceFileFunc);
	}
	
	private function traceInfo($line, $method, $class, $var = Trace::VOID, $funcVoid = Trace::VOID_FUNC,
			$traceExitFunc = Trace::EXIT_FUNC, $traceStdoutFunc = Trace::STDOUT_FUNC, $errorVerboseShortSuffix = Trace::ERR_VERBOSE_SHORT_SUFFIX,
			$errorVerboseFullSuffix = Trace::ERR_VERBOSE_FULL_SUFFIX,
			$traceFileFunc = Trace::FILE_FUNC){
	
		return $this->t(Trace::CODE_INFO, $line, $method, $class, $var, $funcVoid, $traceExitFunc, $traceStdoutFunc, $errorVerboseShortSuffix, $errorVerboseFullSuffix, $traceFileFunc);
	}
	
	public static function traceInfoStatic($line, $method, $class, $var = Trace::VOID, $funcVoid = Trace::VOID_FUNC,
			$traceExitFunc = Trace::EXIT_FUNC, $traceStdoutFunc = Trace::STDOUT_FUNC, $errorVerboseShortSuffix = Trace::ERR_VERBOSE_SHORT_SUFFIX,
			$errorVerboseFullSuffix = Trace::ERR_VERBOSE_FULL_SUFFIX,
			$traceFileFunc = Trace::FILE_FUNC){

		$trace = new Trace();
			
		return $trace->t(Trace::CODE_INFO, $line, $method, $class, $var, $funcVoid, $traceExitFunc, $traceStdoutFunc, $errorVerboseShortSuffix, $errorVerboseFullSuffix, $traceFileFunc);
	}
	
	private function traceNotice($line, $method, $class, $var = Trace::VOID, $funcVoid = Trace::VOID_FUNC,
			$traceExitFunc = Trace::EXIT_FUNC, $traceStdoutFunc = Trace::STDOUT_FUNC, $errorVerboseShortSuffix = Trace::ERR_VERBOSE_SHORT_SUFFIX,
			$errorVerboseFullSuffix = Trace::ERR_VERBOSE_FULL_SUFFIX,
			$traceFileFunc = Trace::FILE_FUNC){
	
		return $this->t(Trace::CODE_NOTICE, $line, $method, $class, $var, $funcVoid, $traceExitFunc, $traceStdoutFunc, $errorVerboseShortSuffix, $errorVerboseFullSuffix, $traceFileFunc);
	}
	
	private function tErrorInfo($errorCodeList, $confErrorCodeList, $code) {
	
		$confErrorCodeList    = Trace::$errorCodeList;
		$this->errorInfo      = $confErrorCodeList->$code;
		$this->errorInfoLevel = $errorInfo->errorLevel;
		
		Self::UserSecurityLevelupdate($errorInfo->securityLevel);
		
		$this->errorLevelInfo = Trace::$errorLevelList->$errorInfoLevel;
		
		return true;
	}
	
	private function tReturnValue($var = Trace::VOID) {
		
		$returnValue         = $this->errorLevelInfo->funcReturn;
		$returnCase[true]    = true;
		$returnCase[false]   = false;
		$returnCase['value'] = $var;
		$this->returnValue   = $returnCase[$returnValue];
		
		return true;
	}
	
	private function tExitFunc($traceExitFunc = Trace::FILE_FUNC) {

		$exitStatus      = $this->errorLevelInfo->exit;
		$exitCase[true]  = $traceExitFunc;
		$exitCase[false] = $funcVoid;
		$this->exitFunc  = $exitCase[$exitStatus];
		
		return true;
	}
	
	private function tStdoutFunc($funcVoid = Trace::VOID_FUNC, $traceStdoutFunc = Trace::STDOUT_FUNC){
		
		$stdoutStatus      = $this->errorLevelInfo->traceStdout;
		$stdoutCase[true]  = $traceStdoutFunc;
		$stdoutCase[false] = $funcVoid;
		$this->stdoutFunc  = $stdoutCase[$stdoutStatus];
		
		return true;
	}
	
	private function tErrVerbose($traceStdoutFunc = Trace::STDOUT_FUNC, $errorVerboseShortSuffix = Trace::ERR_VERBOSE_SHORT_SUFFIX) {
	
		$logFullStatus      = $this->errorLevelInfo->logFull;
		$logFullCase[true]  = $errorVerboseFullSuffix;
		$logFullCase[false] = $errorVerboseShortSuffix;
		$this->errVerbose   = $logFullCase[$logFullStatus];
		
		return true;
	}
	
	private function tTraceFileStatus($funcVoid = Trace::VOID_FUNC, $traceFileFunc = Trace::FILE_FUNC) {
	
		$traceFileStatus      = $this->errorLevelInfo->traceFile;
		$traceFileCase[true]  = $traceFileFunc;
		$traceFileCase[false] = $funcVoid;
		$this->traceFileFunc  = $traceFileCase[$traceFileStatus];
		
		return true;
	}
	
	private function t($code, $line, $method, $class, $var = Trace::VOID, $funcVoid = Trace::VOID_FUNC,
			$traceExitFunc = Trace::EXIT_FUNC, $traceStdoutFunc = Trace::STDOUT_FUNC,
			$errorVerboseShortSuffix = Trace::ERR_VERBOSE_SHORT_SUFFIX,
			$errorVerboseFullSuffix = Trace::ERR_VERBOSE_FULL_SUFFIX, $traceFileFunc = Trace::FILE_FUNC){
		
		$this->tErrorInfo($errorCodeList, $confErrorCodeList, $code);
		$this->tReturnValue($var);
		$this->tExitFunc($traceExitFunc);
		$this->tStdoutFunc($funcVoid, $traceStdoutFunc);
		$this->tErrVerbose($traceStdoutFunc, $errorVerboseShortSuffix);
				
		$trace = $this->traceLog($line, $method, $class, $var);
		
		$this->tTraceFileStatus($funcVoid, $traceFileFunc);
		
		$func = $this->traceFileFunc;
		$this->$$func();
		
		http_response_code($this->errorLevelInfo->httpCode);
		
		$func = $this->stdoutFunc;
		$this->$$func();
		
		$func = $this->exitFunc;
		$this->$$func();
		
		return $this->returnValue;
	}
}

?>
