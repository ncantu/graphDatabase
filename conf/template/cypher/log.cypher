
CREATE (t:Time {u: '', c: '', e: '', i: '', O: '', SERVER_REQUEST_TIME_FLOAT: '', SERVER_REQUEST_TIME: ''}),
(tdy:TimeDayYear {z: ''}),
(ty:TimeYear {Y: ''}),
(tmon:TimeMonth {m: ''}),
(tdm:TimeDayMonth {d: ''}),
(th:TimeDayHour {H: ''}),
(tmin:TimeMinute {i: ''}),
(ts:TimeSecond {s: ''}),
(tdy)-[:DATE]->(t),
(ty)-[:DATE]->(t),
(tmon)-[:DATE]->(t),
(tdm)-[:DATE]->(t),
(th)-[:DATE]->(t),
(tmin)-[:DATE]->(t),
(ts)-[:DATE]->(t)

CREATE (evt:Event),
(code:Code {major: '', minor: '', level: ''}),
(req:Request {major: '', minor: '', level: '', SERVER_SCRIPT_NAME: ''; SERVER_REQUEST_URI: '', SERVER_QUERY_STRING: '', SERVER_REQUEST_METHOD: '', SERVER_SERVER_PROTOCOL: '', 
SERVER_GATEWAY_INTERFACE: '', SERVER_REQUEST_SCHEME: '', SERVER_SCRIPT_FILENAME: '', SERVER_SERVER_PORT: '', SERVER_SERVER_ADDR: '', SERVER_HTTP_ACCEPT_ENCODING: '', 
SERVER_HTTP_UPGRADE_INSECURE_REQUESTS: '', SERVER_HTTP_ACCEPT: '', SERVER_HTTP_CONNECTION: '', SERVER_HTTP_HOST: '', SERVER_FCGI_ROLE: '', SERVER_PHP_SELF: ''}),
(t)-[:DATE]->(evt),
(code)-[:CATEGORIZE]->(evt),
(req)-[:GENERATE]>(evt)

CREATE (tr:Trace),
(bt:BackTrace),
(i:Instance {name: ''}),
(c:Class {name: ''}),
(m:Method {name: ''}),
(l:Line {number: ''}),
(var:Var {json: ''}),
(t)-[:TRACE]->(req),
(tr)-[:TRACE]->(i),
(tr)-[:TRACE]->(c),
(tr)-[:TRACE]->(m),
(tr)-[:TRACE]->(l),
(tr)-[:TRACE]->(var),
(bt)-[:HISTORIZE]->(trace)

CREATE (app:Application {name: ''}),
CREATE (hApp:HostApp {json: '', SERVER_PATH: '', SERVER_SYSTEMROOT: '', SERVER_COMSPEC: '', SERVER_PATHEXT: '', SERVER_WINDIR: '', SERVER_SYSTEMDRIVE: '', SERVER_TEMP: '', SERVER_TMP: '', 
SERVER_QT_PLUGIN_PATH: '', SERVER_PHPRC: '', SERVER_PHP_FCGI_MAX_REQUESTS: '', SERVER__FCGI_SHUTDOWN_EVENT_: '', SERVER_DOCUMENT_ROOT: '', SERVER_SERVER_NAME: '', 
SERVER_CONTEXT_PREFIX: '', SERVER_SERVER_SOFTWARE: '', SERVER_SERVER_SIGNATURE: '', SERVER_CONTEXT_DOCUMENT_ROOT: '', SERVER_SystemRoot: ''}),
CREATE (env:Evironnement {name: '', SREVER_SERVER_ADMIN: ''}),
CREATE (cfApp:ConfApp {json: ''}),
(t)-[:TRACE]->(app),
(cfApp)-[:CONFIGURE]->(app),
(env)-[:SPONSORIZE]->(hApp),
(hApp)-[:HOST]->(app)

CREATE (u:User {securityLevel: '', sessionEnd: '', sessionStart: '', idCryptedT: '', sessionIdCryptedT: '', idCryptedS: '', sessionIdCryptedS: '', id: '', sessionId: ''})
(uh:UserHistory),
(hClient:HostClient {json: '', SERVER_REMOTE_PORT: '', SERVER_REMOTE_ADDR: '', SERVER_HTTP_USER_AGENT: ''}),
(env:Evironnement {name: '', SREVER_SERVER_ADMIN: ''}),
(ss:Session {startTime: '', userId: '', sessionId:'', appId: '', sessionIdCrypted: '', SERVER_HTTP_COOKIE: ''}),
(ssClient:SessionClient {startTime: '', userIdCrypted: ''}),
(ssApp:SessionApp {startTime: '', appIdCrypted: '', ttl: ''}),
(cfClient:ConfClient {json: ''}),
(mock:Mock {userId: '', appName: '', mockName: ''}),
(u)-[:CALL]->(req),
(ss)-[:MAINTAIN]->(ssClient),
(ss)-[:MAINTAIN]->(ssApp),
(ssClient)-[:AUTORIZE]->(u),
(ssApp)-[:ACCESS]->(app),
(mock)-[:MOCK]->(u),
(uh)-[:HISTORIZE]->(ss)




