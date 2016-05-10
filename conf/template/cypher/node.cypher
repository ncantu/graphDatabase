
MERGE ('{cypherNodeVar}':'{cypherNodeLabelName}' {'{cypherNodeAttributList}'})
ON CREATE SET 
'{cypherNodeCreateAttributList}'
'{cypherNodeVar}'.dateCreated = timestamp()
ON MATCH SET
'{cypherNodeMatchAttributList}'
'{cypherNodeVar}'.dateMatchLast = timestamp()
