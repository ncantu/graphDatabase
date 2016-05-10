
CREATE (t:Time {time: '{t_time}', u: '{t_u}', c: '{t_c}', e: '{t_e}', i: '{t_i}', O: '{t_O}', SERVER_REQUEST_TIME_FLOAT: '{t_SERVER_REQUEST_TIME_FLOAT}', SERVER_REQUEST_TIME: '{t_SERVER_REQUEST_TIME_FLOAT}'}),
(tdy:TimeDayYear {z: '{tdy_z}'}),
(tY:TimeYear {Y: '{ty_Y}'}),
(tmon:TimeMonth {m: '{tmon_m}'}),
(tdm:TimeDayMonth {d: '{tdm_d}'}),
(tH:TimeDayHour {H: '{tH_H}'}),
(tmin:TimeMinute {i: '{tmin_i}'}),
(ts:TimeSecond {s: '{ts_s}'}),
(tdy)-[:DATE]->(t),
(ty)-[:DATE]->(t),
(tmon)-[:DATE]->(t),
(tdm)-[:DATE]->(t),
(th)-[:DATE]->(t),
(tmin)-[:DATE]->(t),
(ts)-[:DATE]->(t)

CREATE (evt:Event),
(code:Code {major: '{code_major}', minor: '{code_minor}', level: '{code_level}'}),
(req:Request {SERVER_SCRIPT_NAME: '{req_SERVER_SCRIPT_NAME}'; SERVER_REQUEST_URI: '{req_SERVER_REQUEST_URI}', SERVER_QUERY_STRING: '{req_SERVER_QUERY_STRING}', 
SERVER_REQUEST_METHOD: '{req_SERVER_REQUEST_METHOD}', SERVER_SERVER_PROTOCOL: '{req_SERVER_SERVER_PROTOCOL}', SERVER_GATEWAY_INTERFACE: '{req_SERVER_GATEWAY_INTERFACE}', 
SERVER_REQUEST_SCHEME: '{req_SERVER_REQUEST_SCHEME}', SERVER_SCRIPT_FILENAME: '{req_SERVER_SCRIPT_FILENAME}', SERVER_SERVER_PORT: '{req_SERVER_SERVER_PORT}', 
SERVER_SERVER_ADDR: '{req_SERVER_SERVER_ADDR}', SERVER_HTTP_ACCEPT_ENCODING: '{req_SERVER_HTTP_ACCEPT_ENCODING}', 
SERVER_HTTP_UPGRADE_INSECURE_REQUESTS: '{req_SERVER_HTTP_UPGRADE_INSECURE_REQUESTS}', SERVER_HTTP_ACCEPT: '{req_SERVER_HTTP_ACCEPT}', SERVER_HTTP_CONNECTION: '{req_SERVER_HTTP_CONNECTION}', 
SERVER_HTTP_HOST: '{req_SERVER_HTTP_HOST}', SERVER_FCGI_ROLE: '{req_SERVER_FCGI_ROLE}', SERVER_PHP_SELF: '{req_SERVER_PHP_SELF}', REQUEST_JSON: '{req_REQUEST_JSON}', cpu: '{req_cpu}', 
memory: '{req_memory}', diskSpace: '{req_diskSpace}', pid: '{req_pid}'}),
(t)-[:DATE]->(evt),
(code)-[:CATEGORIZE]->(evt),
(req)-[:GENERATE]>(evt)

CREATE (tr:Trace {}),
(bt:BackTrace),
(i:Instance {name: '{i_name}'}),
(c:Class {name: '{c_name}'}),
(m:Method {name: '{m_name}'}),
(l:Line {number: '{l_number}', baktrace: '{l_baktrace}'}),
(var:Var {json: '{var_json}'}),
(t)-[:TRACE]->(req),
(tr)-[:TRACE]->(i),
(tr)-[:TRACE]->(c),
(tr)-[:TRACE]->(m),
(tr)-[:TRACE]->(l),
(tr)-[:TRACE]->(var),
(bt)-[:HISTORIZE]->(trace)

CREATE (cf:Conf {json: '{cf_json}'})

