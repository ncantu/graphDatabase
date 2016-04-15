<?php

require_once 'lib/conf.php';

$conf = new Conf();

foreach($conf->actionList as $actionConfItem) {
	
}

foreach($conf->emotionList as $emotionConfItem) {

}

foreach($conf->labelList as $labelConfItem) {

}

foreach($conf->labelParamList as $labelParamConfItem) {

}

foreach($conf->relationshipParamList as $relationshipParapItem) {

}

/*

$navigationTemplateFile     = $confObj->htmlResultDir.$confObj->navigationTemplateFileBasename;
$nodeTemplateFile           = $confObj->cypherResultDir.$confObj->nodeTemplateFileBasename;

$cypherCode = $conf->deleteAllCypherConfTemplateContent;


foreach($jsonObj as $list => $jsonObj1) {
		
	foreach($jsonObj1 as $name => $attributList) {
		
		if(is_array($listHtlmElement[$list]) === false) $listHtlmElement[$list] = array();
		
		$listId = count($listHtlmElement[$list]);
		$listName = $list.'-'.$name;
		
		$attributListHTML = '';
		
		foreach($attributList as $k => $v){
			$attributListTitle .= $k.': '.$v."\n";
			$attributListHTML .= $attributListHTMLTemplate;
			$attributListHTML = str_replace($attributName, $k, $attributListHTML);
			$attributListHTML = str_replace($attributValue, $v, $attributListHTML);
		}
		$listHtlmElement[$list][$listId] = $htlmElementHtmlTemplate;
		$listHtlmElement[$list][$listId] = str_replace($listNameTag, $listName, $htlmElementHtmlTemplate);
		$listHtlmElement[$list][$listId] = str_replace($attributListTitleTag, $attributListTitle, $htlmElementHtmlTemplate);
		$listHtlmElement[$list][$listId] = str_replace($attributListHTMLTag, $attributListHTML, $htlmElementHtmlTemplate);
		$listHtlmElement[$list][$listId] = str_replace($nodeNameTag, $name, $htlmElementHtmlTemplate);
		
		$cypherCode .= "\n".$cypherCodeCreateNodeWithAutoIncrementTemplate;
		$cypherCode = str_replace($odeNameTag, ucfirst($name), $cypherCode);
		
		if($list === 'labelList') {

			$labelParamCypherCode = '';
			
			foreach($attributList as $k => $v){
				
				foreach($jsonObj->labelParam as $kP => $vP){
					
					if(isset($v->$kP) === false) $v->$kP = $vP;
				}
				foreach($v as $kP2 => $vP2){
					
					$labelParamCypherCode .= ' '.$kP2.': '.$vP2.' ';
				}
				$labelParamCypherCode = '{ '.$labelParamCypherCode.' }';
								
				$cypherCode .= "\n".$cypherCodeLabelsWithAutoIncrementTemplate;
				$cypherCode = str_replace('{nodeName}', ucfirst($name), $cypherCode);
				$cypherCode = str_replace('{labelName}', strtolower($k), $cypherCode);
				$cypherCode = str_replace('{labelParamCypherCode}', $labelParamCypherCode, $cypherCode);
			}
		}
	}
	$listHtlmElement[$list] = $listHtlmElementHtmlTemplate;
	$listHtlmElement[$list] = str_replace('{listName}', $list, $listHtlmElementHtmlTemplate);
	$listHtlmElement[$list] = str_replace('{listHtlmElement}', implode('', $listHtlmElement[$list]), $listHtlmElementHtmlTemplate);

	sort($listHtlmElement[$list]);
	$htlmElementList[$list] = implode("\n", $listHtlmElement[$list]);
}

file_put_contents($navigationTemplateFile, implode("\n", $htlmElementList));
file_put_contents($nodeTemplateFile, $cypherCode);

*/

?>