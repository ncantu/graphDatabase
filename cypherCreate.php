<?php

require_once 'lib/conf.php';

function scoreGet($list){

	$score = count($list);

	while(isset($list[$score]) === true) $score++;

	return $score;
}

function actionScoreGet($actionList){
	
	return scoreGet($actionList);
}

function emotionScoreGet($emotionList){
	
	return scoreGet($emotionList);
}

function labelScoreGet($labelList){
	
	return scoreGet($labelList);
}

/*
    public $deleteAllCypherConfTemplateContent                            = '';
    public $createNodeWithAutoIncrementCypherConfTemplateContent          = '';
    public $labelsWithAutoIncrementCypherConfTemplateContent              = '';

    public $attributListHtmlTemplateContent                               = '';
    public $postitHtmlTemplateContent                                     = '';
    public $postitLisHtmlTemplateContent                             = '';
 */

/*

  "attributNameTag": "{attributName}",
  "attributValueTag": "{attributValue}",
  "listNameTag": "{listName}",
  "attributListHTMLTag": "{attributListHTML}",
  "nodeNameTag": "{nodeName}",
  "labelNameTag": "{labelName}",
  "labelParamCypherCode": "{labelParamCypherCode}",

 */


function mergeObj($default, $vals){

	foreach($default as $k => $v){

		if(isset($vals[$k]) === false) $vals[$k] = $v;
	}
	return $vals;	
}

function template($content, $default, $vals){
		
	$vals = mergeObj($default, $vals);
	
	foreach($vals as $k => $v){
		
		$tagHtml = '{'.$k.'}';
		$content = str_replace($tagHtml, $v, $content);
	}
	return $content;
}

function attributListHtml($confItem){
	
	$tagValList['attributName']         = '';
	$tagValList['attributValue']        = '';
	
	foreach($confItem as $k => $v) {
	
	}
	return template($conf->postitHtmlTemplateContent, array(), $tagValList);
	
}

function actionListTemplateHtml($conf, $type = 'action', $paramVar = 'relationshipParamList'){

	$list         = array();
	$listVar      = $type.'List';
	$scoreGetFunc = $type.'ScoreGet';
	$postitList   = array();
	
	foreach($conf->$listVar as $confItemName => $confItem) {
		
		$param                          = $conf->$paramVar;
		$confItem                       = mergeObj($param, $confItem);		
		$tagValList						= array();
		$tagValList['nodeName']         = $confItemName;
		$tagValList['labelName']        = $type;		
		$tagValList['listName']         = $type;		
		$tagValList['attributListHtml'] = attributListHtml($confItem);		
		$score                          = $scoreGetFunc($list);
		$postitList[$score]             = template($conf->postitHtmlTemplateContent, $conf->tagList, $tagValList);
	}
	sort($postitList);
	$postitListHtml 		     = implode('', $postitList);	
	$tagValList				     = array(); 
	$tagValList['positListHtml'] = $postitListHtml;	
    $tagValList['labelName']     = $type;		
	$tagValList['listName']      = $type;
    $postitListHtml              = template($conf->postitHtmlTemplateContent, $conf->tagList, $tagValList);
	
	return $postitListHtml;
}

function emotionListTemplate($conf, $type = 'emotion', $paramVar = 'relationshipParamList'){

	$list         = array();
	$listVar      = $type.'List';
	$scoreGetFunc = $type.'ScoreGet';
	
	foreach($conf->$listVar as $confItemName => $confItem) {
	
		$param      = $conf->$paramVar;
		$param      = mergeObj($param, $confItem);
		$score      = $scoreGetFunc($list);
		$postItHtml = template($conf->postitHtmlTemplateContent, $conf->tagList, $tagValList);
	
	/*
		 "anger": {
		 "negative": true,
		 "forceful": true
		 },
		 */
	}
}

function labelListTemplate($conf, $type = 'label', $paramVar = 'labelParamList'){

	$list         = array();
	$listVar      = $type.'List';
	$scoreGetFunc = $type.'ScoreGet';
	
	foreach($conf->$listVar as $confItemName => $confItem) {
		
		$param      = $conf->$paramVar;
		$param      = mergeObj($param, $confItem);		
		$score      = $scoreGetFunc($list);
		$postItHtml = template($conf->postitHtmlTemplateContent, $conf->tagList, $tagValList);

		/*
		 "Compagny": {
		 "DianeKruger": {
		 "compagnyName": "DianeKruger"
		 },
		 "Instriit": {
		 "compagnyName": "Instriit"
		 }
		 },
		*/
	}
}

$conf = new Conf();

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