
MERGE ('{cypherActionVar}':'{CypherActionLabelName}' {'{cypherActionAttributList}'})
ON CREATE SET 
'{cypherActionCreateAttributList}'
'{cypherActionVar}'.dateCreated = timestamp()
ON MATCH SET
'{cypherActionMatchAttributList}'
'{cypherActionVar}'.dateMatchLast = timestamp()

MERGE ('{cypherActionCategoryVar}':'{CypherActionCategoryLabelName}' {'{cypherActionCategoryAttributList}'})
ON CREATE SET 
'{cypherActionCategoryCreateAttributList}'
'{cypherActionCategoryVar}'.dateCreated = timestamp()
ON MATCH SET
'{cypherActionCategoryMatchAttributList}'
'{cypherActionCategoryVar}'.dateMatchLast = timestamp()

MERGE ('{cypherActionStickerVar}':'{CypherActionStickerLabelName}' {'{cypherActionStickerAttributList}'})
ON CREATE SET 
'{cypherActionStickerCreateAttributList}'
'{cypherActionStickerVar}'.dateCreated = timestamp()
ON MATCH SET
'{cypherActionStickerMatchAttributList}'
'{cypherActionStickerVar}'.dateMatchLast = timestamp()

MERGE ('{cypherActionCategoryVar}')-[:CATEGORIZE]->('{cypherActionVar}')
MERGE ('{cypherActionStickerVar}')-[:ILLUSTRATE]->('{cypherActionVar}')

 
