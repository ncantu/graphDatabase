
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
CREATE (domain1:Domain  {dns:'instriit.com'})
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

	(device1) -[:PUBLISH]-> (media1),
	(media1) -[:HOST]-> (campaign1),
	(media1) -[:USE]-> (place1),
	(place1) -[:SHOW]-> (resource1),
	(domain1) -[:MANAGE]-> (campaign1),
	(campaign1) -[:TARGET {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published1', visibility:'public', note:''}]-> (segment1),
	(segment1) -[:REPRESENTE {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published1', visibility:'public', note:''}]-> (segment1),
	(segment1) -[:REPRESENTE {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published1', visibility:'public', note:''}]-> (ncantu),
	(ncantu) -[:COLLECT]-> (admin),
	(adminRight) -[:AUTHORIZE]-> (user),
	(userRight) -[:AUTHORIZE]-> (admin),

	(adminRight) -[:AUTHORIZE]-> (publish) -[:STATE]-> (todo)
	(adminRight) -[:AUTHORIZE]-> (publish) -[:STATE]-> (created:State)
	(adminRight) -[:AUTHORIZE]-> (publish) -[:STATE]-> (published:State)
	(adminRight) -[:AUTHORIZE]-> (publish) -[:STATE]-> (fixed:State)
	(adminRight) -[:AUTHORIZE]-> (publish) -[:STATE]-> (tested:State)
	(adminRight) -[:AUTHORIZE]-> (publish) -[:STATE]-> (validated:State)
	(adminRight) -[:AUTHORIZE]-> (publish) -[:STATE]-> (unvalidated:State)
	(adminRight) -[:AUTHORIZE]-> (publish) -[:STATE]-> (accessed:State)
	(adminRight) -[:AUTHORIZE]-> (publish) -[:STATE]-> (used:State)
	(adminRight) -[:AUTHORIZE]-> (publish) -[:STATE]-> (updated:State)
	(adminRight) -[:AUTHORIZE]-> (publish) -[:STATE]-> (expireded:State)
	(adminRight) -[:AUTHORIZE]-> (publish) -[:STATE]-> (integrityFalse:State)

	(adminRight) -[:AUTHORIZE]-> (create) -[:STATE]-> (todo)
	(adminRight) -[:AUTHORIZE]-> (create) -[:STATE]-> (created:State)
	(adminRight) -[:AUTHORIZE]-> (create) -[:STATE]-> (published:State)
	(adminRight) -[:AUTHORIZE]-> (create) -[:STATE]-> (fixed:State)
	(adminRight) -[:AUTHORIZE]-> (create) -[:STATE]-> (tested:State)
	(adminRight) -[:AUTHORIZE]-> (create) -[:STATE]-> (validated:State)
	(adminRight) -[:AUTHORIZE]-> (create) -[:STATE]-> (unvalidated:State)
	(adminRight) -[:AUTHORIZE]-> (create) -[:STATE]-> (accessed:State)
	(adminRight) -[:AUTHORIZE]-> (create) -[:STATE]-> (used:State)
	(adminRight) -[:AUTHORIZE]-> (create) -[:STATE]-> (updated:State)
	(adminRight) -[:AUTHORIZE]-> (create) -[:STATE]-> (expireded:State)
	(adminRight) -[:AUTHORIZE]-> (create) -[:STATE]-> (integrityFalse:State)

	(adminRight) -[:AUTHORIZE]-> (access) -[:STATE]-> (todo)
	(adminRight) -[:AUTHORIZE]-> (access) -[:STATE]-> (created:State)
	(adminRight) -[:AUTHORIZE]-> (access) -[:STATE]-> (published:State)
	(adminRight) -[:AUTHORIZE]-> (access) -[:STATE]-> (fixed:State)
	(adminRight) -[:AUTHORIZE]-> (access) -[:STATE]-> (tested:State)
	(adminRight) -[:AUTHORIZE]-> (access) -[:STATE]-> (validated:State)
	(adminRight) -[:AUTHORIZE]-> (access) -[:STATE]-> (unvalidated:State)
	(adminRight) -[:AUTHORIZE]-> (access) -[:STATE]-> (accessed:State)
	(adminRight) -[:AUTHORIZE]-> (access) -[:STATE]-> (used:State)
	(adminRight) -[:AUTHORIZE]-> (access) -[:STATE]-> (updated:State)
	(adminRight) -[:AUTHORIZE]-> (access) -[:STATE]-> (expireded:State)
	(adminRight) -[:AUTHORIZE]-> (access) -[:STATE]-> (integrityFalse:State)

	(adminRight) -[:AUTHORIZE]-> (update) -[:STATE]-> (todo)
	(adminRight) -[:AUTHORIZE]-> (update) -[:STATE]-> (created:State)
	(adminRight) -[:AUTHORIZE]-> (update) -[:STATE]-> (published:State)
	(adminRight) -[:AUTHORIZE]-> (update) -[:STATE]-> (fixed:State)
	(adminRight) -[:AUTHORIZE]-> (update) -[:STATE]-> (tested:State)
	(adminRight) -[:AUTHORIZE]-> (update) -[:STATE]-> (validated:State)
	(adminRight) -[:AUTHORIZE]-> (update) -[:STATE]-> (unvalidated:State)
	(adminRight) -[:AUTHORIZE]-> (update) -[:STATE]-> (accessed:State)
	(adminRight) -[:AUTHORIZE]-> (update) -[:STATE]-> (used:State)
	(adminRight) -[:AUTHORIZE]-> (update) -[:STATE]-> (updated:State)
	(adminRight) -[:AUTHORIZE]-> (update) -[:STATE]-> (expireded:State)
	(adminRight) -[:AUTHORIZE]-> (update) -[:STATE]-> (integrityFalse:State)

	(adminRight) -[:AUTHORIZE]-> (change) -[:STATE]-> (todo)
	(adminRight) -[:AUTHORIZE]-> (change) -[:STATE]-> (created:State)
	(adminRight) -[:AUTHORIZE]-> (change) -[:STATE]-> (published:State)
	(adminRight) -[:AUTHORIZE]-> (change) -[:STATE]-> (fixed:State)
	(adminRight) -[:AUTHORIZE]-> (change) -[:STATE]-> (tested:State)
	(adminRight) -[:AUTHORIZE]-> (change) -[:STATE]-> (validated:State)
	(adminRight) -[:AUTHORIZE]-> (change) -[:STATE]-> (unvalidated:State)
	(adminRight) -[:AUTHORIZE]-> (change) -[:STATE]-> (accessed:State)
	(adminRight) -[:AUTHORIZE]-> (change) -[:STATE]-> (used:State)
	(adminRight) -[:AUTHORIZE]-> (change) -[:STATE]-> (updated:State)
	(adminRight) -[:AUTHORIZE]-> (change) -[:STATE]-> (expireded:State)
	(adminRight) -[:AUTHORIZE]-> (change) -[:STATE]-> (integrityFalse:State)

	(adminRight) -[:AUTHORIZE]-> (use) -[:STATE]-> (todo)
	(adminRight) -[:AUTHORIZE]-> (use) -[:STATE]-> (created:State)
	(adminRight) -[:AUTHORIZE]-> (use) -[:STATE]-> (published:State)
	(adminRight) -[:AUTHORIZE]-> (use) -[:STATE]-> (fixed:State)
	(adminRight) -[:AUTHORIZE]-> (use) -[:STATE]-> (tested:State)
	(adminRight) -[:AUTHORIZE]-> (use) -[:STATE]-> (validated:State)
	(adminRight) -[:AUTHORIZE]-> (use) -[:STATE]-> (unvalidated:State)
	(adminRight) -[:AUTHORIZE]-> (use) -[:STATE]-> (accessed:State)
	(adminRight) -[:AUTHORIZE]-> (use) -[:STATE]-> (used:State)
	(adminRight) -[:AUTHORIZE]-> (use) -[:STATE]-> (updated:State)
	(adminRight) -[:AUTHORIZE]-> (use) -[:STATE]-> (expireded:State)
	(adminRight) -[:AUTHORIZE]-> (use) -[:STATE]-> (integrityFalse:State)

	(adminRight) -[:AUTHORIZE]-> (test) -[:STATE]-> (todo)
	(adminRight) -[:AUTHORIZE]-> (test) -[:STATE]-> (created:State)
	(adminRight) -[:AUTHORIZE]-> (test) -[:STATE]-> (published:State)
	(adminRight) -[:AUTHORIZE]-> (test) -[:STATE]-> (fixed:State)
	(adminRight) -[:AUTHORIZE]-> (test) -[:STATE]-> (tested:State)
	(adminRight) -[:AUTHORIZE]-> (test) -[:STATE]-> (validated:State)
	(adminRight) -[:AUTHORIZE]-> (test) -[:STATE]-> (unvalidated:State)
	(adminRight) -[:AUTHORIZE]-> (test) -[:STATE]-> (accessed:State)
	(adminRight) -[:AUTHORIZE]-> (test) -[:STATE]-> (used:State)
	(adminRight) -[:AUTHORIZE]-> (test) -[:STATE]-> (updated:State)
	(adminRight) -[:AUTHORIZE]-> (test) -[:STATE]-> (expireded:State)
	(adminRight) -[:AUTHORIZE]-> (test) -[:STATE]-> (integrityFalse:State)

	(adminRight) -[:AUTHORIZE]-> (valid) -[:STATE]-> (todo)
	(adminRight) -[:AUTHORIZE]-> (valid) -[:STATE]-> (created:State)
	(adminRight) -[:AUTHORIZE]-> (valid) -[:STATE]-> (published:State)
	(adminRight) -[:AUTHORIZE]-> (valid) -[:STATE]-> (fixed:State)
	(adminRight) -[:AUTHORIZE]-> (valid) -[:STATE]-> (tested:State)
	(adminRight) -[:AUTHORIZE]-> (valid) -[:STATE]-> (validated:State)
	(adminRight) -[:AUTHORIZE]-> (valid) -[:STATE]-> (unvalidated:State)
	(adminRight) -[:AUTHORIZE]-> (valid) -[:STATE]-> (accessed:State)
	(adminRight) -[:AUTHORIZE]-> (valid) -[:STATE]-> (used:State)
	(adminRight) -[:AUTHORIZE]-> (valid) -[:STATE]-> (updated:State)
	(adminRight) -[:AUTHORIZE]-> (valid) -[:STATE]-> (expireded:State)
	(adminRight) -[:AUTHORIZE]-> (valid) -[:STATE]-> (integrityFalse:State)

	(adminRight) -[:AUTHORIZE]-> (host) -[:STATE]-> (todo)
	(adminRight) -[:AUTHORIZE]-> (host) -[:STATE]-> (created:State)
	(adminRight) -[:AUTHORIZE]-> (host) -[:STATE]-> (published:State)
	(adminRight) -[:AUTHORIZE]-> (host) -[:STATE]-> (fixed:State)
	(adminRight) -[:AUTHORIZE]-> (host) -[:STATE]-> (tested:State)
	(adminRight) -[:AUTHORIZE]-> (host) -[:STATE]-> (validated:State)
	(adminRight) -[:AUTHORIZE]-> (host) -[:STATE]-> (unvalidated:State)
	(adminRight) -[:AUTHORIZE]-> (host) -[:STATE]-> (accessed:State)
	(adminRight) -[:AUTHORIZE]-> (host) -[:STATE]-> (used:State)
	(adminRight) -[:AUTHORIZE]-> (host) -[:STATE]-> (updated:State)
	(adminRight) -[:AUTHORIZE]-> (host) -[:STATE]-> (expireded:State)
	(adminRight) -[:AUTHORIZE]-> (host) -[:STATE]-> (integrityFalse:State)

	(adminRight) -[:AUTHORIZE]-> (manage) -[:STATE]-> (todo)
	(adminRight) -[:AUTHORIZE]-> (manage) -[:STATE]-> (created:State)
	(adminRight) -[:AUTHORIZE]-> (manage) -[:STATE]-> (published:State)
	(adminRight) -[:AUTHORIZE]-> (manage) -[:STATE]-> (fixed:State)
	(adminRight) -[:AUTHORIZE]-> (manage) -[:STATE]-> (tested:State)
	(adminRight) -[:AUTHORIZE]-> (manage) -[:STATE]-> (validated:State)
	(adminRight) -[:AUTHORIZE]-> (manage) -[:STATE]-> (unvalidated:State)
	(adminRight) -[:AUTHORIZE]-> (manage) -[:STATE]-> (accessed:State)
	(adminRight) -[:AUTHORIZE]-> (manage) -[:STATE]-> (used:State)
	(adminRight) -[:AUTHORIZE]-> (manage) -[:STATE]-> (updated:State)
	(adminRight) -[:AUTHORIZE]-> (manage) -[:STATE]-> (expireded:State)
	(adminRight) -[:AUTHORIZE]-> (manage) -[:STATE]-> (integrityFalse:State)

	(adminRight) -[:AUTHORIZE]-> (target) -[:STATE]-> (todo)
	(adminRight) -[:AUTHORIZE]-> (target) -[:STATE]-> (created:State)
	(adminRight) -[:AUTHORIZE]-> (target) -[:STATE]-> (published:State)
	(adminRight) -[:AUTHORIZE]-> (target) -[:STATE]-> (fixed:State)
	(adminRight) -[:AUTHORIZE]-> (target) -[:STATE]-> (tested:State)
	(adminRight) -[:AUTHORIZE]-> (target) -[:STATE]-> (validated:State)
	(adminRight) -[:AUTHORIZE]-> (target) -[:STATE]-> (unvalidated:State)
	(adminRight) -[:AUTHORIZE]-> (target) -[:STATE]-> (accessed:State)
	(adminRight) -[:AUTHORIZE]-> (target) -[:STATE]-> (used:State)
	(adminRight) -[:AUTHORIZE]-> (target) -[:STATE]-> (updated:State)
	(adminRight) -[:AUTHORIZE]-> (target) -[:STATE]-> (expireded:State)
	(adminRight) -[:AUTHORIZE]-> (target) -[:STATE]-> (integrityFalse:State)

	(adminRight) -[:AUTHORIZE]-> (represente) -[:STATE]-> (todo)
	(adminRight) -[:AUTHORIZE]-> (represente) -[:STATE]-> (created:State)
	(adminRight) -[:AUTHORIZE]-> (represente) -[:STATE]-> (published:State)
	(adminRight) -[:AUTHORIZE]-> (represente) -[:STATE]-> (fixed:State)
	(adminRight) -[:AUTHORIZE]-> (represente) -[:STATE]-> (tested:State)
	(adminRight) -[:AUTHORIZE]-> (represente) -[:STATE]-> (validated:State)
	(adminRight) -[:AUTHORIZE]-> (represente) -[:STATE]-> (unvalidated:State)
	(adminRight) -[:AUTHORIZE]-> (represente) -[:STATE]-> (accessed:State)
	(adminRight) -[:AUTHORIZE]-> (represente) -[:STATE]-> (used:State)
	(adminRight) -[:AUTHORIZE]-> (represente) -[:STATE]-> (updated:State)
	(adminRight) -[:AUTHORIZE]-> (represente) -[:STATE]-> (expireded:State)
	(adminRight) -[:AUTHORIZE]-> (represente) -[:STATE]-> (integrityFalse:State)

	(adminRight) -[:AUTHORIZE]-> (collect) -[:STATE]-> (todo)
	(adminRight) -[:AUTHORIZE]-> (collect) -[:STATE]-> (created:State)
	(adminRight) -[:AUTHORIZE]-> (collect) -[:STATE]-> (published:State)
	(adminRight) -[:AUTHORIZE]-> (collect) -[:STATE]-> (fixed:State)
	(adminRight) -[:AUTHORIZE]-> (collect) -[:STATE]-> (tested:State)
	(adminRight) -[:AUTHORIZE]-> (collect) -[:STATE]-> (validated:State)
	(adminRight) -[:AUTHORIZE]-> (collect) -[:STATE]-> (unvalidated:State)
	(adminRight) -[:AUTHORIZE]-> (collect) -[:STATE]-> (accessed:State)
	(adminRight) -[:AUTHORIZE]-> (collect) -[:STATE]-> (used:State)
	(adminRight) -[:AUTHORIZE]-> (collect) -[:STATE]-> (updated:State)
	(adminRight) -[:AUTHORIZE]-> (collect) -[:STATE]-> (expireded:State)
	(adminRight) -[:AUTHORIZE]-> (collect) -[:STATE]-> (integrityFalse:State)

	(adminRight) -[:AUTHORIZE]-> (authorize) -[:STATE]-> (todo)
	(adminRight) -[:AUTHORIZE]-> (authorize) -[:STATE]-> (created:State)
	(adminRight) -[:AUTHORIZE]-> (authorize) -[:STATE]-> (published:State)
	(adminRight) -[:AUTHORIZE]-> (authorize) -[:STATE]-> (fixed:State)
	(adminRight) -[:AUTHORIZE]-> (authorize) -[:STATE]-> (tested:State)
	(adminRight) -[:AUTHORIZE]-> (authorize) -[:STATE]-> (validated:State)
	(adminRight) -[:AUTHORIZE]-> (authorize) -[:STATE]-> (unvalidated:State)
	(adminRight) -[:AUTHORIZE]-> (authorize) -[:STATE]-> (accessed:State)
	(adminRight) -[:AUTHORIZE]-> (authorize) -[:STATE]-> (used:State)
	(adminRight) -[:AUTHORIZE]-> (authorize) -[:STATE]-> (updated:State)
	(adminRight) -[:AUTHORIZE]-> (authorize) -[:STATE]-> (expireded:State)
	(adminRight) -[:AUTHORIZE]-> (authorize) -[:STATE]-> (integrityFalse:State)

	(adminRight) -[:AUTHORIZE]-> (access) -[:STATE]-> (todo)
	(adminRight) -[:AUTHORIZE]-> (access) -[:STATE]-> (created:State)
	(adminRight) -[:AUTHORIZE]-> (access) -[:STATE]-> (published:State)
	(adminRight) -[:AUTHORIZE]-> (access) -[:STATE]-> (fixed:State)
	(adminRight) -[:AUTHORIZE]-> (access) -[:STATE]-> (tested:State)
	(adminRight) -[:AUTHORIZE]-> (access) -[:STATE]-> (validated:State)
	(adminRight) -[:AUTHORIZE]-> (access) -[:STATE]-> (unvalidated:State)
	(adminRight) -[:AUTHORIZE]-> (access) -[:STATE]-> (accessed:State)
	(adminRight) -[:AUTHORIZE]-> (access) -[:STATE]-> (used:State)
	(adminRight) -[:AUTHORIZE]-> (access) -[:STATE]-> (updated:State)
	(adminRight) -[:AUTHORIZE]-> (access) -[:STATE]-> (expireded:State)
	(adminRight) -[:AUTHORIZE]-> (access) -[:STATE]-> (integrityFalse:State)

	(adminRight) -[:AUTHORIZE]-> (update) -[:STATE]-> (todo)
	(adminRight) -[:AUTHORIZE]-> (update) -[:STATE]-> (created:State)
	(adminRight) -[:AUTHORIZE]-> (update) -[:STATE]-> (published:State)
	(adminRight) -[:AUTHORIZE]-> (update) -[:STATE]-> (fixed:State)
	(adminRight) -[:AUTHORIZE]-> (update) -[:STATE]-> (tested:State)
	(adminRight) -[:AUTHORIZE]-> (update) -[:STATE]-> (validated:State)
	(adminRight) -[:AUTHORIZE]-> (update) -[:STATE]-> (unvalidated:State)
	(adminRight) -[:AUTHORIZE]-> (update) -[:STATE]-> (accessed:State)
	(adminRight) -[:AUTHORIZE]-> (update) -[:STATE]-> (used:State)
	(adminRight) -[:AUTHORIZE]-> (update) -[:STATE]-> (updated:State)
	(adminRight) -[:AUTHORIZE]-> (update) -[:STATE]-> (expireded:State)
	(adminRight) -[:AUTHORIZE]-> (update) -[:STATE]-> (integrityFalse:State)

	(adminRight) -[:AUTHORIZE]-> (execute) -[:STATE]-> (todo)
	(adminRight) -[:AUTHORIZE]-> (execute) -[:STATE]-> (created:State)
	(adminRight) -[:AUTHORIZE]-> (execute) -[:STATE]-> (published:State)
	(adminRight) -[:AUTHORIZE]-> (execute) -[:STATE]-> (fixed:State)
	(adminRight) -[:AUTHORIZE]-> (execute) -[:STATE]-> (tested:State)
	(adminRight) -[:AUTHORIZE]-> (execute) -[:STATE]-> (validated:State)
	(adminRight) -[:AUTHORIZE]-> (execute) -[:STATE]-> (unvalidated:State)
	(adminRight) -[:AUTHORIZE]-> (execute) -[:STATE]-> (accessed:State)
	(adminRight) -[:AUTHORIZE]-> (execute) -[:STATE]-> (used:State)
	(adminRight) -[:AUTHORIZE]-> (execute) -[:STATE]-> (updated:State)
	(adminRight) -[:AUTHORIZE]-> (execute) -[:STATE]-> (expireded:State)
	(adminRight) -[:AUTHORIZE]-> (execute) -[:STATE]-> (integrityFalse:State)

	(adminRight) -[:AUTHORIZE]-> (change) -[:STATE]-> (todo)
	(adminRight) -[:AUTHORIZE]-> (change) -[:STATE]-> (created:State)
	(adminRight) -[:AUTHORIZE]-> (change) -[:STATE]-> (published:State)
	(adminRight) -[:AUTHORIZE]-> (change) -[:STATE]-> (fixed:State)
	(adminRight) -[:AUTHORIZE]-> (change) -[:STATE]-> (tested:State)
	(adminRight) -[:AUTHORIZE]-> (change) -[:STATE]-> (validated:State)
	(adminRight) -[:AUTHORIZE]-> (change) -[:STATE]-> (unvalidated:State)
	(adminRight) -[:AUTHORIZE]-> (change) -[:STATE]-> (accessed:State)
	(adminRight) -[:AUTHORIZE]-> (change) -[:STATE]-> (used:State)
	(adminRight) -[:AUTHORIZE]-> (change) -[:STATE]-> (updated:State)
	(adminRight) -[:AUTHORIZE]-> (change) -[:STATE]-> (expireded:State)
	(adminRight) -[:AUTHORIZE]-> (change) -[:STATE]-> (integrityFalse:State)

	(adminRight) -[:AUTHORIZE]-> (optimize) -[:STATE]-> (todo)
	(adminRight) -[:AUTHORIZE]-> (optimize) -[:STATE]-> (created:State)
	(adminRight) -[:AUTHORIZE]-> (optimize) -[:STATE]-> (published:State)
	(adminRight) -[:AUTHORIZE]-> (optimize) -[:STATE]-> (fixed:State)
	(adminRight) -[:AUTHORIZE]-> (optimize) -[:STATE]-> (tested:State)
	(adminRight) -[:AUTHORIZE]-> (optimize) -[:STATE]-> (validated:State)
	(adminRight) -[:AUTHORIZE]-> (optimize) -[:STATE]-> (unvalidated:State)
	(adminRight) -[:AUTHORIZE]-> (optimize) -[:STATE]-> (accessed:State)
	(adminRight) -[:AUTHORIZE]-> (optimize) -[:STATE]-> (used:State)
	(adminRight) -[:AUTHORIZE]-> (optimize) -[:STATE]-> (updated:State)
	(adminRight) -[:AUTHORIZE]-> (optimize) -[:STATE]-> (expireded:State)
	(adminRight) -[:AUTHORIZE]-> (optimize) -[:STATE]-> (integrityFalse:State)

	(adminRight) -[:AUTHORIZE]-> (init) -[:STATE]-> (todo)
	(adminRight) -[:AUTHORIZE]-> (init) -[:STATE]-> (created:State)
	(adminRight) -[:AUTHORIZE]-> (init) -[:STATE]-> (published:State)
	(adminRight) -[:AUTHORIZE]-> (init) -[:STATE]-> (fixed:State)
	(adminRight) -[:AUTHORIZE]-> (init) -[:STATE]-> (tested:State)
	(adminRight) -[:AUTHORIZE]-> (init) -[:STATE]-> (validated:State)
	(adminRight) -[:AUTHORIZE]-> (init) -[:STATE]-> (unvalidated:State)
	(adminRight) -[:AUTHORIZE]-> (init) -[:STATE]-> (accessed:State)
	(adminRight) -[:AUTHORIZE]-> (init) -[:STATE]-> (used:State)
	(adminRight) -[:AUTHORIZE]-> (init) -[:STATE]-> (updated:State)
	(adminRight) -[:AUTHORIZE]-> (init) -[:STATE]-> (expireded:State)
	(adminRight) -[:AUTHORIZE]-> (init) -[:STATE]-> (integrityFalse:State)

	(adminRight) -[:AUTHORIZE]-> (own) -[:STATE]-> (todo)
	(adminRight) -[:AUTHORIZE]-> (own) -[:STATE]-> (created:State)
	(adminRight) -[:AUTHORIZE]-> (own) -[:STATE]-> (published:State)
	(adminRight) -[:AUTHORIZE]-> (own) -[:STATE]-> (fixed:State)
	(adminRight) -[:AUTHORIZE]-> (own) -[:STATE]-> (tested:State)
	(adminRight) -[:AUTHORIZE]-> (own) -[:STATE]-> (validated:State)
	(adminRight) -[:AUTHORIZE]-> (own) -[:STATE]-> (unvalidated:State)
	(adminRight) -[:AUTHORIZE]-> (own) -[:STATE]-> (accessed:State)
	(adminRight) -[:AUTHORIZE]-> (own) -[:STATE]-> (used:State)
	(adminRight) -[:AUTHORIZE]-> (own) -[:STATE]-> (updated:State)
	(adminRight) -[:AUTHORIZE]-> (own) -[:STATE]-> (expireded:State)
	(adminRight) -[:AUTHORIZE]-> (own) -[:STATE]-> (integrityFalse:State)

	(adminRight) -[:AUTHORIZE]-> (identify) -[:STATE]-> (todo)
	(adminRight) -[:AUTHORIZE]-> (identify) -[:STATE]-> (created:State)
	(adminRight) -[:AUTHORIZE]-> (identify) -[:STATE]-> (published:State)
	(adminRight) -[:AUTHORIZE]-> (identify) -[:STATE]-> (fixed:State)
	(adminRight) -[:AUTHORIZE]-> (identify) -[:STATE]-> (tested:State)
	(adminRight) -[:AUTHORIZE]-> (identify) -[:STATE]-> (validated:State)
	(adminRight) -[:AUTHORIZE]-> (identify) -[:STATE]-> (unvalidated:State)
	(adminRight) -[:AUTHORIZE]-> (identify) -[:STATE]-> (accessed:State)
	(adminRight) -[:AUTHORIZE]-> (identify) -[:STATE]-> (used:State)
	(adminRight) -[:AUTHORIZE]-> (identify) -[:STATE]-> (updated:State)
	(adminRight) -[:AUTHORIZE]-> (identify) -[:STATE]-> (expireded:State)
	(adminRight) -[:AUTHORIZE]-> (identify) -[:STATE]-> (integrityFalse:State)

	(adminRight) -[:AUTHORIZE]-> (MARK) -[:STATE]-> (todo)
	(adminRight) -[:AUTHORIZE]-> (MARK) -[:STATE]-> (created:State)
	(adminRight) -[:AUTHORIZE]-> (MARK) -[:STATE]-> (published:State)
	(adminRight) -[:AUTHORIZE]-> (MARK) -[:STATE]-> (fixed:State)
	(adminRight) -[:AUTHORIZE]-> (MARK) -[:STATE]-> (tested:State)
	(adminRight) -[:AUTHORIZE]-> (MARK) -[:STATE]-> (validated:State)
	(adminRight) -[:AUTHORIZE]-> (MARK) -[:STATE]-> (unvalidated:State)
	(adminRight) -[:AUTHORIZE]-> (MARK) -[:STATE]-> (accessed:State)
	(adminRight) -[:AUTHORIZE]-> (MARK) -[:STATE]-> (used:State)
	(adminRight) -[:AUTHORIZE]-> (MARK) -[:STATE]-> (updated:State)
	(adminRight) -[:AUTHORIZE]-> (MARK) -[:STATE]-> (expireded:State)
	(adminRight) -[:AUTHORIZE]-> (MARK) -[:STATE]-> (integrityFalse:State)

	(adminRight) -[:AUTHORIZE]-> (expire) -[:STATE]-> (todo)
	(adminRight) -[:AUTHORIZE]-> (expire) -[:STATE]-> (created:State)
	(adminRight) -[:AUTHORIZE]-> (expire) -[:STATE]-> (published:State)
	(adminRight) -[:AUTHORIZE]-> (expire) -[:STATE]-> (fixed:State)
	(adminRight) -[:AUTHORIZE]-> (expire) -[:STATE]-> (tested:State)
	(adminRight) -[:AUTHORIZE]-> (expire) -[:STATE]-> (validated:State)
	(adminRight) -[:AUTHORIZE]-> (expire) -[:STATE]-> (unvalidated:State)
	(adminRight) -[:AUTHORIZE]-> (expire) -[:STATE]-> (accessed:State)
	(adminRight) -[:AUTHORIZE]-> (expire) -[:STATE]-> (used:State)
	(adminRight) -[:AUTHORIZE]-> (expire) -[:STATE]-> (updated:State)
	(adminRight) -[:AUTHORIZE]-> (expire) -[:STATE]-> (expireded:State)
	(adminRight) -[:AUTHORIZE]-> (expire) -[:STATE]-> (integrityFalse:State)

	(adminRight) -[:AUTHORIZE]-> (localize) -[:STATE]-> (todo)
	(adminRight) -[:AUTHORIZE]-> (localize) -[:STATE]-> (created:State)
	(adminRight) -[:AUTHORIZE]-> (localize) -[:STATE]-> (published:State)
	(adminRight) -[:AUTHORIZE]-> (localize) -[:STATE]-> (fixed:State)
	(adminRight) -[:AUTHORIZE]-> (localize) -[:STATE]-> (tested:State)
	(adminRight) -[:AUTHORIZE]-> (localize) -[:STATE]-> (validated:State)
	(adminRight) -[:AUTHORIZE]-> (localize) -[:STATE]-> (unvalidated:State)
	(adminRight) -[:AUTHORIZE]-> (localize) -[:STATE]-> (accessed:State)
	(adminRight) -[:AUTHORIZE]-> (localize) -[:STATE]-> (used:State)
	(adminRight) -[:AUTHORIZE]-> (localize) -[:STATE]-> (updated:State)
	(adminRight) -[:AUTHORIZE]-> (localize) -[:STATE]-> (expireded:State)
	(adminRight) -[:AUTHORIZE]-> (localize) -[:STATE]-> (integrityFalse:State)

	(adminRight) -[:AUTHORIZE]-> (show) -[:STATE]-> (todo)
	(adminRight) -[:AUTHORIZE]-> (show) -[:STATE]-> (created:State)
	(adminRight) -[:AUTHORIZE]-> (show) -[:STATE]-> (published:State)
	(adminRight) -[:AUTHORIZE]-> (show) -[:STATE]-> (fixed:State)
	(adminRight) -[:AUTHORIZE]-> (show) -[:STATE]-> (tested:State)
	(adminRight) -[:AUTHORIZE]-> (show) -[:STATE]-> (validated:State)
	(adminRight) -[:AUTHORIZE]-> (show) -[:STATE]-> (unvalidated:State)
	(adminRight) -[:AUTHORIZE]-> (show) -[:STATE]-> (accessed:State)
	(adminRight) -[:AUTHORIZE]-> (show) -[:STATE]-> (used:State)
	(adminRight) -[:AUTHORIZE]-> (show) -[:STATE]-> (updated:State)
	(adminRight) -[:AUTHORIZE]-> (show) -[:STATE]-> (expireded:State)
	(adminRight) -[:AUTHORIZE]-> (show) -[:STATE]-> (integrityFalse:State)

	(adminRight) -[:AUTHORIZE]-> (size) -[:STATE]-> (todo)
	(adminRight) -[:AUTHORIZE]-> (size) -[:STATE]-> (created:State)
	(adminRight) -[:AUTHORIZE]-> (size) -[:STATE]-> (published:State)
	(adminRight) -[:AUTHORIZE]-> (size) -[:STATE]-> (fixed:State)
	(adminRight) -[:AUTHORIZE]-> (size) -[:STATE]-> (tested:State)
	(adminRight) -[:AUTHORIZE]-> (size) -[:STATE]-> (validated:State)
	(adminRight) -[:AUTHORIZE]-> (size) -[:STATE]-> (unvalidated:State)
	(adminRight) -[:AUTHORIZE]-> (size) -[:STATE]-> (accessed:State)
	(adminRight) -[:AUTHORIZE]-> (size) -[:STATE]-> (used:State)
	(adminRight) -[:AUTHORIZE]-> (size) -[:STATE]-> (updated:State)
	(adminRight) -[:AUTHORIZE]-> (size) -[:STATE]-> (expireded:State)
	(adminRight) -[:AUTHORIZE]-> (size) -[:STATE]-> (integrityFalse:State)

	(adminRight) -[:AUTHORIZE]-> (historize) -[:STATE]-> (todo)
	(adminRight) -[:AUTHORIZE]-> (historize) -[:STATE]-> (created:State)
	(adminRight) -[:AUTHORIZE]-> (historize) -[:STATE]-> (published:State)
	(adminRight) -[:AUTHORIZE]-> (historize) -[:STATE]-> (fixed:State)
	(adminRight) -[:AUTHORIZE]-> (historize) -[:STATE]-> (tested:State)
	(adminRight) -[:AUTHORIZE]-> (historize) -[:STATE]-> (validated:State)
	(adminRight) -[:AUTHORIZE]-> (historize) -[:STATE]-> (unvalidated:State)
	(adminRight) -[:AUTHORIZE]-> (historize) -[:STATE]-> (accessed:State)
	(adminRight) -[:AUTHORIZE]-> (historize) -[:STATE]-> (used:State)
	(adminRight) -[:AUTHORIZE]-> (historize) -[:STATE]-> (updated:State)
	(adminRight) -[:AUTHORIZE]-> (historize) -[:STATE]-> (expireded:State)
	(adminRight) -[:AUTHORIZE]-> (historize) -[:STATE]-> (integrityFalse:State)

	(adminRight) -[:AUTHORIZE]-> (contributeTo) -[:STATE]-> (todo)
	(adminRight) -[:AUTHORIZE]-> (contributeTo) -[:STATE]-> (created:State)
	(adminRight) -[:AUTHORIZE]-> (contributeTo) -[:STATE]-> (published:State)
	(adminRight) -[:AUTHORIZE]-> (contributeTo) -[:STATE]-> (fixed:State)
	(adminRight) -[:AUTHORIZE]-> (contributeTo) -[:STATE]-> (tested:State)
	(adminRight) -[:AUTHORIZE]-> (contributeTo) -[:STATE]-> (validated:State)
	(adminRight) -[:AUTHORIZE]-> (contributeTo) -[:STATE]-> (unvalidated:State)
	(adminRight) -[:AUTHORIZE]-> (contributeTo) -[:STATE]-> (accessed:State)
	(adminRight) -[:AUTHORIZE]-> (contributeTo) -[:STATE]-> (used:State)
	(adminRight) -[:AUTHORIZE]-> (contributeTo) -[:STATE]-> (updated:State)
	(adminRight) -[:AUTHORIZE]-> (contributeTo) -[:STATE]-> (expireded:State)
	(adminRight) -[:AUTHORIZE]-> (contributeTo) -[:STATE]-> (integrityFalse:State)

	(adminRight) -[:AUTHORIZE]-> (concern) -[:STATE]-> (todo)
	(adminRight) -[:AUTHORIZE]-> (concern) -[:STATE]-> (created:State)
	(adminRight) -[:AUTHORIZE]-> (concern) -[:STATE]-> (published:State)
	(adminRight) -[:AUTHORIZE]-> (concern) -[:STATE]-> (fixed:State)
	(adminRight) -[:AUTHORIZE]-> (concern) -[:STATE]-> (tested:State)
	(adminRight) -[:AUTHORIZE]-> (concern) -[:STATE]-> (validated:State)
	(adminRight) -[:AUTHORIZE]-> (concern) -[:STATE]-> (unvalidated:State)
	(adminRight) -[:AUTHORIZE]-> (concern) -[:STATE]-> (accessed:State)
	(adminRight) -[:AUTHORIZE]-> (concern) -[:STATE]-> (used:State)
	(adminRight) -[:AUTHORIZE]-> (concern) -[:STATE]-> (updated:State)
	(adminRight) -[:AUTHORIZE]-> (concern) -[:STATE]-> (expireded:State)
	(adminRight) -[:AUTHORIZE]-> (concern) -[:STATE]-> (integrityFalse:State)

	(adminRight) -[:AUTHORIZE]-> (cost) -[:STATE]-> (todo)
	(adminRight) -[:AUTHORIZE]-> (cost) -[:STATE]-> (created:State)
	(adminRight) -[:AUTHORIZE]-> (cost) -[:STATE]-> (published:State)
	(adminRight) -[:AUTHORIZE]-> (cost) -[:STATE]-> (fixed:State)
	(adminRight) -[:AUTHORIZE]-> (cost) -[:STATE]-> (tested:State)
	(adminRight) -[:AUTHORIZE]-> (cost) -[:STATE]-> (validated:State)
	(adminRight) -[:AUTHORIZE]-> (cost) -[:STATE]-> (unvalidated:State)
	(adminRight) -[:AUTHORIZE]-> (cost) -[:STATE]-> (accessed:State)
	(adminRight) -[:AUTHORIZE]-> (cost) -[:STATE]-> (used:State)
	(adminRight) -[:AUTHORIZE]-> (cost) -[:STATE]-> (updated:State)
	(adminRight) -[:AUTHORIZE]-> (cost) -[:STATE]-> (expireded:State)
	(adminRight) -[:AUTHORIZE]-> (cost) -[:STATE]-> (integrityFalse:State)

	(adminRight) -[:AUTHORIZE]-> (stock) -[:STATE]-> (todo)
	(adminRight) -[:AUTHORIZE]-> (stock) -[:STATE]-> (created:State)
	(adminRight) -[:AUTHORIZE]-> (stock) -[:STATE]-> (published:State)
	(adminRight) -[:AUTHORIZE]-> (stock) -[:STATE]-> (fixed:State)
	(adminRight) -[:AUTHORIZE]-> (stock) -[:STATE]-> (tested:State)
	(adminRight) -[:AUTHORIZE]-> (stock) -[:STATE]-> (validated:State)
	(adminRight) -[:AUTHORIZE]-> (stock) -[:STATE]-> (unvalidated:State)
	(adminRight) -[:AUTHORIZE]-> (stock) -[:STATE]-> (accessed:State)
	(adminRight) -[:AUTHORIZE]-> (stock) -[:STATE]-> (used:State)
	(adminRight) -[:AUTHORIZE]-> (stock) -[:STATE]-> (updated:State)
	(adminRight) -[:AUTHORIZE]-> (stock) -[:STATE]-> (expireded:State)
	(adminRight) -[:AUTHORIZE]-> (stock) -[:STATE]-> (integrityFalse:State)

	(adminRight) -[:AUTHORIZE]-> (shipp) -[:STATE]-> (todo)
	(adminRight) -[:AUTHORIZE]-> (shipp) -[:STATE]-> (created:State)
	(adminRight) -[:AUTHORIZE]-> (shipp) -[:STATE]-> (published:State)
	(adminRight) -[:AUTHORIZE]-> (shipp) -[:STATE]-> (fixed:State)
	(adminRight) -[:AUTHORIZE]-> (shipp) -[:STATE]-> (tested:State)
	(adminRight) -[:AUTHORIZE]-> (shipp) -[:STATE]-> (validated:State)
	(adminRight) -[:AUTHORIZE]-> (shipp) -[:STATE]-> (unvalidated:State)
	(adminRight) -[:AUTHORIZE]-> (shipp) -[:STATE]-> (accessed:State)
	(adminRight) -[:AUTHORIZE]-> (shipp) -[:STATE]-> (used:State)
	(adminRight) -[:AUTHORIZE]-> (shipp) -[:STATE]-> (updated:State)
	(adminRight) -[:AUTHORIZE]-> (shipp) -[:STATE]-> (expireded:State)
	(adminRight) -[:AUTHORIZE]-> (shipp) -[:STATE]-> (integrityFalse:State)

	(adminRight) -[:AUTHORIZE]-> (order) -[:STATE]-> (todo)
	(adminRight) -[:AUTHORIZE]-> (order) -[:STATE]-> (created:State)
	(adminRight) -[:AUTHORIZE]-> (order) -[:STATE]-> (published:State)
	(adminRight) -[:AUTHORIZE]-> (order) -[:STATE]-> (fixed:State)
	(adminRight) -[:AUTHORIZE]-> (order) -[:STATE]-> (tested:State)
	(adminRight) -[:AUTHORIZE]-> (order) -[:STATE]-> (validated:State)
	(adminRight) -[:AUTHORIZE]-> (order) -[:STATE]-> (unvalidated:State)
	(adminRight) -[:AUTHORIZE]-> (order) -[:STATE]-> (accessed:State)
	(adminRight) -[:AUTHORIZE]-> (order) -[:STATE]-> (used:State)
	(adminRight) -[:AUTHORIZE]-> (order) -[:STATE]-> (updated:State)
	(adminRight) -[:AUTHORIZE]-> (order) -[:STATE]-> (expireded:State)
	(adminRight) -[:AUTHORIZE]-> (order) -[:STATE]-> (integrityFalse:State)

	(adminRight) -[:AUTHORIZE]-> (pay) -[:STATE]-> (todo)
	(adminRight) -[:AUTHORIZE]-> (pay) -[:STATE]-> (created:State)
	(adminRight) -[:AUTHORIZE]-> (pay) -[:STATE]-> (published:State)
	(adminRight) -[:AUTHORIZE]-> (pay) -[:STATE]-> (fixed:State)
	(adminRight) -[:AUTHORIZE]-> (pay) -[:STATE]-> (tested:State)
	(adminRight) -[:AUTHORIZE]-> (pay) -[:STATE]-> (validated:State)
	(adminRight) -[:AUTHORIZE]-> (pay) -[:STATE]-> (unvalidated:State)
	(adminRight) -[:AUTHORIZE]-> (pay) -[:STATE]-> (accessed:State)
	(adminRight) -[:AUTHORIZE]-> (pay) -[:STATE]-> (used:State)
	(adminRight) -[:AUTHORIZE]-> (pay) -[:STATE]-> (updated:State)
	(adminRight) -[:AUTHORIZE]-> (pay) -[:STATE]-> (expireded:State)
	(adminRight) -[:AUTHORIZE]-> (pay) -[:STATE]-> (integrityFalse:State)

	(adminRight) -[:AUTHORIZE]-> (billing) -[:STATE]-> (todo)
	(adminRight) -[:AUTHORIZE]-> (billing) -[:STATE]-> (created:State)
	(adminRight) -[:AUTHORIZE]-> (billing) -[:STATE]-> (published:State)
	(adminRight) -[:AUTHORIZE]-> (billing) -[:STATE]-> (fixed:State)
	(adminRight) -[:AUTHORIZE]-> (billing) -[:STATE]-> (tested:State)
	(adminRight) -[:AUTHORIZE]-> (billing) -[:STATE]-> (validated:State)
	(adminRight) -[:AUTHORIZE]-> (billing) -[:STATE]-> (unvalidated:State)
	(adminRight) -[:AUTHORIZE]-> (billing) -[:STATE]-> (accessed:State)
	(adminRight) -[:AUTHORIZE]-> (billing) -[:STATE]-> (used:State)
	(adminRight) -[:AUTHORIZE]-> (billing) -[:STATE]-> (updated:State)
	(adminRight) -[:AUTHORIZE]-> (billing) -[:STATE]-> (expireded:State)
	(adminRight) -[:AUTHORIZE]-> (billing) -[:STATE]-> (integrityFalse:State)

	(adminRight) -[:AUTHORIZE]-> (expedite) -[:STATE]-> (todo)
	(adminRight) -[:AUTHORIZE]-> (expedite) -[:STATE]-> (created:State)
	(adminRight) -[:AUTHORIZE]-> (expedite) -[:STATE]-> (published:State)
	(adminRight) -[:AUTHORIZE]-> (expedite) -[:STATE]-> (fixed:State)
	(adminRight) -[:AUTHORIZE]-> (expedite) -[:STATE]-> (tested:State)
	(adminRight) -[:AUTHORIZE]-> (expedite) -[:STATE]-> (validated:State)
	(adminRight) -[:AUTHORIZE]-> (expedite) -[:STATE]-> (unvalidated:State)
	(adminRight) -[:AUTHORIZE]-> (expedite) -[:STATE]-> (accessed:State)
	(adminRight) -[:AUTHORIZE]-> (expedite) -[:STATE]-> (used:State)
	(adminRight) -[:AUTHORIZE]-> (expedite) -[:STATE]-> (updated:State)
	(adminRight) -[:AUTHORIZE]-> (expedite) -[:STATE]-> (expireded:State)
	(adminRight) -[:AUTHORIZE]-> (expedite) -[:STATE]-> (integrityFalse:State)

	(adminRight) -[:AUTHORIZE]-> (payBack) -[:STATE]-> (todo)
	(adminRight) -[:AUTHORIZE]-> (payBack) -[:STATE]-> (created:State)
	(adminRight) -[:AUTHORIZE]-> (payBack) -[:STATE]-> (published:State)
	(adminRight) -[:AUTHORIZE]-> (payBack) -[:STATE]-> (fixed:State)
	(adminRight) -[:AUTHORIZE]-> (payBack) -[:STATE]-> (tested:State)
	(adminRight) -[:AUTHORIZE]-> (payBack) -[:STATE]-> (validated:State)
	(adminRight) -[:AUTHORIZE]-> (payBack) -[:STATE]-> (unvalidated:State)
	(adminRight) -[:AUTHORIZE]-> (payBack) -[:STATE]-> (accessed:State)
	(adminRight) -[:AUTHORIZE]-> (payBack) -[:STATE]-> (used:State)
	(adminRight) -[:AUTHORIZE]-> (payBack) -[:STATE]-> (updated:State)
	(adminRight) -[:AUTHORIZE]-> (payBack) -[:STATE]-> (expireded:State)
	(adminRight) -[:AUTHORIZE]-> (payBack) -[:STATE]-> (integrityFalse:State)

	(adminRight) -[:AUTHORIZE]-> (shippManange) -[:STATE]-> (todo)
	(adminRight) -[:AUTHORIZE]-> (shippManange) -[:STATE]-> (created:State)
	(adminRight) -[:AUTHORIZE]-> (shippManange) -[:STATE]-> (published:State)
	(adminRight) -[:AUTHORIZE]-> (shippManange) -[:STATE]-> (fixed:State)
	(adminRight) -[:AUTHORIZE]-> (shippManange) -[:STATE]-> (tested:State)
	(adminRight) -[:AUTHORIZE]-> (shippManange) -[:STATE]-> (validated:State)
	(adminRight) -[:AUTHORIZE]-> (shippManange) -[:STATE]-> (unvalidated:State)
	(adminRight) -[:AUTHORIZE]-> (shippManange) -[:STATE]-> (accessed:State)
	(adminRight) -[:AUTHORIZE]-> (shippManange) -[:STATE]-> (used:State)
	(adminRight) -[:AUTHORIZE]-> (shippManange) -[:STATE]-> (updated:State)
	(adminRight) -[:AUTHORIZE]-> (shippManange) -[:STATE]-> (expireded:State)
	(adminRight) -[:AUTHORIZE]-> (shippManange) -[:STATE]-> (integrityFalse:State)

	(adminRight) -[:AUTHORIZE]-> (expediteManange) -[:STATE]-> (todo)
	(adminRight) -[:AUTHORIZE]-> (expediteManange) -[:STATE]-> (created:State)
	(adminRight) -[:AUTHORIZE]-> (expediteManange) -[:STATE]-> (published:State)
	(adminRight) -[:AUTHORIZE]-> (expediteManange) -[:STATE]-> (fixed:State)
	(adminRight) -[:AUTHORIZE]-> (expediteManange) -[:STATE]-> (tested:State)
	(adminRight) -[:AUTHORIZE]-> (expediteManange) -[:STATE]-> (validated:State)
	(adminRight) -[:AUTHORIZE]-> (expediteManange) -[:STATE]-> (unvalidated:State)
	(adminRight) -[:AUTHORIZE]-> (expediteManange) -[:STATE]-> (accessed:State)
	(adminRight) -[:AUTHORIZE]-> (expediteManange) -[:STATE]-> (used:State)
	(adminRight) -[:AUTHORIZE]-> (expediteManange) -[:STATE]-> (updated:State)
	(adminRight) -[:AUTHORIZE]-> (expediteManange) -[:STATE]-> (expireded:State)
	(adminRight) -[:AUTHORIZE]-> (expediteManange) -[:STATE]-> (integrityFalse:State)

	(adminRight) -[:AUTHORIZE]-> (payManange) -[:STATE]-> (todo)
	(adminRight) -[:AUTHORIZE]-> (payManange) -[:STATE]-> (created:State)
	(adminRight) -[:AUTHORIZE]-> (payManange) -[:STATE]-> (published:State)
	(adminRight) -[:AUTHORIZE]-> (payManange) -[:STATE]-> (fixed:State)
	(adminRight) -[:AUTHORIZE]-> (payManange) -[:STATE]-> (tested:State)
	(adminRight) -[:AUTHORIZE]-> (payManange) -[:STATE]-> (validated:State)
	(adminRight) -[:AUTHORIZE]-> (payManange) -[:STATE]-> (unvalidated:State)
	(adminRight) -[:AUTHORIZE]-> (payManange) -[:STATE]-> (accessed:State)
	(adminRight) -[:AUTHORIZE]-> (payManange) -[:STATE]-> (used:State)
	(adminRight) -[:AUTHORIZE]-> (payManange) -[:STATE]-> (updated:State)
	(adminRight) -[:AUTHORIZE]-> (payManange) -[:STATE]-> (expireded:State)
	(adminRight) -[:AUTHORIZE]-> (payManange) -[:STATE]-> (integrityFalse:State)

	(adminRight) -[:AUTHORIZE]-> (produce) -[:STATE]-> (todo)
	(adminRight) -[:AUTHORIZE]-> (produce) -[:STATE]-> (created:State)
	(adminRight) -[:AUTHORIZE]-> (produce) -[:STATE]-> (published:State)
	(adminRight) -[:AUTHORIZE]-> (produce) -[:STATE]-> (fixed:State)
	(adminRight) -[:AUTHORIZE]-> (produce) -[:STATE]-> (tested:State)
	(adminRight) -[:AUTHORIZE]-> (produce) -[:STATE]-> (validated:State)
	(adminRight) -[:AUTHORIZE]-> (produce) -[:STATE]-> (unvalidated:State)
	(adminRight) -[:AUTHORIZE]-> (produce) -[:STATE]-> (accessed:State)
	(adminRight) -[:AUTHORIZE]-> (produce) -[:STATE]-> (used:State)
	(adminRight) -[:AUTHORIZE]-> (produce) -[:STATE]-> (updated:State)
	(adminRight) -[:AUTHORIZE]-> (produce) -[:STATE]-> (expireded:State)
	(adminRight) -[:AUTHORIZE]-> (produce) -[:STATE]-> (integrityFalse:State)

	(adminRight) -[:AUTHORIZE]-> (ask) -[:STATE]-> (todo)
	(adminRight) -[:AUTHORIZE]-> (ask) -[:STATE]-> (created:State)
	(adminRight) -[:AUTHORIZE]-> (ask) -[:STATE]-> (published:State)
	(adminRight) -[:AUTHORIZE]-> (ask) -[:STATE]-> (fixed:State)
	(adminRight) -[:AUTHORIZE]-> (ask) -[:STATE]-> (tested:State)
	(adminRight) -[:AUTHORIZE]-> (ask) -[:STATE]-> (validated:State)
	(adminRight) -[:AUTHORIZE]-> (ask) -[:STATE]-> (unvalidated:State)
	(adminRight) -[:AUTHORIZE]-> (ask) -[:STATE]-> (accessed:State)
	(adminRight) -[:AUTHORIZE]-> (ask) -[:STATE]-> (used:State)
	(adminRight) -[:AUTHORIZE]-> (ask) -[:STATE]-> (updated:State)
	(adminRight) -[:AUTHORIZE]-> (ask) -[:STATE]-> (expireded:State)
	(adminRight) -[:AUTHORIZE]-> (ask) -[:STATE]-> (integrityFalse:State)

	(adminRight) -[:AUTHORIZE]-> (balance) -[:STATE]-> (todo)
	(adminRight) -[:AUTHORIZE]-> (balance) -[:STATE]-> (created:State)
	(adminRight) -[:AUTHORIZE]-> (balance) -[:STATE]-> (published:State)
	(adminRight) -[:AUTHORIZE]-> (balance) -[:STATE]-> (fixed:State)
	(adminRight) -[:AUTHORIZE]-> (balance) -[:STATE]-> (tested:State)
	(adminRight) -[:AUTHORIZE]-> (balance) -[:STATE]-> (validated:State)
	(adminRight) -[:AUTHORIZE]-> (balance) -[:STATE]-> (unvalidated:State)
	(adminRight) -[:AUTHORIZE]-> (balance) -[:STATE]-> (accessed:State)
	(adminRight) -[:AUTHORIZE]-> (balance) -[:STATE]-> (used:State)
	(adminRight) -[:AUTHORIZE]-> (balance) -[:STATE]-> (updated:State)
	(adminRight) -[:AUTHORIZE]-> (balance) -[:STATE]-> (expireded:State)
	(adminRight) -[:AUTHORIZE]-> (balance) -[:STATE]-> (integrityFalse:State)

	(adminRight) -[:AUTHORIZE]-> (state) -[:STATE]-> (todo)
	(adminRight) -[:AUTHORIZE]-> (state) -[:STATE]-> (created:State)
	(adminRight) -[:AUTHORIZE]-> (state) -[:STATE]-> (published:State)
	(adminRight) -[:AUTHORIZE]-> (state) -[:STATE]-> (fixed:State)
	(adminRight) -[:AUTHORIZE]-> (state) -[:STATE]-> (tested:State)
	(adminRight) -[:AUTHORIZE]-> (state) -[:STATE]-> (validated:State)
	(adminRight) -[:AUTHORIZE]-> (state) -[:STATE]-> (unvalidated:State)
	(adminRight) -[:AUTHORIZE]-> (state) -[:STATE]-> (accessed:State)
	(adminRight) -[:AUTHORIZE]-> (state) -[:STATE]-> (used:State)
	(adminRight) -[:AUTHORIZE]-> (state) -[:STATE]-> (updated:State)
	(adminRight) -[:AUTHORIZE]-> (state) -[:STATE]-> (expireded:State)
	(adminRight) -[:AUTHORIZE]-> (state) -[:STATE]-> (integrityFalse:State)

	(adminRight) -[:AUTHORIZE]-> (note) -[:STATE]-> (todo)
	(adminRight) -[:AUTHORIZE]-> (note) -[:STATE]-> (created:State)
	(adminRight) -[:AUTHORIZE]-> (note) -[:STATE]-> (published:State)
	(adminRight) -[:AUTHORIZE]-> (note) -[:STATE]-> (fixed:State)
	(adminRight) -[:AUTHORIZE]-> (note) -[:STATE]-> (tested:State)
	(adminRight) -[:AUTHORIZE]-> (note) -[:STATE]-> (validated:State)
	(adminRight) -[:AUTHORIZE]-> (note) -[:STATE]-> (unvalidated:State)
	(adminRight) -[:AUTHORIZE]-> (note) -[:STATE]-> (accessed:State)
	(adminRight) -[:AUTHORIZE]-> (note) -[:STATE]-> (used:State)
	(adminRight) -[:AUTHORIZE]-> (note) -[:STATE]-> (updated:State)
	(adminRight) -[:AUTHORIZE]-> (note) -[:STATE]-> (expireded:State)
	(adminRight) -[:AUTHORIZE]-> (note) -[:STATE]-> (integrityFalse:State)

	(adminRight) -[:AUTHORIZE]-> (comment) -[:STATE]-> (todo)
	(adminRight) -[:AUTHORIZE]-> (comment) -[:STATE]-> (created:State)
	(adminRight) -[:AUTHORIZE]-> (comment) -[:STATE]-> (published:State)
	(adminRight) -[:AUTHORIZE]-> (comment) -[:STATE]-> (fixed:State)
	(adminRight) -[:AUTHORIZE]-> (comment) -[:STATE]-> (tested:State)
	(adminRight) -[:AUTHORIZE]-> (comment) -[:STATE]-> (validated:State)
	(adminRight) -[:AUTHORIZE]-> (comment) -[:STATE]-> (unvalidated:State)
	(adminRight) -[:AUTHORIZE]-> (comment) -[:STATE]-> (accessed:State)
	(adminRight) -[:AUTHORIZE]-> (comment) -[:STATE]-> (used:State)
	(adminRight) -[:AUTHORIZE]-> (comment) -[:STATE]-> (updated:State)
	(adminRight) -[:AUTHORIZE]-> (comment) -[:STATE]-> (expireded:State)
	(adminRight) -[:AUTHORIZE]-> (comment) -[:STATE]-> (integrityFalse:State)

	(userRight) -[:AUTHORIZE]-> (publish) -[:STATE]-> (todo)
	(userRight) -[:AUTHORIZE]-> (publish) -[:STATE]-> (created:State)
	(userRight) -[:AUTHORIZE]-> (publish) -[:STATE]-> (published:State)
	(userRight) -[:AUTHORIZE]-> (publish) -[:STATE]-> (fixed:State)
	(userRight) -[:AUTHORIZE]-> (publish) -[:STATE]-> (tested:State)
	(userRight) -[:AUTHORIZE]-> (publish) -[:STATE]-> (validated:State)
	(userRight) -[:AUTHORIZE]-> (publish) -[:STATE]-> (unvalidated:State)
	(userRight) -[:AUTHORIZE]-> (publish) -[:STATE]-> (accessed:State)
	(userRight) -[:AUTHORIZE]-> (publish) -[:STATE]-> (used:State)
	(userRight) -[:AUTHORIZE]-> (publish) -[:STATE]-> (updated:State)
	(userRight) -[:AUTHORIZE]-> (publish) -[:STATE]-> (expireded:State)
	(userRight) -[:AUTHORIZE]-> (publish) -[:STATE]-> (integrityFalse:State)

	(userRight) -[:AUTHORIZE]-> (create) -[:STATE]-> (todo)
	(userRight) -[:AUTHORIZE]-> (create) -[:STATE]-> (created:State)
	(userRight) -[:AUTHORIZE]-> (create) -[:STATE]-> (published:State)
	(userRight) -[:AUTHORIZE]-> (create) -[:STATE]-> (fixed:State)
	(userRight) -[:AUTHORIZE]-> (create) -[:STATE]-> (tested:State)
	(userRight) -[:AUTHORIZE]-> (create) -[:STATE]-> (validated:State)
	(userRight) -[:AUTHORIZE]-> (create) -[:STATE]-> (unvalidated:State)
	(userRight) -[:AUTHORIZE]-> (create) -[:STATE]-> (accessed:State)
	(userRight) -[:AUTHORIZE]-> (create) -[:STATE]-> (used:State)
	(userRight) -[:AUTHORIZE]-> (create) -[:STATE]-> (updated:State)
	(userRight) -[:AUTHORIZE]-> (create) -[:STATE]-> (expireded:State)
	(userRight) -[:AUTHORIZE]-> (create) -[:STATE]-> (integrityFalse:State)

	(userRight) -[:AUTHORIZE]-> (access) -[:STATE]-> (todo)
	(userRight) -[:AUTHORIZE]-> (access) -[:STATE]-> (created:State)
	(userRight) -[:AUTHORIZE]-> (access) -[:STATE]-> (published:State)
	(userRight) -[:AUTHORIZE]-> (access) -[:STATE]-> (fixed:State)
	(userRight) -[:AUTHORIZE]-> (access) -[:STATE]-> (tested:State)
	(userRight) -[:AUTHORIZE]-> (access) -[:STATE]-> (validated:State)
	(userRight) -[:AUTHORIZE]-> (access) -[:STATE]-> (unvalidated:State)
	(userRight) -[:AUTHORIZE]-> (access) -[:STATE]-> (accessed:State)
	(userRight) -[:AUTHORIZE]-> (access) -[:STATE]-> (used:State)
	(userRight) -[:AUTHORIZE]-> (access) -[:STATE]-> (updated:State)
	(userRight) -[:AUTHORIZE]-> (access) -[:STATE]-> (expireded:State)
	(userRight) -[:AUTHORIZE]-> (access) -[:STATE]-> (integrityFalse:State)

	(userRight) -[:AUTHORIZE]-> (update) -[:STATE]-> (todo)
	(userRight) -[:AUTHORIZE]-> (update) -[:STATE]-> (created:State)
	(userRight) -[:AUTHORIZE]-> (update) -[:STATE]-> (published:State)
	(userRight) -[:AUTHORIZE]-> (update) -[:STATE]-> (fixed:State)
	(userRight) -[:AUTHORIZE]-> (update) -[:STATE]-> (tested:State)
	(userRight) -[:AUTHORIZE]-> (update) -[:STATE]-> (validated:State)
	(userRight) -[:AUTHORIZE]-> (update) -[:STATE]-> (unvalidated:State)
	(userRight) -[:AUTHORIZE]-> (update) -[:STATE]-> (accessed:State)
	(userRight) -[:AUTHORIZE]-> (update) -[:STATE]-> (used:State)
	(userRight) -[:AUTHORIZE]-> (update) -[:STATE]-> (updated:State)
	(userRight) -[:AUTHORIZE]-> (update) -[:STATE]-> (expireded:State)
	(userRight) -[:AUTHORIZE]-> (update) -[:STATE]-> (integrityFalse:State)

	(userRight) -[:AUTHORIZE]-> (change) -[:STATE]-> (todo)
	(userRight) -[:AUTHORIZE]-> (change) -[:STATE]-> (created:State)
	(userRight) -[:AUTHORIZE]-> (change) -[:STATE]-> (published:State)
	(userRight) -[:AUTHORIZE]-> (change) -[:STATE]-> (fixed:State)
	(userRight) -[:AUTHORIZE]-> (change) -[:STATE]-> (tested:State)
	(userRight) -[:AUTHORIZE]-> (change) -[:STATE]-> (validated:State)
	(userRight) -[:AUTHORIZE]-> (change) -[:STATE]-> (unvalidated:State)
	(userRight) -[:AUTHORIZE]-> (change) -[:STATE]-> (accessed:State)
	(userRight) -[:AUTHORIZE]-> (change) -[:STATE]-> (used:State)
	(userRight) -[:AUTHORIZE]-> (change) -[:STATE]-> (updated:State)
	(userRight) -[:AUTHORIZE]-> (change) -[:STATE]-> (expireded:State)
	(userRight) -[:AUTHORIZE]-> (change) -[:STATE]-> (integrityFalse:State)

	(userRight) -[:AUTHORIZE]-> (use) -[:STATE]-> (todo)
	(userRight) -[:AUTHORIZE]-> (use) -[:STATE]-> (created:State)
	(userRight) -[:AUTHORIZE]-> (use) -[:STATE]-> (published:State)
	(userRight) -[:AUTHORIZE]-> (use) -[:STATE]-> (fixed:State)
	(userRight) -[:AUTHORIZE]-> (use) -[:STATE]-> (tested:State)
	(userRight) -[:AUTHORIZE]-> (use) -[:STATE]-> (validated:State)
	(userRight) -[:AUTHORIZE]-> (use) -[:STATE]-> (unvalidated:State)
	(userRight) -[:AUTHORIZE]-> (use) -[:STATE]-> (accessed:State)
	(userRight) -[:AUTHORIZE]-> (use) -[:STATE]-> (used:State)
	(userRight) -[:AUTHORIZE]-> (use) -[:STATE]-> (updated:State)
	(userRight) -[:AUTHORIZE]-> (use) -[:STATE]-> (expireded:State)
	(userRight) -[:AUTHORIZE]-> (use) -[:STATE]-> (integrityFalse:State)

	(userRight) -[:AUTHORIZE]-> (test) -[:STATE]-> (todo)
	(userRight) -[:AUTHORIZE]-> (test) -[:STATE]-> (created:State)
	(userRight) -[:AUTHORIZE]-> (test) -[:STATE]-> (published:State)
	(userRight) -[:AUTHORIZE]-> (test) -[:STATE]-> (fixed:State)
	(userRight) -[:AUTHORIZE]-> (test) -[:STATE]-> (tested:State)
	(userRight) -[:AUTHORIZE]-> (test) -[:STATE]-> (validated:State)
	(userRight) -[:AUTHORIZE]-> (test) -[:STATE]-> (unvalidated:State)
	(userRight) -[:AUTHORIZE]-> (test) -[:STATE]-> (accessed:State)
	(userRight) -[:AUTHORIZE]-> (test) -[:STATE]-> (used:State)
	(userRight) -[:AUTHORIZE]-> (test) -[:STATE]-> (updated:State)
	(userRight) -[:AUTHORIZE]-> (test) -[:STATE]-> (expireded:State)
	(userRight) -[:AUTHORIZE]-> (test) -[:STATE]-> (integrityFalse:State)

	(userRight) -[:AUTHORIZE]-> (valid) -[:STATE]-> (todo)
	(userRight) -[:AUTHORIZE]-> (valid) -[:STATE]-> (created:State)
	(userRight) -[:AUTHORIZE]-> (valid) -[:STATE]-> (published:State)
	(userRight) -[:AUTHORIZE]-> (valid) -[:STATE]-> (fixed:State)
	(userRight) -[:AUTHORIZE]-> (valid) -[:STATE]-> (tested:State)
	(userRight) -[:AUTHORIZE]-> (valid) -[:STATE]-> (validated:State)
	(userRight) -[:AUTHORIZE]-> (valid) -[:STATE]-> (unvalidated:State)
	(userRight) -[:AUTHORIZE]-> (valid) -[:STATE]-> (accessed:State)
	(userRight) -[:AUTHORIZE]-> (valid) -[:STATE]-> (used:State)
	(userRight) -[:AUTHORIZE]-> (valid) -[:STATE]-> (updated:State)
	(userRight) -[:AUTHORIZE]-> (valid) -[:STATE]-> (expireded:State)
	(userRight) -[:AUTHORIZE]-> (valid) -[:STATE]-> (integrityFalse:State)

	(userRight) -[:AUTHORIZE]-> (host) -[:STATE]-> (todo)
	(userRight) -[:AUTHORIZE]-> (host) -[:STATE]-> (created:State)
	(userRight) -[:AUTHORIZE]-> (host) -[:STATE]-> (published:State)
	(userRight) -[:AUTHORIZE]-> (host) -[:STATE]-> (fixed:State)
	(userRight) -[:AUTHORIZE]-> (host) -[:STATE]-> (tested:State)
	(userRight) -[:AUTHORIZE]-> (host) -[:STATE]-> (validated:State)
	(userRight) -[:AUTHORIZE]-> (host) -[:STATE]-> (unvalidated:State)
	(userRight) -[:AUTHORIZE]-> (host) -[:STATE]-> (accessed:State)
	(userRight) -[:AUTHORIZE]-> (host) -[:STATE]-> (used:State)
	(userRight) -[:AUTHORIZE]-> (host) -[:STATE]-> (updated:State)
	(userRight) -[:AUTHORIZE]-> (host) -[:STATE]-> (expireded:State)
	(userRight) -[:AUTHORIZE]-> (host) -[:STATE]-> (integrityFalse:State)

	(userRight) -[:AUTHORIZE]-> (manage) -[:STATE]-> (todo)
	(userRight) -[:AUTHORIZE]-> (manage) -[:STATE]-> (created:State)
	(userRight) -[:AUTHORIZE]-> (manage) -[:STATE]-> (published:State)
	(userRight) -[:AUTHORIZE]-> (manage) -[:STATE]-> (fixed:State)
	(userRight) -[:AUTHORIZE]-> (manage) -[:STATE]-> (tested:State)
	(userRight) -[:AUTHORIZE]-> (manage) -[:STATE]-> (validated:State)
	(userRight) -[:AUTHORIZE]-> (manage) -[:STATE]-> (unvalidated:State)
	(userRight) -[:AUTHORIZE]-> (manage) -[:STATE]-> (accessed:State)
	(userRight) -[:AUTHORIZE]-> (manage) -[:STATE]-> (used:State)
	(userRight) -[:AUTHORIZE]-> (manage) -[:STATE]-> (updated:State)
	(userRight) -[:AUTHORIZE]-> (manage) -[:STATE]-> (expireded:State)
	(userRight) -[:AUTHORIZE]-> (manage) -[:STATE]-> (integrityFalse:State)

	(userRight) -[:AUTHORIZE]-> (target) -[:STATE]-> (todo)
	(userRight) -[:AUTHORIZE]-> (target) -[:STATE]-> (created:State)
	(userRight) -[:AUTHORIZE]-> (target) -[:STATE]-> (published:State)
	(userRight) -[:AUTHORIZE]-> (target) -[:STATE]-> (fixed:State)
	(userRight) -[:AUTHORIZE]-> (target) -[:STATE]-> (tested:State)
	(userRight) -[:AUTHORIZE]-> (target) -[:STATE]-> (validated:State)
	(userRight) -[:AUTHORIZE]-> (target) -[:STATE]-> (unvalidated:State)
	(userRight) -[:AUTHORIZE]-> (target) -[:STATE]-> (accessed:State)
	(userRight) -[:AUTHORIZE]-> (target) -[:STATE]-> (used:State)
	(userRight) -[:AUTHORIZE]-> (target) -[:STATE]-> (updated:State)
	(userRight) -[:AUTHORIZE]-> (target) -[:STATE]-> (expireded:State)
	(userRight) -[:AUTHORIZE]-> (target) -[:STATE]-> (integrityFalse:State)

	(userRight) -[:AUTHORIZE]-> (represente) -[:STATE]-> (todo)
	(userRight) -[:AUTHORIZE]-> (represente) -[:STATE]-> (created:State)
	(userRight) -[:AUTHORIZE]-> (represente) -[:STATE]-> (published:State)
	(userRight) -[:AUTHORIZE]-> (represente) -[:STATE]-> (fixed:State)
	(userRight) -[:AUTHORIZE]-> (represente) -[:STATE]-> (tested:State)
	(userRight) -[:AUTHORIZE]-> (represente) -[:STATE]-> (validated:State)
	(userRight) -[:AUTHORIZE]-> (represente) -[:STATE]-> (unvalidated:State)
	(userRight) -[:AUTHORIZE]-> (represente) -[:STATE]-> (accessed:State)
	(userRight) -[:AUTHORIZE]-> (represente) -[:STATE]-> (used:State)
	(userRight) -[:AUTHORIZE]-> (represente) -[:STATE]-> (updated:State)
	(userRight) -[:AUTHORIZE]-> (represente) -[:STATE]-> (expireded:State)
	(userRight) -[:AUTHORIZE]-> (represente) -[:STATE]-> (integrityFalse:State)

	(userRight) -[:AUTHORIZE]-> (collect) -[:STATE]-> (todo)
	(userRight) -[:AUTHORIZE]-> (collect) -[:STATE]-> (created:State)
	(userRight) -[:AUTHORIZE]-> (collect) -[:STATE]-> (published:State)
	(userRight) -[:AUTHORIZE]-> (collect) -[:STATE]-> (fixed:State)
	(userRight) -[:AUTHORIZE]-> (collect) -[:STATE]-> (tested:State)
	(userRight) -[:AUTHORIZE]-> (collect) -[:STATE]-> (validated:State)
	(userRight) -[:AUTHORIZE]-> (collect) -[:STATE]-> (unvalidated:State)
	(userRight) -[:AUTHORIZE]-> (collect) -[:STATE]-> (accessed:State)
	(userRight) -[:AUTHORIZE]-> (collect) -[:STATE]-> (used:State)
	(userRight) -[:AUTHORIZE]-> (collect) -[:STATE]-> (updated:State)
	(userRight) -[:AUTHORIZE]-> (collect) -[:STATE]-> (expireded:State)
	(userRight) -[:AUTHORIZE]-> (collect) -[:STATE]-> (integrityFalse:State)

	(userRight) -[:AUTHORIZE]-> (authorize) -[:STATE]-> (todo)
	(userRight) -[:AUTHORIZE]-> (authorize) -[:STATE]-> (created:State)
	(userRight) -[:AUTHORIZE]-> (authorize) -[:STATE]-> (published:State)
	(userRight) -[:AUTHORIZE]-> (authorize) -[:STATE]-> (fixed:State)
	(userRight) -[:AUTHORIZE]-> (authorize) -[:STATE]-> (tested:State)
	(userRight) -[:AUTHORIZE]-> (authorize) -[:STATE]-> (validated:State)
	(userRight) -[:AUTHORIZE]-> (authorize) -[:STATE]-> (unvalidated:State)
	(userRight) -[:AUTHORIZE]-> (authorize) -[:STATE]-> (accessed:State)
	(userRight) -[:AUTHORIZE]-> (authorize) -[:STATE]-> (used:State)
	(userRight) -[:AUTHORIZE]-> (authorize) -[:STATE]-> (updated:State)
	(userRight) -[:AUTHORIZE]-> (authorize) -[:STATE]-> (expireded:State)
	(userRight) -[:AUTHORIZE]-> (authorize) -[:STATE]-> (integrityFalse:State)

	(userRight) -[:AUTHORIZE]-> (access) -[:STATE]-> (todo)
	(userRight) -[:AUTHORIZE]-> (access) -[:STATE]-> (created:State)
	(userRight) -[:AUTHORIZE]-> (access) -[:STATE]-> (published:State)
	(userRight) -[:AUTHORIZE]-> (access) -[:STATE]-> (fixed:State)
	(userRight) -[:AUTHORIZE]-> (access) -[:STATE]-> (tested:State)
	(userRight) -[:AUTHORIZE]-> (access) -[:STATE]-> (validated:State)
	(userRight) -[:AUTHORIZE]-> (access) -[:STATE]-> (unvalidated:State)
	(userRight) -[:AUTHORIZE]-> (access) -[:STATE]-> (accessed:State)
	(userRight) -[:AUTHORIZE]-> (access) -[:STATE]-> (used:State)
	(userRight) -[:AUTHORIZE]-> (access) -[:STATE]-> (updated:State)
	(userRight) -[:AUTHORIZE]-> (access) -[:STATE]-> (expireded:State)
	(userRight) -[:AUTHORIZE]-> (access) -[:STATE]-> (integrityFalse:State)

	(userRight) -[:AUTHORIZE]-> (update) -[:STATE]-> (todo)
	(userRight) -[:AUTHORIZE]-> (update) -[:STATE]-> (created:State)
	(userRight) -[:AUTHORIZE]-> (update) -[:STATE]-> (published:State)
	(userRight) -[:AUTHORIZE]-> (update) -[:STATE]-> (fixed:State)
	(userRight) -[:AUTHORIZE]-> (update) -[:STATE]-> (tested:State)
	(userRight) -[:AUTHORIZE]-> (update) -[:STATE]-> (validated:State)
	(userRight) -[:AUTHORIZE]-> (update) -[:STATE]-> (unvalidated:State)
	(userRight) -[:AUTHORIZE]-> (update) -[:STATE]-> (accessed:State)
	(userRight) -[:AUTHORIZE]-> (update) -[:STATE]-> (used:State)
	(userRight) -[:AUTHORIZE]-> (update) -[:STATE]-> (updated:State)
	(userRight) -[:AUTHORIZE]-> (update) -[:STATE]-> (expireded:State)
	(userRight) -[:AUTHORIZE]-> (update) -[:STATE]-> (integrityFalse:State)

	(userRight) -[:AUTHORIZE]-> (execute) -[:STATE]-> (todo)
	(userRight) -[:AUTHORIZE]-> (execute) -[:STATE]-> (created:State)
	(userRight) -[:AUTHORIZE]-> (execute) -[:STATE]-> (published:State)
	(userRight) -[:AUTHORIZE]-> (execute) -[:STATE]-> (fixed:State)
	(userRight) -[:AUTHORIZE]-> (execute) -[:STATE]-> (tested:State)
	(userRight) -[:AUTHORIZE]-> (execute) -[:STATE]-> (validated:State)
	(userRight) -[:AUTHORIZE]-> (execute) -[:STATE]-> (unvalidated:State)
	(userRight) -[:AUTHORIZE]-> (execute) -[:STATE]-> (accessed:State)
	(userRight) -[:AUTHORIZE]-> (execute) -[:STATE]-> (used:State)
	(userRight) -[:AUTHORIZE]-> (execute) -[:STATE]-> (updated:State)
	(userRight) -[:AUTHORIZE]-> (execute) -[:STATE]-> (expireded:State)
	(userRight) -[:AUTHORIZE]-> (execute) -[:STATE]-> (integrityFalse:State)

	(userRight) -[:AUTHORIZE]-> (change) -[:STATE]-> (todo)
	(userRight) -[:AUTHORIZE]-> (change) -[:STATE]-> (created:State)
	(userRight) -[:AUTHORIZE]-> (change) -[:STATE]-> (published:State)
	(userRight) -[:AUTHORIZE]-> (change) -[:STATE]-> (fixed:State)
	(userRight) -[:AUTHORIZE]-> (change) -[:STATE]-> (tested:State)
	(userRight) -[:AUTHORIZE]-> (change) -[:STATE]-> (validated:State)
	(userRight) -[:AUTHORIZE]-> (change) -[:STATE]-> (unvalidated:State)
	(userRight) -[:AUTHORIZE]-> (change) -[:STATE]-> (accessed:State)
	(userRight) -[:AUTHORIZE]-> (change) -[:STATE]-> (used:State)
	(userRight) -[:AUTHORIZE]-> (change) -[:STATE]-> (updated:State)
	(userRight) -[:AUTHORIZE]-> (change) -[:STATE]-> (expireded:State)
	(userRight) -[:AUTHORIZE]-> (change) -[:STATE]-> (integrityFalse:State)

	(userRight) -[:AUTHORIZE]-> (optimize) -[:STATE]-> (todo)
	(userRight) -[:AUTHORIZE]-> (optimize) -[:STATE]-> (created:State)
	(userRight) -[:AUTHORIZE]-> (optimize) -[:STATE]-> (published:State)
	(userRight) -[:AUTHORIZE]-> (optimize) -[:STATE]-> (fixed:State)
	(userRight) -[:AUTHORIZE]-> (optimize) -[:STATE]-> (tested:State)
	(userRight) -[:AUTHORIZE]-> (optimize) -[:STATE]-> (validated:State)
	(userRight) -[:AUTHORIZE]-> (optimize) -[:STATE]-> (unvalidated:State)
	(userRight) -[:AUTHORIZE]-> (optimize) -[:STATE]-> (accessed:State)
	(userRight) -[:AUTHORIZE]-> (optimize) -[:STATE]-> (used:State)
	(userRight) -[:AUTHORIZE]-> (optimize) -[:STATE]-> (updated:State)
	(userRight) -[:AUTHORIZE]-> (optimize) -[:STATE]-> (expireded:State)
	(userRight) -[:AUTHORIZE]-> (optimize) -[:STATE]-> (integrityFalse:State)

	(userRight) -[:AUTHORIZE]-> (init) -[:STATE]-> (todo)
	(userRight) -[:AUTHORIZE]-> (init) -[:STATE]-> (created:State)
	(userRight) -[:AUTHORIZE]-> (init) -[:STATE]-> (published:State)
	(userRight) -[:AUTHORIZE]-> (init) -[:STATE]-> (fixed:State)
	(userRight) -[:AUTHORIZE]-> (init) -[:STATE]-> (tested:State)
	(userRight) -[:AUTHORIZE]-> (init) -[:STATE]-> (validated:State)
	(userRight) -[:AUTHORIZE]-> (init) -[:STATE]-> (unvalidated:State)
	(userRight) -[:AUTHORIZE]-> (init) -[:STATE]-> (accessed:State)
	(userRight) -[:AUTHORIZE]-> (init) -[:STATE]-> (used:State)
	(userRight) -[:AUTHORIZE]-> (init) -[:STATE]-> (updated:State)
	(userRight) -[:AUTHORIZE]-> (init) -[:STATE]-> (expireded:State)
	(userRight) -[:AUTHORIZE]-> (init) -[:STATE]-> (integrityFalse:State)

	(userRight) -[:AUTHORIZE]-> (own) -[:STATE]-> (todo)
	(userRight) -[:AUTHORIZE]-> (own) -[:STATE]-> (created:State)
	(userRight) -[:AUTHORIZE]-> (own) -[:STATE]-> (published:State)
	(userRight) -[:AUTHORIZE]-> (own) -[:STATE]-> (fixed:State)
	(userRight) -[:AUTHORIZE]-> (own) -[:STATE]-> (tested:State)
	(userRight) -[:AUTHORIZE]-> (own) -[:STATE]-> (validated:State)
	(userRight) -[:AUTHORIZE]-> (own) -[:STATE]-> (unvalidated:State)
	(userRight) -[:AUTHORIZE]-> (own) -[:STATE]-> (accessed:State)
	(userRight) -[:AUTHORIZE]-> (own) -[:STATE]-> (used:State)
	(userRight) -[:AUTHORIZE]-> (own) -[:STATE]-> (updated:State)
	(userRight) -[:AUTHORIZE]-> (own) -[:STATE]-> (expireded:State)
	(userRight) -[:AUTHORIZE]-> (own) -[:STATE]-> (integrityFalse:State)

	(userRight) -[:AUTHORIZE]-> (identify) -[:STATE]-> (todo)
	(userRight) -[:AUTHORIZE]-> (identify) -[:STATE]-> (created:State)
	(userRight) -[:AUTHORIZE]-> (identify) -[:STATE]-> (published:State)
	(userRight) -[:AUTHORIZE]-> (identify) -[:STATE]-> (fixed:State)
	(userRight) -[:AUTHORIZE]-> (identify) -[:STATE]-> (tested:State)
	(userRight) -[:AUTHORIZE]-> (identify) -[:STATE]-> (validated:State)
	(userRight) -[:AUTHORIZE]-> (identify) -[:STATE]-> (unvalidated:State)
	(userRight) -[:AUTHORIZE]-> (identify) -[:STATE]-> (accessed:State)
	(userRight) -[:AUTHORIZE]-> (identify) -[:STATE]-> (used:State)
	(userRight) -[:AUTHORIZE]-> (identify) -[:STATE]-> (updated:State)
	(userRight) -[:AUTHORIZE]-> (identify) -[:STATE]-> (expireded:State)
	(userRight) -[:AUTHORIZE]-> (identify) -[:STATE]-> (integrityFalse:State)

	(userRight) -[:AUTHORIZE]-> (MARK) -[:STATE]-> (todo)
	(userRight) -[:AUTHORIZE]-> (MARK) -[:STATE]-> (created:State)
	(userRight) -[:AUTHORIZE]-> (MARK) -[:STATE]-> (published:State)
	(userRight) -[:AUTHORIZE]-> (MARK) -[:STATE]-> (fixed:State)
	(userRight) -[:AUTHORIZE]-> (MARK) -[:STATE]-> (tested:State)
	(userRight) -[:AUTHORIZE]-> (MARK) -[:STATE]-> (validated:State)
	(userRight) -[:AUTHORIZE]-> (MARK) -[:STATE]-> (unvalidated:State)
	(userRight) -[:AUTHORIZE]-> (MARK) -[:STATE]-> (accessed:State)
	(userRight) -[:AUTHORIZE]-> (MARK) -[:STATE]-> (used:State)
	(userRight) -[:AUTHORIZE]-> (MARK) -[:STATE]-> (updated:State)
	(userRight) -[:AUTHORIZE]-> (MARK) -[:STATE]-> (expireded:State)
	(userRight) -[:AUTHORIZE]-> (MARK) -[:STATE]-> (integrityFalse:State)

	(userRight) -[:AUTHORIZE]-> (expire) -[:STATE]-> (todo)
	(userRight) -[:AUTHORIZE]-> (expire) -[:STATE]-> (created:State)
	(userRight) -[:AUTHORIZE]-> (expire) -[:STATE]-> (published:State)
	(userRight) -[:AUTHORIZE]-> (expire) -[:STATE]-> (fixed:State)
	(userRight) -[:AUTHORIZE]-> (expire) -[:STATE]-> (tested:State)
	(userRight) -[:AUTHORIZE]-> (expire) -[:STATE]-> (validated:State)
	(userRight) -[:AUTHORIZE]-> (expire) -[:STATE]-> (unvalidated:State)
	(userRight) -[:AUTHORIZE]-> (expire) -[:STATE]-> (accessed:State)
	(userRight) -[:AUTHORIZE]-> (expire) -[:STATE]-> (used:State)
	(userRight) -[:AUTHORIZE]-> (expire) -[:STATE]-> (updated:State)
	(userRight) -[:AUTHORIZE]-> (expire) -[:STATE]-> (expireded:State)
	(userRight) -[:AUTHORIZE]-> (expire) -[:STATE]-> (integrityFalse:State)

	(userRight) -[:AUTHORIZE]-> (localize) -[:STATE]-> (todo)
	(userRight) -[:AUTHORIZE]-> (localize) -[:STATE]-> (created:State)
	(userRight) -[:AUTHORIZE]-> (localize) -[:STATE]-> (published:State)
	(userRight) -[:AUTHORIZE]-> (localize) -[:STATE]-> (fixed:State)
	(userRight) -[:AUTHORIZE]-> (localize) -[:STATE]-> (tested:State)
	(userRight) -[:AUTHORIZE]-> (localize) -[:STATE]-> (validated:State)
	(userRight) -[:AUTHORIZE]-> (localize) -[:STATE]-> (unvalidated:State)
	(userRight) -[:AUTHORIZE]-> (localize) -[:STATE]-> (accessed:State)
	(userRight) -[:AUTHORIZE]-> (localize) -[:STATE]-> (used:State)
	(userRight) -[:AUTHORIZE]-> (localize) -[:STATE]-> (updated:State)
	(userRight) -[:AUTHORIZE]-> (localize) -[:STATE]-> (expireded:State)
	(userRight) -[:AUTHORIZE]-> (localize) -[:STATE]-> (integrityFalse:State)

	(userRight) -[:AUTHORIZE]-> (show) -[:STATE]-> (todo)
	(userRight) -[:AUTHORIZE]-> (show) -[:STATE]-> (created:State)
	(userRight) -[:AUTHORIZE]-> (show) -[:STATE]-> (published:State)
	(userRight) -[:AUTHORIZE]-> (show) -[:STATE]-> (fixed:State)
	(userRight) -[:AUTHORIZE]-> (show) -[:STATE]-> (tested:State)
	(userRight) -[:AUTHORIZE]-> (show) -[:STATE]-> (validated:State)
	(userRight) -[:AUTHORIZE]-> (show) -[:STATE]-> (unvalidated:State)
	(userRight) -[:AUTHORIZE]-> (show) -[:STATE]-> (accessed:State)
	(userRight) -[:AUTHORIZE]-> (show) -[:STATE]-> (used:State)
	(userRight) -[:AUTHORIZE]-> (show) -[:STATE]-> (updated:State)
	(userRight) -[:AUTHORIZE]-> (show) -[:STATE]-> (expireded:State)
	(userRight) -[:AUTHORIZE]-> (show) -[:STATE]-> (integrityFalse:State)

	(userRight) -[:AUTHORIZE]-> (size) -[:STATE]-> (todo)
	(userRight) -[:AUTHORIZE]-> (size) -[:STATE]-> (created:State)
	(userRight) -[:AUTHORIZE]-> (size) -[:STATE]-> (published:State)
	(userRight) -[:AUTHORIZE]-> (size) -[:STATE]-> (fixed:State)
	(userRight) -[:AUTHORIZE]-> (size) -[:STATE]-> (tested:State)
	(userRight) -[:AUTHORIZE]-> (size) -[:STATE]-> (validated:State)
	(userRight) -[:AUTHORIZE]-> (size) -[:STATE]-> (unvalidated:State)
	(userRight) -[:AUTHORIZE]-> (size) -[:STATE]-> (accessed:State)
	(userRight) -[:AUTHORIZE]-> (size) -[:STATE]-> (used:State)
	(userRight) -[:AUTHORIZE]-> (size) -[:STATE]-> (updated:State)
	(userRight) -[:AUTHORIZE]-> (size) -[:STATE]-> (expireded:State)
	(userRight) -[:AUTHORIZE]-> (size) -[:STATE]-> (integrityFalse:State)

	(userRight) -[:AUTHORIZE]-> (historize) -[:STATE]-> (todo)
	(userRight) -[:AUTHORIZE]-> (historize) -[:STATE]-> (created:State)
	(userRight) -[:AUTHORIZE]-> (historize) -[:STATE]-> (published:State)
	(userRight) -[:AUTHORIZE]-> (historize) -[:STATE]-> (fixed:State)
	(userRight) -[:AUTHORIZE]-> (historize) -[:STATE]-> (tested:State)
	(userRight) -[:AUTHORIZE]-> (historize) -[:STATE]-> (validated:State)
	(userRight) -[:AUTHORIZE]-> (historize) -[:STATE]-> (unvalidated:State)
	(userRight) -[:AUTHORIZE]-> (historize) -[:STATE]-> (accessed:State)
	(userRight) -[:AUTHORIZE]-> (historize) -[:STATE]-> (used:State)
	(userRight) -[:AUTHORIZE]-> (historize) -[:STATE]-> (updated:State)
	(userRight) -[:AUTHORIZE]-> (historize) -[:STATE]-> (expireded:State)
	(userRight) -[:AUTHORIZE]-> (historize) -[:STATE]-> (integrityFalse:State)

	(userRight) -[:AUTHORIZE]-> (contributeTo) -[:STATE]-> (todo)
	(userRight) -[:AUTHORIZE]-> (contributeTo) -[:STATE]-> (created:State)
	(userRight) -[:AUTHORIZE]-> (contributeTo) -[:STATE]-> (published:State)
	(userRight) -[:AUTHORIZE]-> (contributeTo) -[:STATE]-> (fixed:State)
	(userRight) -[:AUTHORIZE]-> (contributeTo) -[:STATE]-> (tested:State)
	(userRight) -[:AUTHORIZE]-> (contributeTo) -[:STATE]-> (validated:State)
	(userRight) -[:AUTHORIZE]-> (contributeTo) -[:STATE]-> (unvalidated:State)
	(userRight) -[:AUTHORIZE]-> (contributeTo) -[:STATE]-> (accessed:State)
	(userRight) -[:AUTHORIZE]-> (contributeTo) -[:STATE]-> (used:State)
	(userRight) -[:AUTHORIZE]-> (contributeTo) -[:STATE]-> (updated:State)
	(userRight) -[:AUTHORIZE]-> (contributeTo) -[:STATE]-> (expireded:State)
	(userRight) -[:AUTHORIZE]-> (contributeTo) -[:STATE]-> (integrityFalse:State)

	(userRight) -[:AUTHORIZE]-> (concern) -[:STATE]-> (todo)
	(userRight) -[:AUTHORIZE]-> (concern) -[:STATE]-> (created:State)
	(userRight) -[:AUTHORIZE]-> (concern) -[:STATE]-> (published:State)
	(userRight) -[:AUTHORIZE]-> (concern) -[:STATE]-> (fixed:State)
	(userRight) -[:AUTHORIZE]-> (concern) -[:STATE]-> (tested:State)
	(userRight) -[:AUTHORIZE]-> (concern) -[:STATE]-> (validated:State)
	(userRight) -[:AUTHORIZE]-> (concern) -[:STATE]-> (unvalidated:State)
	(userRight) -[:AUTHORIZE]-> (concern) -[:STATE]-> (accessed:State)
	(userRight) -[:AUTHORIZE]-> (concern) -[:STATE]-> (used:State)
	(userRight) -[:AUTHORIZE]-> (concern) -[:STATE]-> (updated:State)
	(userRight) -[:AUTHORIZE]-> (concern) -[:STATE]-> (expireded:State)
	(userRight) -[:AUTHORIZE]-> (concern) -[:STATE]-> (integrityFalse:State)

	(userRight) -[:AUTHORIZE]-> (cost) -[:STATE]-> (todo)
	(userRight) -[:AUTHORIZE]-> (cost) -[:STATE]-> (created:State)
	(userRight) -[:AUTHORIZE]-> (cost) -[:STATE]-> (published:State)
	(userRight) -[:AUTHORIZE]-> (cost) -[:STATE]-> (fixed:State)
	(userRight) -[:AUTHORIZE]-> (cost) -[:STATE]-> (tested:State)
	(userRight) -[:AUTHORIZE]-> (cost) -[:STATE]-> (validated:State)
	(userRight) -[:AUTHORIZE]-> (cost) -[:STATE]-> (unvalidated:State)
	(userRight) -[:AUTHORIZE]-> (cost) -[:STATE]-> (accessed:State)
	(userRight) -[:AUTHORIZE]-> (cost) -[:STATE]-> (used:State)
	(userRight) -[:AUTHORIZE]-> (cost) -[:STATE]-> (updated:State)
	(userRight) -[:AUTHORIZE]-> (cost) -[:STATE]-> (expireded:State)
	(userRight) -[:AUTHORIZE]-> (cost) -[:STATE]-> (integrityFalse:State)

	(userRight) -[:AUTHORIZE]-> (stock) -[:STATE]-> (todo)
	(userRight) -[:AUTHORIZE]-> (stock) -[:STATE]-> (created:State)
	(userRight) -[:AUTHORIZE]-> (stock) -[:STATE]-> (published:State)
	(userRight) -[:AUTHORIZE]-> (stock) -[:STATE]-> (fixed:State)
	(userRight) -[:AUTHORIZE]-> (stock) -[:STATE]-> (tested:State)
	(userRight) -[:AUTHORIZE]-> (stock) -[:STATE]-> (validated:State)
	(userRight) -[:AUTHORIZE]-> (stock) -[:STATE]-> (unvalidated:State)
	(userRight) -[:AUTHORIZE]-> (stock) -[:STATE]-> (accessed:State)
	(userRight) -[:AUTHORIZE]-> (stock) -[:STATE]-> (used:State)
	(userRight) -[:AUTHORIZE]-> (stock) -[:STATE]-> (updated:State)
	(userRight) -[:AUTHORIZE]-> (stock) -[:STATE]-> (expireded:State)
	(userRight) -[:AUTHORIZE]-> (stock) -[:STATE]-> (integrityFalse:State)

	(userRight) -[:AUTHORIZE]-> (shipp) -[:STATE]-> (todo)
	(userRight) -[:AUTHORIZE]-> (shipp) -[:STATE]-> (created:State)
	(userRight) -[:AUTHORIZE]-> (shipp) -[:STATE]-> (published:State)
	(userRight) -[:AUTHORIZE]-> (shipp) -[:STATE]-> (fixed:State)
	(userRight) -[:AUTHORIZE]-> (shipp) -[:STATE]-> (tested:State)
	(userRight) -[:AUTHORIZE]-> (shipp) -[:STATE]-> (validated:State)
	(userRight) -[:AUTHORIZE]-> (shipp) -[:STATE]-> (unvalidated:State)
	(userRight) -[:AUTHORIZE]-> (shipp) -[:STATE]-> (accessed:State)
	(userRight) -[:AUTHORIZE]-> (shipp) -[:STATE]-> (used:State)
	(userRight) -[:AUTHORIZE]-> (shipp) -[:STATE]-> (updated:State)
	(userRight) -[:AUTHORIZE]-> (shipp) -[:STATE]-> (expireded:State)
	(userRight) -[:AUTHORIZE]-> (shipp) -[:STATE]-> (integrityFalse:State)

	(userRight) -[:AUTHORIZE]-> (order) -[:STATE]-> (todo)
	(userRight) -[:AUTHORIZE]-> (order) -[:STATE]-> (created:State)
	(userRight) -[:AUTHORIZE]-> (order) -[:STATE]-> (published:State)
	(userRight) -[:AUTHORIZE]-> (order) -[:STATE]-> (fixed:State)
	(userRight) -[:AUTHORIZE]-> (order) -[:STATE]-> (tested:State)
	(userRight) -[:AUTHORIZE]-> (order) -[:STATE]-> (validated:State)
	(userRight) -[:AUTHORIZE]-> (order) -[:STATE]-> (unvalidated:State)
	(userRight) -[:AUTHORIZE]-> (order) -[:STATE]-> (accessed:State)
	(userRight) -[:AUTHORIZE]-> (order) -[:STATE]-> (used:State)
	(userRight) -[:AUTHORIZE]-> (order) -[:STATE]-> (updated:State)
	(userRight) -[:AUTHORIZE]-> (order) -[:STATE]-> (expireded:State)
	(userRight) -[:AUTHORIZE]-> (order) -[:STATE]-> (integrityFalse:State)

	(userRight) -[:AUTHORIZE]-> (pay) -[:STATE]-> (todo)
	(userRight) -[:AUTHORIZE]-> (pay) -[:STATE]-> (created:State)
	(userRight) -[:AUTHORIZE]-> (pay) -[:STATE]-> (published:State)
	(userRight) -[:AUTHORIZE]-> (pay) -[:STATE]-> (fixed:State)
	(userRight) -[:AUTHORIZE]-> (pay) -[:STATE]-> (tested:State)
	(userRight) -[:AUTHORIZE]-> (pay) -[:STATE]-> (validated:State)
	(userRight) -[:AUTHORIZE]-> (pay) -[:STATE]-> (unvalidated:State)
	(userRight) -[:AUTHORIZE]-> (pay) -[:STATE]-> (accessed:State)
	(userRight) -[:AUTHORIZE]-> (pay) -[:STATE]-> (used:State)
	(userRight) -[:AUTHORIZE]-> (pay) -[:STATE]-> (updated:State)
	(userRight) -[:AUTHORIZE]-> (pay) -[:STATE]-> (expireded:State)
	(userRight) -[:AUTHORIZE]-> (pay) -[:STATE]-> (integrityFalse:State)

	(userRight) -[:AUTHORIZE]-> (billing) -[:STATE]-> (todo)
	(userRight) -[:AUTHORIZE]-> (billing) -[:STATE]-> (created:State)
	(userRight) -[:AUTHORIZE]-> (billing) -[:STATE]-> (published:State)
	(userRight) -[:AUTHORIZE]-> (billing) -[:STATE]-> (fixed:State)
	(userRight) -[:AUTHORIZE]-> (billing) -[:STATE]-> (tested:State)
	(userRight) -[:AUTHORIZE]-> (billing) -[:STATE]-> (validated:State)
	(userRight) -[:AUTHORIZE]-> (billing) -[:STATE]-> (unvalidated:State)
	(userRight) -[:AUTHORIZE]-> (billing) -[:STATE]-> (accessed:State)
	(userRight) -[:AUTHORIZE]-> (billing) -[:STATE]-> (used:State)
	(userRight) -[:AUTHORIZE]-> (billing) -[:STATE]-> (updated:State)
	(userRight) -[:AUTHORIZE]-> (billing) -[:STATE]-> (expireded:State)
	(userRight) -[:AUTHORIZE]-> (billing) -[:STATE]-> (integrityFalse:State)

	(userRight) -[:AUTHORIZE]-> (expedite) -[:STATE]-> (todo)
	(userRight) -[:AUTHORIZE]-> (expedite) -[:STATE]-> (created:State)
	(userRight) -[:AUTHORIZE]-> (expedite) -[:STATE]-> (published:State)
	(userRight) -[:AUTHORIZE]-> (expedite) -[:STATE]-> (fixed:State)
	(userRight) -[:AUTHORIZE]-> (expedite) -[:STATE]-> (tested:State)
	(userRight) -[:AUTHORIZE]-> (expedite) -[:STATE]-> (validated:State)
	(userRight) -[:AUTHORIZE]-> (expedite) -[:STATE]-> (unvalidated:State)
	(userRight) -[:AUTHORIZE]-> (expedite) -[:STATE]-> (accessed:State)
	(userRight) -[:AUTHORIZE]-> (expedite) -[:STATE]-> (used:State)
	(userRight) -[:AUTHORIZE]-> (expedite) -[:STATE]-> (updated:State)
	(userRight) -[:AUTHORIZE]-> (expedite) -[:STATE]-> (expireded:State)
	(userRight) -[:AUTHORIZE]-> (expedite) -[:STATE]-> (integrityFalse:State)

	(userRight) -[:AUTHORIZE]-> (payBack) -[:STATE]-> (todo)
	(userRight) -[:AUTHORIZE]-> (payBack) -[:STATE]-> (created:State)
	(userRight) -[:AUTHORIZE]-> (payBack) -[:STATE]-> (published:State)
	(userRight) -[:AUTHORIZE]-> (payBack) -[:STATE]-> (fixed:State)
	(userRight) -[:AUTHORIZE]-> (payBack) -[:STATE]-> (tested:State)
	(userRight) -[:AUTHORIZE]-> (payBack) -[:STATE]-> (validated:State)
	(userRight) -[:AUTHORIZE]-> (payBack) -[:STATE]-> (unvalidated:State)
	(userRight) -[:AUTHORIZE]-> (payBack) -[:STATE]-> (accessed:State)
	(userRight) -[:AUTHORIZE]-> (payBack) -[:STATE]-> (used:State)
	(userRight) -[:AUTHORIZE]-> (payBack) -[:STATE]-> (updated:State)
	(userRight) -[:AUTHORIZE]-> (payBack) -[:STATE]-> (expireded:State)
	(userRight) -[:AUTHORIZE]-> (payBack) -[:STATE]-> (integrityFalse:State)

	(userRight) -[:AUTHORIZE]-> (shippManange) -[:STATE]-> (todo)
	(userRight) -[:AUTHORIZE]-> (shippManange) -[:STATE]-> (created:State)
	(userRight) -[:AUTHORIZE]-> (shippManange) -[:STATE]-> (published:State)
	(userRight) -[:AUTHORIZE]-> (shippManange) -[:STATE]-> (fixed:State)
	(userRight) -[:AUTHORIZE]-> (shippManange) -[:STATE]-> (tested:State)
	(userRight) -[:AUTHORIZE]-> (shippManange) -[:STATE]-> (validated:State)
	(userRight) -[:AUTHORIZE]-> (shippManange) -[:STATE]-> (unvalidated:State)
	(userRight) -[:AUTHORIZE]-> (shippManange) -[:STATE]-> (accessed:State)
	(userRight) -[:AUTHORIZE]-> (shippManange) -[:STATE]-> (used:State)
	(userRight) -[:AUTHORIZE]-> (shippManange) -[:STATE]-> (updated:State)
	(userRight) -[:AUTHORIZE]-> (shippManange) -[:STATE]-> (expireded:State)
	(userRight) -[:AUTHORIZE]-> (shippManange) -[:STATE]-> (integrityFalse:State)

	(userRight) -[:AUTHORIZE]-> (expediteManange) -[:STATE]-> (todo)
	(userRight) -[:AUTHORIZE]-> (expediteManange) -[:STATE]-> (created:State)
	(userRight) -[:AUTHORIZE]-> (expediteManange) -[:STATE]-> (published:State)
	(userRight) -[:AUTHORIZE]-> (expediteManange) -[:STATE]-> (fixed:State)
	(userRight) -[:AUTHORIZE]-> (expediteManange) -[:STATE]-> (tested:State)
	(userRight) -[:AUTHORIZE]-> (expediteManange) -[:STATE]-> (validated:State)
	(userRight) -[:AUTHORIZE]-> (expediteManange) -[:STATE]-> (unvalidated:State)
	(userRight) -[:AUTHORIZE]-> (expediteManange) -[:STATE]-> (accessed:State)
	(userRight) -[:AUTHORIZE]-> (expediteManange) -[:STATE]-> (used:State)
	(userRight) -[:AUTHORIZE]-> (expediteManange) -[:STATE]-> (updated:State)
	(userRight) -[:AUTHORIZE]-> (expediteManange) -[:STATE]-> (expireded:State)
	(userRight) -[:AUTHORIZE]-> (expediteManange) -[:STATE]-> (integrityFalse:State)

	(userRight) -[:AUTHORIZE]-> (payManange) -[:STATE]-> (todo)
	(userRight) -[:AUTHORIZE]-> (payManange) -[:STATE]-> (created:State)
	(userRight) -[:AUTHORIZE]-> (payManange) -[:STATE]-> (published:State)
	(userRight) -[:AUTHORIZE]-> (payManange) -[:STATE]-> (fixed:State)
	(userRight) -[:AUTHORIZE]-> (payManange) -[:STATE]-> (tested:State)
	(userRight) -[:AUTHORIZE]-> (payManange) -[:STATE]-> (validated:State)
	(userRight) -[:AUTHORIZE]-> (payManange) -[:STATE]-> (unvalidated:State)
	(userRight) -[:AUTHORIZE]-> (payManange) -[:STATE]-> (accessed:State)
	(userRight) -[:AUTHORIZE]-> (payManange) -[:STATE]-> (used:State)
	(userRight) -[:AUTHORIZE]-> (payManange) -[:STATE]-> (updated:State)
	(userRight) -[:AUTHORIZE]-> (payManange) -[:STATE]-> (expireded:State)
	(userRight) -[:AUTHORIZE]-> (payManange) -[:STATE]-> (integrityFalse:State)

	(userRight) -[:AUTHORIZE]-> (produce) -[:STATE]-> (todo)
	(userRight) -[:AUTHORIZE]-> (produce) -[:STATE]-> (created:State)
	(userRight) -[:AUTHORIZE]-> (produce) -[:STATE]-> (published:State)
	(userRight) -[:AUTHORIZE]-> (produce) -[:STATE]-> (fixed:State)
	(userRight) -[:AUTHORIZE]-> (produce) -[:STATE]-> (tested:State)
	(userRight) -[:AUTHORIZE]-> (produce) -[:STATE]-> (validated:State)
	(userRight) -[:AUTHORIZE]-> (produce) -[:STATE]-> (unvalidated:State)
	(userRight) -[:AUTHORIZE]-> (produce) -[:STATE]-> (accessed:State)
	(userRight) -[:AUTHORIZE]-> (produce) -[:STATE]-> (used:State)
	(userRight) -[:AUTHORIZE]-> (produce) -[:STATE]-> (updated:State)
	(userRight) -[:AUTHORIZE]-> (produce) -[:STATE]-> (expireded:State)
	(userRight) -[:AUTHORIZE]-> (produce) -[:STATE]-> (integrityFalse:State)

	(userRight) -[:AUTHORIZE]-> (ask) -[:STATE]-> (todo)
	(userRight) -[:AUTHORIZE]-> (ask) -[:STATE]-> (created:State)
	(userRight) -[:AUTHORIZE]-> (ask) -[:STATE]-> (published:State)
	(userRight) -[:AUTHORIZE]-> (ask) -[:STATE]-> (fixed:State)
	(userRight) -[:AUTHORIZE]-> (ask) -[:STATE]-> (tested:State)
	(userRight) -[:AUTHORIZE]-> (ask) -[:STATE]-> (validated:State)
	(userRight) -[:AUTHORIZE]-> (ask) -[:STATE]-> (unvalidated:State)
	(userRight) -[:AUTHORIZE]-> (ask) -[:STATE]-> (accessed:State)
	(userRight) -[:AUTHORIZE]-> (ask) -[:STATE]-> (used:State)
	(userRight) -[:AUTHORIZE]-> (ask) -[:STATE]-> (updated:State)
	(userRight) -[:AUTHORIZE]-> (ask) -[:STATE]-> (expireded:State)
	(userRight) -[:AUTHORIZE]-> (ask) -[:STATE]-> (integrityFalse:State)

	(userRight) -[:AUTHORIZE]-> (balance) -[:STATE]-> (todo)
	(userRight) -[:AUTHORIZE]-> (balance) -[:STATE]-> (created:State)
	(userRight) -[:AUTHORIZE]-> (balance) -[:STATE]-> (published:State)
	(userRight) -[:AUTHORIZE]-> (balance) -[:STATE]-> (fixed:State)
	(userRight) -[:AUTHORIZE]-> (balance) -[:STATE]-> (tested:State)
	(userRight) -[:AUTHORIZE]-> (balance) -[:STATE]-> (validated:State)
	(userRight) -[:AUTHORIZE]-> (balance) -[:STATE]-> (unvalidated:State)
	(userRight) -[:AUTHORIZE]-> (balance) -[:STATE]-> (accessed:State)
	(userRight) -[:AUTHORIZE]-> (balance) -[:STATE]-> (used:State)
	(userRight) -[:AUTHORIZE]-> (balance) -[:STATE]-> (updated:State)
	(userRight) -[:AUTHORIZE]-> (balance) -[:STATE]-> (expireded:State)
	(userRight) -[:AUTHORIZE]-> (balance) -[:STATE]-> (integrityFalse:State)

	(userRight) -[:AUTHORIZE]-> (state) -[:STATE]-> (todo)
	(userRight) -[:AUTHORIZE]-> (state) -[:STATE]-> (created:State)
	(userRight) -[:AUTHORIZE]-> (state) -[:STATE]-> (published:State)
	(userRight) -[:AUTHORIZE]-> (state) -[:STATE]-> (fixed:State)
	(userRight) -[:AUTHORIZE]-> (state) -[:STATE]-> (tested:State)
	(userRight) -[:AUTHORIZE]-> (state) -[:STATE]-> (validated:State)
	(userRight) -[:AUTHORIZE]-> (state) -[:STATE]-> (unvalidated:State)
	(userRight) -[:AUTHORIZE]-> (state) -[:STATE]-> (accessed:State)
	(userRight) -[:AUTHORIZE]-> (state) -[:STATE]-> (used:State)
	(userRight) -[:AUTHORIZE]-> (state) -[:STATE]-> (updated:State)
	(userRight) -[:AUTHORIZE]-> (state) -[:STATE]-> (expireded:State)
	(userRight) -[:AUTHORIZE]-> (state) -[:STATE]-> (integrityFalse:State)

	(userRight) -[:AUTHORIZE]-> (note) -[:STATE]-> (todo)
	(userRight) -[:AUTHORIZE]-> (note) -[:STATE]-> (created:State)
	(userRight) -[:AUTHORIZE]-> (note) -[:STATE]-> (published:State)
	(userRight) -[:AUTHORIZE]-> (note) -[:STATE]-> (fixed:State)
	(userRight) -[:AUTHORIZE]-> (note) -[:STATE]-> (tested:State)
	(userRight) -[:AUTHORIZE]-> (note) -[:STATE]-> (validated:State)
	(userRight) -[:AUTHORIZE]-> (note) -[:STATE]-> (unvalidated:State)
	(userRight) -[:AUTHORIZE]-> (note) -[:STATE]-> (accessed:State)
	(userRight) -[:AUTHORIZE]-> (note) -[:STATE]-> (used:State)
	(userRight) -[:AUTHORIZE]-> (note) -[:STATE]-> (updated:State)
	(userRight) -[:AUTHORIZE]-> (note) -[:STATE]-> (expireded:State)
	(userRight) -[:AUTHORIZE]-> (note) -[:STATE]-> (integrityFalse:State)

	(userRight) -[:AUTHORIZE]-> (comment) -[:STATE]-> (todo)
	(userRight) -[:AUTHORIZE]-> (comment) -[:STATE]-> (created:State)
	(userRight) -[:AUTHORIZE]-> (comment) -[:STATE]-> (published:State)
	(userRight) -[:AUTHORIZE]-> (comment) -[:STATE]-> (fixed:State)
	(userRight) -[:AUTHORIZE]-> (comment) -[:STATE]-> (tested:State)
	(userRight) -[:AUTHORIZE]-> (comment) -[:STATE]-> (validated:State)
	(userRight) -[:AUTHORIZE]-> (comment) -[:STATE]-> (unvalidated:State)
	(userRight) -[:AUTHORIZE]-> (comment) -[:STATE]-> (accessed:State)
	(userRight) -[:AUTHORIZE]-> (comment) -[:STATE]-> (used:State)
	(userRight) -[:AUTHORIZE]-> (comment) -[:STATE]-> (updated:State)
	(userRight) -[:AUTHORIZE]-> (comment) -[:STATE]-> (expireded:State)
	(userRight) -[:AUTHORIZE]-> (comment) -[:STATE]-> (integrityFalse:State)

	(format1) -[:SIZE]-> (resource1),
	(quality1) -[:OPTIMIZE]-> (ressource1),
	(format) -[:INIT]-> (quality1),
    (DianeKruger) -[:OWN]-> (contract1),
    (Instriit) -[:OWN]-> (contract1),
	(contract1) -[:AUTHORIZE]-> (resource1),
	(owner1) -[:OWN]-> (contract1),
	(token1) -[:IDENTIFY]-> (ncantu),
	(admin) -[:GROUP]-> (ncantu),
	(user) -[:GROUP]-> (admin),
	(user) -[:GROUP]-> (ncantu),
	(resource1) -[:USE]-> (analyticScriptCall1),
	(resource1) -[:USE]-> (analyticUrlCall1),
    (ncantu) -[:CONTRIBUTE_TP]-> (membership1),
	(productCategorie1) -[:categorize]-> (product1),
	(resource) -[:CONCERN]-> (product1),
	(product1) -[:COST]-> (price1),
	(stock1) -[:STOCK]-> (product1),
	(shipping1) -[:SHIPP]-> (product1),
	(order1) -[:ORDER]-> (product1),
	(client1) -[:ORDER]-> (order1),
	(bankTransaction1) -[:pay]-> (order1),
	(bill1) -[:BILLING]-> (order1),
	(expedition1) -[:EXPEDITE]-> (order1),
	(payBack1) -[:PAYBACK]-> (bankTransaction1),
	(shipper1) -[:SHIPPMANAGE]-> (shipping1),
	(expeditor1) -[:EXPEDITEMANAGE]-> (expedition1),
	(bank1) -[:PAYMANAGE]-> (bankTransaction1),
	(bankFacility1) -[:FACILITY]-> (bankTransaction1),
	(productor1) -[:PRODUCE]-> (product1),
	(client) -[:ASK]-> (clientRequest1),
	(ncantu) -[:BECOME]-> (client1),
	(clientManager1) -[:MANAGE]-> (client1),
	(hostPublic1) -[:HOST]-> (domaine1),
	(hostPublic1) -[:BALANCE]-> (hostFront1),
	(hostPublic1) -[:BALANCE]-> (hostFront2),
	(hostPublic1) -[:BALANCE]-> (hostFront2),

	(b2c) -[:MARK]-> (media1),
	(b2c) -[:MARK]-> (device1),
	(b2c) -[:MARK]-> (campaign1),
	(b2c) -[:MARK]-> (resource1),
	(b2c) -[:MARK]-> (domain1),
	(b2c) -[:MARK]-> (segment1),
	(b2c) -[:MARK]-> (ncantu),
	(b2c) -[:MARK]-> (contract1),
	(b2c) -[:MARK]-> (place1),
	(b2c) -[:MARK]-> (quality1),
	(b2c) -[:MARK]-> (admin),
	(b2c) -[:MARK]-> (user),
	(b2c) -[:MARK]-> (analyticScriptCall1),
	(b2c) -[:MARK]-> (analyticUrlCall1),
	(b2c) -[:MARK]-> (DianeKruger),
	(b2c) -[:MARK]-> (Instriit),
	(b2c) -[:MARK]-> (productCategorie1),
	(b2c) -[:MARK]-> (product1),
	(b2c) -[:MARK]-> (price1),
	(b2c) -[:MARK]-> (stock1),
	(b2c) -[:MARK]-> (shipping1),
	(b2c) -[:MARK]-> (order1),
	(b2c) -[:MARK]-> (bankTransaction1),
	(b2c) -[:MARK]-> (bill1),
	(b2c) -[:MARK]-> (expedition1),
	(b2c) -[:MARK]-> (payBack1),
	(b2c) -[:MARK]-> (clientRequest1),
	(b2c) -[:MARK]-> (shipper1),
	(b2c) -[:MARK]-> (expeditor1),
	(b2c) -[:MARK]-> (bank1),
	(b2c) -[:MARK]-> (bankFacility1),
	(b2c) -[:MARK]-> (clientManager1),
	(b2c) -[:MARK]-> (productor1),
	(b2c) -[:MARK]-> (client1),
	(b2c) -[:MARK]-> (hostPublic1),
	(b2c) -[:MARK]-> (hostFront1),
	(b2c) -[:MARK]-> (hostFront2),

	// ******************************************************
	// INTEGRITY INITS FOR THE BATCH integrityControler1
	// ******************************************************

	(integrityControler1) -[:CONTROLE {user:'integrityControler1', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (resource1),

	// ******************************************************
	// EXPIRATION INITS FOR THE BATCH expireControler1
	// ******************************************************

	(expireControler1) -[:EXPIRE]-> (media1),
	(expireControler1) -[:EXPIRE]-> (device1),
	(expireControler1) -[:EXPIRE]-> (campaign1),
	(expireControler1) -[:EXPIRE]-> (resource1),
	(expireControler1) -[:EXPIRE]-> (domain1),
	(expireControler1) -[:EXPIRE]-> (segment1),
	(expireControler1) -[:EXPIRE]-> (ncantu),
	(expireControler1) -[:EXPIRE]-> (contract1),
	(expireControler1) -[:EXPIRE]-> (token1),
	(expireControler1) -[:EXPIRE]-> (place1),
	(expireControler1) -[:EXPIRE]-> (quality1),
	(expireControler1) -[:EXPIRE]-> (admin),
	(expireControler1) -[:EXPIRE]-> (user),
	(expireControler1) -[:EXPIRE]-> (analyticScriptCall1),
	(expireControler1) -[:EXPIRE]-> (analyticUrlCall1),
	(expireControler1) -[:EXPIRE]-> (DianeKruger),
	(expireControler1) -[:EXPIRE]-> (Instriit),
	(expireControler1) -[:EXPIRE]-> (productCategorie1),
	(expireControler1) -[:EXPIRE]-> (product1),
	(expireControler1) -[:EXPIRE]-> (price1),
	(expireControler1) -[:EXPIRE]-> (stock1),
	(expireControler1) -[:EXPIRE]-> (shipping1),
	(expireControler1) -[:EXPIRE]-> (order1),
	(expireControler1) -[:EXPIRE]-> (bankTransaction1),
	(expireControler1) -[:EXPIRE]-> (bill1),
	(expireControler1) -[:EXPIRE]-> (expedition1),
	(expireControler1) -[:EXPIRE]-> (payBack1),
	(expireControler1) -[:EXPIRE]-> (clientRequest1),
	(expireControler1) -[:EXPIRE]-> (shipper1),
	(expireControler1) -[:EXPIRE]-> (expeditor1),
	(expireControler1) -[:EXPIRE]-> (bank1),
	(expireControler1) -[:EXPIRE]-> (bankFacility1),
	(expireControler1) -[:EXPIRE]-> (clientManager1),
	(expireControler1) -[:EXPIRE]-> (productor1),
	(expireControler1) -[:EXPIRE]-> (client1),
	(expireControler1) -[:EXPIRE]-> (hostPublic1),
	(expireControler1) -[:EXPIRE]-> (hostFront1),
	(expireControler1) -[:EXPIRE]-> (hostFront2),

	// ******************************************************
	// SET LOCALS VALUES
	// ******************************************************

	(fr) -[:LOCALIZE]-> (campaign1),
	(fr) -[:LOCALIZE]-> (resource1),
	(fr) -[:LOCALIZE]-> (domain1),
	(fr) -[:LOCALIZE]-> (segment1),
	(fr) -[:LOCALIZE]-> (ncantu),
	(fr) -[:LOCALIZE]-> (contract1),
	(fr) -[:LOCALIZE]-> (tag1),
	(fr) -[:LOCALIZE]-> (place1),
	(fr) -[:LOCALIZE]-> (quality1),
	(fr) -[:LOCALIZE]-> (admin),
	(fr) -[:LOCALIZE]-> (user),
	(fr) -[:LOCALIZE]-> (analyticScriptCall1),
	(fr) -[:LOCALIZE]-> (analyticUrlCall1),
	(fr) -[:LOCALIZE]-> (productCategorie1),
	(fr) -[:LOCALIZE]-> (product1),
	(fr) -[:LOCALIZE]-> (price1),
	(fr) -[:LOCALIZE]-> (stock1),
	(fr) -[:LOCALIZE]-> (shipping1),
	(fr) -[:LOCALIZE]-> (order1),
	(fr) -[:LOCALIZE]-> (bankTransaction1),
	(fr) -[:LOCALIZE]-> (bill1),
	(fr) -[:LOCALIZE]-> (expedition1),
	(fr) -[:LOCALIZE]-> (payBack1),
	(fr) -[:LOCALIZE]-> (clientRequest1),
	(fr) -[:LOCALIZE]-> (shipper1),
	(fr) -[:LOCALIZE]-> (expeditor1),
	(fr) -[:LOCALIZE]-> (bank1),
	(fr) -[:LOCALIZE]-> (bankFacility1),
	(fr) -[:LOCALIZE]-> (clientManager1),
	(fr) -[:LOCALIZE]-> (productor1),
	(fr) -[:LOCALIZE]-> (client1),
	(fr) -[:LOCALIZE]-> (hostPublic1),
	(fr) -[:LOCALIZE]-> (hostFront1),
	(fr) -[:LOCALIZE]-> (hostFront2),

	(history1) -[:HISTORIZE]-> (ncantu),
	(history1) -[:HISTORIZE]-> (admin),
	(history1) -[:HISTORIZE]-> (user),
	(history1) -[:HISTORIZE]-> (device1),
	(history1) -[:HISTORIZE]-> (media1),
	(history1) -[:HISTORIZE]-> (domain1),
	(history1) -[:HISTORIZE]-> (campaign1),
	(history1) -[:HISTORIZE]-> (resource1),
	(history1) -[:HISTORIZE]-> (resource2),
	(history1) -[:HISTORIZE]-> (format1),
	(history1) -[:HISTORIZE]-> (analyticScriptCall1),
	(history1) -[:HISTORIZE]-> (analyticUrlCall1),
	(history1) -[:HISTORIZE]-> (segment1),
	(history1) -[:HISTORIZE]-> (admin),
	(history1) -[:HISTORIZE]-> (action1),
	(history1) -[:HISTORIZE]-> (state1),
	(history1) -[:HISTORIZE]-> (quality1),
	(history1) -[:HISTORIZE]-> (contract1),
	(history1) -[:HISTORIZE]-> (owner1),
	(history1) -[:HISTORIZE]-> (token1),
	(history1) -[:HISTORIZE]-> (b2c),
	(history1) -[:HISTORIZE]-> (expireControler1),
	(history1) -[:HISTORIZE]-> (fr),
	(history1) -[:HISTORIZE]-> (place1),

	(ncantu) -[:COMMENT {value:'hello'}) ]-> (ressource)
	(ncantu) -[:COMMENT {value:'olleh'}) ]-> (user1)
	(user1) -[:COMMENT {value:'hello'}) ]-> (ncantu)

	(ncantu) -[:NOTE {value:'note hello'}) ]-> (ressource)
	(ncantu) -[:NOTE {value:'note olleh'}) ]-> (user1)
	(user1) -[:NOTE {value:'note hello'}) ]-> (ncantu)
