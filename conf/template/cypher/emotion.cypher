
MERGE ('{cypherEmotionVar}':'{CypherEmotionLabelName}' {'{cypherEmotionAttributList}'})
ON CREATE SET 
'{cypherEmotionCreateAttributList}'
'{cypherEmotionVar}'.dateCreated = timestamp()
ON MATCH SET
'{cypherEmotionMatchAttributList}'
'{cypherEmotionVar}'.dateMatchLast = timestamp()

MERGE ('{cypherEmotionCategoryVar}':'{CypherEmotionCategoryLabelName}' {'{cypherEmotionCategoryAttributList}'})
ON CREATE SET 
'{cypherEmotionCategoryCreateAttributList}'
'{cypherEmotionCategoryVar}'.dateCreated = timestamp()
ON MATCH SET
'{cypherEmotionCategoryMatchAttributList}'
'{cypherEmotionCategoryVar}'.dateMatchLast = timestamp()

MERGE ('{cypherEmotionStickerVar}':'{CypherEmotionStickerLabelName}' {'{cypherEmotionStickerAttributList}'})
ON CREATE SET 
'{cypherEmotionStickerCreateAttributList}'
'{cypherEmotionStickerVar}'.dateCreated = timestamp()
ON MATCH SET
'{cypherEmotionStickerMatchAttributList}'
'{cypherEmotionStickerVar}'.dateMatchLast = timestamp()

MERGE ('{cypherEmotionCategoryVar}')-[:CATEGORIZE]->('{cypherEmotionVar}')
MERGE ('{cypherEmotionStickerVar}')-[:ILLUSTRATE]->('{cypherEmotionVar}')
