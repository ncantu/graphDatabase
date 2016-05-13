<?php

trait TTemplate {
	
	use TMerge;

	public $templateContent = '';
	public $templateHtml    = '';
	
	private function template_init($file = false) {
	
		$this->templateContent = self::templateGet($file);
	}
	
	private static function templateGet($confBasenameVar) {
	
		$file = Template::DIR.$confBasenameVar.Template::EXT;
	
		$content = file_get_contents($file);
	
		if($content === 0) return false;
	
		return $content;
	}
	
	private function templateHtmlGet() {
		
		$this->templateHtml = $templateContent;
		
		foreach($this as $k => $v){
	
			if(is_string($v) !== true) continue;
	
			$this->templateHtml = str_replace(Template::TAG_PREFFIX.$k.Template::TAG_SUFFIX, $v, $this->templateHtml);
		}
		return $this->templateHtml;
	}
	
	private function templateSend(){
		
		echo $this->templateHtml;
	}
	
	private static function selectedHtmlGet($var, $selected, $selectedHtml = '') {
	
		if($var === $selected) $selectedHtml = Template::SELECTED_HTML;
	
		return $selectedHtml;
	}
	
	private static function optionHtmlGet($selected, $id, $value, $text) {
	
		return '<option '.$selected.' name="'.$id.'" id="'.$id.'" value="'.$value.'">'.$text.'</option>';
	}
	
	private static function filterExist($tag, $default = 'all') {
	
		$value = Template::requestVal($tag);
	
		if($value === false) $value = $default;
	
		return $value;
	}
	
	private static function isSelected($val, $select){
	
		$val    = strtolower($val);
		$select = strtolower($select);
	
		if($select === '')      return true;
		if($select === '0')     return true;
		if($select === 'all')   return true;
		if($val    === $select) return true;
	
		return false;
	}
	
	private static function listHtmlGet($list, $valueSelected, $all = true, $none = false) {
	
		$listHtml = '';
	
		if($all  === true) $listHtml .= Template::OPTION_ALL_HTML;
		if($none === true) $listHtml .= Template::OPTION_NONE_HTML;
	
		foreach($list as $value){
	
			$selected  = Template::selectedHtmlGet($value, $valueSelected);
			$listHtml .= Template::optionHtmlGet($selected, $value, $value, $value);
		}
		return $listHtml;
	}
	
		
}

?>