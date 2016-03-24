
// DELETE ALL NODE AND DETATCH RELATIONSHIPS

MATCH (n)
DETACH DELETE n

// INIT THE AUTOINCREMENT ID

MERGE (id:UniqueId{name:'User',str:'user_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1, user = 'ncantu', state=true, dateStart=0, dateEnd=0, step='created', visibility='public', listId=[], alias=[]
WITH id.str + id.count AS userUid

MERGE (id:UniqueId{name:'UserGroup',str:'userGroup_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1, user = 'ncantu', state=true, dateStart=0, dateEnd=0, step='created', visibility='public', listId=[], alias=[]
WITH id.str + id.count AS userGroupUid

MERGE (id:UniqueId{name:'Device',str:'device_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1, user = 'ncantu', state=true, dateStart=0, dateEnd=0, step='created', visibility='public', listId=[], alias=[]
WITH id.str + id.count AS deviceUid

MERGE (id:UniqueId{name:'Media',str:'media_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1, user = 'ncantu', state=true, dateStart=0, dateEnd=0, step='created', visibility='public', listId=[], alias=[]
WITH id.str + id.count AS mediaUid

MERGE (id:UniqueId{name:'Domain',str:'domain_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1, user = 'ncantu', state=true, dateStart=0, dateEnd=0, step='created', visibility='public', listId=[], alias=[]
WITH id.str + id.count AS domainUid

MERGE (id:UniqueId{name:'Campaign',str:'campaign_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1, user = 'ncantu', state=true, dateStart=0, dateEnd=0, step='created', visibility='public', listId=[], alias=[]
WITH id.str + id.count AS campaignUid

MERGE (id:UniqueId{name:'Respurce',str:'resource_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1, user = 'ncantu', state=true, dateStart=0, dateEnd=0, step='created', visibility='public', listId=[], alias=[]
WITH id.str + id.count AS resourceUid

MERGE (id:UniqueId{name:'Format',str:'format_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1, user = 'ncantu', state=true, dateStart=0, dateEnd=0, step='created', visibility='public', listId=[], alias=[]
WITH id.str + id.count AS formatUid

MERGE (id:UniqueId{name:'AnalyticScriptCall',str:'analyticScriptCall_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1, user = 'ncantu', state=true, dateStart=0, dateEnd=0, step='created', visibility='public', listId=[], alias=[]
WITH id.str + id.count AS analyticScriptCallUid

MERGE (id:UniqueId{name:'AnalyticUrlCall', str:'analyticUrlCall_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1, user = 'ncantu', state=true, dateStart=0, dateEnd=0, step='created', visibility='public', listId=[], alias=[]
WITH id.str + id.count AS analyticUrlCallUid

MERGE (id:UniqueId{name:'Segment', str:'segment_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1, user = 'ncantu', state=true, dateStart=0, dateEnd=0, step='created', visibility='public', listId=[], alias=[]
WITH id.str + id.count AS segmentUid

MERGE (id:UniqueId{name:'Right', str:'right_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1, user = 'ncantu', state=true, dateStart=0, dateEnd=0, step='created', visibility='public', listId=[], alias=[]
WITH id.str + id.count AS rightUid

MERGE (id:UniqueId{name:'Action', str:'action_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1, user = 'ncantu', state=true, dateStart=0, dateEnd=0, step='created', visibility='public', listId=[], alias=[]
WITH id.str + id.count AS actionUid

MERGE (id:UniqueId{name:'State', str:'state_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1, user = 'ncantu', state=true, dateStart=0, dateEnd=0, step='created', visibility='public', listId=[], alias=[]
WITH id.str + id.count AS stateUid

MERGE (id:UniqueId{name:'Quality', str:'quality_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1, user = 'ncantu', state=true, dateStart=0, dateEnd=0, step='created', visibility='public', listId=[], alias=[]
WITH id.str + id.count AS qualityUid

MERGE (id:UniqueId{name:'Contract', str:'contract_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1, user = 'ncantu', state=true, dateStart=0, dateEnd=0, step='created', visibility='public', listId=[], alias=[]
WITH id.str + id.count AS contractUid

MERGE (id:UniqueId{name:'Owner', str:'owner_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1, user = 'ncantu', state=true, dateStart=0, dateEnd=0, step='created', visibility='public', listId=[], alias=[]
WITH id.str + id.count AS ownerUid

MERGE (id:UniqueId{name:'Token', str:'token_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1, user = 'ncantu', state=true, dateStart=0, dateEnd=0, step='created', visibility='public', listId=[], alias=[]
WITH id.str + id.count AS tokenUid

MERGE (id:UniqueId{name:'Tag', str:'tag_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1, user = 'ncantu', state=true, dateStart=0, dateEnd=0, step='created', visibility='public', listId=[], alias=[]
WITH id.str + id.count AS tagUid

MERGE (id:UniqueId{name:'ExpireControler', str:'expireControler_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1, user = 'ncantu', state=true, dateStart=0, dateEnd=0, step='run', visibility='public', listId=[], alias=[]
WITH id.str + id.count AS expireControlerUid

MERGE (id:UniqueId{name:'Localization', str:'localization_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1, user = 'ncantu', state=true, dateStart=0, dateEnd=0, step='created', visibility='public', listId=[], alias=[]
WITH id.str + id.count AS localizationUid

MERGE (id:UniqueId{name:'Place', str:'place_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1, user = 'ncantu', state=true, dateStart=0, dateEnd=0, step='created', visibility='public', listId=[], alias=[]
WITH id.str + id.count AS placeUid

MERGE (id:UniqueId{name:'History', str:'history_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1, user = 'ncantu', state=true, dateStart=0, dateEnd=0, step='created', visibility='public', listId=[], alias=[]
WITH id.str + id.count AS historyUid

MERGE (id:UniqueId{name:'Membership', str:'membership_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1, user = 'ncantu', state=true, dateStart=0, dateEnd=0, step='created', visibility='public', listId=[], alias=[]
WITH id.str + id.count AS membershipUid

MERGE (id:UniqueId{name:'Product', str:'product_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1, user = 'ncantu', state=true, dateStart=0, dateEnd=0, step='created', visibility='public', listId=[], alias=[]
WITH id.str + id.count AS productUid

MERGE (id:UniqueId{name:'Stock', str:'stock_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1, user = 'ncantu', state=true, dateStart=0, dateEnd=0, step='created', visibility='public', listId=[], alias=[]
WITH id.str + id.count AS stockUid

MERGE (id:UniqueId{name:'Shipping', str:'shipping_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1, user = 'ncantu', state=true, dateStart=0, dateEnd=0, step='created', visibility='public', listId=[], alias=[]
WITH id.str + id.count AS shippingUid

MERGE (id:UniqueId{name:'Order', str:'order_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1, user = 'ncantu', state=true, dateStart=0, dateEnd=0, step='created', visibility='public', listId=[], alias=[]
WITH id.str + id.count AS orderUid

MERGE (id:UniqueId{name:'BankTransaction', str:'bankTransaction_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1, user = 'ncantu', state=true, dateStart=0, dateEnd=0, step='created', visibility='public', listId=[], alias=[]
WITH id.str + id.count AS bankTransactionUid

MERGE (id:UniqueId{name:'Bill', str:'bill_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1, user = 'ncantu', state=true, dateStart=0, dateEnd=0, step='created', visibility='public', listId=[], alias=[]
WITH id.str + id.count AS billUid

MERGE (id:UniqueId{name:'Expedition', str:'expedition_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1, user = 'ncantu', state=true, dateStart=0, dateEnd=0, step='created', visibility='public', listId=[], alias=[]
WITH id.str + id.count AS expeditionUid

MERGE (id:UniqueId{name:'ExpeditionReturn', str:'expeditionReturn_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1, user = 'ncantu', state=true, dateStart=0, dateEnd=0, step='created', visibility='public', listId=[], alias=[]
WITH id.str + id.count AS ExpeditionReturnUid

MERGE (id:UniqueId{name:'PayBack', str:'payBack_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1, user = 'ncantu', state=true, dateStart=0, dateEnd=0, step='created', visibility='public', listId=[], alias=[]
WITH id.str + id.count AS payBackUid

MERGE (id:UniqueId{name:'ClientRequest', str:'clientRequest_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1, user = 'ncantu', state=true, dateStart=0, dateEnd=0, step='created', visibility='public', listId=[], alias=[]
WITH id.str + id.count AS clientRequestUid

MERGE (id:UniqueId{name:'ClientRequest', str:'clientRequest_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1, user = 'ncantu', state=true, dateStart=0, dateEnd=0, step='created', visibility='public', listId=[], alias=[]
WITH id.str + id.count AS clientRequestUid

MERGE (id:UniqueId{name:'Shipper', str:'shipper_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1, user = 'ncantu', state=true, dateStart=0, dateEnd=0, step='created', visibility='public', listId=[], alias=[]
WITH id.str + id.count AS shipperUid

MERGE (id:UniqueId{name:'Expeditor', str:'expeditor_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1, user = 'ncantu', state=true, dateStart=0, dateEnd=0, step='created', visibility='public', listId=[], alias=[]
WITH id.str + id.count AS expeditorUid

MERGE (id:UniqueId{name:'Bank', str:'bank_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1, user = 'ncantu', state=true, dateStart=0, dateEnd=0, step='created', visibility='public', listId=[], alias=[]
WITH id.str + id.count AS bankUid

MERGE (id:UniqueId{name:'BankFacility', str:'bankFacility_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1, user = 'ncantu', state=true, dateStart=0, dateEnd=0, step='created', visibility='public', listId=[], alias=[]
WITH id.str + id.count AS bankFacilityUid

MERGE (id:UniqueId{name:'ClientManager', str:'clientManager_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1, user = 'ncantu', state=true, dateStart=0, dateEnd=0, step='created', visibility='public', listId=[], alias=[]
WITH id.str + id.count AS clientManagertUid

MERGE (id:UniqueId{name:'Productor', str:'productor_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1, user = 'ncantu', state=true, dateStart=0, dateEnd=0, step='created', visibility='public', listId=[], alias=[]
WITH id.str + id.count AS productorUid

MERGE (id:UniqueId{name:'Client', str:'client_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1, user = 'ncantu', state=true, dateStart=0, dateEnd=0, step='created', visibility='public', listId=[], alias=[]
WITH id.str + id.count AS clientRequestUid
MERGE (id:UniqueId{name:'ClientRequest', str:'clientRequest_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1, user = 'ncantu', state=true, dateStart=0, dateEnd=0, step='created', visibility='public', listId=[], alias=[]
WITH id.str + id.count AS clientUid

MERGE (id:UniqueId{name:'Host', str:'host_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1, user = 'ncantu', state=true, dateStart=0, dateEnd=0, step='created', visibility='public', listId=[], alias=[]
WITH id.str + id.count AS hostUid

MERGE (id:UniqueId{name:'IntegrityControler', str:'integrityControler_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1, user = 'ncantu', state=true, dateStart=0, dateEnd=0, step='run', visibility='public', listId=[], alias=[]
WITH id.str + id.count AS integrityControlerUid

//semantic


// CREATE NODES

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
CREATE (admin:Right)
CREATE (user:Right)
CREATE (create:Action)
CREATE (publish:Action)
CREATE (test:Action)
CREATE (valid:Action)
CREATE (host:Action)
CREATE (use:Action)
CREATE (manage:Action)
CREATE (target:Action)
CREATE (represente:Action)
CREATE (collect:Action)
CREATE (authorize:Action)
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
CREATE (manage:Action)
CREATE (balance:Action)
CREATE (note:Action)
CREATE (comment:Action)
CREATE (state1:State)
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

// CREATE RELATIONSHIPS

CREATE 

	(device1) -[:publish {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (media1),
	(media1) -[:host {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (campaign1),
	(media1) -[:use {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (place1),
	(place1) -[:show {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (resource1),
	(domain1) -[:manage {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (campaign1),
	(campaign1) -[:target {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published1', visibility:'public', note:''}]-> (segment1),
	(segment1) -[:represente {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published1', visibility:'public', note:''}]-> (segment1),
	(segment1) -[:represente {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published1', visibility:'public', note:''}]-> (ncantu),
	(ncantu) -[:collect {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (admin),

	(admin) -[:authorize {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (resource1),
	(admin) -[:authorize {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (publish),
	(admin) -[:authorize {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (create),
	(admin) -[:authorize {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (access),
	(admin) -[:authorize {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (update),
	(admin) -[:authorize {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (change),
	(admin) -[:authorize {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (use),
	(admin) -[:authorize {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (test),
	(admin) -[:authorize {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (valid),
	(admin) -[:authorize {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (host),
	(admin) -[:authorize {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (use),
	(admin) -[:authorize {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (manage),
	(admin) -[:authorize {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (target),
	(admin) -[:authorize {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (represente),
	(admin) -[:authorize {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (collect),
	(admin) -[:authorize {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (authorize),
	(admin) -[:authorize {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (access),
	(admin) -[:authorize {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (update),
	(admin) -[:authorize {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (execute),
	(admin) -[:authorize {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (change),
	(admin) -[:authorize {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (optimize),
	(admin) -[:authorize {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (init),
	(admin) -[:authorize {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (own),
	(admin) -[:authorize {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (identify),
	(admin) -[:authorize {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (mark),
	(admin) -[:authorize {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (expire),
	(admin) -[:authorize {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (localize),
	(admin) -[:authorize {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (show),
	(admin) -[:authorize {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (size),
	(admin) -[:authorize {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (historize),
	(admin) -[:authorize {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (contributeTo),
	(admin) -[:authorize {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (concern),
	(admin) -[:authorize {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (cost),
	(admin) -[:authorize {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (stock),
	(admin) -[:authorize {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (shipp),
	(admin) -[:authorize {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (order),
	(admin) -[:authorize {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (pay),
	(admin) -[:authorize {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (billing),
	(admin) -[:authorize {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (expedite),
	(admin) -[:authorize {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (payBack),
	(admin) -[:authorize {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (shippManange),
	(admin) -[:authorize {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (expediteManange),
	(admin) -[:authorize {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (payManange),
	(admin) -[:authorize {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (produce),
	(admin) -[:authorize {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (ask),
	(admin) -[:authorize {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (manage),
	(admin) -[:authorize {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (balance),
	(admin) -[:authorize {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (note),
	(admin) -[:authorize {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (comment),	
	(user) -[:authorize {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (publish),
	(user) -[:authorize {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (create),
	(user) -[:authorize {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (access),
	(user) -[:authorize {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (update),
	(user) -[:authorize {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (change),
	(user) -[:authorize {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (use),
	(user) -[:authorize {user:'ncantu', state:false, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (test),
	(user) -[:authorize {user:'ncantu', state:false, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (valid),
	(user) -[:authorize {user:'ncantu', state:false, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (host),
	(user) -[:authorize {user:'ncantu', state:false, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (manage),
	(user) -[:authorize {user:'ncantu', state:false, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (target),
	(user) -[:authorize {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (represente),
	(user) -[:authorize {user:'ncantu', state:false, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (collect),
	(user) -[:authorize {user:'ncantu', state:false, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (authorize),
	(user) -[:authorize {user:'ncantu', state:false, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (execute),
	(user) -[:authorize {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (change),
	(user) -[:authorize {user:'ncantu', state:false, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (optimize),
	(user) -[:authorize {user:'ncantu', state:false, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (init),
	(user) -[:authorize {user:'ncantu', state:false, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (own),
	(user) -[:authorize {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (identify),
	(user) -[:authorize {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (mark),
	(user) -[:authorize {user:'ncantu', state:false, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (expire),
	(user) -[:authorize {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (localize),
	(user) -[:authorize {user:'ncantu', state:false, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (show),
	(user) -[:authorize {user:'ncantu', state:false, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (size),
	(user) -[:authorize {user:'ncantu', state:false, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (historize),
	(user) -[:authorize {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (contributeTo),
	(user) -[:authorize {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (concern),
	(user) -[:authorize {user:'ncantu', state:false, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (cost),
	(user) -[:authorize {user:'ncantu', state:false, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (stock),
	(user) -[:authorize {user:'ncantu', state:false, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (shipp),
	(user) -[:authorize {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (order),
	(user) -[:authorize {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (pay),
	(user) -[:authorize {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (billing),
	(user) -[:authorize {user:'ncantu', state:false, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (expedite),
	(user) -[:authorize {user:'ncantu', state:false, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (payBack),
	(user) -[:authorize {user:'ncantu', state:false, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (shippManange),
	(user) -[:authorize {user:'ncantu', state:false, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (expediteManange),
	(user) -[:authorize {user:'ncantu', state:false, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (payManange),
	(user) -[:authorize {user:'ncantu', state:false, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (produce),
	(user) -[:authorize {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (ask),
	(user) -[:authorize {user:'ncantu', state:false, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (manage),
	(user) -[:authorize {user:'ncantu', state:false, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (balance),
	(user) -[:authorize {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (note),
	(user) -[:authorize {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (comment),
	(format1) -[:size {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (resource1),
	(quality1) -[:optimize {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (ressource1),
	(format) -[:init {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (quality1),
    (DianeKruger) -[:own {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (contract1),
    (Instriit) -[:own {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (contract1),
	(contract1) -[:authorize {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (resource1),
	(owner1) -[:own {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (contract1),
	(token1) -[:identify {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (ncantu),
	(admin) -[:group {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (ncantu),
	(user) -[:group {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (admin),
	(user) -[:group {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (ncantu),
	(resource1) -[:use {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (analyticScriptCall1),
	(resource1) -[:use {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (analyticUrlCall1),
    (ncantu) -[:contributeTo {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (membership1),
	(productCategorie1) -[:categorize {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (product1),
	(resource) -[:concern {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (product1),
	(product1) -[:cost {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (price1),
	(stock1) -[:stock {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (product1),
	(shipping1) -[:shipp {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (product1),
	(order1) -[:order {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (product1),
	(client1) -[:order {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (order1),
	(bankTransaction1) -[:pay {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (order1),
	(bill1) -[:billing {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (order1),
	(expedition1) -[:expedite {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (order1),
	(payBack1) -[:payBack {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (bankTransaction1),
	(shipper1) -[:shippManange {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (shipping1),
	(expeditor1) -[:expediteManange {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (expedition1),
	(bank1) -[:payManange {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (bankTransaction1),
	(bankFacility1) -[:facility {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (bankTransaction1),
	(productor1) -[:produce {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (product1),
	(client) -[:ask {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (clientRequest1),
	(ncantu) -[:become {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (client1),
	(clientManager1) -[:manage {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (client1),
	(hostPublic1) -[:host {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (domaine1),
	(hostPublic1) -[:balance {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (hostFront1),
	(hostPublic1) -[:balance {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (hostFront2),
	(hostPublic1) -[:balance {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (hostFront2),

	(b2c) -[:mark {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (media1),
	(b2c) -[:mark {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (device1),
	(b2c) -[:mark {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (campaign1),
	(b2c) -[:mark {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (resource1),
	(b2c) -[:mark {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (domain1),
	(b2c) -[:mark {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (segment1),
	(b2c) -[:mark {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (ncantu),
	(b2c) -[:mark {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (contract1),
	(b2c) -[:mark {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (place1),
	(b2c) -[:mark {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (quality1),
	(b2c) -[:mark {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (admin),
	(b2c) -[:mark {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (user),
	(b2c) -[:mark {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (analyticScriptCall1),
	(b2c) -[:mark {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (analyticUrlCall1),
	(b2c) -[:mark {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (DianeKruger),
	(b2c) -[:mark {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (Instriit),
	(b2c) -[:mark {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (productCategorie1),
	(b2c) -[:mark {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (product1),
	(b2c) -[:mark {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (price1),
	(b2c) -[:mark {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (stock1),
	(b2c) -[:mark {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (shipping1),
	(b2c) -[:mark {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (order1),
	(b2c) -[:mark {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (bankTransaction1),
	(b2c) -[:mark {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (bill1),
	(b2c) -[:mark {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (expedition1),
	(b2c) -[:mark {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (payBack1),
	(b2c) -[:mark {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (clientRequest1),
	(b2c) -[:mark {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (shipper1),
	(b2c) -[:mark {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (expeditor1),
	(b2c) -[:mark {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (bank1),
	(b2c) -[:mark {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (bankFacility1),
	(b2c) -[:mark {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (clientManager1),
	(b2c) -[:mark {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (productor1),
	(b2c) -[:mark {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (client1),
	(b2c) -[:mark {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (hostPublic1),
	(b2c) -[:mark {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (hostFront1),
	(b2c) -[:mark {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (hostFront2),

	// INTEGRITY INITS FOR THE BATCH integrityControler1

	(integrityControler1) -[:controle {user:'integrityControler1', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (resource1),

	// EXPIRATION INITS FOR THE BATCH expireControler1

	(expireControler1) -[:expire {user:'expireControler1', state:false, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (media1),
	(expireControler1) -[:expire {user:'expireControler1', state:false, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (device1),
	(expireControler1) -[:expire {user:'expireControler1', state:false, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (campaign1),
	(expireControler1) -[:expire {user:'expireControler1', state:false, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (resource1),
	(expireControler1) -[:expire {user:'expireControler1', state:false, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (domain1),
	(expireControler1) -[:expire {user:'expireControler1', state:false, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (segment1),
	(expireControler1) -[:expire {user:'expireControler1', state:false, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (ncantu),
	(expireControler1) -[:expire {user:'expireControler1', state:false, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (contract1),
	(expireControler1) -[:expire {user:'expireControler1', state:false, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (token1),
	(expireControler1) -[:expire {user:'expireControler1', state:false, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (place1),
	(expireControler1) -[:expire {user:'expireControler1', state:false, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (quality1),
	(expireControler1) -[:expire {user:'expireControler1', state:false, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (admin),
	(expireControler1) -[:expire {user:'expireControler1', state:false, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (user),
	(expireControler1) -[:expire {user:'expireControler1', state:false, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (analyticScriptCall1),
	(expireControler1) -[:expire {user:'expireControler1', state:false, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (analyticUrlCall1),
	(expireControler1) -[:expire {user:'expireControler1', state:false, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (DianeKruger),
	(expireControler1) -[:expire {user:'expireControler1', state:false, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (Instriit),
	(expireControler1) -[:expire {user:'expireControler1', state:false, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (productCategorie1),
	(expireControler1) -[:expire {user:'expireControler1', state:false, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (product1),
	(expireControler1) -[:expire {user:'expireControler1', state:false, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (price1),
	(expireControler1) -[:expire {user:'expireControler1', state:false, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (stock1),
	(expireControler1) -[:expire {user:'expireControler1', state:false, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (shipping1),
	(expireControler1) -[:expire {user:'expireControler1', state:false, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (order1),
	(expireControler1) -[:expire {user:'expireControler1', state:false, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (bankTransaction1),
	(expireControler1) -[:expire {user:'expireControler1', state:false, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (bill1),
	(expireControler1) -[:expire {user:'expireControler1', state:false, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (expedition1),
	(expireControler1) -[:expire {user:'expireControler1', state:false, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (payBack1),
	(expireControler1) -[:expire {user:'expireControler1', state:false, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (clientRequest1),
	(expireControler1) -[:expire {user:'expireControler1', state:false, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (shipper1),
	(expireControler1) -[:expire {user:'expireControler1', state:false, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (expeditor1),
	(expireControler1) -[:expire {user:'expireControler1', state:false, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (bank1),
	(expireControler1) -[:expire {user:'expireControler1', state:false, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (bankFacility1),
	(expireControler1) -[:expire {user:'expireControler1', state:false, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (clientManager1),
	(expireControler1) -[:expire {user:'expireControler1', state:false, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (productor1),
	(expireControler1) -[:expire {user:'expireControler1', state:false, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (client1),
	(expireControler1) -[:expire {user:'expireControler1', state:false, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (hostPublic1),
	(expireControler1) -[:expire {user:'expireControler1', state:false, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (hostFront1),
	(expireControler1) -[:expire {user:'expireControler1', state:false, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (hostFront2),

	// SET LOCALS VALUES

	(fr) -[:localize {user:'localization1', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:'', description500: '', descriptionLong3000:'', descriptionShort240:'', title:'', value:''}]-> (campaign1),
	(fr) -[:localize {user:'localization1', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:'', description500: '', descriptionLong3000:'', descriptionShort240:'', title:'', value:''}]-> (resource1),
	(fr) -[:localize {user:'localization1', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:'', description500: '', descriptionLong3000:'', descriptionShort240:'', title:'', value:''}]-> (domain1),
	(fr) -[:localize {user:'localization1', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:'', description500: '', descriptionLong3000:'', descriptionShort240:'', title:'', value:''}]-> (segment1),
	(fr) -[:localize {user:'localization1', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:'', description500: '', descriptionLong3000:'', descriptionShort240:'', title:'', value:''}]-> (ncantu),
	(fr) -[:localize {user:'localization1', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:'', description500: '', descriptionLong3000:'', descriptionShort240:'', title:'', value:''}]-> (contract1),
	(fr) -[:localize {user:'localization1', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:'', description500: '', descriptionLong3000:'', descriptionShort240:'', title:'', value:''}]-> (tag1),
	(fr) -[:localize {user:'localization1', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:'', description500: '', descriptionLong3000:'', descriptionShort240:'', title:'', value:''}]-> (place1),
	(fr) -[:localize {user:'localization1', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:'', description500: '', descriptionLong3000:'', descriptionShort240:'', title:'', value:''}]-> (quality1),
	(fr) -[:localize {user:'localization1', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:'', description500: '', descriptionLong3000:'', descriptionShort240:'', title:'', value:''}]-> (admin),
	(fr) -[:localize {user:'localization1', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:'', description500: '', descriptionLong3000:'', descriptionShort240:'', title:'', value:''}]-> (user),
	(fr) -[:localize {user:'localization1', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:'', description500: '', descriptionLong3000:'', descriptionShort240:'', title:'', value:''}]-> (analyticScriptCall1),
	(fr) -[:localize {user:'localization1', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:'', description500: '', descriptionLong3000:'', descriptionShort240:'', title:'', value:''}]-> (analyticUrlCall1),
	(fr) -[:localize {user:'localization1', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:'', description500: '', descriptionLong3000:'', descriptionShort240:'', title:'', value:''}]-> (productCategorie1),
	(fr) -[:localize {user:'localization1', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:'', description500: '', descriptionLong3000:'', descriptionShort240:'', title:'', value:''}]-> (product1),
	(fr) -[:localize {user:'localization1', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:'', description500: '', descriptionLong3000:'', descriptionShort240:'', title:'', value:''}]-> (price1),
	(fr) -[:localize {user:'localization1', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:'', description500: '', descriptionLong3000:'', descriptionShort240:'', title:'', value:''}]-> (stock1),
	(fr) -[:localize {user:'localization1', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:'', description500: '', descriptionLong3000:'', descriptionShort240:'', title:'', value:''}]-> (shipping1),
	(fr) -[:localize {user:'localization1', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:'', description500: '', descriptionLong3000:'', descriptionShort240:'', title:'', value:''}]-> (order1),
	(fr) -[:localize {user:'localization1', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:'', description500: '', descriptionLong3000:'', descriptionShort240:'', title:'', value:''}]-> (bankTransaction1),
	(fr) -[:localize {user:'localization1', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:'', description500: '', descriptionLong3000:'', descriptionShort240:'', title:'', value:''}]-> (bill1),
	(fr) -[:localize {user:'localization1', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:'', description500: '', descriptionLong3000:'', descriptionShort240:'', title:'', value:''}]-> (expedition1),
	(fr) -[:localize {user:'localization1', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:'', description500: '', descriptionLong3000:'', descriptionShort240:'', title:'', value:''}]-> (payBack1),
	(fr) -[:localize {user:'localization1', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:'', description500: '', descriptionLong3000:'', descriptionShort240:'', title:'', value:''}]-> (clientRequest1),
	(fr) -[:localize {user:'localization1', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:'', description500: '', descriptionLong3000:'', descriptionShort240:'', title:'', value:''}]-> (shipper1),
	(fr) -[:localize {user:'localization1', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:'', description500: '', descriptionLong3000:'', descriptionShort240:'', title:'', value:''}]-> (expeditor1),
	(fr) -[:localize {user:'localization1', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:'', description500: '', descriptionLong3000:'', descriptionShort240:'', title:'', value:''}]-> (bank1),
	(fr) -[:localize {user:'localization1', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:'', description500: '', descriptionLong3000:'', descriptionShort240:'', title:'', value:''}]-> (bankFacility1),
	(fr) -[:localize {user:'localization1', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:'', description500: '', descriptionLong3000:'', descriptionShort240:'', title:'', value:''}]-> (clientManager1),
	(fr) -[:localize {user:'localization1', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:'', description500: '', descriptionLong3000:'', descriptionShort240:'', title:'', value:''}]-> (productor1),
	(fr) -[:localize {user:'localization1', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:'', description500: '', descriptionLong3000:'', descriptionShort240:'', title:'', value:''}]-> (client1),
	(fr) -[:localize {user:'localization1', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:'', description500: '', descriptionLong3000:'', descriptionShort240:'', title:'', value:''}]-> (hostPublic1),
	(fr) -[:localize {user:'localization1', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:'', description500: '', descriptionLong3000:'', descriptionShort240:'', title:'', value:''}]-> (hostFront1),
	(fr) -[:localize {user:'localization1', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:'', description500: '', descriptionLong3000:'', descriptionShort240:'', title:'', value:''}]-> (hostFront2),

	(history1) -[:historize {user:'localization1', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', action:'create', note:''}]-> (ncantu),
	(history1) -[:historize {user:'localization1', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', action:'create', note:''}]-> (admin),
	(history1) -[:historize {user:'localization1', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', action:'create', note:''}]-> (user),
	(history1) -[:historize {user:'localization1', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', action:'create', note:''}]-> (device1),
	(history1) -[:historize {user:'localization1', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', action:'create', note:''}]-> (media1),
	(history1) -[:historize {user:'localization1', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', action:'create', note:''}]-> (domain1),
	(history1) -[:historize {user:'localization1', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', action:'create', note:''}]-> (campaign1),
	(history1) -[:historize {user:'localization1', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', action:'create', note:''}]-> (resource1),
	(history1) -[:historize {user:'localization1', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', action:'create', note:''}]-> (resource2),
	(history1) -[:historize {user:'localization1', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', action:'create', note:''}]-> (format1),
	(history1) -[:historize {user:'localization1', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', action:'create', note:''}]-> (analyticScriptCall1),
	(history1) -[:historize {user:'localization1', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', action:'create', note:''}]-> (analyticUrlCall1),
	(history1) -[:historize {user:'localization1', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', action:'create', note:''}]-> (segment1),
	(history1) -[:historize {user:'localization1', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', action:'create', note:''}]-> (admin),
	(history1) -[:historize {user:'localization1', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', action:'create', note:''}]-> (action1),
	(history1) -[:historize {user:'localization1', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', action:'create', note:''}]-> (state1),
	(history1) -[:historize {user:'localization1', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', action:'create', note:''}]-> (quality1),
	(history1) -[:historize {user:'localization1', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', action:'create', note:''}]-> (contract1),
	(history1) -[:historize {user:'localization1', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', action:'create', note:''}]-> (owner1),
	(history1) -[:historize {user:'localization1', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', action:'create', note:''}]-> (token1),
	(history1) -[:historize {user:'localization1', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', action:'create', note:''}]-> (b2c),
	(history1) -[:historize {user:'localization1', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', action:'create', note:''}]-> (expireControler1),
	(history1) -[:historize {user:'localization1', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', action:'create', note:''}]-> (fr),
	(history1) -[:historize {user:'localization1', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', action:'create', note:''}]-> (place1),

	(ncantu) -[:comment {title: '', value:'hello', listId:['838847'], note:''}) ]-> (ressource)
	(ncantu) -[:comment {title: '', value:'olleh', listId:['838847'], note:''}) ]-> (user1)
	(user1) -[:comment {title: '', value:'hello', listId:['838847'], note:''}) ]-> (ncantu)

	(ncantu) -[:note {title: '', value:'note hello', listId:['838847'], note:''}) ]-> (ressource)
	(ncantu) -[:note {title: '', value:'note olleh', listId:['838847'], note:''}) ]-> (user1)
	(user1) -[:note {title: '', value:'note hello', listId:['838847'], note:''}) ]-> (ncantu)
