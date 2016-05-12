
// ************************************************
// TIME PART
// ************************************************

// NODES

MERGE (t:Time {time: '{t_time}', e: '{t_e}'})
ON CREATE SET 
{t_createLabelParamList} ,
t.time = '{t_time}' , 
t.u = '{t_u}' , 
t.c = '{t_c}' , 
t.e = '{t_e}' , 
t.i = '{t_i}' , 
t.O = '{t_O}' , 
t.SERVER_REQUEST_TIME = '{t_SERVER_REQUEST_TIME}' 
ON MATCH SET
{t_matchLabelParamList}

MERGE (tdy:TimeDayYear {z: '{tdy_z}'})
ON CREATE SET 
{tdy_createLabelParamList} , 
tdy.z = '{tdy_z}' 
ON MATCH SET
{tdy_matchLabelParamList}

MERGE (tY:TimeYear {Y: '{tY_Y}'})
ON CREATE SET 
{tY_createLabelParamList} , 
tY.Y = '{tY_Y}'
ON MATCH SET
{tY_matchLabelParamList}

MERGE (tmon:TimeMonth {m: '{tmon_m}'})
ON CREATE SET 
{tmon_createLabelParamList} , 
tmon.m = '{tmon_m}'
ON MATCH SET
{tmon_matchLabelParamList}

MERGE (tdm:TimeDayMonth {d: '{tdm_d}'})
ON CREATE SET 
{tdm_createLabelParamList} , 
tdm.d = '{tdm_d}'
ON MATCH SET
{tdm_matchLabelParamList}

MERGE (tH:TimeDayHour {H: '{tH_H}'})
ON CREATE SET 
{tH_createLabelParamList} ,
tH.H = '{tH_H}'
ON MATCH SET
{tH_matchLabelParamList}

MERGE (tmin:TimeMinute {i: '{tmin_i}'})
ON CREATE SET 
{tmin_createLabelParamList} , 
tmin.i = '{tmin_i}'
ON MATCH SET
{tmin_matchLabelParamList}

MERGE (ts:TimeSecond {s: '{ts_s}'})
ON CREATE SET 
{ts_createLabelParamList} , 
ts.s = '{ts_s}'
ON MATCH SET
{ts_matchLabelParamList}

// RELATIONSHIPS

MERGE (tdy)-[tdy_t:DATE]->(t)
ON CREATE SET 
{tdy_t_createcypherRelationshipParamList} 
ON MATCH SET 
{tdy_t_matchcypherRelationshipParamList}

MERGE (tY)-[ty_t:DATE]->(t)
ON CREATE SET 
{ty_t_createcypherRelationshipParamList} 
ON MATCH SET 
{ty_t_matchcypherRelationshipParamList}

MERGE (tmon)-[dmon_t:DATE]->(t)
ON CREATE SET 
{dmon_t_createcypherRelationshipParamList} 
ON MATCH SET 
{dmon_t_matchcypherRelationshipParamList}

MERGE (tdm)-[tdm_t:DATE]->(t)
ON CREATE SET 
{tdm_t_createcypherRelationshipParamList} 
ON MATCH SET 
{tdm_t_matchcypherRelationshipParamList}

MERGE (tH)-[tH_t:DATE]->(t)
ON CREATE SET 
{tH_t_createcypherRelationshipParamList} 
ON MATCH SET 
{tH_t_matchcypherRelationshipParamList}

MERGE (tmin)-[tmin_t:DATE]->(t)
ON CREATE SET 
{tmin_t_createcypherRelationshipParamList} 
ON MATCH SET 
{tmin_t_matchcypherRelationshipParamList}

MERGE (ts)-[ts_t:DATE]->(t)
ON CREATE SET 
{ts_t_createcypherRelationshipParamList} 
ON MATCH SET 
{ts_t_matchcypherRelationshipParamList}


// ************************************************
// EVENT PART
// ************************************************

// NODES

MERGE  (evt:Event {sequence: '{evt_sequence}'})
ON CREATE SET 
{evt_createLabelParamList} , 
evt.sequence = '{evt_sequence}'
ON MATCH SET
{evt_matchLabelParamList}

