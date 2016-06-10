<?php

class SecPath {

    use TraitSec;

    CONST PACK                    = 'H*';
    CONST ALGORITHM               = 'sha256';
    CONST RAND_START              = 10;
    CONST RAND_STOP               = 600;
    CONST BASE_64_ENCODE          = false;
    CONST KEY   	              = 'bcb04b7e103a0cd8b54763051cef08bc55abe029fdebae5e1d417e2ffb2a00a3'; // TODO TO CHANGE
    CONST KEY_FILE_BASENAME       = 'secPath';
    CONST ITERATION               = 1000;
    CONST SALT_EXIPRE_DATE_FORMAT = 'Ym';
    CONST SALT_FILE_BASENAME      = 'secSalt';
}

?>