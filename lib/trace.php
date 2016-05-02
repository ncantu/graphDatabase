<?php

class Trace {
	
	CONST VOID                     = '<<VOID>>';
	CONST FILE_SEPARATPOR          = '-';
	CONST FILE_EXT                 = '.log';
	CONST FILE_WRITE_MODE          = 'a+';
	CONST ERR_VERBOSE_SHORT        = 'short';
	CONST ERR_VERBOSE_FULL         = 'full';
	CONST SEP                      = "\n";
	CONST LINE_TAG                 = '__LINE__';
	CONST METHOD_TAG               = '__METHOD__';
	CONST CLASS_TAG                = '__CLASS__';
	CONST INSTANCE_TAG             = '__INSTANCE__';
	CONST DATE_FORMAT              = 'Y-m-d H:i:s';
	CONST EXIT_FUNC                = 'traceExit';
	CONST STDOUT_FUNC              = 'traceStdout';
	CONST ERR_VERBOSE_SHORT_SUFFIX = 'short';
	CONST ERR_VERBOSE_FULL_SUFFIX  = 'full';
	CONST FILE_FUNC                = 'traceFile';
}

?>