MERGE  (code:Code {major: '{code_major}', minor: '{code_minor}', level: '{code_level}'})
ON CREATE SET 
{code_createLabelParamList} , 
code.major = '{code_major}' ,
code.minor = '{code_minor}' , 
code.level = '{code_level}'
ON MATCH SET
{code_matchLabelParamList}

MERGE  (req:Request {SERVER_SCRIPT_NAME: '{req_SERVER_SCRIPT_NAME}', SERVER_REQUEST_URI: '{req_SERVER_REQUEST_URI}', SERVER_QUERY_STRING: '{req_SERVER_QUERY_STRING}', 
SERVER_REQUEST_METHOD: '{req_SERVER_REQUEST_METHOD}', SERVER_SERVER_PROTOCOL: '{req_SERVER_SERVER_PROTOCOL}', SERVER_GATEWAY_INTERFACE: '{req_SERVER_GATEWAY_INTERFACE}', 
SERVER_REQUEST_SCHEME: '{req_SERVER_REQUEST_SCHEME}', SERVER_SCRIPT_FILENAME: '{req_SERVER_SCRIPT_FILENAME}', SERVER_SERVER_PORT: '{req_SERVER_SERVER_PORT}', 
SERVER_SERVER_ADDR: '{req_SERVER_SERVER_ADDR}', SERVER_HTTP_ACCEPT_ENCODING: '{req_SERVER_HTTP_ACCEPT_ENCODING}', 
SERVER_HTTP_UPGRADE_INSECURE_REQUESTS: '{req_SERVER_HTTP_UPGRADE_INSECURE_REQUESTS}', SERVER_HTTP_ACCEPT: '{req_SERVER_HTTP_ACCEPT}', SERVER_HTTP_CONNECTION: '{req_SERVER_HTTP_CONNECTION}', 
SERVER_HTTP_HOST: '{req_SERVER_HTTP_HOST}', SERVER_FCGI_ROLE: '{req_SERVER_FCGI_ROLE}', SERVER_PHP_SELF: '{req_SERVER_PHP_SELF}'})
ON CREATE SET 
{req_createLabelParamList} , 
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
{req_matchLabelParamList}

// RELATIONSHIPS

MERGE (t)-[t_evt:DATE]->(evt)
ON CREATE SET 
{t_evt_createcypherRelationshipParamList} 
ON MATCH SET 
{t_evt_matchcypherRelationshipParamList}

MERGE (code)-[code_evt:CATEGORIZE]->(evt)
ON CREATE SET 
{code_evt_createcypherRelationshipParamList} 
ON MATCH SET 
{code_evt_matchcypherRelationshipParamList}

MERGE (req)-[req_evt:GENERATE]->(evt)
ON CREATE SET 
{req_evt_createcypherRelationshipParamList} 
ON MATCH SET 
{req_evt_matchcypherRelationshipParamList}


// ************************************************
// CODE PART
// ************************************************

// NODES

MERGE (tr:Trace {cpu: '{tr_cpu}', memory: '{tr_memory}', diskSpace: '{tr_diskSpace}', pid: '{tr_pid}', SERVER_REQUEST_TIME_FLOAT: '{tr_SERVER_REQUEST_TIME_FLOAT}', 
backtrace: '{tr_backtrace_json}'})
ON CREATE SET 
{tr_createLabelParamList}
ON MATCH SET
{tr_matchLabelParamList}

MERGE (bt:BackTrace) 
ON CREATE SET 
{bt_createLabelParamList}
ON MATCH SET
{bt_matchLabelParamList}

MERGE (i:Instance {name: '{i_name}'})
ON CREATE SET 
{i_createLabelParamList} , 
i.name = '{i_name}'
ON MATCH SET
{i_matchLabelParamList}

MERGE (c:Class {name: '{c_name}'})
ON CREATE SET 
{c_createLabelParamList} , 
c.name = '{c_name}'
ON MATCH SET
{c_matchLabelParamList}

MERGE (m:Method {name: '{m_name}'})
ON CREATE SET 
{m_createLabelParamList} , 
m.name = '{m_name}'
ON MATCH SET
{m_matchLabelParamList}

MERGE (l:Line {number: '{l_number}'})
ON CREATE SET 
{l_createLabelParamList} , 
l.number = '{l_number}'
ON MATCH SET
{l_matchLabelParamList}

