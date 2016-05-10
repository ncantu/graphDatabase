
MERGE (t:Time {time: '{t_time}', e: '{t_e}'})
ON CREATE SET 
{t_LabelParamList} ,
t.time = '{t_time}' , 
t.u = '{t_u}' , 
t.c = '{t_c}' , 
t.e = '{t_e}' , 
t.i = '{t_i}' , 
t.O = '{t_O}' , 
t.SERVER_REQUEST_TIME = '{t_SERVER_REQUEST_TIME}' , 
ON MATCH SET
{t_LabelParamList}

MERGE (tdy:TimeDayYear {z: '{tdy_z}'})
ON CREATE SET 
{tdy_LabelParamList} , 
tdy.z = '{tdy_z}' , 
ON MATCH SET
{tdy_LabelParamList}

MERGE (tY:TimeYear {Y: '{tY_Y}'})
ON CREATE SET 
{tY_LabelParamList} , 
tY.Y = '{tY_Y}'
ON MATCH SET
{tY_LabelParamList}

MERGE (tmon:TimeMonth {m: '{tmon_m}'})
ON CREATE SET 
{tmon_LabelParamList} , 
tmon.m = '{tmon_m}'
ON MATCH SET
{tmon_LabelParamList}

MERGE (tdm:TimeDayMonth {d: '{tdm_d}'})
ON CREATE SET 
{tdm_LabelParamList} , 
tdm.d = '{tdm_d}'
ON MATCH SET
{tdm_LabelParamList}

MERGE (tH:TimeDayHour {H: '{tH_H}'})
ON CREATE SET 
{tH_LabelParamList}
tH.H = '{tH_H}'
ON MATCH SET
{tH_LabelParamList}

MERGE (tmin:TimeMinute {i: '{tmin_i}'})
ON CREATE SET 
{tmin_LabelParamList} , 
tmin.i = '{tmin_i}'
ON MATCH SET
{tmin_LabelParamList}

MERGE (ts:TimeSecond {s: '{ts_s}'})
ON CREATE SET 
{ts_LabelParamList}
ts.s = '{ts_s}'
ON MATCH SET
{ts_LabelParamList}

MERGE (tdy)-[:DATE]->(t)
MERGE (tY)-[:DATE]->(t)
MERGE (tmon)-[:DATE]->(t)
MERGE (tdm)-[:DATE]->(t)
MERGE (tH)-[:DATE]->(t)
MERGE (tmin)-[:DATE]->(t)
MERGE (ts)-[:DATE]->(t)

MERGE  (evt:Event {sequence: '{evt_sequence}'})
ON CREATE SET 
{evt_LabelParamList}
evt.sequence = '{evt_sequence}'
ON MATCH SET
{evt_LabelParamList}

MERGE  (code:Code {major: '{code_major}', minor: '{code_minor}', level: '{code_level}'})
ON CREATE SET 
{code_LabelParamList} , 
code.major = '{code_major}' ,
code.minor = '{code_minor}' , 
code.level = '{code_level}'
ON MATCH SET
{code_LabelParamList}

MERGE  (req:Request {SERVER_SCRIPT_NAME: '{req_SERVER_SCRIPT_NAME}', SERVER_REQUEST_URI: '{req_SERVER_REQUEST_URI}', SERVER_QUERY_STRING: '{req_SERVER_QUERY_STRING}', 
SERVER_REQUEST_METHOD: '{req_SERVER_REQUEST_METHOD}', SERVER_SERVER_PROTOCOL: '{req_SERVER_SERVER_PROTOCOL}', SERVER_GATEWAY_INTERFACE: '{req_SERVER_GATEWAY_INTERFACE}', 
SERVER_REQUEST_SCHEME: '{req_SERVER_REQUEST_SCHEME}', SERVER_SCRIPT_FILENAME: '{req_SERVER_SCRIPT_FILENAME}', SERVER_SERVER_PORT: '{req_SERVER_SERVER_PORT}', 
SERVER_SERVER_ADDR: '{req_SERVER_SERVER_ADDR}', SERVER_HTTP_ACCEPT_ENCODING: '{req_SERVER_HTTP_ACCEPT_ENCODING}', 
SERVER_HTTP_UPGRADE_INSECURE_REQUESTS: '{req_SERVER_HTTP_UPGRADE_INSECURE_REQUESTS}', SERVER_HTTP_ACCEPT: '{req_SERVER_HTTP_ACCEPT}', SERVER_HTTP_CONNECTION: '{req_SERVER_HTTP_CONNECTION}', 
SERVER_HTTP_HOST: '{req_SERVER_HTTP_HOST}', SERVER_FCGI_ROLE: '{req_SERVER_FCGI_ROLE}', SERVER_PHP_SELF: '{req_SERVER_PHP_SELF}'})
ON CREATE SET 
{req_LabelParamList} , 
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
req.SERVER_PHP_SELF = '{req_SERVER_PHP_SELF}'
ON MATCH SET
{req_LabelParamList}

MERGE (t)-[:DATE]->(evt)
MERGE (code)-[:CATEGORIZE]->(evt)
MERGE (req)-[:GENERATE]->(evt)

