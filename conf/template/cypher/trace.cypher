
MERGE (t:Time {time: '{t_time}', e: '{t_e}'})
ON CREATE SET 
t.time = '{t_time}' , 
t.u = '{t_u}' , 
t.c = '{t_c}' , 
t.e = '{t_e}' , 
t.i = '{t_i}' , 
t.O = '{t_O}' , 
t.SERVER_REQUEST_TIME = '{t_SERVER_REQUEST_TIME}' , 
t.dateCreated = timestamp()
ON MATCH SET
t.dateMatchLast = timestamp()

MERGE (tdy:TimeDayYear {z: '{tdy_z}'})
ON CREATE SET 
tdy.z = '{tdy_z}' , 
tdy.dateCreated = timestamp()
ON MATCH SET
tdy.dateMatchLast = timestamp()

MERGE (tY:TimeYear {Y: '{tY_Y}'})
ON CREATE SET 
tY.Y = '{tY_Y}' , 
tY.dateCreated = timestamp()
ON MATCH SET
tY.dateMatchLast = timestamp()

MERGE (tmon:TimeMonth {m: '{tmon_m}'})
ON CREATE SET 
tmon.m = '{tmon_m}' , 
tmon.dateCreated = timestamp()
ON MATCH SET
tmon.dateMatchLast = timestamp()

MERGE (tdm:TimeDayMonth {d: '{tdm_d}'})
ON CREATE SET 
tdm.d = '{tdm_d}' , 
tdm.dateCreated = timestamp()
ON MATCH SET
tdm.dateMatchLast = timestamp()

MERGE (tH:TimeDayHour {H: '{tH_H}'})
ON CREATE SET 
tH.H = '{tH_H}' , 
tH.dateCreated = timestamp()
ON MATCH SET
tH.dateMatchLast = timestamp()

MERGE (tmin:TimeMinute {i: '{tmin_i}'})
ON CREATE SET 
tmin.i = '{tmin_i}' , 
tmin.dateCreated = timestamp()
ON MATCH SET
tmin.dateMatchLast = timestamp()

MERGE (ts:TimeSecond {s: '{ts_s}'})
ON CREATE SET 
ts.s = '{ts_s}' , 
ts.dateCreated = timestamp()
ON MATCH SET
ts.dateMatchLast = timestamp()

MERGE (tdy)-[:DATE]->(t)
MERGE (tY)-[:DATE]->(t)
MERGE (tmon)-[:DATE]->(t)
MERGE (tdm)-[:DATE]->(t)
MERGE (tH)-[:DATE]->(t)
MERGE (tmin)-[:DATE]->(t)
MERGE (ts)-[:DATE]->(t)

MERGE  (evt:Event {sequence: '{evt_sequence}'})
ON CREATE SET 
evt.sequence = '{evt_sequence}' , 
evt.dateCreated = timestamp()
ON MATCH SET
evt.dateMatchLast = timestamp()

MERGE  (code:Code {major: '{code_major}', minor: '{code_minor}', level: '{code_level}'})
ON CREATE SET 
code.major = '{code_major}' ,
code.minor = '{code_minor}' , 
code.level = '{code_level}' , 
code.dateCreated = timestamp()
ON MATCH SET
code.dateMatchLast = timestamp()

