<?php

trait TTemplate {
	
	private static $TEMPLATE_FUNCTION_PREFIX = 'template';
	
	public $templateList;
	
	private $templateDefaultList;
	private $templateValList;
	
	private function template($fileBasename, $type){
	
		$file     = Conf::$templateDir.$type.DIRECTORY_SEPARATOR.$fileBasename;
		$content  = file_get_contents($file);
		$template = new Template($content, $type);
	
		if($template === false) return false;
			
		$rendered = $template->template($this->templateDefaultList, $this->templateValList);
	
		if($rendered === false) return false;
	
		$this->templateList[$template->type] = $rendered;
	
		return true;
	}
	
	private function templateClassToTemplate($ext){
		
		return strtolower(get_class($this)).$ext;
	}
	
	private function templateTagDesignCorePrepareList($list, $type, $listRendered = ''){
				
		foreach($list as $obj){
		
			$listRendered .= $obj->templateList[$type];
		}
		return $listRendered;
	}
	
	private function templateTagDesignCorePrepare($type){
		
		$this->templateValList['attributList'] = $this->templateTagDesignCorePrepareList($this->attributList, $type);
		
		if($this->templateValList['attributList']) return false;
				
		$this->templateValList['elementList']  = $this->templateTagDesignCorePrepareList($this->elementList, $type);
		
		if($this->templateValList['elementList']) return false;
		
		$this->templateValList['labelName']    = $this->labelName;
		$this->templateValList['elementName']  = $this->elementName;
		
		return true;
	}
	
	private function templateStandard($type = Conf::HTML_TYPE, $ext = Conf::HTML_EXT){
	
		$result = $this->templateTagDesignCorePrepare($type);
	
		if($result === false) return false;
	
		$templateFile = $this->templateClassToTemplate($ext);
	
		return $this->template($templateFile, $type);
	}
	
	private static function cypherParamFormat($paramList){
		
		foreach($paramList as $k => $v) {
			
			if(is_string($k) === true) $paramList[$k] = str_replace($v, "'".$v."'", $paramList);
		}
		return $paramList;
	}
	
	private function templateCypher($type, $ext){
		
		$result = $this->templateTagDesignCorePrepare($type);
		
		if($result === false) return false;
		
		$templateCypherFile = $this->templateClassToTemplate($ext);
		
		if($templateCypherFile === false) return false;
		
		$this->templateDefaultList = self::cypherParamFormat($this->templateDefaultList);
		
		if($this->templateDefaultList === false) return false;
		
		$this->templateValList = self::cypherParamFormat($this->templateValList);
		
		if($this->templateValList === false) return false;
	
		return $this->template($templateCypherFile, $type);
	}
	public function templateRender(){
		
		foreach(Conf::$renderList as $render){
			
			$func = self::$TEMPLATE_FUNCTION_PREFIX.ucfirst($render);
			$render->ext;
			
			if(method_exists($this, $func)) {
				
				$result = $this->$func();
			}
			else {
				
				$result = $this->templateStandard();
			}
			if($result === false) return false;
		}
		return true;
	}
		
}

?>