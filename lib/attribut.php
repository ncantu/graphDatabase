<?php

class attribut {

	use TDesignCore;
	use Ttemplate;

	private $k;
	private $v;
	private $def;
	private $labelName   = '';
	private $elementName = '';

	public function __construct($labelName, $elementName, $type, $name, $value, $def = '') {

		$this->labelName                = $labelName;
		$this->elementName              = $elementName;
		$this->type                     = $type;
		$this->k   						= $name;
		$this->v   						= $value;
		$this->def 						= $def;
		$this->templateDefaultList['k'] = $this->k;
		$this->templateDefaultList['v'] = $this->def;
		$this->templateValList['k']     = $this->k;
		$this->templateValList['v']     = $this->v;
	}
}

?>
