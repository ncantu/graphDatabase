
MERGE ('{elmentVar}':'{elmentLabelName}' {'{elmentAttributList}'})
ON CREATE SET 
'{celmentCreateAttributList}'
'{elmentVar}'.dateCreated = timestamp()
ON MATCH SET
'{elmentMatchAttributList}'
'{elmentVar}'.dateMatchLast = timestamp()
