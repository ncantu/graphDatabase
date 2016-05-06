<?php

class Template {
	
	CONST DIR = '../conf/template/';
	
	use TMerge;
	
    public static $renderList;
	
	private static $TAG_PREFFIX = '{';
	private static $TAG_SUFFIX  = '}';
		
	public $type    = '';
	public $content = '';
	public $file    = false;
	
	public function __construct($content, $type, $file = false){
		
		$this->type    = $type;
		$this->file    = $file;
		$this->content = $content;
	}

	public function template($default, $vals) {
	
		$vals = self::mergeObj($default, $vals);
	
		foreach($vals as $k => $v){
	
			$tagHtml = self::$TAG_PREFFIX.$k.self::$TAG_SUFFIX;
			$content = str_replace($tagHtml, $v, $this->content);
		}
		return $content;
	}

    private static function confTemplateGet($type, $confBasenameVar) {

        $dir  = self::DIR.self::$renderList->$type->dir;
        $ext  = self::$renderList->$type->ext;
        $file = $dir.$confBasenameVar.$ext;
        
        $content = file_get_contents($file);
        
        if($content === 0) return false;
            
        return $content;
    }

    public static function cypherConfTemplateGet($confBasenameVar, $type = Conf::CYPHER_TYPE) {
                        
        return self::confTemplateGet($type, $confBasenameVar);
    }

    public static function htmlConfTemplateGet($confBasenameVar, $type = Conf::HTML_TYPE) {
                        
        return  self::confTemplateGet($type, $confBasenameVar);
    }
}

?>