MERGE  (req:Request {SERVER_SCRIPT_NAME: '{req_SERVER_SCRIPT_NAME}', SERVER_REQUEST_URI: '{req_SERVER_REQUEST_URI}', SERVER_QUERY_STRING: '{req_SERVER_QUERY_STRING}', 
SERVER_REQUEST_METHOD: '{req_SERVER_REQUEST_METHOD}', SERVER_SERVER_PROTOCOL: '{req_SERVER_SERVER_PROTOCOL}', SERVER_GATEWAY_INTERFACE: '{req_SERVER_GATEWAY_INTERFACE}', 
SERVER_REQUEST_SCHEME: '{req_SERVER_REQUEST_SCHEME}', SERVER_SCRIPT_FILENAME: '{req_SERVER_SCRIPT_FILENAME}', SERVER_SERVER_PORT: '{req_SERVER_SERVER_PORT}', 
SERVER_SERVER_ADDR: '{req_SERVER_SERVER_ADDR}', SERVER_HTTP_ACCEPT_ENCODING: '{req_SERVER_HTTP_ACCEPT_ENCODING}', 
SERVER_HTTP_UPGRADE_INSECURE_REQUESTS: '{req_SERVER_HTTP_UPGRADE_INSECURE_REQUESTS}', SERVER_HTTP_ACCEPT: '{req_SERVER_HTTP_ACCEPT}', SERVER_HTTP_CONNECTION: '{req_SERVER_HTTP_CONNECTION}', 
SERVER_HTTP_HOST: '{req_SERVER_HTTP_HOST}', SERVER_FCGI_ROLE: '{req_SERVER_FCGI_ROLE}', SERVER_PHP_SELF: '{req_SERVER_PHP_SELF}'})
ON CREATE SET 
req.SERVER_SCRIPT_NAME = '{req_SERVER_SCRIPT_NAME}' ,
req.SERVER_REQUEST_URI = '{req_SERVER_REQUEST_URI}' , 
req.SERVER_QUERY_STRING = '{req_SERVER_QUERY_STRING}' , 
req.SERVER_REQUEST_METHOD = '{req_SERVER_REQUEST_METHOD}' , 
req.SERVER_SERVER_PROTOCOL = '{req_SERVER_SERVER_PROTOCOL}' , 
req.SERVER_GATEWAY_INTERFACE = '{req_SERVER_GATEWAY_INTERFACE}' , 
req.SERVER_SERVER_ADDR = '{req_SERVER_SERVER_ADDR}' , 
req.SERVER_HTTP_ACCEPT_ENCODING = '{req_SERVER_HTTP_ACCEPT_ENCODING}' , 
req.SERVER_HTTP_UPGRADE_INSECURE_REQUESTS = '{req_SERVER_HTTP_UPGRADE_INSECURE_REQUESTS}' , 
req.SERVER_HTTP_ACCEPT = '{req_SERVER_HTTP_ACCEPT}' , 
req.SERVER_HTTP_CONNECTION = '{req_SERVER_HTTP_CONNECTION}' , 
req.SERVER_HTTP_HOST = '{req_SERVER_HTTP_HOST}' , 
req.SERVER_FCGI_ROLE = '{req_SERVER_FCGI_ROLE}' , 
req.SERVER_PHP_SELF = '{req_SERVER_PHP_SELF}' , 
req.dateCreated = timestamp()
ON MATCH SET
req.dateMatchLast = timestamp()

MERGE (t)-[:DATE]->(evt)
MERGE (code)-[:CATEGORIZE]->(evt)
MERGE (req)-[:GENERATE]->(evt)

MERGE (tr:Trace {cpu: '{tr_cpu}', memory: '{tr_memory}', diskSpace: '{tr_diskSpace}', pid: '{tr_pid}', SERVER_REQUEST_TIME_FLOAT: '{tr_SERVER_REQUEST_TIME_FLOAT}', 
backtrace: '{tr_backtrace_json}'})
ON CREATE SET 
tr.dateCreated = timestamp()
ON MATCH SET
tr.dateMatchLast = timestamp()

MERGE (bt:BackTrace) 
ON CREATE SET 
bt.dateCreated = timestamp()
ON MATCH SET
bt.dateMatchLast = timestamp()

MERGE (i:Instance {name: '{i_name}'})
ON CREATE SET 
i.name = '{i_name}' , 
i.dateCreated = timestamp()
ON MATCH SET
i.dateMatchLast = timestamp()

MERGE (c:Class {name: '{c_name}'})
ON CREATE SET 
c.name = '{c_name}' , 
c.dateCreated = timestamp()
ON MATCH SET
c.dateMatchLast = timestamp()

MERGE (m:Method {name: '{m_name}'})
ON CREATE SET 
m.name = '{m_name}', 
m.dateCreated = timestamp()
ON MATCH SET
m.dateMatchLast = timestamp()