CREATE (app:Application {name: '{app_name}', json:'{app_json}'}, id: '{app_id}'),
(hApp:HostApp {SERVER_PATH: '{hApp_SERVER_PATH}', SERVER_SYSTEMROOT: '{hApp_SERVER_SYSTEMROOT}', SERVER_COMSPEC: '{hApp_SERVER_COMSPEC}', 
SERVER_PATHEXT: '{hApp_SERVER_PATHEXT}', SERVER_WINDIR: '{hApp_SERVER_WINDIR}', SERVER_SYSTEMDRIVE: '{hApp_SERVER_SYSTEMDRIVE}', SERVER_TEMP: '{hApp_SERVER_TEMP}', SERVER_TMP: '{hApp_SERVER_TMP}', 
SERVER_QT_PLUGIN_PATH: '{hApp_SERVER_QT_PLUGIN_PATH}', SERVER_PHPRC: '{hApp_SERVER_PHPRC}', SERVER_PHP_FCGI_MAX_REQUESTS: '{hApp_SERVER_PHP_FCGI_MAX_REQUESTS}', 
SERVER__FCGI_SHUTDOWN_EVENT_: '{hApp_SERVER__FCGI_SHUTDOWN_EVENT_}', SERVER_DOCUMENT_ROOT: '{hApp_SERVER_DOCUMENT_ROOT}', SERVER_SERVER_NAME: '{hApp_SERVER_SERVER_NAME}', 
SERVER_CONTEXT_PREFIX: '{hApp_SERVER_CONTEXT_PREFIX}', SERVER_SERVER_SOFTWARE: '{hApp_SERVER_SERVER_SOFTWARE}', SERVER_SERVER_SIGNATURE: '{hApp_SERVER_SERVER_SIGNATURE}', 
SERVER_CONTEXT_DOCUMENT_ROOT: '{hApp_SERVER_CONTEXT_DOCUMENT_ROOT}', SERVER_SystemRoot: '{hApp_SERVER_SystemRoot}', json: '{hApp_json}'}),
(env:Evironnement {name: '{env_name}', SERVER_SERVER_ADMIN: '{env_SERVER_SERVER_ADMIN}'}),
(t)-[:TRACE]->(app),
(cf)-[:CONFIGURE]->(app),
(env)-[:SPONSORIZE]->(hApp),
(hApp)-[:HOST]->(app)

CREATE (u:User {securityLevel: '{u_securityLevel}', idCryptedT: '{u_idCryptedT}', idCryptedS: '{u_idCryptedS}', id: '{u_id}', json: '{u_json}'),
(uh:UserHistory),
(hClient:HostClient {SERVER_REMOTE_PORT: '{hClient_SERVER_REMOTE_PORT}', SERVER_REMOTE_ADDR: '{hClient_SERVER_REMOTE_ADDR}', SERVER_HTTP_USER_AGENT: '{hClient_SERVER_HTTP_USER_AGENT}'}),
(ss:Session {startTime: '{ss_startTime}', endTime: '{ss_endTime}', id:'{ss_id}', SERVER_HTTP_COOKIE: '{ss_SERVER_HTTP_COOKIE}', idCryptedT: '{ss_idCryptedT}', idCryptedS: '{ss_idCryptedS}', 
SESSION_JSON: '{ss_SESSION_JSON}'}, json: '{ss_json}', appId: '{ss_appId}'),
(ssClient:SessionClient {userIdCryptedS: '{ssClient_userIdCryptedS}', userIdCryptedT: '{ssClient_userIdCryptedT}'}),
(ssApp:SessionApp {appIdCryptedS: '{ssApp_appIdCryptedS}', appIdCryptedT: '{ssApp_appIdCryptedT}'}),
(mock:Mock {userId: '{mock_userId}', appName: '{mock_appName}', state: '{mock_State}', name: '{mock_name}', mockJson: '{mock_json}'}),
(u)-[:CALL]->(req),
(ss)-[:MAINTAIN]->(ssClient),
(ss)-[:MAINTAIN]->(ssApp),
(ssClient)-[:AUTORIZE]->(u),
(ssApp)-[:ACCESS]->(app),
(mock)-[:MOCK]->(u),
(uh)-[:HISTORIZE]->(ss)