MERGE (tr:Trace {cpu: '{tr_cpu}', memory: '{tr_memory}', diskSpace: '{tr_diskSpace}', pid: '{tr_pid}', SERVER_REQUEST_TIME_FLOAT: '{tr_SERVER_REQUEST_TIME_FLOAT}', 
backtrace: '{tr_backtrace_json}'})
ON CREATE SET 
{tr_LabelParamList}
ON MATCH SET
{tr_LabelParamList}

MERGE (bt:BackTrace) 
ON CREATE SET 
{bt_LabelParamList}
ON MATCH SET
{bt_LabelParamList}

MERGE (i:Instance {name: '{i_name}'})
ON CREATE SET 
{i_LabelParamList} , 
i.name = '{i_name}'
ON MATCH SET
{i_LabelParamList}

MERGE (c:Class {name: '{c_name}'})
ON CREATE SET 
{c_LabelParamList} , 
c.name = '{c_name}'
ON MATCH SET
{c_LabelParamList}

MERGE (m:Method {name: '{m_name}'})
ON CREATE SET 
{m_LabelParamList} , 
m.name = '{m_name}'
ON MATCH SET
{m_LabelParamList}

MERGE (l:Line {number: '{l_number}'})
ON CREATE SET 
{l_LabelParamList} , 
l.number = '{l_number}'
ON MATCH SET
{l_LabelParamList}

MERGE (var:Var {json: '{var_json}'})
ON CREATE SET 
{var_LabelParamList} , 
var.json = '{var_json}'
ON MATCH SET
{var_LabelParamList}

MERGE (req)-[:GENERATE]->(tr)
MERGE (tr)-[:TRACE]->(req)
MERGE (tr)-[:TRACE]->(i)
MERGE (tr)-[:TRACE]->(c)
MERGE (tr)-[:TRACE]->(m)
MERGE (tr)-[:TRACE]->(l)
MERGE (tr)-[:TRACE]->(var)
MERGE (bt)-[:HISTORIZE]->(tr)

MERGE  (cf:Conf {json: '{cf_json}'})
ON CREATE SET 
{cf_LabelParamList}
cf.json = '{cf_json}' 
ON MATCH SET
{cf_LabelParamList}

MERGE  (app:Application {name: '{app_name}', id: '{app_id}', mainClass: '{app_mainClass}'})
ON CREATE SET 
{app_LabelParamList} , 
app.name = '{app_name}' , 
app.json = '{app_json}' , 
app.id = '{app_id}' , 
app.mainClass = '{app_mainClass}' , 
app.json = '{app_json}' , 
app.idCryptedT = '{app_idCryptedT}' ,
app.idCryptedS = '{app_idCryptedS}' ,
app.securityLevel = '{app_securityLevel}'
ON MATCH SET
{app_LabelParamList}
app.json = '{app_json}' ,
app.idCryptedT = '{app_idCryptedT}' ,
app.idCryptedS = '{app_idCryptedS}' ,
app.securityLevel = '{app_securityLevel}' ,

MERGE (hApp:HostApp {SERVER_PATH: '{hApp_SERVER_PATH}', SERVER_SYSTEMROOT: '{hApp_SERVER_SYSTEMROOT}', SERVER_COMSPEC: '{hApp_SERVER_COMSPEC}', 
SERVER_PATHEXT: '{hApp_SERVER_PATHEXT}', SERVER_WINDIR: '{hApp_SERVER_WINDIR}', SERVER_SYSTEMDRIVE: '{hApp_SERVER_SYSTEMDRIVE}', SERVER_TEMP: '{hApp_SERVER_TEMP}', 
SERVER_TMP: '{hApp_SERVER_TMP}', SERVER_QT_PLUGIN_PATH: '{hApp_SERVER_QT_PLUGIN_PATH}', SERVER_PHPRC: '{hApp_SERVER_PHPRC}', 
SERVER_PHP_FCGI_MAX_REQUESTS: '{hApp_SERVER_PHP_FCGI_MAX_REQUESTS}', SERVER__FCGI_SHUTDOWN_EVENT_: '{hApp_SERVER__FCGI_SHUTDOWN_EVENT_}', SERVER_DOCUMENT_ROOT: '{hApp_SERVER_DOCUMENT_ROOT}', 
SERVER_SERVER_NAME: '{hApp_SERVER_SERVER_NAME}', SERVER_CONTEXT_PREFIX: '{hApp_SERVER_CONTEXT_PREFIX}', SERVER_SERVER_SOFTWARE: '{hApp_SERVER_SERVER_SOFTWARE}', 
SERVER_SERVER_SIGNATURE: '{hApp_SERVER_SERVER_SIGNATURE}', SERVER_CONTEXT_DOCUMENT_ROOT: '{hApp_SERVER_CONTEXT_DOCUMENT_ROOT}', SERVER_SystemRoot: '{hApp_SERVER_SystemRoot}', 
json: '{hApp_json}'})
ON CREATE SET 
{hApp_LabelParamList} , 
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
hApp.json = '{hApp_json}'  
ON MATCH SET
{hApp_LabelParamList}