MERGE (var:Var {json: '{var_json}'})
ON CREATE SET 
{var_createLabelParamList} , 
var.json = '{var_json}'
ON MATCH SET
{var_matchLabelParamList}

// RELATIONSHIPS

MERGE (req)-[req_tr:GENERATE]->(tr)
ON CREATE SET 
{req_tr_createcypherRelationshipParamList} 
ON MATCH SET 
{req_tr_matchcypherRelationshipParamList}

MERGE (tr)-[tr_reg:TRACE]->(req)
ON CREATE SET 
{tr_reg_createcypherRelationshipParamList} 
ON MATCH SET 
{tr_reg_matchcypherRelationshipParamList}

MERGE (tr)-[tr_i:TRACE]->(i)
ON CREATE SET 
{tr_i_createcypherRelationshipParamList} 
ON MATCH SET 
{tr_i_matchcypherRelationshipParamList}

MERGE (tr)-[tr_c:TRACE]->(c)
ON CREATE SET 
{tr_c_createcypherRelationshipParamList} 
ON MATCH SET 
{tr_c_matchcypherRelationshipParamList}

MERGE (tr)-[tr_m:TRACE]->(m)
ON CREATE SET 
{tr_m_createcypherRelationshipParamList} 
ON MATCH SET 
{tr_m_matchcypherRelationshipParamList}

MERGE (tr)-[tr_l:TRACE]->(l)
ON CREATE SET 
{tr_l_createcypherRelationshipParamList} 
ON MATCH SET 
{tr_l_matchcypherRelationshipParamList}

MERGE (tr)-[tr_var:TRACE]->(var)
ON CREATE SET 
{tr_var_createcypherRelationshipParamList} 
ON MATCH SET 
{tr_var_matchcypherRelationshipParamList}

MERGE (bt)-[bt_tr:HISTORIZE]->(tr)
ON CREATE SET 
{bt_tr_createcypherRelationshipParamList} 
ON MATCH SET 
{bt_tr_matchcypherRelationshipParamList}


// ************************************************
// APPLICATION PART
// ************************************************

// NODES

MERGE  (cf:Conf {json: '{cf_json}'})
ON CREATE SET 
{cf_createLabelParamList} ,
cf.json = '{cf_json}' 
ON MATCH SET
{cf_matchLabelParamList}

MERGE  (app:Application {name: '{app_name}', id: '{app_id}', mainClass: '{app_mainClass}'})
ON CREATE SET 
{app_createLabelParamList} , 
app.name = '{app_name}' , 
app.json = '{app_json}' , 
app.id = '{app_id}' , 
app.mainClass = '{app_mainClass}' , 
app.json = '{app_json}' , 
app.idCryptedT = '{app_idCryptedT}' ,
app.idCryptedS = '{app_idCryptedS}' ,
app.securityLevel = '{app_securityLevel}'
ON MATCH SET
{app_matchLabelParamList} ,
app.json = '{app_json}' ,
app.idCryptedT = '{app_idCryptedT}' ,
app.idCryptedS = '{app_idCryptedS}' ,
app.securityLevel = '{app_securityLevel}' 

MERGE (hApp:HostApp {SERVER_PATH: '{hApp_SERVER_PATH}', SERVER_SYSTEMROOT: '{hApp_SERVER_SYSTEMROOT}', SERVER_COMSPEC: '{hApp_SERVER_COMSPEC}', 
SERVER_PATHEXT: '{hApp_SERVER_PATHEXT}', SERVER_WINDIR: '{hApp_SERVER_WINDIR}', SERVER_SYSTEMDRIVE: '{hApp_SERVER_SYSTEMDRIVE}', SERVER_TEMP: '{hApp_SERVER_TEMP}', 
SERVER_TMP: '{hApp_SERVER_TMP}', SERVER_QT_PLUGIN_PATH: '{hApp_SERVER_QT_PLUGIN_PATH}', SERVER_PHPRC: '{hApp_SERVER_PHPRC}', 
SERVER_PHP_FCGI_MAX_REQUESTS: '{hApp_SERVER_PHP_FCGI_MAX_REQUESTS}', SERVER__FCGI_SHUTDOWN_EVENT_: '{hApp_SERVER__FCGI_SHUTDOWN_EVENT_}', SERVER_DOCUMENT_ROOT: '{hApp_SERVER_DOCUMENT_ROOT}', 
SERVER_SERVER_NAME: '{hApp_SERVER_SERVER_NAME}', SERVER_CONTEXT_PREFIX: '{hApp_SERVER_CONTEXT_PREFIX}', SERVER_SERVER_SOFTWARE: '{hApp_SERVER_SERVER_SOFTWARE}', 
SERVER_SERVER_SIGNATURE: '{hApp_SERVER_SERVER_SIGNATURE}', SERVER_CONTEXT_DOCUMENT_ROOT: '{hApp_SERVER_CONTEXT_DOCUMENT_ROOT}', SERVER_SystemRoot: '{hApp_SERVER_SystemRoot}', 
json: '{hApp_json}'})
ON CREATE SET 
{hApp_createLabelParamList} , 
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
{hApp_matchLabelParamList}

