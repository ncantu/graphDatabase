<?php

trait TTrace {
	
	private $traceSentence = Trace::VOID;
	private $traceLog      = Trace::VOID;
	
	private function traceVoid($opt = ''){
		
		return;
	}
	
	private function traceStdout($trace){
		
		echo $trace;
		
		return true;
	}
	
	private function traceExit(){
	
		exit();
	}
	
	private function traceLog(
			$errorInfoLevel, $description, $line, $method, $class, $instance, $var = Trace::VOID,
			$errVerbose = Trace::ERR_VERBOSE_SHORT, $sep = Trace::SEP, $lineTag = Trace::LINE_TAG, $methodTag = Trace::METHOD_TAG,
			$classTag = Trace::CLASS_TAG, $instanceTag = Trace::INSTANCE_TAG, $dateFormat = Trace::DATE_FORMAT) {
	
		$code                     = $description->major->$errVerbose->code.'-'.$description->secondary->$errVerbose->code;
		$this->traceSentence     .= ucfirst(strtolower($errorInfoLevel)).' '.$code.': '.$description->major->$errVerbose->msg;
		$this->traceSentence     .= ' '.$description->secondary->$errVerbose->msg;
		$this->traceSentence      = str_replace($lineTag, $line, $this->traceSentence);
		$this->traceSentence      = str_replace($methodTag, $method, $this->traceSentence);
		$this->traceSentence      = str_replace($classTag, $class, $this->traceSentence);
		$this->traceSentence      = str_replace($instanceTag, $instance, $this->traceSentence);
		$this->traceSentence      = $sep;
		
		$traceLog                 = new stdClass();
		$traceLog->time           = time();
		$traceLog->date           = date($traceLog->time, $dateFormat);
		$traceLog->usedId         = Conf::$usedId;
		$traceLog->appName        = Conf::$appName;
		$traceLog->mockStatus     = Conf::$mockState;
		$traceLog->securityLevel  = Conf::$securityLevel
		$traceLog->errorInfoLevel = $errorInfoLevel;
		$traceLog->majorCode      = $description->major->$errVerbose->code;
		$traceLog->majorMsg       = $description->major->$errVerbose->msg;
		$traceLog->secondaryCode  = $description->secondary->$errVerbose->code;
		$traceLog->secondaryMsg   = $description->secondary->$errVerbose->msg;
		$traceLog->line           = $line;
		$traceLog->method         = $method;
		$traceLog->class          = $class;
		$traceLog->instance       = $instance;
		$traceLog->varJson        = $var;
		$this->traceLog           = json_encode($traceLog).$sep;
		
		return true;
	}
	
	private function securityLevelupdate($usedId, $securityLevel){
		
		Conf::$securityLevel += $securityLevel;
		
		return $usedId.$securityLevel;
	}
	
	private function traceFile(trace, $fileSeparator = Trace::FILE_SEPARATPOR, $fileExt = Trace::FILE_EXT, $fileWriteMode = Trace::FILE_WRITE_MODE) {
				
		switch(Conf::$mockState) {
			case false: $prefix = '';
			 breack;
			default: $prefix = Conf::$mockState.$fileSeparator;
		 	 breack;
		}
		$filename = Conf::$logDir.$prefix.Conf::$logFormat.$fileSeparator.Conf::$appName.$fileSeparator.Conf::$usedId.$fileExt;
		$fp       = fopen($filename, $fileWriteMode);
		
		fwrite($fp, trace);
		
		return fclose($fp);
	}
	
	private function trace($code, $line, $method, $class, $instance, $var = Trace::VOID, $funcVoid = Trace::VOID,
			$traceExitFunc = Trace::EXIT_FUNC, $traceStdoutFunc = Trace::STDOUT_FUNC, $errorVerboseShortSuffix = Trace::ERR_VERBOSE_SHORT_SUFFIX,
			$errorVerboseFullSuffix = Trace::ERR_VERBOSE_FULL_SUFFIX,
			$traceFileFunc = Trace::FILE_FUNC){
		
		$this->securityLevelupdate($usedId, $securityLevel);
		
		$this->traceSentence = '';
		$this->traceLog      = '';
		
		$confErrorCodeList   = Conf::$errorCodeList;
		$errorInfo           = $confErrorCodeList->$code;
		$errorInfoLevel      = $errorInfo->errorLevel;
		
		$confEnv             = Conf::$env;
		$errorLevelInfo      = $confEnv->errorLevelList->$errorInfoLevel;
				
		$returnValue         = $errorLevelInfo->funcReturn;
		
		$exitStatus          = $errorLevelInfo->exit;
		$exitCase[true]      = $traceExitFunc;
		$exitCase[false]     = $funcVoid;
		$exitFunc            = $exitCase[$exitStatus];
		
		$stdoutStatus         = $errorLevelInfo->traceStdout;
		$stdoutCase[true]     = $traceStdoutFunc;
		$stdoutCase[false]    = $funcVoid;
		$stdoutFunc           = $stdoutCase[$stdoutStatus];
				
		$logFullStatus       = $errorLevelInfo->logFull;
		$logFullCase[true]   = $errorVerboseFullSuffix;
		$logFullCase[false]  = $errorVerboseShortSuffix;
		$errVerbose          = $logFullCase[$logFullStatus];
		
		$var                 = json_encode($var);
		
		$trace               = $this->traceLog($errorInfoLevel, $errorInfo->description, $line, $method, $class, $instance, $var, $errVerbose);
		
		$traceFileStatus      = $errorLevelInfo->traceFile;
		$traceFileCase[true]  = $traceFileFunc;
		$traceFileCase[false] = $funcVoid;
		$traceFiletFunc       = $traceFileCase[$traceFileStatus];
		
		$traceFiletFunc($trace);
		
		http_response_code($errorLevelInfo->httpCode);
		
		$stdoutFunc($trace);
		
		$exitFunc();
		
		return $returnValue;
	}
}

?>