MERGE (l:Line {number: '{l_number}'})
ON CREATE SET 
l.number = '{l_number}', 
l.dateCreated = timestamp()
ON MATCH SET
l.dateMatchLast = timestamp()

MERGE (var:Var {json: '{var_json}'})
ON CREATE SET 
var.json = '{var_json}', 
var.dateCreated = timestamp()
ON MATCH SET
var.dateMatchLast = timestamp()

MERGE (req)-[:GENERATE]->(tr)
MERGE (tr)-[:TRACE]->(req)
MERGE (tr)-[:TRACE]->(i)
MERGE (tr)-[:TRACE]->(c)
MERGE (tr)-[:TRACE]->(m)
MERGE (tr)-[:TRACE]->(l)
MERGE (tr)-[:TRACE]->(var)
MERGE (bt)-[:HISTORIZE]->(tr)

MERGE  (cf:Conf {json: '{cf_json}'})
ON CREATE 
SET cf.json = '{cf_json}' , 
cf.dateCreated = timestamp()
ON MATCH SET
cf.dateMatchLast = timestamp()

MERGE  (app:Application {name: '{app_name}', id: '{app_id}', mainClass: '{app_mainClass}'})
ON CREATE SET 
app.name = '{app_name}' , 
app.json = '{app_json}' , 
app.id = '{app_id}' , 
app.mainClass = '{app_mainClass}' , 
app.json = '{app_json}' , 
app.idCryptedT = '{app_idCryptedT}' ,
app.idCryptedS = '{app_idCryptedS}' ,
app.securityLevel = '{app_securityLevel}' , 
app.dateCreated = timestamp()
ON MATCH SET
app.json = '{app_json}' ,
app.idCryptedT = '{app_idCryptedT}' ,
app.idCryptedS = '{app_idCryptedS}' ,
app.securityLevel = '{app_securityLevel}' ,
app.dateMatchLast = timestamp()

