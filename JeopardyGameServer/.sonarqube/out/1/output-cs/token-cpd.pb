Äû
ìC:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameServer\JeopardyGame.Service\ChannelsAdministrator\ChannelAdministrator.cs
	namespace 	
JeopardyGame
 
. 
Service 
. !
ChannelsAdministrator 4
{ 
public 

static 
class  
ChannelAdministrator -
{ 
private 
const 
int #
_AVAILABILITY_EXCEPTION 1
=2 3
$num4 5
;5 6
private 
const 
int %
_FRIEND_MANAGER_EXCEPTION 3
=4 5
$num6 7
;7 8
private 
const 
int 
_LOBBY_EXCEPTION *
=+ ,
$num- .
;. /
private 
const 
int 
_GAME_EXCEPTION )
=* +
$num, -
;- .
private 
const 
int  
_TEAM_CHAT_EXCEPTION .
=/ 0
$num1 2
;2 3
private 
const 
int ,
 _GENERIC_COMMUNICATION_EXCEPTION :
=; <
$num= >
;> ?
public 
static 
int $
FRIEND_MANAGER_EXCEPTION 2
=>3 5%
_FRIEND_MANAGER_EXCEPTION6 O
;O P
public 
static 
int 
LOBBY_EXCEPTION )
=>* ,
_LOBBY_EXCEPTION- =
;= >
public 
static 
int 
GAME_EXCEPTION (
=>) +
_GAME_EXCEPTION, ;
;; <
public 
static 
int "
AVAILABILITY_EXCEPTION 0
=>1 3#
_AVAILABILITY_EXCEPTION4 K
;K L
public   
static   
int   
TEAM_CHAT_EXCEPTION   -
=>  . 0 
_TEAM_CHAT_EXCEPTION  1 E
;  E F
public"" 
static"" 
int"" +
GENERIC_COMMUNICATION_EXCEPTION"" 9
=>"": <,
 _GENERIC_COMMUNICATION_EXCEPTION""= ]
;""] ^
public$$ 
static$$ 
int$$ #
VerifyUserIsStillActive$$ 1
($$1 2
string$$2 8 
userCausingException$$9 M
)$$M N
{%% 	
var&& 
channel&& 
=&& 
LivingClients&& '
.&&' (
	GetClient&&( 1
(&&1 2 
userCausingException&&2 F
)&&F G
;&&G H
if'' 
('' 
channel'' 
!='' 
null'' 
)''  
{(( 
try)) 
{** 
bool++ 
isActive++ !
=++" #
channel++$ +
.+++ ,
GetCallbackChannel++, >
<++> ?$
ICheckUserLivingCallBack++? W
>++W X
(++X Y
)++Y Z
.++Z [
IsClientActive++[ i
(++i j
)++j k
;++k l
if,, 
(,, 
isActive,,  
),,  !
{-- 
return.. 
ExceptionDictionary.. 2
...2 3
UNSUCCESFULL_EVENT..3 E
;..E F
}// 
}00 
catch11 
(11 /
#CommunicationObjectFaultedException11 :
ex11; =
)11= >
{22 
ExceptionHandler33 $
.33$ %
LogException33% 1
(331 2
ex332 4
,334 5
ExceptionDictionary336 I
.33I J
FATAL_EXCEPTION33J Y
)33Y Z
;33Z [
}44 
catch55 
(55 
TimeoutException55 '
ex55( *
)55* +
{66 
ExceptionHandler77 $
.77$ %
LogException77% 1
(771 2
ex772 4
,774 5
ExceptionDictionary776 I
.77I J
FATAL_EXCEPTION77J Y
)77Y Z
;77Z [
}88 
catch99 
(99 "
CommunicationException99 -
ex99. 0
)990 1
{:: 
ExceptionHandler;; $
.;;$ %
LogException;;% 1
(;;1 2
ex;;2 4
,;;4 5
ExceptionDictionary;;6 I
.;;I J
FATAL_EXCEPTION;;J Y
);;Y Z
;;;Z [
}<< 
catch== 
(== %
InvalidOperationException== /
ex==0 2
)==2 3
{>> 
ExceptionHandler?? $
.??$ %
LogException??% 1
(??1 2
ex??2 4
,??4 5
ExceptionDictionary??6 I
.??I J
FATAL_EXCEPTION??J Y
)??Y Z
;??Z [
}@@ 
}AA 
returnBB 
ExceptionDictionaryBB &
.BB& '
SUCCESFULL_EVENTBB' 7
;BB7 8
}CC 	
publicEE 
staticEE 
voidEE $
HandleCommunicationIssueEE 3
(EE3 4
intEE4 7"
idUserCausingExceptionEE8 N
,EEN O
intEEP S
serviceTypeEET _
)EE_ `
{FF 	
ifHH 
(HH "
idUserCausingExceptionHH &
!=HH' )
$numHH* +
&&HH, .
serviceTypeHH/ :
!=HH; =
$numHH> ?
)HH? @
{II 
switchJJ 
(JJ 
serviceTypeJJ #
)JJ# $
{KK 
caseLL #
_AVAILABILITY_EXCEPTIONLL 0
:LL0 14
(HandleAvailabilityCommunicationExceptionMM @
(MM@ A"
idUserCausingExceptionMMA W
)MMW X
;MMX Y
breakNN 
;NN 
caseOO %
_FRIEND_MANAGER_EXCEPTIONOO 2
:OO2 35
)HandleFriendManagerCommunicationExceptionPP A
(PPA B"
idUserCausingExceptionPPB X
)PPX Y
;PPY Z
breakQQ 
;QQ 
caseRR 
_LOBBY_EXCEPTIONRR )
:RR) *-
!HandleLobbyCommunicationExceptionSS 9
(SS9 :"
idUserCausingExceptionSS: P
)SSP Q
;SSQ R
breakTT 
;TT 
caseUU 
_GAME_EXCEPTIONUU (
:UU( ),
 HandleGameCommunicationExceptionVV 8
(VV8 9"
idUserCausingExceptionVV9 O
)VVO P
;VVP Q
breakWW 
;WW 
caseXX  
_TEAM_CHAT_EXCEPTIONXX -
:XX- .0
$HandleTeamChatCommunicationExceptionYY <
(YY< ="
idUserCausingExceptionYY= S
)YYS T
;YYT U
breakZZ 
;ZZ 
case[[ ,
 _GENERIC_COMMUNICATION_EXCEPTION[[ 9
:[[9 :.
"HandleGeneriCommunicationException\\ :
(\\: ;"
idUserCausingException\\; Q
)\\Q R
;\\R S
break]] 
;]] 
}^^ 
}__ 
}aa 	
privatecc 
staticcc 
voidcc 5
)HandleFriendManagerCommunicationExceptioncc E
(ccE F
intccF I"
idUserCausingExceptionccJ `
)cc` a
{dd 	7
+FriendManagerActionsOperationImplementationee 7 
friendManagerActionsee8 L
=eeM N
neweeO R
(eeS T
)eeT U
;eeU V 
friendManagerActionsff  
.ff  !'
UnregisterFriendManagerUserff! <
(ff< ="
idUserCausingExceptionff= S
)ffS T
;ffT U
intgg 
isUserDisconnectedgg "
=gg# $#
VerifyUserIsStillActivegg% <
(gg< =
GetUserNameClientgg= N
(ggN O"
idUserCausingExceptionggO e
)gge f
)ggf g
;ggg h
ifhh 
(hh 
isUserDisconnectedhh "
==hh# %
ExceptionDictionaryhh& 9
.hh9 :
SUCCESFULL_EVENThh: J
)hhJ K
{ii $
KickUserFromDictionariesjj (
(jj( )"
idUserCausingExceptionjj) ?
)jj? @
;jj@ A
}kk 
}ll 	
privatenn 
staticnn 
voidnn -
!HandleLobbyCommunicationExceptionnn =
(nn= >
intnn> A"
idUserCausingExceptionnnB X
)nnX Y
{oo 	
trypp 
{qq 
varrr 
	lobbyListrr 
=rr !
GameLobbiesDictionaryrr  5
.rr5 6 
GetActiveLobbiesListrr6 J
(rrJ K
)rrK L
;rrL M
intss 
roomCodess 
=ss 
	lobbyListss (
.ss( )
FirstOrDefaultss) 7
(ss7 8
entryss8 =
=>ss> @
entryssA F
.ssF G
ValuessG L
.ssL M
listOfPlayerInLobbyssM `
.ss` a
Existsssa g
(ssg h
plssh j
=>ssk m
plssn p
.ssp q
idUserssq w
==ssx z#
idUserCausingException	ss{ ë
)
ssë í
)
ssí ì
.
ssì î
Key
ssî ó
;
ssó ò/
#LobbyActionsOperationImplementationtt 3
lobbyActionstt4 @
=ttA B
newttC F
(ttF G
)ttG H
;ttH I
varuu 
lobbyFaileduu 
=uu  !!
GameLobbiesDictionaryuu" 7
.uu7 8"
GetSpecificActiveLobbyuu8 N
(uuN O
roomCodeuuO W
)uuW X
;uuX Y
ifvv 
(vv 
lobbyFailedvv 
!=vv  "
nullvv# '
)vv' (
{ww 
ifxx 
(xx 
lobbyFailedxx #
.xx# $
idAdminxx$ +
==xx, ."
idUserCausingExceptionxx/ E
)xxE F
{yy 
lobbyActionszz $
.zz$ %
DissolveLobbyzz% 2
(zz2 3
roomCodezz3 ;
,zz; <"
idUserCausingExceptionzz= S
)zzS T
;zzT U
}{{ 
else|| 
{}} 
lobbyActions~~ $
.~~$ %

LeaveLobby~~% /
(~~/ 0
roomCode~~0 8
,~~8 9"
idUserCausingException~~: P
)~~P Q
;~~Q R
} 
}
ÄÄ 
int
ÅÅ  
isUserDisconnected
ÅÅ &
=
ÅÅ' (%
VerifyUserIsStillActive
ÅÅ) @
(
ÅÅ@ A
GetUserNameClient
ÅÅA R
(
ÅÅR S$
idUserCausingException
ÅÅS i
)
ÅÅi j
)
ÅÅj k
;
ÅÅk l
if
ÇÇ 
(
ÇÇ  
isUserDisconnected
ÇÇ &
==
ÇÇ' )!
ExceptionDictionary
ÇÇ* =
.
ÇÇ= >
SUCCESFULL_EVENT
ÇÇ> N
)
ÇÇN O
{
ÉÉ &
KickUserFromDictionaries
ÑÑ ,
(
ÑÑ, -$
idUserCausingException
ÑÑ- C
)
ÑÑC D
;
ÑÑD E
}
ÖÖ 
}
ÜÜ 
catch
áá 
(
áá "
KeyNotFoundException
áá &
ex
áá' )
)
áá) *
{
àà 
ExceptionHandler
ââ  
.
ââ  !
LogException
ââ! -
(
ââ- .
ex
ââ. 0
,
ââ0 1!
ExceptionDictionary
ââ2 E
.
ââE F
ERROR
ââF K
)
ââK L
;
ââL M
}
ää 
}
ãã 	
private
çç 
static
çç 
void
çç .
 HandleGameCommunicationException
çç <
(
çç< =
int
çç= @$
idUserCausingException
ççA W
)
ççW X
{
éé 	
var
èè 
	lobbyList
èè 
=
èè #
GameLobbiesDictionary
èè 1
.
èè1 2"
GetActiveLobbiesList
èè2 F
(
èèF G
)
èèG H
;
èèH I
int
êê 
roomCode
êê 
=
êê 
	lobbyList
êê $
.
êê$ %
FirstOrDefault
êê% 3
(
êê3 4
entry
êê4 9
=>
êê: <
entry
êê= B
.
êêB C
Value
êêC H
.
êêH I!
listOfPlayerInLobby
êêI \
.
êê\ ]
Exists
êê] c
(
êêc d
pl
êêd f
=>
êêg i
pl
êêj l
.
êêl m
idUser
êêm s
==
êêt v%
idUserCausingExceptionêêw ç
)êêç é
)êêé è
.êêè ê
Keyêêê ì
;êêì î1
#GameActionsOperationsImplementation
ëë /
gameActions
ëë0 ;
=
ëë< =
new
ëë> A
(
ëëB C
)
ëëC D
;
ëëD E
gameActions
íí 
.
íí )
UnSubscribeFromGameCallBack
íí 3
(
íí3 4
roomCode
íí4 <
,
íí< =$
idUserCausingException
íí> T
)
ííT U
;
ííU V/
!HandleLobbyCommunicationException
ìì -
(
ìì- .$
idUserCausingException
ìì. D
)
ììD E
;
ììE F
}
îî 	
private
ññ 
static
ññ 
void
ññ 6
(HandleAvailabilityCommunicationException
ññ D
(
ññD E
int
ññE H$
idUserCausingException
ññI _
)
ññ_ `
{
óó 	4
&NotifyUserIsNotAvailableImplementation
òò 2

notifyUser
òò3 =
=
òò> ?
new
òò@ C
(
òòC D
)
òòD E
;
òòE F

notifyUser
ôô 
.
ôô "
PlayerIsNotAvailable
ôô +
(
ôô+ ,$
idUserCausingException
ôô, B
)
ôôB C
;
ôôC D
int
öö  
isUserDisconnected
öö "
=
öö# $%
VerifyUserIsStillActive
öö% <
(
öö< =
GetUserNameClient
öö= N
(
ööN O$
idUserCausingException
ööO e
)
ööe f
)
ööf g
;
öög h
if
õõ 
(
õõ  
isUserDisconnected
õõ "
==
õõ# %!
ExceptionDictionary
õõ& 9
.
õõ9 :
SUCCESFULL_EVENT
õõ: J
)
õõJ K
{
úú &
KickUserFromDictionaries
ùù (
(
ùù( )$
idUserCausingException
ùù) ?
)
ùù? @
;
ùù@ A
}
ûû 
}
üü 	
private
°° 
static
°° 
void
°° 2
$HandleTeamChatCommunicationException
°° @
(
°°@ A
int
°°A D$
idUserCausingException
°°E [
)
°°[ \
{
¢¢ 	
	TeamChats
££ 
.
££ 8
*RemoveRegistryOfTeamChatUserFromDictionary
££ @
(
££@ A$
idUserCausingException
££A W
)
££W X
;
££X Y
int
§§  
isUserDisconnected
§§ "
=
§§# $%
VerifyUserIsStillActive
§§% <
(
§§< =
GetUserNameClient
§§= N
(
§§N O$
idUserCausingException
§§O e
)
§§e f
)
§§f g
;
§§g h
if
•• 
(
••  
isUserDisconnected
•• "
==
••# %!
ExceptionDictionary
••& 9
.
••9 :
SUCCESFULL_EVENT
••: J
)
••J K
{
¶¶ &
KickUserFromDictionaries
ßß (
(
ßß( )$
idUserCausingException
ßß) ?
)
ßß? @
;
ßß@ A
}
®® 
}
©© 	
private
´´ 
static
´´ 
void
´´ 0
"HandleGeneriCommunicationException
´´ >
(
´´> ?
int
´´? B$
idUserCausingException
´´C Y
)
´´Y Z
{
¨¨ 	
int
≠≠  
isUserDisconnected
≠≠ "
=
≠≠# $%
VerifyUserIsStillActive
≠≠% <
(
≠≠< =
GetUserNameClient
≠≠= N
(
≠≠N O$
idUserCausingException
≠≠O e
)
≠≠e f
)
≠≠f g
;
≠≠g h
if
ÆÆ 
(
ÆÆ  
isUserDisconnected
ÆÆ "
==
ÆÆ# %!
ExceptionDictionary
ÆÆ& 9
.
ÆÆ9 :
SUCCESFULL_EVENT
ÆÆ: J
)
ÆÆJ K
{
ØØ &
KickUserFromDictionaries
∞∞ (
(
∞∞( )$
idUserCausingException
∞∞) ?
)
∞∞? @
;
∞∞@ A
}
±± 
}
≤≤ 	
public
µµ 
static
µµ 
void
µµ &
KickUserFromDictionaries
µµ 3
(
µµ3 4
int
µµ4 7$
idUserCausingException
µµ8 N
)
µµN O
{
∂∂ 	4
&NotifyUserIsNotAvailableImplementation
∑∑ 2

notifyUser
∑∑3 =
=
∑∑> ?
new
∑∑@ C
(
∑∑C D
)
∑∑D E
;
∑∑E F1
#GameActionsOperationsImplementation
∏∏ /
gameActions
∏∏0 ;
=
∏∏< =
new
∏∏> A
(
∏∏B C
)
∏∏C D
;
∏∏D E9
+FriendManagerActionsOperationImplementation
ππ 7
friendsManager
ππ8 F
=
ππG H
new
ππI L
(
ππL M
)
ππM N
;
ππN O1
#LobbyActionsOperationImplementation
∫∫ /
lobbyActions
∫∫0 <
=
∫∫= >
new
∫∫? B
(
∫∫B C
)
∫∫C D
;
∫∫D E
LivingClients
ºº 
.
ºº (
RemoveClientFromDictionary
ºº 4
(
ºº4 5
GetUserNameClient
ºº5 F
(
ººF G$
idUserCausingException
ººG ]
)
ºº] ^
)
ºº^ _
;
ºº_ `

notifyUser
ΩΩ 
.
ΩΩ "
PlayerIsNotAvailable
ΩΩ +
(
ΩΩ+ ,$
idUserCausingException
ΩΩ, B
)
ΩΩB C
;
ΩΩC D
var
ææ 
	lobbyList
ææ 
=
ææ #
GameLobbiesDictionary
ææ 1
.
ææ1 2"
GetActiveLobbiesList
ææ2 F
(
ææF G
)
ææG H
;
ææH I
friendsManager
øø 
.
øø )
UnregisterFriendManagerUser
øø 6
(
øø6 7$
idUserCausingException
øø7 M
)
øøM N
;
øøN O
int
¿¿ 
roomCode
¿¿ 
=
¿¿ 
	lobbyList
¿¿ $
.
¿¿$ %
FirstOrDefault
¿¿% 3
(
¿¿3 4
entry
¿¿4 9
=>
¿¿: <
entry
¿¿= B
.
¿¿B C
Value
¿¿C H
.
¿¿H I!
listOfPlayerInLobby
¿¿I \
.
¿¿\ ]
Exists
¿¿] c
(
¿¿c d
pl
¿¿d f
=>
¿¿g i
pl
¿¿j l
.
¿¿l m
idUser
¿¿m s
==
¿¿t v%
idUserCausingException¿¿w ç
)¿¿ç é
)¿¿é è
.¿¿è ê
Key¿¿ê ì
;¿¿ì î
if
¡¡ 
(
¡¡ 
roomCode
¡¡ 
!=
¡¡ 
$num
¡¡ 
)
¡¡ 
{
¬¬ 
var
√√ 
lobby
√√ 
=
√√ #
GameLobbiesDictionary
√√ 1
.
√√1 2$
GetSpecificActiveLobby
√√2 H
(
√√H I
roomCode
√√I Q
)
√√Q R
;
√√R S
if
ƒƒ 
(
ƒƒ 
lobby
ƒƒ 
!=
ƒƒ 
null
ƒƒ !
)
ƒƒ! "
{
≈≈ 
if
∆∆ 
(
∆∆ 
lobby
∆∆ 
.
∆∆ 
idAdmin
∆∆ %
==
∆∆& ($
idUserCausingException
∆∆) ?
)
∆∆? @
{
«« 
lobbyActions
»» $
.
»»$ %
DissolveLobby
»»% 2
(
»»2 3
roomCode
»»3 ;
,
»»; <$
idUserCausingException
»»= S
)
»»S T
;
»»T U
}
…… 
else
   
{
ÀÀ 
lobbyActions
ÃÃ $
.
ÃÃ$ %

LeaveLobby
ÃÃ% /
(
ÃÃ/ 0
roomCode
ÃÃ0 8
,
ÃÃ8 9$
idUserCausingException
ÃÃ: P
)
ÃÃP Q
;
ÃÃQ R
}
ÕÕ 
gameActions
ŒŒ 
.
ŒŒ  )
UnSubscribeFromGameCallBack
ŒŒ  ;
(
ŒŒ; <
roomCode
ŒŒ< D
,
ŒŒD E$
idUserCausingException
ŒŒF \
)
ŒŒ\ ]
;
ŒŒ] ^
}
œœ 
}
–– 
}
—— 	
private
”” 
static
”” 
string
”” 
GetUserNameClient
”” /
(
””/ 0
int
””0 3
idUser
””4 :
)
””: ;
{
‘‘ 	.
 ConsultInformationImplementation
’’ ,.
 consultInformationImplementation
’’- M
=
’’N O
new
’’P S
(
’’S T
)
’’T U
;
’’U V
string
÷÷ 
user
÷÷ 
=
÷÷ .
 consultInformationImplementation
÷÷ :
.
÷÷: ;
ConsultUserById
÷÷; J
(
÷÷J K
idUser
÷÷K Q
)
÷÷Q R
.
÷÷R S
ObjectSaved
÷÷S ^
.
÷÷^ _
UserName
÷÷_ g
;
÷÷g h
return
◊◊ 
user
◊◊ 
;
◊◊ 
}
ÿÿ 	
}
ŸŸ 
}⁄⁄ ãH
èC:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameServer\JeopardyGame.Service\DataDictionaries\ActiveGamesDictionary.cs
	namespace		 	
JeopardyGame		
 
.		 
Service		 
.		 
DataDictionaries		 /
{

 
public 

static 
class !
ActiveGamesDictionary -
{ 
private 
static 

Dictionary !
<! "
int" %
,% &
List' +
<+ ,
PlayerPlayingInGame, ?
>? @
>@ A&
gamesBeenPlayingDictionaryB \
=] ^
new_ b

Dictionaryc m
<m n
intn q
,q r
Lists w
<w x 
PlayerPlayingInGame	x ã
>
ã å
>
å ç
(
ç é
)
é è
;
è ê
public 
static 
void (
RegisterNewGameIndDictionary 7
(7 8
int8 ;
roomCode< D
,D E
ListF J
<J K
PlayerPlayingInGameK ^
>^ _
newActiveGame` m
)m n
{ 	
if 
( 
roomCode 
!= 
$num 
&&  
newActiveGame! .
!=/ 1
null2 6
&&7 9
!: ;&
gamesBeenPlayingDictionary; U
.U V
ContainsKeyV a
(a b
roomCodeb j
)j k
)k l
{ &
gamesBeenPlayingDictionary *
.* +
Add+ .
(. /
roomCode/ 7
,7 8
newActiveGame9 F
)F G
;G H
} 
} 	
public 
static 
List 
< 
PlayerPlayingInGame .
>. /!
GetSpecificActiveGame0 E
(E F
intF I
roomCodeJ R
)R S
{ 	
if 
( 
roomCode 
!= 
$num 
) 
{ 
foreach 
( 
var 
item !
in" $&
gamesBeenPlayingDictionary% ?
)? @
{ 
if 
( 
item 
. 
Key  
==! #
roomCode$ ,
), -
{ 
return 
item #
.# $
Value$ )
;) *
} 
}   
}!! 
return"" 
null"" 
;"" 
}## 	
public%% 
static%% 
void%% .
"RemoveRegistryOfGameFromDictionary%% =
(%%= >
int%%> A
roomCode%%B J
)%%J K
{&& 	
if'' 
('' 
roomCode'' 
!='' 
$num'' 
&&''  &
gamesBeenPlayingDictionary''! ;
.''; <
ContainsKey''< G
(''G H
roomCode''H P
)''P Q
)''Q R
{(( &
gamesBeenPlayingDictionary)) *
.))* +
Remove))+ 1
())1 2
roomCode))2 :
))): ;
;)); <
}** 
}++ 	
public-- 
static-- 
void-- 
RenewGameCallBack-- ,
(--, -
int--- 0
roomCode--1 9
,--9 :
int--; >
idUser--? E
,--E F
OperationContext--G W
channel--X _
)--_ `
{.. 	
if// 
(// 
roomCode// 
!=// 
$num// 
&&//  
idUser//! '
!=//( *
$num//+ ,
&&//- /
channel//0 7
!=//8 :
null//; ?
&&//@ B&
gamesBeenPlayingDictionary//C ]
.//] ^
ContainsKey//^ i
(//i j
roomCode//j r
)//r s
)//s t
{00 
var11 
listOfPlayer11  
=11! "&
gamesBeenPlayingDictionary11# =
[11= >
roomCode11> F
]11F G
;11G H
if22 
(22 
listOfPlayer22 
.22  
Exists22  &
(22& '
pl22' )
=>22* ,
pl22- /
.22/ 0
IdUser220 6
==227 9
idUser22: @
)22@ A
)22A B
{33 
var44 
player44 
=44  
listOfPlayer44! -
.44- .
Find44. 2
(442 3
pl443 5
=>446 8
pl449 ;
.44; <
IdUser44< B
==44C E
idUser44F L
)44L M
;44M N
if55 
(55 
player55 
!=55  
null55! %
)55% &
{66 
player77 
.77 
gameCallbackChannel77 2
=773 4
channel775 <
;77< =
}88 
}99 
}:: 
};; 	
public== 
static== 

Dictionary==  
<==  !
int==! $
,==$ %
List==& *
<==* +
PlayerPlayingInGame==+ >
>==> ?
>==? @
GetActiveGamesList==A S
(==S T
)==T U
{>> 	
return?? &
gamesBeenPlayingDictionary?? -
;??- .
}@@ 	
publicBB 
staticBB 
voidBB "
RearrangeTurnsForTeamsBB 1
(BB1 2
intBB2 5
roomCodeBB6 >
)BB> ?
{CC 	
ifDD 
(DD 
roomCodeDD 
!=DD 
$numDD 
)DD 
{EE 
foreachFF 
(FF 
varFF 
itemFF !
inFF" $&
gamesBeenPlayingDictionaryFF% ?
)FF? @
{GG 
ifHH 
(HH 
itemHH 
.HH 
KeyHH  
==HH! #
roomCodeHH$ ,
)HH, -
{II 
varJJ 
team1JJ !
=JJ" #
itemJJ$ (
.JJ( )
ValueJJ) .
.JJ. /
WhereJJ/ 4
(JJ4 5
plJJ5 7
=>JJ8 :
plJJ; =
.JJ= >
SideTeamJJ> F
==JJG I
$numJJJ K
)JJK L
.JJL M
ToListJJM S
(JJS T
)JJT U
;JJU V
varKK 
team2KK !
=KK" #
itemKK$ (
.KK( )
ValueKK) .
.KK. /
WhereKK/ 4
(KK4 5
plKK5 7
=>KK8 :
plKK; =
.KK= >
SideTeamKK> F
==KKG I
$numKKJ K
)KKK L
.KKL M
ToListKKM S
(KKS T
)KKT U
;KKU V
team1LL 
[LL 
$numLL 
]LL  
.LL  !
TurnOfPlayerLL! -
=LL. /
$numLL0 1
;LL1 2
team1MM 
[MM 
$numMM 
]MM  
.MM  !
TurnOfPlayerMM! -
=MM. /
$numMM0 1
;MM1 2
team2NN 
[NN 
$numNN 
]NN  
.NN  !
TurnOfPlayerNN! -
=NN. /
$numNN0 1
;NN1 2
team2OO 
[OO 
$numOO 
]OO  
.OO  !
TurnOfPlayerOO! -
=OO. /
$numOO0 1
;OO1 2
}PP 
}QQ 
}RR 
}SS 	
publicUU 
classUU 
PlayerPlayingInGameUU (
{VV 	
publicWW 
intWW 
IdUserWW 
{WW 
getWW  #
;WW# $
setWW% (
;WW( )
}WW* +
publicXX 
intXX 
IdPlayerXX 
{XX  !
getXX" %
;XX% &
setXX' *
;XX* +
}XX, -
publicYY 
StringYY 
UserNameYY "
{YY# $
getYY% (
;YY( )
setYY* -
;YY- .
}YY/ 0
publicZZ 
intZZ  
NumberOfPlayerInGameZZ +
{ZZ, -
getZZ. 1
;ZZ1 2
setZZ3 6
;ZZ6 7
}ZZ8 9
public[[ 
int[[ 
SideTeam[[ 
{[[  !
get[[" %
;[[% &
set[[' *
;[[* +
}[[, -
public\\ 
int\\ 
TurnOfPlayer\\ #
{\\$ %
get\\& )
;\\) *
set\\+ .
;\\. /
}\\0 1
public]] 
int]] 
FinalPoints]] "
{]]# $
get]]% (
;]]( )
set]]* -
;]]- .
}]]/ 0
public^^ 
bool^^ 
DidBet^^ 
{^^  
get^^! $
;^^$ %
set^^& )
;^^) *
}^^+ ,
public__ 
bool__ !
DidAnswerLastQuestion__ -
{__. /
get__0 3
;__3 4
set__5 8
;__8 9
}__: ;
public`` 
int`` 
IdAvatar`` 
{``  !
get``" %
;``% &
set``' *
;``* +
}``, -
publicaa 
OperationContextaa #
gameCallbackChannelaa$ 7
{aa8 9
getaa: =
;aa= >
setaa? B
;aaB C
}aaD E
}bb 	
}cc 
}dd Â
èC:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameServer\JeopardyGame.Service\DataDictionaries\ActiveUsersDictionary.cs
	namespace		 	
JeopardyGame		
 
.		 
Service		 
{

 
public 

static 
class !
ActiveUsersDictionary -
{ 
private 
static 

Dictionary !
<! "
int" %
,% &
OperationContext' 7
>7 8
activeUsers9 D
=E F
newG J

DictionaryK U
<U V
intV Y
,Y Z
OperationContext[ k
>k l
(l m
)m n
;n o
public 
static 
void -
!RegisterNewActiveUserInDictionary <
(< =
int= @
idUserA G
,G H
OperationContextI Y
channelZ a
)a b
{ 	
if 
( 
idUser 
!= 
$num 
&& 
channel &
!=' )
null* .
&&/ 1
!2 3
activeUsers3 >
.> ?
ContainsKey? J
(J K
idUserK Q
)Q R
)R S
{ 
activeUsers 
. 
Add 
(  
idUser  &
,& '
channel( /
)/ 0
;0 1
} 
} 	
public 
static 
OperationContext &(
GetChannelCallBackActiveUser' C
(C D
intD G
idUserH N
)N O
{ 	
if 
( 
idUser 
!= 
$num 
) 
{ 
foreach 
( 
var 
item !
in" $
activeUsers% 0
)0 1
{ 
if 
( 
item 
. 
Key  
==! #
idUser$ *
)* +
{ 
return 
item #
.# $
Value$ )
;) *
} 
} 
}   
return!! 
null!! 
;!! 
}"" 	
public$$ 
static$$ 
void$$ 4
(RemoveRegistryOfActiveUserFromDictionary$$ C
($$C D
int$$D G
idUser$$H N
)$$N O
{%% 	
if&& 
(&& 
idUser&& 
!=&& 
$num&& 
&&&& 
activeUsers&& *
.&&* +
ContainsKey&&+ 6
(&&6 7
idUser&&7 =
)&&= >
)&&> ?
{'' 
activeUsers(( 
.(( 
Remove(( "
(((" #
idUser((# )
)(() *
;((* +
})) 
}** 	
public,, 
static,, 
void,, #
RenewAvailabityCallBack,, 2
(,,2 3
int,,3 6
idUser,,7 =
,,,= >
OperationContext,,? O
channel,,P W
),,W X
{-- 	
if.. 
(.. 
idUser.. 
!=.. 
$num.. 
&&.. 
activeUsers.. *
...* +
ContainsKey..+ 6
(..6 7
idUser..7 =
)..= >
)..> ?
{// 
activeUsers00 
[00 
idUser00 "
]00" #
=00$ %
channel00& -
;00- .
}11 
else22 
{33 -
!RegisterNewActiveUserInDictionary44 1
(441 2
idUser442 8
,448 9
channel44: A
)44A B
;44B C
}55 
}77 	
public99 
static99 

Dictionary99  
<99  !
int99! $
,99$ %
OperationContext99& 6
>996 7
GetActiveUsersList998 J
(99J K
)99K L
{:: 	
return;; 
activeUsers;; 
;;; 
}<< 	
}== 
}>> ÒM
âC:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameServer\JeopardyGame.Service\DataDictionaries\ChatsDictionary.cs
	namespace		 	
JeopardyGame		
 
.		 
Service		 
.		 
DataDictionaries		 /
{

 
public 

static 
class 
ChatsDictionary '
{ 
private 
static 

Dictionary !
<! "
int" %
,% &#
HistoricalOfAllMessages' >
>> ?
activeChats@ K
=L M
newN Q

DictionaryR \
<\ ]
int] `
,` a#
HistoricalOfAllMessagesb y
>y z
(z {
){ |
;| }
public 
static 
void '
RegisterNewChatInDictionary 6
(6 7
int7 :
roomCode; C
,C D#
HistoricalOfAllMessagesE \
newChat] d
)d e
{ 	
if 
( 
roomCode 
!= 
$num 
&&  
newChat! (
!=) +
null, 0
&&1 3
!4 5
activeChats5 @
.@ A
ContainsKeyA L
(L M
roomCodeM U
)U V
)V W
{ 
activeChats 
. 
Add 
(  
roomCode  (
,( )
newChat* 1
)1 2
;2 3
} 
} 	
public 
static #
HistoricalOfAllMessages -
GetActiveChat. ;
(; <
int< ?
roomCode@ H
)H I
{ 	
if 
( 
roomCode 
!= 
$num 
) 
{ 
foreach 
( 
var 
item !
in" $
activeChats% 0
)0 1
{ 
if 
( 
item 
. 
Key  
==! #
roomCode$ ,
), -
{ 
return 
item #
.# $
Value$ )
;) *
} 
}   
}!! 
return"" 
null"" 
;"" 
}## 	
public$$ 
static$$ 
void$$ 4
(RemoveRegistryOfActiveChatFromDictionary$$ C
($$C D
int$$D G
roomCode$$H P
)$$P Q
{%% 	
if&& 
(&& 
roomCode&& 
!=&& 
$num&& 
&&&&  
activeChats&&! ,
.&&, -
ContainsKey&&- 8
(&&8 9
roomCode&&9 A
)&&A B
)&&B C
{'' 
activeChats(( 
.(( 
Remove(( "
(((" #
roomCode((# +
)((+ ,
;((, -
})) 
}** 	
public-- 
static-- 

Dictionary-- !
<--! "
int--" %
,--% &#
HistoricalOfAllMessages--' >
>--> ?
GetActiveChatList--@ Q
(--Q R
)--R S
{.. 	
return// 
activeChats// 
;// 
}00 	
public22 
class22 #
HistoricalOfAllMessages22 ,
{33 	
public44 
int44 
idAdmin44 
{44  
get44! $
;44$ %
set44& )
;44) *
}44+ ,
public55 
List55 
<55 
MessageChat55 #
>55# $
listOfMessages55% 3
{554 5
get556 9
;559 :
set55; >
;55> ?
}55@ A
public77 #
HistoricalOfAllMessages77 *
(77* +
)77+ ,
{88 
listOfMessages99 
=99  
new99! $
List99% )
<99) *
MessageChat99* 5
>995 6
(996 7
)997 8
;998 9
}:: 
};; 	
private@@ 
static@@ 

Dictionary@@ !
<@@! "
int@@" %
,@@% &)
ChannelsCallBackInActiveChats@@' D
>@@D E&
channelsCallBackDictionary@@F `
=@@a b
new@@c f

Dictionary@@g q
<@@q r
int@@r u
,@@u v*
ChannelsCallBackInActiveChats	@@w î
>
@@î ï
(
@@ï ñ
)
@@ñ ó
;
@@ó ò
publicBB 
staticBB 
voidBB *
RegisterNewChannelCallbackChatBB 9
(BB9 :
intBB: =
roomCodeBB> F
,BBF G)
ChannelsCallBackInActiveChatsBBH e

newChannelBBf p
)BBp q
{CC 	
ifDD 
(DD 
roomCodeDD 
!=DD 
$numDD 
&&DD  

newChannelDD! +
!=DD, .
nullDD/ 3
&&DD4 6
!DD7 8&
channelsCallBackDictionaryDD8 R
.DDR S
ContainsKeyDDS ^
(DD^ _
roomCodeDD_ g
)DDg h
)DDh i
{EE &
channelsCallBackDictionaryFF *
.FF* +
AddFF+ .
(FF. /
roomCodeFF/ 7
,FF7 8

newChannelFF9 C
)FFC D
;FFD E
}GG 
}HH 	
publicII 
staticII )
ChannelsCallBackInActiveChatsII 3"
GetChannelCallBackChatII4 J
(IIJ K
intIIK N
roomCodeIIO W
)IIW X
{JJ 	
ifKK 
(KK 
roomCodeKK 
!=KK 
$numKK 
)KK 
{LL 
foreachMM 
(MM 
varMM 
itemMM !
inMM" $&
channelsCallBackDictionaryMM% ?
)MM? @
{NN 
ifOO 
(OO 
itemOO 
.OO 
KeyOO  
==OO! #
roomCodeOO$ ,
)OO, -
{PP 
returnQQ 
itemQQ #
.QQ# $
ValueQQ$ )
;QQ) *
}RR 
}SS 
}TT 
returnUU 
nullUU 
;UU 
}VV 	
publicWW 
staticWW 
voidWW =
1RemoveRegistryOfChannelCallBakcChatFromDictionaryWW L
(WWL M
intWWM P
roomCodeWWQ Y
)WWY Z
{XX 	
ifYY 
(YY 
roomCodeYY 
!=YY 
$numYY 
&&YY  &
channelsCallBackDictionaryYY! ;
.YY; <
ContainsKeyYY< G
(YYG H
roomCodeYYH P
)YYP Q
)YYQ R
{ZZ &
channelsCallBackDictionary[[ *
.[[* +
Remove[[+ 1
([[1 2
roomCode[[2 :
)[[: ;
;[[; <
}\\ 
}]] 	
public__ 
static__ 
void__ !
RenewLiveChatCallBack__ 0
(__0 1
int__1 4
roomCode__5 =
,__= >
int__? B
idUser__C I
,__I J
OperationContext__K [
channel__\ c
)__c d
{`` 	
ifaa 
(aa 
roomCodeaa 
!=aa 
$numaa 
&&aa  
idUseraa! '
!=aa( *
$numaa+ ,
&&aa- /
channelaa0 7
!=aa8 :
nullaa; ?
&&aa@ B&
channelsCallBackDictionaryaaC ]
.aa] ^
ContainsKeyaa^ i
(aai j
roomCodeaaj r
)aar s
)aas t
{bb 
varcc 
listChannelscc  
=cc! "&
channelsCallBackDictionarycc# =
[cc= >
roomCodecc> F
]ccF G
;ccG H
ifdd 
(dd 
listChannelsdd 
!=dd  "
nulldd# '
&&dd( *
listChannelsdd+ 7
.dd7 8"
listOfChannelsCallBackdd8 N
.ddN O
ExistsddO U
(ddU V
plddV X
=>ddY [
pldd\ ^
.dd^ _
idUserdd_ e
==ddf h
idUserddi o
)ddo p
)ddp q
{ee 
varff 
chatOfPlayerff $
=ff% &
listChannelsff' 3
.ff3 4"
listOfChannelsCallBackff4 J
.ffJ K
FindffK O
(ffO P
plffP R
=>ffS U
plffV X
.ffX Y
idUserffY _
==ff` b
idUserffc i
)ffi j
;ffj k
ifgg 
(gg 
chatOfPlayergg #
!=gg$ &
nullgg' +
)gg+ ,
{hh 
chatOfPlayerii $
.ii$ %$
communicationChannelChatii% =
=ii> ?
channelii@ G
;iiG H
}jj 
}kk 
}ll 
}mm 	
}nn 
publicqq 

classqq )
ChannelsCallBackInActiveChatsqq .
{rr 
publicss 
intss 
idAdminss 
{ss 
getss  
;ss  !
setss" %
;ss% &
}ss' (
publictt 
Listtt 
<tt '
SpecificChannelCallBackChattt /
>tt/ 0"
listOfChannelsCallBacktt1 G
{ttH I
getttJ M
;ttM N
setttO R
;ttR S
}ttT U
publicvv )
ChannelsCallBackInActiveChatsvv ,
(vv, -
)vv- .
{ww 	"
listOfChannelsCallBackxx "
=xx# $
newxx% (
Listxx) -
<xx- .'
SpecificChannelCallBackChatxx. I
>xxI J
(xxJ K
)xxK L
;xxL M
}yy 	
}zz 
public|| 

class|| '
SpecificChannelCallBackChat|| ,
{}} 
public~~ 
int~~ 
idUser~~ 
{~~ 
get~~ 
;~~  
set~~! $
;~~$ %
}~~& '
public 
OperationContext $
communicationChannelChat  8
{9 :
get; >
;> ?
set@ C
;C D
}E F
}
ÄÄ 
}ÅÅ Å
ïC:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameServer\JeopardyGame.Service\DataDictionaries\EmailConfirmationDictionary.cs
	namespace

 	
JeopardyGame


 
.

 
Service

 
.

 
DataDictionaries

 /
{ 
public 

static 
class '
EmailConfirmationDictionary 3
{ 
private 
static 

Dictionary !
<! "
String" (
,( )
UserPojo* 2
>2 3'
emailConfirmationDictionary4 O
=P Q
newR U

DictionaryV `
<` a
Stringa g
,g h
UserPojoi q
>q r
(r s
)s t
;t u
public 
static 
void $
RegisterNewUserToConfirm 3
(3 4
String4 :
code; ?
,? @
UserPojoA I
newUserToConfirmJ Z
)Z [
{ 	
if 
( 
! '
emailConfirmationDictionary ,
., -
ContainsKey- 8
(8 9
code9 =
)= >
&&? A
!B C'
emailConfirmationDictionaryC ^
.^ _
Values_ e
.e f
Anyf i
(i j
userj n
=>o q
userr v
.v w
UserNamew 
==
Ä Ç
newUserToConfirm
É ì
.
ì î
UserName
î ú
)
ú ù
)
ù û
{ '
emailConfirmationDictionary +
.+ ,
Add, /
(/ 0
code0 4
,4 5
newUserToConfirm6 F
)F G
;G H
} 
} 	
public 
static 
UserPojo $
GetSpecificUserToConfirm 7
(7 8
string8 >
code? C
)C D
{ 	
if 
( 
! 
string 
. 
IsNullOrEmpty %
(% &
code& *
)* +
)+ ,
{- .
foreach 
( 
var 
item !
in" $'
emailConfirmationDictionary% @
)@ A
{ 
if 
( 
item 
. 
Key  
==! #
code$ (
)( )
{ 
return 
item #
.# $
Value$ )
;) *
} 
} 
}   
return!! 
null!! 
;!! 
}"" 	
public$$ 
static$$ 
void$$ .
"RemoveRegistryOfUserFromDictionary$$ =
($$= >
string$$> D
code$$E I
)$$I J
{%% 	
if&& 
(&& 
!&& 
string&& 
.&& 
IsNullOrEmpty&& %
(&&% &
code&&& *
)&&* +
&&&&, .'
emailConfirmationDictionary&&/ J
.&&J K
ContainsKey&&K V
(&&V W
code&&W [
)&&[ \
)&&\ ]
{'' '
emailConfirmationDictionary(( +
.((+ ,
Remove((, 2
(((2 3
code((3 7
)((7 8
;((8 9
})) 
}** 	
public,, 
static,, 

Dictionary,,  
<,,  !
string,,! '
,,,' (
UserPojo,,) 1
>,,1 2
GetUserToVerifyList,,3 F
(,,F G
),,G H
{-- 	
return.. '
emailConfirmationDictionary.. .
;... /
}// 	
}66 
}77 Ù6
èC:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameServer\JeopardyGame.Service\DataDictionaries\GameLobbiesDictionary.cs
	namespace		 	
JeopardyGame		
 
.		 
Service		 
.		 
DataDictionaries		 /
{

 
public 

static 
class !
GameLobbiesDictionary -
{ 
private 
static 

Dictionary !
<! "
int" %
,% &
Lobby' ,
>, -#
activeLobbiesDictionary. E
=F G
newH K

DictionaryL V
<V W
intW Z
,Z [
Lobby\ a
>a b
(b c
)c d
;d e
public 
static 
void 
RegisterNewLobby +
(+ ,
int, /
roomCode0 8
,8 9
Lobby: ?
newLobby@ H
)H I
{ 	
if 
( 
roomCode 
!= 
$num 
&&  
newLobby! )
!=* ,
null- 1
&&2 4
!5 6#
activeLobbiesDictionary6 M
.M N
ContainsKeyN Y
(Y Z
roomCodeZ b
)b c
)c d
{ #
activeLobbiesDictionary '
.' (
Add( +
(+ ,
roomCode, 4
,4 5
newLobby6 >
)> ?
;? @
} 
} 	
public 
static 
Lobby "
GetSpecificActiveLobby 2
(2 3
int3 6
roomCode7 ?
)? @
{ 	
if 
( 
roomCode 
!= 
$num 
) 
{ 
foreach 
( 
var 
item !
in" $#
activeLobbiesDictionary% <
)< =
{ 
if 
( 
item 
. 
Key  
==! #
roomCode$ ,
), -
{ 
return 
item #
.# $
Value$ )
;) *
} 
}   
}!! 
return"" 
null"" 
;"" 
}## 	
public%% 
static%% 
void%% /
#RemoveRegistryOfLobbyFromDictionary%% >
(%%> ?
int%%? B
roomCode%%C K
)%%K L
{&& 	
if'' 
('' 
roomCode'' 
!='' 
$num'' 
&&''  #
activeLobbiesDictionary''! 8
.''8 9
ContainsKey''9 D
(''D E
roomCode''E M
)''M N
)''N O
{(( #
activeLobbiesDictionary)) '
.))' (
Remove))( .
()). /
roomCode))/ 7
)))7 8
;))8 9
}** 
}++ 	
public-- 
static-- 
void-- 
RenewLobbyCalBack-- ,
(--, -
int--- 0
roomCode--1 9
,--9 :
int--; >
idUser--? E
,--E F
OperationContext--G W
channel--X _
)--_ `
{.. 	
if// 
(// 
roomCode// 
!=// 
$num// 
&&// 
idUser//  &
!=//' )
$num//* +
&&//, .
channel/// 6
!=//7 9
null//: >
&&//? A#
activeLobbiesDictionary//B Y
.//Y Z
ContainsKey//Z e
(//e f
roomCode//f n
)//n o
)//o p
{00 
var11 
lobby11 
=11 #
activeLobbiesDictionary11 3
[113 4
roomCode114 <
]11< =
;11= >
if22 
(22 
lobby22 
!=22 
null22 !
&&22" $
lobby22% *
.22* +
listOfPlayerInLobby22+ >
.22> ?
Exists22? E
(22E F
pla22F I
=>22J L
pla22M P
.22P Q
idUser22Q W
==22X Z
idUser22[ a
)22a b
)22b c
{33 
var44 
lobbyPlayer44 #
=44$ %
lobby44& +
.44+ ,
listOfPlayerInLobby44, ?
.44? @
Find44@ D
(44D E
pla44E H
=>44I K
pla44L O
.44O P
idUser44P V
==44W Y
idUser44Z `
)44` a
;44a b
if55 
(55 
lobbyPlayer55 "
!=55# %
null55& *
)55* +
{66 
lobbyPlayer77 #
.77# $-
!lobbyCommunicationChannelCallback77$ E
=77F G
channel77H O
;77O P
}88 
}99 
}:: 
};; 	
public== 
static== 

Dictionary==  
<==  !
int==! $
,==$ %
Lobby==& +
>==+ , 
GetActiveLobbiesList==- A
(==A B
)==B C
{>> 	
return?? #
activeLobbiesDictionary?? *
;??* +
}@@ 	
}BB 
publicCC 

classCC 
LobbyCC 
{DD 
publicEE 
intEE 
idAdminEE 
{EE 
getEE  
;EE  !
setEE" %
;EE% &
}EE' (
publicFF 
ListFF 
<FF 
PlayerOnLobbyListFF %
>FF% &
listOfPlayerInLobbyFF' :
{FF; <
getFF= @
;FF@ A
setFFB E
;FFE F
}FFG H
publicHH 
LobbyHH 
(HH 
)HH 
{II 	
listOfPlayerInLobbyJJ 
=JJ  !
newJJ" %
ListJJ& *
<JJ* +
PlayerOnLobbyListJJ+ <
>JJ< =
(JJ= >
)JJ> ?
;JJ? @
}KK 	
}LL 
publicMM 

classMM 
PlayerOnLobbyListMM "
(MM" #
)MM# $
{NN 
publicOO 
intOO 
idUserOO 
{OO 
getOO 
;OO  
setOO! $
;OO$ %
}OO& '
publicPP 
intPP 
idPlayerPP 
{PP 
getPP !
;PP! "
setPP# &
;PP& '
}PP( )
publicQQ 
StringQQ 
userNameQQ 
{QQ  
getQQ! $
;QQ$ %
setQQ& )
;QQ) *
}QQ+ ,
publicRR 
intRR !
numberOfPlayerInLobbyRR (
{RR) *
getRR+ .
;RR. /
setRR0 3
;RR3 4
}RR5 6
publicSS 
intSS 
sideTeamSS 
{SS 
getSS !
;SS! "
setSS# &
;SS& '
}SS( )
publicTT 
OperationContextTT -
!lobbyCommunicationChannelCallbackTT  A
{TTB C
getTTD G
;TTG H
setTTI L
;TTL M
}TTM N
}UU 
}VV √!
ëC:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameServer\JeopardyGame.Service\DataDictionaries\FriendManagerDictionary.cs
	namespace 	
JeopardyGame
 
. 
Service 
{		 
public

 

static

 
class

 #
FriendManagerDictionary

 /
{ 
private 
static 

Dictionary !
<! "
int" %
,% &
OperationContext' 7
>7 8(
friendManagerUsersDictionary9 U
=V W
newX [

Dictionary\ f
<f g
intg j
,j k
OperationContextl |
>| }
(} ~
)~ 
;	 Ä
public 
static 
void -
!RegisterNewFriendUserInDictionary <
(< =
int= @
idUserA G
,G H
OperationContextI Y
channelZ a
)a b
{ 	
if 
( 
idUser 
!= 
$num 
&& 
channel &
!=' )
null* .
&&/ 1
!2 3(
friendManagerUsersDictionary3 O
.O P
ContainsKeyP [
([ \
idUser\ b
)b c
)c d
{ (
friendManagerUsersDictionary ,
., -
Add- 0
(0 1
idUser1 7
,7 8
channel9 @
)@ A
;A B
} 
} 	
public 
static 
OperationContext & 
GetChannelFriendUser' ;
(; <
int< ?
idUser@ F
)F G
{ 	
if 
( 
idUser 
!= 
$num 
) 
{ 
foreach 
( 
var 
item !
in" $(
friendManagerUsersDictionary% A
)A B
{ 
if 
( 
item 
. 
Key  
==! #
idUser$ *
)* +
{ 
return 
item #
.# $
Value$ )
;) *
} 
} 
}   
return!! 
null!! 
;!! 
}"" 	
public$$ 
static$$ 
void$$ 0
$RemoveRegistryOfFriendFromDictionary$$ ?
($$? @
int$$@ C
idUser$$D J
)$$J K
{%% 	
if&& 
(&& 
idUser&& 
!=&& 
$num&& 
&&&& (
friendManagerUsersDictionary&& ;
.&&; <
ContainsKey&&< G
(&&G H
idUser&&H N
)&&N O
)&&O P
{'' (
friendManagerUsersDictionary(( ,
.((, -
Remove((- 3
(((3 4
idUser((4 :
)((: ;
;((; <
})) 
}** 	
public,, 
static,, 
void,, &
RenewFriendManagerCallBack,, 5
(,,5 6
int,,6 9
idUser,,: @
,,,@ A
OperationContext,,B R
channel,,S Z
),,Z [
{-- 	
if.. 
(.. 
idUser.. 
!=.. 
$num.. 
&&.. 
channel.. &
!=..' )
null..* .
&&../ 1(
friendManagerUsersDictionary..2 N
...N O
ContainsKey..O Z
(..Z [
idUser..[ a
)..a b
)..b c
{// (
friendManagerUsersDictionary00 ,
[00, -
idUser00- 3
]003 4
=005 6
channel007 >
;00> ?
}11 
else22 
{33 -
!RegisterNewFriendUserInDictionary44 1
(441 2
idUser442 8
,448 9
channel44: A
)44A B
;44B C
}55 
}66 	
public88 
static88 

Dictionary88  
<88  !
int88! $
,88$ %
OperationContext88& 6
>886 7 
GetActiveFriendsList888 L
(88L M
)88M N
{99 	
return:: (
friendManagerUsersDictionary:: /
;::/ 0
};; 	
}<< 
}== ¯:
áC:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameServer\JeopardyGame.Service\DataDictionaries\LivingClients.cs
	namespace

 	
JeopardyGame


 
.

 
Service

 
.

 
DataDictionaries

 /
{ 
public 

static 
class 
LivingClients %
{ 
private 
static 

Dictionary !
<! "
string" (
,( )
OperationContext* :
>: ;
livingClients< I
=J K
newL O

DictionaryP Z
<Z [
string[ a
,a b
OperationContextc s
>s t
(t u
)u v
;v w
public 
static 
void )
RegisterNewClientInDictionary 8
(8 9
string9 ?
userName@ H
,H I
OperationContextJ Z
channel[ b
)b c
{ 	
if 
( 
! 
string 
. 
IsNullOrEmpty %
(% &
userName& .
). /
&&0 2
channel3 :
!=; =
null> B
&&C E
!F G
livingClientsG T
.T U
ContainsKeyU `
(` a
userNamea i
)i j
)j k
{ 
livingClients 
. 
Add !
(! "
userName" *
,* +
channel, 3
)3 4
;4 5
} 
} 	
public 
static 
OperationContext &
	GetClient' 0
(0 1
string1 7
userName8 @
)@ A
{ 	
if 
( 
! 
string 
. 
IsNullOrEmpty %
(% &
userName& .
). /
)/ 0
{ 
foreach 
( 
var 
item !
in" $
livingClients% 2
)2 3
{ 
if 
( 
item 
. 
Key  
==! #
userName$ ,
), -
{ 
return   
item   #
.  # $
Value  $ )
;  ) *
}!! 
}"" 
}## 
return$$ 
null$$ 
;$$ 
}%% 	
public'' 
static'' 
void'' &
RemoveClientFromDictionary'' 5
(''5 6
string''6 <
userName''= E
)''E F
{(( 	
if)) 
()) 
!)) 
string)) 
.)) 
IsNullOrEmpty)) %
())% &
userName))& .
))). /
&&))0 2
livingClients))3 @
.))@ A
ContainsKey))A L
())L M
userName))M U
)))U V
)))V W
{** 
livingClients++ 
.++ 
Remove++ $
(++$ %
userName++% -
)++- .
;++. /
},, 
}-- 	
public// 
static// 
void// 
RenewLivingCallBack// .
(//. /
string/// 5
userName//6 >
,//> ?
OperationContext//@ P
channel//Q X
)//X Y
{00 	
if11 
(11 
!11 
string11 
.11 
IsNullOrEmpty11 %
(11% &
userName11& .
)11. /
&&110 2
channel113 :
!=11; =
null11> B
&&11C E
livingClients11F S
.11S T
ContainsKey11T _
(11_ `
userName11` h
)11h i
)11i j
{22 
livingClients33 
[33 
userName33 &
]33& '
=33( )
channel33* 1
;331 2
}44 
else55 
{66 )
RegisterNewClientInDictionary77 -
(77- .
userName77. 6
,776 7
channel778 ?
)77? @
;77@ A
}88 
}99 	
public;; 
static;; 

Dictionary;;  
<;;  !
string;;! '
,;;' (
OperationContext;;) 9
>;;9 : 
GetLivingClientsList;;; O
(;;O P
);;P Q
{<< 	
return== 
livingClients==  
;==  !
}>> 	
public@@ 
static@@ 
void@@ 
CheckCallBacks@@ )
(@@) *
)@@* +
{AA 	
ListBB 
<BB 
stringBB 
>BB #
clientsNotActiveAnymoreBB 0
=BB1 2
newBB3 6
ListBB7 ;
<BB; <
stringBB< B
>BBB C
(BBC D
)BBD E
;BBE F
foreachCC 
(CC 
varCC 
itemCC 
inCC  
livingClientsCC! .
)CC. /
{DD 
tryEE 
{FF 
boolGG 
isActiveGG !
=GG" #
itemGG$ (
.GG( )
ValueGG) .
.GG. /
GetCallbackChannelGG/ A
<GGA B$
ICheckUserLivingCallBackGGB Z
>GGZ [
(GG[ \
)GG\ ]
.GG] ^
IsClientActiveGG^ l
(GGl m
)GGm n
;GGn o
ifHH 
(HH 
!HH 
isActiveHH !
)HH! "
{II #
clientsNotActiveAnymoreJJ /
.JJ/ 0
AddJJ0 3
(JJ3 4
itemJJ4 8
.JJ8 9
KeyJJ9 <
)JJ< =
;JJ= >
}KK 
}LL 
catchMM 
(MM /
#CommunicationObjectFaultedExceptionMM :
exMM; =
)MM= >
{NN 
ExceptionHandlerOO $
.OO$ %
LogExceptionOO% 1
(OO1 2
exOO2 4
,OO4 5
ExceptionDictionaryOO6 I
.OOI J
FATAL_EXCEPTIONOOJ Y
)OOY Z
;OOZ [#
clientsNotActiveAnymorePP +
.PP+ ,
AddPP, /
(PP/ 0
itemPP0 4
.PP4 5
KeyPP5 8
)PP8 9
;PP9 :
}QQ 
catchRR 
(RR 
TimeoutExceptionRR '
exRR( *
)RR* +
{SS #
clientsNotActiveAnymoreTT +
.TT+ ,
AddTT, /
(TT/ 0
itemTT0 4
.TT4 5
KeyTT5 8
)TT8 9
;TT9 :
ExceptionHandlerUU $
.UU$ %
LogExceptionUU% 1
(UU1 2
exUU2 4
,UU4 5
ExceptionDictionaryUU6 I
.UUI J
FATAL_EXCEPTIONUUJ Y
)UUY Z
;UUZ [
}VV 
catchWW 
(WW "
CommunicationExceptionWW -
exWW. 0
)WW0 1
{XX 
ExceptionHandlerYY $
.YY$ %
LogExceptionYY% 1
(YY1 2
exYY2 4
,YY4 5
ExceptionDictionaryYY6 I
.YYI J
FATAL_EXCEPTIONYYJ Y
)YYY Z
;YYZ [#
clientsNotActiveAnymoreZZ +
.ZZ+ ,
AddZZ, /
(ZZ/ 0
itemZZ0 4
.ZZ4 5
KeyZZ5 8
)ZZ8 9
;ZZ9 :
}[[ 
}\\ 
foreach]] 
(]] 
var]] 
item]] 
in]]  #
clientsNotActiveAnymore]]! 8
)]]8 9
{^^ &
RemoveClientFromDictionary__ *
(__* +
item__+ /
)__/ 0
;__0 1
}`` 
}aa 	
}cc 
}dd ê*
ñC:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameServer\JeopardyGame.Service\DataDictionaries\PasswordChangeCodeDictionary.cs
	namespace 	
JeopardyGame
 
. 
Service 
. 
DataDictionaries /
{ 
public 

static 
class (
PasswordChangeCodeDictionary 5
{ 
private 
static 

Dictionary !
<! "
string" (
,( )
string* 0
>0 1
passwordsCodes2 @
=A B
newC F

DictionaryG Q
<Q R
stringR X
,X Y
stringZ `
>` a
(a b
)b c
;c d
private		 
static		 

Dictionary		 !
<		! "
string		" (
,		( )
Timer		* /
>		/ 0
timers		1 7
=		8 9
new		: =

Dictionary		> H
<		H I
string		I O
,		O P
Timer		Q V
>		V W
(		W X
)		X Y
;		Y Z
public 
static 
void 
AddTimerRegistry +
(+ ,
string, 2
userName3 ;
,; <
string= C
codeD H
)H I
{ 	
if 
( 
! 
string 
. 
IsNullOrEmpty %
(% &
userName& .
). /
&&0 2
!3 4
string4 :
.: ;
IsNullOrEmpty; H
(H I
codeI M
)M N
&&O Q
!R S
passwordsCodesS a
.a b
ContainsKeyb m
(m n
userNamen v
)v w
)w x
{ 
passwordsCodes 
. 
Add "
(" #
userName# +
,+ ,
code- 1
)1 2
;2 3
int 
time 
= 
$num 
; 
Timer 
timer 
= 
new !
Timer" '
(' (
time( ,
*- .
$num/ 1
*2 3
$num4 8
)8 9
;9 :
timer 
. 
Elapsed 
+=  
(! "
sender" (
,( )
e* +
)+ ,
=>- /
RemoveTimerRegistry0 C
(C D
userNameD L
)L M
;M N
timer 
. 
	AutoReset 
=  !
false" '
;' (
timers 
. 
Add 
( 
userName #
,# $
timer% *
)* +
;+ ,
timer 
. 
Start 
( 
) 
; 
} 
} 	
public 
static 
void 
RemoveTimerRegistry .
(. /
string/ 5
userName6 >
)> ?
{ 	
if 
( 
! 
string 
. 
IsNullOrEmpty %
(% &
userName& .
). /
&&0 2
passwordsCodes3 A
.A B
ContainsKeyB M
(M N
userNameN V
)V W
)W X
{ 
passwordsCodes 
. 
Remove %
(% &
userName& .
). /
;/ 0
} 
if 
( 
! 
string 
. 
IsNullOrEmpty %
(% &
userName& .
). /
&&0 2
timers3 9
.9 :
ContainsKey: E
(E F
userNameF N
)N O
)O P
{   
timers!! 
[!! 
userName!! 
]!!  
.!!  !
Dispose!!! (
(!!( )
)!!) *
;!!* +
timers"" 
."" 
Remove"" 
("" 
userName"" &
)""& '
;""' (
}## 
}$$ 	
public&& 
static&& 
bool&& &
DoesPassWordCodeContaisKey&& 5
(&&5 6
string&&6 <
userName&&= E
)&&E F
{'' 	
return(( 
passwordsCodes(( !
.((! "
ContainsKey((" -
(((- .
userName((. 6
)((6 7
;((7 8
})) 	
public++ 
static++ 
string++ 
GetSpecificCode++ ,
(++, -
string++- 3
userName++4 <
)++< =
{,, 	
if-- 
(-- 
!-- 
string-- 
.-- 
IsNullOrEmpty-- %
(--% &
userName--& .
)--. /
&&--0 2
passwordsCodes--3 A
.--A B
ContainsKey--B M
(--M N
userName--N V
)--V W
)--W X
{.. 
return// 
passwordsCodes// %
[//% &
userName//& .
]//. /
;/// 0
}00 
else11 
{22 
return33 
string33 
.33 
Empty33 #
;33# $
}44 
}55 	
}77 
}88 Ç
ïC:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameServer\JeopardyGame.Service\DataDictionaries\QuestionsForLobbyDictionary.cs
	namespace		 	
JeopardyGame		
 
.		 
Service		 
.		 
DataDictionaries		 /
{

 
public 

static 
class '
QuestionsForLobbyDictionary 3
{ 
private 
static 

Dictionary !
<! "
int" %
,% &
GenericClass' 3
<3 4
List4 8
<8 9#
QuestionCardInformation9 P
>P Q
>Q R
>R S
questionsForLobbyT e
=f g
newh k

Dictionaryl v
<v w
intw z
,z {
GenericClass	| à
<
à â
List
â ç
<
ç é%
QuestionCardInformation
é •
>
• ¶
>
¶ ß
>
ß ®
(
® ©
)
© ™
;
™ ´
public 
static 
void 1
%RegisterNewSetOfQuestionsInDictionary @
(@ A
intA D
roomCodeE M
,M N
GenericClassO [
<[ \
List\ `
<` a#
QuestionCardInformationa x
>x y
>y z
questionsSelected	{ å
)
å ç
{ 	
if 
( 
roomCode 
!= 
$num 
&&  
questionsSelected! 2
!=3 5
null6 :
&&; =
!> ?
questionsForLobby? P
.P Q
ContainsKeyQ \
(\ ]
roomCode] e
)e f
)f g
{ 
questionsForLobby !
.! "
Add" %
(% &
roomCode& .
,. /
questionsSelected0 A
)A B
;B C
} 
} 	
public 
static 
GenericClass "
<" #
List# '
<' (#
QuestionCardInformation( ?
>? @
>@ A-
!GetSpecificSetOfQuestionsForLobbyB c
(c d
intd g
roomCodeh p
)p q
{ 	
if 
( 
roomCode 
!= 
$num 
) 
{ 
foreach 
( 
var 
item !
in" $
questionsForLobby% 6
)6 7
{ 
if 
( 
item 
. 
Key  
==! #
roomCode$ ,
), -
{ 
return 
item #
.# $
Value$ )
;) *
}   
}!! 
}"" 
return## 
null## 
;## 
}$$ 	
public%% 
static%% 
void%% .
"RemoveSetOFQuestionsFromDictionary%% =
(%%= >
int%%> A
roomCode%%B J
)%%J K
{&& 	
if'' 
('' 
roomCode'' 
!='' 
$num'' 
&&''  
questionsForLobby''! 2
.''2 3
ContainsKey''3 >
(''> ?
roomCode''? G
)''G H
)''H I
{(( 
questionsForLobby)) !
.))! "
Remove))" (
())( )
roomCode))) 1
)))1 2
;))2 3
}** 
}++ 	
public,, 
static,, 

Dictionary,,  
<,,  !
int,,! $
,,,$ %
GenericClass,,& 2
<,,2 3
List,,3 7
<,,7 8#
QuestionCardInformation,,8 O
>,,O P
>,,P Q
>,,Q R'
GetAllActiveSetsOfQuestions,,S n
(,,n o
),,o p
{-- 	
return.. 
questionsForLobby.. $
;..$ %
}// 	
}00 
}11 “ 
ÉC:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameServer\JeopardyGame.Service\DataDictionaries\TeamChats.cs
	namespace		 	
JeopardyGame		
 
.		 
Service		 
.		 
DataDictionaries		 /
{

 
public 

static 
class 
	TeamChats !
{ 
private 
static 

Dictionary !
<! "
int" %
,% &
OperationContext' 7
>7 8
teamChatUser9 E
=F G
newH K

DictionaryL V
<V W
intW Z
,Z [
OperationContext\ l
>l m
(m n
)n o
;o p
public 
static 
void /
#RegisterNewTeamChatUserInDictionary >
(> ?
int? B
idUserC I
,I J
OperationContextK [
channel\ c
)c d
{ 	
if 
( 
idUser 
!= 
$num 
&& 
channel &
!=' )
null* .
&&/ 1
!2 3
teamChatUser3 ?
.? @
ContainsKey@ K
(K L
idUserL R
)R S
)S T
{ 
teamChatUser 
. 
Add  
(  !
idUser! '
,' (
channel) 0
)0 1
;1 2
} 
} 	
public 
static 
OperationContext &*
GetChannelCallBackTeamChatUser' E
(E F
intF I
idUserJ P
)P Q
{ 	
if 
( 
idUser 
!= 
$num 
) 
{ 
foreach 
( 
var 
item !
in" $
teamChatUser% 1
)1 2
{ 
if 
( 
item 
. 
Key  
==! #
idUser$ *
)* +
{ 
return 
item #
.# $
Value$ )
;) *
}   
}!! 
}"" 
return## 
null## 
;## 
}$$ 	
public&& 
static&& 
void&& 6
*RemoveRegistryOfTeamChatUserFromDictionary&& E
(&&E F
int&&F I
idUser&&J P
)&&P Q
{'' 	
if(( 
((( 
idUser(( 
!=(( 
$num(( 
&&(( 
teamChatUser(( +
.((+ ,
ContainsKey((, 7
(((7 8
idUser((8 >
)((> ?
)((? @
{)) 
teamChatUser** 
.** 
Remove** #
(**# $
idUser**$ *
)*** +
;**+ ,
}++ 
},, 	
public.. 
static.. 
void.. !
RenewTeamChatCallBack.. 0
(..0 1
int..1 4
idUser..5 ;
,..; <
OperationContext..= M
channel..N U
)..U V
{// 	
if00 
(00 
idUser00 
!=00 
$num00 
&&00 
channel00 &
!=00' )
null00* .
&&00/ 1
teamChatUser002 >
.00> ?
ContainsKey00? J
(00J K
idUser00K Q
)00Q R
)00R S
{11 
teamChatUser22 
[22 
idUser22 #
]22# $
=22% &
channel22' .
;22. /
}33 
else44 
{55 /
#RegisterNewTeamChatUserInDictionary66 3
(663 4
idUser664 :
,66: ;
channel66< C
)66C D
;66D E
}77 
}88 	
public:: 
static:: 

Dictionary::  
<::  !
int::! $
,::$ %
OperationContext::& 6
>::6 7 
GetTeamChatUsersList::8 L
(::L M
)::M N
{;; 	
return<< 
teamChatUser<< 
;<<  
}== 	
}>> 
}?? Ä;
|C:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameServer\JeopardyGame.Service\Helpers\EmailSender.cs
	namespace 	
JeopardyGame
 
. 
Service 
. 
Helpers &
{ 
public 

static 
class 
EmailSender #
{ 
public 
static 
int 
	SentEmail $
($ %
String% +
email, 1
,1 2
String3 9
subject: A
,A B
StringC I
bodyMessageJ U
)U V
{ 	
int 
resultToReturn 
; 
if 
( 
string 
. 
IsNullOrEmpty $
($ %
email% *
)* +
||, .
string/ 5
.5 6
IsNullOrEmpty6 C
(C D
subjectD K
)K L
||M O
stringP V
.V W
IsNullOrEmptyW d
(d e
bodyMessagee p
)p q
)q r
{ 
return 
ExceptionDictionary *
.* +
NULL_PARAEMETER+ :
;: ;
} 
var 

smtpClient 
= 
new  

SmtpClient! +
(+ ,

Properties, 6
.6 7
	Resources7 @
.@ A
	smptGmailA J
,J K
$numL O
)O P
{ 
	EnableSsl 
= 
true  
,  !!
UseDefaultCredentials %
=& '
false( -
,- .
Credentials 
= 
new !
NetworkCredential" 3
(3 4

Properties4 >
.> ?
	Resources? H
.H I
JeopardyEmailI V
,V W

PropertiesX b
.b c
	Resourcesc l
.l m
JeopardyPasswordm }
)} ~
} 
; 
try 
{   
Task!! 
success!! 
=!! 

smtpClient!! )
.!!) *
SendMailAsync!!* 7
(!!7 8
new!!8 ;
MailMessage!!< G
(!!G H
from!!H L
:!!L M

Properties!!N X
.!!X Y
	Resources!!Y b
.!!b c
JeopardyEmail!!c p
,!!p q
to!!r t
:!!t u
email!!v {
,!!{ |
subject	!!} Ñ
,
!!Ñ Ö
bodyMessage
!!Ü ë
)
!!ë í
)
!!í ì
;
!!ì î
if"" 
("" 
success"" 
!="" 
null"" #
)""# $
{## 
resultToReturn$$ "
=$$# $
ExceptionDictionary$$% 8
.$$8 9
SUCCESFULL_EVENT$$9 I
;$$I J
}&& 
else'' 
{(( 
resultToReturn)) "
=))# $
ExceptionDictionary))% 8
.))8 9
UNSUCCESFULL_EVENT))9 K
;))K L
}++ 
},, 
catch-- 
(-- !
ArgumentNullException-- (
ex--) +
)--+ ,
{.. 
GenericClassServer00 "
<00" #
int00# &
>00& '
result00( .
=00/ 0
new001 4
GenericClassServer005 G
<00G H
int00H K
>00K L
(00L M
)00M N
;00N O
resultToReturn11 
=11  
ExceptionHandler11! 1
.111 2)
HandleExceptionDataAccesLevel112 O
(11O P
result11P V
,11V W
ex11X Z
)11Z [
.11[ \
	CodeEvent11\ e
;11e f
ExceptionHandler22  
.22  !
LogException22! -
(22- .
ex22. 0
,220 1
ExceptionDictionary222 E
.22E F
FATAL_EXCEPTION22F U
)22U V
;22V W
}33 
catch44 
(44 '
ArgumentOutOfRangeException44 .
ex44/ 1
)441 2
{55 
GenericClassServer66 "
<66" #
int66# &
>66& '
result66( .
=66/ 0
new661 4
GenericClassServer665 G
<66G H
int66H K
>66K L
(66L M
)66M N
;66N O
resultToReturn77 
=77  
ExceptionHandler77! 1
.771 2)
HandleExceptionDataAccesLevel772 O
(77O P
result77P V
,77V W
ex77X Z
)77Z [
.77[ \
	CodeEvent77\ e
;77e f
ExceptionHandler88  
.88  !
LogException88! -
(88- .
ex88. 0
,880 1
ExceptionDictionary882 E
.88E F
FATAL_EXCEPTION88F U
)88U V
;88V W
}99 
catch:: 
(:: 
FormatException:: "
ex::# %
)::% &
{;; 
GenericClassServer<< "
<<<" #
int<<# &
><<& '
result<<( .
=<</ 0
new<<1 4
GenericClassServer<<5 G
<<<G H
int<<H K
><<K L
(<<L M
)<<M N
;<<N O
resultToReturn== 
===  
ExceptionHandler==! 1
.==1 2)
HandleExceptionDataAccesLevel==2 O
(==O P
result==P V
,==V W
ex==X Z
)==Z [
.==[ \
	CodeEvent==\ e
;==e f
ExceptionHandler>>  
.>>  !
LogException>>! -
(>>- .
ex>>. 0
,>>0 1
ExceptionDictionary>>2 E
.>>E F
FATAL_EXCEPTION>>F U
)>>U V
;>>V W
}?? 
catch@@ 
(@@ 
ArgumentException@@ $
ex@@% '
)@@' (
{AA 
GenericClassServerBB "
<BB" #
intBB# &
>BB& '
resultBB( .
=BB/ 0
newBB1 4
GenericClassServerBB5 G
<BBG H
intBBH K
>BBK L
(BBL M
)BBM N
;BBN O
resultToReturnCC 
=CC  
ExceptionHandlerCC! 1
.CC1 2)
HandleExceptionDataAccesLevelCC2 O
(CCO P
resultCCP V
,CCV W
exCCX Z
)CCZ [
.CC[ \
	CodeEventCC\ e
;CCe f
ExceptionHandlerDD  
.DD  !
LogExceptionDD! -
(DD- .
exDD. 0
,DD0 1
ExceptionDictionaryDD2 E
.DDE F
FATAL_EXCEPTIONDDF U
)DDU V
;DDV W
}EE 
catchFF 
(FF 
SmtpExceptionFF  
exFF! #
)FF# $
{GG 
GenericClassServerHH "
<HH" #
intHH# &
>HH& '
resultHH( .
=HH/ 0
newHH1 4
GenericClassServerHH5 G
<HHG H
intHHH K
>HHK L
(HHL M
)HHM N
;HHN O
resultToReturnII 
=II  
ExceptionHandlerII! 1
.II1 2)
HandleExceptionDataAccesLevelII2 O
(IIO P
resultIIP V
,IIV W
exIIX Z
)IIZ [
.II[ \
	CodeEventII\ e
;IIe f
ExceptionHandlerJJ  
.JJ  !
LogExceptionJJ! -
(JJ- .
exJJ. 0
,JJ0 1
ExceptionDictionaryJJ2 E
.JJE F
FATAL_EXCEPTIONJJF U
)JJU V
;JJV W
}KK 
returnLL 
resultToReturnLL !
;LL! "
}MM 	
}OO 
}PP Û
àC:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameServer\JeopardyGame.Service\InterfacesSevices\IChatForTeams.cs
	namespace		 	
JeopardyGame		
 
.		 
Service		 
.		 
InterfacesSevices		 0
{

 
[ 
ServiceContract 
( 
CallbackContract %
=& '
typeof( .
(. /"
IIChatForTeamsCallBack/ E
)E F
)F G
]G H
public 

	interface 
IChatForTeams "
{ 
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 
RegisterForTeamChat  
(  !
int! $
idUser% +
)+ ,
;, -
[ 	
OperationContract	 
] 
int !
RenewTeamChatCallBack !
(! "
int" %
idUser& ,
), -
;- .
} 
[ 
ServiceContract 
] 
public 

	interface #
IChatForTeamsOperations ,
{ 
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 
SendMessageTeam 
( 
int  
idUser! '
,' (
int) ,

idTeamMate- 7
,7 8
String9 ?
userName@ H
,H I
StringJ P
messageToSendQ ^
)^ _
;_ `
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void "
UnregisterFromTeamChat #
(# $
int$ '
idUser( .
). /
;/ 0
} 
[ 
ServiceContract 
] 
public   

	interface   "
IIChatForTeamsCallBack   +
{!! 
["" 	
OperationContract""	 
]"" 
void## "
ReceiveMessageTeamChat## #
(### $
GenericClass##$ 0
<##0 1
MessageChat##1 <
>##< =
message##> E
)##E F
;##F G
}$$ 
}%% ì
ãC:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameServer\JeopardyGame.Service\InterfacesSevices\ICheckUserLiving.cs
	namespace		 	
JeopardyGame		
 
.		 
Service		 
.		 
InterfacesSevices		 0
{

 
[ 
ServiceContract 
( 
CallbackContract %
=& '
typeof( .
(. /$
ICheckUserLivingCallBack/ G
)G H
)H I
]I J
public 

	interface 
ICheckUserLiving %
{ 
[ 	
OperationContract	 
] 
int '
SubscribeToICheckUserLiving '
(' (
UserPojo( 0
user1 5
)5 6
;6 7
[ 	
OperationContract	 
] 
int 
RenewLivingCallBack 
(  
UserPojo  (
user) -
)- .
;. /
} 
[ 
ServiceContract 
] 
public 

	interface '
ICheckUserLivingUnsubscribe 0
{ 
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void +
UnsubscribeFromICheckUserLiving ,
(, -
UserPojo- 5
user6 :
): ;
;; <
} 
[ 
ServiceContract 
] 
public 

	interface $
ICheckUserLivingCallBack -
{   
[!! 	
OperationContract!!	 
]!! 
bool"" 
IsClientActive"" 
("" 
)"" 
;"" 
}## 
}$$ É
äC:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameServer\JeopardyGame.Service\InterfacesSevices\IConsultFriends.cs
	namespace

 	
JeopardyGame


 
.

 
Service

 
.

 
InterfacesServices

 1
{ 
[ 
ServiceContract 
] 
public 

	interface 
IConsultFriends $
{ 
[ 	
OperationContract	 
] 
GenericClass 
< 
List 
< "
FriendBasicInformation 0
>0 1
>1 2
GetUserFriends3 A
(A B
UserPojoB J
userK O
)O P
;P Q
[ 	
OperationContract	 
] 
GenericClass 
< 
List 
< "
FriendBasicInformation 0
>0 1
>1 2!
GetUserFriendRequests3 H
(H I
UserPojoI Q
userR V
)V W
;W X
[ 	
OperationContract	 
] 
GenericClass 
< 
List 
< "
FriendBasicInformation 0
>0 1
>1 2
GetUsersNotFriends3 E
(E F
UserPojoF N
userO S
)S T
;T U
} 
} ô
íC:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameServer\JeopardyGame.Service\InterfacesSevices\IConsultUserInformation.cs
	namespace

 	
JeopardyGame


 
.

 
Service

 
.

 
InterfacesServices

 1
{ 
[ 
ServiceContract 
] 
public 

	interface #
IConsultUserInformation ,
{ 
[ 	
OperationContract	 
] 
GenericClass 
< 
UserPojo 
> 
ConsultUserById .
(. /
int/ 2
idUser3 9
)9 :
;: ;
[ 	
OperationContract	 
] 
GenericClass 
< 
UserPojo 
> !
ConsultUserByIdPlayer 4
(4 5
int5 8
idPlayer9 A
)A B
;B C
[ 	
OperationContract	 
] 
GenericClass 
< 

PlayerPojo 
>  
ConsultPlayerById! 2
(2 3
int3 6
idPlayer7 ?
)? @
;@ A
[ 	
OperationContract	 
] 
GenericClass 
< 

PlayerPojo 
>  !
ConsultPlayerByIdUser! 6
(6 7
int7 :
idUser; A
)A B
;B C
[ 	
OperationContract	 
] 
GenericClass 
< 
UserPojo 
> !
ConsultUserByUserName 4
(4 5
String5 ;
userName< D
)D E
;E F
[ 	
OperationContract	 
] 
GenericClass 
< 
List 
< 

PlayerInfo $
>$ %
>% &!
GetPlayersInformation' <
(< =
int= @
idUserConsultingA Q
)Q R
;R S
} 
} ∫
éC:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameServer\JeopardyGame.Service\InterfacesSevices\IEmailSenderManager.cs
	namespace		 	
JeopardyGame		
 
.		 
Service		 
.		 
InterfacesSevices		 0
{

 
[ 
ServiceContract 
] 
internal 
	interface 
IEmailSenderManager *
{ 
[ 	
OperationContract	 
] 
GenericClass 
< 
int 
> 0
$SentEmailConfirmationToCreateAccount >
(> ?
UserPojo? G
userH L
,L M
StringN T
subjectU \
,\ ]
String^ d
bodyMessagee p
)p q
;q r
[ 	
OperationContract	 
] 
GenericClass 
< 
int 
> #
SentEmailInvitingToGame 1
(1 2
UserPojo2 :
user; ?
,? @
StringA G
subjectH O
,O P
StringQ W
bodyMessageX c
)c d
;d e
[ 	
OperationContract	 
] 
GenericClass 
< 
int 
> "
SentEmailForInvitation 0
(0 1
String1 7
email8 =
,= >
String? E
subjectF M
,M N
StringO U
bodyMessageV a
)a b
;b c
} 
} ∆%
íC:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameServer\JeopardyGame.Service\InterfacesSevices\IFriendlyManagerActions.cs
	namespace		 	
JeopardyGame		
 
.		 
Service		 
.		 
InterfacesServices		 1
{

 
[ 
ServiceContract 
( 
CallbackContract %
=& '
typeof( .
(. /)
IFriendManagerActionsCallBack/ L
)L M
)M N
]N O
public 

	interface !
IFriendManagerActions *
{ 
[ 	
OperationContract	 
] 
GenericClass 
< 
int 
> %
RegisterFriendManagerUser 3
(3 4
int4 7
idUserFriendManager8 K
)K L
;L M
[ 	
OperationContract	 
] 
int *
RenewFriendManagerUserCallBack *
(* +
int+ .
idUserFriendManager/ B
)B C
;C D
} 
[ 
ServiceContract 
] 
public 

	interface *
IFriendManagerActionOperations 3
{ 
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void '
UnregisterFriendManagerUser (
(( )
int) ,
idUserFriendManager- @
)@ A
;A B
[ 	
OperationContract	 
] 
GenericClass 
< 
int 
> 
BanUser !
(! "
int" %
idPlayerBanned& 4
,4 5
int6 9
idUserBanning: G
)G H
;H I
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void $
EliminateUserFromFriends %
(% &
int& )
idPlayerDeleting* :
,: ;
int< ?
idUserToEliminate@ Q
)Q R
;R S
[!! 	
OperationContract!!	 
(!! 
IsOneWay!! #
=!!$ %
true!!& *
)!!* +
]!!+ ,
void"" 
SendFriendRequest"" 
("" 
int"" "
idPLayerRequesting""# 5
,""5 6
int""7 :
idUserRequested""; J
)""J K
;""K L
[$$ 	
OperationContract$$	 
($$ 
IsOneWay$$ #
=$$$ %
true$$& *
)$$* +
]$$+ ,
void%% 
AcceptFriendRequest%%  
(%%  !
int%%! $
idPlayerAccepting%%% 6
,%%6 7
int%%8 ;
idUserRequesting%%< L
)%%L M
;%%M N
['' 	
OperationContract''	 
('' 
IsOneWay'' #
=''$ %
true''& *
)''* +
]''+ ,
void((  
DeclineFriendRequest(( !
(((! "
int((" %
idPlayerDeclining((& 7
,((7 8
int((9 <
idUserRequesting((= M
)((M N
;((N O
[** 	
OperationContract**	 
(** 
IsOneWay** #
=**$ %
true**& *
)*** +
]**+ ,
void++ $
NotifyUserAboutNewPlayer++ %
(++% &
int++& )
idNewPlayer++* 5
,++5 6
string++7 =
userName++> F
)++F G
;++G H
}-- 
[// 
ServiceContract// 
]// 
public00 

	interface00 )
IFriendManagerActionsCallBack00 2
{11 
[22 	
OperationContract22	 
]22 
void33 
ResponseReported33 
(33 
int33 !

numReports33" ,
)33, -
;33- .
[55 	
OperationContract55	 
]55 
void66 *
ResponseEliminationFromFriends66 +
(66+ ,
int66, /
idUser660 6
)666 7
;667 8
[88 	
OperationContract88	 
]88 
void99 !
ResponseRequestAction99 "
(99" #
int99# &
idUser99' -
,99- .
int99/ 2
requestStatus993 @
,99@ A
String99B H
userName99I Q
)99Q R
;99R S
[;; 	
OperationContract;;	 
];; 
void<< $
ResponseNewPlayerJusJoin<< %
(<<% &
int<<& )
idUser<<* 0
,<<0 1
string<<2 8
userName<<9 A
)<<A B
;<<B C
}== 
}?? è9
áC:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameServer\JeopardyGame.Service\InterfacesSevices\IGameActions.cs
	namespace

 	
JeopardyGame


 
.

 
Service

 
.

 
InterfacesSevices

 0
{ 
[ 
ServiceContract 
( 
CallbackContract %
=& '
typeof( .
(. / 
IGameActionsCallBack/ C
)C D
)D E
]E F
public 

	interface 
IGameActions "
{ 
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void #
SubscribeToGameCallBack $
($ %
int% (
roomCode) 1
,1 2
int3 6
idUserSubscribing7 H
,H I
intJ M
idAvatarN V
)V W
;W X
[ 	
OperationContract	 
] 
int 
RenewGameCallBack 
( 
int !
roomCode" *
,* +
int, /
idUser0 6
)6 7
;7 8
} 
[ 
ServiceContract 
] 
public 
	interface "
IGameActionsOperations -
{ 
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void '
UnSubscribeFromGameCallBack (
(( )
int) ,
roomCode- 5
,5 6
int7 :
idUserUnsubscribing; N
)N O
;O P
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void !
ChooseQuestionOfBoard "
(" #
int# &
roomCode' /
,/ 0
int1 4
idUserSelecting5 D
,D E
intF I
currentRoundJ V
,V W)
CurrentQuestionToShowContractX u
questionToShow	v Ñ
)
Ñ Ö
;
Ö Ü
[   	
OperationContract  	 
(   
IsOneWay   #
=  $ %
true  & *
)  * +
]  + ,
void!! 
ChooseAnswer!! 
(!! 
int!! 
roomCode!! &
,!!& '
int!!( +
idUserSelecting!!, ;
,!!; <
int!!= @
answerSelected!!A O
,!!O P
int!!Q T
pointsWorth!!U `
,!!` a
int!!b e
currentTurn!!f q
)!!q r
;!!r s
[## 	
OperationContract##	 
(## 
IsOneWay## #
=##$ %
true##& *
)##* +
]##+ ,
void$$ 
FinishRound$$ 
($$ 
int$$ 
roomCode$$ %
,$$% &
List$$' +
<$$+ ,$
PlayerInGameDataContract$$, D
>$$D E
playerInGame$$F R
,$$R S
int$$T W
roundFinished$$X e
)$$e f
;$$f g
[&& 	
OperationContract&&	 
(&& 
IsOneWay&& #
=&&$ %
true&&& *
)&&* +
]&&+ ,
void'' 

ConfirmBet'' 
('' 
int'' 
roomCode'' $
,''$ %
int''& )
idUser''* 0
)''0 1
;''1 2
[)) 	
OperationContract))	 
()) 
IsOneWay)) #
=))$ %
true))& *
)))* +
]))+ ,
void** %
ConfirmLastQuestionAnswer** &
(**& '
int**' *
roomCode**+ 3
,**3 4$
PlayerInGameDataContract**5 M
playerAnswering**N ]
,**] ^
int**_ b
points**c i
,**i j
bool**k o
	isCorrect**p y
)**y z
;**z {
}++ 
[.. 
ServiceContract.. 
].. 
public// 

	interface//  
IGameActionsCallBack// )
{00 
[11 	
OperationContract11	 
(11 
IsOneWay11 #
=11$ %
true11& *
)11* +
]11+ ,
void22 1
%ReceiveNotificationEverybodyIsPlaying22 2
(222 3
bool223 7
isEveryBodyPlaying228 J
,22J K
int22L O

isYourTurn22P Z
,22Z [
List22\ `
<22` a$
PlayerInGameDataContract22a y
>22y z
playerInGame	22{ á
)
22á à
;
22à â
[44 	
OperationContract44	 
(44 
IsOneWay44 #
=44$ %
true44& *
)44* +
]44+ ,
void55 *
ReceiveNotificationSomeOneLeft55 +
(55+ ,
int55, /

isYourTurn550 :
,55: ;
List55< @
<55@ A$
PlayerInGameDataContract55A Y
>55Y Z
playerInGame55[ g
)55g h
;55h i
[77 	
OperationContract77	 
]77 
void88 (
ReceiveNotificationAboutTurn88 )
(88) *
int88* -

isYourTurn88. 8
)888 9
;889 :
[:: 	
OperationContract::	 
(:: 
IsOneWay:: #
=::$ %
true::& *
)::* +
]::+ ,
void;; *
ResponseSomeOneSelectAQuestion;; +
(;;+ ,)
CurrentQuestionToShowContract;;, I
questionToShow;;J X
,;;X Y
int;;Z ]
currentRound;;^ j
,;;j k
int;;l o
idUser;;p v
);;v w
;;;w x
[== 	
OperationContract==	 
(== 
IsOneWay== #
===$ %
true==& *
)==* +
]==+ ,
void>> )
ResponseSomeOneChooseAnAnswer>> *
(>>* +
int>>+ .
idAnswerSelected>>/ ?
,>>? @
int>>A D
idUserAnswering>>E T
,>>T U
int>>V Y
pointsWorth>>Z e
)>>e f
;>>f g
[@@ 	
OperationContract@@	 
(@@ 
IsOneWay@@ #
=@@$ %
true@@& *
)@@* +
]@@+ ,
voidAA 
ResponseBeginRoundAA 
(AA  
intAA  #

isYourTurnAA$ .
,AA. /
intAA0 3
roundToStartAA4 @
,AA@ A
ListAAB F
<AAF G$
PlayerInGameDataContractAAG _
>AA_ `
playerInGamAAa l
)AAl m
;AAm n
[CC 	
OperationContractCC	 
(CC 
IsOneWayCC #
=CC$ %
trueCC& *
)CC* +
]CC+ ,
voidDD 
ResponseShowWinnerDD 
(DD  
ListDD  $
<DD$ %$
PlayerInGameDataContractDD% =
>DD= >
playerInGameDD? K
,DDK L
intDDM P
poinstWereSavedDDQ `
)DD` a
;DDa b
[FF 	
OperationContractFF	 
(FF 
IsOneWayFF #
=FF$ %
trueFF& *
)FF* +
]FF+ ,
voidGG $
ResponseShowLastQuestionGG %
(GG% &
)GG& '
;GG' (
}II 
}KK ∫
éC:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameServer\JeopardyGame.Service\InterfacesSevices\IGuestPlayerManager.cs
	namespace		 	
JeopardyGame		
 
.		 
Service		 
.		 
InterfacesSevices		 0
{

 
[ 
ServiceContract 
] 
internal 
	interface 
IGuestPlayerManager *
{ 
[ 	
OperationContract	 
] 
GenericClass 
< 
UserPojo 
> 
CreateUserForGuest 1
(1 2
)2 3
;3 4
[ 	
OperationContract	 
( 
IsOneWay $
=% &
true' +
)+ ,
], -
void 
DeleteGuest 
( 
int 
idUser #
)# $
;$ %
} 
} ß
ÖC:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameServer\JeopardyGame.Service\InterfacesSevices\IHeartBeat.cs
	namespace 	
JeopardyGame
 
. 
Service 
. 
InterfacesSevices 0
{		 
[

 
ServiceContract

 
]

 
public 

	interface 

IHeartBeat 
{ 
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 
	Heartbeat 
( 
) 
; 
} 
} ó7
àC:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameServer\JeopardyGame.Service\InterfacesSevices\ILobbyActions.cs
	namespace

 	
JeopardyGame


 
.

 
Service

 
.

 
InterfacesServices

 1
{ 
[ 
ServiceContract 
( 
CallbackContract %
=& '
typeof( .
(. /!
ILobbyActionsCallback/ D
)D E
)E F
]F G
public 

	interface 
ILobbyActions "
{ 
[ 	
OperationContract	 
] 
GenericClass 
< 
int 
> 
CreateNewLobby (
(( )
int) ,
roomCode- 5
,5 6
int7 :
idUser; A
)A B
;B C
[ 	
OperationContract	 
] 
GenericClass 
< 
int 
> 
JoinIntoLobby '
(' (
int( +
roomCode, 4
,4 5
int6 9
idUser: @
)@ A
;A B
[ 	
OperationContract	 
] 
int 
RenewLobbyCallBack 
( 
int "
roomCode# +
,+ ,
int- 0
idUser1 7
)7 8
;8 9
} 
[ 
ServiceContract 
] 
public 

	interface "
ILobbyActionsOperation +
{ 
[ 	
OperationContract	 
] 
GenericClass 
< 
List 
< 
PlayerInLobby '
>' (
>( )&
GetAllCurrentPlayerInLobby* D
(D E
intE H
roomCodeI Q
,Q R
intS V
idUserRequestingW g
)g h
;h i
[!! 	
OperationContract!!	 
(!! 
IsOneWay!! #
=!!$ %
true!!& *
)!!* +
]!!+ ,
void"" 
DissolveLobby"" 
("" 
int"" 
roomCode"" '
,""' (
int"") ,
idUser""- 3
)""3 4
;""4 5
[$$ 	
OperationContract$$	 
($$ 
IsOneWay$$ #
=$$$ %
true$$& *
)$$* +
]$$+ ,
void%% 
NotifyPlayerInLobby%%  
(%%  !
int%%! $
roomCode%%% -
,%%- .
int%%/ 2
idUser%%3 9
)%%9 :
;%%: ;
['' 	
OperationContract''	 
('' 
IsOneWay'' #
=''$ %
true''& *
)''* +
]''+ ,
void(( 

LeaveLobby(( 
((( 
int(( 
roomCode(( $
,(($ %
int((& )
idUserLeaving((* 7
)((7 8
;((8 9
[** 	
OperationContract**	 
(** 
IsOneWay** #
=**$ %
true**& *
)*** +
]**+ ,
void++ 
ChangePlayerSide++ 
(++ 
int++ !
roomCode++" *
,++* +
int++, /
idUserToChangeTeam++0 B
,++B C
int++D G
newSideTeam++H S
)++S T
;++T U
[-- 	
OperationContract--	 
(-- 
IsOneWay-- #
=--$ %
true--& *
)--* +
]--+ ,
void.. $
EliminatePlayerFromMatch.. %
(..% &
int..& )
roomCode..* 2
,..2 3
int..4 7
idUserToEliminate..8 I
)..I J
;..J K
[00 	
OperationContract00	 
(00 
IsOneWay00 #
=00$ %
true00& *
)00* +
]00+ ,
void11 
	MakeTeams11 
(11 
int11 
roomCode11 #
,11# $
int11% (
idUser11) /
,11/ 0
bool111 5
	wannaTeam116 ?
)11? @
;11@ A
[33 	
OperationContract33	 
(33 
IsOneWay33 #
=33$ %
true33& *
)33* +
]33+ ,
void44 "
SelectQuestionsForGame44 #
(44# $
int44$ '
roomCode44( 0
)440 1
;441 2
[66 	
OperationContract66	 
(66 
IsOneWay66 #
=66$ %
true66& *
)66* +
]66+ ,
void77 
	StartGame77 
(77 
int77 
roomCode77 #
)77# $
;77$ %
}88 
[<< 
ServiceContract<< 
]<< 
public== 

	interface== !
ILobbyActionsCallback== *
{>> 
[?? 	
OperationContract??	 
(?? 
IsOneWay?? $
=??% &
true??' +
)??+ ,
]??, -
public@@ 
void@@ &
UpdateJoinedPlayerResponse@@ .
(@@. /
GenericClass@@/ ;
<@@; <
List@@< @
<@@@ A
PlayerInLobby@@A N
>@@N O
>@@O P
playersInTheLobby@@Q b
)@@b c
;@@c d
[BB 	
OperationContractBB	 
]BB 
publicCC 
voidCC 
MakeTeamsResponseCC %
(CC% &
boolCC& *
teamUpCC+ 1
)CC1 2
;CC2 3
[EE 	
OperationContractEE	 
]EE 
publicFF 
voidFF 
UpdateTeamSideFF "
(FF" #
GenericClassFF# /
<FF/ 0
ListFF0 4
<FF4 5
PlayerInLobbyFF5 B
>FFB C
>FFC D
playersInTheLobbyFFE V
)FFV W
;FFW X
[HH 	
OperationContractHH	 
(HH 
IsOneWayHH #
=HH$ %
trueHH& *
)HH* +
]HH+ ,
publicII 
voidII 
DissolvingLobbyII #
(II# $
)II$ %
;II% &
[KK 	
OperationContractKK	 
]KK 
publicLL 
voidLL #
NotifyQuestionsAreReadyLL +
(LL+ ,
intLL, /
	codeEventLL0 9
)LL9 :
;LL: ;
[NN 	
OperationContractNN	 
]NN 
publicOO 
voidOO 
NotifyGameWillStartOO '
(OO' (
ListOO( ,
<OO, -#
QuestionCardInformationOO- D
>OOD E
questionsForGameOOF V
)OOV W
;OOW X
}QQ 
[SS 
ServiceContractSS 
]SS 
publicTT 

	interfaceTT $
ILobbyCodeAuthenticationTT -
{UU 
[VV 	
OperationContractVV	 
]VV 
GenericClassWW 
<WW 
intWW 
>WW 
VerifyRoomCodeExistWW -
(WW- .
intWW. 1
roomCodeWW2 :
,WW: ;
intWW< ?
idUserWW@ F
)WWF G
;WWG H
}XX 
}ZZ ë
íC:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameServer\JeopardyGame.Service\InterfacesSevices\INotifyUserAvailability.cs
	namespace 	
JeopardyGame
 
. 
Service 
. 
InterfacesServices 1
{		 
[ 
ServiceContract 
( 
CallbackContract %
=& '
typeof( .
(. /+
INotifyUserAvailabilityCallBack/ N
)N O
)O P
]P Q
public 

	interface #
INotifyUserAvailability ,
{ 
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 0
$SubscribeToAvailabityCallBackChannel 1
(1 2
int2 5
idNewActiveUser6 E
)E F
;F G
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void )
RenewNotifyAvailabityCallBack *
(* +
int+ .
idUser/ 5
)5 6
;6 7
} 
[ 
ServiceContract 
] 
public 

	interface &
IAvailabilityUserManagment /
{ 
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 
PlayerIsAvailable 
( 
int "
idNewActiveUser# 2
)2 3
;3 4
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 
PlayerIsPlaying 
( 
int  
idUserPlaying! .
). /
;/ 0
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void  
PlayerIsNotAvailable !
(! "
int" %
idUserDisconnecting& 9
)9 :
;: ;
} 
[!! 
ServiceContract!! 
]!! 
public"" 

	interface"" +
INotifyUserAvailabilityCallBack"" 4
{## 
[$$ 	
OperationContract$$	 
]$$ 
void%% (
ResponseOfPlayerAvailability%% )
(%%) *
int%%* -
status%%. 4
,%%4 5
int%%6 9
idFriend%%: B
)%%B C
;%%C D
}'' 
}** ì
ãC:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameServer\JeopardyGame.Service\InterfacesSevices\IRecoverPassword.cs
	namespace 	
JeopardyGame
 
. 
Service 
. 
InterfacesSevices 0
{		 
[

 
ServiceContract

 
]

 
internal 
	interface 
IRecoverPassword '
{ 
[ 	
OperationContract	 
] 
int '
CreateCodeToRecoverPassWord '
(' (
string( .
userName/ 7
,7 8
string9 ?

emailTitle@ J
,J K
stringL R
	emailBodyS \
)\ ]
;] ^
[ 	
OperationContract	 
] 
int '
VerifyCodeToRecoverPassword '
(' (
string( .
userName/ 7
,7 8
string9 ?
code@ D
)D E
;E F
} 
} Œ
ëC:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameServer\JeopardyGame.Service\InterfacesSevices\IValidateUserExistance.cs
	namespace		 	
JeopardyGame		
 
.		 
Service		 
.		 
InterfacesSevices		 0
{

 
[ 
ServiceContract 
] 
internal 
	interface "
IValidateUserExistance -
{ 
[ 	
OperationContract	 
] 
GenericClass 
< 
int 
> 
UserAlreadyExist *
(* +
UserPojo+ 3
newUser4 ;
); <
;< =
[ 	
OperationContract	 
] 
GenericClass 
< 
int 
> 
EmailAlreadyExist +
(+ ,
String, 2
email3 8
)8 9
;9 :
} 
} Ë

ëC:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameServer\JeopardyGame.Service\InterfacesSevices\IUserCreateAccountCode.cs
	namespace		 	
JeopardyGame		
 
.		 
Service		 
.		 
InterfacesSevices		 0
{

 
[ 
ServiceContract 
] 
internal 
	interface "
IUserCreateAccountCode -
{ 
[ 	
OperationContract	 
] 
GenericClass 
< 
int 
> +
AddUserToConfirmationDictionary 9
(9 :
UserPojo: B
newUserC J
)J K
;K L
[ 	
OperationContract	 
] 
int 
CheckCodeEntered 
( 
UserPojo %
newUser& -
,- .
string/ 5
codeEntered6 A
)A B
;B C
[ 	
OperationContract	 
] 
int 

ResendCode 
( 
UserPojo 
user  $
)$ %
;% &
[ 	
OperationContract	 
] 
void #
TakeUserOutOfDictionary $
($ %
UserPojo% -
user. 2
)2 3
;3 4
} 
} Ω
áC:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameServer\JeopardyGame.Service\InterfacesSevices\IUserManager.cs
	namespace

 	
JeopardyGame


 
.

 
Service

 
.

 
InterfacesServices

 1
{ 
[ 
ServiceContract 
] 
public 
	interface 
IUserManager %
{ 	
[ 
OperationContract 
] 
GenericClass 
< 
int 
> 
SaveUser &
(& '
UserPojo' /
userPojoNew0 ;
,; <
string= C
codeEnteredD O
)O P
;P Q
[ 
OperationContract 
] 
GenericClass 
< 
int 
> !
UpdateUserInformation 3
(3 4
int4 7
idUser8 >
,> ?
String@ F

editedNameG Q
)Q R
;R S
[ 
OperationContract 
] 
GenericClass 
< 
int 
> 
UpdatePlayerPhoto /
(/ 0
int0 3
idPlayer4 <
,< =
int> A
imageIdB I
)I J
;J K
[ 
OperationContract 
] 
GenericClass 
< 
int 
> 
UpdateEmailUser -
(- .
int. 1
idUser2 8
,8 9
string: @
emailA F
)F G
;G H
[ 
OperationContract 
] 
GenericClass 
< 
int 
> 
UpdatePasswordUser 0
(0 1
string1 7
userName8 @
,@ A
stringB H
passwordI Q
)Q R
;R S
} 
}!! ´
ÑC:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameServer\JeopardyGame.Service\InterfacesSevices\ILiveChat.cs
	namespace		 	
JeopardyGame		
 
.		 
Service		 
.		 
InterfacesServices		 1
{

 
[ 
ServiceContract 
( 
CallbackContract %
=& '
typeof( .
(. /
ILiveChatCallBack/ @
)@ A
)A B
]B C
public 

	interface 
	ILiveChat 
{ 
[ 	
OperationContract	 
] 
GenericClass 
< 
bool 
> 
CreateChatForLobby -
(- .
int. 1
roomCode2 :
,: ;
int< ?
idAdmin@ G
)G H
;H I
[ 	
OperationContract	 
] 
GenericClass 
< 
List 
< 
MessageChat %
>% &
>& '
GetAllMessages( 6
(6 7
int7 :
roomCode; C
,C D
intE H
idUserI O
)O P
;P Q
[ 	
OperationContract	 
] 
int !
RenewLiveChatCallBack !
(! "
int" %
roomCode& .
,. /
int0 3
idUser4 :
): ;
;; <
} 
[ 
ServiceContract 
] 
public 

	interface 
ILiveChatOperations (
{ 
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 
SendMessage 
( 
int 
idUser #
,# $
int% (
roomCode) 1
,1 2
String3 9
userName: B
,B C
StringD J
messageToSendK X
)X Y
;Y Z
[   	
OperationContract  	 
(   
IsOneWay   #
=  $ %
true  & *
)  * +
]  + ,
void!! 

DeleteChat!! 
(!! 
int!! 
roomCode!! $
,!!$ %
int!!& )
idUser!!* 0
)!!0 1
;!!1 2
}"" 
[$$ 
ServiceContract$$ 
]$$ 
public%% 

	interface%% 
ILiveChatCallBack%% &
{&& 
['' 	
OperationContract''	 
]'' 
void(( 
ReceiveMessage(( 
((( 
GenericClass(( (
<((( )
MessageChat(() 4
>((4 5
message((6 =
)((= >
;((> ?
})) 
}++ ≥
çC:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameServer\JeopardyGame.Service\InterfacesSevices\ILogInVerification.cs
	namespace		 	
JeopardyGame		
 
.		 
Service		 
.		 
InterfacesSevices		 0
{

 
[ 
ServiceContract 
] 
internal 
	interface 
ILogInVerification )
{ 
[ 	
OperationContract	 
] 
GenericClass 
< 
int 
> 
ValidateCredentials -
(- .
UserValidate. :
newUserValidate; J
)J K
;K L
[ 	
OperationContract	 
] 
int 0
$ValidateThereIsOnlyOneAActiveAccount 0
(0 1
string1 7
userName8 @
)@ A
;A B
} 
} ï
îC:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameServer\JeopardyGame.Service\InterpretersEntityPojo\QuestionsInterpreter.cs
	namespace 	
JeopardyGame
 
. 
Service 
. "
InterpretersEntityPojo 5
{		 
public

 

static

 
class

  
QuestionsInterpreter

 ,
{ 
public 
static 
QuestionPojo "&
FromQuestionToQuestionPOJO# =
(= >
Question> F
questionG O
)O P
{ 	
if 
( 
question 
== 
null  
)  !
{ 
return 
null 
; 
} 
QuestionPojo 
questionPOJO %
=& '
new( +
(+ ,
), -
{ 

IdQuestion 
= 
question %
.% &

IdQuestion& 0
,0 1&
SpanishQuestionDescription *
=+ ,
question- 5
.5 6&
SpanishQuestionDescription6 P
,P Q&
EnglishQuestionDescription *
=+ ,
question- 5
.5 6&
EnglishQuestionDescription6 P
,P Q
IdAnswerOfQuestion "
=# $
question% -
.- .
Awnser. 4
.4 5
IdAwnser5 =
,= >
IdCategoryBelong  
=! "
question# +
.+ ,
CategoryIdCategory, >
} 
; 
return 
questionPOJO 
;  
} 	
public 
static 

AnswerPojo  "
FromAnswerToAnswerPOJO! 7
(7 8
Awnser8 >
awnser? E
)E F
{ 	
if 
( 
awnser 
== 
null 
) 
{   
return!! 
null!! 
;!! 
}"" 

AnswerPojo## 

answerPojo## !
=##" #
new##$ '
(##' (
)##( )
{$$ 
IdAnswer%% 
=%% 
awnser%% !
.%%! "
IdAwnser%%" *
,%%* +$
SpanishAnswerDescription&& (
=&&) *
awnser&&+ 1
.&&1 2$
SpanishAwnserDescription&&2 J
,&&J K$
EnglishAnswerDescription'' (
='') *
awnser''+ 1
.''1 2$
EnglichAwnserDescription''2 J
,''J K

IdCategory(( 
=(( 
awnser(( #
.((# $
CategoryIdCategory(($ 6
,((6 7
})) 
;)) 
return** 

answerPojo** 
;** 
}++ 	
public-- 
static-- 
CategoryPojo-- "&
FromCategoryToCategoryPOJO--# =
(--= >
Category--> F
category--G O
)--O P
{.. 	
if// 
(// 
category// 
==// 
null//  
)//  !
{00 
return11 
null11 
;11 
}22 
CategoryPojo33 
categoryPOJO33 %
=33& '
new33( +
(33+ ,
)33, -
{44 

IdCategory55 
=55 
category55 %
.55% &

IdCategory55& 0
,550 1&
SpanishCategoryDescription66 *
=66+ ,
category66- 5
.665 6&
SpanishCategoryDescription666 P
,66P Q&
EnglishCategoryDescription77 *
=77+ ,
category77- 5
.775 6&
EnglishCategoryDescription776 P
,77P Q
}88 
;88 
return99 
categoryPOJO99 
;99  
}:: 	
}== 
}>> ∏9
èC:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameServer\JeopardyGame.Service\InterpretersEntityPojo\UserInterpreter.cs
	namespace

 	
JeopardyGame


 
.

 
Service

 
.

 "
InterpretersEntityPojo

 5
{ 
public 

static 
class 
UserInterpreter '
{ 
public 
static 
User $
FromUserPojoToUserEntity 3
(3 4
UserPojo4 <
userPojo= E
)E F
{ 	
if 
( 
userPojo 
== 
null  
)  !
{ 
return 
null 
; 
} 
User 

userEntity 
= 
new !
User" &
(& '
)' (
;( )

userEntity 
. 
IdUser 
= 
userPojo  (
.( )
IdUser) /
;/ 0

userEntity 
. 
UserName 
=  !
userPojo" *
.* +
UserName+ 3
;3 4

userEntity 
. 
Password 
=  !
userPojo" *
.* +
Password+ 3
;3 4

userEntity 
. 
Name 
= 
userPojo &
.& '
Name' +
;+ ,

userEntity 
. 
EmailAddress #
=$ %
userPojo& .
.. /
EmailAddress/ ;
;; <
return 

userEntity 
; 
} 	
public 
static 
UserPojo $
FromUserEntityToUserPojo 7
(7 8
User8 <
user= A
)A B
{ 	
if 
( 
user 
== 
null 
) 
{   
return!! 
null!! 
;!! 
}"" 
UserPojo## 
userPOJO## 
=## 
new##  #
UserPojo##$ ,
(##, -
)##- .
;##. /
userPOJO$$ 
.$$ 
IdUser$$ 
=$$ 
user$$ "
.$$" #
IdUser$$# )
;$$) *
userPOJO%% 
.%% 
Name%% 
=%% 
user%%  
.%%  !
Name%%! %
;%%% &
userPOJO&& 
.&& 
EmailAddress&& !
=&&" #
user&&$ (
.&&( )
EmailAddress&&) 5
;&&5 6
userPOJO'' 
.'' 
Password'' 
='' 
user''  $
.''$ %
Password''% -
;''- .
userPOJO(( 
.(( 
UserName(( 
=(( 
user((  $
.(($ %
UserName((% -
;((- .
return)) 
userPOJO)) 
;)) 
}** 	
public,, 
static,, 

PlayerPojo,,  (
FromPlayerEntityToPlayerPojo,,! =
(,,= >
Player,,> D
player,,E K
),,K L
{-- 	
if.. 
(.. 
player.. 
==.. 
null.. 
).. 
{// 
return00 
null00 
;00 
}11 

PlayerPojo22 

playerPOJO22 !
=22" #
new22$ '

PlayerPojo22( 2
(222 3
)223 4
;224 5

playerPOJO33 
.33 
IdPlayer33 
=33  !
player33" (
.33( )
IdPlayer33) 1
;331 2

playerPOJO44 
.44 
GeneralPoints44 $
=44% &
(44' (
int44( +
)44+ ,
player44- 3
.443 4
GeneralPoints444 A
;44A B

playerPOJO55 
.55 
	NoReports55  
=55! "
(55# $
int55$ '
)55' (
player55) /
.55/ 0
	NoReports550 9
;559 :

playerPOJO66 
.66 
IdActualAvatar66 %
=66& '
(66' (
int66( +
)66+ ,
player66- 3
.663 4
IdAvatarActual664 B
;66B C

playerPOJO77 
.77 
	NoReports77  
=77! "
(77# $
int77$ '
)77' (
player77) /
.77/ 0
	NoReports770 9
;779 :

playerPOJO88 
.88 
IdState88 
=88  
(88! "
int88" %
)88% &
player88' -
.88- .
State_idState88. ;
;88; <

playerPOJO99 
.99 
IdUser99 
=99 
player99  &
.99& '
User_IdUser99' 2
;992 3
return:: 

playerPOJO:: 
;:: 
};; 	
public== 
static== 
Player== (
FromPlayerPojoToPlayerEntity== 9
(==9 :

PlayerPojo==: D

playerPojo==E O
)==O P
{>> 	
if?? 
(?? 

playerPojo?? 
==?? 
null?? "
)??" #
{@@ 
returnAA 
nullAA 
;AA 
}BB 
PlayerCC 
playerCC 
=CC 
newCC 
PlayerCC  &
(CC& '
)CC' (
;CC( )
playerDD 
.DD 
IdPlayerDD 
=DD 

playerPojoDD (
.DD( )
IdPlayerDD) 1
;DD1 2
playerEE 
.EE 
GeneralPointsEE  
=EE! "

playerPojoEE# -
.EE- .
GeneralPointsEE. ;
;EE; <
playerFF 
.FF 
	NoReportsFF 
=FF 

playerPojoFF )
.FF) *
	NoReportsFF* 3
;FF3 4
playerGG 
.GG 
IdAvatarActualGG !
=GG" #

playerPojoGG$ .
.GG. /
IdActualAvatarGG/ =
;GG= >
playerHH 
.HH 
User_IdUserHH 
=HH  

playerPojoHH! +
.HH+ ,
IdUserHH, 2
;HH2 3
playerII 
.II 
State_idStateII  
=II! "

playerPojoII# -
.II- .
IdStateII. 5
;II5 6
playerJJ 
.JJ 
UserJJ 
=JJ $
UserManagerDataOperationJJ 3
.JJ3 4
GetUserByIdJJ4 ?
(JJ? @

playerPojoJJ@ J
.JJJ K
IdUserJJK Q
)JJQ R
.JJR S
ObjectSavedJJS ^
;JJ^ _
playerKK 
.KK 
StateKK 
=KK $
UserManagerDataOperationKK 3
.KK3 4
GetStateByIdKK4 @
(KK@ A

playerPojoKKA K
.KKK L
IdStateKKL S
)KKS T
.KKT U
ObjectSavedKKU `
;KK` a
ifLL 
(LL 
playerLL 
.LL 
UserLL 
==LL 
nullLL #
||LL$ &
playerLL' -
.LL- .
StateLL. 3
==LL4 6
nullLL7 ;
)LL; <
{MM 
returnNN 
nullNN 
;NN 
}OO 
returnPP 
playerPP 
;PP 
}QQ 	
}RR 
}SS ¨
ÄC:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameServer\JeopardyGame.Service\Properties\AssemblyInfo.cs
[ 
assembly 	
:	 

AssemblyTitle 
( 
$str /
)/ 0
]0 1
[		 
assembly		 	
:			 

AssemblyDescription		 
(		 
$str		 !
)		! "
]		" #
[

 
assembly

 	
:

	 
!
AssemblyConfiguration

  
(

  !
$str

! #
)

# $
]

$ %
[ 
assembly 	
:	 

AssemblyCompany 
( 
$str 
) 
] 
[ 
assembly 	
:	 

AssemblyProduct 
( 
$str 1
)1 2
]2 3
[ 
assembly 	
:	 

AssemblyCopyright 
( 
$str 0
)0 1
]1 2
[ 
assembly 	
:	 

AssemblyTrademark 
( 
$str 
)  
]  !
[ 
assembly 	
:	 

AssemblyCulture 
( 
$str 
) 
] 
[ 
assembly 	
:	 


ComVisible 
( 
false 
) 
] 
[ 
assembly 	
:	 

Guid 
( 
$str 6
)6 7
]7 8
[## 
assembly## 	
:##	 

AssemblyVersion## 
(## 
$str## $
)##$ %
]##% &
[$$ 
assembly$$ 	
:$$	 

AssemblyFileVersion$$ 
($$ 
$str$$ (
)$$( )
]$$) *ıï
ôC:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameServer\JeopardyGame.Service\ServiceImplementation\ChatForTeamsImplementation.cs
	namespace

 	
JeopardyGame


 
.

 
Service

 
.

 !
ServiceImplementation

 4
{ 
internal 
class &
ChatForTeamsImplementation -
:. /
IChatForTeams0 =
{ 
private 
readonly 
int 
NULL_INT_VALUE +
=, -
$num. /
;/ 0
private 
static 
readonly 
Object  &

objectLock' 1
=2 3
new4 7
(7 8
)8 9
;9 :
public 
void 
RegisterForTeamChat '
(' (
int( +
idUser, 2
)2 3
{ 	
lock 
( 

objectLock 
) 
{ 
try 
{ 
if 
( 
idUser 
!= !
NULL_INT_VALUE" 0
)0 1
{ 
var "
savedChannelOfTeamChat 2
=3 4
	TeamChats5 >
.> ?*
GetChannelCallBackTeamChatUser? ]
(] ^
idUser^ d
)d e
;e f
if 
( "
savedChannelOfTeamChat 2
==3 5
null6 :
): ;
{ 
var !
newChannelForTeamChat  5
=6 7
OperationContext8 H
.H I
CurrentI P
;P Q
	TeamChats %
.% &/
#RegisterNewTeamChatUserInDictionary& I
(I J
idUserJ P
,P Q!
newChannelForTeamChatR g
)g h
;h i
} 
}   
}!! 
catch"" 
("" /
#CommunicationObjectFaultedException"" :
ex""; =
)""= >
{##  
ChannelAdministrator$$ (
.$$( )$
HandleCommunicationIssue$$) A
($$A B
idUser$$B H
,$$H I 
ChannelAdministrator$$J ^
.$$^ _
TEAM_CHAT_EXCEPTION$$_ r
)$$r s
;$$s t
ExceptionHandler%% $
.%%$ %
LogException%%% 1
(%%1 2
ex%%2 4
,%%4 5
ExceptionDictionary%%6 I
.%%I J
FATAL_EXCEPTION%%J Y
)%%Y Z
;%%Z [
}&& 
catch'' 
('' 
TimeoutException'' '
ex''( *
)''* +
{((  
ChannelAdministrator)) (
.))( )$
HandleCommunicationIssue))) A
())A B
idUser))B H
,))H I 
ChannelAdministrator))J ^
.))^ _
TEAM_CHAT_EXCEPTION))_ r
)))r s
;))s t
ExceptionHandler** $
.**$ %
LogException**% 1
(**1 2
ex**2 4
,**4 5
ExceptionDictionary**6 I
.**I J
FATAL_EXCEPTION**J Y
)**Y Z
;**Z [
}++ 
catch,, 
(,, "
CommunicationException,, -
ex,,. 0
),,0 1
{--  
ChannelAdministrator.. (
...( )$
HandleCommunicationIssue..) A
(..A B
idUser..B H
,..H I 
ChannelAdministrator..J ^
...^ _
TEAM_CHAT_EXCEPTION.._ r
)..r s
;..s t
ExceptionHandler// $
.//$ %
LogException//% 1
(//1 2
ex//2 4
,//4 5
ExceptionDictionary//6 I
.//I J
FATAL_EXCEPTION//J Y
)//Y Z
;//Z [
}00 
catch11 
(11 %
InvalidOperationException11 0
ex111 3
)113 4
{22  
ChannelAdministrator33 (
.33( )$
HandleCommunicationIssue33) A
(33A B
idUser33B H
,33H I 
ChannelAdministrator33J ^
.33^ _
TEAM_CHAT_EXCEPTION33_ r
)33r s
;33s t
ExceptionHandler44 $
.44$ %
LogException44% 1
(441 2
ex442 4
,444 5
ExceptionDictionary446 I
.44I J
FATAL_EXCEPTION44J Y
)44Y Z
;44Z [
}55 
}66 
}77 	
public99 
int99 !
RenewTeamChatCallBack99 (
(99( )
int99) ,
idUser99- 3
)993 4
{:: 	
int;; 
resultToReturn;; 
;;; 
lock<< 
(<< 

objectLock<< 
)<< 
{== 
try>> 
{?? 
if@@ 
(@@ 
idUser@@ 
!=@@ !
NULL_INT_VALUE@@" 0
)@@0 1
{AA 
varBB !
newChannelForTeamChatBB 1
=BB2 3
OperationContextBB4 D
.BBD E
CurrentBBE L
;BBL M
	TeamChatsCC !
.CC! "!
RenewTeamChatCallBackCC" 7
(CC7 8
idUserCC8 >
,CC> ?!
newChannelForTeamChatCC@ U
)CCU V
;CCV W
resultToReturnDD &
=DD' (
ExceptionDictionaryDD) <
.DD< =
SUCCESFULL_EVENTDD= M
;DDM N
}EE 
elseFF 
{GG 
resultToReturnHH &
=HH' (
ExceptionDictionaryHH) <
.HH< =
UNSUCCESFULL_EVENTHH= O
;HHO P
}II 
}JJ 
catchKK 
(KK /
#CommunicationObjectFaultedExceptionKK :
exKK; =
)KK= >
{LL 
resultToReturnMM "
=MM# $
ExceptionDictionaryMM% 8
.MM8 9
UNSUCCESFULL_EVENTMM9 K
;MMK L 
ChannelAdministratorNN (
.NN( )$
HandleCommunicationIssueNN) A
(NNA B
idUserNNB H
,NNH I 
ChannelAdministratorNNJ ^
.NN^ _
TEAM_CHAT_EXCEPTIONNN_ r
)NNr s
;NNs t
ExceptionHandlerOO $
.OO$ %
LogExceptionOO% 1
(OO1 2
exOO2 4
,OO4 5
ExceptionDictionaryOO6 I
.OOI J
FATAL_EXCEPTIONOOJ Y
)OOY Z
;OOZ [
}PP 
catchQQ 
(QQ 
TimeoutExceptionQQ '
exQQ( *
)QQ* +
{RR 
resultToReturnSS "
=SS# $
ExceptionDictionarySS% 8
.SS8 9
UNSUCCESFULL_EVENTSS9 K
;SSK L 
ChannelAdministratorTT (
.TT( )$
HandleCommunicationIssueTT) A
(TTA B
idUserTTB H
,TTH I 
ChannelAdministratorTTJ ^
.TT^ _
TEAM_CHAT_EXCEPTIONTT_ r
)TTr s
;TTs t
ExceptionHandlerUU $
.UU$ %
LogExceptionUU% 1
(UU1 2
exUU2 4
,UU4 5
ExceptionDictionaryUU6 I
.UUI J
FATAL_EXCEPTIONUUJ Y
)UUY Z
;UUZ [
}VV 
catchWW 
(WW "
CommunicationExceptionWW -
exWW. 0
)WW0 1
{XX 
resultToReturnYY "
=YY# $
ExceptionDictionaryYY% 8
.YY8 9
UNSUCCESFULL_EVENTYY9 K
;YYK L 
ChannelAdministratorZZ (
.ZZ( )$
HandleCommunicationIssueZZ) A
(ZZA B
idUserZZB H
,ZZH I 
ChannelAdministratorZZJ ^
.ZZ^ _
TEAM_CHAT_EXCEPTIONZZ_ r
)ZZr s
;ZZs t
ExceptionHandler[[ $
.[[$ %
LogException[[% 1
([[1 2
ex[[2 4
,[[4 5
ExceptionDictionary[[6 I
.[[I J
FATAL_EXCEPTION[[J Y
)[[Y Z
;[[Z [
}\\ 
catch]] 
(]] %
InvalidOperationException]] 0
ex]]1 3
)]]3 4
{^^ 
resultToReturn__ "
=__# $
ExceptionDictionary__% 8
.__8 9
UNSUCCESFULL_EVENT__9 K
;__K L 
ChannelAdministrator`` (
.``( )$
HandleCommunicationIssue``) A
(``A B
idUser``B H
,``H I 
ChannelAdministrator``J ^
.``^ _
TEAM_CHAT_EXCEPTION``_ r
)``r s
;``s t
ExceptionHandleraa $
.aa$ %
LogExceptionaa% 1
(aa1 2
exaa2 4
,aa4 5
ExceptionDictionaryaa6 I
.aaI J
FATAL_EXCEPTIONaaJ Y
)aaY Z
;aaZ [
}bb 
}cc 
returndd 
resultToReturndd !
;dd! "
}ee 	
}ff 
publichh 

partialhh 
classhh 2
&TeamChatForTeamsOperationsImplemtationhh ?
:hh@ A#
IChatForTeamsOperationshhB Y
{ii 
privatekk 
readonlykk 
intkk 
NULL_INT_VALUEkk +
=kk, -
$numkk. /
;kk/ 0
privatell 
staticll 
readonlyll 
Objectll  &

objectLockll' 1
=ll2 3
newll4 7
(ll7 8
)ll8 9
;ll9 :
publicmm 
voidmm 
SendMessageTeammm #
(mm# $
intmm$ '
idUsermm( .
,mm. /
intmm0 3

idTeamMatemm4 >
,mm> ?
stringmm@ F
userNamemmG O
,mmO P
stringmmQ W
messageToSendmmX e
)mme f
{nn 	
ifoo 
(oo 
idUseroo 
<=oo 
NULL_INT_VALUEoo (
||oo) +

idTeamMateoo, 6
<=oo7 9
NULL_INT_VALUEoo: H
||ooI K
stringooL R
.ooR S
IsNullOrEmptyooS `
(oo` a
userNameooa i
)ooi j
||ook m
stringoon t
.oot u
IsNullOrEmpty	oou Ç
(
ooÇ É
messageToSend
ooÉ ê
)
ooê ë
)
ooë í
{pp "
NotifyUserOfNewMessageqq &
(qq& '

idTeamMateqq' 1
,qq1 2
newqq3 6
MessageChatqq7 B
(qqB C
)qqC D
,qqD E
falseqqF K
)qqK L
;qqL M
}rr 
elsess 
{tt 
tryuu 
{vv 
MessageChatww  
newMessageInTeamChatww  4
=ww5 6
newww7 :
MessageChatww; F
(wwF G
)wwG H
;wwH I 
newMessageInTeamChatxx (
.xx( )
IdUserxx) /
=xx0 1
idUserxx2 8
;xx8 9 
newMessageInTeamChatyy (
.yy( )
UserNameyy) 1
=yy2 3
userNameyy4 <
;yy< = 
newMessageInTeamChatzz (
.zz( )
MessageToSendzz) 6
=zz7 8
messageToSendzz9 F
;zzF G"
NotifyUserOfNewMessage{{ *
({{* +

idTeamMate{{+ 5
,{{5 6 
newMessageInTeamChat{{7 K
,{{K L
true{{M Q
){{Q R
;{{R S
}|| 
catch}} 
(}} /
#CommunicationObjectFaultedException}} :
ex}}; =
)}}= >
{~~  
ChannelAdministrator (
.( )$
HandleCommunicationIssue) A
(A B
idUserB H
,H I 
ChannelAdministratorJ ^
.^ _
TEAM_CHAT_EXCEPTION_ r
)r s
;s t
ExceptionHandler
ÄÄ $
.
ÄÄ$ %
LogException
ÄÄ% 1
(
ÄÄ1 2
ex
ÄÄ2 4
,
ÄÄ4 5!
ExceptionDictionary
ÄÄ6 I
.
ÄÄI J
FATAL_EXCEPTION
ÄÄJ Y
)
ÄÄY Z
;
ÄÄZ [
}
ÅÅ 
catch
ÇÇ 
(
ÇÇ 
TimeoutException
ÇÇ '
ex
ÇÇ( *
)
ÇÇ* +
{
ÉÉ "
ChannelAdministrator
ÑÑ (
.
ÑÑ( )&
HandleCommunicationIssue
ÑÑ) A
(
ÑÑA B
idUser
ÑÑB H
,
ÑÑH I"
ChannelAdministrator
ÑÑJ ^
.
ÑÑ^ _!
TEAM_CHAT_EXCEPTION
ÑÑ_ r
)
ÑÑr s
;
ÑÑs t
ExceptionHandler
ÖÖ $
.
ÖÖ$ %
LogException
ÖÖ% 1
(
ÖÖ1 2
ex
ÖÖ2 4
,
ÖÖ4 5!
ExceptionDictionary
ÖÖ6 I
.
ÖÖI J
FATAL_EXCEPTION
ÖÖJ Y
)
ÖÖY Z
;
ÖÖZ [
}
ÜÜ 
catch
áá 
(
áá $
CommunicationException
áá -
ex
áá. 0
)
áá0 1
{
àà "
ChannelAdministrator
ââ (
.
ââ( )&
HandleCommunicationIssue
ââ) A
(
ââA B
idUser
ââB H
,
ââH I"
ChannelAdministrator
ââJ ^
.
ââ^ _!
TEAM_CHAT_EXCEPTION
ââ_ r
)
ââr s
;
ââs t
ExceptionHandler
ää $
.
ää$ %
LogException
ää% 1
(
ää1 2
ex
ää2 4
,
ää4 5!
ExceptionDictionary
ää6 I
.
ääI J
FATAL_EXCEPTION
ääJ Y
)
ääY Z
;
ääZ [
}
ãã 
catch
åå 
(
åå '
InvalidOperationException
åå 0
ex
åå1 3
)
åå3 4
{
çç "
ChannelAdministrator
éé (
.
éé( )&
HandleCommunicationIssue
éé) A
(
ééA B
idUser
ééB H
,
ééH I"
ChannelAdministrator
ééJ ^
.
éé^ _!
TEAM_CHAT_EXCEPTION
éé_ r
)
éér s
;
éés t
ExceptionHandler
èè $
.
èè$ %
LogException
èè% 1
(
èè1 2
ex
èè2 4
,
èè4 5!
ExceptionDictionary
èè6 I
.
èèI J
FATAL_EXCEPTION
èèJ Y
)
èèY Z
;
èèZ [
}
êê 
}
ëë 
}
íí 	
private
îî 
void
îî $
NotifyUserOfNewMessage
îî +
(
îî+ ,
int
îî, /

idTeamMate
îî0 :
,
îî: ;
MessageChat
îî< G
messageToSend
îîH U
,
îîU V
bool
îîW [
success
îî\ c
)
îîc d
{
ïï 	
if
ññ 
(
ññ 
success
ññ 
)
ññ 
{
óó 
var
òò $
savedChannelForMessage
òò *
=
òò+ ,
	TeamChats
òò- 6
.
òò6 7,
GetChannelCallBackTeamChatUser
òò7 U
(
òòU V

idTeamMate
òòV `
)
òò` a
;
òòa b
if
ôô 
(
ôô $
savedChannelForMessage
ôô *
!=
ôô+ -
null
ôô. 2
)
ôô2 3
{
öö 
try
õõ 
{
úú 
GenericClass
ùù $
<
ùù$ %
MessageChat
ùù% 0
>
ùù0 1
resultToReturn
ùù2 @
=
ùùA B
new
ùùC F
GenericClass
ùùG S
<
ùùS T
MessageChat
ùùT _
>
ùù_ `
(
ùù` a
)
ùùa b
;
ùùb c
resultToReturn
ûû &
.
ûû& '
ObjectSaved
ûû' 2
=
ûû3 4
messageToSend
ûû5 B
;
ûûB C
resultToReturn
üü &
.
üü& '
	CodeEvent
üü' 0
=
üü1 2!
ExceptionDictionary
üü3 F
.
üüF G
SUCCESFULL_EVENT
üüG W
;
üüW X$
savedChannelForMessage
†† .
.
††. / 
GetCallbackChannel
††/ A
<
††A B$
IIChatForTeamsCallBack
††B X
>
††X Y
(
††Y Z
)
††Z [
.
††[ \$
ReceiveMessageTeamChat
††\ r
(
††r s
resultToReturn††s Å
)††Å Ç
;††Ç É
}
°° 
catch
¢¢ 
(
¢¢ 1
#CommunicationObjectFaultedException
¢¢ >
ex
¢¢? A
)
¢¢A B
{
££ "
ChannelAdministrator
§§ ,
.
§§, -&
HandleCommunicationIssue
§§- E
(
§§E F

idTeamMate
§§F P
,
§§P Q"
ChannelAdministrator
§§R f
.
§§f g!
TEAM_CHAT_EXCEPTION
§§g z
)
§§z {
;
§§{ |
ExceptionHandler
•• (
.
••( )
LogException
••) 5
(
••5 6
ex
••6 8
,
••8 9!
ExceptionDictionary
••: M
.
••M N
FATAL_EXCEPTION
••N ]
)
••] ^
;
••^ _
}
¶¶ 
catch
ßß 
(
ßß 
TimeoutException
ßß +
ex
ßß, .
)
ßß. /
{
®® "
ChannelAdministrator
©© ,
.
©©, -&
HandleCommunicationIssue
©©- E
(
©©E F

idTeamMate
©©F P
,
©©P Q"
ChannelAdministrator
©©R f
.
©©f g!
TEAM_CHAT_EXCEPTION
©©g z
)
©©z {
;
©©{ |
ExceptionHandler
™™ (
.
™™( )
LogException
™™) 5
(
™™5 6
ex
™™6 8
,
™™8 9!
ExceptionDictionary
™™: M
.
™™M N
FATAL_EXCEPTION
™™N ]
)
™™] ^
;
™™^ _
}
´´ 
catch
¨¨ 
(
¨¨ $
CommunicationException
¨¨ 1
ex
¨¨2 4
)
¨¨4 5
{
≠≠ "
ChannelAdministrator
ÆÆ ,
.
ÆÆ, -&
HandleCommunicationIssue
ÆÆ- E
(
ÆÆE F

idTeamMate
ÆÆF P
,
ÆÆP Q"
ChannelAdministrator
ÆÆR f
.
ÆÆf g!
TEAM_CHAT_EXCEPTION
ÆÆg z
)
ÆÆz {
;
ÆÆ{ |
ExceptionHandler
ØØ (
.
ØØ( )
LogException
ØØ) 5
(
ØØ5 6
ex
ØØ6 8
,
ØØ8 9!
ExceptionDictionary
ØØ: M
.
ØØM N
FATAL_EXCEPTION
ØØN ]
)
ØØ] ^
;
ØØ^ _
}
∞∞ 
catch
±± 
(
±± '
InvalidOperationException
±± 4
ex
±±5 7
)
±±7 8
{
≤≤ "
ChannelAdministrator
≥≥ ,
.
≥≥, -&
HandleCommunicationIssue
≥≥- E
(
≥≥E F

idTeamMate
≥≥F P
,
≥≥P Q"
ChannelAdministrator
≥≥R f
.
≥≥f g!
TEAM_CHAT_EXCEPTION
≥≥g z
)
≥≥z {
;
≥≥{ |
ExceptionHandler
¥¥ (
.
¥¥( )
LogException
¥¥) 5
(
¥¥5 6
ex
¥¥6 8
,
¥¥8 9!
ExceptionDictionary
¥¥: M
.
¥¥M N
FATAL_EXCEPTION
¥¥N ]
)
¥¥] ^
;
¥¥^ _
}
µµ 
}
∂∂ 
}
∑∑ 
}
∏∏ 	
public
∫∫ 
void
∫∫ $
UnregisterFromTeamChat
∫∫ *
(
∫∫* +
int
∫∫+ .
idUser
∫∫/ 5
)
∫∫5 6
{
ªª 	
lock
ºº 
(
ºº 

objectLock
ºº 
)
ºº 
{
ΩΩ 
if
ææ 
(
ææ 
idUser
ææ 
!=
ææ 
NULL_INT_VALUE
ææ ,
)
ææ, -
{
øø 
var
¿¿ *
channelForUnregisterTeamChat
¿¿ 4
=
¿¿5 6
	TeamChats
¿¿7 @
.
¿¿@ A,
GetChannelCallBackTeamChatUser
¿¿A _
(
¿¿_ `
idUser
¿¿` f
)
¿¿f g
;
¿¿g h
if
¡¡ 
(
¡¡ *
channelForUnregisterTeamChat
¡¡ 4
!=
¡¡5 7
null
¡¡8 <
)
¡¡< =
{
¬¬ 
	TeamChats
ƒƒ !
.
ƒƒ! "8
*RemoveRegistryOfTeamChatUserFromDictionary
ƒƒ" L
(
ƒƒL M
idUser
ƒƒM S
)
ƒƒS T
;
ƒƒT U
}
≈≈ 
}
∆∆ 
}
«« 
}
»» 	
}
…… 
}ÀÀ òØ
õC:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameServer\JeopardyGame.Service\ServiceImplementation\ConsultFriendsImplementation.cs
	namespace 	
JeopardyGame
 
. 
Service 
. !
ServiceImplementation 4
{ 
public 

partial 
class (
ConsultFriendsImplementation 5
:6 7
IConsultFriends8 G
{ 
private 
readonly 
int 

NOT_STATUS '
=( )
$num* +
;+ ,
private 
readonly 
int 
ACTIVE #
=$ %
$num& '
;' (
private 
readonly 
int 
PLAYING $
=% &
$num' (
;( )
private 
readonly 
int 
Banned #
=$ %
$num& '
;' (
private 
readonly 
int 
INACTIVE %
=& '
$num( )
;) *
private 
readonly 
int 
THERE_IS_A_REQUEST /
=0 1
$num2 3
;3 4
private 
readonly 
int 
THEY_ARE_FRIENDS -
=. /
$num0 1
;1 2
public 
GenericClass 
< 
List  
<  !"
FriendBasicInformation! 7
>7 8
>8 9!
GetUserFriendRequests: O
(O P
UserPojoP X
userY ]
)] ^
{ 	
GenericClass 
< 
List 
< "
FriendBasicInformation 4
>4 5
>5 6
resultToReturn7 E
=F G
newH K
GenericClassL X
<X Y
ListY ]
<] ^"
FriendBasicInformation^ t
>t u
>u v
(v w
)w x
;x y
if 
( 
user 
== 
null 
) 
{ 
return !
NullParametersHandler ,
., -'
HandleNullParametersService- H
(H I
resultToReturnI W
)W X
;X Y
} 
int   
idUser   
=   
user   
.   
IdUser   $
;  $ %
try!! 
{"" 
User## 
userConsulted## "
=### $
UserInterpreter##% 4
.##4 5$
FromUserPojoToUserEntity##5 M
(##M N
user##N R
)##R S
;##S T
GenericClassServer$$ "
<$$" #
Player$$# )
>$$) *
playerConsulted$$+ :
=$$; <$
UserManagerDataOperation$$= U
.$$U V
GetPlayerByIdUser$$V g
($$g h
userConsulted$$h u
.$$u v
IdUser$$v |
)$$| }
;$$} ~
if%% 
(%% 
playerConsulted%% #
.%%# $
	CodeEvent%%$ -
==%%. 0
ExceptionDictionary%%1 D
.%%D E
SUCCESFULL_EVENT%%E U
)%%U V
{&& 
GenericClassServer'' &
<''& '
List''' +
<''+ ,
Friend'', 2
>''2 3
>''3 4!
playerFriendsRequests''5 J
=''K L'
FriendsManagerDataOperation''M h
.''h i"
ConsultFriendsOfPlayer''i 
(	'' Ä
playerConsulted
''Ä è
.
''è ê
ObjectSaved
''ê õ
)
''õ ú
;
''ú ù
if(( 
((( !
playerFriendsRequests(( -
.((- .
	CodeEvent((. 7
==((8 :
ExceptionDictionary((; N
.((N O
SUCCESFULL_EVENT((O _
)((_ `
{)) 
resultToReturn** &
=**' ($
GatherFriendsByCondition**) A
(**A B!
playerFriendsRequests**B W
.**W X
ObjectSaved**X c
,**c d
null**e i
,**i j
playerConsulted**k z
.**z {
ObjectSaved	**{ Ü
,
**Ü á
$num
**à â
)
**â ä
;
**ä ã
}++ 
else,, 
{-- 
resultToReturn.. &
...& '
	CodeEvent..' 0
=..1 2!
playerFriendsRequests..3 H
...H I
	CodeEvent..I R
;..R S
}// 
}00 
else11 
{22 
resultToReturn33 "
.33" #
	CodeEvent33# ,
=33- .
playerConsulted33/ >
.33> ?
	CodeEvent33? H
;33H I
}44 
}55 
catch66 
(66 /
#CommunicationObjectFaultedException66 6
ex667 9
)669 :
{77 
resultToReturn88 
.88 
	CodeEvent88 (
=88) *
ExceptionDictionary88+ >
.88> ?
UNSUCCESFULL_EVENT88? Q
;88Q R 
ChannelAdministrator99 $
.99$ %$
HandleCommunicationIssue99% =
(99= >
idUser99> D
,99D E 
ChannelAdministrator99F Z
.99Z [+
GENERIC_COMMUNICATION_EXCEPTION99[ z
)99z {
;99{ |
ExceptionHandler::  
.::  !
LogException::! -
(::- .
ex::. 0
,::0 1
ExceptionDictionary::2 E
.::E F
FATAL_EXCEPTION::F U
)::U V
;::V W
};; 
catch<< 
(<< 
TimeoutException<< #
ex<<$ &
)<<& '
{== 
resultToReturn>> 
.>> 
	CodeEvent>> (
=>>) *
ExceptionDictionary>>+ >
.>>> ?
UNSUCCESFULL_EVENT>>? Q
;>>Q R 
ChannelAdministrator?? $
.??$ %$
HandleCommunicationIssue??% =
(??= >
idUser??> D
,??D E 
ChannelAdministrator??F Z
.??Z [+
GENERIC_COMMUNICATION_EXCEPTION??[ z
)??z {
;??{ |
ExceptionHandler@@  
.@@  !
LogException@@! -
(@@- .
ex@@. 0
,@@0 1
ExceptionDictionary@@2 E
.@@E F
FATAL_EXCEPTION@@F U
)@@U V
;@@V W
}AA 
catchBB 
(BB "
CommunicationExceptionBB )
exBB* ,
)BB, -
{CC 
resultToReturnDD 
.DD 
	CodeEventDD (
=DD) *
ExceptionDictionaryDD+ >
.DD> ?
UNSUCCESFULL_EVENTDD? Q
;DDQ R 
ChannelAdministratorEE $
.EE$ %$
HandleCommunicationIssueEE% =
(EE= >
idUserEE> D
,EED E 
ChannelAdministratorEEF Z
.EEZ [+
GENERIC_COMMUNICATION_EXCEPTIONEE[ z
)EEz {
;EE{ |
ExceptionHandlerFF  
.FF  !
LogExceptionFF! -
(FF- .
exFF. 0
,FF0 1
ExceptionDictionaryFF2 E
.FFE F
FATAL_EXCEPTIONFFF U
)FFU V
;FFV W
}GG 
catchHH 
(HH %
InvalidOperationExceptionHH ,
exHH- /
)HH/ 0
{II 
resultToReturnJJ 
.JJ 
	CodeEventJJ (
=JJ) *
ExceptionDictionaryJJ+ >
.JJ> ?
UNSUCCESFULL_EVENTJJ? Q
;JJQ R 
ChannelAdministratorKK $
.KK$ %$
HandleCommunicationIssueKK% =
(KK= >
idUserKK> D
,KKD E 
ChannelAdministratorKKF Z
.KKZ [+
GENERIC_COMMUNICATION_EXCEPTIONKK[ z
)KKz {
;KK{ |
ExceptionHandlerLL  
.LL  !
LogExceptionLL! -
(LL- .
exLL. 0
,LL0 1
ExceptionDictionaryLL2 E
.LLE F
FATAL_EXCEPTIONLLF U
)LLU V
;LLV W
}MM 
returnNN 
resultToReturnNN !
;NN! "
}OO 	
publicQQ 
GenericClassQQ 
<QQ 
ListQQ  
<QQ  !"
FriendBasicInformationQQ! 7
>QQ7 8
>QQ8 9
GetUserFriendsQQ: H
(QQH I
UserPojoQQI Q
userQQR V
)QQV W
{RR 	
GenericClassSS 
<SS 
ListSS 
<SS "
FriendBasicInformationSS 4
>SS4 5
>SS5 6
resultToReturnSS7 E
=SSF G
newSSH K
GenericClassSSL X
<SSX Y
ListSSY ]
<SS] ^"
FriendBasicInformationSS^ t
>SSt u
>SSu v
(SSv w
)SSw x
;SSx y
ifTT 
(TT 
userTT 
==TT 
nullTT 
)TT 
{UU 
returnVV !
NullParametersHandlerVV ,
.VV, -'
HandleNullParametersServiceVV- H
(VVH I
resultToReturnVVI W
)VVW X
;VVX Y
}WW 
intXX 
idUserXX 
=XX 
userXX 
.XX 
IdUserXX $
;XX$ %
tryYY 
{ZZ 
User[[ '
userConsultedForUserFriends[[ 0
=[[1 2
UserInterpreter[[3 B
.[[B C$
FromUserPojoToUserEntity[[C [
([[[ \
user[[\ `
)[[` a
;[[a b
GenericClassServer\\ "
<\\" #
Player\\# )
>\\) *%
playerConsultedForFriends\\+ D
=\\E F$
UserManagerDataOperation\\G _
.\\_ `
GetPlayerByIdUser\\` q
(\\q r(
userConsultedForUserFriends	\\r ç
.
\\ç é
IdUser
\\é î
)
\\î ï
;
\\ï ñ
if]] 
(]] %
playerConsultedForFriends]] -
.]]- .
	CodeEvent]]. 7
==]]8 :
ExceptionDictionary]]; N
.]]N O
SUCCESFULL_EVENT]]O _
)]]_ `
{^^ 
GenericClassServer__ &
<__& '
List__' +
<__+ ,
Friend__, 2
>__2 3
>__3 4
friendsOfPlayer__5 D
=__E F'
FriendsManagerDataOperation__G b
.__b c"
ConsultFriendsOfPlayer__c y
(__y z&
playerConsultedForFriends	__z ì
.
__ì î
ObjectSaved
__î ü
)
__ü †
;
__† °
if`` 
(`` 
friendsOfPlayer`` '
.``' (
	CodeEvent``( 1
==``2 4
ExceptionDictionary``5 H
.``H I
SUCCESFULL_EVENT``I Y
)``Y Z
{aa 
resultToReturnbb &
=bb' ($
GatherFriendsByConditionbb) A
(bbA B
friendsOfPlayerbbB Q
.bbQ R
ObjectSavedbbR ]
,bb] ^
nullbb_ c
,bbc d%
playerConsultedForFriendsbbe ~
.bb~ 
ObjectSaved	bb ä
,
bbä ã
$num
bbå ç
)
bbç é
;
bbé è
}cc 
elsedd 
{ee 
resultToReturnff &
.ff& '
	CodeEventff' 0
=ff1 2
friendsOfPlayerff3 B
.ffB C
	CodeEventffC L
;ffL M
}gg 
}hh 
elseii 
{jj 
resultToReturnkk "
.kk" #
	CodeEventkk# ,
=kk- .%
playerConsultedForFriendskk/ H
.kkH I
	CodeEventkkI R
;kkR S
}ll 
}mm 
catchnn 
(nn /
#CommunicationObjectFaultedExceptionnn 6
exnn7 9
)nn9 :
{oo 
resultToReturnpp 
.pp 
	CodeEventpp (
=pp) *
ExceptionDictionarypp+ >
.pp> ?
UNSUCCESFULL_EVENTpp? Q
;ppQ R 
ChannelAdministratorqq $
.qq$ %$
HandleCommunicationIssueqq% =
(qq= >
idUserqq> D
,qqD E 
ChannelAdministratorqqF Z
.qqZ [+
GENERIC_COMMUNICATION_EXCEPTIONqq[ z
)qqz {
;qq{ |
ExceptionHandlerrr  
.rr  !
LogExceptionrr! -
(rr- .
exrr. 0
,rr0 1
ExceptionDictionaryrr2 E
.rrE F
FATAL_EXCEPTIONrrF U
)rrU V
;rrV W
}ss 
catchtt 
(tt 
TimeoutExceptiontt #
extt$ &
)tt& '
{uu 
resultToReturnvv 
.vv 
	CodeEventvv (
=vv) *
ExceptionDictionaryvv+ >
.vv> ?
UNSUCCESFULL_EVENTvv? Q
;vvQ R 
ChannelAdministratorww $
.ww$ %$
HandleCommunicationIssueww% =
(ww= >
idUserww> D
,wwD E 
ChannelAdministratorwwF Z
.wwZ [+
GENERIC_COMMUNICATION_EXCEPTIONww[ z
)wwz {
;ww{ |
ExceptionHandlerxx  
.xx  !
LogExceptionxx! -
(xx- .
exxx. 0
,xx0 1
ExceptionDictionaryxx2 E
.xxE F
FATAL_EXCEPTIONxxF U
)xxU V
;xxV W
}yy 
catchzz 
(zz "
CommunicationExceptionzz )
exzz* ,
)zz, -
{{{ 
resultToReturn|| 
.|| 
	CodeEvent|| (
=||) *
ExceptionDictionary||+ >
.||> ?
UNSUCCESFULL_EVENT||? Q
;||Q R 
ChannelAdministrator}} $
.}}$ %$
HandleCommunicationIssue}}% =
(}}= >
idUser}}> D
,}}D E 
ChannelAdministrator}}F Z
.}}Z [+
GENERIC_COMMUNICATION_EXCEPTION}}[ z
)}}z {
;}}{ |
ExceptionHandler~~  
.~~  !
LogException~~! -
(~~- .
ex~~. 0
,~~0 1
ExceptionDictionary~~2 E
.~~E F
FATAL_EXCEPTION~~F U
)~~U V
;~~V W
} 
catch
ÄÄ 
(
ÄÄ '
InvalidOperationException
ÄÄ ,
ex
ÄÄ- /
)
ÄÄ/ 0
{
ÅÅ 
resultToReturn
ÇÇ 
.
ÇÇ 
	CodeEvent
ÇÇ (
=
ÇÇ) *!
ExceptionDictionary
ÇÇ+ >
.
ÇÇ> ? 
UNSUCCESFULL_EVENT
ÇÇ? Q
;
ÇÇQ R"
ChannelAdministrator
ÉÉ $
.
ÉÉ$ %&
HandleCommunicationIssue
ÉÉ% =
(
ÉÉ= >
idUser
ÉÉ> D
,
ÉÉD E"
ChannelAdministrator
ÉÉF Z
.
ÉÉZ [-
GENERIC_COMMUNICATION_EXCEPTION
ÉÉ[ z
)
ÉÉz {
;
ÉÉ{ |
ExceptionHandler
ÑÑ  
.
ÑÑ  !
LogException
ÑÑ! -
(
ÑÑ- .
ex
ÑÑ. 0
,
ÑÑ0 1!
ExceptionDictionary
ÑÑ2 E
.
ÑÑE F
FATAL_EXCEPTION
ÑÑF U
)
ÑÑU V
;
ÑÑV W
}
ÖÖ 
return
ÜÜ 
resultToReturn
ÜÜ !
;
ÜÜ! "
}
áá 	
public
ââ 
GenericClass
ââ 
<
ââ 
List
ââ  
<
ââ  !$
FriendBasicInformation
ââ! 7
>
ââ7 8
>
ââ8 9 
GetUsersNotFriends
ââ: L
(
ââL M
UserPojo
ââM U
user
ââV Z
)
ââZ [
{
ää 	
GenericClass
ãã 
<
ãã 
List
ãã 
<
ãã $
FriendBasicInformation
ãã 4
>
ãã4 5
>
ãã5 6
resultToReturn
ãã7 E
=
ããF G
new
ããH K
GenericClass
ããL X
<
ããX Y
List
ããY ]
<
ãã] ^$
FriendBasicInformation
ãã^ t
>
ããt u
>
ããu v
(
ããv w
)
ããw x
;
ããx y
if
åå 
(
åå 
user
åå 
==
åå 
null
åå 
)
åå 
{
çç 
return
éé #
NullParametersHandler
éé ,
.
éé, -)
HandleNullParametersService
éé- H
(
ééH I
resultToReturn
ééI W
)
ééW X
;
ééX Y
}
èè 
int
êê 
idUser
êê 
=
êê 
user
êê 
.
êê 
IdUser
êê $
;
êê$ %
try
ëë 
{
íí 
User
ìì (
userConsultedForNotFriends
ìì /
=
ìì0 1
UserInterpreter
ìì2 A
.
ììA B&
FromUserPojoToUserEntity
ììB Z
(
ììZ [
user
ìì[ _
)
ìì_ `
;
ìì` a 
GenericClassServer
îî "
<
îî" #
Player
îî# )
>
îî) *%
playerConsultedByIdUser
îî+ B
=
îîC D&
UserManagerDataOperation
îîE ]
.
îî] ^
GetPlayerByIdUser
îî^ o
(
îîo p)
userConsultedForNotFriendsîîp ä
.îîä ã
IdUserîîã ë
)îîë í
;îîí ì
if
ïï 
(
ïï %
playerConsultedByIdUser
ïï +
.
ïï+ ,
	CodeEvent
ïï, 5
==
ïï6 8!
ExceptionDictionary
ïï9 L
.
ïïL M
SUCCESFULL_EVENT
ïïM ]
)
ïï] ^
{
ññ  
GenericClassServer
óó &
<
óó& '
List
óó' +
<
óó+ ,
Player
óó, 2
>
óó2 3
>
óó3 4
playersNotFriends
óó5 F
=
óóG H)
FriendsManagerDataOperation
óóI d
.
óód e#
Get20NotFriendsPlayer
óóe z
(
óóz {&
playerConsultedByIdUseróó{ í
.óóí ì
ObjectSavedóóì û
)óóû ü
;óóü †
if
òò 
(
òò 
playersNotFriends
òò )
.
òò) *
	CodeEvent
òò* 3
==
òò4 6!
ExceptionDictionary
òò7 J
.
òòJ K
SUCCESFULL_EVENT
òòK [
)
òò[ \
{
ôô 
resultToReturn
öö &
=
öö' (&
GatherFriendsByCondition
öö) A
(
ööA B
null
ööB F
,
ööF G
playersNotFriends
ööH Y
.
ööY Z
ObjectSaved
ööZ e
,
ööe f%
playerConsultedByIdUser
öög ~
.
öö~ 
ObjectSavedöö ä
,ööä ã
$numööå ç
)ööç é
;ööé è
}
õõ 
else
úú 
{
ùù 
resultToReturn
ûû &
.
ûû& '
	CodeEvent
ûû' 0
=
ûû1 2
playersNotFriends
ûû3 D
.
ûûD E
	CodeEvent
ûûE N
;
ûûN O
}
üü 
}
†† 
else
°° 
{
¢¢ 
resultToReturn
££ "
.
££" #
	CodeEvent
££# ,
=
££- .%
playerConsultedByIdUser
££/ F
.
££F G
	CodeEvent
££G P
;
££P Q
}
§§ 
}
•• 
catch
¶¶ 
(
¶¶ 1
#CommunicationObjectFaultedException
¶¶ 6
ex
¶¶7 9
)
¶¶9 :
{
ßß 
resultToReturn
®® 
.
®® 
	CodeEvent
®® (
=
®®) *!
ExceptionDictionary
®®+ >
.
®®> ? 
UNSUCCESFULL_EVENT
®®? Q
;
®®Q R"
ChannelAdministrator
©© $
.
©©$ %&
HandleCommunicationIssue
©©% =
(
©©= >
idUser
©©> D
,
©©D E"
ChannelAdministrator
©©F Z
.
©©Z [-
GENERIC_COMMUNICATION_EXCEPTION
©©[ z
)
©©z {
;
©©{ |
ExceptionHandler
™™  
.
™™  !
LogException
™™! -
(
™™- .
ex
™™. 0
,
™™0 1!
ExceptionDictionary
™™2 E
.
™™E F
FATAL_EXCEPTION
™™F U
)
™™U V
;
™™V W
}
´´ 
catch
¨¨ 
(
¨¨ 
TimeoutException
¨¨ #
ex
¨¨$ &
)
¨¨& '
{
≠≠ 
resultToReturn
ÆÆ 
.
ÆÆ 
	CodeEvent
ÆÆ (
=
ÆÆ) *!
ExceptionDictionary
ÆÆ+ >
.
ÆÆ> ? 
UNSUCCESFULL_EVENT
ÆÆ? Q
;
ÆÆQ R"
ChannelAdministrator
ØØ $
.
ØØ$ %&
HandleCommunicationIssue
ØØ% =
(
ØØ= >
idUser
ØØ> D
,
ØØD E"
ChannelAdministrator
ØØF Z
.
ØØZ [-
GENERIC_COMMUNICATION_EXCEPTION
ØØ[ z
)
ØØz {
;
ØØ{ |
ExceptionHandler
∞∞  
.
∞∞  !
LogException
∞∞! -
(
∞∞- .
ex
∞∞. 0
,
∞∞0 1!
ExceptionDictionary
∞∞2 E
.
∞∞E F
FATAL_EXCEPTION
∞∞F U
)
∞∞U V
;
∞∞V W
}
±± 
catch
≤≤ 
(
≤≤ $
CommunicationException
≤≤ )
ex
≤≤* ,
)
≤≤, -
{
≥≥ 
resultToReturn
¥¥ 
.
¥¥ 
	CodeEvent
¥¥ (
=
¥¥) *!
ExceptionDictionary
¥¥+ >
.
¥¥> ? 
UNSUCCESFULL_EVENT
¥¥? Q
;
¥¥Q R"
ChannelAdministrator
µµ $
.
µµ$ %&
HandleCommunicationIssue
µµ% =
(
µµ= >
idUser
µµ> D
,
µµD E"
ChannelAdministrator
µµF Z
.
µµZ [-
GENERIC_COMMUNICATION_EXCEPTION
µµ[ z
)
µµz {
;
µµ{ |
ExceptionHandler
∂∂  
.
∂∂  !
LogException
∂∂! -
(
∂∂- .
ex
∂∂. 0
,
∂∂0 1!
ExceptionDictionary
∂∂2 E
.
∂∂E F
FATAL_EXCEPTION
∂∂F U
)
∂∂U V
;
∂∂V W
}
∑∑ 
catch
∏∏ 
(
∏∏ '
InvalidOperationException
∏∏ ,
ex
∏∏- /
)
∏∏/ 0
{
ππ 
resultToReturn
∫∫ 
.
∫∫ 
	CodeEvent
∫∫ (
=
∫∫) *!
ExceptionDictionary
∫∫+ >
.
∫∫> ? 
UNSUCCESFULL_EVENT
∫∫? Q
;
∫∫Q R"
ChannelAdministrator
ªª $
.
ªª$ %&
HandleCommunicationIssue
ªª% =
(
ªª= >
idUser
ªª> D
,
ªªD E"
ChannelAdministrator
ªªF Z
.
ªªZ [-
GENERIC_COMMUNICATION_EXCEPTION
ªª[ z
)
ªªz {
;
ªª{ |
ExceptionHandler
ºº  
.
ºº  !
LogException
ºº! -
(
ºº- .
ex
ºº. 0
,
ºº0 1!
ExceptionDictionary
ºº2 E
.
ººE F
FATAL_EXCEPTION
ººF U
)
ººU V
;
ººV W
}
ΩΩ 
return
ææ 
resultToReturn
ææ !
;
ææ! "
}
øø 	
private
¿¿ 
GenericClass
¿¿ 
<
¿¿ 
List
¿¿ !
<
¿¿! "$
FriendBasicInformation
¿¿" 8
>
¿¿8 9
>
¿¿9 :&
GatherFriendsByCondition
¿¿; S
(
¿¿S T
List
¿¿T X
<
¿¿X Y
Friend
¿¿Y _
>
¿¿_ `!
listOfPlayerFriends
¿¿a t
,
¿¿t u
List
¿¿v z
<
¿¿z {
Player¿¿{ Å
>¿¿Å Ç&
listOfNotPlayerFriends¿¿É ô
,¿¿ô ö
Player¿¿õ °
playerConsulted¿¿¢ ±
,¿¿± ≤
int¿¿≥ ∂
typeConsult¿¿∑ ¬
)¿¿¬ √
{
¡¡ 	
GenericClass
¬¬ 
<
¬¬ 
List
¬¬ 
<
¬¬ $
FriendBasicInformation
¬¬ 4
>
¬¬4 5
>
¬¬5 6!
friendsListToReturn
¬¬7 J
=
¬¬K L
new
¬¬M P
GenericClass
¬¬Q ]
<
¬¬] ^
List
¬¬^ b
<
¬¬b c$
FriendBasicInformation
¬¬c y
>
¬¬y z
>
¬¬z {
(
¬¬{ |
)
¬¬| }
;
¬¬} ~!
friendsListToReturn
√√ 
.
√√  
	CodeEvent
√√  )
=
√√* +!
ExceptionDictionary
√√, ?
.
√√? @
SUCCESFULL_EVENT
√√@ P
;
√√P Q
switch
ƒƒ 
(
ƒƒ 
typeConsult
ƒƒ 
)
ƒƒ  
{
≈≈ 
case
∆∆ 
$num
∆∆ 
:
∆∆ !
friendsListToReturn
«« '
.
««' (
ObjectSaved
««( 3
=
««4 5(
GetListOfRequestFriendship
««6 P
(
««P Q!
listOfPlayerFriends
««Q d
,
««d e
playerConsulted
««f u
)
««u v
;
««v w
break
»» 
;
»» 
case
…… 
$num
…… 
:
…… !
friendsListToReturn
   '
.
  ' (
ObjectSaved
  ( 3
=
  4 5$
GetListOfFriendsOfUser
  6 L
(
  L M!
listOfPlayerFriends
  M `
,
  ` a
playerConsulted
  b q
)
  q r
;
  r s
break
ÀÀ 
;
ÀÀ 
case
ÃÃ 
$num
ÃÃ 
:
ÃÃ !
friendsListToReturn
ÕÕ '
.
ÕÕ' (
ObjectSaved
ÕÕ( 3
=
ÕÕ4 5!
GetListOfNotFriends
ÕÕ6 I
(
ÕÕI J$
listOfNotPlayerFriends
ÕÕJ `
)
ÕÕ` a
;
ÕÕa b
break
ŒŒ 
;
ŒŒ 
}
œœ 
if
–– 
(
–– !
friendsListToReturn
–– #
.
––# $
ObjectSaved
––$ /
!=
––0 2
null
––3 7
)
––7 8
{
—— !
friendsListToReturn
““ #
.
““# $
	CodeEvent
““$ -
=
““. /!
ExceptionDictionary
““0 C
.
““C D
SUCCESFULL_EVENT
““D T
;
““T U
}
”” 
else
‘‘ 
{
’’ !
friendsListToReturn
÷÷ #
.
÷÷# $
	CodeEvent
÷÷$ -
=
÷÷. /!
ExceptionDictionary
÷÷0 C
.
÷÷C D 
UNSUCCESFULL_EVENT
÷÷D V
;
÷÷V W
}
◊◊ 
return
ÿÿ !
friendsListToReturn
ÿÿ &
;
ÿÿ& '
}
ŸŸ 	
private
⁄⁄ 
List
⁄⁄ 
<
⁄⁄ $
FriendBasicInformation
⁄⁄ +
>
⁄⁄+ ,(
GetListOfRequestFriendship
⁄⁄- G
(
⁄⁄G H
List
⁄⁄H L
<
⁄⁄L M
Friend
⁄⁄M S
>
⁄⁄S T#
listOfFriendsRegistry
⁄⁄U j
,
⁄⁄j k
Player
⁄⁄l r
playerConsulted⁄⁄s Ç
)⁄⁄Ç É
{
€€ 	
List
‹‹ 
<
‹‹ $
FriendBasicInformation
‹‹ '
>
‹‹' ('
basicInformationOfFriends
‹‹) B
=
‹‹C D
new
‹‹E H
List
‹‹I M
<
‹‹M N$
FriendBasicInformation
‹‹N d
>
‹‹d e
(
‹‹e f
)
‹‹f g
;
‹‹g h$
FriendBasicInformation
›› " 
userFriendRegistry
››# 5
=
››6 7
new
››8 ;$
FriendBasicInformation
››< R
(
››R S
)
››S T
;
››T U.
 ConsultInformationImplementation
ﬁﬁ ,'
consultFriendsInformation
ﬁﬁ- F
=
ﬁﬁG H
new
ﬁﬁI L.
 ConsultInformationImplementation
ﬁﬁM m
(
ﬁﬁm n
)
ﬁﬁn o
;
ﬁﬁo p
foreach
ﬂﬂ 
(
ﬂﬂ 
Friend
ﬂﬂ 
friend
ﬂﬂ "
in
ﬂﬂ# %#
listOfFriendsRegistry
ﬂﬂ& ;
)
ﬂﬂ; <
{
‡‡ 
if
·· 
(
·· 
friend
·· 
.
·· #
PlayerFriend_IdPlayer
·· 0
==
··1 3
playerConsulted
··4 C
.
··C D
IdPlayer
··D L
&&
··M O
friend
··P V
.
··V W
IdFriendState
··W d
==
··e g 
THERE_IS_A_REQUEST
··h z
)
··z {
{
‚‚ 
var
„„ !
userFriendConsulted
„„ +
=
„„, -'
consultFriendsInformation
„„. G
.
„„G H#
ConsultUserByIdPlayer
„„H ]
(
„„] ^
friend
„„^ d
.
„„d e
Player_IdPlayer
„„e t
)
„„t u
;
„„u v
if
ÂÂ 
(
ÂÂ !
userFriendConsulted
ÂÂ +
.
ÂÂ+ ,
	CodeEvent
ÂÂ, 5
==
ÂÂ6 8!
ExceptionDictionary
ÂÂ9 L
.
ÂÂL M
SUCCESFULL_EVENT
ÂÂM ]
)
ÂÂ] ^
{
ÊÊ 
UserPojo
ÁÁ  
newUserFriend
ÁÁ! .
=
ÁÁ/ 0!
userFriendConsulted
ÁÁ1 D
.
ÁÁD E
ObjectSaved
ÁÁE P
;
ÁÁP Q 
userFriendRegistry
ËË *
.
ËË* +
UserName
ËË+ 3
=
ËË4 5
newUserFriend
ËË6 C
.
ËËC D
UserName
ËËD L
;
ËËL M 
userFriendRegistry
ÈÈ *
.
ÈÈ* +
IdUser
ÈÈ+ 1
=
ÈÈ2 3
newUserFriend
ÈÈ4 A
.
ÈÈA B
IdUser
ÈÈB H
;
ÈÈH I 
userFriendRegistry
ÍÍ *
.
ÍÍ* +
EmailAddress
ÍÍ+ 7
=
ÍÍ8 9
newUserFriend
ÍÍ: G
.
ÍÍG H
EmailAddress
ÍÍH T
;
ÍÍT U 
userFriendRegistry
ÎÎ *
.
ÎÎ* +"
IdStatusAvailability
ÎÎ+ ?
=
ÎÎ@ A

NOT_STATUS
ÎÎB L
;
ÎÎL M'
basicInformationOfFriends
ÏÏ 1
.
ÏÏ1 2
Add
ÏÏ2 5
(
ÏÏ5 6 
userFriendRegistry
ÏÏ6 H
)
ÏÏH I
;
ÏÏI J
}
ÌÌ 
}
ÓÓ 
}
ÔÔ 
return
 '
basicInformationOfFriends
 ,
;
, -
}
ÒÒ 	
private
ÚÚ 
List
ÚÚ 
<
ÚÚ $
FriendBasicInformation
ÚÚ +
>
ÚÚ+ ,$
GetListOfFriendsOfUser
ÚÚ- C
(
ÚÚC D
List
ÚÚD H
<
ÚÚH I
Friend
ÚÚI O
>
ÚÚO P#
listOfFriendsRegistry
ÚÚQ f
,
ÚÚf g
Player
ÚÚh n
playerConsulted
ÚÚo ~
)
ÚÚ~ 
{
ÛÛ 	.
 ConsultInformationImplementation
ÙÙ , 
consultInformation
ÙÙ- ?
=
ÙÙ@ A
new
ÙÙB E.
 ConsultInformationImplementation
ÙÙF f
(
ÙÙf g
)
ÙÙg h
;
ÙÙh i
List
ıı 
<
ıı $
FriendBasicInformation
ıı '
>
ıı' (&
friendsOfUserInformation
ıı) A
=
ııB C
new
ııD G
List
ııH L
<
ııL M$
FriendBasicInformation
ııM c
>
ııc d
(
ııd e
)
ııe f
;
ııf g
foreach
ˆˆ 
(
ˆˆ 
Friend
ˆˆ 
friend
ˆˆ "
in
ˆˆ# %#
listOfFriendsRegistry
ˆˆ& ;
)
ˆˆ; <
{
˜˜ 
if
¯¯ 
(
¯¯ 
friend
¯¯ 
.
¯¯ 
IdFriendState
¯¯ (
==
¯¯) +
THEY_ARE_FRIENDS
¯¯, <
)
¯¯< =
{
˘˘ $
FriendBasicInformation
˙˙ *#
userFriendInformation
˙˙+ @
=
˙˙A B
new
˙˙C F$
FriendBasicInformation
˙˙G ]
(
˙˙] ^
)
˙˙^ _
;
˙˙_ `
GenericClass
˚˚  
<
˚˚  !
UserPojo
˚˚! )
>
˚˚) *
userFriendPojo
˚˚+ 9
;
˚˚9 :
int
¸¸ 
status
¸¸ 
;
¸¸ 
if
˝˝ 
(
˝˝ 
(
˝˝ 
friend
˝˝ 
.
˝˝  
Player_IdPlayer
˝˝  /
==
˝˝0 2
playerConsulted
˝˝3 B
.
˝˝B C
IdPlayer
˝˝C K
)
˝˝K L
)
˝˝L M
{
˛˛ 
status
ˇˇ 
=
ˇˇ  
GetFriendStatus
ˇˇ! 0
(
ˇˇ0 1
friend
ˇˇ1 7
.
ˇˇ7 8#
PlayerFriend_IdPlayer
ˇˇ8 M
)
ˇˇM N
;
ˇˇN O
userFriendPojo
ÄÄ &
=
ÄÄ' ( 
consultInformation
ÄÄ) ;
.
ÄÄ; <#
ConsultUserByIdPlayer
ÄÄ< Q
(
ÄÄQ R
friend
ÄÄR X
.
ÄÄX Y#
PlayerFriend_IdPlayer
ÄÄY n
)
ÄÄn o
;
ÄÄo p
}
ÅÅ 
else
ÇÇ 
{
ÉÉ 
status
ÑÑ 
=
ÑÑ  
GetFriendStatus
ÑÑ! 0
(
ÑÑ0 1
friend
ÑÑ1 7
.
ÑÑ7 8
Player_IdPlayer
ÑÑ8 G
)
ÑÑG H
;
ÑÑH I
userFriendPojo
ÖÖ &
=
ÖÖ' ( 
consultInformation
ÖÖ) ;
.
ÖÖ; <#
ConsultUserByIdPlayer
ÖÖ< Q
(
ÖÖQ R
friend
ÖÖR X
.
ÖÖX Y
Player_IdPlayer
ÖÖY h
)
ÖÖh i
;
ÖÖi j
}
ÜÜ 
if
áá 
(
áá 
userFriendPojo
áá &
.
áá& '
	CodeEvent
áá' 0
==
áá1 3!
ExceptionDictionary
áá4 G
.
ááG H
SUCCESFULL_EVENT
ááH X
)
ááX Y
{
àà #
userFriendInformation
ââ -
.
ââ- .
UserName
ââ. 6
=
ââ7 8
userFriendPojo
ââ9 G
.
ââG H
ObjectSaved
ââH S
.
ââS T
UserName
ââT \
;
ââ\ ]#
userFriendInformation
ää -
.
ää- .
IdUser
ää. 4
=
ää5 6
userFriendPojo
ää7 E
.
ääE F
ObjectSaved
ääF Q
.
ääQ R
IdUser
ääR X
;
ääX Y#
userFriendInformation
ãã -
.
ãã- .
EmailAddress
ãã. :
=
ãã: ;
userFriendPojo
ãã< J
.
ããJ K
ObjectSaved
ããK V
.
ããV W
EmailAddress
ããW c
;
ããc d#
userFriendInformation
åå -
.
åå- ."
IdStatusAvailability
åå. B
=
ååC D
status
ååE K
;
ååK L&
friendsOfUserInformation
çç 0
.
çç0 1
Add
çç1 4
(
çç4 5#
userFriendInformation
çç5 J
)
ççJ K
;
ççK L
}
éé 
}
èè 
}
êê 
return
ëë &
friendsOfUserInformation
ëë +
;
ëë+ ,
}
íí 	
private
ìì 
List
ìì 
<
ìì $
FriendBasicInformation
ìì +
>
ìì+ ,!
GetListOfNotFriends
ìì- @
(
ìì@ A
List
ììA E
<
ììE F
Player
ììF L
>
ììL M#
listOfFriendsRegistry
ììN c
)
ììc d
{
îî 	.
 ConsultInformationImplementation
ïï , 
consultInformation
ïï- ?
=
ïï@ A
new
ïïB E.
 ConsultInformationImplementation
ïïF f
(
ïïf g
)
ïïg h
;
ïïh i
List
ññ 
<
ññ $
FriendBasicInformation
ññ '
>
ññ' (,
ListUsersNotFriendsInformation
ññ) G
=
ññH I
new
ññJ M
List
ññN R
<
ññR S$
FriendBasicInformation
ññS i
>
ññi j
(
ññj k
)
ññk l
;
ññl m
foreach
óó 
(
óó 
var
óó 
player
óó 
in
óó  "#
listOfFriendsRegistry
óó# 8
)
óó8 9
{
òò $
FriendBasicInformation
ôô &&
userNotFriendInformation
ôô' ?
=
ôô@ A
new
ôôB E$
FriendBasicInformation
ôôF \
(
ôô\ ]
)
ôô] ^
;
ôô^ _
var
öö !
userFriendConsulted
öö '
=
öö( ) 
consultInformation
öö* <
.
öö< =#
ConsultUserByIdPlayer
öö= R
(
ööR S
player
ööS Y
.
ööY Z
IdPlayer
ööZ b
)
ööb c
;
ööc d
if
õõ 
(
õõ !
userFriendConsulted
õõ '
.
õõ' (
	CodeEvent
õõ( 1
==
õõ2 4!
ExceptionDictionary
õõ5 H
.
õõH I
SUCCESFULL_EVENT
õõI Y
)
õõY Z
{
úú &
userNotFriendInformation
ùù ,
.
ùù, -
UserName
ùù- 5
=
ùù6 7!
userFriendConsulted
ùù8 K
.
ùùK L
ObjectSaved
ùùL W
.
ùùW X
UserName
ùùX `
;
ùù` a&
userNotFriendInformation
ûû ,
.
ûû, -
IdUser
ûû- 3
=
ûû4 5!
userFriendConsulted
ûû6 I
.
ûûI J
ObjectSaved
ûûJ U
.
ûûU V
IdUser
ûûV \
;
ûû\ ]&
userNotFriendInformation
üü ,
.
üü, -
EmailAddress
üü- 9
=
üü: ;!
userFriendConsulted
üü< O
.
üüO P
ObjectSaved
üüP [
.
üü[ \
EmailAddress
üü\ h
;
üüh i&
userNotFriendInformation
†† ,
.
††, -"
IdStatusAvailability
††- A
=
††B C

NOT_STATUS
††D N
;
††N O,
ListUsersNotFriendsInformation
°° 2
.
°°2 3
Add
°°3 6
(
°°6 7&
userNotFriendInformation
°°7 O
)
°°O P
;
°°P Q
}
¢¢ 
}
££ 
return
§§ ,
ListUsersNotFriendsInformation
§§ 1
;
§§1 2
}
•• 	
private
®® 
int
®® 
GetFriendStatus
®® #
(
®®# $
int
®®$ '
idFriend
®®( 0
)
®®0 1
{
©© 	.
 ConsultInformationImplementation
™™ ,)
consultInformationOfFriends
™™- H
=
™™I J
new
™™K N.
 ConsultInformationImplementation
™™O o
(
™™o p
)
™™p q
;
™™q r
var
´´ 
userPOJO
´´ 
=
´´ )
consultInformationOfFriends
´´ 6
.
´´6 7#
ConsultUserByIdPlayer
´´7 L
(
´´L M
idFriend
´´M U
)
´´U V
;
´´V W
if
¨¨ 
(
¨¨ 
userPOJO
¨¨ 
.
¨¨ 
	CodeEvent
¨¨ "
==
¨¨# %!
ExceptionDictionary
¨¨& 9
.
¨¨9 :
SUCCESFULL_EVENT
¨¨: J
)
¨¨J K
{
≠≠ 
var
ÆÆ )
channelSavedForFriendStatus
ÆÆ /
=
ÆÆ0 1#
ActiveUsersDictionary
ÆÆ2 G
.
ÆÆG H*
GetChannelCallBackActiveUser
ÆÆH d
(
ÆÆd e
userPOJO
ÆÆe m
.
ÆÆm n
ObjectSaved
ÆÆn y
.
ÆÆy z
IdUserÆÆz Ä
)ÆÆÄ Å
;ÆÆÅ Ç
if
ØØ 
(
ØØ )
channelSavedForFriendStatus
ØØ /
!=
ØØ0 2
null
ØØ3 7
)
ØØ7 8
{
∞∞ 
return
±± 
PLAYING
±± "
;
±±" #
}
≤≤ 
}
≥≥ 
if
¥¥ 
(
¥¥ 
userPOJO
¥¥ 
.
¥¥ 
	CodeEvent
¥¥ "
==
¥¥# %!
ExceptionDictionary
¥¥& 9
.
¥¥9 :
SUCCESFULL_EVENT
¥¥: J
)
¥¥J K
{
µµ 
var
∂∂ )
channelSavedForFriendStatus
∂∂ /
=
∂∂0 1
LivingClients
∂∂2 ?
.
∂∂? @
	GetClient
∂∂@ I
(
∂∂I J
userPOJO
∂∂J R
.
∂∂R S
ObjectSaved
∂∂S ^
.
∂∂^ _
UserName
∂∂_ g
)
∂∂g h
;
∂∂h i
if
∑∑ 
(
∑∑ )
channelSavedForFriendStatus
∑∑ /
!=
∑∑0 2
null
∑∑3 7
)
∑∑7 8
{
∏∏ 
return
ππ 
ACTIVE
ππ !
;
ππ! "
}
∫∫ 
}
ªª 
var
ºº 

playerPojo
ºº 
=
ºº )
consultInformationOfFriends
ºº 8
.
ºº8 9
ConsultPlayerById
ºº9 J
(
ººJ K
idFriend
ººK S
)
ººS T
;
ººT U
if
ΩΩ 
(
ΩΩ 

playerPojo
ΩΩ 
.
ΩΩ 
	CodeEvent
ΩΩ $
==
ΩΩ% '!
ExceptionDictionary
ΩΩ( ;
.
ΩΩ; <
SUCCESFULL_EVENT
ΩΩ< L
&&
ΩΩM O

playerPojo
ΩΩP Z
.
ΩΩZ [
ObjectSaved
ΩΩ[ f
.
ΩΩf g
	NoReports
ΩΩg p
==
ΩΩq s
$num
ΩΩt u
)
ΩΩu v
{
ææ 
return
øø 
Banned
øø 
;
øø 
}
¿¿ 
return
¡¡ 
INACTIVE
¡¡ 
;
¡¡ 
}
¬¬ 	
}
ƒƒ 
}∆∆ ›Ö
üC:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameServer\JeopardyGame.Service\ServiceImplementation\ConsultInformationImplementation.cs
	namespace 	
JeopardyGame
 
. 
Service 
. !
ServiceImplementation 4
{ 
public 

partial 
class ,
 ConsultInformationImplementation 9
:: ;#
IConsultUserInformation< S
{ 
private 
readonly 
int 
NULL_INT_VALUE +
=, -
$num. /
;/ 0
public 
GenericClass 
< 

PlayerPojo &
>& '
ConsultPlayerById( 9
(9 :
int: =
idPlayer> F
)F G
{ 	
GenericClass 
< 

PlayerPojo #
># $
resultToReturn% 3
=4 5
new6 9
GenericClass: F
<F G

PlayerPojoG Q
>Q R
(R S
)S T
;T U
try 
{ 
if 
( 
idPlayer 
== 
NULL_INT_VALUE  .
). /
{ 
return !
NullParametersHandler 0
.0 1'
HandleNullParametersService1 L
(L M
resultToReturnM [
)[ \
;\ ]
} 
GenericClassServer "
<" #
Player# )
>) *%
playerConsultedByIdPlayer+ D
=E F
DataG K
.K L

DataAccessL V
.V W$
UserManagerDataOperationW o
.o p 
GetPlayerByIdPlayer	p É
(
É Ñ
idPlayer
Ñ å
)
å ç
;
ç é
resultToReturn 
. 
ObjectSaved *
=+ ,
UserInterpreter- <
.< =(
FromPlayerEntityToPlayerPojo= Y
(Y Z%
playerConsultedByIdPlayerZ s
.s t
ObjectSavedt 
)	 Ä
;
Ä Å
resultToReturn 
. 
	CodeEvent (
=) *%
playerConsultedByIdPlayer+ D
.D E
	CodeEventE N
;N O
} 
catch 
( /
#CommunicationObjectFaultedException 6
ex7 9
)9 :
{   
int!! 
idUser!! 
=!! !
ConsultUserByIdPlayer!! 2
(!!2 3
idPlayer!!3 ;
)!!; <
.!!< =
ObjectSaved!!= H
.!!H I
IdUser!!I O
;!!O P
resultToReturn"" 
."" 
	CodeEvent"" (
="") *
ExceptionDictionary""+ >
.""> ?
UNSUCCESFULL_EVENT""? Q
;""Q R 
ChannelAdministrator## $
.##$ %$
HandleCommunicationIssue##% =
(##= >
idUser##> D
,##D E 
ChannelAdministrator##F Z
.##Z [+
GENERIC_COMMUNICATION_EXCEPTION##[ z
)##z {
;##{ |
ExceptionHandler$$  
.$$  !
LogException$$! -
($$- .
ex$$. 0
,$$0 1
ExceptionDictionary$$2 E
.$$E F
FATAL_EXCEPTION$$F U
)$$U V
;$$V W
}%% 
catch&& 
(&& 
TimeoutException&& #
ex&&$ &
)&&& '
{'' 
int(( 
idUser(( 
=(( !
ConsultUserByIdPlayer(( 2
(((2 3
idPlayer((3 ;
)((; <
.((< =
ObjectSaved((= H
.((H I
IdUser((I O
;((O P
resultToReturn)) 
.)) 
	CodeEvent)) (
=))) *
ExceptionDictionary))+ >
.))> ?
UNSUCCESFULL_EVENT))? Q
;))Q R 
ChannelAdministrator** $
.**$ %$
HandleCommunicationIssue**% =
(**= >
idUser**> D
,**D E 
ChannelAdministrator**F Z
.**Z [+
GENERIC_COMMUNICATION_EXCEPTION**[ z
)**z {
;**{ |
ExceptionHandler++  
.++  !
LogException++! -
(++- .
ex++. 0
,++0 1
ExceptionDictionary++2 E
.++E F
FATAL_EXCEPTION++F U
)++U V
;++V W
},, 
catch-- 
(-- "
CommunicationException-- )
ex--* ,
)--, -
{.. 
int// 
idUser// 
=// !
ConsultUserByIdPlayer// 2
(//2 3
idPlayer//3 ;
)//; <
.//< =
ObjectSaved//= H
.//H I
IdUser//I O
;//O P
resultToReturn00 
.00 
	CodeEvent00 (
=00) *
ExceptionDictionary00+ >
.00> ?
UNSUCCESFULL_EVENT00? Q
;00Q R 
ChannelAdministrator11 $
.11$ %$
HandleCommunicationIssue11% =
(11= >
idUser11> D
,11D E 
ChannelAdministrator11F Z
.11Z [+
GENERIC_COMMUNICATION_EXCEPTION11[ z
)11z {
;11{ |
ExceptionHandler22  
.22  !
LogException22! -
(22- .
ex22. 0
,220 1
ExceptionDictionary222 E
.22E F
FATAL_EXCEPTION22F U
)22U V
;22V W
}33 
catch44 
(44 %
InvalidOperationException44 ,
ex44- /
)44/ 0
{55 
int66 
idUser66 
=66 !
ConsultUserByIdPlayer66 2
(662 3
idPlayer663 ;
)66; <
.66< =
ObjectSaved66= H
.66H I
IdUser66I O
;66O P
resultToReturn77 
.77 
	CodeEvent77 (
=77) *
ExceptionDictionary77+ >
.77> ?
UNSUCCESFULL_EVENT77? Q
;77Q R 
ChannelAdministrator88 $
.88$ %$
HandleCommunicationIssue88% =
(88= >
idUser88> D
,88D E 
ChannelAdministrator88F Z
.88Z [+
GENERIC_COMMUNICATION_EXCEPTION88[ z
)88z {
;88{ |
ExceptionHandler99  
.99  !
LogException99! -
(99- .
ex99. 0
,990 1
ExceptionDictionary992 E
.99E F
FATAL_EXCEPTION99F U
)99U V
;99V W
}:: 
return;; 
resultToReturn;; !
;;;! "
}<< 	
public>> 
GenericClass>> 
<>> 

PlayerPojo>> &
>>>& '!
ConsultPlayerByIdUser>>( =
(>>= >
int>>> A
idUser>>B H
)>>H I
{?? 	
GenericClass@@ 
<@@ 

PlayerPojo@@ #
>@@# $
resultToReturn@@% 3
=@@4 5
new@@6 9
GenericClass@@: F
<@@F G

PlayerPojo@@G Q
>@@Q R
(@@R S
)@@S T
;@@T U
tryAA 
{BB 
ifCC 
(CC 
idUserCC 
==CC 
NULL_INT_VALUECC ,
)CC, -
{DD 
returnEE !
NullParametersHandlerEE 0
.EE0 1'
HandleNullParametersServiceEE1 L
(EEL M
resultToReturnEEM [
)EE[ \
;EE\ ]
}FF 
GenericClassServerGG "
<GG" #
PlayerGG# )
>GG) *#
playerConsultedByIdUserGG+ B
=GGC D
DataGGE I
.GGI J

DataAccessGGJ T
.GGT U$
UserManagerDataOperationGGU m
.GGm n
GetPlayerByIdUserGGn 
(	GG Ä
idUser
GGÄ Ü
)
GGÜ á
;
GGá à
resultToReturnHH 
.HH 
ObjectSavedHH *
=HH+ ,
UserInterpreterHH- <
.HH< =(
FromPlayerEntityToPlayerPojoHH= Y
(HHY Z#
playerConsultedByIdUserHHZ q
.HHq r
ObjectSavedHHr }
)HH} ~
;HH~ 
resultToReturnII 
.II 
	CodeEventII (
=II) *#
playerConsultedByIdUserII+ B
.IIB C
	CodeEventIIC L
;IIL M
}JJ 
catchKK 
(KK /
#CommunicationObjectFaultedExceptionKK 6
exKK7 9
)KK9 :
{LL 
resultToReturnMM 
.MM 
	CodeEventMM (
=MM) *
ExceptionDictionaryMM+ >
.MM> ?
UNSUCCESFULL_EVENTMM? Q
;MMQ R 
ChannelAdministratorNN $
.NN$ %$
HandleCommunicationIssueNN% =
(NN= >
idUserNN> D
,NND E 
ChannelAdministratorNNF Z
.NNZ [+
GENERIC_COMMUNICATION_EXCEPTIONNN[ z
)NNz {
;NN{ |
ExceptionHandlerOO  
.OO  !
LogExceptionOO! -
(OO- .
exOO. 0
,OO0 1
ExceptionDictionaryOO2 E
.OOE F
FATAL_EXCEPTIONOOF U
)OOU V
;OOV W
}PP 
catchQQ 
(QQ 
TimeoutExceptionQQ #
exQQ$ &
)QQ& '
{RR 
resultToReturnSS 
.SS 
	CodeEventSS (
=SS) *
ExceptionDictionarySS+ >
.SS> ?
UNSUCCESFULL_EVENTSS? Q
;SSQ R 
ChannelAdministratorTT $
.TT$ %$
HandleCommunicationIssueTT% =
(TT= >
idUserTT> D
,TTD E 
ChannelAdministratorTTF Z
.TTZ [+
GENERIC_COMMUNICATION_EXCEPTIONTT[ z
)TTz {
;TT{ |
ExceptionHandlerUU  
.UU  !
LogExceptionUU! -
(UU- .
exUU. 0
,UU0 1
ExceptionDictionaryUU2 E
.UUE F
FATAL_EXCEPTIONUUF U
)UUU V
;UUV W
}VV 
catchWW 
(WW "
CommunicationExceptionWW )
exWW* ,
)WW, -
{XX 
resultToReturnYY 
.YY 
	CodeEventYY (
=YY) *
ExceptionDictionaryYY+ >
.YY> ?
UNSUCCESFULL_EVENTYY? Q
;YYQ R 
ChannelAdministratorZZ $
.ZZ$ %$
HandleCommunicationIssueZZ% =
(ZZ= >
idUserZZ> D
,ZZD E 
ChannelAdministratorZZF Z
.ZZZ [+
GENERIC_COMMUNICATION_EXCEPTIONZZ[ z
)ZZz {
;ZZ{ |
ExceptionHandler[[  
.[[  !
LogException[[! -
([[- .
ex[[. 0
,[[0 1
ExceptionDictionary[[2 E
.[[E F
FATAL_EXCEPTION[[F U
)[[U V
;[[V W
}\\ 
catch]] 
(]] %
InvalidOperationException]] ,
ex]]- /
)]]/ 0
{^^ 
resultToReturn__ 
.__ 
	CodeEvent__ (
=__) *
ExceptionDictionary__+ >
.__> ?
UNSUCCESFULL_EVENT__? Q
;__Q R 
ChannelAdministrator`` $
.``$ %$
HandleCommunicationIssue``% =
(``= >
idUser``> D
,``D E 
ChannelAdministrator``F Z
.``Z [+
GENERIC_COMMUNICATION_EXCEPTION``[ z
)``z {
;``{ |
ExceptionHandleraa  
.aa  !
LogExceptionaa! -
(aa- .
exaa. 0
,aa0 1
ExceptionDictionaryaa2 E
.aaE F
FATAL_EXCEPTIONaaF U
)aaU V
;aaV W
}bb 
returncc 
resultToReturncc !
;cc! "
}dd 	
publicff 
GenericClassff 
<ff 
UserPojoff $
>ff$ %
ConsultUserByIdff& 5
(ff5 6
intff6 9
idUserff: @
)ff@ A
{gg 	
GenericClasshh 
<hh 
UserPojohh !
>hh! "
resultToReturnhh# 1
=hh2 3
newhh4 7
GenericClasshh8 D
<hhD E
UserPojohhE M
>hhM N
(hhN O
)hhO P
;hhP Q
tryii 
{jj 
ifkk 
(kk 
idUserkk 
==kk 
NULL_INT_VALUEkk ,
)kk, -
{ll 
returnmm !
NullParametersHandlermm 0
.mm0 1'
HandleNullParametersServicemm1 L
(mmL M
resultToReturnmmM [
)mm[ \
;mm\ ]
}nn 
GenericClassServeroo "
<oo" #
Useroo# '
>oo' (!
userConsultedByIdUseroo) >
=oo? @
DataooA E
.ooE F

DataAccessooF P
.ooP Q$
UserManagerDataOperationooQ i
.ooi j
GetUserByIdooj u
(oou v
idUseroov |
)oo| }
;oo} ~
resultToReturnpp 
.pp 
ObjectSavedpp *
=pp+ ,
UserInterpreterpp- <
.pp< =$
FromUserEntityToUserPojopp= U
(ppU V!
userConsultedByIdUserppV k
.ppk l
ObjectSavedppl w
)ppw x
;ppx y
resultToReturnqq 
.qq 
	CodeEventqq (
=qq) *!
userConsultedByIdUserqq+ @
.qq@ A
	CodeEventqqA J
;qqJ K
}rr 
catchss 
(ss /
#CommunicationObjectFaultedExceptionss 6
exss7 9
)ss9 :
{tt 
resultToReturnuu 
.uu 
	CodeEventuu (
=uu) *
ExceptionDictionaryuu+ >
.uu> ?
UNSUCCESFULL_EVENTuu? Q
;uuQ R 
ChannelAdministratorvv $
.vv$ %$
HandleCommunicationIssuevv% =
(vv= >
idUservv> D
,vvD E 
ChannelAdministratorvvF Z
.vvZ [+
GENERIC_COMMUNICATION_EXCEPTIONvv[ z
)vvz {
;vv{ |
ExceptionHandlerww  
.ww  !
LogExceptionww! -
(ww- .
exww. 0
,ww0 1
ExceptionDictionaryww2 E
.wwE F
FATAL_EXCEPTIONwwF U
)wwU V
;wwV W
}xx 
catchyy 
(yy 
TimeoutExceptionyy #
exyy$ &
)yy& '
{zz 
resultToReturn{{ 
.{{ 
	CodeEvent{{ (
={{) *
ExceptionDictionary{{+ >
.{{> ?
UNSUCCESFULL_EVENT{{? Q
;{{Q R 
ChannelAdministrator|| $
.||$ %$
HandleCommunicationIssue||% =
(||= >
idUser||> D
,||D E 
ChannelAdministrator||F Z
.||Z [+
GENERIC_COMMUNICATION_EXCEPTION||[ z
)||z {
;||{ |
ExceptionHandler}}  
.}}  !
LogException}}! -
(}}- .
ex}}. 0
,}}0 1
ExceptionDictionary}}2 E
.}}E F
FATAL_EXCEPTION}}F U
)}}U V
;}}V W
}~~ 
catch 
( "
CommunicationException )
ex* ,
), -
{
ÄÄ 
resultToReturn
ÅÅ 
.
ÅÅ 
	CodeEvent
ÅÅ (
=
ÅÅ) *!
ExceptionDictionary
ÅÅ+ >
.
ÅÅ> ? 
UNSUCCESFULL_EVENT
ÅÅ? Q
;
ÅÅQ R"
ChannelAdministrator
ÇÇ $
.
ÇÇ$ %&
HandleCommunicationIssue
ÇÇ% =
(
ÇÇ= >
idUser
ÇÇ> D
,
ÇÇD E"
ChannelAdministrator
ÇÇF Z
.
ÇÇZ [-
GENERIC_COMMUNICATION_EXCEPTION
ÇÇ[ z
)
ÇÇz {
;
ÇÇ{ |
ExceptionHandler
ÉÉ  
.
ÉÉ  !
LogException
ÉÉ! -
(
ÉÉ- .
ex
ÉÉ. 0
,
ÉÉ0 1!
ExceptionDictionary
ÉÉ2 E
.
ÉÉE F
FATAL_EXCEPTION
ÉÉF U
)
ÉÉU V
;
ÉÉV W
}
ÑÑ 
catch
ÖÖ 
(
ÖÖ '
InvalidOperationException
ÖÖ ,
ex
ÖÖ- /
)
ÖÖ/ 0
{
ÜÜ 
resultToReturn
áá 
.
áá 
	CodeEvent
áá (
=
áá) *!
ExceptionDictionary
áá+ >
.
áá> ? 
UNSUCCESFULL_EVENT
áá? Q
;
ááQ R"
ChannelAdministrator
àà $
.
àà$ %&
HandleCommunicationIssue
àà% =
(
àà= >
idUser
àà> D
,
ààD E"
ChannelAdministrator
ààF Z
.
ààZ [-
GENERIC_COMMUNICATION_EXCEPTION
àà[ z
)
ààz {
;
àà{ |
ExceptionHandler
ââ  
.
ââ  !
LogException
ââ! -
(
ââ- .
ex
ââ. 0
,
ââ0 1!
ExceptionDictionary
ââ2 E
.
ââE F
FATAL_EXCEPTION
ââF U
)
ââU V
;
ââV W
}
ää 
return
ãã 
resultToReturn
ãã !
;
ãã! "
}
åå 	
public
éé 
GenericClass
éé 
<
éé 
UserPojo
éé $
>
éé$ %#
ConsultUserByIdPlayer
éé& ;
(
éé; <
int
éé< ?
idPlayer
éé@ H
)
ééH I
{
èè 	
GenericClass
êê 
<
êê 
UserPojo
êê !
>
êê! "
resultToReturn
êê# 1
=
êê2 3
new
êê4 7
GenericClass
êê8 D
<
êêD E
UserPojo
êêE M
>
êêM N
(
êêN O
)
êêO P
;
êêP Q
try
ëë 
{
íí 
if
ìì 
(
ìì 
idPlayer
ìì 
==
ìì 
NULL_INT_VALUE
ìì  .
)
ìì. /
{
îî 
return
ïï #
NullParametersHandler
ïï 0
.
ïï0 1)
HandleNullParametersService
ïï1 L
(
ïïL M
resultToReturn
ïïM [
)
ïï[ \
;
ïï\ ]
}
ññ 

PlayerPojo
óó 
player
óó !
=
óó" #
ConsultPlayerById
óó$ 5
(
óó5 6
idPlayer
óó6 >
)
óó> ?
.
óó? @
ObjectSaved
óó@ K
;
óóK L 
GenericClassServer
òò "
<
òò" #
User
òò# '
>
òò' (%
userConsultedByIdPlayer
òò) @
=
òòA B
Data
òòC G
.
òòG H

DataAccess
òòH R
.
òòR S&
UserManagerDataOperation
òòS k
.
òòk l
GetUserById
òòl w
(
òòw x
player
òòx ~
.
òò~ 
IdUseròò Ö
)òòÖ Ü
;òòÜ á
resultToReturn
ôô 
.
ôô 
ObjectSaved
ôô *
=
ôô+ ,
UserInterpreter
ôô- <
.
ôô< =&
FromUserEntityToUserPojo
ôô= U
(
ôôU V%
userConsultedByIdPlayer
ôôV m
.
ôôm n
ObjectSaved
ôôn y
)
ôôy z
;
ôôz {
resultToReturn
öö 
.
öö 
	CodeEvent
öö (
=
öö) *%
userConsultedByIdPlayer
öö+ B
.
ööB C
	CodeEvent
ööC L
;
ööL M
}
úú 
catch
ùù 
(
ùù 1
#CommunicationObjectFaultedException
ùù 6
ex
ùù7 9
)
ùù9 :
{
ûû 
resultToReturn
üü 
.
üü 
	CodeEvent
üü (
=
üü) *!
ExceptionDictionary
üü+ >
.
üü> ? 
UNSUCCESFULL_EVENT
üü? Q
;
üüQ R"
ChannelAdministrator
†† $
.
††$ %&
HandleCommunicationIssue
††% =
(
††= >
resultToReturn
††> L
.
††L M
ObjectSaved
††M X
.
††X Y
IdUser
††Y _
,
††_ `"
ChannelAdministrator
††a u
.
††u v.
GENERIC_COMMUNICATION_EXCEPTION††v ï
)††ï ñ
;††ñ ó
ExceptionHandler
°°  
.
°°  !
LogException
°°! -
(
°°- .
ex
°°. 0
,
°°0 1!
ExceptionDictionary
°°2 E
.
°°E F
FATAL_EXCEPTION
°°F U
)
°°U V
;
°°V W
}
¢¢ 
catch
££ 
(
££ 
TimeoutException
££ #
ex
££$ &
)
££& '
{
§§ 
resultToReturn
•• 
.
•• 
	CodeEvent
•• (
=
••) *!
ExceptionDictionary
••+ >
.
••> ? 
UNSUCCESFULL_EVENT
••? Q
;
••Q R"
ChannelAdministrator
¶¶ $
.
¶¶$ %&
HandleCommunicationIssue
¶¶% =
(
¶¶= >
resultToReturn
¶¶> L
.
¶¶L M
ObjectSaved
¶¶M X
.
¶¶X Y
IdUser
¶¶Y _
,
¶¶_ `"
ChannelAdministrator
¶¶a u
.
¶¶u v.
GENERIC_COMMUNICATION_EXCEPTION¶¶v ï
)¶¶ï ñ
;¶¶ñ ó
ExceptionHandler
ßß  
.
ßß  !
LogException
ßß! -
(
ßß- .
ex
ßß. 0
,
ßß0 1!
ExceptionDictionary
ßß2 E
.
ßßE F
FATAL_EXCEPTION
ßßF U
)
ßßU V
;
ßßV W
}
®® 
catch
©© 
(
©© $
CommunicationException
©© )
ex
©©* ,
)
©©, -
{
™™ 
resultToReturn
´´ 
.
´´ 
	CodeEvent
´´ (
=
´´) *!
ExceptionDictionary
´´+ >
.
´´> ? 
UNSUCCESFULL_EVENT
´´? Q
;
´´Q R"
ChannelAdministrator
¨¨ $
.
¨¨$ %&
HandleCommunicationIssue
¨¨% =
(
¨¨= >
resultToReturn
¨¨> L
.
¨¨L M
ObjectSaved
¨¨M X
.
¨¨X Y
IdUser
¨¨Y _
,
¨¨_ `"
ChannelAdministrator
¨¨a u
.
¨¨u v.
GENERIC_COMMUNICATION_EXCEPTION¨¨v ï
)¨¨ï ñ
;¨¨ñ ó
ExceptionHandler
≠≠  
.
≠≠  !
LogException
≠≠! -
(
≠≠- .
ex
≠≠. 0
,
≠≠0 1!
ExceptionDictionary
≠≠2 E
.
≠≠E F
FATAL_EXCEPTION
≠≠F U
)
≠≠U V
;
≠≠V W
}
ÆÆ 
catch
ØØ 
(
ØØ '
InvalidOperationException
ØØ ,
ex
ØØ- /
)
ØØ/ 0
{
∞∞ 
resultToReturn
±± 
.
±± 
	CodeEvent
±± (
=
±±) *!
ExceptionDictionary
±±+ >
.
±±> ? 
UNSUCCESFULL_EVENT
±±? Q
;
±±Q R"
ChannelAdministrator
≤≤ $
.
≤≤$ %&
HandleCommunicationIssue
≤≤% =
(
≤≤= >
resultToReturn
≤≤> L
.
≤≤L M
ObjectSaved
≤≤M X
.
≤≤X Y
IdUser
≤≤Y _
,
≤≤_ `"
ChannelAdministrator
≤≤a u
.
≤≤u v.
GENERIC_COMMUNICATION_EXCEPTION≤≤v ï
)≤≤ï ñ
;≤≤ñ ó
ExceptionHandler
≥≥  
.
≥≥  !
LogException
≥≥! -
(
≥≥- .
ex
≥≥. 0
,
≥≥0 1!
ExceptionDictionary
≥≥2 E
.
≥≥E F
FATAL_EXCEPTION
≥≥F U
)
≥≥U V
;
≥≥V W
}
¥¥ 
return
µµ 
resultToReturn
µµ !
;
µµ! "
}
∂∂ 	
public
ππ 
GenericClass
ππ 
<
ππ 
UserPojo
ππ $
>
ππ$ %#
ConsultUserByUserName
ππ& ;
(
ππ; <
string
ππ< B
userName
ππC K
)
ππK L
{
∫∫ 	
GenericClass
ªª 
<
ªª 
UserPojo
ªª !
>
ªª! "
resultToReturn
ªª# 1
=
ªª2 3
new
ªª4 7
GenericClass
ªª8 D
<
ªªD E
UserPojo
ªªE M
>
ªªM N
(
ªªN O
)
ªªO P
;
ªªP Q
try
ºº 
{
ΩΩ 
if
ææ 
(
ææ 
string
ææ 
.
ææ 
IsNullOrEmpty
ææ (
(
ææ( )
userName
ææ) 1
)
ææ1 2
)
ææ2 3
{
øø 
return
¿¿ #
NullParametersHandler
¿¿ 0
.
¿¿0 1)
HandleNullParametersService
¿¿1 L
(
¿¿L M
resultToReturn
¿¿M [
)
¿¿[ \
;
¿¿\ ]
}
¡¡  
GenericClassServer
¬¬ "
<
¬¬" #
User
¬¬# '
>
¬¬' (%
userConsultedByUserName
¬¬) @
=
¬¬A B
Data
¬¬C G
.
¬¬G H

DataAccess
¬¬H R
.
¬¬R S&
UserManagerDataOperation
¬¬S k
.
¬¬k l
GetUserByUserName
¬¬l }
(
¬¬} ~
userName¬¬~ Ü
)¬¬Ü á
;¬¬á à
resultToReturn
√√ 
.
√√ 
ObjectSaved
√√ *
=
√√+ ,
UserInterpreter
√√- <
.
√√< =&
FromUserEntityToUserPojo
√√= U
(
√√U V%
userConsultedByUserName
√√V m
.
√√m n
ObjectSaved
√√n y
)
√√y z
;
√√z {
resultToReturn
ƒƒ 
.
ƒƒ 
	CodeEvent
ƒƒ (
=
ƒƒ) *%
userConsultedByUserName
ƒƒ+ B
.
ƒƒB C
	CodeEvent
ƒƒC L
;
ƒƒL M
}
≈≈ 
catch
∆∆ 
(
∆∆ 1
#CommunicationObjectFaultedException
∆∆ 6
ex
∆∆7 9
)
∆∆9 :
{
«« 
resultToReturn
»» 
.
»» 
	CodeEvent
»» (
=
»») *!
ExceptionDictionary
»»+ >
.
»»> ? 
UNSUCCESFULL_EVENT
»»? Q
;
»»Q R"
ChannelAdministrator
…… $
.
……$ %&
HandleCommunicationIssue
……% =
(
……= >
resultToReturn
……> L
.
……L M
ObjectSaved
……M X
.
……X Y
IdUser
……Y _
,
……_ `"
ChannelAdministrator
……a u
.
……u v.
GENERIC_COMMUNICATION_EXCEPTION……v ï
)……ï ñ
;……ñ ó
ExceptionHandler
    
.
    !
LogException
  ! -
(
  - .
ex
  . 0
,
  0 1!
ExceptionDictionary
  2 E
.
  E F
FATAL_EXCEPTION
  F U
)
  U V
;
  V W
}
ÀÀ 
catch
ÃÃ 
(
ÃÃ 
TimeoutException
ÃÃ #
ex
ÃÃ$ &
)
ÃÃ& '
{
ÕÕ 
resultToReturn
ŒŒ 
.
ŒŒ 
	CodeEvent
ŒŒ (
=
ŒŒ) *!
ExceptionDictionary
ŒŒ+ >
.
ŒŒ> ? 
UNSUCCESFULL_EVENT
ŒŒ? Q
;
ŒŒQ R"
ChannelAdministrator
œœ $
.
œœ$ %&
HandleCommunicationIssue
œœ% =
(
œœ= >
resultToReturn
œœ> L
.
œœL M
ObjectSaved
œœM X
.
œœX Y
IdUser
œœY _
,
œœ_ `"
ChannelAdministrator
œœa u
.
œœu v.
GENERIC_COMMUNICATION_EXCEPTIONœœv ï
)œœï ñ
;œœñ ó
ExceptionHandler
––  
.
––  !
LogException
––! -
(
––- .
ex
––. 0
,
––0 1!
ExceptionDictionary
––2 E
.
––E F
FATAL_EXCEPTION
––F U
)
––U V
;
––V W
}
—— 
catch
““ 
(
““ $
CommunicationException
““ )
ex
““* ,
)
““, -
{
”” 
resultToReturn
‘‘ 
.
‘‘ 
	CodeEvent
‘‘ (
=
‘‘) *!
ExceptionDictionary
‘‘+ >
.
‘‘> ? 
UNSUCCESFULL_EVENT
‘‘? Q
;
‘‘Q R"
ChannelAdministrator
’’ $
.
’’$ %&
HandleCommunicationIssue
’’% =
(
’’= >
resultToReturn
’’> L
.
’’L M
ObjectSaved
’’M X
.
’’X Y
IdUser
’’Y _
,
’’_ `"
ChannelAdministrator
’’a u
.
’’u v.
GENERIC_COMMUNICATION_EXCEPTION’’v ï
)’’ï ñ
;’’ñ ó
ExceptionHandler
÷÷  
.
÷÷  !
LogException
÷÷! -
(
÷÷- .
ex
÷÷. 0
,
÷÷0 1!
ExceptionDictionary
÷÷2 E
.
÷÷E F
FATAL_EXCEPTION
÷÷F U
)
÷÷U V
;
÷÷V W
}
◊◊ 
catch
ÿÿ 
(
ÿÿ '
InvalidOperationException
ÿÿ ,
ex
ÿÿ- /
)
ÿÿ/ 0
{
ŸŸ 
resultToReturn
⁄⁄ 
.
⁄⁄ 
	CodeEvent
⁄⁄ (
=
⁄⁄) *!
ExceptionDictionary
⁄⁄+ >
.
⁄⁄> ? 
UNSUCCESFULL_EVENT
⁄⁄? Q
;
⁄⁄Q R"
ChannelAdministrator
€€ $
.
€€$ %&
HandleCommunicationIssue
€€% =
(
€€= >
resultToReturn
€€> L
.
€€L M
ObjectSaved
€€M X
.
€€X Y
IdUser
€€Y _
,
€€_ `"
ChannelAdministrator
€€a u
.
€€u v.
GENERIC_COMMUNICATION_EXCEPTION€€v ï
)€€ï ñ
;€€ñ ó
ExceptionHandler
‹‹  
.
‹‹  !
LogException
‹‹! -
(
‹‹- .
ex
‹‹. 0
,
‹‹0 1!
ExceptionDictionary
‹‹2 E
.
‹‹E F
FATAL_EXCEPTION
‹‹F U
)
‹‹U V
;
‹‹V W
}
›› 
return
ﬁﬁ 
resultToReturn
ﬁﬁ !
;
ﬁﬁ! "
}
ﬂﬂ 	
public
·· 
GenericClass
·· 
<
·· 
List
··  
<
··  !

PlayerInfo
··! +
>
··+ ,
>
··, -#
GetPlayersInformation
··. C
(
··C D
int
··D G
idUserConsulting
··H X
)
··X Y
{
‚‚ 	
GenericClass
„„ 
<
„„ 
List
„„ 
<
„„ 

PlayerInfo
„„ (
>
„„( )
>
„„) *
resultToReturn
„„+ 9
=
„„: ;
new
„„< ?
GenericClass
„„@ L
<
„„L M
List
„„M Q
<
„„Q R

PlayerInfo
„„R \
>
„„\ ]
>
„„] ^
(
„„^ _
)
„„_ `
;
„„` a
try
‰‰ 
{
ÂÂ  
GenericClassServer
ÊÊ "
<
ÊÊ" #
List
ÊÊ# '
<
ÊÊ' (

PlayerInfo
ÊÊ( 2
>
ÊÊ2 3
>
ÊÊ3 4
bestPlayers
ÊÊ5 @
=
ÊÊA B
Data
ÊÊC G
.
ÊÊG H

DataAccess
ÊÊH R
.
ÊÊR S&
UserManagerDataOperation
ÊÊS k
.
ÊÊk l#
GetBestPlayersPointsÊÊl Ä
(ÊÊÄ Å
)ÊÊÅ Ç
;ÊÊÇ É
resultToReturn
ÁÁ 
.
ÁÁ 
ObjectSaved
ÁÁ *
=
ÁÁ+ ,
bestPlayers
ÁÁ- 8
.
ÁÁ8 9
ObjectSaved
ÁÁ9 D
;
ÁÁD E
resultToReturn
ËË 
.
ËË 
	CodeEvent
ËË (
=
ËË) *
bestPlayers
ËË+ 6
.
ËË6 7
	CodeEvent
ËË7 @
;
ËË@ A
}
ÈÈ 
catch
ÍÍ 
(
ÍÍ 1
#CommunicationObjectFaultedException
ÍÍ 6
ex
ÍÍ7 9
)
ÍÍ9 :
{
ÎÎ 
resultToReturn
ÏÏ 
.
ÏÏ 
	CodeEvent
ÏÏ (
=
ÏÏ) *!
ExceptionDictionary
ÏÏ+ >
.
ÏÏ> ? 
UNSUCCESFULL_EVENT
ÏÏ? Q
;
ÏÏQ R"
ChannelAdministrator
ÌÌ $
.
ÌÌ$ %&
HandleCommunicationIssue
ÌÌ% =
(
ÌÌ= >
idUserConsulting
ÌÌ> N
,
ÌÌN O"
ChannelAdministrator
ÌÌP d
.
ÌÌd e.
GENERIC_COMMUNICATION_EXCEPTIONÌÌe Ñ
)ÌÌÑ Ö
;ÌÌÖ Ü
ExceptionHandler
ÓÓ  
.
ÓÓ  !
LogException
ÓÓ! -
(
ÓÓ- .
ex
ÓÓ. 0
,
ÓÓ0 1!
ExceptionDictionary
ÓÓ2 E
.
ÓÓE F
FATAL_EXCEPTION
ÓÓF U
)
ÓÓU V
;
ÓÓV W
}
ÔÔ 
catch
 
(
 
TimeoutException
 #
ex
$ &
)
& '
{
ÒÒ 
resultToReturn
ÚÚ 
.
ÚÚ 
	CodeEvent
ÚÚ (
=
ÚÚ) *!
ExceptionDictionary
ÚÚ+ >
.
ÚÚ> ? 
UNSUCCESFULL_EVENT
ÚÚ? Q
;
ÚÚQ R"
ChannelAdministrator
ÛÛ $
.
ÛÛ$ %&
HandleCommunicationIssue
ÛÛ% =
(
ÛÛ= >
idUserConsulting
ÛÛ> N
,
ÛÛN O"
ChannelAdministrator
ÛÛP d
.
ÛÛd e.
GENERIC_COMMUNICATION_EXCEPTIONÛÛe Ñ
)ÛÛÑ Ö
;ÛÛÖ Ü
ExceptionHandler
ÙÙ  
.
ÙÙ  !
LogException
ÙÙ! -
(
ÙÙ- .
ex
ÙÙ. 0
,
ÙÙ0 1!
ExceptionDictionary
ÙÙ2 E
.
ÙÙE F
FATAL_EXCEPTION
ÙÙF U
)
ÙÙU V
;
ÙÙV W
}
ıı 
catch
ˆˆ 
(
ˆˆ $
CommunicationException
ˆˆ )
ex
ˆˆ* ,
)
ˆˆ, -
{
˜˜ 
resultToReturn
¯¯ 
.
¯¯ 
	CodeEvent
¯¯ (
=
¯¯) *!
ExceptionDictionary
¯¯+ >
.
¯¯> ? 
UNSUCCESFULL_EVENT
¯¯? Q
;
¯¯Q R"
ChannelAdministrator
˘˘ $
.
˘˘$ %&
HandleCommunicationIssue
˘˘% =
(
˘˘= >
idUserConsulting
˘˘> N
,
˘˘N O"
ChannelAdministrator
˘˘P d
.
˘˘d e.
GENERIC_COMMUNICATION_EXCEPTION˘˘e Ñ
)˘˘Ñ Ö
;˘˘Ö Ü
ExceptionHandler
˙˙  
.
˙˙  !
LogException
˙˙! -
(
˙˙- .
ex
˙˙. 0
,
˙˙0 1!
ExceptionDictionary
˙˙2 E
.
˙˙E F
FATAL_EXCEPTION
˙˙F U
)
˙˙U V
;
˙˙V W
}
˚˚ 
catch
¸¸ 
(
¸¸ '
InvalidOperationException
¸¸ ,
ex
¸¸- /
)
¸¸/ 0
{
˝˝ 
resultToReturn
˛˛ 
.
˛˛ 
	CodeEvent
˛˛ (
=
˛˛) *!
ExceptionDictionary
˛˛+ >
.
˛˛> ? 
UNSUCCESFULL_EVENT
˛˛? Q
;
˛˛Q R"
ChannelAdministrator
ˇˇ $
.
ˇˇ$ %&
HandleCommunicationIssue
ˇˇ% =
(
ˇˇ= >
idUserConsulting
ˇˇ> N
,
ˇˇN O"
ChannelAdministrator
ˇˇP d
.
ˇˇd e.
GENERIC_COMMUNICATION_EXCEPTIONˇˇe Ñ
)ˇˇÑ Ö
;ˇˇÖ Ü
ExceptionHandler
ÄÄ  
.
ÄÄ  !
LogException
ÄÄ! -
(
ÄÄ- .
ex
ÄÄ. 0
,
ÄÄ0 1!
ExceptionDictionary
ÄÄ2 E
.
ÄÄE F
FATAL_EXCEPTION
ÄÄF U
)
ÄÄU V
;
ÄÄV W
}
ÅÅ 
return
ÇÇ 
resultToReturn
ÇÇ !
;
ÇÇ! "
}
ÉÉ 	
}
ÖÖ 
}ÜÜ ¶√
üC:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameServer\JeopardyGame.Service\ServiceImplementation\EmailSenderManagerImplementation.cs
	namespace 	
JeopardyGame
 
. 
Service 
. !
ServiceImplementation 4
{ 
internal 
class ,
 EmailSenderManagerImplementation 3
:4 5
IEmailSenderManager6 I
{ 
public 
GenericClass 
< 
int 
>  0
$SentEmailConfirmationToCreateAccount! E
(E F
UserPojoF N
userO S
,S T
StringU [
subject\ c
,c d
Stringe k
bodyMessagel w
)w x
{ 	
GenericClass 
< 
int 
> 
resultToReturn ,
=- .
new/ 2
GenericClass3 ?
<? @
int@ C
>C D
(D E
)E F
;F G
try 
{ 
if 
( 
string 
. 
IsNullOrEmpty (
(( )
user) -
.- .
EmailAddress. :
): ;
||< >
string? E
.E F
IsNullOrEmptyF S
(S T
subjectT [
)[ \
||] _
string` f
.f g
IsNullOrEmptyg t
(t u
bodyMessage	u Ä
)
Ä Å
)
Å Ç
{ 
return !
NullParametersHandler 0
.0 1'
HandleNullParametersService1 L
(L M
resultToReturnM [
)[ \
;\ ]
} 
string   
code   
=   '
EmailConfirmationDictionary   9
.  9 :
GetUserToVerifyList  : M
(  M N
)  N O
.  O P
FirstOrDefault  P ^
(  ^ _
entry  _ d
=>  e g
entry  h m
.  m n
Value  n s
.  s t
UserName  t |
.  | }
Equals	  } É
(
  É Ñ
user
  Ñ à
.
  à â
UserName
  â ë
)
  ë í
)
  í ì
.
  ì î
Key
  î ó
;
  ó ò
int!! 
	emailSend!! 
=!! 
ExceptionDictionary!!  3
.!!3 4
UNSUCCESFULL_EVENT!!4 F
;!!F G
if"" 
("" 
!"" 
string"" 
."" 
IsNullOrEmpty"" )
("") *
code""* .
)"". /
)""/ 0
{## 
	emailSend$$ 
=$$ 
EmailSender$$  +
.$$+ ,
	SentEmail$$, 5
($$5 6
user$$6 :
.$$: ;
EmailAddress$$; G
,$$G H
subject$$I P
,$$P Q
code$$R V
+$$V W
$str$$X [
+$$[ \
bodyMessage$$\ g
)$$g h
;$$h i
if%% 
(%% 
	emailSend%% !
==%%" $
ExceptionDictionary%%% 8
.%%8 9
SUCCESFULL_EVENT%%9 I
)%%I J
{&& 
resultToReturn'' &
.''& '
	CodeEvent''' 0
=''1 2
ExceptionDictionary''3 F
.''F G
SUCCESFULL_EVENT''G W
;''W X
resultToReturn(( &
.((& '
ObjectSaved((' 2
=((3 4
	emailSend((5 >
;((> ?
})) 
else** 
{++ 
resultToReturn,, &
.,,& '
	CodeEvent,,' 0
=,,1 2
ExceptionDictionary,,3 F
.,,F G
UNSUCCESFULL_EVENT,,G Y
;,,Y Z
resultToReturn-- &
.--& '
ObjectSaved--' 2
=--3 4
	emailSend--5 >
;--> ?
}.. 
}// 
else00 
{11 
resultToReturn22 "
.22" #
	CodeEvent22# ,
=22- .
ExceptionDictionary22/ B
.22B C
UNSUCCESFULL_EVENT22C U
;22U V
resultToReturn33 "
.33" #
ObjectSaved33# .
=33/ 0
	emailSend331 :
;33: ;
}44 
}55 
catch66 
(66 /
#CommunicationObjectFaultedException66 6
ex667 9
)669 :
{77 
resultToReturn88 
.88 
	CodeEvent88 (
=88) *
ExceptionDictionary88+ >
.88> ?
UNSUCCESFULL_EVENT88? Q
;88Q R 
ChannelAdministrator99 $
.99$ %$
HandleCommunicationIssue99% =
(99= >
user99> B
.99B C
IdUser99C I
,99I J 
ChannelAdministrator99K _
.99_ `+
GENERIC_COMMUNICATION_EXCEPTION99` 
)	99 Ä
;
99Ä Å
ExceptionHandler::  
.::  !
LogException::! -
(::- .
ex::. 0
,::0 1
ExceptionDictionary::2 E
.::E F
FATAL_EXCEPTION::F U
)::U V
;::V W
};; 
catch<< 
(<< 
TimeoutException<< #
ex<<$ &
)<<& '
{== 
resultToReturn>> 
.>> 
	CodeEvent>> (
=>>) *
ExceptionDictionary>>+ >
.>>> ?
UNSUCCESFULL_EVENT>>? Q
;>>Q R 
ChannelAdministrator?? $
.??$ %$
HandleCommunicationIssue??% =
(??= >
user??> B
.??B C
IdUser??C I
,??I J 
ChannelAdministrator??K _
.??_ `+
GENERIC_COMMUNICATION_EXCEPTION??` 
)	?? Ä
;
??Ä Å
ExceptionHandler@@  
.@@  !
LogException@@! -
(@@- .
ex@@. 0
,@@0 1
ExceptionDictionary@@2 E
.@@E F
FATAL_EXCEPTION@@F U
)@@U V
;@@V W
}AA 
catchBB 
(BB "
CommunicationExceptionBB )
exBB* ,
)BB, -
{CC 
resultToReturnDD 
.DD 
	CodeEventDD (
=DD) *
ExceptionDictionaryDD+ >
.DD> ?
UNSUCCESFULL_EVENTDD? Q
;DDQ R 
ChannelAdministratorEE $
.EE$ %$
HandleCommunicationIssueEE% =
(EE= >
userEE> B
.EEB C
IdUserEEC I
,EEI J 
ChannelAdministratorEEK _
.EE_ `+
GENERIC_COMMUNICATION_EXCEPTIONEE` 
)	EE Ä
;
EEÄ Å
ExceptionHandlerFF  
.FF  !
LogExceptionFF! -
(FF- .
exFF. 0
,FF0 1
ExceptionDictionaryFF2 E
.FFE F
FATAL_EXCEPTIONFFF U
)FFU V
;FFV W
}GG 
catchHH 
(HH %
InvalidOperationExceptionHH ,
exHH- /
)HH/ 0
{II 
resultToReturnJJ 
.JJ 
	CodeEventJJ (
=JJ) *
ExceptionDictionaryJJ+ >
.JJ> ?
UNSUCCESFULL_EVENTJJ? Q
;JJQ R 
ChannelAdministratorKK $
.KK$ %$
HandleCommunicationIssueKK% =
(KK= >
userKK> B
.KKB C
IdUserKKC I
,KKI J 
ChannelAdministratorKKK _
.KK_ `+
GENERIC_COMMUNICATION_EXCEPTIONKK` 
)	KK Ä
;
KKÄ Å
ExceptionHandlerLL  
.LL  !
LogExceptionLL! -
(LL- .
exLL. 0
,LL0 1
ExceptionDictionaryLL2 E
.LLE F
FATAL_EXCEPTIONLLF U
)LLU V
;LLV W
}MM 
returnNN 
resultToReturnNN !
;NN! "
}OO 	
publicQQ 
GenericClassQQ 
<QQ 
intQQ 
>QQ  "
SentEmailForInvitationQQ! 7
(QQ7 8
stringQQ8 >
emailQQ? D
,QQD E
stringQQF L
subjectQQM T
,QQT U
stringQQV \
bodyMessageQQ] h
)QQh i
{RR 	
GenericClassSS 
<SS 
intSS 
>SS 
resultToReturnSS ,
=SS- .
newSS/ 2
GenericClassSS3 ?
<SS? @
intSS@ C
>SSC D
(SSD E
)SSE F
;SSF G
tryUU 
{VV 
ifWW 
(WW 
stringWW 
.WW 
IsNullOrEmptyWW (
(WW( )
emailWW) .
)WW. /
||WW0 2
stringWW3 9
.WW9 :
IsNullOrEmptyWW: G
(WWG H
subjectWWH O
)WWO P
||WWQ S
stringWWT Z
.WWZ [
IsNullOrEmptyWW[ h
(WWh i
bodyMessageWWi t
)WWt u
)WWu v
{XX 
returnYY !
NullParametersHandlerYY 0
.YY0 1'
HandleNullParametersServiceYY1 L
(YYL M
resultToReturnYYM [
)YY[ \
;YY\ ]
}ZZ 
int[[ 
	emailSend[[ 
=[[ 
EmailSender[[  +
.[[+ ,
	SentEmail[[, 5
([[5 6
email[[6 ;
,[[; <
subject[[= D
,[[D E
bodyMessage[[F Q
)[[Q R
;[[R S
if\\ 
(\\ 
	emailSend\\ 
==\\  
ExceptionDictionary\\! 4
.\\4 5
SUCCESFULL_EVENT\\5 E
)\\E F
{]] 
resultToReturn^^ "
.^^" #
	CodeEvent^^# ,
=^^- .
ExceptionDictionary^^/ B
.^^B C
SUCCESFULL_EVENT^^C S
;^^S T
resultToReturn__ "
.__" #
ObjectSaved__# .
=__/ 0
	emailSend__1 :
;__: ;
}`` 
elseaa 
{bb 
resultToReturncc "
.cc" #
	CodeEventcc# ,
=cc- .
ExceptionDictionarycc/ B
.ccB C
UNSUCCESFULL_EVENTccC U
;ccU V
resultToReturndd "
.dd" #
ObjectSaveddd# .
=dd/ 0
	emailSenddd1 :
;dd: ;
}ee 
}ff 
catchgg 
(gg /
#CommunicationObjectFaultedExceptiongg 6
exgg7 9
)gg9 :
{hh 
resultToReturnii 
.ii 
	CodeEventii (
=ii) *
ExceptionDictionaryii+ >
.ii> ?
UNSUCCESFULL_EVENTii? Q
;iiQ R
ExceptionHandlerjj  
.jj  !
LogExceptionjj! -
(jj- .
exjj. 0
,jj0 1
ExceptionDictionaryjj2 E
.jjE F
FATAL_EXCEPTIONjjF U
)jjU V
;jjV W
}kk 
catchll 
(ll 
TimeoutExceptionll #
exll$ &
)ll& '
{mm 
resultToReturnnn 
.nn 
	CodeEventnn (
=nn) *
ExceptionDictionarynn+ >
.nn> ?
UNSUCCESFULL_EVENTnn? Q
;nnQ R
ExceptionHandleroo  
.oo  !
LogExceptionoo! -
(oo- .
exoo. 0
,oo0 1
ExceptionDictionaryoo2 E
.ooE F
FATAL_EXCEPTIONooF U
)ooU V
;ooV W
}pp 
catchqq 
(qq "
CommunicationExceptionqq )
exqq* ,
)qq, -
{rr 
resultToReturnss 
.ss 
	CodeEventss (
=ss) *
ExceptionDictionaryss+ >
.ss> ?
UNSUCCESFULL_EVENTss? Q
;ssQ R
ExceptionHandlertt  
.tt  !
LogExceptiontt! -
(tt- .
extt. 0
,tt0 1
ExceptionDictionarytt2 E
.ttE F
FATAL_EXCEPTIONttF U
)ttU V
;ttV W
}uu 
catchvv 
(vv %
InvalidOperationExceptionvv ,
exvv- /
)vv/ 0
{ww 
resultToReturnxx 
.xx 
	CodeEventxx (
=xx) *
ExceptionDictionaryxx+ >
.xx> ?
UNSUCCESFULL_EVENTxx? Q
;xxQ R
ExceptionHandleryy  
.yy  !
LogExceptionyy! -
(yy- .
exyy. 0
,yy0 1
ExceptionDictionaryyy2 E
.yyE F
FATAL_EXCEPTIONyyF U
)yyU V
;yyV W
}zz 
return{{ 
resultToReturn{{ !
;{{! "
}|| 	
public~~ 
GenericClass~~ 
<~~ 
int~~ 
>~~  #
SentEmailInvitingToGame~~! 8
(~~8 9
UserPojo~~9 A
user~~B F
,~~F G
string~~H N
subject~~O V
,~~V W
string~~X ^
bodyMessage~~_ j
)~~j k
{ 	
GenericClass
ÄÄ 
<
ÄÄ 
int
ÄÄ 
>
ÄÄ 
resultToReturn
ÄÄ ,
=
ÄÄ- .
new
ÄÄ/ 2
GenericClass
ÄÄ3 ?
<
ÄÄ? @
int
ÄÄ@ C
>
ÄÄC D
(
ÄÄD E
)
ÄÄE F
;
ÄÄF G
try
ÇÇ 
{
ÉÉ 
if
ÑÑ 
(
ÑÑ 
string
ÑÑ 
.
ÑÑ 
IsNullOrEmpty
ÑÑ (
(
ÑÑ( )
user
ÑÑ) -
.
ÑÑ- .
EmailAddress
ÑÑ. :
)
ÑÑ: ;
||
ÑÑ< >
string
ÑÑ? E
.
ÑÑE F
IsNullOrEmpty
ÑÑF S
(
ÑÑS T
subject
ÑÑT [
)
ÑÑ[ \
||
ÑÑ] _
string
ÑÑ` f
.
ÑÑf g
IsNullOrEmpty
ÑÑg t
(
ÑÑt u
bodyMessageÑÑu Ä
)ÑÑÄ Å
)ÑÑÅ Ç
{
ÖÖ 
return
ÜÜ #
NullParametersHandler
ÜÜ 0
.
ÜÜ0 1)
HandleNullParametersService
ÜÜ1 L
(
ÜÜL M
resultToReturn
ÜÜM [
)
ÜÜ[ \
;
ÜÜ\ ]
}
áá 
int
àà 
	emailSend
àà 
=
àà 
EmailSender
àà  +
.
àà+ ,
	SentEmail
àà, 5
(
àà5 6
user
àà6 :
.
àà: ;
EmailAddress
àà; G
,
ààG H
subject
ààI P
,
ààP Q
bodyMessage
ààR ]
)
àà] ^
;
àà^ _
if
ââ 
(
ââ 
	emailSend
ââ 
==
ââ  !
ExceptionDictionary
ââ! 4
.
ââ4 5
SUCCESFULL_EVENT
ââ5 E
)
ââE F
{
ää 
resultToReturn
ãã "
.
ãã" #
ObjectSaved
ãã# .
=
ãã/ 0!
ExceptionDictionary
ãã1 D
.
ããD E
SUCCESFULL_EVENT
ããE U
;
ããU V
resultToReturn
åå "
.
åå" #
ObjectSaved
åå# .
=
åå/ 0
	emailSend
åå1 :
;
åå: ;
}
çç 
else
éé 
{
èè 
resultToReturn
êê "
.
êê" #
ObjectSaved
êê# .
=
êê/ 0!
ExceptionDictionary
êê1 D
.
êêD E 
UNSUCCESFULL_EVENT
êêE W
;
êêW X
resultToReturn
ëë "
.
ëë" #
ObjectSaved
ëë# .
=
ëë/ 0
	emailSend
ëë1 :
;
ëë: ;
}
íí 
}
ìì 
catch
îî 
(
îî 1
#CommunicationObjectFaultedException
îî 6
ex
îî7 9
)
îî9 :
{
ïï 
resultToReturn
ññ 
.
ññ 
	CodeEvent
ññ (
=
ññ) *!
ExceptionDictionary
ññ+ >
.
ññ> ? 
UNSUCCESFULL_EVENT
ññ? Q
;
ññQ R"
ChannelAdministrator
óó $
.
óó$ %&
HandleCommunicationIssue
óó% =
(
óó= >
user
óó> B
.
óóB C
IdUser
óóC I
,
óóI J"
ChannelAdministrator
óóK _
.
óó_ `-
GENERIC_COMMUNICATION_EXCEPTION
óó` 
)óó Ä
;óóÄ Å
ExceptionHandler
òò  
.
òò  !
LogException
òò! -
(
òò- .
ex
òò. 0
,
òò0 1!
ExceptionDictionary
òò2 E
.
òòE F
FATAL_EXCEPTION
òòF U
)
òòU V
;
òòV W
}
ôô 
catch
öö 
(
öö 
TimeoutException
öö #
ex
öö$ &
)
öö& '
{
õõ 
resultToReturn
úú 
.
úú 
	CodeEvent
úú (
=
úú) *!
ExceptionDictionary
úú+ >
.
úú> ? 
UNSUCCESFULL_EVENT
úú? Q
;
úúQ R"
ChannelAdministrator
ùù $
.
ùù$ %&
HandleCommunicationIssue
ùù% =
(
ùù= >
user
ùù> B
.
ùùB C
IdUser
ùùC I
,
ùùI J"
ChannelAdministrator
ùùK _
.
ùù_ `-
GENERIC_COMMUNICATION_EXCEPTION
ùù` 
)ùù Ä
;ùùÄ Å
ExceptionHandler
ûû  
.
ûû  !
LogException
ûû! -
(
ûû- .
ex
ûû. 0
,
ûû0 1!
ExceptionDictionary
ûû2 E
.
ûûE F
FATAL_EXCEPTION
ûûF U
)
ûûU V
;
ûûV W
}
üü 
catch
†† 
(
†† $
CommunicationException
†† )
ex
††* ,
)
††, -
{
°° 
resultToReturn
¢¢ 
.
¢¢ 
	CodeEvent
¢¢ (
=
¢¢) *!
ExceptionDictionary
¢¢+ >
.
¢¢> ? 
UNSUCCESFULL_EVENT
¢¢? Q
;
¢¢Q R"
ChannelAdministrator
££ $
.
££$ %&
HandleCommunicationIssue
££% =
(
££= >
user
££> B
.
££B C
IdUser
££C I
,
££I J"
ChannelAdministrator
££K _
.
££_ `-
GENERIC_COMMUNICATION_EXCEPTION
££` 
)££ Ä
;££Ä Å
ExceptionHandler
§§  
.
§§  !
LogException
§§! -
(
§§- .
ex
§§. 0
,
§§0 1!
ExceptionDictionary
§§2 E
.
§§E F
FATAL_EXCEPTION
§§F U
)
§§U V
;
§§V W
}
•• 
catch
¶¶ 
(
¶¶ '
InvalidOperationException
¶¶ ,
ex
¶¶- /
)
¶¶/ 0
{
ßß 
resultToReturn
®® 
.
®® 
	CodeEvent
®® (
=
®®) *!
ExceptionDictionary
®®+ >
.
®®> ? 
UNSUCCESFULL_EVENT
®®? Q
;
®®Q R"
ChannelAdministrator
©© $
.
©©$ %&
HandleCommunicationIssue
©©% =
(
©©= >
user
©©> B
.
©©B C
IdUser
©©C I
,
©©I J"
ChannelAdministrator
©©K _
.
©©_ `-
GENERIC_COMMUNICATION_EXCEPTION
©©` 
)©© Ä
;©©Ä Å
ExceptionHandler
™™  
.
™™  !
LogException
™™! -
(
™™- .
ex
™™. 0
,
™™0 1!
ExceptionDictionary
™™2 E
.
™™E F
FATAL_EXCEPTION
™™F U
)
™™U V
;
™™V W
}
´´ 
return
¨¨ 
resultToReturn
¨¨ !
;
¨¨! "
}
≠≠ 	
public
ØØ 
GenericClass
ØØ 
<
ØØ 
int
ØØ 
>
ØØ  (
SentEmailToRecoverPassword
ØØ! ;
(
ØØ; <
UserPojo
ØØ< D
user
ØØE I
,
ØØI J
String
ØØK Q
subject
ØØR Y
,
ØØY Z
String
ØØ[ a
bodyMessage
ØØb m
)
ØØm n
{
∞∞ 	
GenericClass
±± 
<
±± 
int
±± 
>
±± 
resultToReturn
±± ,
=
±±- .
new
±±/ 2
GenericClass
±±3 ?
<
±±? @
int
±±@ C
>
±±C D
(
±±D E
)
±±E F
;
±±F G
try
≤≤ 
{
≥≥ 
if
¥¥ 
(
¥¥ 
string
¥¥ 
.
¥¥ 
IsNullOrEmpty
¥¥ (
(
¥¥( )
user
¥¥) -
.
¥¥- .
EmailAddress
¥¥. :
)
¥¥: ;
||
¥¥< >
string
¥¥? E
.
¥¥E F
IsNullOrEmpty
¥¥F S
(
¥¥S T
subject
¥¥T [
)
¥¥[ \
||
¥¥] _
string
¥¥` f
.
¥¥f g
IsNullOrEmpty
¥¥g t
(
¥¥t u
bodyMessage¥¥u Ä
)¥¥Ä Å
)¥¥Å Ç
{
µµ 
return
∂∂ #
NullParametersHandler
∂∂ 0
.
∂∂0 1)
HandleNullParametersService
∂∂1 L
(
∂∂L M
resultToReturn
∂∂M [
)
∂∂[ \
;
∂∂\ ]
}
∑∑ 
int
∏∏ 
	emailSend
∏∏ 
=
∏∏ 
EmailSender
∏∏  +
.
∏∏+ ,
	SentEmail
∏∏, 5
(
∏∏5 6
user
∏∏6 :
.
∏∏: ;
EmailAddress
∏∏; G
,
∏∏G H
subject
∏∏I P
,
∏∏P Q
bodyMessage
∏∏R ]
)
∏∏] ^
;
∏∏^ _
if
ππ 
(
ππ 
	emailSend
ππ 
==
ππ  !
ExceptionDictionary
ππ! 4
.
ππ4 5
SUCCESFULL_EVENT
ππ5 E
)
ππE F
{
∫∫ 
resultToReturn
ªª "
.
ªª" #
	CodeEvent
ªª# ,
=
ªª- .!
ExceptionDictionary
ªª/ B
.
ªªB C
SUCCESFULL_EVENT
ªªC S
;
ªªS T
resultToReturn
ºº "
.
ºº" #
ObjectSaved
ºº# .
=
ºº/ 0
	emailSend
ºº1 :
;
ºº: ;
}
ΩΩ 
else
ææ 
{
øø 
resultToReturn
¿¿ "
.
¿¿" #
	CodeEvent
¿¿# ,
=
¿¿- .!
ExceptionDictionary
¿¿/ B
.
¿¿B C 
UNSUCCESFULL_EVENT
¿¿C U
;
¿¿U V
resultToReturn
¡¡ "
.
¡¡" #
ObjectSaved
¡¡# .
=
¡¡/ 0
	emailSend
¡¡1 :
;
¡¡: ;
}
¬¬ 
}
√√ 
catch
ƒƒ 
(
ƒƒ 1
#CommunicationObjectFaultedException
ƒƒ 6
ex
ƒƒ7 9
)
ƒƒ9 :
{
≈≈ 
resultToReturn
∆∆ 
.
∆∆ 
	CodeEvent
∆∆ (
=
∆∆) *!
ExceptionDictionary
∆∆+ >
.
∆∆> ? 
UNSUCCESFULL_EVENT
∆∆? Q
;
∆∆Q R"
ChannelAdministrator
«« $
.
««$ %&
HandleCommunicationIssue
««% =
(
««= >
user
««> B
.
««B C
IdUser
««C I
,
««I J"
ChannelAdministrator
««K _
.
««_ `-
GENERIC_COMMUNICATION_EXCEPTION
««` 
)«« Ä
;««Ä Å
ExceptionHandler
»»  
.
»»  !
LogException
»»! -
(
»»- .
ex
»». 0
,
»»0 1!
ExceptionDictionary
»»2 E
.
»»E F
FATAL_EXCEPTION
»»F U
)
»»U V
;
»»V W
}
…… 
catch
   
(
   
TimeoutException
   #
ex
  $ &
)
  & '
{
ÀÀ 
resultToReturn
ÃÃ 
.
ÃÃ 
	CodeEvent
ÃÃ (
=
ÃÃ) *!
ExceptionDictionary
ÃÃ+ >
.
ÃÃ> ? 
UNSUCCESFULL_EVENT
ÃÃ? Q
;
ÃÃQ R"
ChannelAdministrator
ÕÕ $
.
ÕÕ$ %&
HandleCommunicationIssue
ÕÕ% =
(
ÕÕ= >
user
ÕÕ> B
.
ÕÕB C
IdUser
ÕÕC I
,
ÕÕI J"
ChannelAdministrator
ÕÕK _
.
ÕÕ_ `-
GENERIC_COMMUNICATION_EXCEPTION
ÕÕ` 
)ÕÕ Ä
;ÕÕÄ Å
ExceptionHandler
ŒŒ  
.
ŒŒ  !
LogException
ŒŒ! -
(
ŒŒ- .
ex
ŒŒ. 0
,
ŒŒ0 1!
ExceptionDictionary
ŒŒ2 E
.
ŒŒE F
FATAL_EXCEPTION
ŒŒF U
)
ŒŒU V
;
ŒŒV W
}
œœ 
catch
–– 
(
–– $
CommunicationException
–– )
ex
––* ,
)
––, -
{
—— 
resultToReturn
““ 
.
““ 
	CodeEvent
““ (
=
““) *!
ExceptionDictionary
““+ >
.
““> ? 
UNSUCCESFULL_EVENT
““? Q
;
““Q R"
ChannelAdministrator
”” $
.
””$ %&
HandleCommunicationIssue
””% =
(
””= >
user
””> B
.
””B C
IdUser
””C I
,
””I J"
ChannelAdministrator
””K _
.
””_ `-
GENERIC_COMMUNICATION_EXCEPTION
””` 
)”” Ä
;””Ä Å
ExceptionHandler
‘‘  
.
‘‘  !
LogException
‘‘! -
(
‘‘- .
ex
‘‘. 0
,
‘‘0 1!
ExceptionDictionary
‘‘2 E
.
‘‘E F
FATAL_EXCEPTION
‘‘F U
)
‘‘U V
;
‘‘V W
}
’’ 
catch
÷÷ 
(
÷÷ '
InvalidOperationException
÷÷ ,
ex
÷÷- /
)
÷÷/ 0
{
◊◊ 
resultToReturn
ÿÿ 
.
ÿÿ 
	CodeEvent
ÿÿ (
=
ÿÿ) *!
ExceptionDictionary
ÿÿ+ >
.
ÿÿ> ? 
UNSUCCESFULL_EVENT
ÿÿ? Q
;
ÿÿQ R"
ChannelAdministrator
ŸŸ $
.
ŸŸ$ %&
HandleCommunicationIssue
ŸŸ% =
(
ŸŸ= >
user
ŸŸ> B
.
ŸŸB C
IdUser
ŸŸC I
,
ŸŸI J"
ChannelAdministrator
ŸŸK _
.
ŸŸ_ `-
GENERIC_COMMUNICATION_EXCEPTION
ŸŸ` 
)ŸŸ Ä
;ŸŸÄ Å
ExceptionHandler
⁄⁄  
.
⁄⁄  !
LogException
⁄⁄! -
(
⁄⁄- .
ex
⁄⁄. 0
,
⁄⁄0 1!
ExceptionDictionary
⁄⁄2 E
.
⁄⁄E F
FATAL_EXCEPTION
⁄⁄F U
)
⁄⁄U V
;
⁄⁄V W
}
€€ 
return
‹‹ 
resultToReturn
‹‹ !
;
‹‹! "
}
›› 	
}
·· 
}‚‚ °≈
°C:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameServer\JeopardyGame.Service\ServiceImplementation\FriendManagerActionsImplementation.cs
	namespace

 	
JeopardyGame


 
.

 
Service

 
.

 !
ServiceImplementation

 4
{ 
partial 
class .
"FriendManagerActionsImplementation 4
:5 6!
IFriendManagerActions7 L
{ 
private 
readonly 
int 
NULL_INT_VALUE +
=, -
$num. /
;/ 0
private 
readonly 
int !
CHANNEL_ALREADY_EXIST 2
=3 4
-5 6
$num6 7
;7 8
private 
readonly 
int 
CHANNEL_SAVED *
=+ ,
$num- .
;. /
private 
static 
readonly 
Object  &

objectLock' 1
=2 3
new4 7
(7 8
)8 9
;9 :
public 
GenericClass 
< 
int 
>  %
RegisterFriendManagerUser! :
(: ;
int; >
idUserFriendManager? R
)R S
{ 	
GenericClass 
< 
int 
> 
resultToReturn ,
=- .
new/ 2
GenericClass3 ?
<? @
int@ C
>C D
(D E
)E F
;F G
lock 
( 

objectLock 
) 
{ 
try 
{ 
if 
( 
idUserFriendManager +
==, .
NULL_INT_VALUE/ =
)= >
{ 
return !
NullParametersHandler 4
.4 5'
HandleNullParametersService5 P
(P Q
resultToReturnQ _
)_ `
;` a
} 
var 
channelSaved $
=% &#
FriendManagerDictionary' >
.> ? 
GetChannelFriendUser? S
(S T
idUserFriendManagerT g
)g h
;h i
if 
( 
channelSaved $
==% '
null( ,
), -
{   
var!! 
newCallBackChannel!! .
=!!/ 0
OperationContext!!1 A
.!!A B
Current!!B I
;!!I J#
FriendManagerDictionary"" /
.""/ 0-
!RegisterNewFriendUserInDictionary""0 Q
(""Q R
idUserFriendManager""R e
,""e f
newCallBackChannel""g y
)""y z
;""z {
resultToReturn## &
.##& '
ObjectSaved##' 2
=##3 4
CHANNEL_SAVED##5 B
;##B C
resultToReturn$$ &
.$$& '
	CodeEvent$$' 0
=$$1 2
ExceptionDictionary$$3 F
.$$F G
SUCCESFULL_EVENT$$G W
;$$W X
}%% 
else&& 
{'' 
resultToReturn(( &
.((& '
ObjectSaved((' 2
=((3 4!
CHANNEL_ALREADY_EXIST((5 J
;((J K
resultToReturn)) &
.))& '
	CodeEvent))' 0
=))1 2
ExceptionDictionary))3 F
.))F G
UNSUCCESFULL_EVENT))G Y
;))Y Z
}** 
}++ 
catch,, 
(,, /
#CommunicationObjectFaultedException,, :
ex,,; =
),,= >
{-- 
resultToReturn.. "
..." #
	CodeEvent..# ,
=..- .
ExceptionDictionary../ B
...B C
UNSUCCESFULL_EVENT..C U
;..U V 
ChannelAdministrator// (
.//( )$
HandleCommunicationIssue//) A
(//A B
idUserFriendManager//B U
,//U V 
ChannelAdministrator//W k
.//k l%
FRIEND_MANAGER_EXCEPTION	//l Ñ
)
//Ñ Ö
;
//Ö Ü
ExceptionHandler00 $
.00$ %
LogException00% 1
(001 2
ex002 4
,004 5
ExceptionDictionary006 I
.00I J
FATAL_EXCEPTION00J Y
)00Y Z
;00Z [
}11 
catch22 
(22 "
CommunicationException22 -
ex22. 0
)220 1
{33 
resultToReturn44 "
.44" #
	CodeEvent44# ,
=44- .
ExceptionDictionary44/ B
.44B C
UNSUCCESFULL_EVENT44C U
;44U V 
ChannelAdministrator55 (
.55( )$
HandleCommunicationIssue55) A
(55A B
idUserFriendManager55B U
,55U V 
ChannelAdministrator55W k
.55k l%
FRIEND_MANAGER_EXCEPTION	55l Ñ
)
55Ñ Ö
;
55Ö Ü
ExceptionHandler66 $
.66$ %
LogException66% 1
(661 2
ex662 4
,664 5
ExceptionDictionary666 I
.66I J
FATAL_EXCEPTION66J Y
)66Y Z
;66Z [
}77 
catch88 
(88 %
InvalidOperationException88 0
ex881 3
)883 4
{99 
resultToReturn:: "
.::" #
	CodeEvent::# ,
=::- .
ExceptionDictionary::/ B
.::B C
UNSUCCESFULL_EVENT::C U
;::U V 
ChannelAdministrator;; (
.;;( )$
HandleCommunicationIssue;;) A
(;;A B
idUserFriendManager;;B U
,;;U V 
ChannelAdministrator;;W k
.;;k l%
FRIEND_MANAGER_EXCEPTION	;;l Ñ
)
;;Ñ Ö
;
;;Ö Ü
ExceptionHandler<< $
.<<$ %
LogException<<% 1
(<<1 2
ex<<2 4
,<<4 5
ExceptionDictionary<<6 I
.<<I J
FATAL_EXCEPTION<<J Y
)<<Y Z
;<<Z [
}== 
}>> 
return?? 
resultToReturn?? !
;??! "
}@@ 	
publicBB 
intBB *
RenewFriendManagerUserCallBackBB 1
(BB1 2
intBB2 5
idUserFriendManagerBB6 I
)BBI J
{CC 	
intDD 
resultToReturnDD 
=DD  
ExceptionDictionaryDD! 4
.DD4 5
UNSUCCESFULL_EVENTDD5 G
;DDG H
lockEE 
(EE 

objectLockEE 
)EE 
{FF 
tryGG 
{HH 
ifII 
(II 
idUserFriendManagerII +
==II, .
NULL_INT_VALUEII/ =
)II= >
{JJ 
returnKK 
resultToReturnKK -
;KK- .
}LL 
varMM 
newCallBackChannelMM *
=MM+ ,
OperationContextMM- =
.MM= >
CurrentMM> E
;MME F#
FriendManagerDictionaryNN +
.NN+ ,-
!RegisterNewFriendUserInDictionaryNN, M
(NNM N
idUserFriendManagerNNN a
,NNa b
newCallBackChannelNNc u
)NNu v
;NNv w
resultToReturnOO "
=OO# $
ExceptionDictionaryOO% 8
.OO8 9
SUCCESFULL_EVENTOO9 I
;OOI J
}PP 
catchQQ 
(QQ /
#CommunicationObjectFaultedExceptionQQ :
exQQ; =
)QQ= >
{RR 
resultToReturnSS "
=SS# $
ExceptionDictionarySS% 8
.SS8 9
UNSUCCESFULL_EVENTSS9 K
;SSK L 
ChannelAdministratorTT (
.TT( )$
HandleCommunicationIssueTT) A
(TTA B
idUserFriendManagerTTB U
,TTU V 
ChannelAdministratorTTW k
.TTk l%
FRIEND_MANAGER_EXCEPTION	TTl Ñ
)
TTÑ Ö
;
TTÖ Ü
ExceptionHandlerUU $
.UU$ %
LogExceptionUU% 1
(UU1 2
exUU2 4
,UU4 5
ExceptionDictionaryUU6 I
.UUI J
FATAL_EXCEPTIONUUJ Y
)UUY Z
;UUZ [
}VV 
catchWW 
(WW "
CommunicationExceptionWW -
exWW. 0
)WW0 1
{XX 
resultToReturnYY "
=YY# $
ExceptionDictionaryYY% 8
.YY8 9
UNSUCCESFULL_EVENTYY9 K
;YYK L 
ChannelAdministratorZZ (
.ZZ( )$
HandleCommunicationIssueZZ) A
(ZZA B
idUserFriendManagerZZB U
,ZZU V 
ChannelAdministratorZZW k
.ZZk l%
FRIEND_MANAGER_EXCEPTION	ZZl Ñ
)
ZZÑ Ö
;
ZZÖ Ü
ExceptionHandler[[ $
.[[$ %
LogException[[% 1
([[1 2
ex[[2 4
,[[4 5
ExceptionDictionary[[6 I
.[[I J
FATAL_EXCEPTION[[J Y
)[[Y Z
;[[Z [
}\\ 
catch]] 
(]] %
InvalidOperationException]] 0
ex]]1 3
)]]3 4
{^^ 
resultToReturn__ "
=__# $
ExceptionDictionary__% 8
.__8 9
UNSUCCESFULL_EVENT__9 K
;__K L 
ChannelAdministrator`` (
.``( )$
HandleCommunicationIssue``) A
(``A B
idUserFriendManager``B U
,``U V 
ChannelAdministrator``W k
.``k l%
FRIEND_MANAGER_EXCEPTION	``l Ñ
)
``Ñ Ö
;
``Ö Ü
ExceptionHandleraa $
.aa$ %
LogExceptionaa% 1
(aa1 2
exaa2 4
,aa4 5
ExceptionDictionaryaa6 I
.aaI J
FATAL_EXCEPTIONaaJ Y
)aaY Z
;aaZ [
}bb 
}cc 
returndd 
resultToReturndd !
;dd! "
}ee 	
}gg 
partialii 
classii 7
+FriendManagerActionsOperationImplementationii =
:ii> ?*
IFriendManagerActionOperationsii@ ^
{jj 
privatell 
readonlyll 
intll 
NULL_INT_VALUEll +
=ll, -
$numll. /
;ll/ 0
privatemm 
readonlymm 
intmm "
DECLINE_FRIEND_REQUESTmm 3
=mm4 5
$nummm6 7
;mm7 8
privatenn 
readonlynn 
intnn 
SEND_FRIEND_REQUESTnn 0
=nn1 2
$numnn3 4
;nn4 5
privateoo 
readonlyoo 
intoo !
ACCEPT_FRIEND_REQUESToo 2
=oo3 4
$numoo5 6
;oo6 7
privatepp 
staticpp 
readonlypp 
Objectpp  &

objectLockpp' 1
=pp2 3
newpp4 7
(pp7 8
)pp8 9
;pp9 :
publicrr 
voidrr '
UnregisterFriendManagerUserrr /
(rr/ 0
intrr0 3
idUserFriendManagerrr4 G
)rrG H
{ss 	
locktt 
(tt 

objectLocktt 
)tt 
{uu 
tryvv 
{ww 
ifxx 
(xx 
idUserFriendManagerxx +
!=xx, .
NULL_INT_VALUExx/ =
)xx= >
{yy 
varzz 
channelSavedzz (
=zz) *#
FriendManagerDictionaryzz+ B
.zzB C 
GetChannelFriendUserzzC W
(zzW X
idUserFriendManagerzzX k
)zzk l
;zzl m
if{{ 
({{ 
channelSaved{{ (
!={{) +
null{{, 0
){{0 1
{|| #
FriendManagerDictionary}} 3
.}}3 40
$RemoveRegistryOfFriendFromDictionary}}4 X
(}}X Y
idUserFriendManager}}Y l
)}}l m
;}}m n
}~~ 
} 
}
ÄÄ 
catch
ÅÅ 
(
ÅÅ 1
#CommunicationObjectFaultedException
ÅÅ :
ex
ÅÅ; =
)
ÅÅ= >
{
ÇÇ "
ChannelAdministrator
ÉÉ (
.
ÉÉ( )&
HandleCommunicationIssue
ÉÉ) A
(
ÉÉA B!
idUserFriendManager
ÉÉB U
,
ÉÉU V"
ChannelAdministrator
ÉÉW k
.
ÉÉk l'
FRIEND_MANAGER_EXCEPTIONÉÉl Ñ
)ÉÉÑ Ö
;ÉÉÖ Ü
ExceptionHandler
ÑÑ $
.
ÑÑ$ %
LogException
ÑÑ% 1
(
ÑÑ1 2
ex
ÑÑ2 4
,
ÑÑ4 5!
ExceptionDictionary
ÑÑ6 I
.
ÑÑI J
FATAL_EXCEPTION
ÑÑJ Y
)
ÑÑY Z
;
ÑÑZ [
}
ÖÖ 
catch
ÜÜ 
(
ÜÜ $
CommunicationException
ÜÜ -
ex
ÜÜ. 0
)
ÜÜ0 1
{
áá "
ChannelAdministrator
àà (
.
àà( )&
HandleCommunicationIssue
àà) A
(
ààA B!
idUserFriendManager
ààB U
,
ààU V"
ChannelAdministrator
ààW k
.
ààk l'
FRIEND_MANAGER_EXCEPTIONààl Ñ
)ààÑ Ö
;ààÖ Ü
ExceptionHandler
ââ $
.
ââ$ %
LogException
ââ% 1
(
ââ1 2
ex
ââ2 4
,
ââ4 5!
ExceptionDictionary
ââ6 I
.
ââI J
FATAL_EXCEPTION
ââJ Y
)
ââY Z
;
ââZ [
}
ää 
catch
ãã 
(
ãã '
InvalidOperationException
ãã 0
ex
ãã1 3
)
ãã3 4
{
åå "
ChannelAdministrator
çç (
.
çç( )&
HandleCommunicationIssue
çç) A
(
ççA B!
idUserFriendManager
ççB U
,
ççU V"
ChannelAdministrator
ççW k
.
ççk l'
FRIEND_MANAGER_EXCEPTIONççl Ñ
)ççÑ Ö
;ççÖ Ü
ExceptionHandler
éé $
.
éé$ %
LogException
éé% 1
(
éé1 2
ex
éé2 4
,
éé4 5!
ExceptionDictionary
éé6 I
.
ééI J
FATAL_EXCEPTION
ééJ Y
)
ééY Z
;
ééZ [
}
èè 
}
êê 
}
ëë 	
public
ìì 
GenericClass
ìì 
<
ìì 
int
ìì 
>
ìì  
BanUser
ìì! (
(
ìì( )
int
ìì) ,
idPlayerBanned
ìì- ;
,
ìì; <
int
ìì= @
idUserBanning
ììA N
)
ììN O
{
îî 	
GenericClass
ïï 
<
ïï 
int
ïï 
>
ïï 
resultToReturn
ïï ,
=
ïï- .
new
ïï/ 2
GenericClass
ïï3 ?
<
ïï? @
int
ïï@ C
>
ïïC D
(
ïïD E
)
ïïE F
;
ïïF G
try
ññ 
{
óó 
var
òò 

banerUsers
òò 
=
òò  )
FriendsManagerDataOperation
òò! <
.
òò< =

BannerUser
òò= G
(
òòG H
idPlayerBanned
òòH V
)
òòV W
;
òòW X
if
ôô 
(
ôô 

banerUsers
ôô 
.
ôô 
	CodeEvent
ôô (
==
ôô) +!
ExceptionDictionary
ôô, ?
.
ôô? @
SUCCESFULL_EVENT
ôô@ P
)
ôôP Q
{
öö 
resultToReturn
õõ "
.
õõ" #
ObjectSaved
õõ# .
=
õõ/ 0

banerUsers
õõ1 ;
.
õõ; <
ObjectSaved
õõ< G
;
õõG H
resultToReturn
úú "
.
úú" #
	CodeEvent
úú# ,
=
úú- .!
ExceptionDictionary
úú/ B
.
úúB C
SUCCESFULL_EVENT
úúC S
;
úúS T
}
ùù 
else
ûû 
{
üü 
resultToReturn
†† "
.
††" #
	CodeEvent
††# ,
=
††- .

banerUsers
††/ 9
.
††9 :
	CodeEvent
††: C
;
††C D
}
°° 
}
¢¢ 
catch
££ 
(
££ 1
#CommunicationObjectFaultedException
££ 6
ex
££7 9
)
££9 :
{
§§ 
resultToReturn
•• 
.
•• 
	CodeEvent
•• (
=
••) *!
ExceptionDictionary
••+ >
.
••> ? 
UNSUCCESFULL_EVENT
••? Q
;
••Q R"
ChannelAdministrator
¶¶ $
.
¶¶$ %&
HandleCommunicationIssue
¶¶% =
(
¶¶= >
idUserBanning
¶¶> K
,
¶¶K L"
ChannelAdministrator
¶¶M a
.
¶¶a b&
FRIEND_MANAGER_EXCEPTION
¶¶b z
)
¶¶z {
;
¶¶{ |
ExceptionHandler
ßß  
.
ßß  !
LogException
ßß! -
(
ßß- .
ex
ßß. 0
,
ßß0 1!
ExceptionDictionary
ßß2 E
.
ßßE F
FATAL_EXCEPTION
ßßF U
)
ßßU V
;
ßßV W
}
®® 
catch
©© 
(
©© $
CommunicationException
©© )
ex
©©* ,
)
©©, -
{
™™ 
resultToReturn
´´ 
.
´´ 
	CodeEvent
´´ (
=
´´) *!
ExceptionDictionary
´´+ >
.
´´> ? 
UNSUCCESFULL_EVENT
´´? Q
;
´´Q R"
ChannelAdministrator
¨¨ $
.
¨¨$ %&
HandleCommunicationIssue
¨¨% =
(
¨¨= >
idUserBanning
¨¨> K
,
¨¨K L"
ChannelAdministrator
¨¨M a
.
¨¨a b&
FRIEND_MANAGER_EXCEPTION
¨¨b z
)
¨¨z {
;
¨¨{ |
ExceptionHandler
≠≠  
.
≠≠  !
LogException
≠≠! -
(
≠≠- .
ex
≠≠. 0
,
≠≠0 1!
ExceptionDictionary
≠≠2 E
.
≠≠E F
FATAL_EXCEPTION
≠≠F U
)
≠≠U V
;
≠≠V W
}
ÆÆ 
catch
ØØ 
(
ØØ '
InvalidOperationException
ØØ ,
ex
ØØ- /
)
ØØ/ 0
{
∞∞ 
resultToReturn
±± 
.
±± 
	CodeEvent
±± (
=
±±) *!
ExceptionDictionary
±±+ >
.
±±> ? 
UNSUCCESFULL_EVENT
±±? Q
;
±±Q R"
ChannelAdministrator
≤≤ $
.
≤≤$ %&
HandleCommunicationIssue
≤≤% =
(
≤≤= >
idUserBanning
≤≤> K
,
≤≤K L"
ChannelAdministrator
≤≤M a
.
≤≤a b&
FRIEND_MANAGER_EXCEPTION
≤≤b z
)
≤≤z {
;
≤≤{ |
ExceptionHandler
≥≥  
.
≥≥  !
LogException
≥≥! -
(
≥≥- .
ex
≥≥. 0
,
≥≥0 1!
ExceptionDictionary
≥≥2 E
.
≥≥E F
FATAL_EXCEPTION
≥≥F U
)
≥≥U V
;
≥≥V W
}
¥¥ 
return
µµ 
resultToReturn
µµ !
;
µµ! "
}
∂∂ 	
public
∏∏ 
void
∏∏ &
NotifyUserAboutNewPlayer
∏∏ ,
(
∏∏, -
int
∏∏- 0
idNewPlayer
∏∏1 <
,
∏∏< =
string
∏∏> D
userName
∏∏E M
)
∏∏M N
{
ππ 	
if
∫∫ 
(
∫∫ 
idNewPlayer
∫∫ 
!=
∫∫ 
$num
∫∫ 
&&
∫∫  "
!
∫∫# $
string
∫∫$ *
.
∫∫* +
IsNullOrEmpty
∫∫+ 8
(
∫∫8 9
userName
∫∫9 A
)
∫∫A B
)
∫∫B C
{
ªª 
var
ºº 
players
ºº 
=
ºº %
FriendManagerDictionary
ºº 5
.
ºº5 6"
GetActiveFriendsList
ºº6 J
(
ººJ K
)
ººK L
;
ººL M
if
ΩΩ 
(
ΩΩ 
players
ΩΩ 
!=
ΩΩ 
null
ΩΩ #
)
ΩΩ# $
{
ææ )
NotifyPlayersAboutNewPlayer
øø /
(
øø/ 0
idNewPlayer
øø0 ;
,
øø; <
userName
øø= E
,
øøE F
players
øøG N
)
øøN O
;
øøO P
}
¿¿ 
}
¡¡ 
}
¬¬ 	
private
ƒƒ 
void
ƒƒ )
NotifyPlayersAboutNewPlayer
ƒƒ 0
(
ƒƒ0 1
int
ƒƒ1 4
idNewPlayer
ƒƒ5 @
,
ƒƒ@ A
string
ƒƒB H
userName
ƒƒI Q
,
ƒƒQ R

Dictionary
ƒƒS ]
<
ƒƒ] ^
int
ƒƒ^ a
,
ƒƒa b
OperationContext
ƒƒc s
>
ƒƒs t
contexts
ƒƒu }
)
ƒƒ} ~
{
≈≈ 	
foreach
∆∆ 
(
∆∆ 
var
∆∆ 
item
∆∆ 
in
∆∆  
contexts
∆∆! )
)
∆∆) *
{
«« 
try
»» 
{
…… 
if
   
(
   
item
   
.
   
Value
   "
!=
  # %
null
  & *
)
  * +
{
ÀÀ 
item
ÃÃ 
.
ÃÃ 
Value
ÃÃ "
.
ÃÃ" # 
GetCallbackChannel
ÃÃ# 5
<
ÃÃ5 6+
IFriendManagerActionsCallBack
ÃÃ6 S
>
ÃÃS T
(
ÃÃT U
)
ÃÃU V
.
ÃÃV W&
ResponseNewPlayerJusJoin
ÃÃW o
(
ÃÃo p
idNewPlayer
ÃÃp {
,
ÃÃ{ |
userNameÃÃ} Ö
)ÃÃÖ Ü
;ÃÃÜ á
}
ÕÕ 
}
ŒŒ 
catch
œœ 
(
œœ 1
#CommunicationObjectFaultedException
œœ :
ex
œœ; =
)
œœ= >
{
–– "
ChannelAdministrator
—— (
.
——( )&
HandleCommunicationIssue
——) A
(
——A B
item
——B F
.
——F G
Key
——G J
,
——J K"
ChannelAdministrator
——L `
.
——` a&
FRIEND_MANAGER_EXCEPTION
——a y
)
——y z
;
——z {
ExceptionHandler
““ $
.
““$ %
LogException
““% 1
(
““1 2
ex
““2 4
,
““4 5!
ExceptionDictionary
““6 I
.
““I J
FATAL_EXCEPTION
““J Y
)
““Y Z
;
““Z [
}
”” 
catch
‘‘ 
(
‘‘ 
TimeoutException
‘‘ '
ex
‘‘( *
)
‘‘* +
{
’’ "
ChannelAdministrator
÷÷ (
.
÷÷( )&
HandleCommunicationIssue
÷÷) A
(
÷÷A B
item
÷÷B F
.
÷÷F G
Key
÷÷G J
,
÷÷J K"
ChannelAdministrator
÷÷L `
.
÷÷` a&
FRIEND_MANAGER_EXCEPTION
÷÷a y
)
÷÷y z
;
÷÷z {
ExceptionHandler
◊◊ $
.
◊◊$ %
LogException
◊◊% 1
(
◊◊1 2
ex
◊◊2 4
,
◊◊4 5!
ExceptionDictionary
◊◊6 I
.
◊◊I J
FATAL_EXCEPTION
◊◊J Y
)
◊◊Y Z
;
◊◊Z [
}
ÿÿ 
catch
ŸŸ 
(
ŸŸ $
CommunicationException
ŸŸ -
ex
ŸŸ. 0
)
ŸŸ0 1
{
⁄⁄ "
ChannelAdministrator
€€ (
.
€€( )&
HandleCommunicationIssue
€€) A
(
€€A B
item
€€B F
.
€€F G
Key
€€G J
,
€€J K"
ChannelAdministrator
€€L `
.
€€` a&
FRIEND_MANAGER_EXCEPTION
€€a y
)
€€y z
;
€€z {
ExceptionHandler
‹‹ $
.
‹‹$ %
LogException
‹‹% 1
(
‹‹1 2
ex
‹‹2 4
,
‹‹4 5!
ExceptionDictionary
‹‹6 I
.
‹‹I J
FATAL_EXCEPTION
‹‹J Y
)
‹‹Y Z
;
‹‹Z [
}
›› 
catch
ﬁﬁ 
(
ﬁﬁ '
InvalidOperationException
ﬁﬁ 0
ex
ﬁﬁ1 3
)
ﬁﬁ3 4
{
ﬂﬂ "
ChannelAdministrator
‡‡ (
.
‡‡( )&
HandleCommunicationIssue
‡‡) A
(
‡‡A B
item
‡‡B F
.
‡‡F G
Key
‡‡G J
,
‡‡J K"
ChannelAdministrator
‡‡L `
.
‡‡` a&
FRIEND_MANAGER_EXCEPTION
‡‡a y
)
‡‡y z
;
‡‡z {
ExceptionHandler
·· $
.
··$ %
LogException
··% 1
(
··1 2
ex
··2 4
,
··4 5!
ExceptionDictionary
··6 I
.
··I J
FATAL_EXCEPTION
··J Y
)
··Y Z
;
··Z [
}
‚‚ 
}
„„ 
}
‰‰ 	
}
ÊÊ 
partial
ÍÍ 
class
ÍÍ 9
+FriendManagerActionsOperationImplementation
ÍÍ =
:
ÍÍ> ?,
IFriendManagerActionOperations
ÍÍ@ ^
{
ÎÎ 
private
ÏÏ 
static
ÏÏ 
readonly
ÏÏ 
Object
ÏÏ  &

lockObject
ÏÏ' 1
=
ÏÏ2 3
new
ÏÏ4 7
Object
ÏÏ8 >
(
ÏÏ> ?
)
ÏÏ? @
;
ÏÏ@ A
public
ÓÓ 
void
ÓÓ &
EliminateUserFromFriends
ÓÓ ,
(
ÓÓ, -
int
ÓÓ- 0
idPlayerDeleting
ÓÓ1 A
,
ÓÓA B
int
ÓÓC F
idUserToEliminate
ÓÓG X
)
ÓÓX Y
{
ÔÔ 	
lock
 
(
 

lockObject
 
)
 
{
ÒÒ .
 ConsultInformationImplementation
ÚÚ 0 
consultInformation
ÚÚ1 C
=
ÚÚD E
new
ÚÚF I.
 ConsultInformationImplementation
ÚÚJ j
(
ÚÚj k
)
ÚÚk l
;
ÚÚl m
var
ÛÛ  
playerToEliminated
ÛÛ &
=
ÛÛ' ( 
consultInformation
ÛÛ) ;
.
ÛÛ; <#
ConsultPlayerByIdUser
ÛÛ< Q
(
ÛÛQ R
idUserToEliminate
ÛÛR c
)
ÛÛc d
;
ÛÛd e
try
ÙÙ 
{
ıı 
if
ˆˆ 
(
ˆˆ  
playerToEliminated
ˆˆ *
.
ˆˆ* +
	CodeEvent
ˆˆ+ 4
==
ˆˆ5 7!
ExceptionDictionary
ˆˆ8 K
.
ˆˆK L
SUCCESFULL_EVENT
ˆˆL \
)
ˆˆ\ ]
{
˜˜ 
var
¯¯ 
affectedRows
¯¯ (
=
¯¯) *)
FriendsManagerDataOperation
¯¯+ F
.
¯¯F G#
DeleteFriendsRegister
¯¯G \
(
¯¯\ ]
idPlayerDeleting
¯¯] m
,
¯¯m n!
playerToEliminated¯¯o Å
.¯¯Å Ç
ObjectSaved¯¯Ç ç
.¯¯ç é
IdPlayer¯¯é ñ
)¯¯ñ ó
;¯¯ó ò
if
˘˘ 
(
˘˘ 
affectedRows
˘˘ (
.
˘˘( )
	CodeEvent
˘˘) 2
==
˘˘3 5!
ExceptionDictionary
˘˘6 I
.
˘˘I J
SUCCESFULL_EVENT
˘˘J Z
)
˘˘Z [
{
˙˙ *
NotifyEliminationFromFriends
˚˚ 8
(
˚˚8 9
idPlayerDeleting
˚˚9 I
,
˚˚I J
idUserToEliminate
˚˚K \
)
˚˚\ ]
;
˚˚] ^
}
¸¸ 
}
˝˝ 
}
˛˛ 
catch
ˇˇ 
(
ˇˇ 1
#CommunicationObjectFaultedException
ˇˇ :
ex
ˇˇ; =
)
ˇˇ= >
{
ÄÄ 
var
ÅÅ 
idUserBanning
ÅÅ %
=
ÅÅ& ' 
consultInformation
ÅÅ( :
.
ÅÅ: ;#
ConsultUserByIdPlayer
ÅÅ; P
(
ÅÅP Q
idPlayerDeleting
ÅÅQ a
)
ÅÅa b
.
ÅÅb c
ObjectSaved
ÅÅc n
.
ÅÅn o
IdUser
ÅÅo u
;
ÅÅu v"
ChannelAdministrator
ÇÇ (
.
ÇÇ( )&
HandleCommunicationIssue
ÇÇ) A
(
ÇÇA B
idUserBanning
ÇÇB O
,
ÇÇO P"
ChannelAdministrator
ÇÇQ e
.
ÇÇe f&
FRIEND_MANAGER_EXCEPTION
ÇÇf ~
)
ÇÇ~ 
;ÇÇ Ä
ExceptionHandler
ÉÉ $
.
ÉÉ$ %
LogException
ÉÉ% 1
(
ÉÉ1 2
ex
ÉÉ2 4
,
ÉÉ4 5!
ExceptionDictionary
ÉÉ6 I
.
ÉÉI J
FATAL_EXCEPTION
ÉÉJ Y
)
ÉÉY Z
;
ÉÉZ [
}
ÑÑ 
catch
ÖÖ 
(
ÖÖ 
TimeoutException
ÖÖ '
ex
ÖÖ( *
)
ÖÖ* +
{
ÜÜ 
var
áá 
idUserBanning
áá %
=
áá& ' 
consultInformation
áá( :
.
áá: ;#
ConsultUserByIdPlayer
áá; P
(
ááP Q
idPlayerDeleting
ááQ a
)
ááa b
.
ááb c
ObjectSaved
áác n
.
áán o
IdUser
ááo u
;
ááu v"
ChannelAdministrator
àà (
.
àà( )&
HandleCommunicationIssue
àà) A
(
ààA B
idUserBanning
ààB O
,
ààO P"
ChannelAdministrator
ààQ e
.
ààe f&
FRIEND_MANAGER_EXCEPTION
ààf ~
)
àà~ 
;àà Ä
ExceptionHandler
ââ $
.
ââ$ %
LogException
ââ% 1
(
ââ1 2
ex
ââ2 4
,
ââ4 5!
ExceptionDictionary
ââ6 I
.
ââI J
FATAL_EXCEPTION
ââJ Y
)
ââY Z
;
ââZ [
}
ää 
catch
ãã 
(
ãã $
CommunicationException
ãã -
ex
ãã. 0
)
ãã0 1
{
åå 
var
çç 
idUserBanning
çç %
=
çç& ' 
consultInformation
çç( :
.
çç: ;#
ConsultUserByIdPlayer
çç; P
(
ççP Q
idPlayerDeleting
ççQ a
)
çça b
.
ççb c
ObjectSaved
ççc n
.
ççn o
IdUser
çço u
;
ççu v"
ChannelAdministrator
éé (
.
éé( )&
HandleCommunicationIssue
éé) A
(
ééA B
idUserBanning
ééB O
,
ééO P"
ChannelAdministrator
ééQ e
.
éée f&
FRIEND_MANAGER_EXCEPTION
ééf ~
)
éé~ 
;éé Ä
ExceptionHandler
èè $
.
èè$ %
LogException
èè% 1
(
èè1 2
ex
èè2 4
,
èè4 5!
ExceptionDictionary
èè6 I
.
èèI J
FATAL_EXCEPTION
èèJ Y
)
èèY Z
;
èèZ [
}
êê 
catch
ëë 
(
ëë '
InvalidOperationException
ëë 0
ex
ëë1 3
)
ëë3 4
{
íí 
var
ìì 
idUserBanning
ìì %
=
ìì& ' 
consultInformation
ìì( :
.
ìì: ;#
ConsultUserByIdPlayer
ìì; P
(
ììP Q
idPlayerDeleting
ììQ a
)
ììa b
.
ììb c
ObjectSaved
ììc n
.
ììn o
IdUser
ììo u
;
ììu v"
ChannelAdministrator
îî (
.
îî( )&
HandleCommunicationIssue
îî) A
(
îîA B
idUserBanning
îîB O
,
îîO P"
ChannelAdministrator
îîQ e
.
îîe f&
FRIEND_MANAGER_EXCEPTION
îîf ~
)
îî~ 
;îî Ä
ExceptionHandler
ïï $
.
ïï$ %
LogException
ïï% 1
(
ïï1 2
ex
ïï2 4
,
ïï4 5!
ExceptionDictionary
ïï6 I
.
ïïI J
FATAL_EXCEPTION
ïïJ Y
)
ïïY Z
;
ïïZ [
}
ññ 
}
óó 
}
òò 	
private
õõ 
void
õõ *
NotifyEliminationFromFriends
õõ 1
(
õõ1 2
int
õõ2 5
idPlayerDeleting
õõ6 F
,
õõF G
int
õõH K
idUserToEliminate
õõL ]
)
õõ] ^
{
úú 	
try
ùù 
{
ûû 
var
üü 
channelSaved
üü  
=
üü! "%
FriendManagerDictionary
üü# :
.
üü: ;"
GetChannelFriendUser
üü; O
(
üüO P
idUserToEliminate
üüP a
)
üüa b
;
üüb c
if
†† 
(
†† 
channelSaved
††  
!=
††! #
null
††$ (
)
††( )
{
°° .
 ConsultInformationImplementation
¢¢ 4 
consultInformation
¢¢5 G
=
¢¢H I
new
¢¢J M.
 ConsultInformationImplementation
¢¢N n
(
¢¢n o
)
¢¢o p
;
¢¢p q
var
££ 
userDeleting
££ $
=
££% & 
consultInformation
££' 9
.
££9 :#
ConsultUserByIdPlayer
££: O
(
££O P
idPlayerDeleting
££P `
)
££` a
;
££a b
if
§§ 
(
§§ 
userDeleting
§§ $
.
§§$ %
	CodeEvent
§§% .
==
§§/ 1!
ExceptionDictionary
§§2 E
.
§§E F
SUCCESFULL_EVENT
§§F V
)
§§V W
{
•• 
channelSaved
¶¶ $
.
¶¶$ % 
GetCallbackChannel
¶¶% 7
<
¶¶7 8+
IFriendManagerActionsCallBack
¶¶8 U
>
¶¶U V
(
¶¶V W
)
¶¶W X
.
¶¶X Y,
ResponseEliminationFromFriends
¶¶Y w
(
¶¶w x
userDeleting¶¶x Ñ
.¶¶Ñ Ö
ObjectSaved¶¶Ö ê
.¶¶ê ë
IdUser¶¶ë ó
)¶¶ó ò
;¶¶ò ô
}
ßß 
}
®® 
}
©© 
catch
™™ 
(
™™ 1
#CommunicationObjectFaultedException
™™ 6
ex
™™7 9
)
™™9 :
{
´´ "
ChannelAdministrator
¨¨ $
.
¨¨$ %&
HandleCommunicationIssue
¨¨% =
(
¨¨= >
idUserToEliminate
¨¨> O
,
¨¨O P"
ChannelAdministrator
¨¨Q e
.
¨¨e f&
FRIEND_MANAGER_EXCEPTION
¨¨f ~
)
¨¨~ 
;¨¨ Ä
ExceptionHandler
≠≠  
.
≠≠  !
LogException
≠≠! -
(
≠≠- .
ex
≠≠. 0
,
≠≠0 1!
ExceptionDictionary
≠≠2 E
.
≠≠E F
FATAL_EXCEPTION
≠≠F U
)
≠≠U V
;
≠≠V W
}
ÆÆ 
catch
ØØ 
(
ØØ 
TimeoutException
ØØ #
ex
ØØ$ &
)
ØØ& '
{
∞∞ "
ChannelAdministrator
±± $
.
±±$ %&
HandleCommunicationIssue
±±% =
(
±±= >
idUserToEliminate
±±> O
,
±±O P"
ChannelAdministrator
±±Q e
.
±±e f&
FRIEND_MANAGER_EXCEPTION
±±f ~
)
±±~ 
;±± Ä
ExceptionHandler
≤≤  
.
≤≤  !
LogException
≤≤! -
(
≤≤- .
ex
≤≤. 0
,
≤≤0 1!
ExceptionDictionary
≤≤2 E
.
≤≤E F
FATAL_EXCEPTION
≤≤F U
)
≤≤U V
;
≤≤V W
}
≥≥ 
catch
¥¥ 
(
¥¥ $
CommunicationException
¥¥ )
ex
¥¥* ,
)
¥¥, -
{
µµ "
ChannelAdministrator
∂∂ $
.
∂∂$ %&
HandleCommunicationIssue
∂∂% =
(
∂∂= >
idUserToEliminate
∂∂> O
,
∂∂O P"
ChannelAdministrator
∂∂Q e
.
∂∂e f&
FRIEND_MANAGER_EXCEPTION
∂∂f ~
)
∂∂~ 
;∂∂ Ä
ExceptionHandler
∑∑  
.
∑∑  !
LogException
∑∑! -
(
∑∑- .
ex
∑∑. 0
,
∑∑0 1!
ExceptionDictionary
∑∑2 E
.
∑∑E F
FATAL_EXCEPTION
∑∑F U
)
∑∑U V
;
∑∑V W
}
∏∏ 
catch
ππ 
(
ππ '
InvalidOperationException
ππ ,
ex
ππ- /
)
ππ/ 0
{
∫∫ "
ChannelAdministrator
ªª $
.
ªª$ %&
HandleCommunicationIssue
ªª% =
(
ªª= >
idUserToEliminate
ªª> O
,
ªªO P"
ChannelAdministrator
ªªQ e
.
ªªe f&
FRIEND_MANAGER_EXCEPTION
ªªf ~
)
ªª~ 
;ªª Ä
ExceptionHandler
ºº  
.
ºº  !
LogException
ºº! -
(
ºº- .
ex
ºº. 0
,
ºº0 1!
ExceptionDictionary
ºº2 E
.
ººE F
FATAL_EXCEPTION
ººF U
)
ººU V
;
ººV W
}
ΩΩ 
}
ææ 	
}
¿¿ 
partial
¬¬ 
class
¬¬ 9
+FriendManagerActionsOperationImplementation
¬¬ =
:
¬¬> ?,
IFriendManagerActionOperations
¬¬@ ^
{
√√ 
public
≈≈ 
void
≈≈ "
DeclineFriendRequest
≈≈ (
(
≈≈( )
int
≈≈) ,
idPlayerDeclining
≈≈- >
,
≈≈> ?
int
≈≈@ C
idUserRequesting
≈≈D T
)
≈≈T U
{
∆∆ 	
lock
«« 
(
«« 

lockObject
«« 
)
«« 
{
»» .
 ConsultInformationImplementation
…… 0 
consultInformation
……1 C
=
……D E
new
……F I.
 ConsultInformationImplementation
……J j
(
……j k
)
……k l
;
……l m
var
   
userConsulted
   !
=
  " # 
consultInformation
  $ 6
.
  6 7#
ConsultUserByIdPlayer
  7 L
(
  L M
idPlayerDeclining
  M ^
)
  ^ _
;
  _ `
try
ÀÀ 
{
ÃÃ 
if
ÕÕ 
(
ÕÕ 
userConsulted
ÕÕ %
.
ÕÕ% &
	CodeEvent
ÕÕ& /
==
ÕÕ0 2!
ExceptionDictionary
ÕÕ3 F
.
ÕÕF G
SUCCESFULL_EVENT
ÕÕG W
)
ÕÕW X
{
ŒŒ 
var
œœ 
playerDeclined
œœ *
=
œœ+ , 
consultInformation
œœ- ?
.
œœ? @#
ConsultPlayerByIdUser
œœ@ U
(
œœU V
idUserRequesting
œœV f
)
œœf g
;
œœg h
if
–– 
(
–– 
playerDeclined
–– *
.
––* +
	CodeEvent
––+ 4
==
––5 7!
ExceptionDictionary
––8 K
.
––K L
SUCCESFULL_EVENT
––L \
)
––\ ]
{
—— 
var
““ 
affectedRows
““  ,
=
““- .)
FriendsManagerDataOperation
““/ J
.
““J K#
DeleteFriendsRegister
““K `
(
““` a
idPlayerDeclining
““a r
,
““r s
playerDeclined““t Ç
.““Ç É
ObjectSaved““É é
.““é è
IdPlayer““è ó
)““ó ò
;““ò ô
if
”” 
(
””  
affectedRows
””  ,
.
””, -
	CodeEvent
””- 6
==
””7 9!
ExceptionDictionary
””: M
.
””M N
SUCCESFULL_EVENT
””N ^
)
””^ _
{
‘‘ )
NotifyResponseRequestAction
’’  ;
(
’’; <
idUserRequesting
’’< L
,
’’L M
userConsulted
’’N [
.
’’[ \
ObjectSaved
’’\ g
,
’’g h$
DECLINE_FRIEND_REQUEST
’’i 
)’’ Ä
;’’Ä Å
}
÷÷ 
}
◊◊ 
}
ÿÿ 
}
ŸŸ 
catch
⁄⁄ 
(
⁄⁄ 1
#CommunicationObjectFaultedException
⁄⁄ :
ex
⁄⁄; =
)
⁄⁄= >
{
€€ 
var
‹‹ 
idUserBanning
‹‹ %
=
‹‹& ' 
consultInformation
‹‹( :
.
‹‹: ;#
ConsultUserByIdPlayer
‹‹; P
(
‹‹P Q
idPlayerDeclining
‹‹Q b
)
‹‹b c
.
‹‹c d
ObjectSaved
‹‹d o
.
‹‹o p
IdUser
‹‹p v
;
‹‹v w"
ChannelAdministrator
›› (
.
››( )&
HandleCommunicationIssue
››) A
(
››A B
idUserBanning
››B O
,
››O P"
ChannelAdministrator
››Q e
.
››e f&
FRIEND_MANAGER_EXCEPTION
››f ~
)
››~ 
;›› Ä
ExceptionHandler
ﬁﬁ $
.
ﬁﬁ$ %
LogException
ﬁﬁ% 1
(
ﬁﬁ1 2
ex
ﬁﬁ2 4
,
ﬁﬁ4 5!
ExceptionDictionary
ﬁﬁ6 I
.
ﬁﬁI J
FATAL_EXCEPTION
ﬁﬁJ Y
)
ﬁﬁY Z
;
ﬁﬁZ [
}
ﬂﬂ 
catch
‡‡ 
(
‡‡ 
TimeoutException
‡‡ '
ex
‡‡( *
)
‡‡* +
{
·· 
var
‚‚ 
idUserBanning
‚‚ %
=
‚‚& ' 
consultInformation
‚‚( :
.
‚‚: ;#
ConsultUserByIdPlayer
‚‚; P
(
‚‚P Q
idPlayerDeclining
‚‚Q b
)
‚‚b c
.
‚‚c d
ObjectSaved
‚‚d o
.
‚‚o p
IdUser
‚‚p v
;
‚‚v w"
ChannelAdministrator
„„ (
.
„„( )&
HandleCommunicationIssue
„„) A
(
„„A B
idUserBanning
„„B O
,
„„O P"
ChannelAdministrator
„„Q e
.
„„e f&
FRIEND_MANAGER_EXCEPTION
„„f ~
)
„„~ 
;„„ Ä
ExceptionHandler
‰‰ $
.
‰‰$ %
LogException
‰‰% 1
(
‰‰1 2
ex
‰‰2 4
,
‰‰4 5!
ExceptionDictionary
‰‰6 I
.
‰‰I J
FATAL_EXCEPTION
‰‰J Y
)
‰‰Y Z
;
‰‰Z [
}
ÂÂ 
catch
ÊÊ 
(
ÊÊ $
CommunicationException
ÊÊ -
ex
ÊÊ. 0
)
ÊÊ0 1
{
ÁÁ 
var
ËË 
idUserBanning
ËË %
=
ËË& ' 
consultInformation
ËË( :
.
ËË: ;#
ConsultUserByIdPlayer
ËË; P
(
ËËP Q
idPlayerDeclining
ËËQ b
)
ËËb c
.
ËËc d
ObjectSaved
ËËd o
.
ËËo p
IdUser
ËËp v
;
ËËv w"
ChannelAdministrator
ÈÈ (
.
ÈÈ( )&
HandleCommunicationIssue
ÈÈ) A
(
ÈÈA B
idUserBanning
ÈÈB O
,
ÈÈO P"
ChannelAdministrator
ÈÈQ e
.
ÈÈe f&
FRIEND_MANAGER_EXCEPTION
ÈÈf ~
)
ÈÈ~ 
;ÈÈ Ä
ExceptionHandler
ÍÍ $
.
ÍÍ$ %
LogException
ÍÍ% 1
(
ÍÍ1 2
ex
ÍÍ2 4
,
ÍÍ4 5!
ExceptionDictionary
ÍÍ6 I
.
ÍÍI J
FATAL_EXCEPTION
ÍÍJ Y
)
ÍÍY Z
;
ÍÍZ [
}
ÎÎ 
catch
ÏÏ 
(
ÏÏ '
InvalidOperationException
ÏÏ 0
ex
ÏÏ1 3
)
ÏÏ3 4
{
ÌÌ 
var
ÓÓ 
idUserBanning
ÓÓ %
=
ÓÓ& ' 
consultInformation
ÓÓ( :
.
ÓÓ: ;#
ConsultUserByIdPlayer
ÓÓ; P
(
ÓÓP Q
idPlayerDeclining
ÓÓQ b
)
ÓÓb c
.
ÓÓc d
ObjectSaved
ÓÓd o
.
ÓÓo p
IdUser
ÓÓp v
;
ÓÓv w"
ChannelAdministrator
ÔÔ (
.
ÔÔ( )&
HandleCommunicationIssue
ÔÔ) A
(
ÔÔA B
idUserBanning
ÔÔB O
,
ÔÔO P"
ChannelAdministrator
ÔÔQ e
.
ÔÔe f&
FRIEND_MANAGER_EXCEPTION
ÔÔf ~
)
ÔÔ~ 
;ÔÔ Ä
ExceptionHandler
 $
.
$ %
LogException
% 1
(
1 2
ex
2 4
,
4 5!
ExceptionDictionary
6 I
.
I J
FATAL_EXCEPTION
J Y
)
Y Z
;
Z [
}
ÒÒ 
}
ÚÚ 
}
ÛÛ 	
public
ıı 
void
ıı 
SendFriendRequest
ıı %
(
ıı% &
int
ıı& ) 
idPLayerRequesting
ıı* <
,
ıı< =
int
ıı> A
idUserRequested
ııB Q
)
ııQ R
{
ˆˆ 	
lock
˜˜ 
(
˜˜ 

lockObject
˜˜ 
)
˜˜ 
{
¯¯ .
 ConsultInformationImplementation
˘˘ 0 
consultInformation
˘˘1 C
=
˘˘D E
new
˘˘F I.
 ConsultInformationImplementation
˘˘J j
(
˘˘j k
)
˘˘k l
;
˘˘l m
var
˙˙ 
userConsulted
˙˙ !
=
˙˙" # 
consultInformation
˙˙$ 6
.
˙˙6 7#
ConsultUserByIdPlayer
˙˙7 L
(
˙˙L M 
idPLayerRequesting
˙˙M _
)
˙˙_ `
;
˙˙` a
try
˚˚ 
{
¸¸ 
if
˝˝ 
(
˝˝ 
userConsulted
˝˝ %
.
˝˝% &
	CodeEvent
˝˝& /
==
˝˝0 2!
ExceptionDictionary
˝˝3 F
.
˝˝F G
SUCCESFULL_EVENT
˝˝G W
)
˝˝W X
{
˛˛ 
var
ˇˇ 
playerConsulted
ˇˇ +
=
ˇˇ, - 
consultInformation
ˇˇ. @
.
ˇˇ@ A#
ConsultPlayerByIdUser
ˇˇA V
(
ˇˇV W
idUserRequested
ˇˇW f
)
ˇˇf g
;
ˇˇg h
if
ÄÄ 
(
ÄÄ 
playerConsulted
ÄÄ +
.
ÄÄ+ ,
	CodeEvent
ÄÄ, 5
==
ÄÄ6 8!
ExceptionDictionary
ÄÄ9 L
.
ÄÄL M
SUCCESFULL_EVENT
ÄÄM ]
)
ÄÄ] ^
{
ÅÅ 
var
ÇÇ 
affectedRows
ÇÇ  ,
=
ÇÇ- .)
FriendsManagerDataOperation
ÇÇ/ J
.
ÇÇJ K
SendFriendRequest
ÇÇK \
(
ÇÇ\ ] 
idPLayerRequesting
ÇÇ] o
,
ÇÇo p
playerConsultedÇÇq Ä
.ÇÇÄ Å
ObjectSavedÇÇÅ å
.ÇÇå ç
IdPlayerÇÇç ï
)ÇÇï ñ
;ÇÇñ ó
if
ÉÉ 
(
ÉÉ  
affectedRows
ÉÉ  ,
.
ÉÉ, -
	CodeEvent
ÉÉ- 6
==
ÉÉ7 9!
ExceptionDictionary
ÉÉ: M
.
ÉÉM N
SUCCESFULL_EVENT
ÉÉN ^
)
ÉÉ^ _
{
ÑÑ )
NotifyResponseRequestAction
ÖÖ  ;
(
ÖÖ; <
idUserRequested
ÖÖ< K
,
ÖÖK L
userConsulted
ÖÖM Z
.
ÖÖZ [
ObjectSaved
ÖÖ[ f
,
ÖÖf g!
SEND_FRIEND_REQUEST
ÖÖh {
)
ÖÖ{ |
;
ÖÖ| }
}
ÜÜ 
}
áá 
}
àà 
}
ââ 
catch
ää 
(
ää 1
#CommunicationObjectFaultedException
ää :
ex
ää; =
)
ää= >
{
ãã 
var
åå 
idUserBanning
åå %
=
åå& ' 
consultInformation
åå( :
.
åå: ;#
ConsultUserByIdPlayer
åå; P
(
ååP Q 
idPLayerRequesting
ååQ c
)
ååc d
.
ååd e
ObjectSaved
ååe p
.
ååp q
IdUser
ååq w
;
ååw x"
ChannelAdministrator
çç (
.
çç( )&
HandleCommunicationIssue
çç) A
(
ççA B
idUserBanning
ççB O
,
ççO P"
ChannelAdministrator
ççQ e
.
ççe f&
FRIEND_MANAGER_EXCEPTION
ççf ~
)
çç~ 
;çç Ä
ExceptionHandler
éé $
.
éé$ %
LogException
éé% 1
(
éé1 2
ex
éé2 4
,
éé4 5!
ExceptionDictionary
éé6 I
.
ééI J
FATAL_EXCEPTION
ééJ Y
)
ééY Z
;
ééZ [
}
èè 
catch
êê 
(
êê 
TimeoutException
êê '
ex
êê( *
)
êê* +
{
ëë 
var
íí 
idUserBanning
íí %
=
íí& ' 
consultInformation
íí( :
.
íí: ;#
ConsultUserByIdPlayer
íí; P
(
ííP Q 
idPLayerRequesting
ííQ c
)
ííc d
.
ííd e
ObjectSaved
ííe p
.
ííp q
IdUser
ííq w
;
ííw x"
ChannelAdministrator
ìì (
.
ìì( )&
HandleCommunicationIssue
ìì) A
(
ììA B
idUserBanning
ììB O
,
ììO P"
ChannelAdministrator
ììQ e
.
ììe f&
FRIEND_MANAGER_EXCEPTION
ììf ~
)
ìì~ 
;ìì Ä
ExceptionHandler
îî $
.
îî$ %
LogException
îî% 1
(
îî1 2
ex
îî2 4
,
îî4 5!
ExceptionDictionary
îî6 I
.
îîI J
FATAL_EXCEPTION
îîJ Y
)
îîY Z
;
îîZ [
}
ïï 
catch
ññ 
(
ññ $
CommunicationException
ññ -
ex
ññ. 0
)
ññ0 1
{
óó 
var
òò 
idUserBanning
òò %
=
òò& ' 
consultInformation
òò( :
.
òò: ;#
ConsultUserByIdPlayer
òò; P
(
òòP Q 
idPLayerRequesting
òòQ c
)
òòc d
.
òòd e
ObjectSaved
òòe p
.
òòp q
IdUser
òòq w
;
òòw x"
ChannelAdministrator
ôô (
.
ôô( )&
HandleCommunicationIssue
ôô) A
(
ôôA B
idUserBanning
ôôB O
,
ôôO P"
ChannelAdministrator
ôôQ e
.
ôôe f&
FRIEND_MANAGER_EXCEPTION
ôôf ~
)
ôô~ 
;ôô Ä
ExceptionHandler
öö $
.
öö$ %
LogException
öö% 1
(
öö1 2
ex
öö2 4
,
öö4 5!
ExceptionDictionary
öö6 I
.
ööI J
FATAL_EXCEPTION
ööJ Y
)
ööY Z
;
ööZ [
}
õõ 
catch
úú 
(
úú '
InvalidOperationException
úú 0
ex
úú1 3
)
úú3 4
{
ùù 
var
ûû 
idUserBanning
ûû %
=
ûû& ' 
consultInformation
ûû( :
.
ûû: ;#
ConsultUserByIdPlayer
ûû; P
(
ûûP Q 
idPLayerRequesting
ûûQ c
)
ûûc d
.
ûûd e
ObjectSaved
ûûe p
.
ûûp q
IdUser
ûûq w
;
ûûw x"
ChannelAdministrator
üü (
.
üü( )&
HandleCommunicationIssue
üü) A
(
üüA B
idUserBanning
üüB O
,
üüO P"
ChannelAdministrator
üüQ e
.
üüe f&
FRIEND_MANAGER_EXCEPTION
üüf ~
)
üü~ 
;üü Ä
ExceptionHandler
†† $
.
††$ %
LogException
††% 1
(
††1 2
ex
††2 4
,
††4 5!
ExceptionDictionary
††6 I
.
††I J
FATAL_EXCEPTION
††J Y
)
††Y Z
;
††Z [
}
°° 
}
¢¢ 
}
££ 	
public
•• 
void
•• !
AcceptFriendRequest
•• '
(
••' (
int
••( +
idPlayerAccepting
••, =
,
••= >
int
••? B
idUserRequesting
••C S
)
••S T
{
¶¶ 	
lock
ßß 
(
ßß 

lockObject
ßß 
)
ßß 
{
®® .
 ConsultInformationImplementation
©© 0 
consultInformation
©©1 C
=
©©D E
new
©©F I.
 ConsultInformationImplementation
©©J j
(
©©j k
)
©©k l
;
©©l m
var
™™ 
userConsulted
™™ !
=
™™" # 
consultInformation
™™$ 6
.
™™6 7#
ConsultUserByIdPlayer
™™7 L
(
™™L M
idPlayerAccepting
™™M ^
)
™™^ _
;
™™_ `
try
´´ 
{
¨¨ 
if
≠≠ 
(
≠≠ 
userConsulted
≠≠ %
.
≠≠% &
	CodeEvent
≠≠& /
==
≠≠0 2!
ExceptionDictionary
≠≠3 F
.
≠≠F G
SUCCESFULL_EVENT
≠≠G W
)
≠≠W X
{
ÆÆ 
var
ØØ 
playerConsulted
ØØ +
=
ØØ, - 
consultInformation
ØØ. @
.
ØØ@ A#
ConsultPlayerByIdUser
ØØA V
(
ØØV W
idUserRequesting
ØØW g
)
ØØg h
;
ØØh i
if
∞∞ 
(
∞∞ 
playerConsulted
∞∞ +
.
∞∞+ ,
	CodeEvent
∞∞, 5
==
∞∞6 8!
ExceptionDictionary
∞∞9 L
.
∞∞L M
SUCCESFULL_EVENT
∞∞M ]
)
∞∞] ^
{
±± 
var
≤≤ 
affectedRows
≤≤  ,
=
≤≤- .)
FriendsManagerDataOperation
≤≤/ J
.
≤≤J K!
AcceptFriendRequest
≤≤K ^
(
≤≤^ _
idPlayerAccepting
≤≤_ p
,
≤≤p q
playerConsulted≤≤r Å
.≤≤Å Ç
ObjectSaved≤≤Ç ç
.≤≤ç é
IdPlayer≤≤é ñ
)≤≤ñ ó
;≤≤ó ò
if
≥≥ 
(
≥≥  
affectedRows
≥≥  ,
.
≥≥, -
	CodeEvent
≥≥- 6
==
≥≥7 9!
ExceptionDictionary
≥≥: M
.
≥≥M N
SUCCESFULL_EVENT
≥≥N ^
)
≥≥^ _
{
¥¥ )
NotifyResponseRequestAction
µµ  ;
(
µµ; <
idUserRequesting
µµ< L
,
µµL M
userConsulted
µµN [
.
µµ[ \
ObjectSaved
µµ\ g
,
µµg h#
ACCEPT_FRIEND_REQUEST
µµi ~
)
µµ~ 
;µµ Ä
}
∂∂ 
}
∑∑ 
}
∏∏ 
}
ππ 
catch
∫∫ 
(
∫∫ 1
#CommunicationObjectFaultedException
∫∫ :
ex
∫∫; =
)
∫∫= >
{
ªª 
var
ºº 
idUserBanning
ºº %
=
ºº& ' 
consultInformation
ºº( :
.
ºº: ;#
ConsultUserByIdPlayer
ºº; P
(
ººP Q
idPlayerAccepting
ººQ b
)
ººb c
.
ººc d
ObjectSaved
ººd o
.
ººo p
IdUser
ººp v
;
ººv w"
ChannelAdministrator
ΩΩ (
.
ΩΩ( )&
HandleCommunicationIssue
ΩΩ) A
(
ΩΩA B
idUserBanning
ΩΩB O
,
ΩΩO P"
ChannelAdministrator
ΩΩQ e
.
ΩΩe f&
FRIEND_MANAGER_EXCEPTION
ΩΩf ~
)
ΩΩ~ 
;ΩΩ Ä
ExceptionHandler
ææ $
.
ææ$ %
LogException
ææ% 1
(
ææ1 2
ex
ææ2 4
,
ææ4 5!
ExceptionDictionary
ææ6 I
.
ææI J
FATAL_EXCEPTION
ææJ Y
)
ææY Z
;
ææZ [
}
øø 
catch
¿¿ 
(
¿¿ 
TimeoutException
¿¿ '
ex
¿¿( *
)
¿¿* +
{
¡¡ 
var
¬¬ 
idUserBanning
¬¬ %
=
¬¬& ' 
consultInformation
¬¬( :
.
¬¬: ;#
ConsultUserByIdPlayer
¬¬; P
(
¬¬P Q
idPlayerAccepting
¬¬Q b
)
¬¬b c
.
¬¬c d
ObjectSaved
¬¬d o
.
¬¬o p
IdUser
¬¬p v
;
¬¬v w"
ChannelAdministrator
√√ (
.
√√( )&
HandleCommunicationIssue
√√) A
(
√√A B
idUserBanning
√√B O
,
√√O P"
ChannelAdministrator
√√Q e
.
√√e f&
FRIEND_MANAGER_EXCEPTION
√√f ~
)
√√~ 
;√√ Ä
ExceptionHandler
ƒƒ $
.
ƒƒ$ %
LogException
ƒƒ% 1
(
ƒƒ1 2
ex
ƒƒ2 4
,
ƒƒ4 5!
ExceptionDictionary
ƒƒ6 I
.
ƒƒI J
FATAL_EXCEPTION
ƒƒJ Y
)
ƒƒY Z
;
ƒƒZ [
}
≈≈ 
catch
∆∆ 
(
∆∆ $
CommunicationException
∆∆ -
ex
∆∆. 0
)
∆∆0 1
{
«« 
var
»» 
idUserBanning
»» %
=
»»& ' 
consultInformation
»»( :
.
»»: ;#
ConsultUserByIdPlayer
»»; P
(
»»P Q
idPlayerAccepting
»»Q b
)
»»b c
.
»»c d
ObjectSaved
»»d o
.
»»o p
IdUser
»»p v
;
»»v w"
ChannelAdministrator
…… (
.
……( )&
HandleCommunicationIssue
……) A
(
……A B
idUserBanning
……B O
,
……O P"
ChannelAdministrator
……Q e
.
……e f&
FRIEND_MANAGER_EXCEPTION
……f ~
)
……~ 
;…… Ä
ExceptionHandler
   $
.
  $ %
LogException
  % 1
(
  1 2
ex
  2 4
,
  4 5!
ExceptionDictionary
  6 I
.
  I J
FATAL_EXCEPTION
  J Y
)
  Y Z
;
  Z [
}
ÀÀ 
catch
ÃÃ 
(
ÃÃ '
InvalidOperationException
ÃÃ 0
ex
ÃÃ1 3
)
ÃÃ3 4
{
ÕÕ 
var
ŒŒ 
idUserBanning
ŒŒ %
=
ŒŒ& ' 
consultInformation
ŒŒ( :
.
ŒŒ: ;#
ConsultUserByIdPlayer
ŒŒ; P
(
ŒŒP Q
idPlayerAccepting
ŒŒQ b
)
ŒŒb c
.
ŒŒc d
ObjectSaved
ŒŒd o
.
ŒŒo p
IdUser
ŒŒp v
;
ŒŒv w"
ChannelAdministrator
œœ (
.
œœ( )&
HandleCommunicationIssue
œœ) A
(
œœA B
idUserBanning
œœB O
,
œœO P"
ChannelAdministrator
œœQ e
.
œœe f&
FRIEND_MANAGER_EXCEPTION
œœf ~
)
œœ~ 
;œœ Ä
ExceptionHandler
–– $
.
––$ %
LogException
––% 1
(
––1 2
ex
––2 4
,
––4 5!
ExceptionDictionary
––6 I
.
––I J
FATAL_EXCEPTION
––J Y
)
––Y Z
;
––Z [
}
—— 
}
““ 
}
”” 	
private
÷÷ 
void
÷÷ )
NotifyResponseRequestAction
÷÷ 0
(
÷÷0 1
int
÷÷1 4
idUserToRespond
÷÷5 D
,
÷÷D E
UserPojo
÷÷F N
userConsulted
÷÷O \
,
÷÷\ ]
int
÷÷^ a
actionEvent
÷÷b m
)
÷÷m n
{
◊◊ 	
try
ÿÿ 
{
ŸŸ 
var
€€ 
channelSaved
€€  
=
€€! "%
FriendManagerDictionary
€€# :
.
€€: ;"
GetChannelFriendUser
€€; O
(
€€O P
idUserToRespond
€€P _
)
€€_ `
;
€€` a
if
‹‹ 
(
‹‹ 
channelSaved
‹‹  
!=
‹‹! #
null
‹‹$ (
)
‹‹( )
{
›› 
channelSaved
ﬁﬁ  
.
ﬁﬁ  ! 
GetCallbackChannel
ﬁﬁ! 3
<
ﬁﬁ3 4+
IFriendManagerActionsCallBack
ﬁﬁ4 Q
>
ﬁﬁQ R
(
ﬁﬁR S
)
ﬁﬁS T
.
ﬁﬁT U#
ResponseRequestAction
ﬁﬁU j
(
ﬁﬁj k
userConsulted
ﬁﬁk x
.
ﬁﬁx y
IdUser
ﬁﬁy 
,ﬁﬁ Ä
actionEventﬁﬁÅ å
,ﬁﬁå ç
userConsultedﬁﬁé õ
.ﬁﬁõ ú
UserNameﬁﬁú §
)ﬁﬁ§ •
;ﬁﬁ• ¶
}
ﬂﬂ 
}
‡‡ 
catch
·· 
(
·· 1
#CommunicationObjectFaultedException
·· 6
ex
··7 9
)
··9 :
{
‚‚ "
ChannelAdministrator
„„ $
.
„„$ %&
HandleCommunicationIssue
„„% =
(
„„= >
idUserToRespond
„„> M
,
„„M N"
ChannelAdministrator
„„O c
.
„„c d&
FRIEND_MANAGER_EXCEPTION
„„d |
)
„„| }
;
„„} ~
ExceptionHandler
‰‰  
.
‰‰  !
LogException
‰‰! -
(
‰‰- .
ex
‰‰. 0
,
‰‰0 1!
ExceptionDictionary
‰‰2 E
.
‰‰E F
FATAL_EXCEPTION
‰‰F U
)
‰‰U V
;
‰‰V W
}
ÂÂ 
catch
ÊÊ 
(
ÊÊ 
TimeoutException
ÊÊ #
ex
ÊÊ$ &
)
ÊÊ& '
{
ÁÁ "
ChannelAdministrator
ËË $
.
ËË$ %&
HandleCommunicationIssue
ËË% =
(
ËË= >
idUserToRespond
ËË> M
,
ËËM N"
ChannelAdministrator
ËËO c
.
ËËc d&
FRIEND_MANAGER_EXCEPTION
ËËd |
)
ËË| }
;
ËË} ~
ExceptionHandler
ÈÈ  
.
ÈÈ  !
LogException
ÈÈ! -
(
ÈÈ- .
ex
ÈÈ. 0
,
ÈÈ0 1!
ExceptionDictionary
ÈÈ2 E
.
ÈÈE F
FATAL_EXCEPTION
ÈÈF U
)
ÈÈU V
;
ÈÈV W
}
ÍÍ 
catch
ÎÎ 
(
ÎÎ $
CommunicationException
ÎÎ )
ex
ÎÎ* ,
)
ÎÎ, -
{
ÏÏ "
ChannelAdministrator
ÌÌ $
.
ÌÌ$ %&
HandleCommunicationIssue
ÌÌ% =
(
ÌÌ= >
idUserToRespond
ÌÌ> M
,
ÌÌM N"
ChannelAdministrator
ÌÌO c
.
ÌÌc d&
FRIEND_MANAGER_EXCEPTION
ÌÌd |
)
ÌÌ| }
;
ÌÌ} ~
ExceptionHandler
ÓÓ  
.
ÓÓ  !
LogException
ÓÓ! -
(
ÓÓ- .
ex
ÓÓ. 0
,
ÓÓ0 1!
ExceptionDictionary
ÓÓ2 E
.
ÓÓE F
FATAL_EXCEPTION
ÓÓF U
)
ÓÓU V
;
ÓÓV W
}
ÔÔ 
catch
 
(
 '
InvalidOperationException
 ,
ex
- /
)
/ 0
{
ÒÒ "
ChannelAdministrator
ÚÚ $
.
ÚÚ$ %&
HandleCommunicationIssue
ÚÚ% =
(
ÚÚ= >
idUserToRespond
ÚÚ> M
,
ÚÚM N"
ChannelAdministrator
ÚÚO c
.
ÚÚc d&
FRIEND_MANAGER_EXCEPTION
ÚÚd |
)
ÚÚ| }
;
ÚÚ} ~
ExceptionHandler
ÛÛ  
.
ÛÛ  !
LogException
ÛÛ! -
(
ÛÛ- .
ex
ÛÛ. 0
,
ÛÛ0 1!
ExceptionDictionary
ÛÛ2 E
.
ÛÛE F
FATAL_EXCEPTION
ÛÛF U
)
ÛÛU V
;
ÛÛV W
}
ÙÙ 
}
ıı 	
}
¯¯ 
}˘˘ Ï∂
òC:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameServer\JeopardyGame.Service\ServiceImplementation\GameActionsImplementation.cs
	namespace 	
JeopardyGame
 
. 
Service 
. !
ServiceImplementation 4
{ 
public 

partial 
class %
GameActionsImplementation 2
:3 4
IGameActions5 A
{ 
private 
static 
readonly 
object  &

lockObject' 1
=2 3
new4 7
object8 >
(> ?
)? @
;@ A
public 
int 
RenewGameCallBack $
($ %
int% (
roomCode) 1
,1 2
int3 6
idUser7 =
)= >
{ 	
int 
resultToReturn 
=  
ExceptionDictionary! 4
.4 5
UNSUCCESFULL_EVENT5 G
;G H
lock 
( 

lockObject 
) 
{ 
try 
{ 
if 
( 
roomCode 
!=  "
$num# $
&&% '
idUser( .
!=/ 1
$num2 3
)3 4
{ !
ActiveGamesDictionary -
.- .
RenewGameCallBack. ?
(? @
roomCode@ H
,H I
idUserJ P
,P Q
OperationContextR b
.b c
Currentc j
)j k
;k l
resultToReturn &
=' (
ExceptionDictionary) <
.< =
SUCCESFULL_EVENT= M
;M N
} 
}   
catch!! 
(!! /
#CommunicationObjectFaultedException!! :
ex!!; =
)!!= >
{""  
ChannelAdministrator## (
.##( )$
HandleCommunicationIssue##) A
(##A B
idUser##B H
,##H I 
ChannelAdministrator##J ^
.##^ _
GAME_EXCEPTION##_ m
)##m n
;##n o
ExceptionHandler$$ $
.$$$ %
LogException$$% 1
($$1 2
ex$$2 4
,$$4 5
ExceptionDictionary$$6 I
.$$I J
FATAL_EXCEPTION$$J Y
)$$Y Z
;$$Z [
}%% 
catch&& 
(&& 
TimeoutException&& '
ex&&( *
)&&* +
{''  
ChannelAdministrator(( (
.((( )$
HandleCommunicationIssue(() A
(((A B
idUser((B H
,((H I 
ChannelAdministrator((J ^
.((^ _
GAME_EXCEPTION((_ m
)((m n
;((n o
ExceptionHandler)) $
.))$ %
LogException))% 1
())1 2
ex))2 4
,))4 5
ExceptionDictionary))6 I
.))I J
FATAL_EXCEPTION))J Y
)))Y Z
;))Z [
}** 
catch++ 
(++ "
CommunicationException++ -
ex++. 0
)++0 1
{,,  
ChannelAdministrator-- (
.--( )$
HandleCommunicationIssue--) A
(--A B
idUser--B H
,--H I 
ChannelAdministrator--J ^
.--^ _
GAME_EXCEPTION--_ m
)--m n
;--n o
ExceptionHandler.. $
...$ %
LogException..% 1
(..1 2
ex..2 4
,..4 5
ExceptionDictionary..6 I
...I J
FATAL_EXCEPTION..J Y
)..Y Z
;..Z [
}// 
catch00 
(00 %
InvalidOperationException00 0
ex001 3
)003 4
{11  
ChannelAdministrator22 (
.22( )$
HandleCommunicationIssue22) A
(22A B
idUser22B H
,22H I 
ChannelAdministrator22J ^
.22^ _
GAME_EXCEPTION22_ m
)22m n
;22n o
ExceptionHandler33 $
.33$ %
LogException33% 1
(331 2
ex332 4
,334 5
ExceptionDictionary336 I
.33I J
FATAL_EXCEPTION33J Y
)33Y Z
;33Z [
}44 
}55 
return66 
resultToReturn66 !
;66! "
}77 	
public99 
void99 #
SubscribeToGameCallBack99 +
(99+ ,
int99, /
roomCode990 8
,998 9
int99: =
idUserSubscribing99> O
,99O P
int99Q T
idAvatar99U ]
)99] ^
{:: 	
lock;; 
(;; 

lockObject;; 
);; 
{<< 
var== 
lobbyOfGame== 
===  !!
GameLobbiesDictionary==" 7
.==7 8"
GetSpecificActiveLobby==8 N
(==N O
roomCode==O W
)==W X
;==X Y
var>> $
playerOnLobbySubscribing>> ,
=>>- .
lobbyOfGame>>/ :
.>>: ;
listOfPlayerInLobby>>; N
.>>N O
Find>>O S
(>>S T
u>>T U
=>>>V X
u>>Y Z
.>>Z [
idUser>>[ a
==>>b d
idUserSubscribing>>e v
)>>v w
;>>w x
try?? 
{?? 
if@@ 
(@@ $
playerOnLobbySubscribing@@ 0
!=@@1 3
null@@4 8
)@@8 9
{AA 
PlayerPlayingInGameBB +
playerJoiningGameBB, =
=BB> ?
newBB@ C
(BBC D
)BBD E
{CC 
IdUserDD "
=DD# $
idUserSubscribingDD% 6
,DD6 7
IdPlayerEE $
=EE% &$
playerOnLobbySubscribingEE' ?
.EE? @
idPlayerEE@ H
,EEH I
UserNameFF $
=FF% &$
playerOnLobbySubscribingFF' ?
.FF? @
userNameFF@ H
,FFH I 
NumberOfPlayerInGameGG 0
=GG1 2$
playerOnLobbySubscribingGG3 K
.GGK L!
numberOfPlayerInLobbyGGL a
,GGa b
SideTeamHH $
=HH% &$
playerOnLobbySubscribingHH' ?
.HH? @
sideTeamHH@ H
,HHH I
TurnOfPlayerII (
=II) *$
playerOnLobbySubscribingII+ C
.IIC D!
numberOfPlayerInLobbyIID Y
,IIY Z
DidBetJJ "
=JJ# $
falseJJ% *
,JJ* +!
DidAnswerLastQuestionKK 1
=KK2 3
falseKK4 9
,KK9 :
FinalPointsLL '
=LL( )
$numLL* +
,LL+ ,
IdAvatarMM $
=MM% &
idAvatarMM' /
,MM/ 0
gameCallbackChannelNN /
=NN0 1
OperationContextNN2 B
.NNB C
CurrentNNC J
}OO 
;OO 
ifQQ 
(QQ !
ActiveGamesDictionaryQQ 1
.QQ1 2!
GetSpecificActiveGameQQ2 G
(QQG H
roomCodeQQH P
)QQP Q
==QQR T
nullQQU Y
)QQY Z
{RR 
ListSS  
<SS  !
PlayerPlayingInGameSS! 4
>SS4 5
playersPlayingSS6 D
=SSE F
newSSG J
(SSJ K
)SSK L
{TT 
playerJoiningGameUU  1
}VV 
;VV !
ActiveGamesDictionaryWW 1
.WW1 2(
RegisterNewGameIndDictionaryWW2 N
(WWN O
roomCodeWWO W
,WWW X
playersPlayingWWY g
)WWg h
;WWh i
}XX 
elseYY 
{ZZ 
var[[ 
activeCurrentGame[[  1
=[[2 3!
ActiveGamesDictionary[[4 I
.[[I J!
GetSpecificActiveGame[[J _
([[_ `
roomCode[[` h
)[[h i
;[[i j
activeCurrentGame\\ -
.\\- .
Add\\. 1
(\\1 2
playerJoiningGame\\2 C
)\\C D
;\\D E
}]] 
var^^ 
activeGameStatus^^ ,
=^^- .!
ActiveGamesDictionary^^/ D
.^^D E!
GetSpecificActiveGame^^E Z
(^^Z [
roomCode^^[ c
)^^c d
;^^d e
if__ 
(__ 
activeGameStatus__ ,
.__, -
Count__- 2
==__3 5
$num__6 7
&&__8 :
activeGameStatus__; K
.__K L
Exists__L R
(__R S
pl__S U
=>__V X
pl__Y [
.__[ \
SideTeam__\ d
==__e g
$num__h i
)__i j
)__j k
{`` !
ActiveGamesDictionaryaa 1
.aa1 2"
RearrangeTurnsForTeamsaa2 H
(aaH I
roomCodeaaI Q
)aaQ R
;aaR S
}bb 
varcc 
playersPlayinStatuscc /
=cc0 1!
ActiveGamesDictionarycc2 G
.ccG H!
GetSpecificActiveGameccH ]
(cc] ^
roomCodecc^ f
)ccf g
;ccg h
ifdd 
(dd 
lobbyOfGamedd '
.dd' (
listOfPlayerInLobbydd( ;
.dd; <
Countdd< A
==ddB D
playersPlayinStatusddE X
.ddX Y
CountddY ^
)dd^ _
{ee "
NotifyEveryBodyIsReadyff 2
(ff2 3
playersPlayinStatusff3 F
)ffF G
;ffG H
}gg 
}hh 
}ii 
catchjj 
(jj /
#CommunicationObjectFaultedExceptionjj :
exjj; =
)jj= >
{kk  
ChannelAdministratorll (
.ll( )$
HandleCommunicationIssuell) A
(llA B
idUserSubscribingllB S
,llS T 
ChannelAdministratorllU i
.lli j
GAME_EXCEPTIONllj x
)llx y
;lly z
ExceptionHandlermm $
.mm$ %
LogExceptionmm% 1
(mm1 2
exmm2 4
,mm4 5
ExceptionDictionarymm6 I
.mmI J
FATAL_EXCEPTIONmmJ Y
)mmY Z
;mmZ [
}nn 
catchoo 
(oo 
TimeoutExceptionoo '
exoo( *
)oo* +
{pp  
ChannelAdministratorqq (
.qq( )$
HandleCommunicationIssueqq) A
(qqA B
idUserSubscribingqqB S
,qqS T 
ChannelAdministratorqqU i
.qqi j
GAME_EXCEPTIONqqj x
)qqx y
;qqy z
ExceptionHandlerrr $
.rr$ %
LogExceptionrr% 1
(rr1 2
exrr2 4
,rr4 5
ExceptionDictionaryrr6 I
.rrI J
FATAL_EXCEPTIONrrJ Y
)rrY Z
;rrZ [
}ss 
catchtt 
(tt "
CommunicationExceptiontt -
extt. 0
)tt0 1
{uu  
ChannelAdministratorvv (
.vv( )$
HandleCommunicationIssuevv) A
(vvA B
idUserSubscribingvvB S
,vvS T 
ChannelAdministratorvvU i
.vvi j
GAME_EXCEPTIONvvj x
)vvx y
;vvy z
ExceptionHandlerww $
.ww$ %
LogExceptionww% 1
(ww1 2
exww2 4
,ww4 5
ExceptionDictionaryww6 I
.wwI J
FATAL_EXCEPTIONwwJ Y
)wwY Z
;wwZ [
}xx 
catchyy 
(yy %
InvalidOperationExceptionyy 0
exyy1 3
)yy3 4
{zz  
ChannelAdministrator{{ (
.{{( )$
HandleCommunicationIssue{{) A
({{A B
idUserSubscribing{{B S
,{{S T 
ChannelAdministrator{{U i
.{{i j
GAME_EXCEPTION{{j x
){{x y
;{{y z
ExceptionHandler|| $
.||$ %
LogException||% 1
(||1 2
ex||2 4
,||4 5
ExceptionDictionary||6 I
.||I J
FATAL_EXCEPTION||J Y
)||Y Z
;||Z [
}}} 
}~~ 
} 	
private
ÅÅ 
void
ÅÅ $
NotifyEveryBodyIsReady
ÅÅ +
(
ÅÅ+ ,
List
ÅÅ, 0
<
ÅÅ0 1!
PlayerPlayingInGame
ÅÅ1 D
>
ÅÅD E
playersPlaying
ÅÅF T
)
ÅÅT U
{
ÇÇ 	
List
ÉÉ 
<
ÉÉ &
PlayerInGameDataContract
ÉÉ )
>
ÉÉ) *
playersInGame
ÉÉ+ 8
=
ÉÉ9 :1
#GameActionsOperationsImplementation
ÉÉ; ^
.
ÉÉ^ _-
GetPlayerInGameDataContractList
ÉÉ_ ~
(
ÉÉ~ 
playersPlayingÉÉ ç
)ÉÉç é
;ÉÉé è
foreach
ÑÑ 
(
ÑÑ 
var
ÑÑ 
player
ÑÑ 
in
ÑÑ  "
playersPlaying
ÑÑ# 1
)
ÑÑ1 2
{
ÖÖ 
try
ÜÜ 
{
áá 
player
àà 
.
àà !
gameCallbackChannel
àà .
.
àà. / 
GetCallbackChannel
àà/ A
<
ààA B"
IGameActionsCallBack
ààB V
>
ààV W
(
ààW X
)
ààX Y
.
ààY Z3
%ReceiveNotificationEverybodyIsPlaying
ààZ 
(àà Ä
trueààÄ Ñ
,ààÑ Ö
playerààÜ å
.ààå ç
TurnOfPlayerààç ô
,ààô ö
playersInGameààõ ®
)àà® ©
;àà© ™
}
ââ 
catch
ää 
(
ää 1
#CommunicationObjectFaultedException
ää :
ex
ää; =
)
ää= >
{
ãã "
ChannelAdministrator
åå (
.
åå( )&
HandleCommunicationIssue
åå) A
(
ååA B
player
ååB H
.
ååH I
IdUser
ååI O
,
ååO P"
ChannelAdministrator
ååQ e
.
ååe f
GAME_EXCEPTION
ååf t
)
ååt u
;
ååu v
ExceptionHandler
çç $
.
çç$ %
LogException
çç% 1
(
çç1 2
ex
çç2 4
,
çç4 5!
ExceptionDictionary
çç6 I
.
ççI J
FATAL_EXCEPTION
ççJ Y
)
ççY Z
;
ççZ [
}
éé 
catch
èè 
(
èè 
TimeoutException
èè '
ex
èè( *
)
èè* +
{
êê "
ChannelAdministrator
ëë (
.
ëë( )&
HandleCommunicationIssue
ëë) A
(
ëëA B
player
ëëB H
.
ëëH I
IdUser
ëëI O
,
ëëO P"
ChannelAdministrator
ëëQ e
.
ëëe f
GAME_EXCEPTION
ëëf t
)
ëët u
;
ëëu v
ExceptionHandler
íí $
.
íí$ %
LogException
íí% 1
(
íí1 2
ex
íí2 4
,
íí4 5!
ExceptionDictionary
íí6 I
.
ííI J
FATAL_EXCEPTION
ííJ Y
)
ííY Z
;
ííZ [
}
ìì 
catch
îî 
(
îî $
CommunicationException
îî -
ex
îî. 0
)
îî0 1
{
ïï "
ChannelAdministrator
ññ (
.
ññ( )&
HandleCommunicationIssue
ññ) A
(
ññA B
player
ññB H
.
ññH I
IdUser
ññI O
,
ññO P"
ChannelAdministrator
ññQ e
.
ññe f
GAME_EXCEPTION
ññf t
)
ññt u
;
ññu v
ExceptionHandler
óó $
.
óó$ %
LogException
óó% 1
(
óó1 2
ex
óó2 4
,
óó4 5!
ExceptionDictionary
óó6 I
.
óóI J
FATAL_EXCEPTION
óóJ Y
)
óóY Z
;
óóZ [
}
òò 
catch
ôô 
(
ôô '
InvalidOperationException
ôô 0
ex
ôô1 3
)
ôô3 4
{
öö "
ChannelAdministrator
õõ (
.
õõ( )&
HandleCommunicationIssue
õõ) A
(
õõA B
player
õõB H
.
õõH I
IdUser
õõI O
,
õõO P"
ChannelAdministrator
õõQ e
.
õõe f
GAME_EXCEPTION
õõf t
)
õõt u
;
õõu v
ExceptionHandler
úú $
.
úú$ %
LogException
úú% 1
(
úú1 2
ex
úú2 4
,
úú4 5!
ExceptionDictionary
úú6 I
.
úúI J
FATAL_EXCEPTION
úúJ Y
)
úúY Z
;
úúZ [
}
ùù 
}
ûû 
}
üü 	
}
°° 
public
££ 

partial
££ 
class
££ 1
#GameActionsOperationsImplementation
££ <
:
££= >$
IGameActionsOperations
££? U
{
§§ 
private
•• 
const
•• 
int
•• 
ERROR
•• 
=
••  !
$num
••" #
;
••# $
private
¶¶ 
const
¶¶ 
int
¶¶ 
NULL_INT_VALUE
¶¶ (
=
¶¶) *
$num
¶¶+ ,
;
¶¶, -
private
ßß 
const
ßß 
int
ßß 
	ROUND_ONE
ßß #
=
ßß$ %
$num
ßß& '
;
ßß' (
private
®® 
const
®® 
int
®® 
	ROUND_TWO
®® #
=
®®$ %
$num
®®& '
;
®®' (
private
©© 
const
©© 
int
©© 
ROUND_THREE
©© %
=
©©& '
$num
©©( )
;
©©) *
private
™™ 
const
™™ 
int
™™ 

FIRST_TURN
™™ $
=
™™% &
$num
™™' (
;
™™( )
private
´´ 
static
´´ 
readonly
´´ 
Object
´´  &

objectLock
´´' 1
=
´´2 3
new
´´4 7
(
´´7 8
)
´´8 9
;
´´9 :
public
≠≠ 
void
≠≠ )
UnSubscribeFromGameCallBack
≠≠ /
(
≠≠/ 0
int
≠≠0 3
roomCode
≠≠4 <
,
≠≠< =
int
≠≠> A!
idUserUnsubscribing
≠≠B U
)
≠≠U V
{
ÆÆ 	
lock
ØØ 
(
ØØ 

objectLock
ØØ 
)
ØØ 
{
∞∞ 
if
±± 
(
±± 
roomCode
±± 
!=
±± 
NULL_INT_VALUE
±±  .
&&
±±/ 1!
idUserUnsubscribing
±±2 E
!=
±±F H
$num
±±I J
)
±±J K
{
≤≤ 
var
≥≥ 

activeGame
≥≥ "
=
≥≥# $#
ActiveGamesDictionary
≥≥% :
.
≥≥: ;#
GetSpecificActiveGame
≥≥; P
(
≥≥P Q
roomCode
≥≥Q Y
)
≥≥Y Z
;
≥≥Z [
if
¥¥ 
(
¥¥ 

activeGame
¥¥ "
!=
¥¥# %
null
¥¥& *
)
¥¥* +
{
µµ 
try
∂∂ 
{
∑∑ 
var
∏∏ 
playerLeaving
∏∏  -
=
∏∏. /

activeGame
∏∏0 :
.
∏∏: ;
Find
∏∏; ?
(
∏∏? @
player
∏∏@ F
=>
∏∏G I
player
∏∏J P
.
∏∏P Q
IdUser
∏∏Q W
==
∏∏X Z!
idUserUnsubscribing
∏∏[ n
)
∏∏n o
;
∏∏o p
if
ππ 
(
ππ 
playerLeaving
ππ ,
!=
ππ- /
null
ππ0 4
)
ππ4 5
{
∫∫ 

activeGame
ªª  *
.
ªª* +
Remove
ªª+ 1
(
ªª1 2
playerLeaving
ªª2 ?
)
ªª? @
;
ªª@ A
ReArrangeTurns
ºº  .
(
ºº. /

activeGame
ºº/ 9
,
ºº9 :
playerLeaving
ºº; H
.
ººH I
TurnOfPlayer
ººI U
)
ººU V
;
ººV W*
NotifySomePlayerLeaveTheGame
ΩΩ  <
(
ΩΩ< =

activeGame
ΩΩ= G
)
ΩΩG H
;
ΩΩH I
}
ææ 
}
øø 
catch
¿¿ 
(
¿¿ '
InvalidOperationException
¿¿ 8
ex
¿¿9 ;
)
¿¿; <
{
¡¡ "
ChannelAdministrator
¬¬ 0
.
¬¬0 1&
HandleCommunicationIssue
¬¬1 I
(
¬¬I J!
idUserUnsubscribing
¬¬J ]
,
¬¬] ^"
ChannelAdministrator
¬¬_ s
.
¬¬s t
GAME_EXCEPTION¬¬t Ç
)¬¬Ç É
;¬¬É Ñ
ExceptionHandler
√√ ,
.
√√, -
LogException
√√- 9
(
√√9 :
ex
√√: <
,
√√< =!
ExceptionDictionary
√√> Q
.
√√Q R
FATAL_EXCEPTION
√√R a
)
√√a b
;
√√b c
}
ƒƒ 
}
∆∆ 
}
«« 
}
»» 
}
…… 	
private
ÀÀ 
void
ÀÀ 
ReArrangeTurns
ÀÀ #
(
ÀÀ# $
List
ÀÀ$ (
<
ÀÀ( )!
PlayerPlayingInGame
ÀÀ) <
>
ÀÀ< =)
playersPlayingInCurrentGame
ÀÀ> Y
,
ÀÀY Z
int
ÀÀ[ ^
turnLeaving
ÀÀ_ j
)
ÀÀj k
{
ÃÃ 	)
playersPlayingInCurrentGame
ÕÕ '
.
ÕÕ' (
Where
ÕÕ( -
(
ÕÕ- .
item
ÕÕ. 2
=>
ÕÕ3 5
item
ÕÕ6 :
.
ÕÕ: ;
TurnOfPlayer
ÕÕ; G
>
ÕÕH I
turnLeaving
ÕÕJ U
)
ÕÕU V
.
ÕÕV W
ToList
ÕÕW ]
(
ÕÕ] ^
)
ÕÕ^ _
.
ÕÕ_ `
ForEach
ÕÕ` g
(
ÕÕg h
item
ÕÕh l
=>
ÕÕm o
item
ÕÕp t
.
ÕÕt u
TurnOfPlayerÕÕu Å
--ÕÕÅ É
)ÕÕÉ Ñ
;ÕÕÑ Ö
}
ŒŒ 	
private
–– 
void
–– *
NotifySomePlayerLeaveTheGame
–– 1
(
––1 2
List
––2 6
<
––6 7!
PlayerPlayingInGame
––7 J
>
––J K
playersPlaying
––L Z
)
––Z [
{
—— 	
List
““ 
<
““ &
PlayerInGameDataContract
““ )
>
““) *"
playersInCurrentGame
““+ ?
=
““@ A-
GetPlayerInGameDataContractList
““B a
(
““a b
playersPlaying
““b p
)
““p q
.
““q r
ToList
““r x
(
““x y
)
““y z
;
““z {
foreach
”” 
(
”” 
var
”” 
player
”” 
in
””  "
playersPlaying
””# 1
)
””1 2
{
‘‘ 
try
’’ 
{
÷÷ 
player
◊◊ 
.
◊◊ !
gameCallbackChannel
◊◊ .
.
◊◊. / 
GetCallbackChannel
◊◊/ A
<
◊◊A B"
IGameActionsCallBack
◊◊B V
>
◊◊V W
(
◊◊W X
)
◊◊X Y
.
◊◊Y Z,
ReceiveNotificationSomeOneLeft
◊◊Z x
(
◊◊x y
player
◊◊y 
.◊◊ Ä
TurnOfPlayer◊◊Ä å
,◊◊å ç$
playersInCurrentGame◊◊é ¢
)◊◊¢ £
;◊◊£ §
}
ÿÿ 
catch
ŸŸ 
(
ŸŸ 1
#CommunicationObjectFaultedException
ŸŸ :
ex
ŸŸ; =
)
ŸŸ= >
{
⁄⁄ "
ChannelAdministrator
€€ (
.
€€( )&
HandleCommunicationIssue
€€) A
(
€€A B
player
€€B H
.
€€H I
IdUser
€€I O
,
€€O P"
ChannelAdministrator
€€Q e
.
€€e f
GAME_EXCEPTION
€€f t
)
€€t u
;
€€u v
ExceptionHandler
‹‹ $
.
‹‹$ %
LogException
‹‹% 1
(
‹‹1 2
ex
‹‹2 4
,
‹‹4 5!
ExceptionDictionary
‹‹6 I
.
‹‹I J
FATAL_EXCEPTION
‹‹J Y
)
‹‹Y Z
;
‹‹Z [
}
›› 
catch
ﬁﬁ 
(
ﬁﬁ 
TimeoutException
ﬁﬁ '
ex
ﬁﬁ( *
)
ﬁﬁ* +
{
ﬂﬂ "
ChannelAdministrator
‡‡ (
.
‡‡( )&
HandleCommunicationIssue
‡‡) A
(
‡‡A B
player
‡‡B H
.
‡‡H I
IdUser
‡‡I O
,
‡‡O P"
ChannelAdministrator
‡‡Q e
.
‡‡e f
GAME_EXCEPTION
‡‡f t
)
‡‡t u
;
‡‡u v
ExceptionHandler
·· $
.
··$ %
LogException
··% 1
(
··1 2
ex
··2 4
,
··4 5!
ExceptionDictionary
··6 I
.
··I J
FATAL_EXCEPTION
··J Y
)
··Y Z
;
··Z [
}
‚‚ 
catch
„„ 
(
„„ $
CommunicationException
„„ -
ex
„„. 0
)
„„0 1
{
‰‰ "
ChannelAdministrator
ÂÂ (
.
ÂÂ( )&
HandleCommunicationIssue
ÂÂ) A
(
ÂÂA B
player
ÂÂB H
.
ÂÂH I
IdUser
ÂÂI O
,
ÂÂO P"
ChannelAdministrator
ÂÂQ e
.
ÂÂe f
GAME_EXCEPTION
ÂÂf t
)
ÂÂt u
;
ÂÂu v
ExceptionHandler
ÊÊ $
.
ÊÊ$ %
LogException
ÊÊ% 1
(
ÊÊ1 2
ex
ÊÊ2 4
,
ÊÊ4 5!
ExceptionDictionary
ÊÊ6 I
.
ÊÊI J
FATAL_EXCEPTION
ÊÊJ Y
)
ÊÊY Z
;
ÊÊZ [
}
ÁÁ 
catch
ËË 
(
ËË '
InvalidOperationException
ËË 0
ex
ËË1 3
)
ËË3 4
{
ÈÈ "
ChannelAdministrator
ÍÍ (
.
ÍÍ( )&
HandleCommunicationIssue
ÍÍ) A
(
ÍÍA B
player
ÍÍB H
.
ÍÍH I
IdUser
ÍÍI O
,
ÍÍO P"
ChannelAdministrator
ÍÍQ e
.
ÍÍe f
GAME_EXCEPTION
ÍÍf t
)
ÍÍt u
;
ÍÍu v
ExceptionHandler
ÎÎ $
.
ÎÎ$ %
LogException
ÎÎ% 1
(
ÎÎ1 2
ex
ÎÎ2 4
,
ÎÎ4 5!
ExceptionDictionary
ÎÎ6 I
.
ÎÎI J
FATAL_EXCEPTION
ÎÎJ Y
)
ÎÎY Z
;
ÎÎZ [
}
ÏÏ 
}
ÌÌ 
}
ÔÔ 	
public
ÒÒ 
void
ÒÒ 
ChooseAnswer
ÒÒ  
(
ÒÒ  !
int
ÒÒ! $
roomCode
ÒÒ% -
,
ÒÒ- .
int
ÒÒ/ 2
idUserSelecting
ÒÒ3 B
,
ÒÒB C
int
ÒÒD G
answerSelected
ÒÒH V
,
ÒÒV W
int
ÒÒX [
pointsWorth
ÒÒ\ g
,
ÒÒg h
int
ÒÒi l
currentTurn
ÒÒm x
)
ÒÒx y
{
ÚÚ 	
var
ÛÛ 
playersPlaying
ÛÛ 
=
ÛÛ  #
ActiveGamesDictionary
ÛÛ! 6
.
ÛÛ6 7#
GetSpecificActiveGame
ÛÛ7 L
(
ÛÛL M
roomCode
ÛÛM U
)
ÛÛU V
;
ÛÛV W
if
ÙÙ 
(
ÙÙ 
playersPlaying
ÙÙ 
!=
ÙÙ !
null
ÙÙ" &
)
ÙÙ& '
{
ıı 
try
ˆˆ 
{
˜˜ )
NotifySomeOneSelectAnAnswer
¯¯ /
(
¯¯/ 0
playersPlaying
¯¯0 >
,
¯¯> ?
idUserSelecting
¯¯@ O
,
¯¯O P
answerSelected
¯¯Q _
,
¯¯_ `
pointsWorth
¯¯a l
)
¯¯l m
;
¯¯m n#
NotifyPlayerAboutTurn
˘˘ )
(
˘˘) *
playersPlaying
˘˘* 8
,
˘˘8 9
currentTurn
˘˘: E
)
˘˘E F
;
˘˘F G
}
˙˙ 
catch
˚˚ 
(
˚˚ 1
#CommunicationObjectFaultedException
˚˚ :
ex
˚˚; =
)
˚˚= >
{
¸¸ "
ChannelAdministrator
˝˝ (
.
˝˝( )&
HandleCommunicationIssue
˝˝) A
(
˝˝A B
idUserSelecting
˝˝B Q
,
˝˝Q R"
ChannelAdministrator
˝˝S g
.
˝˝g h
GAME_EXCEPTION
˝˝h v
)
˝˝v w
;
˝˝w x
ExceptionHandler
˛˛ $
.
˛˛$ %
LogException
˛˛% 1
(
˛˛1 2
ex
˛˛2 4
,
˛˛4 5!
ExceptionDictionary
˛˛6 I
.
˛˛I J
FATAL_EXCEPTION
˛˛J Y
)
˛˛Y Z
;
˛˛Z [
}
ˇˇ 
catch
ÄÄ 
(
ÄÄ 
TimeoutException
ÄÄ '
ex
ÄÄ( *
)
ÄÄ* +
{
ÅÅ "
ChannelAdministrator
ÇÇ (
.
ÇÇ( )&
HandleCommunicationIssue
ÇÇ) A
(
ÇÇA B
idUserSelecting
ÇÇB Q
,
ÇÇQ R"
ChannelAdministrator
ÇÇS g
.
ÇÇg h
GAME_EXCEPTION
ÇÇh v
)
ÇÇv w
;
ÇÇw x
ExceptionHandler
ÉÉ $
.
ÉÉ$ %
LogException
ÉÉ% 1
(
ÉÉ1 2
ex
ÉÉ2 4
,
ÉÉ4 5!
ExceptionDictionary
ÉÉ6 I
.
ÉÉI J
FATAL_EXCEPTION
ÉÉJ Y
)
ÉÉY Z
;
ÉÉZ [
}
ÑÑ 
catch
ÖÖ 
(
ÖÖ $
CommunicationException
ÖÖ -
ex
ÖÖ. 0
)
ÖÖ0 1
{
ÜÜ "
ChannelAdministrator
áá (
.
áá( )&
HandleCommunicationIssue
áá) A
(
ááA B
idUserSelecting
ááB Q
,
ááQ R"
ChannelAdministrator
ááS g
.
áág h
GAME_EXCEPTION
ááh v
)
ááv w
;
ááw x
ExceptionHandler
àà $
.
àà$ %
LogException
àà% 1
(
àà1 2
ex
àà2 4
,
àà4 5!
ExceptionDictionary
àà6 I
.
ààI J
FATAL_EXCEPTION
ààJ Y
)
ààY Z
;
ààZ [
}
ââ 
catch
ää 
(
ää '
InvalidOperationException
ää 0
ex
ää1 3
)
ää3 4
{
ãã "
ChannelAdministrator
åå (
.
åå( )&
HandleCommunicationIssue
åå) A
(
ååA B
idUserSelecting
ååB Q
,
ååQ R"
ChannelAdministrator
ååS g
.
ååg h
GAME_EXCEPTION
ååh v
)
ååv w
;
ååw x
ExceptionHandler
çç $
.
çç$ %
LogException
çç% 1
(
çç1 2
ex
çç2 4
,
çç4 5!
ExceptionDictionary
çç6 I
.
ççI J
FATAL_EXCEPTION
ççJ Y
)
ççY Z
;
ççZ [
}
éé 
}
èè 
}
êê 	
private
íí 
void
íí )
NotifySomeOneSelectAnAnswer
íí 0
(
íí0 1
List
íí1 5
<
íí5 6!
PlayerPlayingInGame
íí6 I
>
ííI J
playersPlaying
ííK Y
,
ííY Z
int
íí[ ^
idUserSelecting
íí_ n
,
íín o
int
ííp s
answerSelectedíít Ç
,ííÇ É
intííÑ á
pointsWorthííà ì
)ííì î
{
ìì 	
foreach
îî 
(
îî 
var
îî 
playerPlaying
îî &
in
îî' )
playersPlaying
îî* 8
)
îî8 9
{
ïï 
try
ññ 
{
óó 
if
òò 
(
òò 
playerPlaying
òò %
.
òò% &!
gameCallbackChannel
òò& 9
!=
òò: <
null
òò= A
)
òòA B
{
ôô 
playerPlaying
öö %
.
öö% &!
gameCallbackChannel
öö& 9
.
öö9 : 
GetCallbackChannel
öö: L
<
ööL M"
IGameActionsCallBack
ööM a
>
ööa b
(
ööb c
)
ööc d
.
ööd e,
ResponseSomeOneChooseAnAnswerööe Ç
(ööÇ É
answerSelectedööÉ ë
,ööë í
idUserSelectingööì ¢
,öö¢ £
pointsWorthöö§ Ø
)ööØ ∞
;öö∞ ±
}
õõ 
}
úú 
catch
ùù 
(
ùù 1
#CommunicationObjectFaultedException
ùù :
ex
ùù; =
)
ùù= >
{
ûû "
ChannelAdministrator
üü (
.
üü( )&
HandleCommunicationIssue
üü) A
(
üüA B
playerPlaying
üüB O
.
üüO P
IdUser
üüP V
,
üüV W"
ChannelAdministrator
üüX l
.
üül m
GAME_EXCEPTION
üüm {
)
üü{ |
;
üü| }
ExceptionHandler
†† $
.
††$ %
LogException
††% 1
(
††1 2
ex
††2 4
,
††4 5!
ExceptionDictionary
††6 I
.
††I J
FATAL_EXCEPTION
††J Y
)
††Y Z
;
††Z [
}
°° 
catch
¢¢ 
(
¢¢ 
TimeoutException
¢¢ '
ex
¢¢( *
)
¢¢* +
{
££ "
ChannelAdministrator
§§ (
.
§§( )&
HandleCommunicationIssue
§§) A
(
§§A B
playerPlaying
§§B O
.
§§O P
IdUser
§§P V
,
§§V W"
ChannelAdministrator
§§X l
.
§§l m
GAME_EXCEPTION
§§m {
)
§§{ |
;
§§| }
ExceptionHandler
•• $
.
••$ %
LogException
••% 1
(
••1 2
ex
••2 4
,
••4 5!
ExceptionDictionary
••6 I
.
••I J
FATAL_EXCEPTION
••J Y
)
••Y Z
;
••Z [
}
¶¶ 
catch
ßß 
(
ßß $
CommunicationException
ßß -
ex
ßß. 0
)
ßß0 1
{
®® "
ChannelAdministrator
©© (
.
©©( )&
HandleCommunicationIssue
©©) A
(
©©A B
playerPlaying
©©B O
.
©©O P
IdUser
©©P V
,
©©V W"
ChannelAdministrator
©©X l
.
©©l m
GAME_EXCEPTION
©©m {
)
©©{ |
;
©©| }
ExceptionHandler
™™ $
.
™™$ %
LogException
™™% 1
(
™™1 2
ex
™™2 4
,
™™4 5!
ExceptionDictionary
™™6 I
.
™™I J
FATAL_EXCEPTION
™™J Y
)
™™Y Z
;
™™Z [
}
´´ 
catch
¨¨ 
(
¨¨ '
InvalidOperationException
¨¨ 0
ex
¨¨1 3
)
¨¨3 4
{
≠≠ "
ChannelAdministrator
ÆÆ (
.
ÆÆ( )&
HandleCommunicationIssue
ÆÆ) A
(
ÆÆA B
playerPlaying
ÆÆB O
.
ÆÆO P
IdUser
ÆÆP V
,
ÆÆV W"
ChannelAdministrator
ÆÆX l
.
ÆÆl m
GAME_EXCEPTION
ÆÆm {
)
ÆÆ{ |
;
ÆÆ| }
ExceptionHandler
ØØ $
.
ØØ$ %
LogException
ØØ% 1
(
ØØ1 2
ex
ØØ2 4
,
ØØ4 5!
ExceptionDictionary
ØØ6 I
.
ØØI J
FATAL_EXCEPTION
ØØJ Y
)
ØØY Z
;
ØØZ [
}
∞∞ 
}
±± 
}
≤≤ 	
private
¥¥ 
void
¥¥ #
NotifyPlayerAboutTurn
¥¥ *
(
¥¥* +
List
¥¥+ /
<
¥¥/ 0!
PlayerPlayingInGame
¥¥0 C
>
¥¥C D
playersPlaying
¥¥E S
,
¥¥S T
int
¥¥U X
turnJustPassed
¥¥Y g
)
¥¥g h
{
µµ 	
int
∂∂ 

playerTurn
∂∂ 
;
∂∂ 
if
∑∑ 
(
∑∑ 
playersPlaying
∑∑ 
.
∑∑ 
Count
∑∑ $
==
∑∑% '
turnJustPassed
∑∑( 6
)
∑∑6 7
{
∏∏ 

playerTurn
ππ 
=
ππ 

FIRST_TURN
ππ '
;
ππ' (
}
∫∫ 
else
ªª 
{
ºº 
turnJustPassed
ΩΩ 
++
ΩΩ  
;
ΩΩ  !

playerTurn
ææ 
=
ææ 
turnJustPassed
ææ +
;
ææ+ ,
}
øø 
foreach
¿¿ 
(
¿¿ 
var
¿¿ 
playerPlaying
¿¿ &
in
¿¿' )
playersPlaying
¿¿* 8
)
¿¿8 9
{
¡¡ 
try
¬¬ 
{
√√ 
playerPlaying
ƒƒ !
.
ƒƒ! "!
gameCallbackChannel
ƒƒ" 5
.
ƒƒ5 6 
GetCallbackChannel
ƒƒ6 H
<
ƒƒH I"
IGameActionsCallBack
ƒƒI ]
>
ƒƒ] ^
(
ƒƒ^ _
)
ƒƒ_ `
.
ƒƒ` a*
ReceiveNotificationAboutTurn
ƒƒa }
(
ƒƒ} ~

playerTurnƒƒ~ à
)ƒƒà â
;ƒƒâ ä
}
≈≈ 
catch
∆∆ 
(
∆∆ 1
#CommunicationObjectFaultedException
∆∆ :
ex
∆∆; =
)
∆∆= >
{
«« "
ChannelAdministrator
»» (
.
»»( )&
HandleCommunicationIssue
»») A
(
»»A B
playerPlaying
»»B O
.
»»O P
IdUser
»»P V
,
»»V W"
ChannelAdministrator
»»X l
.
»»l m
GAME_EXCEPTION
»»m {
)
»»{ |
;
»»| }
ExceptionHandler
…… $
.
……$ %
LogException
……% 1
(
……1 2
ex
……2 4
,
……4 5!
ExceptionDictionary
……6 I
.
……I J
FATAL_EXCEPTION
……J Y
)
……Y Z
;
……Z [
}
   
catch
ÀÀ 
(
ÀÀ 
TimeoutException
ÀÀ '
ex
ÀÀ( *
)
ÀÀ* +
{
ÃÃ "
ChannelAdministrator
ÕÕ (
.
ÕÕ( )&
HandleCommunicationIssue
ÕÕ) A
(
ÕÕA B
playerPlaying
ÕÕB O
.
ÕÕO P
IdUser
ÕÕP V
,
ÕÕV W"
ChannelAdministrator
ÕÕX l
.
ÕÕl m
GAME_EXCEPTION
ÕÕm {
)
ÕÕ{ |
;
ÕÕ| }
ExceptionHandler
ŒŒ $
.
ŒŒ$ %
LogException
ŒŒ% 1
(
ŒŒ1 2
ex
ŒŒ2 4
,
ŒŒ4 5!
ExceptionDictionary
ŒŒ6 I
.
ŒŒI J
FATAL_EXCEPTION
ŒŒJ Y
)
ŒŒY Z
;
ŒŒZ [
}
œœ 
catch
–– 
(
–– $
CommunicationException
–– -
ex
––. 0
)
––0 1
{
—— "
ChannelAdministrator
““ (
.
““( )&
HandleCommunicationIssue
““) A
(
““A B
playerPlaying
““B O
.
““O P
IdUser
““P V
,
““V W"
ChannelAdministrator
““X l
.
““l m
GAME_EXCEPTION
““m {
)
““{ |
;
““| }
ExceptionHandler
”” $
.
””$ %
LogException
””% 1
(
””1 2
ex
””2 4
,
””4 5!
ExceptionDictionary
””6 I
.
””I J
FATAL_EXCEPTION
””J Y
)
””Y Z
;
””Z [
}
‘‘ 
catch
’’ 
(
’’ '
InvalidOperationException
’’ 0
ex
’’1 3
)
’’3 4
{
÷÷ "
ChannelAdministrator
◊◊ (
.
◊◊( )&
HandleCommunicationIssue
◊◊) A
(
◊◊A B
playerPlaying
◊◊B O
.
◊◊O P
IdUser
◊◊P V
,
◊◊V W"
ChannelAdministrator
◊◊X l
.
◊◊l m
GAME_EXCEPTION
◊◊m {
)
◊◊{ |
;
◊◊| }
ExceptionHandler
ÿÿ $
.
ÿÿ$ %
LogException
ÿÿ% 1
(
ÿÿ1 2
ex
ÿÿ2 4
,
ÿÿ4 5!
ExceptionDictionary
ÿÿ6 I
.
ÿÿI J
FATAL_EXCEPTION
ÿÿJ Y
)
ÿÿY Z
;
ÿÿZ [
}
ŸŸ 
}
⁄⁄ 
}
€€ 	
public
›› 
void
›› #
ChooseQuestionOfBoard
›› )
(
››) *
int
››* -
roomCode
››. 6
,
››6 7
int
››8 ;
idUserSelecting
››< K
,
››K L
int
››M P
currentRound
››Q ]
,
››] ^+
CurrentQuestionToShowContract
››_ |
questionToShow››} ã
)››ã å
{
ﬁﬁ 	
var
ﬂﬂ 
activeCurrentGame
ﬂﬂ !
=
ﬂﬂ" ##
ActiveGamesDictionary
ﬂﬂ$ 9
.
ﬂﬂ9 :#
GetSpecificActiveGame
ﬂﬂ: O
(
ﬂﬂO P
roomCode
ﬂﬂP X
)
ﬂﬂX Y
;
ﬂﬂY Z
try
‡‡ 
{
·· 
if
‚‚ 
(
‚‚ 
activeCurrentGame
‚‚ %
!=
‚‚& (
null
‚‚) -
)
‚‚- .
{
„„ 
var
‰‰ 
playersPlaying
‰‰ &
=
‰‰' (#
GetSpecificActiveGame
‰‰) >
(
‰‰> ?
roomCode
‰‰? G
)
‰‰G H
;
‰‰H I0
"NotifyPlayerSomeOneChooseAQuestion
ÂÂ 6
(
ÂÂ6 7
playersPlaying
ÂÂ7 E
,
ÂÂE F
idUserSelecting
ÂÂG V
,
ÂÂV W
currentRound
ÂÂX d
,
ÂÂd e
questionToShow
ÂÂf t
)
ÂÂt u
;
ÂÂu v
}
ÊÊ 
}
ÁÁ 
catch
ËË 
(
ËË 1
#CommunicationObjectFaultedException
ËË 6
ex
ËË7 9
)
ËË9 :
{
ÈÈ "
ChannelAdministrator
ÍÍ $
.
ÍÍ$ %&
HandleCommunicationIssue
ÍÍ% =
(
ÍÍ= >
idUserSelecting
ÍÍ> M
,
ÍÍM N"
ChannelAdministrator
ÍÍO c
.
ÍÍc d
GAME_EXCEPTION
ÍÍd r
)
ÍÍr s
;
ÍÍs t
ExceptionHandler
ÎÎ  
.
ÎÎ  !
LogException
ÎÎ! -
(
ÎÎ- .
ex
ÎÎ. 0
,
ÎÎ0 1!
ExceptionDictionary
ÎÎ2 E
.
ÎÎE F
FATAL_EXCEPTION
ÎÎF U
)
ÎÎU V
;
ÎÎV W
}
ÏÏ 
catch
ÌÌ 
(
ÌÌ 
TimeoutException
ÌÌ #
ex
ÌÌ$ &
)
ÌÌ& '
{
ÓÓ "
ChannelAdministrator
ÔÔ $
.
ÔÔ$ %&
HandleCommunicationIssue
ÔÔ% =
(
ÔÔ= >
idUserSelecting
ÔÔ> M
,
ÔÔM N"
ChannelAdministrator
ÔÔO c
.
ÔÔc d
GAME_EXCEPTION
ÔÔd r
)
ÔÔr s
;
ÔÔs t
ExceptionHandler
  
.
  !
LogException
! -
(
- .
ex
. 0
,
0 1!
ExceptionDictionary
2 E
.
E F
FATAL_EXCEPTION
F U
)
U V
;
V W
}
ÒÒ 
catch
ÚÚ 
(
ÚÚ $
CommunicationException
ÚÚ )
ex
ÚÚ* ,
)
ÚÚ, -
{
ÛÛ "
ChannelAdministrator
ÙÙ $
.
ÙÙ$ %&
HandleCommunicationIssue
ÙÙ% =
(
ÙÙ= >
idUserSelecting
ÙÙ> M
,
ÙÙM N"
ChannelAdministrator
ÙÙO c
.
ÙÙc d
GAME_EXCEPTION
ÙÙd r
)
ÙÙr s
;
ÙÙs t
ExceptionHandler
ıı  
.
ıı  !
LogException
ıı! -
(
ıı- .
ex
ıı. 0
,
ıı0 1!
ExceptionDictionary
ıı2 E
.
ııE F
FATAL_EXCEPTION
ııF U
)
ııU V
;
ııV W
}
ˆˆ 
catch
˜˜ 
(
˜˜ '
InvalidOperationException
˜˜ ,
ex
˜˜- /
)
˜˜/ 0
{
¯¯ "
ChannelAdministrator
˘˘ $
.
˘˘$ %&
HandleCommunicationIssue
˘˘% =
(
˘˘= >
idUserSelecting
˘˘> M
,
˘˘M N"
ChannelAdministrator
˘˘O c
.
˘˘c d
GAME_EXCEPTION
˘˘d r
)
˘˘r s
;
˘˘s t
ExceptionHandler
˙˙  
.
˙˙  !
LogException
˙˙! -
(
˙˙- .
ex
˙˙. 0
,
˙˙0 1!
ExceptionDictionary
˙˙2 E
.
˙˙E F
FATAL_EXCEPTION
˙˙F U
)
˙˙U V
;
˙˙V W
}
˚˚ 
}
¸¸ 	
private
˛˛ 
void
˛˛ 0
"NotifyPlayerSomeOneChooseAQuestion
˛˛ 7
(
˛˛7 8
List
˛˛8 <
<
˛˛< =!
PlayerPlayingInGame
˛˛= P
>
˛˛P Q 
playersPlayingGame
˛˛R d
,
˛˛d e
int
˛˛f i
idUserSelecting
˛˛j y
,
˛˛y z
int
˛˛{ ~
currentRound˛˛ ã
,˛˛ã å-
CurrentQuestionToShowContract˛˛ç ™
questionToShow˛˛´ π
)˛˛π ∫
{
ˇˇ 	
foreach
ÄÄ 
(
ÄÄ 
var
ÄÄ 
playerPlaying
ÄÄ &
in
ÄÄ' ) 
playersPlayingGame
ÄÄ* <
)
ÄÄ< =
{
ÅÅ 
try
ÇÇ 
{
ÉÉ 
if
ÑÑ 
(
ÑÑ 
playerPlaying
ÑÑ %
.
ÑÑ% &!
gameCallbackChannel
ÑÑ& 9
!=
ÑÑ: <
null
ÑÑ= A
)
ÑÑA B
{
ÖÖ 
playerPlaying
ÜÜ %
.
ÜÜ% &!
gameCallbackChannel
ÜÜ& 9
.
ÜÜ9 : 
GetCallbackChannel
ÜÜ: L
<
ÜÜL M"
IGameActionsCallBack
ÜÜM a
>
ÜÜa b
(
ÜÜb c
)
ÜÜc d
.
ÜÜd e-
ResponseSomeOneSelectAQuestionÜÜe É
(ÜÜÉ Ñ
questionToShowÜÜÑ í
,ÜÜí ì
currentRoundÜÜî †
,ÜÜ† °
idUserSelectingÜÜ¢ ±
)ÜÜ± ≤
;ÜÜ≤ ≥
}
áá 
}
àà 
catch
ââ 
(
ââ 1
#CommunicationObjectFaultedException
ââ :
ex
ââ; =
)
ââ= >
{
ää "
ChannelAdministrator
ãã (
.
ãã( )&
HandleCommunicationIssue
ãã) A
(
ããA B
playerPlaying
ããB O
.
ããO P
IdUser
ããP V
,
ããV W"
ChannelAdministrator
ããX l
.
ããl m
GAME_EXCEPTION
ããm {
)
ãã{ |
;
ãã| }
ExceptionHandler
åå $
.
åå$ %
LogException
åå% 1
(
åå1 2
ex
åå2 4
,
åå4 5!
ExceptionDictionary
åå6 I
.
ååI J
FATAL_EXCEPTION
ååJ Y
)
ååY Z
;
ååZ [
}
çç 
catch
éé 
(
éé 
TimeoutException
éé '
ex
éé( *
)
éé* +
{
èè "
ChannelAdministrator
êê (
.
êê( )&
HandleCommunicationIssue
êê) A
(
êêA B
playerPlaying
êêB O
.
êêO P
IdUser
êêP V
,
êêV W"
ChannelAdministrator
êêX l
.
êêl m
GAME_EXCEPTION
êêm {
)
êê{ |
;
êê| }
ExceptionHandler
ëë $
.
ëë$ %
LogException
ëë% 1
(
ëë1 2
ex
ëë2 4
,
ëë4 5!
ExceptionDictionary
ëë6 I
.
ëëI J
FATAL_EXCEPTION
ëëJ Y
)
ëëY Z
;
ëëZ [
}
íí 
catch
ìì 
(
ìì $
CommunicationException
ìì -
ex
ìì. 0
)
ìì0 1
{
îî "
ChannelAdministrator
ïï (
.
ïï( )&
HandleCommunicationIssue
ïï) A
(
ïïA B
playerPlaying
ïïB O
.
ïïO P
IdUser
ïïP V
,
ïïV W"
ChannelAdministrator
ïïX l
.
ïïl m
GAME_EXCEPTION
ïïm {
)
ïï{ |
;
ïï| }
ExceptionHandler
ññ $
.
ññ$ %
LogException
ññ% 1
(
ññ1 2
ex
ññ2 4
,
ññ4 5!
ExceptionDictionary
ññ6 I
.
ññI J
FATAL_EXCEPTION
ññJ Y
)
ññY Z
;
ññZ [
}
óó 
catch
òò 
(
òò '
InvalidOperationException
òò 0
ex
òò1 3
)
òò3 4
{
ôô "
ChannelAdministrator
öö (
.
öö( )&
HandleCommunicationIssue
öö) A
(
ööA B
playerPlaying
ööB O
.
ööO P
IdUser
ööP V
,
ööV W"
ChannelAdministrator
ööX l
.
ööl m
GAME_EXCEPTION
ööm {
)
öö{ |
;
öö| }
ExceptionHandler
õõ $
.
õõ$ %
LogException
õõ% 1
(
õõ1 2
ex
õõ2 4
,
õõ4 5!
ExceptionDictionary
õõ6 I
.
õõI J
FATAL_EXCEPTION
õõJ Y
)
õõY Z
;
õõZ [
}
úú 
}
ùù 
}
ûû 	
public
†† 
void
†† 
FinishRound
†† 
(
††  
int
††  #
roomCode
††$ ,
,
††, -
List
††. 2
<
††2 3&
PlayerInGameDataContract
††3 K
>
††K L
playerInGame
††M Y
,
††Y Z
int
††[ ^
roundFinished
††_ l
)
††l m
{
°° 	
int
¢¢ 
newRound
¢¢ 
=
¢¢ 
ERROR
¢¢  
;
¢¢  !
try
££ 
{
§§ 
switch
•• 
(
•• 
roundFinished
•• %
)
••% &
{
¶¶ 
case
ßß 
	ROUND_ONE
ßß "
:
ßß" #
newRound
®®  
=
®®! "
	ROUND_TWO
®®# ,
;
®®, -
break
©© 
;
©© 
case
™™ 
	ROUND_TWO
™™ "
:
™™" #
newRound
´´  
=
´´! "
ROUND_THREE
´´# .
;
´´. /
break
¨¨ 
;
¨¨ 
}
≠≠ 
var
ÆÆ 
playerPlaying
ÆÆ !
=
ÆÆ" ##
ActiveGamesDictionary
ÆÆ$ 9
.
ÆÆ9 :#
GetSpecificActiveGame
ÆÆ: O
(
ÆÆO P
roomCode
ÆÆP X
)
ÆÆX Y
;
ÆÆY Z#
NotifyPrepareNewRound
ØØ %
(
ØØ% &
playerPlaying
ØØ& 3
,
ØØ3 4
newRound
ØØ5 =
)
ØØ= >
;
ØØ> ?
}
∞∞ 
catch
±± 
(
±± 1
#CommunicationObjectFaultedException
±± 6
ex
±±7 9
)
±±9 :
{
≤≤ 
ExceptionHandler
≥≥  
.
≥≥  !
LogException
≥≥! -
(
≥≥- .
ex
≥≥. 0
,
≥≥0 1!
ExceptionDictionary
≥≥2 E
.
≥≥E F
FATAL_EXCEPTION
≥≥F U
)
≥≥U V
;
≥≥V W
}
¥¥ 
catch
µµ 
(
µµ 
TimeoutException
µµ #
ex
µµ$ &
)
µµ& '
{
∂∂ 
ExceptionHandler
∑∑  
.
∑∑  !
LogException
∑∑! -
(
∑∑- .
ex
∑∑. 0
,
∑∑0 1!
ExceptionDictionary
∑∑2 E
.
∑∑E F
FATAL_EXCEPTION
∑∑F U
)
∑∑U V
;
∑∑V W
}
∏∏ 
catch
ππ 
(
ππ $
CommunicationException
ππ )
ex
ππ* ,
)
ππ, -
{
∫∫ 
ExceptionHandler
ªª  
.
ªª  !
LogException
ªª! -
(
ªª- .
ex
ªª. 0
,
ªª0 1!
ExceptionDictionary
ªª2 E
.
ªªE F
FATAL_EXCEPTION
ªªF U
)
ªªU V
;
ªªV W
}
ºº 
catch
ΩΩ 
(
ΩΩ '
InvalidOperationException
ΩΩ ,
ex
ΩΩ- /
)
ΩΩ/ 0
{
ææ 
ExceptionHandler
øø  
.
øø  !
LogException
øø! -
(
øø- .
ex
øø. 0
,
øø0 1!
ExceptionDictionary
øø2 E
.
øøE F
FATAL_EXCEPTION
øøF U
)
øøU V
;
øøV W
}
¿¿ 
}
¡¡ 	
private
√√ 
void
√√ #
NotifyPrepareNewRound
√√ *
(
√√* +
List
√√+ /
<
√√/ 0!
PlayerPlayingInGame
√√0 C
>
√√C D
playersPlaying
√√E S
,
√√S T
int
√√U X
newRound
√√Y a
)
√√a b
{
ƒƒ 	
List
≈≈ 
<
≈≈ &
PlayerInGameDataContract
≈≈ )
>
≈≈) *
playersInGame
≈≈+ 8
=
≈≈9 :-
GetPlayerInGameDataContractList
≈≈; Z
(
≈≈Z [
playersPlaying
≈≈[ i
)
≈≈i j
;
≈≈j k
if
∆∆ 
(
∆∆ 
playersPlaying
∆∆ 
!=
∆∆ !
null
∆∆" &
)
∆∆& '
{
«« 
foreach
»» 
(
»» 
var
»» 
playerPlaying
»» *
in
»»+ -
playersPlaying
»». <
)
»»< =
{
…… 
try
   
{
ÀÀ 
playerPlaying
ÃÃ %
.
ÃÃ% &!
gameCallbackChannel
ÃÃ& 9
.
ÃÃ9 : 
GetCallbackChannel
ÃÃ: L
<
ÃÃL M"
IGameActionsCallBack
ÃÃM a
>
ÃÃa b
(
ÃÃb c
)
ÃÃc d
.
ÃÃd e 
ResponseBeginRound
ÃÃe w
(
ÃÃw x
playerPlayingÃÃx Ö
.ÃÃÖ Ü
TurnOfPlayerÃÃÜ í
,ÃÃí ì
newRoundÃÃî ú
,ÃÃú ù
playersInGameÃÃû ´
)ÃÃ´ ¨
;ÃÃ¨ ≠
}
ÕÕ 
catch
ŒŒ 
(
ŒŒ 1
#CommunicationObjectFaultedException
ŒŒ >
ex
ŒŒ? A
)
ŒŒA B
{
œœ "
ChannelAdministrator
–– ,
.
––, -&
HandleCommunicationIssue
––- E
(
––E F
playerPlaying
––F S
.
––S T
IdUser
––T Z
,
––Z ["
ChannelAdministrator
––\ p
.
––p q
GAME_EXCEPTION
––q 
)–– Ä
;––Ä Å
ExceptionHandler
—— (
.
——( )
LogException
——) 5
(
——5 6
ex
——6 8
,
——8 9!
ExceptionDictionary
——: M
.
——M N
FATAL_EXCEPTION
——N ]
)
——] ^
;
——^ _
}
““ 
catch
”” 
(
”” 
TimeoutException
”” +
ex
””, .
)
””. /
{
‘‘ "
ChannelAdministrator
’’ ,
.
’’, -&
HandleCommunicationIssue
’’- E
(
’’E F
playerPlaying
’’F S
.
’’S T
IdUser
’’T Z
,
’’Z ["
ChannelAdministrator
’’\ p
.
’’p q
GAME_EXCEPTION
’’q 
)’’ Ä
;’’Ä Å
ExceptionHandler
÷÷ (
.
÷÷( )
LogException
÷÷) 5
(
÷÷5 6
ex
÷÷6 8
,
÷÷8 9!
ExceptionDictionary
÷÷: M
.
÷÷M N
FATAL_EXCEPTION
÷÷N ]
)
÷÷] ^
;
÷÷^ _
}
◊◊ 
catch
ÿÿ 
(
ÿÿ $
CommunicationException
ÿÿ 1
ex
ÿÿ2 4
)
ÿÿ4 5
{
ŸŸ "
ChannelAdministrator
⁄⁄ ,
.
⁄⁄, -&
HandleCommunicationIssue
⁄⁄- E
(
⁄⁄E F
playerPlaying
⁄⁄F S
.
⁄⁄S T
IdUser
⁄⁄T Z
,
⁄⁄Z ["
ChannelAdministrator
⁄⁄\ p
.
⁄⁄p q
GAME_EXCEPTION
⁄⁄q 
)⁄⁄ Ä
;⁄⁄Ä Å
ExceptionHandler
€€ (
.
€€( )
LogException
€€) 5
(
€€5 6
ex
€€6 8
,
€€8 9!
ExceptionDictionary
€€: M
.
€€M N
FATAL_EXCEPTION
€€N ]
)
€€] ^
;
€€^ _
}
‹‹ 
catch
›› 
(
›› '
InvalidOperationException
›› 4
ex
››5 7
)
››7 8
{
ﬁﬁ "
ChannelAdministrator
ﬂﬂ ,
.
ﬂﬂ, -&
HandleCommunicationIssue
ﬂﬂ- E
(
ﬂﬂE F
playerPlaying
ﬂﬂF S
.
ﬂﬂS T
IdUser
ﬂﬂT Z
,
ﬂﬂZ ["
ChannelAdministrator
ﬂﬂ\ p
.
ﬂﬂp q
GAME_EXCEPTION
ﬂﬂq 
)ﬂﬂ Ä
;ﬂﬂÄ Å
ExceptionHandler
‡‡ (
.
‡‡( )
LogException
‡‡) 5
(
‡‡5 6
ex
‡‡6 8
,
‡‡8 9!
ExceptionDictionary
‡‡: M
.
‡‡M N
FATAL_EXCEPTION
‡‡N ]
)
‡‡] ^
;
‡‡^ _
}
·· 
}
‚‚ 
}
„„ 
}
ÂÂ 	
public
ËË 
void
ËË 

ConfirmBet
ËË 
(
ËË 
int
ËË "
roomCode
ËË# +
,
ËË+ ,
int
ËË- 0
idUser
ËË1 7
)
ËË7 8
{
ÈÈ 	
lock
ÍÍ 
(
ÍÍ 

objectLock
ÍÍ 
)
ÍÍ 
{
ÎÎ 
if
ÏÏ 
(
ÏÏ 
roomCode
ÏÏ 
!=
ÏÏ 
NULL_INT_VALUE
ÏÏ  .
&&
ÏÏ/ 1
idUser
ÏÏ2 8
!=
ÏÏ9 ;
NULL_INT_VALUE
ÏÏ< J
)
ÏÏJ K
{
ÌÌ 
List
ÓÓ 
<
ÓÓ !
PlayerPlayingInGame
ÓÓ ,
>
ÓÓ, -
playersPlaying
ÓÓ. <
=
ÓÓ= >#
ActiveGamesDictionary
ÓÓ? T
.
ÓÓT U#
GetSpecificActiveGame
ÓÓU j
(
ÓÓj k
roomCode
ÓÓk s
)
ÓÓs t
;
ÓÓt u
if
ÔÔ 
(
ÔÔ 
playersPlaying
ÔÔ &
!=
ÔÔ' )
null
ÔÔ* .
)
ÔÔ. /
{
 
var
ÒÒ 
playerBetting
ÒÒ )
=
ÒÒ* +
playersPlaying
ÒÒ, :
.
ÒÒ: ;
Find
ÒÒ; ?
(
ÒÒ? @
pla
ÒÒ@ C
=>
ÒÒD F
pla
ÒÒG J
.
ÒÒJ K
IdUser
ÒÒK Q
==
ÒÒR T
idUser
ÒÒU [
)
ÒÒ[ \
;
ÒÒ\ ]
if
ÚÚ 
(
ÚÚ 
playerBetting
ÚÚ (
!=
ÚÚ) +
null
ÚÚ, 0
)
ÚÚ0 1
{
ÛÛ 
playerBetting
ÙÙ )
.
ÙÙ) *
DidBet
ÙÙ* 0
=
ÙÙ1 2
true
ÙÙ3 7
;
ÙÙ7 8
}
ıı 
if
ˆˆ 
(
ˆˆ 
playersPlaying
ˆˆ *
.
ˆˆ* +
Count
ˆˆ+ 0
==
ˆˆ1 3
playersPlaying
ˆˆ4 B
.
ˆˆB C
Where
ˆˆC H
(
ˆˆH I
pla
ˆˆI L
=>
ˆˆM O
pla
ˆˆP S
.
ˆˆS T
DidBet
ˆˆT Z
)
ˆˆZ [
.
ˆˆ[ \
ToList
ˆˆ\ b
(
ˆˆb c
)
ˆˆc d
.
ˆˆd e
Count
ˆˆe j
)
ˆˆj k
{
˜˜ '
NotifyPlayersBetsAreReady
¯¯ 5
(
¯¯5 6
playersPlaying
¯¯6 D
)
¯¯D E
;
¯¯E F
}
˘˘ 
}
˙˙ 
}
˚˚ 
}
¸¸ 
}
˝˝ 	
private
ˇˇ 
void
ˇˇ '
NotifyPlayersBetsAreReady
ˇˇ .
(
ˇˇ. /
List
ˇˇ/ 3
<
ˇˇ3 4!
PlayerPlayingInGame
ˇˇ4 G
>
ˇˇG H
playersPlaying
ˇˇI W
)
ˇˇW X
{
ÄÄ 	
lock
ÅÅ 
(
ÅÅ 

objectLock
ÅÅ 
)
ÅÅ 
{
ÇÇ 
foreach
ÉÉ 
(
ÉÉ !
PlayerPlayingInGame
ÉÉ ,
player
ÉÉ- 3
in
ÉÉ4 6
playersPlaying
ÉÉ7 E
)
ÉÉE F
{
ÑÑ 
try
ÖÖ 
{
ÜÜ 
player
áá 
.
áá !
gameCallbackChannel
áá 2
.
áá2 3 
GetCallbackChannel
áá3 E
<
ááE F"
IGameActionsCallBack
ááF Z
>
ááZ [
(
áá[ \
)
áá\ ]
.
áá] ^&
ResponseShowLastQuestion
áá^ v
(
ááv w
)
ááw x
;
ááx y
}
àà 
catch
ââ 
(
ââ 1
#CommunicationObjectFaultedException
ââ >
ex
ââ? A
)
ââA B
{
ää "
ChannelAdministrator
ãã ,
.
ãã, -&
HandleCommunicationIssue
ãã- E
(
ããE F
player
ããF L
.
ããL M
IdUser
ããM S
,
ããS T"
ChannelAdministrator
ããU i
.
ããi j
GAME_EXCEPTION
ããj x
)
ããx y
;
ããy z
ExceptionHandler
åå (
.
åå( )
LogException
åå) 5
(
åå5 6
ex
åå6 8
,
åå8 9!
ExceptionDictionary
åå: M
.
ååM N
FATAL_EXCEPTION
ååN ]
)
åå] ^
;
åå^ _
}
çç 
catch
éé 
(
éé 
TimeoutException
éé +
ex
éé, .
)
éé. /
{
èè "
ChannelAdministrator
êê ,
.
êê, -&
HandleCommunicationIssue
êê- E
(
êêE F
player
êêF L
.
êêL M
IdUser
êêM S
,
êêS T"
ChannelAdministrator
êêU i
.
êêi j
GAME_EXCEPTION
êêj x
)
êêx y
;
êêy z
ExceptionHandler
ëë (
.
ëë( )
LogException
ëë) 5
(
ëë5 6
ex
ëë6 8
,
ëë8 9!
ExceptionDictionary
ëë: M
.
ëëM N
FATAL_EXCEPTION
ëëN ]
)
ëë] ^
;
ëë^ _
}
íí 
catch
ìì 
(
ìì $
CommunicationException
ìì 1
ex
ìì2 4
)
ìì4 5
{
îî "
ChannelAdministrator
ïï ,
.
ïï, -&
HandleCommunicationIssue
ïï- E
(
ïïE F
player
ïïF L
.
ïïL M
IdUser
ïïM S
,
ïïS T"
ChannelAdministrator
ïïU i
.
ïïi j
GAME_EXCEPTION
ïïj x
)
ïïx y
;
ïïy z
ExceptionHandler
ññ (
.
ññ( )
LogException
ññ) 5
(
ññ5 6
ex
ññ6 8
,
ññ8 9!
ExceptionDictionary
ññ: M
.
ññM N
FATAL_EXCEPTION
ññN ]
)
ññ] ^
;
ññ^ _
}
óó 
catch
òò 
(
òò '
InvalidOperationException
òò 4
ex
òò5 7
)
òò7 8
{
ôô "
ChannelAdministrator
öö ,
.
öö, -&
HandleCommunicationIssue
öö- E
(
ööE F
player
ööF L
.
ööL M
IdUser
ööM S
,
ööS T"
ChannelAdministrator
ööU i
.
ööi j
GAME_EXCEPTION
ööj x
)
ööx y
;
ööy z
ExceptionHandler
õõ (
.
õõ( )
LogException
õõ) 5
(
õõ5 6
ex
õõ6 8
,
õõ8 9!
ExceptionDictionary
õõ: M
.
õõM N
FATAL_EXCEPTION
õõN ]
)
õõ] ^
;
õõ^ _
}
úú 
}
ùù 
}
ûû 
}
üü 	
public
¢¢ 
void
¢¢ '
ConfirmLastQuestionAnswer
¢¢ -
(
¢¢- .
int
¢¢. 1
roomCode
¢¢2 :
,
¢¢: ;&
PlayerInGameDataContract
¢¢< T
playerAnswering
¢¢U d
,
¢¢d e
int
¢¢f i
points
¢¢j p
,
¢¢p q
bool
¢¢r v
	isCorrect¢¢w Ä
)¢¢Ä Å
{
££ 	
lock
§§ 
(
§§ 

objectLock
§§ 
)
§§ 
{
•• 
if
¶¶ 
(
¶¶ 
roomCode
¶¶ 
!=
¶¶ 
$num
¶¶  !
&&
¶¶" $
playerAnswering
¶¶% 4
!=
¶¶5 7
null
¶¶8 <
)
¶¶< =
{
ßß 
List
®® 
<
®® !
PlayerPlayingInGame
®® ,
>
®®, -
playersPlaying
®®. <
=
®®= >#
ActiveGamesDictionary
®®? T
.
®®T U#
GetSpecificActiveGame
®®U j
(
®®j k
roomCode
®®k s
)
®®s t
;
®®t u
if
©© 
(
©© 
playersPlaying
©© &
!=
©©' )
null
©©* .
)
©©. /
{
™™ !
PlayerPlayingInGame
´´ +
specificPlayer
´´, :
=
´´; <
playersPlaying
´´= K
.
´´K L
Find
´´L P
(
´´P Q
pla
´´Q T
=>
´´U W
pla
´´X [
.
´´[ \
IdUser
´´\ b
==
´´c e
playerAnswering
´´f u
.
´´u v
IdUser
´´v |
)
´´| }
;
´´} ~
if
¨¨ 
(
¨¨ 
specificPlayer
¨¨ *
!=
¨¨+ -
null
¨¨. 2
)
¨¨2 3
{
≠≠ ,
UpdatePlayerLastQuestionStatus
ÆÆ :
(
ÆÆ: ;
specificPlayer
ÆÆ; I
,
ÆÆI J
	isCorrect
ÆÆK T
,
ÆÆT U
playerAnswering
ÆÆV e
,
ÆÆe f
points
ÆÆg m
)
ÆÆm n
;
ÆÆn o'
CheckAndProcessEndOfRound
ØØ 5
(
ØØ5 6
playersPlaying
ØØ6 D
,
ØØD E
roomCode
ØØF N
)
ØØN O
;
ØØO P
}
∞∞ 
else
±± 
{
≤≤ !
NotifyPlayersWinner
≥≥ /
(
≥≥/ 0
playersPlaying
≥≥0 >
,
≥≥> ?!
ExceptionDictionary
≥≥@ S
.
≥≥S T&
UNKOWN_EXCEPTION_OCURRED
≥≥T l
)
≥≥l m
;
≥≥m n
}
¥¥ 
}
µµ 
}
∂∂ 
}
∑∑ 
}
∏∏ 	
private
∫∫ 
void
∫∫ ,
UpdatePlayerLastQuestionStatus
∫∫ 3
(
∫∫3 4!
PlayerPlayingInGame
∫∫4 G
specificPlayer
∫∫H V
,
∫∫V W
bool
∫∫X \
	isCorrect
∫∫] f
,
∫∫f g'
PlayerInGameDataContract∫∫h Ä
playerAnswering∫∫Å ê
,∫∫ê ë
int∫∫í ï
points∫∫ñ ú
)∫∫ú ù
{
ªª 	
specificPlayer
ºº 
.
ºº #
DidAnswerLastQuestion
ºº 0
=
ºº1 2
true
ºº3 7
;
ºº7 8
if
ΩΩ 
(
ΩΩ 
	isCorrect
ΩΩ 
)
ΩΩ 
{
ææ 
specificPlayer
øø 
.
øø 
FinalPoints
øø *
=
øø+ ,
playerAnswering
øø- <
.
øø< ="
CurrentPointsOfRound
øø= Q
+=
øøR T
points
øøU [
;
øø[ \
}
¿¿ 
else
¡¡ 
{
¬¬ 
specificPlayer
√√ 
.
√√ 
FinalPoints
√√ *
=
√√+ ,
playerAnswering
√√- <
.
√√< ="
CurrentPointsOfRound
√√= Q
-=
√√R T
points
√√U [
;
√√[ \
}
ƒƒ 
}
∆∆ 	
private
»» 
void
»» '
CheckAndProcessEndOfRound
»» .
(
»». /
List
»»/ 3
<
»»3 4!
PlayerPlayingInGame
»»4 G
>
»»G H
playersPlaying
»»I W
,
»»W X
int
»»Y \
roomCode
»»] e
)
»»e f
{
…… 	
if
   
(
   
playersPlaying
   
.
   
Count
   $
==
  % '
playersPlaying
  ( 6
.
  6 7
Where
  7 <
(
  < =
pla
  = @
=>
  A C
pla
  D G
.
  G H#
DidAnswerLastQuestion
  H ]
)
  ] ^
.
  ^ _
ToList
  _ e
(
  e f
)
  f g
.
  g h
Count
  h m
)
  m n
{
ÀÀ ,
QuestionsManagerImplementation
ÃÃ .
questionsManager
ÃÃ/ ?
=
ÃÃ@ A
new
ÃÃB E
(
ÃÃE F
)
ÃÃF G
;
ÃÃG H
int
ÕÕ 
arePointsSaved
ÕÕ "
=
ÕÕ# $
questionsManager
ÕÕ% 5
.
ÕÕ5 6!
RegistryGamePlayers
ÕÕ6 I
(
ÕÕI J
roomCode
ÕÕJ R
,
ÕÕR S
playersPlaying
ÕÕT b
)
ÕÕb c
;
ÕÕc d!
NotifyPlayersWinner
ŒŒ #
(
ŒŒ# $
playersPlaying
ŒŒ$ 2
,
ŒŒ2 3
arePointsSaved
ŒŒ4 B
)
ŒŒB C
;
ŒŒC D(
CleanDictionariesAfterGame
œœ *
(
œœ* +
roomCode
œœ+ 3
)
œœ3 4
;
œœ4 5
}
–– 
}
—— 	
private
”” 
void
”” !
NotifyPlayersWinner
”” (
(
””( )
List
””) -
<
””- .!
PlayerPlayingInGame
””. A
>
””A B
playersPlaying
””C Q
,
””Q R
int
””S V
arePointsSaved
””W e
)
””e f
{
‘‘ 	
List
’’ 
<
’’ &
PlayerInGameDataContract
’’ )
>
’’) *
playersInGame
’’+ 8
=
’’9 :-
GetPlayerInGameDataContractList
’’; Z
(
’’Z [
playersPlaying
’’[ i
)
’’i j
;
’’j k
foreach
÷÷ 
(
÷÷ !
PlayerPlayingInGame
÷÷ (
player
÷÷) /
in
÷÷0 2
playersPlaying
÷÷3 A
)
÷÷A B
{
◊◊ 
try
ÿÿ 
{
ŸŸ 
player
⁄⁄ 
.
⁄⁄ !
gameCallbackChannel
⁄⁄ .
.
⁄⁄. / 
GetCallbackChannel
⁄⁄/ A
<
⁄⁄A B"
IGameActionsCallBack
⁄⁄B V
>
⁄⁄V W
(
⁄⁄W X
)
⁄⁄X Y
.
⁄⁄Y Z 
ResponseShowWinner
⁄⁄Z l
(
⁄⁄l m
playersInGame
⁄⁄m z
,
⁄⁄z {
arePointsSaved⁄⁄| ä
)⁄⁄ä ã
;⁄⁄ã å
}
€€ 
catch
‹‹ 
(
‹‹ 1
#CommunicationObjectFaultedException
‹‹ :
ex
‹‹; =
)
‹‹= >
{
›› "
ChannelAdministrator
ﬁﬁ (
.
ﬁﬁ( )&
HandleCommunicationIssue
ﬁﬁ) A
(
ﬁﬁA B
player
ﬁﬁB H
.
ﬁﬁH I
IdUser
ﬁﬁI O
,
ﬁﬁO P"
ChannelAdministrator
ﬁﬁQ e
.
ﬁﬁe f
GAME_EXCEPTION
ﬁﬁf t
)
ﬁﬁt u
;
ﬁﬁu v
ExceptionHandler
ﬂﬂ $
.
ﬂﬂ$ %
LogException
ﬂﬂ% 1
(
ﬂﬂ1 2
ex
ﬂﬂ2 4
.
ﬂﬂ4 5
InnerException
ﬂﬂ5 C
,
ﬂﬂC D!
ExceptionDictionary
ﬂﬂE X
.
ﬂﬂX Y
FATAL_EXCEPTION
ﬂﬂY h
)
ﬂﬂh i
;
ﬂﬂi j
}
‡‡ 
catch
·· 
(
·· 
TimeoutException
·· '
ex
··( *
)
··* +
{
‚‚ "
ChannelAdministrator
„„ (
.
„„( )&
HandleCommunicationIssue
„„) A
(
„„A B
player
„„B H
.
„„H I
IdUser
„„I O
,
„„O P"
ChannelAdministrator
„„Q e
.
„„e f
GAME_EXCEPTION
„„f t
)
„„t u
;
„„u v
ExceptionHandler
‰‰ $
.
‰‰$ %
LogException
‰‰% 1
(
‰‰1 2
ex
‰‰2 4
,
‰‰4 5!
ExceptionDictionary
‰‰6 I
.
‰‰I J
FATAL_EXCEPTION
‰‰J Y
)
‰‰Y Z
;
‰‰Z [
}
ÂÂ 
catch
ÊÊ 
(
ÊÊ $
CommunicationException
ÊÊ -
ex
ÊÊ. 0
)
ÊÊ0 1
{
ÁÁ "
ChannelAdministrator
ËË (
.
ËË( )&
HandleCommunicationIssue
ËË) A
(
ËËA B
player
ËËB H
.
ËËH I
IdUser
ËËI O
,
ËËO P"
ChannelAdministrator
ËËQ e
.
ËËe f
GAME_EXCEPTION
ËËf t
)
ËËt u
;
ËËu v
ExceptionHandler
ÈÈ $
.
ÈÈ$ %
LogException
ÈÈ% 1
(
ÈÈ1 2
ex
ÈÈ2 4
,
ÈÈ4 5!
ExceptionDictionary
ÈÈ6 I
.
ÈÈI J
FATAL_EXCEPTION
ÈÈJ Y
)
ÈÈY Z
;
ÈÈZ [
}
ÍÍ 
catch
ÎÎ 
(
ÎÎ '
InvalidOperationException
ÎÎ 0
ex
ÎÎ1 3
)
ÎÎ3 4
{
ÏÏ "
ChannelAdministrator
ÌÌ (
.
ÌÌ( )&
HandleCommunicationIssue
ÌÌ) A
(
ÌÌA B
player
ÌÌB H
.
ÌÌH I
IdUser
ÌÌI O
,
ÌÌO P"
ChannelAdministrator
ÌÌQ e
.
ÌÌe f
GAME_EXCEPTION
ÌÌf t
)
ÌÌt u
;
ÌÌu v
ExceptionHandler
ÓÓ $
.
ÓÓ$ %
LogException
ÓÓ% 1
(
ÓÓ1 2
ex
ÓÓ2 4
,
ÓÓ4 5!
ExceptionDictionary
ÓÓ6 I
.
ÓÓI J
FATAL_EXCEPTION
ÓÓJ Y
)
ÓÓY Z
;
ÓÓZ [
}
ÔÔ 
}
 
}
ÒÒ 	
private
ÛÛ 
void
ÛÛ (
CleanDictionariesAfterGame
ÛÛ /
(
ÛÛ/ 0
int
ÛÛ0 3
roomCode
ÛÛ4 <
)
ÛÛ< =
{
ÙÙ 	)
QuestionsForLobbyDictionary
ıı '
.
ıı' (0
"RemoveSetOFQuestionsFromDictionary
ıı( J
(
ııJ K
roomCode
ııK S
)
ııS T
;
ııT U#
GameLobbiesDictionary
ˆˆ !
.
ˆˆ! "1
#RemoveRegistryOfLobbyFromDictionary
ˆˆ" E
(
ˆˆE F
roomCode
ˆˆF N
)
ˆˆN O
;
ˆˆO P
ChatsDictionary
˜˜ 
.
˜˜ 6
(RemoveRegistryOfActiveChatFromDictionary
˜˜ D
(
˜˜D E
roomCode
˜˜E M
)
˜˜M N
;
˜˜N O
ChatsDictionary
¯¯ 
.
¯¯ ?
1RemoveRegistryOfChannelCallBakcChatFromDictionary
¯¯ M
(
¯¯M N
roomCode
¯¯N V
)
¯¯V W
;
¯¯W X
var
˘˘ 
gameToFinish
˘˘ 
=
˘˘ #
ActiveGamesDictionary
˘˘ 4
.
˘˘4 5#
GetSpecificActiveGame
˘˘5 J
(
˘˘J K
roomCode
˘˘K S
)
˘˘S T
;
˘˘T U
if
˙˙ 
(
˙˙ 
gameToFinish
˙˙ 
!=
˙˙ 
null
˙˙  $
)
˙˙$ %
{
˚˚ 
foreach
¸¸ 
(
¸¸ 
var
¸¸ 
item
¸¸ !
in
¸¸" $
gameToFinish
¸¸% 1
)
¸¸1 2
{
˝˝ #
ActiveUsersDictionary
˛˛ )
.
˛˛) *6
(RemoveRegistryOfActiveUserFromDictionary
˛˛* R
(
˛˛R S
item
˛˛S W
.
˛˛W X
IdUser
˛˛X ^
)
˛˛^ _
;
˛˛_ `
	TeamChats
ˇˇ 
.
ˇˇ 8
*RemoveRegistryOfTeamChatUserFromDictionary
ˇˇ H
(
ˇˇH I
item
ˇˇI M
.
ˇˇM N
IdUser
ˇˇN T
)
ˇˇT U
;
ˇˇU V
}
ÄÄ #
ActiveGamesDictionary
ÅÅ %
.
ÅÅ% &0
"RemoveRegistryOfGameFromDictionary
ÅÅ& H
(
ÅÅH I
roomCode
ÅÅI Q
)
ÅÅQ R
;
ÅÅR S
}
ÇÇ 
}
ÉÉ 	
public
ÖÖ 
static
ÖÖ 
List
ÖÖ 
<
ÖÖ &
PlayerInGameDataContract
ÖÖ 3
>
ÖÖ3 4-
GetPlayerInGameDataContractList
ÖÖ5 T
(
ÖÖT U
List
ÖÖU Y
<
ÖÖY Z!
PlayerPlayingInGame
ÖÖZ m
>
ÖÖm n
playersPlaying
ÖÖo }
)
ÖÖ} ~
{
ÜÜ 	
List
áá 
<
áá &
PlayerInGameDataContract
áá )
>
áá) *
playersInGame
áá+ 8
=
áá9 :
new
áá; >
(
áá> ?
)
áá? @
;
áá@ A
foreach
àà 
(
àà 
var
àà 
playing
àà  
in
àà! #
playersPlaying
àà$ 2
)
àà2 3
{
ââ &
PlayerInGameDataContract
ää (
playerInGame
ää) 5
=
ää6 7
new
ää8 ;&
PlayerInGameDataContract
ää< T
(
ääT U
)
ääU V
{
ãã 
IdUser
åå 
=
åå 
playing
åå $
.
åå$ %
IdUser
åå% +
,
åå+ ,
IdPlayer
çç 
=
çç 
playing
çç &
.
çç& '
IdPlayer
çç' /
,
çç/ 0
SideTeam
éé 
=
éé 
playing
éé &
.
éé& '
SideTeam
éé' /
,
éé/ 0
TurnOfPlayer
èè  
=
èè! "
playing
èè# *
.
èè* +
TurnOfPlayer
èè+ 7
,
èè7 8
UserName
êê 
=
êê 
playing
êê &
.
êê& '
UserName
êê' /
,
êê/ 0"
CurrentPointsOfRound
ëë (
=
ëë) *
playing
ëë+ 2
.
ëë2 3
FinalPoints
ëë3 >
,
ëë> ?
FinalPosition
íí !
=
íí" #
playing
íí$ +
.
íí+ ,
FinalPoints
íí, 7
,
íí7 8
IdAvatar
ìì 
=
ìì 
playing
ìì &
.
ìì& '
IdAvatar
ìì' /
,
ìì/ 0
}
îî 
;
îî 
playersInGame
ïï 
.
ïï 
Add
ïï !
(
ïï! "
playerInGame
ïï" .
)
ïï. /
;
ïï/ 0
}
ññ 
return
óó 
playersInGame
óó  
;
óó  !
}
òò 	
}
öö 
}õõ ‡á
üC:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameServer\JeopardyGame.Service\ServiceImplementation\GuestPlayerManagerImplementation.cs
	namespace 	
JeopardyGame
 
. 
Service 
. !
ServiceImplementation 4
{ 
internal 
class ,
 GuestPlayerManagerImplementation 3
:4 5
IGuestPlayerManager6 I
{ 
private 
readonly 
string 
GUEST_EMAIL  +
=, -

Properties. 8
.8 9
	Resources9 B
.B C
	GuestMailC L
;L M
private 
readonly 
string 
GUEST_PASSWORD  .
=/ 0

Properties1 ;
.; <
	Resources< E
.E F
GuestPasswordF S
;S T
private 
readonly 
string 

GUEST_NAME  *
=+ ,

Properties- 7
.7 8
	Resources8 A
.A B
	GuestNameB K
;K L
private 
readonly 
int 
DEFAULT_INT_VALUE .
=/ 0
$num1 2
;2 3
private 
readonly 
int 
GUEST_STATE (
=) *
$num+ ,
;, -
private 
static 
readonly 
Object  &

objectLock' 1
=2 3
new4 7
object8 >
(> ?
)? @
;@ A
public 
GenericClass 
< 
UserPojo $
>$ %
CreateUserForGuest& 8
(8 9
)9 :
{ 	
GenericClass 
< 
UserPojo !
>! "
resultToReturn# 1
=2 3
new4 7
GenericClass8 D
<D E
UserPojoE M
>M N
(N O
)O P
;P Q
lock 
( 

objectLock 
) 
{ 
try 
{   
User!! 
	guestUser!! "
=!!# $
new!!% (
User!!) -
(!!- .
)!!. /
{"" 
IdUser## 
=##  
DEFAULT_INT_VALUE##! 2
,##2 3
EmailAddress$$ $
=$$% &
GUEST_EMAIL$$' 2
,$$2 3
Name%% 
=%% 

GUEST_NAME%% )
,%%) *
UserName&&  
=&&! "
GetGuestUserName&&# 3
(&&3 4
)&&4 5
,&&5 6
Password''  
=''! "
GUEST_PASSWORD''# 1
}(( 
;(( 
GenericClassServer)) &
<))& '
User))' +
>))+ ,
	userSaved))- 6
=))7 8$
UserManagerDataOperation))9 Q
.))Q R
SaveUserInDataBase))R d
())d e
	guestUser))e n
)))n o
;))o p
if** 
(** 
	userSaved** !
.**! "
	CodeEvent**" +
==**, .
ExceptionDictionary**/ B
.**B C
SUCCESFULL_EVENT**C S
)**S T
{++ 

PlayerPojo,, "
playerToSave,,# /
=,,0 1
new,,2 5

PlayerPojo,,6 @
(,,@ A
),,A B
;,,B C
playerToSave-- $
.--$ %
IdPlayer--% -
=--. /
DEFAULT_INT_VALUE--0 A
;--A B
playerToSave.. $
...$ %
GeneralPoints..% 2
=..3 4
DEFAULT_INT_VALUE..5 F
;..F G
playerToSave// $
.//$ %
	NoReports//% .
=/// 0
DEFAULT_INT_VALUE//1 B
;//B C
playerToSave00 $
.00$ %
IdActualAvatar00% 3
=004 5
DEFAULT_INT_VALUE006 G
;00G H
playerToSave11 $
.11$ %
IdUser11% +
=11, -
	userSaved11. 7
.117 8
ObjectSaved118 C
.11C D
IdUser11D J
;11J K
playerToSave22 $
.22$ %
IdState22% ,
=22- .
GUEST_STATE22/ :
;22: ;%
UserManagerImplementation33 1
userManager332 =
=33> ?
new33@ C
(33C D
)33D E
;33E F
int44 %
isPlayerSavedSuccessfully44 5
=446 7
userManager448 C
.44C D

SavePlayer44D N
(44N O
playerToSave44O [
)44[ \
;44\ ]
if55 
(55 %
isPlayerSavedSuccessfully55 5
==556 8
ExceptionDictionary559 L
.55L M
SUCCESFULL_EVENT55M ]
)55] ^
{66 
resultToReturn77 *
.77* +
ObjectSaved77+ 6
=777 8
UserInterpreter779 H
.77H I$
FromUserEntityToUserPojo77I a
(77a b
	userSaved77b k
.77k l
ObjectSaved77l w
)77w x
;77x y
resultToReturn88 *
.88* +
	CodeEvent88+ 4
=885 6
ExceptionDictionary887 J
.88J K
SUCCESFULL_EVENT88K [
;88[ \
}99 
else:: 
{;; $
UserManagerDataOperation<< 4
.<<4 5
DeleteUserById<<5 C
(<<C D
	userSaved<<D M
.<<M N
ObjectSaved<<N Y
.<<Y Z
IdUser<<Z `
)<<` a
;<<a b
resultToReturn== *
.==* +
	CodeEvent==+ 4
===5 6%
isPlayerSavedSuccessfully==7 P
;==P Q
}>> 
}?? 
else@@ 
{AA 
resultToReturnBB &
.BB& '
	CodeEventBB' 0
=BB1 2
	userSavedBB3 <
.BB< =
	CodeEventBB= F
;BBF G
}CC 
}DD 
catchEE 
(EE /
#CommunicationObjectFaultedExceptionEE :
exEE; =
)EE= >
{FF 
resultToReturnGG "
.GG" #
	CodeEventGG# ,
=GG- .
ExceptionDictionaryGG/ B
.GGB C
UNSUCCESFULL_EVENTGGC U
;GGU V
ExceptionHandlerHH $
.HH$ %
LogExceptionHH% 1
(HH1 2
exHH2 4
,HH4 5
ExceptionDictionaryHH6 I
.HHI J
FATAL_EXCEPTIONHHJ Y
)HHY Z
;HHZ [
}II 
catchJJ 
(JJ 
TimeoutExceptionJJ '
exJJ( *
)JJ* +
{KK 
resultToReturnLL "
.LL" #
	CodeEventLL# ,
=LL- .
ExceptionDictionaryLL/ B
.LLB C
UNSUCCESFULL_EVENTLLC U
;LLU V
ExceptionHandlerMM $
.MM$ %
LogExceptionMM% 1
(MM1 2
exMM2 4
,MM4 5
ExceptionDictionaryMM6 I
.MMI J
FATAL_EXCEPTIONMMJ Y
)MMY Z
;MMZ [
}NN 
catchOO 
(OO "
CommunicationExceptionOO -
exOO. 0
)OO0 1
{PP 
resultToReturnQQ "
.QQ" #
	CodeEventQQ# ,
=QQ- .
ExceptionDictionaryQQ/ B
.QQB C
UNSUCCESFULL_EVENTQQC U
;QQU V
ExceptionHandlerRR $
.RR$ %
LogExceptionRR% 1
(RR1 2
exRR2 4
,RR4 5
ExceptionDictionaryRR6 I
.RRI J
FATAL_EXCEPTIONRRJ Y
)RRY Z
;RRZ [
}SS 
catchTT 
(TT %
InvalidOperationExceptionTT 0
exTT1 3
)TT3 4
{UU 
resultToReturnVV "
.VV" #
	CodeEventVV# ,
=VV- .
ExceptionDictionaryVV/ B
.VVB C
UNSUCCESFULL_EVENTVVC U
;VVU V
ExceptionHandlerWW $
.WW$ %
LogExceptionWW% 1
(WW1 2
exWW2 4
,WW4 5
ExceptionDictionaryWW6 I
.WWI J
FATAL_EXCEPTIONWWJ Y
)WWY Z
;WWZ [
}XX 
}YY 
returnZZ 
resultToReturnZZ !
;ZZ! "
}[[ 	
public^^ 
void^^ 
DeleteGuest^^ 
(^^  
int^^  #
idUser^^$ *
)^^* +
{__ 	$
UserManagerDataOperation`` $
.``$ %
DeleteUserById``% 3
(``3 4
idUser``4 :
)``: ;
;``; <
}aa 	
privatecc 
staticcc 
stringcc 
GetGuestUserNamecc .
(cc. /
)cc/ 0
{dd 	
Randomee 
generateAleatoryee #
=ee$ %
newee& )
Randomee* 0
(ee0 1
)ee1 2
;ee2 3
intff 
aleatoryNumberff 
=ff  
generateAleatoryff! 1
.ff1 2
Nextff2 6
(ff6 7
$numff7 8
,ff8 9
$numff: <
)ff< =
;ff= >
returngg 
aleatoryNumbergg !
switchgg" (
{hh 
$numii 
=>ii 

Propertiesii 
.ii  
	Resourcesii  )
.ii) *

Wachiturroii* 4
,ii4 5
$numjj 
=>jj 

Propertiesjj 
.jj  
	Resourcesjj  )
.jj) *
Papikrajj* 1
,jj1 2
$numkk 
=>kk 

Propertieskk 
.kk  
	Resourceskk  )
.kk) *

TigerWoodskk* 4
,kk4 5
$numll 
=>ll 

Propertiesll 
.ll  
	Resourcesll  )
.ll) *
_1ll* ,
,ll, -
$nummm 
=>mm 

Propertiesmm 
.mm  
	Resourcesmm  )
.mm) *
JustNoobmm* 2
,mm2 3
$numnn 
=>nn 

Propertiesnn 
.nn  
	Resourcesnn  )
.nn) *

JustMasternn* 4
,nn4 5
$numoo 
=>oo 

Propertiesoo 
.oo  
	Resourcesoo  )
.oo) *

NoobMasteroo* 4
,oo4 5
$numpp 
=>pp 

Propertiespp 
.pp  
	Resourcespp  )
.pp) *
Justpp* .
,pp. /
$numqq 
=>qq 

Propertiesqq 
.qq  
	Resourcesqq  )
.qq) *
ShadowRunnerqq* 6
,qq6 7
$numrr 
=>rr 

Propertiesrr  
.rr  !
	Resourcesrr! *
.rr* +
PhoenixKnightrr+ 8
,rr8 9
$numss 
=>ss 

Propertiesss  
.ss  !
	Resourcesss! *
.ss* +

InfernoWarss+ 5
,ss5 6
$numtt 
=>tt 

Propertiestt  
.tt  !
	Resourcestt! *
.tt* +
QuantumGamertt+ 7
,tt7 8
$numuu 
=>uu 

Propertiesuu  
.uu  !
	Resourcesuu! *
.uu* +
Quantumuu+ 2
,uu2 3
$numvv 
=>vv 

Propertiesvv  
.vv  !
	Resourcesvv! *
.vv* +
MysticSeekervv+ 7
,vv7 8
$numww 
=>ww 

Propertiesww  
.ww  !
	Resourcesww! *
.ww* +

CyberNinjaww+ 5
,ww5 6
$numxx 
=>xx 

Propertiesxx  
.xx  !
	Resourcesxx! *
.xx* +
GalaxyExxx+ 3
,xx3 4
$numyy 
=>yy 

Propertiesyy  
.yy  !
	Resourcesyy! *
.yy* +
	Elementalyy+ 4
,yy4 5
$numzz 
=>zz 

Propertieszz  
.zz  !
	Resourceszz! *
.zz* +
	Starlightzz+ 4
,zz4 5
$num{{ 
=>{{ 

Properties{{  
.{{  !
	Resources{{! *
.{{* +
	Celestial{{+ 4
,{{4 5
$num|| 
=>|| 

Properties||  
.||  !
	Resources||! *
.||* +
MidnightVoy||+ 6
,||6 7
$num}} 
=>}} 

Properties}}  
.}}  !
	Resources}}! *
.}}* +
SolarSorcerer}}+ 8
,}}8 9
$num~~ 
=>~~ 

Properties~~  
.~~  !
	Resources~~! *
.~~* +
LunarAssassin~~+ 8
,~~8 9
$num 
=> 

Properties  
.  !
	Resources! *
.* +

NovaVortex+ 5
,5 6
$num
ÄÄ 
=>
ÄÄ 

Properties
ÄÄ  
.
ÄÄ  !
	Resources
ÄÄ! *
.
ÄÄ* +
Blizzard
ÄÄ+ 3
,
ÄÄ3 4
$num
ÅÅ 
=>
ÅÅ 

Properties
ÅÅ  
.
ÅÅ  !
	Resources
ÅÅ! *
.
ÅÅ* +
NoBody
ÅÅ+ 1
,
ÅÅ1 2
$num
ÇÇ 
=>
ÇÇ 

Properties
ÇÇ  
.
ÇÇ  !
	Resources
ÇÇ! *
.
ÇÇ* +
ThunderSpec
ÇÇ+ 6
,
ÇÇ6 7
$num
ÉÉ 
=>
ÉÉ 

Properties
ÉÉ  
.
ÉÉ  !
	Resources
ÉÉ! *
.
ÉÉ* +
EternalRogue
ÉÉ+ 7
,
ÉÉ7 8
_
ÑÑ 
=>
ÑÑ 

Properties
ÑÑ 
.
ÑÑ  
	Resources
ÑÑ  )
.
ÑÑ) *

Wachiturro
ÑÑ* 4
,
ÑÑ4 5
}
ÖÖ 
;
ÖÖ 
}
ÜÜ 	
public
àà 
static
àà 
bool
àà #
IsUserNameInBlackList
àà 0
(
àà0 1
string
àà1 7
userName
àà8 @
)
àà@ A
{
ââ 	
List
ää 
<
ää 
string
ää 
>
ää "
listOfGuestUserNames
ää -
=
ää. /
new
ää0 3
List
ää4 8
<
ää8 9
string
ää9 ?
>
ää? @
{
ãã 

Properties
åå 
.
åå 
	Resources
åå $
.
åå$ %

Wachiturro
åå% /
,
åå/ 0

Properties
çç 
.
çç 
	Resources
çç $
.
çç$ %
Papikra
çç% ,
,
çç, -

Properties
éé 
.
éé 
	Resources
éé $
.
éé$ %

TigerWoods
éé% /
,
éé/ 0

Properties
èè 
.
èè 
	Resources
èè $
.
èè$ %
_1
èè% '
,
èè' (

Properties
êê 
.
êê 
	Resources
êê $
.
êê$ %
JustNoob
êê% -
,
êê- .

Properties
ëë 
.
ëë 
	Resources
ëë $
.
ëë$ %

JustMaster
ëë% /
,
ëë/ 0

Properties
íí 
.
íí 
	Resources
íí $
.
íí$ %

NoobMaster
íí% /
,
íí/ 0

Properties
ìì 
.
ìì 
	Resources
ìì $
.
ìì$ %
Just
ìì% )
,
ìì) *

Properties
îî 
.
îî 
	Resources
îî $
.
îî$ %
ShadowRunner
îî% 1
,
îî1 2

Properties
ïï 
.
ïï 
	Resources
ïï $
.
ïï$ %
PhoenixKnight
ïï% 2
,
ïï2 3

Properties
ññ 
.
ññ 
	Resources
ññ $
.
ññ$ %

InfernoWar
ññ% /
,
ññ/ 0

Properties
óó 
.
óó 
	Resources
óó $
.
óó$ %
QuantumGamer
óó% 1
,
óó1 2

Properties
òò 
.
òò 
	Resources
òò $
.
òò$ %
Quantum
òò% ,
,
òò, -

Properties
ôô 
.
ôô 
	Resources
ôô $
.
ôô$ %
MysticSeeker
ôô% 1
,
ôô1 2

Properties
öö 
.
öö 
	Resources
öö $
.
öö$ %

CyberNinja
öö% /
,
öö/ 0

Properties
õõ 
.
õõ 
	Resources
õõ $
.
õõ$ %
GalaxyEx
õõ% -
,
õõ- .

Properties
úú 
.
úú 
	Resources
úú $
.
úú$ %
	Elemental
úú% .
,
úú. /

Properties
ùù 
.
ùù 
	Resources
ùù $
.
ùù$ %
	Starlight
ùù% .
,
ùù. /

Properties
ûû 
.
ûû 
	Resources
ûû $
.
ûû$ %
	Celestial
ûû% .
,
ûû. /

Properties
üü 
.
üü 
	Resources
üü $
.
üü$ %
MidnightVoy
üü% 0
,
üü0 1

Properties
†† 
.
†† 
	Resources
†† $
.
††$ %
SolarSorcerer
††% 2
,
††2 3

Properties
°° 
.
°° 
	Resources
°° $
.
°°$ %
LunarAssassin
°°% 2
,
°°2 3

Properties
¢¢ 
.
¢¢ 
	Resources
¢¢ $
.
¢¢$ %

NovaVortex
¢¢% /
,
¢¢/ 0

Properties
££ 
.
££ 
	Resources
££ $
.
££$ %
Blizzard
££% -
,
££- .

Properties
§§ 
.
§§ 
	Resources
§§ $
.
§§$ %
NoBody
§§% +
,
§§+ ,

Properties
•• 
.
•• 
	Resources
•• $
.
••$ %
ThunderSpec
••% 0
,
••0 1

Properties
¶¶ 
.
¶¶ 
	Resources
¶¶ $
.
¶¶$ %
EternalRogue
¶¶% 1
}
ßß 
;
ßß 
return
®® "
listOfGuestUserNames
®® '
.
®®' (
Contains
®®( 0
(
®®0 1
userName
®®1 9
)
®®9 :
;
®®: ;
}
™™ 	
}
´´ 
}¨¨ ú
ñC:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameServer\JeopardyGame.Service\ServiceImplementation\HeartBeatImplementation.cs
	namespace 	
JeopardyGame
 
. 
Service 
. !
ServiceImplementation 4
{ 
public 

partial 
class #
HeartBeatImplementation 0
:1 2

IHeartBeat3 =
{		 
public

 
void

 
	Heartbeat

 
(

 
)

 
{ 	
try 
{ 
} 
catch 
( /
#CommunicationObjectFaultedException 6
ex7 9
)9 :
{ 
ExceptionHandler  
.  !
LogException! -
(- .
ex. 0
,0 1
ExceptionDictionary2 E
.E F
FATAL_EXCEPTIONF U
)U V
;V W
} 
catch 
( 
TimeoutException #
ex$ &
)& '
{ 
ExceptionHandler  
.  !
LogException! -
(- .
ex. 0
,0 1
ExceptionDictionary2 E
.E F
FATAL_EXCEPTIONF U
)U V
;V W
} 
catch 
( "
CommunicationException )
ex* ,
), -
{ 
ExceptionHandler  
.  !
LogException! -
(- .
ex. 0
,0 1
ExceptionDictionary2 E
.E F
FATAL_EXCEPTIONF U
)U V
;V W
} 
catch 
( %
InvalidOperationException ,
ex- /
)/ 0
{ 
ExceptionHandler  
.  !
LogException! -
(- .
ex. 0
,0 1
ExceptionDictionary2 E
.E F
FATAL_EXCEPTIONF U
)U V
;V W
} 
}   	
}!! 
}"" ÓR
úC:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameServer\JeopardyGame.Service\ServiceImplementation\CheckUserLivingImplementation.cs
	namespace 	
JeopardyGame
 
. 
Service 
. !
ServiceImplementation 4
{ 
public 

class )
CheckUserLivingImplementation .
:/ 0
ICheckUserLiving1 A
{ 
private 
static 
readonly 
Object  &

objectLock' 1
=2 3
new4 7
(7 8
)8 9
;9 :
public 
int 
RenewLivingCallBack &
(& '
UserPojo' /
user0 4
)4 5
{ 	
int 
resultToReturn 
=  
ExceptionDictionary! 4
.4 5
UNSUCCESFULL_EVENT5 G
;G H
lock 
( 

objectLock 
) 
{ 
try 
{ 
if 
( 
user 
== 
null  $
)$ %
{ 
return 
resultToReturn -
=. /
ExceptionDictionary0 C
.C D
NULL_PARAEMETERD S
;S T
} 
OperationContext $
context% ,
=- .
OperationContext/ ?
.? @
Current@ G
;G H
LivingClients !
.! "
RenewLivingCallBack" 5
(5 6
user6 :
.: ;
UserName; C
,C D
contextE L
)L M
;M N
resultToReturn   "
=  # $
ExceptionDictionary  % 8
.  8 9
SUCCESFULL_EVENT  9 I
;  I J
}"" 
catch## 
(## /
#CommunicationObjectFaultedException## :
ex##; =
)##= >
{$$ 
resultToReturn%% "
=%%# $
ExceptionDictionary%%% 8
.%%8 9
UNSUCCESFULL_EVENT%%9 K
;%%K L 
ChannelAdministrator&& (
.&&( )$
HandleCommunicationIssue&&) A
(&&A B
user&&B F
.&&F G
IdUser&&G M
,&&M N 
ChannelAdministrator&&O c
.&&c d"
AVAILABILITY_EXCEPTION&&d z
)&&z {
;&&{ |
ExceptionHandler'' $
.''$ %
LogException''% 1
(''1 2
ex''2 4
,''4 5
ExceptionDictionary''6 I
.''I J
FATAL_EXCEPTION''J Y
)''Y Z
;''Z [
}(( 
catch)) 
()) 
TimeoutException)) '
ex))( *
)))* +
{** 
resultToReturn++ "
=++# $
ExceptionDictionary++% 8
.++8 9
UNSUCCESFULL_EVENT++9 K
;++K L 
ChannelAdministrator,, (
.,,( )$
HandleCommunicationIssue,,) A
(,,A B
user,,B F
.,,F G
IdUser,,G M
,,,M N 
ChannelAdministrator,,O c
.,,c d"
AVAILABILITY_EXCEPTION,,d z
),,z {
;,,{ |
ExceptionHandler-- $
.--$ %
LogException--% 1
(--1 2
ex--2 4
,--4 5
ExceptionDictionary--6 I
.--I J
FATAL_EXCEPTION--J Y
)--Y Z
;--Z [
}.. 
catch// 
(// "
CommunicationException// -
ex//. 0
)//0 1
{00 
resultToReturn11 "
=11# $
ExceptionDictionary11% 8
.118 9
UNSUCCESFULL_EVENT119 K
;11K L 
ChannelAdministrator22 (
.22( )$
HandleCommunicationIssue22) A
(22A B
user22B F
.22F G
IdUser22G M
,22M N 
ChannelAdministrator22O c
.22c d"
AVAILABILITY_EXCEPTION22d z
)22z {
;22{ |
ExceptionHandler33 $
.33$ %
LogException33% 1
(331 2
ex332 4
,334 5
ExceptionDictionary336 I
.33I J
FATAL_EXCEPTION33J Y
)33Y Z
;33Z [
}44 
catch55 
(55 %
InvalidOperationException55 0
ex551 3
)553 4
{66 
resultToReturn77 "
=77# $
ExceptionDictionary77% 8
.778 9
UNSUCCESFULL_EVENT779 K
;77K L 
ChannelAdministrator88 (
.88( )$
HandleCommunicationIssue88) A
(88A B
user88B F
.88F G
IdUser88G M
,88M N 
ChannelAdministrator88O c
.88c d"
AVAILABILITY_EXCEPTION88d z
)88z {
;88{ |
ExceptionHandler99 $
.99$ %
LogException99% 1
(991 2
ex992 4
,994 5
ExceptionDictionary996 I
.99I J
FATAL_EXCEPTION99J Y
)99Y Z
;99Z [
}:: 
};; 
return<< 
resultToReturn<< !
;<<! "
}== 	
public?? 
int?? '
SubscribeToICheckUserLiving?? .
(??. /
UserPojo??/ 7
user??8 <
)??< =
{@@ 	
intAA 
resultToReturnAA 
=AA  
ExceptionDictionaryAA! 4
.AA4 5
UNSUCCESFULL_EVENTAA5 G
;AAG H
lockBB 
(BB 

objectLockBB 
)BB 
{CC 
tryDD 
{EE 
ifFF 
(FF 
userFF 
==FF 
nullFF  $
)FF$ %
{GG 
returnHH 
ExceptionDictionaryHH 2
.HH2 3
NULL_PARAEMETERHH3 B
;HHB C
}II 
varJJ 
clientJJ 
=JJ  
LivingClientsJJ! .
.JJ. /
	GetClientJJ/ 8
(JJ8 9
userJJ9 =
.JJ= >
UserNameJJ> F
)JJF G
;JJG H
ifKK 
(KK 
clientKK 
==KK !
nullKK" &
)KK& '
{LL 
OperationContextMM (
contextMM) 0
=MM1 2
OperationContextMM3 C
.MMC D
CurrentMMD K
;MMK L
LivingClientsNN %
.NN% &)
RegisterNewClientInDictionaryNN& C
(NNC D
userNND H
.NNH I
UserNameNNI Q
,NNQ R
contextNNS Z
)NNZ [
;NN[ \
resultToReturnOO &
=OO' (
ExceptionDictionaryOO) <
.OO< =
SUCCESFULL_EVENTOO= M
;OOM N
}PP 
}QQ 
catchRR 
(RR /
#CommunicationObjectFaultedExceptionRR :
exRR; =
)RR= >
{SS  
ChannelAdministratorTT (
.TT( )$
HandleCommunicationIssueTT) A
(TTA B
userTTB F
.TTF G
IdUserTTG M
,TTM N 
ChannelAdministratorTTO c
.TTc d"
AVAILABILITY_EXCEPTIONTTd z
)TTz {
;TT{ |
ExceptionHandlerUU $
.UU$ %
LogExceptionUU% 1
(UU1 2
exUU2 4
,UU4 5
ExceptionDictionaryUU6 I
.UUI J
FATAL_EXCEPTIONUUJ Y
)UUY Z
;UUZ [
}VV 
catchWW 
(WW 
TimeoutExceptionWW '
exWW( *
)WW* +
{XX  
ChannelAdministratorYY (
.YY( )$
HandleCommunicationIssueYY) A
(YYA B
userYYB F
.YYF G
IdUserYYG M
,YYM N 
ChannelAdministratorYYO c
.YYc d"
AVAILABILITY_EXCEPTIONYYd z
)YYz {
;YY{ |
ExceptionHandlerZZ $
.ZZ$ %
LogExceptionZZ% 1
(ZZ1 2
exZZ2 4
,ZZ4 5
ExceptionDictionaryZZ6 I
.ZZI J
FATAL_EXCEPTIONZZJ Y
)ZZY Z
;ZZZ [
}[[ 
catch\\ 
(\\ "
CommunicationException\\ -
ex\\. 0
)\\0 1
{]]  
ChannelAdministrator^^ (
.^^( )$
HandleCommunicationIssue^^) A
(^^A B
user^^B F
.^^F G
IdUser^^G M
,^^M N 
ChannelAdministrator^^O c
.^^c d"
AVAILABILITY_EXCEPTION^^d z
)^^z {
;^^{ |
ExceptionHandler__ $
.__$ %
LogException__% 1
(__1 2
ex__2 4
,__4 5
ExceptionDictionary__6 I
.__I J
FATAL_EXCEPTION__J Y
)__Y Z
;__Z [
}`` 
catchaa 
(aa %
InvalidOperationExceptionaa 0
exaa1 3
)aa3 4
{bb  
ChannelAdministratorcc (
.cc( )$
HandleCommunicationIssuecc) A
(ccA B
userccB F
.ccF G
IdUserccG M
,ccM N 
ChannelAdministratorccO c
.ccc d"
AVAILABILITY_EXCEPTIONccd z
)ccz {
;cc{ |
ExceptionHandlerdd $
.dd$ %
LogExceptiondd% 1
(dd1 2
exdd2 4
,dd4 5
ExceptionDictionarydd6 I
.ddI J
FATAL_EXCEPTIONddJ Y
)ddY Z
;ddZ [
}ee 
}ff 
returngg 
resultToReturngg !
;gg! "
}hh 	
}kk 
publicmm 

classmm 4
(CheckUserLivingUnsubscribeImplementationmm 9
:mm: ;'
ICheckUserLivingUnsubscribemm< W
{nn 
privateoo 
staticoo 
readonlyoo 
Objectoo  &

objectLockoo' 1
=oo2 3
newoo4 7
(oo7 8
)oo8 9
;oo9 :
publicpp 
voidpp +
UnsubscribeFromICheckUserLivingpp 3
(pp3 4
UserPojopp4 <
userpp= A
)ppA B
{qq 	
lockrr 
(rr 

objectLockrr 
)rr 
{ss 
iftt 
(tt 
usertt 
!=tt 
nulltt  
)tt  !
{uu 
varvv 
clientvv 
=vv  
LivingClientsvv! .
.vv. /
	GetClientvv/ 8
(vv8 9
uservv9 =
.vv= >
UserNamevv> F
)vvF G
;vvG H
ifww 
(ww 
clientww 
!=ww !
nullww" &
)ww& '
{xx 
LivingClientsyy %
.yy% &&
RemoveClientFromDictionaryyy& @
(yy@ A
useryyA E
.yyE F
UserNameyyF N
)yyN O
;yyO P
}zz 
}{{ 
}|| 
}}} 	
}~~ 
} ´í
ïC:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameServer\JeopardyGame.Service\ServiceImplementation\LiveChatImplementation.cs
	namespace 	
JeopardyGame
 
. 
Service 
. !
ServiceImplementation 4
{ 
public 

partial 
class "
LiveChatImplementation /
:0 1
	ILiveChat2 ;
{ 
private 
readonly 
int 
NULL_INT_VALUE +
=, -
$num. /
;/ 0
private 
static 
readonly 
Object  &

objectLock' 1
=2 3
new4 7
(7 8
)8 9
;9 :
public 
GenericClass 
< 
bool  
>  !
CreateChatForLobby" 4
(4 5
int5 8
roomCode9 A
,A B
intC F
idAdminG N
)N O
{ 	
GenericClass 
< 
bool 
> 
resultToReturn -
=. /
new0 3
GenericClass4 @
<@ A
boolA E
>E F
(F G
)G H
;H I
lock 
( 

objectLock 
) 
{ 
try 
{ 
if 
( 
roomCode  
==! #
NULL_INT_VALUE$ 2
||3 5
idAdmin6 =
==> @
NULL_INT_VALUEA O
)O P
{ 
return !
NullParametersHandler 4
.4 5'
HandleNullParametersService5 P
(P Q
resultToReturnQ _
)_ `
;` a
} +
RegistryNewHistoricalOfMessages   3
(  3 4
roomCode  4 <
,  < =
idAdmin  > E
)  E F
;  F G#
RegistryNewChatCallBack!! +
(!!+ ,
idAdmin!!, 3
,!!3 4
roomCode!!5 =
,!!= >
OperationContext!!? O
.!!O P
Current!!P W
)!!W X
;!!X Y
resultToReturn"" "
.""" #
ObjectSaved""# .
=""/ 0
true""1 5
;""5 6
resultToReturn## "
.##" #
	CodeEvent### ,
=##- .
ExceptionDictionary##/ B
.##B C
SUCCESFULL_EVENT##C S
;##S T
}$$ 
catch%% 
(%% /
#CommunicationObjectFaultedException%% :
ex%%; =
)%%= >
{&& 
resultToReturn'' "
.''" #
	CodeEvent''# ,
=''- .
ExceptionDictionary''/ B
.''B C
UNSUCCESFULL_EVENT''C U
;''U V 
ChannelAdministrator(( (
.((( )$
HandleCommunicationIssue(() A
(((A B
idAdmin((B I
,((I J 
ChannelAdministrator((K _
.((_ `
LOBBY_EXCEPTION((` o
)((o p
;((p q
ExceptionHandler)) $
.))$ %
LogException))% 1
())1 2
ex))2 4
,))4 5
ExceptionDictionary))6 I
.))I J
FATAL_EXCEPTION))J Y
)))Y Z
;))Z [
}** 
catch++ 
(++ 
TimeoutException++ '
ex++( *
)++* +
{,, 
resultToReturn-- "
.--" #
	CodeEvent--# ,
=--- .
ExceptionDictionary--/ B
.--B C
UNSUCCESFULL_EVENT--C U
;--U V 
ChannelAdministrator.. (
...( )$
HandleCommunicationIssue..) A
(..A B
idAdmin..B I
,..I J 
ChannelAdministrator..K _
..._ `
LOBBY_EXCEPTION..` o
)..o p
;..p q
ExceptionHandler// $
.//$ %
LogException//% 1
(//1 2
ex//2 4
,//4 5
ExceptionDictionary//6 I
.//I J
FATAL_EXCEPTION//J Y
)//Y Z
;//Z [
}00 
catch11 
(11 "
CommunicationException11 -
ex11. 0
)110 1
{22 
resultToReturn33 "
.33" #
	CodeEvent33# ,
=33- .
ExceptionDictionary33/ B
.33B C
UNSUCCESFULL_EVENT33C U
;33U V 
ChannelAdministrator44 (
.44( )$
HandleCommunicationIssue44) A
(44A B
idAdmin44B I
,44I J 
ChannelAdministrator44K _
.44_ `
LOBBY_EXCEPTION44` o
)44o p
;44p q
ExceptionHandler55 $
.55$ %
LogException55% 1
(551 2
ex552 4
,554 5
ExceptionDictionary556 I
.55I J
FATAL_EXCEPTION55J Y
)55Y Z
;55Z [
}66 
catch77 
(77 %
InvalidOperationException77 0
ex771 3
)773 4
{88 
resultToReturn99 "
.99" #
	CodeEvent99# ,
=99- .
ExceptionDictionary99/ B
.99B C
UNSUCCESFULL_EVENT99C U
;99U V 
ChannelAdministrator:: (
.::( )$
HandleCommunicationIssue::) A
(::A B
idAdmin::B I
,::I J 
ChannelAdministrator::K _
.::_ `
LOBBY_EXCEPTION::` o
)::o p
;::p q
ExceptionHandler;; $
.;;$ %
LogException;;% 1
(;;1 2
ex;;2 4
,;;4 5
ExceptionDictionary;;6 I
.;;I J
FATAL_EXCEPTION;;J Y
);;Y Z
;;;Z [
}<< 
}== 
return>> 
resultToReturn>> !
;>>! "
}?? 	
privateAA 
voidAA +
RegistryNewHistoricalOfMessagesAA 4
(AA4 5
intAA5 8
roomCodeAA9 A
,AAA B
intAAC F
idAdminAAG N
)AAN O
{BB 	#
HistoricalOfAllMessagesCC #
messagesHistoricalCC$ 6
=CC7 8
newCC9 <#
HistoricalOfAllMessagesCC= T
(CCT U
)CCU V
;CCV W
messagesHistoricalDD 
.DD 
idAdminDD &
=DD' (
idAdminDD) 0
;DD0 1
ChatsDictionaryEE 
.EE '
RegisterNewChatInDictionaryEE 7
(EE7 8
roomCodeEE8 @
,EE@ A
messagesHistoricalEEB T
)EET U
;EEU V
}FF 	
privateHH 
voidHH #
RegistryNewChatCallBackHH ,
(HH, -
intHH- 0
idAdminHH1 8
,HH8 9
intHH: =
roomCodeHH> F
,HHF G
OperationContextHHH X
contextHHY `
)HH` a
{II 	'
SpecificChannelCallBackChatJJ '
specificChannelChatJJ( ;
=JJ< =
newJJ> A'
SpecificChannelCallBackChatJJB ]
(JJ] ^
)JJ^ _
;JJ_ `
specificChannelChatKK 
.KK  
idUserKK  &
=KK' (
idAdminKK) 0
;KK0 1
specificChannelChatLL 
.LL  $
communicationChannelChatLL  8
=LL9 :
contextLL; B
;LLB C)
ChannelsCallBackInActiveChatsMM )&
activeChannelsCallBackChatMM* D
=MME F
newMMG J)
ChannelsCallBackInActiveChatsMMK h
(MMh i
)MMi j
;MMj k&
activeChannelsCallBackChatNN &
.NN& '
idAdminNN' .
=NN/ 0
idAdminNN1 8
;NN8 9&
activeChannelsCallBackChatOO &
.OO& '"
listOfChannelsCallBackOO' =
.OO= >
AddOO> A
(OOA B
specificChannelChatOOB U
)OOU V
;OOV W
ChatsDictionaryPP 
.PP *
RegisterNewChannelCallbackChatPP :
(PP: ;
roomCodePP; C
,PPC D&
activeChannelsCallBackChatPPE _
)PP_ `
;PP` a
}QQ 	
publicSS 
GenericClassSS 
<SS 
ListSS  
<SS  !
MessageChatSS! ,
>SS, -
>SS- .
GetAllMessagesSS/ =
(SS= >
intSS> A
roomCodeSSB J
,SSJ K
intSSL O
idUserSSP V
)SSV W
{TT 	
lockUU 
(UU 

objectLockUU 
)UU 
{VV 
GenericClassWW 
<WW 
ListWW !
<WW! "
MessageChatWW" -
>WW- .
>WW. /
resultToReturnWW0 >
=WW? @
newWWA D
GenericClassWWE Q
<WWQ R
ListWWR V
<WWV W
MessageChatWWW b
>WWb c
>WWc d
(WWd e
)WWe f
;WWf g
tryXX 
{YY 
ifZZ 
(ZZ 
roomCodeZZ  
<=ZZ! #
NULL_INT_VALUEZZ$ 2
)ZZ2 3
{[[ 
return\\ !
NullParametersHandler\\ 4
.\\4 5'
HandleNullParametersService\\5 P
(\\P Q
resultToReturn\\Q _
)\\_ `
;\\` a
}]] #
HistoricalOfAllMessages^^ +
messagesHistorical^^, >
=^^? @
ChatsDictionary^^A P
.^^P Q
GetActiveChat^^Q ^
(^^^ _
roomCode^^_ g
)^^g h
;^^h i
if__ 
(__ 
messagesHistorical__ *
!=__+ -
null__. 2
)__2 3
{`` 
resultToReturnaa &
.aa& '
ObjectSavedaa' 2
=aa3 4
messagesHistoricalaa5 G
.aaG H
listOfMessagesaaH V
;aaV W
resultToReturnbb &
.bb& '
	CodeEventbb' 0
=bb1 2
ExceptionDictionarybb3 F
.bbF G
SUCCESFULL_EVENTbbG W
;bbW X2
&RegisterNewChannelInChatChannelStoragecc >
(cc> ?
roomCodecc? G
,ccG H
idUserccI O
)ccO P
;ccP Q
}dd 
elseee 
{ff 
resultToReturngg &
.gg& '
	CodeEventgg' 0
=gg1 2
ExceptionDictionarygg3 F
.ggF G
UNSUCCESFULL_EVENTggG Y
;ggY Z
}hh 
}ii 
catchjj 
(jj /
#CommunicationObjectFaultedExceptionjj :
exjj; =
)jj= >
{kk 
resultToReturnll "
.ll" #
	CodeEventll# ,
=ll- .
ExceptionDictionaryll/ B
.llB C
UNSUCCESFULL_EVENTllC U
;llU V 
ChannelAdministratormm (
.mm( )$
HandleCommunicationIssuemm) A
(mmA B
idUsermmB H
,mmH I 
ChannelAdministratormmJ ^
.mm^ _
LOBBY_EXCEPTIONmm_ n
)mmn o
;mmo p
ExceptionHandlernn $
.nn$ %
LogExceptionnn% 1
(nn1 2
exnn2 4
,nn4 5
ExceptionDictionarynn6 I
.nnI J
FATAL_EXCEPTIONnnJ Y
)nnY Z
;nnZ [
}oo 
catchpp 
(pp 
TimeoutExceptionpp '
expp( *
)pp* +
{qq 
resultToReturnrr "
.rr" #
	CodeEventrr# ,
=rr- .
ExceptionDictionaryrr/ B
.rrB C
UNSUCCESFULL_EVENTrrC U
;rrU V 
ChannelAdministratorss (
.ss( )$
HandleCommunicationIssuess) A
(ssA B
idUserssB H
,ssH I 
ChannelAdministratorssJ ^
.ss^ _
LOBBY_EXCEPTIONss_ n
)ssn o
;sso p
ExceptionHandlertt $
.tt$ %
LogExceptiontt% 1
(tt1 2
extt2 4
,tt4 5
ExceptionDictionarytt6 I
.ttI J
FATAL_EXCEPTIONttJ Y
)ttY Z
;ttZ [
}uu 
catchvv 
(vv "
CommunicationExceptionvv -
exvv. 0
)vv0 1
{ww 
resultToReturnxx "
.xx" #
	CodeEventxx# ,
=xx- .
ExceptionDictionaryxx/ B
.xxB C
UNSUCCESFULL_EVENTxxC U
;xxU V 
ChannelAdministratoryy (
.yy( )$
HandleCommunicationIssueyy) A
(yyA B
idUseryyB H
,yyH I 
ChannelAdministratoryyJ ^
.yy^ _
LOBBY_EXCEPTIONyy_ n
)yyn o
;yyo p
ExceptionHandlerzz $
.zz$ %
LogExceptionzz% 1
(zz1 2
exzz2 4
,zz4 5
ExceptionDictionaryzz6 I
.zzI J
FATAL_EXCEPTIONzzJ Y
)zzY Z
;zzZ [
}{{ 
catch|| 
(|| %
InvalidOperationException|| 0
ex||1 3
)||3 4
{}} 
resultToReturn~~ "
.~~" #
	CodeEvent~~# ,
=~~- .
ExceptionDictionary~~/ B
.~~B C
UNSUCCESFULL_EVENT~~C U
;~~U V 
ChannelAdministrator (
.( )$
HandleCommunicationIssue) A
(A B
idUserB H
,H I 
ChannelAdministratorJ ^
.^ _
LOBBY_EXCEPTION_ n
)n o
;o p
ExceptionHandler
ÄÄ $
.
ÄÄ$ %
LogException
ÄÄ% 1
(
ÄÄ1 2
ex
ÄÄ2 4
,
ÄÄ4 5!
ExceptionDictionary
ÄÄ6 I
.
ÄÄI J
FATAL_EXCEPTION
ÄÄJ Y
)
ÄÄY Z
;
ÄÄZ [
}
ÅÅ 
return
ÇÇ 
resultToReturn
ÇÇ %
;
ÇÇ% &
}
ÉÉ 
}
ÑÑ 	
private
àà 
void
àà 4
&RegisterNewChannelInChatChannelStorage
àà ;
(
àà; <
int
àà< ?
roomCode
àà@ H
,
ààH I
int
ààJ M
idUser
ààN T
)
ààT U
{
ââ 	
try
ãã 
{
åå )
SpecificChannelCallBackChat
çç +
channelForChat
çç, :
=
çç; <
new
çç= @)
SpecificChannelCallBackChat
ççA \
(
çç\ ]
)
çç] ^
;
çç^ _
channelForChat
éé 
.
éé 
idUser
éé %
=
éé& '
idUser
éé( .
;
éé. /
channelForChat
èè 
.
èè &
communicationChannelChat
èè 7
=
èè8 9
OperationContext
èè: J
.
èèJ K
Current
èèK R
;
èèR S+
ChannelsCallBackInActiveChats
êê -0
"specificActiveInChannelChatStorage
êê. P
=
êêQ R
ChatsDictionary
êêS b
.
êêb c$
GetChannelCallBackChat
êêc y
(
êêy z
roomCodeêêz Ç
)êêÇ É
;êêÉ Ñ
bool
ëë 

isNotSaved
ëë 
=
ëë  !
true
ëë" &
;
ëë& '
foreach
íí 
(
íí 
var
íí 
item
íí !
in
íí" $0
"specificActiveInChannelChatStorage
íí% G
.
ííG H$
listOfChannelsCallBack
ííH ^
)
íí^ _
{
ìì 
if
îî 
(
îî 
item
îî 
.
îî 
idUser
îî #
==
îî$ &
idUser
îî' -
)
îî- .
{
ïï 

isNotSaved
ññ "
=
ññ# $
false
ññ% *
;
ññ* +
break
óó 
;
óó 
}
òò 
}
ôô 
if
öö 
(
öö 

isNotSaved
öö 
)
öö 
{
õõ 0
"specificActiveInChannelChatStorage
úú 6
.
úú6 7$
listOfChannelsCallBack
úú7 M
.
úúM N
Add
úúN Q
(
úúQ R
channelForChat
úúR `
)
úú` a
;
úúa b
}
ùù 
}
ûû 
catch
üü 
(
üü 1
#CommunicationObjectFaultedException
üü 6
ex
üü7 9
)
üü9 :
{
†† "
ChannelAdministrator
°° $
.
°°$ %&
HandleCommunicationIssue
°°% =
(
°°= >
idUser
°°> D
,
°°D E"
ChannelAdministrator
°°F Z
.
°°Z [
LOBBY_EXCEPTION
°°[ j
)
°°j k
;
°°k l
ExceptionHandler
¢¢  
.
¢¢  !
LogException
¢¢! -
(
¢¢- .
ex
¢¢. 0
,
¢¢0 1!
ExceptionDictionary
¢¢2 E
.
¢¢E F
FATAL_EXCEPTION
¢¢F U
)
¢¢U V
;
¢¢V W
}
££ 
catch
§§ 
(
§§ 
TimeoutException
§§ #
ex
§§$ &
)
§§& '
{
•• "
ChannelAdministrator
¶¶ $
.
¶¶$ %&
HandleCommunicationIssue
¶¶% =
(
¶¶= >
idUser
¶¶> D
,
¶¶D E"
ChannelAdministrator
¶¶F Z
.
¶¶Z [
LOBBY_EXCEPTION
¶¶[ j
)
¶¶j k
;
¶¶k l
ExceptionHandler
ßß  
.
ßß  !
LogException
ßß! -
(
ßß- .
ex
ßß. 0
,
ßß0 1!
ExceptionDictionary
ßß2 E
.
ßßE F
FATAL_EXCEPTION
ßßF U
)
ßßU V
;
ßßV W
}
®® 
catch
©© 
(
©© $
CommunicationException
©© )
ex
©©* ,
)
©©, -
{
™™ "
ChannelAdministrator
´´ $
.
´´$ %&
HandleCommunicationIssue
´´% =
(
´´= >
idUser
´´> D
,
´´D E"
ChannelAdministrator
´´F Z
.
´´Z [
LOBBY_EXCEPTION
´´[ j
)
´´j k
;
´´k l
ExceptionHandler
¨¨  
.
¨¨  !
LogException
¨¨! -
(
¨¨- .
ex
¨¨. 0
,
¨¨0 1!
ExceptionDictionary
¨¨2 E
.
¨¨E F
FATAL_EXCEPTION
¨¨F U
)
¨¨U V
;
¨¨V W
}
≠≠ 
catch
ÆÆ 
(
ÆÆ '
InvalidOperationException
ÆÆ ,
ex
ÆÆ- /
)
ÆÆ/ 0
{
ØØ "
ChannelAdministrator
∞∞ $
.
∞∞$ %&
HandleCommunicationIssue
∞∞% =
(
∞∞= >
idUser
∞∞> D
,
∞∞D E"
ChannelAdministrator
∞∞F Z
.
∞∞Z [
LOBBY_EXCEPTION
∞∞[ j
)
∞∞j k
;
∞∞k l
ExceptionHandler
±±  
.
±±  !
LogException
±±! -
(
±±- .
ex
±±. 0
,
±±0 1!
ExceptionDictionary
±±2 E
.
±±E F
FATAL_EXCEPTION
±±F U
)
±±U V
;
±±V W
}
≤≤ 
}
≥≥ 	
public
µµ 
int
µµ #
RenewLiveChatCallBack
µµ (
(
µµ( )
int
µµ) ,
roomCode
µµ- 5
,
µµ5 6
int
µµ7 :
idUser
µµ; A
)
µµA B
{
∂∂ 	
lock
∑∑ 
(
∑∑ 

objectLock
∑∑ 
)
∑∑ 
{
∏∏ 
int
ππ 
resultToReturn
ππ "
=
ππ# $!
ExceptionDictionary
ππ% 8
.
ππ8 9 
UNSUCCESFULL_EVENT
ππ9 K
;
ππK L
try
∫∫ 
{
ªª 
if
ºº 
(
ºº 
roomCode
ºº  
!=
ºº! #
$num
ºº$ %
&&
ºº& (
idUser
ºº) /
!=
ºº0 2
$num
ºº3 4
)
ºº4 5
{
ΩΩ 
ChatsDictionary
ææ '
.
ææ' (#
RenewLiveChatCallBack
ææ( =
(
ææ= >
roomCode
ææ> F
,
ææF G
idUser
ææH N
,
ææN O
OperationContext
ææP `
.
ææ` a
Current
ææa h
)
ææh i
;
ææi j
resultToReturn
øø &
=
øø' (!
ExceptionDictionary
øø) <
.
øø< =
SUCCESFULL_EVENT
øø= M
;
øøM N
}
¿¿ 
}
¡¡ 
catch
¬¬ 
(
¬¬ 1
#CommunicationObjectFaultedException
¬¬ :
ex
¬¬; =
)
¬¬= >
{
√√ "
ChannelAdministrator
ƒƒ (
.
ƒƒ( )&
HandleCommunicationIssue
ƒƒ) A
(
ƒƒA B
idUser
ƒƒB H
,
ƒƒH I"
ChannelAdministrator
ƒƒJ ^
.
ƒƒ^ _
LOBBY_EXCEPTION
ƒƒ_ n
)
ƒƒn o
;
ƒƒo p
ExceptionHandler
≈≈ $
.
≈≈$ %
LogException
≈≈% 1
(
≈≈1 2
ex
≈≈2 4
,
≈≈4 5!
ExceptionDictionary
≈≈6 I
.
≈≈I J
FATAL_EXCEPTION
≈≈J Y
)
≈≈Y Z
;
≈≈Z [
}
∆∆ 
catch
«« 
(
«« 
TimeoutException
«« '
ex
««( *
)
««* +
{
»» "
ChannelAdministrator
…… (
.
……( )&
HandleCommunicationIssue
……) A
(
……A B
idUser
……B H
,
……H I"
ChannelAdministrator
……J ^
.
……^ _
LOBBY_EXCEPTION
……_ n
)
……n o
;
……o p
ExceptionHandler
   $
.
  $ %
LogException
  % 1
(
  1 2
ex
  2 4
,
  4 5!
ExceptionDictionary
  6 I
.
  I J
FATAL_EXCEPTION
  J Y
)
  Y Z
;
  Z [
}
ÀÀ 
catch
ÃÃ 
(
ÃÃ $
CommunicationException
ÃÃ -
ex
ÃÃ. 0
)
ÃÃ0 1
{
ÕÕ "
ChannelAdministrator
ŒŒ (
.
ŒŒ( )&
HandleCommunicationIssue
ŒŒ) A
(
ŒŒA B
idUser
ŒŒB H
,
ŒŒH I"
ChannelAdministrator
ŒŒJ ^
.
ŒŒ^ _
LOBBY_EXCEPTION
ŒŒ_ n
)
ŒŒn o
;
ŒŒo p
ExceptionHandler
œœ $
.
œœ$ %
LogException
œœ% 1
(
œœ1 2
ex
œœ2 4
,
œœ4 5!
ExceptionDictionary
œœ6 I
.
œœI J
FATAL_EXCEPTION
œœJ Y
)
œœY Z
;
œœZ [
}
–– 
catch
—— 
(
—— '
InvalidOperationException
—— 0
ex
——1 3
)
——3 4
{
““ "
ChannelAdministrator
”” (
.
””( )&
HandleCommunicationIssue
””) A
(
””A B
idUser
””B H
,
””H I"
ChannelAdministrator
””J ^
.
””^ _
LOBBY_EXCEPTION
””_ n
)
””n o
;
””o p
ExceptionHandler
‘‘ $
.
‘‘$ %
LogException
‘‘% 1
(
‘‘1 2
ex
‘‘2 4
,
‘‘4 5!
ExceptionDictionary
‘‘6 I
.
‘‘I J
FATAL_EXCEPTION
‘‘J Y
)
‘‘Y Z
;
‘‘Z [
}
’’ 
return
÷÷ 
resultToReturn
÷÷ %
;
÷÷% &
}
◊◊ 
}
ÿÿ 	
}
ŸŸ 
public
‹‹ 

partial
‹‹ 
class
‹‹ .
 LiveChatOperationsImplementation
‹‹ 9
:
‹‹: ;!
ILiveChatOperations
‹‹< O
{
›› 
private
ﬂﬂ 
readonly
ﬂﬂ 
int
ﬂﬂ 
NULL_INT_VALUE
ﬂﬂ +
=
ﬂﬂ, -
$num
ﬂﬂ. /
;
ﬂﬂ/ 0
private
·· 
static
·· 
readonly
·· 
Object
··  &

objectLock
··' 1
=
··2 3
new
··4 7
(
··7 8
)
··8 9
;
··9 :
public
„„ 
void
„„ 

DeleteChat
„„ 
(
„„ 
int
„„ "
roomCode
„„# +
,
„„+ ,
int
„„- 0
idUser
„„1 7
)
„„7 8
{
‰‰ 	
lock
ÂÂ 
(
ÂÂ 

objectLock
ÂÂ 
)
ÂÂ 
{
ÊÊ %
HistoricalOfAllMessages
ÁÁ ' 
messagesHistorical
ÁÁ( :
=
ÁÁ; <
ChatsDictionary
ÁÁ= L
.
ÁÁL M
GetActiveChat
ÁÁM Z
(
ÁÁZ [
roomCode
ÁÁ[ c
)
ÁÁc d
;
ÁÁd e
if
ËË 
(
ËË 
roomCode
ËË 
!=
ËË 
NULL_INT_VALUE
ËË  .
&&
ËË/ 1 
messagesHistorical
ËË2 D
!=
ËËE G
null
ËËH L
&&
ËËM O 
messagesHistorical
ËËP b
.
ËËb c
idAdmin
ËËc j
==
ËËk m
idUser
ËËn t
)
ËËt u
{
ÈÈ 
ChatsDictionary
ÍÍ #
.
ÍÍ# $6
(RemoveRegistryOfActiveChatFromDictionary
ÍÍ$ L
(
ÍÍL M
roomCode
ÍÍM U
)
ÍÍU V
;
ÍÍV W%
DeleteChannelRegistries
ÎÎ +
(
ÎÎ+ ,
roomCode
ÎÎ, 4
)
ÎÎ4 5
;
ÎÎ5 6
}
ÏÏ 
}
ÌÌ 
}
ÓÓ 	
private
 
void
 %
DeleteChannelRegistries
 ,
(
, -
int
- 0
roomCode
1 9
)
9 :
{
ÒÒ 	
if
ÚÚ 
(
ÚÚ 
roomCode
ÚÚ 
!=
ÚÚ 
NULL_INT_VALUE
ÚÚ *
)
ÚÚ* +
{
ÛÛ 
ChatsDictionary
ÙÙ 
.
ÙÙ  ?
1RemoveRegistryOfChannelCallBakcChatFromDictionary
ÙÙ  Q
(
ÙÙQ R
roomCode
ÙÙR Z
)
ÙÙZ [
;
ÙÙ[ \
}
ıı 
}
ˆˆ 	
public
¯¯ 
void
¯¯ 
SendMessage
¯¯ 
(
¯¯  
int
¯¯  #
idUser
¯¯$ *
,
¯¯* +
int
¯¯, /
roomCode
¯¯0 8
,
¯¯8 9
string
¯¯: @
userName
¯¯A I
,
¯¯I J
string
¯¯K Q
messageToSend
¯¯R _
)
¯¯_ `
{
˘˘ 	
try
˙˙ 
{
˚˚ 
if
¸¸ 
(
¸¸ 
idUser
¸¸ 
<=
¸¸ 
NULL_INT_VALUE
¸¸ ,
||
¸¸- /
roomCode
¸¸0 8
<=
¸¸9 ;
NULL_INT_VALUE
¸¸< J
||
¸¸K M
string
¸¸N T
.
¸¸T U
IsNullOrEmpty
¸¸U b
(
¸¸b c
userName
¸¸c k
)
¸¸k l
||
¸¸m o
string
¸¸p v
.
¸¸v w
IsNullOrEmpty¸¸w Ñ
(¸¸Ñ Ö
messageToSend¸¸Ö í
)¸¸í ì
)¸¸ì î
{
˝˝ 

NotifyUser
˛˛ 
(
˛˛ 
roomCode
˛˛ '
,
˛˛' (
new
˛˛) ,
MessageChat
˛˛- 8
(
˛˛8 9
)
˛˛9 :
,
˛˛: ;
false
˛˛< A
,
˛˛A B
idUser
˛˛C I
)
˛˛I J
;
˛˛J K
}
ˇˇ 
else
ÄÄ 
{
ÅÅ %
HistoricalOfAllMessages
ÇÇ + 
messagesHistorical
ÇÇ, >
=
ÇÇ? @
ChatsDictionary
ÇÇA P
.
ÇÇP Q
GetActiveChat
ÇÇQ ^
(
ÇÇ^ _
roomCode
ÇÇ_ g
)
ÇÇg h
;
ÇÇh i
if
ÉÉ 
(
ÉÉ  
messagesHistorical
ÉÉ *
!=
ÉÉ+ -
null
ÉÉ. 2
)
ÉÉ2 3
{
ÑÑ 
MessageChat
ÖÖ #
messageInTheChat
ÖÖ$ 4
=
ÖÖ5 6
new
ÖÖ7 :
MessageChat
ÖÖ; F
(
ÖÖF G
)
ÖÖG H
;
ÖÖH I
messageInTheChat
ÜÜ (
.
ÜÜ( )
IdUser
ÜÜ) /
=
ÜÜ0 1
idUser
ÜÜ2 8
;
ÜÜ8 9
messageInTheChat
áá (
.
áá( )
UserName
áá) 1
=
áá2 3
userName
áá4 <
;
áá< =
messageInTheChat
àà (
.
àà( )
MessageToSend
àà) 6
=
àà7 8
messageToSend
àà9 F
;
ààF G 
messagesHistorical
ââ *
.
ââ* +
listOfMessages
ââ+ 9
.
ââ9 :
Add
ââ: =
(
ââ= >
messageInTheChat
ââ> N
)
ââN O
;
ââO P

NotifyUser
ää "
(
ää" #
roomCode
ää# +
,
ää+ ,
messageInTheChat
ää- =
,
ää= >
true
ää? C
,
ääC D
idUser
ääE K
)
ääK L
;
ääL M
}
ãã 
else
åå 
{
çç 

NotifyUser
éé "
(
éé" #
roomCode
éé# +
,
éé+ ,
new
éé- 0
MessageChat
éé1 <
(
éé< =
)
éé= >
,
éé> ?
false
éé@ E
,
ééE F
idUser
ééG M
)
ééM N
;
ééN O
}
èè 
}
êê 
}
ëë 
catch
íí 
(
íí 1
#CommunicationObjectFaultedException
íí 6
ex
íí7 9
)
íí9 :
{
ìì "
ChannelAdministrator
îî $
.
îî$ %&
HandleCommunicationIssue
îî% =
(
îî= >
idUser
îî> D
,
îîD E"
ChannelAdministrator
îîF Z
.
îîZ [
LOBBY_EXCEPTION
îî[ j
)
îîj k
;
îîk l
ExceptionHandler
ïï  
.
ïï  !
LogException
ïï! -
(
ïï- .
ex
ïï. 0
,
ïï0 1!
ExceptionDictionary
ïï2 E
.
ïïE F
FATAL_EXCEPTION
ïïF U
)
ïïU V
;
ïïV W
}
ññ 
catch
óó 
(
óó 
TimeoutException
óó #
ex
óó$ &
)
óó& '
{
òò "
ChannelAdministrator
ôô $
.
ôô$ %&
HandleCommunicationIssue
ôô% =
(
ôô= >
idUser
ôô> D
,
ôôD E"
ChannelAdministrator
ôôF Z
.
ôôZ [
LOBBY_EXCEPTION
ôô[ j
)
ôôj k
;
ôôk l
ExceptionHandler
öö  
.
öö  !
LogException
öö! -
(
öö- .
ex
öö. 0
,
öö0 1!
ExceptionDictionary
öö2 E
.
ööE F
FATAL_EXCEPTION
ööF U
)
ööU V
;
ööV W
}
õõ 
catch
úú 
(
úú $
CommunicationException
úú )
ex
úú* ,
)
úú, -
{
ùù "
ChannelAdministrator
ûû $
.
ûû$ %&
HandleCommunicationIssue
ûû% =
(
ûû= >
idUser
ûû> D
,
ûûD E"
ChannelAdministrator
ûûF Z
.
ûûZ [
LOBBY_EXCEPTION
ûû[ j
)
ûûj k
;
ûûk l
ExceptionHandler
üü  
.
üü  !
LogException
üü! -
(
üü- .
ex
üü. 0
,
üü0 1!
ExceptionDictionary
üü2 E
.
üüE F
FATAL_EXCEPTION
üüF U
)
üüU V
;
üüV W
}
†† 
catch
°° 
(
°° '
InvalidOperationException
°° ,
ex
°°- /
)
°°/ 0
{
¢¢ "
ChannelAdministrator
££ $
.
££$ %&
HandleCommunicationIssue
££% =
(
££= >
idUser
££> D
,
££D E"
ChannelAdministrator
££F Z
.
££Z [
LOBBY_EXCEPTION
££[ j
)
££j k
;
££k l
ExceptionHandler
§§  
.
§§  !
LogException
§§! -
(
§§- .
ex
§§. 0
,
§§0 1!
ExceptionDictionary
§§2 E
.
§§E F
FATAL_EXCEPTION
§§F U
)
§§U V
;
§§V W
}
•• 
}
¶¶ 	
private
®® 
void
®® 

NotifyUser
®® 
(
®®  
int
®®  #
roomCode
®®$ ,
,
®®, -
MessageChat
®®. 9
messageToSend
®®: G
,
®®G H
bool
®®I M
success
®®N U
,
®®U V
int
®®W Z
idSender
®®[ c
)
®®c d
{
©© 	
if
™™ 
(
™™ 
success
™™ 
)
™™ 
{
´´ 
var
¨¨ 
chatChannel
¨¨ 
=
¨¨  !
ChatsDictionary
¨¨" 1
.
¨¨1 2$
GetChannelCallBackChat
¨¨2 H
(
¨¨H I
roomCode
¨¨I Q
)
¨¨Q R
;
¨¨R S
foreach
≠≠ 
(
≠≠ 
var
≠≠ 
item
≠≠ !
in
≠≠" $
chatChannel
≠≠% 0
.
≠≠0 1$
listOfChannelsCallBack
≠≠1 G
.
≠≠G H
Where
≠≠H M
(
≠≠M N
chat
≠≠N R
=>
≠≠S U
chat
≠≠V Z
.
≠≠Z [
idUser
≠≠[ a
!=
≠≠b d
idSender
≠≠e m
)
≠≠m n
)
≠≠n o
{
ÆÆ 
try
ØØ 
{
∞∞ 
GenericClass
±± $
<
±±$ %
MessageChat
±±% 0
>
±±0 1
resultToReturn
±±2 @
=
±±A B
new
±±C F
GenericClass
±±G S
<
±±S T
MessageChat
±±T _
>
±±_ `
(
±±` a
)
±±a b
;
±±b c
resultToReturn
≤≤ &
.
≤≤& '
ObjectSaved
≤≤' 2
=
≤≤3 4
messageToSend
≤≤5 B
;
≤≤B C
resultToReturn
≥≥ &
.
≥≥& '
	CodeEvent
≥≥' 0
=
≥≥1 2!
ExceptionDictionary
≥≥3 F
.
≥≥F G
SUCCESFULL_EVENT
≥≥G W
;
≥≥W X
item
¥¥ 
.
¥¥ &
communicationChannelChat
¥¥ 5
.
¥¥5 6 
GetCallbackChannel
¥¥6 H
<
¥¥H I
ILiveChatCallBack
¥¥I Z
>
¥¥Z [
(
¥¥[ \
)
¥¥\ ]
.
¥¥] ^
ReceiveMessage
¥¥^ l
(
¥¥l m
resultToReturn
¥¥m {
)
¥¥{ |
;
¥¥| }
}
µµ 
catch
∂∂ 
(
∂∂ 1
#CommunicationObjectFaultedException
∂∂ >
ex
∂∂? A
)
∂∂A B
{
∑∑ "
ChannelAdministrator
∏∏ ,
.
∏∏, -&
HandleCommunicationIssue
∏∏- E
(
∏∏E F
item
∏∏F J
.
∏∏J K
idUser
∏∏K Q
,
∏∏Q R"
ChannelAdministrator
∏∏S g
.
∏∏g h
LOBBY_EXCEPTION
∏∏h w
)
∏∏w x
;
∏∏x y
ExceptionHandler
ππ (
.
ππ( )
LogException
ππ) 5
(
ππ5 6
ex
ππ6 8
,
ππ8 9!
ExceptionDictionary
ππ: M
.
ππM N
FATAL_EXCEPTION
ππN ]
)
ππ] ^
;
ππ^ _
}
∫∫ 
catch
ªª 
(
ªª 
TimeoutException
ªª +
ex
ªª, .
)
ªª. /
{
ºº "
ChannelAdministrator
ΩΩ ,
.
ΩΩ, -&
HandleCommunicationIssue
ΩΩ- E
(
ΩΩE F
item
ΩΩF J
.
ΩΩJ K
idUser
ΩΩK Q
,
ΩΩQ R"
ChannelAdministrator
ΩΩS g
.
ΩΩg h
LOBBY_EXCEPTION
ΩΩh w
)
ΩΩw x
;
ΩΩx y
ExceptionHandler
ææ (
.
ææ( )
LogException
ææ) 5
(
ææ5 6
ex
ææ6 8
,
ææ8 9!
ExceptionDictionary
ææ: M
.
ææM N
FATAL_EXCEPTION
ææN ]
)
ææ] ^
;
ææ^ _
}
øø 
catch
¿¿ 
(
¿¿ $
CommunicationException
¿¿ 1
ex
¿¿2 4
)
¿¿4 5
{
¡¡ "
ChannelAdministrator
¬¬ ,
.
¬¬, -&
HandleCommunicationIssue
¬¬- E
(
¬¬E F
item
¬¬F J
.
¬¬J K
idUser
¬¬K Q
,
¬¬Q R"
ChannelAdministrator
¬¬S g
.
¬¬g h
LOBBY_EXCEPTION
¬¬h w
)
¬¬w x
;
¬¬x y
ExceptionHandler
√√ (
.
√√( )
LogException
√√) 5
(
√√5 6
ex
√√6 8
,
√√8 9!
ExceptionDictionary
√√: M
.
√√M N
FATAL_EXCEPTION
√√N ]
)
√√] ^
;
√√^ _
}
ƒƒ 
catch
≈≈ 
(
≈≈ '
InvalidOperationException
≈≈ 4
ex
≈≈5 7
)
≈≈7 8
{
∆∆ "
ChannelAdministrator
«« ,
.
««, -&
HandleCommunicationIssue
««- E
(
««E F
item
««F J
.
««J K
idUser
««K Q
,
««Q R"
ChannelAdministrator
««S g
.
««g h
LOBBY_EXCEPTION
««h w
)
««w x
;
««x y
ExceptionHandler
»» (
.
»»( )
LogException
»») 5
(
»»5 6
ex
»»6 8
,
»»8 9!
ExceptionDictionary
»»: M
.
»»M N
FATAL_EXCEPTION
»»N ]
)
»»] ^
;
»»^ _
}
…… 
}
ÀÀ 
}
ÃÃ 
}
ÕÕ 	
}
ŒŒ 
}–– ¬È
ôC:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameServer\JeopardyGame.Service\ServiceImplementation\LobbyActionsImplementation.cs
	namespace 	
JeopardyGame
 
. 
Service 
. !
ServiceImplementation 4
{ 
internal 
class &
LobbyActionsImplementation -
:. /
ILobbyActions0 =
{ 
private 
readonly 
int 
NULL_INT_VALUE +
=, -
$num. /
;/ 0
private 
readonly 
int "
ROOMCODE_ALREADY_EXIST 3
=4 5
-6 7
$num7 8
;8 9
private 
readonly 
int 
	SUCCESFUL &
=' (
$num) *
;* +
private 
readonly 
int $
LEADER_POSITION_IN_LOBBY 5
=6 7
$num8 9
;9 :
private 
readonly 
int 
TEAM_LEFT_SIDE +
=, -
$num. /
;/ 0
private 
static 
readonly 
Object  &

lockObject' 1
=2 3
new4 7
Object8 >
(> ?
)? @
;@ A
public 
GenericClass 
< 
int 
>  
CreateNewLobby! /
(/ 0
int0 3
roomCode4 <
,< =
int> A
idUserB H
)H I
{ 	
lock 
( 

lockObject 
) 
{ 
GenericClass 
< 
int  
>  !
resultToReturn" 0
=1 2
new3 6
GenericClass7 C
<C D
intD G
>G H
(H I
)I J
;J K
try 
{ 
if 
( 
roomCode  
==! #
NULL_INT_VALUE$ 2
||3 5
idUser6 <
=== ?
NULL_INT_VALUE@ N
)N O
{   
return!! !
NullParametersHandler!! 4
.!!4 5'
HandleNullParametersService!!5 P
(!!P Q
resultToReturn!!Q _
)!!_ `
;!!` a
}"" 
var## 
lobby## 
=## !
GameLobbiesDictionary##  5
.##5 6"
GetSpecificActiveLobby##6 L
(##L M
roomCode##M U
)##U V
;##V W
if$$ 
($$ 
lobby$$ 
==$$  
null$$! %
)$$% &
{%% ,
 ConsultInformationImplementation&& 8
consultInformation&&9 K
=&&L M
new&&N Q
(&&Q R
)&&R S
;&&S T
GenericClass'' $
<''$ %
UserPojo''% -
>''- .
userConsulted''/ <
=''= >
consultInformation''? Q
.''Q R
ConsultUserById''R a
(''a b
idUser''b h
)''h i
;''i j
if(( 
((( 
userConsulted(( )
.(() *
	CodeEvent((* 3
==((4 6
ExceptionDictionary((7 J
.((J K
SUCCESFULL_EVENT((K [
)(([ \
{)) 
GenericClass** (
<**( )

PlayerPojo**) 3
>**3 4#
playerConsultedByIdUser**5 L
=**M N
consultInformation**O a
.**a b!
ConsultPlayerByIdUser**b w
(**w x
idUser**x ~
)**~ 
;	** Ä
if++ 
(++  #
playerConsultedByIdUser++  7
.++7 8
	CodeEvent++8 A
==++B D
ExceptionDictionary++E X
.++X Y
SUCCESFULL_EVENT++Y i
)++i j
{,, 
PlayerOnLobbyList--  1
leaderOfTheGame--2 A
=--B C
new--D G
PlayerOnLobbyList--H Y
(--Y Z
)--Z [
;--[ \
leaderOfTheGame..  /
.../ 0
idUser..0 6
=..7 8
idUser..9 ?
;..? @
leaderOfTheGame//  /
./// 0
idPlayer//0 8
=//9 :#
playerConsultedByIdUser//; R
.//R S
ObjectSaved//S ^
.//^ _
IdPlayer//_ g
;//g h
leaderOfTheGame00  /
.00/ 0
userName000 8
=009 :
userConsulted00; H
.00H I
ObjectSaved00I T
.00T U
UserName00U ]
;00] ^
leaderOfTheGame11  /
.11/ 0!
numberOfPlayerInLobby110 E
=11F G$
LEADER_POSITION_IN_LOBBY11H `
;11` a
leaderOfTheGame22  /
.22/ 0
sideTeam220 8
=229 :
TEAM_LEFT_SIDE22; I
;22I J
leaderOfTheGame33  /
.33/ 0-
!lobbyCommunicationChannelCallback330 Q
=33R S
OperationContext33T d
.33d e
Current33e l
;33l m
Lobby44  %
newLobby44& .
=44/ 0
new441 4
Lobby445 :
(44: ;
)44; <
;44< =
newLobby55  (
.55( )
idAdmin55) 0
=551 2
idUser553 9
;559 :
newLobby66  (
.66( )
listOfPlayerInLobby66) <
.66< =
Add66= @
(66@ A
leaderOfTheGame66A P
)66P Q
;66Q R!
GameLobbiesDictionary77  5
.775 6
RegisterNewLobby776 F
(77F G
roomCode77G O
,77O P
newLobby77Q Y
)77Y Z
;77Z [
resultToReturn88  .
.88. /
ObjectSaved88/ :
=88; <
	SUCCESFUL88= F
;88F G
resultToReturn99  .
.99. /
	CodeEvent99/ 8
=999 :
ExceptionDictionary99; N
.99N O
SUCCESFULL_EVENT99O _
;99_ `
}:: 
else;;  
{<< 
resultToReturn==  .
.==. /
	CodeEvent==/ 8
===9 :#
playerConsultedByIdUser==; R
.==R S
	CodeEvent==S \
;==\ ]
}>> 
}?? 
else@@ 
{AA 
resultToReturnBB *
.BB* +
	CodeEventBB+ 4
=BB5 6
userConsultedBB7 D
.BBD E
	CodeEventBBE N
;BBN O
}CC 
}DD 
elseEE 
{FF 
resultToReturnGG &
.GG& '
ObjectSavedGG' 2
=GG3 4"
ROOMCODE_ALREADY_EXISTGG5 K
;GGK L
resultToReturnHH &
.HH& '
	CodeEventHH' 0
=HH1 2
ExceptionDictionaryHH3 F
.HHF G
UNSUCCESFULL_EVENTHHG Y
;HHY Z
}II 
}JJ 
catchKK 
(KK /
#CommunicationObjectFaultedExceptionKK :
exKK; =
)KK= >
{LL 
resultToReturnMM "
.MM" #
	CodeEventMM# ,
=MM- .
ExceptionDictionaryMM/ B
.MMB C
UNSUCCESFULL_EVENTMMC U
;MMU V 
ChannelAdministratorNN (
.NN( )$
HandleCommunicationIssueNN) A
(NNA B
idUserNNB H
,NNH I 
ChannelAdministratorNNJ ^
.NN^ _
LOBBY_EXCEPTIONNN_ n
)NNn o
;NNo p
ExceptionHandlerOO $
.OO$ %
LogExceptionOO% 1
(OO1 2
exOO2 4
,OO4 5
ExceptionDictionaryOO6 I
.OOI J
FATAL_EXCEPTIONOOJ Y
)OOY Z
;OOZ [
}PP 
catchQQ 
(QQ 
TimeoutExceptionQQ '
exQQ( *
)QQ* +
{RR 
resultToReturnSS "
.SS" #
	CodeEventSS# ,
=SS- .
ExceptionDictionarySS/ B
.SSB C
UNSUCCESFULL_EVENTSSC U
;SSU V 
ChannelAdministratorTT (
.TT( )$
HandleCommunicationIssueTT) A
(TTA B
idUserTTB H
,TTH I 
ChannelAdministratorTTJ ^
.TT^ _
LOBBY_EXCEPTIONTT_ n
)TTn o
;TTo p
ExceptionHandlerUU $
.UU$ %
LogExceptionUU% 1
(UU1 2
exUU2 4
,UU4 5
ExceptionDictionaryUU6 I
.UUI J
FATAL_EXCEPTIONUUJ Y
)UUY Z
;UUZ [
}VV 
catchWW 
(WW "
CommunicationExceptionWW -
exWW. 0
)WW0 1
{XX 
resultToReturnYY "
.YY" #
	CodeEventYY# ,
=YY- .
ExceptionDictionaryYY/ B
.YYB C
UNSUCCESFULL_EVENTYYC U
;YYU V 
ChannelAdministratorZZ (
.ZZ( )$
HandleCommunicationIssueZZ) A
(ZZA B
idUserZZB H
,ZZH I 
ChannelAdministratorZZJ ^
.ZZ^ _
LOBBY_EXCEPTIONZZ_ n
)ZZn o
;ZZo p
ExceptionHandler[[ $
.[[$ %
LogException[[% 1
([[1 2
ex[[2 4
,[[4 5
ExceptionDictionary[[6 I
.[[I J
FATAL_EXCEPTION[[J Y
)[[Y Z
;[[Z [
}\\ 
catch]] 
(]] %
InvalidOperationException]] 0
ex]]1 3
)]]3 4
{^^ 
resultToReturn__ "
.__" #
	CodeEvent__# ,
=__- .
ExceptionDictionary__/ B
.__B C
UNSUCCESFULL_EVENT__C U
;__U V 
ChannelAdministrator`` (
.``( )$
HandleCommunicationIssue``) A
(``A B
idUser``B H
,``H I 
ChannelAdministrator``J ^
.``^ _
LOBBY_EXCEPTION``_ n
)``n o
;``o p
ExceptionHandleraa $
.aa$ %
LogExceptionaa% 1
(aa1 2
exaa2 4
,aa4 5
ExceptionDictionaryaa6 I
.aaI J
FATAL_EXCEPTIONaaJ Y
)aaY Z
;aaZ [
}bb 
returncc 
resultToReturncc %
;cc% &
}dd 
}ee 	
publichh 
GenericClasshh 
<hh 
inthh 
>hh  
JoinIntoLobbyhh! .
(hh. /
inthh/ 2
roomCodehh3 ;
,hh; <
inthh= @
idUserhhA G
)hhG H
{ii 	
lockjj 
(jj 

lockObjectjj 
)jj 
{kk 
GenericClassll 
<ll 
intll  
>ll  !
resultToReturnll" 0
=ll1 2
newll3 6
GenericClassll7 C
<llC D
intllD G
>llG H
(llH I
)llI J
;llJ K
trymm 
{nn 
ifoo 
(oo 
roomCodeoo  
==oo! #
NULL_INT_VALUEoo$ 2
||oo3 5
idUseroo6 <
==oo= ?
NULL_INT_VALUEoo@ N
)ooN O
{pp 
returnqq !
NullParametersHandlerqq 4
.qq4 5'
HandleNullParametersServiceqq5 P
(qqP Q
resultToReturnqqQ _
)qq_ `
;qq` a
}rr 
varss 
lobbyss 
=ss !
GameLobbiesDictionaryss  5
.ss5 6"
GetSpecificActiveLobbyss6 L
(ssL M
roomCodessM U
)ssU V
;ssV W,
 ConsultInformationImplementationtt 4
consultInformationtt5 G
=ttH I
newttJ M,
 ConsultInformationImplementationttN n
(ttn o
)tto p
;ttp q
GenericClassuu  
<uu  !
UserPojouu! )
>uu) *
userPojouu+ 3
=uu4 5
consultInformationuu6 H
.uuH I
ConsultUserByIduuI X
(uuX Y
idUseruuY _
)uu_ `
;uu` a
ifvv 
(vv 
userPojovv  
.vv  !
	CodeEventvv! *
==vv+ -
ExceptionDictionaryvv. A
.vvA B
SUCCESFULL_EVENTvvB R
)vvR S
{ww 
GenericClassxx $
<xx$ %

PlayerPojoxx% /
>xx/ 0

playerPojoxx1 ;
=xx< =
consultInformationxx> P
.xxP Q!
ConsultPlayerByIdUserxxQ f
(xxf g
idUserxxg m
)xxm n
;xxn o
ifyy 
(yy 

playerPojoyy &
.yy& '
	CodeEventyy' 0
==yy1 3
ExceptionDictionaryyy4 G
.yyG H
SUCCESFULL_EVENTyyH X
)yyX Y
{zz 
PlayerOnLobbyList{{ -
playerJoining{{. ;
={{< =
new{{> A
PlayerOnLobbyList{{B S
({{S T
){{T U
;{{U V
playerJoining|| )
.||) *
idUser||* 0
=||1 2
idUser||3 9
;||9 :
playerJoining}} )
.}}) *
idPlayer}}* 2
=}}3 4

playerPojo}}5 ?
.}}? @
ObjectSaved}}@ K
.}}K L
IdPlayer}}L T
;}}T U
playerJoining~~ )
.~~) *
userName~~* 2
=~~3 4
userPojo~~5 =
.~~= >
ObjectSaved~~> I
.~~I J
UserName~~J R
;~~R S
playerJoining )
.) *!
numberOfPlayerInLobby* ?
=@ A
GetPositionOfPlayerB U
(U V
lobbyV [
)[ \
;\ ]
playerJoining
ÄÄ )
.
ÄÄ) *
sideTeam
ÄÄ* 2
=
ÄÄ3 4
TEAM_LEFT_SIDE
ÄÄ5 C
;
ÄÄC D
playerJoining
ÅÅ )
.
ÅÅ) */
!lobbyCommunicationChannelCallback
ÅÅ* K
=
ÅÅL M
OperationContext
ÅÅN ^
.
ÅÅ^ _
Current
ÅÅ_ f
;
ÅÅf g
lobby
ÇÇ !
.
ÇÇ! "!
listOfPlayerInLobby
ÇÇ" 5
.
ÇÇ5 6
Add
ÇÇ6 9
(
ÇÇ9 :
playerJoining
ÇÇ: G
)
ÇÇG H
;
ÇÇH I
resultToReturn
ÉÉ *
.
ÉÉ* +
ObjectSaved
ÉÉ+ 6
=
ÉÉ7 8
	SUCCESFUL
ÉÉ9 B
;
ÉÉB C
resultToReturn
ÑÑ *
.
ÑÑ* +
	CodeEvent
ÑÑ+ 4
=
ÑÑ5 6!
ExceptionDictionary
ÑÑ7 J
.
ÑÑJ K
SUCCESFULL_EVENT
ÑÑK [
;
ÑÑ[ \
}
ÖÖ 
else
ÜÜ 
{
áá 
resultToReturn
àà *
.
àà* +
	CodeEvent
àà+ 4
=
àà5 6

playerPojo
àà7 A
.
ààA B
	CodeEvent
ààB K
;
ààK L
}
ââ 
}
ää 
else
ãã 
{
åå 
resultToReturn
çç &
.
çç& '
	CodeEvent
çç' 0
=
çç1 2
userPojo
çç3 ;
.
çç; <
	CodeEvent
çç< E
;
ççE F
}
éé 
}
èè 
catch
êê 
(
êê 1
#CommunicationObjectFaultedException
êê :
ex
êê; =
)
êê= >
{
ëë 
resultToReturn
íí "
.
íí" #
	CodeEvent
íí# ,
=
íí- .!
ExceptionDictionary
íí/ B
.
ííB C 
UNSUCCESFULL_EVENT
ííC U
;
ííU V"
ChannelAdministrator
ìì (
.
ìì( )&
HandleCommunicationIssue
ìì) A
(
ììA B
idUser
ììB H
,
ììH I"
ChannelAdministrator
ììJ ^
.
ìì^ _
LOBBY_EXCEPTION
ìì_ n
)
ììn o
;
ììo p
ExceptionHandler
îî $
.
îî$ %
LogException
îî% 1
(
îî1 2
ex
îî2 4
,
îî4 5!
ExceptionDictionary
îî6 I
.
îîI J
FATAL_EXCEPTION
îîJ Y
)
îîY Z
;
îîZ [
}
ïï 
catch
ññ 
(
ññ 
TimeoutException
ññ '
ex
ññ( *
)
ññ* +
{
óó 
resultToReturn
òò "
.
òò" #
	CodeEvent
òò# ,
=
òò- .!
ExceptionDictionary
òò/ B
.
òòB C 
UNSUCCESFULL_EVENT
òòC U
;
òòU V"
ChannelAdministrator
ôô (
.
ôô( )&
HandleCommunicationIssue
ôô) A
(
ôôA B
idUser
ôôB H
,
ôôH I"
ChannelAdministrator
ôôJ ^
.
ôô^ _
LOBBY_EXCEPTION
ôô_ n
)
ôôn o
;
ôôo p
ExceptionHandler
öö $
.
öö$ %
LogException
öö% 1
(
öö1 2
ex
öö2 4
,
öö4 5!
ExceptionDictionary
öö6 I
.
ööI J
FATAL_EXCEPTION
ööJ Y
)
ööY Z
;
ööZ [
}
õõ 
catch
úú 
(
úú $
CommunicationException
úú -
ex
úú. 0
)
úú0 1
{
ùù 
resultToReturn
ûû "
.
ûû" #
	CodeEvent
ûû# ,
=
ûû- .!
ExceptionDictionary
ûû/ B
.
ûûB C 
UNSUCCESFULL_EVENT
ûûC U
;
ûûU V"
ChannelAdministrator
üü (
.
üü( )&
HandleCommunicationIssue
üü) A
(
üüA B
idUser
üüB H
,
üüH I"
ChannelAdministrator
üüJ ^
.
üü^ _
LOBBY_EXCEPTION
üü_ n
)
üün o
;
üüo p
ExceptionHandler
†† $
.
††$ %
LogException
††% 1
(
††1 2
ex
††2 4
,
††4 5!
ExceptionDictionary
††6 I
.
††I J
FATAL_EXCEPTION
††J Y
)
††Y Z
;
††Z [
}
°° 
catch
¢¢ 
(
¢¢ '
InvalidOperationException
¢¢ 0
ex
¢¢1 3
)
¢¢3 4
{
££ 
resultToReturn
§§ "
.
§§" #
	CodeEvent
§§# ,
=
§§- .!
ExceptionDictionary
§§/ B
.
§§B C 
UNSUCCESFULL_EVENT
§§C U
;
§§U V"
ChannelAdministrator
•• (
.
••( )&
HandleCommunicationIssue
••) A
(
••A B
idUser
••B H
,
••H I"
ChannelAdministrator
••J ^
.
••^ _
LOBBY_EXCEPTION
••_ n
)
••n o
;
••o p
ExceptionHandler
¶¶ $
.
¶¶$ %
LogException
¶¶% 1
(
¶¶1 2
ex
¶¶2 4
,
¶¶4 5!
ExceptionDictionary
¶¶6 I
.
¶¶I J
FATAL_EXCEPTION
¶¶J Y
)
¶¶Y Z
;
¶¶Z [
}
ßß 
return
®® 
resultToReturn
®® %
;
®®% &
}
©© 
}
™™ 	
private
¨¨ 
int
¨¨ !
GetPositionOfPlayer
¨¨ '
(
¨¨' (
Lobby
¨¨( -
lobby
¨¨. 3
)
¨¨3 4
{
≠≠ 	
int
ÆÆ 
position
ÆÆ 
=
ÆÆ 
lobby
ÆÆ  
.
ÆÆ  !!
listOfPlayerInLobby
ÆÆ! 4
.
ÆÆ4 5
Count
ÆÆ5 :
+
ÆÆ; <
$num
ÆÆ= >
;
ÆÆ> ?
return
ØØ 
position
ØØ 
;
ØØ 
}
∞∞ 	
public
≤≤ 
int
≤≤  
RenewLobbyCallBack
≤≤ %
(
≤≤% &
int
≤≤& )
roomCode
≤≤* 2
,
≤≤2 3
int
≤≤4 7
idUser
≤≤8 >
)
≤≤> ?
{
≥≥ 	
int
¥¥ 
resultToReturn
¥¥ 
=
¥¥  !
ExceptionDictionary
¥¥! 4
.
¥¥4 5 
UNSUCCESFULL_EVENT
¥¥5 G
;
¥¥G H
lock
µµ 
(
µµ 

lockObject
µµ 
)
µµ 
{
∂∂ 
try
∑∑ 
{
∏∏ 
if
ππ 
(
ππ 
roomCode
ππ  
==
ππ! #
NULL_INT_VALUE
ππ$ 2
||
ππ3 5
idUser
ππ6 <
==
ππ= ?
NULL_INT_VALUE
ππ@ N
)
ππN O
{
∫∫ 
return
ªª 
resultToReturn
ªª -
;
ªª- .
}
ºº #
GameLobbiesDictionary
ΩΩ )
.
ΩΩ) *
RenewLobbyCalBack
ΩΩ* ;
(
ΩΩ; <
roomCode
ΩΩ< D
,
ΩΩD E
idUser
ΩΩF L
,
ΩΩL M
OperationContext
ΩΩN ^
.
ΩΩ^ _
Current
ΩΩ_ f
)
ΩΩf g
;
ΩΩg h
}
ææ 
catch
øø 
(
øø 1
#CommunicationObjectFaultedException
øø :
ex
øø; =
)
øø= >
{
¿¿ "
ChannelAdministrator
¡¡ (
.
¡¡( )&
HandleCommunicationIssue
¡¡) A
(
¡¡A B
idUser
¡¡B H
,
¡¡H I"
ChannelAdministrator
¡¡J ^
.
¡¡^ _
LOBBY_EXCEPTION
¡¡_ n
)
¡¡n o
;
¡¡o p
ExceptionHandler
¬¬ $
.
¬¬$ %
LogException
¬¬% 1
(
¬¬1 2
ex
¬¬2 4
,
¬¬4 5!
ExceptionDictionary
¬¬6 I
.
¬¬I J
FATAL_EXCEPTION
¬¬J Y
)
¬¬Y Z
;
¬¬Z [
}
√√ 
catch
ƒƒ 
(
ƒƒ 
TimeoutException
ƒƒ '
ex
ƒƒ( *
)
ƒƒ* +
{
≈≈ "
ChannelAdministrator
∆∆ (
.
∆∆( )&
HandleCommunicationIssue
∆∆) A
(
∆∆A B
idUser
∆∆B H
,
∆∆H I"
ChannelAdministrator
∆∆J ^
.
∆∆^ _
LOBBY_EXCEPTION
∆∆_ n
)
∆∆n o
;
∆∆o p
ExceptionHandler
«« $
.
««$ %
LogException
««% 1
(
««1 2
ex
««2 4
,
««4 5!
ExceptionDictionary
««6 I
.
««I J
FATAL_EXCEPTION
««J Y
)
««Y Z
;
««Z [
}
»» 
catch
…… 
(
…… $
CommunicationException
…… -
ex
……. 0
)
……0 1
{
   "
ChannelAdministrator
ÀÀ (
.
ÀÀ( )&
HandleCommunicationIssue
ÀÀ) A
(
ÀÀA B
idUser
ÀÀB H
,
ÀÀH I"
ChannelAdministrator
ÀÀJ ^
.
ÀÀ^ _
LOBBY_EXCEPTION
ÀÀ_ n
)
ÀÀn o
;
ÀÀo p
ExceptionHandler
ÃÃ $
.
ÃÃ$ %
LogException
ÃÃ% 1
(
ÃÃ1 2
ex
ÃÃ2 4
,
ÃÃ4 5!
ExceptionDictionary
ÃÃ6 I
.
ÃÃI J
FATAL_EXCEPTION
ÃÃJ Y
)
ÃÃY Z
;
ÃÃZ [
}
ÕÕ 
catch
ŒŒ 
(
ŒŒ '
InvalidOperationException
ŒŒ 0
ex
ŒŒ1 3
)
ŒŒ3 4
{
œœ "
ChannelAdministrator
–– (
.
––( )&
HandleCommunicationIssue
––) A
(
––A B
idUser
––B H
,
––H I"
ChannelAdministrator
––J ^
.
––^ _
LOBBY_EXCEPTION
––_ n
)
––n o
;
––o p
ExceptionHandler
—— $
.
——$ %
LogException
——% 1
(
——1 2
ex
——2 4
,
——4 5!
ExceptionDictionary
——6 I
.
——I J
FATAL_EXCEPTION
——J Y
)
——Y Z
;
——Z [
}
““ 
return
”” 
resultToReturn
”” %
;
””% &
}
‘‘ 
}
’’ 	
}
÷÷ 
public
ÿÿ 

partial
ÿÿ 
class
ÿÿ 1
#LobbyActionsOperationImplementation
ÿÿ <
:
ÿÿ= >$
ILobbyActionsOperation
ÿÿ? U
{
ŸŸ 
private
€€ 
readonly
€€ 
int
€€ 
NULL_INT_VALUE
€€ +
=
€€, -
$num
€€. /
;
€€/ 0
private
‹‹ 
readonly
‹‹ 
int
‹‹ &
LEADER_POSITION_IN_LOBBY
‹‹ 5
=
‹‹6 7
$num
‹‹8 9
;
‹‹9 :
private
›› 
readonly
›› 
int
›› 
TEAM_LEFT_SIDE
›› +
=
››, -
$num
››. /
;
››/ 0
private
ﬁﬁ 
readonly
ﬁﬁ 
int
ﬁﬁ 
TEAM_RIGTH_SIDE
ﬁﬁ ,
=
ﬁﬁ- .
$num
ﬁﬁ/ 0
;
ﬁﬁ0 1
private
ﬂﬂ 
readonly
ﬂﬂ 
int
ﬂﬂ 
MAX_PLAYERS
ﬂﬂ (
=
ﬂﬂ) *
$num
ﬂﬂ+ ,
;
ﬂﬂ, -
private
‡‡ 
static
‡‡ 
readonly
‡‡ 
Object
‡‡  &

lockObject
‡‡' 1
=
‡‡2 3
new
‡‡4 7
Object
‡‡8 >
(
‡‡> ?
)
‡‡? @
;
‡‡@ A
public
‚‚ 
void
‚‚ !
NotifyPlayerInLobby
‚‚ '
(
‚‚' (
int
‚‚( +
roomCode
‚‚, 4
,
‚‚4 5
int
‚‚6 9
idUser
‚‚: @
)
‚‚@ A
{
„„ 	
try
‰‰ 
{
ÂÂ 
if
ÊÊ 
(
ÊÊ 
roomCode
ÊÊ 
!=
ÊÊ 
NULL_INT_VALUE
ÊÊ  .
||
ÊÊ/ 1
idUser
ÊÊ2 8
!=
ÊÊ9 ;
NULL_INT_VALUE
ÊÊ< J
)
ÊÊJ K
{
ÁÁ 
var
ËË 
lobby
ËË 
=
ËË #
GameLobbiesDictionary
ËË  5
.
ËË5 6$
GetSpecificActiveLobby
ËË6 L
(
ËËL M
roomCode
ËËM U
)
ËËU V
;
ËËV W
if
ÈÈ 
(
ÈÈ 
lobby
ÈÈ 
!=
ÈÈ  
null
ÈÈ! %
)
ÈÈ% &
{
ÍÍ 
foreach
ÎÎ 
(
ÎÎ  !
var
ÎÎ! $
item
ÎÎ% )
in
ÎÎ* ,
lobby
ÎÎ- 2
.
ÎÎ2 3!
listOfPlayerInLobby
ÎÎ3 F
)
ÎÎF G
{
ÏÏ 
if
ÌÌ 
(
ÌÌ  
item
ÌÌ  $
.
ÌÌ$ %
idUser
ÌÌ% +
==
ÌÌ, .
idUser
ÌÌ/ 5
)
ÌÌ5 6
{
ÓÓ /
!NotifyPlayerJoiningOrLeavingLobby
ÔÔ  A
(
ÔÔA B
roomCode
ÔÔB J
,
ÔÔJ K
idUser
ÔÔL R
,
ÔÔR S
lobby
ÔÔT Y
)
ÔÔY Z
;
ÔÔZ [
break
  %
;
% &
}
ÒÒ 
}
ÚÚ 
}
ÛÛ 
}
ÙÙ 
}
ıı 
catch
ˆˆ 
(
ˆˆ 1
#CommunicationObjectFaultedException
ˆˆ 6
ex
ˆˆ7 9
)
ˆˆ9 :
{
˜˜ "
ChannelAdministrator
¯¯ $
.
¯¯$ %&
HandleCommunicationIssue
¯¯% =
(
¯¯= >
idUser
¯¯> D
,
¯¯D E"
ChannelAdministrator
¯¯F Z
.
¯¯Z [
LOBBY_EXCEPTION
¯¯[ j
)
¯¯j k
;
¯¯k l
ExceptionHandler
˘˘  
.
˘˘  !
LogException
˘˘! -
(
˘˘- .
ex
˘˘. 0
,
˘˘0 1!
ExceptionDictionary
˘˘2 E
.
˘˘E F
FATAL_EXCEPTION
˘˘F U
)
˘˘U V
;
˘˘V W
}
˙˙ 
catch
˚˚ 
(
˚˚ 
TimeoutException
˚˚ #
ex
˚˚$ &
)
˚˚& '
{
¸¸ "
ChannelAdministrator
˝˝ $
.
˝˝$ %&
HandleCommunicationIssue
˝˝% =
(
˝˝= >
idUser
˝˝> D
,
˝˝D E"
ChannelAdministrator
˝˝F Z
.
˝˝Z [
LOBBY_EXCEPTION
˝˝[ j
)
˝˝j k
;
˝˝k l
ExceptionHandler
˛˛  
.
˛˛  !
LogException
˛˛! -
(
˛˛- .
ex
˛˛. 0
,
˛˛0 1!
ExceptionDictionary
˛˛2 E
.
˛˛E F
FATAL_EXCEPTION
˛˛F U
)
˛˛U V
;
˛˛V W
}
ˇˇ 
catch
ÄÄ 
(
ÄÄ $
CommunicationException
ÄÄ )
ex
ÄÄ* ,
)
ÄÄ, -
{
ÅÅ "
ChannelAdministrator
ÇÇ $
.
ÇÇ$ %&
HandleCommunicationIssue
ÇÇ% =
(
ÇÇ= >
idUser
ÇÇ> D
,
ÇÇD E"
ChannelAdministrator
ÇÇF Z
.
ÇÇZ [
LOBBY_EXCEPTION
ÇÇ[ j
)
ÇÇj k
;
ÇÇk l
ExceptionHandler
ÉÉ  
.
ÉÉ  !
LogException
ÉÉ! -
(
ÉÉ- .
ex
ÉÉ. 0
,
ÉÉ0 1!
ExceptionDictionary
ÉÉ2 E
.
ÉÉE F
FATAL_EXCEPTION
ÉÉF U
)
ÉÉU V
;
ÉÉV W
}
ÑÑ 
catch
ÖÖ 
(
ÖÖ '
InvalidOperationException
ÖÖ ,
ex
ÖÖ- /
)
ÖÖ/ 0
{
ÜÜ "
ChannelAdministrator
áá $
.
áá$ %&
HandleCommunicationIssue
áá% =
(
áá= >
idUser
áá> D
,
ááD E"
ChannelAdministrator
ááF Z
.
ááZ [
LOBBY_EXCEPTION
áá[ j
)
ááj k
;
áák l
ExceptionHandler
àà  
.
àà  !
LogException
àà! -
(
àà- .
ex
àà. 0
,
àà0 1!
ExceptionDictionary
àà2 E
.
ààE F
FATAL_EXCEPTION
ààF U
)
ààU V
;
ààV W
}
ââ 
}
ää 	
public
åå 
GenericClass
åå 
<
åå 
List
åå  
<
åå  !
PlayerInLobby
åå! .
>
åå. /
>
åå/ 0(
GetAllCurrentPlayerInLobby
åå1 K
(
ååK L
int
ååL O
roomCode
ååP X
,
ååX Y
int
ååZ ]
idUserRequesting
åå^ n
)
åån o
{
çç 	
GenericClass
éé 
<
éé 
List
éé 
<
éé 
PlayerInLobby
éé +
>
éé+ ,
>
éé, -
resultToReturn
éé. <
=
éé= >
new
éé? B
GenericClass
ééC O
<
ééO P
List
ééP T
<
ééT U
PlayerInLobby
ééU b
>
ééb c
>
ééc d
(
ééd e
)
éée f
;
ééf g
try
èè 
{
êê 
if
ëë 
(
ëë 
roomCode
ëë 
!=
ëë 
NULL_INT_VALUE
ëë  .
&&
ëë/ 1
idUserRequesting
ëë2 B
!=
ëëC E
NULL_INT_VALUE
ëëF T
)
ëëT U
{
íí 
var
ìì 
lobby
ìì 
=
ìì #
GameLobbiesDictionary
ìì  5
.
ìì5 6$
GetSpecificActiveLobby
ìì6 L
(
ììL M
roomCode
ììM U
)
ììU V
;
ììV W
if
îî 
(
îî 
lobby
îî 
!=
îî  
null
îî! %
)
îî% &
{
ïï 
List
ññ 
<
ññ 
PlayerInLobby
ññ *
>
ññ* +
playerInLobbies
ññ, ;
=
ññ< =
new
ññ> A
List
ññB F
<
ññF G
PlayerInLobby
ññG T
>
ññT U
(
ññU V
)
ññV W
;
ññW X
foreach
óó 
(
óó  !
var
óó! $
item
óó% )
in
óó* ,
lobby
óó- 2
.
óó2 3!
listOfPlayerInLobby
óó3 F
)
óóF G
{
òò 
PlayerInLobby
ôô )
playerIn
ôô* 2
=
ôô3 4
new
ôô5 8
(
ôô8 9
)
ôô9 :
;
ôô: ;
playerIn
öö $
.
öö$ %
IdUser
öö% +
=
öö, -
item
öö. 2
.
öö2 3
idUser
öö3 9
;
öö9 :
playerIn
õõ $
.
õõ$ %
IdPlayer
õõ% -
=
õõ. /
item
õõ0 4
.
õõ4 5
idPlayer
õõ5 =
;
õõ= >
playerIn
úú $
.
úú$ %
UserName
úú% -
=
úú. /
item
úú0 4
.
úú4 5
userName
úú5 =
;
úú= >
playerIn
ùù $
.
ùù$ %#
NumberOfPlayerInLobby
ùù% :
=
ùù; <
item
ùù= A
.
ùùA B#
numberOfPlayerInLobby
ùùB W
;
ùùW X
playerIn
ûû $
.
ûû$ %

SideOfTeam
ûû% /
=
ûû0 1
item
ûû2 6
.
ûû6 7
sideTeam
ûû7 ?
;
ûû? @
playerInLobbies
üü +
.
üü+ ,
Add
üü, /
(
üü/ 0
playerIn
üü0 8
)
üü8 9
;
üü9 :
}
†† 
resultToReturn
°° &
.
°°& '
ObjectSaved
°°' 2
=
°°3 4
playerInLobbies
°°5 D
;
°°D E
resultToReturn
¢¢ &
.
¢¢& '
	CodeEvent
¢¢' 0
=
¢¢1 2!
ExceptionDictionary
¢¢3 F
.
¢¢F G
SUCCESFULL_EVENT
¢¢G W
;
¢¢W X
}
££ 
else
§§ 
{
•• 
resultToReturn
¶¶ &
.
¶¶& '
ObjectSaved
¶¶' 2
=
¶¶3 4
null
¶¶5 9
;
¶¶9 :
resultToReturn
ßß &
.
ßß& '
	CodeEvent
ßß' 0
=
ßß1 2!
ExceptionDictionary
ßß3 F
.
ßßF G 
UNSUCCESFULL_EVENT
ßßG Y
;
ßßY Z
}
®® 
}
©© 
else
™™ 
{
´´ 
resultToReturn
¨¨ "
=
¨¨# $#
NullParametersHandler
¨¨% :
.
¨¨: ;)
HandleNullParametersService
¨¨; V
(
¨¨V W
resultToReturn
¨¨W e
)
¨¨e f
;
¨¨f g
}
≠≠ 
}
ÆÆ 
catch
ØØ 
(
ØØ 1
#CommunicationObjectFaultedException
ØØ 6
ex
ØØ7 9
)
ØØ9 :
{
∞∞ 
resultToReturn
±± 
.
±± 
	CodeEvent
±± (
=
±±) *!
ExceptionDictionary
±±+ >
.
±±> ? 
UNSUCCESFULL_EVENT
±±? Q
;
±±Q R"
ChannelAdministrator
≤≤ $
.
≤≤$ %&
HandleCommunicationIssue
≤≤% =
(
≤≤= >
idUserRequesting
≤≤> N
,
≤≤N O"
ChannelAdministrator
≤≤P d
.
≤≤d e
LOBBY_EXCEPTION
≤≤e t
)
≤≤t u
;
≤≤u v
ExceptionHandler
≥≥  
.
≥≥  !
LogException
≥≥! -
(
≥≥- .
ex
≥≥. 0
,
≥≥0 1!
ExceptionDictionary
≥≥2 E
.
≥≥E F
FATAL_EXCEPTION
≥≥F U
)
≥≥U V
;
≥≥V W
}
¥¥ 
catch
µµ 
(
µµ 
TimeoutException
µµ #
ex
µµ$ &
)
µµ& '
{
∂∂ 
resultToReturn
∑∑ 
.
∑∑ 
	CodeEvent
∑∑ (
=
∑∑) *!
ExceptionDictionary
∑∑+ >
.
∑∑> ? 
UNSUCCESFULL_EVENT
∑∑? Q
;
∑∑Q R"
ChannelAdministrator
∏∏ $
.
∏∏$ %&
HandleCommunicationIssue
∏∏% =
(
∏∏= >
idUserRequesting
∏∏> N
,
∏∏N O"
ChannelAdministrator
∏∏P d
.
∏∏d e
LOBBY_EXCEPTION
∏∏e t
)
∏∏t u
;
∏∏u v
ExceptionHandler
ππ  
.
ππ  !
LogException
ππ! -
(
ππ- .
ex
ππ. 0
,
ππ0 1!
ExceptionDictionary
ππ2 E
.
ππE F
FATAL_EXCEPTION
ππF U
)
ππU V
;
ππV W
}
∫∫ 
catch
ªª 
(
ªª $
CommunicationException
ªª )
ex
ªª* ,
)
ªª, -
{
ºº 
resultToReturn
ΩΩ 
.
ΩΩ 
	CodeEvent
ΩΩ (
=
ΩΩ) *!
ExceptionDictionary
ΩΩ+ >
.
ΩΩ> ? 
UNSUCCESFULL_EVENT
ΩΩ? Q
;
ΩΩQ R"
ChannelAdministrator
ææ $
.
ææ$ %&
HandleCommunicationIssue
ææ% =
(
ææ= >
idUserRequesting
ææ> N
,
ææN O"
ChannelAdministrator
ææP d
.
ææd e
LOBBY_EXCEPTION
ææe t
)
ææt u
;
ææu v
ExceptionHandler
øø  
.
øø  !
LogException
øø! -
(
øø- .
ex
øø. 0
,
øø0 1!
ExceptionDictionary
øø2 E
.
øøE F
FATAL_EXCEPTION
øøF U
)
øøU V
;
øøV W
}
¿¿ 
catch
¡¡ 
(
¡¡ '
InvalidOperationException
¡¡ ,
ex
¡¡- /
)
¡¡/ 0
{
¬¬ 
resultToReturn
√√ 
.
√√ 
	CodeEvent
√√ (
=
√√) *!
ExceptionDictionary
√√+ >
.
√√> ? 
UNSUCCESFULL_EVENT
√√? Q
;
√√Q R"
ChannelAdministrator
ƒƒ $
.
ƒƒ$ %&
HandleCommunicationIssue
ƒƒ% =
(
ƒƒ= >
idUserRequesting
ƒƒ> N
,
ƒƒN O"
ChannelAdministrator
ƒƒP d
.
ƒƒd e
LOBBY_EXCEPTION
ƒƒe t
)
ƒƒt u
;
ƒƒu v
ExceptionHandler
≈≈  
.
≈≈  !
LogException
≈≈! -
(
≈≈- .
ex
≈≈. 0
,
≈≈0 1!
ExceptionDictionary
≈≈2 E
.
≈≈E F
FATAL_EXCEPTION
≈≈F U
)
≈≈U V
;
≈≈V W
}
∆∆ 
return
«« 
resultToReturn
«« !
;
««! "
}
»» 	
public
   
void
   

LeaveLobby
   
(
   
int
   "
roomCode
  # +
,
  + ,
int
  - 0
idUserLeaving
  1 >
)
  > ?
{
ÀÀ 	
lock
ÃÃ 
(
ÃÃ 

lockObject
ÃÃ 
)
ÃÃ 
{
ÕÕ 
try
ŒŒ 
{
œœ 
if
–– 
(
–– 
roomCode
––  
!=
––! #
NULL_INT_VALUE
––$ 2
&&
––3 5
idUserLeaving
––6 C
!=
––D F
NULL_INT_VALUE
––G U
&&
––V X
idUserLeaving
––Y f
!=
––g i
NULL_INT_VALUE
––j x
)
––x y
{
—— 
var
““ 
lobby
““ !
=
““" ##
GameLobbiesDictionary
““$ 9
.
““9 :$
GetSpecificActiveLobby
““: P
(
““P Q
roomCode
““Q Y
)
““Y Z
;
““Z [
if
”” 
(
”” 
lobby
”” !
!=
””" $
null
””% )
)
””) *
{
‘‘ 
var
’’ 
playerLeaving
’’  -
=
’’. /
lobby
’’0 5
.
’’5 6!
listOfPlayerInLobby
’’6 I
.
’’I J
Find
’’J N
(
’’N O
pl
’’O Q
=>
’’R T
pl
’’U W
.
’’W X
idUser
’’X ^
==
’’_ a
idUserLeaving
’’b o
)
’’o p
;
’’p q
if
÷÷ 
(
÷÷  
playerLeaving
÷÷  -
!=
÷÷. 0
null
÷÷1 5
)
÷÷5 6
{
◊◊ 
lobby
ÿÿ  %
.
ÿÿ% &!
listOfPlayerInLobby
ÿÿ& 9
.
ÿÿ9 :
Remove
ÿÿ: @
(
ÿÿ@ A
playerLeaving
ÿÿA N
)
ÿÿN O
;
ÿÿO P#
ActiveUsersDictionary
ŸŸ  5
.
ŸŸ5 66
(RemoveRegistryOfActiveUserFromDictionary
ŸŸ6 ^
(
ŸŸ^ _
idUserLeaving
ŸŸ_ l
)
ŸŸl m
;
ŸŸm n 
RearrangePositions
⁄⁄  2
(
⁄⁄2 3
lobby
⁄⁄3 8
,
⁄⁄8 9
playerLeaving
⁄⁄: G
.
⁄⁄G H#
numberOfPlayerInLobby
⁄⁄H ]
)
⁄⁄] ^
;
⁄⁄^ _/
!NotifyPlayerJoiningOrLeavingLobby
€€  A
(
€€A B
roomCode
€€B J
,
€€J K
idUserLeaving
€€L Y
,
€€Y Z
lobby
€€[ `
)
€€` a
;
€€a b,
RemovePlayerFromChatDictionary
‹‹  >
(
‹‹> ?
roomCode
‹‹? G
,
‹‹G H
playerLeaving
‹‹I V
)
‹‹V W
;
‹‹W X
}
›› 
}
ﬁﬁ 
}
ﬂﬂ 
}
‡‡ 
catch
·· 
(
·· 1
#CommunicationObjectFaultedException
·· :
ex
··; =
)
··= >
{
‚‚ "
ChannelAdministrator
„„ (
.
„„( )&
HandleCommunicationIssue
„„) A
(
„„A B
idUserLeaving
„„B O
,
„„O P"
ChannelAdministrator
„„Q e
.
„„e f
LOBBY_EXCEPTION
„„f u
)
„„u v
;
„„v w
ExceptionHandler
‰‰ $
.
‰‰$ %
LogException
‰‰% 1
(
‰‰1 2
ex
‰‰2 4
,
‰‰4 5!
ExceptionDictionary
‰‰6 I
.
‰‰I J
FATAL_EXCEPTION
‰‰J Y
)
‰‰Y Z
;
‰‰Z [
}
ÂÂ 
catch
ÊÊ 
(
ÊÊ 
TimeoutException
ÊÊ '
ex
ÊÊ( *
)
ÊÊ* +
{
ÁÁ "
ChannelAdministrator
ËË (
.
ËË( )&
HandleCommunicationIssue
ËË) A
(
ËËA B
idUserLeaving
ËËB O
,
ËËO P"
ChannelAdministrator
ËËQ e
.
ËËe f
LOBBY_EXCEPTION
ËËf u
)
ËËu v
;
ËËv w
ExceptionHandler
ÈÈ $
.
ÈÈ$ %
LogException
ÈÈ% 1
(
ÈÈ1 2
ex
ÈÈ2 4
,
ÈÈ4 5!
ExceptionDictionary
ÈÈ6 I
.
ÈÈI J
FATAL_EXCEPTION
ÈÈJ Y
)
ÈÈY Z
;
ÈÈZ [
}
ÍÍ 
catch
ÎÎ 
(
ÎÎ $
CommunicationException
ÎÎ -
ex
ÎÎ. 0
)
ÎÎ0 1
{
ÏÏ "
ChannelAdministrator
ÌÌ (
.
ÌÌ( )&
HandleCommunicationIssue
ÌÌ) A
(
ÌÌA B
idUserLeaving
ÌÌB O
,
ÌÌO P"
ChannelAdministrator
ÌÌQ e
.
ÌÌe f
LOBBY_EXCEPTION
ÌÌf u
)
ÌÌu v
;
ÌÌv w
ExceptionHandler
ÓÓ $
.
ÓÓ$ %
LogException
ÓÓ% 1
(
ÓÓ1 2
ex
ÓÓ2 4
,
ÓÓ4 5!
ExceptionDictionary
ÓÓ6 I
.
ÓÓI J
FATAL_EXCEPTION
ÓÓJ Y
)
ÓÓY Z
;
ÓÓZ [
}
ÔÔ 
catch
 
(
 '
InvalidOperationException
 0
ex
1 3
)
3 4
{
ÒÒ "
ChannelAdministrator
ÚÚ (
.
ÚÚ( )&
HandleCommunicationIssue
ÚÚ) A
(
ÚÚA B
idUserLeaving
ÚÚB O
,
ÚÚO P"
ChannelAdministrator
ÚÚQ e
.
ÚÚe f
LOBBY_EXCEPTION
ÚÚf u
)
ÚÚu v
;
ÚÚv w
ExceptionHandler
ÛÛ $
.
ÛÛ$ %
LogException
ÛÛ% 1
(
ÛÛ1 2
ex
ÛÛ2 4
,
ÛÛ4 5!
ExceptionDictionary
ÛÛ6 I
.
ÛÛI J
FATAL_EXCEPTION
ÛÛJ Y
)
ÛÛY Z
;
ÛÛZ [
}
ÙÙ 
}
ıı 
}
ˆˆ 	
private
¯¯ 
void
¯¯ ,
RemovePlayerFromChatDictionary
¯¯ 3
(
¯¯3 4
int
¯¯4 7
roomCode
¯¯8 @
,
¯¯@ A
PlayerOnLobbyList
¯¯B S
playerLeaving
¯¯T a
)
¯¯a b
{
˘˘ 	+
ChannelsCallBackInActiveChats
˙˙ )
channelsCallBack
˙˙* :
=
˙˙; <
ChatsDictionary
˙˙= L
.
˙˙L M$
GetChannelCallBackChat
˙˙M c
(
˙˙c d
roomCode
˙˙d l
)
˙˙l m
;
˙˙m n
if
˚˚ 
(
˚˚ 
channelsCallBack
˚˚  
!=
˚˚! #
null
˚˚$ (
)
˚˚( )
{
¸¸ 
var
˝˝ 
channelToDelete
˝˝ #
=
˝˝$ %
channelsCallBack
˝˝& 6
.
˝˝6 7$
listOfChannelsCallBack
˝˝7 M
.
˝˝M N
Find
˝˝N R
(
˝˝R S
channel
˝˝S Z
=>
˝˝[ ]
channel
˝˝^ e
.
˝˝e f
idUser
˝˝f l
==
˝˝m o
playerLeaving
˝˝p }
.
˝˝} ~
idUser˝˝~ Ñ
)˝˝Ñ Ö
;˝˝Ö Ü
if
˛˛ 
(
˛˛ 
channelToDelete
˛˛ #
!=
˛˛$ &
null
˛˛' +
)
˛˛+ ,
{
ˇˇ 
channelsCallBack
ÄÄ $
.
ÄÄ$ %$
listOfChannelsCallBack
ÄÄ% ;
.
ÄÄ; <
Remove
ÄÄ< B
(
ÄÄB C
channelToDelete
ÄÄC R
)
ÄÄR S
;
ÄÄS T
}
ÅÅ 
}
ÇÇ 
}
ÉÉ 	
private
ÖÖ 
void
ÖÖ /
!NotifyPlayerJoiningOrLeavingLobby
ÖÖ 6
(
ÖÖ6 7
int
ÖÖ7 :
roomCode
ÖÖ; C
,
ÖÖC D
int
ÖÖE H
idUser
ÖÖI O
,
ÖÖO P
Lobby
ÖÖQ V
lobby
ÖÖW \
)
ÖÖ\ ]
{
ÜÜ 	
GenericClass
áá 
<
áá 
List
áá 
<
áá 
PlayerInLobby
áá +
>
áá+ ,
>
áá, -
playersLobby
áá. :
=
áá; <(
GetAllCurrentPlayerInLobby
áá= W
(
ááW X
roomCode
ááX `
,
áá` a
idUser
ááb h
)
ááh i
;
áái j
if
àà 
(
àà 
playersLobby
àà 
.
àà 
	CodeEvent
àà &
==
àà' )!
ExceptionDictionary
àà* =
.
àà= >
SUCCESFULL_EVENT
àà> N
)
ààN O
{
ââ 
foreach
ää 
(
ää 
var
ää 
item
ää !
in
ää" $
lobby
ää% *
.
ää* +!
listOfPlayerInLobby
ää+ >
.
ää> ?
Where
ää? D
(
ääD E
pla
ääE H
=>
ääI K
pla
ääL O
.
ääO P/
!lobbyCommunicationChannelCallback
ääP q
.
ääq r!
GetCallbackChanneläär Ñ
<ääÑ Ö%
ILobbyActionsCallbackääÖ ö
>ääö õ
(ääõ ú
)ääú ù
!=ääû †
nullää° •
&&ää¶ ®
plaää© ¨
.ää¨ ≠
idUserää≠ ≥
!=ää¥ ∂
idUserää∑ Ω
)ääΩ æ
)ääæ ø
{
ãã 
try
åå 
{
çç 
item
éé 
.
éé /
!lobbyCommunicationChannelCallback
éé >
.
éé> ? 
GetCallbackChannel
éé? Q
<
ééQ R#
ILobbyActionsCallback
ééR g
>
éég h
(
ééh i
)
ééi j
.
ééj k)
UpdateJoinedPlayerResponseéék Ö
(ééÖ Ü
playersLobbyééÜ í
)ééí ì
;ééì î
}
èè 
catch
êê 
(
êê 1
#CommunicationObjectFaultedException
êê >
ex
êê? A
)
êêA B
{
ëë "
ChannelAdministrator
íí ,
.
íí, -&
HandleCommunicationIssue
íí- E
(
ííE F
item
ííF J
.
ííJ K
idUser
ííK Q
,
ííQ R"
ChannelAdministrator
ííS g
.
ííg h
LOBBY_EXCEPTION
ííh w
)
ííw x
;
ííx y
ExceptionHandler
ìì (
.
ìì( )
LogException
ìì) 5
(
ìì5 6
ex
ìì6 8
,
ìì8 9!
ExceptionDictionary
ìì: M
.
ììM N
FATAL_EXCEPTION
ììN ]
)
ìì] ^
;
ìì^ _
}
îî 
catch
ïï 
(
ïï 
TimeoutException
ïï +
ex
ïï, .
)
ïï. /
{
ññ "
ChannelAdministrator
óó ,
.
óó, -&
HandleCommunicationIssue
óó- E
(
óóE F
item
óóF J
.
óóJ K
idUser
óóK Q
,
óóQ R"
ChannelAdministrator
óóS g
.
óóg h
LOBBY_EXCEPTION
óóh w
)
óów x
;
óóx y
ExceptionHandler
òò (
.
òò( )
LogException
òò) 5
(
òò5 6
ex
òò6 8
,
òò8 9!
ExceptionDictionary
òò: M
.
òòM N
FATAL_EXCEPTION
òòN ]
)
òò] ^
;
òò^ _
}
ôô 
catch
öö 
(
öö $
CommunicationException
öö 1
ex
öö2 4
)
öö4 5
{
õõ "
ChannelAdministrator
úú ,
.
úú, -&
HandleCommunicationIssue
úú- E
(
úúE F
item
úúF J
.
úúJ K
idUser
úúK Q
,
úúQ R"
ChannelAdministrator
úúS g
.
úúg h
LOBBY_EXCEPTION
úúh w
)
úúw x
;
úúx y
ExceptionHandler
ùù (
.
ùù( )
LogException
ùù) 5
(
ùù5 6
ex
ùù6 8
,
ùù8 9!
ExceptionDictionary
ùù: M
.
ùùM N
FATAL_EXCEPTION
ùùN ]
)
ùù] ^
;
ùù^ _
}
ûû 
catch
üü 
(
üü '
InvalidOperationException
üü 4
ex
üü5 7
)
üü7 8
{
†† "
ChannelAdministrator
°° ,
.
°°, -&
HandleCommunicationIssue
°°- E
(
°°E F
item
°°F J
.
°°J K
idUser
°°K Q
,
°°Q R"
ChannelAdministrator
°°S g
.
°°g h
LOBBY_EXCEPTION
°°h w
)
°°w x
;
°°x y
ExceptionHandler
¢¢ (
.
¢¢( )
LogException
¢¢) 5
(
¢¢5 6
ex
¢¢6 8
,
¢¢8 9!
ExceptionDictionary
¢¢: M
.
¢¢M N
FATAL_EXCEPTION
¢¢N ]
)
¢¢] ^
;
¢¢^ _
}
££ 
}
§§ 
}
•• 
}
¶¶ 	
public
®® 
void
®® 
DissolveLobby
®® !
(
®®! "
int
®®" %
roomCode
®®& .
,
®®. /
int
®®0 3
idUser
®®4 :
)
®®: ;
{
©© 	
lock
™™ 
(
™™ 

lockObject
™™ 
)
™™ 
{
´´ 
var
¨¨ 
lobby
¨¨ 
=
¨¨ #
GameLobbiesDictionary
¨¨ 1
.
¨¨1 2$
GetSpecificActiveLobby
¨¨2 H
(
¨¨H I
roomCode
¨¨I Q
)
¨¨Q R
;
¨¨R S
try
≠≠ 
{
ÆÆ 
if
ØØ 
(
ØØ 
lobby
ØØ 
!=
ØØ  
null
ØØ! %
)
ØØ% &
{
∞∞ 
var
±± 
Leader
±± "
=
±±# $
lobby
±±% *
.
±±* +!
listOfPlayerInLobby
±±+ >
.
±±> ?
Find
±±? C
(
±±C D
pl
±±D F
=>
±±G I
pl
±±J L
.
±±L M
idUser
±±M S
==
±±T V
idUser
±±W ]
&&
±±^ `
pl
±±a c
.
±±c d#
numberOfPlayerInLobby
±±d y
==
±±z |'
LEADER_POSITION_IN_LOBBY±±} ï
)±±ï ñ
;±±ñ ó
if
≤≤ 
(
≤≤ 
Leader
≤≤ "
!=
≤≤# %
null
≤≤& *
)
≤≤* +
{
≥≥  
NotifyClosingLobby
¥¥ .
(
¥¥. /
lobby
¥¥/ 4
)
¥¥4 5
;
¥¥5 6#
ActiveUsersDictionary
µµ 1
.
µµ1 26
(RemoveRegistryOfActiveUserFromDictionary
µµ2 Z
(
µµZ [
idUser
µµ[ a
)
µµa b
;
µµb c#
GameLobbiesDictionary
∂∂ 1
.
∂∂1 21
#RemoveRegistryOfLobbyFromDictionary
∂∂2 U
(
∂∂U V
roomCode
∂∂V ^
)
∂∂^ _
;
∂∂_ `)
QuestionsForLobbyDictionary
∑∑ 7
.
∑∑7 80
"RemoveSetOFQuestionsFromDictionary
∑∑8 Z
(
∑∑Z [
roomCode
∑∑[ c
)
∑∑c d
;
∑∑d e
ChatsDictionary
∏∏ +
.
∏∏+ ,6
(RemoveRegistryOfActiveChatFromDictionary
∏∏, T
(
∏∏T U
roomCode
∏∏U ]
)
∏∏] ^
;
∏∏^ _
ChatsDictionary
ππ +
.
ππ+ ,?
1RemoveRegistryOfChannelCallBakcChatFromDictionary
ππ, ]
(
ππ] ^
roomCode
ππ^ f
)
ππf g
;
ππg h
}
∫∫ 
}
ªª 
}
ºº 
catch
ΩΩ 
(
ΩΩ 1
#CommunicationObjectFaultedException
ΩΩ :
ex
ΩΩ; =
)
ΩΩ= >
{
ææ "
ChannelAdministrator
øø (
.
øø( )&
HandleCommunicationIssue
øø) A
(
øøA B
idUser
øøB H
,
øøH I"
ChannelAdministrator
øøJ ^
.
øø^ _
LOBBY_EXCEPTION
øø_ n
)
øøn o
;
øøo p
ExceptionHandler
¿¿ $
.
¿¿$ %
LogException
¿¿% 1
(
¿¿1 2
ex
¿¿2 4
,
¿¿4 5!
ExceptionDictionary
¿¿6 I
.
¿¿I J
FATAL_EXCEPTION
¿¿J Y
)
¿¿Y Z
;
¿¿Z [
}
¡¡ 
catch
¬¬ 
(
¬¬ 
TimeoutException
¬¬ '
ex
¬¬( *
)
¬¬* +
{
√√ "
ChannelAdministrator
ƒƒ (
.
ƒƒ( )&
HandleCommunicationIssue
ƒƒ) A
(
ƒƒA B
idUser
ƒƒB H
,
ƒƒH I"
ChannelAdministrator
ƒƒJ ^
.
ƒƒ^ _
LOBBY_EXCEPTION
ƒƒ_ n
)
ƒƒn o
;
ƒƒo p
ExceptionHandler
≈≈ $
.
≈≈$ %
LogException
≈≈% 1
(
≈≈1 2
ex
≈≈2 4
,
≈≈4 5!
ExceptionDictionary
≈≈6 I
.
≈≈I J
FATAL_EXCEPTION
≈≈J Y
)
≈≈Y Z
;
≈≈Z [
}
∆∆ 
catch
«« 
(
«« $
CommunicationException
«« -
ex
««. 0
)
««0 1
{
»» "
ChannelAdministrator
…… (
.
……( )&
HandleCommunicationIssue
……) A
(
……A B
idUser
……B H
,
……H I"
ChannelAdministrator
……J ^
.
……^ _
LOBBY_EXCEPTION
……_ n
)
……n o
;
……o p
ExceptionHandler
   $
.
  $ %
LogException
  % 1
(
  1 2
ex
  2 4
,
  4 5!
ExceptionDictionary
  6 I
.
  I J
FATAL_EXCEPTION
  J Y
)
  Y Z
;
  Z [
}
ÀÀ 
catch
ÃÃ 
(
ÃÃ '
InvalidOperationException
ÃÃ 0
ex
ÃÃ1 3
)
ÃÃ3 4
{
ÕÕ "
ChannelAdministrator
ŒŒ (
.
ŒŒ( )&
HandleCommunicationIssue
ŒŒ) A
(
ŒŒA B
idUser
ŒŒB H
,
ŒŒH I"
ChannelAdministrator
ŒŒJ ^
.
ŒŒ^ _
LOBBY_EXCEPTION
ŒŒ_ n
)
ŒŒn o
;
ŒŒo p
ExceptionHandler
œœ $
.
œœ$ %
LogException
œœ% 1
(
œœ1 2
ex
œœ2 4
,
œœ4 5!
ExceptionDictionary
œœ6 I
.
œœI J
FATAL_EXCEPTION
œœJ Y
)
œœY Z
;
œœZ [
}
–– 
}
—— 
}
““ 	
private
‘‘ 
void
‘‘  
NotifyClosingLobby
‘‘ '
(
‘‘' (
Lobby
‘‘( -
lobby
‘‘. 3
)
‘‘3 4
{
’’ 	
foreach
÷÷ 
(
÷÷ 
var
÷÷ 
item
÷÷ 
in
÷÷  
lobby
÷÷! &
.
÷÷& '!
listOfPlayerInLobby
÷÷' :
)
÷÷: ;
{
◊◊ 
try
ÿÿ 
{
ŸŸ 
var
⁄⁄ 
channel
⁄⁄ 
=
⁄⁄  !
item
⁄⁄" &
.
⁄⁄& '/
!lobbyCommunicationChannelCallback
⁄⁄' H
.
⁄⁄H I 
GetCallbackChannel
⁄⁄I [
<
⁄⁄[ \#
ILobbyActionsCallback
⁄⁄\ q
>
⁄⁄q r
(
⁄⁄r s
)
⁄⁄s t
;
⁄⁄t u
if
€€ 
(
€€ 
channel
€€ 
!=
€€  "
null
€€# '
&&
€€( *
item
€€+ /
.
€€/ 0#
numberOfPlayerInLobby
€€0 E
!=
€€F H&
LEADER_POSITION_IN_LOBBY
€€I a
)
€€a b
{
‹‹ 
channel
›› 
.
››  
DissolvingLobby
››  /
(
››/ 0
)
››0 1
;
››1 2
}
ﬁﬁ 
}
ﬂﬂ 
catch
‡‡ 
(
‡‡ 1
#CommunicationObjectFaultedException
‡‡ :
ex
‡‡; =
)
‡‡= >
{
·· "
ChannelAdministrator
‚‚ (
.
‚‚( )&
HandleCommunicationIssue
‚‚) A
(
‚‚A B
item
‚‚B F
.
‚‚F G
idUser
‚‚G M
,
‚‚M N"
ChannelAdministrator
‚‚O c
.
‚‚c d
LOBBY_EXCEPTION
‚‚d s
)
‚‚s t
;
‚‚t u
ExceptionHandler
„„ $
.
„„$ %
LogException
„„% 1
(
„„1 2
ex
„„2 4
,
„„4 5!
ExceptionDictionary
„„6 I
.
„„I J
FATAL_EXCEPTION
„„J Y
)
„„Y Z
;
„„Z [
}
‰‰ 
catch
ÂÂ 
(
ÂÂ 
TimeoutException
ÂÂ '
ex
ÂÂ( *
)
ÂÂ* +
{
ÊÊ "
ChannelAdministrator
ÁÁ (
.
ÁÁ( )&
HandleCommunicationIssue
ÁÁ) A
(
ÁÁA B
item
ÁÁB F
.
ÁÁF G
idUser
ÁÁG M
,
ÁÁM N"
ChannelAdministrator
ÁÁO c
.
ÁÁc d
LOBBY_EXCEPTION
ÁÁd s
)
ÁÁs t
;
ÁÁt u
ExceptionHandler
ËË $
.
ËË$ %
LogException
ËË% 1
(
ËË1 2
ex
ËË2 4
,
ËË4 5!
ExceptionDictionary
ËË6 I
.
ËËI J
FATAL_EXCEPTION
ËËJ Y
)
ËËY Z
;
ËËZ [
}
ÈÈ 
catch
ÍÍ 
(
ÍÍ $
CommunicationException
ÍÍ -
ex
ÍÍ. 0
)
ÍÍ0 1
{
ÎÎ "
ChannelAdministrator
ÏÏ (
.
ÏÏ( )&
HandleCommunicationIssue
ÏÏ) A
(
ÏÏA B
item
ÏÏB F
.
ÏÏF G
idUser
ÏÏG M
,
ÏÏM N"
ChannelAdministrator
ÏÏO c
.
ÏÏc d
LOBBY_EXCEPTION
ÏÏd s
)
ÏÏs t
;
ÏÏt u
ExceptionHandler
ÌÌ $
.
ÌÌ$ %
LogException
ÌÌ% 1
(
ÌÌ1 2
ex
ÌÌ2 4
,
ÌÌ4 5!
ExceptionDictionary
ÌÌ6 I
.
ÌÌI J
FATAL_EXCEPTION
ÌÌJ Y
)
ÌÌY Z
;
ÌÌZ [
}
ÓÓ 
catch
ÔÔ 
(
ÔÔ '
InvalidOperationException
ÔÔ 0
ex
ÔÔ1 3
)
ÔÔ3 4
{
 "
ChannelAdministrator
ÒÒ (
.
ÒÒ( )&
HandleCommunicationIssue
ÒÒ) A
(
ÒÒA B
item
ÒÒB F
.
ÒÒF G
idUser
ÒÒG M
,
ÒÒM N"
ChannelAdministrator
ÒÒO c
.
ÒÒc d
LOBBY_EXCEPTION
ÒÒd s
)
ÒÒs t
;
ÒÒt u
ExceptionHandler
ÚÚ $
.
ÚÚ$ %
LogException
ÚÚ% 1
(
ÚÚ1 2
ex
ÚÚ2 4
,
ÚÚ4 5!
ExceptionDictionary
ÚÚ6 I
.
ÚÚI J
FATAL_EXCEPTION
ÚÚJ Y
)
ÚÚY Z
;
ÚÚZ [
}
ÛÛ 
}
ÙÙ 
}
ıı 	
public
˜˜ 
void
˜˜ 
	MakeTeams
˜˜ 
(
˜˜ 
int
˜˜ !
roomCode
˜˜" *
,
˜˜* +
int
˜˜, /
idUser
˜˜0 6
,
˜˜6 7
bool
˜˜8 <
	wannaTeam
˜˜= F
)
˜˜F G
{
¯¯ 	
try
˘˘ 
{
˙˙ 
if
˚˚ 
(
˚˚ 
roomCode
˚˚ 
!=
˚˚ 
NULL_INT_VALUE
˚˚  .
&&
˚˚/ 1
idUser
˚˚2 8
!=
˚˚9 ;
NULL_INT_VALUE
˚˚< J
)
˚˚J K
{
¸¸ 
var
˝˝ 
lobby
˝˝ 
=
˝˝ #
GameLobbiesDictionary
˝˝  5
.
˝˝5 6$
GetSpecificActiveLobby
˝˝6 L
(
˝˝L M
roomCode
˝˝M U
)
˝˝U V
;
˝˝V W
if
˛˛ 
(
˛˛ 
lobby
˛˛ 
!=
˛˛  
null
˛˛! %
)
˛˛% &
{
ˇˇ 
if
ÄÄ 
(
ÄÄ 
lobby
ÄÄ !
.
ÄÄ! "!
listOfPlayerInLobby
ÄÄ" 5
.
ÄÄ5 6
Count
ÄÄ6 ;
==
ÄÄ< >
MAX_PLAYERS
ÄÄ? J
&&
ÄÄK M
	wannaTeam
ÄÄN W
)
ÄÄW X
{
ÅÅ 
AssignTeamSide
ÇÇ *
(
ÇÇ* +
lobby
ÇÇ+ 0
)
ÇÇ0 1
;
ÇÇ1 2
}
ÉÉ 
else
ÑÑ 
{
ÖÖ  
DissolveTeamsSides
ÜÜ .
(
ÜÜ. /
lobby
ÜÜ/ 4
)
ÜÜ4 5
;
ÜÜ5 6
}
áá %
NotifyPlayersAboutTeams
àà /
(
àà/ 0
lobby
àà0 5
,
àà5 6
idUser
àà7 =
,
àà= >
	wannaTeam
àà? H
)
ààH I
;
ààI J
}
ââ 
}
ää 
}
ãã 
catch
åå 
(
åå 1
#CommunicationObjectFaultedException
åå 6
ex
åå7 9
)
åå9 :
{
çç "
ChannelAdministrator
éé $
.
éé$ %&
HandleCommunicationIssue
éé% =
(
éé= >
idUser
éé> D
,
ééD E"
ChannelAdministrator
ééF Z
.
ééZ [
LOBBY_EXCEPTION
éé[ j
)
ééj k
;
éék l
ExceptionHandler
èè  
.
èè  !
LogException
èè! -
(
èè- .
ex
èè. 0
,
èè0 1!
ExceptionDictionary
èè2 E
.
èèE F
FATAL_EXCEPTION
èèF U
)
èèU V
;
èèV W
}
êê 
catch
ëë 
(
ëë 
TimeoutException
ëë #
ex
ëë$ &
)
ëë& '
{
íí "
ChannelAdministrator
ìì $
.
ìì$ %&
HandleCommunicationIssue
ìì% =
(
ìì= >
idUser
ìì> D
,
ììD E"
ChannelAdministrator
ììF Z
.
ììZ [
LOBBY_EXCEPTION
ìì[ j
)
ììj k
;
ììk l
ExceptionHandler
îî  
.
îî  !
LogException
îî! -
(
îî- .
ex
îî. 0
,
îî0 1!
ExceptionDictionary
îî2 E
.
îîE F
FATAL_EXCEPTION
îîF U
)
îîU V
;
îîV W
}
ïï 
catch
ññ 
(
ññ $
CommunicationException
ññ )
ex
ññ* ,
)
ññ, -
{
óó "
ChannelAdministrator
òò $
.
òò$ %&
HandleCommunicationIssue
òò% =
(
òò= >
idUser
òò> D
,
òòD E"
ChannelAdministrator
òòF Z
.
òòZ [
LOBBY_EXCEPTION
òò[ j
)
òòj k
;
òòk l
ExceptionHandler
ôô  
.
ôô  !
LogException
ôô! -
(
ôô- .
ex
ôô. 0
,
ôô0 1!
ExceptionDictionary
ôô2 E
.
ôôE F
FATAL_EXCEPTION
ôôF U
)
ôôU V
;
ôôV W
}
öö 
catch
õõ 
(
õõ '
InvalidOperationException
õõ ,
ex
õõ- /
)
õõ/ 0
{
úú "
ChannelAdministrator
ùù $
.
ùù$ %&
HandleCommunicationIssue
ùù% =
(
ùù= >
idUser
ùù> D
,
ùùD E"
ChannelAdministrator
ùùF Z
.
ùùZ [
LOBBY_EXCEPTION
ùù[ j
)
ùùj k
;
ùùk l
ExceptionHandler
ûû  
.
ûû  !
LogException
ûû! -
(
ûû- .
ex
ûû. 0
,
ûû0 1!
ExceptionDictionary
ûû2 E
.
ûûE F
FATAL_EXCEPTION
ûûF U
)
ûûU V
;
ûûV W
}
üü 
}
†† 	
private
¢¢ 
void
¢¢ 
AssignTeamSide
¢¢ #
(
¢¢# $
Lobby
¢¢$ )
lobby
¢¢* /
)
¢¢/ 0
{
££ 	
foreach
§§ 
(
§§ 
var
§§ 
item
§§ 
in
§§  
lobby
§§! &
.
§§& '!
listOfPlayerInLobby
§§' :
)
§§: ;
{
•• 
if
¶¶ 
(
¶¶ 
item
¶¶ 
.
¶¶ #
numberOfPlayerInLobby
¶¶ .
<=
¶¶/ 1
$num
¶¶2 3
)
¶¶3 4
{
ßß 
item
®® 
.
®® 
sideTeam
®® !
=
®®" #
TEAM_LEFT_SIDE
®®$ 2
;
®®2 3
}
©© 
else
™™ 
{
´´ 
item
¨¨ 
.
¨¨ 
sideTeam
¨¨ !
=
¨¨" #
TEAM_RIGTH_SIDE
¨¨$ 3
;
¨¨3 4
}
≠≠ 
}
ÆÆ 
}
ØØ 	
private
±± 
void
±±  
DissolveTeamsSides
±± '
(
±±' (
Lobby
±±( -
lobby
±±. 3
)
±±3 4
{
≤≤ 	
foreach
≥≥ 
(
≥≥ 
var
≥≥ 
item
≥≥ 
in
≥≥  
lobby
≥≥! &
.
≥≥& '!
listOfPlayerInLobby
≥≥' :
)
≥≥: ;
{
¥¥ 
item
µµ 
.
µµ 
sideTeam
µµ 
=
µµ 
TEAM_LEFT_SIDE
µµ  .
;
µµ. /
}
∂∂ 
}
∑∑ 	
private
ππ 
void
ππ %
NotifyPlayersAboutTeams
ππ ,
(
ππ, -
Lobby
ππ- 2
lobby
ππ3 8
,
ππ8 9
int
ππ: =
idUserNotifying
ππ> M
,
ππM N
bool
ππO S
	wannaTeam
ππT ]
)
ππ] ^
{
∫∫ 	
foreach
ªª 
(
ªª 
var
ªª 
item
ªª 
in
ªª  
lobby
ªª! &
.
ªª& '!
listOfPlayerInLobby
ªª' :
)
ªª: ;
{
ºº 
try
ΩΩ 
{
ææ 
if
øø 
(
øø 
item
øø 
.
øø 
idUser
øø #
!=
øø$ &
idUserNotifying
øø' 6
)
øø6 7
{
¿¿ 
item
¡¡ 
.
¡¡ /
!lobbyCommunicationChannelCallback
¡¡ >
.
¡¡> ? 
GetCallbackChannel
¡¡? Q
<
¡¡Q R#
ILobbyActionsCallback
¡¡R g
>
¡¡g h
(
¡¡h i
)
¡¡i j
.
¡¡j k
MakeTeamsResponse
¡¡k |
(
¡¡| }
	wannaTeam¡¡} Ü
)¡¡Ü á
;¡¡á à
}
¬¬ 
}
√√ 
catch
ƒƒ 
(
ƒƒ 1
#CommunicationObjectFaultedException
ƒƒ :
ex
ƒƒ; =
)
ƒƒ= >
{
≈≈ "
ChannelAdministrator
∆∆ (
.
∆∆( )&
HandleCommunicationIssue
∆∆) A
(
∆∆A B
item
∆∆B F
.
∆∆F G
idUser
∆∆G M
,
∆∆M N"
ChannelAdministrator
∆∆O c
.
∆∆c d
LOBBY_EXCEPTION
∆∆d s
)
∆∆s t
;
∆∆t u
ExceptionHandler
«« $
.
««$ %
LogException
««% 1
(
««1 2
ex
««2 4
,
««4 5!
ExceptionDictionary
««6 I
.
««I J
FATAL_EXCEPTION
««J Y
)
««Y Z
;
««Z [
}
»» 
catch
…… 
(
…… 
TimeoutException
…… '
ex
……( *
)
……* +
{
   "
ChannelAdministrator
ÀÀ (
.
ÀÀ( )&
HandleCommunicationIssue
ÀÀ) A
(
ÀÀA B
item
ÀÀB F
.
ÀÀF G
idUser
ÀÀG M
,
ÀÀM N"
ChannelAdministrator
ÀÀO c
.
ÀÀc d
LOBBY_EXCEPTION
ÀÀd s
)
ÀÀs t
;
ÀÀt u
ExceptionHandler
ÃÃ $
.
ÃÃ$ %
LogException
ÃÃ% 1
(
ÃÃ1 2
ex
ÃÃ2 4
,
ÃÃ4 5!
ExceptionDictionary
ÃÃ6 I
.
ÃÃI J
FATAL_EXCEPTION
ÃÃJ Y
)
ÃÃY Z
;
ÃÃZ [
}
ÕÕ 
catch
ŒŒ 
(
ŒŒ $
CommunicationException
ŒŒ -
ex
ŒŒ. 0
)
ŒŒ0 1
{
œœ "
ChannelAdministrator
–– (
.
––( )&
HandleCommunicationIssue
––) A
(
––A B
item
––B F
.
––F G
idUser
––G M
,
––M N"
ChannelAdministrator
––O c
.
––c d
LOBBY_EXCEPTION
––d s
)
––s t
;
––t u
ExceptionHandler
—— $
.
——$ %
LogException
——% 1
(
——1 2
ex
——2 4
,
——4 5!
ExceptionDictionary
——6 I
.
——I J
FATAL_EXCEPTION
——J Y
)
——Y Z
;
——Z [
}
““ 
catch
”” 
(
”” '
InvalidOperationException
”” 0
ex
””1 3
)
””3 4
{
‘‘ "
ChannelAdministrator
’’ (
.
’’( )&
HandleCommunicationIssue
’’) A
(
’’A B
item
’’B F
.
’’F G
idUser
’’G M
,
’’M N"
ChannelAdministrator
’’O c
.
’’c d
LOBBY_EXCEPTION
’’d s
)
’’s t
;
’’t u
ExceptionHandler
÷÷ $
.
÷÷$ %
LogException
÷÷% 1
(
÷÷1 2
ex
÷÷2 4
,
÷÷4 5!
ExceptionDictionary
÷÷6 I
.
÷÷I J
FATAL_EXCEPTION
÷÷J Y
)
÷÷Y Z
;
÷÷Z [
}
◊◊ 
}
ÿÿ 
}
⁄⁄ 	
public
‹‹ 
void
‹‹ 
ChangePlayerSide
‹‹ $
(
‹‹$ %
int
‹‹% (
roomCode
‹‹) 1
,
‹‹1 2
int
‹‹3 6 
idUserToChangeTeam
‹‹7 I
,
‹‹I J
int
‹‹K N
newSideTeam
‹‹O Z
)
‹‹Z [
{
›› 	
if
ﬁﬁ 
(
ﬁﬁ 
roomCode
ﬁﬁ 
!=
ﬁﬁ 
NULL_INT_VALUE
ﬁﬁ *
&&
ﬁﬁ+ - 
idUserToChangeTeam
ﬁﬁ. @
!=
ﬁﬁA C
NULL_INT_VALUE
ﬁﬁD R
&&
ﬁﬁS U
newSideTeam
ﬁﬁV a
!=
ﬁﬁb d
NULL_INT_VALUE
ﬁﬁe s
)
ﬁﬁs t
{
ﬂﬂ 
var
‡‡ 
lobby
‡‡ 
=
‡‡ #
GameLobbiesDictionary
‡‡ 1
.
‡‡1 2$
GetSpecificActiveLobby
‡‡2 H
(
‡‡H I
roomCode
‡‡I Q
)
‡‡Q R
;
‡‡R S
try
·· 
{
‚‚ 
if
„„ 
(
„„ 
lobby
„„ 
!=
„„  
null
„„! %
)
„„% &
{
‰‰ 
var
ÂÂ 
player
ÂÂ "
=
ÂÂ# $
lobby
ÂÂ% *
.
ÂÂ* +!
listOfPlayerInLobby
ÂÂ+ >
.
ÂÂ> ?
Find
ÂÂ? C
(
ÂÂC D
pl
ÂÂD F
=>
ÂÂG I
pl
ÂÂJ L
.
ÂÂL M
idUser
ÂÂM S
==
ÂÂT V 
idUserToChangeTeam
ÂÂW i
)
ÂÂi j
;
ÂÂj k
if
ÊÊ 
(
ÊÊ 
player
ÊÊ "
!=
ÊÊ# %
null
ÊÊ& *
)
ÊÊ* +
{
ÁÁ 
player
ËË "
.
ËË" #
sideTeam
ËË# +
=
ËË, -
newSideTeam
ËË. 9
;
ËË9 :'
NotifyPlayerChangedOfSide
ÈÈ 5
(
ÈÈ5 6
roomCode
ÈÈ6 >
,
ÈÈ> ? 
idUserToChangeTeam
ÈÈ@ R
,
ÈÈR S
lobby
ÈÈT Y
)
ÈÈY Z
;
ÈÈZ [
}
ÍÍ 
}
ÎÎ 
}
ÏÏ 
catch
ÌÌ 
(
ÌÌ 1
#CommunicationObjectFaultedException
ÌÌ :
ex
ÌÌ; =
)
ÌÌ= >
{
ÓÓ "
ChannelAdministrator
ÔÔ (
.
ÔÔ( )&
HandleCommunicationIssue
ÔÔ) A
(
ÔÔA B
lobby
ÔÔB G
.
ÔÔG H
idAdmin
ÔÔH O
,
ÔÔO P"
ChannelAdministrator
ÔÔQ e
.
ÔÔe f
LOBBY_EXCEPTION
ÔÔf u
)
ÔÔu v
;
ÔÔv w
ExceptionHandler
 $
.
$ %
LogException
% 1
(
1 2
ex
2 4
,
4 5!
ExceptionDictionary
6 I
.
I J
FATAL_EXCEPTION
J Y
)
Y Z
;
Z [
}
ÒÒ 
catch
ÚÚ 
(
ÚÚ 
TimeoutException
ÚÚ '
ex
ÚÚ( *
)
ÚÚ* +
{
ÛÛ "
ChannelAdministrator
ÙÙ (
.
ÙÙ( )&
HandleCommunicationIssue
ÙÙ) A
(
ÙÙA B
lobby
ÙÙB G
.
ÙÙG H
idAdmin
ÙÙH O
,
ÙÙO P"
ChannelAdministrator
ÙÙQ e
.
ÙÙe f
LOBBY_EXCEPTION
ÙÙf u
)
ÙÙu v
;
ÙÙv w
ExceptionHandler
ıı $
.
ıı$ %
LogException
ıı% 1
(
ıı1 2
ex
ıı2 4
,
ıı4 5!
ExceptionDictionary
ıı6 I
.
ııI J
FATAL_EXCEPTION
ııJ Y
)
ııY Z
;
ııZ [
}
ˆˆ 
catch
˜˜ 
(
˜˜ $
CommunicationException
˜˜ -
ex
˜˜. 0
)
˜˜0 1
{
¯¯ "
ChannelAdministrator
˘˘ (
.
˘˘( )&
HandleCommunicationIssue
˘˘) A
(
˘˘A B
lobby
˘˘B G
.
˘˘G H
idAdmin
˘˘H O
,
˘˘O P"
ChannelAdministrator
˘˘Q e
.
˘˘e f
LOBBY_EXCEPTION
˘˘f u
)
˘˘u v
;
˘˘v w
ExceptionHandler
˙˙ $
.
˙˙$ %
LogException
˙˙% 1
(
˙˙1 2
ex
˙˙2 4
,
˙˙4 5!
ExceptionDictionary
˙˙6 I
.
˙˙I J
FATAL_EXCEPTION
˙˙J Y
)
˙˙Y Z
;
˙˙Z [
}
˚˚ 
catch
¸¸ 
(
¸¸ '
InvalidOperationException
¸¸ 0
ex
¸¸1 3
)
¸¸3 4
{
˝˝ "
ChannelAdministrator
˛˛ (
.
˛˛( )&
HandleCommunicationIssue
˛˛) A
(
˛˛A B
lobby
˛˛B G
.
˛˛G H
idAdmin
˛˛H O
,
˛˛O P"
ChannelAdministrator
˛˛Q e
.
˛˛e f
LOBBY_EXCEPTION
˛˛f u
)
˛˛u v
;
˛˛v w
ExceptionHandler
ˇˇ $
.
ˇˇ$ %
LogException
ˇˇ% 1
(
ˇˇ1 2
ex
ˇˇ2 4
,
ˇˇ4 5!
ExceptionDictionary
ˇˇ6 I
.
ˇˇI J
FATAL_EXCEPTION
ˇˇJ Y
)
ˇˇY Z
;
ˇˇZ [
}
ÄÄ 
}
ÅÅ 
}
ÇÇ 	
private
ÉÉ 
void
ÉÉ '
NotifyPlayerChangedOfSide
ÉÉ .
(
ÉÉ. /
int
ÉÉ/ 2
roomCode
ÉÉ3 ;
,
ÉÉ; <
int
ÉÉ= @
idUser
ÉÉA G
,
ÉÉG H
Lobby
ÉÉI N
lobby
ÉÉO T
)
ÉÉT U
{
ÑÑ 	
GenericClass
ÖÖ 
<
ÖÖ 
List
ÖÖ 
<
ÖÖ 
PlayerInLobby
ÖÖ +
>
ÖÖ+ ,
>
ÖÖ, -
playersInLobby
ÖÖ. <
=
ÖÖ= >(
GetAllCurrentPlayerInLobby
ÖÖ? Y
(
ÖÖY Z
roomCode
ÖÖZ b
,
ÖÖb c
idUser
ÖÖd j
)
ÖÖj k
;
ÖÖk l
if
ÜÜ 
(
ÜÜ 
playersInLobby
ÜÜ 
.
ÜÜ 
	CodeEvent
ÜÜ (
==
ÜÜ) +!
ExceptionDictionary
ÜÜ, ?
.
ÜÜ? @
SUCCESFULL_EVENT
ÜÜ@ P
)
ÜÜP Q
{
áá 
foreach
àà 
(
àà 
var
àà 
item
àà !
in
àà" $
lobby
àà% *
.
àà* +!
listOfPlayerInLobby
àà+ >
.
àà> ?
Where
àà? D
(
ààD E
pla
ààE H
=>
ààI K
lobby
ààK P
.
ààP Q
idAdmin
ààQ X
!=
ààY [
pla
àà\ _
.
àà_ `
idUser
àà` f
&&
ààg i
pla
ààj m
.
ààm n0
!lobbyCommunicationChannelCallbackààn è
.ààè ê"
GetCallbackChannelààê ¢
<àà¢ £%
ILobbyActionsCallbackàà£ ∏
>àà∏ π
(ààπ ∫
)àà∫ ª
!=ààº æ
nullààø √
)àà√ ƒ
)ààƒ ≈
{
ââ 
try
ää 
{
ãã 
item
åå 
.
åå /
!lobbyCommunicationChannelCallback
åå >
.
åå> ? 
GetCallbackChannel
åå? Q
<
ååQ R#
ILobbyActionsCallback
ååR g
>
ååg h
(
ååh i
)
ååi j
.
ååj k
UpdateTeamSide
ååk y
(
ååy z
playersInLobbyååz à
)ååà â
;ååâ ä
}
çç 
catch
éé 
(
éé 1
#CommunicationObjectFaultedException
éé >
ex
éé? A
)
ééA B
{
èè "
ChannelAdministrator
êê ,
.
êê, -&
HandleCommunicationIssue
êê- E
(
êêE F
item
êêF J
.
êêJ K
idUser
êêK Q
,
êêQ R"
ChannelAdministrator
êêS g
.
êêg h
LOBBY_EXCEPTION
êêh w
)
êêw x
;
êêx y
ExceptionHandler
ëë (
.
ëë( )
LogException
ëë) 5
(
ëë5 6
ex
ëë6 8
,
ëë8 9!
ExceptionDictionary
ëë: M
.
ëëM N
FATAL_EXCEPTION
ëëN ]
)
ëë] ^
;
ëë^ _
}
íí 
catch
ìì 
(
ìì 
TimeoutException
ìì +
ex
ìì, .
)
ìì. /
{
îî "
ChannelAdministrator
ïï ,
.
ïï, -&
HandleCommunicationIssue
ïï- E
(
ïïE F
item
ïïF J
.
ïïJ K
idUser
ïïK Q
,
ïïQ R"
ChannelAdministrator
ïïS g
.
ïïg h
LOBBY_EXCEPTION
ïïh w
)
ïïw x
;
ïïx y
ExceptionHandler
ññ (
.
ññ( )
LogException
ññ) 5
(
ññ5 6
ex
ññ6 8
,
ññ8 9!
ExceptionDictionary
ññ: M
.
ññM N
FATAL_EXCEPTION
ññN ]
)
ññ] ^
;
ññ^ _
}
óó 
catch
òò 
(
òò $
CommunicationException
òò 1
ex
òò2 4
)
òò4 5
{
ôô "
ChannelAdministrator
öö ,
.
öö, -&
HandleCommunicationIssue
öö- E
(
ööE F
item
ööF J
.
ööJ K
idUser
ööK Q
,
ööQ R"
ChannelAdministrator
ööS g
.
öög h
LOBBY_EXCEPTION
ööh w
)
ööw x
;
ööx y
ExceptionHandler
õõ (
.
õõ( )
LogException
õõ) 5
(
õõ5 6
ex
õõ6 8
,
õõ8 9!
ExceptionDictionary
õõ: M
.
õõM N
FATAL_EXCEPTION
õõN ]
)
õõ] ^
;
õõ^ _
}
úú 
catch
ùù 
(
ùù '
InvalidOperationException
ùù 4
ex
ùù5 7
)
ùù7 8
{
ûû "
ChannelAdministrator
üü ,
.
üü, -&
HandleCommunicationIssue
üü- E
(
üüE F
item
üüF J
.
üüJ K
idUser
üüK Q
,
üüQ R"
ChannelAdministrator
üüS g
.
üüg h
LOBBY_EXCEPTION
üüh w
)
üüw x
;
üüx y
ExceptionHandler
†† (
.
††( )
LogException
††) 5
(
††5 6
ex
††6 8
,
††8 9!
ExceptionDictionary
††: M
.
††M N
FATAL_EXCEPTION
††N ]
)
††] ^
;
††^ _
}
°° 
}
¢¢ 
}
££ 
}
§§ 	
public
¶¶ 
void
¶¶ &
EliminatePlayerFromMatch
¶¶ ,
(
¶¶, -
int
¶¶- 0
roomCode
¶¶1 9
,
¶¶9 :
int
¶¶; >
idUserToEliminate
¶¶? P
)
¶¶P Q
{
ßß 	
if
®® 
(
®® 
roomCode
®® 
!=
®® 
NULL_INT_VALUE
®® *
&&
®®+ -
idUserToEliminate
®®. ?
!=
®®@ B
NULL_INT_VALUE
®®C Q
)
®®Q R
{
©© 
var
™™ 
lobby
™™ 
=
™™ #
GameLobbiesDictionary
™™ 1
.
™™1 2$
GetSpecificActiveLobby
™™2 H
(
™™H I
roomCode
™™I Q
)
™™Q R
;
™™R S
try
´´ 
{
¨¨ 
if
≠≠ 
(
≠≠ 
lobby
≠≠ 
!=
≠≠  
null
≠≠! %
)
≠≠% &
{
ÆÆ 
PlayerOnLobbyList
ØØ )
playerEjected
ØØ* 7
=
ØØ8 9
lobby
ØØ: ?
.
ØØ? @!
listOfPlayerInLobby
ØØ@ S
.
ØØS T
Find
ØØT X
(
ØØX Y
pl
ØØY [
=>
ØØ\ ^
pl
ØØ_ a
.
ØØa b
idUser
ØØb h
==
ØØi k
idUserToEliminate
ØØl }
)
ØØ} ~
;
ØØ~ 
if
∞∞ 
(
∞∞ 
playerEjected
∞∞ )
!=
∞∞* ,
null
∞∞- 1
)
∞∞1 2
{
±± 
lobby
≤≤ !
.
≤≤! "!
listOfPlayerInLobby
≤≤" 5
.
≤≤5 6
Remove
≤≤6 <
(
≤≤< =
playerEjected
≤≤= J
)
≤≤J K
;
≤≤K L 
RearrangePositions
≥≥ .
(
≥≥. /
lobby
≥≥/ 4
,
≥≥4 5
playerEjected
≥≥6 C
.
≥≥C D#
numberOfPlayerInLobby
≥≥D Y
)
≥≥Y Z
;
≥≥Z [/
!NotifyPlayerJoiningOrLeavingLobby
¥¥ =
(
¥¥= >
roomCode
¥¥> F
,
¥¥F G
idUserToEliminate
¥¥H Y
,
¥¥Y Z
lobby
¥¥[ `
)
¥¥` a
;
¥¥a b'
NotifyPlayerBeingExpelled
µµ 5
(
µµ5 6
playerEjected
µµ6 C
,
µµC D
roomCode
µµE M
,
µµM N
idUserToEliminate
µµO `
)
µµ` a
;
µµa b
}
∂∂ 
}
∑∑ 
}
∏∏ 
catch
ππ 
(
ππ 1
#CommunicationObjectFaultedException
ππ :
ex
ππ; =
)
ππ= >
{
∫∫ "
ChannelAdministrator
ªª (
.
ªª( )&
HandleCommunicationIssue
ªª) A
(
ªªA B
lobby
ªªB G
.
ªªG H
idAdmin
ªªH O
,
ªªO P"
ChannelAdministrator
ªªQ e
.
ªªe f
LOBBY_EXCEPTION
ªªf u
)
ªªu v
;
ªªv w
ExceptionHandler
ºº $
.
ºº$ %
LogException
ºº% 1
(
ºº1 2
ex
ºº2 4
,
ºº4 5!
ExceptionDictionary
ºº6 I
.
ººI J
FATAL_EXCEPTION
ººJ Y
)
ººY Z
;
ººZ [
}
ΩΩ 
catch
ææ 
(
ææ 
TimeoutException
ææ '
ex
ææ( *
)
ææ* +
{
øø "
ChannelAdministrator
¿¿ (
.
¿¿( )&
HandleCommunicationIssue
¿¿) A
(
¿¿A B
lobby
¿¿B G
.
¿¿G H
idAdmin
¿¿H O
,
¿¿O P"
ChannelAdministrator
¿¿Q e
.
¿¿e f
LOBBY_EXCEPTION
¿¿f u
)
¿¿u v
;
¿¿v w
ExceptionHandler
¡¡ $
.
¡¡$ %
LogException
¡¡% 1
(
¡¡1 2
ex
¡¡2 4
,
¡¡4 5!
ExceptionDictionary
¡¡6 I
.
¡¡I J
FATAL_EXCEPTION
¡¡J Y
)
¡¡Y Z
;
¡¡Z [
}
¬¬ 
catch
√√ 
(
√√ $
CommunicationException
√√ -
ex
√√. 0
)
√√0 1
{
ƒƒ "
ChannelAdministrator
≈≈ (
.
≈≈( )&
HandleCommunicationIssue
≈≈) A
(
≈≈A B
lobby
≈≈B G
.
≈≈G H
idAdmin
≈≈H O
,
≈≈O P"
ChannelAdministrator
≈≈Q e
.
≈≈e f
LOBBY_EXCEPTION
≈≈f u
)
≈≈u v
;
≈≈v w
ExceptionHandler
∆∆ $
.
∆∆$ %
LogException
∆∆% 1
(
∆∆1 2
ex
∆∆2 4
,
∆∆4 5!
ExceptionDictionary
∆∆6 I
.
∆∆I J
FATAL_EXCEPTION
∆∆J Y
)
∆∆Y Z
;
∆∆Z [
}
«« 
catch
»» 
(
»» '
InvalidOperationException
»» 0
ex
»»1 3
)
»»3 4
{
…… "
ChannelAdministrator
   (
.
  ( )&
HandleCommunicationIssue
  ) A
(
  A B
lobby
  B G
.
  G H
idAdmin
  H O
,
  O P"
ChannelAdministrator
  Q e
.
  e f
LOBBY_EXCEPTION
  f u
)
  u v
;
  v w
ExceptionHandler
ÀÀ $
.
ÀÀ$ %
LogException
ÀÀ% 1
(
ÀÀ1 2
ex
ÀÀ2 4
,
ÀÀ4 5!
ExceptionDictionary
ÀÀ6 I
.
ÀÀI J
FATAL_EXCEPTION
ÀÀJ Y
)
ÀÀY Z
;
ÀÀZ [
}
ÃÃ 
}
ÕÕ 
}
ŒŒ 	
private
–– 
void
––  
RearrangePositions
–– '
(
––' (
Lobby
––( -
lobby
––. 3
,
––3 4
int
––5 8 
eliminatedPosition
––9 K
)
––K L
{
—— 	
lobby
““ 
.
““ !
listOfPlayerInLobby
““ %
.
““% &
Where
““& +
(
““+ ,
item
““, 0
=>
““1 3
item
““4 8
.
““8 9#
numberOfPlayerInLobby
““9 N
>
““O P 
eliminatedPosition
““Q c
)
““c d
.
““d e
ToList
““e k
(
““k l
)
““l m
.
““m n
ForEach
““n u
(
““u v
item
““v z
=>
““{ }
item““~ Ç
.““Ç É%
numberOfPlayerInLobby““É ò
--““ò ö
)““ö õ
;““õ ú
}
”” 	
private
’’ 
void
’’ '
NotifyPlayerBeingExpelled
’’ .
(
’’. /
PlayerOnLobbyList
’’/ @
playerEjected
’’A N
,
’’N O
int
’’P S
roomCode
’’T \
,
’’\ ]
int
’’^ a
idUserToEliminate
’’b s
)
’’s t
{
÷÷ 	
try
◊◊ 
{
ÿÿ 
playerEjected
ŸŸ 
.
ŸŸ /
!lobbyCommunicationChannelCallback
ŸŸ ?
.
ŸŸ? @ 
GetCallbackChannel
ŸŸ@ R
<
ŸŸR S#
ILobbyActionsCallback
ŸŸS h
>
ŸŸh i
(
ŸŸi j
)
ŸŸj k
.
ŸŸk l)
UpdateJoinedPlayerResponseŸŸl Ü
(ŸŸÜ á*
GetAllCurrentPlayerInLobbyŸŸá °
(ŸŸ° ¢
roomCodeŸŸ¢ ™
,ŸŸ™ ´!
idUserToEliminateŸŸ¨ Ω
)ŸŸΩ æ
)ŸŸæ ø
;ŸŸø ¿
}
⁄⁄ 
catch
€€ 
(
€€ 1
#CommunicationObjectFaultedException
€€ 6
ex
€€7 9
)
€€9 :
{
‹‹ "
ChannelAdministrator
›› $
.
››$ %&
HandleCommunicationIssue
››% =
(
››= >
idUserToEliminate
››> O
,
››O P"
ChannelAdministrator
››Q e
.
››e f
LOBBY_EXCEPTION
››f u
)
››u v
;
››v w
ExceptionHandler
ﬁﬁ  
.
ﬁﬁ  !
LogException
ﬁﬁ! -
(
ﬁﬁ- .
ex
ﬁﬁ. 0
,
ﬁﬁ0 1!
ExceptionDictionary
ﬁﬁ2 E
.
ﬁﬁE F
FATAL_EXCEPTION
ﬁﬁF U
)
ﬁﬁU V
;
ﬁﬁV W
}
ﬂﬂ 
catch
‡‡ 
(
‡‡ 
TimeoutException
‡‡ #
ex
‡‡$ &
)
‡‡& '
{
·· "
ChannelAdministrator
‚‚ $
.
‚‚$ %&
HandleCommunicationIssue
‚‚% =
(
‚‚= >
idUserToEliminate
‚‚> O
,
‚‚O P"
ChannelAdministrator
‚‚Q e
.
‚‚e f
LOBBY_EXCEPTION
‚‚f u
)
‚‚u v
;
‚‚v w
ExceptionHandler
„„  
.
„„  !
LogException
„„! -
(
„„- .
ex
„„. 0
,
„„0 1!
ExceptionDictionary
„„2 E
.
„„E F
FATAL_EXCEPTION
„„F U
)
„„U V
;
„„V W
}
‰‰ 
catch
ÂÂ 
(
ÂÂ $
CommunicationException
ÂÂ )
ex
ÂÂ* ,
)
ÂÂ, -
{
ÊÊ "
ChannelAdministrator
ÁÁ $
.
ÁÁ$ %&
HandleCommunicationIssue
ÁÁ% =
(
ÁÁ= >
idUserToEliminate
ÁÁ> O
,
ÁÁO P"
ChannelAdministrator
ÁÁQ e
.
ÁÁe f
LOBBY_EXCEPTION
ÁÁf u
)
ÁÁu v
;
ÁÁv w
ExceptionHandler
ËË  
.
ËË  !
LogException
ËË! -
(
ËË- .
ex
ËË. 0
,
ËË0 1!
ExceptionDictionary
ËË2 E
.
ËËE F
FATAL_EXCEPTION
ËËF U
)
ËËU V
;
ËËV W
}
ÈÈ 
catch
ÍÍ 
(
ÍÍ '
InvalidOperationException
ÍÍ ,
ex
ÍÍ- /
)
ÍÍ/ 0
{
ÎÎ "
ChannelAdministrator
ÏÏ $
.
ÏÏ$ %&
HandleCommunicationIssue
ÏÏ% =
(
ÏÏ= >
idUserToEliminate
ÏÏ> O
,
ÏÏO P"
ChannelAdministrator
ÏÏQ e
.
ÏÏe f
LOBBY_EXCEPTION
ÏÏf u
)
ÏÏu v
;
ÏÏv w
ExceptionHandler
ÌÌ  
.
ÌÌ  !
LogException
ÌÌ! -
(
ÌÌ- .
ex
ÌÌ. 0
,
ÌÌ0 1!
ExceptionDictionary
ÌÌ2 E
.
ÌÌE F
FATAL_EXCEPTION
ÌÌF U
)
ÌÌU V
;
ÌÌV W
}
ÓÓ 
}
ÔÔ 	
public
ÒÒ 
void
ÒÒ $
SelectQuestionsForGame
ÒÒ *
(
ÒÒ* +
int
ÒÒ+ .
roomCode
ÒÒ/ 7
)
ÒÒ7 8
{
ÚÚ 	,
QuestionsManagerImplementation
ÛÛ *,
questionsManagerImplementation
ÛÛ+ I
=
ÛÛJ K
new
ÛÛL O
(
ÛÛO P
)
ÛÛP Q
;
ÛÛQ R
var
ÙÙ 
	questions
ÙÙ 
=
ÙÙ ,
questionsManagerImplementation
ÙÙ :
.
ÙÙ: ;!
GetQuestionForBoard
ÙÙ; N
(
ÙÙN O
roomCode
ÙÙO W
)
ÙÙW X
;
ÙÙX Y
if
ıı 
(
ıı 
	questions
ıı 
.
ıı 
	CodeEvent
ıı #
==
ıı$ &!
ExceptionDictionary
ıı' :
.
ıı: ;
SUCCESFULL_EVENT
ıı; K
)
ııK L
{
ˆˆ )
QuestionsForLobbyDictionary
˜˜ +
.
˜˜+ ,3
%RegisterNewSetOfQuestionsInDictionary
˜˜, Q
(
˜˜Q R
roomCode
˜˜R Z
,
˜˜Z [
	questions
˜˜\ e
)
˜˜e f
;
˜˜f g
}
¯¯ "
NotifyQuestionsReady
˘˘  
(
˘˘  !
roomCode
˘˘! )
,
˘˘) *
	questions
˘˘+ 4
.
˘˘4 5
	CodeEvent
˘˘5 >
)
˘˘> ?
;
˘˘? @
}
˙˙ 	
private
¸¸ 
void
¸¸ "
NotifyQuestionsReady
¸¸ )
(
¸¸) *
int
¸¸* -
roomCode
¸¸. 6
,
¸¸6 7
int
¸¸8 ;
	codeEvent
¸¸< E
)
¸¸E F
{
˝˝ 	
var
˛˛ 
lobby
˛˛ 
=
˛˛ #
GameLobbiesDictionary
˛˛ -
.
˛˛- .$
GetSpecificActiveLobby
˛˛. D
(
˛˛D E
roomCode
˛˛E M
)
˛˛M N
;
˛˛N O
if
ˇˇ 
(
ˇˇ 
lobby
ˇˇ 
!=
ˇˇ 
null
ˇˇ 
)
ˇˇ 
{
ÄÄ 
var
ÅÅ 
playerLeader
ÅÅ  
=
ÅÅ! "
lobby
ÅÅ# (
.
ÅÅ( )!
listOfPlayerInLobby
ÅÅ) <
.
ÅÅ< =
Find
ÅÅ= A
(
ÅÅA B
player
ÅÅB H
=>
ÅÅI K
player
ÅÅL R
.
ÅÅR S#
numberOfPlayerInLobby
ÅÅS h
==
ÅÅi k'
LEADER_POSITION_IN_LOBBYÅÅl Ñ
)ÅÅÑ Ö
;ÅÅÖ Ü
try
ÇÇ 
{
ÉÉ 
if
ÑÑ 
(
ÑÑ 
playerLeader
ÑÑ $
!=
ÑÑ% '
null
ÑÑ( ,
)
ÑÑ, -
{
ÖÖ 
playerLeader
ÜÜ $
.
ÜÜ$ %/
!lobbyCommunicationChannelCallback
ÜÜ% F
.
ÜÜF G 
GetCallbackChannel
ÜÜG Y
<
ÜÜY Z#
ILobbyActionsCallback
ÜÜZ o
>
ÜÜo p
(
ÜÜp q
)
ÜÜq r
.
ÜÜr s&
NotifyQuestionsAreReadyÜÜs ä
(ÜÜä ã
	codeEventÜÜã î
)ÜÜî ï
;ÜÜï ñ
}
áá 
}
àà 
catch
ââ 
(
ââ 1
#CommunicationObjectFaultedException
ââ :
ex
ââ; =
)
ââ= >
{
ää "
ChannelAdministrator
ãã (
.
ãã( )&
HandleCommunicationIssue
ãã) A
(
ããA B
playerLeader
ããB N
.
ããN O
idUser
ããO U
,
ããU V"
ChannelAdministrator
ããW k
.
ããk l
LOBBY_EXCEPTION
ããl {
)
ãã{ |
;
ãã| }
ExceptionHandler
åå $
.
åå$ %
LogException
åå% 1
(
åå1 2
ex
åå2 4
,
åå4 5!
ExceptionDictionary
åå6 I
.
ååI J
FATAL_EXCEPTION
ååJ Y
)
ååY Z
;
ååZ [
}
çç 
catch
éé 
(
éé 
TimeoutException
éé '
ex
éé( *
)
éé* +
{
èè "
ChannelAdministrator
êê (
.
êê( )&
HandleCommunicationIssue
êê) A
(
êêA B
playerLeader
êêB N
.
êêN O
idUser
êêO U
,
êêU V"
ChannelAdministrator
êêW k
.
êêk l
LOBBY_EXCEPTION
êêl {
)
êê{ |
;
êê| }
ExceptionHandler
ëë $
.
ëë$ %
LogException
ëë% 1
(
ëë1 2
ex
ëë2 4
,
ëë4 5!
ExceptionDictionary
ëë6 I
.
ëëI J
FATAL_EXCEPTION
ëëJ Y
)
ëëY Z
;
ëëZ [
}
íí 
catch
ìì 
(
ìì $
CommunicationException
ìì -
ex
ìì. 0
)
ìì0 1
{
îî "
ChannelAdministrator
ïï (
.
ïï( )&
HandleCommunicationIssue
ïï) A
(
ïïA B
playerLeader
ïïB N
.
ïïN O
idUser
ïïO U
,
ïïU V"
ChannelAdministrator
ïïW k
.
ïïk l
LOBBY_EXCEPTION
ïïl {
)
ïï{ |
;
ïï| }
ExceptionHandler
ññ $
.
ññ$ %
LogException
ññ% 1
(
ññ1 2
ex
ññ2 4
,
ññ4 5!
ExceptionDictionary
ññ6 I
.
ññI J
FATAL_EXCEPTION
ññJ Y
)
ññY Z
;
ññZ [
}
óó 
catch
òò 
(
òò '
InvalidOperationException
òò 0
ex
òò1 3
)
òò3 4
{
ôô "
ChannelAdministrator
öö (
.
öö( )&
HandleCommunicationIssue
öö) A
(
ööA B
playerLeader
ööB N
.
ööN O
idUser
ööO U
,
ööU V"
ChannelAdministrator
ööW k
.
öök l
LOBBY_EXCEPTION
ööl {
)
öö{ |
;
öö| }
ExceptionHandler
õõ $
.
õõ$ %
LogException
õõ% 1
(
õõ1 2
ex
õõ2 4
,
õõ4 5!
ExceptionDictionary
õõ6 I
.
õõI J
FATAL_EXCEPTION
õõJ Y
)
õõY Z
;
õõZ [
}
úú 
}
ùù 
else
ûû 
{
üü $
SelectQuestionsForGame
†† &
(
††& '
roomCode
††' /
)
††/ 0
;
††0 1
}
°° 
}
¢¢ 	
public
§§ 
void
§§ 
	StartGame
§§ 
(
§§ 
int
§§ !
roomCode
§§" *
)
§§* +
{
•• 	
var
¶¶ 
lobby
¶¶ 
=
¶¶ #
GameLobbiesDictionary
¶¶ -
.
¶¶- .$
GetSpecificActiveLobby
¶¶. D
(
¶¶D E
roomCode
¶¶E M
)
¶¶M N
;
¶¶N O
var
ßß 
	questions
ßß 
=
ßß )
QuestionsForLobbyDictionary
ßß 7
.
ßß7 8/
!GetSpecificSetOfQuestionsForLobby
ßß8 Y
(
ßßY Z
roomCode
ßßZ b
)
ßßb c
;
ßßc d
if
®® 
(
®® 
lobby
®® 
!=
®® 
null
®® 
&&
®®  
	questions
®®! *
!=
®®+ -
null
®®. 2
)
®®2 3
{
©© 
foreach
™™ 
(
™™ 
var
™™ 
item
™™ !
in
™™" $
lobby
™™% *
.
™™* +!
listOfPlayerInLobby
™™+ >
)
™™> ?
{
´´ 
try
¨¨ 
{
≠≠ 
item
ÆÆ 
.
ÆÆ /
!lobbyCommunicationChannelCallback
ÆÆ >
.
ÆÆ> ? 
GetCallbackChannel
ÆÆ? Q
<
ÆÆQ R#
ILobbyActionsCallback
ÆÆR g
>
ÆÆg h
(
ÆÆh i
)
ÆÆi j
.
ÆÆj k!
NotifyGameWillStart
ÆÆk ~
(
ÆÆ~ 
	questionsÆÆ à
.ÆÆà â
ObjectSavedÆÆâ î
)ÆÆî ï
;ÆÆï ñ
}
ØØ 
catch
∞∞ 
(
∞∞ 1
#CommunicationObjectFaultedException
∞∞ >
ex
∞∞? A
)
∞∞A B
{
±± "
ChannelAdministrator
≤≤ ,
.
≤≤, -&
HandleCommunicationIssue
≤≤- E
(
≤≤E F
item
≤≤F J
.
≤≤J K
idUser
≤≤K Q
,
≤≤Q R"
ChannelAdministrator
≤≤S g
.
≤≤g h
LOBBY_EXCEPTION
≤≤h w
)
≤≤w x
;
≤≤x y
ExceptionHandler
≥≥ (
.
≥≥( )
LogException
≥≥) 5
(
≥≥5 6
ex
≥≥6 8
,
≥≥8 9!
ExceptionDictionary
≥≥: M
.
≥≥M N
FATAL_EXCEPTION
≥≥N ]
)
≥≥] ^
;
≥≥^ _
}
¥¥ 
catch
µµ 
(
µµ 
TimeoutException
µµ +
ex
µµ, .
)
µµ. /
{
∂∂ "
ChannelAdministrator
∑∑ ,
.
∑∑, -&
HandleCommunicationIssue
∑∑- E
(
∑∑E F
item
∑∑F J
.
∑∑J K
idUser
∑∑K Q
,
∑∑Q R"
ChannelAdministrator
∑∑S g
.
∑∑g h
LOBBY_EXCEPTION
∑∑h w
)
∑∑w x
;
∑∑x y
ExceptionHandler
∏∏ (
.
∏∏( )
LogException
∏∏) 5
(
∏∏5 6
ex
∏∏6 8
,
∏∏8 9!
ExceptionDictionary
∏∏: M
.
∏∏M N
FATAL_EXCEPTION
∏∏N ]
)
∏∏] ^
;
∏∏^ _
}
ππ 
catch
∫∫ 
(
∫∫ $
CommunicationException
∫∫ 1
ex
∫∫2 4
)
∫∫4 5
{
ªª "
ChannelAdministrator
ºº ,
.
ºº, -&
HandleCommunicationIssue
ºº- E
(
ººE F
item
ººF J
.
ººJ K
idUser
ººK Q
,
ººQ R"
ChannelAdministrator
ººS g
.
ººg h
LOBBY_EXCEPTION
ººh w
)
ººw x
;
ººx y
ExceptionHandler
ΩΩ (
.
ΩΩ( )
LogException
ΩΩ) 5
(
ΩΩ5 6
ex
ΩΩ6 8
,
ΩΩ8 9!
ExceptionDictionary
ΩΩ: M
.
ΩΩM N
FATAL_EXCEPTION
ΩΩN ]
)
ΩΩ] ^
;
ΩΩ^ _
}
ææ 
catch
øø 
(
øø '
InvalidOperationException
øø 4
ex
øø5 7
)
øø7 8
{
¿¿ "
ChannelAdministrator
¡¡ ,
.
¡¡, -&
HandleCommunicationIssue
¡¡- E
(
¡¡E F
item
¡¡F J
.
¡¡J K
idUser
¡¡K Q
,
¡¡Q R"
ChannelAdministrator
¡¡S g
.
¡¡g h
LOBBY_EXCEPTION
¡¡h w
)
¡¡w x
;
¡¡x y
ExceptionHandler
¬¬ (
.
¬¬( )
LogException
¬¬) 5
(
¬¬5 6
ex
¬¬6 8
,
¬¬8 9!
ExceptionDictionary
¬¬: M
.
¬¬M N
FATAL_EXCEPTION
¬¬N ]
)
¬¬] ^
;
¬¬^ _
}
√√ 
}
ƒƒ 
}
∆∆ 
}
«« 	
}
…… 
}   €8
ñC:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameServer\JeopardyGame.Service\ServiceImplementation\LobbyCodeAuthentication.cs
	namespace 	
JeopardyGame
 
. 
Service 
. !
ServiceImplementation 4
{ 
internal 
class #
LobbyCodeAuthentication *
:+ ,$
ILobbyCodeAuthentication- E
{ 
private 
readonly 
int 
NULL_INT_VALUE +
=, -
$num. /
;/ 0
private 
readonly 
int 
ROOMCODE_IS_FULL -
=. /
-0 1
$num1 2
;2 3
private 
readonly 
int #
ROOMCODE_DOES_NOT_EXIST 4
=5 6
$num7 8
;8 9
private 
readonly 
int 
	SUCCESFUL &
=' (
$num) *
;* +
private 
readonly 
int 
MAX_PLAYERS (
=) *
$num+ ,
;, -
private 
static 
readonly 
Object  &

lockObject' 1
=2 3
new4 7
Object8 >
(> ?
)? @
;@ A
public 
GenericClass 
< 
int 
>  
VerifyRoomCodeExist! 4
(4 5
int5 8
roomCode9 A
,A B
intC F
idUserG M
)M N
{ 	
GenericClass 
< 
int 
> 
resultToReturn ,
=- .
new/ 2
GenericClass3 ?
<? @
int@ C
>C D
(D E
)E F
;F G
lock 
( 

lockObject 
) 
{ 
try 
{ 
if   
(   
roomCode    
==  ! #
NULL_INT_VALUE  $ 2
||  3 5
idUser  6 <
==  = ?
NULL_INT_VALUE  @ N
)  N O
{!! 
return"" !
NullParametersHandler"" 4
.""4 5'
HandleNullParametersService""5 P
(""P Q
resultToReturn""Q _
)""_ `
;""` a
}## 
var$$ 
lobby$$ 
=$$ !
GameLobbiesDictionary$$  5
.$$5 6"
GetSpecificActiveLobby$$6 L
($$L M
roomCode$$M U
)$$U V
;$$V W
if%% 
(%% 
lobby%% 
!=%%  
null%%! %
)%%% &
{&& 
if'' 
('' 
lobby'' !
.''! "
listOfPlayerInLobby''" 5
.''5 6
Count''6 ;
<''< =
MAX_PLAYERS''> I
)''I J
{(( 
resultToReturn)) *
.))* +
ObjectSaved))+ 6
=))7 8
	SUCCESFUL))9 B
;))B C
resultToReturn** *
.*** +
	CodeEvent**+ 4
=**5 6
ExceptionDictionary**7 J
.**J K
SUCCESFULL_EVENT**K [
;**[ \
}++ 
else,, 
{-- 
resultToReturn.. *
...* +
ObjectSaved..+ 6
=..7 8
ROOMCODE_IS_FULL..9 I
;..I J
resultToReturn// *
.//* +
	CodeEvent//+ 4
=//5 6
ExceptionDictionary//7 J
.//J K
UNSUCCESFULL_EVENT//K ]
;//] ^
}00 
}11 
else22 
{33 
resultToReturn44 &
.44& '
ObjectSaved44' 2
=443 4#
ROOMCODE_DOES_NOT_EXIST445 L
;44L M
resultToReturn55 &
.55& '
	CodeEvent55' 0
=551 2
ExceptionDictionary553 F
.55F G
UNSUCCESFULL_EVENT55G Y
;55Y Z
}66 
}77 
catch88 
(88 /
#CommunicationObjectFaultedException88 :
ex88; =
)88= >
{99 
resultToReturn:: "
.::" #
	CodeEvent::# ,
=::- .
ExceptionDictionary::/ B
.::B C
UNSUCCESFULL_EVENT::C U
;::U V 
ChannelAdministrator;; (
.;;( )$
HandleCommunicationIssue;;) A
(;;A B
idUser;;B H
,;;H I 
ChannelAdministrator;;J ^
.;;^ _+
GENERIC_COMMUNICATION_EXCEPTION;;_ ~
);;~ 
;	;; Ä
ExceptionHandler<< $
.<<$ %
LogException<<% 1
(<<1 2
ex<<2 4
,<<4 5
ExceptionDictionary<<6 I
.<<I J
FATAL_EXCEPTION<<J Y
)<<Y Z
;<<Z [
}== 
catch>> 
(>> 
TimeoutException>> '
ex>>( *
)>>* +
{?? 
resultToReturn@@ "
.@@" #
	CodeEvent@@# ,
=@@- .
ExceptionDictionary@@/ B
.@@B C
UNSUCCESFULL_EVENT@@C U
;@@U V 
ChannelAdministratorAA (
.AA( )$
HandleCommunicationIssueAA) A
(AAA B
idUserAAB H
,AAH I 
ChannelAdministratorAAJ ^
.AA^ _+
GENERIC_COMMUNICATION_EXCEPTIONAA_ ~
)AA~ 
;	AA Ä
ExceptionHandlerBB $
.BB$ %
LogExceptionBB% 1
(BB1 2
exBB2 4
,BB4 5
ExceptionDictionaryBB6 I
.BBI J
FATAL_EXCEPTIONBBJ Y
)BBY Z
;BBZ [
}CC 
catchDD 
(DD "
CommunicationExceptionDD -
exDD. 0
)DD0 1
{EE 
resultToReturnFF "
.FF" #
	CodeEventFF# ,
=FF- .
ExceptionDictionaryFF/ B
.FFB C
UNSUCCESFULL_EVENTFFC U
;FFU V 
ChannelAdministratorGG (
.GG( )$
HandleCommunicationIssueGG) A
(GGA B
idUserGGB H
,GGH I 
ChannelAdministratorGGJ ^
.GG^ _+
GENERIC_COMMUNICATION_EXCEPTIONGG_ ~
)GG~ 
;	GG Ä
ExceptionHandlerHH $
.HH$ %
LogExceptionHH% 1
(HH1 2
exHH2 4
,HH4 5
ExceptionDictionaryHH6 I
.HHI J
FATAL_EXCEPTIONHHJ Y
)HHY Z
;HHZ [
}II 
catchJJ 
(JJ %
InvalidOperationExceptionJJ 0
exJJ1 3
)JJ3 4
{KK 
resultToReturnLL "
.LL" #
	CodeEventLL# ,
=LL- .
ExceptionDictionaryLL/ B
.LLB C
UNSUCCESFULL_EVENTLLC U
;LLU V 
ChannelAdministratorMM (
.MM( )$
HandleCommunicationIssueMM) A
(MMA B
idUserMMB H
,MMH I 
ChannelAdministratorMMJ ^
.MM^ _+
GENERIC_COMMUNICATION_EXCEPTIONMM_ ~
)MM~ 
;	MM Ä
ExceptionHandlerNN $
.NN$ %
LogExceptionNN% 1
(NN1 2
exNN2 4
,NN4 5
ExceptionDictionaryNN6 I
.NNI J
FATAL_EXCEPTIONNNJ Y
)NNY Z
;NNZ [
}OO 
}PP 
returnQQ 
resultToReturnQQ !
;QQ! "
}RR 	
}TT 
}UU …e
ûC:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameServer\JeopardyGame.Service\ServiceImplementation\LoginVerificationImplementation.cs
	namespace 	
JeopardyGame
 
. 
Service 
. !
ServiceImplementation 4
{ 
internal 
class +
LoginVerificationImplementation 2
:3 4
ILogInVerification5 G
{ 
private 
readonly 
int 
SUCCESFULL_EVENT -
=. /
$num0 1
;1 2
private 
readonly 
int 
UNSUCCESFULL_EVENT /
=0 1
$num2 3
;3 4
public 
GenericClass 
< 
int 
>  
ValidateCredentials! 4
(4 5
UserValidate5 A
newUserValidateB Q
)Q R
{ 	
var 
userConsulted 
= $
UserManagerDataOperation  8
.8 9
GetUserByUserName9 J
(J K
newUserValidateK Z
.Z [
UserName[ c
)c d
;d e
GenericClass 
< 
int 
> 
responseServer ,
=- .
new/ 2
GenericClass3 ?
<? @
int@ C
>C D
(D E
)E F
{ 
ObjectSaved 
= 
UNSUCCESFULL_EVENT 0
,0 1
	CodeEvent 
= 
ExceptionDictionary /
./ 0
UNSUCCESFULL_EVENT0 B
} 
; 
if 
( 
userConsulted 
. 
	CodeEvent '
==( *
ExceptionDictionary+ >
.> ?
SUCCESFULL_EVENT? O
)O P
{   
try!! 
{"" 
GenericClassServer## &
<##& '
bool##' +
>##+ ,
isPasswordValid##- <
=##= >
LoginOperations##? N
.##N O
VerifyPassword##O ]
(##] ^
newUserValidate##^ m
.##m n
Password##n v
,##v w
userConsulted	##x Ö
.
##Ö Ü
ObjectSaved
##Ü ë
.
##ë í
Password
##í ö
)
##ö õ
;
##õ ú
if$$ 
($$ 
isPasswordValid$$ '
.$$' (
	CodeEvent$$( 1
==$$2 4
ExceptionDictionary$$5 H
.$$H I
SUCCESFULL_EVENT$$I Y
||$$Z \
isPasswordValid$$] l
.$$l m
	CodeEvent$$m v
==$$w y 
ExceptionDictionary	$$z ç
.
$$ç é 
UNSUCCESFULL_EVENT
$$é †
)
$$† °
{%% 
if&& 
(&& 
isPasswordValid&& +
.&&+ ,
ObjectSaved&&, 7
)&&7 8
{'' 
responseServer(( *
.((* +
ObjectSaved((+ 6
=((7 8
SUCCESFULL_EVENT((9 I
;((I J
responseServer)) *
.))* +
	CodeEvent))+ 4
=))5 6
ExceptionDictionary))7 J
.))J K
SUCCESFULL_EVENT))K [
;))[ \
}++ 
},, 
else-- 
{.. 
responseServer// &
.//& '
	CodeEvent//' 0
=//1 2
isPasswordValid//3 B
.//B C
	CodeEvent//C L
;//L M
}00 
}11 
catch22 
(22 /
#CommunicationObjectFaultedException22 :
ex22; =
)22= >
{33 
responseServer44 "
.44" #
	CodeEvent44# ,
=44- .
ExceptionDictionary44/ B
.44B C
UNSUCCESFULL_EVENT44C U
;44U V 
ChannelAdministrator55 (
.55( )$
HandleCommunicationIssue55) A
(55A B
userConsulted55B O
.55O P
ObjectSaved55P [
.55[ \
IdUser55\ b
,55b c 
ChannelAdministrator55d x
.55x y,
GENERIC_COMMUNICATION_EXCEPTION	55y ò
)
55ò ô
;
55ô ö
ExceptionHandler66 $
.66$ %
LogException66% 1
(661 2
ex662 4
,664 5
ExceptionDictionary666 I
.66I J
FATAL_EXCEPTION66J Y
)66Y Z
;66Z [
}77 
catch88 
(88 
TimeoutException88 '
ex88( *
)88* +
{99 
responseServer:: "
.::" #
	CodeEvent::# ,
=::- .
ExceptionDictionary::/ B
.::B C
UNSUCCESFULL_EVENT::C U
;::U V 
ChannelAdministrator;; (
.;;( )$
HandleCommunicationIssue;;) A
(;;A B
userConsulted;;B O
.;;O P
ObjectSaved;;P [
.;;[ \
IdUser;;\ b
,;;b c 
ChannelAdministrator;;d x
.;;x y,
GENERIC_COMMUNICATION_EXCEPTION	;;y ò
)
;;ò ô
;
;;ô ö
ExceptionHandler<< $
.<<$ %
LogException<<% 1
(<<1 2
ex<<2 4
,<<4 5
ExceptionDictionary<<6 I
.<<I J
FATAL_EXCEPTION<<J Y
)<<Y Z
;<<Z [
}== 
catch>> 
(>> "
CommunicationException>> -
ex>>. 0
)>>0 1
{?? 
responseServer@@ "
.@@" #
	CodeEvent@@# ,
=@@- .
ExceptionDictionary@@/ B
.@@B C
UNSUCCESFULL_EVENT@@C U
;@@U V 
ChannelAdministratorAA (
.AA( )$
HandleCommunicationIssueAA) A
(AAA B
userConsultedAAB O
.AAO P
ObjectSavedAAP [
.AA[ \
IdUserAA\ b
,AAb c 
ChannelAdministratorAAd x
.AAx y,
GENERIC_COMMUNICATION_EXCEPTION	AAy ò
)
AAò ô
;
AAô ö
ExceptionHandlerBB $
.BB$ %
LogExceptionBB% 1
(BB1 2
exBB2 4
,BB4 5
ExceptionDictionaryBB6 I
.BBI J
FATAL_EXCEPTIONBBJ Y
)BBY Z
;BBZ [
}CC 
catchDD 
(DD %
InvalidOperationExceptionDD 0
exDD1 3
)DD3 4
{EE 
responseServerFF "
.FF" #
	CodeEventFF# ,
=FF- .
ExceptionDictionaryFF/ B
.FFB C
UNSUCCESFULL_EVENTFFC U
;FFU V 
ChannelAdministratorGG (
.GG( )$
HandleCommunicationIssueGG) A
(GGA B
userConsultedGGB O
.GGO P
ObjectSavedGGP [
.GG[ \
IdUserGG\ b
,GGb c 
ChannelAdministratorGGd x
.GGx y,
GENERIC_COMMUNICATION_EXCEPTION	GGy ò
)
GGò ô
;
GGô ö
ExceptionHandlerHH $
.HH$ %
LogExceptionHH% 1
(HH1 2
exHH2 4
,HH4 5
ExceptionDictionaryHH6 I
.HHI J
FATAL_EXCEPTIONHHJ Y
)HHY Z
;HHZ [
}II 
}JJ 
elseKK 
{LL 
responseServerMM 
.MM 
	CodeEventMM (
=MM) *
userConsultedMM+ 8
.MM8 9
	CodeEventMM9 B
;MMB C
}NN 
returnOO 
responseServerOO !
;OO! "
}PP 	
publicRR 
intRR 0
$ValidateThereIsOnlyOneAActiveAccountRR 7
(RR7 8
stringRR8 >
userNameRR? G
)RRG H
{SS 	
tryTT 
{UU 
ifVV 
(VV 
!VV 
stringVV 
.VV 
IsNullOrEmptyVV )
(VV) *
userNameVV* 2
)VV2 3
)VV3 4
{WW 
varXX 
savedChannelXX $
=XX% &
LivingClientsXX' 4
.XX4 5
	GetClientXX5 >
(XX> ?
userNameXX? G
)XXG H
;XXH I
ifYY 
(YY 
savedChannelYY $
==YY% '
nullYY( ,
)YY, -
{ZZ 
return[[ 
ExceptionDictionary[[ 2
.[[2 3
SUCCESFULL_EVENT[[3 C
;[[C D
}\\ 
else]] 
{^^ 
var__ 
isNotActive__ '
=__( ) 
ChannelAdministrator__* >
.__> ?#
VerifyUserIsStillActive__? V
(__V W
userName__W _
)___ `
;__` a
if`` 
(`` 
isNotActive`` '
==``( *
ExceptionDictionary``+ >
.``> ?
SUCCESFULL_EVENT``? O
)``O P
{aa  
ChannelAdministratorbb 0
.bb0 1$
KickUserFromDictionariesbb1 I
(bbI J
GetIdClientbbJ U
(bbU V
userNamebbV ^
)bb^ _
)bb_ `
;bb` a
}cc 
returndd 
isNotActivedd *
;dd* +
}ee 
}ff 
}gg 
catchhh 
(hh /
#CommunicationObjectFaultedExceptionhh 6
exhh7 9
)hh9 :
{ii  
ChannelAdministratorkk $
.kk$ %$
HandleCommunicationIssuekk% =
(kk= >
GetIdClientkk> I
(kkI J
userNamekkJ R
)kkR S
,kkS T 
ChannelAdministratorkkU i
.kki j,
GENERIC_COMMUNICATION_EXCEPTION	kkj â
)
kkâ ä
;
kkä ã
ExceptionHandlerll  
.ll  !
LogExceptionll! -
(ll- .
exll. 0
,ll0 1
ExceptionDictionaryll2 E
.llE F
FATAL_EXCEPTIONllF U
)llU V
;llV W
returnmm 
ExceptionDictionarymm *
.mm* +
UNSUCCESFULL_EVENTmm+ =
;mm= >
}nn 
catchoo 
(oo 
TimeoutExceptionoo #
exoo$ &
)oo& '
{pp  
ChannelAdministratorqq $
.qq$ %$
HandleCommunicationIssueqq% =
(qq= >
GetIdClientqq> I
(qqI J
userNameqqJ R
)qqR S
,qqS T 
ChannelAdministratorqqU i
.qqi j,
GENERIC_COMMUNICATION_EXCEPTION	qqj â
)
qqâ ä
;
qqä ã
ExceptionHandlerrr  
.rr  !
LogExceptionrr! -
(rr- .
exrr. 0
,rr0 1
ExceptionDictionaryrr2 E
.rrE F
FATAL_EXCEPTIONrrF U
)rrU V
;rrV W
returnss 
ExceptionDictionaryss *
.ss* +
UNSUCCESFULL_EVENTss+ =
;ss= >
}tt 
catchuu 
(uu "
CommunicationExceptionuu )
exuu* ,
)uu, -
{vv  
ChannelAdministratorww $
.ww$ %$
HandleCommunicationIssueww% =
(ww= >
GetIdClientww> I
(wwI J
userNamewwJ R
)wwR S
,wwS T 
ChannelAdministratorwwU i
.wwi j,
GENERIC_COMMUNICATION_EXCEPTION	wwj â
)
wwâ ä
;
wwä ã
ExceptionHandlerxx  
.xx  !
LogExceptionxx! -
(xx- .
exxx. 0
,xx0 1
ExceptionDictionaryxx2 E
.xxE F
FATAL_EXCEPTIONxxF U
)xxU V
;xxV W
returnyy 
ExceptionDictionaryyy *
.yy* +
UNSUCCESFULL_EVENTyy+ =
;yy= >
}zz 
catch{{ 
({{ %
InvalidOperationException{{ ,
ex{{- /
){{/ 0
{||  
ChannelAdministrator}} $
.}}$ %$
HandleCommunicationIssue}}% =
(}}= >
GetIdClient}}> I
(}}I J
userName}}J R
)}}R S
,}}S T 
ChannelAdministrator}}U i
.}}i j,
GENERIC_COMMUNICATION_EXCEPTION	}}j â
)
}}â ä
;
}}ä ã
ExceptionHandler~~  
.~~  !
LogException~~! -
(~~- .
ex~~. 0
,~~0 1
ExceptionDictionary~~2 E
.~~E F
FATAL_EXCEPTION~~F U
)~~U V
;~~V W
return 
ExceptionDictionary *
.* +
UNSUCCESFULL_EVENT+ =
;= >
}
ÄÄ 
return
ÅÅ !
ExceptionDictionary
ÅÅ &
.
ÅÅ& '
NULL_PARAEMETER
ÅÅ' 6
;
ÅÅ6 7
}
ÇÇ 	
private
ÑÑ 
int
ÑÑ 
GetIdClient
ÑÑ 
(
ÑÑ  
string
ÑÑ  &
userName
ÑÑ' /
)
ÑÑ/ 0
{
ÖÖ 	.
 ConsultInformationImplementation
ÜÜ ,.
 consultInformationImplementation
ÜÜ- M
=
ÜÜN O
new
ÜÜP S
(
ÜÜS T
)
ÜÜT U
;
ÜÜU V
int
áá 
idUser
áá 
=
áá .
 consultInformationImplementation
áá 9
.
áá9 :#
ConsultUserByUserName
áá: O
(
ááO P
userName
ááP X
)
ááX Y
.
ááY Z
ObjectSaved
ááZ e
.
ááe f
IdUser
ááf l
;
áál m
return
àà 
idUser
àà 
;
àà 
}
ââ 	
}
çç 
}éé ë≈
§C:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameServer\JeopardyGame.Service\ServiceImplementation\NotifyUserAvailabilityImplementation .cs
	namespace 	
JeopardyGame
 
. 
Service 
. !
ServiceImplementation 4
{ 
partial 
class 0
$NotifyUserAvailabilityImplementation 6
:7 8#
INotifyUserAvailability9 P
{ 
private 
static 
readonly 
Object  &

lockObject' 1
=2 3
new4 7
Object8 >
(> ?
)? @
;@ A
private 
const 
int 

NULL_VALUE $
=% &
$num' (
;( )
public 
void 
NotifyFriends !
(! "
int" %
idUser& ,
,, -
int. 1
status2 8
)8 9
{ 	,
 ConsultInformationImplementation ,
consultInformation- ?
=@ A
newB E,
 ConsultInformationImplementationF f
(f g
)g h
;h i
var 
userConsulted 
= 
consultInformation  2
.2 3
ConsultUserById3 B
(B C
idUserC I
)I J
;J K
if 
( 
userConsulted 
. 
	CodeEvent '
==( *
ExceptionDictionary+ >
.> ?
SUCCESFULL_EVENT? O
)O P
{ (
ConsultFriendsImplementation ,(
friendsManagerImplementation- I
=J K
newL O(
ConsultFriendsImplementationP l
(l m
)m n
;n o
var 
friendsNewUser "
=# $(
friendsManagerImplementation% A
.A B
GetUserFriendsB P
(P Q
userConsultedQ ^
.^ _
ObjectSaved_ j
)j k
;k l
if 
( 
friendsNewUser "
." #
	CodeEvent# ,
==- /
ExceptionDictionary0 C
.C D
SUCCESFULL_EVENTD T
)T U
{  
NotifyFriendCallBack (
(( )
friendsNewUser) 7
.7 8
ObjectSaved8 C
,C D
idUserE K
,K L
statusM S
)S T
;T U
} 
} 
} 	
private!! 
void!!  
NotifyFriendCallBack!! )
(!!) *
List!!* .
<!!. /"
FriendBasicInformation!!/ E
>!!E F
friendsNewUser!!G U
,!!U V
int!!W Z
idUser!![ a
,!!a b
int!!c f
status!!g m
)!!m n
{"" 	
if## 
(## 
friendsNewUser## 
.## 
Count## #
!=##$ &

NULL_VALUE##' 1
||##2 4
idUser##5 ;
!=##< >

NULL_VALUE##? I
||##J L
status##M S
!=##T V

NULL_VALUE##W a
)##a b
{$$ 
foreach%% 
(%% 
var%% 
friend%% #
in%%$ &
friendsNewUser%%' 5
)%%5 6
{&& 
try'' 
{(( 
var)) 
channelSaved)) (
=))) *!
ActiveUsersDictionary))+ @
.))@ A(
GetChannelCallBackActiveUser))A ]
())] ^
friend))^ d
.))d e
IdUser))e k
)))k l
;))l m
if** 
(** 
channelSaved** (
!=**) +
null**, 0
)**0 1
{++ 
channelSaved,, (
.,,( )
GetCallbackChannel,,) ;
<,,; <+
INotifyUserAvailabilityCallBack,,< [
>,,[ \
(,,\ ]
),,] ^
.,,^ _(
ResponseOfPlayerAvailability,,_ {
(,,{ |
status	,,| Ç
,
,,Ç É
idUser
,,Ñ ä
)
,,ä ã
;
,,ã å
}-- 
}.. 
catch// 
(// /
#CommunicationObjectFaultedException// >
ex//? A
)//A B
{00  
ChannelAdministrator11 ,
.11, -$
HandleCommunicationIssue11- E
(11E F
friend11F L
.11L M
IdUser11M S
,11S T 
ChannelAdministrator11U i
.11i j#
AVAILABILITY_EXCEPTION	11j Ä
)
11Ä Å
;
11Å Ç
ExceptionHandler22 (
.22( )
LogException22) 5
(225 6
ex226 8
,228 9
ExceptionDictionary22: M
.22M N
FATAL_EXCEPTION22N ]
)22] ^
;22^ _
}33 
catch44 
(44 
TimeoutException44 +
ex44, .
)44. /
{55  
ChannelAdministrator66 ,
.66, -$
HandleCommunicationIssue66- E
(66E F
friend66F L
.66L M
IdUser66M S
,66S T 
ChannelAdministrator66U i
.66i j#
AVAILABILITY_EXCEPTION	66j Ä
)
66Ä Å
;
66Å Ç
ExceptionHandler77 (
.77( )
LogException77) 5
(775 6
ex776 8
,778 9
ExceptionDictionary77: M
.77M N
FATAL_EXCEPTION77N ]
)77] ^
;77^ _
}88 
catch99 
(99 "
CommunicationException99 1
ex992 4
)994 5
{::  
ChannelAdministrator;; ,
.;;, -$
HandleCommunicationIssue;;- E
(;;E F
friend;;F L
.;;L M
IdUser;;M S
,;;S T 
ChannelAdministrator;;U i
.;;i j#
AVAILABILITY_EXCEPTION	;;j Ä
)
;;Ä Å
;
;;Å Ç
ExceptionHandler<< (
.<<( )
LogException<<) 5
(<<5 6
ex<<6 8
,<<8 9
ExceptionDictionary<<: M
.<<M N
FATAL_EXCEPTION<<N ]
)<<] ^
;<<^ _
}== 
catch>> 
(>> %
InvalidOperationException>> 4
ex>>5 7
)>>7 8
{??  
ChannelAdministrator@@ ,
.@@, -$
HandleCommunicationIssue@@- E
(@@E F
friend@@F L
.@@L M
IdUser@@M S
,@@S T 
ChannelAdministrator@@U i
.@@i j#
AVAILABILITY_EXCEPTION	@@j Ä
)
@@Ä Å
;
@@Å Ç
ExceptionHandlerAA (
.AA( )
LogExceptionAA) 5
(AA5 6
exAA6 8
,AA8 9
ExceptionDictionaryAA: M
.AAM N
FATAL_EXCEPTIONAAN ]
)AA] ^
;AA^ _
}BB 
}CC 
}DD 
}EE 	
publicGG 
voidGG )
RenewNotifyAvailabityCallBackGG 1
(GG1 2
intGG2 5
idUserGG6 <
)GG< =
{HH 	
lockII 
(II 

lockObjectII 
)II 
{JJ 
tryKK 
{LL 
ifMM 
(MM 
idUserMM 
!=MM !
$numMM" #
)MM# $
{NN 
varOO 

newChannelOO &
=OO' (
OperationContextOO) 9
.OO9 :
CurrentOO: A
;OOA B!
ActiveUsersDictionaryPP -
.PP- .#
RenewAvailabityCallBackPP. E
(PPE F
idUserPPF L
,PPL M

newChannelPPN X
)PPX Y
;PPY Z
}QQ 
}RR 
catchSS 
(SS /
#CommunicationObjectFaultedExceptionSS :
exSS; =
)SS= >
{TT  
ChannelAdministratorUU (
.UU( )$
HandleCommunicationIssueUU) A
(UUA B
idUserUUB H
,UUH I 
ChannelAdministratorUUJ ^
.UU^ _"
AVAILABILITY_EXCEPTIONUU_ u
)UUu v
;UUv w
ExceptionHandlerVV $
.VV$ %
LogExceptionVV% 1
(VV1 2
exVV2 4
,VV4 5
ExceptionDictionaryVV6 I
.VVI J
FATAL_EXCEPTIONVVJ Y
)VVY Z
;VVZ [
}WW 
catchXX 
(XX 
TimeoutExceptionXX '
exXX( *
)XX* +
{YY  
ChannelAdministratorZZ (
.ZZ( )$
HandleCommunicationIssueZZ) A
(ZZA B
idUserZZB H
,ZZH I 
ChannelAdministratorZZJ ^
.ZZ^ _"
AVAILABILITY_EXCEPTIONZZ_ u
)ZZu v
;ZZv w
ExceptionHandler[[ $
.[[$ %
LogException[[% 1
([[1 2
ex[[2 4
,[[4 5
ExceptionDictionary[[6 I
.[[I J
FATAL_EXCEPTION[[J Y
)[[Y Z
;[[Z [
}\\ 
catch]] 
(]] "
CommunicationException]] -
ex]]. 0
)]]0 1
{^^  
ChannelAdministrator__ (
.__( )$
HandleCommunicationIssue__) A
(__A B
idUser__B H
,__H I 
ChannelAdministrator__J ^
.__^ _"
AVAILABILITY_EXCEPTION___ u
)__u v
;__v w
ExceptionHandler`` $
.``$ %
LogException``% 1
(``1 2
ex``2 4
,``4 5
ExceptionDictionary``6 I
.``I J
FATAL_EXCEPTION``J Y
)``Y Z
;``Z [
}aa 
catchbb 
(bb %
InvalidOperationExceptionbb 0
exbb1 3
)bb3 4
{cc  
ChannelAdministratordd (
.dd( )$
HandleCommunicationIssuedd) A
(ddA B
idUserddB H
,ddH I 
ChannelAdministratorddJ ^
.dd^ _"
AVAILABILITY_EXCEPTIONdd_ u
)ddu v
;ddv w
ExceptionHandleree $
.ee$ %
LogExceptionee% 1
(ee1 2
exee2 4
,ee4 5
ExceptionDictionaryee6 I
.eeI J
FATAL_EXCEPTIONeeJ Y
)eeY Z
;eeZ [
}ff 
}gg 
}hh 	
publicjj 
voidjj 0
$SubscribeToAvailabityCallBackChanneljj 8
(jj8 9
intjj9 <
idNewActiveUserjj= L
)jjL M
{kk 	
lockll 
(ll 

lockObjectll 
)ll 
{mm 
trynn 
{oo 
varpp 
savedChannelpp $
=pp% &!
ActiveUsersDictionarypp' <
.pp< =(
GetChannelCallBackActiveUserpp= Y
(ppY Z
idNewActiveUserppZ i
)ppi j
;ppj k
ifqq 
(qq 
savedChannelqq $
==qq% '
nullqq( ,
)qq, -
{rr 
varss 

newChannelss &
=ss' (
OperationContextss) 9
.ss9 :
Currentss: A
;ssA B!
ActiveUsersDictionarytt -
.tt- .-
!RegisterNewActiveUserInDictionarytt. O
(ttO P
idNewActiveUserttP _
,tt_ `

newChanneltta k
)ttk l
;ttl m
}uu 
}vv 
catchww 
(ww /
#CommunicationObjectFaultedExceptionww :
exww; =
)ww= >
{xx  
ChannelAdministratoryy (
.yy( )$
HandleCommunicationIssueyy) A
(yyA B
idNewActiveUseryyB Q
,yyQ R 
ChannelAdministratoryyS g
.yyg h"
AVAILABILITY_EXCEPTIONyyh ~
)yy~ 
;	yy Ä
ExceptionHandlerzz $
.zz$ %
LogExceptionzz% 1
(zz1 2
exzz2 4
,zz4 5
ExceptionDictionaryzz6 I
.zzI J
FATAL_EXCEPTIONzzJ Y
)zzY Z
;zzZ [
}{{ 
catch|| 
(|| 
TimeoutException|| '
ex||( *
)||* +
{}}  
ChannelAdministrator~~ (
.~~( )$
HandleCommunicationIssue~~) A
(~~A B
idNewActiveUser~~B Q
,~~Q R 
ChannelAdministrator~~S g
.~~g h"
AVAILABILITY_EXCEPTION~~h ~
)~~~ 
;	~~ Ä
ExceptionHandler $
.$ %
LogException% 1
(1 2
ex2 4
,4 5
ExceptionDictionary6 I
.I J
FATAL_EXCEPTIONJ Y
)Y Z
;Z [
}
ÄÄ 
catch
ÅÅ 
(
ÅÅ $
CommunicationException
ÅÅ -
ex
ÅÅ. 0
)
ÅÅ0 1
{
ÇÇ "
ChannelAdministrator
ÉÉ (
.
ÉÉ( )&
HandleCommunicationIssue
ÉÉ) A
(
ÉÉA B
idNewActiveUser
ÉÉB Q
,
ÉÉQ R"
ChannelAdministrator
ÉÉS g
.
ÉÉg h$
AVAILABILITY_EXCEPTION
ÉÉh ~
)
ÉÉ~ 
;ÉÉ Ä
ExceptionHandler
ÑÑ $
.
ÑÑ$ %
LogException
ÑÑ% 1
(
ÑÑ1 2
ex
ÑÑ2 4
,
ÑÑ4 5!
ExceptionDictionary
ÑÑ6 I
.
ÑÑI J
FATAL_EXCEPTION
ÑÑJ Y
)
ÑÑY Z
;
ÑÑZ [
}
ÖÖ 
catch
ÜÜ 
(
ÜÜ '
InvalidOperationException
ÜÜ 0
ex
ÜÜ1 3
)
ÜÜ3 4
{
áá "
ChannelAdministrator
àà (
.
àà( )&
HandleCommunicationIssue
àà) A
(
ààA B
idNewActiveUser
ààB Q
,
ààQ R"
ChannelAdministrator
ààS g
.
ààg h$
AVAILABILITY_EXCEPTION
ààh ~
)
àà~ 
;àà Ä
ExceptionHandler
ââ $
.
ââ$ %
LogException
ââ% 1
(
ââ1 2
ex
ââ2 4
,
ââ4 5!
ExceptionDictionary
ââ6 I
.
ââI J
FATAL_EXCEPTION
ââJ Y
)
ââY Z
;
ââZ [
}
ää 
}
ãã 
}
åå 	
}
éé 
public
ëë 

class
ëë 4
&NotifyUserIsNotAvailableImplementation
ëë 7
:
ëë8 9(
IAvailabilityUserManagment
ëë: T
{
íí 
private
ìì 
readonly
ìì 
int
ìì 
NULL_INT_VALUE
ìì +
=
ìì, -
$num
ìì. /
;
ìì/ 0
private
îî 
readonly
îî 
int
îî 
AVAILABLE_STATUS
îî -
=
îî. /
$num
îî0 1
;
îî1 2
private
ïï 
readonly
ïï 
int
ïï  
UNAVAILABLE_STATUS
ïï /
=
ïï0 1
$num
ïï2 3
;
ïï3 4
private
ññ 
readonly
ññ 
int
ññ 
PLAYING_STATUS
ññ +
=
ññ, -
$num
ññ. /
;
ññ/ 0
public
òò 
void
òò 
PlayerIsAvailable
òò %
(
òò% &
int
òò& )
idNewActiveUser
òò* 9
)
òò9 :
{
ôô 	
try
öö 
{
õõ 
if
úú 
(
úú 
idNewActiveUser
úú #
!=
úú$ &
NULL_INT_VALUE
úú' 5
)
úú5 6
{
ùù 2
$NotifyUserAvailabilityImplementation
ûû 8$
notifyUserAvailability
ûû9 O
=
ûûP Q
new
ûûR U
(
ûûU V
)
ûûV W
;
ûûW X$
notifyUserAvailability
üü *
.
üü* +
NotifyFriends
üü+ 8
(
üü8 9
idNewActiveUser
üü9 H
,
üüH I
AVAILABLE_STATUS
üüJ Z
)
üüZ [
;
üü[ \
}
†† 
}
°° 
catch
¢¢ 
(
¢¢ 1
#CommunicationObjectFaultedException
¢¢ 6
ex
¢¢7 9
)
¢¢9 :
{
££ "
ChannelAdministrator
§§ $
.
§§$ %&
HandleCommunicationIssue
§§% =
(
§§= >
idNewActiveUser
§§> M
,
§§M N"
ChannelAdministrator
§§O c
.
§§c d$
AVAILABILITY_EXCEPTION
§§d z
)
§§z {
;
§§{ |
ExceptionHandler
••  
.
••  !
LogException
••! -
(
••- .
ex
••. 0
,
••0 1!
ExceptionDictionary
••2 E
.
••E F
FATAL_EXCEPTION
••F U
)
••U V
;
••V W
}
¶¶ 
catch
ßß 
(
ßß 
TimeoutException
ßß #
ex
ßß$ &
)
ßß& '
{
®® "
ChannelAdministrator
©© $
.
©©$ %&
HandleCommunicationIssue
©©% =
(
©©= >
idNewActiveUser
©©> M
,
©©M N"
ChannelAdministrator
©©O c
.
©©c d$
AVAILABILITY_EXCEPTION
©©d z
)
©©z {
;
©©{ |
ExceptionHandler
™™  
.
™™  !
LogException
™™! -
(
™™- .
ex
™™. 0
,
™™0 1!
ExceptionDictionary
™™2 E
.
™™E F
FATAL_EXCEPTION
™™F U
)
™™U V
;
™™V W
}
´´ 
catch
¨¨ 
(
¨¨ $
CommunicationException
¨¨ )
ex
¨¨* ,
)
¨¨, -
{
≠≠ "
ChannelAdministrator
ÆÆ $
.
ÆÆ$ %&
HandleCommunicationIssue
ÆÆ% =
(
ÆÆ= >
idNewActiveUser
ÆÆ> M
,
ÆÆM N"
ChannelAdministrator
ÆÆO c
.
ÆÆc d$
AVAILABILITY_EXCEPTION
ÆÆd z
)
ÆÆz {
;
ÆÆ{ |
ExceptionHandler
ØØ  
.
ØØ  !
LogException
ØØ! -
(
ØØ- .
ex
ØØ. 0
,
ØØ0 1!
ExceptionDictionary
ØØ2 E
.
ØØE F
FATAL_EXCEPTION
ØØF U
)
ØØU V
;
ØØV W
}
∞∞ 
catch
±± 
(
±± '
InvalidOperationException
±± ,
ex
±±- /
)
±±/ 0
{
≤≤ "
ChannelAdministrator
≥≥ $
.
≥≥$ %&
HandleCommunicationIssue
≥≥% =
(
≥≥= >
idNewActiveUser
≥≥> M
,
≥≥M N"
ChannelAdministrator
≥≥O c
.
≥≥c d$
AVAILABILITY_EXCEPTION
≥≥d z
)
≥≥z {
;
≥≥{ |
ExceptionHandler
¥¥  
.
¥¥  !
LogException
¥¥! -
(
¥¥- .
ex
¥¥. 0
,
¥¥0 1!
ExceptionDictionary
¥¥2 E
.
¥¥E F
FATAL_EXCEPTION
¥¥F U
)
¥¥U V
;
¥¥V W
}
µµ 
}
∂∂ 	
public
∏∏ 
void
∏∏ "
PlayerIsNotAvailable
∏∏ (
(
∏∏( )
int
∏∏) ,!
idUserDisconnecting
∏∏- @
)
∏∏@ A
{
ππ 	
try
∫∫ 
{
ªª 
if
ºº 
(
ºº !
idUserDisconnecting
ºº '
!=
ºº( *
NULL_INT_VALUE
ºº+ 9
)
ºº9 :
{
ΩΩ #
ActiveUsersDictionary
ææ )
.
ææ) *6
(RemoveRegistryOfActiveUserFromDictionary
ææ* R
(
ææR S!
idUserDisconnecting
ææS f
)
ææf g
;
ææg h2
$NotifyUserAvailabilityImplementation
øø 8$
notifyUserAvailability
øø9 O
=
øøP Q
new
øøR U
(
øøU V
)
øøV W
;
øøW X$
notifyUserAvailability
¿¿ *
.
¿¿* +
NotifyFriends
¿¿+ 8
(
¿¿8 9!
idUserDisconnecting
¿¿9 L
,
¿¿L M 
UNAVAILABLE_STATUS
¿¿N `
)
¿¿` a
;
¿¿a b
}
¡¡ 
}
¬¬ 
catch
√√ 
(
√√ 1
#CommunicationObjectFaultedException
√√ 6
ex
√√7 9
)
√√9 :
{
ƒƒ "
ChannelAdministrator
≈≈ $
.
≈≈$ %&
HandleCommunicationIssue
≈≈% =
(
≈≈= >!
idUserDisconnecting
≈≈> Q
,
≈≈Q R"
ChannelAdministrator
≈≈S g
.
≈≈g h$
AVAILABILITY_EXCEPTION
≈≈h ~
)
≈≈~ 
;≈≈ Ä
ExceptionHandler
∆∆  
.
∆∆  !
LogException
∆∆! -
(
∆∆- .
ex
∆∆. 0
,
∆∆0 1!
ExceptionDictionary
∆∆2 E
.
∆∆E F
FATAL_EXCEPTION
∆∆F U
)
∆∆U V
;
∆∆V W
}
«« 
catch
»» 
(
»» 
TimeoutException
»» #
ex
»»$ &
)
»»& '
{
…… "
ChannelAdministrator
   $
.
  $ %&
HandleCommunicationIssue
  % =
(
  = >!
idUserDisconnecting
  > Q
,
  Q R"
ChannelAdministrator
  S g
.
  g h'
FRIEND_MANAGER_EXCEPTION  h Ä
)  Ä Å
;  Å Ç
ExceptionHandler
ÀÀ  
.
ÀÀ  !
LogException
ÀÀ! -
(
ÀÀ- .
ex
ÀÀ. 0
,
ÀÀ0 1!
ExceptionDictionary
ÀÀ2 E
.
ÀÀE F
FATAL_EXCEPTION
ÀÀF U
)
ÀÀU V
;
ÀÀV W
}
ÃÃ 
catch
ÕÕ 
(
ÕÕ $
CommunicationException
ÕÕ )
ex
ÕÕ* ,
)
ÕÕ, -
{
ŒŒ "
ChannelAdministrator
œœ $
.
œœ$ %&
HandleCommunicationIssue
œœ% =
(
œœ= >!
idUserDisconnecting
œœ> Q
,
œœQ R"
ChannelAdministrator
œœS g
.
œœg h$
AVAILABILITY_EXCEPTION
œœh ~
)
œœ~ 
;œœ Ä
ExceptionHandler
––  
.
––  !
LogException
––! -
(
––- .
ex
––. 0
,
––0 1!
ExceptionDictionary
––2 E
.
––E F
FATAL_EXCEPTION
––F U
)
––U V
;
––V W
}
—— 
catch
““ 
(
““ '
InvalidOperationException
““ ,
ex
““- /
)
““/ 0
{
”” "
ChannelAdministrator
‘‘ $
.
‘‘$ %&
HandleCommunicationIssue
‘‘% =
(
‘‘= >!
idUserDisconnecting
‘‘> Q
,
‘‘Q R"
ChannelAdministrator
‘‘S g
.
‘‘g h$
AVAILABILITY_EXCEPTION
‘‘h ~
)
‘‘~ 
;‘‘ Ä
ExceptionHandler
’’  
.
’’  !
LogException
’’! -
(
’’- .
ex
’’. 0
,
’’0 1!
ExceptionDictionary
’’2 E
.
’’E F
FATAL_EXCEPTION
’’F U
)
’’U V
;
’’V W
}
÷÷ 
}
◊◊ 	
public
⁄⁄ 
void
⁄⁄ 
PlayerIsPlaying
⁄⁄ #
(
⁄⁄# $
int
⁄⁄$ '
idUserPlaying
⁄⁄( 5
)
⁄⁄5 6
{
€€ 	
try
‹‹ 
{
›› 
if
ﬁﬁ 
(
ﬁﬁ 
idUserPlaying
ﬁﬁ !
!=
ﬁﬁ" $
NULL_INT_VALUE
ﬁﬁ% 3
)
ﬁﬁ3 4
{
ﬂﬂ 2
$NotifyUserAvailabilityImplementation
‡‡ 8$
notifyUserAvailability
‡‡9 O
=
‡‡P Q
new
‡‡R U
(
‡‡U V
)
‡‡V W
;
‡‡W X$
notifyUserAvailability
·· *
.
··* +
NotifyFriends
··+ 8
(
··8 9
idUserPlaying
··9 F
,
··F G
PLAYING_STATUS
··H V
)
··V W
;
··W X
}
‚‚ 
}
„„ 
catch
‰‰ 
(
‰‰ 1
#CommunicationObjectFaultedException
‰‰ 6
ex
‰‰7 9
)
‰‰9 :
{
ÂÂ "
ChannelAdministrator
ÊÊ $
.
ÊÊ$ %&
HandleCommunicationIssue
ÊÊ% =
(
ÊÊ= >
idUserPlaying
ÊÊ> K
,
ÊÊK L"
ChannelAdministrator
ÊÊM a
.
ÊÊa b$
AVAILABILITY_EXCEPTION
ÊÊb x
)
ÊÊx y
;
ÊÊy z
ExceptionHandler
ÁÁ  
.
ÁÁ  !
LogException
ÁÁ! -
(
ÁÁ- .
ex
ÁÁ. 0
,
ÁÁ0 1!
ExceptionDictionary
ÁÁ2 E
.
ÁÁE F
FATAL_EXCEPTION
ÁÁF U
)
ÁÁU V
;
ÁÁV W
}
ËË 
catch
ÈÈ 
(
ÈÈ 
TimeoutException
ÈÈ #
ex
ÈÈ$ &
)
ÈÈ& '
{
ÍÍ "
ChannelAdministrator
ÎÎ $
.
ÎÎ$ %&
HandleCommunicationIssue
ÎÎ% =
(
ÎÎ= >
idUserPlaying
ÎÎ> K
,
ÎÎK L"
ChannelAdministrator
ÎÎM a
.
ÎÎa b&
FRIEND_MANAGER_EXCEPTION
ÎÎb z
)
ÎÎz {
;
ÎÎ{ |
ExceptionHandler
ÏÏ  
.
ÏÏ  !
LogException
ÏÏ! -
(
ÏÏ- .
ex
ÏÏ. 0
,
ÏÏ0 1!
ExceptionDictionary
ÏÏ2 E
.
ÏÏE F
FATAL_EXCEPTION
ÏÏF U
)
ÏÏU V
;
ÏÏV W
}
ÌÌ 
catch
ÓÓ 
(
ÓÓ $
CommunicationException
ÓÓ )
ex
ÓÓ* ,
)
ÓÓ, -
{
ÔÔ "
ChannelAdministrator
 $
.
$ %&
HandleCommunicationIssue
% =
(
= >
idUserPlaying
> K
,
K L"
ChannelAdministrator
M a
.
a b$
AVAILABILITY_EXCEPTION
b x
)
x y
;
y z
ExceptionHandler
ÒÒ  
.
ÒÒ  !
LogException
ÒÒ! -
(
ÒÒ- .
ex
ÒÒ. 0
,
ÒÒ0 1!
ExceptionDictionary
ÒÒ2 E
.
ÒÒE F
FATAL_EXCEPTION
ÒÒF U
)
ÒÒU V
;
ÒÒV W
}
ÚÚ 
catch
ÛÛ 
(
ÛÛ '
InvalidOperationException
ÛÛ ,
ex
ÛÛ- /
)
ÛÛ/ 0
{
ÙÙ "
ChannelAdministrator
ıı $
.
ıı$ %&
HandleCommunicationIssue
ıı% =
(
ıı= >
idUserPlaying
ıı> K
,
ııK L"
ChannelAdministrator
ııM a
.
ııa b$
AVAILABILITY_EXCEPTION
ııb x
)
ııx y
;
ııy z
ExceptionHandler
ˆˆ  
.
ˆˆ  !
LogException
ˆˆ! -
(
ˆˆ- .
ex
ˆˆ. 0
,
ˆˆ0 1!
ExceptionDictionary
ˆˆ2 E
.
ˆˆE F
FATAL_EXCEPTION
ˆˆF U
)
ˆˆU V
;
ˆˆV W
}
˜˜ 
}
¯¯ 	
}
˚˚ 
}˝˝ ≈Ø
èC:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameServer\JeopardyGame.Service\Helpers\QuestionsManagerImplementation.cs
	namespace 	
JeopardyGame
 
. 
Service 
. !
ServiceImplementation 4
{ 
public 

partial 
class *
QuestionsManagerImplementation 7
{ 
private 
const 
int 
SPECIAL_CATEGORY *
=+ ,
$num- .
;. /
private 
const 
int 
	ROUND_ONE #
=$ %
$num& '
;' (
private 
const 
int 
	ROUND_TWO #
=$ %
$num& '
;' (
private 
const 
int 
ROUND_THREE %
=& '
$num( )
;) *
private 
const 
int 
ID_LAST_QUESTION *
=+ ,
$num- /
;/ 0
private 
const 
int (
LIMIT_OF_CARDS_FOR_ONE_ROUND 6
=7 8
$num9 :
;: ;
public 
GenericClass 
< 
List  
<  !#
QuestionCardInformation! 8
>8 9
>9 :
GetQuestionForBoard; N
(N O
intO R
roomCodeS [
)[ \
{ 	
GenericClass 
< 
List 
< #
QuestionCardInformation 5
>5 6
>6 7
resultToReturn8 F
=G H
newI L
GenericClassM Y
<Y Z
ListZ ^
<^ _#
QuestionCardInformation_ v
>v w
>w x
(x y
)y z
;z {
if 
( 
! 
RoomCodeExist 
( 
roomCode '
)' (
)( )
{ 
return !
NullParametersHandler ,
., -'
HandleNullParametersService- H
(H I
resultToReturnI W
)W X
;X Y
} 
int 
isGameCreated 
= 

CreateGame  *
(* +
roomCode+ 3
)3 4
;4 5
if 
( 
isGameCreated 
==  
ExceptionDictionary! 4
.4 5
SUCCESFULL_EVENT5 E
)E F
{ 
var   $
questionCardsInformation   ,
=  - ."
GetQuestionInformation  / E
(  E F
)  F G
;  G H
resultToReturn!! 
.!! 
ObjectSaved!! *
=!!+ ,$
questionCardsInformation!!- E
.!!E F
ObjectSaved!!F Q
;!!Q R
resultToReturn"" 
."" 
	CodeEvent"" (
="") *$
questionCardsInformation""+ C
.""C D
	CodeEvent""D M
;""M N
}## 
else$$ 
{%% 
resultToReturn&& 
.&& 
	CodeEvent&& (
=&&) *
isGameCreated&&+ 8
;&&8 9
}'' 
return(( 
resultToReturn(( !
;((! "
})) 	
private++ 
int++ 

CreateGame++ 
(++ 
int++ "
roomCode++# +
)+++ ,
{,, 	
Game-- 
newGame-- 
=-- 
new-- 
(-- 
)--  
{.. 
RoomCode// 
=// 
roomCode// #
,//# $
Host_IdHost00 
=00 
	ChoseHost00 '
(00' (
)00( )
}11 
;11 
return22 
GameDataOperation22 $
.22$ %!
SaveNewGameInDataBase22% :
(22: ;
newGame22; B
)22B C
.22C D
	CodeEvent22D M
;22M N
}33 	
private55 
int55 
	ChoseHost55 
(55 
)55 
{66 	
var77 
idHosts77 
=77 
GameDataOperation77 +
.77+ ,

GetHostIds77, 6
(776 7
)777 8
;778 9
if88 
(88 
idHosts88 
.88 
	CodeEvent88 !
==88" $
ExceptionDictionary88% 8
.888 9
SUCCESFULL_EVENT889 I
)88I J
{99 
Random:: 
random:: 
=:: 
new::  #
Random::$ *
(::* +
)::+ ,
;::, -
int;; 
idHost;; 
=;; 
idHosts;; $
.;;$ %
ObjectSaved;;% 0
.;;0 1
OrderBy;;1 8
(;;8 9
h;;9 :
=>;;; =
random;;> D
.;;D E
Next;;E I
(;;I J
);;J K
);;K L
.;;L M
First;;M R
(;;R S
);;S T
;;;T U
return<< 
idHost<< 
;<< 
}== 
return>> 
idHosts>> 
.>> 
	CodeEvent>> $
;>>$ %
}?? 	
privateAA 
boolAA 
RoomCodeExistAA "
(AA" #
intAA# &
roomCodeAA' /
)AA/ 0
{BB 	
varCC 
lobbyCC 
=CC !
GameLobbiesDictionaryCC -
.CC- ."
GetSpecificActiveLobbyCC. D
(CCD E
roomCodeCCE M
)CCM N
;CCN O
returnDD 
(DD 
lobbyDD 
!=DD 
nullDD !
)DD! "
;DD" #
}EE 	
privateGG 
GenericClassServerGG "
<GG" #
ListGG# '
<GG' (#
QuestionCardInformationGG( ?
>GG? @
>GG@ A"
GetQuestionInformationGGB X
(GGX Y
)GGY Z
{HH 	
GenericClassServerII 
<II 
ListII #
<II# $#
QuestionCardInformationII$ ;
>II; <
>II< =
listOfQuestionsII> M
=IIN O
newIIP S
GenericClassServerIIT f
<IIf g
ListIIg k
<IIk l$
QuestionCardInformation	IIl É
>
IIÉ Ñ
>
IIÑ Ö
(
IIÖ Ü
)
IIÜ á
;
IIá à
GenericClassServerJJ 
<JJ 
ListJJ #
<JJ# $
CategoryJJ$ ,
>JJ, -
>JJ- .
categoriesConsultedJJ/ B
=JJC D
GameDataOperationJJE V
.JJV W
Get10CategoriesJJW f
(JJf g
)JJg h
;JJh i
ifKK 
(KK 
categoriesConsultedKK #
.KK# $
	CodeEventKK$ -
==KK. 0
ExceptionDictionaryKK1 D
.KKD E
SUCCESFULL_EVENTKKE U
)KKU V
{LL 
varMM 
questionPoolMM  
=MM! "
GameDataOperationMM# 4
.MM4 5"
GetQuestionsByCategoryMM5 K
(MMK L
categoriesConsultedMML _
.MM_ `
ObjectSavedMM` k
)MMk l
;MMl m
ifNN 
(NN 
questionPoolNN  
.NN  !
	CodeEventNN! *
==NN+ -
ExceptionDictionaryNN. A
.NNA B
SUCCESFULL_EVENTNNB R
)NNR S
{OO 
varPP 

answerPoolPP "
=PP# $
GameDataOperationPP% 6
.PP6 7!
GetAwnsersOfQuestionsPP7 L
(PPL M
questionPoolPPM Y
.PPY Z
ObjectSavedPPZ e
)PPe f
;PPf g
ifQQ 
(QQ 

answerPoolQQ "
.QQ" #
	CodeEventQQ# ,
==QQ- /
ExceptionDictionaryQQ0 C
.QQC D
SUCCESFULL_EVENTQQD T
)QQT U
{RR 
listOfQuestionsSS '
.SS' (
ObjectSavedSS( 3
=SS4 5!
OrderQuestionsInCardsSS6 K
(SSK L
questionPoolSSL X
.SSX Y
ObjectSavedSSY d
)SSd e
;SSe f
listOfQuestionsTT '
.TT' (
ObjectSavedTT( 3
=TT4 5
OrderAnswersInCardsTT6 I
(TTI J

answerPoolTTJ T
.TTT U
ObjectSavedTTU `
,TT` a
listOfQuestionsTTb q
.TTq r
ObjectSavedTTr }
)TT} ~
;TT~ 
listOfQuestionsUU '
.UU' (
	CodeEventUU( 1
=UU2 3
ExceptionDictionaryUU4 G
.UUG H
SUCCESFULL_EVENTUUH X
;UUX Y
}VV 
elseWW 
{XX 
listOfQuestionsYY '
.YY' (
	CodeEventYY( 1
=YY2 3

answerPoolYY4 >
.YY> ?
	CodeEventYY? H
;YYH I
}ZZ 
}[[ 
else\\ 
{]] 
listOfQuestions^^ #
.^^# $
	CodeEvent^^$ -
=^^. /
questionPool^^/ ;
.^^; <
	CodeEvent^^< E
;^^E F
}__ 
}`` 
elseaa 
{bb 
listOfQuestionscc 
.cc  
	CodeEventcc  )
=cc* +
categoriesConsultedcc, ?
.cc? @
	CodeEventcc@ I
;ccI J
}dd 
returnee 
listOfQuestionsee "
;ee" #
}ff 	
privatehh 
Listhh 
<hh #
QuestionCardInformationhh ,
>hh, -!
OrderQuestionsInCardshh. C
(hhC D
ListhhD H
<hhH I
QuestionhhI Q
>hhQ R
questionPoolhhS _
)hh_ `
{ii 	
Listjj 
<jj #
QuestionCardInformationjj (
>jj( )#
questionCardInformationjj* A
=jjB C
newjjD G
ListjjH L
<jjL M#
QuestionCardInformationjjM d
>jjd e
(jje f
)jjf g
;jjg h
intkk 
iteratorkk 
=kk 
$numkk 
;kk 
foreachll 
(ll 
varll 
questionll !
inll" $
questionPoolll% 1
)ll1 2
{mm 
ifnn 
(nn 
questionnn 
.nn 
CategoryIdCategorynn /
!=nn0 2
SPECIAL_CATEGORYnn3 C
)nnC D
{oo #
QuestionCardInformationpp +
questionCardpp, 8
=pp9 :
newpp; >#
QuestionCardInformationpp? V
(ppV W
)ppW X
{qq 
IdQuestionCardrr &
=rr' (
iteratorrr) 1
,rr1 2
NumberOfRoundss %
=ss& '
SetNumberOfRoundss( 8
(ss8 9
iteratorss9 A
)ssA B
,ssB C
CategoryOfQuestiontt *
=tt+ , 
QuestionsInterpretertt- A
.ttA B&
FromCategoryToCategoryPOJOttB \
(tt\ ]
questiontt] e
.tte f
Categoryttf n
)ttn o
,tto p#
SpecificQuestionDetailsuu /
=uu0 1
newuu2 5
(uu5 6
)uu6 7
{vv 

IdQuestionww &
=ww' (
questionww) 1
.ww1 2

IdQuestionww2 <
,ww< =&
SpanishQuestionDescriptionxx 6
=xx7 8
questionxx9 A
.xxA B&
SpanishQuestionDescriptionxxB \
,xx\ ]&
EnglishQuestionDescriptionyy 6
=yy7 8
questionyy9 A
.yyA B&
EnglishQuestionDescriptionyyB \
,yy\ ]
IdAnswerOfQuestionzz .
=zz/ 0
questionzz1 9
.zz9 :
Awnserzz: @
.zz@ A
IdAwnserzzA I
,zzI J
IdCategoryBelong{{ ,
={{- .
question{{/ 7
.{{7 8
CategoryIdCategory{{8 J
,{{J K

ValueWorth|| &
=||' (
(||) *
int||* -
)||- .
question||. 6
.||6 7

ValueWorth||7 A
}}} 
}~~ 
;~~ 
if 
( 
questionCard #
.# $
NumberOfRound$ 1
==2 4
	ROUND_TWO5 >
)> ?
{
ÄÄ 
questionCard
ÅÅ $
.
ÅÅ$ %%
SpecificQuestionDetails
ÅÅ% <
.
ÅÅ< =

ValueWorth
ÅÅ= G
=
ÅÅH I
$num
ÅÅJ K
*
ÅÅL M
(
ÅÅN O
(
ÅÅO P
int
ÅÅP S
)
ÅÅS T
(
ÅÅT U
question
ÅÅU ]
.
ÅÅ] ^

ValueWorth
ÅÅ^ h
)
ÅÅh i
)
ÅÅi j
;
ÅÅj k
}
ÇÇ %
questionCardInformation
ÉÉ +
.
ÉÉ+ ,
Add
ÉÉ, /
(
ÉÉ/ 0
questionCard
ÉÉ0 <
)
ÉÉ< =
;
ÉÉ= >
iterator
ÑÑ 
++
ÑÑ 
;
ÑÑ 
}
ÖÖ 
}
ÜÜ 
Question
áá 
specialQuestion
áá $
=
áá% &
questionPool
áá' 3
.
áá3 4
First
áá4 9
(
áá9 :
question
áá: B
=>
ááC E
question
ááF N
.
ááN O 
CategoryIdCategory
ááO a
==
ááb d
SPECIAL_CATEGORY
ááe u
)
ááu v
;
ááv w%
QuestionCardInformation
àà #!
specialQuestionCard
àà$ 7
=
àà8 9
new
àà: =%
QuestionCardInformation
àà> U
(
ààU V
)
ààV W
{
ââ 
IdQuestionCard
ää 
=
ää  
ID_LAST_QUESTION
ää! 1
,
ää1 2
NumberOfRound
ãã 
=
ãã 
ROUND_THREE
ãã  +
,
ãã+ , 
CategoryOfQuestion
åå "
=
åå# $"
QuestionsInterpreter
åå% 9
.
åå9 :(
FromCategoryToCategoryPOJO
åå: T
(
ååT U
specialQuestion
ååU d
.
ååd e
Category
ååe m
)
ååm n
,
åån o%
SpecificQuestionDetails
çç '
=
çç( )
new
çç* -
(
çç- .
)
çç. /
{
éé 

IdQuestion
èè 
=
èè  
specialQuestion
èè! 0
.
èè0 1

IdQuestion
èè1 ;
,
èè; <(
SpanishQuestionDescription
êê .
=
êê/ 0
specialQuestion
êê1 @
.
êê@ A(
SpanishQuestionDescription
êêA [
,
êê[ \(
EnglishQuestionDescription
ëë .
=
ëë/ 0
specialQuestion
ëë1 @
.
ëë@ A(
EnglishQuestionDescription
ëëA [
,
ëë[ \ 
IdAnswerOfQuestion
íí &
=
íí' (
specialQuestion
íí) 8
.
íí8 9
Awnser
íí9 ?
.
íí? @
IdAwnser
íí@ H
,
ííH I
IdCategoryBelong
ìì $
=
ìì% &
specialQuestion
ìì' 6
.
ìì6 7 
CategoryIdCategory
ìì7 I
,
ììI J

ValueWorth
îî 
=
îî  
(
îî! "
int
îî" %
)
îî% &
specialQuestion
îî& 5
.
îî5 6

ValueWorth
îî6 @
}
ïï 
}
ññ 
;
ññ %
questionCardInformation
óó #
.
óó# $
Add
óó$ '
(
óó' (!
specialQuestionCard
óó( ;
)
óó; <
;
óó< =
return
òò %
questionCardInformation
òò *
;
òò* +
}
ôô 	
private
õõ 
List
õõ 
<
õõ %
QuestionCardInformation
õõ ,
>
õõ, -!
OrderAnswersInCards
õõ. A
(
õõA B
List
õõB F
<
õõF G
Awnser
õõG M
>
õõM N

answerPool
õõO Y
,
õõY Z
List
õõ[ _
<
õõ_ `%
QuestionCardInformation
õõ` w
>
õõw x&
questionCardInformationõõy ê
)õõê ë
{
úú 	
foreach
ùù 
(
ùù 
var
ùù 
questionCard
ùù %
in
ùù& (%
questionCardInformation
ùù) @
)
ùù@ A
{
ûû 
var
üü 
answersOfQuestion
üü %
=
üü& '

answerPool
üü( 2
.
üü2 3
Where
üü3 8
(
üü8 9
answer
üü9 ?
=>
üü@ B
answer
üüC I
.
üüI J 
CategoryIdCategory
üüJ \
==
üü^ `
questionCard
üüa m
.
üüm n&
SpecificQuestionDetailsüün Ö
.üüÖ Ü 
IdCategoryBelongüüÜ ñ
)üüñ ó
.üüó ò
ToListüüò û
(üüû ü
)üüü †
;üü† °
questionCard
†† 
.
†† 
RightAnswer
†† (
=
††) *"
QuestionsInterpreter
††+ ?
.
††? @$
FromAnswerToAnswerPOJO
††@ V
(
††V W
answersOfQuestion
††W h
.
††h i
Find
††i m
(
††m n
answer
°° 
=>
°° 
answer
°° $
.
°°$ %
IdAwnser
°°% -
==
°°. 0
questionCard
°°1 =
.
°°= >%
SpecificQuestionDetails
°°> U
.
°°U V 
IdAnswerOfQuestion
°°V h
)
°°h i
)
°°i j
;
°°j k
answersOfQuestion
¢¢ !
.
¢¢! "
Remove
¢¢" (
(
¢¢( )
answersOfQuestion
¢¢) :
.
¢¢: ;
Find
¢¢; ?
(
¢¢? @
answer
¢¢@ F
=>
¢¢G I
answer
¢¢J P
.
¢¢P Q
IdAwnser
¢¢Q Y
==
¢¢Z \
questionCard
¢¢] i
.
¢¢i j&
SpecificQuestionDetails¢¢j Å
.¢¢Å Ç"
IdAnswerOfQuestion¢¢Ç î
)¢¢î ï
)¢¢ï ñ
;¢¢ñ ó
questionCard
££ 
.
££ 
WrongOptionOne
££ +
=
££, -"
QuestionsInterpreter
££. B
.
££B C$
FromAnswerToAnswerPOJO
££C Y
(
££Y Z
answersOfQuestion
££Z k
[
££k l
$num
££l m
]
££m n
)
££n o
;
££o p
answersOfQuestion
§§ !
.
§§! "
Remove
§§" (
(
§§( )
answersOfQuestion
§§) :
[
§§: ;
$num
§§; <
]
§§< =
)
§§= >
;
§§> ?
questionCard
•• 
.
•• 
WrongOptionTwo
•• +
=
••, -"
QuestionsInterpreter
••. B
.
••B C$
FromAnswerToAnswerPOJO
••C Y
(
••Y Z
answersOfQuestion
••Z k
[
••k l
$num
••l m
]
••m n
)
••n o
;
••o p
answersOfQuestion
¶¶ !
.
¶¶! "
Remove
¶¶" (
(
¶¶( )
answersOfQuestion
¶¶) :
[
¶¶: ;
$num
¶¶; <
]
¶¶< =
)
¶¶= >
;
¶¶> ?
questionCard
ßß 
.
ßß 
WrongOptionThree
ßß -
=
ßß. /"
QuestionsInterpreter
ßß0 D
.
ßßD E$
FromAnswerToAnswerPOJO
ßßE [
(
ßß[ \
answersOfQuestion
ßß\ m
[
ßßm n
$num
ßßn o
]
ßßo p
)
ßßp q
;
ßßq r
}
®® 
return
©© %
questionCardInformation
©© *
;
©©* +
}
™™ 	
private
¨¨ 
int
¨¨ 
SetNumberOfRound
¨¨ $
(
¨¨$ %
int
¨¨% (
iterator
¨¨) 1
)
¨¨1 2
{
≠≠ 	
if
ÆÆ 
(
ÆÆ 
iterator
ÆÆ 
<=
ÆÆ *
LIMIT_OF_CARDS_FOR_ONE_ROUND
ÆÆ 8
)
ÆÆ8 9
{
ØØ 
return
∞∞ 
	ROUND_ONE
∞∞  
;
∞∞  !
}
±± 
else
≤≤ 
{
≥≥ 
return
¥¥ 
	ROUND_TWO
¥¥  
;
¥¥  !
}
µµ 
}
∂∂ 	
public
∏∏ 
int
∏∏ !
RegistryGamePlayers
∏∏ &
(
∏∏& '
int
∏∏' *
roomCode
∏∏+ 3
,
∏∏3 4
List
∏∏5 9
<
∏∏9 :!
PlayerPlayingInGame
∏∏: M
>
∏∏M N
playerInGames
∏∏O \
)
∏∏\ ]
{
ππ 	
int
∫∫ 
result
∫∫ 
=
∫∫ !
ExceptionDictionary
∫∫ ,
.
∫∫, -
SUCCESFULL_EVENT
∫∫- =
;
∫∫= >
var
ªª 
gameConsulted
ªª 
=
ªª 
GameDataOperation
ªª  1
.
ªª1 2
GetGameByRoomCode
ªª2 C
(
ªªC D
roomCode
ªªD L
)
ªªL M
;
ªªM N
if
ºº 
(
ºº 
gameConsulted
ºº 
.
ºº 
	CodeEvent
ºº '
==
ºº( *!
ExceptionDictionary
ºº+ >
.
ºº> ?
SUCCESFULL_EVENT
ºº? O
)
ººO P
{
ΩΩ 
foreach
ææ 
(
ææ 
var
ææ 
player
ææ #
in
ææ$ &
playerInGames
ææ' 4
)
ææ4 5
{
øø 
if
¿¿ 
(
¿¿ 
!
¿¿ .
 GuestPlayerManagerImplementation
¿¿ 9
.
¿¿9 :#
IsUserNameInBlackList
¿¿: O
(
¿¿O P
player
¿¿P V
.
¿¿V W
UserName
¿¿W _
)
¿¿_ `
)
¿¿` a
{
¡¡ 

GamePlayer
¬¬ "

gamePlayer
¬¬# -
=
¬¬. /
new
¬¬0 3
(
¬¬3 4
)
¬¬4 5
{
√√ 
PointsInGame
ƒƒ (
=
ƒƒ) *
player
ƒƒ+ 1
.
ƒƒ1 2
FinalPoints
ƒƒ2 =
,
ƒƒ= >
PlaceInGame
≈≈ '
=
≈≈( )
(
≈≈* +
short
≈≈+ 0
)
≈≈0 1
player
≈≈1 7
.
≈≈7 8"
NumberOfPlayerInGame
≈≈8 L
,
≈≈L M
Player_IdPlayer
∆∆ +
=
∆∆, -
player
∆∆. 4
.
∆∆4 5
IdPlayer
∆∆5 =
,
∆∆= >
Game_RoomCode
«« )
=
««* +
roomCode
««, 4
,
««4 5
Game
»»  
=
»»! "
gameConsulted
»»# 0
.
»»0 1
ObjectSaved
»»1 <
,
»»< =
}
…… 
;
…… 
int
   
isSaved
   #
=
  $ %
GameDataOperation
  & 7
.
  7 8&
SaveGamePlayerInDataBase
  8 P
(
  P Q

gamePlayer
  Q [
)
  [ \
;
  \ ]
if
ÀÀ 
(
ÀÀ 
isSaved
ÀÀ #
!=
ÀÀ$ &!
ExceptionDictionary
ÀÀ' :
.
ÀÀ: ;
SUCCESFULL_EVENT
ÀÀ; K
)
ÀÀK L
{
ÃÃ 
result
ÕÕ "
=
ÕÕ# $
isSaved
ÕÕ% ,
;
ÕÕ, -
}
ŒŒ 
}
œœ 
}
–– 
}
—— 
else
““ 
{
”” 
result
‘‘ 
=
‘‘ 
gameConsulted
‘‘ &
.
‘‘& '
	CodeEvent
‘‘' 0
;
‘‘0 1
}
’’ 
return
÷÷ 
result
÷÷ 
;
÷÷ 
}
◊◊ 	
}
ŸŸ 
}⁄⁄ ˇZ
úC:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameServer\JeopardyGame.Service\ServiceImplementation\RecoverPasswordImplementation.cs
	namespace 	
JeopardyGame
 
. 
Service 
. !
ServiceImplementation 4
{ 
public 

partial 
class )
RecoverPasswordImplementation 6
:7 8
IRecoverPassword9 I
{ 
private 
static 
readonly 
Object  &

objectLock' 1
=2 3
new4 7
object8 >
(> ?
)? @
;@ A
public 
int '
CreateCodeToRecoverPassWord .
(. /
string/ 5
userName6 >
,> ?
string@ F

emailTitleG Q
,Q R
stringS Y
	emailBodyZ c
)c d
{ 	
int 
resultToReturn 
=  
ExceptionDictionary! 4
.4 5
UNSUCCESFULL_EVENT5 G
;G H
lock 
( 

objectLock 
) 
{ 
try 
{ 
if 
( 
! 
string 
.  
IsNullOrEmpty  -
(- .
userName. 6
)6 7
)7 8
{ ,
 ConsultInformationImplementation 8
consultInformation9 K
=L M
newN Q,
 ConsultInformationImplementationR r
(r s
)s t
;t u
var 
userConsulted )
=* +
consultInformation, >
.> ?!
ConsultUserByUserName? T
(T U
userNameU ]
)] ^
;^ _
if 
( 
userConsulted )
.) *
	CodeEvent* 3
==4 6
ExceptionDictionary7 J
.J K
SUCCESFULL_EVENTK [
)[ \
{ 
if 
(  
!  !(
PasswordChangeCodeDictionary! =
.= >&
DoesPassWordCodeContaisKey> X
(X Y
userNameY a
)a b
)b c
{ ,
 EmailSenderManagerImplementation    @
emailSenderManager  A S
=  T U
new  V Y
(  Y Z
)  Z [
;  [ \
string!!  &
code!!' +
=!!, -#
GenerateCodeForPassword!!. E
(!!E F
)!!F G
;!!G H
var""  #
succes""$ *
=""+ ,
emailSenderManager""- ?
.""? @&
SentEmailToRecoverPassword""@ Z
(""Z [
userConsulted""[ h
.""h i
ObjectSaved""i t
,""t u

emailTitle	""v Ä
,
""Ä Å
code
""Ç Ü
+
""á à
$str
""â å
+
""ç é
	emailBody
""è ò
)
""ò ô
;
""ô ö
if##  "
(### $
succes##$ *
.##* +
	CodeEvent##+ 4
==##5 7
ExceptionDictionary##8 K
.##K L
SUCCESFULL_EVENT##L \
)##\ ]
{$$  !(
PasswordChangeCodeDictionary%%$ @
.%%@ A
AddTimerRegistry%%A Q
(%%Q R
userName%%R Z
,%%Z [
code%%\ `
)%%` a
;%%a b
resultToReturn&&$ 2
=&&3 4
ExceptionDictionary&&5 H
.&&H I
SUCCESFULL_EVENT&&I Y
;&&Y Z
Console''$ +
.''+ ,
	WriteLine'', 5
(''5 6
code''6 :
)'': ;
;''; <
}((  !
else))  $
{**  !
resultToReturn++$ 2
=++3 4
succes++5 ;
.++; <
	CodeEvent++< E
;++E F
},,  !
}-- 
else..  
{// 
resultToReturn00  .
=00/ 0
ExceptionDictionary001 D
.00D E"
USERNAME_ALREADY_EXIST00E [
;00[ \
}11 
}22 
else33 
{44 
resultToReturn55 *
=55+ ,
ExceptionDictionary55- @
.55@ A
NULL_PARAEMETER55A P
;55P Q
}66 
}77 
}88 
catch99 
(99 /
#CommunicationObjectFaultedException99 :
ex99; =
)99= >
{:: 
ExceptionHandler;; $
.;;$ %
LogException;;% 1
(;;1 2
ex;;2 4
,;;4 5
ExceptionDictionary;;6 I
.;;I J
FATAL_EXCEPTION;;J Y
);;Y Z
;;;Z [
}<< 
catch== 
(== 
TimeoutException== '
ex==( *
)==* +
{>> 
ExceptionHandler?? $
.??$ %
LogException??% 1
(??1 2
ex??2 4
,??4 5
ExceptionDictionary??6 I
.??I J
FATAL_EXCEPTION??J Y
)??Y Z
;??Z [
}@@ 
catchAA 
(AA "
CommunicationExceptionAA -
exAA. 0
)AA0 1
{BB 
ExceptionHandlerCC $
.CC$ %
LogExceptionCC% 1
(CC1 2
exCC2 4
,CC4 5
ExceptionDictionaryCC6 I
.CCI J
FATAL_EXCEPTIONCCJ Y
)CCY Z
;CCZ [
}DD 
catchEE 
(EE %
InvalidOperationExceptionEE 0
exEE1 3
)EE3 4
{FF 
ExceptionHandlerGG $
.GG$ %
LogExceptionGG% 1
(GG1 2
exGG2 4
,GG4 5
ExceptionDictionaryGG6 I
.GGI J
FATAL_EXCEPTIONGGJ Y
)GGY Z
;GGZ [
}HH 
}II 
returnJJ 
resultToReturnJJ !
;JJ! "
}KK 	
publicMM 
intMM '
VerifyCodeToRecoverPasswordMM .
(MM. /
stringMM/ 5
userNameMM6 >
,MM> ?
stringMM@ F
codeMMG K
)MMK L
{NN 	
intOO 
resultToReturnOO 
=OO  
ExceptionDictionaryOO! 4
.OO4 5
UNSUCCESFULL_EVENTOO5 G
;OOG H
tryPP 
{QQ 
ifRR 
(RR 
!RR 
stringRR 
.RR 
IsNullOrEmptyRR )
(RR) *
userNameRR* 2
)RR2 3
&&RR4 6
!RR7 8
stringRR8 >
.RR> ?
IsNullOrEmptyRR? L
(RRL M
codeRRM Q
)RRQ R
)RRR S
{SS ,
 ConsultInformationImplementationTT 4
consultInformationTT5 G
=TTH I
newTTJ M,
 ConsultInformationImplementationTTN n
(TTn o
)TTo p
;TTp q
varUU 
userConsultedUU %
=UU& '
consultInformationUU( :
.UU: ;!
ConsultUserByUserNameUU; P
(UUP Q
userNameUUQ Y
)UUY Z
;UUZ [
ifVV 
(VV 
userConsultedVV %
.VV% &
	CodeEventVV& /
==VV0 2
ExceptionDictionaryVV3 F
.VVF G
SUCCESFULL_EVENTVVG W
)VVW X
{WW 
ifXX 
(XX (
PasswordChangeCodeDictionaryXX 8
.XX8 9&
DoesPassWordCodeContaisKeyXX9 S
(XXS T
userNameXXT \
)XX\ ]
)XX] ^
{YY 
ifZZ 
(ZZ  (
PasswordChangeCodeDictionaryZZ  <
.ZZ< =
GetSpecificCodeZZ= L
(ZZL M
userNameZZM U
)ZZU V
.ZZV W
EqualsZZW ]
(ZZ] ^
codeZZ^ b
)ZZb c
)ZZc d
{[[ 
resultToReturn\\  .
=\\/ 0
ExceptionDictionary\\1 D
.\\D E
SUCCESFULL_EVENT\\E U
;\\U V(
PasswordChangeCodeDictionary]]  <
.]]< =
RemoveTimerRegistry]]= P
(]]P Q
userName]]Q Y
)]]Y Z
;]]Z [
}^^ 
else__  
{`` 
resultToReturnaa  .
=aa/ 0
ExceptionDictionaryaa1 D
.aaD E
INVALID_OPERATIONaaE V
;aaV W
}bb 
}cc 
elsedd 
{ee 
resultToReturnff *
=ff+ ,
ExceptionDictionaryff- @
.ff@ A
ARGUMENT_NULLffA N
;ffN O
}gg 
}hh 
elseii 
{jj 
resultToReturnkk &
=kk' (
ExceptionDictionarykk) <
.kk< =
NULL_PARAEMETERkk= L
;kkL M
}ll 
}mm 
}nn 
catchoo 
(oo /
#CommunicationObjectFaultedExceptionoo 6
exoo7 9
)oo9 :
{pp 
ExceptionHandlerqq  
.qq  !
LogExceptionqq! -
(qq- .
exqq. 0
,qq0 1
ExceptionDictionaryqq2 E
.qqE F
FATAL_EXCEPTIONqqF U
)qqU V
;qqV W
}rr 
catchss 
(ss 
TimeoutExceptionss #
exss$ &
)ss& '
{tt 
ExceptionHandleruu  
.uu  !
LogExceptionuu! -
(uu- .
exuu. 0
,uu0 1
ExceptionDictionaryuu2 E
.uuE F
FATAL_EXCEPTIONuuF U
)uuU V
;uuV W
}vv 
catchww 
(ww "
CommunicationExceptionww )
exww* ,
)ww, -
{xx 
ExceptionHandleryy  
.yy  !
LogExceptionyy! -
(yy- .
exyy. 0
,yy0 1
ExceptionDictionaryyy2 E
.yyE F
FATAL_EXCEPTIONyyF U
)yyU V
;yyV W
}zz 
catch{{ 
({{ %
InvalidOperationException{{ ,
ex{{- /
){{/ 0
{|| 
ExceptionHandler}}  
.}}  !
LogException}}! -
(}}- .
ex}}. 0
,}}0 1
ExceptionDictionary}}2 E
.}}E F
FATAL_EXCEPTION}}F U
)}}U V
;}}V W
}~~ 
return 
resultToReturn !
;! "
}
ÄÄ 	
private
ÉÉ 
string
ÉÉ %
GenerateCodeForPassword
ÉÉ .
(
ÉÉ. /
)
ÉÉ/ 0
{
ÑÑ 	
Random
ÖÖ 
randomNumber
ÖÖ 
=
ÖÖ  !
new
ÖÖ" %
Random
ÖÖ& ,
(
ÖÖ, -
)
ÖÖ- .
;
ÖÖ. /
int
ÜÜ &
fourDigitsAleatoryNumber
ÜÜ (
=
ÜÜ) *
randomNumber
ÜÜ+ 7
.
ÜÜ7 8
Next
ÜÜ8 <
(
ÜÜ< =
$num
ÜÜ= A
,
ÜÜA B
$num
ÜÜC G
)
ÜÜG H
;
ÜÜH I
char
áá "
firstRandomCharacter
áá %
=
áá& '
(
áá( )
char
áá) -
)
áá- .
randomNumber
áá. :
.
áá: ;
Next
áá; ?
(
áá? @
$char
áá@ C
,
ááC D
$char
ááE H
+
ááI J
$num
ááK L
)
ááL M
;
ááM N
char
àà #
secondRandomCharacter
àà &
=
àà' (
(
àà) *
char
àà* .
)
àà. /
randomNumber
àà/ ;
.
àà; <
Next
àà< @
(
àà@ A
$char
ààA D
,
ààD E
$char
ààF I
+
ààJ K
$num
ààL M
)
ààM N
;
ààN O
return
ââ 
$"
ââ 
{
ââ "
firstRandomCharacter
ââ *
}
ââ* +
{
ââ+ ,#
secondRandomCharacter
ââ, A
}
ââA B
{
ââB C&
fourDigitsAleatoryNumber
ââC [
:
ââ[ \
$str
ââ\ ^
}
ââ^ _
"
ââ_ `
;
ââ` a
}
ää 	
}
åå 
}èè ∆•
ñC:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameServer\JeopardyGame.Service\ServiceImplementation\ServicesReferenceAuthor.cs
	namespace 	
JeopardyGame
 
. 
Service 
. !
ServiceImplementation 4
{		 
public

 

partial

 
class

 #
ServicesReferenceAuthor

 0
:

1 2
ICheckUserLiving

3 C
{ )
CheckUserLivingImplementation %)
checkUserLivingImplementation& C
=D E
newF I
(I J
)J K
;K L
public 
int 
RenewLivingCallBack &
(& '
UserPojo' /
user0 4
)4 5
{ 	
return 
( 
( 
ICheckUserLiving %
)% &)
checkUserLivingImplementation& C
)C D
.D E
RenewLivingCallBackE X
(X Y
userY ]
)] ^
;^ _
} 	
public 
int '
SubscribeToICheckUserLiving .
(. /
UserPojo/ 7
user8 <
)< =
{ 	
return 
( 
( 
ICheckUserLiving %
)% &)
checkUserLivingImplementation& C
)C D
.D E'
SubscribeToICheckUserLivingE `
(` a
usera e
)e f
;f g
} 	
} 
public 

partial 
class #
ServicesReferenceAuthor 0
:1 2'
ICheckUserLivingUnsubscribe3 N
{ 4
(CheckUserLivingUnsubscribeImplementation 0+
livingUnsubscribeImplementation1 P
=Q R
newS V
(V W
)W X
;X Y
public 
void +
UnsubscribeFromICheckUserLiving 3
(3 4
UserPojo4 <
user= A
)A B
{ 	
( 
( '
ICheckUserLivingUnsubscribe )
)) *
this* .
.. /+
livingUnsubscribeImplementation/ N
)N O
.O P+
UnsubscribeFromICheckUserLivingP o
(o p
userp t
)t u
;u v
} 	
}   
public"" 

partial"" 
class"" #
ServicesReferenceAuthor"" 1
:""1 2
IUserManager""3 ?
{## %
UserManagerImplementation$$ !
UserManager$$" -
=$$. /
new$$0 3%
UserManagerImplementation$$4 M
($$M N
)$$N O
;$$O P
public&& 
GenericClass&& 
<&& 
int&& 
>&&  
SaveUser&&! )
(&&) *
UserPojo&&* 2
userPojoNew&&3 >
,&&> ?
string&&@ F
codeEntered&&G R
)&&R S
{'' 	
return(( 
((( 
((( 
IUserManager(( !
)((! "
UserManager((" -
)((- .
.((. /
SaveUser((/ 7
(((7 8
userPojoNew((8 C
,((C D
codeEntered((E P
)((P Q
;((Q R
})) 	
public++ 
GenericClass++ 
<++ 
int++ 
>++  
UpdateEmailUser++! 0
(++0 1
int++1 4
idUser++5 ;
,++; <
string++= C
email++D I
)++I J
{,, 	
return-- 
(-- 
(-- 
IUserManager-- !
)--! "
UserManager--" -
)--- .
.--. /
UpdateEmailUser--/ >
(--> ?
idUser--? E
,--E F
email--G L
)--L M
;--M N
}.. 	
public00 
GenericClass00 
<00 
int00 
>00  
UpdatePasswordUser00! 3
(003 4
string004 :
userName00; C
,00C D
string00E K
password00L T
)00T U
{11 	
return22 
(22 
(22 
IUserManager22 !
)22! "
UserManager22" -
)22- .
.22. /
UpdatePasswordUser22/ A
(22A B
userName22B J
,22J K
password22L T
)22T U
;22U V
}33 	
public55 
GenericClass55 
<55 
int55 
>55  
UpdatePlayerPhoto55! 2
(552 3
int553 6
idPlayer557 ?
,55? @
int55A D
imageId55E L
)55L M
{66 	
return77 
(77 
(77 
IUserManager77 !
)77! "
UserManager77" -
)77- .
.77. /
UpdatePlayerPhoto77/ @
(77@ A
idPlayer77A I
,77I J
imageId77K R
)77R S
;77S T
}88 	
public99 
GenericClass99 
<99 
int99 
>99  !
UpdateUserInformation99! 6
(996 7
int997 :
idUser99; A
,99A B
string99C I

editedName99J T
)99T U
{:: 	
return;; 
(;; 
(;; 
IUserManager;; !
);;! "
UserManager;;" -
);;- .
.;;. /!
UpdateUserInformation;;/ D
(;;D E
idUser;;E K
,;;K L

editedName;;M W
);;W X
;;;X Y
}<< 	
}>> 
public@@ 

partial@@ 
class@@ #
ServicesReferenceAuthor@@ 0
:@@1 2
IEmailSenderManager@@3 F
{AA ,
 EmailSenderManagerImplementationBB (,
 emailSenderManagerImplementationBB) I
=BBJ K
newBBL O,
 EmailSenderManagerImplementationBBP p
(BBp q
)BBq r
;BBr s
publicDD 
GenericClassDD 
<DD 
intDD 
>DD  0
$SentEmailConfirmationToCreateAccountDD! E
(DDE F
UserPojoDDF N
userDDO S
,DDS T
stringDDU [
subjectDD\ c
,DDc d
stringDDe k
bodyMessageDDl w
)DDw x
{EE 	
returnFF 
(FF 
(FF 
IEmailSenderManagerFF (
)FF( ),
 emailSenderManagerImplementationFF) I
)FFI J
.FFJ K0
$SentEmailConfirmationToCreateAccountFFK o
(FFo p
userFFp t
,FFt u
subjectFFv }
,FF} ~
bodyMessage	FF ä
)
FFä ã
;
FFã å
}GG 	
publicII 
GenericClassII 
<II 
intII 
>II  "
SentEmailForInvitationII! 7
(II7 8
stringII8 >
emailII? D
,IID E
stringIIF L
subjectIIM T
,IIT U
stringIIV \
bodyMessageII] h
)IIh i
{JJ 	
returnKK 
(KK 
(KK 
IEmailSenderManagerKK (
)KK( ),
 emailSenderManagerImplementationKK) I
)KKI J
.KKJ K"
SentEmailForInvitationKKK a
(KKa b
emailKKb g
,KKg h
subjectKKi p
,KKp q
bodyMessageKKr }
)KK} ~
;KK~ 
}LL 	
publicNN 
GenericClassNN 
<NN 
intNN 
>NN  #
SentEmailInvitingToGameNN! 8
(NN8 9
UserPojoNN9 A
userNNB F
,NNF G
stringNNH N
subjectNNO V
,NNV W
stringNNX ^
bodyMessageNN_ j
)NNj k
{OO 	
returnPP 
(PP 
(PP 
IEmailSenderManagerPP (
)PP( ),
 emailSenderManagerImplementationPP) I
)PPI J
.PPJ K#
SentEmailInvitingToGamePPK b
(PPb c
userPPc g
,PPg h
subjectPPi p
,PPp q
bodyMessagePPr }
)PP} ~
;PP~ 
}QQ 	
}RR 
publicTT 

partialTT 
classTT #
ServicesReferenceAuthorTT 0
:TT1 2
ILogInVerificationTT3 E
{UU +
LoginVerificationImplementationVV '&
verificationImplementationVV( B
=VVC D
newVVE H+
LoginVerificationImplementationVVI h
(VVh i
)VVi j
;VVj k
publicXX 
GenericClassXX 
<XX 
intXX 
>XX  
ValidateCredentialsXX! 4
(XX4 5
UserValidateXX5 A
newUserValidateXXB Q
)XXQ R
{YY 	
returnZZ 
(ZZ 
(ZZ 
ILogInVerificationZZ '
)ZZ' (&
verificationImplementationZZ( B
)ZZB C
.ZZC D
ValidateCredentialsZZD W
(ZZW X
newUserValidateZZX g
)ZZg h
;ZZh i
}[[ 	
public]] 
int]] 0
$ValidateThereIsOnlyOneAActiveAccount]] 7
(]]7 8
string]]8 >
userName]]? G
)]]G H
{^^ 	
return__ 
(__ 
(__ 
ILogInVerification__ '
)__' (&
verificationImplementation__( B
)__B C
.__C D0
$ValidateThereIsOnlyOneAActiveAccount__D h
(__h i
userName__i q
)__q r
;__r s
}`` 	
}aa 
publiccc 

partialcc 
classcc #
ServicesReferenceAuthorcc 0
:cc1 2
IGuestPlayerManagercc3 F
{dd ,
 GuestPlayerManagerImplementationee (
guestPlayerManageree) ;
=ee< =
newee> A
(eeA B
)eeB C
;eeC D
publicgg 
GenericClassgg 
<gg 
UserPojogg $
>gg$ %
CreateUserForGuestgg& 8
(gg8 9
)gg9 :
{hh 	
returnii 
(ii 
(ii 
IGuestPlayerManagerii (
)ii( )
guestPlayerManagerii) ;
)ii; <
.ii< =
CreateUserForGuestii= O
(iiO P
)iiP Q
;iiQ R
}jj 	
publicll 
voidll 
DeleteGuestll 
(ll  
intll  #
idUserll$ *
)ll* +
{mm 	
(nn 
(nn 
IGuestPlayerManagernn !
)nn! "
guestPlayerManagernn" 4
)nn4 5
.nn5 6
DeleteGuestnn6 A
(nnA B
idUsernnB H
)nnH I
;nnI J
}oo 	
}pp 
publicrr 

partialrr 
classrr #
ServicesReferenceAuthorrr 0
:rr1 2$
ILobbyCodeAuthenticationrr3 K
{ss #
LobbyCodeAuthenticationtt 
codeAuthenticationtt  2
=tt3 4
newtt5 8
(tt8 9
)tt9 :
;tt: ;
publicvv 
GenericClassvv 
<vv 
intvv 
>vv  
VerifyRoomCodeExistvv! 4
(vv4 5
intvv5 8
roomCodevv9 A
,vvA B
intvvC F
idUservvG M
)vvM N
{ww 	
returnxx 
(xx 
(xx $
ILobbyCodeAuthenticationxx -
)xx- .
codeAuthenticationxx. @
)xx@ A
.xxA B
VerifyRoomCodeExistxxB U
(xxU V
roomCodexxV ^
,xx^ _
idUserxx` f
)xxf g
;xxg h
}yy 	
}zz 
public~~ 

partial~~ 
class~~ #
ServicesReferenceAuthor~~ 0
:~~1 2"
IValidateUserExistance~~3 I
{ 1
#ValidateUserExistenceImplementation
ÄÄ +
validate
ÄÄ, 4
=
ÄÄ5 6
new
ÄÄ7 :1
#ValidateUserExistenceImplementation
ÄÄ; ^
(
ÄÄ^ _
)
ÄÄ_ `
;
ÄÄ` a
public
ÇÇ 
GenericClass
ÇÇ 
<
ÇÇ 
int
ÇÇ 
>
ÇÇ  
EmailAlreadyExist
ÇÇ! 2
(
ÇÇ2 3
string
ÇÇ3 9
email
ÇÇ: ?
)
ÇÇ? @
{
ÉÉ 	
return
ÑÑ 
(
ÑÑ 
(
ÑÑ $
IValidateUserExistance
ÑÑ +
)
ÑÑ+ ,
validate
ÑÑ, 4
)
ÑÑ4 5
.
ÑÑ5 6
EmailAlreadyExist
ÑÑ6 G
(
ÑÑG H
email
ÑÑH M
)
ÑÑM N
;
ÑÑN O
}
ÖÖ 	
public
áá 
GenericClass
áá 
<
áá 
int
áá 
>
áá  
UserAlreadyExist
áá! 1
(
áá1 2
UserPojo
áá2 :
newUser
áá; B
)
ááB C
{
àà 	
return
ââ 
(
ââ 
(
ââ $
IValidateUserExistance
ââ +
)
ââ+ ,
validate
ââ, 4
)
ââ4 5
.
ââ5 6
UserAlreadyExist
ââ6 F
(
ââF G
newUser
ââG N
)
ââN O
;
ââO P
}
ää 	
}
ãã 
public
çç 

partial
çç 
class
çç %
ServicesReferenceAuthor
çç 0
:
çç0 1
IConsultFriends
çç2 A
{
éé *
ConsultFriendsImplementation
èè $*
friendsManagerImplementation
èè% A
=
èèB C
new
èèD G*
ConsultFriendsImplementation
èèH d
(
èèd e
)
èèe f
;
èèf g
public
ëë 
GenericClass
ëë 
<
ëë 
List
ëë  
<
ëë  !$
FriendBasicInformation
ëë! 7
>
ëë7 8
>
ëë8 9#
GetUserFriendRequests
ëë: O
(
ëëO P
UserPojo
ëëP X
user
ëëY ]
)
ëë] ^
{
íí 	
return
ìì 
(
ìì 
(
ìì 
IConsultFriends
ìì $
)
ìì$ %*
friendsManagerImplementation
ìì% A
)
ììA B
.
ììB C#
GetUserFriendRequests
ììC X
(
ììX Y
user
ììY ]
)
ìì] ^
;
ìì^ _
}
îî 	
public
ïï 
GenericClass
ïï 
<
ïï 
List
ïï  
<
ïï  !$
FriendBasicInformation
ïï! 7
>
ïï7 8
>
ïï8 9
GetUserFriends
ïï: H
(
ïïH I
UserPojo
ïïI Q
user
ïïR V
)
ïïV W
{
ññ 	
return
óó 
(
óó 
(
óó 
IConsultFriends
óó $
)
óó$ %*
friendsManagerImplementation
óó% A
)
óóA B
.
óóB C
GetUserFriends
óóC Q
(
óóQ R
user
óóR V
)
óóV W
;
óóW X
}
òò 	
public
ôô 
GenericClass
ôô 
<
ôô 
List
ôô  
<
ôô  !$
FriendBasicInformation
ôô! 7
>
ôô7 8
>
ôô8 9 
GetUsersNotFriends
ôô: L
(
ôôL M
UserPojo
ôôM U
user
ôôV Z
)
ôôZ [
{
öö 	
return
õõ 
(
õõ 
(
õõ 
IConsultFriends
õõ $
)
õõ$ %*
friendsManagerImplementation
õõ% A
)
õõA B
.
õõB C 
GetUsersNotFriends
õõC U
(
õõU V
user
õõV Z
)
õõZ [
;
õõ[ \
}
úú 	
}
ùù 
public
üü 

partial
üü 
class
üü %
ServicesReferenceAuthor
üü 0
:
üü0 1%
IConsultUserInformation
üü2 I
{
†† .
 ConsultInformationImplementation
°° ('
consultInfoImplementation
°°) B
=
°°C D
new
°°E H.
 ConsultInformationImplementation
°°I i
(
°°i j
)
°°j k
;
°°k l
public
¢¢ 
GenericClass
¢¢ 
<
¢¢ 

PlayerPojo
¢¢ &
>
¢¢& '
ConsultPlayerById
¢¢( 9
(
¢¢9 :
int
¢¢: =
idPlayer
¢¢> F
)
¢¢F G
{
££ 	
return
§§ 
(
§§ 
(
§§ %
IConsultUserInformation
§§ ,
)
§§, -'
consultInfoImplementation
§§- F
)
§§F G
.
§§G H
ConsultPlayerById
§§H Y
(
§§Y Z
idPlayer
§§Z b
)
§§b c
;
§§c d
}
•• 	
public
¶¶ 
GenericClass
¶¶ 
<
¶¶ 

PlayerPojo
¶¶ &
>
¶¶& '#
ConsultPlayerByIdUser
¶¶( =
(
¶¶= >
int
¶¶> A
idUser
¶¶B H
)
¶¶H I
{
ßß 	
return
®® 
(
®® 
(
®® %
IConsultUserInformation
®® ,
)
®®, -'
consultInfoImplementation
®®- F
)
®®F G
.
®®G H#
ConsultPlayerByIdUser
®®H ]
(
®®] ^
idUser
®®^ d
)
®®d e
;
®®e f
}
©© 	
public
™™ 
GenericClass
™™ 
<
™™ 
UserPojo
™™ $
>
™™$ %
ConsultUserById
™™& 5
(
™™5 6
int
™™6 9
idUser
™™: @
)
™™@ A
{
´´ 	
return
¨¨ 
(
¨¨ 
(
¨¨ %
IConsultUserInformation
¨¨ ,
)
¨¨, -'
consultInfoImplementation
¨¨- F
)
¨¨F G
.
¨¨G H
ConsultUserById
¨¨H W
(
¨¨W X
idUser
¨¨X ^
)
¨¨^ _
;
¨¨_ `
}
≠≠ 	
public
ÆÆ 
GenericClass
ÆÆ 
<
ÆÆ 
UserPojo
ÆÆ $
>
ÆÆ$ %#
ConsultUserByIdPlayer
ÆÆ& ;
(
ÆÆ; <
int
ÆÆ< ?
idPlayer
ÆÆ@ H
)
ÆÆH I
{
ØØ 	
return
∞∞ 
(
∞∞ 
(
∞∞ %
IConsultUserInformation
∞∞ ,
)
∞∞, -'
consultInfoImplementation
∞∞- F
)
∞∞F G
.
∞∞G H#
ConsultUserByIdPlayer
∞∞H ]
(
∞∞] ^
idPlayer
∞∞^ f
)
∞∞f g
;
∞∞g h
}
±± 	
public
≤≤ 
GenericClass
≤≤ 
<
≤≤ 
UserPojo
≤≤ $
>
≤≤$ %#
ConsultUserByUserName
≤≤& ;
(
≤≤; <
string
≤≤< B
userName
≤≤C K
)
≤≤K L
{
≥≥ 	
return
¥¥ 
(
¥¥ 
(
¥¥ %
IConsultUserInformation
¥¥ ,
)
¥¥, -'
consultInfoImplementation
¥¥- F
)
¥¥F G
.
¥¥G H#
ConsultUserByUserName
¥¥H ]
(
¥¥] ^
userName
¥¥^ f
)
¥¥f g
;
¥¥g h
}
µµ 	
public
∑∑ 
GenericClass
∑∑ 
<
∑∑ 
List
∑∑  
<
∑∑  !

PlayerInfo
∑∑! +
>
∑∑+ ,
>
∑∑, -#
GetPlayersInformation
∑∑. C
(
∑∑C D
int
∑∑D G
idUserConsulting
∑∑H X
)
∑∑X Y
{
∏∏ 	
return
ππ 
(
ππ 
(
ππ %
IConsultUserInformation
ππ ,
)
ππ, -'
consultInfoImplementation
ππ- F
)
ππF G
.
ππG H#
GetPlayersInformation
ππH ]
(
ππ] ^
idUserConsulting
ππ^ n
)
ππn o
;
ππo p
}
∫∫ 	
}
ªª 
public
ΩΩ 

partial
ΩΩ 
class
ΩΩ %
ServicesReferenceAuthor
ΩΩ 0
:
ΩΩ1 2(
IAvailabilityUserManagment
ΩΩ3 M
{
ææ 4
&NotifyUserIsNotAvailableImplementation
øø .&
notifyUserIsNotAvailable
øø/ G
=
øøH I
new
øøJ M
(
øøM N
)
øøN O
;
øøO P
public
¡¡ 
void
¡¡ 
PlayerIsAvailable
¡¡ %
(
¡¡% &
int
¡¡& )
idNewActiveUser
¡¡* 9
)
¡¡9 :
{
¬¬ 	
(
√√ 
(
√√ (
IAvailabilityUserManagment
√√ (
)
√√( )&
notifyUserIsNotAvailable
√√) A
)
√√A B
.
√√B C
PlayerIsAvailable
√√C T
(
√√T U
idNewActiveUser
√√U d
)
√√d e
;
√√e f
}
ƒƒ 	
public
∆∆ 
void
∆∆ "
PlayerIsNotAvailable
∆∆ (
(
∆∆( )
int
∆∆) ,!
idUserDisconnecting
∆∆- @
)
∆∆@ A
{
«« 	
(
»» 
(
»» (
IAvailabilityUserManagment
»» (
)
»»( )&
notifyUserIsNotAvailable
»») A
)
»»A B
.
»»B C"
PlayerIsNotAvailable
»»C W
(
»»W X!
idUserDisconnecting
»»X k
)
»»k l
;
»»l m
}
…… 	
public
ÀÀ 
void
ÀÀ 
PlayerIsPlaying
ÀÀ #
(
ÀÀ# $
int
ÀÀ$ '
idUserPlaying
ÀÀ( 5
)
ÀÀ5 6
{
ÃÃ 	
(
ÕÕ 
(
ÕÕ (
IAvailabilityUserManagment
ÕÕ (
)
ÕÕ( )&
notifyUserIsNotAvailable
ÕÕ) A
)
ÕÕA B
.
ÕÕB C
PlayerIsPlaying
ÕÕC R
(
ÕÕR S
idUserPlaying
ÕÕS `
)
ÕÕ` a
;
ÕÕa b
}
ŒŒ 	
}
œœ 
public
—— 

partial
—— 
class
—— %
ServicesReferenceAuthor
—— 0
:
——1 2
IRecoverPassword
——3 C
{
““ +
RecoverPasswordImplementation
”” %+
recoverPasswordImplementation
””& C
=
””D E
new
””F I
(
””I J
)
””J K
;
””K L
public
’’ 
int
’’ )
CreateCodeToRecoverPassWord
’’ .
(
’’. /
string
’’/ 5
userName
’’6 >
,
’’> ?
string
’’@ F

emailTitle
’’G Q
,
’’Q R
string
’’S Y
	emailBody
’’Z c
)
’’c d
{
÷÷ 	
return
◊◊ 
(
◊◊ 
(
◊◊ 
IRecoverPassword
◊◊ %
)
◊◊% &+
recoverPasswordImplementation
◊◊& C
)
◊◊C D
.
◊◊D E)
CreateCodeToRecoverPassWord
◊◊E `
(
◊◊` a
userName
◊◊a i
,
◊◊i j

emailTitle
◊◊k u
,
◊◊u v
	emailBody◊◊w Ä
)◊◊Ä Å
;◊◊Å Ç
}
ÿÿ 	
public
⁄⁄ 
int
⁄⁄ )
VerifyCodeToRecoverPassword
⁄⁄ .
(
⁄⁄. /
string
⁄⁄/ 5
userName
⁄⁄6 >
,
⁄⁄> ?
string
⁄⁄@ F
code
⁄⁄G K
)
⁄⁄K L
{
€€ 	
return
‹‹ 
(
‹‹ 
(
‹‹ 
IRecoverPassword
‹‹ %
)
‹‹% &+
recoverPasswordImplementation
‹‹& C
)
‹‹C D
.
‹‹D E)
VerifyCodeToRecoverPassword
‹‹E `
(
‹‹` a
userName
‹‹a i
,
‹‹i j
code
‹‹k o
)
‹‹o p
;
‹‹p q
}
›› 	
}
ﬁﬁ 
[
‡‡ 
ServiceBehavior
‡‡ 
(
‡‡ 
ConcurrencyMode
‡‡ $
=
‡‡% &
ConcurrencyMode
‡‡' 6
.
‡‡6 7
	Reentrant
‡‡7 @
)
‡‡@ A
]
‡‡A B
public
·· 

partial
·· 
class
·· %
ServicesReferenceAuthor
·· 0
:
··1 2%
INotifyUserAvailability
··3 J
,
··J K#
IFriendManagerActions
··L a
,
··a b
ILobbyActions
··c p
,
··p q
	ILiveChat
··r {
,
··{ |
IGameActions··} â
,··â ä
IChatForTeams··ã ò
{
‚‚ 2
$NotifyUserAvailabilityImplementation
„„ ,$
NotifyUserAvailability
„„- C
=
„„D E
new
„„F I2
$NotifyUserAvailabilityImplementation
„„J n
(
„„n o
)
„„o p
;
„„p q0
"FriendManagerActionsImplementation
‰‰ *#
NotifyFriendlyActions
‰‰+ @
=
‰‰A B
new
‰‰C F0
"FriendManagerActionsImplementation
‰‰G i
(
‰‰i j
)
‰‰j k
;
‰‰k l(
LobbyActionsImplementation
ÂÂ "
LobbyActions
ÂÂ# /
=
ÂÂ0 1
new
ÂÂ2 5(
LobbyActionsImplementation
ÂÂ6 P
(
ÂÂP Q
)
ÂÂQ R
;
ÂÂR S$
LiveChatImplementation
ÊÊ 
LiveChat
ÊÊ '
=
ÊÊ( )
new
ÊÊ* -$
LiveChatImplementation
ÊÊ. D
(
ÊÊD E
)
ÊÊE F
;
ÊÊF G'
GameActionsImplementation
ÁÁ !
GameActions
ÁÁ" -
=
ÁÁ. /
new
ÁÁ0 3'
GameActionsImplementation
ÁÁ4 M
(
ÁÁM N
)
ÁÁN O
;
ÁÁO P(
ChatForTeamsImplementation
ËË "
TeamChat
ËË# +
=
ËË, -
new
ËË. 1(
ChatForTeamsImplementation
ËË2 L
(
ËËL M
)
ËËM N
;
ËËN O
public
ÍÍ 
GenericClass
ÍÍ 
<
ÍÍ 
bool
ÍÍ  
>
ÍÍ  ! 
CreateChatForLobby
ÍÍ" 4
(
ÍÍ4 5
int
ÍÍ5 8
roomCode
ÍÍ9 A
,
ÍÍA B
int
ÍÍC F
idAdmin
ÍÍG N
)
ÍÍN O
{
ÎÎ 	
return
ÏÏ 
(
ÏÏ 
(
ÏÏ 
	ILiveChat
ÏÏ 
)
ÏÏ 
LiveChat
ÏÏ '
)
ÏÏ' (
.
ÏÏ( ) 
CreateChatForLobby
ÏÏ) ;
(
ÏÏ; <
roomCode
ÏÏ< D
,
ÏÏD E
idAdmin
ÏÏF M
)
ÏÏM N
;
ÏÏN O
}
ÌÌ 	
public
ÔÔ 
GenericClass
ÔÔ 
<
ÔÔ 
int
ÔÔ 
>
ÔÔ  
CreateNewLobby
ÔÔ! /
(
ÔÔ/ 0
int
ÔÔ0 3
roomCode
ÔÔ4 <
,
ÔÔ< =
int
ÔÔ> A
idUser
ÔÔB H
)
ÔÔH I
{
 	
return
ÒÒ 
(
ÒÒ 
(
ÒÒ 
ILobbyActions
ÒÒ "
)
ÒÒ" #
LobbyActions
ÒÒ# /
)
ÒÒ/ 0
.
ÒÒ0 1
CreateNewLobby
ÒÒ1 ?
(
ÒÒ? @
roomCode
ÒÒ@ H
,
ÒÒH I
idUser
ÒÒJ P
)
ÒÒP Q
;
ÒÒQ R
}
ÚÚ 	
public
ÙÙ 
GenericClass
ÙÙ 
<
ÙÙ 
List
ÙÙ  
<
ÙÙ  !
MessageChat
ÙÙ! ,
>
ÙÙ, -
>
ÙÙ- .
GetAllMessages
ÙÙ/ =
(
ÙÙ= >
int
ÙÙ> A
roomCode
ÙÙB J
,
ÙÙJ K
int
ÙÙL O
idUser
ÙÙP V
)
ÙÙV W
{
ıı 	
return
ˆˆ 
(
ˆˆ 
(
ˆˆ 
	ILiveChat
ˆˆ 
)
ˆˆ 
LiveChat
ˆˆ '
)
ˆˆ' (
.
ˆˆ( )
GetAllMessages
ˆˆ) 7
(
ˆˆ7 8
roomCode
ˆˆ8 @
,
ˆˆ@ A
idUser
ˆˆB H
)
ˆˆH I
;
ˆˆI J
}
˜˜ 	
public
˘˘ 
GenericClass
˘˘ 
<
˘˘ 
int
˘˘ 
>
˘˘  
JoinIntoLobby
˘˘! .
(
˘˘. /
int
˘˘/ 2
roomCode
˘˘3 ;
,
˘˘; <
int
˘˘= @
idUser
˘˘A G
)
˘˘G H
{
˙˙ 	
return
˚˚ 
(
˚˚ 
(
˚˚ 
ILobbyActions
˚˚ "
)
˚˚" #
LobbyActions
˚˚# /
)
˚˚/ 0
.
˚˚0 1
JoinIntoLobby
˚˚1 >
(
˚˚> ?
roomCode
˚˚? G
,
˚˚G H
idUser
˚˚I O
)
˚˚O P
;
˚˚P Q
}
¸¸ 	
public
˛˛ 
void
˛˛ !
RegisterForTeamChat
˛˛ '
(
˛˛' (
int
˛˛( +
idUser
˛˛, 2
)
˛˛2 3
{
ˇˇ 	
(
ÄÄ 
(
ÄÄ 
IChatForTeams
ÄÄ 
)
ÄÄ 
TeamChat
ÄÄ $
)
ÄÄ$ %
.
ÄÄ% &!
RegisterForTeamChat
ÄÄ& 9
(
ÄÄ9 :
idUser
ÄÄ: @
)
ÄÄ@ A
;
ÄÄA B
}
ÅÅ 	
public
ÉÉ 
GenericClass
ÉÉ 
<
ÉÉ 
int
ÉÉ 
>
ÉÉ  '
RegisterFriendManagerUser
ÉÉ! :
(
ÉÉ: ;
int
ÉÉ; >!
idUserFriendManager
ÉÉ? R
)
ÉÉR S
{
ÑÑ 	
return
ÖÖ 
(
ÖÖ 
(
ÖÖ #
IFriendManagerActions
ÖÖ *
)
ÖÖ* +#
NotifyFriendlyActions
ÖÖ+ @
)
ÖÖ@ A
.
ÖÖA B'
RegisterFriendManagerUser
ÖÖB [
(
ÖÖ[ \!
idUserFriendManager
ÖÖ\ o
)
ÖÖo p
;
ÖÖp q
}
ÜÜ 	
public
àà 
int
àà ,
RenewFriendManagerUserCallBack
àà 1
(
àà1 2
int
àà2 5!
idUserFriendManager
àà6 I
)
ààI J
{
ââ 	
return
ää 
(
ää 
(
ää #
IFriendManagerActions
ää *
)
ää* +#
NotifyFriendlyActions
ää+ @
)
ää@ A
.
ääA B,
RenewFriendManagerUserCallBack
ääB `
(
ää` a!
idUserFriendManager
ääa t
)
äät u
;
ääu v
}
ãã 	
public
çç 
int
çç 
RenewGameCallBack
çç $
(
çç$ %
int
çç% (
roomCode
çç) 1
,
çç1 2
int
çç3 6
idUser
çç7 =
)
çç= >
{
éé 	
return
èè 
(
èè 
(
èè 
IGameActions
èè !
)
èè! "
GameActions
èè" -
)
èè- .
.
èè. /
RenewGameCallBack
èè/ @
(
èè@ A
roomCode
èèA I
,
èèI J
idUser
èèK Q
)
èèQ R
;
èèR S
}
êê 	
public
íí 
int
íí #
RenewLiveChatCallBack
íí (
(
íí( )
int
íí) ,
roomCode
íí- 5
,
íí5 6
int
íí7 :
idUser
íí; A
)
ííA B
{
ìì 	
return
îî 
(
îî 
(
îî 
	ILiveChat
îî 
)
îî 
LiveChat
îî '
)
îî' (
.
îî( )#
RenewLiveChatCallBack
îî) >
(
îî> ?
roomCode
îî? G
,
îîG H
idUser
îîI O
)
îîO P
;
îîP Q
}
ïï 	
public
óó 
int
óó  
RenewLobbyCallBack
óó %
(
óó% &
int
óó& )
roomCode
óó* 2
,
óó2 3
int
óó4 7
idUser
óó8 >
)
óó> ?
{
òò 	
return
ôô 
(
ôô 
(
ôô 
ILobbyActions
ôô "
)
ôô" #
LobbyActions
ôô# /
)
ôô/ 0
.
ôô0 1 
RenewLobbyCallBack
ôô1 C
(
ôôC D
roomCode
ôôD L
,
ôôL M
idUser
ôôN T
)
ôôT U
;
ôôU V
}
öö 	
public
úú 
void
úú +
RenewNotifyAvailabityCallBack
úú 1
(
úú1 2
int
úú2 5
idUser
úú6 <
)
úú< =
{
ùù 	
(
ûû 
(
ûû %
INotifyUserAvailability
ûû %
)
ûû% &$
NotifyUserAvailability
ûû& <
)
ûû< =
.
ûû= >+
RenewNotifyAvailabityCallBack
ûû> [
(
ûû[ \
idUser
ûû\ b
)
ûûb c
;
ûûc d
}
üü 	
public
°° 
int
°° #
RenewTeamChatCallBack
°° (
(
°°( )
int
°°) ,
idUser
°°- 3
)
°°3 4
{
¢¢ 	
return
££ 
(
££ 
(
££ 
IChatForTeams
££ "
)
££" #
TeamChat
££# +
)
££+ ,
.
££, -#
RenewTeamChatCallBack
££- B
(
££B C
idUser
££C I
)
££I J
;
££J K
}
§§ 	
public
¶¶ 
void
¶¶ 2
$SubscribeToAvailabityCallBackChannel
¶¶ 8
(
¶¶8 9
int
¶¶9 <
idNewActiveUser
¶¶= L
)
¶¶L M
{
ßß 	
(
®® 
(
®® %
INotifyUserAvailability
®® %
)
®®% &$
NotifyUserAvailability
®®& <
)
®®< =
.
®®= >2
$SubscribeToAvailabityCallBackChannel
®®> b
(
®®b c
idNewActiveUser
®®c r
)
®®r s
;
®®s t
}
©© 	
public
´´ 
void
´´ %
SubscribeToGameCallBack
´´ +
(
´´+ ,
int
´´, /
roomCode
´´0 8
,
´´8 9
int
´´: =
idUserSubscribing
´´> O
,
´´O P
int
´´Q T
idAvatar
´´U ]
)
´´] ^
{
¨¨ 	
(
≠≠ 
(
≠≠ 
IGameActions
≠≠ 
)
≠≠ 
GameActions
≠≠ &
)
≠≠& '
.
≠≠' (%
SubscribeToGameCallBack
≠≠( ?
(
≠≠? @
roomCode
≠≠@ H
,
≠≠H I
idUserSubscribing
≠≠J [
,
≠≠[ \
idAvatar
≠≠] e
)
≠≠e f
;
≠≠f g
}
ÆÆ 	
}
ØØ 
public
±± 

partial
±± 
class
±± %
ServicesReferenceAuthor
±± 0
:
±±1 2$
IUserCreateAccountCode
±±3 I
{
≤≤ 1
#UserCreateAccountCodeImplementation
≥≥ +-
createAccountCodeImplementation
≥≥, K
=
≥≥L M
new
≥≥N Q
(
≥≥Q R
)
≥≥R S
;
≥≥S T
public
µµ 
GenericClass
µµ 
<
µµ 
int
µµ 
>
µµ  -
AddUserToConfirmationDictionary
µµ! @
(
µµ@ A
UserPojo
µµA I
newUser
µµJ Q
)
µµQ R
{
∂∂ 	
return
∑∑ 
(
∑∑ 
(
∑∑ $
IUserCreateAccountCode
∑∑ +
)
∑∑+ ,-
createAccountCodeImplementation
∑∑, K
)
∑∑K L
.
∑∑L M-
AddUserToConfirmationDictionary
∑∑M l
(
∑∑l m
newUser
∑∑m t
)
∑∑t u
;
∑∑u v
}
∏∏ 	
public
∫∫ 
int
∫∫ 
CheckCodeEntered
∫∫ #
(
∫∫# $
UserPojo
∫∫$ ,
newUser
∫∫- 4
,
∫∫4 5
string
∫∫6 <
codeEntered
∫∫= H
)
∫∫H I
{
ªª 	
return
ºº 
(
ºº 
(
ºº $
IUserCreateAccountCode
ºº +
)
ºº+ ,-
createAccountCodeImplementation
ºº, K
)
ººK L
.
ººL M
CheckCodeEntered
ººM ]
(
ºº] ^
newUser
ºº^ e
,
ººe f
codeEntered
ººg r
)
ººr s
;
ººs t
}
ΩΩ 	
public
øø 
int
øø 

ResendCode
øø 
(
øø 
UserPojo
øø &
user
øø' +
)
øø+ ,
{
¿¿ 	
return
¡¡ 
(
¡¡ 
(
¡¡ $
IUserCreateAccountCode
¡¡ +
)
¡¡+ ,-
createAccountCodeImplementation
¡¡, K
)
¡¡K L
.
¡¡L M

ResendCode
¡¡M W
(
¡¡W X
user
¡¡X \
)
¡¡\ ]
;
¡¡] ^
}
¬¬ 	
public
ƒƒ 
void
ƒƒ %
TakeUserOutOfDictionary
ƒƒ +
(
ƒƒ+ ,
UserPojo
ƒƒ, 4
user
ƒƒ5 9
)
ƒƒ9 :
{
≈≈ 	
(
∆∆ 
(
∆∆ $
IUserCreateAccountCode
∆∆ $
)
∆∆$ %-
createAccountCodeImplementation
∆∆% D
)
∆∆D E
.
∆∆E F%
TakeUserOutOfDictionary
∆∆F ]
(
∆∆] ^
user
∆∆^ b
)
∆∆b c
;
∆∆c d
}
«« 	
}
»» 
public
   

partial
   
class
   %
ServicesReferenceAuthor
   0
:
  1 2,
IFriendManagerActionOperations
  3 Q
{
ÀÀ 9
+FriendManagerActionsOperationImplementation
ÃÃ 39
+friendManagerActionsOperationImplementation
ÃÃ4 _
=
ÃÃ` a
new
ÃÃb e
(
ÃÃe f
)
ÃÃf g
;
ÃÃg h
public
ŒŒ 
void
ŒŒ !
AcceptFriendRequest
ŒŒ '
(
ŒŒ' (
int
ŒŒ( +
idPlayerAccepting
ŒŒ, =
,
ŒŒ= >
int
ŒŒ? B
idUserRequesting
ŒŒC S
)
ŒŒS T
{
œœ 	
(
–– 
(
–– ,
IFriendManagerActionOperations
–– ,
)
––, -9
+friendManagerActionsOperationImplementation
––- X
)
––X Y
.
––Y Z!
AcceptFriendRequest
––Z m
(
––m n
idPlayerAccepting
––n 
,–– Ä 
idUserRequesting––Å ë
)––ë í
;––í ì
}
—— 	
public
”” 
GenericClass
”” 
<
”” 
int
”” 
>
””  
BanUser
””! (
(
””( )
int
””) ,
idPlayerBanned
””- ;
,
””; <
int
””= @
idUserBanning
””A N
)
””N O
{
‘‘ 	
return
’’ 
(
’’ 
(
’’ ,
IFriendManagerActionOperations
’’ 3
)
’’3 49
+friendManagerActionsOperationImplementation
’’4 _
)
’’_ `
.
’’` a
BanUser
’’a h
(
’’h i
idPlayerBanned
’’i w
,
’’w x
idUserBanning’’y Ü
)’’Ü á
;’’á à
}
÷÷ 	
public
ÿÿ 
void
ÿÿ "
DeclineFriendRequest
ÿÿ (
(
ÿÿ( )
int
ÿÿ) ,
idPlayerDeclining
ÿÿ- >
,
ÿÿ> ?
int
ÿÿ@ C
idUserRequesting
ÿÿD T
)
ÿÿT U
{
ŸŸ 	
(
⁄⁄ 
(
⁄⁄ ,
IFriendManagerActionOperations
⁄⁄ ,
)
⁄⁄, -9
+friendManagerActionsOperationImplementation
⁄⁄- X
)
⁄⁄X Y
.
⁄⁄Y Z"
DeclineFriendRequest
⁄⁄Z n
(
⁄⁄n o 
idPlayerDeclining⁄⁄o Ä
,⁄⁄Ä Å 
idUserRequesting⁄⁄Ç í
)⁄⁄í ì
;⁄⁄ì î
}
€€ 	
public
›› 
void
›› &
EliminateUserFromFriends
›› ,
(
››, -
int
››- 0
idPlayerDeleting
››1 A
,
››A B
int
››C F
idUserToEliminate
››G X
)
››X Y
{
ﬁﬁ 	
(
ﬂﬂ 
(
ﬂﬂ ,
IFriendManagerActionOperations
ﬂﬂ ,
)
ﬂﬂ, -9
+friendManagerActionsOperationImplementation
ﬂﬂ- X
)
ﬂﬂX Y
.
ﬂﬂY Z&
EliminateUserFromFriends
ﬂﬂZ r
(
ﬂﬂr s
idPlayerDeletingﬂﬂs É
,ﬂﬂÉ Ñ!
idUserToEliminateﬂﬂÖ ñ
)ﬂﬂñ ó
;ﬂﬂó ò
}
‡‡ 	
public
‚‚ 
void
‚‚ &
NotifyUserAboutNewPlayer
‚‚ ,
(
‚‚, -
int
‚‚- 0
idNewPlayer
‚‚1 <
,
‚‚< =
string
‚‚> D
userName
‚‚E M
)
‚‚M N
{
„„ 	
(
‰‰ 
(
‰‰ ,
IFriendManagerActionOperations
‰‰ ,
)
‰‰, -9
+friendManagerActionsOperationImplementation
‰‰- X
)
‰‰X Y
.
‰‰Y Z&
NotifyUserAboutNewPlayer
‰‰Z r
(
‰‰r s
idNewPlayer
‰‰s ~
,
‰‰~ 
userName‰‰Ä à
)‰‰à â
;‰‰â ä
}
ÂÂ 	
public
ÁÁ 
void
ÁÁ 
SendFriendRequest
ÁÁ %
(
ÁÁ% &
int
ÁÁ& ) 
idPLayerRequesting
ÁÁ* <
,
ÁÁ< =
int
ÁÁ> A
idUserRequested
ÁÁB Q
)
ÁÁQ R
{
ËË 	
(
ÈÈ 
(
ÈÈ ,
IFriendManagerActionOperations
ÈÈ ,
)
ÈÈ, -9
+friendManagerActionsOperationImplementation
ÈÈ- X
)
ÈÈX Y
.
ÈÈY Z
SendFriendRequest
ÈÈZ k
(
ÈÈk l 
idPLayerRequesting
ÈÈl ~
,
ÈÈ~ 
idUserRequestedÈÈÄ è
)ÈÈè ê
;ÈÈê ë
}
ÍÍ 	
public
ÏÏ 
void
ÏÏ )
UnregisterFriendManagerUser
ÏÏ /
(
ÏÏ/ 0
int
ÏÏ0 3!
idUserFriendManager
ÏÏ4 G
)
ÏÏG H
{
ÌÌ 	
(
ÓÓ 
(
ÓÓ ,
IFriendManagerActionOperations
ÓÓ ,
)
ÓÓ, -9
+friendManagerActionsOperationImplementation
ÓÓ- X
)
ÓÓX Y
.
ÓÓY Z)
UnregisterFriendManagerUser
ÓÓZ u
(
ÓÓu v"
idUserFriendManagerÓÓv â
)ÓÓâ ä
;ÓÓä ã
}
ÔÔ 	
}
 
public
ÚÚ 

partial
ÚÚ 
class
ÚÚ %
ServicesReferenceAuthor
ÚÚ 0
:
ÚÚ1 2$
ILobbyActionsOperation
ÚÚ3 I
{
ÛÛ 1
#LobbyActionsOperationImplementation
ÙÙ +1
#lobbyActionsOperationImplementation
ÙÙ, O
=
ÙÙP Q
new
ÙÙR U
(
ÙÙU V
)
ÙÙV W
;
ÙÙW X
public
ˆˆ 
void
ˆˆ 
ChangePlayerSide
ˆˆ $
(
ˆˆ$ %
int
ˆˆ% (
roomCode
ˆˆ) 1
,
ˆˆ1 2
int
ˆˆ3 6 
idUserToChangeTeam
ˆˆ7 I
,
ˆˆI J
int
ˆˆK N
newSideTeam
ˆˆO Z
)
ˆˆZ [
{
˜˜ 	
(
¯¯ 
(
¯¯ $
ILobbyActionsOperation
¯¯ $
)
¯¯$ %1
#lobbyActionsOperationImplementation
¯¯% H
)
¯¯H I
.
¯¯I J
ChangePlayerSide
¯¯J Z
(
¯¯Z [
roomCode
¯¯[ c
,
¯¯c d 
idUserToChangeTeam
¯¯e w
,
¯¯w x
newSideTeam¯¯y Ñ
)¯¯Ñ Ö
;¯¯Ö Ü
}
˘˘ 	
public
˚˚ 
void
˚˚ 
DissolveLobby
˚˚ !
(
˚˚! "
int
˚˚" %
roomCode
˚˚& .
,
˚˚. /
int
˚˚0 3
idUser
˚˚4 :
)
˚˚: ;
{
¸¸ 	
(
˝˝ 
(
˝˝ $
ILobbyActionsOperation
˝˝ $
)
˝˝$ %1
#lobbyActionsOperationImplementation
˝˝% H
)
˝˝H I
.
˝˝I J
DissolveLobby
˝˝J W
(
˝˝W X
roomCode
˝˝X `
,
˝˝` a
idUser
˝˝b h
)
˝˝h i
;
˝˝i j
}
˛˛ 	
public
ÄÄ 
void
ÄÄ &
EliminatePlayerFromMatch
ÄÄ ,
(
ÄÄ, -
int
ÄÄ- 0
roomCode
ÄÄ1 9
,
ÄÄ9 :
int
ÄÄ; >
idUserToEliminate
ÄÄ? P
)
ÄÄP Q
{
ÅÅ 	
(
ÇÇ 
(
ÇÇ $
ILobbyActionsOperation
ÇÇ $
)
ÇÇ$ %1
#lobbyActionsOperationImplementation
ÇÇ% H
)
ÇÇH I
.
ÇÇI J&
EliminatePlayerFromMatch
ÇÇJ b
(
ÇÇb c
roomCode
ÇÇc k
,
ÇÇk l
idUserToEliminate
ÇÇm ~
)
ÇÇ~ 
;ÇÇ Ä
}
ÉÉ 	
public
ÖÖ 
GenericClass
ÖÖ 
<
ÖÖ 
List
ÖÖ  
<
ÖÖ  !
PlayerInLobby
ÖÖ! .
>
ÖÖ. /
>
ÖÖ/ 0(
GetAllCurrentPlayerInLobby
ÖÖ1 K
(
ÖÖK L
int
ÖÖL O
roomCode
ÖÖP X
,
ÖÖX Y
int
ÖÖZ ]
idUserRequesting
ÖÖ^ n
)
ÖÖn o
{
ÜÜ 	
return
áá 
(
áá 
(
áá $
ILobbyActionsOperation
áá +
)
áá+ ,1
#lobbyActionsOperationImplementation
áá, O
)
ááO P
.
ááP Q(
GetAllCurrentPlayerInLobby
ááQ k
(
áák l
roomCode
áál t
,
áát u
idUserRequestingááv Ü
)ááÜ á
;ááá à
}
àà 	
public
ää 
void
ää 

LeaveLobby
ää 
(
ää 
int
ää "
roomCode
ää# +
,
ää+ ,
int
ää- 0
idUserLeaving
ää1 >
)
ää> ?
{
ãã 	
(
åå 
(
åå $
ILobbyActionsOperation
åå $
)
åå$ %1
#lobbyActionsOperationImplementation
åå% H
)
ååH I
.
ååI J

LeaveLobby
ååJ T
(
ååT U
roomCode
ååU ]
,
åå] ^
idUserLeaving
åå_ l
)
åål m
;
ååm n
}
çç 	
public
èè 
void
èè 
	MakeTeams
èè 
(
èè 
int
èè !
roomCode
èè" *
,
èè* +
int
èè, /
idUser
èè0 6
,
èè6 7
bool
èè8 <
	wannaTeam
èè= F
)
èèF G
{
êê 	
(
ëë 
(
ëë $
ILobbyActionsOperation
ëë $
)
ëë$ %1
#lobbyActionsOperationImplementation
ëë% H
)
ëëH I
.
ëëI J
	MakeTeams
ëëJ S
(
ëëS T
roomCode
ëëT \
,
ëë\ ]
idUser
ëë^ d
,
ëëd e
	wannaTeam
ëëf o
)
ëëo p
;
ëëp q
}
íí 	
public
îî 
void
îî !
NotifyPlayerInLobby
îî '
(
îî' (
int
îî( +
roomCode
îî, 4
,
îî4 5
int
îî6 9
idUser
îî: @
)
îî@ A
{
ïï 	
(
ññ 
(
ññ $
ILobbyActionsOperation
ññ $
)
ññ$ %1
#lobbyActionsOperationImplementation
ññ% H
)
ññH I
.
ññI J!
NotifyPlayerInLobby
ññJ ]
(
ññ] ^
roomCode
ññ^ f
,
ññf g
idUser
ññh n
)
ññn o
;
ñño p
}
óó 	
public
ôô 
void
ôô $
SelectQuestionsForGame
ôô *
(
ôô* +
int
ôô+ .
roomCode
ôô/ 7
)
ôô7 8
{
öö 	
(
õõ 
(
õõ $
ILobbyActionsOperation
õõ $
)
õõ$ %1
#lobbyActionsOperationImplementation
õõ% H
)
õõH I
.
õõI J$
SelectQuestionsForGame
õõJ `
(
õõ` a
roomCode
õõa i
)
õõi j
;
õõj k
}
úú 	
public
ûû 
void
ûû 
	StartGame
ûû 
(
ûû 
int
ûû !
roomCode
ûû" *
)
ûû* +
{
üü 	
(
†† 
(
†† $
ILobbyActionsOperation
†† $
)
††$ %1
#lobbyActionsOperationImplementation
††% H
)
††H I
.
††I J
	StartGame
††J S
(
††S T
roomCode
††T \
)
††\ ]
;
††] ^
}
°° 	
}
¢¢ 
public
§§ 

partial
§§ 
class
§§ %
ServicesReferenceAuthor
§§ 0
:
§§1 2$
IGameActionsOperations
§§3 I
{
•• 1
#GameActionsOperationsImplementation
¶¶ +1
#gameActionsOperationsImplementation
¶¶, O
=
¶¶P Q
new
¶¶R U
(
¶¶U V
)
¶¶V W
;
¶¶W X
public
®® 
void
®® 
ChooseAnswer
®®  
(
®®  !
int
®®! $
roomCode
®®% -
,
®®- .
int
®®/ 2
idUserSelecting
®®3 B
,
®®B C
int
®®D G
answerSelected
®®H V
,
®®V W
int
®®X [
pointsWorth
®®\ g
,
®®g h
int
®®i l
currentTurn
®®m x
)
®®x y
{
©© 	
(
™™ 
(
™™ $
IGameActionsOperations
™™ $
)
™™$ %1
#gameActionsOperationsImplementation
™™% H
)
™™H I
.
™™I J
ChooseAnswer
™™J V
(
™™V W
roomCode
™™W _
,
™™_ `
idUserSelecting
™™a p
,
™™p q
answerSelected™™r Ä
,™™Ä Å
pointsWorth™™Ç ç
,™™ç é
currentTurn™™è ö
)™™ö õ
;™™õ ú
}
´´ 	
public
≠≠ 
void
≠≠ #
ChooseQuestionOfBoard
≠≠ )
(
≠≠) *
int
≠≠* -
roomCode
≠≠. 6
,
≠≠6 7
int
≠≠8 ;
idUserSelecting
≠≠< K
,
≠≠K L
int
≠≠M P
currentRound
≠≠Q ]
,
≠≠] ^+
CurrentQuestionToShowContract
≠≠_ |
questionToShow≠≠} ã
)≠≠ã å
{
ÆÆ 	
(
ØØ 
(
ØØ $
IGameActionsOperations
ØØ $
)
ØØ$ %1
#gameActionsOperationsImplementation
ØØ% H
)
ØØH I
.
ØØI J#
ChooseQuestionOfBoard
ØØJ _
(
ØØ_ `
roomCode
ØØ` h
,
ØØh i
idUserSelecting
ØØj y
,
ØØy z
currentRoundØØ{ á
,ØØá à
questionToShowØØâ ó
)ØØó ò
;ØØò ô
}
∞∞ 	
public
≤≤ 
void
≤≤ 

ConfirmBet
≤≤ 
(
≤≤ 
int
≤≤ "
roomCode
≤≤# +
,
≤≤+ ,
int
≤≤- 0
idUser
≤≤1 7
)
≤≤7 8
{
≥≥ 	
(
¥¥ 
(
¥¥ $
IGameActionsOperations
¥¥ $
)
¥¥$ %1
#gameActionsOperationsImplementation
¥¥% H
)
¥¥H I
.
¥¥I J

ConfirmBet
¥¥J T
(
¥¥T U
roomCode
¥¥U ]
,
¥¥] ^
idUser
¥¥_ e
)
¥¥e f
;
¥¥f g
}
µµ 	
public
∑∑ 
void
∑∑ '
ConfirmLastQuestionAnswer
∑∑ -
(
∑∑- .
int
∑∑. 1
roomCode
∑∑2 :
,
∑∑: ;&
PlayerInGameDataContract
∑∑< T
playerAnswering
∑∑U d
,
∑∑d e
int
∑∑f i
points
∑∑j p
,
∑∑p q
bool
∑∑r v
	isCorrect∑∑w Ä
)∑∑Ä Å
{
∏∏ 	
(
ππ 
(
ππ $
IGameActionsOperations
ππ $
)
ππ$ %1
#gameActionsOperationsImplementation
ππ% H
)
ππH I
.
ππI J'
ConfirmLastQuestionAnswer
ππJ c
(
ππc d
roomCode
ππd l
,
ππl m
playerAnswering
ππn }
,
ππ} ~
pointsππ Ö
,ππÖ Ü
	isCorrectππá ê
)ππê ë
;ππë í
}
∫∫ 	
public
ºº 
void
ºº 
FinishRound
ºº 
(
ºº  
int
ºº  #
roomCode
ºº$ ,
,
ºº, -
List
ºº. 2
<
ºº2 3&
PlayerInGameDataContract
ºº3 K
>
ººK L
playerInGame
ººM Y
,
ººY Z
int
ºº[ ^
roundFinished
ºº_ l
)
ººl m
{
ΩΩ 	
(
ææ 
(
ææ $
IGameActionsOperations
ææ $
)
ææ$ %1
#gameActionsOperationsImplementation
ææ% H
)
ææH I
.
ææI J
FinishRound
ææJ U
(
ææU V
roomCode
ææV ^
,
ææ^ _
playerInGame
ææ` l
,
ææl m
roundFinished
ææn {
)
ææ{ |
;
ææ| }
}
øø 	
public
¡¡ 
void
¡¡ )
UnSubscribeFromGameCallBack
¡¡ /
(
¡¡/ 0
int
¡¡0 3
roomCode
¡¡4 <
,
¡¡< =
int
¡¡> A!
idUserUnsubscribing
¡¡B U
)
¡¡U V
{
¬¬ 	
(
√√ 
(
√√ $
IGameActionsOperations
√√ $
)
√√$ %1
#gameActionsOperationsImplementation
√√% H
)
√√H I
.
√√I J)
UnSubscribeFromGameCallBack
√√J e
(
√√e f
roomCode
√√f n
,
√√n o"
idUserUnsubscribing√√p É
)√√É Ñ
;√√Ñ Ö
}
ƒƒ 	
}
≈≈ 
public
«« 

partial
«« 
class
«« %
ServicesReferenceAuthor
«« 0
:
««1 2%
IChatForTeamsOperations
««3 J
{
»» 4
&TeamChatForTeamsOperationsImplemtation
…… .(
chatForTeamsImplementation
……/ I
=
……J K
new
……L O
(
……O P
)
……P Q
;
……Q R
public
ÀÀ 
void
ÀÀ 
SendMessageTeam
ÀÀ #
(
ÀÀ# $
int
ÀÀ$ '
idUser
ÀÀ( .
,
ÀÀ. /
int
ÀÀ0 3

idTeamMate
ÀÀ4 >
,
ÀÀ> ?
string
ÀÀ@ F
userName
ÀÀG O
,
ÀÀO P
string
ÀÀQ W
messageToSend
ÀÀX e
)
ÀÀe f
{
ÃÃ 	
(
ÕÕ 
(
ÕÕ %
IChatForTeamsOperations
ÕÕ %
)
ÕÕ% &(
chatForTeamsImplementation
ÕÕ& @
)
ÕÕ@ A
.
ÕÕA B
SendMessageTeam
ÕÕB Q
(
ÕÕQ R
idUser
ÕÕR X
,
ÕÕX Y

idTeamMate
ÕÕZ d
,
ÕÕd e
userName
ÕÕf n
,
ÕÕn o
messageToSend
ÕÕp }
)
ÕÕ} ~
;
ÕÕ~ 
}
ŒŒ 	
public
–– 
void
–– $
UnregisterFromTeamChat
–– *
(
––* +
int
––+ .
idUser
––/ 5
)
––5 6
{
—— 	
(
““ 
(
““ %
IChatForTeamsOperations
““ %
)
““% &(
chatForTeamsImplementation
““& @
)
““@ A
.
““A B$
UnregisterFromTeamChat
““B X
(
““X Y
idUser
““Y _
)
““_ `
;
““` a
}
”” 	
}
‘‘ 
public
÷÷ 

partial
÷÷ 
class
÷÷ %
ServicesReferenceAuthor
÷÷ 0
:
÷÷1 2!
ILiveChatOperations
÷÷3 F
{
◊◊ .
 LiveChatOperationsImplementation
ÿÿ (.
 liveChatOperationsImplementation
ÿÿ) I
=
ÿÿJ K
new
ÿÿL O
(
ÿÿO P
)
ÿÿP Q
;
ÿÿQ R
public
⁄⁄ 
void
⁄⁄ 

DeleteChat
⁄⁄ 
(
⁄⁄ 
int
⁄⁄ "
roomCode
⁄⁄# +
,
⁄⁄+ ,
int
⁄⁄- 0
idUser
⁄⁄1 7
)
⁄⁄7 8
{
€€ 	
(
‹‹ 
(
‹‹ !
ILiveChatOperations
‹‹ !
)
‹‹! ".
 liveChatOperationsImplementation
‹‹" B
)
‹‹B C
.
‹‹C D

DeleteChat
‹‹D N
(
‹‹N O
roomCode
‹‹O W
,
‹‹W X
idUser
‹‹Y _
)
‹‹_ `
;
‹‹` a
}
›› 	
public
ﬂﬂ 
void
ﬂﬂ 
SendMessage
ﬂﬂ 
(
ﬂﬂ  
int
ﬂﬂ  #
idUser
ﬂﬂ$ *
,
ﬂﬂ* +
int
ﬂﬂ, /
roomCode
ﬂﬂ0 8
,
ﬂﬂ8 9
string
ﬂﬂ: @
userName
ﬂﬂA I
,
ﬂﬂI J
string
ﬂﬂK Q
messageToSend
ﬂﬂR _
)
ﬂﬂ_ `
{
‡‡ 	
(
·· 
(
·· !
ILiveChatOperations
·· !
)
··! ".
 liveChatOperationsImplementation
··" B
)
··B C
.
··C D
SendMessage
··D O
(
··O P
idUser
··P V
,
··V W
roomCode
··X `
,
··` a
userName
··b j
,
··j k
messageToSend
··l y
)
··y z
;
··z {
}
‚‚ 	
}
„„ 
public
ÂÂ 

partial
ÂÂ 
class
ÂÂ %
ServicesReferenceAuthor
ÂÂ 0
:
ÂÂ1 2

IHeartBeat
ÂÂ3 =
{
ÊÊ %
HeartBeatImplementation
ÁÁ %
heartBeatImplementation
ÁÁ  7
=
ÁÁ8 9
new
ÁÁ: =
(
ÁÁ= >
)
ÁÁ> ?
;
ÁÁ? @
public
ËË 
void
ËË 
	Heartbeat
ËË 
(
ËË 
)
ËË 
{
ÈÈ 	
(
ÍÍ 
(
ÍÍ 

IHeartBeat
ÍÍ 
)
ÍÍ %
heartBeatImplementation
ÍÍ 0
)
ÍÍ0 1
.
ÍÍ1 2
	Heartbeat
ÍÍ2 ;
(
ÍÍ; <
)
ÍÍ< =
;
ÍÍ= >
}
ÎÎ 	
}
ÏÏ 
}ÌÌ ÛÖ
¢C:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameServer\JeopardyGame.Service\ServiceImplementation\UserCreateAccountCodeImplementation.cs
	namespace 	
JeopardyGame
 
. 
Service 
. !
ServiceImplementation 4
{ 
internal 
class /
#UserCreateAccountCodeImplementation 6
:7 8"
IUserCreateAccountCode9 O
{ 
private 
const 
int 
ALLOWED_VALUES (
=) *
$num+ ,
;, -
private 
static 
readonly 
Object  &

lockObject( 2
=3 4
new5 8
Object9 ?
(? @
)@ A
;A B
public 
GenericClass 
< 
int 
>  +
AddUserToConfirmationDictionary! @
(@ A
UserPojoA I
newUserJ Q
)Q R
{ 	
lock 
( 

lockObject 
) 
{ 
GenericClass 
< 
int  
>  !
successCriteria" 1
=2 3
new4 7
(7 8
)8 9
{ 
	CodeEvent   
=   
ExceptionDictionary    3
.  3 4
SUCCESFULL_EVENT  4 D
,  D E
ObjectSaved!! 
=!!  !
ALLOWED_VALUES!!" 0
}"" 
;"" 
try## 
{$$ 
AddUserToDictionary%% '
(%%' (
newUser%%( /
)%%/ 0
;%%0 1
}&& 
catch'' 
('' /
#CommunicationObjectFaultedException'' :
ex''; =
)''= >
{(( 
successCriteria)) #
.))# $
	CodeEvent))$ -
=)). /
ExceptionDictionary))0 C
.))C D
UNSUCCESFULL_EVENT))D V
;))V W
ExceptionHandler** $
.**$ %
LogException**% 1
(**1 2
ex**2 4
,**4 5
ExceptionDictionary**6 I
.**I J
FATAL_EXCEPTION**J Y
)**Y Z
;**Z [
}++ 
catch,, 
(,, 
TimeoutException,, '
ex,,( *
),,* +
{-- 
successCriteria.. #
...# $
	CodeEvent..$ -
=... /
ExceptionDictionary..0 C
...C D
UNSUCCESFULL_EVENT..D V
;..V W
ExceptionHandler// $
.//$ %
LogException//% 1
(//1 2
ex//2 4
,//4 5
ExceptionDictionary//6 I
.//I J
FATAL_EXCEPTION//J Y
)//Y Z
;//Z [
}00 
catch11 
(11 "
CommunicationException11 -
ex11. 0
)110 1
{22 
successCriteria33 #
.33# $
	CodeEvent33$ -
=33. /
ExceptionDictionary330 C
.33C D
UNSUCCESFULL_EVENT33D V
;33V W
ExceptionHandler44 $
.44$ %
LogException44% 1
(441 2
ex442 4
,444 5
ExceptionDictionary446 I
.44I J
FATAL_EXCEPTION44J Y
)44Y Z
;44Z [
}55 
catch66 
(66 %
InvalidOperationException66 0
ex661 3
)663 4
{77 
successCriteria88 #
.88# $
	CodeEvent88$ -
=88. /
ExceptionDictionary880 C
.88C D
UNSUCCESFULL_EVENT88D V
;88V W
ExceptionHandler99 $
.99$ %
LogException99% 1
(991 2
ex992 4
,994 5
ExceptionDictionary996 I
.99I J
FATAL_EXCEPTION99J Y
)99Y Z
;99Z [
}:: 
return;; 
successCriteria;; &
;;;& '
}<< 
}== 	
private@@ 
void@@ 
AddUserToDictionary@@ (
(@@( )
UserPojo@@) 1
newUser@@2 9
)@@9 :
{AA 	
RandomBB 
randomNumberBB 
=BB  !
newBB" %
RandomBB& ,
(BB, -
)BB- .
;BB. /
intCC $
fourDigitsAleatoryNumberCC (
=CC) *
randomNumberCC, 8
.CC8 9
NextCC9 =
(CC= >
$numCC> B
,CCB C
$numCCD H
)CCH I
;CCI J
charDD  
firstRandomCharacterDD %
=DD& '
(DD( )
charDD) -
)DD- .
randomNumberDD. :
.DD: ;
NextDD; ?
(DD? @
$charDD@ C
,DDC D
$charDDE H
+DDI J
$numDDK L
)DDL M
;DDM N
charEE !
secondRandomCharacterEE &
=EE' (
(EE) *
charEE* .
)EE. /
randomNumberEE/ ;
.EE; <
NextEE< @
(EE@ A
$charEEA D
,EED E
$charEEF I
+EEJ K
$numEEL M
)EEM N
;EEN O
stringFF 
codeFF 
=FF 
$"FF 
{FF  
firstRandomCharacterFF 1
}FF1 2
{FF2 3!
secondRandomCharacterFF3 H
}FFH I
{FFI J$
fourDigitsAleatoryNumberFFJ b
:FFb c
$strFFc e
}FFe f
"FFf g
;FFg h
varGG 
codeAlreadyExistGG  
=GG! "'
EmailConfirmationDictionaryGG# >
.GG> ?$
GetSpecificUserToConfirmGG? W
(GGW X
codeGGX \
)GG\ ]
;GG] ^
ConsoleHH 
.HH 
	WriteLineHH 
(HH 
codeHH "
)HH" #
;HH# $
ifII 
(II 
codeAlreadyExistII 
==II  "
nullII# '
)II' (
{JJ '
EmailConfirmationDictionaryKK +
.KK+ ,$
RegisterNewUserToConfirmKK, D
(KKD E
codeKKE I
,KKI J
newUserKKK R
)KKR S
;KKS T
}LL 
elseMM 
{NN 
AddUserToDictionaryOO #
(OO# $
newUserOO$ +
)OO+ ,
;OO, -
}PP 
}QQ 	
publicSS 
intSS 
CheckCodeEnteredSS #
(SS# $
UserPojoSS$ ,
newUserSS- 4
,SS4 5
stringSS6 <
codeEnteredSS= H
)SSH I
{TT 	
intUU 
successCriteriaUU 
;UU  
tryVV 
{WW 
ifXX 
(XX 
newUserXX 
==XX 
nullXX #
)XX# $
{YY 
returnZZ 
ExceptionDictionaryZZ .
.ZZ. /
NULL_PARAEMETERZZ/ >
;ZZ> ?
}[[ 
var\\ 
userToVerifyList\\ $
=\\% &'
EmailConfirmationDictionary\\' B
.\\B C$
GetSpecificUserToConfirm\\C [
(\\[ \
codeEntered\\\ g
)\\g h
;\\h i
if]] 
(]] 
userToVerifyList]] $
!=]]% '
null]]( ,
&&]]- /
userToVerifyList]]0 @
.]]@ A
UserName]]A I
.]]I J
Equals]]J P
(]]P Q
newUser]]Q X
.]]X Y
UserName]]Y a
)]]a b
)]]b c
{^^ 
successCriteria__ #
=__$ %
ExceptionDictionary__& 9
.__9 :
SUCCESFULL_EVENT__: J
;__J K
}`` 
elseaa 
{bb 
successCriteriacc #
=cc$ %
ExceptionDictionarycc& 9
.cc9 :
UNSUCCESFULL_EVENTcc: L
;ccL M
}dd 
}ee 
catchff 
(ff /
#CommunicationObjectFaultedExceptionff 6
exff7 9
)ff9 :
{gg 
successCriteriahh 
=hh  !
ExceptionDictionaryhh" 5
.hh5 6
UNSUCCESFULL_EVENThh6 H
;hhH I
ExceptionHandlerii  
.ii  !
LogExceptionii! -
(ii- .
exii. 0
,ii0 1
ExceptionDictionaryii2 E
.iiE F
FATAL_EXCEPTIONiiF U
)iiU V
;iiV W
}jj 
catchkk 
(kk 
TimeoutExceptionkk #
exkk$ &
)kk& '
{ll 
successCriteriamm 
=mm  !
ExceptionDictionarymm" 5
.mm5 6
UNSUCCESFULL_EVENTmm6 H
;mmH I
ExceptionHandlernn  
.nn  !
LogExceptionnn! -
(nn- .
exnn. 0
,nn0 1
ExceptionDictionarynn2 E
.nnE F
FATAL_EXCEPTIONnnF U
)nnU V
;nnV W
}oo 
catchpp 
(pp "
CommunicationExceptionpp )
expp* ,
)pp, -
{qq 
successCriteriarr 
=rr  !
ExceptionDictionaryrr" 5
.rr5 6
UNSUCCESFULL_EVENTrr6 H
;rrH I
ExceptionHandlerss  
.ss  !
LogExceptionss! -
(ss- .
exss. 0
,ss0 1
ExceptionDictionaryss2 E
.ssE F
FATAL_EXCEPTIONssF U
)ssU V
;ssV W
}tt 
catchuu 
(uu %
InvalidOperationExceptionuu ,
exuu- /
)uu/ 0
{vv 
successCriteriaww 
=ww  !
ExceptionDictionaryww" 5
.ww5 6
UNSUCCESFULL_EVENTww6 H
;wwH I
ExceptionHandlerxx  
.xx  !
LogExceptionxx! -
(xx- .
exxx. 0
,xx0 1
ExceptionDictionaryxx2 E
.xxE F
FATAL_EXCEPTIONxxF U
)xxU V
;xxV W
}yy 
returnzz 
successCriteriazz "
;zz" #
}{{ 	
public}} 
int}} 

ResendCode}} 
(}} 
UserPojo}} &
user}}' +
)}}+ ,
{~~ 	
int 
successCriteria 
;  
try
ÄÄ 
{
ÅÅ 
if
ÇÇ 
(
ÇÇ 
user
ÇÇ 
==
ÇÇ 
null
ÇÇ  
)
ÇÇ  !
{
ÉÉ 
return
ÑÑ !
ExceptionDictionary
ÑÑ .
.
ÑÑ. /
NULL_PARAEMETER
ÑÑ/ >
;
ÑÑ> ?
}
ÖÖ 
string
ÜÜ 
code
ÜÜ 
=
ÜÜ )
EmailConfirmationDictionary
ÜÜ 9
.
ÜÜ9 :!
GetUserToVerifyList
ÜÜ: M
(
ÜÜM N
)
ÜÜN O
.
ÜÜO P
FirstOrDefault
ÜÜP ^
(
ÜÜ^ _
entry
ÜÜ_ d
=>
ÜÜe g
entry
ÜÜh m
.
ÜÜm n
Value
ÜÜn s
.
ÜÜs t
UserName
ÜÜt |
.
ÜÜ| }
EqualsÜÜ} É
(ÜÜÉ Ñ
userÜÜÑ à
.ÜÜà â
UserNameÜÜâ ë
)ÜÜë í
)ÜÜí ì
.ÜÜì î
KeyÜÜî ó
;ÜÜó ò
if
áá 
(
áá 
!
áá 
string
áá 
.
áá 
IsNullOrEmpty
áá )
(
áá) *
code
áá* .
)
áá. /
)
áá/ 0
{
àà )
EmailConfirmationDictionary
ââ /
.
ââ/ 00
"RemoveRegistryOfUserFromDictionary
ââ0 R
(
ââR S
code
ââS W
)
ââW X
;
ââX Y!
AddUserToDictionary
ää '
(
ää' (
user
ää( ,
)
ää, -
;
ää- .
successCriteria
ãã #
=
ãã$ %!
ExceptionDictionary
ãã& 9
.
ãã9 :
SUCCESFULL_EVENT
ãã: J
;
ããJ K
}
åå 
else
çç 
{
éé 
successCriteria
èè #
=
èè$ %!
ExceptionDictionary
èè& 9
.
èè9 : 
UNSUCCESFULL_EVENT
èè: L
;
èèL M
}
êê 
}
ëë 
catch
íí 
(
íí 1
#CommunicationObjectFaultedException
íí 6
ex
íí7 9
)
íí9 :
{
ìì 
successCriteria
îî 
=
îî  !!
ExceptionDictionary
îî" 5
.
îî5 6 
UNSUCCESFULL_EVENT
îî6 H
;
îîH I
ExceptionHandler
ïï  
.
ïï  !
LogException
ïï! -
(
ïï- .
ex
ïï. 0
,
ïï0 1!
ExceptionDictionary
ïï2 E
.
ïïE F
FATAL_EXCEPTION
ïïF U
)
ïïU V
;
ïïV W
}
ññ 
catch
óó 
(
óó 
TimeoutException
óó #
ex
óó$ &
)
óó& '
{
òò 
successCriteria
ôô 
=
ôô  !!
ExceptionDictionary
ôô" 5
.
ôô5 6 
UNSUCCESFULL_EVENT
ôô6 H
;
ôôH I
ExceptionHandler
öö  
.
öö  !
LogException
öö! -
(
öö- .
ex
öö. 0
,
öö0 1!
ExceptionDictionary
öö2 E
.
ööE F
FATAL_EXCEPTION
ööF U
)
ööU V
;
ööV W
}
õõ 
catch
úú 
(
úú $
CommunicationException
úú )
ex
úú* ,
)
úú, -
{
ùù 
successCriteria
ûû 
=
ûû  !!
ExceptionDictionary
ûû" 5
.
ûû5 6 
UNSUCCESFULL_EVENT
ûû6 H
;
ûûH I
ExceptionHandler
üü  
.
üü  !
LogException
üü! -
(
üü- .
ex
üü. 0
,
üü0 1!
ExceptionDictionary
üü2 E
.
üüE F
FATAL_EXCEPTION
üüF U
)
üüU V
;
üüV W
}
†† 
catch
°° 
(
°° '
InvalidOperationException
°° ,
ex
°°- /
)
°°/ 0
{
¢¢ 
successCriteria
££ 
=
££  !!
ExceptionDictionary
££" 5
.
££5 6 
UNSUCCESFULL_EVENT
££6 H
;
££H I
ExceptionHandler
§§  
.
§§  !
LogException
§§! -
(
§§- .
ex
§§. 0
,
§§0 1!
ExceptionDictionary
§§2 E
.
§§E F
FATAL_EXCEPTION
§§F U
)
§§U V
;
§§V W
}
•• 
return
¶¶ 
successCriteria
¶¶ "
;
¶¶" #
}
ßß 	
public
©© 
void
©© %
TakeUserOutOfDictionary
©© +
(
©©+ ,
UserPojo
©©, 4
user
©©5 9
)
©©9 :
{
™™ 	
lock
´´ 
(
´´ 

lockObject
´´ 
)
´´ 
{
¨¨ 
try
≠≠ 
{
ÆÆ 
if
ØØ 
(
ØØ 
user
ØØ 
!=
ØØ 
null
ØØ  $
)
ØØ$ %
{
∞∞ 
string
±± 
code
±± #
=
±±$ %)
EmailConfirmationDictionary
±±& A
.
±±A B!
GetUserToVerifyList
±±B U
(
±±U V
)
±±V W
.
±±W X
FirstOrDefault
±±X f
(
±±f g
entry
±±g l
=>
±±m o
entry
±±p u
.
±±u v
Value
±±v {
.
±±{ |
UserName±±| Ñ
.±±Ñ Ö
Equals±±Ö ã
(±±ã å
user±±å ê
.±±ê ë
UserName±±ë ô
)±±ô ö
)±±ö õ
.±±õ ú
Key±±ú ü
;±±ü †
if
≤≤ 
(
≤≤ 
!
≤≤ 
string
≤≤ #
.
≤≤# $
IsNullOrEmpty
≤≤$ 1
(
≤≤1 2
code
≤≤2 6
)
≤≤6 7
)
≤≤7 8
{
≥≥ )
EmailConfirmationDictionary
¥¥ 7
.
¥¥7 80
"RemoveRegistryOfUserFromDictionary
¥¥8 Z
(
¥¥Z [
code
¥¥[ _
)
¥¥_ `
;
¥¥` a
}
µµ 
}
∂∂ 
}
∑∑ 
catch
∏∏ 
(
∏∏ 1
#CommunicationObjectFaultedException
∏∏ :
ex
∏∏; =
)
∏∏= >
{
ππ 
ExceptionHandler
∫∫ $
.
∫∫$ %
LogException
∫∫% 1
(
∫∫1 2
ex
∫∫2 4
,
∫∫4 5!
ExceptionDictionary
∫∫6 I
.
∫∫I J
FATAL_EXCEPTION
∫∫J Y
)
∫∫Y Z
;
∫∫Z [
}
ªª 
catch
ºº 
(
ºº 
TimeoutException
ºº '
ex
ºº( *
)
ºº* +
{
ΩΩ 
ExceptionHandler
ææ $
.
ææ$ %
LogException
ææ% 1
(
ææ1 2
ex
ææ2 4
,
ææ4 5!
ExceptionDictionary
ææ6 I
.
ææI J
FATAL_EXCEPTION
ææJ Y
)
ææY Z
;
ææZ [
}
øø 
catch
¿¿ 
(
¿¿ $
CommunicationException
¿¿ -
ex
¿¿. 0
)
¿¿0 1
{
¡¡ 
ExceptionHandler
¬¬ $
.
¬¬$ %
LogException
¬¬% 1
(
¬¬1 2
ex
¬¬2 4
,
¬¬4 5!
ExceptionDictionary
¬¬6 I
.
¬¬I J
FATAL_EXCEPTION
¬¬J Y
)
¬¬Y Z
;
¬¬Z [
}
√√ 
catch
ƒƒ 
(
ƒƒ '
InvalidOperationException
ƒƒ 0
ex
ƒƒ1 3
)
ƒƒ3 4
{
≈≈ 
ExceptionHandler
∆∆ $
.
∆∆$ %
LogException
∆∆% 1
(
∆∆1 2
ex
∆∆2 4
,
∆∆4 5!
ExceptionDictionary
∆∆6 I
.
∆∆I J
FATAL_EXCEPTION
∆∆J Y
)
∆∆Y Z
;
∆∆Z [
}
«« 
}
»» 
}
…… 	
}
ÀÀ 
}ÃÃ ¿Ù
òC:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameServer\JeopardyGame.Service\ServiceImplementation\UserManagerImplementation.cs
	namespace 	
JeopardyGame
 
. 
Service 
. !
ServiceImplementation 4
{ 
public 

partial 
class %
UserManagerImplementation 2
:3 4
IUserManager5 A
{ 
private 
readonly 
int 
DEFAULT_INT_VALUE .
=/ 0
$num1 2
;2 3
private 
readonly 
int 
NOT_BANNED_STATE -
=. /
$num0 1
;1 2
private 
static 
readonly 
Object  &

lockObject' 1
=2 3
new4 7
Object8 >
(> ?
)? @
;@ A
public 
GenericClass 
< 
int 
>  
SaveUser! )
() *
UserPojo* 2
userPojoNew3 >
,> ?
string@ F
codeEnteredG R
)R S
{ 	
lock 
( 

lockObject 
) 
{ 
GenericClass 
< 
int  
>  !
resultToReturn" 0
=1 2
new3 6
GenericClass7 C
<C D
intD G
>G H
(H I
)I J
;J K
try   
{!! 
if"" 
("" 
userPojoNew"" #
==""$ &
null""' +
)""+ ,
{## 
return$$ !
NullParametersHandler$$ 4
.$$4 5'
HandleNullParametersService$$5 P
($$P Q
resultToReturn$$Q _
)$$_ `
;$$` a
}%% 
userPojoNew&& 
.&&  
IdUser&&  &
=&&' (
DEFAULT_INT_VALUE&&) :
;&&: ;
User'' 
newUser''  
=''! ""
InterpretersEntityPojo''# 9
.''9 :
UserInterpreter'': I
.''I J$
FromUserPojoToUserEntity''J b
(''b c
userPojoNew''c n
)''n o
;''o p
GenericClassServer(( &
<((& '
User((' +
>((+ ,
	userSaved((- 6
=((7 8$
UserManagerDataOperation((9 Q
.((Q R
SaveUserInDataBase((R d
(((d e
newUser((e l
)((l m
;((m n
if)) 
()) 
	userSaved)) !
.))! "
	CodeEvent))" +
==)), .
ExceptionDictionary))/ B
.))B C
SUCCESFULL_EVENT))C S
)))S T
{** 

PlayerPojo++ "
playerToSave++# /
=++0 1
new++2 5

PlayerPojo++6 @
(++@ A
)++A B
;++B C
playerToSave,, $
.,,$ %
IdPlayer,,% -
=,,. /
DEFAULT_INT_VALUE,,0 A
;,,A B
playerToSave-- $
.--$ %
GeneralPoints--% 2
=--3 4
DEFAULT_INT_VALUE--5 F
;--F G
playerToSave.. $
...$ %
	NoReports..% .
=../ 0
DEFAULT_INT_VALUE..1 B
;..B C
playerToSave// $
.//$ %
IdActualAvatar//% 3
=//4 5
DEFAULT_INT_VALUE//6 G
;//G H
playerToSave00 $
.00$ %
IdUser00% +
=00, -
	userSaved00. 7
.007 8
ObjectSaved008 C
.00C D
IdUser00D J
;00J K
playerToSave11 $
.11$ %
IdState11% ,
=11- .
NOT_BANNED_STATE11/ ?
;11? @
int22 %
isPlayerSavedSuccessfully22 5
=226 7

SavePlayer228 B
(22B C
playerToSave22C O
)22O P
;22P Q
if33 
(33 %
isPlayerSavedSuccessfully33 5
==336 8
ExceptionDictionary339 L
.33L M
SUCCESFULL_EVENT33M ]
)33] ^
{44 
resultToReturn55 *
.55* +
ObjectSaved55+ 6
=557 8
	userSaved559 B
.55B C
ObjectSaved55C N
.55N O
IdUser55O U
;55U V
resultToReturn66 *
.66* +
	CodeEvent66+ 4
=665 6
ExceptionDictionary667 J
.66J K
SUCCESFULL_EVENT66K [
;66[ \'
EmailConfirmationDictionary77 7
.777 8.
"RemoveRegistryOfUserFromDictionary778 Z
(77Z [
codeEntered77[ f
)77f g
;77g h
}88 
else99 
{:: $
UserManagerDataOperation;; 4
.;;4 5
DeleteUserById;;5 C
(;;C D
	userSaved;;D M
.;;M N
ObjectSaved;;N Y
.;;Y Z
IdUser;;Z `
);;` a
;;;a b
resultToReturn<< *
.<<* +
	CodeEvent<<+ 4
=<<5 6%
isPlayerSavedSuccessfully<<7 P
;<<P Q
}== 
}>> 
else?? 
{@@ 
resultToReturnAA &
.AA& '
	CodeEventAA' 0
=AA1 2
	userSavedAA3 <
.AA< =
	CodeEventAA= F
;AAF G
}BB 
}CC 
catchDD 
(DD /
#CommunicationObjectFaultedExceptionDD :
exDD; =
)DD= >
{EE 
resultToReturnFF "
.FF" #
	CodeEventFF# ,
=FF- .
ExceptionDictionaryFF/ B
.FFB C
UNSUCCESFULL_EVENTFFC U
;FFU V
ExceptionHandlerGG $
.GG$ %
LogExceptionGG% 1
(GG1 2
exGG2 4
,GG4 5
ExceptionDictionaryGG6 I
.GGI J
FATAL_EXCEPTIONGGJ Y
)GGY Z
;GGZ [
}HH 
catchII 
(II 
TimeoutExceptionII '
exII( *
)II* +
{JJ 
resultToReturnKK "
.KK" #
	CodeEventKK# ,
=KK- .
ExceptionDictionaryKK/ B
.KKB C
UNSUCCESFULL_EVENTKKC U
;KKU V
ExceptionHandlerLL $
.LL$ %
LogExceptionLL% 1
(LL1 2
exLL2 4
,LL4 5
ExceptionDictionaryLL6 I
.LLI J
FATAL_EXCEPTIONLLJ Y
)LLY Z
;LLZ [
}MM 
catchNN 
(NN "
CommunicationExceptionNN -
exNN. 0
)NN0 1
{OO 
resultToReturnPP "
.PP" #
	CodeEventPP# ,
=PP- .
ExceptionDictionaryPP/ B
.PPB C
UNSUCCESFULL_EVENTPPC U
;PPU V
ExceptionHandlerQQ $
.QQ$ %
LogExceptionQQ% 1
(QQ1 2
exQQ2 4
,QQ4 5
ExceptionDictionaryQQ6 I
.QQI J
FATAL_EXCEPTIONQQJ Y
)QQY Z
;QQZ [
}RR 
catchSS 
(SS %
InvalidOperationExceptionSS 0
exSS1 3
)SS3 4
{TT 
resultToReturnUU "
.UU" #
	CodeEventUU# ,
=UU- .
ExceptionDictionaryUU/ B
.UUB C
UNSUCCESFULL_EVENTUUC U
;UUU V
ExceptionHandlerVV $
.VV$ %
LogExceptionVV% 1
(VV1 2
exVV2 4
,VV4 5
ExceptionDictionaryVV6 I
.VVI J
FATAL_EXCEPTIONVVJ Y
)VVY Z
;VVZ [
}WW 
returnXX 
resultToReturnXX %
;XX% &
}YY 
}ZZ 	
public\\ 
int\\ 

SavePlayer\\ 
(\\ 

PlayerPojo\\ (
	newPlayer\\) 2
)\\2 3
{]] 	
int^^ 
responseOfOperation^^ #
=^^$ %
DEFAULT_INT_VALUE^^& 7
;^^7 8
if__ 
(__ 
	newPlayer__ 
==__ 
null__ !
)__! "
{`` 
returnaa 
responseOfOperationaa *
;aa* +
}bb 
Playercc 
newPlayerAccountcc #
=cc$ %"
InterpretersEntityPojocc& <
.cc< =
UserInterpretercc= L
.ccL M(
FromPlayerPojoToPlayerEntityccM i
(cci j
	newPlayerccj s
)ccs t
;cct u
GenericClassServerdd 
<dd 
Userdd #
>dd# $
	userSaveddd% .
=dd/ 0$
UserManagerDataOperationdd1 I
.ddI J
GetUserByIdddJ U
(ddU V
	newPlayerddV _
.dd_ `
IdUserdd` f
)ddf g
;ddg h
ifee 
(ee 
	userSavedee 
.ee 
	CodeEventee "
==ee# %
ExceptionDictionaryee& 9
.ee9 :
SUCCESFULL_EVENTee: J
)eeJ K
{ff 
GenericClassServergg "
<gg" #
Stategg# (
>gg( )
defaultStategg* 6
=gg7 8$
UserManagerDataOperationgg9 Q
.ggQ R
GetStateByIdggR ^
(gg^ _
	newPlayergg_ h
.ggh i
IdStateggi p
)ggp q
;ggq r
ifhh 
(hh 
defaultStatehh  
.hh  !
	CodeEventhh! *
==hh+ -
ExceptionDictionaryhh. A
.hhA B
SUCCESFULL_EVENThhB R
)hhR S
{ii 
GenericClassServerjj &
<jj& '
Playerjj' -
>jj- .
playerSavedjj/ :
=jj; <$
UserManagerDataOperationjj= U
.jjU V 
SavePlayerInDataBasejjV j
(jjj k
	userSavedjjk t
.jjt u
ObjectSaved	jju Ä
,
jjÄ Å
defaultState
jjÇ é
.
jjé è
ObjectSaved
jjè ö
,
jjö õ
newPlayerAccount
jjú ¨
)
jj¨ ≠
;
jj≠ Æ
responseOfOperationkk '
=kk( )
playerSavedkk* 5
.kk5 6
	CodeEventkk6 ?
;kk? @
}ll 
elsemm 
{nn 
responseOfOperationoo '
=oo( )
defaultStateoo* 6
.oo6 7
	CodeEventoo7 @
;oo@ A
}pp 
}qq 
elserr 
{ss 
responseOfOperationtt #
=tt$ %
	userSavedtt& /
.tt/ 0
	CodeEventtt0 9
;tt9 :
}uu 
returnvv 
responseOfOperationvv &
;vv& '
}ww 	
publiczz 
GenericClasszz 
<zz 
intzz 
>zz  !
UpdateUserInformationzz! 6
(zz6 7
intzz7 :
idUserzz; A
,zzA B
stringzzC I

editedNamezzJ T
)zzT U
{{{ 	
GenericClass|| 
<|| 
int|| 
>|| 
resultToReturn|| ,
=||- .
new||/ 2
GenericClass||3 ?
<||? @
int||@ C
>||C D
(||D E
)||E F
;||F G
try}} 
{~~ 
if 
( 
string 
. 
IsNullOrEmpty (
(( )

editedName) 3
)3 4
)4 5
{
ÄÄ 
return
ÅÅ #
NullParametersHandler
ÅÅ 0
.
ÅÅ0 1)
HandleNullParametersService
ÅÅ1 L
(
ÅÅL M
resultToReturn
ÅÅM [
)
ÅÅ[ \
;
ÅÅ\ ]
}
ÇÇ 
var
ÉÉ 
updateInformation
ÉÉ %
=
ÉÉ& '&
UserManagerDataOperation
ÉÉ( @
.
ÉÉ@ A#
UpdateUserInformation
ÉÉA V
(
ÉÉV W
idUser
ÉÉW ]
,
ÉÉ] ^

editedName
ÉÉ_ i
)
ÉÉi j
;
ÉÉj k
if
ÑÑ 
(
ÑÑ 
updateInformation
ÑÑ %
.
ÑÑ% &
	CodeEvent
ÑÑ& /
==
ÑÑ0 2!
ExceptionDictionary
ÑÑ3 F
.
ÑÑF G
SUCCESFULL_EVENT
ÑÑG W
)
ÑÑW X
{
ÖÖ 
resultToReturn
ÜÜ "
.
ÜÜ" #
ObjectSaved
ÜÜ# .
=
ÜÜ/ 0
updateInformation
ÜÜ1 B
.
ÜÜB C
ObjectSaved
ÜÜC N
;
ÜÜN O
resultToReturn
áá "
.
áá" #
	CodeEvent
áá# ,
=
áá- .!
ExceptionDictionary
áá/ B
.
ááB C
SUCCESFULL_EVENT
ááC S
;
ááS T
}
àà 
else
ââ 
{
ää 
resultToReturn
ãã "
.
ãã" #
	CodeEvent
ãã# ,
=
ãã- .
updateInformation
ãã/ @
.
ãã@ A
	CodeEvent
ããA J
;
ããJ K
}
åå 
}
çç 
catch
éé 
(
éé 1
#CommunicationObjectFaultedException
éé 6
ex
éé7 9
)
éé9 :
{
èè 
resultToReturn
êê 
.
êê 
	CodeEvent
êê (
=
êê) *!
ExceptionDictionary
êê+ >
.
êê> ? 
UNSUCCESFULL_EVENT
êê? Q
;
êêQ R
ExceptionHandler
ëë  
.
ëë  !
LogException
ëë! -
(
ëë- .
ex
ëë. 0
,
ëë0 1!
ExceptionDictionary
ëë2 E
.
ëëE F
FATAL_EXCEPTION
ëëF U
)
ëëU V
;
ëëV W
}
íí 
catch
ìì 
(
ìì 
TimeoutException
ìì #
ex
ìì$ &
)
ìì& '
{
îî 
resultToReturn
ïï 
.
ïï 
	CodeEvent
ïï (
=
ïï) *!
ExceptionDictionary
ïï+ >
.
ïï> ? 
UNSUCCESFULL_EVENT
ïï? Q
;
ïïQ R
ExceptionHandler
ññ  
.
ññ  !
LogException
ññ! -
(
ññ- .
ex
ññ. 0
,
ññ0 1!
ExceptionDictionary
ññ2 E
.
ññE F
FATAL_EXCEPTION
ññF U
)
ññU V
;
ññV W
}
óó 
catch
òò 
(
òò $
CommunicationException
òò )
ex
òò* ,
)
òò, -
{
ôô 
resultToReturn
öö 
.
öö 
	CodeEvent
öö (
=
öö) *!
ExceptionDictionary
öö+ >
.
öö> ? 
UNSUCCESFULL_EVENT
öö? Q
;
ööQ R
ExceptionHandler
õõ  
.
õõ  !
LogException
õõ! -
(
õõ- .
ex
õõ. 0
,
õõ0 1!
ExceptionDictionary
õõ2 E
.
õõE F
FATAL_EXCEPTION
õõF U
)
õõU V
;
õõV W
}
úú 
catch
ùù 
(
ùù '
InvalidOperationException
ùù ,
ex
ùù- /
)
ùù/ 0
{
ûû 
resultToReturn
üü 
.
üü 
	CodeEvent
üü (
=
üü) *!
ExceptionDictionary
üü+ >
.
üü> ? 
UNSUCCESFULL_EVENT
üü? Q
;
üüQ R
ExceptionHandler
††  
.
††  !
LogException
††! -
(
††- .
ex
††. 0
,
††0 1!
ExceptionDictionary
††2 E
.
††E F
FATAL_EXCEPTION
††F U
)
††U V
;
††V W
}
°° 
return
¢¢ 
resultToReturn
¢¢ !
;
¢¢! "
}
££ 	
public
¶¶ 
GenericClass
¶¶ 
<
¶¶ 
int
¶¶ 
>
¶¶  
UpdatePlayerPhoto
¶¶! 2
(
¶¶2 3
int
¶¶3 6
idPlayer
¶¶7 ?
,
¶¶? @
int
¶¶A D
imageId
¶¶E L
)
¶¶L M
{
ßß 	
GenericClass
®® 
<
®® 
int
®® 
>
®® 
resultToReturn
®® ,
=
®®- .
new
®®/ 2
GenericClass
®®3 ?
<
®®? @
int
®®@ C
>
®®C D
(
®®D E
)
®®E F
;
®®F G
try
©© 
{
™™ 
var
´´ 
updatePhoto
´´ 
=
´´  !&
UserManagerDataOperation
´´" :
.
´´: ;
UpdatePhotoPlayer
´´; L
(
´´L M
idPlayer
´´M U
,
´´U V
imageId
´´W ^
)
´´^ _
;
´´_ `
if
¨¨ 
(
¨¨ 
updatePhoto
¨¨ 
.
¨¨  
	CodeEvent
¨¨  )
==
¨¨* ,!
ExceptionDictionary
¨¨- @
.
¨¨@ A
SUCCESFULL_EVENT
¨¨A Q
)
¨¨Q R
{
≠≠ 
resultToReturn
ÆÆ "
.
ÆÆ" #
ObjectSaved
ÆÆ# .
=
ÆÆ/ 0
updatePhoto
ÆÆ1 <
.
ÆÆ< =
ObjectSaved
ÆÆ= H
;
ÆÆH I
resultToReturn
ØØ "
.
ØØ" #
	CodeEvent
ØØ# ,
=
ØØ- .!
ExceptionDictionary
ØØ/ B
.
ØØB C
SUCCESFULL_EVENT
ØØC S
;
ØØS T
}
∞∞ 
else
±± 
{
≤≤ 
resultToReturn
≥≥ "
.
≥≥" #
	CodeEvent
≥≥# ,
=
≥≥- .
updatePhoto
≥≥/ :
.
≥≥: ;
	CodeEvent
≥≥; D
;
≥≥D E
}
¥¥ 
}
µµ 
catch
∂∂ 
(
∂∂ 1
#CommunicationObjectFaultedException
∂∂ 6
ex
∂∂7 9
)
∂∂9 :
{
∑∑ .
 ConsultInformationImplementation
∏∏ 0 
consultInformation
∏∏1 C
=
∏∏D E
new
∏∏F I
(
∏∏I J
)
∏∏J K
;
∏∏K L
resultToReturn
ππ 
.
ππ 
	CodeEvent
ππ (
=
ππ) *!
ExceptionDictionary
ππ+ >
.
ππ> ? 
UNSUCCESFULL_EVENT
ππ? Q
;
ππQ R"
ChannelAdministrator
∫∫ $
.
∫∫$ %&
HandleCommunicationIssue
∫∫% =
(
∫∫= > 
consultInformation
∫∫> P
.
∫∫P Q#
ConsultUserByIdPlayer
∫∫Q f
(
∫∫f g
idPlayer
∫∫g o
)
∫∫o p
.
∫∫p q
ObjectSaved
∫∫q |
.
∫∫| }
IdUser∫∫} É
,∫∫É Ñ$
ChannelAdministrator∫∫Ö ô
.∫∫ô ö/
GENERIC_COMMUNICATION_EXCEPTION∫∫ö π
)∫∫π ∫
;∫∫∫ ª
ExceptionHandler
ªª  
.
ªª  !
LogException
ªª! -
(
ªª- .
ex
ªª. 0
,
ªª0 1!
ExceptionDictionary
ªª2 E
.
ªªE F
FATAL_EXCEPTION
ªªF U
)
ªªU V
;
ªªV W
}
ºº 
catch
ΩΩ 
(
ΩΩ 
TimeoutException
ΩΩ #
ex
ΩΩ$ &
)
ΩΩ& '
{
ææ .
 ConsultInformationImplementation
øø 0 
consultInformation
øø1 C
=
øøD E
new
øøF I
(
øøI J
)
øøJ K
;
øøK L
resultToReturn
¿¿ 
.
¿¿ 
	CodeEvent
¿¿ (
=
¿¿) *!
ExceptionDictionary
¿¿+ >
.
¿¿> ? 
UNSUCCESFULL_EVENT
¿¿? Q
;
¿¿Q R"
ChannelAdministrator
¡¡ $
.
¡¡$ %&
HandleCommunicationIssue
¡¡% =
(
¡¡= > 
consultInformation
¡¡> P
.
¡¡P Q#
ConsultUserByIdPlayer
¡¡Q f
(
¡¡f g
idPlayer
¡¡g o
)
¡¡o p
.
¡¡p q
ObjectSaved
¡¡q |
.
¡¡| }
IdUser¡¡} É
,¡¡É Ñ$
ChannelAdministrator¡¡Ö ô
.¡¡ô ö/
GENERIC_COMMUNICATION_EXCEPTION¡¡ö π
)¡¡π ∫
;¡¡∫ ª
ExceptionHandler
¬¬  
.
¬¬  !
LogException
¬¬! -
(
¬¬- .
ex
¬¬. 0
,
¬¬0 1!
ExceptionDictionary
¬¬2 E
.
¬¬E F
FATAL_EXCEPTION
¬¬F U
)
¬¬U V
;
¬¬V W
}
√√ 
catch
ƒƒ 
(
ƒƒ $
CommunicationException
ƒƒ )
ex
ƒƒ* ,
)
ƒƒ, -
{
≈≈ .
 ConsultInformationImplementation
∆∆ 0 
consultInformation
∆∆1 C
=
∆∆D E
new
∆∆F I
(
∆∆I J
)
∆∆J K
;
∆∆K L
resultToReturn
«« 
.
«« 
	CodeEvent
«« (
=
««) *!
ExceptionDictionary
««+ >
.
««> ? 
UNSUCCESFULL_EVENT
««? Q
;
««Q R"
ChannelAdministrator
»» $
.
»»$ %&
HandleCommunicationIssue
»»% =
(
»»= > 
consultInformation
»»> P
.
»»P Q#
ConsultUserByIdPlayer
»»Q f
(
»»f g
idPlayer
»»g o
)
»»o p
.
»»p q
ObjectSaved
»»q |
.
»»| }
IdUser»»} É
,»»É Ñ$
ChannelAdministrator»»Ö ô
.»»ô ö/
GENERIC_COMMUNICATION_EXCEPTION»»ö π
)»»π ∫
;»»∫ ª
ExceptionHandler
……  
.
……  !
LogException
……! -
(
……- .
ex
……. 0
,
……0 1!
ExceptionDictionary
……2 E
.
……E F
FATAL_EXCEPTION
……F U
)
……U V
;
……V W
}
   
catch
ÀÀ 
(
ÀÀ '
InvalidOperationException
ÀÀ ,
ex
ÀÀ- /
)
ÀÀ/ 0
{
ÃÃ 
resultToReturn
ÕÕ 
.
ÕÕ 
	CodeEvent
ÕÕ (
=
ÕÕ) *!
ExceptionDictionary
ÕÕ+ >
.
ÕÕ> ? 
UNSUCCESFULL_EVENT
ÕÕ? Q
;
ÕÕQ R
ExceptionHandler
ŒŒ  
.
ŒŒ  !
LogException
ŒŒ! -
(
ŒŒ- .
ex
ŒŒ. 0
,
ŒŒ0 1!
ExceptionDictionary
ŒŒ2 E
.
ŒŒE F
FATAL_EXCEPTION
ŒŒF U
)
ŒŒU V
;
ŒŒV W
}
œœ 
return
–– 
resultToReturn
–– !
;
––! "
}
—— 	
public
”” 
GenericClass
”” 
<
”” 
int
”” 
>
””  
UpdateEmailUser
””! 0
(
””0 1
int
””1 4
idUser
””5 ;
,
””; <
string
””= C
email
””D I
)
””I J
{
‘‘ 	
GenericClass
’’ 
<
’’ 
int
’’ 
>
’’ 
resultToReturn
’’ ,
=
’’- .
new
’’/ 2
GenericClass
’’3 ?
<
’’? @
int
’’@ C
>
’’C D
(
’’D E
)
’’E F
;
’’F G
try
÷÷ 
{
◊◊ 
var
ÿÿ 
updatePhoto
ÿÿ 
=
ÿÿ  !&
UserManagerDataOperation
ÿÿ" :
.
ÿÿ: ;
UpdateEmailUser
ÿÿ; J
(
ÿÿJ K
idUser
ÿÿK Q
,
ÿÿQ R
email
ÿÿR W
)
ÿÿW X
;
ÿÿX Y
if
ŸŸ 
(
ŸŸ 
updatePhoto
ŸŸ 
.
ŸŸ  
	CodeEvent
ŸŸ  )
==
ŸŸ* ,!
ExceptionDictionary
ŸŸ- @
.
ŸŸ@ A
SUCCESFULL_EVENT
ŸŸA Q
)
ŸŸQ R
{
⁄⁄ 
resultToReturn
€€ "
.
€€" #
ObjectSaved
€€# .
=
€€/ 0
updatePhoto
€€1 <
.
€€< =
ObjectSaved
€€= H
;
€€H I
resultToReturn
‹‹ "
.
‹‹" #
	CodeEvent
‹‹# ,
=
‹‹- .!
ExceptionDictionary
‹‹/ B
.
‹‹B C
SUCCESFULL_EVENT
‹‹C S
;
‹‹S T
}
›› 
else
ﬁﬁ 
{
ﬂﬂ 
resultToReturn
‡‡ "
.
‡‡" #
	CodeEvent
‡‡# ,
=
‡‡- .
updatePhoto
‡‡/ :
.
‡‡: ;
	CodeEvent
‡‡; D
;
‡‡D E
}
·· 
}
‚‚ 
catch
„„ 
(
„„ 1
#CommunicationObjectFaultedException
„„ 6
ex
„„7 9
)
„„9 :
{
‰‰ .
 ConsultInformationImplementation
ÂÂ 0 
consultInformation
ÂÂ1 C
=
ÂÂD E
new
ÂÂF I
(
ÂÂI J
)
ÂÂJ K
;
ÂÂK L
resultToReturn
ÊÊ 
.
ÊÊ 
	CodeEvent
ÊÊ (
=
ÊÊ) *!
ExceptionDictionary
ÊÊ+ >
.
ÊÊ> ? 
UNSUCCESFULL_EVENT
ÊÊ? Q
;
ÊÊQ R"
ChannelAdministrator
ÁÁ $
.
ÁÁ$ %&
HandleCommunicationIssue
ÁÁ% =
(
ÁÁ= > 
consultInformation
ÁÁ> P
.
ÁÁP Q
ConsultUserById
ÁÁQ `
(
ÁÁ` a
idUser
ÁÁa g
)
ÁÁg h
.
ÁÁh i
ObjectSaved
ÁÁi t
.
ÁÁt u
IdUser
ÁÁu {
,
ÁÁ{ |#
ChannelAdministratorÁÁ} ë
.ÁÁë í/
GENERIC_COMMUNICATION_EXCEPTIONÁÁí ±
)ÁÁ± ≤
;ÁÁ≤ ≥
ExceptionHandler
ËË  
.
ËË  !
LogException
ËË! -
(
ËË- .
ex
ËË. 0
.
ËË0 1
InnerException
ËË1 ?
,
ËË? @!
ExceptionDictionary
ËËA T
.
ËËT U
FATAL_EXCEPTION
ËËU d
)
ËËd e
;
ËËe f
}
ÈÈ 
catch
ÍÍ 
(
ÍÍ 
TimeoutException
ÍÍ #
ex
ÍÍ$ &
)
ÍÍ& '
{
ÎÎ .
 ConsultInformationImplementation
ÏÏ 0 
consultInformation
ÏÏ1 C
=
ÏÏD E
new
ÏÏF I
(
ÏÏI J
)
ÏÏJ K
;
ÏÏK L
resultToReturn
ÌÌ 
.
ÌÌ 
	CodeEvent
ÌÌ (
=
ÌÌ) *!
ExceptionDictionary
ÌÌ+ >
.
ÌÌ> ? 
UNSUCCESFULL_EVENT
ÌÌ? Q
;
ÌÌQ R"
ChannelAdministrator
ÓÓ $
.
ÓÓ$ %&
HandleCommunicationIssue
ÓÓ% =
(
ÓÓ= > 
consultInformation
ÓÓ> P
.
ÓÓP Q
ConsultUserById
ÓÓQ `
(
ÓÓ` a
idUser
ÓÓa g
)
ÓÓg h
.
ÓÓh i
ObjectSaved
ÓÓi t
.
ÓÓt u
IdUser
ÓÓu {
,
ÓÓ{ |#
ChannelAdministratorÓÓ} ë
.ÓÓë í/
GENERIC_COMMUNICATION_EXCEPTIONÓÓí ±
)ÓÓ± ≤
;ÓÓ≤ ≥
ExceptionHandler
ÔÔ  
.
ÔÔ  !
LogException
ÔÔ! -
(
ÔÔ- .
ex
ÔÔ. 0
.
ÔÔ0 1
InnerException
ÔÔ1 ?
,
ÔÔ? @!
ExceptionDictionary
ÔÔA T
.
ÔÔT U
FATAL_EXCEPTION
ÔÔU d
)
ÔÔd e
;
ÔÔe f
}
 
catch
ÒÒ 
(
ÒÒ $
CommunicationException
ÒÒ )
ex
ÒÒ* ,
)
ÒÒ, -
{
ÚÚ .
 ConsultInformationImplementation
ÛÛ 0 
consultInformation
ÛÛ1 C
=
ÛÛD E
new
ÛÛF I
(
ÛÛI J
)
ÛÛJ K
;
ÛÛK L
resultToReturn
ÙÙ 
.
ÙÙ 
	CodeEvent
ÙÙ (
=
ÙÙ) *!
ExceptionDictionary
ÙÙ+ >
.
ÙÙ> ? 
UNSUCCESFULL_EVENT
ÙÙ? Q
;
ÙÙQ R"
ChannelAdministrator
ıı $
.
ıı$ %&
HandleCommunicationIssue
ıı% =
(
ıı= > 
consultInformation
ıı> P
.
ııP Q
ConsultUserById
ııQ `
(
ıı` a
idUser
ııa g
)
ııg h
.
ııh i
ObjectSaved
ııi t
.
ııt u
IdUser
ııu {
,
ıı{ |#
ChannelAdministratorıı} ë
.ııë í/
GENERIC_COMMUNICATION_EXCEPTIONııí ±
)ıı± ≤
;ıı≤ ≥
ExceptionHandler
ˆˆ  
.
ˆˆ  !
LogException
ˆˆ! -
(
ˆˆ- .
ex
ˆˆ. 0
.
ˆˆ0 1
InnerException
ˆˆ1 ?
,
ˆˆ? @!
ExceptionDictionary
ˆˆA T
.
ˆˆT U
FATAL_EXCEPTION
ˆˆU d
)
ˆˆd e
;
ˆˆe f
}
˜˜ 
catch
¯¯ 
(
¯¯ '
InvalidOperationException
¯¯ ,
ex
¯¯- /
)
¯¯/ 0
{
˘˘ 
resultToReturn
˙˙ 
.
˙˙ 
	CodeEvent
˙˙ (
=
˙˙) *!
ExceptionDictionary
˙˙+ >
.
˙˙> ? 
UNSUCCESFULL_EVENT
˙˙? Q
;
˙˙Q R
ExceptionHandler
˚˚  
.
˚˚  !
LogException
˚˚! -
(
˚˚- .
ex
˚˚. 0
,
˚˚0 1!
ExceptionDictionary
˚˚2 E
.
˚˚E F
FATAL_EXCEPTION
˚˚F U
)
˚˚U V
;
˚˚V W
}
¸¸ 
return
˝˝ 
resultToReturn
˝˝ !
;
˝˝! "
}
˛˛ 	
public
ÄÄ 
GenericClass
ÄÄ 
<
ÄÄ 
int
ÄÄ 
>
ÄÄ   
UpdatePasswordUser
ÄÄ! 3
(
ÄÄ3 4
string
ÄÄ4 :
userName
ÄÄ; C
,
ÄÄC D
string
ÄÄE K
password
ÄÄL T
)
ÄÄT U
{
ÅÅ 	
GenericClass
ÇÇ 
<
ÇÇ 
int
ÇÇ 
>
ÇÇ 
resultToReturn
ÇÇ ,
=
ÇÇ- .
new
ÇÇ/ 2
GenericClass
ÇÇ3 ?
<
ÇÇ? @
int
ÇÇ@ C
>
ÇÇC D
(
ÇÇD E
)
ÇÇE F
{
ÉÉ 
	CodeEvent
ÑÑ 
=
ÑÑ !
ExceptionDictionary
ÑÑ /
.
ÑÑ/ 0 
UNSUCCESFULL_EVENT
ÑÑ0 B
,
ÑÑB C
}
ÜÜ 
;
ÜÜ 
try
áá 
{
àà 
var
ââ 
updatePhoto
ââ 
=
ââ  !&
UserManagerDataOperation
ââ" :
.
ââ: ; 
UpdatePasswordUser
ââ; M
(
ââM N
userName
ââN V
,
ââV W
password
ââX `
)
ââ` a
;
ââa b
if
ää 
(
ää 
updatePhoto
ää 
.
ää  
	CodeEvent
ää  )
==
ää* ,!
ExceptionDictionary
ää- @
.
ää@ A
SUCCESFULL_EVENT
ääA Q
)
ääQ R
{
ãã 
resultToReturn
åå "
.
åå" #
ObjectSaved
åå# .
=
åå/ 0
updatePhoto
åå1 <
.
åå< =
ObjectSaved
åå= H
;
ååH I
resultToReturn
çç "
.
çç" #
	CodeEvent
çç# ,
=
çç- .!
ExceptionDictionary
çç/ B
.
ççB C
SUCCESFULL_EVENT
ççC S
;
ççS T
}
éé 
else
èè 
{
êê 
resultToReturn
ëë "
.
ëë" #
ObjectSaved
ëë# .
=
ëë/ 0
updatePhoto
ëë1 <
.
ëë< =
ObjectSaved
ëë= H
;
ëëH I
resultToReturn
íí "
.
íí" #
	CodeEvent
íí# ,
=
íí- .
updatePhoto
íí/ :
.
íí: ;
	CodeEvent
íí; D
;
ííD E
}
ìì 
}
îî 
catch
ïï 
(
ïï 1
#CommunicationObjectFaultedException
ïï 6
ex
ïï7 9
)
ïï9 :
{
ññ 
ExceptionHandler
óó  
.
óó  !
LogException
óó! -
(
óó- .
ex
óó. 0
.
óó0 1
InnerException
óó1 ?
,
óó? @!
ExceptionDictionary
óóA T
.
óóT U
FATAL_EXCEPTION
óóU d
)
óód e
;
óóe f
}
òò 
catch
ôô 
(
ôô 
TimeoutException
ôô #
ex
ôô$ &
)
ôô& '
{
öö 
ExceptionHandler
õõ  
.
õõ  !
LogException
õõ! -
(
õõ- .
ex
õõ. 0
.
õõ0 1
InnerException
õõ1 ?
,
õõ? @!
ExceptionDictionary
õõA T
.
õõT U
FATAL_EXCEPTION
õõU d
)
õõd e
;
õõe f
}
úú 
catch
ùù 
(
ùù $
CommunicationException
ùù )
ex
ùù* ,
)
ùù, -
{
ûû 
ExceptionHandler
üü 
.
üü  
LogException
üü  ,
(
üü, -
ex
üü- /
.
üü/ 0
InnerException
üü0 >
,
üü> ?!
ExceptionDictionary
üü@ S
.
üüS T
FATAL_EXCEPTION
üüT c
)
üüc d
;
üüd e
}
†† 
catch
°° 
(
°° '
InvalidOperationException
°° ,
ex
°°- /
)
°°/ 0
{
¢¢ 
ExceptionHandler
££  
.
££  !
LogException
££! -
(
££- .
ex
££. 0
,
££0 1!
ExceptionDictionary
££2 E
.
££E F
FATAL_EXCEPTION
££F U
)
££U V
;
££V W
}
§§ 
return
•• 
resultToReturn
•• !
;
••! "
}
¶¶ 	
}
ßß 
}®® ¸ë
¢C:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameServer\JeopardyGame.Service\ServiceImplementation\ValidateUserExistanceImplementation.cs
	namespace 	
JeopardyGame
 
. 
Service 
. !
ServiceImplementation 4
{ 
internal 
class /
#ValidateUserExistenceImplementation 6
:7 8"
IValidateUserExistance9 O
{ 
private 
const 
int 
ALLOWED_VALUES (
=) *
$num+ ,
;, -
private 
static 
readonly 
Object  &

lockObject' 1
=2 3
new4 7
Object8 >
(> ?
)? @
;@ A
public 
GenericClass 
< 
int 
>  
UserAlreadyExist! 1
(1 2
UserPojo2 :
newUser; B
)B C
{ 	
lock 
( 

lockObject 
) 
{ 
GenericClass 
< 
int  
>  !
successCriteria" 1
=2 3
new4 7
(7 8
)8 9
{ 
	CodeEvent 
= 
ExceptionDictionary  3
.3 4
SUCCESFULL_EVENT4 D
,D E
ObjectSaved 
=  !
ALLOWED_VALUES" 0
} 
; 
try 
{ #
VerifyUsersInDictionary +
(+ ,
), -
;- .
if   
(   
newUser   
==    "
null  # '
)  ' (
{!! 
return"" !
NullParametersHandler"" 4
.""4 5'
HandleNullParametersService""5 P
(""P Q
successCriteria""Q `
)""` a
;""a b
}## 
successCriteria$$ #
=$$$ %
EmailAlreadyExist$$& 7
($$7 8
newUser$$8 ?
.$$? @
EmailAddress$$@ L
)$$L M
;$$M N
if%% 
(%% 
successCriteria%% '
.%%' (
	CodeEvent%%( 1
!=%%2 4
ExceptionDictionary%%5 H
.%%H I
SUCCESFULL_EVENT%%I Y
||%%Z \
successCriteria%%] l
.%%l m
ObjectSaved%%m x
!=%%y {
ALLOWED_VALUES	%%| ä
)
%%ä ã
{&& 
successCriteria'' '
.''' (
ObjectSaved''( 3
=''4 5
ExceptionDictionary''6 I
.''I J
EMAIL_ALREADY_EXIST''J ]
;''] ^
return(( 
successCriteria(( .
;((. /
})) 
successCriteria** #
=**$ % 
UserNameAlreadyExist**& :
(**: ;
newUser**; B
.**B C
UserName**C K
)**K L
;**L M
if++ 
(++ 
successCriteria++ '
.++' (
	CodeEvent++( 1
!=++2 4
ExceptionDictionary++5 H
.++H I
SUCCESFULL_EVENT++I Y
||++Z \
successCriteria++] l
.++l m
ObjectSaved++m x
!=++y {
ALLOWED_VALUES	++| ä
)
++ä ã
{,, 
successCriteria-- '
.--' (
ObjectSaved--( 3
=--4 5
ExceptionDictionary--6 I
.--I J"
USERNAME_ALREADY_EXIST--J `
;--` a
return.. 
successCriteria.. .
;... /
}// 
bool00 
isSavedUserName00 (
=00) *,
 GuestPlayerManagerImplementation00+ K
.00K L!
IsUserNameInBlackList00L a
(00a b
newUser00b i
.00i j
UserName00j r
)00r s
;00s t
if11 
(11 
isSavedUserName11 '
)11' (
{22 
successCriteria33 '
.33' (
ObjectSaved33( 3
=334 5
ExceptionDictionary336 I
.33I J"
USERNAME_ALREADY_EXIST33J `
;33` a
successCriteria44 '
.44' (
	CodeEvent44( 1
=442 3
ExceptionDictionary444 G
.44G H
UNSUCCESFULL_EVENT44H Z
;44Z [
return55 
successCriteria55 .
;55. /
}66 
successCriteria77 #
=77$ %
CheckDictionary77& 5
(775 6
newUser776 =
)77= >
;77> ?
if88 
(88 
successCriteria88 '
.88' (
	CodeEvent88( 1
!=882 4
ExceptionDictionary885 H
.88H I
SUCCESFULL_EVENT88I Y
||88Z \
successCriteria88] l
.88l m
ObjectSaved88m x
!=88y {
ALLOWED_VALUES	88| ä
)
88ä ã
{99 
return:: 
successCriteria:: .
;::. /
};; 
}<< 
catch== 
(== /
#CommunicationObjectFaultedException== :
ex==; =
)=== >
{>> 
successCriteria?? #
.??# $
	CodeEvent??$ -
=??. /
ExceptionDictionary??0 C
.??C D
UNSUCCESFULL_EVENT??D V
;??V W
ExceptionHandler@@ $
.@@$ %
LogException@@% 1
(@@1 2
ex@@2 4
,@@4 5
ExceptionDictionary@@6 I
.@@I J
FATAL_EXCEPTION@@J Y
)@@Y Z
;@@Z [
}AA 
catchBB 
(BB 
TimeoutExceptionBB '
exBB( *
)BB* +
{CC 
successCriteriaDD #
.DD# $
	CodeEventDD$ -
=DD. /
ExceptionDictionaryDD0 C
.DDC D
UNSUCCESFULL_EVENTDDD V
;DDV W
ExceptionHandlerEE $
.EE$ %
LogExceptionEE% 1
(EE1 2
exEE2 4
,EE4 5
ExceptionDictionaryEE6 I
.EEI J
FATAL_EXCEPTIONEEJ Y
)EEY Z
;EEZ [
}FF 
catchGG 
(GG "
CommunicationExceptionGG -
exGG. 0
)GG0 1
{HH 
successCriteriaII #
.II# $
	CodeEventII$ -
=II. /
ExceptionDictionaryII0 C
.IIC D
UNSUCCESFULL_EVENTIID V
;IIV W
ExceptionHandlerJJ $
.JJ$ %
LogExceptionJJ% 1
(JJ1 2
exJJ2 4
,JJ4 5
ExceptionDictionaryJJ6 I
.JJI J
FATAL_EXCEPTIONJJJ Y
)JJY Z
;JJZ [
}KK 
catchLL 
(LL %
InvalidOperationExceptionLL 0
exLL1 3
)LL3 4
{MM 
successCriteriaNN #
.NN# $
	CodeEventNN$ -
=NN. /
ExceptionDictionaryNN0 C
.NNC D
UNSUCCESFULL_EVENTNND V
;NNV W
ExceptionHandlerOO $
.OO$ %
LogExceptionOO% 1
(OO1 2
exOO2 4
,OO4 5
ExceptionDictionaryOO6 I
.OOI J
FATAL_EXCEPTIONOOJ Y
)OOY Z
;OOZ [
}PP 
returnQQ 
successCriteriaQQ &
;QQ& '
}RR 
}SS 	
privateUU 
voidUU #
VerifyUsersInDictionaryUU ,
(UU, -
)UU- .
{VV 	
varWW 
callBackChannelsWW  
=WW! "
LivingClientsWW# 0
.WW0 1 
GetLivingClientsListWW1 E
(WWE F
)WWF G
.WWG H
ToListWWH N
(WWN O
)WWO P
;WWP Q
foreachXX 
(XX 
varXX 
itemXX 
inXX  
callBackChannelsXX! 1
)XX1 2
{YY 
tryZZ 
{[[ 
bool\\ 
isActive\\ !
=\\" #
item\\$ (
.\\( )
Value\\) .
.\\. /
GetCallbackChannel\\/ A
<\\A B$
ICheckUserLivingCallBack\\B Z
>\\Z [
(\\[ \
)\\\ ]
.\\] ^
IsClientActive\\^ l
(\\l m
)\\m n
;\\n o
if]] 
(]] 
!]] 
isActive]] !
)]]! "
{^^ '
EmailConfirmationDictionary__ 3
.__3 4.
"RemoveRegistryOfUserFromDictionary__4 V
(__V W%
GetRoomCodeFromDictionary__W p
(__p q
item__q u
.__u v
Key__v y
)__y z
)__z {
;__{ |
LivingClients`` %
.``% &
CheckCallBacks``& 4
(``4 5
)``5 6
;``6 7
}aa 
}bb 
catchcc 
(cc /
#CommunicationObjectFaultedExceptioncc :
excc; =
)cc= >
{dd '
EmailConfirmationDictionaryee /
.ee/ 0.
"RemoveRegistryOfUserFromDictionaryee0 R
(eeR S%
GetRoomCodeFromDictionaryeeS l
(eel m
itemeem q
.eeq r
Keyeer u
)eeu v
)eev w
;eew x
LivingClientsff !
.ff! "
CheckCallBacksff" 0
(ff0 1
)ff1 2
;ff2 3
ExceptionHandlergg $
.gg$ %
LogExceptiongg% 1
(gg1 2
exgg2 4
,gg4 5
ExceptionDictionarygg6 I
.ggI J
FATAL_EXCEPTIONggJ Y
)ggY Z
;ggZ [
}hh 
catchii 
(ii 
TimeoutExceptionii '
exii( *
)ii* +
{jj '
EmailConfirmationDictionarykk /
.kk/ 0.
"RemoveRegistryOfUserFromDictionarykk0 R
(kkR S%
GetRoomCodeFromDictionarykkS l
(kkl m
itemkkm q
.kkq r
Keykkr u
)kku v
)kkv w
;kkw x
LivingClientsll !
.ll! "
CheckCallBacksll" 0
(ll0 1
)ll1 2
;ll2 3
ExceptionHandlermm $
.mm$ %
LogExceptionmm% 1
(mm1 2
exmm2 4
,mm4 5
ExceptionDictionarymm6 I
.mmI J
FATAL_EXCEPTIONmmJ Y
)mmY Z
;mmZ [
}nn 
catchoo 
(oo "
CommunicationExceptionoo -
exoo. 0
)oo0 1
{pp '
EmailConfirmationDictionaryqq /
.qq/ 0.
"RemoveRegistryOfUserFromDictionaryqq0 R
(qqR S%
GetRoomCodeFromDictionaryqqS l
(qql m
itemqqm q
.qqq r
Keyqqr u
)qqu v
)qqv w
;qqw x
LivingClientsrr !
.rr! "
CheckCallBacksrr" 0
(rr0 1
)rr1 2
;rr2 3
ExceptionHandlerss $
.ss$ %
LogExceptionss% 1
(ss1 2
exss2 4
,ss4 5
ExceptionDictionaryss6 I
.ssI J
FATAL_EXCEPTIONssJ Y
)ssY Z
;ssZ [
}tt 
catchuu 
(uu %
InvalidOperationExceptionuu 0
exuu1 3
)uu3 4
{vv '
EmailConfirmationDictionaryww /
.ww/ 0.
"RemoveRegistryOfUserFromDictionaryww0 R
(wwR S%
GetRoomCodeFromDictionarywwS l
(wwl m
itemwwm q
.wwq r
Keywwr u
)wwu v
)wwv w
;www x
LivingClientsxx !
.xx! "
CheckCallBacksxx" 0
(xx0 1
)xx1 2
;xx2 3
ExceptionHandleryy $
.yy$ %
LogExceptionyy% 1
(yy1 2
exyy2 4
,yy4 5
ExceptionDictionaryyy6 I
.yyI J
FATAL_EXCEPTIONyyJ Y
)yyY Z
;yyZ [
}zz 
}{{ 
}|| 	
private~~ 
string~~ %
GetRoomCodeFromDictionary~~ 0
(~~0 1
string~~1 7
userName~~8 @
)~~@ A
{ 	
string
ÄÄ 
roomCode
ÄÄ 
=
ÄÄ )
EmailConfirmationDictionary
ÄÄ 9
.
ÄÄ9 :!
GetUserToVerifyList
ÄÄ: M
(
ÄÄM N
)
ÄÄN O
.
ÄÄO P
FirstOrDefault
ÄÄP ^
(
ÄÄ^ _
us
ÄÄ_ a
=>
ÄÄb d
us
ÄÄe g
.
ÄÄg h
Value
ÄÄh m
.
ÄÄm n
UserName
ÄÄn v
.
ÄÄv w
Equals
ÄÄw }
(
ÄÄ} ~
userNameÄÄ~ Ü
)ÄÄÜ á
)ÄÄá à
.ÄÄà â
KeyÄÄâ å
;ÄÄå ç
return
ÅÅ 
roomCode
ÅÅ 
;
ÅÅ 
}
ÇÇ 	
public
ÉÉ 
GenericClass
ÉÉ 
<
ÉÉ 
int
ÉÉ 
>
ÉÉ  
EmailAlreadyExist
ÉÉ! 2
(
ÉÉ2 3
String
ÉÉ3 9
email
ÉÉ: ?
)
ÉÉ? @
{
ÑÑ 	
GenericClass
ÖÖ 
<
ÖÖ 
int
ÖÖ 
>
ÖÖ 
resultToReturn
ÖÖ ,
=
ÖÖ- .
new
ÖÖ/ 2
(
ÖÖ2 3
)
ÖÖ3 4
;
ÖÖ4 5
if
ÜÜ 
(
ÜÜ 
string
ÜÜ 
.
ÜÜ 
IsNullOrEmpty
ÜÜ $
(
ÜÜ$ %
email
ÜÜ% *
)
ÜÜ* +
)
ÜÜ+ ,
{
áá 
return
àà #
NullParametersHandler
àà ,
.
àà, -)
HandleNullParametersService
àà- H
(
ààH I
resultToReturn
ààI W
)
ààW X
;
ààX Y
}
ââ  
GenericClassServer
ää 
<
ää 
int
ää "
>
ää" #
result
ää$ *
=
ää+ ,
LoginOperations
ää- <
.
ää< ="
ValidateIfEmailExist
ää= Q
(
ääQ R
email
ääR W
)
ääW X
;
ääX Y
resultToReturn
ãã 
.
ãã 
ObjectSaved
ãã &
=
ãã' (
result
ãã) /
.
ãã/ 0
ObjectSaved
ãã0 ;
;
ãã; <
resultToReturn
åå 
.
åå 
	CodeEvent
åå $
=
åå% &
result
åå' -
.
åå- .
	CodeEvent
åå. 7
;
åå7 8
return
çç 
resultToReturn
çç !
;
çç! "
}
éé 	
private
êê 
GenericClass
êê 
<
êê 
int
êê  
>
êê  !"
UserNameAlreadyExist
êê" 6
(
êê6 7
String
êê7 =
userName
êê> F
)
êêF G
{
ëë 	
GenericClass
íí 
<
íí 
int
íí 
>
íí 
resultToReturn
íí ,
=
íí- .
new
íí/ 2
(
íí2 3
)
íí3 4
;
íí4 5
if
ìì 
(
ìì 
string
ìì 
.
ìì 
IsNullOrEmpty
ìì $
(
ìì$ %
userName
ìì% -
)
ìì- .
)
ìì. /
{
îî 
return
ïï #
NullParametersHandler
ïï ,
.
ïï, -)
HandleNullParametersService
ïï- H
(
ïïH I
resultToReturn
ïïI W
)
ïïW X
;
ïïX Y
}
ññ  
GenericClassServer
óó 
<
óó 
int
óó "
>
óó" #
result
óó$ *
=
óó+ ,
LoginOperations
óó- <
.
óó< =%
ValidateIfUserNameExist
óó= T
(
óóT U
userName
óóU ]
)
óó] ^
;
óó^ _
resultToReturn
òò 
.
òò 
ObjectSaved
òò &
=
òò' (
result
òò) /
.
òò/ 0
ObjectSaved
òò0 ;
;
òò; <
resultToReturn
ôô 
.
ôô 
	CodeEvent
ôô $
=
ôô% &
result
ôô' -
.
ôô- .
	CodeEvent
ôô. 7
;
ôô7 8
return
öö 
resultToReturn
öö !
;
öö! "
}
õõ 	
private
ùù 
GenericClass
ùù 
<
ùù 
int
ùù  
>
ùù  !
CheckDictionary
ùù" 1
(
ùù1 2
UserPojo
ùù2 :
userToVerify
ùù; G
)
ùùG H
{
ûû 	
GenericClass
üü 
<
üü 
int
üü 
>
üü 
resultToReturn
üü ,
=
üü- .
new
üü/ 2
(
üü2 3
)
üü3 4
{
†† 
	CodeEvent
°° 
=
°° !
ExceptionDictionary
°° /
.
°°/ 0
SUCCESFULL_EVENT
°°0 @
,
°°@ A
ObjectSaved
¢¢ 
=
¢¢ 
ALLOWED_VALUES
¢¢ ,
}
££ 
;
££ 
if
§§ 
(
§§ 
userToVerify
§§ 
==
§§ 
null
§§  $
)
§§$ %
{
•• 
return
¶¶ #
NullParametersHandler
¶¶ ,
.
¶¶, -)
HandleNullParametersService
¶¶- H
(
¶¶H I
resultToReturn
¶¶I W
)
¶¶W X
;
¶¶X Y
}
ßß 
var
®® 
userToVerifyList
®®  
=
®®! ")
EmailConfirmationDictionary
®®# >
.
®®> ?!
GetUserToVerifyList
®®? R
(
®®R S
)
®®S T
;
®®T U
if
©© 
(
©© 
userToVerifyList
©©  
.
©©  !
Any
©©! $
(
©©$ %
user
©©% )
=>
©©* ,
user
©©- 1
.
©©1 2
Value
©©2 7
.
©©7 8
EmailAddress
©©8 D
.
©©D E
Equals
©©E K
(
©©K L
userToVerify
©©L X
.
©©X Y
EmailAddress
©©Y e
)
©©e f
)
©©f g
)
©©g h
{
™™ 
resultToReturn
´´ 
.
´´ 
ObjectSaved
´´ *
=
´´+ ,!
ExceptionDictionary
´´- @
.
´´@ A!
EMAIL_ALREADY_EXIST
´´A T
;
´´T U
resultToReturn
¨¨ 
.
¨¨ 
	CodeEvent
¨¨ (
=
¨¨) *!
ExceptionDictionary
¨¨+ >
.
¨¨> ?
SUCCESFULL_EVENT
¨¨? O
;
¨¨O P
return
≠≠ 
resultToReturn
≠≠ %
;
≠≠% &
}
ÆÆ 
if
ØØ 
(
ØØ 
userToVerifyList
ØØ  
.
ØØ  !
Any
ØØ! $
(
ØØ$ %
user
ØØ% )
=>
ØØ* ,
user
ØØ- 1
.
ØØ1 2
Value
ØØ2 7
.
ØØ7 8
UserName
ØØ8 @
.
ØØ@ A
Equals
ØØA G
(
ØØG H
userToVerify
ØØH T
.
ØØT U
UserName
ØØU ]
)
ØØ] ^
)
ØØ^ _
)
ØØ_ `
{
∞∞ 
resultToReturn
±± 
.
±± 
ObjectSaved
±± *
=
±±+ ,!
ExceptionDictionary
±±- @
.
±±@ A$
USERNAME_ALREADY_EXIST
±±A W
;
±±W X
resultToReturn
≤≤ 
.
≤≤ 
	CodeEvent
≤≤ (
=
≤≤) *!
ExceptionDictionary
≤≤+ >
.
≤≤> ?
SUCCESFULL_EVENT
≤≤? O
;
≤≤O P
return
≥≥ 
resultToReturn
≥≥ %
;
≥≥% &
}
¥¥ 
return
µµ 
resultToReturn
µµ !
;
µµ! "
}
∂∂ 	
}
ππ 
}∫∫ 