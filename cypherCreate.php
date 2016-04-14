<?php

$jsonContent	 = file_get_contents('confGraphbase.json');
$jsonObj 		 = json_decode($jsonContent);
$listHtlmElement = array();
$htlmElementList = array();
$cypherCode      = '';

$cypherCodeInit = '
MATCH (n)
DETACH DELETE n
';

$cypherCodeCreateNodeWithAutoIncrementTemplate = '
MERGE (id:UniqueId{name:\'{nodeName}\',str:\'{nodeName}_\'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1
WITH id.str + id.count AS {nodeName}Uid
';

$cypherCodeLabelsWithAutoIncrementTemplate = '
CREATE ({labelName}:{nodeName} {labelParamCypherCode})
';

$attributListHTMLTemplate = '<p class="def {attributName}">
<label class="field {attributName}">{attributName}: </label>
<span class="value {attributValue}">{attributValue}<span>
</p>
';

$htlmElementHtmlTemplate = '
<div class="postIt {listName} {nodeName}" title="{$attributListTitle}" id="{listName}" draggable=true>{listName}</div>
<div class="titleOver">{attributListHTML}</div>
<script>
#{{listName}}.onclick(this.show());
#{{listName}}.ondrop(this.call());
</script>
';

$listHtlmElementHtmlTemplate = '
<div class="list {listName}">
	{listHtlmElement}
</div>
<div class="button add" id="add{listName}"></div>
';

$cypherCode = $cypherCodeInit;

foreach($jsonObj as $list => $jsonObj1) {
		
	foreach($jsonObj1 as $name => $attributList) {
		
		if(is_array($listHtlmElement[$list]) === false) $listHtlmElement[$list] = array();
		
		$listId = count($listHtlmElement[$list]);
		$listName = $list.'-'.$name;
		
		$attributListHTML = '';
		
		foreach($attributList as $k => $v){
			$attributListTitle .= $k.': '.$v."\n";
			$attributListHTML .= $attributListHTMLTemplate;
			$attributListHTML = str_replace('{attributName}', $k, $attributListHTML);
			$attributListHTML = str_replace('{attributValue}', $v, $attributListHTML);
		}
		$listHtlmElement[$list][$listId] = $htlmElement;
		$listHtlmElement[$list][$listId] = str_replace('{listName}', $listName, $htlmElementHtmlTemplate);
		$listHtlmElement[$list][$listId] = str_replace('{$attributListTitle}', $attributListTitle, $htlmElementHtmlTemplate);
		$listHtlmElement[$list][$listId] = str_replace('{attributListHTML}', $attributListHTML, $htlmElementHtmlTemplate);
		$listHtlmElement[$list][$listId] = str_replace('{nodeName}', $name, $htlmElementHtmlTemplate);
		
		$cypherCode .= "\n".$cypherCodeCreateNodeWithAutoIncrementTemplate;
		$cypherCode = str_replace('{nodeName}', ucfirst($name), $cypherCode);
		
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

file_put_contents('itemNavigationTemplate.html', implode("\n", $htlmElementList));
file_put_contents('itemNavigationTemplate.cypher', $cypherCode);

?>