MERGE (hApp:HostApp {SERVER_PATH: '{hApp_SERVER_PATH}', SERVER_SYSTEMROOT: '{hApp_SERVER_SYSTEMROOT}', SERVER_COMSPEC: '{hApp_SERVER_COMSPEC}', 
SERVER_PATHEXT: '{hApp_SERVER_PATHEXT}', SERVER_WINDIR: '{hApp_SERVER_WINDIR}', SERVER_SYSTEMDRIVE: '{hApp_SERVER_SYSTEMDRIVE}', SERVER_TEMP: '{hApp_SERVER_TEMP}', 
SERVER_TMP: '{hApp_SERVER_TMP}', SERVER_QT_PLUGIN_PATH: '{hApp_SERVER_QT_PLUGIN_PATH}', SERVER_PHPRC: '{hApp_SERVER_PHPRC}', 
SERVER_PHP_FCGI_MAX_REQUESTS: '{hApp_SERVER_PHP_FCGI_MAX_REQUESTS}', SERVER__FCGI_SHUTDOWN_EVENT_: '{hApp_SERVER__FCGI_SHUTDOWN_EVENT_}', SERVER_DOCUMENT_ROOT: '{hApp_SERVER_DOCUMENT_ROOT}', 
SERVER_SERVER_NAME: '{hApp_SERVER_SERVER_NAME}', SERVER_CONTEXT_PREFIX: '{hApp_SERVER_CONTEXT_PREFIX}', SERVER_SERVER_SOFTWARE: '{hApp_SERVER_SERVER_SOFTWARE}', 
SERVER_SERVER_SIGNATURE: '{hApp_SERVER_SERVER_SIGNATURE}', SERVER_CONTEXT_DOCUMENT_ROOT: '{hApp_SERVER_CONTEXT_DOCUMENT_ROOT}', SERVER_SystemRoot: '{hApp_SERVER_SystemRoot}', 
json: '{hApp_json}'})
ON CREATE SET 
hApp.SERVER_PATH = '{hApp_SERVER_PATH}' ,
hApp.SERVER_SYSTEMROOT = '{hApp_SERVER_SYSTEMROOT}' ,
hApp.SERVER_COMSPEC = '{hApp_SERVER_COMSPEC}' ,
hApp.SERVER_PATHEXT = '{hApp_SERVER_PATHEXT}' ,
hApp.SERVER_WINDIR = '{hApp_SERVER_WINDIR}' ,
hApp.SERVER_SYSTEMDRIVE = '{hApp_SERVER_SYSTEMDRIVE}' ,
hApp.SERVER_TEMP = '{hApp_SERVER_TEMP}' ,
hApp.SERVER_TMP = '{hApp_SERVER_TMP}' ,
hApp.SERVER_QT_PLUGIN_PATH = '{hApp_SERVER_QT_PLUGIN_PATH}' ,
hApp.SERVER_PHPRC = '{hApp_SERVER_PHPRC}' ,
hApp.SERVER_PHP_FCGI_MAX_REQUESTS = '{hApp_SERVER_PHP_FCGI_MAX_REQUESTS}' ,
hApp.SERVER__FCGI_SHUTDOWN_EVENT_ = '{hApp_SERVER_PATH}' ,
hApp.SERVER_DOCUMENT_ROOT = '{hApp_SERVER_DOCUMENT_ROOT}' ,
hApp.SERVER_SERVER_NAME = '{hApp_SERVER_SERVER_NAME}' ,
hApp.SERVER_CONTEXT_PREFIX = '{hApp_SERVER_PATH}' ,
hApp.SERVER_CONTEXT_PREFIX = '{hApp_SERVER_CONTEXT_PREFIX}' ,
hApp.SERVER_SERVER_SOFTWARE = '{hApp_SERVER_SERVER_SOFTWARE}' ,
hApp.SERVER_SERVER_SIGNATURE = '{hApp_SERVER_SERVER_SIGNATURE}' ,
hApp.SERVER_CONTEXT_DOCUMENT_ROOT = '{hApp_SERVER_CONTEXT_DOCUMENT_ROOT}' ,
hApp.SERVER_SystemRoot = '{hApp_SERVER_SystemRoot}' ,
hApp.SERVER_PATH = '{hApp_SERVER_PATH}' ,
hApp.json = '{hApp_json}'  , 
hApp.dateCreated = timestamp()
ON MATCH SET
hApp.dateMatchLast = timestamp()

MERGE (env:Evironnement {name: '{env_name}', SERVER_SERVER_ADMIN: '{env_SERVER_SERVER_ADMIN}'})
ON CREATE SET 
env.created = '{env_name}'  , 
env.dateCreated = timestamp()
ON MATCH SET 
env.SERVER_SERVER_ADMIN = '{env_SERVER_SERVER_ADMIN}' ,
env.dateMatchLast = timestamp()

MERGE (t)-[:TRACE]->(app)
MERGE (cf)-[:CONFIGURE]->(app)
MERGE (env)-[:SPONSORIZE]->(hApp)
MERGE (hApp)-[:HOST]->(app)

MERGE (u:User {name: '{u_name}', securityLevel: '{u_securityLevel}', id: '{u_id}'})
ON CREATE SET 
u.name = '{u_name}' ,
u.id = '{u_id}' ,
u.id = '{u_id}' ,
u.json = '{u_json}' , 
u.idCryptedT = '{u_idCryptedT}' ,
u.idCryptedS = '{u_idCryptedS}' ,
u.securityLevel = '{u_securityLevel}'
ON MATCH SET
u.json = '{u_json}' ,
u.idCryptedT = '{u_idCryptedT}' ,
u.idCryptedS = '{u_idCryptedS}' ,
u.securityLevel = '{u_securityLevel}' , 
u.dateCreated = timestamp()
ON MATCH SET
u.dateMatchLast = timestamp()

MERGE (uh:UserHistory)
ON CREATE SET 
uh.created = timestamp()
ON MATCH SET 
uh.dateMatchLast = timestamp()

