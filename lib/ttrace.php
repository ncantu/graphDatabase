
<?php

trait TTrace {
    
	use TCypher;
    use TUser;
    
    private $traceSentence                             = Trace::VOID;
    private $traceLog                                  = Trace::VOID;
    private $t_n_state                                 = Trace::VOID;
    private $t_n_dateStart                             = Trace::VOID;
    private $t_n_dateEnd                               = Trace::VOID;
    private $t_n_step_created                          = Trace::VOID;
    private $t_n_visibility                            = Trace::VOID;
    private $t_n_note                                  = Trace::VOID;
    private $t_n_value                                 = Trace::VOID;
    private $t_r_state                                 = Trace::VOID;
    private $t_r_dateStart                             = Trace::VOID;
    private $t_r_dateEnd                               = Trace::VOID;
    private $t_r_step_created                          = Trace::VOID;
    private $t_r_visibility                            = Trace::VOID;
    private $t_r_note                                  = Trace::VOID;
    private $t_r_value                                 = Trace::VOID;
         
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
    private $t_SERVER_REQUEST_TIME;
    private $tdy_z;
    private $tY_Y;
    private $tmon_m;
    private $tdm_d;
    private $tH_H;
    private $tmin_i;
    private $ts_s;
    private $code_major;
    private $code_minor;
    private $tr_backtrace_json;
    private $code_level;
    private $evt_sequence;
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
    private $tr_REQUEST_JSON;
    private $tr_cpu;
    private $tr_memory;
    private $tr_diskSpace;
    private $tr_pid;
    private $tr_SERVER_REQUEST_TIME_FLOAT;
    private $i_name;
    private $c_name;
    private $m_name;
    private $l_number;
    private $var_json;
    private $app_name;
    private $app_id;
    private $app_json;
    private $app_ttl;
    private $app_mainClass;
    private $app_idCryptedT;
    private $app_idCryptedS;
    private $app_securityLevel;
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
    private $u_name;
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
    private $mock_userIdCryptedS;
    private $mock_appIdCryptedS;
    private $mock_name;
    private $mock_state;
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
    
    private function secureVar($var) {
        
        if(is_string($var) === false && is_null($var) === false && is_numeric($var) === false && is_bool($var) === false) {
        
            $var = json_encode($var);
        }
        return $var;
    }
    
    private function traceSysVar($sysVar) {
                
        return $sysVar;
    }
    
    private function traceSysVarItem($sysVar, $itemName) {
        
        if(isset($sysVar[$itemName]) === false) return Trace::VOID;
        
        return $sysVar[$itemName];
    }
    
    private function traceClassExport($className) {
        
        return get_class_vars($className);
    }
    
    private function traceSentence($description, $line, $method, $class, $instance, $lineTag = Trace::LINE_TAG,
            $methodTag = Trace::METHOD_TAG, $classTag = Trace::CLASS_TAG, $instanceTag = Trace::INSTANCE_TAG, $sep = Trace::SEP) {
        
        $code = $description->major->code.'-'.$description->secondary->code;
        
        switch($this->errVerbose){
        
            case Trace::ERR_VERBOSE_FULL:
                $description->major->short->msg     .= ' '.$description->major->full->msg;
                $description->secondary->short->msg .= ' '.$description->secondary->full->msg;
                break;
            default: break;
        }
        $this->traceSentence  = '';
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
        
        $this->t_time                = time();
        $this->t_u                   = date('u', $this->t_time);
        $this->t_c                   = date('c', $this->t_time);
        $this->t_e                   = date('e', $this->t_time);
        $this->t_i                   = date('I', $this->t_time);
        $this->t_O                   = date('O', $this->t_time);
        $this->t_SERVER_REQUEST_TIME = $this->traceSysVarItem($_SERVER, 'REQUEST_TIME');
        $this->tdy_z                 = date('z', $this->t_time);
        $this->tY_Y                  = date('Y', $this->t_time);
        $this->tmon_m                = date('m', $this->t_time);
        $this->tdm_d                 = date('d', $this->t_time);
        $this->tH_H                  = date('H', $this->t_time);
        $this->tmin_i                = date('i', $this->t_time);
        $this->ts_s                  = date('s', $this->t_time);
        
        return true;
    }
    
