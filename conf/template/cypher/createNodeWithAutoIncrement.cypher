
MERGE (id:UniqueId{name:'{nodeName}',str:'{nodeName}_'}) 
ON CREATE SET id.count = 1 
ON MATCH SET id.count = id.count + 1
WITH id.str + id.count AS {nodeName}Uid
