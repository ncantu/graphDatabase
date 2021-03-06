<?php

trait TraitModule {

    public static $conf = false;

    final private static function moduleListLoad() {

        foreach(self::$conf->moduleList as $module => $detailList) {

            self::requireFrameWorkModule($detailList);
        }
        return true;
    }

    final private static function requireFrameWorkModule($detailList) {

        $mask = Install::MODULE_LIST_DIR.$detailList->moduleName.'/'.$detailList->version.'/';

        foreach($detailList->traitList as $traitName) {

            self::requireFrameWork($mask.Install::TRAIT_PREFIX.$traitName.Install::TRAIT_EXT);
        }
        foreach($detailList->classList as $className) {

            self::requireFrameWork($mask.Install::CLASS_PREFIX.$className.Install::CLASS_EXT);
        }
        foreach($detailList->confList as $confDetailList) {

            self::configure($confDetailList->className, $mask.$confDetailList->confName);
        }
        return true;
    }
}

?>