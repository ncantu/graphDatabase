
// var param= file get content confGraphDatabase.json

function cypherDeleAll(){
	
	script="MATCH n)"+"\n"+"DETACH DELETE n";

	return script;
}

function cypherLabelInitAutoincement(label){

  script="MERGE (id:UniqueId{name:'{label}', str:'{labelLower}_'})"+"\n"+"ON CREATE SET id.count = 1"+"\n"+"ON MATCH SET id.count = id.count + 1"+"\n"+"WITH id.str + id.count AS {label}Uid"+"\n";
  script.replace('{label}', label);

 return script;
}

function cypherRelationshipInitAutoincement(relationship){

  script="MERGE (id:UniqueId{name:'{relationship}}', str:'{relationship}_'})"+"\n"+"ON CREATE SET id.count = 1"+"\n"+"ON MATCH SET id.count = id.count + 1"+"\n"+"WITH id.str + id.count AS {relationship}Uid";
  script.replace('{relationship}', relationship);

 return script;
}

function cypherNodeCreate(node, label) {
 
  var labelParamCopy=labelParam;
  var labelList[label].id='{label}}Uid';

  for(var i=0;i<labelList[label].length;i++){
	var obj = nodeParam[i];

	if (obj.nodeName !== node) continue;

	delete obj.nodeName;

	for(var key in obj){
	    var attrName = key;
	    var attrValue = obj[key];
	    labelParamCopy.attrName = attrValue;
	}
  }

  script="CREATE ({node}:{label} {labelParamCopy}'";
  script.replace('{node}', node);
  script.replace('{label}', label);
  script.replace('{labelParamCopy}', JSON.stringigy(labelParamCopy));
  script.replace('\'{label}}Uid\'', '{label}}Uid');

  
  return script;
}