MERGE (env:Evironnement {name: '{env_name}', SERVER_SERVER_ADMIN: '{env_SERVER_SERVER_ADMIN}'})
ON CREATE SET 
{env_createLabelParamList} , 
env.created = '{env_name}' 
ON MATCH SET 
{env_matchLabelParamList} , 
env.SERVER_SERVER_ADMIN = '{env_SERVER_SERVER_ADMIN}'

// RELATIONSHIPS

MERGE (t)-[t_app:TRACE]->(app)
ON CREATE SET 
{t_app_createcypherRelationshipParamList} 
ON MATCH SET 
{t_app_matchcypherRelationshipParamList}

MERGE (cf)-[cf_app:CONFIGURE]->(app)
ON CREATE SET 
{cf_app_createcypherRelationshipParamList} 
ON MATCH SET 
{cf_app_matchcypherRelationshipParamList}

MERGE (env)-[env_hApp:SPONSORIZE]->(hApp)
ON CREATE SET 
{env_hApp_createcypherRelationshipParamList} 
ON MATCH SET 
{env_hApp_matchcypherRelationshipParamList}

MERGE (hApp)-[hApp_app:HOST]->(app)
ON CREATE SET 
{hApp_app_createcypherRelationshipParamList} 
ON MATCH SET 
{hApp_app_matchcypherRelationshipParamList}


// ************************************************
// USER PART
// ************************************************

// NODES

MERGE (u:User {name: '{u_name}', securityLevel: '{u_securityLevel}', id: '{u_id}'})
ON CREATE SET 
{u_createLabelParamList} , 
u.name = '{u_name}' ,
u.id = '{u_id}' ,
u.id = '{u_id}' ,
u.json = '{u_json}' , 
u.idCryptedT = '{u_idCryptedT}' ,
u.idCryptedS = '{u_idCryptedS}' ,
u.securityLevel = '{u_securityLevel}'
ON MATCH SET
{u_matchLabelParamList} , 
u.json = '{u_json}' ,
u.idCryptedT = '{u_idCryptedT}' ,
u.idCryptedS = '{u_idCryptedS}' ,
u.securityLevel = '{u_securityLevel}' 

MERGE (uh:UserHistory)
ON CREATE SET 
{uh_createLabelParamList}
ON MATCH SET 
{uh_matchLabelParamList}

MERGE (hClient:HostClient {SERVER_REMOTE_PORT: '{hClient_SERVER_REMOTE_PORT}', SERVER_REMOTE_ADDR: '{hClient_SERVER_REMOTE_ADDR}', SERVER_HTTP_USER_AGENT: '{hClient_SERVER_HTTP_USER_AGENT}'})
ON CREATE SET 
{hClient_createLabelParamList} ,
hClient.SERVER_REMOTE_PORT = '{hClient_SERVER_REMOTE_PORT}' ,  
hClient.SERVER_REMOTE_ADDR = '{hClient_SERVER_REMOTE_ADDR}' , 
hClient.SERVER_HTTP_USER_AGENT = '{hClient_SERVER_HTTP_USER_AGENT}'
ON MATCH SET
{hClient_matchLabelParamList}

