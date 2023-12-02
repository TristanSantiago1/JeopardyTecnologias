«
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
public 
static 
void -
!RegisterNewActiveUserInDictionary <
(< =
int= @
idUserA G
,G H
OperationContextI Y
channelZ a
)a b
{ 	
if 
( 
! 
activeUsers 
. 
ContainsKey (
(( )
idUser) /
)/ 0
)0 1
{ 
activeUsers 
. 
Add 
(  
idUser  &
,& '
channel( /
)/ 0
;0 1
} 
} 	
public 
static 
OperationContext &(
GetChannelCallBackActiveUser' C
(C D
intD G
idUserH N
)N O
{ 	
foreach 
( 
var 
item 
in  
activeUsers! ,
), -
{ 
if 
( 
item 
. 
Key 
== 
idUser  &
)& '
{ 
return 
item 
.  
Value  %
;% &
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
(&& 
activeUsers&& 
.&& 
ContainsKey&& '
(&&' (
idUser&&( .
)&&. /
)&&/ 0
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
static,, 

Dictionary,,  
<,,  !
int,,! $
,,,$ %
OperationContext,,& 6
>,,6 7
GetActiveUsersList,,8 J
(,,J K
),,K L
{-- 	
return.. 
activeUsers.. 
;.. 
}// 	
}00 
}11 ¡9
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
( 
! 
activeChats 
. 
ContainsKey (
(( )
roomCode) 1
)1 2
)2 3
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
public 
static #
HistoricalOfAllMessages -
GetActiveChat. ;
(; <
int< ?
roomCode@ H
)H I
{ 	
foreach 
( 
var 
item 
in  
activeChats! ,
), -
{ 
if 
( 
item 
. 
Key 
== 
roomCode  (
)( )
{ 
return 
item 
.  
Value  %
;% &
} 
} 
return   
null   
;   
}!! 	
public## 
static## 
void## 4
(RemoveRegistryOfActiveChatFromDictionary## C
(##C D
int##D G
roomCode##H P
)##P Q
{$$ 	
if%% 
(%% 
activeChats%% 
.%% 
ContainsKey%% '
(%%' (
roomCode%%( 0
)%%0 1
)%%1 2
{&& 
activeChats'' 
.'' 
Remove'' "
(''" #
roomCode''# +
)''+ ,
;'', -
}(( 
})) 	
public++ 
static++ 

Dictionary++ !
<++! "
int++" %
,++% &#
HistoricalOfAllMessages++' >
>++> ?
GetActiveChatList++@ Q
(++Q R
)++R S
{,, 	
return-- 
activeChats-- 
;-- 
}.. 	
private22 
static22 

Dictionary22 !
<22! "
int22" %
,22% &)
ChannelsCallBackInActiveChats22' D
>22D E&
channelsCallBackDictionary22F `
=22a b
new22c f

Dictionary22g q
<22q r
int22r u
,22u v*
ChannelsCallBackInActiveChats	22w î
>
22î ï
(
22ï ñ
)
22ñ ó
;
22ó ò
public44 
static44 
void44 *
RegisterNewChannelCallbackChat44 9
(449 :
int44: =
roomCode44> F
,44F G)
ChannelsCallBackInActiveChats44H e

newChannel44f p
)44p q
{55 	
if66 
(66 
!66 &
channelsCallBackDictionary66 +
.66+ ,
ContainsKey66, 7
(667 8
roomCode668 @
)66@ A
)66A B
{77 &
channelsCallBackDictionary88 *
.88* +
Add88+ .
(88. /
roomCode88/ 7
,887 8

newChannel889 C
)88C D
;88D E
}99 
}:: 	
public<< 
static<< )
ChannelsCallBackInActiveChats<< 3"
GetChannelCallBackChat<<4 J
(<<J K
int<<K N
roomCode<<O W
)<<W X
{== 	
foreach>> 
(>> 
var>> 
item>> 
in>>  &
channelsCallBackDictionary>>! ;
)>>; <
{?? 
if@@ 
(@@ 
item@@ 
.@@ 
Key@@ 
==@@ 
roomCode@@  (
)@@( )
{AA 
returnBB 
itemBB 
.BB  
ValueBB  %
;BB% &
}CC 
}DD 
returnEE 
nullEE 
;EE 
}FF 	
publicHH 
staticHH 
voidHH =
1RemoveRegistryOfChannelCallBakcChatFromDictionaryHH L
(HHL M
intHHM P
roomCodeHHQ Y
)HHY Z
{II 	
ifJJ 
(JJ &
channelsCallBackDictionaryJJ *
.JJ* +
ContainsKeyJJ+ 6
(JJ6 7
roomCodeJJ7 ?
)JJ? @
)JJ@ A
{KK &
channelsCallBackDictionaryLL *
.LL* +
RemoveLL+ 1
(LL1 2
roomCodeLL2 :
)LL: ;
;LL; <
}MM 
}NN 	
}OO 
publicQQ 

classQQ #
HistoricalOfAllMessagesQQ (
{RR 
publicSS 
intSS 
idAdminSS 
{SS 
getSS  
;SS  !
setSS" %
;SS% &
}SS' (
publicTT 
ListTT 
<TT 
MessageChatTT 
>TT  
listOfMessagesTT! /
{TT0 1
getTT2 5
;TT5 6
setTT7 :
;TT: ;
}TT< =
publicVV #
HistoricalOfAllMessagesVV &
(VV& '
)VV' (
{WW 	
listOfMessagesXX 
=XX 
newXX  
ListXX! %
<XX% &
MessageChatXX& 1
>XX1 2
(XX2 3
)XX3 4
;XX4 5
}YY 	
}ZZ 
public\\ 

class\\ )
ChannelsCallBackInActiveChats\\ .
{]] 
public^^ 
int^^ 
idAdmin^^ 
{^^ 
get^^  
;^^  !
set^^" %
;^^% &
}^^' (
public__ 
List__ 
<__ '
SpecificChannelCallBackChat__ /
>__/ 0"
listOfChannelsCallBack__1 G
{__H I
get__J M
;__M N
set__O R
;__R S
}__T U
publicaa )
ChannelsCallBackInActiveChatsaa ,
(aa, -
)aa- .
{bb 	"
listOfChannelsCallBackcc "
=cc# $
newcc% (
Listcc) -
<cc- .'
SpecificChannelCallBackChatcc. I
>ccI J
(ccJ K
)ccK L
;ccL M
}dd 	
}ee 
publichh 

classhh '
SpecificChannelCallBackChathh ,
{ii 
publicjj 
intjj 
idUserjj 
{jj 
getjj 
;jj  
setjj! $
;jj$ %
}jj& '
publickk 
OperationContextkk $
communicationChannelChatkk  8
{kk9 :
getkk; >
;kk> ?
setkk@ C
;kkC D
}kkE F
}ll 
}nn «%
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
public 
static 
void 
RegisterNewLobby +
(+ ,
int, /
roomCode0 8
,8 9
Lobby: ?
newLobby@ H
)H I
{ 	
if 
( 
! #
activeLobbiesDictionary (
.( )
ContainsKey) 4
(4 5
roomCode5 =
)= >
)> ?
{ #
activeLobbiesDictionary '
.' (
Add( +
(+ ,
roomCode, 4
,4 5
newLobby6 >
)> ?
;? @
} 
} 	
public 
static 
Lobby "
GetSpecificActiveLobby 2
(2 3
int3 6
roomCode7 ?
)? @
{ 	
foreach 
( 
var 
item 
in  #
activeLobbiesDictionary! 8
)8 9
{ 
if 
( 
item 
. 
Key 
== 
roomCode  (
)( )
{ 
return 
item 
.  
Value  %
;% &
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
('' #
activeLobbiesDictionary'' '
.''' (
ContainsKey''( 3
(''3 4
roomCode''4 <
)''< =
)''= >
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
static-- 

Dictionary--  
<--  !
int--! $
,--$ %
Lobby--& +
>--+ , 
GetActiveLobbiesList--- A
(--A B
)--B C
{.. 	
return// #
activeLobbiesDictionary// *
;//* +
}00 	
}22 
public44 

class44 
Lobby44 
{55 
public66 
int66 
idAdmin66 
{66 
get66  
;66  !
set66" %
;66% &
}66' (
public77 
List77 
<77 
PlayerOnLobbyList77 %
>77% &
listOfPlayerInLobby77' :
{77; <
get77= @
;77@ A
set77B E
;77E F
}77G H
public99 
Lobby99 
(99 
)99 
{:: 	
listOfPlayerInLobby;; 
=;;  !
new;;" %
List;;& *
<;;* +
PlayerOnLobbyList;;+ <
>;;< =
(;;= >
);;> ?
;;;? @
}<< 	
}== 
public?? 

class?? 
PlayerOnLobbyList?? "
(??" #
)??# $
{@@ 
publicAA 
intAA 
idUserAA 
{AA 
getAA 
;AA  
setAA! $
;AA$ %
}AA& '
publicBB 
intBB 
idPlayerBB 
{BB 
getBB !
;BB! "
setBB# &
;BB& '
}BB( )
publicCC 
StringCC 
userNameCC 
{CC  
getCC! $
;CC$ %
setCC& )
;CC) *
}CC+ ,
publicDD 
intDD !
numberOfPlayerInLobbyDD (
{DD) *
getDD+ .
;DD. /
setDD0 3
;DD3 4
}DD5 6
publicEE 
intEE 
sideTeamEE 
{EE 
getEE !
;EE! "
setEE# &
;EE& '
}EE( )
publicFF 
OperationContextFF -
!lobbyCommunicationChannelCallbackFF  A
{FFB C
getFFD G
;FFG H
setFFI L
;FFL M
}FFM N
}GG 
}II µ
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
private 
static 

Dictionary !
<! "
int" %
,% &
OperationContext' 7
>7 8(
friendManagerUsersDictionary9 U
=V W
newX [

Dictionary\ f
<f g
intg j
,j k
OperationContextl |
>| }
(} ~
)~ 
;	 Ä
public 
static 
void -
!RegisterNewFriendUserInDictionary <
(< =
int= @
idUserA G
,G H
OperationContextI Y
canalZ _
)_ `
{ 	
if 
( 
! (
friendManagerUsersDictionary -
.- .
ContainsKey. 9
(9 :
idUser: @
)@ A
)A B
{ (
friendManagerUsersDictionary ,
., -
Add- 0
(0 1
idUser1 7
,7 8
canal9 >
)> ?
;? @
} 
} 	
public 
static 
OperationContext & 
GetChannelFriendUser' ;
(; <
int< ?
idUser@ F
)F G
{ 	
foreach 
( 
var 
item 
in  (
friendManagerUsersDictionary! =
)= >
{ 
if 
( 
item 
. 
Key 
== 
idUser  &
)& '
{ 
return 
item 
.  
Value  %
;% &
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
(&& (
friendManagerUsersDictionary&& ,
.&&, -
ContainsKey&&- 8
(&&8 9
idUser&&9 ?
)&&? @
)&&@ A
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
static,, 

Dictionary,,  
<,,  !
int,,! $
,,,$ %
OperationContext,,& 6
>,,6 7 
GetActiveFriendsList,,8 L
(,,L M
),,M N
{-- 	
return.. (
friendManagerUsersDictionary.. /
;../ 0
}// 	
}00 
}22 ’
éC:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameServer\JeopardyGame.Service\InterfacesSevices\IConsultInformation.cs
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
] 
public 

	interface 
IConsultInformation (
{ 
[ 	
OperationContract	 
] 
GenericClass 
< 
UserPOJO 
> 
ConsultUserById .
(. /
int/ 2
idUser3 9
)9 :
;: ;
[ 	
OperationContract	 
] 
GenericClass 
< 
UserPOJO 
> !
ConsultUserByIdPlayer 4
(4 5
int5 8
idPlayer9 A
)A B
;B C
[ 	
OperationContract	 
] 
GenericClass 
< 

PlayerPOJO 
>  
ConsultPlayerById! 2
(2 3
int3 6
idPlayer7 ?
)? @
;@ A
[ 	
OperationContract	 
] 
GenericClass 
< 

PlayerPOJO 
>  !
ConsultPlayerByIdUser! 6
(6 7
int7 :
idUser; A
)A B
;B C
[ 	
OperationContract	 
] 
GenericClass 
< 
UserPOJO 
> !
ConsultUserByUserName 4
(4 5
String5 ;
userName< D
)D E
;E F
} 
} É
äC:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameServer\JeopardyGame.Service\InterfacesSevices\IFriendsManager.cs
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
IFriendsManager $
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
UserPOJOB J
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
UserPOJOI Q
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
UserPOJOF N
userO S
)S T
;T U
} 
} ø&
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
	interface 
ILobbyActions #
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
< 
List 
< 
PlayerInLobby '
>' (
>( )&
GetAllCurrentPlayerInLobby* D
(D E
intE H
roomCodeI Q
,Q R
intS V
idUserRequestingW g
)g h
;h i
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 
DissolveLobby 
( 
int 
roomCode '
,' (
int( +
idUser, 2
)2 3
;3 4
[ 	
OperationContract	 
] 
GenericClass 
< 
int 
> 
	JoinLobby #
(# $
int$ '
roomCode( 0
,0 1
int2 5
idUser6 <
)< =
;= >
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 
NotifyPlayerInLobby  
(  !
int! $
roomCode% -
,- .
int/ 2
idUser3 9
)9 :
;: ;
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void   

LeaveLobby   
(   
int   
roomCode   $
,  $ %
int  & )
idUser  * 0
)  0 1
;  1 2
["" 	
OperationContract""	 
("" 
IsOneWay"" #
=""$ %
true""& *
)""* +
]""+ ,
void## 
ChangePlayerSide## 
(## 
int## !
roomCode##" *
,##* +
int##, /
idUserToChangeTeam##0 B
,##B C
int##D G
newSideTeam##H S
)##S T
;##T U
[%% 	
OperationContract%%	 
(%% 
IsOneWay%% #
=%%$ %
true%%& *
)%%* +
]%%+ ,
void&& $
EliminatePlayerFromMatch&& %
(&&% &
int&&& )
roomCode&&* 2
,&&2 3
int&&4 7
idUserToEliminate&&8 I
)&&I J
;&&J K
[(( 	
OperationContract((	 
((( 
IsOneWay(( #
=(($ %
true((& *
)((* +
]((+ ,
void)) 
	MakeTeams)) 
()) 
int)) 
roomCode)) #
,))# $
int))% (
idUser))) /
,))/ 0
bool))1 5
	wannaTeam))6 ?
)))? @
;))@ A
}** 
[,, 
ServiceContract,, 
],, 
public-- 

	interface-- !
ILobbyActionsCallback-- *
{.. 
[// 	
OperationContract//	 
]// 
public00 
void00 &
UpdateJoinedPlayerResponse00 .
(00. /
GenericClass00/ ;
<00; <
List00< @
<00@ A
PlayerInLobby00A N
>00N O
>00O P
playersInTheLobby00Q b
)00b c
;00c d
[22 	
OperationContract22	 
]22 
public33 
void33 
MakeTeamsResponse33 %
(33% &
bool33& *
teamUp33+ 1
)331 2
;332 3
[55 	
OperationContract55	 
]55 
public66 
void66 
UpdateTeamSide66 "
(66" #
GenericClass66# /
<66/ 0
List660 4
<664 5
PlayerInLobby665 B
>66B C
>66C D
playersInTheLobby66E V
)66V W
;66W X
[88 	
OperationContract88	 
]88 
public99 
void99 
DissolvingLobby99 #
(99# $
)99$ %
;99% &
}:: 
}>> ˚
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
void 
PlayerIsAvailable 
( 
int "
idNewActiveUser# 2
,2 3
int4 7
idNewActivePlayer8 I
)I J
;J K
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void  
PlayerIsNotAvailable !
(! "
int" %
idUserDisconnecting& 9
,9 :
int; >!
idPlayerDisconnecting? T
)T U
;U V
} 
[ 
ServiceContract 
] 
public 

	interface +
INotifyUserAvailabilityCallBack 4
{ 
[ 	
OperationContract	 
] 
void (
ResponseOfPlayerAvailability )
() *
int* -
status. 4
,4 5
int6 9
idFriend: B
)B C
;C D
} 
} ù
ïC:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameServer\JeopardyGame.Service\InterfacesSevices\INotifyUserFriendlyActions.cs
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
(. /3
'INotifyUserActionFriendsManagerCallBack/ V
)V W
)W X
]X Y
public 

	interface +
INotifyUserActionFriendsManager 4
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
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void '
UnregisterFriendManagerUser (
(( )
int) ,
idUserFriendManager- @
)@ A
;A B
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 
ReportPlayer 
( 
int 
idUser $
,$ %
String& ,
userName- 5
)5 6
;6 7
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void $
EliminateUserFromFriends %
(% &
int& )
idPlayerDeleting* :
,: ;
int< ?
idUserToEliminate@ Q
)Q R
;R S
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 
SendFriendRequest 
( 
int "
idPLayerRequesting# 5
,5 6
int7 :
idUserRequested; J
)J K
;K L
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 
AcceptFriendRequest  
(  !
int! $
idPlayerAccepting% 6
,6 7
int8 ;
idUserRequesting< L
)L M
;M N
[   	
OperationContract  	 
(   
IsOneWay   #
=  $ %
true  & *
)  * +
]  + ,
void!!  
DeclineFriendRequest!! !
(!!! "
int!!" %
idPlayerDeclining!!& 7
,!!7 8
int!!9 <
idUserRequesting!!= M
)!!M N
;!!N O
}"" 
[$$ 
ServiceContract$$ 
]$$ 
public%% 

	interface%% 3
