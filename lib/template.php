<?php 

class Template {
	
	use TMerge;
	
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

	public function template($default, $vals){
	
		$vals = self::mergeObj($default, $vals);
	
		foreach($vals as $k => $v){
	
			$tagHtml = self::$TAG_PREFFIX.$k.self::$TAG_SUFFIX;
			$content = str_replace($tagHtml, $v, $this->content);
		}
		return $content;
	}

    private static function confTemplateGet($typeDir, $confBasenameVar){

        $confTemplateDir     = Conf::$confDir.Conf::$templateDir;
        $typeConfTemplateDir = $confTemplateDir.Conf::$$typeDir;
        $content             = file_get_contents($typeConfTemplateDir.Conf::$$confBasenameVar);
        
        if($content === 0) return false;
            
        return $content;
    }

    public static function cypherConfTemplateGet($confBasenameVar, $type = Conf::CYPHER_TYPE){
                        
        return self::confTemplateGet($type, $confBasenameVar);
    }

    public static function htmlConfTemplateGet($confBasenameVar, $type = seConflf::HTML_TYPE){
                        
        return  self::confTemplateGet($type, $confBasenameVar);
    }
}

?>