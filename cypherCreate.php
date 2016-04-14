<?php

$jsonContent	= file_get_contents('confGraphbase.json');
$jsonObj 		= json_decode($jsonContent);

$listHtlmElement = array();

foreach($jsonObj as $list => $jsonObj1) {
		
	foreach($jsonObj1 as $name => $attributList) {
		
		if(is_array($listHtlmElement[$list]) === false) $listHtlmElement[$list] = array();
		
		$listId = count($listHtlmElement[$list]);
		$listName = $list.'-'.$name;
		
		$attributListHTML = '';
		
		foreach($attributList as $k => $v){
			$attributListTitle .= $k.': '.$v."\n"; 
			$attributListHTML .= '
<p class="def '.$k.'">
	<label class="field '.$k.'">'.$k.': </label> 
	<span class="value '.$v.'">'.$v.'<span>
</p>';
		}
		$listHtlmElement[$list][$listId] = '
<div class="postIt '.$list.' '.$name.'" title="'.$attributListTitle.'" id="'.$listName.'" draggable=true>'.$list.' '.$name.'</div>
<div class="titleOver">'.$attributListHTML.'</div>
<script>
 #{'.$listName.'}.onclick(this.show());
 #{'.$listName.'}.ondrop(this.call());
 		
</script>
';		
	}
	$listHtlmElement[$list] = '
<div class="list '.$list.'">
	'.implode('', $listHtlmElement[$list]).'
</div>
<div class="button add" id="add'.$list.'"></div>
';
}

sort($listHtlmElement);
$htlmElementList = implode('', $listHtlmElement);

echo $htlmElementList;

?>