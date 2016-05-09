<?php

trait TTrace {
	
	use TUser;
	
	private $traceSentence = Trace::VOID;
	private $traceLog      = Trace::VOID;
	private $cypherLog     = Trace::VOID;
	
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
	
	private function traceLog(
			$errorInfoLevel, $description, $line, $method, $class, $var = Trace::VOID,
			$errVerbose = Trace::ERR_VERBOSE_SHORT, $sep = Trace::SEP, $lineTag = Trace::LINE_TAG, $methodTag = Trace::METHOD_TAG,
			$classTag = Trace::CLASS_TAG, $instanceTag = Trace::INSTANCE_TAG, $dateFormat = Trace::DATE_FORMAT) {
		
	    $instance = get_class($this);
		$code     = $description->major->code.'-'.$description->secondary->code;
		
		switch($errVerbose){
		
			case Trace::ERR_VERBOSE_FULL:
				$description->major->short->msg     .= ' '.$description->major->full->msg;
				$description->secondary->short->msg .= ' '.$description->secondary->full->msg;
				break;
			default: break;
		}
		$this->traceSentence        .= ucfirst(strtolower($errorInfoLevel)).' '.$code.': '.$description->major->short->msg;
		$this->traceSentence        .= ' '.$description->secondary->short->msg;
		$this->traceSentence         = str_replace($lineTag, $line, $this->traceSentence);
		$this->traceSentence         = str_replace($methodTag, $method, $this->traceSentence);
		$this->traceSentence         = str_replace($classTag, $class, $this->traceSentence);
		$this->traceSentence         = str_replace($instanceTag, $instance, $this->traceSentence);
		$this->traceSentence        .= $sep;
		$traceLog                    = new stdClass();
		$traceLog->env               = Conf::$envName;
		$traceLog->errorInfoLevel    = $errorInfoLevel;
		$traceLog->majorCode         = $description->major->code;
		$traceLog->secondaryCode     = $description->secondary->code;
		$traceLog->time              = new stdClass();
		$traceLog->time->time        = time();
		$traceLog->time->date        = date(Trace::DATE_FORMAT, $traceLog->time->time);
		$traceLog->time->d           = date('d', $traceLog->time->time);
		$traceLog->time->m           = date('m', $traceLog->time->time);
		$traceLog->time->Y           = date('Y', $traceLog->time->time);
		$traceLog->time->H           = date('H', $traceLog->time->time);
		$traceLog->time->i           = date('i', $traceLog->time->time);
		$traceLog->time->s           = date('s', $traceLog->time->time);
		$traceLog->time->W           = date('W', $traceLog->time->time);
		$traceLog->time->w           = date('w', $traceLog->time->time);
		$traceLog->time->z           = date('z', $traceLog->time->time);
		$traceLog->time->c           = date('c', $traceLog->time->time);
		$traceLog->time->u           = date('u', $traceLog->time->time);
		$traceLog->time->e           = date('e', $traceLog->time->time);
		$traceLog->time->I           = date('I', $traceLog->time->time);
		$traceLog->time->O           = date('O', $traceLog->time->time);
		$traceLog->mock              = get_class_vars('Mock');
        $traceLog->app               = get_class_vars('App');
		$traceLog->user              = get_class_vars('User');
		$traceLog->session			 = new stdClass();
        
		switch($errVerbose){
		
			case Trace::ERR_VERBOSE_FULL:
				$traceLog->line     = $line;
				$traceLog->method   = $method;
				$traceLog->class    = $class;
				$traceLog->instance = $instance;
				$traceLog->varJson  = $var;
				
				switch ($errorInfoLevel) {
					case 'notice':
							$traceLog->request  = Trace::VOID;
							$traceLog->context 	= Trace::VOID;
							$traceLog->conf 	= Trace::VOID;
							$traceLog->baktrace = debug_backtrace(DEBUG_BACKTRACE_PROVIDE_OBJECT, 3);
						break;
					case 'warning':
							$traceLog->request  = $_REQUEST;
							$traceLog->context 	= $_SERVER;
							$traceLog->conf 	= get_class_vars('Conf');
							$traceLog->baktrace = debug_backtrace(DEBUG_BACKTRACE_PROVIDE_OBJECT, 5);
				
							if(isset($_SESSION) === true) {

								$traceLog->session->client = $_SESSION;
								$traceLog->session->app    = get_class_vars('Session');
							}
						break;
					case 'fatal':
							$traceLog->request  = $_REQUEST;
							$traceLog->context 	= $_SERVER;
							$traceLog->conf 	= get_class_vars('Conf');
							$traceLog->baktrace = debug_backtrace(DEBUG_BACKTRACE_PROVIDE_OBJECT, 0);
				
							if(isset($_SESSION) === true) {
								
								$traceLog->session->client = $_SESSION;
								$traceLog->session->app    = get_class_vars('Session');
							}
				        break;
					default:
							$traceLog->request  = Trace::VOID;
							$traceLog->context 	= Trace::VOID;
							$traceLog->conf 	= Trace::VOID;
						break;
				}
			break;
				default: break;
		}
		$this->traceLog  = json_encode($traceLog);
		$this->traceLog  = str_replace($sep, Trace::SEP_REPLACE, $this->traceLog);
		$this->traceLog .= $sep;
		
		$this->cypherLog = file_get_contents(Trace::CYPHER_TEMPLATE);
		$this->cypherLog = str_replace('{t_time}', $this->traceLog->time->time, $this->cypherLog);
		$this->cypherLog = str_replace('{t_u}', $this->traceLog->time->time, $this->cypherLog);
		$this->cypherLog = str_replace('{t_c}', $this->traceLog->time->time, $this->cypherLog);
		$this->cypherLog = str_replace('{t_e}', $this->traceLog->time->time, $this->cypherLog);
		$this->cypherLog = str_replace('{t_i}', $this->traceLog->time->time, $this->cypherLog);
		$this->cypherLog = str_replace('{t_O}', $this->traceLog->time->time, $this->cypherLog);
		$this->cypherLog = str_replace('{t_SERVER_REQUEST_TIME_FLOAT}', $this->traceLog->time->time, $this->cypherLog);
		$this->cypherLog = str_replace('{t_SERVER_REQUEST_TIME_FLOAT}', $this->traceLog->time->time, $this->cypherLog);
		$this->cypherLog = str_replace('{tdy_z}', $this->traceLog->time->time, $this->cypherLog);
		$this->cypherLog = str_replace('{ty_Y}', $this->traceLog->time->time, $this->cypherLog);
		$this->cypherLog = str_replace('{tmon_m}', $this->traceLog->time->time, $this->cypherLog);
		$this->cypherLog = str_replace('{tdm_d}', $this->traceLog->time->time, $this->cypherLog);
		$this->cypherLog = str_replace('{th_H}', $this->traceLog->time->time, $this->cypherLog);
		$this->cypherLog = str_replace('{tmin_i}', $this->traceLog->time->time, $this->cypherLog);
		$this->cypherLog = str_replace('{ts_i}', $this->traceLog->time->time, $this->cypherLog);
		$this->cypherLog = str_replace('{code_major}', $this->traceLog->time->time, $this->cypherLog);
		$this->cypherLog = str_replace('{code_minor}', $this->traceLog->time->time, $this->cypherLog);
		$this->cypherLog = str_replace('{code_level}', $this->traceLog->time->time, $this->cypherLog);
		$this->cypherLog = str_replace('{req_SERVER_SCRIPT_NAME}', $this->traceLog->time->time, $this->cypherLog);
		$this->cypherLog = str_replace('{req_SERVER_REQUEST_URI}', $this->traceLog->time->time, $this->cypherLog);
		$this->cypherLog = str_replace('{req_SERVER_QUERY_STRING}', $this->traceLog->time->time, $this->cypherLog);
		$this->cypherLog = str_replace('{req_SERVER_REQUEST_METHOD}', $this->traceLog->time->time, $this->cypherLog);
		$this->cypherLog = str_replace('{req_SERVER_SERVER_PROTOCOL}', $this->traceLog->time->time, $this->cypherLog);
		$this->cypherLog = str_replace('{req_SERVER_GATEWAY_INTERFACE}', $this->traceLog->time->time, $this->cypherLog);
		$this->cypherLog = str_replace('{req_SERVER_REQUEST_SCHEME}', $this->traceLog->time->time, $this->cypherLog);
		$this->cypherLog = str_replace('{req_SERVER_SCRIPT_FILENAME}', $this->traceLog->time->time, $this->cypherLog);
		$this->cypherLog = str_replace('{req_SERVER_SERVER_PORT}', $this->traceLog->time->time, $this->cypherLog);
		$this->cypherLog = str_replace('{req_SERVER_SERVER_ADDR}', $this->traceLog->time->time, $this->cypherLog);
		$this->cypherLog = str_replace('{req_SERVER_HTTP_ACCEPT_ENCODING}', $this->traceLog->time->time, $this->cypherLog);
		$this->cypherLog = str_replace('{req_SERVER_HTTP_UPGRADE_INSECURE_REQUESTS}', $this->traceLog->time->time, $this->cypherLog);
		$this->cypherLog = str_replace('{req_SERVER_HTTP_ACCEPT}', $this->traceLog->time->time, $this->cypherLog);
		$this->cypherLog = str_replace('{req_SERVER_HTTP_CONNECTION}', $this->traceLog->time->time, $this->cypherLog);
		$this->cypherLog = str_replace('{req_SERVER_HTTP_HOST}', $this->traceLog->time->time, $this->cypherLog);
		$this->cypherLog = str_replace('{req_SERVER_FCGI_ROLE}', $this->traceLog->time->time, $this->cypherLog);
		$this->cypherLog = str_replace('{req_SERVER_PHP_SELF}', $this->traceLog->time->time, $this->cypherLog);
		$this->cypherLog = str_replace('{req_REQUEST_JSON}', $this->traceLog->time->time, $this->cypherLog);
		$this->cypherLog = str_replace('{i_name}', $this->traceLog->time->time, $this->cypherLog);
		$this->cypherLog = str_replace('{c_name}', $this->traceLog->time->time, $this->cypherLog);
		$this->cypherLog = str_replace('{m_name}', $this->traceLog->time->time, $this->cypherLog);
		$this->cypherLog = str_replace('{l_name}', $this->traceLog->time->time, $this->cypherLog);
		$this->cypherLog = str_replace('{r_json}', $this->traceLog->time->time, $this->cypherLog);
		$this->cypherLog = str_replace('{app_name}', $this->traceLog->time->time, $this->cypherLog);
		$this->cypherLog = str_replace('{hApp_json}', $this->traceLog->time->time, $this->cypherLog);
		$this->cypherLog = str_replace('{hApp_SERVER_PATH}', $this->traceLog->time->time, $this->cypherLog);
		$this->cypherLog = str_replace('{hApp_SERVER_SYSTEMROOT}', $this->traceLog->time->time, $this->cypherLog);
		$this->cypherLog = str_replace('{hApp_SERVER_COMSPEC}', $this->traceLog->time->time, $this->cypherLog);
		$this->cypherLog = str_replace('{hApp_SERVER_PATHEXT}', $this->traceLog->time->time, $this->cypherLog);
		$this->cypherLog = str_replace('{hApp_SERVER_WINDIR}', $this->traceLog->time->time, $this->cypherLog);
		$this->cypherLog = str_replace('{hApp_SERVER_SYSTEMDRIVE}', $this->traceLog->time->time, $this->cypherLog);
		$this->cypherLog = str_replace('{hApp_SERVER_TEMP}', $this->traceLog->time->time, $this->cypherLog);
		$this->cypherLog = str_replace('{hApp_SERVER_TMP}', $this->traceLog->time->time, $this->cypherLog);
		$this->cypherLog = str_replace('{hApp_SERVER_QT_PLUGIN_PATH}', $this->traceLog->time->time, $this->cypherLog);
		$this->cypherLog = str_replace('{hApp_SERVER_PHPRC}', $this->traceLog->time->time, $this->cypherLog);
		$this->cypherLog = str_replace('{hApp_SERVER_PHP_FCGI_MAX_REQUESTS}', $this->traceLog->time->time, $this->cypherLog);
		$this->cypherLog = str_replace('{hApp_SERVER__FCGI_SHUTDOWN_EVENT_}', $this->traceLog->time->time, $this->cypherLog);
		$this->cypherLog = str_replace('{hApp_SERVER_DOCUMENT_ROOT}', $this->traceLog->time->time, $this->cypherLog);
		$this->cypherLog = str_replace('{hApp_SERVER_SERVER_NAME}', $this->traceLog->time->time, $this->cypherLog);
		$this->cypherLog = str_replace('{hApp_SERVER_CONTEXT_PREFIX}', $this->traceLog->time->time, $this->cypherLog);
		$this->cypherLog = str_replace('{hApp_SERVER_SERVER_SOFTWARE}', $this->traceLog->time->time, $this->cypherLog);
		$this->cypherLog = str_replace('{hApp_SERVER_SERVER_SIGNATURE}', $this->traceLog->time->time, $this->cypherLog);
		$this->cypherLog = str_replace('{hApp_SERVER_CONTEXT_DOCUMENT_ROOT}', $this->traceLog->time->time, $this->cypherLog);
		$this->cypherLog = str_replace('{hApp_SERVER_SystemRoot}', $this->traceLog->time->time, $this->cypherLog);
		$this->cypherLog = str_replace('{env_name}', $this->traceLog->time->time, $this->cypherLog);
		$this->cypherLog = str_replace('{env_SERVER_SERVER_ADMIN}', $this->traceLog->time->time, $this->cypherLog);
		$this->cypherLog = str_replace('{cfApp_json}', $this->traceLog->time->time, $this->cypherLog);
		$this->cypherLog = str_replace('{u_securityLevel}', $this->traceLog->time->time, $this->cypherLog);
		$this->cypherLog = str_replace('{u_sessionEnd}', $this->traceLog->time->time, $this->cypherLog);
		$this->cypherLog = str_replace('{u_sessionStart}', $this->traceLog->time->time, $this->cypherLog);
		$this->cypherLog = str_replace('{u_idCryptedT}', $this->traceLog->time->time, $this->cypherLog);
		$this->cypherLog = str_replace('{u_sessionIdCryptedT}', $this->traceLog->time->time, $this->cypherLog);
		$this->cypherLog = str_replace('{u_idCryptedS}', $this->traceLog->time->time, $this->cypherLog);
		$this->cypherLog = str_replace('{u_sessionIdCryptedS}', $this->traceLog->time->time, $this->cypherLog);
		$this->cypherLog = str_replace('{u_id}', $this->traceLog->time->time, $this->cypherLog);
		$this->cypherLog = str_replace('{u_sessionId}', $this->traceLog->time->time, $this->cypherLog);
		$this->cypherLog = str_replace('{hClient_json}', $this->traceLog->time->time, $this->cypherLog);
		$this->cypherLog = str_replace('{hClient_SERVER_REMOTE_PORT}', $this->traceLog->time->time, $this->cypherLog);
		$this->cypherLog = str_replace('{hClient_SERVER_REMOTE_ADDR}', $this->traceLog->time->time, $this->cypherLog);
		$this->cypherLog = str_replace('{hClient_SERVER_HTTP_USER_AGENT}', $this->traceLog->time->time, $this->cypherLog);
		$this->cypherLog = str_replace('{env_name}', $this->traceLog->time->time, $this->cypherLog);
		$this->cypherLog = str_replace('{env_SERVER_SERVER_ADMIN}', $this->traceLog->time->time, $this->cypherLog);
		$this->cypherLog = str_replace('{ss_startTime}', $this->traceLog->time->time, $this->cypherLog);
		$this->cypherLog = str_replace('{ss_userId}', $this->traceLog->time->time, $this->cypherLog);
		$this->cypherLog = str_replace('{ss_sessionId}', $this->traceLog->time->time, $this->cypherLog);
		$this->cypherLog = str_replace('{ss_appId}', $this->traceLog->time->time, $this->cypherLog);
		$this->cypherLog = str_replace('{ss_sessionIdCrypted}', $this->traceLog->time->time, $this->cypherLog);
		$this->cypherLog = str_replace('{ss_SERVER_HTTP_COOKIE}', $this->traceLog->time->time, $this->cypherLog);
		$this->cypherLog = str_replace('{ss_SESSION_JSON}', $this->traceLog->time->time, $this->cypherLog);
		$this->cypherLog = str_replace('{ssClient_startTime}', $this->traceLog->time->time, $this->cypherLog);
		$this->cypherLog = str_replace('{ssClient_userIdCrypted}', $this->traceLog->time->time, $this->cypherLog);
		$this->cypherLog = str_replace('{ssApp_startTime}', $this->traceLog->time->time, $this->cypherLog);
		$this->cypherLog = str_replace('{ssApp_appIdCrypted}', $this->traceLog->time->time, $this->cypherLog);
		$this->cypherLog = str_replace('{ssApp_ttl}', $this->traceLog->time->time, $this->cypherLog);
		$this->cypherLog = str_replace('{cfClient_json}', $this->traceLog->time->time, $this->cypherLog);
		$this->cypherLog = str_replace('{mock_userId}', $this->traceLog->time->time, $this->cypherLog);
		$this->cypherLog = str_replace('{mock_appName}', $this->traceLog->time->time, $this->cypherLog);
		$this->cypherLog = str_replace('{mock_mockName}', $this->traceLog->time->time, $this->cypherLog);
		
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
	
	private function t($code, $line, $method, $class, $var = Trace::VOID, $funcVoid = Trace::VOID_FUNC,
			$traceExitFunc = Trace::EXIT_FUNC, $traceStdoutFunc = Trace::STDOUT_FUNC, $errorVerboseShortSuffix = Trace::ERR_VERBOSE_SHORT_SUFFIX,
			$errorVerboseFullSuffix = Trace::ERR_VERBOSE_FULL_SUFFIX,
			$traceFileFunc = Trace::FILE_FUNC){
				
		$this->traceSentence = '';
		$this->traceLog      = '';
		
		$confErrorCodeList   = Trace::$errorCodeList;
		$errorInfo           = $confErrorCodeList->$code;
		$errorInfoLevel      = $errorInfo->errorLevel;
		
		Self::UserSecurityLevelupdate($errorInfo->securityLevel);

		$errorLevelInfo       = Trace::$errorLevelList->$errorInfoLevel;
				
		$returnValue          = $errorLevelInfo->funcReturn;
		$returnCase[true]     = true;
		$returnCase[false]    = false;
		$returnCase['value']  = $var;
		$returnValue          = $returnCase[$returnValue];
		
		$exitStatus           = $errorLevelInfo->exit;
		$exitCase[true]       = $traceExitFunc;
		$exitCase[false]      = $funcVoid;
		$exitFunc             = $exitCase[$exitStatus];
		
		$stdoutStatus         = $errorLevelInfo->traceStdout;
		$stdoutCase[true]     = $traceStdoutFunc;
		$stdoutCase[false]    = $funcVoid;
		$stdoutFunc           = $stdoutCase[$stdoutStatus];
				
		$logFullStatus        = $errorLevelInfo->logFull;
		$logFullCase[true]    = $errorVerboseFullSuffix;
		$logFullCase[false]   = $errorVerboseShortSuffix;
		$errVerbose           = $logFullCase[$logFullStatus];
				
		$trace                = $this->traceLog($errorInfoLevel, $errorInfo->description, $line, $method, $class, $var, $errVerbose);
		
		$traceFileStatus      = $errorLevelInfo->traceFile;
		$traceFileCase[true]  = $traceFileFunc;
		$traceFileCase[false] = $funcVoid;
		$traceFiletFunc       = $traceFileCase[$traceFileStatus];
		
		$this->$traceFiletFunc();
		
		http_response_code($errorLevelInfo->httpCode);
		
		$this->$stdoutFunc();
		
		$this->$exitFunc();
		
		return $returnValue;
	}
}

?>