'INotifyUserActionFriendsManagerCallBack%% <
{&& 
['' 	
OperationContract''	 
]'' 
void(( 
ResponseReported(( 
((( 
int(( !

numReports((" ,
)((, -
;((- .
[** 	
OperationContract**	 
]** 
void++ *
ResponseEliminationFromFriends++ +
(+++ ,
int++, /
idUser++0 6
)++6 7
;++7 8
[-- 	
OperationContract--	 
]-- 
void.. !
ResponseRequestAction.. "
(.." #
int..# &
idUser..' -
,..- .
int../ 2
requestStatus..3 @
,..@ A
String..B H
userName..I Q
)..Q R
;..R S
}// 
}11 ÷
åC:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameServer\JeopardyGame.Service\InterfacesSevices\IQuestionsManager.cs
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
[ 
ServiceContract 
] 
public 

	interface 
IQuestionsManager &
{ 
[ 	
OperationContract	 
] 
IDictionary 
< 
string 
, 
object "
>" #
GetQuestionByValue$ 6
(6 7
int7 :
value; @
,@ A
intB E

categoryIdF P
)P Q
;Q R
[ 	
OperationContract	 
] 
GenericClass 
< 
bool 
> 
CheckAnswer &
(& '
int' *

questionId+ 5
,5 6
string7 =
selectedAnswer> L
)L M
;M N
} 
} Ï
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
UserPOJO' /
userPojoNew0 ;
); <
;< =
[ 
OperationContract 
] 
GenericClass 
< 
int 
> 
ValidateCredentials 1
(1 2
UserValidate2 >
newUserValidate? N
)N O
;O P
[ 
OperationContract 
] 
GenericClass 
< 
int 
> 
EmailAlreadyExist /
(/ 0
String0 6
email7 <
)< =
;= >
[ 
OperationContract 
] 
GenericClass 
< 
int 
>  
UserNameAlreadyExist 2
(2 3
String3 9
userName: B
)B C
;C D
[ 
OperationContract 
] 
GenericClass 
< 
int 
> %
SentEmailCodeConfirmation 7
(7 8
String8 >
email? D
,D E
StringF L
subjectM T
,T U
StringV \
code] a
)a b
;b c
[ 
OperationContract 
] 
GenericClass 
< 
int 
> !
UpdateUserInformation 3
(3 4
String4 :

editedName; E
,E F
StringG M
originalNameN Z
)Z [
;[ \
}!! 	
}%% ç
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
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 
SendMessage 
( 
int 
idUser #
,# $
int% (
roomCode) 1
,1 2
String3 9
userName: B
,B C
StringD J
messageToSendK X
)X Y
;Y Z
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
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 

DeleteChat 
( 
int 
roomCode $
,$ %
int& )
idUser* 0
)0 1
;1 2
[ 	
OperationContract	 
] 
GenericClass 
< 
bool 
> 
CreateChatForLobby -
(- .
int. 1
roomCode2 :
,: ;
int< ?
idAdmin@ G
)G H
;H I
} 
[ 
ServiceContract 
] 
public 

	interface 
ILiveChatCallBack &
{ 
[ 	
OperationContract	 
] 
void   
ReceiveMessage   
(   
GenericClass   (
<  ( )
MessageChat  ) 4
>  4 5
message  6 =
)  = >
;  > ?
}!! 
}## ∏9
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
UserPOJO4 <
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
UserPOJO $
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
UserPOJO## 
userPOJO## 
=## 
new##  #
UserPOJO##$ ,
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

PlayerPOJO,,  (
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

PlayerPOJO22 

playerPOJO22 !
=22" #
new22$ '

PlayerPOJO22( 2
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

PlayerPOJO==: D

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
]$$) *§H
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
:: ;
IConsultInformation< O
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

PlayerPOJO &
>& '
ConsultPlayerById( 9
(9 :
int: =
idPlayer> F
)F G
{ 	
GenericClass 
< 

PlayerPOJO #
># $
resultToReturn% 3
=4 5
new6 9
GenericClass: F
<F G

PlayerPOJOG Q
>Q R
(R S
)S T
;T U
if 
( 
idPlayer 
== 
NULL_INT_VALUE *
)* +
{ 
return !
NullParametersHandler ,
., -'
HandleNullParametersService- H
(H I
resultToReturnI W
)W X
;X Y
} 
GenericClassServer 
< 
Player %
>% &
playerConsulted' 6
=7 8
Data9 =
.= >

DataAccess> H
.H I$
UserManagerDataOperationI a
.a b
GetPlayerByIdPlayerb u
(u v
idPlayerv ~
)~ 
;	 Ä
resultToReturn 
. 
ObjectSaved &
=' (
UserInterpreter) 8
.8 9(
FromPlayerEntityToPlayerPojo9 U
(U V
playerConsultedV e
.e f
ObjectSavedf q
)q r
;r s
resultToReturn 
. 
	CodeEvent $
=% &
playerConsulted' 6
.6 7
	CodeEvent7 @
;@ A
return 
resultToReturn !
;! "
} 	
public 
GenericClass 
< 

PlayerPOJO &
>& '!
ConsultPlayerByIdUser( =
(= >
int> A
idUserB H
)H I
{ 	
GenericClass   
<   

PlayerPOJO   #
>  # $
resultToReturn  % 3
=  4 5
new  6 9
GenericClass  : F
<  F G

PlayerPOJO  G Q
>  Q R
(  R S
)  S T
;  T U
if!! 
(!! 
idUser!! 
==!! 
NULL_INT_VALUE!! (
)!!( )
{"" 
return## !
NullParametersHandler## ,
.##, -'
HandleNullParametersService##- H
(##H I
resultToReturn##I W
)##W X
;##X Y
}$$ 
GenericClassServer%% 
<%% 
Player%% %
>%%% &
playerConsulted%%' 6
=%%7 8
Data%%9 =
.%%= >

DataAccess%%> H
.%%H I$
UserManagerDataOperation%%I a
.%%a b
GetPlayerByIdUser%%b s
(%%s t
idUser%%t z
)%%z {
;%%{ |
resultToReturn&& 
.&& 
ObjectSaved&& &
=&&' (
UserInterpreter&&) 8
.&&8 9(
FromPlayerEntityToPlayerPojo&&9 U
(&&U V
playerConsulted&&V e
.&&e f
ObjectSaved&&f q
)&&q r
;&&r s
resultToReturn'' 
.'' 
	CodeEvent'' $
=''% &
playerConsulted''' 6
.''6 7
	CodeEvent''7 @
;''@ A
return(( 
resultToReturn(( !
;((! "
})) 	
public++ 
GenericClass++ 
<++ 
UserPOJO++ $
>++$ %
ConsultUserById++& 5
(++5 6
int++6 9
idUser++: @
)++@ A
{,, 	
GenericClass-- 
<-- 
UserPOJO-- !
>--! "
resultToReturn--# 1
=--2 3
new--4 7
GenericClass--8 D
<--D E
UserPOJO--E M
>--M N
(--N O
)--O P
;--P Q
if.. 
(.. 
idUser.. 
==.. 
NULL_INT_VALUE.. (
)..( )
{// 
return00 !
NullParametersHandler00 ,
.00, -'
HandleNullParametersService00- H
(00H I
resultToReturn00I W
)00W X
;00X Y
}11 
GenericClassServer22 
<22 
User22 #
>22# $
userConsulted22% 2
=223 4
Data225 9
.229 :

DataAccess22: D
.22D E$
UserManagerDataOperation22E ]
.22] ^
GetUserById22^ i
(22i j
idUser22j p
)22p q
;22q r
resultToReturn33 
.33 
ObjectSaved33 &
=33' (
UserInterpreter33) 8
.338 9$
FromUserEntityToUserPojo339 Q
(33Q R
userConsulted33R _
.33_ `
ObjectSaved33` k
)33k l
;33l m
resultToReturn44 
.44 
	CodeEvent44 $
=44% &
userConsulted44' 4
.444 5
	CodeEvent445 >
;44> ?
return55 
resultToReturn55 !
;55! "
}66 	
public88 
GenericClass88 
<88 
UserPOJO88 $
>88$ %!
ConsultUserByIdPlayer88& ;
(88; <
int88< ?
idPlayer88@ H
)88H I
{99 	
GenericClass:: 
<:: 
UserPOJO:: !
>::! "
resultToReturn::# 1
=::2 3
new::4 7
GenericClass::8 D
<::D E
UserPOJO::E M
>::M N
(::N O
)::O P
;::P Q
if;; 
(;; 
idPlayer;; 
==;; 
NULL_INT_VALUE;; *
);;* +
{<< 
return== !
NullParametersHandler== ,
.==, -'
HandleNullParametersService==- H
(==H I
resultToReturn==I W
)==W X
;==X Y
}>> 

PlayerPOJO?? 
player?? 
=?? 
ConsultPlayerById??  1
(??1 2
idPlayer??2 :
)??: ;
.??; <
ObjectSaved??< G
;??G H
GenericClassServer@@ 
<@@ 
User@@ #
>@@# $
userConsulted@@% 2
=@@3 4
Data@@5 9
.@@9 :

DataAccess@@: D
.@@D E$
UserManagerDataOperation@@E ]
.@@] ^
GetUserById@@^ i
(@@i j
player@@j p
.@@p q
IdUser@@q w
)@@w x
;@@x y
resultToReturnAA 
.AA 
ObjectSavedAA &
=AA' (
UserInterpreterAA) 8
.AA8 9$
FromUserEntityToUserPojoAA9 Q
(AAQ R
userConsultedAAR _
.AA_ `
ObjectSavedAA` k
)AAk l
;AAl m
resultToReturnBB 
.BB 
	CodeEventBB $
=BB% &
userConsultedBB' 4
.BB4 5
	CodeEventBB5 >
;BB> ?
returnCC 
resultToReturnCC !
;CC! "
}DD 	
publicFF 
GenericClassFF 
<FF 
UserPOJOFF $
>FF$ %!
ConsultUserByUserNameFF& ;
(FF; <
stringFF< B
userNameFFC K
)FFK L
{GG 	
GenericClassHH 
<HH 
UserPOJOHH !
>HH! "
resultToReturnHH# 1
=HH2 3
newHH4 7
GenericClassHH8 D
<HHD E
UserPOJOHHE M
>HHM N
(HHN O
)HHO P
;HHP Q
ifII 
(II 
stringII 
.II 
IsNullOrEmptyII $
(II$ %
userNameII% -
)II- .
)II. /
{JJ 
returnKK !
NullParametersHandlerKK ,
.KK, -'
HandleNullParametersServiceKK- H
(KKH I
resultToReturnKKI W
)KKW X
;KKX Y
}LL 
GenericClassServerMM 
<MM 
UserMM #
>MM# $
userConsultedMM% 2
=MM3 4
DataMM5 9
.MM9 :

DataAccessMM: D
.MMD E$
UserManagerDataOperationMME ]
.MM] ^
GetUserByUserNameMM^ o
(MMp q
userNameMMq y
)MMy z
;MMz {
resultToReturnNN 
.NN 
ObjectSavedNN &
=NN' (
UserInterpreterNN) 8
.NN8 9$
FromUserEntityToUserPojoNN9 Q
(NNQ R
userConsultedNNR _
.NN_ `
ObjectSavedNN` k
)NNk l
;NNl m
resultToReturnOO 
.OO 
	CodeEventOO $
=OO% &
userConsultedOO' 4
.OO4 5
	CodeEventOO5 >
;OO> ?
returnPP 
resultToReturnPP !
;PP! "
}QQ 	
}SS 
}TT ÷«
õC:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameServer\JeopardyGame.Service\ServiceImplementation\FriendsManagerImplementation.cs
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
class (
FriendsManagerImplementation 5
:6 7
IFriendsManager8 G
{ 
private 
readonly 
int 

NOT_STATUS '
=( )
$num* +
;+ ,
private 
readonly 
int 
ACTIVE #
=$ %
$num& '
;' (
private 
readonly 
int 
INACTIVE %
=& '
$num( )
;) *
private 
readonly 
int 
THERE_IS_A_REQUEST /
=0 1
$num2 3
;3 4
private 
readonly 
int 
THEY_ARE_FRIENDS -
=. /
$num0 1
;1 2
public 
GenericClass 
< 
List  
<  !"
FriendBasicInformation! 7
>7 8
>8 9!
GetUserFriendRequests: O
(O P
UserPOJOP X
userY ]
)] ^
{ 	
GenericClass 
< 
List 
< "
FriendBasicInformation 4
>4 5
>5 6
resultToReturn7 E
=F G
newH K
GenericClassL X
<X Y
ListY ]
<] ^"
FriendBasicInformation^ t
>t u
>u v
(v w
)w x
;x y
if 
( 
user 
== 
null 
) 
{ 
return !
NullParametersHandler ,
., -'
HandleNullParametersService- H
(H I
resultToReturnI W
)W X
;X Y
} 
User 
userConsulted 
=  
UserInterpreter! 0
.0 1$
FromUserPojoToUserEntity1 I
(I J
userJ N
)N O
;O P
GenericClassServer 
< 
Player %
>% &
playerConsulted' 6
=7 8$
UserManagerDataOperation9 Q
.Q R
GetPlayerByIdUserR c
(c d
userConsultedd q
.q r
IdUserr x
)x y
;y z
if 
( 
playerConsulted 
.  
	CodeEvent  )
==* ,
ExceptionDictionary- @
.@ A
SUCCESFULL_EVENTA Q
)Q R
{ 
GenericClassServer   "
<  " #
List  # '
<  ' (
Friend  ( .
>  . /
>  / 0!
playerFriendsRequests  1 F
=  G H'
FriendsManagerDataOperation  I d
.  d e"
ConsultFriendsOfPlayer  e {
(  { |
playerConsulted	  | ã
.
  ã å
ObjectSaved
  å ó
)
  ó ò
;
  ò ô
if!! 
(!! !
playerFriendsRequests!! )
.!!) *
	CodeEvent!!* 3
==!!4 6
ExceptionDictionary!!7 J
.!!J K
SUCCESFULL_EVENT!!K [
)!![ \
{"" 
resultToReturn## "
=### $$
GatherFriendsByCondition##% =
(##= >!
playerFriendsRequests##> S
.##S T
ObjectSaved##T _
,##_ `
null##a e
,##e f
playerConsulted##g v
.##v w
ObjectSaved	##w Ç
,
##Ç É
$num
##Ñ Ö
)
##Ö Ü
;
##Ü á
}$$ 
else%% 
{&& 
resultToReturn'' "
.''" #
	CodeEvent''# ,
=''- .!
playerFriendsRequests''/ D
.''D E
	CodeEvent''E N
;''N O
}(( 
})) 
else** 
{++ 
resultToReturn,, 
.,, 
	CodeEvent,, (
=,,) *
playerConsulted,,+ :
.,,: ;
	CodeEvent,,; D
;,,D E
}-- 
return.. 
resultToReturn.. !
;..! "
}// 	
public11 
GenericClass11 
<11 
List11  
<11  !"
FriendBasicInformation11! 7
>117 8
>118 9
GetUserFriends11: H
(11H I
UserPOJO11I Q
user11R V
)11V W
{22 	
GenericClass33 
<33 
List33 
<33 "
FriendBasicInformation33 4
>334 5
>335 6
resultToReturn337 E
=33F G
new33H K
GenericClass33L X
<33X Y
List33Y ]
<33] ^"
FriendBasicInformation33^ t
>33t u
>33u v
(33v w
)33w x
;33x y
if44 
(44 
user44 
==44 
null44 
)44 
{55 
return66 !
NullParametersHandler66 ,
.66, -'
HandleNullParametersService66- H
(66H I
resultToReturn66I W
)66W X
;66X Y
}77 
User88 
userConsulted88 
=88  
UserInterpreter88! 0
.880 1$
FromUserPojoToUserEntity881 I
(88I J
user88J N
)88N O
;88O P
GenericClassServer99 
<99 
Player99 %
>99% &
playerConsulted99' 6
=997 8$
UserManagerDataOperation999 Q
.99Q R
GetPlayerByIdUser99R c
(99c d
userConsulted99d q
.99q r
IdUser99r x
)99x y
;99y z
if:: 
(:: 
playerConsulted:: 
.::  
	CodeEvent::  )
==::* ,
ExceptionDictionary::- @
.::@ A
SUCCESFULL_EVENT::A Q
)::Q R
{;; 
GenericClassServer<< "
<<<" #
List<<# '
<<<' (
Friend<<( .
><<. /
><</ 0
friendsOfPlayer<<1 @
=<<A B'
FriendsManagerDataOperation<<C ^
.<<^ _"
ConsultFriendsOfPlayer<<_ u
(<<u v
playerConsulted	<<v Ö
.
<<Ö Ü
ObjectSaved
<<Ü ë
)
<<ë í
;
<<í ì
if== 
(== 
friendsOfPlayer== #
.==# $
	CodeEvent==$ -
====. 0
ExceptionDictionary==1 D
.==D E
SUCCESFULL_EVENT==E U
)==U V
{>> 
resultToReturn?? "
=??# $$
GatherFriendsByCondition??% =
(??= >
friendsOfPlayer??> M
.??M N
ObjectSaved??N Y
,??Y Z
null??[ _
,??_ `
playerConsulted??a p
.??p q
ObjectSaved??q |
,??| }
$num??~ 
)	?? Ä
;
??Ä Å
}@@ 
elseAA 
{BB 
resultToReturnCC "
.CC" #
	CodeEventCC# ,
=CC- .
friendsOfPlayerCC/ >
.CC> ?
	CodeEventCC? H
;CCH I
}DD 
}EE 
elseFF 
{GG 
resultToReturnHH 
.HH 
	CodeEventHH (
=HH) *
playerConsultedHH+ :
.HH: ;
	CodeEventHH; D
;HHD E
}II 
returnJJ 
resultToReturnJJ !
;JJ! "
}KK 	
publicMM 
GenericClassMM 
<MM 
ListMM  
<MM  !"
FriendBasicInformationMM! 7
>MM7 8
>MM8 9
GetUsersNotFriendsMM: L
(MML M
UserPOJOMMM U
userMMV Z
)MMZ [
{NN 	
GenericClassOO 
<OO 
ListOO 
<OO "
FriendBasicInformationOO 4
>OO4 5
>OO5 6
resultToReturnOO7 E
=OOF G
newOOH K
GenericClassOOL X
<OOX Y
ListOOY ]
<OO] ^"
FriendBasicInformationOO^ t
>OOt u
>OOu v
(OOv w
)OOw x
;OOx y
ifPP 
(PP 
userPP 
==PP 
nullPP 
)PP 
{QQ 
returnRR !
NullParametersHandlerRR ,
.RR, -'
HandleNullParametersServiceRR- H
(RRH I
resultToReturnRRI W
)RRW X
;RRX Y
}SS 
UserTT 
userConsultedTT 
=TT  
UserInterpreterTT! 0
.TT0 1$
FromUserPojoToUserEntityTT1 I
(TTI J
userTTJ N
)TTN O
;TTO P
GenericClassServerUU 
<UU 
PlayerUU %
>UU% &
playerConsultedUU' 6
=UU7 8$
UserManagerDataOperationUU9 Q
.UUQ R
GetPlayerByIdUserUUR c
(UUc d
userConsultedUUd q
.UUq r
IdUserUUr x
)UUx y
;UUy z
ifVV 
(VV 
playerConsultedVV 
.VV  
	CodeEventVV  )
==VV* ,
ExceptionDictionaryVV- @
.VV@ A
SUCCESFULL_EVENTVVA Q
)VVQ R
{WW 
GenericClassServerXX "
<XX" #
ListXX# '
<XX' (
PlayerXX( .
>XX. /
>XX/ 0
playersNotFriendsXX1 B
=XXC D'
FriendsManagerDataOperationXXE `
.XX` a!
Get20NotFriendsPlayerXXa v
(XXv w
playerConsulted	XXw Ü
.
XXÜ á
ObjectSaved
XXá í
)
XXí ì
;
XXì î
ifYY 
(YY 
playersNotFriendsYY %
.YY% &
	CodeEventYY& /
==YY0 2
ExceptionDictionaryYY3 F
.YYF G
SUCCESFULL_EVENTYYG W
)YYW X
{ZZ 
resultToReturn[[ "
=[[# $$
GatherFriendsByCondition[[% =
([[= >
null[[> B
,[[B C
playersNotFriends[[D U
.[[U V
ObjectSaved[[V a
,[[a b
playerConsulted[[c r
.[[r s
ObjectSaved[[s ~
,[[~ 
$num
[[Ä Å
)
[[Å Ç
;
[[Ç É
}\\ 
else]] 
{^^ 
resultToReturn__ "
.__" #
	CodeEvent__# ,
=__- .
playersNotFriends__/ @
.__@ A
	CodeEvent__A J
;__J K
}`` 
}aa 
elsebb 
{cc 
resultToReturndd 
.dd 
	CodeEventdd (
=dd) *
playerConsulteddd+ :
.dd: ;
	CodeEventdd; D
;ddD E
}ee 
returnff 
resultToReturnff !
;ff! "
}gg 	
privateii 
GenericClassii 
<ii 
Listii !
<ii! ""
FriendBasicInformationii" 8
>ii8 9
>ii9 :$
GatherFriendsByConditionii; S
(iiS T
ListiiT X
<iiX Y
FriendiiY _
>ii_ `
listOfPlayerFriendsiia t
,iit u
Listiiv z
<iiz {
Player	ii{ Å
>
iiÅ Ç$
listOfNotPlayerFriends
iiÉ ô
,
iiô ö
Player
iiõ °
playerConsulted
ii¢ ±
,
ii± ≤
int
ii≥ ∂
typeConsult
ii∑ ¬
)
ii¬ √
{jj 	
GenericClasskk 
<kk 
Listkk 
<kk "
FriendBasicInformationkk 4
>kk4 5
>kk5 6
friendsListToReturnkk7 J
=kkK L
newkkM P
GenericClasskkQ ]
<kk] ^
Listkk^ b
<kkb c"
FriendBasicInformationkkc y
>kky z
>kkz {
(kk{ |
)kk| }
;kk} ~
friendsListToReturnll 
.ll  
	CodeEventll  )
=ll* +
ExceptionDictionaryll, ?
.ll? @
SUCCESFULL_EVENTll@ P
;llP Q
switchmm 
(mm 
typeConsultmm 
)mm  
{nn 
caseoo 
$numoo 
:oo 
friendsListToReturnpp '
.pp' (
ObjectSavedpp( 3
=pp4 5&
GetListOfRequestFriendshippp6 P
(ppP Q
listOfPlayerFriendsppQ d
,ppd e
playerConsultedppf u
)ppu v
;ppv w
breakqq 
;qq 
caserr 
$numrr 
:rr 
friendsListToReturnss '
.ss' (
ObjectSavedss( 3
=ss4 5"
GetListOfFriendsOfUserss6 L
(ssL M
listOfPlayerFriendsssM `
,ss` a
playerConsultedssb q
)ssq r
;ssr s
breaktt 
;tt 
caseuu 
$numuu 
:uu 
friendsListToReturnvv '
.vv' (
ObjectSavedvv( 3
=vv4 5
GetListOfNotFriendsvv6 I
(vvI J"
listOfNotPlayerFriendsvvJ `
,vv` a
playerConsultedvvb q
)vvq r
;vvr s
breakww 
;ww 
}xx 
ifyy 
(yy 
friendsListToReturnyy #
.yy# $
ObjectSavedyy$ /
!=yy0 2
nullyy3 7
)yy7 8
{zz 
friendsListToReturn{{ #
.{{# $
	CodeEvent{{$ -
={{. /
ExceptionDictionary{{0 C
.{{C D
SUCCESFULL_EVENT{{D T
;{{T U
}|| 
else}} 
{~~ 
friendsListToReturn #
.# $
	CodeEvent$ -
=. /
ExceptionDictionary0 C
.C D
UNSUCCESFULL_EVENTD V
;V W
}
ÄÄ 
return
ÅÅ !
friendsListToReturn
ÅÅ &
;
ÅÅ& '
}
ÇÇ 	
private
ÑÑ 
List
ÑÑ 
<
ÑÑ $
FriendBasicInformation
ÑÑ +
>
ÑÑ+ ,(
GetListOfRequestFriendship
ÑÑ- G
(
ÑÑG H
List
ÑÑH L
<
ÑÑL M
Friend
ÑÑM S
>
ÑÑS T#
listOfFriendsRegistry
ÑÑU j
,
ÑÑj k
Player
ÑÑl r
playerConsultedÑÑs Ç
)ÑÑÇ É
{
ÖÖ 	
List
ÜÜ 
<
ÜÜ $
FriendBasicInformation
ÜÜ '
>
ÜÜ' (%
friendsBasicInformation
ÜÜ) @
=
ÜÜA B
new
ÜÜC F
List
ÜÜG K
<
ÜÜK L$
FriendBasicInformation
ÜÜL b
>
ÜÜb c
(
ÜÜc d
)
ÜÜd e
;
ÜÜe f$
FriendBasicInformation
áá " 
userFriendRegistry
áá# 5
=
áá6 7
new
áá8 ;$
FriendBasicInformation
áá< R
(
ááR S
)
ááS T
;
ááT U.
 ConsultInformationImplementation
àà , 
consultInformation
àà- ?
=
àà@ A
new
ààB E.
 ConsultInformationImplementation
ààF f
(
ààf g
)
ààg h
;
ààh i
foreach
ââ 
(
ââ 
Friend
ââ 
friend
ââ "
in
ââ# %#
listOfFriendsRegistry
ââ& ;
)
ââ; <
{
ää 
if
ãã 
(
ãã 
friend
ãã 
.
ãã #
PlayerFriend_IdPlayer
ãã 0
==
ãã1 3
playerConsulted
ãã4 C
.
ããC D
IdPlayer
ããD L
&&
ããM O
friend
ããP V
.
ããV W
IdFriendState
ããW d
==
ããe g 
THERE_IS_A_REQUEST
ããh z
)
ããz {
{
åå 
var
çç !
userFriendConsulted
çç +
=
çç, - 
consultInformation
çç. @
.
çç@ A#
ConsultUserByIdPlayer
ççA V
(
ççV W
friend
ççW ]
.
çç] ^
Player_IdPlayer
çç^ m
)
ççm n
;
ççn o
if
èè 
(
èè !
userFriendConsulted
èè +
.
èè+ ,
	CodeEvent
èè, 5
==
èè6 8!
ExceptionDictionary
èè9 L
.
èèL M
SUCCESFULL_EVENT
èèM ]
)
èè] ^
{
êê 
UserPOJO
ëë  
newUserFriend
ëë! .
=
ëë/ 0!
userFriendConsulted
ëë1 D
.
ëëD E
ObjectSaved
ëëE P
;
ëëP Q 
userFriendRegistry
íí *
.
íí* +
UserName
íí+ 3
=
íí4 5
newUserFriend
íí6 C
.
ííC D
UserName
ííD L
;
ííL M 
userFriendRegistry
ìì *
.
ìì* +
IdUser
ìì+ 1
=
ìì2 3
newUserFriend
ìì4 A
.
ììA B
IdUser
ììB H
;
ììH I 
userFriendRegistry
îî *
.
îî* +"
IdStatusAvailability
îî+ ?
=
îî@ A

NOT_STATUS
îîB L
;
îîL M%
friendsBasicInformation
ïï /
.
ïï/ 0
Add
ïï0 3
(
ïï3 4 
userFriendRegistry
ïï4 F
)
ïïF G
;
ïïG H
}
ññ 
else
óó 
{
òò 
return
ôô 
null
ôô #
;
ôô# $
}
öö 
}
õõ 
}
úú 
return
ùù %
friendsBasicInformation
ùù *
;
ùù* +
}
ûû 	
private
†† 
List
†† 
<
†† $
FriendBasicInformation
†† +
>
††+ ,$
GetListOfFriendsOfUser
††- C
(
††C D
List
††D H
<
††H I
Friend
††I O
>
††O P#
listOfFriendsRegistry
††Q f
,
††f g
Player
††h n
playerConsulted
††o ~
)
††~ 
{
°° 	.
 ConsultInformationImplementation
¢¢ , 
consultInformation
¢¢- ?
=
¢¢@ A
new
¢¢B E.
 ConsultInformationImplementation
¢¢F f
(
¢¢f g
)
¢¢g h
;
¢¢h i
List
££ 
<
££ $
FriendBasicInformation
££ '
>
££' (&
friendsOfUserInformation
££) A
=
££B C
new
££D G
List
££H L
<
££L M$
FriendBasicInformation
££M c
>
££c d
(
££d e
)
££e f
;
££f g
foreach
§§ 
(
§§ 
Friend
§§ 
friend
§§ "
in
§§# %#
listOfFriendsRegistry
§§& ;
)
§§; <
{
•• 
if
¶¶ 
(
¶¶ 
friend
¶¶ 
.
¶¶ 
IdFriendState
¶¶ (
==
¶¶) +
THEY_ARE_FRIENDS
¶¶, <
)
¶¶< =
{
ßß $
FriendBasicInformation
®® *#
userFriendInformation
®®+ @
=
®®A B
new
®®C F$
FriendBasicInformation
®®G ]
(
®®] ^
)
®®^ _
;
®®_ `
GenericClass
©©  
<
©©  !
UserPOJO
©©! )
>
©©) *
userFriendPojo
©©+ 9
;
©©9 :
int
™™ 
status
™™ 
;
™™ 
if
´´ 
(
´´ 
(
´´ 
friend
´´ 
.
´´  
Player_IdPlayer
´´  /
==
´´0 2
playerConsulted
´´3 B
.
´´B C
IdPlayer
´´C K
)
´´K L
)
´´L M
{
¨¨ 
status
≠≠ 
=
≠≠  
GetFriendStatus
≠≠! 0
(
≠≠0 1
friend
≠≠1 7
.
≠≠7 8#
PlayerFriend_IdPlayer
≠≠8 M
)
≠≠M N
;
≠≠N O
userFriendPojo
ÆÆ &
=
ÆÆ' ( 
consultInformation
ÆÆ) ;
.
ÆÆ; <#
ConsultUserByIdPlayer
ÆÆ< Q
(
ÆÆQ R
friend
ÆÆR X
.
ÆÆX Y#
PlayerFriend_IdPlayer
ÆÆY n
)
ÆÆn o
;
ÆÆo p
}
ØØ 
else
∞∞ 
{
±± 
status
≤≤ 
=
≤≤  
GetFriendStatus
≤≤! 0
(
≤≤0 1
friend
≤≤1 7
.
≤≤7 8
Player_IdPlayer
≤≤8 G
)
≤≤G H
;
≤≤H I
userFriendPojo
≥≥ &
=
≥≥' ( 
consultInformation
≥≥) ;
.
≥≥; <#
ConsultUserByIdPlayer
≥≥< Q
(
≥≥Q R
friend
≥≥R X
.
≥≥X Y
Player_IdPlayer
≥≥Y h
)
≥≥h i
;
≥≥i j
}
¥¥ 
if
µµ 
(
µµ 
userFriendPojo
µµ &
.
µµ& '
	CodeEvent
µµ' 0
==
µµ1 3!
ExceptionDictionary
µµ4 G
.
µµG H
SUCCESFULL_EVENT
µµH X
)
µµX Y
{
∂∂ #
userFriendInformation
∑∑ -
.
∑∑- .
UserName
∑∑. 6
=
∑∑7 8
userFriendPojo
∑∑9 G
.
∑∑G H
ObjectSaved
∑∑H S
.
∑∑S T
UserName
∑∑T \
;
∑∑\ ]#
userFriendInformation
∏∏ -
.
∏∏- .
IdUser
∏∏. 4
=
∏∏5 6
userFriendPojo
∏∏7 E
.
∏∏E F
ObjectSaved
∏∏F Q
.
∏∏Q R
IdUser
∏∏R X
;
∏∏X Y#
userFriendInformation
ππ -
.
ππ- ."
IdStatusAvailability
ππ. B
=
ππC D
status
ππE K
;
ππK L&
friendsOfUserInformation
∫∫ 0
.
∫∫0 1
Add
∫∫1 4
(
∫∫4 5#
userFriendInformation
∫∫5 J
)
∫∫J K
;
∫∫K L
}
ªª 
else
ºº 
{
ΩΩ 
return
ææ 
null
ææ #
;
ææ# $
}
øø 
}
¿¿ 
}
¡¡ 
return
¬¬ &
friendsOfUserInformation
¬¬ +
;
¬¬+ ,
}
√√ 	
private
≈≈ 
List
≈≈ 
<
≈≈ $
FriendBasicInformation
≈≈ +
>
≈≈+ ,!
GetListOfNotFriends
≈≈- @
(
≈≈@ A
List
≈≈A E
<
≈≈E F
Player
≈≈F L
>
≈≈L M#
listOfFriendsRegistry
≈≈N c
,
≈≈c d
Player
≈≈e k
playerConsulted
≈≈l {
)
≈≈{ |
{
∆∆ 	.
 ConsultInformationImplementation
«« , 
consultInformation
««- ?
=
««@ A
new
««B E.
 ConsultInformationImplementation
««F f
(
««f g
)
««g h
;
««h i
List
»» 
<
»» $
FriendBasicInformation
»» '
>
»»' (,
ListUsersNotFriendsInformation
»») G
=
»»H I
new
»»J M
List
»»N R
<
»»R S$
FriendBasicInformation
»»S i
>
»»i j
(
»»j k
)
»»k l
;
»»l m
foreach
…… 
(
…… 
var
…… 
player
…… 
in
……  "#
listOfFriendsRegistry
……# 8
)
……8 9
{
   $
FriendBasicInformation
ÀÀ &&
userNotFriendInformation
ÀÀ' ?
=
ÀÀ@ A
new
ÀÀB E$
FriendBasicInformation
ÀÀF \
(
ÀÀ\ ]
)
ÀÀ] ^
;
ÀÀ^ _
var
ÃÃ !
userFriendConsulted
ÃÃ '
=
ÃÃ( ) 
consultInformation
ÃÃ* <
.
ÃÃ< =#
ConsultUserByIdPlayer
ÃÃ= R
(
ÃÃR S
player
ÃÃS Y
.
ÃÃY Z
IdPlayer
ÃÃZ b
)
ÃÃb c
;
ÃÃc d
if
ÕÕ 
(
ÕÕ !
userFriendConsulted
ÕÕ '
.
ÕÕ' (
	CodeEvent
ÕÕ( 1
==
ÕÕ2 4!
ExceptionDictionary
ÕÕ5 H
.
ÕÕH I
SUCCESFULL_EVENT
ÕÕI Y
)
ÕÕY Z
{
ŒŒ &
userNotFriendInformation
œœ ,
.
œœ, -
UserName
œœ- 5
=
œœ6 7!
userFriendConsulted
œœ8 K
.
œœK L
ObjectSaved
œœL W
.
œœW X
UserName
œœX `
;
œœ` a&
userNotFriendInformation
–– ,
.
––, -
IdUser
––- 3
=
––4 5!
userFriendConsulted
––6 I
.
––I J
ObjectSaved
––J U
.
––U V
IdUser
––V \
;
––\ ]&
userNotFriendInformation
—— ,
.
——, -"
IdStatusAvailability
——- A
=
——B C

NOT_STATUS
——D N
;
——N O,
ListUsersNotFriendsInformation
““ 2
.
““2 3
Add
““3 6
(
““6 7&
userNotFriendInformation
““7 O
)
““O P
;
““P Q
}
”” 
else
‘‘ 
{
’’ 
return
÷÷ 
null
÷÷ 
;
÷÷  
}
◊◊ 
}
ÿÿ 
return
ŸŸ ,
ListUsersNotFriendsInformation
ŸŸ 1
;
ŸŸ1 2
}
⁄⁄ 	
private
ﬁﬁ 
int
ﬁﬁ 
GetFriendStatus
ﬁﬁ #
(
ﬁﬁ# $
int
ﬁﬁ$ '
idFriend
ﬁﬁ( 0
)
ﬁﬁ0 1
{
ﬂﬂ 	.
 ConsultInformationImplementation
‡‡ , 
consultInformation
‡‡- ?
=
‡‡@ A
new
‡‡B E.
 ConsultInformationImplementation
‡‡F f
(
‡‡f g
)
‡‡g h
;
‡‡h i
var
·· 
userPOJO
·· 
=
··  
consultInformation
·· -
.
··- .#
ConsultUserByIdPlayer
··. C
(
··C D
idFriend
··D L
)
··L M
;
··M N
if
‚‚ 
(
‚‚ 
userPOJO
‚‚ 
.
‚‚ 
	CodeEvent
‚‚ "
==
‚‚# %!
ExceptionDictionary
‚‚& 9
.
‚‚9 :
SUCCESFULL_EVENT
‚‚: J
)
‚‚J K
{
„„ 
var
‰‰ 
channelSaved
‰‰  
=
‰‰! "#
ActiveUsersDictionary
‰‰# 8
.
‰‰8 9*
GetChannelCallBackActiveUser
‰‰9 U
(
‰‰U V
userPOJO
‰‰V ^
.
‰‰^ _
ObjectSaved
‰‰_ j
.
‰‰j k
IdUser
‰‰k q
)
‰‰q r
;
‰‰r s
if
ÂÂ 
(
ÂÂ 
channelSaved
ÂÂ  
!=
ÂÂ! #
null
ÂÂ$ (
)
ÂÂ( )
{
ÊÊ 
return
ÁÁ 
ACTIVE
ÁÁ !
;
ÁÁ! "
}
ËË 
}
ÈÈ 
return
ÍÍ 
INACTIVE
ÍÍ 
;
ÍÍ 
}
ÎÎ 	
}
ÌÌ 
}ÓÓ Åm
ïC:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameServer\JeopardyGame.Service\ServiceImplementation\LiveChatImplementation.cs
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
class "
LiveChatImplementation /
:0 1
	ILiveChat2 ;
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
< 
bool  
>  !
CreateChatForLobby" 4
(4 5
int5 8
roomCode9 A
,A B
intC F
idAdminG N
)N O
{ 	
GenericClass 
< 
bool 
> 
resultToReturn -
=. /
new0 3
GenericClass4 @
<@ A
boolA E
>E F
(F G
)G H
;H I
if 
( 
roomCode 
== 
NULL_INT_VALUE *
||+ -
idAdmin. 5
==6 8
NULL_INT_VALUE9 G
)G H
{ 
return !
NullParametersHandler ,
., -'
HandleNullParametersService- H
(H I
resultToReturnI W
)W X
;X Y
} #
HistoricalOfAllMessages #
messagesHistorical$ 6
=7 8
new9 <#
HistoricalOfAllMessages= T
(T U
)U V
;V W
messagesHistorical 
. 
idAdmin &
=' (
idAdmin) 0
;0 1
ChatsDictionary 
. '
RegisterNewChatInDictionary 7
(7 8
roomCode8 @
,@ A
messagesHistoricalB T
)T U
;U V'
SpecificChannelCallBackChat '
channelChat( 3
=4 5
new6 9'
SpecificChannelCallBackChat: U
(U V
)V W
;W X
channelChat 
. 
idUser 
=  
idAdmin! (
;( )
channelChat 
. $
communicationChannelChat 0
=1 2
OperationContext3 C
.C D
CurrentD K
;K L)
ChannelsCallBackInActiveChats )&
activeChannelsCallBackChat* D
=E F
newG J)
ChannelsCallBackInActiveChatsK h
(h i
)i j
;j k&
activeChannelsCallBackChat &
.& '
idAdmin' .
=/ 0
idAdmin1 8
;8 9&
activeChannelsCallBackChat   &
.  & '"
listOfChannelsCallBack  ' =
.  = >
Add  > A
(  A B
channelChat  B M
)  M N
;  N O
ChatsDictionary!! 
.!! *
RegisterNewChannelCallbackChat!! :
(!!: ;
roomCode!!; C
,!!C D&
activeChannelsCallBackChat!!D ^
)!!^ _
;!!_ `
resultToReturn"" 
."" 
ObjectSaved"" &
=""' (
true"") -
;""- .
resultToReturn## 
.## 
	CodeEvent## $
=##% &
ExceptionDictionary##' :
.##: ;
SUCCESFULL_EVENT##; K
;##K L
return$$ 
resultToReturn$$ !
;$$! "
}%% 	
public&& 
GenericClass&& 
<&& 
List&&  
<&&  !
MessageChat&&! ,
>&&, -
>&&- .
GetAllMessages&&/ =
(&&= >
int&&> A
roomCode&&B J
,&&J K
int&&L O
idUser&&P V
)&&V W
{'' 	
GenericClass(( 
<(( 
List(( 
<(( 
MessageChat(( (
>((( )
>(() *
resultToReturn((+ 9
=((: ;
new((< ?
GenericClass((@ L
<((L M
List((M Q
<((Q R
MessageChat((R ]
>((] ^
>((^ _
(((_ `
)((` a
;((a b
if)) 
()) 
roomCode)) 
<=)) 
NULL_INT_VALUE)) )
)))) *
{** 
return++ !
NullParametersHandler++ ,
.++, -'
HandleNullParametersService++- H
(++H I
resultToReturn++I W
)++W X
;++X Y
},, #
HistoricalOfAllMessages-- #
messagesHistorical--$ 6
=--7 8
ChatsDictionary--9 H
.--H I
GetActiveChat--I V
(--V W
roomCode--W _
)--_ `
;--` a
if.. 
(.. 
messagesHistorical.. "
!=..# %
null..& *
)..* +
{// 
resultToReturn00 
.00 
ObjectSaved00 *
=00+ ,
messagesHistorical00- ?
.00? @
listOfMessages00@ N
;00N O
resultToReturn11 
.11 
	CodeEvent11 (
=11) *
ExceptionDictionary11+ >
.11> ?
SUCCESFULL_EVENT11? O
;11O P2
&RegisterNewChannelInChatChannelStorage22 6
(226 7
roomCode227 ?
,22? @
idUser22A G
)22G H
;22H I
}33 
else44 
{55 
resultToReturn66 
.66 
	CodeEvent66 (
=66) *
ExceptionDictionary66+ >
.66> ?
UNSUCCESFULL_EVENT66? Q
;66Q R
}77 
return88 
resultToReturn88 !
;88! "
}99 	
public;; 
void;; 

DeleteChat;; 
(;; 
int;; "
roomCode;;# +
,;;+ ,
int;;- 0
idUser;;1 7
);;7 8
{<< 	#
HistoricalOfAllMessages== #
messagesHistorical==$ 6
===7 8
ChatsDictionary==9 H
.==H I
GetActiveChat==I V
(==V W
roomCode==W _
)==_ `
;==` a
if>> 
(>> 
roomCode>> 
!=>> 
NULL_INT_VALUE>> *
&&>>+ -
messagesHistorical>>. @
!=>>A C
null>>D H
&&>>I K
messagesHistorical>>L ^
.>>^ _
idAdmin>>_ f
==>>g i
idUser>>j p
)>>p q
{?? 
ChatsDictionary@@ 
.@@  4
(RemoveRegistryOfActiveChatFromDictionary@@  H
(@@H I
roomCode@@I Q
)@@Q R
;@@R S#
DeleteChannelRegistriesAA '
(AA' (
roomCodeAA( 0
)AA0 1
;AA1 2
}BB 
}CC 	
privateEE 
voidEE 2
&RegisterNewChannelInChatChannelStorageEE ;
(EE; <
intEE< ?
roomCodeEE@ H
,EEH I
intEEJ M
idUserEEN T
)EET U
{FF 	'
SpecificChannelCallBackChatGG '
channelChatGG( 3
=GG4 5
newGG6 9'
SpecificChannelCallBackChatGG: U
(GGU V
)GGV W
;GGW X
channelChatHH 
.HH 
idUserHH 
=HH  
idUserHH! '
;HH' (
channelChatII 
.II $
communicationChannelChatII 0
=II1 2
OperationContextII3 C
.IIC D
CurrentIID K
;IIK L)
ChannelsCallBackInActiveChatsJJ ).
"specificActiveInChannelChatStorageJJ* L
=JJM N
ChatsDictionaryJJO ^
.JJ^ _"
GetChannelCallBackChatJJ_ u
(JJu v
roomCodeJJv ~
)JJ~ 
;	JJ Ä
boolKK 
saveKK 
=KK 
trueKK 
;KK 
foreachLL 
(LL 
varLL 
itemLL 
inLL  .
"specificActiveInChannelChatStorageLL! C
.LLC D"
listOfChannelsCallBackLLD Z
)LLZ [
{MM 
ifNN 
(NN 
itemNN 
.NN 
idUserNN 
==NN  "
idUserNN# )
)NN) *
{OO 
savePP 
=PP 
falsePP  
;PP  !
breakQQ 
;QQ 
}RR 
}SS 
ifTT 
(TT 
saveTT 
)TT 
{UU .
"specificActiveInChannelChatStorageVV 2
.VV2 3"
listOfChannelsCallBackVV3 I
.VVI J
AddVVJ M
(VVM N
channelChatVVN Y
)VVY Z
;VVZ [
}WW 
}XX 	
privateZZ 
voidZZ #
DeleteChannelRegistriesZZ ,
(ZZ, -
intZZ- 0
roomCodeZZ1 9
)ZZ9 :
{[[ 	
if\\ 
(\\ 
roomCode\\ 
!=\\ 
NULL_INT_VALUE\\ *
)\\* +
{]] 
ChatsDictionary^^ 
.^^  =
1RemoveRegistryOfChannelCallBakcChatFromDictionary^^  Q
(^^Q R
roomCode^^R Z
)^^Z [
;^^[ \
}__ 
}`` 	
publicbb 
voidbb 
SendMessagebb 
(bb  
intbb  #
idUserbb$ *
,bb* +
intbb, /
roomCodebb0 8
,bb8 9
stringbb: @
userNamebbA I
,bbI J
stringbbK Q
messageToSendbbR _
)bb_ `
{cc 	
ifdd 
(dd 
idUserdd 
<=dd 
NULL_INT_VALUEdd )
||dd* ,
roomCodedd- 5
<=dd6 8
NULL_INT_VALUEdd9 G
||ddH J
stringddK Q
.ddQ R
IsNullOrEmptyddR _
(dd_ `
userNamedd` h
)ddh i
||ddj l
stringddm s
.dds t
IsNullOrEmpty	ddt Å
(
ddÅ Ç
messageToSend
ddÇ è
)
ddè ê
)
ddê ë
{ee 

NotifyUserff 
(ff 
roomCodeff #
,ff# $
newff% (
MessageChatff) 4
(ff4 5
)ff5 6
,ff6 7
falseff8 =
,ff= >
idUserff? E
)ffE F
;ffF G
}gg 
elsehh 
{ii #
HistoricalOfAllMessagesjj '
messagesHistoricaljj( :
=jj; <
ChatsDictionaryjj= L
.jjL M
GetActiveChatjjM Z
(jjZ [
roomCodejj[ c
)jjc d
;jjd e
ifkk 
(kk 
messagesHistoricalkk &
!=kk' )
nullkk* .
)kk. /
{ll 
MessageChatmm 
messageChatmm  +
=mm, -
newmm. 1
MessageChatmm2 =
(mm= >
)mm> ?
;mm? @
messageChatnn 
.nn  
IdUsernn  &
=nn' (
idUsernn) /
;nn/ 0
messageChatoo 
.oo  
UserNameoo  (
=oo) *
userNameoo+ 3
;oo3 4
messageChatpp 
.pp  
MessageToSendpp  -
=pp. /
messageToSendpp0 =
;pp= >
messagesHistoricalqq &
.qq& '
listOfMessagesqq' 5
.qq5 6
Addqq6 9
(qq9 :
messageChatqq: E
)qqE F
;qqF G

NotifyUserrr 
(rr 
roomCoderr '
,rr' (
messageChatrr) 4
,rr4 5
truerr6 :
,rr: ;
idUserrr< B
)rrB C
;rrC D
}ss 
elsett 
{uu 

NotifyUservv 
(vv 
roomCodevv '
,vv' (
newvv) ,
MessageChatvv- 8
(vv8 9
)vv9 :
,vv: ;
falsevv< A
,vvA B
idUservvC I
)vvI J
;vvJ K
}ww 
}xx 
}yy 	
private{{ 
void{{ 

NotifyUser{{ 
({{  
int{{  #
roomCode{{$ ,
,{{, -
MessageChat{{. 9
messageToSend{{: G
,{{G H
bool{{I M
success{{N U
,{{U V
int{{W Z
idSender{{[ c
){{c d
{|| 	
if}} 
(}} 
success}} 
)}} 
{~~ 
var 
chatChannel 
=  !
ChatsDictionary" 1
.1 2"
GetChannelCallBackChat2 H
(H I
roomCodeI Q
)Q R
;R S
foreach
ÄÄ 
(
ÄÄ 
var
ÄÄ 
item
ÄÄ !
in
ÄÄ" $
chatChannel
ÄÄ% 0
.
ÄÄ0 1$
listOfChannelsCallBack
ÄÄ1 G
)
ÄÄG H
{
ÅÅ 
var
ÇÇ 
channel
ÇÇ 
=
ÇÇ  !
item
ÇÇ" &
.
ÇÇ& '&
communicationChannelChat
ÇÇ' ?
.
ÇÇ? @ 
GetCallbackChannel
ÇÇ@ R
<
ÇÇR S
ILiveChatCallBack
ÇÇS d
>
ÇÇd e
(
ÇÇe f
)
ÇÇf g
;
ÇÇg h
if
ÉÉ 
(
ÉÉ 
item
ÉÉ 
.
ÉÉ 
idUser
ÉÉ #
!=
ÉÉ$ &
idSender
ÉÉ' /
)
ÉÉ/ 0
{
ÑÑ 
GenericClass
ÖÖ $
<
ÖÖ$ %
MessageChat
ÖÖ% 0
>
ÖÖ0 1
resultToReturn
ÖÖ2 @
=
ÖÖA B
new
ÖÖC F
GenericClass
ÖÖG S
<
ÖÖS T
MessageChat
ÖÖT _
>
ÖÖ_ `
(
ÖÖ` a
)
ÖÖa b
;
ÖÖb c
resultToReturn
ÜÜ &
.
ÜÜ& '
ObjectSaved
ÜÜ' 2
=
ÜÜ3 4
messageToSend
ÜÜ5 B
;
ÜÜB C
resultToReturn
áá &
.
áá& '
	CodeEvent
áá' 0
=
áá1 2!
ExceptionDictionary
áá3 F
.
ááF G
SUCCESFULL_EVENT
ááG W
;
ááW X
channel
àà 
.
àà  
ReceiveMessage
àà  .
(
àà. /
resultToReturn
àà/ =
)
àà= >
;
àà> ?
}
ââ 
}
ää 
}
ãã 
}
åå 	
}
èè 
}êê ‘£
ôC:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameServer\JeopardyGame.Service\ServiceImplementation\LobbyActionsImplementation.cs
	namespace 	
JeopardyGame
 
. 
Service 
. !
ServiceImplementation 4
{ 
internal 
class &
LobbyActionsImplementation -
:. /
ILobbyActions0 =
{ 
private 
readonly 
int 
NULL_INT_VALUE +
=, -
$num. /
;/ 0
private 
readonly 
int 
ROOMCODE_IS_FULL -
=. /
-0 1
$num1 2
;2 3
private 
readonly 
int "
ROOMCODE_ALREADY_EXIST 3
=4 5
-6 7
$num7 8
;8 9
private 
readonly 
int #
ROOMCODE_DOES_NOT_EXIST 4
=4 5
$num6 7
;7 8
private 
readonly 
int 
	SUCCESFUL &
=' (
$num) *
;* +
private 
readonly 
int $
LEADER_POSITION_IN_LOBBY 5
=6 7
$num8 9
;9 :
private 
readonly 
int 
TEAM_LEFT_SIDE +
=, -
$num. /
;/ 0
private 
readonly 
int 
TEAM_RIGTH_SIDE ,
=- .
$num/ 0
;0 1
private 
readonly 
int 
MAX_PLAYERS (
=) *
$num+ ,
;, -
public 
GenericClass 
< 
int 
>  
CreateNewLobby! /
(/ 0
int0 3
roomCode4 <
,< =
int> A
idUserB H
)H I
{ 	
GenericClass 
< 
int 
> 
resultToReturn ,
=- .
new/ 2
GenericClass3 ?
<? @
int@ C
>C D
(D E
)E F
;F G
if 
( 
roomCode 
== 
NULL_INT_VALUE *
||+ -
idUser. 4
==5 7
NULL_INT_VALUE8 F
)F G
{   
return!! !
NullParametersHandler!! ,
.!!, -'
HandleNullParametersService!!- H
(!!H I
resultToReturn!!I W
)!!W X
;!!X Y
}"" 
var## 
lobby## 
=## !
GameLobbiesDictionary## -
.##- ."
GetSpecificActiveLobby##. D
(##D E
roomCode##E M
)##M N
;##N O
if$$ 
($$ 
lobby$$ 
==$$ 
null$$ 
)$$ 
{%% ,
 ConsultInformationImplementation&& 0
consultInformation&&1 C
=&&D E
new&&F I,
 ConsultInformationImplementation&&J j
(&&j k
)&&k l
;&&l m
GenericClass'' 
<'' 
UserPOJO'' %
>''% &
userConsulted''' 4
=''5 6
consultInformation''7 I
.''I J
ConsultUserById''J Y
(''Y Z
idUser''Z `
)''` a
;''a b
if(( 
((( 
userConsulted(( !
.((! "
	CodeEvent((" +
==((, .
ExceptionDictionary((/ B
.((B C
SUCCESFULL_EVENT((C S
)((S T
{)) 
GenericClass**  
<**  !

PlayerPOJO**! +
>**+ ,
playerConsulted**- <
=**= >
consultInformation**? Q
.**Q R!
ConsultPlayerByIdUser**R g
(**g h
idUser**h n
)**n o
;**o p
if++ 
(++ 
playerConsulted++ '
.++' (
	CodeEvent++( 1
==++2 4
ExceptionDictionary++5 H
.++H I
SUCCESFULL_EVENT++I Y
)++Y Z
{,, 
PlayerOnLobbyList-- )
leader--* 0
=--1 2
new--3 6
PlayerOnLobbyList--7 H
(--H I
)--I J
;--J K
leader.. 
... 
idUser.. %
=..& '
idUser..( .
;... /
leader// 
.// 
idPlayer// '
=//( )
playerConsulted//* 9
.//9 :
ObjectSaved//: E
.//E F
IdPlayer//F N
;//N O
leader00 
.00 
userName00 '
=00( )
userConsulted00* 7
.007 8
ObjectSaved008 C
.00C D
UserName00D L
;00L M
leader11 
.11 !
numberOfPlayerInLobby11 4
=115 6$
LEADER_POSITION_IN_LOBBY117 O
;11O P
leader22 
.22 
sideTeam22 '
=22( )
TEAM_LEFT_SIDE22* 8
;228 9
leader33 
.33 -
!lobbyCommunicationChannelCallback33 @
=33A B
OperationContext33C S
.33S T
Current33T [
;33[ \
Lobby44 
newLobby44 &
=44' (
new44) ,
Lobby44- 2
(442 3
)443 4
;444 5
newLobby55  
.55  !
idAdmin55! (
=55) *
idUser55+ 1
;551 2
newLobby66  
.66  !
listOfPlayerInLobby66! 4
.664 5
Add665 8
(668 9
leader669 ?
)66? @
;66@ A!
GameLobbiesDictionary77 -
.77- .
RegisterNewLobby77. >
(77> ?
roomCode77? G
,77G H
newLobby77I Q
)77Q R
;77R S
resultToReturn88 &
.88& '
ObjectSaved88' 2
=883 4
	SUCCESFUL885 >
;88> ?
resultToReturn99 &
.99& '
	CodeEvent99' 0
=991 2
ExceptionDictionary993 F
.99F G
SUCCESFULL_EVENT99G W
;99W X
}:: 
else;; 
{<< 
resultToReturn== &
.==& '
	CodeEvent==' 0
===1 2
playerConsulted==3 B
.==B C
	CodeEvent==C L
;==L M
}>> 
}?? 
else@@ 
{AA 
resultToReturnBB "
.BB" #
	CodeEventBB# ,
=BB- .
userConsultedBB/ <
.BB< =
	CodeEventBB= F
;BBF G
}CC 
}DD 
elseEE 
{FF 
resultToReturnGG 
.GG 
ObjectSavedGG *
=GG+ ,"
ROOMCODE_ALREADY_EXISTGG- C
;GGC D
resultToReturnHH 
.HH 
	CodeEventHH (
=HH) *
ExceptionDictionaryHH+ >
.HH> ?
UNSUCCESFULL_EVENTHH? Q
;HHQ R
}II 
returnJJ 
resultToReturnJJ !
;JJ! "
}KK 	
publicMM 
GenericClassMM 
<MM 
intMM 
>MM  
	JoinLobbyMM! *
(MM* +
intMM+ .
roomCodeMM/ 7
,MM7 8
intMM9 <
idUserMM= C
)MMC D
{NN 	
GenericClassOO 
<OO 
intOO 
>OO 
resultToReturnOO ,
=OO- .
newOO/ 2
GenericClassOO3 ?
<OO? @
intOO@ C
>OOC D
(OOD E
)OOE F
;OOF G
ifPP 
(PP 
roomCodePP 
==PP 
NULL_INT_VALUEPP *
||PP+ -
idUserPP. 4
==PP5 7
NULL_INT_VALUEPP8 F
)PPF G
{QQ 
returnRR !
NullParametersHandlerRR ,
.RR, -'
HandleNullParametersServiceRR- H
(RRH I
resultToReturnRRI W
)RRW X
;RRX Y
}SS 
varTT 
lobbyTT 
=TT !
GameLobbiesDictionaryTT -
.TT- ."
GetSpecificActiveLobbyTT. D
(TTD E
roomCodeTTE M
)TTM N
;TTN O
ifUU 
(UU 
lobbyUU 
!=UU 
nullUU 
)UU 
{VV 
ifWW 
(WW 
lobbyWW 
.WW 
listOfPlayerInLobbyWW -
.WW- .
CountWW. 3
<WW4 5
MAX_PLAYERSWW6 A
)WWA B
{XX ,
 ConsultInformationImplementationYY 4
consultInformationYY5 G
=YYH I
newYYJ M,
 ConsultInformationImplementationYYN n
(YYn o
)YYo p
;YYp q
GenericClassZZ  
<ZZ  !
UserPOJOZZ! )
>ZZ) *
userPojoZZ+ 3
=ZZ4 5
consultInformationZZ6 H
.ZZH I
ConsultUserByIdZZI X
(ZZX Y
idUserZZY _
)ZZ_ `
;ZZ` a
if[[ 
([[ 
userPojo[[  
.[[  !
	CodeEvent[[! *
==[[+ -
ExceptionDictionary[[. A
.[[A B
SUCCESFULL_EVENT[[B R
)[[R S
{\\ 
GenericClass]] $
<]]$ %

PlayerPOJO]]% /
>]]/ 0

playerPojo]]1 ;
=]]< =
consultInformation]]> P
.]]P Q!
ConsultPlayerByIdUser]]Q f
(]]f g
idUser]]g m
)]]m n
;]]n o
if^^ 
(^^ 

playerPojo^^ &
.^^& '
	CodeEvent^^' 0
==^^1 3
ExceptionDictionary^^4 G
.^^G H
SUCCESFULL_EVENT^^H X
)^^X Y
{__ 
PlayerOnLobbyList`` -
playerJoining``. ;
=``< =
new``> A
PlayerOnLobbyList``B S
(``S T
)``T U
;``U V
playerJoiningaa )
.aa) *
idUseraa* 0
=aa1 2
idUseraa3 9
;aa9 :
playerJoiningbb )
.bb) *
idPlayerbb* 2
=bb3 4

playerPojobb5 ?
.bb? @
ObjectSavedbb@ K
.bbK L
IdPlayerbbL T
;bbT U
playerJoiningcc )
.cc) *
userNamecc* 2
=cc3 4
userPojocc5 =
.cc= >
ObjectSavedcc> I
.ccI J
UserNameccJ R
;ccR S
playerJoiningdd )
.dd) *!
numberOfPlayerInLobbydd* ?
=dd@ A
GetPositionOfPlayerddB U
(ddU V
lobbyddV [
)dd[ \
;dd\ ]
playerJoiningee )
.ee) *
sideTeamee* 2
=ee3 4
TEAM_LEFT_SIDEee5 C
;eeC D
playerJoiningff )
.ff) *-
!lobbyCommunicationChannelCallbackff* K
=ffL M
OperationContextffN ^
.ff^ _
Currentff_ f
;fff g
lobbygg !
.gg! "
listOfPlayerInLobbygg" 5
.gg5 6
Addgg6 9
(gg9 :
playerJoininggg: G
)ggG H
;ggH I
resultToReturnhh *
.hh* +
ObjectSavedhh+ 6
=hh7 8
	SUCCESFULhh9 B
;hhB C
resultToReturnii *
.ii* +
	CodeEventii+ 4
=ii5 6
ExceptionDictionaryii7 J
.iiJ K
SUCCESFULL_EVENTiiK [
;ii[ \
}jj 
elsekk 
{ll 
resultToReturnmm *
.mm* +
	CodeEventmm+ 4
=mm5 6

playerPojomm7 A
.mmA B
	CodeEventmmB K
;mmK L
}nn 
}oo 
elsepp 
{qq 
resultToReturnrr &
.rr& '
	CodeEventrr' 0
=rr1 2
userPojorr3 ;
.rr; <
	CodeEventrr< E
;rrE F
}ss 
}tt 
elseuu 
{vv 
resultToReturnww "
.ww" #
ObjectSavedww# .
=ww/ 0
ROOMCODE_IS_FULLww1 A
;wwA B
resultToReturnxx "
.xx" #
	CodeEventxx# ,
=xx- .
ExceptionDictionaryxx/ B
.xxB C
UNSUCCESFULL_EVENTxxC U
;xxU V
}yy 
}zz 
else{{ 
{|| 
resultToReturn}} 
.}} 
ObjectSaved}} *
=}}+ ,#
ROOMCODE_DOES_NOT_EXIST}}- D
;}}D E
resultToReturn~~ 
.~~ 
	CodeEvent~~ (
=~~) *
ExceptionDictionary~~+ >
.~~> ?
UNSUCCESFULL_EVENT~~? Q
;~~Q R
} 
return
ÄÄ 
resultToReturn
ÄÄ !
;
ÄÄ! "
}
ÅÅ 	
private
ÉÉ 
int
ÉÉ !
GetPositionOfPlayer
ÉÉ '
(
ÉÉ' (
Lobby
ÉÉ( -
lobby
ÉÉ. 3
)
ÉÉ3 4
{
ÑÑ 	
int
ÖÖ 
position
ÖÖ 
=
ÖÖ 
lobby
ÖÖ  
.
ÖÖ  !!
listOfPlayerInLobby
ÖÖ! 4
.
ÖÖ4 5
Count
ÖÖ5 :
+
ÖÖ; <
$num
ÖÖ= >
;
ÖÖ> ?
return
ÜÜ 
position
ÜÜ 
;
ÜÜ 
}
áá 	
public
ââ 
void
ââ !
NotifyPlayerInLobby
ââ '
(
ââ' (
int
ââ( +
roomCode
ââ, 4
,
ââ4 5
int
ââ6 9
idUser
ââ: @
)
ââ@ A
{
ää 	
if
ãã 
(
ãã 
roomCode
ãã 
!=
ãã 
NULL_INT_VALUE
ãã *
||
ãã+ -
idUser
ãã. 4
!=
ãã5 7
NULL_INT_VALUE
ãã8 F
)
ããF G
{
åå 
var
çç 
lobby
çç 
=
çç #
GameLobbiesDictionary
çç 1
.
çç1 2$
GetSpecificActiveLobby
çç2 H
(
ççH I
roomCode
ççI Q
)
ççQ R
;
ççR S
if
éé 
(
éé 
lobby
éé 
!=
éé 
null
éé !
)
éé! "
{
èè 
foreach
êê 
(
êê 
var
êê  
item
êê! %
in
êê& (
lobby
êê) .
.
êê. /!
listOfPlayerInLobby
êê/ B
)
êêB C
{
ëë 
if
íí 
(
íí 
item
íí  
.
íí  !
idUser
íí! '
==
íí( *
idUser
íí+ 1
)
íí1 2
{
ìì /
!NotifyPlayerJoiningOrLeavingLobby
îî =
(
îî= >
roomCode
îî> F
,
îîF G
idUser
îîH N
,
îîN O
lobby
îîP U
)
îîU V
;
îîV W
break
ïï !
;
ïï! "
}
ññ 
}
óó 
}
òò 
}
ôô 
}
öö 	
public
úú 
GenericClass
úú 
<
úú 
List
úú  
<
úú  !
PlayerInLobby
úú! .
>
úú. /
>
úú/ 0(
GetAllCurrentPlayerInLobby
úú1 K
(
úúK L
int
úúL O
roomCode
úúP X
,
úúX Y
int
úúZ ]
idUserRequesting
úú^ n
)
úún o
{
ùù 	
GenericClass
ûû 
<
ûû 
List
ûû 
<
ûû 
PlayerInLobby
ûû +
>
ûû+ ,
>
ûû, -
resultToReturn
ûû. <
=
ûû= >
new
ûû? B
GenericClass
ûûC O
<
ûûO P
List
ûûP T
<
ûûT U
PlayerInLobby
ûûU b
>
ûûb c
>
ûûc d
(
ûûd e
)
ûûe f
;
ûûf g
if
üü 
(
üü 
roomCode
üü 
!=
üü 
NULL_INT_VALUE
üü *
&&
üü+ -
idUserRequesting
üü. >
!=
üü? A
NULL_INT_VALUE
üüB P
)
üüP Q
{
†† 
var
°° 
lobby
°° 
=
°° #
GameLobbiesDictionary
°° 1
.
°°1 2$
GetSpecificActiveLobby
°°2 H
(
°°H I
roomCode
°°I Q
)
°°Q R
;
°°R S
if
¢¢ 
(
¢¢ 
lobby
¢¢ 
!=
¢¢ 
null
¢¢ !
)
¢¢! "
{
££ 
List
§§ 
<
§§ 
PlayerInLobby
§§ '
>
§§' (
playerInLobbies
§§) 8
=
§§9 :
new
§§; >
List
§§? C
<
§§D E
PlayerInLobby
§§E R
>
§§R S
(
§§S T
)
§§T U
;
§§U V
foreach
•• 
(
•• 
var
••  
item
••! %
in
••& (
lobby
••) .
.
••. /!
listOfPlayerInLobby
••/ B
)
••B C
{
¶¶ 
PlayerInLobby
ßß %
playerIn
ßß& .
=
ßß/ 0
new
ßß1 4
(
ßß4 5
)
ßß5 6
;
ßß6 7
playerIn
®®  
.
®®  !
IdUser
®®! '
=
®®( )
item
®®* .
.
®®. /
idUser
®®/ 5
;
®®5 6
playerIn
©©  
.
©©  !
IdPlayer
©©! )
=
©©* +
item
©©, 0
.
©©0 1
idPlayer
©©1 9
;
©©9 :
playerIn
™™  
.
™™  !
UserName
™™! )
=
™™* +
item
™™, 0
.
™™0 1
userName
™™1 9
;
™™9 :
playerIn
´´  
.
´´  !#
NumberOfPlayerInLobby
´´! 6
=
´´7 8
item
´´9 =
.
´´= >#
numberOfPlayerInLobby
´´> S
;
´´S T
playerIn
¨¨  
.
¨¨  !

SideOfTeam
¨¨! +
=
¨¨, -
item
¨¨. 2
.
¨¨2 3
sideTeam
¨¨3 ;
;
¨¨; <
playerInLobbies
≠≠ '
.
≠≠' (
Add
≠≠( +
(
≠≠+ ,
playerIn
≠≠, 4
)
≠≠4 5
;
≠≠5 6
}
ÆÆ 
resultToReturn
ØØ "
.
ØØ" #
ObjectSaved
ØØ# .
=
ØØ/ 0
playerInLobbies
ØØ1 @
;
ØØ@ A
resultToReturn
∞∞ "
.
∞∞" #
	CodeEvent
∞∞# ,
=
∞∞- .!
ExceptionDictionary
∞∞/ B
.
∞∞B C
SUCCESFULL_EVENT
∞∞C S
;
∞∞S T
}
±± 
else
≤≤ 
{
≥≥ 
resultToReturn
¥¥ "
.
¥¥" #
ObjectSaved
¥¥# .
=
¥¥/ 0
null
¥¥1 5
;
¥¥5 6
resultToReturn
µµ "
.
µµ" #
	CodeEvent
µµ# ,
=
µµ- .!
ExceptionDictionary
µµ/ B
.
µµB C 
UNSUCCESFULL_EVENT
µµC U
;
µµU V
}
∂∂ 
}
∑∑ 
else
∏∏ 
{
ππ 
resultToReturn
∫∫ 
=
∫∫  #
NullParametersHandler
∫∫! 6
.
∫∫6 7)
HandleNullParametersService
∫∫7 R
(
∫∫R S
resultToReturn
∫∫S a
)
∫∫a b
;
∫∫b c
}
ªª 
return
ºº 
resultToReturn
ºº !
;
ºº! "
}
ΩΩ 	
public
øø 
void
øø 

LeaveLobby
øø 
(
øø 
int
øø "
roomCode
øø# +
,
øø+ ,
int
øø- 0
idUser
øø1 7
)
øø7 8
{
¿¿ 	
if
¡¡ 
(
¡¡ 
roomCode
¡¡ 
!=
¡¡ 
NULL_INT_VALUE
¡¡ *
&&
¡¡+ -
idUser
¡¡. 4
!=
¡¡5 7
NULL_INT_VALUE
¡¡8 F
&&
¡¡G I
idUser
¡¡J P
!=
¡¡Q S
$num
¡¡T U
)
¡¡U V
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
≈≈ 
int
∆∆ 
idPlayer
∆∆  
;
∆∆  !
int
«« #
numberOfPlayerInLobby
«« -
;
««- .
foreach
»» 
(
»» 
var
»»  
item
»»! %
in
»»& (
lobby
»») .
.
»». /!
listOfPlayerInLobby
»»/ B
)
»»B C
{
…… 
if
   
(
   
item
    
.
    !
idUser
  ! '
==
  ( *
idUser
  + 1
)
  1 2
{
ÀÀ 
idPlayer
ÃÃ $
=
ÃÃ% &
item
ÃÃ' +
.
ÃÃ+ ,
idPlayer
ÃÃ, 4
;
ÃÃ4 5#
numberOfPlayerInLobby
ÕÕ 1
=
ÕÕ2 3
item
ÕÕ4 8
.
ÕÕ8 9#
numberOfPlayerInLobby
ÕÕ9 N
;
ÕÕN O
lobby
ŒŒ !
.
ŒŒ! "!
listOfPlayerInLobby
ŒŒ" 5
.
ŒŒ5 6
Remove
ŒŒ6 <
(
ŒŒ< =
item
ŒŒ= A
)
ŒŒA B
;
ŒŒB C 
RearrangePositions
œœ .
(
œœ. /
lobby
œœ/ 4
,
œœ4 5
item
œœ6 :
.
œœ: ;#
numberOfPlayerInLobby
œœ; P
)
œœP Q
;
œœQ R/
!NotifyPlayerJoiningOrLeavingLobby
–– =
(
––= >
roomCode
––> F
,
––F G
idUser
––H N
,
––N O
lobby
––P U
)
––U V
;
––V W
break
—— !
;
——! "
}
““ 
}
”” 
}
‘‘ 
}
’’ 
}
÷÷ 	
private
ŸŸ 
void
ŸŸ /
!NotifyPlayerJoiningOrLeavingLobby
ŸŸ 6
(
ŸŸ6 7
int
ŸŸ7 :
roomCode
ŸŸ; C
,
ŸŸC D
int
ŸŸE H
idUser
ŸŸI O
,
ŸŸO P
Lobby
ŸŸQ V
lobby
ŸŸW \
)
ŸŸ\ ]
{
⁄⁄ 	
GenericClass
€€ 
<
€€ 
List
€€ 
<
€€ 
PlayerInLobby
€€ +
>
€€+ ,
>
€€, -
playersLobby
€€. :
=
€€; <(
GetAllCurrentPlayerInLobby
€€= W
(
€€W X
roomCode
€€X `
,
€€` a
idUser
€€b h
)
€€h i
;
€€i j
if
‹‹ 
(
‹‹ 
playersLobby
‹‹ 
.
‹‹ 
	CodeEvent
‹‹ &
==
‹‹' )!
ExceptionDictionary
‹‹* =
.
‹‹= >
SUCCESFULL_EVENT
‹‹> N
)
‹‹N O
{
›› 
foreach
ﬁﬁ 
(
ﬁﬁ 
var
ﬁﬁ 
item
ﬁﬁ !
in
ﬁﬁ" $
lobby
ﬁﬁ% *
.
ﬁﬁ* +!
listOfPlayerInLobby
ﬁﬁ+ >
)
ﬁﬁ> ?
{
ﬂﬂ 
var
‡‡ 
channel
‡‡ 
=
‡‡  !
item
‡‡" &
.
‡‡& '/
!lobbyCommunicationChannelCallback
‡‡' H
.
‡‡H I 
GetCallbackChannel
‡‡I [
<
‡‡[ \#
ILobbyActionsCallback
‡‡\ q
>
‡‡q r
(
‡‡r s
)
‡‡s t
;
‡‡t u
if
·· 
(
·· 
channel
·· 
!=
··  "
null
··# '
&&
··( *
idUser
··+ 1
!=
··2 4
item
··5 9
.
··9 :
idUser
··: @
)
··@ A
{
‚‚ 
channel
„„ 
.
„„  (
UpdateJoinedPlayerResponse
„„  :
(
„„: ;
playersLobby
„„; G
)
„„G H
;
„„H I
}
‰‰ 
}
ÂÂ 
}
ÊÊ 
}
ÁÁ 	
public
ÈÈ 
void
ÈÈ 
ChangePlayerSide
ÈÈ $
(
ÈÈ$ %
int
ÈÈ% (
roomCode
ÈÈ) 1
,
ÈÈ1 2
int
ÈÈ3 6 
idUserToChangeTeam
ÈÈ7 I
,
ÈÈI J
int
ÈÈK N
newSideTeam
ÈÈO Z
)
ÈÈZ [
{
ÍÍ 	
if
ÎÎ 
(
ÎÎ 
roomCode
ÎÎ 
!=
ÎÎ 
NULL_INT_VALUE
ÎÎ *
&&
ÎÎ+ - 
idUserToChangeTeam
ÎÎ. @
!=
ÎÎA C
NULL_INT_VALUE
ÎÎD R
&&
ÎÎS U
newSideTeam
ÎÎV a
!=
ÎÎb d
NULL_INT_VALUE
ÎÎe s
)
ÎÎs t
{
ÏÏ 
var
ÌÌ 
lobby
ÌÌ 
=
ÌÌ #
GameLobbiesDictionary
ÌÌ 1
.
ÌÌ1 2$
GetSpecificActiveLobby
ÌÌ2 H
(
ÌÌH I
roomCode
ÌÌI Q
)
ÌÌQ R
;
ÌÌR S
if
ÓÓ 
(
ÓÓ 
lobby
ÓÓ 
!=
ÓÓ 
null
ÓÓ !
)
ÓÓ! "
{
ÔÔ 
foreach
 
(
 
var
  
item
! %
in
& (
lobby
) .
.
. /!
listOfPlayerInLobby
/ B
)
B C
{
ÒÒ 
if
ÚÚ 
(
ÚÚ 
item
ÚÚ  
.
ÚÚ  !
idUser
ÚÚ! '
==
ÚÚ( * 
idUserToChangeTeam
ÚÚ+ =
)
ÚÚ= >
{
ÛÛ 
item
ÙÙ  
.
ÙÙ  !
sideTeam
ÙÙ! )
=
ÙÙ* +
newSideTeam
ÙÙ, 7
;
ÙÙ7 8'
NotifyPlayerChangedOfSide
ıı 5
(
ıı5 6
roomCode
ıı6 >
,
ıı> ? 
idUserToChangeTeam
ıı@ R
,
ııR S
lobby
ııT Y
)
ııY Z
;
ııZ [
break
ˆˆ !
;
ˆˆ! "
}
˜˜ 
}
¯¯ 
}
˘˘ 
}
˙˙ 
}
˚˚ 	
private
¸¸ 
void
¸¸ '
NotifyPlayerChangedOfSide
¸¸ .
(
¸¸. /
int
¸¸/ 2
roomCode
¸¸3 ;
,
¸¸; <
int
¸¸= @
idUser
¸¸A G
,
¸¸G H
Lobby
¸¸I N
lobby
¸¸O T
)
¸¸T U
{
˝˝ 	
GenericClass
˛˛ 
<
˛˛ 
List
˛˛ 
<
˛˛ 
PlayerInLobby
˛˛ +
>
˛˛+ ,
>
˛˛, -
playersLobby
˛˛. :
=
˛˛; <(
GetAllCurrentPlayerInLobby
˛˛= W
(
˛˛W X
roomCode
˛˛X `
,
˛˛` a
idUser
˛˛b h
)
˛˛h i
;
˛˛i j
if
ˇˇ 
(
ˇˇ 
playersLobby
ˇˇ 
.
ˇˇ 
	CodeEvent
ˇˇ &
==
ˇˇ' )!
ExceptionDictionary
ˇˇ* =
.
ˇˇ= >
SUCCESFULL_EVENT
ˇˇ> N
)
ˇˇN O
{
ÄÄ 
foreach
ÅÅ 
(
ÅÅ 
var
ÅÅ 
item
ÅÅ !
in
ÅÅ" $
lobby
ÅÅ% *
.
ÅÅ* +!
listOfPlayerInLobby
ÅÅ+ >
)
ÅÅ> ?
{
ÇÇ 
var
ÉÉ 
channel
ÉÉ 
=
ÉÉ  !
item
ÉÉ" &
.
ÉÉ& '/
!lobbyCommunicationChannelCallback
ÉÉ' H
.
ÉÉH I 
GetCallbackChannel
ÉÉI [
<
ÉÉ[ \#
ILobbyActionsCallback
ÉÉ\ q
>
ÉÉq r
(
ÉÉr s
)
ÉÉs t
;
ÉÉt u
if
ÑÑ 
(
ÑÑ 
channel
ÑÑ 
!=
ÑÑ  "
null
ÑÑ# '
&&
ÑÑ( *
lobby
ÑÑ+ 0
.
ÑÑ0 1
idAdmin
ÑÑ1 8
!=
ÑÑ9 ;
item
ÑÑ< @
.
ÑÑ@ A
idUser
ÑÑA G
)
ÑÑG H
{
ÖÖ 
channel
ÜÜ 
.
ÜÜ  
UpdateTeamSide
ÜÜ  .
(
ÜÜ. /
playersLobby
ÜÜ/ ;
)
ÜÜ; <
;
ÜÜ< =
}
áá 
}
àà 
}
ââ 
}
ää 	
public
åå 
void
åå 
DissolveLobby
åå !
(
åå! "
int
åå" %
roomCode
åå& .
,
åå. /
int
åå0 3
idUser
åå4 :
)
åå: ;
{
çç 	
var
éé 
lobby
éé 
=
éé #
GameLobbiesDictionary
éé -
.
éé- .$
GetSpecificActiveLobby
éé. D
(
ééD E
roomCode
ééE M
)
ééM N
;
ééN O
if
èè 
(
èè 
lobby
èè 
!=
èè 
null
èè 
)
èè 
{
êê 
foreach
ëë 
(
ëë 
var
ëë 
item
ëë !
in
ëë" $
lobby
ëë% *
.
ëë* +!
listOfPlayerInLobby
ëë+ >
)
ëë> ?
{
íí 
if
ìì 
(
ìì 
item
ìì 
.
ìì 
idUser
ìì #
==
ìì$ &
idUser
ìì' -
&&
ìì. 0
item
ìì1 5
.
ìì5 6#
numberOfPlayerInLobby
ìì6 K
==
ììM O&
LEADER_POSITION_IN_LOBBY
ììP h
)
ììh i
{
îî 
lobby
ïï 
.
ïï !
listOfPlayerInLobby
ïï 1
.
ïï1 2
Remove
ïï2 8
(
ïï8 9
item
ïï9 =
)
ïï= >
;
ïï> ? 
NotifyClosingLobby
ññ *
(
ññ* +
lobby
ññ+ 0
)
ññ0 1
;
ññ1 2$
EliminateRestOfPlayers
óó .
(
óó. /
lobby
óó/ 4
)
óó4 5
;
óó5 6
break
òò 
;
òò 
}
ôô 
}
öö 
}
õõ 
}
úú 	
private
ûû 
void
ûû $
EliminateRestOfPlayers
ûû +
(
ûû+ ,
Lobby
ûû, 1
lobby
ûû2 7
)
ûû7 8
{
üü 	
foreach
†† 
(
†† 
var
†† 

leftPlayer
†† #
in
††$ &
lobby
††' ,
.
††, -!
listOfPlayerInLobby
††- @
)
††@ A
{
°° 
lobby
¢¢ 
.
¢¢ !
listOfPlayerInLobby
¢¢ )
.
¢¢) *
Remove
¢¢* 0
(
¢¢0 1

leftPlayer
¢¢1 ;
)
¢¢; <
;
¢¢< =
}
££ 
}
§§ 	
private
¶¶ 
void
¶¶  
NotifyClosingLobby
¶¶ '
(
¶¶' (
Lobby
¶¶( -
lobby
¶¶. 3
)
¶¶3 4
{
ßß 	
foreach
®® 
(
®® 
var
®® 
item
®® 
in
®®  
lobby
®®! &
.
®®& '!
listOfPlayerInLobby
®®' :
)
®®: ;
{
©© 
var
™™ 
channel
™™ 
=
™™ 
item
™™ "
.
™™" #/
!lobbyCommunicationChannelCallback
™™# D
.
™™D E 
GetCallbackChannel
™™E W
<
™™W X#
ILobbyActionsCallback
™™X m
>
™™m n
(
™™n o
)
™™o p
;
™™p q
if
´´ 
(
´´ 
channel
´´ 
!=
´´ 
null
´´ #
)
´´$ %
{
¨¨ 
channel
≠≠ 
.
≠≠ 
DissolvingLobby
≠≠ +
(
≠≠+ ,
)
≠≠, -
;
≠≠- .
}
ÆÆ 
}
ØØ 
}
∞∞ 	
public
≤≤ 
void
≤≤ &
EliminatePlayerFromMatch
≤≤ ,
(
≤≤, -
int
≤≤- 0
roomCode
≤≤1 9
,
≤≤9 :
int
≤≤; >
idUserToEliminate
≤≤? P
)
≤≤P Q
{
≥≥ 	
if
¥¥ 
(
¥¥ 
roomCode
¥¥ 
!=
¥¥ 
NULL_INT_VALUE
¥¥ *
&&
¥¥+ -
idUserToEliminate
¥¥. ?
!=
¥¥@ B
NULL_INT_VALUE
¥¥C Q
)
¥¥Q R
{
µµ 
var
∂∂ 
lobby
∂∂ 
=
∂∂ #
GameLobbiesDictionary
∂∂ 1
.
∂∂1 2$
GetSpecificActiveLobby
∂∂2 H
(
∂∂H I
roomCode
∂∂I Q
)
∂∂Q R
;
∂∂R S
if
∑∑ 
(
∑∑ 
lobby
∑∑ 
!=
∑∑ 
null
∑∑ !
)
∑∑! "
{
∏∏ 
foreach
ππ 
(
ππ 
var
ππ  
item
ππ! %
in
ππ& (
lobby
ππ) .
.
ππ. /!
listOfPlayerInLobby
ππ/ B
)
ππB C
{
∫∫ 
if
ªª 
(
ªª 
item
ªª  
.
ªª  !
idUser
ªª! '
==
ªª( *
idUserToEliminate
ªª+ <
)
ªª< =
{
ºº 
lobby
ΩΩ !
.
ΩΩ! "!
listOfPlayerInLobby
ΩΩ" 5
.
ΩΩ5 6
Remove
ΩΩ6 <
(
ΩΩ< =
item
ΩΩ= A
)
ΩΩA B
;
ΩΩB C 
RearrangePositions
ææ .
(
ææ. /
lobby
ææ/ 4
,
ææ4 5
item
ææ6 :
.
ææ: ;#
numberOfPlayerInLobby
ææ; P
)
ææP Q
;
ææQ R/
!NotifyPlayerJoiningOrLeavingLobby
øø =
(
øø= >
roomCode
øø> F
,
øøF G
idUserToEliminate
øøH Y
,
øøY Z
lobby
øø[ `
)
øø` a
;
øøa b
item
¿¿  
.
¿¿  !/
!lobbyCommunicationChannelCallback
¿¿! B
.
¿¿B C 
GetCallbackChannel
¿¿C U
<
¿¿U V#
ILobbyActionsCallback
¿¿V k
>
¿¿k l
(
¿¿l m
)
¿¿m n
.
¿¿n o)
UpdateJoinedPlayerResponse¿¿o â
(¿¿â ä*
GetAllCurrentPlayerInLobby¿¿ä §
(¿¿§ •
roomCode¿¿• ≠
,¿¿≠ Æ!
idUserToEliminate¿¿Ø ¿
)¿¿¿ ¡
)¿¿¡ ¬
;¿¿¬ √
break
¡¡ !
;
¡¡! "
}
¬¬ 
}
√√ 
}
ƒƒ 
}
≈≈ 
}
∆∆ 	
private
»» 
void
»»  
RearrangePositions
»» '
(
»»' (
Lobby
»»( -
lobby
»». 3
,
»»3 4
int
»»5 8 
eliminatedPosition
»»9 K
)
»»K L
{
…… 	
lobby
   
.
   !
listOfPlayerInLobby
   %
.
ÀÀ 
Where
ÀÀ 
(
ÀÀ 
item
ÀÀ 
=>
ÀÀ 
item
ÀÀ  $
.
ÀÀ$ %#
numberOfPlayerInLobby
ÀÀ% :
>
ÀÀ; < 
eliminatedPosition
ÀÀ= O
)
ÀÀO P
.
ÃÃ 
ToList
ÃÃ 
(
ÃÃ 
)
ÃÃ 
.
ÕÕ 
ForEach
ÕÕ 
(
ÕÕ 
item
ÕÕ 
=>
ÕÕ !
item
ÕÕ" &
.
ÕÕ& '#
numberOfPlayerInLobby
ÕÕ' <
--
ÕÕ< >
)
ÕÕ> ?
;
ÕÕ? @
}
ŒŒ 	
public
‹‹ 
void
‹‹ 
	MakeTeams
‹‹ 
(
‹‹ 
int
‹‹ !
roomCode
‹‹" *
,
‹‹* +
int
‹‹, /
idUser
‹‹0 6
,
‹‹6 7
bool
‹‹8 <
	wannaTeam
‹‹= F
)
‹‹F G
{
›› 	
if
ﬁﬁ 
(
ﬁﬁ 
roomCode
ﬁﬁ 
!=
ﬁﬁ 
NULL_INT_VALUE
ﬁﬁ *
&&
ﬁﬁ+ -
idUser
ﬁﬁ. 4
!=
ﬁﬁ5 7
NULL_INT_VALUE
ﬁﬁ8 F
)
ﬁﬁF G
{
ﬂﬂ 
var
‡‡ 
lobby
‡‡ 
=
‡‡ #
GameLobbiesDictionary
‡‡ 1
.
‡‡1 2$
GetSpecificActiveLobby
‡‡2 H
(
‡‡H I
roomCode
‡‡I Q
)
‡‡Q R
;
‡‡R S
if
·· 
(
·· 
lobby
·· 
!=
·· 
null
·· !
)
··! "
{
‚‚ 
if
„„ 
(
„„ 
lobby
„„ 
.
„„ !
listOfPlayerInLobby
„„ 0
.
„„0 1
Count
„„1 6
==
„„7 9
MAX_PLAYERS
„„: E
&&
„„F H
	wannaTeam
„„I R
)
„„R S
{
‰‰ 
AssignTeamSide
ÂÂ &
(
ÂÂ& '
lobby
ÂÂ' ,
)
ÂÂ, -
;
ÂÂ- .
}
ÊÊ 
else
ÁÁ 
{
ËË  
DissolveTeamsSides
ÈÈ *
(
ÈÈ* +
lobby
ÈÈ+ 0
)
ÈÈ0 1
;
ÈÈ1 2
}
ÍÍ %
NotifyPlayersAboutTeams
ÎÎ +
(
ÎÎ+ ,
lobby
ÎÎ, 1
,
ÎÎ1 2
idUser
ÎÎ3 9
,
ÎÎ9 :
	wannaTeam
ÎÎ; D
)
ÎÎD E
;
ÎÎE F
}
ÏÏ 
}
ÌÌ 
}
ÓÓ 	
private
 
void
 
AssignTeamSide
 #
(
# $
Lobby
$ )
lobby
* /
)
/ 0
{
ÒÒ 	
foreach
ÚÚ 
(
ÚÚ 
var
ÚÚ 
item
ÚÚ 
in
ÚÚ  
lobby
ÚÚ! &
.
ÚÚ& '!
listOfPlayerInLobby
ÚÚ' :
)
ÚÚ: ;
{
ÛÛ 
if
ÙÙ 
(
ÙÙ 
item
ÙÙ 
.
ÙÙ #
numberOfPlayerInLobby
ÙÙ .
<=
ÙÙ/ 1
$num
ÙÙ2 3
)
ÙÙ3 4
{
ıı 
item
ˆˆ 
.
ˆˆ 
sideTeam
ˆˆ !
=
ˆˆ" #
TEAM_LEFT_SIDE
ˆˆ$ 2
;
ˆˆ2 3
break
˜˜ 
;
˜˜ 
}
¯¯ 
else
˘˘ 
{
˙˙ 
item
˚˚ 
.
˚˚ 
sideTeam
˚˚ !
=
˚˚" #
TEAM_RIGTH_SIDE
˚˚$ 3
;
˚˚3 4
break
¸¸ 
;
¸¸ 
}
˝˝ 
}
˛˛ 
}
ˇˇ 	
private
ÅÅ 
void
ÅÅ  
DissolveTeamsSides
ÅÅ '
(
ÅÅ' (
Lobby
ÅÅ( -
lobby
ÅÅ. 3
)
ÅÅ3 4
{
ÇÇ 	
foreach
ÉÉ 
(
ÉÉ 
var
ÉÉ 
item
ÉÉ 
in
ÉÉ  
lobby
ÉÉ! &
.
ÉÉ& '!
listOfPlayerInLobby
ÉÉ' :
)
ÉÉ: ;
{
ÑÑ 
item
ÖÖ 
.
ÖÖ 
sideTeam
ÖÖ 
=
ÖÖ 
TEAM_LEFT_SIDE
ÖÖ  .
;
ÖÖ. /
}
ÜÜ 
}
áá 	
private
ââ 
void
ââ %
NotifyPlayersAboutTeams
ââ ,
(
ââ, -
Lobby
ââ- 2
lobby
ââ3 8
,
ââ8 9
int
ââ: =
idUserNotifying
ââ> M
,
ââM N
bool
ââO S
	wannaTeam
ââT ]
)
ââ] ^
{
ää 	
foreach
ãã 
(
ãã 
var
ãã 
item
ãã 
in
ãã  
lobby
ãã! &
.
ãã& '!
listOfPlayerInLobby
ãã' :
)
ãã: ;
{
åå 
if
çç 
(
çç 
item
çç 
.
çç 
idUser
çç 
!=
çç  "
idUserNotifying
çç# 2
)
çç2 3
{
éé 
item
èè 
.
èè /
!lobbyCommunicationChannelCallback
èè :
.
èè: ; 
GetCallbackChannel
èè; M
<
èèM N#
ILobbyActionsCallback
èèN c
>
èèc d
(
èèd e
)
èèe f
.
èèf g
MakeTeamsResponse
èèg x
(
èèx y
	wannaTeamèèy Ç
)èèÇ É
;èèÉ Ñ
}
êê 
}
ëë 
}
íí 	
}
îî 
}ïï ¯ñ
¢C:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameServer\JeopardyGame.Service\ServiceImplementation\NotifyFriendlyActionsImplementation.cs
	namespace 	
JeopardyGame
 
. 
Service 
. !
ServiceImplementation 4
{ 
partial 
class /
#NotifyFriendlyActionsImplementation 5
:6 7+
INotifyUserActionFriendsManager8 W
{ 
private 
readonly 
int 
NULL_INT_VALUE +
=, -
$num. /
;/ 0
private 
readonly 
int !
CHANNEL_ALREADY_EXIST 2
=3 4
-5 6
$num6 7
;7 8
private 
readonly 
int 
CHANNEL_SAVED *
=+ ,
$num- .
;. /
private 
readonly 
int "
DECLINE_FRIEND_REQUEST 3
=4 5
$num6 7
;7 8
private 
readonly 
int 
SEND_FRIEND_REQUEST 0
=1 2
$num3 4
;4 5
private 
readonly 
int !
ACCEPT_FRIEND_REQUEST 2
=3 4
$num5 6
;6 7
public 
GenericClass 
< 
int 
>  %
RegisterFriendManagerUser! :
(: ;
int; >
idUserFriendManager? R
)R S
{ 	
GenericClass 
< 
int 
> 
resultToReturn ,
=- .
new/ 2
GenericClass3 ?
<? @
int@ C
>C D
(D E
)E F
;F G
if 
( 
idUserFriendManager #
==$ &
NULL_INT_VALUE' 5
)5 6
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
var 
channelSaved 
= #
FriendManagerDictionary 6
.6 7 
GetChannelFriendUser7 K
(K L
idUserFriendManagerL _
)_ `
;` a
if 
( 
channelSaved 
== 
null  $
)$ %
{ 
var   
newCallBackChannel   &
=  ' (
OperationContext  ) 9
.  9 :
Current  : A
;  A B#
FriendManagerDictionary!! '
.!!' (-
!RegisterNewFriendUserInDictionary!!( I
(!!I J
idUserFriendManager!!J ]
,!!] ^
newCallBackChannel!!_ q
)!!q r
;!!r s
resultToReturn"" 
."" 
ObjectSaved"" *
=""+ ,
CHANNEL_SAVED""- :
;"": ;
resultToReturn## 
.## 
	CodeEvent## (
=##) *
ExceptionDictionary##+ >
.##> ?
SUCCESFULL_EVENT##? O
;##O P
}$$ 
else%% 
{&& 
resultToReturn'' 
.'' 
ObjectSaved'' *
=''+ ,!
CHANNEL_ALREADY_EXIST''- B
;''B C
resultToReturn(( 
.(( 
	CodeEvent(( (
=(() *
ExceptionDictionary((+ >
.((> ?
UNSUCCESFULL_EVENT((? Q
;((Q R
})) 
return** 
resultToReturn** !
;**! "
}++ 	
public-- 
void-- '
UnregisterFriendManagerUser-- /
(--/ 0
int--0 3
idUserFriendManager--4 G
)--G H
{.. 	
if// 
(// 
idUserFriendManager// #
!=//$ &
NULL_INT_VALUE//' 5
)//5 6
{00 
var11 
channelSaved11  
=11! "#
FriendManagerDictionary11# :
.11: ; 
GetChannelFriendUser11; O
(11O P
idUserFriendManager11P c
)11c d
;11d e
if22 
(22 
channelSaved22  
!=22! #
null22$ (
)22( )
{33 #
FriendManagerDictionary44 +
.44+ ,0
$RemoveRegistryOfFriendFromDictionary44, P
(44P Q
idUserFriendManager44Q d
)44d e
;44e f
}55 
}66 
}77 	
}88 
partial:: 
class:: /
#NotifyFriendlyActionsImplementation:: 5
:::6 7+
INotifyUserActionFriendsManager::8 W
{;; 
public<< 
void<< 
ReportPlayer<<  
(<<  !
int<<! $
idUser<<% +
,<<+ ,
string<<- 3
userName<<4 <
)<<< =
{== 	,
 ConsultInformationImplementation>> ,
consultInformation>>- ?
=>>@ A
new>>B E,
 ConsultInformationImplementation>>F f
(>>f g
)>>g h
;>>h i
var?? 
playerConsulted?? 
=??  !
consultInformation??" 4
.??4 5
ConsultPlayerById??5 F
(??F G
idUser??G M
)??M N
;??N O
if@@ 
(@@ 
playerConsulted@@ 
.@@  
	CodeEvent@@  )
==@@* ,
ExceptionDictionary@@- @
.@@@ A
SUCCESFULL_EVENT@@A Q
&&@@R T
playerConsulted@@U d
.@@d e
ObjectSaved@@e p
.@@p q
	NoReports@@q z
<@@{ |
$num@@} ~
)@@~ 
{AA 
playerConsultedBB 
.BB  
ObjectSavedBB  +
.BB+ ,
	NoReportsBB, 5
++BB5 7
;BB7 8
varCC 
resultCC 
=CC $
UserManagerDataOperationCC 5
.CC5 6
UpdatePlayerCC6 B
(CCB C
playerConsultedCCC R
.CCR S
ObjectSavedCCS ^
.CC^ _
IdPlayerCC_ g
)CCg h
;CCh i
varDD 
channelSavedDD  
=DD! "#
FriendManagerDictionaryDD# :
.DD: ; 
GetChannelFriendUserDD; O
(DDO P
idUserDDP V
)DDV W
;DDW X
ifEE 
(EE 
resultEE 
.EE 
	CodeEventEE $
==EE% '
ExceptionDictionaryEE( ;
.EE; <
SUCCESFULL_EVENTEE< L
&&EEM O
channelSavedEEQ ]
!=EE^ `
nullEEa e
)EEe f
{FF 
channelSavedGG  
.GG  !
GetCallbackChannelGG! 3
<GG3 43
'INotifyUserActionFriendsManagerCallBackGG4 [
>GG[ \
(GG\ ]
)GG] ^
.GG^ _
ResponseReportedGG_ o
(GGo p
playerConsultedGGp 
.	GG Ä
ObjectSaved
GGÄ ã
.
GGã å
	NoReports
GGå ï
)
GGï ñ
;
GGñ ó
}HH 
}II 
elseJJ 
{KK 
}MM 
}NN 	
}OO 
partialQQ 
classQQ /
#NotifyFriendlyActionsImplementationQQ 5
:QQ6 7+
INotifyUserActionFriendsManagerQQ8 W
{RR 
publicSS 
voidSS $
EliminateUserFromFriendsSS ,
(SS, -
intSS- 0
idPlayerDeletingSS1 A
,SSA B
intSSC F
idUserToEliminateSSG X
)SSX Y
{TT 	,
 ConsultInformationImplementationUU ,
consultInformationUU- ?
=UU@ A
newUUB E,
 ConsultInformationImplementationUUF f
(UUf g
)UUg h
;UUh i
varVV 
playerToEliminatedVV "
=VV# $
consultInformationVV% 7
.VV7 8!
ConsultPlayerByIdUserVV8 M
(VVM N
idUserToEliminateVVN _
)VV_ `
;VV` a
ifWW 
(WW 
playerToEliminatedWW !
.WW! "
	CodeEventWW" +
==WW, .
ExceptionDictionaryWW/ B
.WWB C
SUCCESFULL_EVENTWWC S
)WWS T
{XX 
varYY 
affectedRowsYY  
=YY! "'
FriendsManagerDataOperationYY# >
.YY> ?!
DeleteFriendsRegisterYY? T
(YYT U
idPlayerDeletingYYU e
,YYe f
playerToEliminatedYYg y
.YYy z
ObjectSaved	YYz Ö
.
YYÖ Ü
IdPlayer
YYÜ é
)
YYé è
;
YYè ê
ifZZ 
(ZZ 
affectedRowsZZ  
.ZZ  !
	CodeEventZZ! *
==ZZ+ -
ExceptionDictionaryZZ. A
.ZZA B
SUCCESFULL_EVENTZZB R
)ZZR S
{[[ 
var\\ 
channelSaved\\ $
=\\% &#
FriendManagerDictionary\\' >
.\\> ? 
GetChannelFriendUser\\? S
(\\S T
idUserToEliminate\\T e
)\\e f
;\\f g
if]] 
(]] 
channelSaved]] $
!=]]% '
null]]( ,
)]], -
{^^ 
var__ 
userDeleting__ (
=__) *
consultInformation__+ =
.__= >!
ConsultUserByIdPlayer__> S
(__S T
idPlayerDeleting__T d
)__d e
;__e f
if`` 
(`` 
userDeleting`` (
.``( )
	CodeEvent``) 2
==``3 5
ExceptionDictionary``6 I
.``I J
SUCCESFULL_EVENT``J Z
)``Z [
{aa 
channelSavedbb (
.bb( )
GetCallbackChannelbb) ;
<bb; <3
'INotifyUserActionFriendsManagerCallBackbb< c
>bbc d
(bbd e
)bbe f
.bbf g+
ResponseEliminationFromFriends	bbg Ö
(
bbÖ Ü
userDeleting
bbÜ í
.
bbí ì
ObjectSaved
bbì û
.
bbû ü
IdUser
bbü •
)
bb• ¶
;
bb¶ ß
}cc 
}dd 
}ee 
}ff 
}gg 	
}ii 
partialkk 
classkk /
#NotifyFriendlyActionsImplementationkk 5
:kk6 7+
INotifyUserActionFriendsManagerkk8 W
{ll 
publicmm 
voidmm  
DeclineFriendRequestmm (
(mm( )
intmm) ,
idPlayerDecliningmm- >
,mm> ?
intmm@ C
idUserRequestingmmD T
)mmT U
{nn 	,
 ConsultInformationImplementationoo ,
consultInformationoo- ?
=oo@ A
newooB E,
 ConsultInformationImplementationooF f
(oof g
)oog h
;ooh i
varpp 
userConsultedpp 
=pp 
consultInformationpp  2
.pp2 3!
ConsultUserByIdPlayerpp3 H
(ppH I
idPlayerDecliningppI Z
)ppZ [
;pp[ \
ifqq 
(qq 
userConsultedqq 
.qq 
	CodeEventqq '
==qq( *
ExceptionDictionaryqq+ >
.qq> ?
SUCCESFULL_EVENTqq? O
)qqO P
{rr 
varss 
playerDeclinedss "
=ss# $
consultInformationss% 7
.ss7 8!
ConsultPlayerByIdUserss8 M
(ssM N
idUserRequestingssN ^
)ss^ _
;ss_ `
iftt 
(tt 
playerDeclinedtt "
.tt" #
	CodeEventtt# ,
==tt- /
ExceptionDictionarytt0 C
.ttC D
SUCCESFULL_EVENTttD T
)ttT U
{uu 
varvv 
affectedRowsvv $
=vv% &'
FriendsManagerDataOperationvv' B
.vvB C!
DeleteFriendsRegistervvC X
(vvX Y
idPlayerDecliningvvY j
,vvj k
playerDeclinedvvl z
.vvz {
ObjectSaved	vv{ Ü
.
vvÜ á
IdPlayer
vvá è
)
vvè ê
;
vvê ë
ifww 
(ww 
affectedRowsww $
.ww$ %
	CodeEventww% .
==ww/ 1
ExceptionDictionaryww2 E
.wwE F
SUCCESFULL_EVENTwwF V
)wwV W
{xx 
varyy 
channelSavedyy (
=yy) *#
FriendManagerDictionaryyy+ B
.yyB C 
GetChannelFriendUseryyC W
(yyW X
idUserRequestingyyX h
)yyh i
;yyi j
ifzz 
(zz 
channelSavedzz (
!=zz) +
nullzz, 0
)zz0 1
{{{ 
channelSaved|| (
.||( )
GetCallbackChannel||) ;
<||; <3
'INotifyUserActionFriendsManagerCallBack||< c
>||c d
(||d e
)||e f
.||f g!
ResponseRequestAction||g |
(||| }
userConsulted	||} ä
.
||ä ã
ObjectSaved
||ã ñ
.
||ñ ó
IdUser
||ó ù
,
||ù û$
DECLINE_FRIEND_REQUEST
||ü µ
,
||µ ∂
userConsulted
||∑ ƒ
.
||ƒ ≈
ObjectSaved
||≈ –
.
||– —
UserName
||— Ÿ
)
||Ÿ ⁄
;
||⁄ €
}}} 
}~~ 
} 
}
ÄÄ 
}
ÇÇ 	
public
ÑÑ 
void
ÑÑ 
SendFriendRequest
ÑÑ %
(
ÑÑ% &
int
ÑÑ& ) 
idPLayerRequesting
ÑÑ* <
,
ÑÑ< =
int
ÑÑ> A
idUserRequested
ÑÑB Q
)
ÑÑQ R
{
ÖÖ 	.
 ConsultInformationImplementation
ÜÜ , 
consultInformation
ÜÜ- ?
=
ÜÜ@ A
new
ÜÜB E.
 ConsultInformationImplementation
ÜÜF f
(
ÜÜf g
)
ÜÜg h
;
ÜÜh i
var
áá 
userConsulted
áá 
=
áá  
consultInformation
áá  2
.
áá2 3#
ConsultUserByIdPlayer
áá3 H
(
ááH I 
idPLayerRequesting
ááI [
)
áá[ \
;
áá\ ]
if
àà 
(
àà 
userConsulted
àà 
.
àà 
	CodeEvent
àà '
==
àà( *!
ExceptionDictionary
àà+ >
.
àà> ?
SUCCESFULL_EVENT
àà? O
)
ààO P
{
ââ 
var
ää 
playerConsulted
ää #
=
ää$ % 
consultInformation
ää& 8
.
ää8 9#
ConsultPlayerByIdUser
ää9 N
(
ääN O
idUserRequested
ääO ^
)
ää^ _
;
ää_ `
if
ãã 
(
ãã 
playerConsulted
ãã #
.
ãã# $
	CodeEvent
ãã$ -
==
ãã. 0!
ExceptionDictionary
ãã1 D
.
ããD E
SUCCESFULL_EVENT
ããE U
)
ããU V
{
åå 
var
çç 
affectedRows
çç $
=
çç% &)
FriendsManagerDataOperation
çç' B
.
ççB C
SendFriendRequest
ççC T
(
ççT U 
idPLayerRequesting
ççU g
,
ççg h
playerConsulted
ççi x
.
ççx y
ObjectSavedççy Ñ
.ççÑ Ö
IdPlayerççÖ ç
)ççç é
;ççé è
if
éé 
(
éé 
affectedRows
éé $
.
éé$ %
	CodeEvent
éé% .
==
éé/ 1!
ExceptionDictionary
éé2 E
.
ééE F
SUCCESFULL_EVENT
ééF V
)
ééV W
{
èè 
var
êê 
channelSaved
êê (
=
êê) *%
FriendManagerDictionary
êê+ B
.
êêB C"
GetChannelFriendUser
êêC W
(
êêW X
idUserRequested
êêX g
)
êêg h
;
êêh i
if
ëë 
(
ëë 
channelSaved
ëë (
!=
ëë) +
null
ëë, 0
)
ëë0 1
{
íí 
channelSaved
ìì (
.
ìì( ) 
GetCallbackChannel
ìì) ;
<
ìì; <5
'INotifyUserActionFriendsManagerCallBack
ìì< c
>
ììc d
(
ììd e
)
ììe f
.
ììf g#
ResponseRequestAction
ììg |
(
ìì| }
userConsultedìì} ä
.ììä ã
ObjectSavedììã ñ
.ììñ ó
IdUserììó ù
,ììù û#
SEND_FRIEND_REQUESTììü ≤
,ìì≤ ≥
userConsultedìì¥ ¡
.ìì¡ ¬
ObjectSavedìì¬ Õ
.ììÕ Œ
UserNameììŒ ÷
)ìì÷ ◊
;ìì◊ ÿ
}
îî 
}
ïï 
}
ññ 
}
óó 
}
ôô 	
public
õõ 
void
õõ !
AcceptFriendRequest
õõ '
(
õõ' (
int
õõ( +
idPlayerAccepting
õõ, =
,
õõ= >
int
õõ? B
idUserRequesting
õõC S
)
õõS T
{
úú 	.
 ConsultInformationImplementation
ùù , 
consultInformation
ùù- ?
=
ùù@ A
new
ùùB E.
 ConsultInformationImplementation
ùùF f
(
ùùf g
)
ùùg h
;
ùùh i
var
ûû 
userConsulted
ûû 
=
ûû  
consultInformation
ûû  2
.
ûû2 3#
ConsultUserByIdPlayer
ûû3 H
(
ûûH I
idPlayerAccepting
ûûI Z
)
ûûZ [
;
ûû[ \
if
üü 
(
üü 
userConsulted
üü 
.
üü 
	CodeEvent
üü '
==
üü( *!
ExceptionDictionary
üü+ >
.
üü> ?
SUCCESFULL_EVENT
üü? O
)
üüO P
{
†† 
var
°° 
playerConsulted
°° #
=
°°$ % 
consultInformation
°°& 8
.
°°8 9#
ConsultPlayerByIdUser
°°9 N
(
°°N O
idUserRequesting
°°O _
)
°°_ `
;
°°` a
if
¢¢ 
(
¢¢ 
playerConsulted
¢¢ #
.
¢¢# $
	CodeEvent
¢¢$ -
==
¢¢. 0!
ExceptionDictionary
¢¢1 D
.
¢¢D E
SUCCESFULL_EVENT
¢¢E U
)
¢¢U V
{
££ 
var
§§ 
affectedRows
§§ $
=
§§% &)
FriendsManagerDataOperation
§§' B
.
§§B C!
AcceptFriendRequest
§§C V
(
§§V W
idPlayerAccepting
§§W h
,
§§h i
playerConsulted
§§j y
.
§§y z
ObjectSaved§§z Ö
.§§Ö Ü
IdPlayer§§Ü é
)§§é è
;§§è ê
if
•• 
(
•• 
affectedRows
•• $
.
••$ %
	CodeEvent
••% .
==
••/ 1!
ExceptionDictionary
••2 E
.
••E F
SUCCESFULL_EVENT
••F V
)
••V W
{
¶¶ 
var
ßß 
channelSaved
ßß (
=
ßß) *%
FriendManagerDictionary
ßß+ B
.
ßßB C"
GetChannelFriendUser
ßßC W
(
ßßW X
idUserRequesting
ßßX h
)
ßßh i
;
ßßi j
if
®® 
(
®® 
channelSaved
®® (
!=
®®) +
null
®®, 0
)
®®0 1
{
©© 
channelSaved
™™ (
.
™™( ) 
GetCallbackChannel
™™) ;
<
™™; <5
'INotifyUserActionFriendsManagerCallBack
™™< c
>
™™c d
(
™™d e
)
™™e f
.
™™f g#
ResponseRequestAction
™™g |
(
™™| }
userConsulted™™} ä
.™™ä ã
ObjectSaved™™ã ñ
.™™ñ ó
IdUser™™ó ù
,™™ù û%
ACCEPT_FRIEND_REQUEST™™ü ¥
,™™¥ µ
userConsulted™™∂ √
.™™√ ƒ
ObjectSaved™™ƒ œ
.™™œ –
UserName™™– ÿ
)™™ÿ Ÿ
;™™Ÿ ⁄
}
´´ 
}
¨¨ 
}
≠≠ 
}
ÆÆ 
}
ØØ 	
}
±± 
}≤≤ ˚/
§C:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameServer\JeopardyGame.Service\ServiceImplementation\NotifyUserAvailabilityImplementation .cs
	namespace 	
JeopardyGame
 
. 
Service 
. !
ServiceImplementation 4
{ 
partial 
class 0
$NotifyUserAvailabilityImplementation 6
:7 8#
INotifyUserAvailability9 P
{ 
private 
readonly 
int 
NULL_INT_VALUE +
=, -
$num. /
;/ 0
private 
readonly 
int 
UNAVAILABLE_STATUS /
=0 1
$num2 3
;3 4
private 
readonly 
int 
AVAILABLE_STATUS -
=. /
$num0 1
;1 2
private 
readonly 
int 
PLAYING_STATUS +
=, -
$num. /
;/ 0
public 
void 
PlayerIsAvailable %
(% &
int& )
idNewActiveUser* 9
,9 :
int; >
idNewActivePlayer? P
)P Q
{ 	
if 
( 
idNewActiveUser 
!=  "
NULL_INT_VALUE# 1
&&2 4
idNewActivePlayer5 F
!=G I
NULL_INT_VALUEJ X
)X Y
{ 
var 
savedChannel  
=! "!
ActiveUsersDictionary# 8
.8 9(
GetChannelCallBackActiveUser9 U
(U V
idNewActiveUserV e
)e f
;f g
if 
( 
savedChannel  
==! #
null$ (
)( )
{ 
var 

newChannel "
=# $
OperationContext% 5
.5 6
Current6 =
;= >!
ActiveUsersDictionary )
.) *-
!RegisterNewActiveUserInDictionary* K
(K L
idNewActiveUserL [
,[ \

newChannel] g
)g h
;h i
NotifyFriends !
(! "
idNewActiveUser" 1
,1 2
AVAILABLE_STATUS3 C
)C D
;D E
} 
else   
{!! 
}## 
}$$ 
}%% 	
public'' 
void''  
PlayerIsNotAvailable'' (
(''( )
int'') ,
idUserDisconnecting''- @
,''@ A
int''B E!
idPlayerDisconnecting''F [
)''[ \
{(( 	
if)) 
()) 
idUserDisconnecting)) #
!=))$ &
NULL_INT_VALUE))' 5
&&))6 8!
idPlayerDisconnecting))9 N
!=))O Q
NULL_INT_VALUE))R `
)))` a
{** 
var++ 
channel++ 
=++ !
ActiveUsersDictionary++ 3
.++3 4(
GetChannelCallBackActiveUser++4 P
(++P Q
idUserDisconnecting++Q d
)++d e
;++e f
if,, 
(,, 
channel,, 
!=,, 
null,, #
),,# $
{-- !
ActiveUsersDictionary.. )
...) *4
(RemoveRegistryOfActiveUserFromDictionary..* R
(..R S
idUserDisconnecting..S f
)..f g
;..g h
NotifyFriends// !
(//! "
idUserDisconnecting//" 5
,//5 6
UNAVAILABLE_STATUS//7 I
)//I J
;//J K
}00 
else11 
{22 
}44 
}55 
}66 	
private;; 
void;; 
NotifyFriends;; "
(;;" #
int;;# &
idUser;;' -
,;;- .
int;;/ 2
status;;3 9
);;9 :
{<< 	,
 ConsultInformationImplementation== ,
consultInformation==- ?
===@ A
new==B E,
 ConsultInformationImplementation==F f
(==f g
)==g h
;==h i(
FriendsManagerImplementation>> ((
friendsManagerImplementation>>) E
=>>F G
new>>H K(
FriendsManagerImplementation>>L h
(>>h i
)>>i j
;>>j k
var?? 
userConsulted?? 
=?? 
consultInformation??  2
.??2 3
ConsultUserById??3 B
(??B C
idUser??C I
)??I J
;??J K
if@@ 
(@@ 
userConsulted@@ 
.@@ 
	CodeEvent@@ &
==@@' )
ExceptionDictionary@@* =
.@@= >
SUCCESFULL_EVENT@@> N
)@@N O
{AA 
varBB 
friendsNewUserBB "
=BB# $(
friendsManagerImplementationBB% A
.BBA B
GetUserFriendsBBB P
(BBP Q
userConsultedBBQ ^
.BB^ _
ObjectSavedBB_ j
)BBj k
;BBk l
ifCC 
(CC 
friendsNewUserCC "
.CC" #
	CodeEventCC# ,
==CC- /
ExceptionDictionaryCC0 C
.CCC D
SUCCESFULL_EVENTCCD T
)CCT U
{DD 
foreachEE 
(EE 
varEE  
friendEE! '
inEE( *
friendsNewUserEE+ 9
.EE9 :
ObjectSavedEE: E
)EEE F
{FF 
varGG 
channelSavedGG (
=GG) *!
ActiveUsersDictionaryGG+ @
.GG@ A(
GetChannelCallBackActiveUserGGA ]
(GG] ^
friendGG^ d
.GGd e
IdUserGGe k
)GGk l
;GGl m
ifHH 
(HH 
channelSavedHH (
!=HH) +
nullHH, 0
)HH0 1
{II 
channelSavedJJ (
.JJ( )
GetCallbackChannelJJ) ;
<JJ; <+
INotifyUserAvailabilityCallBackJJ< [
>JJ[ \
(JJ\ ]
)JJ] ^
.JJ^ _(
ResponseOfPlayerAvailabilityJJ_ {
(JJ{ |
status	JJ| Ç
,
JJÇ É
idUser
JJÑ ä
)
JJä ã
;
JJã å
}KK 
}LL 
}MM 
}NN 
}OO 	
}RR 
}TT Ê4
ùC:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameServer\JeopardyGame.Service\ServiceImplementation\QuestionsManagerImplementation.cs
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
class *
QuestionsManagerImplementation 7
:8 9
IQuestionsManager: K
{ 
public 
readonly 
HashSet 
<  
int  #
># $
usedQuestionIds% 4
=5 6
new7 :
HashSet; B
<B C
intC F
>F G
(G H
)H I
;I J
public 
GenericClass 
< 
bool  
>  !
CheckAnswer" -
(- .
int. 1

questionId2 <
,< =
string> D
selectedAnswerE S
)S T
{ 	
GenericClass 
< 
bool 
> 
resultToReturn -
=. /
new0 3
GenericClass4 @
<@ A
boolA E
>E F
(F G
)G H
;H I
if 
( 
string 
. 
IsNullOrEmpty $
($ %
selectedAnswer% 3
)3 4
)4 5
{ 
return !
NullParametersHandler ,
., -'
HandleNullParametersService- H
(H I
resultToReturnI W
)W X
;X Y
} 
using 
( 
var 
	contextBD  
=! "
new# &
JeopardyDBContainer' :
(: ;
); <
)< =
{ 
var 
question 
= 
	contextBD (
.( )
	Questions) 2
.2 3
Find3 7
(7 8

questionId8 B
)B C
;C D
if 
( 
question 
!= 
null  $
&&% '
selectedAnswer( 6
==7 9
question: B
.B C
RigthAwnserC N
)N O
{ 
resultToReturn   "
.  " #
ObjectSaved  # .
=  / 0
true  1 5
;  5 6
resultToReturn!! "
.!!" #
	CodeEvent!!# ,
=!!- .
ExceptionDictionary!!/ B
.!!B C
SUCCESFULL_EVENT!!C S
;!!S T
return"" 
resultToReturn"" )
;"") *
}## 
}$$ 
resultToReturn&& 
.&& 
ObjectSaved&& &
=&&' (
false&&) .
;&&. /
resultToReturn'' 
.'' 
	CodeEvent'' $
=''% &
ExceptionDictionary''' :
.'': ;
UNSUCCESFULL_EVENT''; M
;''M N
return(( 
resultToReturn(( !
;((! "
}** 	
public++ 
IDictionary++ 
<++ 
string++ !
,++! "
object++# )
>++) *
GetQuestionByValue+++ =
(++= >
int++> A
value++B G
,++G H
int++I L

categoryId++M W
)++W X
{,, 	
IDictionary-- 
<-- 
string-- 
,-- 
object--  &
>--& '
dict--( ,
=--- .
new--/ 2

Dictionary--3 =
<--= >
string--> D
,--D E
object--F L
>--L M
(--M N
)--N O
;--O P
try.. 
{// 
using00 
(00 
var00 
	contextBD00 $
=00% &
new00' *
JeopardyDBContainer00+ >
(00> ?
)00? @
)00@ A
{11 
var22 
random22 
=22  
new22! $
Random22% +
(22+ ,
)22, -
;22- .
var33 
availableQuestions33 *
=33+ ,
	contextBD33- 6
.336 7
	Questions337 @
.44 
Where44 
(44 
q44  
=>44! #
q44$ %
.44% &

ValueWorth44& 0
==441 3
value444 9
&&44: <
q55 
.55 
Awnsers55 "
.55" #
Any55# &
(55& '
a55' (
=>55) +
a55, -
.55- .
Category55. 6
.556 7

IdCategory557 A
==55B D

categoryId55E O
)55O P
)55P Q
.66 
ToList66 #
(66# $
)66$ %
;66% &
if:: 
(:: 
availableQuestions:: *
.::* +
Any::+ .
(::. /
)::/ 0
)::0 1
{;; 
var<< 
randomIndex<< '
=<<( )
random<<* 0
.<<0 1
Next<<1 5
(<<5 6
$num<<6 7
,<<7 8
availableQuestions<<9 K
.<<K L
Count<<L Q
)<<Q R
;<<R S
var== 
selectedQuestion== ,
===- .
availableQuestions==/ A
[==A B
randomIndex==B M
]==M N
;==N O
usedQuestionIds?? '
.??' (
Add??( +
(??+ ,
selectedQuestion??, <
.??< =

IdQuestion??= G
)??G H
;??H I
IDictionaryAA #
<AA# $
stringAA$ *
,AA* +
objectAA, 2
>AA2 3
questionDataAA4 @
=AAA B
newAAC F

DictionaryAAG Q
<AAQ R
stringAAR X
,AAX Y
objectAAZ `
>AA` a
{BB 
{CC 
$strCC 
,CC 
selectedQuestionCC  0
.CC0 1

IdQuestionCC1 ;
}CC< =
,CC= >
{DD 
$strDD '
,DD' (
selectedQuestionDD) 9
.DD9 :&
EnglishQuestionDescriptionDD: T
}DDU V
,DDV W
{EE 
$strEE )
,EE) *
selectedQuestionEE+ ;
.EE; <
RigthAwnserEE< G
}EEH I
}FF 
;FF 
dictHH 
=HH 
questionDataHH +
;HH+ ,
}II 
}JJ 
}LL 
catchMM 
(MM 
	ExceptionMM 
exMM 
)MM  
{NN 
ConsoleOO 
.OO 
	WriteLineOO !
(OO! "
$strOO" A
+OOB C
exOOD F
.OOF G
MessageOOG N
)OON O
;OOO P
}PP 
returnQQ 
dictQQ 
;QQ 
}SS 	
}TT 
}UU ‚ø
ñC:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameServer\JeopardyGame.Service\ServiceImplementation\ServicesReferenceAuthor.cs
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
class #
ServicesReferenceAuthor 1
:1 2
IUserManager3 ?
{ %
UserManagerImplementation !
UserManager" -
=. /
new0 3%
UserManagerImplementation4 M
(M N
)N O
;O P
public 
GenericClass 
< 
int 
>  
EmailAlreadyExist! 2
(2 3
string3 9
email: ?
)? @
{ 	
return 
( 
( 
IUserManager !
)! "
UserManager" -
)- .
.. /
EmailAlreadyExist/ @
(@ A
emailA F
)F G
;G H
} 	
public 
GenericClass 
< 
int 
>  
SaveUser! )
() *
UserPOJO* 2
userPojoNew3 >
)> ?
{ 	
return 
( 
( 
IUserManager !
)! "
UserManager" -
)- .
.. /
SaveUser/ 7
(7 8
userPojoNew8 C
)C D
;D E
} 	
public 
GenericClass 
< 
int 
>  %
SentEmailCodeConfirmation! :
(: ;
string; A
emailB G
,G H
stringI O
subjectP W
,W X
stringY _
code` d
)d e
{ 	
return 
( 
( 
IUserManager !
)! "
UserManager" -
)- .
.. /%
SentEmailCodeConfirmation/ H
(H I
emailI N
,N O
subjectP W
,W X
codeY ]
)] ^
;^ _
} 	
public   
GenericClass   
<   
int   
>    !
UpdateUserInformation  ! 6
(  6 7
string  7 =

editedName  > H
,  H I
string  J P
originalName  Q ]
)  ] ^
{!! 	
return"" 
("" 
("" 
IUserManager"" !
)""! "
UserManager""" -
)""- .
."". /!
UpdateUserInformation""/ D
(""D E

editedName""E O
,""O P
originalName""Q ]
)""] ^
;""^ _
}## 	
public%% 
GenericClass%% 
<%% 
int%% 
>%%   
UserNameAlreadyExist%%! 5
(%%5 6
string%%6 <
userName%%= E
)%%E F
{&& 	
return'' 
('' 
('' 
IUserManager'' !
)''! "
UserManager''" -
)''- .
.''. / 
UserNameAlreadyExist''/ C
(''C D
userName''D L
)''L M
;''M N
}(( 	
public** 
GenericClass** 
<** 
int** 
>**  
ValidateCredentials**! 4
(**4 5
UserValidate**5 A
newUserValidate**B Q
)**Q R
{++ 	
return,, 
(,, 
(,, 
IUserManager,, !
),,! "
UserManager,," -
),,- .
.,,. /
ValidateCredentials,,/ B
(,,B C
newUserValidate,,C R
),,R S
;,,S T
}-- 	
}.. 
public// 

partial// 
class// #
ServicesReferenceAuthor// 0
://0 1
IQuestionsManager//2 C
{00 *
QuestionsManagerImplementation11 &
questionsManager11' 7
=118 9
new11: =*
QuestionsManagerImplementation11> \
(11\ ]
)11] ^
;11^ _
public22 
GenericClass22 
<22 
bool22  
>22  !
CheckAnswer22" -
(22- .
int22. 1

questionId222 <
,22< =
string22> D
selectedAnswer22E S
)22S T
{33 	
return44 
(44 
(44 
IQuestionsManager44 &
)44& '
questionsManager44' 7
)447 8
.448 9
CheckAnswer449 D
(44D E

questionId44E O
,44O P
selectedAnswer44Q _
)44_ `
;44` a
}55 	
public66 
IDictionary66 
<66 
string66 !
,66! "
object66# )
>66) *
GetQuestionByValue66+ =
(66= >
int66> A
value66B G
,66G H
int66I L

categoryId66M W
)66W X
{77 	
return88 
(88 
(88 
IQuestionsManager88 &
)88& '
questionsManager88' 7
)887 8
.888 9
GetQuestionByValue889 K
(88K L
value88L Q
,88Q R

categoryId88S ]
)88] ^
;88^ _
}99 	
}:: 
public<< 

partial<< 
class<< #
ServicesReferenceAuthor<< 0
:<<0 1
IFriendsManager<<2 A
{== (
FriendsManagerImplementation>> $(
friendsManagerImplementation>>% A
=>>B C
new>>D G(
FriendsManagerImplementation>>H d
(>>d e
)>>e f
;>>f g
public@@ 
GenericClass@@ 
<@@ 
List@@  
<@@  !"
FriendBasicInformation@@! 7
>@@7 8
>@@8 9!
GetUserFriendRequests@@: O
(@@O P
UserPOJO@@P X
user@@Y ]
)@@] ^
{AA 	
returnBB 
(BB 
(BB 
IFriendsManagerBB $
)BB$ %(
friendsManagerImplementationBB% A
)BBA B
.BBB C!
GetUserFriendRequestsBBC X
(BBX Y
userBBY ]
)BB] ^
;BB^ _
}CC 	
publicEE 
GenericClassEE 
<EE 
ListEE  
<EE  !"
FriendBasicInformationEE! 7
>EE7 8
>EE8 9
GetUserFriendsEE: H
(EEH I
UserPOJOEEI Q
userEER V
)EEV W
{FF 	
returnGG 
(GG 
(GG 
IFriendsManagerGG $
)GG$ %(
friendsManagerImplementationGG% A
)GGA B
.GGB C
GetUserFriendsGGC Q
(GGQ R
userGGR V
)GGV W
;GGW X
}HH 	
publicJJ 
GenericClassJJ 
<JJ 
ListJJ  
<JJ  !"
FriendBasicInformationJJ! 7
>JJ7 8
>JJ8 9
GetUsersNotFriendsJJ: L
(JJL M
UserPOJOJJM U
userJJV Z
)JJZ [
{KK 	
returnLL 
(LL 
(LL 
IFriendsManagerLL $
)LL$ %(
friendsManagerImplementationLL% A
)LLA B
.LLB C
GetUsersNotFriendsLLC U
(LLU V
userLLV Z
)LLZ [
;LL[ \
}MM 	
}NN 
publicPP 

partialPP 
classPP #
ServicesReferenceAuthorPP 0
:PP0 1
IConsultInformationPP2 E
{QQ ,
 ConsultInformationImplementationRR (%
consultInfoImplementationRR) B
=RRC D
newRRE H,
 ConsultInformationImplementationRRI i
(RRi j
)RRj k
;RRk l
publicTT 
GenericClassTT 
<TT 

PlayerPOJOTT &
>TT& '
ConsultPlayerByIdTT( 9
(TT9 :
intTT: =
idPlayerTT> F
)TTF G
{UU 	
returnVV 
(VV 
(VV 
IConsultInformationVV (
)VV( )%
consultInfoImplementationVV) B
)VVB C
.VVC D
ConsultPlayerByIdVVD U
(VVU V
idPlayerVVV ^
)VV^ _
;VV_ `
}WW 	
publicYY 
GenericClassYY 
<YY 

PlayerPOJOYY &
>YY& '!
ConsultPlayerByIdUserYY( =
(YY= >
intYY> A
idUserYYB H
)YYH I
{ZZ 	
return[[ 
([[ 
([[ 
IConsultInformation[[ (
)[[( )%
consultInfoImplementation[[) B
)[[B C
.[[C D!
ConsultPlayerByIdUser[[D Y
([[Y Z
idUser[[Z `
)[[` a
;[[a b
}\\ 	
public^^ 
GenericClass^^ 
<^^ 
UserPOJO^^ $
>^^$ %
ConsultUserById^^& 5
(^^5 6
int^^6 9
idUser^^: @
)^^@ A
{__ 	
return`` 
(`` 
(`` 
IConsultInformation`` (
)``( )%
consultInfoImplementation``) B
)``B C
.``C D
ConsultUserById``D S
(``S T
idUser``T Z
)``Z [
;``[ \
}aa 	
publiccc 
GenericClasscc 
<cc 
UserPOJOcc $
>cc$ %!
ConsultUserByIdPlayercc& ;
(cc; <
intcc< ?
idPlayercc@ H
)ccH I
{dd 	
returnee 
(ee 
(ee 
IConsultInformationee (
)ee( )%
consultInfoImplementationee) B
)eeB C
.eeC D!
ConsultUserByIdPlayereeD Y
(eeY Z
idPlayereeZ b
)eeb c
;eec d
}ff 	
publichh 
GenericClasshh 
<hh 
UserPOJOhh $
>hh$ %!
ConsultUserByUserNamehh& ;
(hh; <
stringhh< B
userNamehhC K
)hhK L
{ii 	
returnjj 
(jj 
(jj 
IConsultInformationjj (
)jj( )%
consultInfoImplementationjj) B
)jjB C
.jjC D!
ConsultUserByUserNamejjD Y
(jjY Z
userNamejjZ b
)jjb c
;jjc d
}kk 	
}ll 
[nn 
ServiceBehaviornn 
(nn 
ConcurrencyModenn $
=nn% &
ConcurrencyModenn' 6
.nn6 7
	Reentrantnn7 @
)nn@ A
]nnA B
publicoo 

partialoo 
classoo #
ServicesReferenceAuthoroo 0
:oo1 2#
INotifyUserAvailabilityoo3 J
,ooJ K+
INotifyUserActionFriendsManagerooL k
,ook l
ILobbyActionsoom z
,ooz {
	ILiveChat	oo| Ö
{pp 0
$NotifyUserAvailabilityImplementationqq ,
NotifyUserAvbqq- :
=qq; <
newqq= @0
$NotifyUserAvailabilityImplementationqqA e
(qqe f
)qqf g
;qqg h/
#NotifyFriendlyActionsImplementationrr +!
NotifyFriendlyActionsrr, A
=rrB C
newrrD G/
#NotifyFriendlyActionsImplementationrrH k
(rrk l
)rrl m
;rrm n&
LobbyActionsImplementationss "
LobbyActionsss# /
=ss0 1
newss2 5&
LobbyActionsImplementationss6 P
(ssP Q
)ssQ R
;ssR S"
LiveChatImplementationtt 
LiveChattt '
=tt( )
newtt* -"
LiveChatImplementationtt. D
(ttD E
)ttE F
;ttF G
publicvv 
voidvv 
AcceptFriendRequestvv '
(vv' (
intvv( +
idPlayerAcceptingvv, =
,vv= >
intvv? B
idUserRequestingvvC S
)vvS T
{ww 	
(xx 
(xx +
INotifyUserActionFriendsManagerxx -
)xx- .!
NotifyFriendlyActionsxx. C
)xxC D
.xxD E
AcceptFriendRequestxxE X
(xxX Y
idPlayerAcceptingxxY j
,xxj k
idUserRequestingxxl |
)xx| }
;xx} ~
}yy 	
public{{ 
void{{ 
ChangePlayerSide{{ $
({{$ %
int{{% (
roomCode{{) 1
,{{1 2
int{{3 6
idUserToChangeTeam{{7 I
,{{I J
int{{K N
newSideTeam{{O Z
){{Z [
{|| 	
(}} 
(}} 
ILobbyActions}} 
)}} 
LobbyActions}} (
)}}( )
.}}) *
ChangePlayerSide}}* :
(}}: ;
roomCode}}; C
,}}C D
idUserToChangeTeam}}E W
,}}W X
newSideTeam}}Y d
)}}d e
;}}e f
}~~ 	
public
ÄÄ 
GenericClass
ÄÄ 
<
ÄÄ 
bool
ÄÄ  
>
ÄÄ  ! 
CreateChatForLobby
ÄÄ" 4
(
ÄÄ4 5
int
ÄÄ5 8
roomCode
ÄÄ9 A
,
ÄÄA B
int
ÄÄC F
idAdmin
ÄÄG N
)
ÄÄN O
{
ÅÅ 	
return
ÇÇ 
(
ÇÇ 
(
ÇÇ 
	ILiveChat
ÇÇ 
)
ÇÇ 
LiveChat
ÇÇ '
)
ÇÇ' (
.
ÇÇ( ) 
CreateChatForLobby
ÇÇ) ;
(
ÇÇ; <
roomCode
ÇÇ< D
,
ÇÇD E
idAdmin
ÇÇF M
)
ÇÇM N
;
ÇÇN O
}
ÉÉ 	
public
ÖÖ 
GenericClass
ÖÖ 
<
ÖÖ 
int
ÖÖ 
>
ÖÖ  
CreateNewLobby
ÖÖ! /
(
ÖÖ/ 0
int
ÖÖ0 3
roomCode
ÖÖ4 <
,
ÖÖ< =
int
ÖÖ> A
idUser
ÖÖB H
)
ÖÖH I
{
ÜÜ 	
return
áá 
(
áá 
(
áá 
ILobbyActions
áá "
)
áá" #
LobbyActions
áá# /
)
áá/ 0
.
áá0 1
CreateNewLobby
áá1 ?
(
áá? @
roomCode
áá@ H
,
ááH I
idUser
ááJ P
)
ááP Q
;
ááQ R
}
àà 	
public
ää 
void
ää "
DeclineFriendRequest
ää (
(
ää( )
int
ää) ,
idPlayerDeclining
ää- >
,
ää> ?
int
ää@ C
idUserRequesting
ääD T
)
ääT U
{
ãã 	
(
åå 
(
åå -
INotifyUserActionFriendsManager
åå -
)
åå- .#
NotifyFriendlyActions
åå. C
)
ååC D
.
ååD E"
DeclineFriendRequest
ååE Y
(
ååY Z
idPlayerDeclining
ååZ k
,
ååk l
idUserRequesting
ååm }
)
åå} ~
;
åå~ 
}
çç 	
public
èè 
void
èè 

DeleteChat
èè 
(
èè 
int
èè "
roomCode
èè# +
,
èè+ ,
int
èè- 0
idUser
èè1 7
)
èè7 8
{
êê 	
(
ëë 
(
ëë 
	ILiveChat
ëë 
)
ëë 
LiveChat
ëë  
)
ëë  !
.
ëë! "

DeleteChat
ëë" ,
(
ëë, -
roomCode
ëë- 5
,
ëë5 6
idUser
ëë7 =
)
ëë= >
;
ëë> ?
}
íí 	
public
îî 
void
îî 
DissolveLobby
îî !
(
îî! "
int
îî" %
roomCode
îî& .
,
îî. /
int
îî0 3
idUser
îî4 :
)
îî: ;
{
ïï 	
(
ññ 
(
ññ 
ILobbyActions
ññ 
)
ññ 
LobbyActions
ññ (
)
ññ( )
.
ññ) *
DissolveLobby
ññ* 7
(
ññ7 8
roomCode
ññ8 @
,
ññ@ A
idUser
ññB H
)
ññH I
;
ññI J
}
óó 	
public
ôô 
void
ôô &
EliminatePlayerFromMatch
ôô ,
(
ôô, -
int
ôô- 0
roomCode
ôô1 9
,
ôô9 :
int
ôô; >
idUserToEliminate
ôô? P
)
ôôP Q
{
öö 	
(
õõ 
(
õõ 
ILobbyActions
õõ 
)
õõ 
LobbyActions
õõ (
)
õõ( )
.
õõ) *&
EliminatePlayerFromMatch
õõ* B
(
õõB C
roomCode
õõC K
,
õõK L
idUserToEliminate
õõM ^
)
õõ^ _
;
õõ_ `
}
úú 	
public
ûû 
void
ûû &
EliminateUserFromFriends
ûû ,
(
ûû, -
int
ûû- 0
idPlayerDeleting
ûû1 A
,
ûûA B
int
ûûC F
idUserToEliminate
ûûG X
)
ûûX Y
{
üü 	
(
†† 
(
†† -
INotifyUserActionFriendsManager
†† -
)
††- .#
NotifyFriendlyActions
††. C
)
††C D
.
††D E&
EliminateUserFromFriends
††E ]
(
††] ^
idPlayerDeleting
††^ n
,
††n o 
idUserToEliminate††p Å
)††Å Ç
;††Ç É
}
°° 	
public
££ 
GenericClass
££ 
<
££ 
List
££  
<
££  !
PlayerInLobby
££! .
>
££. /
>
££/ 0(
GetAllCurrentPlayerInLobby
££1 K
(
££K L
int
££L O
roomCode
££P X
,
££X Y
int
££Z ]
idUserRequesting
££^ n
)
££n o
{
§§ 	
return
•• 
(
•• 
(
•• 
ILobbyActions
•• "
)
••" #
LobbyActions
••# /
)
••/ 0
.
••0 1(
GetAllCurrentPlayerInLobby
••1 K
(
••K L
roomCode
••L T
,
••T U
idUserRequesting
••V f
)
••f g
;
••g h
}
¶¶ 	
public
®® 
GenericClass
®® 
<
®® 
List
®®  
<
®®  !
MessageChat
®®! ,
>
®®, -
>
®®- .
GetAllMessages
®®/ =
(
®®= >
int
®®> A
roomCode
®®B J
,
®®J K
int
®®L O
idUser
®®P V
)
®®V W
{
©© 	
return
™™ 
(
™™ 
(
™™ 
	ILiveChat
™™ 
)
™™ 
LiveChat
™™ '
)
™™' (
.
™™( )
GetAllMessages
™™) 7
(
™™7 8
roomCode
™™8 @
,
™™@ A
idUser
™™B H
)
™™H I
;
™™I J
}
´´ 	
public
≠≠ 
GenericClass
≠≠ 
<
≠≠ 
int
≠≠ 
>
≠≠  
	JoinLobby
≠≠! *
(
≠≠* +
int
≠≠+ .
roomCode
≠≠/ 7
,
≠≠7 8
int
≠≠9 <
idUser
≠≠= C
)
≠≠C D
{
ÆÆ 	
return
ØØ 
(
ØØ 
(
ØØ 
ILobbyActions
ØØ "
)
ØØ" #
LobbyActions
ØØ# /
)
ØØ/ 0
.
ØØ0 1
	JoinLobby
ØØ1 :
(
ØØ: ;
roomCode
ØØ; C
,
ØØC D
idUser
ØØE K
)
ØØK L
;
ØØL M
}
∞∞ 	
public
≤≤ 
void
≤≤ 

LeaveLobby
≤≤ 
(
≤≤ 
int
≤≤ "
roomCode
≤≤# +
,
≤≤+ ,
int
≤≤- 0
idUser
≤≤1 7
)
≤≤7 8
{
≥≥ 	
(
¥¥ 
(
¥¥ 
ILobbyActions
¥¥ 
)
¥¥ 
LobbyActions
¥¥ (
)
¥¥( )
.
¥¥) *

LeaveLobby
¥¥* 4
(
¥¥4 5
roomCode
¥¥5 =
,
¥¥= >
idUser
¥¥? E
)
¥¥E F
;
¥¥F G
}
µµ 	
public
∑∑ 
void
∑∑ 
	MakeTeams
∑∑ 
(
∑∑ 
int
∑∑ !
roomCode
∑∑" *
,
∑∑* +
int
∑∑, /
idUser
∑∑0 6
,
∑∑6 7
bool
∑∑8 <
	wannaTeam
∑∑= F
)
∑∑F G
{
∏∏ 	
(
ππ 
(
ππ 
ILobbyActions
ππ 
)
ππ 
LobbyActions
ππ (
)
ππ( )
.
ππ) *
	MakeTeams
ππ* 3
(
ππ3 4
roomCode
ππ4 <
,
ππ< =
idUser
ππ> D
,
ππD E
	wannaTeam
ππF O
)
ππO P
;
ππP Q
}
∫∫ 	
public
ºº 
void
ºº !
NotifyPlayerInLobby
ºº '
(
ºº' (
int
ºº( +
roomCode
ºº, 4
,
ºº4 5
int
ºº6 9
idUser
ºº: @
)
ºº@ A
{
ΩΩ 	
(
ææ 
(
ææ 
ILobbyActions
ææ 
)
ææ 
LobbyActions
ææ (
)
ææ( )
.
ææ) *!
NotifyPlayerInLobby
ææ* =
(
ææ= >
roomCode
ææ> F
,
ææF G
idUser
ææH N
)
ææN O
;
ææO P
}
øø 	
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
,
¡¡9 :
int
¡¡; >
idNewActivePlayer
¡¡? P
)
¡¡P Q
{
¬¬ 	
(
√√ 
(
√√ %
INotifyUserAvailability
√√ %
)
√√% &
NotifyUserAvb
√√& 3
)
√√3 4
.
√√4 5
PlayerIsAvailable
√√5 F
(
√√F G
idNewActiveUser
√√G V
,
√√V W
idNewActivePlayer
√√X i
)
√√i j
;
√√j k
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
,
∆∆@ A
int
∆∆B E#
idPlayerDisconnecting
∆∆F [
)
∆∆[ \
{
«« 	
(
»» 
(
»» %
INotifyUserAvailability
»» %
)
»»% &
NotifyUserAvb
»»& 3
)
»»3 4
.
»»4 5"
PlayerIsNotAvailable
»»5 I
(
»»I J!
idUserDisconnecting
»»J ]
,
»»] ^#
idPlayerDisconnecting
»»_ t
)
»»t u
;
»»u v
}
…… 	
public
ÀÀ 
GenericClass
ÀÀ 
<
ÀÀ 
int
ÀÀ 
>
ÀÀ  '
RegisterFriendManagerUser
ÀÀ! :
(
ÀÀ: ;
int
ÀÀ; >!
idUserFriendManager
ÀÀ? R
)
ÀÀR S
{
ÃÃ 	
return
ÕÕ 
(
ÕÕ 
(
ÕÕ -
INotifyUserActionFriendsManager
ÕÕ 4
)
ÕÕ4 5#
NotifyFriendlyActions
ÕÕ5 J
)
ÕÕJ K
.
ÕÕK L'
RegisterFriendManagerUser
ÕÕL e
(
ÕÕe f!
idUserFriendManager
ÕÕf y
)
ÕÕy z
;
ÕÕz {
}
ŒŒ 	
public
–– 
void
–– 
ReportPlayer
––  
(
––  !
int
––! $
idUser
––% +
,
––+ ,
string
––- 3
userName
––4 <
)
––< =
{
—— 	
(
““ 
(
““ -
INotifyUserActionFriendsManager
““ -
)
““- .#
NotifyFriendlyActions
““. C
)
““C D
.
““D E
ReportPlayer
““E Q
(
““Q R
idUser
““R X
,
““X Y
userName
““Z b
)
““b c
;
““c d
}
”” 	
public
’’ 
void
’’ 
SendFriendRequest
’’ %
(
’’% &
int
’’& ) 
idPLayerRequesting
’’* <
,
’’< =
int
’’> A
idUserRequested
’’B Q
)
’’Q R
{
÷÷ 	
(
◊◊ 
(
◊◊ -
INotifyUserActionFriendsManager
◊◊ -
)
◊◊- .#
NotifyFriendlyActions
◊◊. C
)
◊◊C D
.
◊◊D E
SendFriendRequest
◊◊E V
(
◊◊V W 
idPLayerRequesting
◊◊W i
,
◊◊i j
idUserRequested
◊◊k z
)
◊◊z {
;
◊◊{ |
}
ÿÿ 	
public
⁄⁄ 
void
⁄⁄ 
SendMessage
⁄⁄ 
(
⁄⁄  
int
⁄⁄  #
idUser
⁄⁄$ *
,
⁄⁄* +
int
⁄⁄, /
roomCode
⁄⁄0 8
,
⁄⁄8 9
string
⁄⁄: @
userName
⁄⁄A I
,
⁄⁄I J
string
⁄⁄K Q
messageToSend
⁄⁄R _
)
⁄⁄_ `
{
€€ 	
(
‹‹ 
(
‹‹ 
	ILiveChat
‹‹ 
)
‹‹ 
LiveChat
‹‹  
)
‹‹  !
.
‹‹! "
SendMessage
‹‹" -
(
‹‹- .
idUser
‹‹. 4
,
‹‹4 5
roomCode
‹‹6 >
,
‹‹> ?
userName
‹‹@ H
,
‹‹H I
messageToSend
‹‹J W
)
‹‹W X
;
‹‹X Y
}
›› 	
public
ﬂﬂ 
void
ﬂﬂ )
UnregisterFriendManagerUser
ﬂﬂ /
(
ﬂﬂ/ 0
int
ﬂﬂ0 3!
idUserFriendManager
ﬂﬂ4 G
)
ﬂﬂG H
{
‡‡ 	
(
·· 
(
·· -
INotifyUserActionFriendsManager
·· -
)
··- .#
NotifyFriendlyActions
··. C
)
··C D
.
··D E)
UnregisterFriendManagerUser
··E `
(
··` a!
idUserFriendManager
··a t
)
··t u
;
··u v
}
‚‚ 	
}
„„ 
}ÊÊ Õ∫
òC:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameServer\JeopardyGame.Service\ServiceImplementation\UserManagerImplementation.cs
	namespace 	
JeopardyGame
 
. 
Service 
. !
ServiceImplementation 4
{ 
public 

partial 
class %
UserManagerImplementation 2
:3 4
IUserManager5 A
{ 
private 
readonly 
int 
DEFAULT_INT_VALUE .
=/ 0
$num1 2
;2 3
private 
readonly 
int 
NOT_BANNED_STATE -
=. /
$num0 1
;1 2
private 
readonly 
int 
SUCCESFULL_EVENT -
=. /
$num0 1
;1 2
private 
readonly 
int 
UNSUCCESFULL_EVENT /
=0 1
$num2 3
;3 4
public 
GenericClass 
< 
int 
>  
SaveUser! )
() *
UserPOJO* 2
userPojoNew3 >
)> ?
{ 	
GenericClass 
< 
int 
> 
resultToReturn ,
=- .
new/ 2
GenericClass3 ?
<? @
int@ C
>C D
(D E
)E F
;F G
if   
(   
userPojoNew   
==   
null   #
)  # $
{!! 
return"" !
NullParametersHandler"" ,
."", -'
HandleNullParametersService""- H
(""H I
resultToReturn""I W
)""W X
;""X Y
}## 
userPojoNew$$ 
.$$ 
IdUser$$ 
=$$  
DEFAULT_INT_VALUE$$! 2
;$$2 3
User%% 
newUser%% 
=%% "
InterpretersEntityPojo%% 1
.%%1 2
UserInterpreter%%2 A
.%%A B$
FromUserPojoToUserEntity%%B Z
(%%Z [
userPojoNew%%[ f
)%%f g
;%%g h
GenericClassServer&& 
<&& 
User&& #
>&&# $
	userSaved&&% .
=&&/ 0$
UserManagerDataOperation&&1 I
.&&I J
SaveUserInDataBase&&J \
(&&\ ]
newUser&&] d
)&&d e
;&&e f
if'' 
('' 
	userSaved'' 
.'' 
	CodeEvent'' #
==''$ &
ExceptionDictionary''' :
.'': ;
SUCCESFULL_EVENT''; K
)''K L
{(( 

PlayerPOJO)) 
playerToSave)) '
=))( )
new))* -

PlayerPOJO)). 8
())8 9
)))9 :
;)): ;
playerToSave** 
.** 
IdPlayer** %
=**& '
DEFAULT_INT_VALUE**( 9
;**9 :
playerToSave++ 
.++ 
GeneralPoints++ *
=+++ ,
DEFAULT_INT_VALUE++- >
;++> ?
playerToSave,, 
.,, 
	NoReports,, &
=,,' (
DEFAULT_INT_VALUE,,) :
;,,: ;
playerToSave-- 
.-- 
IdActualAvatar-- +
=--, -
DEFAULT_INT_VALUE--. ?
;--? @
playerToSave.. 
... 
IdUser.. #
=..$ %
	userSaved..& /
.../ 0
ObjectSaved..0 ;
...; <
IdUser..< B
;..B C
playerToSave// 
.// 
IdState// $
=//% &
NOT_BANNED_STATE//' 7
;//7 8
int00 %
isPlayerSavedSuccessfully00 -
=00. /

SavePlayer000 :
(00: ;
playerToSave00; G
)00G H
;00H I
if11 
(11 %
isPlayerSavedSuccessfully11 -
==11. 0
ExceptionDictionary111 D
.11D E
SUCCESFULL_EVENT11E U
)11U V
{22 
resultToReturn33 "
.33" #
ObjectSaved33# .
=33/ 0
	userSaved331 :
.33: ;
ObjectSaved33; F
.33F G
IdUser33G M
;33M N
resultToReturn44 "
.44" #
	CodeEvent44# ,
=44- .
ExceptionDictionary44/ B
.44B C
SUCCESFULL_EVENT44C S
;44S T
}55 
else66 
{77 $
UserManagerDataOperation88 ,
.88, -
DeleteUserById88- ;
(88; <
	userSaved88< E
.88E F
ObjectSaved88F Q
.88Q R
IdUser88R X
)88X Y
;88Y Z
resultToReturn99 "
.99" #
	CodeEvent99# ,
=99- .%
isPlayerSavedSuccessfully99/ H
;99H I
}:: 
};; 
else<< 
{== 
resultToReturn>> 
.>> 
	CodeEvent>> (
=>>) *
	userSaved>>+ 4
.>>4 5
	CodeEvent>>5 >
;>>> ?
}?? 
return@@ 
resultToReturn@@ !
;@@! "
}BB 	
privateDD 
intDD 

SavePlayerDD 
(DD 

PlayerPOJODD )
	newPlayerDD* 3
)DD3 4
{EE 	
intFF 
responseOfOperationFF #
=FF$ %
DEFAULT_INT_VALUEFF& 7
;FF7 8
ifGG 
(GG 
	newPlayerGG 
==GG 
nullGG !
)GG! "
{HH 
returnII 
responseOfOperationII *
;II* +
}JJ 
PlayerKK 
newPlayerAccountKK #
=KK$ %"
InterpretersEntityPojoKK& <
.KK< =
UserInterpreterKK= L
.KKL M(
FromPlayerPojoToPlayerEntityKKM i
(KKi j
	newPlayerKKj s
)KKs t
;KKt u
GenericClassServerLL 
<LL 
UserLL #
>LL# $
	userSavedLL% .
=LL/ 0$
UserManagerDataOperationLL1 I
.LLI J
GetUserByIdLLJ U
(LLU V
	newPlayerLLV _
.LL_ `
IdUserLL` f
)LLf g
;LLg h
ifMM 
(MM 
	userSavedMM 
.MM 
	CodeEventMM "
==MM# %
ExceptionDictionaryMM& 9
.MM9 :
SUCCESFULL_EVENTMM: J
)MMJ K
{NN 
GenericClassServerOO "
<OO" #
StateOO# (
>OO( )
defaultStateOO* 6
=OO7 8$
UserManagerDataOperationOO9 Q
.OOQ R
GetStateByIdOOR ^
(OO^ _
	newPlayerOO_ h
.OOh i
IdStateOOi p
)OOp q
;OOq r
ifPP 
(PP 
defaultStatePP  
.PP  !
	CodeEventPP! *
==PP+ -
ExceptionDictionaryPP. A
.PPA B
SUCCESFULL_EVENTPPB R
)PPR S
{QQ 
GenericClassServerRR &
<RR& '
PlayerRR' -
>RR- .
playerSavedRR/ :
=RR; <$
UserManagerDataOperationRR= U
.RRU V 
SavePlayerInDataBaseRRV j
(RRj k
	userSavedRRk t
.RRt u
ObjectSaved	RRu Ä
,
RRÄ Å
defaultState
RRÇ é
.
RRé è
ObjectSaved
RRè ö
,
RRö õ
newPlayerAccount
RRú ¨
)
RR¨ ≠
;
RR≠ Æ
responseOfOperationSS '
=SS( )
playerSavedSS* 5
.SS5 6
	CodeEventSS6 ?
;SS? @
}TT 
elseUU 
{VV 
responseOfOperationWW '
=WW( )
defaultStateWW* 6
.WW6 7
	CodeEventWW7 @
;WW@ A
}XX 
}YY 
elseZZ 
{[[ 
responseOfOperation\\ #
=\\$ %
	userSaved\\& /
.\\/ 0
	CodeEvent\\0 9
;\\9 :
}]] 
return^^ 
responseOfOperation^^ &
;^^& '
}__ 	
publicaa 
GenericClassaa 
<aa 
intaa 
>aa  
ValidateCredentialsaa! 4
(aa4 5
UserValidateaa5 A
newUserValidateaaB Q
)aaQ R
{bb 	
varcc 
userConsultedcc 
=cc $
UserManagerDataOperationcc  8
.cc8 9
GetUserByUserNamecc9 J
(ccJ K
newUserValidateccK Z
.ccZ [
UserNamecc[ c
)ccc d
;ccd e
GenericClassdd 
<dd 
intdd 
>dd 
responseServerdd ,
=dd- .
newdd/ 2
GenericClassdd3 ?
<dd? @
intdd@ C
>ddC D
(ddD E
)ddE F
;ddF G
ifee 
(ee 
userConsultedee 
.ee 
	CodeEventee '
==ee( *
ExceptionDictionaryee+ >
.ee> ?
SUCCESFULL_EVENTee? O
)eeO P
{ff 
GenericClassServergg "
<gg" #
boolgg# '
>gg' (
isPasswordValidgg) 8
=gg9 :
LoginOperationsgg: I
.ggI J
VerifyPasswordggJ X
(ggX Y
newUserValidateggY h
.ggh i
Passwordggi q
,ggq r
userConsulted	ggs Ä
.
ggÄ Å
ObjectSaved
ggÅ å
.
ggå ç
Password
ggç ï
)
ggï ñ
;
ggñ ó
ifhh 
(hh 
isPasswordValidhh #
.hh# $
	CodeEventhh$ -
==hh. 0
ExceptionDictionaryhh1 D
.hhD E
SUCCESFULL_EVENThhE U
||hhV X
isPasswordValidhhY h
.hhh i
	CodeEventhhi r
==hhs u 
ExceptionDictionary	hhv â
.
hhâ ä 
UNSUCCESFULL_EVENT
hhä ú
)
hhú ù
{ii 
ifjj 
(jj 
isPasswordValidjj '
.jj' (
ObjectSavedjj( 3
)jj3 4
{kk 
responseServerll &
.ll& '
ObjectSavedll' 2
=ll3 4
SUCCESFULL_EVENTll5 E
;llE F
responseServermm &
.mm& '
	CodeEventmm' 0
=mm1 2
ExceptionDictionarymm3 F
.mmF G
SUCCESFULL_EVENTmmG W
;mmW X
}oo 
elsepp 
{qq 
responseServerrr &
.rr& '
ObjectSavedrr' 2
=rr3 4
UNSUCCESFULL_EVENTrr5 G
;rrG H
responseServerss &
.ss& '
	CodeEventss' 0
=ss1 2
ExceptionDictionaryss3 F
.ssF G
UNSUCCESFULL_EVENTssG Y
;ssY Z
}tt 
}uu 
elsevv 
{ww 
responseServerxx "
.xx" #
	CodeEventxx# ,
=xx- .
isPasswordValidxx/ >
.xx> ?
	CodeEventxx? H
;xxH I
}yy 
}zz 
else{{ 
{|| 
responseServer}} 
.}} 
	CodeEvent}} (
=}}) *
userConsulted}}+ 8
.}}8 9
	CodeEvent}}9 B
;}}B C
}~~ 
return 
responseServer !
;! "
}
ÄÄ 	
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
String
ÇÇ3 9
email
ÇÇ: ?
)
ÇÇ? @
{
ÉÉ 	
GenericClass
ÑÑ 
<
ÑÑ 
int
ÑÑ 
>
ÑÑ 
resultToReturn
ÑÑ ,
=
ÑÑ- .
new
ÑÑ/ 2
GenericClass
ÑÑ3 ?
<
ÑÑ? @
int
ÑÑ@ C
>
ÑÑC D
(
ÑÑD E
)
ÑÑE F
;
ÑÑF G
if
ÖÖ 
(
ÖÖ 
string
ÖÖ 
.
ÖÖ 
IsNullOrEmpty
ÖÖ $
(
ÖÖ$ %
email
ÖÖ% *
)
ÖÖ* +
)
ÖÖ+ ,
{
ÜÜ 
return
áá #
NullParametersHandler
áá ,
.
áá, -)
HandleNullParametersService
áá- H
(
ááH I
resultToReturn
ááI W
)
ááW X
;
ááX Y
}
àà  
GenericClassServer
ââ 
<
ââ 
int
ââ "
>
ââ" #

emailIsNew
ââ$ .
=
ââ/ 0
LoginOperations
ââ1 @
.
ââ@ A"
ValidateIfEmailExist
ââA U
(
ââU V
email
ââV [
)
ââ[ \
;
ââ\ ]
resultToReturn
ää 
.
ää 
ObjectSaved
ää &
=
ää' (

emailIsNew
ää) 3
.
ää3 4
ObjectSaved
ää4 ?
;
ää? @
resultToReturn
ãã 
.
ãã 
	CodeEvent
ãã $
=
ãã% &

emailIsNew
ãã' 1
.
ãã1 2
	CodeEvent
ãã2 ;
;
ãã; <
return
åå 
resultToReturn
åå !
;
åå! "
}
çç 	
public
èè 
GenericClass
èè 
<
èè 
int
èè 
>
èè  "
UserNameAlreadyExist
èè! 5
(
èè5 6
String
èè6 <
userName
èè= E
)
èèE F
{
êê 	
GenericClass
ëë 
<
ëë 
int
ëë 
>
ëë 
resultToReturn
ëë ,
=
ëë- .
new
ëë/ 2
GenericClass
ëë3 ?
<
ëë? @
int
ëë@ C
>
ëëC D
(
ëëD E
)
ëëE F
;
ëëF G
if
íí 
(
íí 
string
íí 
.
íí 
IsNullOrEmpty
íí $
(
íí$ %
userName
íí% -
)
íí- .
)
íí. /
{
ìì 
return
îî #
NullParametersHandler
îî ,
.
îî, -)
HandleNullParametersService
îî- H
(
îîH I
resultToReturn
îîI W
)
îîW X
;
îîX Y
}
ïï  
GenericClassServer
ññ 
<
ññ 
int
ññ "
>
ññ" #

emailIsNew
ññ$ .
=
ññ/ 0
LoginOperations
ññ1 @
.
ññ@ A%
ValidateIfUserNameExist
ññA X
(
ññX Y
userName
ññY a
)
ñña b
;
ññb c
resultToReturn
óó 
.
óó 
ObjectSaved
óó &
=
óó' (

emailIsNew
óó) 3
.
óó3 4
ObjectSaved
óó4 ?
;
óó? @
resultToReturn
òò 
.
òò 
	CodeEvent
òò $
=
òò% &

emailIsNew
òò' 1
.
òò1 2
	CodeEvent
òò2 ;
;
òò; <
return
ôô 
resultToReturn
ôô !
;
ôô! "
}
öö 	
public
úú 
GenericClass
úú 
<
úú 
int
úú 
>
úú  '
SentEmailCodeConfirmation
úú! :
(
úú: ;
String
úú; A
email
úúB G
,
úúG H
String
úúI O
subject
úúP W
,
úúW X
String
úúY _
code
úú` d
)
úúd e
{
ùù 	
GenericClass
ûû 
<
ûû 
int
ûû 
>
ûû 
resultToReturn
ûû ,
=
ûû- .
new
ûû/ 2
GenericClass
ûû3 ?
<
ûû? @
int
ûû@ C
>
ûûC D
(
ûûD E
)
ûûE F
;
ûûF G 
GenericClassServer
üü 
<
üü 
int
üü "
>
üü" #
result
üü$ *
=
üü+ ,
new
üü- 0 
GenericClassServer
üü1 C
<
üüC D
int
üüD G
>
üüG H
(
üüH I
)
üüI J
;
üüJ K
if
†† 
(
†† 
string
†† 
.
†† 
IsNullOrEmpty
†† $
(
††$ %
email
††% *
)
††* +
||
††, .
string
††/ 5
.
††5 6
IsNullOrEmpty
††6 C
(
††C D
subject
††D K
)
††K L
||
††M O
string
††P V
.
††V W
IsNullOrEmpty
††W d
(
††d e
code
††e i
)
††i j
)
††j k
{
°° 
return
¢¢ #
NullParametersHandler
¢¢ ,
.
¢¢, -)
HandleNullParametersService
¢¢- H
(
¢¢H I
resultToReturn
¢¢I W
)
¢¢W X
;
¢¢X Y
}
££ 
var
§§ 
client
§§ 
=
§§ 
new
§§ 

SmtpClient
§§ '
(
§§' (
$str
§§( 8
,
§§8 9
$num
§§: =
)
§§= >
{
•• 
	EnableSsl
¶¶ 
=
¶¶ 
true
¶¶  
,
¶¶  !#
UseDefaultCredentials
ßß %
=
ßß& '
false
ßß( -
,
ßß- .
Credentials
®® 
=
®® 
new
®® !
NetworkCredential
®®" 3
(
®®3 4
$str
®®4 L
,
®®L M
$str
®®N c
)
®®c d
}
©© 
;
©© 
try
™™ 
{
´´ 
Task
¨¨ 
success
¨¨ 
=
¨¨ 
client
¨¨  &
.
¨¨& '
SendMailAsync
¨¨' 4
(
¨¨4 5
new
¨¨5 8
MailMessage
¨¨9 D
(
¨¨D E
from
¨¨E I
:
¨¨I J
$str
¨¨K c
,
¨¨c d
to
¨¨e g
:
¨¨g h
email
¨¨i n
,
¨¨n o
subject
¨¨p w
,
¨¨w x
code
¨¨y }
)
¨¨} ~
)
¨¨~ 
;¨¨ Ä
if
≠≠ 
(
≠≠ 
success
≠≠ 
!=
≠≠ 
null
≠≠ #
)
≠≠# $
{
ÆÆ 
result
ØØ 
.
ØØ 
ObjectSaved
ØØ &
=
ØØ' (
SUCCESFULL_EVENT
ØØ) 9
;
ØØ9 :
result
∞∞ 
.
∞∞ 
	CodeEvent
∞∞ $
=
∞∞% &!
ExceptionDictionary
∞∞' :
.
∞∞: ;
SUCCESFULL_EVENT
∞∞; K
;
∞∞K L
}
±± 
else
≤≤ 
{
≥≥ 
result
¥¥ 
.
¥¥ 
ObjectSaved
¥¥ &
=
¥¥' ( 
UNSUCCESFULL_EVENT
¥¥) ;
;
¥¥; <
result
µµ 
.
µµ 
	CodeEvent
µµ $
=
µµ% &!
ExceptionDictionary
µµ' :
.
µµ: ; 
UNSUCCESFULL_EVENT
µµ; M
;
µµM N
}
∂∂ 
}
∑∑ 
catch
∏∏ 
(
∏∏ #
ArgumentNullException
∏∏ (
ex
∏∏) +
)
∏∏+ ,
{
ππ 
result
∫∫ 
=
∫∫ 
ExceptionHandler
∫∫ )
.
∫∫) *+
HandleExceptionDataAccesLevel
∫∫* G
(
∫∫G H
result
∫∫H N
,
∫∫N O
ex
∫∫P R
)
∫∫R S
;
∫∫S T
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
ΩΩ )
ArgumentOutOfRangeException
ΩΩ -
ex
ΩΩ. 0
)
ΩΩ0 1
{
ææ 
result
øø 
=
øø 
ExceptionHandler
øø )
.
øø) *+
HandleExceptionDataAccesLevel
øø* G
(
øøG H
result
øøH N
,
øøN O
ex
øøP R
)
øøR S
;
øøS T
ExceptionHandler
¿¿  
.
¿¿  !
LogException
¿¿! -
(
¿¿- .
ex
¿¿. 0
,
¿¿0 1!
ExceptionDictionary
¿¿2 E
.
¿¿E F
FATAL_EXCEPTION
¿¿F U
)
¿¿U V
;
¿¿V W
}
¡¡ 
catch
¬¬ 
(
¬¬ 
FormatException
¬¬ !
ex
¬¬" $
)
¬¬$ %
{
√√ 
result
ƒƒ 
=
ƒƒ 
ExceptionHandler
ƒƒ )
.
ƒƒ) *+
HandleExceptionDataAccesLevel
ƒƒ* G
(
ƒƒG H
result
ƒƒH N
,
ƒƒN O
ex
ƒƒP R
)
ƒƒR S
;
ƒƒS T
ExceptionHandler
≈≈  
.
≈≈  !
LogException
≈≈! -
(
≈≈- .
ex
≈≈. 0
,
≈≈0 1!
ExceptionDictionary
≈≈2 E
.
≈≈E F
FATAL_EXCEPTION
≈≈F U
)
≈≈U V
;
≈≈V W
}
∆∆ 
catch
«« 
(
«« 
ArgumentException
«« #
ex
««$ &
)
««& '
{
»» 
result
…… 
=
…… 
ExceptionHandler
…… )
.
……) *+
HandleExceptionDataAccesLevel
……* G
(
……G H
result
……H N
,
……N O
ex
……P R
)
……R S
;
……S T
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
ÃÃ 
SmtpException
ÃÃ  
ex
ÃÃ! #
)
ÃÃ# $
{
ÕÕ 
result
ŒŒ 
=
ŒŒ 
ExceptionHandler
ŒŒ )
.
ŒŒ) *+
HandleExceptionDataAccesLevel
ŒŒ* G
(
ŒŒG H
result
ŒŒH N
,
ŒŒN O
ex
ŒŒP R
)
ŒŒR S
;
ŒŒS T
ExceptionHandler
œœ  
.
œœ  !
LogException
œœ! -
(
œœ- .
ex
œœ. 0
,
œœ0 1!
ExceptionDictionary
œœ2 E
.
œœE F
FATAL_EXCEPTION
œœF U
)
œœU V
;
œœV W
}
–– 
resultToReturn
—— 
.
—— 
ObjectSaved
—— &
=
——' (
result
——) /
.
——/ 0
ObjectSaved
——0 ;
;
——; <
resultToReturn
““ 
.
““ 
	CodeEvent
““ $
=
““% &
result
““' -
.
““- .
	CodeEvent
““. 7
;
““7 8
return
”” 
resultToReturn
”” !
;
””! "
}
‘‘ 	
public
÷÷ 
GenericClass
÷÷ 
<
÷÷ 
int
÷÷ 
>
÷÷  #
UpdateUserInformation
÷÷! 6
(
÷÷6 7
string
÷÷7 =

editedName
÷÷> H
,
÷÷H I
string
÷÷J P
originalName
÷÷Q ]
)
÷÷] ^
{
◊◊ 	
GenericClass
ÿÿ 
<
ÿÿ 
int
ÿÿ 
>
ÿÿ 
resultToReturn
ÿÿ ,
=
ÿÿ- .
new
ÿÿ/ 2
GenericClass
ÿÿ3 ?
<
ÿÿ? @
int
ÿÿ@ C
>
ÿÿC D
(
ÿÿD E
)
ÿÿE F
;
ÿÿF G
if
ŸŸ 
(
ŸŸ 
string
ŸŸ 
.
ŸŸ 
IsNullOrEmpty
ŸŸ #
(
ŸŸ# $

editedName
ŸŸ$ .
)
ŸŸ. /
||
ŸŸ0 2
string
ŸŸ3 9
.
ŸŸ9 :
IsNullOrEmpty
ŸŸ: G
(
ŸŸG H
originalName
ŸŸH T
)
ŸŸT U
)
ŸŸU V
{
⁄⁄ 
return
€€ #
NullParametersHandler
€€ ,
.
€€, -)
HandleNullParametersService
€€- H
(
€€H I
resultToReturn
€€I W
)
€€W X
;
€€X Y
}
‹‹ 
var
›› 
updateInformation
›› !
=
››" #&
UserManagerDataOperation
››$ <
.
››< =#
UpdateUserInformation
››= R
(
››R S

editedName
››S ]
,
››] ^
originalName
››_ k
)
››k l
;
››l m
if
ﬁﬁ 
(
ﬁﬁ 
updateInformation
ﬁﬁ !
.
ﬁﬁ! "
	CodeEvent
ﬁﬁ" +
==
ﬁﬁ, .!
ExceptionDictionary
ﬁﬁ/ B
.
ﬁﬁB C
SUCCESFULL_EVENT
ﬁﬁC S
)
ﬁﬁS T
{
ﬂﬂ 
resultToReturn
‡‡ 
.
‡‡ 
ObjectSaved
‡‡ *
=
‡‡+ ,
updateInformation
‡‡- >
.
‡‡> ?
ObjectSaved
‡‡? J
;
‡‡J K
resultToReturn
·· 
.
·· 
	CodeEvent
·· (
=
··) *!
ExceptionDictionary
··+ >
.
··> ?
SUCCESFULL_EVENT
··? O
;
··O P
}
‚‚ 
else
„„ 
{
‰‰ 
resultToReturn
ÂÂ 
.
ÂÂ 
	CodeEvent
ÂÂ (
=
ÂÂ) *
updateInformation
ÂÂ+ <
.
ÂÂ< =
	CodeEvent
ÂÂ= F
;
ÂÂF G
}
ÊÊ 
return
ÁÁ 
resultToReturn
ÁÁ !
;
ÁÁ! "
}
ËË 	
}
ÑÑ 
}ÖÖ 