    private function traceCode($description, $instance, $class, $method, $line, $var) {
        
        Trace::$envSequence++;
        
        $this->code_major   = $description->major->code;
        $this->code_minor   = $description->secondary->code;
        $this->code_level   = $this->errorInfoLevel;
        $this->i_name       = $instance;
        $this->c_name       = $class;
        $this->m_name       = $method;
        $this->l_number     = $line;
        $this->var_json     = $this->traceSysVar($var);
        $this->evt_sequence = Trace::$envSequence;
        
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
        
        return true;
    }
    
    private function traceApp() {
        $this->tr_REQUEST_JSON = $this->traceSysVar($_REQUEST);
        $this->tr_cpu           = Trace::VOID;
        
        if(function_exists('sys_getloadavg') === true ) $this->tr_cpu = sys_getloadavg()[0];
        
        $this->tr_memory                    = memory_get_usage(true);
        $this->tr_diskSpace                 = disk_free_space('.');
        $this->tr_pid                       = getmypid();
        $this->tr_SERVER_REQUEST_TIME_FLOAT = $this->traceSysVarItem($_SERVER, 'REQUEST_TIME_FLOAT');
        $this->tr_backtrace_json            = debug_backtrace(DEBUG_BACKTRACE_PROVIDE_OBJECT, 10);
        $this->app_name                     = App::$name;
        $this->app_id                       = App::$id;
        $this->app_ttl                      = App::$ttl;
        $this->app_idCryptedT               = App::$idCryptedT;
        $this->app_idCryptedS               = App::$idCryptedS;
        $this->app_mainClass                = App::$mainClass;
        $this->app_json                     = $this->traceClassExport('App');
        $this->app_securityLevel            = App::$securityLevel;
        
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
        $this->u_name          = User::$name;
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
        $this->ss_appId                = Session::$appId;
        $this->ssClient_userIdCryptedS = User::$idCryptedS;
        $this->ssClient_userIdCryptedT = User::$idCryptedT;
        $this->ssApp_appIdCryptedS     = App::$idCryptedS;
        $this->ssApp_appIdCryptedT     = App::$idCryptedT;
        
        return true;
    }
    
    private function traceMock() {
        
        $this->mock_userIdCryptedS = Mock::$userIdCryptedS;
        $this->mock_appIdCryptedS  = Mock::$appIdCryptedS;
        $this->mock_name           = Mock::$name;
        $this->mock_state          = Mock::$state;
        $this->mock_json           = $this->traceClassExport('Mock');
        
        return true;
    }
    