MERGE (env:Evironnement {name: '{env_name}', SERVER_SERVER_ADMIN: '{env_SERVER_SERVER_ADMIN}'})
ON CREATE SET 
{env_LabelParamList} , 
env.created = '{env_name}' 
ON MATCH SET 
{env_LabelParamList} , 
env.SERVER_SERVER_ADMIN = '{env_SERVER_SERVER_ADMIN}'


MERGE (t)-[:TRACE]->(app)
MERGE (cf)-[:CONFIGURE]->(app)
MERGE (env)-[:SPONSORIZE]->(hApp)
MERGE (hApp)-[:HOST]->(app)

MERGE (u:User {name: '{u_name}', securityLevel: '{u_securityLevel}', id: '{u_id}'})
ON CREATE SET 
{u_LabelParamList} , 
u.name = '{u_name}' ,
u.id = '{u_id}' ,
u.id = '{u_id}' ,
u.json = '{u_json}' , 
u.idCryptedT = '{u_idCryptedT}' ,
u.idCryptedS = '{u_idCryptedS}' ,
u.securityLevel = '{u_securityLevel}'
ON MATCH SET
{u_LabelParamList} , 
u.json = '{u_json}' ,
u.idCryptedT = '{u_idCryptedT}' ,
u.idCryptedS = '{u_idCryptedS}' ,
u.securityLevel = '{u_securityLevel}' 

MERGE (uh:UserHistory)
ON CREATE SET 
{uh_LabelParamList}
ON MATCH SET 
{uh_LabelParamList}

MERGE (hClient:HostClient {SERVER_REMOTE_PORT: '{hClient_SERVER_REMOTE_PORT}', SERVER_REMOTE_ADDR: '{hClient_SERVER_REMOTE_ADDR}', SERVER_HTTP_USER_AGENT: '{hClient_SERVER_HTTP_USER_AGENT}'})
ON CREATE SET 
{hClient_LabelParamList} ,
hClient.SERVER_REMOTE_PORT = '{hClient_SERVER_REMOTE_PORT}' ,  
hClient.SERVER_REMOTE_ADDR = '{hClient_SERVER_REMOTE_ADDR}' , 
hClient.SERVER_HTTP_USER_AGENT = '{hClient_SERVER_HTTP_USER_AGENT}'
ON MATCH SET
{hClient_LabelParamList}

MERGE (ss:Session {id:'{ss_id}', userId:'{ss_userId}', appId:'{ss_appId}'})
ON CREATE SET 
{ss_LabelParamList} , 
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
ON MATCH SET 
{ss_LabelParamList} , 
ss.startTime = '{ss_startTime}' , 
ss.endTime = '{ss_endTime}' , 
ss.SERVER_HTTP_COOKIE = '{ss_SERVER_HTTP_COOKIE}' , 
ss.idCryptedT = '{ss_idCryptedT}' , 
ss.idCryptedS = '{ss_idCryptedS}' , 
ss.SESSION_JSON = '{ss_SESSION_JSON}' , 
ss.json = '{ss_json}' ,

MERGE (ssClient:SessionClient {userIdCryptedS: '{ssClient_userIdCryptedS}', userIdCryptedT: '{ssClient_userIdCryptedT}'})
ON CREATE SET 
{ssClient_LabelParamList} , 
ssClient.userIdCryptedS = '{ssClient_userIdCryptedS}' ,
ssClient.userIdCryptedT = '{ssClient_userIdCryptedT}' 
ON MATCH SET
{ssClient_LabelParamList}

MERGE (ssApp:SessionApp {appIdCryptedS: '{ssApp_appIdCryptedS}', appIdCryptedT: '{ssApp_appIdCryptedT}'})
ON CREATE SET 
{ssApp_LabelParamList} , 
ssApp.appIdCryptedS = '{ssApp_appIdCryptedS}' ,
ssApp.appIdCryptedT = '{ssApp_appIdCryptedT}'  , 
ON MATCH SET
{ssApp_LabelParamList}

MERGE (mock:Mock {name: '{mock_name}'})
ON CREATE SET 
{mock_LabelParamList} , 
mock.userIdCryptedS = '{mock_userIdCryptedS}' ,
mock.appIdCryptedS = '{mock_appIdCryptedS}' , 
mock.state = '{mock_state}' , 
mock.name = '{mock_name}' , 
mock.mockJson = '{mock_json}'  , 
ON MATCH SET 
{mock_LabelParamList} , 
mock.userIdCryptedS = '{mock_userIdCryptedS}' ,
mock.appIdCryptedS = '{mock_appIdCryptedS}' , 
mock.state = '{mock_state}' ,
mock.mockJson = '{mock_json}' ,

MERGE (u)-[:CALL]->(req)
MERGE (ss)-[:MAINTAIN]->(ssClient)
MERGE (ss)-[:MAINTAIN]->(ssApp)
MERGE (ssClient)-[:AUTORIZE]->(u)
MERGE (ssApp)-[:ACCESS]->(app)
MERGE (mock)-[:MOCK]->(u)
MERGE (uh)-[:HISTORIZE]->(u)
