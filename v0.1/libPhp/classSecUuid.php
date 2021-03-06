<?php

class SecUuid {

    use TraitSec;

    CONST KEY_FILE_BASENAME       = 'secUuid';
    CONST ITERATION               = 1000;
    CONST PACK                    = 'H*';
    CONST ALGORITHM               = 'sha256';
    CONST RAND_START              = 20;
    CONST RAND_STOP               = 8000;
    CONST BASE_64_ENCODE          = false;
    CONST KEY                     = 'bcb04b7e103a0cd8b54763051cef08bc55abe029fdebae5e1d417e2ffb2a00a3'; // TODO TO CHANGE
    CONST SALT_EXIPRE_DATE_FORMAT = 'Ym';
    CONST SALT_FILE_BASENAME      = 'secSalt';
}

?>