    private function traceShort() {
        
        $this->var_json                                  = Trace::VOID;
        $this->app_json                                  = Trace::VOID;
        $this->req_REQUEST_JSON                          = Trace::VOID;
        $this->u_json                                    = Trace::VOID;
        $this->ss_json                                   = Trace::VOID;
        $this->ss_SESSION_JSON                           = Trace::VOID;
        $this->cf_json                                   = Trace::VOID;
        $this->hApp_json                                 = Trace::VOID;
        $this->mock_json                                 = Trace::VOID;
        $this->tr_backtrace_json                         = Trace::VOID;
        $this->req_SERVER_SCRIPT_NAME                    = Trace::VOID;
        $this->req_SERVER_QUERY_STRING                   = Trace::VOID;
        $this->req_SERVER_REQUEST_METHOD                 = Trace::VOID;
        $this->req_SERVER_SERVER_PROTOCOL                = Trace::VOID;
        $this->req_SERVER_GATEWAY_INTERFACE              = Trace::VOID;
        $this->req_SERVER_REQUEST_SCHEME                 = Trace::VOID;
        $this->req_SERVER_SCRIPT_FILENAME                = Trace::VOID;
        $this->req_SERVER_SERVER_PORT                    = Trace::VOID;
        $this->req_SERVER_HTTP_ACCEPT_ENCODING           = Trace::VOID;
        $this->req_SERVER_HTTP_UPGRADE_INSECURE_REQUESTS = Trace::VOID;
        $this->req_SERVER_HTTP_ACCEPT                    = Trace::VOID;
        $this->req_SERVER_HTTP_CONNECTION                = Trace::VOID;
        $this->req_SERVER_FCGI_ROLE                      = Trace::VOID;
        $this->hApp_SERVER_PATH                          = Trace::VOID;
        $this->hApp_SERVER_SYSTEMROOT                    = Trace::VOID;
        $this->hApp_SERVER_COMSPEC                       = Trace::VOID;
        $this->hApp_SERVER_PATHEXT                       = Trace::VOID;
        $this->hApp_SERVER_WINDIR                        = Trace::VOID;
        $this->hApp_SERVER_SYSTEMDRIVE                   = Trace::VOID;
        $this->hApp_SERVER_TEMP                          = Trace::VOID;
        $this->hApp_SERVER_TMP                           = Trace::VOID;
        $this->hApp_SERVER_QT_PLUGIN_PATH                = Trace::VOID;
        $this->hApp_SERVER_PHPRC                         = Trace::VOID;
        $this->hApp_SERVER_PHP_FCGI_MAX_REQUESTS         = Trace::VOID;
        $this->hApp_SERVER__FCGI_SHUTDOWN_EVENT_         = Trace::VOID;
        $this->hApp_SERVER_DOCUMENT_ROOT                 = Trace::VOID;
        $this->hApp_SERVER_CONTEXT_PREFIX                = Trace::VOID;
        $this->hApp_SERVER_SERVER_SOFTWARE               = Trace::VOID;
        $this->hApp_SERVER_SERVER_SIGNATURE              = Trace::VOID;
        $this->hApp_SERVER_SystemRoot                    = Trace::VOID;
        
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
                        $this->line              = Trace::VOID;
                        $this->method            = Trace::VOID;
                        $this->class             = Trace::VOID;
                        $this->instance          = Trace::VOID;
                        $this->varJson           = Trace::VOID;
                        $this->app_json          = Trace::VOID;
                        $this->req_REQUEST_JSON  = Trace::VOID;
                        $this->u_json            = Trace::VOID;
                        $this->ss_json           = Trace::VOID;
                        $this->ss_SESSION_JSON   = Trace::VOID;
                        $this->cf_json           = Trace::VOID;
                        $this->tr_backtrace_json = debug_backtrace(DEBUG_BACKTRACE_PROVIDE_OBJECT, 3);
                        break;
                    case 'warning':
                        $this->app_json          = Trace::VOID;
                        $this->req_REQUEST_JSON  = Trace::VOID;
                        $this->u_json            = Trace::VOID;
                        $this->ss_json           = Trace::VOID;
                        $this->ss_SESSION_JSON   = Trace::VOID;
                        $this->tr_backtrace_json = debug_backtrace(DEBUG_BACKTRACE_PROVIDE_OBJECT, 5);
                        break;
                    case 'fatal':
                        $this->l_baktracel_json = debug_backtrace(DEBUG_BACKTRACE_PROVIDE_OBJECT, 0);
                        break;
                    default:
                        $this->traceShort();
                        break;
                }
                break;
            default: break;
        }
        $toTrace = new stdClass();
        
        foreach($this as $k => $v){
            
            $v           = $this->secureVar($v);
            $toTrace->$k = $v;
        }
        unset($toTrace->traceLog);
        unset($toTrace->cypherLog);
        unset($toTrace->errorLevelInfo);
        unset($toTrace->errorInfo);
        
        return $toTrace;
    }
    
    private function traceLogFileContent($toTrace, $sep = Trace::SEP, $sepReplace = Trace::SEP_REPLACE) {
        
        $this->traceLog  = json_encode($toTrace);
        $this->traceLog  = str_replace($sep, $sepReplace, $this->traceLog);
        $this->traceLog .= $sep;
        
        return true;
    }
        
    private function tracePrepare($line, $method, $class, $var) {
        
        $instance = get_class($this);
                
        if(is_object($this->errorInfo) != false) {
            
            $description = $this->errorInfo->description;
            $this->traceSentence($description, $line, $method, $class, $instance);
            $this->traceCode($description, $instance, $class, $method, $line, $var);
        }
        $this->traceTime();
        $this->traceRequest();
        $this->traceApp();
        $this->traceHostApp();
        $this->traceEnv();
        $this->traceConf();
        $this->traceUser();
        $this->traceHostClient();
        $this->traceSession();
        $this->traceMock();
        
        $toTrace = $this->traceLogOptimize();
                
        return $toTrace;
    }
    
    private function traceFile($fileSeparator = Trace::FILE_SEPARATPOR, $fileExt = Trace::FILE_EXT, $fileWriteMode = Trace::FILE_WRITE_MODE) {
                
        switch(Mock::$state) {
            case false: $prefix = '';
             break;
            default: $prefix = Mock::$name.$fileSeparator;
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
    
    private function traceTestFatal($line, $method, $class, $result, $okState = Trace::CODE_INFO) {
        
        if($result === false) return $this->t(Trace::CODE_FATAL, $line, $method, $class, $instance, $result, $funcVoid, $traceExitFunc, $traceStdoutFunc, $errorVerboseShortSuffix, $errorVerboseFullSuffix, $traceFileFunc);
        
        return $this->t($okState, $line, $method, $class, $result, $funcVoid, $traceExitFunc, $traceStdoutFunc, $errorVerboseShortSuffix, $errorVerboseFullSuffix, $traceFileFunc);
    }
    
    private function traceTestFatalEnd($line, $method, $class, $var = Trace::VOID) {
        
        return $this->traceTestFatal($result, $line, $method, $class, $var, Trace::CODE_END_OK);
    }
    
    private function traceTestWarning($line, $method, $class, $var = Trace::VOID) {
        
        if($result === false) return $this->t(Trace::CODE_Warning, $line, $method, $class, $var);
        
        return $this->t(Trace::CODE_END_OK, $line, $method, $class, $instance, $var);
    }
    
    private function traceStart($line, $method, $class, $var = Trace::VOID){
        
        return $this->t(Trace::CODE_START, $line, $method, $class, $var);
    }
    
    public static function traceStartStatic($line, $method, $class, $var = Trace::VOID){
        
        $trace = new Trace();
        
        return $trace->t(Trace::CODE_START, $line, $method, $class, $var);
    }
    
    private function traceStartparam($line, $method, $class, $var = Trace::VOID){
    
        return $this->t(Trace::CODE_START_PARAM, $line, $method, $class, $var);
    }
    
    private function traceEndOK($line, $method, $class, $var = Trace::VOID){
    
        return $this->t(Trace::CODE_END_OK, $line, $method, $class, $var);
    }
    
    public static function traceEndOKStatic($line, $method, $class, $var = Trace::VOID){
    
        $trace = new Trace();
    
        return $trace->t(Trace::CODE_END_OK, $line, $method, $class, $var);
    }
    
    private function traceEndValue($line, $method, $class, $var = Trace::VOID){
    
        return $this->t(Trace::CODE_END_VALUE, $line, $method, $class, $var);
    }
    
    public static function traceEndValueStatic($line, $method, $class, $var = Trace::VOID){
    
        $trace = new Trace();
    
        return $trace->t(Trace::CODE_END_VALUE, $line, $method, $class, $var);
    }
    
    private function traceFatal($line, $method, $class, $var = Trace::VOID){
    
        return $this->t(Trace::CODE_FATAL, $line, $method, $class, $var);
    }
    
    private function traceWarning($line, $method, $class, $var = Trace::VOID){
    
        return $this->t(Trace::CODE_WARNING, $line, $method, $class, $var);
    }
    
    private function traceInfo($line, $method, $class, $var = Trace::VOID){
    
        return $this->t(Trace::CODE_INFO, $line, $method, $class, $var);
    }
    
    public static function traceInfoStatic($line, $method, $class, $var = Trace::VOID){
        $trace = new Trace();
            
        return $trace->t(Trace::CODE_INFO, $line, $method, $class, $var);
    }
    
    private function traceNotice($line, $method, $class, $var = Trace::VOID){
    
        return $this->t(Trace::CODE_NOTICE, $line, $method, $class, $var);
    }
    
    private function tErrorInfo($code) {
    
        $confErrorCodeList    = Trace::$errorCodeList;
        $this->errorInfo      = $confErrorCodeList->$code;
        $this->errorInfoLevel = $this->errorInfo->errorLevel;
        
        Self::UserSecurityLevelupdate($this->errorInfo->securityLevel);
        
        $errorInfoLevel       = $this->errorInfoLevel;
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
    
    private function tExitFunc($traceExitFunc = Trace::FILE_FUNC, $funcVoid = Trace::VOID_FUNC) {
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
    
    private function tErrVerbose($errorVerboseShortSuffix = Trace::ERR_VERBOSE_SHORT_SUFFIX, $errorVerboseFullSuffix = Trace::ERR_VERBOSE_FULL_SUFFIX) {
    
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
    
    private function t($code, $line, $method, $class, $var = Trace::VOID){

        if(is_object(Trace::$errorCodeList) === false){
        
        	$errorType = substr($code, 0, 3);
        	
        	switch($errorType) {
        		
        		case '500':
        			$this->returnValue   = false;
        			$this->exitFunc      = Trace::EXIT_FUNC;
        			$this->stdoutFunc    = Trace::STDOUT_FUNC;
        			$this->traceFileFunc = Trace::FILE_FUNC;
        			break;
        		case '200':
        			$this->returnValue   = true;
        			$this->exitFunc      = Trace::VOID_FUNC;
        			$this->stdoutFunc    = Trace::VOID_FUNC;
        			$this->traceFileFunc = Trace::VOID_FUNC;
        			break;
        		case '000':
        			$this->returnValue   = $var;
        			$this->exitFunc      = Trace::VOID_FUNC;
        			$this->stdoutFunc    = Trace::VOID_FUNC;
        			$this->traceFileFunc = Trace::VOID_FUNC;
        			break;
        		default:
        			$this->returnValue   = false;
        			$this->exitFunc      = Trace::EXIT_FUNC;
        			$this->stdoutFunc    = Trace::STDOUT_FUNC;
        			$this->traceFileFunc = Trace::FILE_FUNC;
        			breal;
        	}
            $httpCode = $errorType;
        }
        else {
            
            $this->tErrorInfo($code);
            $this->tReturnValue($var);
            $this->tExitFunc();
            $this->tStdoutFunc();
            $this->tErrVerbose();
            $this->tTraceFileStatus();
            
            $httpCode = $this->errorLevelInfo->httpCode;
        }
        $toTrace = $this->tracePrepare($line, $method, $class, $var);
        
        $this->traceLogFileContent($toTrace);

        $this->cypherTraceLogContent($toTrace);
        
        if(empty($this->cypherLog) === false && $this->cypherLog !== Trace::VOID) {
	        echo $this->cypherLog;
	        exit();
	    }
        
        $func  = $this->traceFileFunc;
        $this->$func();
        
        http_response_code($httpCode);
        
        $func = $this->stdoutFunc;
        $this->$func();
        
        $func = $this->exitFunc;
        $this->$func();
        
        return $this->returnValue;
    }
}

?>
