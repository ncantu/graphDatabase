<?php

trait TTemplate {
		
	private static $TEMPLATE_FUNCTION_PREFIX = 'template';
	
	public $templateList;
	
	private $templateDefaultList;
	private $templateValList;
	
	private function template($fileBasename, $type){
		
		$this->traceStart(__LINE__, __METHOD__, __CLASS__);
		$this->traceStartParam(__LINE__, __METHOD__, __CLASS__, $fileBasename);
		$this->traceStartParam(__LINE__, __METHOD__, __CLASS__, $type);
	
		$file     = Conf::$templateDir.$type.DIRECTORY_SEPARATOR.$fileBasename;
		$content  = file_get_contents($file);
		$template = new Template($content, $type);
		
		$this->traceTestFatal(__LINE__, __METHOD__, __CLASS__, $template);
			
		$rendered = $template->template($this->templateDefaultList, $this->templateValList);
	
		$this->traceTestFatal(__LINE__, __METHOD__, __CLASS__, $rendered);
	
		$this->templateList[$template->type] = $rendered;
	
		return $this->traceEndOK(__LINE__, __METHOD__, __CLASS__);
	}
	
	private function templateClassToTemplate($ext){
		
		$this->trace(__LINE__, __METHOD__, __CLASS__);
		$this->traceStartParam(__LINE__, __METHOD__, __CLASS__, $ext);
		
		$result = strtolower(get_class($this)).$ext;
		
		return $this->traceEndValue(__LINE__, __METHOD__, __CLASS__, $result);
	}
	
	private function templateTagDesignCorePrepareList($list, $type, $listRendered = ''){
		
		$this->traceStart(__LINE__, __METHOD__, __CLASS__);
		$this->traceStartParam(__LINE__, __METHOD__, __CLASS__, $list);
		$this->traceStartParam(__LINE__, __METHOD__, __CLASS__, $type);
		$this->traceStartParam(__LINE__, __METHOD__, __CLASS__, $listRendered);
				
		foreach($list as $obj){
		
			$listRendered .= $obj->templateList[$type];
		}
		return $this->traceEndOk(__LINE__, __METHOD__, __CLASS__);
	}
	
	private function templateTagDesignCorePrepare($type){
		
		$this->traceStart(__LINE__, __METHOD__, __CLASS__);
		$this->traceStartParam(__LINE__, __METHOD__, __CLASS__, $type);
		
		$this->templateValList['attributList'] = $this->templateTagDesignCorePrepareList($this->attributList, $type);
		
		if($this->templateValList['attributList']) {
			
			$this->traceNotice(__LINE__, __METHOD__, __CLASS__, $this->templateValList['attributList']);
			
			return $this->traceEndOK(__LINE__, __METHOD__, __CLASS__);
		}
				
		$this->templateValList['elementList'] = $this->templateTagDesignCorePrepareList($this->elementList, $type);
		
		if($this->templateValList['elementList']) {
			
			$this->traceNotice(__LINE__, __METHOD__, __CLASS__, $this->templateValList['elementList']);
			
			return $this->traceEndOK(__LINE__, __METHOD__, __CLASS__);
		}
		
		$this->templateValList['labelName']    = $this->labelName;
		$this->templateValList['elementName']  = $this->elementName;
		
		return $this->traceEndOk(__LINE__, __METHOD__, __CLASS__);
	}
	
	private function templateStandard($type = Conf::HTML_TYPE, $ext = Conf::HTML_EXT){
		
		$this->traceStart(__LINE__, __METHOD__, __CLASS__);
		$this->traceStartParam(__LINE__, __METHOD__, __CLASS__, $type);
		$this->traceStartParam(__LINE__, __METHOD__, __CLASS__, $ext);
	
		$result = $this->templateTagDesignCorePrepare($type);
	
		$this->traceTestFatal(__LINE__, __METHOD__, __CLASS__, $result);
	
		$templateFile = $this->templateClassToTemplate($ext);
		$result       = $this->template($templateFile, $type);
		
		return $this->traceEndValue(__LINE__, __METHOD__, __CLASS__, $result);
	}
	
	private static function cypherParamFormat($paramList){
		
		$this->traceStart(__LINE__, __METHOD__, __CLASS__);
		$this->traceStartParam(__LINE__, __METHOD__, __CLASS__, $paramList);
		
		foreach($paramList as $k => $v) {
			
			if(is_string($k) === true) $paramList[$k] = str_replace($v, "'".$v."'", $paramList);
		}
		return $this->traceEndValue(__LINE__, __METHOD__, __CLASS__, $paramList);
	}
	
	private function templateCypher($type, $ext){
		
		$this->traceStart(__LINE__, __METHOD__, __CLASS__);
		$this->traceStartParam(__LINE__, __METHOD__, __CLASS__, $type);
		$this->traceStartParam(__LINE__, __METHOD__, __CLASS__, $ext);
		
		$result = $this->templateTagDesignCorePrepare($type);
		
		$this->traceTestFatal(__LINE__, __METHOD__, __CLASS__, $result);
		
		$templateCypherFile = $this->templateClassToTemplate($ext);
		
		$this->traceTestFatal(__LINE__, __METHOD__, __CLASS__, $templateCypherFile);
		
		$this->templateDefaultList = self::cypherParamFormat($this->templateDefaultList);
		
		$this->traceTestFatal(__LINE__, __METHOD__, __CLASS__, $this->templateDefaultList);
		
		$this->templateValList = self::cypherParamFormat($this->templateValList);
		
		$this->traceTestFatal(__LINE__, __METHOD__, __CLASS__, $this->templateValList);
	
		$result = $this->template($templateCypherFile, $type);
		
		return $this->traceEndValue(__LINE__, __METHOD__, __CLASS__, $result);
	}
	public function templateRender(){
		
		$this->traceStart(__LINE__, __METHOD__, __CLASS__);
		
		foreach(Conf::$renderList as $render){
			
			$func = self::$TEMPLATE_FUNCTION_PREFIX.ucfirst($render);
			$render->ext;
			
			if(method_exists($this, $func)) {
				
				$result = $this->$func();
			}
			else {
				
				$result = $this->templateStandard();
			}
			$this->traceTestFatal(__LINE__, __METHOD__, __CLASS__, $result);
		}
		return $this->traceEndOk(__LINE__, __METHOD__, __CLASS__);
	}
		
}

?>