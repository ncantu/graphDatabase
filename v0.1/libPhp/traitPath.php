<?php

trait TraitPath {

    use TraitTrace;

    private $secPath;
    private $secUuid;

    private $attributList    = array();

    private static $pathlist = false;

    private function pathSet() {

        $this->secPath = new SecPath(self::SEC_TYPE, __CLASS__);
        $this->secUuid = new SecUuid(self::SEC_TYPE, __CLASS__);

        return true;
    }

    private static function pathUniqAdd($id, $conf) {

        if(isset(self::$pathlist[$id]) === true) {

            self::t(__LINE__.' '.__FILE__.' '.__CLASS__.' '.__FUNCTION__.' '.__METHOD__.' '.$nodeConf->return.' exist', false);

            self::$list[$id]->attributListMergeFromConf($conf);

            return false;
        }
        $class                 = __CLASS__;
        $class::$pathlist[$id] = new $class($conf);

        return true;
    }

    private function attributListMergeFromConf($conf) {

        $attributListAdded = self::listSetFromConf($conf);

        $this->attributList = array_merge($this->attributList, $attributListAdded);

        return true;
    }

    private static function listSetFromConf($conf, $attributList = array()) {

        if(isset($conf->setOnMatch) === false) {

            $conf->setOnMatch = false;
        }
        if(isset($conf->postNameList) === true) {

            foreach($conf->postNameList as $k => $v) {

                $attributConf             = new stdClass();
                $attributConf->return     = $v;

                if(isset($conf->postTypeList) === false) {

                    self::t(__LINE__.' '.__FILE__.' '.__CLASS__.' '.__FUNCTION__.' '.__METHOD__.' '.postTypeList.var_export($conf, true));
                }
                $attributConf->returnType = $conf->postTypeList[$k];
                $attributConf->setOnMatch = $conf->setOnMatch;
                $attributList[$k]         = new Attribut($attributConf);
            }
        }
        if (isset($conf->onCreateSetList) === true){

            foreach($conf->onCreateSetList as $k => $default) {

                $attributConf         = new stdClass();
                $attributConf->return = $k;
                $type                 = gettype($default);

                if($type === 'object') {

                    $type = get_class($default);
                }
                $attributConf->returnType       = $type;
                $attributConf->setOnMatch       = $conf->setOnMatch;
                $attributList[$k]               = new Attribut($attributConf);
                $attributList[$k]->defaultValue = $default;
            }
        }
        return $attributList;
    }
}

?>