MERGE (ss:Session {id:'{ss_id}', userId:'{ss_userId}', appId:'{ss_appId}'})
ON CREATE SET 
{ss_createLabelParamList} , 
ss.id = '{ss_id}' ,
ss.startTime = '{ss_startTime}' , 
ss.endTime = '{ss_endTime}' , 
ss.SERVER_HTTP_COOKIE = '{ss_SERVER_HTTP_COOKIE}' , 
ss.idCryptedT = '{ss_idCryptedT}' , 
ss.idCryptedS = '{ss_idCryptedS}' , 
ss.SESSION_JSON = '{ss_SESSION_JSON}' , 
ss.json = '{ss_json}' ,
ss.userId = '{ss_userId}' ,
ss.appId = '{ss_appId}' 
ON MATCH SET 
{ss_matchLabelParamList} , 
ss.startTime = '{ss_startTime}' , 
ss.endTime = '{ss_endTime}' , 
ss.SERVER_HTTP_COOKIE = '{ss_SERVER_HTTP_COOKIE}' , 
ss.idCryptedT = '{ss_idCryptedT}' , 
ss.idCryptedS = '{ss_idCryptedS}' , 
ss.SESSION_JSON = '{ss_SESSION_JSON}' , 
ss.json = '{ss_json}'

MERGE (ssClient:SessionClient {userIdCryptedS: '{ssClient_userIdCryptedS}', userIdCryptedT: '{ssClient_userIdCryptedT}'})
ON CREATE SET 
{ssClient_createLabelParamList} , 
ssClient.userIdCryptedS = '{ssClient_userIdCryptedS}' ,
ssClient.userIdCryptedT = '{ssClient_userIdCryptedT}' 
ON MATCH SET
{ssClient_matchLabelParamList}

MERGE (ssApp:SessionApp {appIdCryptedS: '{ssApp_appIdCryptedS}', appIdCryptedT: '{ssApp_appIdCryptedT}'})
ON CREATE SET 
{ssApp_createLabelParamList} , 
ssApp.appIdCryptedS = '{ssApp_appIdCryptedS}' ,
ssApp.appIdCryptedT = '{ssApp_appIdCryptedT}'  
ON MATCH SET
{ssApp_matchLabelParamList}

MERGE (mock:Mock {name: '{mock_name}'})
ON CREATE SET 
{mock_createLabelParamList} , 
mock.userIdCryptedS = '{mock_userIdCryptedS}' ,
mock.appIdCryptedS = '{mock_appIdCryptedS}' , 
mock.state = '{mock_state}' , 
mock.name = '{mock_name}' , 
mock.mockJson = '{mock_json}' 
ON MATCH SET 
{mock_matchLabelParamList} , 
mock.userIdCryptedS = '{mock_userIdCryptedS}' ,
mock.appIdCryptedS = '{mock_appIdCryptedS}' , 
mock.state = '{mock_state}' ,
mock.mockJson = '{mock_json}'

// RELATIONSHIPS

MERGE (u)-[u_req:CALL]->(req)
ON CREATE SET 
{u_req_createcypherRelationshipParamList} 
ON MATCH SET 
{u_req_matchcypherRelationshipParamList}

MERGE (ss)-[ss_ssClient:MAINTAIN]->(ssClient)
ON CREATE SET 
{ss_ssClient_createcypherRelationshipParamList} 
ON MATCH SET 
{ss_ssClient_matchcypherRelationshipParamList}

MERGE (ss)-[ss_ssApp:MAINTAIN]->(ssApp)
ON CREATE SET 
{ss_ssApp_createcypherRelationshipParamList} 
ON MATCH SET 
{ss_ssApp_matchcypherRelationshipParamList}

MERGE (ssClient)-[ssClient_u:AUTORIZE]->(u)
ON CREATE SET 
{ssClient_u_createcypherRelationshipParamList} 
ON MATCH SET 
{ssClient_u_matchcypherRelationshipParamList}

MERGE (ssApp)-[ssApp_app:ACCESS]->(app)
ON CREATE SET 
{ssApp_app_createcypherRelationshipParamList} 
ON MATCH SET 
{ssApp_app_matchcypherRelationshipParamList}

MERGE (mock)-[mock_u:MOCK]->(u)
ON CREATE SET 
{mock_u_createcypherRelationshipParamList} 
ON MATCH SET 
{mock_u_matchcypherRelationshipParamList}

MERGE (uh)-[uh_u:HISTORIZE]->(u)
ON CREATE SET 
{uh_u_createcypherRelationshipParamList} 
ON MATCH SET 
{uh_u_matchcypherRelationshipParamList}
