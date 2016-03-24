
// ******************************************************
// DELETE ALL NODE AND DETATCH RELATIONSHIPS
// ******************************************************

MATCH (n)
DETACH DELETE n

// ******************************************************
// INIT THE AUTOINCREMENT ID OF NODES
// ******************************************************

MERGE (id:UniqueId{name:'User',str:'user_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1, user = 'sysInit', state=true, dateStart=0, dateEnd=0, step='created', visibility='public', listId=[], alias=[]
WITH id.str + id.count AS userUid

MERGE (id:UniqueId{name:'UserGroup',str:'userGroup_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1, user = 'sysInit', state=true, dateStart=0, dateEnd=0, step='created', visibility='public', listId=[], alias=[]
WITH id.str + id.count AS userGroupUid

MERGE (id:UniqueId{name:'Device',str:'device_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1, user = 'sysInit', state=true, dateStart=0, dateEnd=0, step='created', visibility='public', listId=[], alias=[]
WITH id.str + id.count AS deviceUid

MERGE (id:UniqueId{name:'Media',str:'media_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1, user = 'sysInit', state=true, dateStart=0, dateEnd=0, step='created', visibility='public', listId=[], alias=[]
WITH id.str + id.count AS mediaUid

MERGE (id:UniqueId{name:'Domain',str:'domain_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1, user = 'sysInit', state=true, dateStart=0, dateEnd=0, step='created', visibility='public', listId=[], alias=[]
WITH id.str + id.count AS domainUid

MERGE (id:UniqueId{name:'Campaign',str:'campaign_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1, user = 'sysInit', state=true, dateStart=0, dateEnd=0, step='created', visibility='public', listId=[], alias=[]
WITH id.str + id.count AS campaignUid

MERGE (id:UniqueId{name:'Respurce',str:'resource_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1, user = 'sysInit', state=true, dateStart=0, dateEnd=0, step='created', visibility='public', listId=[], alias=[]
WITH id.str + id.count AS resourceUid

MERGE (id:UniqueId{name:'Format',str:'format_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1, user = 'sysInit', state=true, dateStart=0, dateEnd=0, step='created', visibility='public', listId=[], alias=[]
WITH id.str + id.count AS formatUid

MERGE (id:UniqueId{name:'AnalyticScriptCall',str:'analyticScriptCall_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1, user = 'sysInit', state=true, dateStart=0, dateEnd=0, step='created', visibility='public', listId=[], alias=[]
WITH id.str + id.count AS analyticScriptCallUid

MERGE (id:UniqueId{name:'AnalyticUrlCall', str:'analyticUrlCall_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1, user = 'sysInit', state=true, dateStart=0, dateEnd=0, step='created', visibility='public', listId=[], alias=[]
WITH id.str + id.count AS analyticUrlCallUid

MERGE (id:UniqueId{name:'Segment', str:'segment_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1, user = 'sysInit', state=true, dateStart=0, dateEnd=0, step='created', visibility='public', listId=[], alias=[]
WITH id.str + id.count AS segmentUid

MERGE (id:UniqueId{name:'Right', str:'right_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1, user = 'sysInit', state=true, dateStart=0, dateEnd=0, step='created', visibility='public', listId=[], alias=[]
WITH id.str + id.count AS rightUid

MERGE (id:UniqueId{name:'Action', str:'action_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1, user = 'sysInit', state=true, dateStart=0, dateEnd=0, step='created', visibility='public', listId=[], alias=[]
WITH id.str + id.count AS actionUid

MERGE (id:UniqueId{name:'State', str:'state_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1, user = 'sysInit', state=true, dateStart=0, dateEnd=0, step='created', visibility='public', listId=[], alias=[]
WITH id.str + id.count AS stateUid

MERGE (id:UniqueId{name:'Quality', str:'quality_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1, user = 'sysInit', state=true, dateStart=0, dateEnd=0, step='created', visibility='public', listId=[], alias=[]
WITH id.str + id.count AS qualityUid

MERGE (id:UniqueId{name:'Contract', str:'contract_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1, user = 'sysInit', state=true, dateStart=0, dateEnd=0, step='created', visibility='public', listId=[], alias=[]
WITH id.str + id.count AS contractUid

MERGE (id:UniqueId{name:'Owner', str:'owner_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1, user = 'sysInit', state=true, dateStart=0, dateEnd=0, step='created', visibility='public', listId=[], alias=[]
WITH id.str + id.count AS ownerUid

MERGE (id:UniqueId{name:'Token', str:'token_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1, user = 'sysInit', state=true, dateStart=0, dateEnd=0, step='created', visibility='public', listId=[], alias=[]
WITH id.str + id.count AS tokenUid

MERGE (id:UniqueId{name:'Tag', str:'tag_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1, user = 'sysInit', state=true, dateStart=0, dateEnd=0, step='created', visibility='public', listId=[], alias=[]
WITH id.str + id.count AS tagUid

MERGE (id:UniqueId{name:'ExpireControler', str:'expireControler_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1, user = 'sysInit', state=true, dateStart=0, dateEnd=0, step='run', visibility='public', listId=[], alias=[]
WITH id.str + id.count AS expireControlerUid

MERGE (id:UniqueId{name:'Localization', str:'localization_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1, user = 'sysInit', state=true, dateStart=0, dateEnd=0, step='created', visibility='public', listId=[], alias=[]
WITH id.str + id.count AS localizationUid

MERGE (id:UniqueId{name:'Place', str:'place_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1, user = 'sysInit', state=true, dateStart=0, dateEnd=0, step='created', visibility='public', listId=[], alias=[]
WITH id.str + id.count AS placeUid

MERGE (id:UniqueId{name:'History', str:'history_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1, user = 'sysInit', state=true, dateStart=0, dateEnd=0, step='created', visibility='public', listId=[], alias=[]
WITH id.str + id.count AS historyUid

MERGE (id:UniqueId{name:'Membership', str:'membership_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1, user = 'sysInit', state=true, dateStart=0, dateEnd=0, step='created', visibility='public', listId=[], alias=[]
WITH id.str + id.count AS membershipUid

MERGE (id:UniqueId{name:'Product', str:'product_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1, user = 'sysInit', state=true, dateStart=0, dateEnd=0, step='created', visibility='public', listId=[], alias=[]
WITH id.str + id.count AS productUid

MERGE (id:UniqueId{name:'Stock', str:'stock_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1, user = 'sysInit', state=true, dateStart=0, dateEnd=0, step='created', visibility='public', listId=[], alias=[]
WITH id.str + id.count AS stockUid

MERGE (id:UniqueId{name:'Shipping', str:'shipping_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1, user = 'sysInit', state=true, dateStart=0, dateEnd=0, step='created', visibility='public', listId=[], alias=[]
WITH id.str + id.count AS shippingUid

MERGE (id:UniqueId{name:'Order', str:'order_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1, user = 'sysInit', state=true, dateStart=0, dateEnd=0, step='created', visibility='public', listId=[], alias=[]
WITH id.str + id.count AS orderUid

MERGE (id:UniqueId{name:'BankTransaction', str:'bankTransaction_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1, user = 'sysInit', state=true, dateStart=0, dateEnd=0, step='created', visibility='public', listId=[], alias=[]
WITH id.str + id.count AS bankTransactionUid

MERGE (id:UniqueId{name:'Bill', str:'bill_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1, user = 'sysInit', state=true, dateStart=0, dateEnd=0, step='created', visibility='public', listId=[], alias=[]
WITH id.str + id.count AS billUid

MERGE (id:UniqueId{name:'Expedition', str:'expedition_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1, user = 'sysInit', state=true, dateStart=0, dateEnd=0, step='created', visibility='public', listId=[], alias=[]
WITH id.str + id.count AS expeditionUid

MERGE (id:UniqueId{name:'ExpeditionReturn', str:'expeditionReturn_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1, user = 'sysInit', state=true, dateStart=0, dateEnd=0, step='created', visibility='public', listId=[], alias=[]
WITH id.str + id.count AS ExpeditionReturnUid

MERGE (id:UniqueId{name:'PayBack', str:'payBack_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1, user = 'sysInit', state=true, dateStart=0, dateEnd=0, step='created', visibility='public', listId=[], alias=[]
WITH id.str + id.count AS payBackUid

MERGE (id:UniqueId{name:'ClientRequest', str:'clientRequest_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1, user = 'sysInit', state=true, dateStart=0, dateEnd=0, step='created', visibility='public', listId=[], alias=[]
WITH id.str + id.count AS clientRequestUid

MERGE (id:UniqueId{name:'ClientRequest', str:'clientRequest_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1, user = 'sysInit', state=true, dateStart=0, dateEnd=0, step='created', visibility='public', listId=[], alias=[]
WITH id.str + id.count AS clientRequestUid

MERGE (id:UniqueId{name:'Shipper', str:'shipper_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1, user = 'sysInit', state=true, dateStart=0, dateEnd=0, step='created', visibility='public', listId=[], alias=[]
WITH id.str + id.count AS shipperUid

MERGE (id:UniqueId{name:'Expeditor', str:'expeditor_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1, user = 'sysInit', state=true, dateStart=0, dateEnd=0, step='created', visibility='public', listId=[], alias=[]
WITH id.str + id.count AS expeditorUid

MERGE (id:UniqueId{name:'Bank', str:'bank_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1, user = 'sysInit', state=true, dateStart=0, dateEnd=0, step='created', visibility='public', listId=[], alias=[]
WITH id.str + id.count AS bankUid

MERGE (id:UniqueId{name:'BankFacility', str:'bankFacility_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1, user = 'sysInit', state=true, dateStart=0, dateEnd=0, step='created', visibility='public', listId=[], alias=[]
WITH id.str + id.count AS bankFacilityUid

MERGE (id:UniqueId{name:'ClientManager', str:'clientManager_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1, user = 'sysInit', state=true, dateStart=0, dateEnd=0, step='created', visibility='public', listId=[], alias=[]
WITH id.str + id.count AS clientManagertUid

MERGE (id:UniqueId{name:'Productor', str:'productor_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1, user = 'sysInit', state=true, dateStart=0, dateEnd=0, step='created', visibility='public', listId=[], alias=[]
WITH id.str + id.count AS productorUid

MERGE (id:UniqueId{name:'Client', str:'client_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1, user = 'sysInit', state=true, dateStart=0, dateEnd=0, step='created', visibility='public', listId=[], alias=[]
WITH id.str + id.count AS clientRequestUid
MERGE (id:UniqueId{name:'ClientRequest', str:'clientRequest_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1, user = 'sysInit', state=true, dateStart=0, dateEnd=0, step='created', visibility='public', listId=[], alias=[]
WITH id.str + id.count AS clientUid

MERGE (id:UniqueId{name:'Host', str:'host_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1, user = 'sysInit', state=true, dateStart=0, dateEnd=0, step='created', visibility='public', listId=[], alias=[]
WITH id.str + id.count AS hostUid

MERGE (id:UniqueId{name:'IntegrityControler', str:'integrityControler_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1, user = 'sysInit', state=true, dateStart=0, dateEnd=0, step='run', visibility='public', listId=[], alias=[]
WITH id.str + id.count AS integrityControlerUid

// ******************************************************
// INIT THE AUTOINCREMENT ID OF RELATIONSHIPS
// ******************************************************

MERGE (id:UniqueId{name:'CREATE', str:'CREATE_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1, user = 'sysInit', state=true, dateStart=0, dateEnd=0, step='created', visibility='public', listId=[], alias=[], note='', value=''
WITH id.str + id.count AS createUid

MERGE (id:UniqueId{name:'PUBLISH', str:'PUBLISH_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1, user = 'sysInit', state=true, dateStart=0, dateEnd=0, step='created', visibility='public', listId=[], alias=[], note='', value=''
WITH id.str + id.count AS publishUid

MERGE (id:UniqueId{name:'TEST', str:'TEST_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1, user = 'sysInit', state=true, dateStart=0, dateEnd=0, step='created', visibility='public', listId=[], alias=[], note='', value=''
WITH id.str + id.count AS testUid

MERGE (id:UniqueId{name:'VALID', str:'VALID_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1, user = 'sysInit', state=true, dateStart=0, dateEnd=0, step='created', visibility='public', listId=[], alias=[], note='', value=''
WITH id.str + id.count AS validUid

MERGE (id:UniqueId{name:'HOST', str:'HOST_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1, user = 'sysInit', state=true, dateStart=0, dateEnd=0, step='created', visibility='public', listId=[], alias=[], note='', value=''
WITH id.str + id.count AS hostUid

MERGE (id:UniqueId{name:'USE', str:'USE_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1, user = 'sysInit', state=true, dateStart=0, dateEnd=0, step='created', visibility='public', listId=[], alias=[], note='', value=''
WITH id.str + id.count AS useUid

MERGE (id:UniqueId{name:'MANAGE', str:'MANAGE_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1, user = 'sysInit', state=true, dateStart=0, dateEnd=0, step='created', visibility='public', listId=[], alias=[], note='', value=''
WITH id.str + id.count AS manageUid

MERGE (id:UniqueId{name:'TARGET', str:'TARGET_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1, user = 'sysInit', state=true, dateStart=0, dateEnd=0, step='created', visibility='public', listId=[], alias=[], note='', value=''
WITH id.str + id.count AS targetUid

MERGE (id:UniqueId{name:'REPRESENTE', str:'REPRESENTE_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1, user = 'sysInit', state=true, dateStart=0, dateEnd=0, step='created', visibility='public', listId=[], alias=[], note='', value=''
WITH id.str + id.count AS representeUid

MERGE (id:UniqueId{name:'COLLECT', str:'COLLECT_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1, user = 'sysInit', state=true, dateStart=0, dateEnd=0, step='created', visibility='public', listId=[], alias=[], note='', value=''
WITH id.str + id.count AS collectUid

MERGE (id:UniqueId{name:'AUTHORIZE', str:'AUTHORIZE_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1, user = 'sysInit', state=true, dateStart=0, dateEnd=0, step='created', visibility='public', listId=[], alias=[], note='', value=''
WITH id.str + id.count AS AUTHORIZEUid

MERGE (id:UniqueId{name:'OPTIMIZE', str:'OPTIMIZE_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1, user = 'sysInit', state=true, dateStart=0, dateEnd=0, step='created', visibility='public', listId=[], alias=[], note='', value=''
WITH id.str + id.count AS optimizeUid

MERGE (id:UniqueId{name:'INIT', str:'INIT_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1, user = 'sysInit', state=true, dateStart=0, dateEnd=0, step='created', visibility='public', listId=[], alias=[], note='', value=''
WITH id.str + id.count AS initUid

MERGE (id:UniqueId{name:'OWN', str:'OWN_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1, user = 'sysInit', state=true, dateStart=0, dateEnd=0, step='created', visibility='public', listId=[], alias=[], note='', value=''
WITH id.str + id.count AS ownUid

MERGE (id:UniqueId{name:'IDENTIFY', str:'IDENTIFY_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1, user = 'sysInit', state=true, dateStart=0, dateEnd=0, step='created', visibility='public', listId=[], alias=[], note='', value=''
WITH id.str + id.count AS identifyUid

MERGE (id:UniqueId{name:'MARK', str:'MARK_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1, user = 'sysInit', state=true, dateStart=0, dateEnd=0, step='created', visibility='public', listId=[], alias=[], note='', value=''
WITH id.str + id.count AS MARKUid

MERGE (id:UniqueId{name:'EXPIRE', str:'EXPIRE_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1, user = 'sysInit', state=true, dateStart=0, dateEnd=0, step='created', visibility='public', listId=[], alias=[], note='', value=''
WITH id.str + id.count AS expireUid

MERGE (id:UniqueId{name:'LOCALIZE', str:'LOCALIZE_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1, user = 'sysInit', state=true, dateStart=0, dateEnd=0, step='created', visibility='public', listId=[], alias=[], note='', value=''
WITH id.str + id.count AS LOCALIZEUid

MERGE (id:UniqueId{name:'SHOW', str:'SHOW_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1, user = 'sysInit', state=true, dateStart=0, dateEnd=0, step='created', visibility='public', listId=[], alias=[], note='', value=''
WITH id.str + id.count AS showUid

MERGE (id:UniqueId{name:'SIZE', str:'SIZE_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1, user = 'sysInit', state=true, dateStart=0, dateEnd=0, step='created', visibility='public', listId=[], alias=[], note='', value=''
WITH id.str + id.count AS sizeUid

MERGE (id:UniqueId{name:'HISTORIZE', str:'HISTORIZE_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1, user = 'sysInit', state=true, dateStart=0, dateEnd=0, step='created', visibility='public', listId=[], alias=[], note='', value=''
WITH id.str + id.count AS historyseUid

MERGE (id:UniqueId{name:'CONTRIBUTE_TO', str:'CONTRIBUTE_TO_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1, user = 'sysInit', state=true, dateStart=0, dateEnd=0, step='created', visibility='public', listId=[], alias=[], note='', value=''
WITH id.str + id.count AS contributeToUid

MERGE (id:UniqueId{name:'CONCERN', str:'CONCERN_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1, user = 'sysInit', state=true, dateStart=0, dateEnd=0, step='created', visibility='public', listId=[], alias=[], note='', value=''
WITH id.str + id.count AS concernUid

MERGE (id:UniqueId{name:'COST', str:'COST_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1, user = 'sysInit', state=true, dateStart=0, dateEnd=0, step='created', visibility='public', listId=[], alias=[], note='', value=''
WITH id.str + id.count AS costUid

MERGE (id:UniqueId{name:'STOCK', str:'STOCK_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1, user = 'sysInit', state=true, dateStart=0, dateEnd=0, step='created', visibility='public', listId=[], alias=[], note='', value=''
WITH id.str + id.count AS stockUid

MERGE (id:UniqueId{name:'SHIPP', str:'SHIPP_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1, user = 'sysInit', state=true, dateStart=0, dateEnd=0, step='created', visibility='public', listId=[], alias=[], note='', value=''
WITH id.str + id.count AS shippUid

MERGE (id:UniqueId{name:'ORDER', str:'ORDER_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1, user = 'sysInit', state=true, dateStart=0, dateEnd=0, step='created', visibility='public', listId=[], alias=[], note='', value=''
WITH id.str + id.count AS orderUid

MERGE (id:UniqueId{name:'PAY', str:'PAY_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1, user = 'sysInit', state=true, dateStart=0, dateEnd=0, step='created', visibility='public', listId=[], alias=[], note='', value=''
WITH id.str + id.count AS payUid

MERGE (id:UniqueId{name:'BILLING', str:'BILLING_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1, user = 'sysInit', state=true, dateStart=0, dateEnd=0, step='created', visibility='public', listId=[], alias=[], note='', value=''
WITH id.str + id.count AS billingUid

MERGE (id:UniqueId{name:'EXPEDITE', str:'EXPEDITE_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1, user = 'sysInit', state=true, dateStart=0, dateEnd=0, step='created', visibility='public', listId=[], alias=[], note='', value=''
WITH id.str + id.count AS expediteUid

MERGE (id:UniqueId{name:'PAYBACK', str:'PAYBACK_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1, user = 'sysInit', state=true, dateStart=0, dateEnd=0, step='created', visibility='public', listId=[], alias=[], note='', value=''
WITH id.str + id.count AS payBackUid

MERGE (id:UniqueId{name:'SHIPPMANAGEMENT', str:'SHIPPMANAGEMENT_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1, user = 'sysInit', state=true, dateStart=0, dateEnd=0, step='created', visibility='public', listId=[], alias=[], note='', value=''
WITH id.str + id.count AS shippManangeUid

MERGE (id:UniqueId{name:'EXPEDITEMANAGE', str:'EXPEDITEMANAGE_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1, user = 'sysInit', state=true, dateStart=0, dateEnd=0, step='created', visibility='public', listId=[], alias=[], note='', value=''
WITH id.str + id.count AS expediteManangeUid

MERGE (id:UniqueId{name:'PAYMANAGE', str:'PAYMANAGE_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1, user = 'sysInit', state=true, dateStart=0, dateEnd=0, step='created', visibility='public', listId=[], alias=[], note='', value=''
WITH id.str + id.count AS payManageUid

MERGE (id:UniqueId{name:'PRODUCE', str:'PRODUCE_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1, user = 'sysInit', state=true, dateStart=0, dateEnd=0, step='created', visibility='public', listId=[], alias=[], note='', value=''
WITH id.str + id.count AS produceUid

MERGE (id:UniqueId{name:'ASK', str:'ASK_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1, user = 'sysInit', state=true, dateStart=0, dateEnd=0, step='created', visibility='public', listId=[], alias=[], note='', value=''
WITH id.str + id.count AS askUid

MERGE (id:UniqueId{name:'BALANCE', str:'BALANCE_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1, user = 'sysInit', state=true, dateStart=0, dateEnd=0, step='created', visibility='public', listId=[], alias=[], note='', value=''
WITH id.str + id.count AS balanceUid

MERGE (id:UniqueId{name:'NOTE', str:'NOTE_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1, user = 'sysInit', state=true, dateStart=0, dateEnd=0, step='created', visibility='public', listId=[], alias=[], note='', value=''
WITH id.str + id.count AS noteUid

MERGE (id:UniqueId{name:'COMMENT', str:'COMMENT_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1, user = 'sysInit', state=true, dateStart=0, dateEnd=0, step='created', visibility='public', listId=[], alias=[], note='', value=''
WITH id.str + id.count AS commentUid

// ******************************************************
//semantic
// ******************************************************

// ******************************************************
// CREATE NODES
// ******************************************************

CREATE (ncantu:User {lastName:'Cantu', firstName:'Nicolas', email:'nicolas.cantu@instriit.com'})
CREATE (user1:User {lastName:'Cantu', firstName:'Nicolas', email:'nicolas.cantu@instriit.com'})
CREATE (admin:UserGroup {lastName:'Service', firstName:'Admin', email:'admin@instriit.com'})
CREATE (user:UserGroup {lastName:'Service', firstName:'User', email:'user@instriit.com'})
CREATE (device1:Device)
CREATE (media1:Media)
CREATE (domain1:Domain {dns:'instriit.com'})
CREATE (campaign1:Campaign)
CREATE (resource1:Resource {urlPath:'img', urlName:'resource1', urlExt:'.png', crc:'564654sdf4'})
CREATE (resource2:Resource  {urlPath:'img', urlName:'resource2', urlExt:'.png', crc:'564654dqsdqsdsdf4'})
CREATE (format1:Format {listId:['hq'], contentType: 'image/png', height: 480, heightUnit: 'px', width: 38, widthUnit: 'px', weight: 19, weightUnit: 'ko'})
CREATE (analyticScriptCall1:AnalyticScriptCall {title: 'analyticScriptCall1', google: '<script></scrypt>', crm: '<script></scrypt>', salesforce: '<script></scrypt>', other: '<script></scrypt>'})
CREATE (analyticUrlCall1:AnalyticUrlCall {google: 'http://', crm: 'http://', salesforce: 'http://', other: 'http://'})
CREATE (segment1:Segment)
CREATE (adminRight:Right)
CREATE (userRight:Right)
CREATE (create:Action)
CREATE (publish:Action)
CREATE (test:Action)
CREATE (valid:Action)
CREATE (host:Action)
CREATE (use:Action)
CREATE (state:Action)
CREATE (manage:Action)
CREATE (target:Action)
CREATE (represente:Action)
CREATE (collect:Action)
CREATE (authorise:Action)
CREATE (optimize:Action)
CREATE (init:Action)
CREATE (own:Action)
CREATE (identify:Action)
CREATE (mark:Action)
CREATE (expire:Action)
CREATE (localize:Action)
CREATE (show:Action)
CREATE (size:Action)
CREATE (historize:Action)
CREATE (contributeTo:Action)
CREATE (concern:Action)
CREATE (cost:Action)
CREATE (stock:Action)
CREATE (shipp:Action)
CREATE (order:Action)
CREATE (pay:Action)
CREATE (billing:Action)
CREATE (expedite:Action)
CREATE (payBack:Action)
CREATE (shippManange:Action)
CREATE (expediteManange:Action)
CREATE (payManange:Action)
CREATE (produce:Action)
CREATE (ask:Action)
CREATE (balance:Action)
CREATE (note:Action)
CREATE (comment:Action)
CREATE (todo:Step)
CREATE (created:Step)
CREATE (published:Step)
CREATE (tested:Step)
CREATE (validated:Step)
CREATE (accessed:Step)
CREATE (used:Step)
CREATE (updated:Step)
CREATE (expireded:Step)
CREATE (integrityFalse:Step)
CREATE (quality1:Quality )
CREATE (contract1:Contract )
CREATE (DianeKruger:Owner {fullName: 'Diane Kruger', firstName: 'Diane', lasteName: 'Kruger', compagny: 'Diane Kruger'})
CREATE (Instriit:Owner {fullName: 'Diane Kruger', firstName: 'Diane', lasteName: 'Kruger', compagny: 'Diane Kruger'})
CREATE (token1:Token)
CREATE (b2c:Tag)
CREATE (expireControler1:ExpireControler)
CREATE (fr:Localization {code: 'fr', locale: 'Europe/Paris', lang: 'fr-FR', charset:'utf-8', moneyUnit:'euro'})
CREATE (place1:Place)
CREATE (history1:History)
CREATE (membership1:Membership)
CREATE (productCategorie1:ProductCategory)
CREATE (product1:Product)
CREATE (price1:Price {value:20})
CREATE (stock1:Stock {value:20, unit:'unit'})
CREATE (shipping1:Shipping {value:20, unit:'unit'})
CREATE (order1:Order)
CREATE (bankTransaction1:BankTransaction)
CREATE (bill1:Bill)
CREATE (expedition1:Expedition)
CREATE (expeditionReturn1:ExpeditionReturn {open:false, motif:''})
CREATE (payBack1:PayBack)
CREATE (clientRequest1:ClientRequest )
CREATE (shipper1:Shipper)
CREATE (expeditor1:Expeditor )
CREATE (bank1:Bank )
CREATE (bankFacility1:BankFacility )
CREATE (clientManager1:ClientManager )
CREATE (productor1:Productor )
CREATE (client1:Client )
CREATE (hostPublic1:Host {ip:'', nameInt:'', nameExt:'', hosting:'gandi', sslCompatibilty: true})
CREATE (hostFront1:Host {ip:'', nameInt:'', nameExt:'', hosting:'gandi', sslCompatibilty: true})
CREATE (integrityControler1:IntegrityControler)

// ******************************************************
// CREATE RELATIONSHIPS
// ******************************************************

CREATE 

	(device1) -[:PUBLISH {id:publishUid}]-> (media1),
	(media1) -[:HOST {id:hostUid}]-> (campaign1),
	(media1) -[:USE {id:useUid}]-> (place1),
	(place1) -[:SHOW {id:showUid}]-> (resource1),
	(domain1) -[:MANAGE {id:manageUid}-> (campaign1),
	(campaign1) -[:TARGET {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published1', visibility:'public', note:'', id:targetUid}]-> (segment1),
	(segment1) -[:REPRESENTE {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published1', visibility:'public', note:'', id:reprsenteUid}]-> (segment1),
	(segment1) -[:REPRESENTE {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published1', visibility:'public', note:'', id:represneteUid}]-> (ncantu),
	(format1) -[:SIZE {id:sizeUid}]-> (resource1),
	(quality1) -[:OPTIMIZE {id:optimizeUid}]-> (ressource1),
	(format) -[:INIT {id:initUid}]-> (quality1),
    (DianeKruger) -[:OWN {id:ownUid}]-> (contract1),
    (Instriit) -[:OWN {id:ownUid}]-> (contract1),
	(contract1) -[:AUTHORIZE {id:authorizeUid}]-> (resource1),
	(owner1) -[:OWN {id:ownUid}]-> (contract1),
	(token1) -[:IDENTIFY {id:identifyUid}]-> (ncantu),
	(admin) -[:GROUP {id:groupUid}]-> (ncantu),
	(user) -[:GROUP {id:groupUid}]-> (admin),
	(user) -[:GROUP {id:groupUid}]-> (ncantu),
	(resource1) -[:USE {id:useUid}]-> (analyticScriptCall1),
	(resource1) -[:USE {id:useUid}]-> (analyticUrlCall1),
    (ncantu) -[:CONTRIBUTE_TO {id:contributeToUid}]-> (membership1),
	(productCategorie1) -[:categorize {id:categorizeUid}]-> (product1),
	(resource) -[:CONCERN {id:concernUid}]-> (product1),
	(product1) -[:COST {id:costUid}]-> (price1),
	(stock1) -[:STOCK {id:stockUid}]-> (product1),
	(shipping1) -[:SHIPP {id:shippUid}]-> (product1),
	(order1) -[:ORDER {id:ordeUid}]-> (product1),
	(client1) -[:ORDER {id:oderUid}]-> (order1),
	(bankTransaction1) -[:pay {id:payUid}]-> (order1),
	(bill1) -[:BILLING {id:billingUid}]-> (order1),
	(expedition1) -[:EXPEDITE {id:expeditionUid}]-> (order1),
	(payBack1) -[:PAYBACK {id:paybackUid}]-> (bankTransaction1),
	(shipper1) -[:SHIPPMANAGE {id:shippmanageUid}]-> (shipping1),
	(expeditor1) -[:EXPEDITEMANAGE {id:expeditemanageUid}]-> (expedition1),
	(bank1) -[:PAYMANAGE {id:paymanageUid}]-> (bankTransaction1),
	(bankFacility1) -[:FACILITY {id:facilityUid}]-> (bankTransaction1),
	(productor1) -[:PRODUCE {id:produceUid}]-> (product1),
	(client) -[:ASK {id:askUid}]-> (clientRequest1),
	(ncantu) -[:BECOME {id:becomeUid}]-> (client1),
	(clientManager1) -[:MANAGE {id:manageUid}]-> (client1),
	(hostPublic1) -[:HOST {id:hostUid}]-> (domaine1),
	(hostPublic1) -[:BALANCE {id:balanceUid}]-> (hostFront1),
	(hostPublic1) -[:BALANCE {id:balanceUid}]-> (hostFront2),
	(hostPublic1) -[:BALANCE {id:balanceUid}]-> (hostFront2),

	// ******************************************************
	// RIGHT INITS 
	// ******************************************************

	(ncantu) -[:COLLECT {id:Uid}]-> (admin),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (user),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (admin),

	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (publish) -[:STATE {id:stateUid}]-> (todo),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (publish) -[:STATE {id:stateUid}]-> (created),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (publish) -[:STATE {id:stateUid}]-> (published),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (publish) -[:STATE {id:stateUid}]-> (fixed),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (publish) -[:STATE {id:stateUid}]-> (tested),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (publish) -[:STATE {id:stateUid}]-> (validated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (publish) -[:STATE {id:stateUid}]-> (unvalidated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (publish) -[:STATE {id:stateUid}]-> (accessed),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (publish) -[:STATE {id:stateUid}]-> (used),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (publish) -[:STATE {id:stateUid}]-> (updated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (publish) -[:STATE {id:stateUid}]-> (expireded),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (publish) -[:STATE {id:stateUid}]-> (integrityFalse),

	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (create) -[:STATE {id:stateUid}]-> (todo),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (create) -[:STATE {id:stateUid}]-> (created),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (create) -[:STATE {id:stateUid}]-> (published),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (create) -[:STATE {id:stateUid}]-> (fixed),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (create) -[:STATE {id:stateUid}]-> (tested),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (create) -[:STATE {id:stateUid}]-> (validated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (create) -[:STATE {id:stateUid}]-> (unvalidated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (create) -[:STATE {id:stateUid}]-> (accessed),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (create) -[:STATE {id:stateUid}]-> (used),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (create) -[:STATE {id:stateUid}]-> (updated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (create) -[:STATE {id:stateUid}]-> (expireded),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (create) -[:STATE {id:stateUid}]-> (integrityFalse),

	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (access) -[:STATE {id:stateUid}]-> (todo),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (access) -[:STATE {id:stateUid}]-> (created),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (access) -[:STATE {id:stateUid}]-> (published),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (access) -[:STATE {id:stateUid}]-> (fixed),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (access) -[:STATE {id:stateUid}]-> (tested),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (access) -[:STATE {id:stateUid}]-> (validated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (access) -[:STATE {id:stateUid}]-> (unvalidated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (access) -[:STATE {id:stateUid}]-> (accessed),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (access) -[:STATE {id:stateUid}]-> (used),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (access) -[:STATE {id:stateUid}]-> (updated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (access) -[:STATE {id:stateUid}]-> (expireded),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (access) -[:STATE {id:stateUid}]-> (integrityFalse),

	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (update) -[:STATE {id:stateUid}]-> (todo),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (update) -[:STATE {id:stateUid}]-> (created),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (update) -[:STATE {id:stateUid}]-> (published),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (update) -[:STATE {id:stateUid}]-> (fixed),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (update) -[:STATE {id:stateUid}]-> (tested),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (update) -[:STATE {id:stateUid}]-> (validated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (update) -[:STATE {id:stateUid}]-> (unvalidated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (update) -[:STATE {id:stateUid}]-> (accessed),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (update) -[:STATE {id:stateUid}]-> (used),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (update) -[:STATE {id:stateUid}]-> (updated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (update) -[:STATE {id:stateUid}]-> (expireded),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (update) -[:STATE {id:stateUid}]-> (integrityFalse),

	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (change) -[:STATE {id:stateUid}]-> (todo),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (change) -[:STATE {id:stateUid}]-> (created),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (change) -[:STATE {id:stateUid}]-> (published),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (change) -[:STATE {id:stateUid}]-> (fixed),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (change) -[:STATE {id:stateUid}]-> (tested),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (change) -[:STATE {id:stateUid}]-> (validated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (change) -[:STATE {id:stateUid}]-> (unvalidated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (change) -[:STATE {id:stateUid}]-> (accessed),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (change) -[:STATE {id:stateUid}]-> (used),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (change) -[:STATE {id:stateUid}]-> (updated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (change) -[:STATE {id:stateUid}]-> (expireded),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (change) -[:STATE {id:stateUid}]-> (integrityFalse),

	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (use) -[:STATE {id:stateUid}]-> (todo),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (use) -[:STATE {id:stateUid}]-> (created),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (use) -[:STATE {id:stateUid}]-> (published),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (use) -[:STATE {id:stateUid}]-> (fixed),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (use) -[:STATE {id:stateUid}]-> (tested),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (use) -[:STATE {id:stateUid}]-> (validated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (use) -[:STATE {id:stateUid}]-> (unvalidated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (use) -[:STATE {id:stateUid}]-> (accessed),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (use) -[:STATE {id:stateUid}]-> (used),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (use) -[:STATE {id:stateUid}]-> (updated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (use) -[:STATE {id:stateUid}]-> (expireded),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (use) -[:STATE {id:stateUid}]-> (integrityFalse),

	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (test) -[:STATE {id:stateUid}]-> (todo),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (test) -[:STATE {id:stateUid}]-> (created),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (test) -[:STATE {id:stateUid}]-> (published),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (test) -[:STATE {id:stateUid}]-> (fixed),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (test) -[:STATE {id:stateUid}]-> (tested),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (test) -[:STATE {id:stateUid}]-> (validated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (test) -[:STATE {id:stateUid}]-> (unvalidated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (test) -[:STATE {id:stateUid}]-> (accessed),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (test) -[:STATE {id:stateUid}]-> (used),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (test) -[:STATE {id:stateUid}]-> (updated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (test) -[:STATE {id:stateUid}]-> (expireded),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (test) -[:STATE {id:stateUid}]-> (integrityFalse),

	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (valid) -[:STATE {id:stateUid}]-> (todo),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (valid) -[:STATE {id:stateUid}]-> (created),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (valid) -[:STATE {id:stateUid}]-> (published),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (valid) -[:STATE {id:stateUid}]-> (fixed),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (valid) -[:STATE {id:stateUid}]-> (tested),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (valid) -[:STATE {id:stateUid}]-> (validated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (valid) -[:STATE {id:stateUid}]-> (unvalidated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (valid) -[:STATE {id:stateUid}]-> (accessed),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (valid) -[:STATE {id:stateUid}]-> (used),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (valid) -[:STATE {id:stateUid}]-> (updated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (valid) -[:STATE {id:stateUid}]-> (expireded),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (valid) -[:STATE {id:stateUid}]-> (integrityFalse),

	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (host) -[:STATE {id:stateUid}]-> (todo),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (host) -[:STATE {id:stateUid}]-> (created),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (host) -[:STATE {id:stateUid}]-> (published),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (host) -[:STATE {id:stateUid}]-> (fixed),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (host) -[:STATE {id:stateUid}]-> (tested),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (host) -[:STATE {id:stateUid}]-> (validated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (host) -[:STATE {id:stateUid}]-> (unvalidated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (host) -[:STATE {id:stateUid}]-> (accessed),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (host) -[:STATE {id:stateUid}]-> (used),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (host) -[:STATE {id:stateUid}]-> (updated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (host) -[:STATE {id:stateUid}]-> (expireded),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (host) -[:STATE {id:stateUid}]-> (integrityFalse),

	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (manage) -[:STATE {id:stateUid}]-> (todo),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (manage) -[:STATE {id:stateUid}]-> (created),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (manage) -[:STATE {id:stateUid}]-> (published),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (manage) -[:STATE {id:stateUid}]-> (fixed),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (manage) -[:STATE {id:stateUid}]-> (tested),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (manage) -[:STATE {id:stateUid}]-> (validated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (manage) -[:STATE {id:stateUid}]-> (unvalidated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (manage) -[:STATE {id:stateUid}]-> (accessed),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (manage) -[:STATE {id:stateUid}]-> (used),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (manage) -[:STATE {id:stateUid}]-> (updated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (manage) -[:STATE {id:stateUid}]-> (expireded),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (manage) -[:STATE {id:stateUid}]-> (integrityFalse),

	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (target) -[:STATE {id:stateUid}]-> (todo),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (target) -[:STATE {id:stateUid}]-> (created),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (target) -[:STATE {id:stateUid}]-> (published),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (target) -[:STATE {id:stateUid}]-> (fixed),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (target) -[:STATE {id:stateUid}]-> (tested),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (target) -[:STATE {id:stateUid}]-> (validated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (target) -[:STATE {id:stateUid}]-> (unvalidated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (target) -[:STATE {id:stateUid}]-> (accessed),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (target) -[:STATE {id:stateUid}]-> (used),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (target) -[:STATE {id:stateUid}]-> (updated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (target) -[:STATE {id:stateUid}]-> (expireded),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (target) -[:STATE {id:stateUid}]-> (integrityFalse),

	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (represente) -[:STATE {id:stateUid}]-> (todo),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (represente) -[:STATE {id:stateUid}]-> (created),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (represente) -[:STATE {id:stateUid}]-> (published),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (represente) -[:STATE {id:stateUid}]-> (fixed),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (represente) -[:STATE {id:stateUid}]-> (tested),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (represente) -[:STATE {id:stateUid}]-> (validated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (represente) -[:STATE {id:stateUid}]-> (unvalidated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (represente) -[:STATE {id:stateUid}]-> (accessed),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (represente) -[:STATE {id:stateUid}]-> (used),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (represente) -[:STATE {id:stateUid}]-> (updated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (represente) -[:STATE {id:stateUid}]-> (expireded),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (represente) -[:STATE {id:stateUid}]-> (integrityFalse),

	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (collect) -[:STATE {id:stateUid}]-> (todo),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (collect) -[:STATE {id:stateUid}]-> (created),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (collect) -[:STATE {id:stateUid}]-> (published),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (collect) -[:STATE {id:stateUid}]-> (fixed),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (collect) -[:STATE {id:stateUid}]-> (tested),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (collect) -[:STATE {id:stateUid}]-> (validated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (collect) -[:STATE {id:stateUid}]-> (unvalidated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (collect) -[:STATE {id:stateUid}]-> (accessed),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (collect) -[:STATE {id:stateUid}]-> (used),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (collect) -[:STATE {id:stateUid}]-> (updated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (collect) -[:STATE {id:stateUid}]-> (expireded),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (collect) -[:STATE {id:stateUid}]-> (integrityFalse),

	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (authorize) -[:STATE {id:stateUid}]-> (todo),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (authorize) -[:STATE {id:stateUid}]-> (created),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (authorize) -[:STATE {id:stateUid}]-> (published),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (authorize) -[:STATE {id:stateUid}]-> (fixed),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (authorize) -[:STATE {id:stateUid}]-> (tested),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (authorize) -[:STATE {id:stateUid}]-> (validated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (authorize) -[:STATE {id:stateUid}]-> (unvalidated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (authorize) -[:STATE {id:stateUid}]-> (accessed),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (authorize) -[:STATE {id:stateUid}]-> (used),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (authorize) -[:STATE {id:stateUid}]-> (updated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (authorize) -[:STATE {id:stateUid}]-> (expireded),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (authorize) -[:STATE {id:stateUid}]-> (integrityFalse),

	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (access) -[:STATE {id:stateUid}]-> (todo),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (access) -[:STATE {id:stateUid}]-> (created),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (access) -[:STATE {id:stateUid}]-> (published),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (access) -[:STATE {id:stateUid}]-> (fixed),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (access) -[:STATE {id:stateUid}]-> (tested),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (access) -[:STATE {id:stateUid}]-> (validated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (access) -[:STATE {id:stateUid}]-> (unvalidated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (access) -[:STATE {id:stateUid}]-> (accessed),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (access) -[:STATE {id:stateUid}]-> (used),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (access) -[:STATE {id:stateUid}]-> (updated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (access) -[:STATE {id:stateUid}]-> (expireded),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (access) -[:STATE {id:stateUid}]-> (integrityFalse),

	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (update) -[:STATE {id:stateUid}]-> (todo),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (update) -[:STATE {id:stateUid}]-> (created),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (update) -[:STATE {id:stateUid}]-> (published),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (update) -[:STATE {id:stateUid}]-> (fixed),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (update) -[:STATE {id:stateUid}]-> (tested),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (update) -[:STATE {id:stateUid}]-> (validated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (update) -[:STATE {id:stateUid}]-> (unvalidated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (update) -[:STATE {id:stateUid}]-> (accessed),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (update) -[:STATE {id:stateUid}]-> (used),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (update) -[:STATE {id:stateUid}]-> (updated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (update) -[:STATE {id:stateUid}]-> (expireded),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (update) -[:STATE {id:stateUid}]-> (integrityFalse),

	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (execute) -[:STATE {id:stateUid}]-> (todo),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (execute) -[:STATE {id:stateUid}]-> (created),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (execute) -[:STATE {id:stateUid}]-> (published),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (execute) -[:STATE {id:stateUid}]-> (fixed),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (execute) -[:STATE {id:stateUid}]-> (tested),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (execute) -[:STATE {id:stateUid}]-> (validated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (execute) -[:STATE {id:stateUid}]-> (unvalidated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (execute) -[:STATE {id:stateUid}]-> (accessed),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (execute) -[:STATE {id:stateUid}]-> (used),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (execute) -[:STATE {id:stateUid}]-> (updated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (execute) -[:STATE {id:stateUid}]-> (expireded),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (execute) -[:STATE {id:stateUid}]-> (integrityFalse),

	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (change) -[:STATE {id:stateUid}]-> (todo),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (change) -[:STATE {id:stateUid}]-> (created),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (change) -[:STATE {id:stateUid}]-> (published),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (change) -[:STATE {id:stateUid}]-> (fixed),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (change) -[:STATE {id:stateUid}]-> (tested),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (change) -[:STATE {id:stateUid}]-> (validated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (change) -[:STATE {id:stateUid}]-> (unvalidated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (change) -[:STATE {id:stateUid}]-> (accessed),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (change) -[:STATE {id:stateUid}]-> (used),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (change) -[:STATE {id:stateUid}]-> (updated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (change) -[:STATE {id:stateUid}]-> (expireded),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (change) -[:STATE {id:stateUid}]-> (integrityFalse),

	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (optimize) -[:STATE {id:stateUid}]-> (todo),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (optimize) -[:STATE {id:stateUid}]-> (created),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (optimize) -[:STATE {id:stateUid}]-> (published),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (optimize) -[:STATE {id:stateUid}]-> (fixed),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (optimize) -[:STATE {id:stateUid}]-> (tested),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (optimize) -[:STATE {id:stateUid}]-> (validated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (optimize) -[:STATE {id:stateUid}]-> (unvalidated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (optimize) -[:STATE {id:stateUid}]-> (accessed),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (optimize) -[:STATE {id:stateUid}]-> (used),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (optimize) -[:STATE {id:stateUid}]-> (updated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (optimize) -[:STATE {id:stateUid}]-> (expireded),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (optimize) -[:STATE {id:stateUid}]-> (integrityFalse),

	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (init) -[:STATE {id:stateUid}]-> (todo),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (init) -[:STATE {id:stateUid}]-> (created),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (init) -[:STATE {id:stateUid}]-> (published),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (init) -[:STATE {id:stateUid}]-> (fixed),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (init) -[:STATE {id:stateUid}]-> (tested),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (init) -[:STATE {id:stateUid}]-> (validated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (init) -[:STATE {id:stateUid}]-> (unvalidated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (init) -[:STATE {id:stateUid}]-> (accessed),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (init) -[:STATE {id:stateUid}]-> (used),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (init) -[:STATE {id:stateUid}]-> (updated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (init) -[:STATE {id:stateUid}]-> (expireded),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (init) -[:STATE {id:stateUid}]-> (integrityFalse),

	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (own) -[:STATE {id:stateUid}]-> (todo),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (own) -[:STATE {id:stateUid}]-> (created),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (own) -[:STATE {id:stateUid}]-> (published),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (own) -[:STATE {id:stateUid}]-> (fixed),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (own) -[:STATE {id:stateUid}]-> (tested),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (own) -[:STATE {id:stateUid}]-> (validated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (own) -[:STATE {id:stateUid}]-> (unvalidated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (own) -[:STATE {id:stateUid}]-> (accessed),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (own) -[:STATE {id:stateUid}]-> (used),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (own) -[:STATE {id:stateUid}]-> (updated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (own) -[:STATE {id:stateUid}]-> (expireded),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (own) -[:STATE {id:stateUid}]-> (integrityFalse),

	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (identify) -[:STATE {id:stateUid}]-> (todo),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (identify) -[:STATE {id:stateUid}]-> (created),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (identify) -[:STATE {id:stateUid}]-> (published),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (identify) -[:STATE {id:stateUid}]-> (fixed),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (identify) -[:STATE {id:stateUid}]-> (tested),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (identify) -[:STATE {id:stateUid}]-> (validated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (identify) -[:STATE {id:stateUid}]-> (unvalidated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (identify) -[:STATE {id:stateUid}]-> (accessed),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (identify) -[:STATE {id:stateUid}]-> (used),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (identify) -[:STATE {id:stateUid}]-> (updated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (identify) -[:STATE {id:stateUid}]-> (expireded),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (identify) -[:STATE {id:stateUid}]-> (integrityFalse),

	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (MARK) -[:STATE {id:stateUid}]-> (todo),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (MARK) -[:STATE {id:stateUid}]-> (created),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (MARK) -[:STATE {id:stateUid}]-> (published),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (MARK) -[:STATE {id:stateUid}]-> (fixed),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (MARK) -[:STATE {id:stateUid}]-> (tested),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (MARK) -[:STATE {id:stateUid}]-> (validated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (MARK) -[:STATE {id:stateUid}]-> (unvalidated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (MARK) -[:STATE {id:stateUid}]-> (accessed),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (MARK) -[:STATE {id:stateUid}]-> (used),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (MARK) -[:STATE {id:stateUid}]-> (updated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (MARK) -[:STATE {id:stateUid}]-> (expireded),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (MARK) -[:STATE {id:stateUid}]-> (integrityFalse),

	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (expire) -[:STATE {id:stateUid}]-> (todo),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (expire) -[:STATE {id:stateUid}]-> (created),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (expire) -[:STATE {id:stateUid}]-> (published),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (expire) -[:STATE {id:stateUid}]-> (fixed),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (expire) -[:STATE {id:stateUid}]-> (tested),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (expire) -[:STATE {id:stateUid}]-> (validated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (expire) -[:STATE {id:stateUid}]-> (unvalidated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (expire) -[:STATE {id:stateUid}]-> (accessed),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (expire) -[:STATE {id:stateUid}]-> (used),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (expire) -[:STATE {id:stateUid}]-> (updated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (expire) -[:STATE {id:stateUid}]-> (expireded),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (expire) -[:STATE {id:stateUid}]-> (integrityFalse),

	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (localize) -[:STATE {id:stateUid}]-> (todo),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (localize) -[:STATE {id:stateUid}]-> (created),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (localize) -[:STATE {id:stateUid}]-> (published),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (localize) -[:STATE {id:stateUid}]-> (fixed),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (localize) -[:STATE {id:stateUid}]-> (tested),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (localize) -[:STATE {id:stateUid}]-> (validated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (localize) -[:STATE {id:stateUid}]-> (unvalidated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (localize) -[:STATE {id:stateUid}]-> (accessed),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (localize) -[:STATE {id:stateUid}]-> (used),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (localize) -[:STATE {id:stateUid}]-> (updated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (localize) -[:STATE {id:stateUid}]-> (expireded),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (localize) -[:STATE {id:stateUid}]-> (integrityFalse),

	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (show) -[:STATE {id:stateUid}]-> (todo),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (show) -[:STATE {id:stateUid}]-> (created),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (show) -[:STATE {id:stateUid}]-> (published),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (show) -[:STATE {id:stateUid}]-> (fixed),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (show) -[:STATE {id:stateUid}]-> (tested),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (show) -[:STATE {id:stateUid}]-> (validated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (show) -[:STATE {id:stateUid}]-> (unvalidated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (show) -[:STATE {id:stateUid}]-> (accessed),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (show) -[:STATE {id:stateUid}]-> (used),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (show) -[:STATE {id:stateUid}]-> (updated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (show) -[:STATE {id:stateUid}]-> (expireded),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (show) -[:STATE {id:stateUid}]-> (integrityFalse),

	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (size) -[:STATE {id:stateUid}]-> (todo),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (size) -[:STATE {id:stateUid}]-> (created),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (size) -[:STATE {id:stateUid}]-> (published),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (size) -[:STATE {id:stateUid}]-> (fixed),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (size) -[:STATE {id:stateUid}]-> (tested),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (size) -[:STATE {id:stateUid}]-> (validated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (size) -[:STATE {id:stateUid}]-> (unvalidated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (size) -[:STATE {id:stateUid}]-> (accessed),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (size) -[:STATE {id:stateUid}]-> (used),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (size) -[:STATE {id:stateUid}]-> (updated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (size) -[:STATE {id:stateUid}]-> (expireded),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (size) -[:STATE {id:stateUid}]-> (integrityFalse),

	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (historize) -[:STATE {id:stateUid}]-> (todo),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (historize) -[:STATE {id:stateUid}]-> (created),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (historize) -[:STATE {id:stateUid}]-> (published),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (historize) -[:STATE {id:stateUid}]-> (fixed),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (historize) -[:STATE {id:stateUid}]-> (tested),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (historize) -[:STATE {id:stateUid}]-> (validated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (historize) -[:STATE {id:stateUid}]-> (unvalidated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (historize) -[:STATE {id:stateUid}]-> (accessed),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (historize) -[:STATE {id:stateUid}]-> (used),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (historize) -[:STATE {id:stateUid}]-> (updated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (historize) -[:STATE {id:stateUid}]-> (expireded),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (historize) -[:STATE {id:stateUid}]-> (integrityFalse),

	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (contributeTo) -[:STATE {id:stateUid}]-> (todo),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (contributeTo) -[:STATE {id:stateUid}]-> (created),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (contributeTo) -[:STATE {id:stateUid}]-> (published),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (contributeTo) -[:STATE {id:stateUid}]-> (fixed),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (contributeTo) -[:STATE {id:stateUid}]-> (tested),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (contributeTo) -[:STATE {id:stateUid}]-> (validated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (contributeTo) -[:STATE {id:stateUid}]-> (unvalidated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (contributeTo) -[:STATE {id:stateUid}]-> (accessed),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (contributeTo) -[:STATE {id:stateUid}]-> (used),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (contributeTo) -[:STATE {id:stateUid}]-> (updated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (contributeTo) -[:STATE {id:stateUid}]-> (expireded),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (contributeTo) -[:STATE {id:stateUid}]-> (integrityFalse),

	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (concern) -[:STATE {id:stateUid}]-> (todo),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (concern) -[:STATE {id:stateUid}]-> (created),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (concern) -[:STATE {id:stateUid}]-> (published),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (concern) -[:STATE {id:stateUid}]-> (fixed),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (concern) -[:STATE {id:stateUid}]-> (tested),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (concern) -[:STATE {id:stateUid}]-> (validated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (concern) -[:STATE {id:stateUid}]-> (unvalidated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (concern) -[:STATE {id:stateUid}]-> (accessed),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (concern) -[:STATE {id:stateUid}]-> (used),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (concern) -[:STATE {id:stateUid}]-> (updated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (concern) -[:STATE {id:stateUid}]-> (expireded),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (concern) -[:STATE {id:stateUid}]-> (integrityFalse),

	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (cost) -[:STATE {id:stateUid}]-> (todo),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (cost) -[:STATE {id:stateUid}]-> (created),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (cost) -[:STATE {id:stateUid}]-> (published),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (cost) -[:STATE {id:stateUid}]-> (fixed),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (cost) -[:STATE {id:stateUid}]-> (tested),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (cost) -[:STATE {id:stateUid}]-> (validated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (cost) -[:STATE {id:stateUid}]-> (unvalidated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (cost) -[:STATE {id:stateUid}]-> (accessed),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (cost) -[:STATE {id:stateUid}]-> (used),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (cost) -[:STATE {id:stateUid}]-> (updated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (cost) -[:STATE {id:stateUid}]-> (expireded),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (cost) -[:STATE {id:stateUid}]-> (integrityFalse),

	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (stock) -[:STATE {id:stateUid}]-> (todo),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (stock) -[:STATE {id:stateUid}]-> (created),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (stock) -[:STATE {id:stateUid}]-> (published),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (stock) -[:STATE {id:stateUid}]-> (fixed),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (stock) -[:STATE {id:stateUid}]-> (tested),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (stock) -[:STATE {id:stateUid}]-> (validated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (stock) -[:STATE {id:stateUid}]-> (unvalidated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (stock) -[:STATE {id:stateUid}]-> (accessed),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (stock) -[:STATE {id:stateUid}]-> (used),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (stock) -[:STATE {id:stateUid}]-> (updated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (stock) -[:STATE {id:stateUid}]-> (expireded),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (stock) -[:STATE {id:stateUid}]-> (integrityFalse),

	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (shipp) -[:STATE {id:stateUid}]-> (todo),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (shipp) -[:STATE {id:stateUid}]-> (created),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (shipp) -[:STATE {id:stateUid}]-> (published),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (shipp) -[:STATE {id:stateUid}]-> (fixed),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (shipp) -[:STATE {id:stateUid}]-> (tested),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (shipp) -[:STATE {id:stateUid}]-> (validated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (shipp) -[:STATE {id:stateUid}]-> (unvalidated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (shipp) -[:STATE {id:stateUid}]-> (accessed),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (shipp) -[:STATE {id:stateUid}]-> (used),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (shipp) -[:STATE {id:stateUid}]-> (updated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (shipp) -[:STATE {id:stateUid}]-> (expireded),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (shipp) -[:STATE {id:stateUid}]-> (integrityFalse),

	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (order) -[:STATE {id:stateUid}]-> (todo),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (order) -[:STATE {id:stateUid}]-> (created),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (order) -[:STATE {id:stateUid}]-> (published),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (order) -[:STATE {id:stateUid}]-> (fixed),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (order) -[:STATE {id:stateUid}]-> (tested),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (order) -[:STATE {id:stateUid}]-> (validated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (order) -[:STATE {id:stateUid}]-> (unvalidated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (order) -[:STATE {id:stateUid}]-> (accessed),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (order) -[:STATE {id:stateUid}]-> (used),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (order) -[:STATE {id:stateUid}]-> (updated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (order) -[:STATE {id:stateUid}]-> (expireded),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (order) -[:STATE {id:stateUid}]-> (integrityFalse),

	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (pay) -[:STATE {id:stateUid}]-> (todo),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (pay) -[:STATE {id:stateUid}]-> (created),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (pay) -[:STATE {id:stateUid}]-> (published),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (pay) -[:STATE {id:stateUid}]-> (fixed),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (pay) -[:STATE {id:stateUid}]-> (tested),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (pay) -[:STATE {id:stateUid}]-> (validated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (pay) -[:STATE {id:stateUid}]-> (unvalidated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (pay) -[:STATE {id:stateUid}]-> (accessed),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (pay) -[:STATE {id:stateUid}]-> (used),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (pay) -[:STATE {id:stateUid}]-> (updated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (pay) -[:STATE {id:stateUid}]-> (expireded),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (pay) -[:STATE {id:stateUid}]-> (integrityFalse),

	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (billing) -[:STATE {id:stateUid}]-> (todo),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (billing) -[:STATE {id:stateUid}]-> (created),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (billing) -[:STATE {id:stateUid}]-> (published),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (billing) -[:STATE {id:stateUid}]-> (fixed),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (billing) -[:STATE {id:stateUid}]-> (tested),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (billing) -[:STATE {id:stateUid}]-> (validated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (billing) -[:STATE {id:stateUid}]-> (unvalidated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (billing) -[:STATE {id:stateUid}]-> (accessed),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (billing) -[:STATE {id:stateUid}]-> (used),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (billing) -[:STATE {id:stateUid}]-> (updated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (billing) -[:STATE {id:stateUid}]-> (expireded),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (billing) -[:STATE {id:stateUid}]-> (integrityFalse),

	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (expedite) -[:STATE {id:stateUid}]-> (todo),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (expedite) -[:STATE {id:stateUid}]-> (created),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (expedite) -[:STATE {id:stateUid}]-> (published),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (expedite) -[:STATE {id:stateUid}]-> (fixed),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (expedite) -[:STATE {id:stateUid}]-> (tested),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (expedite) -[:STATE {id:stateUid}]-> (validated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (expedite) -[:STATE {id:stateUid}]-> (unvalidated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (expedite) -[:STATE {id:stateUid}]-> (accessed),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (expedite) -[:STATE {id:stateUid}]-> (used),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (expedite) -[:STATE {id:stateUid}]-> (updated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (expedite) -[:STATE {id:stateUid}]-> (expireded),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (expedite) -[:STATE {id:stateUid}]-> (integrityFalse),

	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (payBack) -[:STATE {id:stateUid}]-> (todo),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (payBack) -[:STATE {id:stateUid}]-> (created),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (payBack) -[:STATE {id:stateUid}]-> (published),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (payBack) -[:STATE {id:stateUid}]-> (fixed),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (payBack) -[:STATE {id:stateUid}]-> (tested),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (payBack) -[:STATE {id:stateUid}]-> (validated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (payBack) -[:STATE {id:stateUid}]-> (unvalidated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (payBack) -[:STATE {id:stateUid}]-> (accessed),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (payBack) -[:STATE {id:stateUid}]-> (used),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (payBack) -[:STATE {id:stateUid}]-> (updated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (payBack) -[:STATE {id:stateUid}]-> (expireded),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (payBack) -[:STATE {id:stateUid}]-> (integrityFalse),

	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (shippManange) -[:STATE {id:stateUid}]-> (todo),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (shippManange) -[:STATE {id:stateUid}]-> (created),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (shippManange) -[:STATE {id:stateUid}]-> (published),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (shippManange) -[:STATE {id:stateUid}]-> (fixed),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (shippManange) -[:STATE {id:stateUid}]-> (tested),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (shippManange) -[:STATE {id:stateUid}]-> (validated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (shippManange) -[:STATE {id:stateUid}]-> (unvalidated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (shippManange) -[:STATE {id:stateUid}]-> (accessed),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (shippManange) -[:STATE {id:stateUid}]-> (used),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (shippManange) -[:STATE {id:stateUid}]-> (updated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (shippManange) -[:STATE {id:stateUid}]-> (expireded),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (shippManange) -[:STATE {id:stateUid}]-> (integrityFalse),

	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (expediteManange) -[:STATE {id:stateUid}]-> (todo),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (expediteManange) -[:STATE {id:stateUid}]-> (created),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (expediteManange) -[:STATE {id:stateUid}]-> (published),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (expediteManange) -[:STATE {id:stateUid}]-> (fixed),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (expediteManange) -[:STATE {id:stateUid}]-> (tested),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (expediteManange) -[:STATE {id:stateUid}]-> (validated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (expediteManange) -[:STATE {id:stateUid}]-> (unvalidated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (expediteManange) -[:STATE {id:stateUid}]-> (accessed),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (expediteManange) -[:STATE {id:stateUid}]-> (used),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (expediteManange) -[:STATE {id:stateUid}]-> (updated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (expediteManange) -[:STATE {id:stateUid}]-> (expireded),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (expediteManange) -[:STATE {id:stateUid}]-> (integrityFalse),

	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (payManange) -[:STATE {id:stateUid}]-> (todo),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (payManange) -[:STATE {id:stateUid}]-> (created),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (payManange) -[:STATE {id:stateUid}]-> (published),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (payManange) -[:STATE {id:stateUid}]-> (fixed),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (payManange) -[:STATE {id:stateUid}]-> (tested),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (payManange) -[:STATE {id:stateUid}]-> (validated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (payManange) -[:STATE {id:stateUid}]-> (unvalidated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (payManange) -[:STATE {id:stateUid}]-> (accessed),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (payManange) -[:STATE {id:stateUid}]-> (used),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (payManange) -[:STATE {id:stateUid}]-> (updated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (payManange) -[:STATE {id:stateUid}]-> (expireded),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (payManange) -[:STATE {id:stateUid}]-> (integrityFalse),

	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (produce) -[:STATE {id:stateUid}]-> (todo),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (produce) -[:STATE {id:stateUid}]-> (created),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (produce) -[:STATE {id:stateUid}]-> (published),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (produce) -[:STATE {id:stateUid}]-> (fixed),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (produce) -[:STATE {id:stateUid}]-> (tested),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (produce) -[:STATE {id:stateUid}]-> (validated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (produce) -[:STATE {id:stateUid}]-> (unvalidated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (produce) -[:STATE {id:stateUid}]-> (accessed),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (produce) -[:STATE {id:stateUid}]-> (used),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (produce) -[:STATE {id:stateUid}]-> (updated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (produce) -[:STATE {id:stateUid}]-> (expireded),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (produce) -[:STATE {id:stateUid}]-> (integrityFalse),

	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (ask) -[:STATE {id:stateUid}]-> (todo),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (ask) -[:STATE {id:stateUid}]-> (created),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (ask) -[:STATE {id:stateUid}]-> (published),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (ask) -[:STATE {id:stateUid}]-> (fixed),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (ask) -[:STATE {id:stateUid}]-> (tested),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (ask) -[:STATE {id:stateUid}]-> (validated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (ask) -[:STATE {id:stateUid}]-> (unvalidated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (ask) -[:STATE {id:stateUid}]-> (accessed),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (ask) -[:STATE {id:stateUid}]-> (used),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (ask) -[:STATE {id:stateUid}]-> (updated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (ask) -[:STATE {id:stateUid}]-> (expireded),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (ask) -[:STATE {id:stateUid}]-> (integrityFalse),

	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (balance) -[:STATE {id:stateUid}]-> (todo),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (balance) -[:STATE {id:stateUid}]-> (created),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (balance) -[:STATE {id:stateUid}]-> (published),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (balance) -[:STATE {id:stateUid}]-> (fixed),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (balance) -[:STATE {id:stateUid}]-> (tested),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (balance) -[:STATE {id:stateUid}]-> (validated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (balance) -[:STATE {id:stateUid}]-> (unvalidated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (balance) -[:STATE {id:stateUid}]-> (accessed),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (balance) -[:STATE {id:stateUid}]-> (used),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (balance) -[:STATE {id:stateUid}]-> (updated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (balance) -[:STATE {id:stateUid}]-> (expireded),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (balance) -[:STATE {id:stateUid}]-> (integrityFalse),

	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (state) -[:STATE {id:stateUid}]-> (todo),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (state) -[:STATE {id:stateUid}]-> (created),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (state) -[:STATE {id:stateUid}]-> (published),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (state) -[:STATE {id:stateUid}]-> (fixed),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (state) -[:STATE {id:stateUid}]-> (tested),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (state) -[:STATE {id:stateUid}]-> (validated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (state) -[:STATE {id:stateUid}]-> (unvalidated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (state) -[:STATE {id:stateUid}]-> (accessed),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (state) -[:STATE {id:stateUid}]-> (used),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (state) -[:STATE {id:stateUid}]-> (updated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (state) -[:STATE {id:stateUid}]-> (expireded),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (state) -[:STATE {id:stateUid}]-> (integrityFalse),

	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (note) -[:STATE {id:stateUid}]-> (todo),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (note) -[:STATE {id:stateUid}]-> (created),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (note) -[:STATE {id:stateUid}]-> (published),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (note) -[:STATE {id:stateUid}]-> (fixed),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (note) -[:STATE {id:stateUid}]-> (tested),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (note) -[:STATE {id:stateUid}]-> (validated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (note) -[:STATE {id:stateUid}]-> (unvalidated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (note) -[:STATE {id:stateUid}]-> (accessed),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (note) -[:STATE {id:stateUid}]-> (used),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (note) -[:STATE {id:stateUid}]-> (updated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (note) -[:STATE {id:stateUid}]-> (expireded),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (note) -[:STATE {id:stateUid}]-> (integrityFalse),

	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (comment) -[:STATE {id:stateUid}]-> (todo),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (comment) -[:STATE {id:stateUid}]-> (created),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (comment) -[:STATE {id:stateUid}]-> (published),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (comment) -[:STATE {id:stateUid}]-> (fixed),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (comment) -[:STATE {id:stateUid}]-> (tested),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (comment) -[:STATE {id:stateUid}]-> (validated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (comment) -[:STATE {id:stateUid}]-> (unvalidated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (comment) -[:STATE {id:stateUid}]-> (accessed),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (comment) -[:STATE {id:stateUid}]-> (used),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (comment) -[:STATE {id:stateUid}]-> (updated),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (comment) -[:STATE {id:stateUid}]-> (expireded),
	(adminRight) -[:AUTHORIZE {id:authorizeUid}]-> (comment) -[:STATE {id:stateUid}]-> (integrityFalse),

	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (publish) -[:STATE {id:stateUid}]-> (todo),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (publish) -[:STATE {id:stateUid}]-> (created),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (publish) -[:STATE {id:stateUid}]-> (published),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (publish) -[:STATE {id:stateUid}]-> (fixed),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (publish) -[:STATE {id:stateUid}]-> (tested),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (publish) -[:STATE {id:stateUid}]-> (validated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (publish) -[:STATE {id:stateUid}]-> (unvalidated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (publish) -[:STATE {id:stateUid}]-> (accessed),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (publish) -[:STATE {id:stateUid}]-> (used),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (publish) -[:STATE {id:stateUid}]-> (updated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (publish) -[:STATE {id:stateUid}]-> (expireded),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (publish) -[:STATE {id:stateUid}]-> (integrityFalse),

	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (create) -[:STATE {id:stateUid}]-> (todo),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (create) -[:STATE {id:stateUid}]-> (created),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (create) -[:STATE {id:stateUid}]-> (published),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (create) -[:STATE {id:stateUid}]-> (fixed),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (create) -[:STATE {id:stateUid}]-> (tested),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (create) -[:STATE {id:stateUid}]-> (validated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (create) -[:STATE {id:stateUid}]-> (unvalidated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (create) -[:STATE {id:stateUid}]-> (accessed),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (create) -[:STATE {id:stateUid}]-> (used),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (create) -[:STATE {id:stateUid}]-> (updated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (create) -[:STATE {id:stateUid}]-> (expireded),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (create) -[:STATE {id:stateUid}]-> (integrityFalse),

	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (access) -[:STATE {id:stateUid}]-> (todo),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (access) -[:STATE {id:stateUid}]-> (created),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (access) -[:STATE {id:stateUid}]-> (published),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (access) -[:STATE {id:stateUid}]-> (fixed),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (access) -[:STATE {id:stateUid}]-> (tested),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (access) -[:STATE {id:stateUid}]-> (validated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (access) -[:STATE {id:stateUid}]-> (unvalidated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (access) -[:STATE {id:stateUid}]-> (accessed),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (access) -[:STATE {id:stateUid}]-> (used),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (access) -[:STATE {id:stateUid}]-> (updated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (access) -[:STATE {id:stateUid}]-> (expireded),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (access) -[:STATE {id:stateUid}]-> (integrityFalse),

	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (update) -[:STATE {id:stateUid}]-> (todo),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (update) -[:STATE {id:stateUid}]-> (created),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (update) -[:STATE {id:stateUid}]-> (published),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (update) -[:STATE {id:stateUid}]-> (fixed),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (update) -[:STATE {id:stateUid}]-> (tested),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (update) -[:STATE {id:stateUid}]-> (validated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (update) -[:STATE {id:stateUid}]-> (unvalidated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (update) -[:STATE {id:stateUid}]-> (accessed),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (update) -[:STATE {id:stateUid}]-> (used),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (update) -[:STATE {id:stateUid}]-> (updated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (update) -[:STATE {id:stateUid}]-> (expireded),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (update) -[:STATE {id:stateUid}]-> (integrityFalse),

	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (change) -[:STATE {id:stateUid}]-> (todo),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (change) -[:STATE {id:stateUid}]-> (created),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (change) -[:STATE {id:stateUid}]-> (published),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (change) -[:STATE {id:stateUid}]-> (fixed),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (change) -[:STATE {id:stateUid}]-> (tested),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (change) -[:STATE {id:stateUid}]-> (validated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (change) -[:STATE {id:stateUid}]-> (unvalidated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (change) -[:STATE {id:stateUid}]-> (accessed),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (change) -[:STATE {id:stateUid}]-> (used),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (change) -[:STATE {id:stateUid}]-> (updated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (change) -[:STATE {id:stateUid}]-> (expireded),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (change) -[:STATE {id:stateUid}]-> (integrityFalse),

	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (use) -[:STATE {id:stateUid}]-> (todo),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (use) -[:STATE {id:stateUid}]-> (created),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (use) -[:STATE {id:stateUid}]-> (published),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (use) -[:STATE {id:stateUid}]-> (fixed),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (use) -[:STATE {id:stateUid}]-> (tested),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (use) -[:STATE {id:stateUid}]-> (validated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (use) -[:STATE {id:stateUid}]-> (unvalidated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (use) -[:STATE {id:stateUid}]-> (accessed),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (use) -[:STATE {id:stateUid}]-> (used),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (use) -[:STATE {id:stateUid}]-> (updated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (use) -[:STATE {id:stateUid}]-> (expireded),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (use) -[:STATE {id:stateUid}]-> (integrityFalse),

	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (test) -[:STATE {id:stateUid}]-> (todo),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (test) -[:STATE {id:stateUid}]-> (created),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (test) -[:STATE {id:stateUid}]-> (published),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (test) -[:STATE {id:stateUid}]-> (fixed),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (test) -[:STATE {id:stateUid}]-> (tested),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (test) -[:STATE {id:stateUid}]-> (validated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (test) -[:STATE {id:stateUid}]-> (unvalidated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (test) -[:STATE {id:stateUid}]-> (accessed),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (test) -[:STATE {id:stateUid}]-> (used),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (test) -[:STATE {id:stateUid}]-> (updated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (test) -[:STATE {id:stateUid}]-> (expireded),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (test) -[:STATE {id:stateUid}]-> (integrityFalse),

	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (valid) -[:STATE {id:stateUid}]-> (todo),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (valid) -[:STATE {id:stateUid}]-> (created),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (valid) -[:STATE {id:stateUid}]-> (published),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (valid) -[:STATE {id:stateUid}]-> (fixed),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (valid) -[:STATE {id:stateUid}]-> (tested),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (valid) -[:STATE {id:stateUid}]-> (validated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (valid) -[:STATE {id:stateUid}]-> (unvalidated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (valid) -[:STATE {id:stateUid}]-> (accessed),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (valid) -[:STATE {id:stateUid}]-> (used),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (valid) -[:STATE {id:stateUid}]-> (updated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (valid) -[:STATE {id:stateUid}]-> (expireded),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (valid) -[:STATE {id:stateUid}]-> (integrityFalse),

	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (host) -[:STATE {id:stateUid}]-> (todo),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (host) -[:STATE {id:stateUid}]-> (created),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (host) -[:STATE {id:stateUid}]-> (published),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (host) -[:STATE {id:stateUid}]-> (fixed),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (host) -[:STATE {id:stateUid}]-> (tested),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (host) -[:STATE {id:stateUid}]-> (validated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (host) -[:STATE {id:stateUid}]-> (unvalidated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (host) -[:STATE {id:stateUid}]-> (accessed),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (host) -[:STATE {id:stateUid}]-> (used),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (host) -[:STATE {id:stateUid}]-> (updated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (host) -[:STATE {id:stateUid}]-> (expireded),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (host) -[:STATE {id:stateUid}]-> (integrityFalse),

	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (manage) -[:STATE {id:stateUid}]-> (todo),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (manage) -[:STATE {id:stateUid}]-> (created),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (manage) -[:STATE {id:stateUid}]-> (published),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (manage) -[:STATE {id:stateUid}]-> (fixed),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (manage) -[:STATE {id:stateUid}]-> (tested),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (manage) -[:STATE {id:stateUid}]-> (validated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (manage) -[:STATE {id:stateUid}]-> (unvalidated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (manage) -[:STATE {id:stateUid}]-> (accessed),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (manage) -[:STATE {id:stateUid}]-> (used),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (manage) -[:STATE {id:stateUid}]-> (updated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (manage) -[:STATE {id:stateUid}]-> (expireded),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (manage) -[:STATE {id:stateUid}]-> (integrityFalse),

	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (target) -[:STATE {id:stateUid}]-> (todo),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (target) -[:STATE {id:stateUid}]-> (created),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (target) -[:STATE {id:stateUid}]-> (published),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (target) -[:STATE {id:stateUid}]-> (fixed),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (target) -[:STATE {id:stateUid}]-> (tested),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (target) -[:STATE {id:stateUid}]-> (validated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (target) -[:STATE {id:stateUid}]-> (unvalidated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (target) -[:STATE {id:stateUid}]-> (accessed),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (target) -[:STATE {id:stateUid}]-> (used),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (target) -[:STATE {id:stateUid}]-> (updated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (target) -[:STATE {id:stateUid}]-> (expireded),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (target) -[:STATE {id:stateUid}]-> (integrityFalse),

	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (represente) -[:STATE {id:stateUid}]-> (todo),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (represente) -[:STATE {id:stateUid}]-> (created),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (represente) -[:STATE {id:stateUid}]-> (published),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (represente) -[:STATE {id:stateUid}]-> (fixed),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (represente) -[:STATE {id:stateUid}]-> (tested),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (represente) -[:STATE {id:stateUid}]-> (validated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (represente) -[:STATE {id:stateUid}]-> (unvalidated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (represente) -[:STATE {id:stateUid}]-> (accessed),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (represente) -[:STATE {id:stateUid}]-> (used),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (represente) -[:STATE {id:stateUid}]-> (updated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (represente) -[:STATE {id:stateUid}]-> (expireded),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (represente) -[:STATE {id:stateUid}]-> (integrityFalse),

	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (collect) -[:STATE {id:stateUid}]-> (todo),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (collect) -[:STATE {id:stateUid}]-> (created),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (collect) -[:STATE {id:stateUid}]-> (published),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (collect) -[:STATE {id:stateUid}]-> (fixed),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (collect) -[:STATE {id:stateUid}]-> (tested),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (collect) -[:STATE {id:stateUid}]-> (validated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (collect) -[:STATE {id:stateUid}]-> (unvalidated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (collect) -[:STATE {id:stateUid}]-> (accessed),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (collect) -[:STATE {id:stateUid}]-> (used),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (collect) -[:STATE {id:stateUid}]-> (updated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (collect) -[:STATE {id:stateUid}]-> (expireded),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (collect) -[:STATE {id:stateUid}]-> (integrityFalse),

	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (authorize) -[:STATE {id:stateUid}]-> (todo),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (authorize) -[:STATE {id:stateUid}]-> (created),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (authorize) -[:STATE {id:stateUid}]-> (published),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (authorize) -[:STATE {id:stateUid}]-> (fixed),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (authorize) -[:STATE {id:stateUid}]-> (tested),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (authorize) -[:STATE {id:stateUid}]-> (validated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (authorize) -[:STATE {id:stateUid}]-> (unvalidated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (authorize) -[:STATE {id:stateUid}]-> (accessed),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (authorize) -[:STATE {id:stateUid}]-> (used),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (authorize) -[:STATE {id:stateUid}]-> (updated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (authorize) -[:STATE {id:stateUid}]-> (expireded),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (authorize) -[:STATE {id:stateUid}]-> (integrityFalse),

	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (access) -[:STATE {id:stateUid}]-> (todo),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (access) -[:STATE {id:stateUid}]-> (created),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (access) -[:STATE {id:stateUid}]-> (published),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (access) -[:STATE {id:stateUid}]-> (fixed),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (access) -[:STATE {id:stateUid}]-> (tested),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (access) -[:STATE {id:stateUid}]-> (validated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (access) -[:STATE {id:stateUid}]-> (unvalidated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (access) -[:STATE {id:stateUid}]-> (accessed),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (access) -[:STATE {id:stateUid}]-> (used),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (access) -[:STATE {id:stateUid}]-> (updated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (access) -[:STATE {id:stateUid}]-> (expireded),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (access) -[:STATE {id:stateUid}]-> (integrityFalse),

	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (update) -[:STATE {id:stateUid}]-> (todo),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (update) -[:STATE {id:stateUid}]-> (created),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (update) -[:STATE {id:stateUid}]-> (published),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (update) -[:STATE {id:stateUid}]-> (fixed),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (update) -[:STATE {id:stateUid}]-> (tested),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (update) -[:STATE {id:stateUid}]-> (validated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (update) -[:STATE {id:stateUid}]-> (unvalidated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (update) -[:STATE {id:stateUid}]-> (accessed),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (update) -[:STATE {id:stateUid}]-> (used),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (update) -[:STATE {id:stateUid}]-> (updated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (update) -[:STATE {id:stateUid}]-> (expireded),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (update) -[:STATE {id:stateUid}]-> (integrityFalse),

	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (execute) -[:STATE {id:stateUid}]-> (todo),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (execute) -[:STATE {id:stateUid}]-> (created),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (execute) -[:STATE {id:stateUid}]-> (published),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (execute) -[:STATE {id:stateUid}]-> (fixed),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (execute) -[:STATE {id:stateUid}]-> (tested),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (execute) -[:STATE {id:stateUid}]-> (validated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (execute) -[:STATE {id:stateUid}]-> (unvalidated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (execute) -[:STATE {id:stateUid}]-> (accessed),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (execute) -[:STATE {id:stateUid}]-> (used),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (execute) -[:STATE {id:stateUid}]-> (updated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (execute) -[:STATE {id:stateUid}]-> (expireded),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (execute) -[:STATE {id:stateUid}]-> (integrityFalse),

	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (change) -[:STATE {id:stateUid}]-> (todo),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (change) -[:STATE {id:stateUid}]-> (created),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (change) -[:STATE {id:stateUid}]-> (published),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (change) -[:STATE {id:stateUid}]-> (fixed),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (change) -[:STATE {id:stateUid}]-> (tested),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (change) -[:STATE {id:stateUid}]-> (validated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (change) -[:STATE {id:stateUid}]-> (unvalidated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (change) -[:STATE {id:stateUid}]-> (accessed),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (change) -[:STATE {id:stateUid}]-> (used),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (change) -[:STATE {id:stateUid}]-> (updated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (change) -[:STATE {id:stateUid}]-> (expireded),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (change) -[:STATE {id:stateUid}]-> (integrityFalse),

	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (optimize) -[:STATE {id:stateUid}]-> (todo),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (optimize) -[:STATE {id:stateUid}]-> (created),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (optimize) -[:STATE {id:stateUid}]-> (published),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (optimize) -[:STATE {id:stateUid}]-> (fixed),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (optimize) -[:STATE {id:stateUid}]-> (tested),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (optimize) -[:STATE {id:stateUid}]-> (validated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (optimize) -[:STATE {id:stateUid}]-> (unvalidated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (optimize) -[:STATE {id:stateUid}]-> (accessed),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (optimize) -[:STATE {id:stateUid}]-> (used),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (optimize) -[:STATE {id:stateUid}]-> (updated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (optimize) -[:STATE {id:stateUid}]-> (expireded),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (optimize) -[:STATE {id:stateUid}]-> (integrityFalse),

	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (init) -[:STATE {id:stateUid}]-> (todo),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (init) -[:STATE {id:stateUid}]-> (created),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (init) -[:STATE {id:stateUid}]-> (published),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (init) -[:STATE {id:stateUid}]-> (fixed),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (init) -[:STATE {id:stateUid}]-> (tested),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (init) -[:STATE {id:stateUid}]-> (validated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (init) -[:STATE {id:stateUid}]-> (unvalidated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (init) -[:STATE {id:stateUid}]-> (accessed),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (init) -[:STATE {id:stateUid}]-> (used),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (init) -[:STATE {id:stateUid}]-> (updated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (init) -[:STATE {id:stateUid}]-> (expireded),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (init) -[:STATE {id:stateUid}]-> (integrityFalse),

	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (own) -[:STATE {id:stateUid}]-> (todo),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (own) -[:STATE {id:stateUid}]-> (created),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (own) -[:STATE {id:stateUid}]-> (published),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (own) -[:STATE {id:stateUid}]-> (fixed),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (own) -[:STATE {id:stateUid}]-> (tested),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (own) -[:STATE {id:stateUid}]-> (validated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (own) -[:STATE {id:stateUid}]-> (unvalidated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (own) -[:STATE {id:stateUid}]-> (accessed),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (own) -[:STATE {id:stateUid}]-> (used),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (own) -[:STATE {id:stateUid}]-> (updated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (own) -[:STATE {id:stateUid}]-> (expireded),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (own) -[:STATE {id:stateUid}]-> (integrityFalse),

	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (identify) -[:STATE {id:stateUid}]-> (todo),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (identify) -[:STATE {id:stateUid}]-> (created),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (identify) -[:STATE {id:stateUid}]-> (published),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (identify) -[:STATE {id:stateUid}]-> (fixed),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (identify) -[:STATE {id:stateUid}]-> (tested),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (identify) -[:STATE {id:stateUid}]-> (validated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (identify) -[:STATE {id:stateUid}]-> (unvalidated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (identify) -[:STATE {id:stateUid}]-> (accessed),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (identify) -[:STATE {id:stateUid}]-> (used),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (identify) -[:STATE {id:stateUid}]-> (updated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (identify) -[:STATE {id:stateUid}]-> (expireded),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (identify) -[:STATE {id:stateUid}]-> (integrityFalse),

	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (MARK) -[:STATE {id:stateUid}]-> (todo),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (MARK) -[:STATE {id:stateUid}]-> (created),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (MARK) -[:STATE {id:stateUid}]-> (published),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (MARK) -[:STATE {id:stateUid}]-> (fixed),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (MARK) -[:STATE {id:stateUid}]-> (tested),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (MARK) -[:STATE {id:stateUid}]-> (validated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (MARK) -[:STATE {id:stateUid}]-> (unvalidated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (MARK) -[:STATE {id:stateUid}]-> (accessed),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (MARK) -[:STATE {id:stateUid}]-> (used),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (MARK) -[:STATE {id:stateUid}]-> (updated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (MARK) -[:STATE {id:stateUid}]-> (expireded),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (MARK) -[:STATE {id:stateUid}]-> (integrityFalse),

	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (expire) -[:STATE {id:stateUid}]-> (todo),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (expire) -[:STATE {id:stateUid}]-> (created),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (expire) -[:STATE {id:stateUid}]-> (published),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (expire) -[:STATE {id:stateUid}]-> (fixed),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (expire) -[:STATE {id:stateUid}]-> (tested),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (expire) -[:STATE {id:stateUid}]-> (validated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (expire) -[:STATE {id:stateUid}]-> (unvalidated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (expire) -[:STATE {id:stateUid}]-> (accessed),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (expire) -[:STATE {id:stateUid}]-> (used),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (expire) -[:STATE {id:stateUid}]-> (updated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (expire) -[:STATE {id:stateUid}]-> (expireded),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (expire) -[:STATE {id:stateUid}]-> (integrityFalse),

	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (localize) -[:STATE {id:stateUid}]-> (todo),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (localize) -[:STATE {id:stateUid}]-> (created),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (localize) -[:STATE {id:stateUid}]-> (published),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (localize) -[:STATE {id:stateUid}]-> (fixed),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (localize) -[:STATE {id:stateUid}]-> (tested),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (localize) -[:STATE {id:stateUid}]-> (validated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (localize) -[:STATE {id:stateUid}]-> (unvalidated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (localize) -[:STATE {id:stateUid}]-> (accessed),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (localize) -[:STATE {id:stateUid}]-> (used),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (localize) -[:STATE {id:stateUid}]-> (updated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (localize) -[:STATE {id:stateUid}]-> (expireded),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (localize) -[:STATE {id:stateUid}]-> (integrityFalse),

	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (show) -[:STATE {id:stateUid}]-> (todo),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (show) -[:STATE {id:stateUid}]-> (created),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (show) -[:STATE {id:stateUid}]-> (published),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (show) -[:STATE {id:stateUid}]-> (fixed),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (show) -[:STATE {id:stateUid}]-> (tested),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (show) -[:STATE {id:stateUid}]-> (validated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (show) -[:STATE {id:stateUid}]-> (unvalidated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (show) -[:STATE {id:stateUid}]-> (accessed),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (show) -[:STATE {id:stateUid}]-> (used),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (show) -[:STATE {id:stateUid}]-> (updated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (show) -[:STATE {id:stateUid}]-> (expireded),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (show) -[:STATE {id:stateUid}]-> (integrityFalse),

	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (size) -[:STATE {id:stateUid}]-> (todo),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (size) -[:STATE {id:stateUid}]-> (created),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (size) -[:STATE {id:stateUid}]-> (published),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (size) -[:STATE {id:stateUid}]-> (fixed),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (size) -[:STATE {id:stateUid}]-> (tested),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (size) -[:STATE {id:stateUid}]-> (validated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (size) -[:STATE {id:stateUid}]-> (unvalidated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (size) -[:STATE {id:stateUid}]-> (accessed),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (size) -[:STATE {id:stateUid}]-> (used),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (size) -[:STATE {id:stateUid}]-> (updated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (size) -[:STATE {id:stateUid}]-> (expireded),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (size) -[:STATE {id:stateUid}]-> (integrityFalse),

	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (historize) -[:STATE {id:stateUid}]-> (todo),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (historize) -[:STATE {id:stateUid}]-> (created),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (historize) -[:STATE {id:stateUid}]-> (published),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (historize) -[:STATE {id:stateUid}]-> (fixed),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (historize) -[:STATE {id:stateUid}]-> (tested),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (historize) -[:STATE {id:stateUid}]-> (validated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (historize) -[:STATE {id:stateUid}]-> (unvalidated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (historize) -[:STATE {id:stateUid}]-> (accessed),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (historize) -[:STATE {id:stateUid}]-> (used),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (historize) -[:STATE {id:stateUid}]-> (updated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (historize) -[:STATE {id:stateUid}]-> (expireded),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (historize) -[:STATE {id:stateUid}]-> (integrityFalse),

	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (contributeTo) -[:STATE {id:stateUid}]-> (todo),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (contributeTo) -[:STATE {id:stateUid}]-> (created),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (contributeTo) -[:STATE {id:stateUid}]-> (published),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (contributeTo) -[:STATE {id:stateUid}]-> (fixed),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (contributeTo) -[:STATE {id:stateUid}]-> (tested),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (contributeTo) -[:STATE {id:stateUid}]-> (validated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (contributeTo) -[:STATE {id:stateUid}]-> (unvalidated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (contributeTo) -[:STATE {id:stateUid}]-> (accessed),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (contributeTo) -[:STATE {id:stateUid}]-> (used),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (contributeTo) -[:STATE {id:stateUid}]-> (updated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (contributeTo) -[:STATE {id:stateUid}]-> (expireded),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (contributeTo) -[:STATE {id:stateUid}]-> (integrityFalse),

	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (concern) -[:STATE {id:stateUid}]-> (todo),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (concern) -[:STATE {id:stateUid}]-> (created),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (concern) -[:STATE {id:stateUid}]-> (published),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (concern) -[:STATE {id:stateUid}]-> (fixed),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (concern) -[:STATE {id:stateUid}]-> (tested),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (concern) -[:STATE {id:stateUid}]-> (validated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (concern) -[:STATE {id:stateUid}]-> (unvalidated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (concern) -[:STATE {id:stateUid}]-> (accessed),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (concern) -[:STATE {id:stateUid}]-> (used),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (concern) -[:STATE {id:stateUid}]-> (updated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (concern) -[:STATE {id:stateUid}]-> (expireded),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (concern) -[:STATE {id:stateUid}]-> (integrityFalse),

	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (cost) -[:STATE {id:stateUid}]-> (todo),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (cost) -[:STATE {id:stateUid}]-> (created),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (cost) -[:STATE {id:stateUid}]-> (published),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (cost) -[:STATE {id:stateUid}]-> (fixed),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (cost) -[:STATE {id:stateUid}]-> (tested),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (cost) -[:STATE {id:stateUid}]-> (validated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (cost) -[:STATE {id:stateUid}]-> (unvalidated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (cost) -[:STATE {id:stateUid}]-> (accessed),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (cost) -[:STATE {id:stateUid}]-> (used),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (cost) -[:STATE {id:stateUid}]-> (updated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (cost) -[:STATE {id:stateUid}]-> (expireded),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (cost) -[:STATE {id:stateUid}]-> (integrityFalse),

	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (stock) -[:STATE {id:stateUid}]-> (todo),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (stock) -[:STATE {id:stateUid}]-> (created),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (stock) -[:STATE {id:stateUid}]-> (published),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (stock) -[:STATE {id:stateUid}]-> (fixed),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (stock) -[:STATE {id:stateUid}]-> (tested),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (stock) -[:STATE {id:stateUid}]-> (validated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (stock) -[:STATE {id:stateUid}]-> (unvalidated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (stock) -[:STATE {id:stateUid}]-> (accessed),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (stock) -[:STATE {id:stateUid}]-> (used),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (stock) -[:STATE {id:stateUid}]-> (updated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (stock) -[:STATE {id:stateUid}]-> (expireded),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (stock) -[:STATE {id:stateUid}]-> (integrityFalse),

	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (shipp) -[:STATE {id:stateUid}]-> (todo),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (shipp) -[:STATE {id:stateUid}]-> (created),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (shipp) -[:STATE {id:stateUid}]-> (published),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (shipp) -[:STATE {id:stateUid}]-> (fixed),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (shipp) -[:STATE {id:stateUid}]-> (tested),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (shipp) -[:STATE {id:stateUid}]-> (validated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (shipp) -[:STATE {id:stateUid}]-> (unvalidated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (shipp) -[:STATE {id:stateUid}]-> (accessed),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (shipp) -[:STATE {id:stateUid}]-> (used),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (shipp) -[:STATE {id:stateUid}]-> (updated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (shipp) -[:STATE {id:stateUid}]-> (expireded),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (shipp) -[:STATE {id:stateUid}]-> (integrityFalse),

	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (order) -[:STATE {id:stateUid}]-> (todo),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (order) -[:STATE {id:stateUid}]-> (created),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (order) -[:STATE {id:stateUid}]-> (published),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (order) -[:STATE {id:stateUid}]-> (fixed),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (order) -[:STATE {id:stateUid}]-> (tested),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (order) -[:STATE {id:stateUid}]-> (validated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (order) -[:STATE {id:stateUid}]-> (unvalidated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (order) -[:STATE {id:stateUid}]-> (accessed),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (order) -[:STATE {id:stateUid}]-> (used),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (order) -[:STATE {id:stateUid}]-> (updated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (order) -[:STATE {id:stateUid}]-> (expireded),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (order) -[:STATE {id:stateUid}]-> (integrityFalse),

	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (pay) -[:STATE {id:stateUid}]-> (todo),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (pay) -[:STATE {id:stateUid}]-> (created),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (pay) -[:STATE {id:stateUid}]-> (published),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (pay) -[:STATE {id:stateUid}]-> (fixed),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (pay) -[:STATE {id:stateUid}]-> (tested),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (pay) -[:STATE {id:stateUid}]-> (validated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (pay) -[:STATE {id:stateUid}]-> (unvalidated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (pay) -[:STATE {id:stateUid}]-> (accessed),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (pay) -[:STATE {id:stateUid}]-> (used),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (pay) -[:STATE {id:stateUid}]-> (updated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (pay) -[:STATE {id:stateUid}]-> (expireded),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (pay) -[:STATE {id:stateUid}]-> (integrityFalse),

	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (billing) -[:STATE {id:stateUid}]-> (todo),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (billing) -[:STATE {id:stateUid}]-> (created),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (billing) -[:STATE {id:stateUid}]-> (published),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (billing) -[:STATE {id:stateUid}]-> (fixed),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (billing) -[:STATE {id:stateUid}]-> (tested),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (billing) -[:STATE {id:stateUid}]-> (validated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (billing) -[:STATE {id:stateUid}]-> (unvalidated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (billing) -[:STATE {id:stateUid}]-> (accessed),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (billing) -[:STATE {id:stateUid}]-> (used),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (billing) -[:STATE {id:stateUid}]-> (updated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (billing) -[:STATE {id:stateUid}]-> (expireded),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (billing) -[:STATE {id:stateUid}]-> (integrityFalse),

	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (expedite) -[:STATE {id:stateUid}]-> (todo),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (expedite) -[:STATE {id:stateUid}]-> (created),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (expedite) -[:STATE {id:stateUid}]-> (published),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (expedite) -[:STATE {id:stateUid}]-> (fixed),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (expedite) -[:STATE {id:stateUid}]-> (tested),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (expedite) -[:STATE {id:stateUid}]-> (validated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (expedite) -[:STATE {id:stateUid}]-> (unvalidated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (expedite) -[:STATE {id:stateUid}]-> (accessed),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (expedite) -[:STATE {id:stateUid}]-> (used),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (expedite) -[:STATE {id:stateUid}]-> (updated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (expedite) -[:STATE {id:stateUid}]-> (expireded),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (expedite) -[:STATE {id:stateUid}]-> (integrityFalse),

	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (payBack) -[:STATE {id:stateUid}]-> (todo),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (payBack) -[:STATE {id:stateUid}]-> (created),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (payBack) -[:STATE {id:stateUid}]-> (published),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (payBack) -[:STATE {id:stateUid}]-> (fixed),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (payBack) -[:STATE {id:stateUid}]-> (tested),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (payBack) -[:STATE {id:stateUid}]-> (validated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (payBack) -[:STATE {id:stateUid}]-> (unvalidated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (payBack) -[:STATE {id:stateUid}]-> (accessed),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (payBack) -[:STATE {id:stateUid}]-> (used),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (payBack) -[:STATE {id:stateUid}]-> (updated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (payBack) -[:STATE {id:stateUid}]-> (expireded),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (payBack) -[:STATE {id:stateUid}]-> (integrityFalse),

	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (shippManange) -[:STATE {id:stateUid}]-> (todo),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (shippManange) -[:STATE {id:stateUid}]-> (created),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (shippManange) -[:STATE {id:stateUid}]-> (published),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (shippManange) -[:STATE {id:stateUid}]-> (fixed),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (shippManange) -[:STATE {id:stateUid}]-> (tested),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (shippManange) -[:STATE {id:stateUid}]-> (validated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (shippManange) -[:STATE {id:stateUid}]-> (unvalidated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (shippManange) -[:STATE {id:stateUid}]-> (accessed),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (shippManange) -[:STATE {id:stateUid}]-> (used),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (shippManange) -[:STATE {id:stateUid}]-> (updated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (shippManange) -[:STATE {id:stateUid}]-> (expireded),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (shippManange) -[:STATE {id:stateUid}]-> (integrityFalse),

	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (expediteManange) -[:STATE {id:stateUid}]-> (todo),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (expediteManange) -[:STATE {id:stateUid}]-> (created),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (expediteManange) -[:STATE {id:stateUid}]-> (published),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (expediteManange) -[:STATE {id:stateUid}]-> (fixed),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (expediteManange) -[:STATE {id:stateUid}]-> (tested),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (expediteManange) -[:STATE {id:stateUid}]-> (validated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (expediteManange) -[:STATE {id:stateUid}]-> (unvalidated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (expediteManange) -[:STATE {id:stateUid}]-> (accessed),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (expediteManange) -[:STATE {id:stateUid}]-> (used),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (expediteManange) -[:STATE {id:stateUid}]-> (updated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (expediteManange) -[:STATE {id:stateUid}]-> (expireded),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (expediteManange) -[:STATE {id:stateUid}]-> (integrityFalse),

	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (payManange) -[:STATE {id:stateUid}]-> (todo),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (payManange) -[:STATE {id:stateUid}]-> (created),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (payManange) -[:STATE {id:stateUid}]-> (published),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (payManange) -[:STATE {id:stateUid}]-> (fixed),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (payManange) -[:STATE {id:stateUid}]-> (tested),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (payManange) -[:STATE {id:stateUid}]-> (validated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (payManange) -[:STATE {id:stateUid}]-> (unvalidated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (payManange) -[:STATE {id:stateUid}]-> (accessed),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (payManange) -[:STATE {id:stateUid}]-> (used),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (payManange) -[:STATE {id:stateUid}]-> (updated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (payManange) -[:STATE {id:stateUid}]-> (expireded),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (payManange) -[:STATE {id:stateUid}]-> (integrityFalse),

	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (produce) -[:STATE {id:stateUid}]-> (todo),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (produce) -[:STATE {id:stateUid}]-> (created),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (produce) -[:STATE {id:stateUid}]-> (published),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (produce) -[:STATE {id:stateUid}]-> (fixed),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (produce) -[:STATE {id:stateUid}]-> (tested),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (produce) -[:STATE {id:stateUid}]-> (validated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (produce) -[:STATE {id:stateUid}]-> (unvalidated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (produce) -[:STATE {id:stateUid}]-> (accessed),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (produce) -[:STATE {id:stateUid}]-> (used),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (produce) -[:STATE {id:stateUid}]-> (updated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (produce) -[:STATE {id:stateUid}]-> (expireded),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (produce) -[:STATE {id:stateUid}]-> (integrityFalse),

	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (ask) -[:STATE {id:stateUid}]-> (todo),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (ask) -[:STATE {id:stateUid}]-> (created),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (ask) -[:STATE {id:stateUid}]-> (published),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (ask) -[:STATE {id:stateUid}]-> (fixed),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (ask) -[:STATE {id:stateUid}]-> (tested),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (ask) -[:STATE {id:stateUid}]-> (validated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (ask) -[:STATE {id:stateUid}]-> (unvalidated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (ask) -[:STATE {id:stateUid}]-> (accessed),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (ask) -[:STATE {id:stateUid}]-> (used),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (ask) -[:STATE {id:stateUid}]-> (updated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (ask) -[:STATE {id:stateUid}]-> (expireded),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (ask) -[:STATE {id:stateUid}]-> (integrityFalse),

	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (balance) -[:STATE {id:stateUid}]-> (todo),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (balance) -[:STATE {id:stateUid}]-> (created),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (balance) -[:STATE {id:stateUid}]-> (published),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (balance) -[:STATE {id:stateUid}]-> (fixed),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (balance) -[:STATE {id:stateUid}]-> (tested),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (balance) -[:STATE {id:stateUid}]-> (validated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (balance) -[:STATE {id:stateUid}]-> (unvalidated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (balance) -[:STATE {id:stateUid}]-> (accessed),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (balance) -[:STATE {id:stateUid}]-> (used),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (balance) -[:STATE {id:stateUid}]-> (updated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (balance) -[:STATE {id:stateUid}]-> (expireded),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (balance) -[:STATE {id:stateUid}]-> (integrityFalse),

	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (state) -[:STATE {id:stateUid}]-> (todo),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (state) -[:STATE {id:stateUid}]-> (created),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (state) -[:STATE {id:stateUid}]-> (published),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (state) -[:STATE {id:stateUid}]-> (fixed),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (state) -[:STATE {id:stateUid}]-> (tested),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (state) -[:STATE {id:stateUid}]-> (validated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (state) -[:STATE {id:stateUid}]-> (unvalidated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (state) -[:STATE {id:stateUid}]-> (accessed),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (state) -[:STATE {id:stateUid}]-> (used),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (state) -[:STATE {id:stateUid}]-> (updated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (state) -[:STATE {id:stateUid}]-> (expireded),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (state) -[:STATE {id:stateUid}]-> (integrityFalse),

	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (note) -[:STATE {id:stateUid}]-> (todo),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (note) -[:STATE {id:stateUid}]-> (created),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (note) -[:STATE {id:stateUid}]-> (published),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (note) -[:STATE {id:stateUid}]-> (fixed),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (note) -[:STATE {id:stateUid}]-> (tested),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (note) -[:STATE {id:stateUid}]-> (validated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (note) -[:STATE {id:stateUid}]-> (unvalidated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (note) -[:STATE {id:stateUid}]-> (accessed),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (note) -[:STATE {id:stateUid}]-> (used),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (note) -[:STATE {id:stateUid}]-> (updated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (note) -[:STATE {id:stateUid}]-> (expireded),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (note) -[:STATE {id:stateUid}]-> (integrityFalse),

	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (comment) -[:STATE {id:stateUid}]-> (todo),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (comment) -[:STATE {id:stateUid}]-> (created),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (comment) -[:STATE {id:stateUid}]-> (published),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (comment) -[:STATE {id:stateUid}]-> (fixed),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (comment) -[:STATE {id:stateUid}]-> (tested),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (comment) -[:STATE {id:stateUid}]-> (validated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (comment) -[:STATE {id:stateUid}]-> (unvalidated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (comment) -[:STATE {id:stateUid}]-> (accessed),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (comment) -[:STATE {id:stateUid}]-> (used),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (comment) -[:STATE {id:stateUid}]-> (updated),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (comment) -[:STATE {id:stateUid}]-> (expireded),
	(userRight) -[:AUTHORIZE {id:authorizeUid}]-> (comment) -[:STATE {id:stateUid}]-> (integrityFalse),

	// ******************************************************
	// TAG INITS 
	// ******************************************************

	(b2c) -[:MARK {id:markUid}]-> (media1),
	(b2c) -[:MARK {id:markUid}]-> (device1),
	(b2c) -[:MARK {id:markUid}]-> (campaign1),
	(b2c) -[:MARK {id:markUid}]-> (resource1),
	(b2c) -[:MARK {id:markUid}]-> (domain1),
	(b2c) -[:MARK {id:markUid}]-> (segment1),
	(b2c) -[:MARK {id:markUid}]-> (ncantu),
	(b2c) -[:MARK {id:markUid}]-> (contract1),
	(b2c) -[:MARK {id:markUid}]-> (place1),
	(b2c) -[:MARK {id:markUid}]-> (quality1),
	(b2c) -[:MARK {id:markUid}]-> (admin),
	(b2c) -[:MARK {id:markUid}]-> (user),
	(b2c) -[:MARK {id:markUid}]-> (analyticScriptCall1),
	(b2c) -[:MARK {id:markUid}]-> (analyticUrlCall1),
	(b2c) -[:MARK {id:markUid}]-> (DianeKruger),
	(b2c) -[:MARK {id:markUid}]-> (Instriit),
	(b2c) -[:MARK {id:markUid}]-> (productCategorie1),
	(b2c) -[:MARK {id:markUid}]-> (product1),
	(b2c) -[:MARK {id:markUid}]-> (price1),
	(b2c) -[:MARK {id:markUid}]-> (stock1),
	(b2c) -[:MARK {id:markUid}]-> (shipping1),
	(b2c) -[:MARK {id:markUid}]-> (order1),
	(b2c) -[:MARK {id:markUid}]-> (bankTransaction1),
	(b2c) -[:MARK {id:markUid}]-> (bill1),
	(b2c) -[:MARK {id:markUid}]-> (expedition1),
	(b2c) -[:MARK {id:markUid}]-> (payBack1),
	(b2c) -[:MARK {id:markUid}]-> (clientRequest1),
	(b2c) -[:MARK {id:markUid}]-> (shipper1),
	(b2c) -[:MARK {id:markUid}]-> (expeditor1),
	(b2c) -[:MARK {id:markUid}]-> (bank1),
	(b2c) -[:MARK {id:markUid}]-> (bankFacility1),
	(b2c) -[:MARK {id:markUid}]-> (clientManager1),
	(b2c) -[:MARK {id:markUid}]-> (productor1),
	(b2c) -[:MARK {id:markUid}]-> (client1),
	(b2c) -[:MARK {id:markUid}]-> (hostPublic1),
	(b2c) -[:MARK {id:markUid}]-> (hostFront1),
	(b2c) -[:MARK {id:markUid}]-> (hostFront2),

	// ******************************************************
	// INTEGRITY INITS FOR THE BATCH integrityControler1
	// ******************************************************

	(integrityControler1) -[:CONTROLE {id:integrityControlerUid}]-> (resource1),

	// ******************************************************
	// EXPIRATION INITS FOR THE BATCH expireControler1
	// ******************************************************

	(expireControler1) -[:EXPIRE {id:expireUid}]-> (media1),
	(expireControler1) -[:EXPIRE {id:expireUid}]-> (device1),
	(expireControler1) -[:EXPIRE {id:expireUid}]-> (campaign1),
	(expireControler1) -[:EXPIRE {id:expireUid}]-> (resource1),
	(expireControler1) -[:EXPIRE {id:expireUid} {id:expireUid}]-> (domain1),
	(expireControler1) -[:EXPIRE {id:expireUid}]-> (segment1),
	(expireControler1) -[:EXPIRE {id:expireUid}]-> (ncantu),
	(expireControler1) -[:EXPIRE {id:expireUid}]-> (contract1),
	(expireControler1) -[:EXPIRE {id:expireUid}]-> (token1),
	(expireControler1) -[:EXPIRE {id:expireUid}]-> (place1),
	(expireControler1) -[:EXPIRE {id:expireUid}]-> (quality1),
	(expireControler1) -[:EXPIRE {id:expireUid}]-> (admin),
	(expireControler1) -[:EXPIRE {id:expireUid}]-> (user),
	(expireControler1) -[:EXPIRE {id:expireUid}]-> (analyticScriptCall1),
	(expireControler1) -[:EXPIRE {id:expireUid}]-> (analyticUrlCall1),
	(expireControler1) -[:EXPIRE {id:expireUid}]-> (DianeKruger),
	(expireControler1) -[:EXPIRE {id:expireUid}]-> (Instriit),
	(expireControler1) -[:EXPIRE {id:expireUid}]-> (productCategorie1),
	(expireControler1) -[:EXPIRE {id:expireUid}]-> (product1),
	(expireControler1) -[:EXPIRE {id:expireUid}]-> (price1),
	(expireControler1) -[:EXPIRE {id:expireUid}]-> (stock1),
	(expireControler1) -[:EXPIRE {id:expireUid}]-> (shipping1),
	(expireControler1) -[:EXPIRE {id:expireUid}]-> (order1),
	(expireControler1) -[:EXPIRE {id:expireUid}]-> (bankTransaction1),
	(expireControler1) -[:EXPIRE {id:expireUid}]-> (bill1),
	(expireControler1) -[:EXPIRE {id:expireUid}]-> (expedition1),
	(expireControler1) -[:EXPIRE {id:expireUid}]-> (payBack1),
	(expireControler1) -[:EXPIRE {id:expireUid}]-> (clientRequest1),
	(expireControler1) -[:EXPIRE {id:expireUid}]-> (shipper1),
	(expireControler1) -[:EXPIRE {id:expireUid}]-> (expeditor1),
	(expireControler1) -[:EXPIRE {id:expireUid}]-> (bank1),
	(expireControler1) -[:EXPIRE {id:expireUid}]-> (bankFacility1),
	(expireControler1) -[:EXPIRE {id:expireUid}]-> (clientManager1),
	(expireControler1) -[:EXPIRE {id:expireUid}]-> (productor1),
	(expireControler1) -[:EXPIRE {id:expireUid}]-> (client1),
	(expireControler1) -[:EXPIRE {id:expireUid}]-> (hostPublic1),
	(expireControler1) -[:EXPIRE {id:expireUid}]-> (hostFront1),
	(expireControler1) -[:EXPIRE {id:expireUid}]-> (hostFront2),

	// ******************************************************
	// SET LOCALS VALUES
	// ******************************************************

	(fr) -[:LOCALIZE {id:localiseUid}]-> (campaign1),
	(fr) -[:LOCALIZE {id:localiseUid}]-> (resource1),
	(fr) -[:LOCALIZE {id:localiseUid}]-> (domain1),
	(fr) -[:LOCALIZE {id:localiseUid}]-> (segment1),
	(fr) -[:LOCALIZE {id:localiseUid}]-> (ncantu),
	(fr) -[:LOCALIZE {id:localiseUid}]-> (contract1),
	(fr) -[:LOCALIZE {id:localiseUid}]-> (tag1),
	(fr) -[:LOCALIZE {id:localiseUid}]-> (place1),
	(fr) -[:LOCALIZE {id:localiseUid}]-> (quality1),
	(fr) -[:LOCALIZE {id:localiseUid}]-> (admin),
	(fr) -[:LOCALIZE {id:localiseUid}]-> (user),
	(fr) -[:LOCALIZE {id:localiseUid}]-> (analyticScriptCall1),
	(fr) -[:LOCALIZE {id:localiseUid}]-> (analyticUrlCall1),
	(fr) -[:LOCALIZE {id:localiseUid}]-> (productCategorie1),
	(fr) -[:LOCALIZE {id:localiseUid}]-> (product1),
	(fr) -[:LOCALIZE {id:localiseUid}]-> (price1),
	(fr) -[:LOCALIZE {id:localiseUid}]-> (stock1),
	(fr) -[:LOCALIZE {id:localiseUid}]-> (shipping1),
	(fr) -[:LOCALIZE {id:localiseUid}]-> (order1),
	(fr) -[:LOCALIZE {id:localiseUid}]-> (bankTransaction1),
	(fr) -[:LOCALIZE {id:localiseUid}]-> (bill1),
	(fr) -[:LOCALIZE {id:localiseUid}]-> (expedition1),
	(fr) -[:LOCALIZE {id:localiseUid}]-> (payBack1),
	(fr) -[:LOCALIZE {id:localiseUid}]-> (clientRequest1),
	(fr) -[:LOCALIZE {id:localiseUid}]-> (shipper1),
	(fr) -[:LOCALIZE {id:localiseUid}]-> (expeditor1),
	(fr) -[:LOCALIZE {id:localiseUid}]-> (bank1),
	(fr) -[:LOCALIZE {id:localiseUid}]-> (bankFacility1),
	(fr) -[:LOCALIZE {id:localiseUid}]-> (clientManager1),
	(fr) -[:LOCALIZE {id:localiseUid}]-> (productor1),
	(fr) -[:LOCALIZE {id:localiseUid}]-> (client1),
	(fr) -[:LOCALIZE {id:localiseUid}]-> (hostPublic1),
	(fr) -[:LOCALIZE {id:localiseUid}]-> (hostFront1),
	(fr) -[:LOCALIZE {id:localiseUid}]-> (hostFront2),

	(history1) -[:HISTORIZE {id:historiseUid}]-> (ncantu),
	(history1) -[:HISTORIZE {id:historiseUid}]-> (admin),
	(history1) -[:HISTORIZE {id:historiseUid}]-> (user),
	(history1) -[:HISTORIZE {id:historiseUid}]-> (device1),
	(history1) -[:HISTORIZE {id:historiseUid}]-> (media1),
	(history1) -[:HISTORIZE {id:historiseUid}]-> (domain1),
	(history1) -[:HISTORIZE {id:historiseUid}]-> (campaign1),
	(history1) -[:HISTORIZE {id:historiseUid}]-> (resource1),
	(history1) -[:HISTORIZE {id:historiseUid}]-> (resource2),
	(history1) -[:HISTORIZE {id:historiseUid}]-> (format1),
	(history1) -[:HISTORIZE {id:historiseUid}]-> (analyticScriptCall1),
	(history1) -[:HISTORIZE {id:historiseUid}]-> (analyticUrlCall1),
	(history1) -[:HISTORIZE {id:historiseUid}]-> (segment1),
	(history1) -[:HISTORIZE {id:historiseUid}]-> (admin),
	(history1) -[:HISTORIZE {id:historiseUid}]-> (action1),
	(history1) -[:HISTORIZE {id:historiseUid}]-> (state1),
	(history1) -[:HISTORIZE {id:historiseUid}]-> (quality1),
	(history1) -[:HISTORIZE {id:historiseUid}]-> (contract1),
	(history1) -[:HISTORIZE {id:historiseUid}]-> (owner1),
	(history1) -[:HISTORIZE {id:historiseUid}]-> (token1),
	(history1) -[:HISTORIZE {id:historiseUid}]-> (b2c),
	(history1) -[:HISTORIZE {id:historiseUid}]-> (expireControler1),
	(history1) -[:HISTORIZE {id:historiseUid}]-> (fr),
	(history1) -[:HISTORIZE {id:historiseUid}]-> (place1),

	(ncantu) -[:COMMENT {id:commentUid, value:'hello'}) ]-> (ressource)
	(ncantu) -[:COMMENT {id:commentUid, value:'olleh'}) ]-> (user1)
	(user1) -[:COMMENT {id:commentUid, alue:'hello'}) ]-> (ncantu)

	(ncantu) -[:NOTE {id:noteUid, value:'hello'}) ]-> (ressource)
	(ncantu) -[:NOTE {id:noteUid, value:'olleh'}) ]-> (user1)
	(user1) -[:NOTE {id:noteUid, value:'ello'}) ]-> (ncantu)