MERGE (hClient:HostClient {SERVER_REMOTE_PORT: '{hClient_SERVER_REMOTE_PORT}', SERVER_REMOTE_ADDR: '{hClient_SERVER_REMOTE_ADDR}', SERVER_HTTP_USER_AGENT: '{hClient_SERVER_HTTP_USER_AGENT}'})
ON CREATE SET 
hClient.SERVER_REMOTE_PORT = '{hClient_SERVER_REMOTE_PORT}' ,  
hClient.SERVER_REMOTE_ADDR = '{hClient_SERVER_REMOTE_ADDR}' , 
hClient.SERVER_HTTP_USER_AGENT = '{hClient_SERVER_HTTP_USER_AGENT}' , 
hClient.dateCreated = timestamp()
ON MATCH SET
hClient.dateMatchLast = timestamp()

MERGE (ss:Session {id:'{ss_id}', userId:'{ss_userId}', appId:'{ss_appId}'})
ON CREATE SET 
ss.id = '{ss_id}' ,
ss.startTime = '{ss_startTime}' , 
ss.endTime = '{ss_endTime}' , 
ss.SERVER_HTTP_COOKIE = '{ss_SERVER_HTTP_COOKIE}' , 
ss.idCryptedT = '{ss_idCryptedT}' , 
ss.idCryptedS = '{ss_idCryptedS}' , 
ss.SESSION_JSON = '{ss_SESSION_JSON}' , 
ss.json = '{ss_json}' ,
ss.userId = '{ss_userId}' ,
ss.appId = '{ss_appId}' , 
ss.dateCreated = timestamp()
ON MATCH SET 
ss.startTime = '{ss_startTime}' , 
ss.endTime = '{ss_endTime}' , 
ss.SERVER_HTTP_COOKIE = '{ss_SERVER_HTTP_COOKIE}' , 
ss.idCryptedT = '{ss_idCryptedT}' , 
ss.idCryptedS = '{ss_idCryptedS}' , 
ss.SESSION_JSON = '{ss_SESSION_JSON}' , 
ss.json = '{ss_json}' ,
ss.dateMatchLast = timestamp()

MERGE (ssClient:SessionClient {userIdCryptedS: '{ssClient_userIdCryptedS}', userIdCryptedT: '{ssClient_userIdCryptedT}'})
ON CREATE SET 
ssClient.userIdCryptedS = '{ssClient_userIdCryptedS}' ,
ssClient.userIdCryptedT = '{ssClient_userIdCryptedT}'  , 
ssClient.dateCreated = timestamp()
ON MATCH SET
ssClient.dateMatchLast = timestamp()

MERGE (ssApp:SessionApp {appIdCryptedS: '{ssApp_appIdCryptedS}', appIdCryptedT: '{ssApp_appIdCryptedT}'})
ON CREATE SET 
ssApp.appIdCryptedS = '{ssApp_appIdCryptedS}' ,
ssApp.appIdCryptedT = '{ssApp_appIdCryptedT}'  , 
ssApp.dateCreated = timestamp()
ON MATCH SET
ssApp.dateMatchLast = timestamp()

MERGE (mock:Mock {name: '{mock_name}'})
ON CREATE SET 
mock.userIdCryptedS = '{mock_userIdCryptedS}' ,
mock.appIdCryptedS = '{mock_appIdCryptedS}' , 
mock.state = '{mock_state}' , 
mock.name = '{mock_name}' , 
mock.mockJson = '{mock_json}'  , 
mock.dateCreated = timestamp()
ON MATCH SET 
mock.userIdCryptedS = '{mock_userIdCryptedS}' ,
mock.appIdCryptedS = '{mock_appIdCryptedS}' , 
mock.state = '{mock_state}' ,
mock.mockJson = '{mock_json}' ,
mock.dateMatchLast = timestamp()

MERGE (u)-[:CALL]->(req)
MERGE (ss)-[:MAINTAIN]->(ssClient)
MERGE (ss)-[:MAINTAIN]->(ssApp)
MERGE (ssClient)-[:AUTORIZE]->(u)
MERGE (ssApp)-[:ACCESS]->(app)
MERGE (mock)-[:MOCK]->(u)
MERGE (uh)-[:HISTORIZE]->(u)