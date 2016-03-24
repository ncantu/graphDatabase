MERGE (id:UniqueId{name:'User',str:'user_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1
WITH id.str + id.count AS userUid

MERGE (id:UniqueId{name:'UserGroup',str:'userGroup_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1
WITH id.str + id.count AS userGroupUid

MERGE (id:UniqueId{name:'Device',str:'device_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1
WITH id.str + id.count AS deviceUid

MERGE (id:UniqueId{name:'Media',str:'media_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1
WITH id.str + id.count AS mediaUid

MERGE (id:UniqueId{name:'Domain',str:'domain_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1
WITH id.str + id.count AS domainUid

MERGE (id:UniqueId{name:'Campaign',str:'campaign_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1
WITH id.str + id.count AS campaignUid

MERGE (id:UniqueId{name:'Respurce',str:'resource_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1
WITH id.str + id.count AS resourceUid

MERGE (id:UniqueId{name:'Format',str:'format_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1
WITH id.str + id.count AS formatUid

MERGE (id:UniqueId{name:'AnalyticScriptCall',str:'analyticScriptCall_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1
WITH id.str + id.count AS analyticScriptCallUid

MERGE (id:UniqueId{name:'AnalyticUrlCall', str:'analyticUrlCall_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1
WITH id.str + id.count AS analyticUrlCallUid

MERGE (id:UniqueId{name:'Segment', str:'segment_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1
WITH id.str + id.count AS segmentUid

MERGE (id:UniqueId{name:'Right', str:'right_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1
WITH id.str + id.count AS rightUid

MERGE (id:UniqueId{name:'Action', str:'action_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1
WITH id.str + id.count AS actionUid

MERGE (id:UniqueId{name:'State', str:'state_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1
WITH id.str + id.count AS stateUid

MERGE (id:UniqueId{name:'Quality', str:'quality_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1
WITH id.str + id.count AS qualityUid

MERGE (id:UniqueId{name:'Contract', str:'contract_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1
WITH id.str + id.count AS contractUid

MERGE (id:UniqueId{name:'Owner', str:'owner_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1
WITH id.str + id.count AS ownerUid

MERGE (id:UniqueId{name:'Token', str:'token_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1
WITH id.str + id.count AS tokenUid

MERGE (id:UniqueId{name:'Tag', str:'tag_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1
WITH id.str + id.count AS tagUid

MERGE (id:UniqueId{name:'ExpireControler', str:'expireControler_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1
WITH id.str + id.count AS expireControlerUid

MERGE (id:UniqueId{name:'Localization', str:'localization_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1
WITH id.str + id.count AS localizationUid

MERGE (id:UniqueId{name:'Place', str:'place_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1
WITH id.str + id.count AS placeUid

MERGE (id:UniqueId{name:'Histort', str:'history_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1
WITH id.str + id.count AS historyUid

MERGE (id:UniqueId{name:'Membership', str:'membership_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1
WITH id.str + id.count AS membershipUid

MERGE (id:UniqueId{name:'Product', str:'product_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1
WITH id.str + id.count AS productUid

MERGE (id:UniqueId{name:'Stock', str:'stock_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1
WITH id.str + id.count AS stockUid

MERGE (id:UniqueId{name:'Shipping', str:'shipping_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1
WITH id.str + id.count AS shippingUid

MERGE (id:UniqueId{name:'Order', str:'order_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1
WITH id.str + id.count AS orderUid

MERGE (id:UniqueId{name:'BankTransaction', str:'bankTransaction_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1
WITH id.str + id.count AS bankTransactionUid

MERGE (id:UniqueId{name:'Bill', str:'bill_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1
WITH id.str + id.count AS billUid

MERGE (id:UniqueId{name:'Expedition', str:'expedition_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1
WITH id.str + id.count AS expeditionUid

MERGE (id:UniqueId{name:'ExpeditionReturn', str:'expeditionReturn_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1
WITH id.str + id.count AS ExpeditionReturnUid

MERGE (id:UniqueId{name:'PayBack', str:'payBack_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1
WITH id.str + id.count AS payBackUid

MERGE (id:UniqueId{name:'ClientRequest', str:'clientRequest_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1
WITH id.str + id.count AS clientRequestUid

MERGE (id:UniqueId{name:'ClientRequest', str:'clientRequest_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1
WITH id.str + id.count AS clientRequestUid

MERGE (id:UniqueId{name:'Shipper', str:'shipper_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1
WITH id.str + id.count AS shipperUid

MERGE (id:UniqueId{name:'Expeditor', str:'expeditor_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1
WITH id.str + id.count AS expeditorUid

MERGE (id:UniqueId{name:'Bank', str:'bank_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1
WITH id.str + id.count AS bankUid

MERGE (id:UniqueId{name:'BankFacility', str:'bankFacility_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1
WITH id.str + id.count AS bankFacilityUid

MERGE (id:UniqueId{name:'ClientManager', str:'clientManager_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1
WITH id.str + id.count AS clientManagertUid

MERGE (id:UniqueId{name:'Productor', str:'productor_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1
WITH id.str + id.count AS productorUid

MERGE (id:UniqueId{name:'Client', str:'client_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1
WITH id.str + id.count AS clientRequestUid
MERGE (id:UniqueId{name:'ClientRequest', str:'clientRequest_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1
WITH id.str + id.count AS clientUid

MERGE (id:UniqueId{name:'Host', str:'host_'})
ON CREATE SET id.count = 1
ON MATCH SET id.count = id.count + 1
WITH id.str + id.count AS hostUid

//semantic

CREATE (ncantu:User {title: 'ncantu', lastName:'Cantu', firstName:'Nicolas', email:'nicolas.cantu@instriit.com', listId:['ncantu', 'admin'], user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'created', visibility:'public', description500: '', descriptionLong3000:'', descriptionShort240:'', note:''})
CREATE (user1:User {title: 'user1', lastName:'Cantu', firstName:'Nicolas', email:'nicolas.cantu@instriit.com', listId:['ncantu', 'admin'], user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'created', visibility:'public', description500: '', descriptionLong3000:'', descriptionShort240:'', note:''})
CREATE (admin:UserGroup {title: 'admin', lastName:'Service', firstName:'Admin', email:'admin@instriit.com', listId:['admin'], user:'admin', state:true, dateStart:0, dateEnd:0, step:'created', visibility:'public', description500: '', descriptionLong3000:'', descriptionShort240:'', note:''})
CREATE (user:UserGroup {title: 'user', lastName:'Service', firstName:'User', email:'user@instriit.com', listId:['admin'], user:'user', state:true, dateStart:0, dateEnd:0, step:'created', visibility:'public', description500: '', descriptionLong3000:'', descriptionShort240:'', note:''})
CREATE (device1:Device {title: 'device1', listId:['tablette', 'PC', 'smartphine'], user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'created', visibility:'public', description500: '', descriptionLong3000:'', descriptionShort240:'', note:''})
CREATE (media1:Media {title: 'media1', listId:['site', 'appliAndroid', 'appliIPhone'], user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'created', visibility:'public', description500: '', descriptionLong3000:'', descriptionShort240:'', note:''})
CREATE (domain1:Domain  {title: 'ncantu', lastName:'Cantu', firstName:'Nicolas', email:'nicolas.cantu@instriit.com', listId:['instriit.com'], user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'created', visibility:'public', description500: '', descriptionLong3000:'', descriptionShort240:'', note:''})
CREATE (campaign1:Campaign  {title: 'campaign1', listId:['campaign1', 'trigger1', 'trigger2'], user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'created', visibility:'public', description500: '', descriptionLong3000:'', descriptionShort240:'', note:''})
CREATE (resource1:Resource  {title: 'resource1', urlPath:'img', urlName:'resource1', urlExt:'.png', listId:['top1', 'left1', 'body1', 'bottom1', 'skin', 'valentin', 'followFacebook'], user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'created', crc:'564654sdf4', visibility:'public', description500: '', descriptionLong3000:'', descriptionShort240:'', note:''})
CREATE (resource2:Resource  {title: 'resource2', urlPath:'img', urlName:'resource2', urlExt:'.png', listId:['logoOAP'], user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'created', crc:'564654dqsdqsdsdf4', visibility:'public', description500: '', descriptionLong3000:'', descriptionShort240:'', note:''})
CREATE  (format1:Format {title: 'format1', listId:['hq'], user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'created', visibility:'public', contentType: 'image/png', charset: 'UTF-8', local: 'FR-FR', height: 480, heightUnit: 'px', width: 38, widthUnit: 'px', weight: 19, weightUnit: 'ko', description500: '', descriptionLong3000:'', descriptionShort240:'', note:''})
CREATE (analyticScriptCall1:AnalyticScriptCall {title: 'analyticScriptCall1', listId:['logoOAP'], user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'created', listId:['default'], google: '<script></scrypt>', crm: '<script></scrypt>', salesforce: '<script></scrypt>', other: '<script></scrypt>', visibility:'public', description500: '', descriptionLong3000:'', descriptionShort240:'', note:''})
CREATE (analyticUrlCall1:AnalyticUrlCall {title: 'analyticUrlCall1', listId:['logoOAP'], user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'created', listId:['default'], google: 'http://', crm: 'http://', salesforce: 'http://', other: 'http://', visibility:'public', description500: '', descriptionLong3000:'', descriptionShort240:'', note:''})
CREATE (segment1:Segment {title: 'segment1', listId:['appetant1', 'early1', 'fan1', 'blog1'], user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'created', visibility:'public', description500: '', descriptionLong3000:'', descriptionShort240:'', note:''})
CREATE (right1:Right {title: 'right1', listId:['admin', 'user', 'readOnly', 'api'], user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'created', visibility:'public', description500: '', descriptionLong3000:'', descriptionShort240:'', note:''})
CREATE (action1:Action {title: 'action1', listId:['create', 'publish', 'test', 'valid', 'host', 'use', 'manage', 'target', 'represente', 'collect', 'authorize', 'access', 'update', 'execute', 'change', 'optimize', 'init', 'own', 'identify', 'mark', 'expire', 'localize', 'show', 'size', 'historize', 'contributeTo', 'concern', 'cost', 'stock', 'shipp', 'order', 'pay', 'billing', 'expedite', 'payBack', 'shippManange', 'expediteManange', 'payManange', 'produce', 'ask', 'manage', 'balance', 'note', 'comment'], user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'created', visibility:'public', description500: '', descriptionLong3000:'', descriptionShort240:'', note:''})
CREATE (state1:State {title: 'state1', listId:['top1', 'left1', 'body1', 'bottom1'], user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'created', visibility:'public', description500: '', descriptionLong3000:'', descriptionShort240:'', note:''})
CREATE (quality1:Quality  {title: 'quality1', listId:['HQ', 'lowQ', 'optimised'], user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'created', visibility:'public', description500: '', descriptionLong3000:'', descriptionShort240:'', note:''})
CREATE (contract1:Contract  {title: 'contract1', listId:['contract16565120', 'avenant 1', 'avenant 2'], user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'created', visibility:'public', description500: '', descriptionLong3000:'', descriptionShort240:'', note:''})
CREATE (DianeKruger:Owner {title: 'DianeKruger', fullName: 'Diane Kruger', firstName: 'Diane', lasteName: 'Kruger', compagny: 'Diane Kruger', listId:['Diane Kruger'], user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'created', visibility:'public', description500: '', descriptionLong3000:'', descriptionShort240:'', note:''})
CREATE (Instriit:Owner {title: 'Instriit', fullName: 'Diane Kruger', firstName: 'Diane', lasteName: 'Kruger', compagny: 'Diane Kruger', listId:['Diane Kruger'], user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'created', visibility:'public', description500: '', descriptionLong3000:'', descriptionShort240:'', note:''})
CREATE (token1:Token {title: 'token1', listId:['tokenAPI156416546', 'tokenSite464646', 'tokenAndroid64646', 'tokenIphone64564'], user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'created', visibility:'public', description500: '', descriptionLong3000:'', descriptionShort240:'', note:''})
CREATE (b2c:Tag {title: 'b2c', listId:['greatContent', 'multiBrand', 'newProduct', 'charteOAP'], user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'created', visibility:'public', description500: '', descriptionLong3000:'', descriptionShort240:'', note:''})
CREATE (expireControler1:ExpireControler {title: 'expireControler1', listId:['controlElement', 'controlLink'], user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'created', visibility:'public', description500: '', descriptionLong3000:'', descriptionShort240:'', note:''})
CREATE (fr:Localization {title: 'fr', listId:['localizeElement', 'localizeText'], code: 'fr', locale: 'Europe/Paris', lang: 'fr-FR', charset:'utf-8', user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'created', visibility:'public', description500: '', descriptionLong3000:'', descriptionShort240:'', note:''})
CREATE (place1:Place {title: 'place1', listId:['top'], user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'created', visibility:'public', description500: '', descriptionLong3000:'', descriptionShort240:'', note:''})
CREATE (history1:History {title: 'place1', listId:['top'], user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'created', visibility:'public', description500: '', descriptionLong3000:'', descriptionShort240:'', note:''})
CREATE (membership1:Membership {title: 'place1', listId:['basic'], user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'created', visibility:'public', description500: '', descriptionLong3000:'', descriptionShort240:'', note:''})
CREATE (productCategorie1:ProductCategory {title: 'product1', listId:['484773'], user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'created', visibility:'public', description500: '', descriptionLong3000:'', descriptionShort240:'', note:''})
CREATE (product1:Product {title: 'product1', listId:['484773'], user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'created', visibility:'public', description500: '', descriptionLong3000:'', descriptionShort240:'', note:''})
CREATE (price1:Price {title: 'price1', value:20, unit:'euro', listId:['48875'], user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'created', visibility:'public', description500: '', descriptionLong3000:'', descriptionShort240:'', note:''})
CREATE (stock1:Stock {title: 'stock1', value:20, unit:'unit', listId:['38847'], user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'created', visibility:'public', description500: '', descriptionLong3000:'', descriptionShort240:'', note:''})
CREATE (shipping1:Shipping {title: 'shipping1', value:20, unit:'unit', listId:['4948485'], user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'created', visibility:'public', description500: '', descriptionLong3000:'', descriptionShort240:'', note:''})
CREATE (order1:Order {title: 'order1', listId:['4847'], user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'created', visibility:'public', description500: '', descriptionLong3000:'', descriptionShort240:'', note:''})
CREATE (bankTransaction1:BankTransaction {title: 'bankTransaction1', listId:['3848'], user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'created', visibility:'public', description500: '', descriptionLong3000:'', descriptionShort240:'', note:''})
CREATE (bill1:Bill {title: 'bill1', listId:['38488484'], user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'created', visibility:'public', description500: '', descriptionLong3000:'', descriptionShort240:'', note:''})
CREATE (expedition1:Expedition {title: 'expedition1', listId:['838847'], user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'created', visibility:'public', description500: '', descriptionLong3000:'', descriptionShort240:'', note:''})
CREATE (expeditionReturn1:ExpeditionReturn {title: 'expeditionReturn1', listId:['838847'], user:'ncantu', state:false, open:false, motif:'', dateStart:0, dateEnd:0, step:'created', visibility:'public', description500: '', descriptionLong3000:'', descriptionShort240:'', note:''})
CREATE (payBack1:PayBack {title: 'payBack1', listId:['838847'], user:'ncantu', state:false, dateStart:0, dateEnd:0, step:'created', visibility:'public', description500: '', descriptionLong3000:'', descriptionShort240:'', note:''})
CREATE (clientRequest1:ClientRequest  {title: 'clientRequest1', listId:['838847'], user:'ncantu', state:false, dateStart:0, dateEnd:0, step:'created', visibility:'public', description500: '', descriptionLong3000:'', descriptionShort240:'', note:''})
CREATE (shipper1:Shipper  {title: 'shipper1', listId:['838847'], user:'ncantu', state:false, dateStart:0, dateEnd:0, step:'created', visibility:'public', description500: '', descriptionLong3000:'', descriptionShort240:'', note:''})
CREATE (expeditor1:Expeditor  {title: 'expeditor1', listId:['838847'], user:'ncantu', state:false, dateStart:0, dateEnd:0, step:'created', visibility:'public', description500: '', descriptionLong3000:'', descriptionShort240:'', note:''})
CREATE (bank1:Bank  {title: 'bank1', listId:['838847'], user:'ncantu', state:false, dateStart:0, dateEnd:0, step:'created', visibility:'public', description500: '', descriptionLong3000:'', descriptionShort240:'', note:''})
CREATE (bankFacility1:BankFacility  {title: 'bankFacility1', listId:['838847'], user:'ncantu', state:false, dateStart:0, dateEnd:0, step:'created', visibility:'public', description500: '', descriptionLong3000:'', descriptionShort240:'', note:''})
CREATE (clientManager1:ClientManager  {title: 'clientManager1', listId:['838847'], user:'ncantu', state:false, dateStart:0, dateEnd:0, step:'created', visibility:'public', description500: '', descriptionLong3000:'', descriptionShort240:'', note:''})
CREATE (productor1:Productor  {title: 'productor1', listId:['838847'], user:'ncantu', state:false, dateStart:0, dateEnd:0, step:'created', visibility:'public', description500: '', descriptionLong3000:'', descriptionShort240:'', note:''})
CREATE (client1:Client  {title: 'client1', listId:['838847'], user:'ncantu', state:false, dateStart:0, dateEnd:0, step:'created', visibility:'public', description500: '', descriptionLong3000:'', descriptionShort240:'', note:''})
CREATE (hostPublic1:Host {title: 'hostPublic1', ip:'', nameInt:'', nameExt:'', hosting:'gandi', sslCompatibilty: true, listId:['838847'], user:'ncantu', state:false, dateStart:0, dateEnd:0, step:'created', visibility:'public', description500: '', descriptionLong3000:'', descriptionShort240:'', note:''})
CREATE (hostFront1:Host {title: 'hostFront1', ip:'', nameInt:'', nameExt:'', hosting:'gandi', sslCompatibilty: true, listId:['838847'], user:'ncantu', state:false, dateStart:0, dateEnd:0, step:'created', visibility:'public', description500: '', descriptionLong3000:'', descriptionShort240:'', note:''})
CREATE (hostFront2:Host {title: 'hostFront2', ip:'', nameInt:'', nameExt:'', hosting:'gandi', sslCompatibilty: true, listId:['838847'], user:'ncantu', state:false, dateStart:0, dateEnd:0, step:'created', visibility:'public', description500: '', descriptionLong3000:'', descriptionShort240:'', note:''})

CREATE 

	(device1) -[:publish {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (media1),
	(media1) -[:host {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (campaign1),
	(media1) -[:use {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (place1),
	(place1) -[:show {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (resource1),
	(domain1) -[:manage {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (campaign1),
	(campaign1) -[:target {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published1', visibility:'public', note:''}]-> (segment1),
	(segment1) -[:represente {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published1', visibility:'public', note:''}]-> (segment1),
	(segment1) -[:represente {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published1', visibility:'public', note:''}]-> (ncantu),
	(ncantu) -[:collect {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (right1),
	(right1) -[:authorize {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (resource1),
	(right1) -[:authorize {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (action1),
	(right1) -[:authorize {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (state1),
	(ncantu) -[:create {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (resource1),
	(ncantu) -[:access {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (resource1),
	(ncantu) -[:update {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (resource1),
	(ncantu) -[:execute {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (action1),
	(ncantu) -[:change {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (state1),
	(resource1) -[:use {user:'ncantu', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (resource2),
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

	(integrityControler1) -[:controle {user:'integrityControler1', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (resource1),

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

	(fr) -[:localize {user:'localization1', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (campaign1),
	(fr) -[:localize {user:'localization1', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (resource1),
	(fr) -[:localize {user:'localization1', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (domain1),
	(fr) -[:localize {user:'localization1', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (segment1),
	(fr) -[:localize {user:'localization1', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (ncantu),
	(fr) -[:localize {user:'localization1', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (contract1),
	(fr) -[:localize {user:'localization1', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (tag1),
	(fr) -[:localize {user:'localization1', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (place1),
	(fr) -[:localize {user:'localization1', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (quality1),
	(fr) -[:localize {user:'localization1', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (admin),
	(fr) -[:localize {user:'localization1', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (user),
	(fr) -[:localize {user:'localization1', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (analyticScriptCall1),
	(fr) -[:localize {user:'localization1', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (analyticUrlCall1),
	(fr) -[:localize {user:'localization1', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (productCategorie1),
	(fr) -[:localize {user:'localization1', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (product1),
	(fr) -[:localize {user:'localization1', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (price1),
	(fr) -[:localize {user:'localization1', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (stock1),
	(fr) -[:localize {user:'localization1', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (shipping1),
	(fr) -[:localize {user:'localization1', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (order1),
	(fr) -[:localize {user:'localization1', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (bankTransaction1),
	(fr) -[:localize {user:'localization1', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (bill1),
	(fr) -[:localize {user:'localization1', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (expedition1),
	(fr) -[:localize {user:'localization1', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (payBack1),
	(fr) -[:localize {user:'localization1', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (clientRequest1),
	(fr) -[:localize {user:'localization1', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (shipper1),
	(fr) -[:localize {user:'localization1', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (expeditor1),
	(fr) -[:localize {user:'localization1', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (bank1),
	(fr) -[:localize {user:'localization1', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (bankFacility1),
	(fr) -[:localize {user:'localization1', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (clientManager1),
	(fr) -[:localize {user:'localization1', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (productor1),
	(fr) -[:localize {user:'localization1', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (client1),
	(fr) -[:localize {user:'localization1', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (hostPublic1),
	(fr) -[:localize {user:'localization1', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (hostFront1),
	(fr) -[:localize {user:'localization1', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', note:''}]-> (hostFront2),

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
	(history1) -[:historize {user:'localization1', state:true, dateStart:0, dateEnd:0, step:'published', visibility:'public', action:'create', note:''}]-> (right1),
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


	(ncantu) -[:comment {title: '', value:'hello', listId:['838847'], user:'ncantu', state:false, dateStart:0, dateEnd:0, step:'created', visibility:'public', description500: '', descriptionLong3000:'', descriptionShort240:'', note:''}) ]-> (ressource)
	(ncantu) -[:comment {title: '', value:'olleh', listId:['838847'], user:'ncantu', state:false, dateStart:0, dateEnd:0, step:'created', visibility:'public', description500: '', descriptionLong3000:'', descriptionShort240:'', note:''}) ]-> (user1)
	(user1) -[:comment {title: '', value:'hello', listId:['838847'], user:'ncantu', state:false, dateStart:0, dateEnd:0, step:'created', visibility:'public', description500: '', descriptionLong3000:'', descriptionShort240:'', note:''}) ]-> (ncantu)

	(ncantu) -[:note {title: '', value:'note hello', listId:['838847'], user:'ncantu', state:false, dateStart:0, dateEnd:0, step:'created', visibility:'public', description500: '', descriptionLong3000:'', descriptionShort240:'', note:''}) ]-> (ressource)
	(ncantu) -[:note {title: '', value:'note olleh', listId:['838847'], user:'ncantu', state:false, dateStart:0, dateEnd:0, step:'created', visibility:'public', description500: '', descriptionLong3000:'', descriptionShort240:'', note:''}) ]-> (user1)
	(user1) -[:note {title: '', value:'note hello', listId:['838847'], user:'ncantu', state:false, dateStart:0, dateEnd:0, step:'created', visibility:'public', description500: '', descriptionLong3000:'', descriptionShort240:'', note:''}) ]-> (ncantu)
