<?php

trait TTrace {
	
	private $traceSentence    = Trace::VOID;
	private $traceLog         = Trace::VOID;
	
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
		
	    $instance                    = get_class($this);
		$code                        = $description->major->code.'-'.$description->secondary->code;
		$this->traceSentence        .= ucfirst(strtolower($errorInfoLevel)).' '.$code.': '.$description->major->$errVerbose->msg;
		$this->traceSentence        .= ' '.$description->secondary->$errVerbose->msg;
		$this->traceSentence         = str_replace($lineTag, $line, $this->traceSentence);
		$this->traceSentence         = str_replace($methodTag, $method, $this->traceSentence);
		$this->traceSentence         = str_replace($classTag, $class, $this->traceSentence);
		$this->traceSentence         = str_replace($instanceTag, $instance, $this->traceSentence);
		$this->traceSentence        .= $sep;
		$traceLog                    = new stdClass();
		$traceLog->time              = time();
		$traceLog->date              = date(Trace::DATE_FORMAT, $traceLog->time);
		$traceLog->date_d            = date('d', $traceLog->time);
		$traceLog->date_m            = date('m', $traceLog->time);
		$traceLog->date_Y            = date('Y', $traceLog->time);
		$traceLog->date_H            = date('H', $traceLog->time);
		$traceLog->date_i            = date('i', $traceLog->time);
		$traceLog->date_s            = date('s', $traceLog->time);
		$traceLog->date_w            = date('w', $traceLog->time);
		$traceLog->date_z            = date('z', $traceLog->time);
		$traceLog->date_c            = date('c', $traceLog->time);
		$traceLog->date_u            = date('u', $traceLog->time);
		$traceLog->date_e            = date('e', $traceLog->time);
		$traceLog->date_I            = date('I', $traceLog->time);
		$traceLog->date_O            = date('O', $traceLog->time);
		$traceLog->appName           = Conf::$appName;
		$traceLog->mockStatus        = Conf::$mock->mockState;
		$traceLog->securityLevel     = Conf::$securityLevel;
		$traceLog->errorInfoLevel    = $errorInfoLevel;
		$traceLog->majorCode         = $description->major->code;
		$traceLog->secondaryCode     = $description->secondary->code;
        $traceLog->userIdCryptedT    = Conf::$userIdCryptedT;
        $traceLog->userIdCryptedS    = Conf::$userIdCryptedS;
		$traceLog->sessionIdCryptedT = Conf::$sessionIdCryptedT;
		$traceLog->sessionIdCryptedS = Conf::$sessionIdCryptedS;
		
		switch($errVerbose){
		
			case Trace::ERR_VERBOSE_FULL:
				$traceLog->line     = $line;
				$traceLog->method   = $method;
				$traceLog->class    = $class;
				$traceLog->instance = $instance;
				$traceLog->varJson  = $var;
				$traceLog->session  = $_SESSION;
				
				switch ($errorInfoLevel) {
					case 'notice':
							$btLimit            = 3;
							$traceLog->request  = Trace::VOID;
							$traceLog->context 	= Trace::VOID;
							$traceLog->conf 	= Trace::VOID;
						break;
					case 'warning':
							$btLimit            = 5;
							$traceLog->request  = $_REQUEST;
							$traceLog->context 	= $_SERVER;
							$traceLog->conf 	= get_class_vars('Conf');
						break;
					case 'fatal':
							$btLimit            = 0;
							$traceLog->request  = $_REQUEST;
							$traceLog->context 	= $_SERVER;
							$traceLog->conf 	= get_class_vars('Conf');
				        break;
					default:
							$btLimit            = 1;
							$traceLog->request  = Trace::VOID;
							$traceLog->context 	= Trace::VOID;
							$traceLog->conf 	= Trace::VOID;
						break;
				}
				$traceLog->baktrace = debug_backtrace(DEBUG_BACKTRACE_PROVIDE_OBJECT, $btLimit);
			break;
				default: break;
		}
		$this->traceLog  = json_encode($traceLog);
		$this->traceLog  = str_replace($sep, '{{\n}}', $this->traceLog);
		$this->traceLog .= $sep;
		
		return true;
	}
	
	private function securityLevelupdate($usedId, $securityLevel){
		
		Conf::$securityLevel      += $securityLevel;
		$_SESSION['securityLevel'] = Conf::$securityLevel;
		
		return $usedId.$securityLevel;
	}
	
	private function traceFile($fileSeparator = Trace::FILE_SEPARATPOR, $fileExt = Trace::FILE_EXT, $fileWriteMode = Trace::FILE_WRITE_MODE) {
				
		switch(Conf::$mock) {
			case false: $prefix = '';
			 break;
			default: $prefix = Conf::$mock->mockState.$fileSeparator;
		 	 break;
		}
		$filename = Trace::DIR.$prefix.date(Trace::FILE_DATE_FORMAT, time()).$fileSeparator.Conf::$appName.$fileSeparator.Conf::$userId.$fileExt;
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
		
		$confErrorCodeList   = Conf::$errorCodeList;
		$errorInfo           = $confErrorCodeList->$code;
		$errorInfoLevel      = $errorInfo->errorLevel;
		
		$this->securityLevelupdate(Conf::$userId, $errorInfo->securityLevel);
		
		$confEnv              = Conf::$env;
		$errorLevelInfo       = $confEnv->errorLevelList->$errorInfoLevel;
				
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
