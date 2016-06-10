<?php

Trait TraitSec {

    public $type;
    public $key;
    public $decypted;
    public $crypted;

    public function __construct($type) {

        $this->type = $type;
        $this->cryptSet($type);
        $this->d($this->crypted);
    }

    public static function installVerif() {

        self::installVerifSalt(self::SALT_FILE_BASENAME);
        self::installVerifKey(self::KEY_FILE_BASENAME);

        return true;
    }

    private static function fileSet($basename) {

        return Install::SEC_DIR.$basename.date(self::SALT_EXIPRE_DATE_FORMAT, time());
    }

    private static function installVerifSalt($basename) {

        $file = self::fileSet($basename);

        if(is_file($file) === true) {

            return true;
        }
        $salt = mcrypt_create_iv(16, MCRYPT_DEV_URANDOM);

        return file_put_contents($file, $salt);
    }

    private static function installVerifKey($basename) {

        $file = self::fileSet($basename);

        if(is_file($file) === true) {

            return true;
        }
        $salt = sha1(self::SEC_KEY);

        return file_put_contents($file, $salt);
    }

    private function c($value){

        $saltFile      = self::fileSet(self::SALT_FILE_BASENAME);
        $salt          = file_get_contents($saltFile);
        $keyFile       = self::fileSet(self::KEY_FILE_BASENAME);
        $keyBase       = file_get_contents($keyFile);
        $key           = pack(self::PACK, hash_pbkdf2(self::ALGORITHM, $keyBase, $salt, self::ITERATION, 32));
        $iv_size       = mcrypt_get_iv_size(MCRYPT_RIJNDAEL_128, MCRYPT_MODE_CBC);
        $iv            = mcrypt_create_iv($iv_size, MCRYPT_RAND);
        $ciphertext    = mcrypt_encrypt(MCRYPT_RIJNDAEL_128, $key, $value, MCRYPT_MODE_CBC, $iv);
        $ciphertext    = $iv . $ciphertext;
        $this->crypted = $ciphertext;

        if(self::BASE_64_ENCODE === true) $this->crypted = base64_encode($this->crypted);

        $this->key['KEY'] = $key;
        $this->key['IV']  = $iv_size;

        return true;
    }

    private function d($value, $key = false){

        if ($key === false) {

            $key = $this->key;
        }
        $ciphertext_dec = $value;

        if(self::BASE_64_ENCODE === true) $ciphertext_dec  = base64_decode($value);

        $iv_dec          = substr($ciphertext_dec, 0, $key['IV']);
        $ciphertext_dec  = substr($ciphertext_dec, $key['IV']);
        $this->decrypted = mcrypt_decrypt(MCRYPT_RIJNDAEL_128, $key['KEY'], $ciphertext_dec, MCRYPT_MODE_CBC, $iv_dec);

        return true;
    }

    private function cryptSet($type, $i = 0) {

        $value = rand(self::RAND_START, self::RAND_STOP).$type.$i;

        while(isset(FrameWork::$nodeList[$value]) === true) {

            $i++;

            $value = rand(self::RAND_START, self::RAND_STOP).$type.$i;
        }
        $value = $this->c($value);

        return $value;
    }
}


?>