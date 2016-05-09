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
							$traceLog->request = Trace::VOID;
							$traceLog->context = Trace::VOID;
							$traceLog->conf    = Trace::VOID;
						break;
				}
			break;
				default: break;
		}
		$this->traceLog  = $traceLog;
		$this->cypherLog = file_get_contents(Trace::CYPHER_TEMPLATE);
		$this->cypherLog = str_replace('{t_time}', $this->traceLog->time->time, $this->cypherLog);
		$this->cypherLog = str_replace('{t_u}', $this->traceLog->time->u, $this->cypherLog);
		$this->cypherLog = str_replace('{t_c}', $this->traceLog->time->c, $this->cypherLog);
		$this->cypherLog = str_replace('{t_e}', $this->traceLog->time->e, $this->cypherLog);
		$this->cypherLog = str_replace('{t_i}', $this->traceLog->time->i, $this->cypherLog);
		$this->cypherLog = str_replace('{t_O}', $this->traceLog->time->O, $this->cypherLog);
		$this->cypherLog = str_replace('{t_SERVER_REQUEST_TIME_FLOAT}', $traceLog->context['REQUEST_TIME_FLOAT'], $this->cypherLog);
		$this->cypherLog = str_replace('{t_SERVER_REQUEST_TIME_FLOAT}', $traceLog->context['REQUEST_TIME_FLOAT'], $this->cypherLog);
		$this->cypherLog = str_replace('{tdy_z}', $this->traceLog->time->z, $this->cypherLog);
		$this->cypherLog = str_replace('{ty_Y}', $this->traceLog->time->Y, $this->cypherLog);
		$this->cypherLog = str_replace('{tmon_m}', $this->traceLog->time->m, $this->cypherLog);
		$this->cypherLog = str_replace('{tdm_d}', $this->traceLog->time->d, $this->cypherLog);
		$this->cypherLog = str_replace('{th_H}', $this->traceLog->time->H, $this->cypherLog);
		$this->cypherLog = str_replace('{tmin_i}', $this->traceLog->time->i, $this->cypherLog);
		$this->cypherLog = str_replace('{ts_s}', $this->traceLog->time->s, $this->cypherLog);
		$this->cypherLog = str_replace('{code_major}', $this->traceLog->majorCode, $this->cypherLog);
		$this->cypherLog = str_replace('{code_minor}', $this->traceLog->secondaryCode, $this->cypherLog);
		$this->cypherLog = str_replace('{code_level}', $this->traceLog->errorInfoLevel, $this->cypherLog);
		$this->cypherLog = str_replace('{req_SERVER_SCRIPT_NAME}', $traceLog->context['SCRIPT_NAME'], $this->cypherLog);
		$this->cypherLog = str_replace('{req_SERVER_REQUEST_URI}', $traceLog->context['REQUEST_URI'], $this->cypherLog);
		$this->cypherLog = str_replace('{req_SERVER_QUERY_STRING}', $traceLog->context['QUERY_STRING'], $this->cypherLog);
		$this->cypherLog = str_replace('{req_SERVER_REQUEST_METHOD}', $traceLog->context['REQUEST_METHOD'], $this->cypherLog);
		$this->cypherLog = str_replace('{req_SERVER_SERVER_PROTOCOL}', $traceLog->context['SERVER_PROTOCOL'], $this->cypherLog);
		$this->cypherLog = str_replace('{req_SERVER_GATEWAY_INTERFACE}', $traceLog->context['GATEWAY_INTERFACE'], $this->cypherLog);
		$this->cypherLog = str_replace('{req_SERVER_REQUEST_SCHEME}', $traceLog->context['REQUEST_SCHEME'], $this->cypherLog);
		$this->cypherLog = str_replace('{req_SERVER_SCRIPT_FILENAME}', $traceLog->context['SCRIPT_FILENAME'], $this->cypherLog);
		$this->cypherLog = str_replace('{req_SERVER_SERVER_PORT}', $traceLog->context['SERVER_PORT'], $this->cypherLog);
		$this->cypherLog = str_replace('{req_SERVER_SERVER_ADDR}', $traceLog->context['SERVER_SERVER_ADDR'], $this->cypherLog);
		$this->cypherLog = str_replace('{req_SERVER_HTTP_ACCEPT_ENCODING}', $traceLog->context['HTTP_ACCEPT_ENCODING'], $this->cypherLog);
		$this->cypherLog = str_replace('{req_SERVER_HTTP_UPGRADE_INSECURE_REQUESTS}', $traceLog->context['HTTP_UPGRADE_INSECURE_REQUESTS'], $this->cypherLog);
		$this->cypherLog = str_replace('{req_SERVER_HTTP_ACCEPT}', $traceLog->context['HTTP_ACCEPT'], $this->cypherLog);
		$this->cypherLog = str_replace('{req_SERVER_HTTP_CONNECTION}', $traceLog->context['HTTP_CONNECTION'], $this->cypherLog);
		$this->cypherLog = str_replace('{req_SERVER_HTTP_HOST}', $traceLog->context['HTTP_HOST'], $this->cypherLog);
		$this->cypherLog = str_replace('{req_SERVER_FCGI_ROLE}', $traceLog->context['FCGI_ROLE'], $this->cypherLog);
		$this->cypherLog = str_replace('{req_SERVER_PHP_SELF}',$traceLog->context['PHP_SELF'], $this->cypherLog);
		$this->cypherLog = str_replace('{req_REQUEST_JSON}', str_replace("'", "\'", json_encode($this->traceLog->request)), $this->cypherLog);
		$this->cypherLog = str_replace('{i_name}', $this->traceLog->instance, $this->cypherLog);
		$this->cypherLog = str_replace('{c_name}', $this->traceLog->class, $this->cypherLog);
		$this->cypherLog = str_replace('{m_name}', $this->traceLog->method, $this->cypherLog);
		$this->cypherLog = str_replace('{l_name}', $this->traceLog->line, $this->cypherLog);
		$this->cypherLog = str_replace('{r_json}', str_replace("'", "\'", json_encode($this->traceLog->varJson)), $this->cypherLog);
		$this->cypherLog = str_replace('{app_name}', $this->traceLog->app->name, $this->cypherLog);
		$this->cypherLog = str_replace('{app_json}', str_replace("'", "\'", json_encode($this->traceLog->app)), $this->cypherLog);
		$this->cypherLog = str_replace('{hApp_SERVER_PATH}', $traceLog->context['PATH'], $this->cypherLog);
		$this->cypherLog = str_replace('{hApp_SERVER_SYSTEMROOT}', $traceLog->context['SYSTEMROOT'], $this->cypherLog);
		$this->cypherLog = str_replace('{hApp_SERVER_COMSPEC}', $traceLog->context['COMSPEC'], $this->cypherLog);
		$this->cypherLog = str_replace('{hApp_SERVER_PATHEXT}', $traceLog->context['PATHEXT'], $this->cypherLog);
		$this->cypherLog = str_replace('{hApp_SERVER_WINDIR}', $traceLog->context['WINDIR'], $this->cypherLog);
		$this->cypherLog = str_replace('{hApp_SERVER_SYSTEMDRIVE}', $traceLog->context['SYSTEMDRIVE'], $this->cypherLog);
		$this->cypherLog = str_replace('{hApp_SERVER_TEMP}', $traceLog->context['TEMP'], $this->cypherLog);
		$this->cypherLog = str_replace('{hApp_SERVER_TMP}', $traceLog->context['TMP'], $this->cypherLog);
		$this->cypherLog = str_replace('{hApp_SERVER_QT_PLUGIN_PATH}', $traceLog->context['QT_PLUGIN_PATH'], $this->cypherLog);
		$this->cypherLog = str_replace('{hApp_SERVER_PHPRC}', $traceLog->context['PHPRC'], $this->cypherLog);
		$this->cypherLog = str_replace('{hApp_SERVER_PHP_FCGI_MAX_REQUESTS}', $traceLog->context['PHP_FCGI_MAX_REQUESTS'], $this->cypherLog);
		$this->cypherLog = str_replace('{hApp_SERVER__FCGI_SHUTDOWN_EVENT_}', $traceLog->context['_FCGI_SHUTDOWN_EVENT_'], $this->cypherLog);
		$this->cypherLog = str_replace('{hApp_SERVER_DOCUMENT_ROOT}', $traceLog->context['DOCUMENT_ROOT'], $this->cypherLog);
		$this->cypherLog = str_replace('{hApp_SERVER_SERVER_NAME}', $traceLog->context['SERVER_NAME'], $this->cypherLog);
		$this->cypherLog = str_replace('{hApp_SERVER_CONTEXT_PREFIX}', $traceLog->context['CONTEXT_PREFIX'], $this->cypherLog);
		$this->cypherLog = str_replace('{hApp_SERVER_SERVER_SOFTWARE}', $traceLog->context['SERVER_SOFTWARE'], $this->cypherLog);
		$this->cypherLog = str_replace('{hApp_SERVER_SERVER_SIGNATURE}', $traceLog->context['SERVER_SIGNATURE'], $this->cypherLog);
		$this->cypherLog = str_replace('{hApp_SERVER_CONTEXT_DOCUMENT_ROOT}', $traceLog->context['CONTEXT_DOCUMENT_ROOT'], $this->cypherLog);
		$this->cypherLog = str_replace('{hApp_SERVER_SystemRoot}', $traceLog->context['SystemRoot'], $this->cypherLog);
		$this->cypherLog = str_replace('{env_name}', $this->traceLog->env, $this->cypherLog);
		$this->cypherLog = str_replace('{env_SERVER_SERVER_ADMIN}', $traceLog->context['SERVER_ADMIN'], $this->cypherLog);
		$this->cypherLog = str_replace('{cf_json}', str_replace("'", "\'", json_encode($this->traceLog->conf)), $this->cypherLog);
		$this->cypherLog = str_replace('{u_securityLevel}', $this->traceLog->user->securityLevel, $this->cypherLog);
		$this->cypherLog = str_replace('{u_idCryptedT}', $this->traceLog->user->idCryptedT, $this->cypherLog);
		$this->cypherLog = str_replace('{u_idCryptedS}', $this->traceLog->user->idCryptedS, $this->cypherLog);
		$this->cypherLog = str_replace('{u_id}', $this->traceLog->user->id, $this->cypherLog);
		$this->cypherLog = str_replace('{hClient_SERVER_REMOTE_PORT}', $traceLog->context['REMOTE_PORT'], $this->cypherLog);
		$this->cypherLog = str_replace('{hClient_SERVER_REMOTE_ADDR}', $traceLog->context['REMOTE_ADDR'], $this->cypherLog);
		$this->cypherLog = str_replace('{hClient_SERVER_HTTP_USER_AGENT}', $traceLog->context['HTTP_USER_AGENT'], $this->cypherLog);
		$this->cypherLog = str_replace('{ss_id}', $this->traceLog->session->app->id, $this->cypherLog);
		$this->cypherLog = str_replace('{ss_startTime}', $this->traceLog->session->app->startTime, $this->cypherLog);
		$this->cypherLog = str_replace('{ss_endTime}', $this->traceLog->session->app->startTime, $this->cypherLog);
		$this->cypherLog = str_replace('{ss_SERVER_HTTP_COOKIE}', $this->traceLog->session->app->startTime, $this->cypherLog);
		$this->cypherLog = str_replace('{ss_SESSION_JSON}', str_replace("'", "\'", json_encode($traceLog->session->client)), $this->cypherLog);
		$this->cypherLog = str_replace('{ss_idCryptedT}', $this->traceLog->session->app->idCryptedT, $this->cypherLog);
		$this->cypherLog = str_replace('{ss_idCryptedS}', $this->traceLog->session->app->idCryptedS, $this->cypherLog);
		$this->cypherLog = str_replace('{ssClient_userIdCryptedS}', $this->traceLog->user->idCryptedS, $this->cypherLog);
		$this->cypherLog = str_replace('{ssClient_userIdCryptedT}', $this->traceLog->user->idCryptedT, $this->cypherLog);
		$this->cypherLog = str_replace('{ssApp_appIdCryptedS}', $this->traceLog->app->idCryptedS, $this->cypherLog);
		$this->cypherLog = str_replace('{ssApp_appIdCryptedT}', $this->traceLog->app->idCryptedT, $this->cypherLog);
		$this->cypherLog = str_replace('{mock_userId}', $this->traceLog->mock->mock->userId, $this->cypherLog);
		$this->cypherLog = str_replace('{mock_appName}', $this->traceLog->mock->mock->appName, $this->cypherLog);
		$this->cypherLog = str_replace('{mock_mockName}', $this->traceLog->mock->mock->mockName, $this->cypherLog);
		$this->cypherLog = str_replace('{mock_json}', str_replace("'", "\'", json_encode($this->traceLog->mock)), $this->cypherLog);

		$this->traceLog  = json_encode($this->traceLog);
		$this->traceLog  = str_replace($sep, Trace::SEP_REPLACE, $this->traceLog);
		$this->traceLog .= $sep;
		
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
