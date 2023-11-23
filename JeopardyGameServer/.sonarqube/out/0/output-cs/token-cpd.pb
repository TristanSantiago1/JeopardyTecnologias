ñ‚
åC:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameServer\JeopardyGame.Data\DataAccess\FriendsManagerDataOperation.cs
	namespace 	
JeopardyGame
 
. 
Data 
. 

DataAccess &
{ 
public 

static 
class '
FriendsManagerDataOperation 3
{ 
private 
static 
readonly 
int  #
FRIEND_STATUS_NEW$ 5
=6 7
$num8 9
;9 :
private 
static 
readonly 
int  #)
FRIEND_STATUS_ACCCEPT_REQUEST$ A
=B C
$numD E
;E F
private 
static 
readonly 
int  #
NULL_INT_VALUE$ 2
=3 4
$num5 6
;6 7
public 
static 
GenericClassServer (
<( )
List) -
<- .
Friend. 4
>4 5
>5 6"
ConsultFriendsOfPlayer7 M
(M N
PlayerN T
playerU [
)[ \
{ 	
GenericClassServer 
< 
List #
<# $
Friend$ *
>* +
>+ ,
resultOfOperation- >
=? @
newA D
GenericClassServerE W
<W X
ListX \
<\ ]
Friend] c
>c d
>d e
(e f
)f g
;g h
if 
( 
player 
== 
null 
) 
{ 
return !
NullParametersHandler ,
., -(
HandleNullParametersDataBase- I
(I J
resultOfOperationJ [
)[ \
;\ ]
} 
try 
{ 
using 
( 
var 
	contextBD $
=% &
new' *
JeopardyDBContainer+ >
(> ?
)? @
)@ A
{ 
var 
friendsOfUser %
=& '
	contextBD( 1
.1 2
Friends2 9
.9 :
Where: ?
(? @
Friend@ F
=>G I
FriendJ P
.P Q
Player_IdPlayerQ `
==a c
playerd j
.j k
IdPlayerk s
||t v
Friendw }
.} ~"
PlayerFriend_IdPlayer	~ ì
==
î ñ
player
ó ù
.
ù û
IdPlayer
û ¶
)
¶ ß
.
ß ®
ToList
® Æ
(
Æ Ø
)
Ø ∞
;
∞ ±
resultOfOperation   %
.  % &
ObjectSaved  & 1
=  2 3
friendsOfUser  4 A
;  A B
resultOfOperation"" )
."") *
	CodeEvent""* 3
=""4 5
ExceptionDictionary""6 I
.""I J
SUCCESFULL_EVENT""J Z
;""Z [
}$$ 
}%% 
catch&& 
(&& !
ArgumentNullException&& (
ex&&) +
)&&+ ,
{'' 
resultOfOperation(( !
=((" #
ExceptionHandler(($ 4
.((4 5)
HandleExceptionDataAccesLevel((5 R
(((R S
resultOfOperation((S d
,((d e
ex((f h
)((h i
;((i j
ExceptionHandler))  
.))  !
LogException))! -
())- .
ex)). 0
,))0 1
ExceptionDictionary))2 E
.))E F
FATAL_EXCEPTION))F U
)))U V
;))V W
}** 
catch++ 
(++ 
EntityException++ "
ex++# %
)++% &
{,, 
resultOfOperation-- !
=--" #
ExceptionHandler--$ 4
.--4 5)
HandleExceptionDataAccesLevel--5 R
(--R S
resultOfOperation--S d
,--d e
ex--f h
)--h i
;--i j
ExceptionHandler..  
...  !
LogException..! -
(..- .
ex... 0
,..0 1
ExceptionDictionary..2 E
...E F
FATAL_EXCEPTION..F U
)..U V
;..V W
}// 
catch00 
(00 
SqlException00 
ex00  "
)00" #
{11 
resultOfOperation22 !
=22" #
ExceptionHandler22$ 4
.224 5)
HandleExceptionDataAccesLevel225 R
(22R S
resultOfOperation22S d
,22d e
ex22f h
)22h i
;22i j
ExceptionHandler33  
.33  !
LogException33! -
(33- .
ex33. 0
,330 1
ExceptionDictionary332 E
.33E F
FATAL_EXCEPTION33F U
)33U V
;33V W
}44 
return55 
resultOfOperation55 $
;55$ %
}66 	
public88 
static88 
GenericClassServer88 (
<88( )
List88) -
<88- .
Player88. 4
>884 5
>885 6!
Get20NotFriendsPlayer887 L
(88L M
Player88M S
player88T Z
)88Z [
{99 	
GenericClassServer:: 
<:: 
List:: #
<::# $
Player::$ *
>::* +
>::+ ,
resultOfOperation::- >
=::? @
new::A D
GenericClassServer::E W
<::W X
List::X \
<::\ ]
Player::] c
>::c d
>::d e
(::e f
)::f g
;::g h
if;; 
(;; 
player;; 
==;; 
null;; 
);; 
{<< 
return== !
NullParametersHandler== ,
.==, -(
HandleNullParametersDataBase==- I
(==I J
resultOfOperation==J [
)==[ \
;==\ ]
}>> 
try?? 
{@@ 
usingAA 
(AA 
varAA 
	contextBDAA $
=AA% &
newAA' *
JeopardyDBContainerAA+ >
(AA> ?
)AA? @
)AA@ A
{BB 
varCC 
friendsOfUserCC %
=CC& '"
ConsultFriendsOfPlayerCC( >
(CC> ?
playerCC? E
)CCE F
.CCF G
ObjectSavedCCG R
;CCR S
ListDD 
<DD 
intDD 
>DD 

idsFriendsDD (
=DD) *
newDD+ .
ListDD/ 3
<DD3 4
intDD4 7
>DD7 8
(DD8 9
)DD9 :
;DD: ;
ifEE 
(EE 
friendsOfUserEE $
!=EE% '
nullEE( ,
)EE, -
{FF 
foreachGG 
(GG  !
varGG! $
friendGG% +
inGG, .
friendsOfUserGG/ <
)GG< =
{HH 
ifII 
(II  
friendII  &
.II& '
Player_IdPlayerII' 6
==II7 9
playerII: @
.II@ A
IdPlayerIIA I
)III J
{JJ 

idsFriendsKK  *
.KK* +
AddKK+ .
(KK. /
friendKK/ 5
.KK5 6!
PlayerFriend_IdPlayerKK6 K
)KKK L
;KKL M
}LL 
elseMM  
{NN 

idsFriendsOO  *
.OO* +
AddOO+ .
(OO. /
friendOO/ 5
.OO5 6
Player_IdPlayerOO6 E
)OOE F
;OOF G
}PP 
}QQ 

idsFriendsRR "
.RR" #
AddRR# &
(RR& '
playerRR' -
.RR- .
IdPlayerRR. 6
)RR6 7
;RR7 8
varSS 
playersNotFriendsSS -
=SS. /
	contextBDSS0 9
.SS9 :
PlayersSS: A
.SSA B
WhereSSB G
(SSG H
playerDataBaseSSH V
=>SSW Y
!SSZ [

idsFriendsSS[ e
.SSe f
ContainsSSf n
(SSn o
playerDataBaseSSo }
.SS} ~
IdPlayer	SS~ Ü
)
SSÜ á
)
SSá à
.
SSà â
Take
SSâ ç
(
SSç é
$num
SSé ê
)
SSê ë
.
SSë í
ToList
SSí ò
(
SSò ô
)
SSô ö
;
SSö õ
resultOfOperationTT )
.TT) *
ObjectSavedTT* 5
=TT6 7
playersNotFriendsTT8 I
;TTI J
resultOfOperationVV -
.VV- .
	CodeEventVV. 7
=VV8 9
ExceptionDictionaryVV: M
.VVM N
SUCCESFULL_EVENTVVN ^
;VV^ _
}XX 
elseYY 
{ZZ 
resultOfOperation[[ )
.[[) *
ObjectSaved[[* 5
=[[6 7
null[[8 <
;[[< =
resultOfOperation\\ )
.\\) *
	CodeEvent\\* 3
=\\4 5
ExceptionDictionary\\6 I
.\\I J
UNSUCCESFULL_EVENT\\J \
;\\\ ]
}]] 
}^^ 
}__ 
catch`` 
(`` !
ArgumentNullException`` (
ex``) +
)``+ ,
{aa 
resultOfOperationbb !
=bb" #
ExceptionHandlerbb$ 4
.bb4 5)
HandleExceptionDataAccesLevelbb5 R
(bbR S
resultOfOperationbbS d
,bbd e
exbbf h
)bbh i
;bbi j
ExceptionHandlercc  
.cc  !
LogExceptioncc! -
(cc- .
excc. 0
,cc0 1
ExceptionDictionarycc2 E
.ccE F
FATAL_EXCEPTIONccF U
)ccU V
;ccV W
}dd 
catchee 
(ee 
EntityExceptionee "
exee# %
)ee% &
{ff 
resultOfOperationgg !
=gg" #
ExceptionHandlergg$ 4
.gg4 5)
HandleExceptionDataAccesLevelgg5 R
(ggR S
resultOfOperationggS d
,ggd e
exggf h
)ggh i
;ggi j
ExceptionHandlerhh  
.hh  !
LogExceptionhh! -
(hh- .
exhh. 0
,hh0 1
ExceptionDictionaryhh2 E
.hhE F
FATAL_EXCEPTIONhhF U
)hhU V
;hhV W
}ii 
catchjj 
(jj 
SqlExceptionjj 
exjj  "
)jj" #
{kk 
resultOfOperationll !
=ll" #
ExceptionHandlerll$ 4
.ll4 5)
HandleExceptionDataAccesLevelll5 R
(llR S
resultOfOperationllS d
,lld e
exllf h
)llh i
;lli j
ExceptionHandlermm  
.mm  !
LogExceptionmm! -
(mm- .
exmm. 0
,mm0 1
ExceptionDictionarymm2 E
.mmE F
FATAL_EXCEPTIONmmF U
)mmU V
;mmV W
}nn 
returnoo 
resultOfOperationoo $
;oo$ %
}pp 	
publicrr 
staticrr 
GenericClassServerrr )
<rr) *
intrr* -
>rr- .!
DeleteFriendsRegisterrr/ D
(rrD E
intrrE H
idPlayerFriend1rrI X
,rrX Y
intrrZ ]
idPlayerFriend2rr^ m
)rrm n
{ss 	
GenericClassServertt 
<tt 
inttt "
>tt" #
resultOfOperationtt$ 5
=tt6 7
newtt8 ;
GenericClassServertt< N
<ttN O
intttO R
>ttR S
(ttS T
)ttT U
;ttU V
ifuu 
(uu 
idPlayerFriend1uu 
==uu  "
NULL_INT_VALUEuu# 1
||uu2 4
idPlayerFriend2uu5 D
==uuE G
NULL_INT_VALUEuuH V
)uuV W
{vv 
returnww !
NullParametersHandlerww ,
.ww, -(
HandleNullParametersDataBaseww- I
(wwI J
resultOfOperationwwJ [
)ww[ \
;ww\ ]
}xx 
tryyy 
{zz 
using{{ 
({{ 
var{{ 
	contextBD{{ $
={{% &
new{{' *
JeopardyDBContainer{{+ >
({{> ?
){{? @
){{@ A
{|| 
var}} 
friendshipToDelete}} *
=}}+ ,
	contextBD}}- 6
.}}6 7
Friends}}7 >
.}}> ?
FirstOrDefault}}? M
(}}M N
friendRegistry}}N \
=>}}] _
(}}` a
friendRegistry}}a o
.}}o p
Player_IdPlayer}}p 
==
}}Ä Ç
idPlayerFriend1
}}É í
&&
}}ì ï
friendRegistry
}}ñ §
.
}}§ •#
PlayerFriend_IdPlayer
}}• ∫
==
}}ª Ω
idPlayerFriend2
}}æ Õ
)
}}Õ Œ
||
}}œ —
(
}}“ ”
friendRegistry
}}” ·
.
}}· ‚
Player_IdPlayer
}}‚ Ò
==
}}Ú Ù
idPlayerFriend2
}}ı Ñ
&&
}}Ö á
friendRegistry
}}à ñ
.
}}ñ ó#
PlayerFriend_IdPlayer
}}ó ¨
==
}}≠ Ø
idPlayerFriend1
}}∞ ø
)
}}ø ¿
)
}}¿ ¡
;
}}¡ ¬
	contextBD~~ 
.~~ 
Friends~~ %
.~~% &
Remove~~& ,
(~~, -
friendshipToDelete~~- ?
)~~? @
;~~@ A
int 
resultEvent #
=$ %
	contextBD& /
./ 0
SaveChanges0 ;
(; <
)< =
;= >
resultOfOperation
ÄÄ %
.
ÄÄ% &
ObjectSaved
ÄÄ& 1
=
ÄÄ2 3
resultEvent
ÄÄ4 ?
;
ÄÄ? @
if
ÅÅ 
(
ÅÅ 
resultEvent
ÅÅ #
!=
ÅÅ$ &
NULL_INT_VALUE
ÅÅ' 5
)
ÅÅ5 6
{
ÇÇ 
resultOfOperation
ÉÉ )
.
ÉÉ) *
	CodeEvent
ÉÉ* 3
=
ÉÉ4 5!
ExceptionDictionary
ÉÉ6 I
.
ÉÉI J
SUCCESFULL_EVENT
ÉÉJ Z
;
ÉÉZ [
}
ÑÑ 
else
ÖÖ 
{
ÜÜ 
resultOfOperation
áá )
.
áá) *
	CodeEvent
áá* 3
=
áá4 5!
ExceptionDictionary
áá6 I
.
ááI J 
UNSUCCESFULL_EVENT
ááJ \
;
áá\ ]
}
àà 
}
ââ 
}
ää 
catch
ãã 
(
ãã 
DbUpdateException
ãã $
ex
ãã% '
)
ãã' (
{
åå 
resultOfOperation
çç !
=
çç" #
ExceptionHandler
çç$ 4
.
çç4 5+
HandleExceptionDataAccesLevel
çç5 R
(
ççR S
resultOfOperation
ççS d
,
ççd e
ex
ççf h
)
ççh i
;
ççi j
ExceptionHandler
éé  
.
éé  !
LogException
éé! -
(
éé- .
ex
éé. 0
,
éé0 1!
ExceptionDictionary
éé2 E
.
ééE F
FATAL_EXCEPTION
ééF U
)
ééU V
;
ééV W
}
èè 
catch
êê 
(
êê #
ArgumentNullException
êê (
ex
êê) +
)
êê+ ,
{
ëë 
resultOfOperation
íí !
=
íí" #
ExceptionHandler
íí$ 4
.
íí4 5+
HandleExceptionDataAccesLevel
íí5 R
(
ííR S
resultOfOperation
ííS d
,
ííd e
ex
ííf h
)
ííh i
;
ííi j
ExceptionHandler
ìì  
.
ìì  !
LogException
ìì! -
(
ìì- .
ex
ìì. 0
,
ìì0 1!
ExceptionDictionary
ìì2 E
.
ììE F
FATAL_EXCEPTION
ììF U
)
ììU V
;
ììV W
}
îî 
catch
ïï 
(
ïï 
EntityException
ïï "
ex
ïï# %
)
ïï% &
{
ññ 
resultOfOperation
óó !
=
óó" #
ExceptionHandler
óó$ 4
.
óó4 5+
HandleExceptionDataAccesLevel
óó5 R
(
óóR S
resultOfOperation
óóS d
,
óód e
ex
óóf h
)
óóh i
;
óói j
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
öö 
SqlException
öö 
ex
öö  "
)
öö" #
{
õõ 
resultOfOperation
úú !
=
úú" #
ExceptionHandler
úú$ 4
.
úú4 5+
HandleExceptionDataAccesLevel
úú5 R
(
úúR S
resultOfOperation
úúS d
,
úúd e
ex
úúf h
)
úúh i
;
úúi j
ExceptionHandler
ùù  
.
ùù  !
LogException
ùù! -
(
ùù- .
ex
ùù. 0
,
ùù0 1!
ExceptionDictionary
ùù2 E
.
ùùE F
FATAL_EXCEPTION
ùùF U
)
ùùU V
;
ùùV W
}
ûû 
return
üü 
resultOfOperation
üü $
;
üü$ %
}
†† 	
public
¢¢ 
static
¢¢  
GenericClassServer
¢¢ (
<
¢¢( )
int
¢¢) ,
>
¢¢, -!
AcceptFriendRequest
¢¢. A
(
¢¢A B
int
¢¢B E
idPlayerFriend1
¢¢F U
,
¢¢U V
int
¢¢W Z
idPlayerFriend2
¢¢[ j
)
¢¢j k
{
££ 	 
GenericClassServer
§§ 
<
§§ 
int
§§ "
>
§§" #
resultOfOperation
§§$ 5
=
§§6 7
new
§§8 ; 
GenericClassServer
§§< N
<
§§N O
int
§§O R
>
§§R S
(
§§S T
)
§§T U
;
§§U V
if
•• 
(
•• 
idPlayerFriend1
•• 
==
••  "
NULL_INT_VALUE
••# 1
||
••2 4
idPlayerFriend2
••5 D
==
••E G
NULL_INT_VALUE
••H V
)
••V W
{
¶¶ 
return
ßß #
NullParametersHandler
ßß ,
.
ßß, -*
HandleNullParametersDataBase
ßß- I
(
ßßI J
resultOfOperation
ßßJ [
)
ßß[ \
;
ßß\ ]
}
®® 
try
©© 
{
™™ 
using
´´ 
(
´´ 
var
´´ 
	contextBD
´´ $
=
´´% &
new
´´' *!
JeopardyDBContainer
´´+ >
(
´´> ?
)
´´? @
)
´´@ A
{
¨¨ 
var
≠≠  
friendshipToChange
≠≠ *
=
≠≠+ ,
	contextBD
≠≠- 6
.
≠≠6 7
Friends
≠≠7 >
.
≠≠> ?
FirstOrDefault
≠≠? M
(
≠≠M N
friendRegistry
≠≠N \
=>
≠≠] _
(
≠≠` a
friendRegistry
≠≠a o
.
≠≠o p
Player_IdPlayer
≠≠p 
==≠≠Ä Ç
idPlayerFriend1≠≠É í
&&≠≠ì ï
friendRegistry≠≠ñ §
.≠≠§ •%
PlayerFriend_IdPlayer≠≠• ∫
==≠≠ª Ω
idPlayerFriend2≠≠æ Õ
)≠≠Õ Œ
||≠≠œ —
(≠≠“ ”
friendRegistry≠≠” ·
.≠≠· ‚
Player_IdPlayer≠≠‚ Ò
==≠≠Ú Ù
idPlayerFriend2≠≠ı Ñ
&&≠≠Ö á
friendRegistry≠≠à ñ
.≠≠ñ ó%
PlayerFriend_IdPlayer≠≠ó ¨
==≠≠≠ Ø
idPlayerFriend1≠≠∞ ø
)≠≠ø ¿
)≠≠¿ ¡
;≠≠¡ ¬ 
friendshipToChange
ÆÆ &
.
ÆÆ& '
IdFriendState
ÆÆ' 4
=
ÆÆ5 6+
FRIEND_STATUS_ACCCEPT_REQUEST
ÆÆ7 T
;
ÆÆT U
	contextBD
ØØ 
.
ØØ 
Entry
ØØ #
(
ØØ# $ 
friendshipToChange
ØØ$ 6
)
ØØ6 7
.
ØØ7 8
State
ØØ8 =
=
ØØ> ?
EntityState
ØØ@ K
.
ØØK L
Modified
ØØL T
;
ØØT U
int
∞∞ 
resultEvent
∞∞ #
=
∞∞$ %
	contextBD
∞∞& /
.
∞∞/ 0
SaveChanges
∞∞0 ;
(
∞∞; <
)
∞∞< =
;
∞∞= >
resultOfOperation
±± %
.
±±% &
ObjectSaved
±±& 1
=
±±2 3
resultEvent
±±4 ?
;
±±? @
if
≤≤ 
(
≤≤ 
resultEvent
≤≤ #
!=
≤≤$ &
NULL_INT_VALUE
≤≤' 5
)
≤≤5 6
{
≥≥ 
resultOfOperation
¥¥ )
.
¥¥) *
	CodeEvent
¥¥* 3
=
¥¥4 5!
ExceptionDictionary
¥¥6 I
.
¥¥I J
SUCCESFULL_EVENT
¥¥J Z
;
¥¥Z [
}
µµ 
else
∂∂ 
{
∑∑ 
resultOfOperation
∏∏ )
.
∏∏) *
	CodeEvent
∏∏* 3
=
∏∏4 5!
ExceptionDictionary
∏∏6 I
.
∏∏I J 
UNSUCCESFULL_EVENT
∏∏J \
;
∏∏\ ]
}
ππ 
}
∫∫ 
}
ªª 
catch
ºº 
(
ºº 
DbUpdateException
ºº $
ex
ºº% '
)
ºº' (
{
ΩΩ 
resultOfOperation
ææ !
=
ææ" #
ExceptionHandler
ææ$ 4
.
ææ4 5+
HandleExceptionDataAccesLevel
ææ5 R
(
ææR S
resultOfOperation
ææS d
,
ææd e
ex
ææf h
)
ææh i
;
ææi j
ExceptionHandler
øø  
.
øø  !
LogException
øø! -
(
øø- .
ex
øø. 0
,
øø0 1!
ExceptionDictionary
øø2 E
.
øøE F
FATAL_EXCEPTION
øøF U
)
øøU V
;
øøV W
}
¿¿ 
catch
¡¡ 
(
¡¡ #
ArgumentNullException
¡¡ (
ex
¡¡) +
)
¡¡+ ,
{
¬¬ 
resultOfOperation
√√ !
=
√√" #
ExceptionHandler
√√$ 4
.
√√4 5+
HandleExceptionDataAccesLevel
√√5 R
(
√√R S
resultOfOperation
√√S d
,
√√d e
ex
√√f h
)
√√h i
;
√√i j
ExceptionHandler
ƒƒ  
.
ƒƒ  !
LogException
ƒƒ! -
(
ƒƒ- .
ex
ƒƒ. 0
,
ƒƒ0 1!
ExceptionDictionary
ƒƒ2 E
.
ƒƒE F
FATAL_EXCEPTION
ƒƒF U
)
ƒƒU V
;
ƒƒV W
}
≈≈ 
catch
∆∆ 
(
∆∆ 
EntityException
∆∆ "
ex
∆∆# %
)
∆∆% &
{
«« 
resultOfOperation
»» !
=
»»" #
ExceptionHandler
»»$ 4
.
»»4 5+
HandleExceptionDataAccesLevel
»»5 R
(
»»R S
resultOfOperation
»»S d
,
»»d e
ex
»»f h
)
»»h i
;
»»i j
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
ÀÀ 
SqlException
ÀÀ 
ex
ÀÀ  "
)
ÀÀ" #
{
ÃÃ 
resultOfOperation
ÕÕ !
=
ÕÕ" #
ExceptionHandler
ÕÕ$ 4
.
ÕÕ4 5+
HandleExceptionDataAccesLevel
ÕÕ5 R
(
ÕÕR S
resultOfOperation
ÕÕS d
,
ÕÕd e
ex
ÕÕf h
)
ÕÕh i
;
ÕÕi j
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
resultOfOperation
–– $
;
––$ %
}
—— 	
public
”” 
static
””  
GenericClassServer
”” (
<
””( )
int
””) ,
>
””, -
SendFriendRequest
””. ?
(
””? @
int
””@ C
idPlayerSender
””D R
,
””R S
int
””T W
idPlayerCatcher
””X g
)
””g h
{
‘‘ 	 
GenericClassServer
’’ 
<
’’ 
int
’’ "
>
’’" #
resultOfOperation
’’$ 5
=
’’6 7
new
’’8 ; 
GenericClassServer
’’< N
<
’’N O
int
’’O R
>
’’R S
(
’’S T
)
’’T U
;
’’U V
if
÷÷ 
(
÷÷ 
idPlayerCatcher
÷÷ 
==
÷÷  "
NULL_INT_VALUE
÷÷# 1
||
÷÷2 4
idPlayerSender
÷÷5 C
==
÷÷D F
NULL_INT_VALUE
÷÷G U
)
÷÷U V
{
◊◊ 
return
ÿÿ #
NullParametersHandler
ÿÿ ,
.
ÿÿ, -*
HandleNullParametersDataBase
ÿÿ- I
(
ÿÿI J
resultOfOperation
ÿÿJ [
)
ÿÿ[ \
;
ÿÿ\ ]
}
ŸŸ 
try
⁄⁄ 
{
€€ 
using
‹‹ 
(
‹‹ 
var
‹‹ 
	contextBD
‹‹ $
=
‹‹% &
new
‹‹' *!
JeopardyDBContainer
‹‹+ >
(
‹‹> ?
)
‹‹? @
)
‹‹@ A
{
›› 
Friend
ﬁﬁ 
newRelationShip
ﬁﬁ *
=
ﬁﬁ+ ,
new
ﬁﬁ- 0
Friend
ﬁﬁ1 7
(
ﬁﬁ7 8
)
ﬁﬁ8 9
;
ﬁﬁ9 :
newRelationShip
ﬂﬂ #
.
ﬂﬂ# $
IdFriendState
ﬂﬂ$ 1
=
ﬂﬂ2 3
NULL_INT_VALUE
ﬂﬂ4 B
;
ﬂﬂB C
newRelationShip
‡‡ #
.
‡‡# $
Player_IdPlayer
‡‡$ 3
=
‡‡4 5
idPlayerSender
‡‡6 D
;
‡‡D E
newRelationShip
·· #
.
··# $#
PlayerFriend_IdPlayer
··$ 9
=
··: ;
idPlayerCatcher
··< K
;
··K L
newRelationShip
‚‚ #
.
‚‚# $
IdFriendState
‚‚$ 1
=
‚‚2 3
FRIEND_STATUS_NEW
‚‚4 E
;
‚‚E F
	contextBD
„„ 
.
„„ 
Friends
„„ %
.
„„% &
Add
„„& )
(
„„) *
newRelationShip
„„* 9
)
„„9 :
;
„„: ;
int
‰‰ 
resultEvent
‰‰ #
=
‰‰$ %
	contextBD
‰‰& /
.
‰‰/ 0
SaveChanges
‰‰0 ;
(
‰‰; <
)
‰‰< =
;
‰‰= >
resultOfOperation
ÂÂ %
.
ÂÂ% &
ObjectSaved
ÂÂ& 1
=
ÂÂ2 3
resultEvent
ÂÂ4 ?
;
ÂÂ? @
if
ÊÊ 
(
ÊÊ 
resultEvent
ÊÊ #
!=
ÊÊ$ &
NULL_INT_VALUE
ÊÊ' 5
)
ÊÊ5 6
{
ÁÁ 
resultOfOperation
ËË )
.
ËË) *
	CodeEvent
ËË* 3
=
ËË4 5!
ExceptionDictionary
ËË6 I
.
ËËI J
SUCCESFULL_EVENT
ËËJ Z
;
ËËZ [
}
ÈÈ 
else
ÍÍ 
{
ÎÎ 
resultOfOperation
ÏÏ )
.
ÏÏ) *
	CodeEvent
ÏÏ* 3
=
ÏÏ4 5!
ExceptionDictionary
ÏÏ6 I
.
ÏÏI J 
UNSUCCESFULL_EVENT
ÏÏJ \
;
ÏÏ\ ]
}
ÌÌ 
}
ÓÓ 
}
ÔÔ 
catch
 
(
 
DbUpdateException
 $
ex
% '
)
' (
{
ÒÒ 
resultOfOperation
ÚÚ !
=
ÚÚ" #
ExceptionHandler
ÚÚ$ 4
.
ÚÚ4 5+
HandleExceptionDataAccesLevel
ÚÚ5 R
(
ÚÚR S
resultOfOperation
ÚÚS d
,
ÚÚd e
ex
ÚÚf h
)
ÚÚh i
;
ÚÚi j
ExceptionHandler
ÛÛ  
.
ÛÛ  !
LogException
ÛÛ! -
(
ÛÛ- .
ex
ÛÛ. 0
,
ÛÛ0 1!
ExceptionDictionary
ÛÛ2 E
.
ÛÛE F
FATAL_EXCEPTION
ÛÛF U
)
ÛÛU V
;
ÛÛV W
}
ÙÙ 
catch
ıı 
(
ıı #
ArgumentNullException
ıı (
ex
ıı) +
)
ıı+ ,
{
ˆˆ 
resultOfOperation
˜˜ !
=
˜˜" #
ExceptionHandler
˜˜$ 4
.
˜˜4 5+
HandleExceptionDataAccesLevel
˜˜5 R
(
˜˜R S
resultOfOperation
˜˜S d
,
˜˜d e
ex
˜˜f h
)
˜˜h i
;
˜˜i j
ExceptionHandler
¯¯  
.
¯¯  !
LogException
¯¯! -
(
¯¯- .
ex
¯¯. 0
,
¯¯0 1!
ExceptionDictionary
¯¯2 E
.
¯¯E F
FATAL_EXCEPTION
¯¯F U
)
¯¯U V
;
¯¯V W
}
˘˘ 
catch
˙˙ 
(
˙˙ 
EntityException
˙˙ "
ex
˙˙# %
)
˙˙% &
{
˚˚ 
resultOfOperation
¸¸ !
=
¸¸" #
ExceptionHandler
¸¸$ 4
.
¸¸4 5+
HandleExceptionDataAccesLevel
¸¸5 R
(
¸¸R S
resultOfOperation
¸¸S d
,
¸¸d e
ex
¸¸f h
)
¸¸h i
;
¸¸i j
ExceptionHandler
˝˝  
.
˝˝  !
LogException
˝˝! -
(
˝˝- .
ex
˝˝. 0
,
˝˝0 1!
ExceptionDictionary
˝˝2 E
.
˝˝E F
FATAL_EXCEPTION
˝˝F U
)
˝˝U V
;
˝˝V W
}
˛˛ 
catch
ˇˇ 
(
ˇˇ 
SqlException
ˇˇ 
ex
ˇˇ  "
)
ˇˇ" #
{
ÄÄ 
resultOfOperation
ÅÅ !
=
ÅÅ" #
ExceptionHandler
ÅÅ$ 4
.
ÅÅ4 5+
HandleExceptionDataAccesLevel
ÅÅ5 R
(
ÅÅR S
resultOfOperation
ÅÅS d
,
ÅÅd e
ex
ÅÅf h
)
ÅÅh i
;
ÅÅi j
ExceptionHandler
ÇÇ  
.
ÇÇ  !
LogException
ÇÇ! -
(
ÇÇ- .
ex
ÇÇ. 0
,
ÇÇ0 1!
ExceptionDictionary
ÇÇ2 E
.
ÇÇE F
FATAL_EXCEPTION
ÇÇF U
)
ÇÇU V
;
ÇÇV W
}
ÉÉ 
return
ÑÑ 
resultOfOperation
ÑÑ $
;
ÑÑ$ %
}
ÖÖ 	
}
áá 
}àà ⁄y
ÄC:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameServer\JeopardyGame.Data\DataAccess\LoginOperations.cs
	namespace 	
JeopardyGame
 
. 
Data 
. 

DataAccess &
{ 
public 

static 
class 
LoginOperations '
{ 
private 
static 
readonly 
int  #
NULL_INT_VALUE$ 2
=3 4
$num5 6
;6 7
private 
static 
readonly 
int  #
VALUE_EXIST$ /
=0 1
$num2 3
;3 4
private 
static 
readonly 
int  #
VALUE_NOT_EXIST$ 3
=4 5
$num6 7
;7 8
public 
static 
GenericClassServer (
<( )
bool) -
>- .
VerifyPassword/ =
(= >
string> D
passwordE M
,M N
stringO U
hashedPasswordV d
)d e
{ 	
GenericClassServer 
< 
bool #
># $
resultOfOperation% 6
=7 8
new9 <
GenericClassServer= O
<O P
boolP T
>T U
(U V
)V W
;W X
if 
( 
password 
. 
Length 
==  "
NULL_INT_VALUE# 1
||2 4
hashedPassword5 C
.C D
LengthD J
==K M
NULL_INT_VALUEN \
)\ ]
{ 
return !
NullParametersHandler ,
., -(
HandleNullParametersDataBase- I
(I J
resultOfOperationJ [
)[ \
;\ ]
} 
try 
{ 
byte 
[ 
] 
	hashBytes  
=! "
Convert# *
.* +
FromBase64String+ ;
(; <
hashedPassword< J
)J K
;K L
byte 
[ 
] 
hash 
= 
HasherPassword ,
(, -
password- 5
,5 6
hashedPassword7 E
,E F
	hashBytesG P
)P Q
;Q R
resultOfOperation !
.! "
ObjectSaved" -
=. /
true0 4
;4 5
resultOfOperation !
.! "
	CodeEvent" +
=, -
ExceptionDictionary. A
.A B
SUCCESFULL_EVENTB R
;R S
for 
( 
int 
index 
=  
$num! "
;" #
index$ )
<* +
$num, .
;. /
index0 5
++5 7
)7 8
{   
if!! 
(!! 
	hashBytes!! !
[!!! "
index!!" '
+!!( )
$num!!* ,
]!!, -
!=!!. 0
hash!!1 5
[!!5 6
index!!6 ;
]!!; <
)!!< =
{"" 
resultOfOperation## )
.##) *
ObjectSaved##* 5
=##6 7
false##8 =
;##= >
resultOfOperation$$ )
.$$) *
	CodeEvent$$* 3
=$$4 5
ExceptionDictionary$$6 I
.$$I J
UNSUCCESFULL_EVENT$$J \
;$$\ ]
break%% 
;%% 
}&& 
}'' 
}(( 
catch)) 
()) 
FormatException)) "
ex))# %
)))% &
{** 
resultOfOperation++ !
=++" #
ExceptionHandler++$ 4
.++4 5)
HandleExceptionDataAccesLevel++5 R
(++R S
resultOfOperation++S d
,++d e
ex++f h
)++h i
;++i j
ExceptionHandler,,  
.,,  !
LogException,,! -
(,,- .
ex,,. 0
,,,0 1
ExceptionDictionary,,2 E
.,,E F
FATAL_EXCEPTION,,F U
),,U V
;,,V W
}-- 
catch.. 
(.. !
ArgumentNullException.. (
ex..) +
)..+ ,
{// 
resultOfOperation00 !
=00" #
ExceptionHandler00$ 4
.004 5)
HandleExceptionDataAccesLevel005 R
(00R S
resultOfOperation00S d
,00d e
ex00f h
)00h i
;00i j
ExceptionHandler11  
.11  !
LogException11! -
(11- .
ex11. 0
,110 1
ExceptionDictionary112 E
.11E F
FATAL_EXCEPTION11F U
)11U V
;11V W
}22 
catch33 
(33 
RankException33  
ex33! #
)33# $
{44 
resultOfOperation55 !
=55" #
ExceptionHandler55$ 4
.554 5)
HandleExceptionDataAccesLevel555 R
(55R S
resultOfOperation55S d
,55d e
ex55f h
)55h i
;55i j
ExceptionHandler66  
.66  !
LogException66! -
(66- .
ex66. 0
,660 1
ExceptionDictionary662 E
.66E F
FATAL_EXCEPTION66F U
)66U V
;66V W
}77 
return88 
resultOfOperation88 $
;88$ %
}99 	
private;; 
static;; 
byte;; 
[;; 
];; 
HasherPassword;; ,
(;;, -
string;;- 3
password;;4 <
,;;< =
string;;> D
hashedPassword;;E S
,;;S T
byte;;U Y
[;;Y Z
];;Z [
	hashBytes;;\ e
);;e f
{<< 	
try== 
{>> 
byte?? 
[?? 
]?? 
salt?? 
=?? 
new?? !
byte??" &
[??& '
$num??' )
]??) *
;??* +
Array@@ 
.@@ 
Copy@@ 
(@@ 
	hashBytes@@ $
,@@$ %
$num@@& '
,@@' (
salt@@) -
,@@- .
$num@@/ 0
,@@0 1
$num@@2 4
)@@4 5
;@@5 6
varAA 
passBaseKeyDerFun2AA &
=AA' (
newAA) ,
Rfc2898DeriveBytesAA- ?
(AA? @
passwordAA@ H
,AAH I
saltAAJ N
,AAN O
$numAAP U
,AAU V
HashAlgorithmNameAAW h
.AAh i
SHA256AAi o
)AAo p
;AAp q
byteBB 
[BB 
]BB 
hashBB 
=BB 
passBaseKeyDerFun2BB 0
.BB0 1
GetBytesBB1 9
(BB9 :
$numBB: <
)BB< =
;BB= >
returnCC 
hashCC 
;CC 
}DD 
catchEE 
(EE 
RankExceptionEE  
exEE! #
)EE# $
{FF 
throwGG 
newGG 
RankExceptionGG '
(GG' (
)GG( )
;GG) *
}HH 
}II 	
publicKK 
staticKK 
GenericClassServerKK (
<KK( )
intKK) ,
>KK, - 
ValidateIfEmailExistKK. B
(KKB C
StringKKC I
emailKKJ O
)KKO P
{LL 	
GenericClassServerMM 
<MM 
intMM "
>MM" #
resultOfOperationMM$ 5
=MM6 7
newMM8 ;
GenericClassServerMM< N
<MMN O
intMMO R
>MMR S
(MMS T
)MMT U
;MMU V
ifNN 
(NN 
stringNN 
.NN 
IsNullOrEmptyNN $
(NN$ %
emailNN% *
)NN* +
)NN+ ,
{OO 
returnPP !
NullParametersHandlerPP ,
.PP, -(
HandleNullParametersDataBasePP- I
(PPI J
resultOfOperationPPJ [
)PP[ \
;PP\ ]
}QQ 
tryRR 
{SS 
usingTT 
(TT 
varTT 
	contextBDTT $
=TT% &
newTT' *
JeopardyDBContainerTT+ >
(TT> ?
)TT? @
)TT@ A
{UU 
boolVV 
existVV 
=VV  
	contextBDVV! *
.VV* +
UsersVV+ 0
.VV0 1
AnyVV1 4
(VV4 5
userVV5 9
=>VV: <
userVV= A
.VVA B
EmailAddressVVB N
==VVO Q
emailVVR W
)VVW X
;VVX Y
ifWW 
(WW 
!WW 
existWW 
)WW 
{XX 
resultOfOperationYY )
.YY) *
ObjectSavedYY* 5
=YY6 7
VALUE_NOT_EXISTYY8 G
;YYG H
resultOfOperationZZ )
.ZZ) *
	CodeEventZZ* 3
=ZZ4 5
ExceptionDictionaryZZ6 I
.ZZI J
SUCCESFULL_EVENTZZJ Z
;ZZZ [
}[[ 
else\\ 
{]] 
resultOfOperation^^ )
.^^) *
	CodeEvent^^* 3
=^^4 5
ExceptionDictionary^^6 I
.^^I J
UNSUCCESFULL_EVENT^^J \
;^^\ ]
resultOfOperation__ )
.__) *
ObjectSaved__* 5
=__6 7
VALUE_EXIST__8 C
;__C D
}`` 
}aa 
}bb 
catchcc 
(cc !
ArgumentNullExceptioncc (
excc) +
)cc+ ,
{dd 
resultOfOperationee !
=ee" #
ExceptionHandleree$ 4
.ee4 5)
HandleExceptionDataAccesLevelee5 R
(eeR S
resultOfOperationeeS d
,eed e
exeef h
)eeh i
;eei j
ExceptionHandlerff  
.ff  !
LogExceptionff! -
(ff- .
exff. 0
,ff0 1
ExceptionDictionaryff2 E
.ffE F
FATAL_EXCEPTIONffF U
)ffU V
;ffV W
}gg 
catchhh 
(hh 
EntityExceptionhh "
exhh# %
)hh% &
{ii 
resultOfOperationjj !
=jj" #
ExceptionHandlerjj$ 4
.jj4 5)
HandleExceptionDataAccesLeveljj5 R
(jjR S
resultOfOperationjjS d
,jjd e
exjjf h
)jjh i
;jji j
ExceptionHandlerkk  
.kk  !
LogExceptionkk! -
(kk- .
exkk. 0
,kk0 1
ExceptionDictionarykk2 E
.kkE F
FATAL_EXCEPTIONkkF U
)kkU V
;kkV W
}ll 
catchmm 
(mm 
SqlExceptionmm 
exmm  "
)mm" #
{nn 
resultOfOperationoo !
=oo" #
ExceptionHandleroo$ 4
.oo4 5)
HandleExceptionDataAccesLeveloo5 R
(ooR S
resultOfOperationooS d
,ood e
exoof h
)ooh i
;ooi j
ExceptionHandlerpp  
.pp  !
LogExceptionpp! -
(pp- .
expp. 0
,pp0 1
ExceptionDictionarypp2 E
.ppE F
FATAL_EXCEPTIONppF U
)ppU V
;ppV W
}qq 
returnrr 
resultOfOperationrr $
;rr$ %
}ss 	
publicuu 
staticuu 
GenericClassServeruu (
<uu( )
intuu) ,
>uu, -#
ValidateIfUserNameExistuu. E
(uuE F
StringuuF L
userNameuuM U
)uuU V
{vv 	
GenericClassServerww 
<ww 
intww "
>ww" #
resultOfOperationww$ 5
=ww6 7
newww8 ;
GenericClassServerww< N
<wwN O
intwwO R
>wwR S
(wwS T
)wwT U
;wwU V
ifxx 
(xx 
stringxx 
.xx 
IsNullOrEmptyxx $
(xx$ %
userNamexx% -
)xx- .
)xx. /
{yy 
returnzz !
NullParametersHandlerzz ,
.zz, -(
HandleNullParametersDataBasezz- I
(zzI J
resultOfOperationzzJ [
)zz[ \
;zz\ ]
}{{ 
try|| 
{}} 
using~~ 
(~~ 
var~~ 
	contextBD~~ $
=~~% &
new~~' *
JeopardyDBContainer~~+ >
(~~> ?
)~~? @
)~~@ A
{ 
bool
ÄÄ 
exist
ÄÄ 
=
ÄÄ  
	contextBD
ÄÄ! *
.
ÄÄ* +
Users
ÄÄ+ 0
.
ÄÄ0 1
Any
ÄÄ1 4
(
ÄÄ4 5
user
ÄÄ5 9
=>
ÄÄ: <
user
ÄÄ= A
.
ÄÄA B
UserName
ÄÄB J
==
ÄÄK M
userName
ÄÄN V
)
ÄÄV W
;
ÄÄW X
if
ÅÅ 
(
ÅÅ 
!
ÅÅ 
exist
ÅÅ 
)
ÅÅ 
{
ÇÇ 
resultOfOperation
ÉÉ )
.
ÉÉ) *
ObjectSaved
ÉÉ* 5
=
ÉÉ6 7
VALUE_NOT_EXIST
ÉÉ8 G
;
ÉÉG H
resultOfOperation
ÑÑ )
.
ÑÑ) *
	CodeEvent
ÑÑ* 3
=
ÑÑ4 5!
ExceptionDictionary
ÑÑ6 I
.
ÑÑI J
SUCCESFULL_EVENT
ÑÑJ Z
;
ÑÑZ [
}
ÖÖ 
else
ÜÜ 
{
áá 
resultOfOperation
àà )
.
àà) *
	CodeEvent
àà* 3
=
àà4 5!
ExceptionDictionary
àà6 I
.
ààI J 
UNSUCCESFULL_EVENT
ààJ \
;
àà\ ]
resultOfOperation
ââ )
.
ââ) *
ObjectSaved
ââ* 5
=
ââ6 7
VALUE_EXIST
ââ8 C
;
ââC D
}
ää 
}
ãã 
}
åå 
catch
çç 
(
çç #
ArgumentNullException
çç (
ex
çç) +
)
çç+ ,
{
éé 
resultOfOperation
èè !
=
èè" #
ExceptionHandler
èè$ 4
.
èè4 5+
HandleExceptionDataAccesLevel
èè5 R
(
èèR S
resultOfOperation
èèS d
,
èèd e
ex
èèf h
)
èèh i
;
èèi j
ExceptionHandler
êê  
.
êê  !
LogException
êê! -
(
êê- .
ex
êê. 0
,
êê0 1!
ExceptionDictionary
êê2 E
.
êêE F
FATAL_EXCEPTION
êêF U
)
êêU V
;
êêV W
}
ëë 
catch
íí 
(
íí 
EntityException
íí "
ex
íí# %
)
íí% &
{
ìì 
resultOfOperation
îî !
=
îî" #
ExceptionHandler
îî$ 4
.
îî4 5+
HandleExceptionDataAccesLevel
îî5 R
(
îîR S
resultOfOperation
îîS d
,
îîd e
ex
îîf h
)
îîh i
;
îîi j
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
óó 
SqlException
óó 
ex
óó  "
)
óó" #
{
òò 
resultOfOperation
ôô !
=
ôô" #
ExceptionHandler
ôô$ 4
.
ôô4 5+
HandleExceptionDataAccesLevel
ôô5 R
(
ôôR S
resultOfOperation
ôôS d
,
ôôd e
ex
ôôf h
)
ôôh i
;
ôôi j
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
õõ 
return
úú 
resultOfOperation
úú $
;
úú$ %
}
ùù 	
}
üü 
}†† ˇÑ
âC:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameServer\JeopardyGame.Data\DataAccess\UserManagerDataOperation.cs
	namespace 	
JeopardyGame
 
. 
Data 
. 

DataAccess &
{ 
public 

static 
class $
UserManagerDataOperation 0
{ 
private 
static 
readonly 
int  #
NULL_INT_VALUE$ 2
=3 4
$num5 6
;6 7
private 
static 
readonly 
int  #
USER_NOT_FOUND$ 2
=3 4
-5 6
$num6 7
;7 8
private 
static 
readonly 
int  #
OPERATION_DONE$ 2
=3 4
$num5 6
;6 7
public 
static 
GenericClassServer (
<( )
User) -
>- .
SaveUserInDataBase/ A
(A B
UserB F
userG K
)K L
{ 	
GenericClassServer 
< 
User #
># $
resultOfOperation% 6
=8 9
new: =
GenericClassServer> P
<P Q
UserQ U
>U V
(V W
)W X
;X Y
if 
( 
user 
== 
null 
) 
{   
return!! !
NullParametersHandler!! ,
.!!, -(
HandleNullParametersDataBase!!- I
(!!I J
resultOfOperation!!J [
)!![ \
;!!\ ]
}"" 
try## 
{$$ 
using%% 
(%% 
var%% 
	contextBD%% $
=%%% &
new%%' *
JeopardyDBContainer%%+ >
(%%> ?
)%%? @
)%%@ A
{&& 
var'' 
newUser'' 
=''  !
	contextBD''" +
.''+ ,
Users'', 1
.''1 2
Add''2 5
(''5 6
user''6 :
)'': ;
;''; <
int(( 
resultEvent(( #
=(($ %
	contextBD((& /
.((/ 0
SaveChanges((0 ;
(((; <
)((< =
;((= >
if)) 
()) 
resultEvent)) #
!=))$ &
NULL_INT_VALUE))' 5
)))5 6
{** 
resultOfOperation++ )
.++) *
	CodeEvent++* 3
=++4 5
ExceptionDictionary++6 I
.++I J
SUCCESFULL_EVENT++J Z
;++Z [
},, 
else-- 
{.. 
resultOfOperation// )
.//) *
	CodeEvent//* 3
=//4 5
ExceptionDictionary//6 I
.//I J
UNSUCCESFULL_EVENT//J \
;//\ ]
}00 
resultOfOperation11 %
.11% &
ObjectSaved11& 1
=112 3
newUser114 ;
;11; <
}22 
}33 
catch44 
(44 
DbUpdateException44 #
ex44$ &
)44& '
{55 
resultOfOperation66 !
=66" #
ExceptionHandler66$ 4
.664 5)
HandleExceptionDataAccesLevel665 R
(66R S
resultOfOperation66S d
,66d e
ex66f h
)66h i
;66i j
ExceptionHandler77  
.77  !
LogException77! -
(77- .
ex77. 0
,770 1
ExceptionDictionary772 E
.77E F
FATAL_EXCEPTION77F U
)77U V
;77V W
}88 
catch99 
(99 
EntityException99 "
ex99# %
)99% &
{:: 
resultOfOperation;; !
=;;" #
ExceptionHandler;;$ 4
.;;4 5)
HandleExceptionDataAccesLevel;;5 R
(;;R S
resultOfOperation;;S d
,;;d e
ex;;f h
);;h i
;;;i j
ExceptionHandler<<  
.<<  !
LogException<<! -
(<<- .
ex<<. 0
,<<0 1
ExceptionDictionary<<2 E
.<<E F
FATAL_EXCEPTION<<F U
)<<U V
;<<V W
}== 
catch>> 
(>> 
SqlException>> 
ex>>  "
)>>" #
{?? 
resultOfOperation@@ !
=@@" #
ExceptionHandler@@$ 4
.@@4 5)
HandleExceptionDataAccesLevel@@5 R
(@@R S
resultOfOperation@@S d
,@@d e
ex@@f h
)@@h i
;@@i j
ExceptionHandlerAA  
.AA  !
LogExceptionAA! -
(AA- .
exAA. 0
,AA0 1
ExceptionDictionaryAA2 E
.AAE F
FATAL_EXCEPTIONAAF U
)AAU V
;AAV W
}BB 
returnCC 
resultOfOperationCC $
;CC$ %
}DD 	
publicGG 
staticGG 
GenericClassServerGG (
<GG( )
PlayerGG) /
>GG/ 0 
SavePlayerInDataBaseGG1 E
(GGE F
UserGGF J
	userSavedGGK T
,GGT U
StateGGV [
defaultStateGG\ h
,GGh i
PlayerGGj p
	newPlayerGGq z
)GGz {
{HH 	
GenericClassServerII 
<II 
PlayerII %
>II% &
resultOfOperationII' 8
=II9 :
newII; >
GenericClassServerII? Q
<IIQ R
PlayerIIR X
>IIX Y
(IIY Z
)IIZ [
;II[ \
ifJJ 
(JJ 
	userSavedJJ 
==JJ 
nullJJ !
||JJ" $
defaultStateJJ% 1
==JJ2 4
nullJJ5 9
||JJ: <
	newPlayerJJ= F
==JJG I
nullJJJ N
)JJN O
{KK 
returnLL !
NullParametersHandlerLL ,
.LL, -(
HandleNullParametersDataBaseLL- I
(LLI J
resultOfOperationLLJ [
)LL[ \
;LL\ ]
}MM 
tryNN 
{OO 
usingPP 
(PP 
varPP 
	contextBDPP $
=PP% &
newPP' *
JeopardyDBContainerPP+ >
(PP> ?
)PP? @
)PP@ A
{QQ 
	contextBDRR 
.RR 
UsersRR #
.RR# $
AttachRR$ *
(RR* +
	userSavedRR+ 4
)RR4 5
;RR5 6
	contextBDSS 
.SS 
StatesSS $
.SS$ %
AttachSS% +
(SS+ ,
defaultStateSS, 8
)SS8 9
;SS9 :
	newPlayerTT 
.TT 
UserTT "
=TT# $
	userSavedTT% .
;TT. /
	newPlayerUU 
.UU 
StateUU #
=UU$ %
defaultStateUU& 2
;UU2 3
varVV 
newPlayerSavedVV &
=VV' (
	contextBDVV) 2
.VV2 3
PlayersVV3 :
.VV: ;
AddVV; >
(VV> ?
	newPlayerVV? H
)VVH I
;VVI J
intWW 
resultEventWW #
=WW$ %
	contextBDWW& /
.WW/ 0
SaveChangesWW0 ;
(WW; <
)WW< =
;WW= >
ifXX 
(XX 
resultEventXX #
!=XX$ &
NULL_INT_VALUEXX' 5
)XX5 6
{YY 
resultOfOperationZZ )
.ZZ) *
	CodeEventZZ* 3
=ZZ4 5
ExceptionDictionaryZZ6 I
.ZZI J
SUCCESFULL_EVENTZZJ Z
;ZZZ [
}[[ 
else\\ 
{]] 
resultOfOperation^^ )
.^^) *
	CodeEvent^^* 3
=^^4 5
ExceptionDictionary^^6 I
.^^I J
UNSUCCESFULL_EVENT^^J \
;^^\ ]
}__ 
resultOfOperation`` %
.``% &
ObjectSaved``& 1
=``2 3
newPlayerSaved``4 B
;``B C
}aa 
}bb 
catchcc 
(cc 
DbUpdateExceptioncc $
excc% '
)cc' (
{dd 
resultOfOperationee !
=ee" #
ExceptionHandleree$ 4
.ee4 5)
HandleExceptionDataAccesLevelee5 R
(eeR S
resultOfOperationeeS d
,eed e
exeef h
)eeh i
;eei j
ExceptionHandlerff  
.ff  !
LogExceptionff! -
(ff- .
exff. 0
,ff0 1
ExceptionDictionaryff2 E
.ffE F
FATAL_EXCEPTIONffF U
)ffU V
;ffV W
}gg 
catchhh 
(hh 
EntityExceptionhh "
exhh# %
)hh% &
{ii 
resultOfOperationjj !
=jj" #
ExceptionHandlerjj$ 4
.jj4 5)
HandleExceptionDataAccesLeveljj5 R
(jjR S
resultOfOperationjjS d
,jjd e
exjjf h
)jjh i
;jji j
ExceptionHandlerkk  
.kk  !
LogExceptionkk! -
(kk- .
exkk. 0
,kk0 1
ExceptionDictionarykk2 E
.kkE F
FATAL_EXCEPTIONkkF U
)kkU V
;kkV W
}ll 
catchmm 
(mm 
SqlExceptionmm 
exmm  "
)mm" #
{nn 
resultOfOperationoo !
=oo" #
ExceptionHandleroo$ 4
.oo4 5)
HandleExceptionDataAccesLeveloo5 R
(ooR S
resultOfOperationooS d
,ood e
exoof h
)ooh i
;ooi j
ExceptionHandlerpp  
.pp  !
LogExceptionpp! -
(pp- .
expp. 0
,pp0 1
ExceptionDictionarypp2 E
.ppE F
FATAL_EXCEPTIONppF U
)ppU V
;ppV W
}qq 
returnrr 
resultOfOperationrr $
;rr$ %
}ss 	
publicuu 
staticuu 
GenericClassServeruu (
<uu( )
Useruu) -
>uu- .
GetUserByIduu/ :
(uu: ;
intuu; >
idUseruu? E
)uuE F
{vv 	
GenericClassServerww 
<ww 
Userww #
>ww# $
resultOfOperationww% 6
=ww7 8
newww9 <
GenericClassServerww= O
<wwO P
UserwwP T
>wwT U
(wwU V
)wwV W
;wwW X
ifxx 
(xx 
idUserxx 
==xx 
$numxx 
)xx 
{yy 
returnzz !
NullParametersHandlerzz ,
.zz, -(
HandleNullParametersDataBasezz- I
(zzI J
resultOfOperationzzJ [
)zz[ \
;zz\ ]
}{{ 
try|| 
{}} 
using~~ 
(~~ 
var~~ 
	contextBD~~ $
=~~% &
new~~' *
JeopardyDBContainer~~+ >
(~~> ?
)~~? @
)~~@ A
{ 
var
ÄÄ 
userConsulted
ÄÄ %
=
ÄÄ& '
	contextBD
ÄÄ( 1
.
ÄÄ1 2
Users
ÄÄ2 7
.
ÄÄ7 8
Find
ÄÄ8 <
(
ÄÄ< =
idUser
ÄÄ= C
)
ÄÄC D
;
ÄÄD E
if
ÅÅ 
(
ÅÅ 
userConsulted
ÅÅ %
!=
ÅÅ& (
null
ÅÅ) -
)
ÅÅ- .
{
ÇÇ 
resultOfOperation
ÉÉ )
.
ÉÉ) *
	CodeEvent
ÉÉ* 3
=
ÉÉ4 5!
ExceptionDictionary
ÉÉ6 I
.
ÉÉI J
SUCCESFULL_EVENT
ÉÉJ Z
;
ÉÉZ [
}
ÑÑ 
else
ÖÖ 
{
ÜÜ 
resultOfOperation
áá )
.
áá) *
	CodeEvent
áá* 3
=
áá4 5!
ExceptionDictionary
áá6 I
.
ááI J 
UNSUCCESFULL_EVENT
ááJ \
;
áá\ ]
}
àà 
resultOfOperation
ââ %
.
ââ% &
ObjectSaved
ââ& 1
=
ââ2 3
userConsulted
ââ4 A
;
ââA B
}
ää 
}
ãã 
catch
åå 
(
åå 
EntityException
åå "
ex
åå# %
)
åå% &
{
çç 
resultOfOperation
éé !
=
éé" #
ExceptionHandler
éé$ 4
.
éé4 5+
HandleExceptionDataAccesLevel
éé5 R
(
ééR S
resultOfOperation
ééS d
,
ééd e
ex
ééf h
)
ééh i
;
ééi j
ExceptionHandler
èè  
.
èè  !
LogException
èè! -
(
èè- .
ex
èè. 0
,
èè0 1!
ExceptionDictionary
èè2 E
.
èèE F
FATAL_EXCEPTION
èèF U
)
èèU V
;
èèV W
}
êê 
catch
ëë 
(
ëë 
SqlException
ëë 
ex
ëë  "
)
ëë" #
{
íí 
resultOfOperation
ìì !
=
ìì" #
ExceptionHandler
ìì$ 4
.
ìì4 5+
HandleExceptionDataAccesLevel
ìì5 R
(
ììR S
resultOfOperation
ììS d
,
ììd e
ex
ììf h
)
ììh i
;
ììi j
ExceptionHandler
îî  
.
îî  !
LogException
îî! -
(
îî- .
ex
îî. 0
,
îî0 1!
ExceptionDictionary
îî2 E
.
îîE F
FATAL_EXCEPTION
îîF U
)
îîU V
;
îîV W
}
ïï 
return
ññ 
resultOfOperation
ññ $
;
ññ$ %
}
óó 	
public
òò 
static
òò  
GenericClassServer
òò (
<
òò( )
User
òò) -
>
òò- .
GetUserByUserName
òò/ @
(
òò@ A
String
òòA G
userName
òòH P
)
òòP Q
{
ôô 	 
GenericClassServer
öö 
<
öö 
User
öö #
>
öö# $
resultOfOperation
öö% 6
=
öö7 8
new
öö9 < 
GenericClassServer
öö= O
<
ööO P
User
ööP T
>
ööT U
(
ööU V
)
ööV W
;
ööW X
if
õõ 
(
õõ 
userName
õõ 
==
õõ 
null
õõ  
)
õõ  !
{
úú 
return
ùù #
NullParametersHandler
ùù ,
.
ùù, -*
HandleNullParametersDataBase
ùù- I
(
ùùI J
resultOfOperation
ùùJ [
)
ùù[ \
;
ùù\ ]
}
ûû 
try
üü 
{
†† 
using
°° 
(
°° 
var
°° 
	contextBD
°° $
=
°°% &
new
°°' *!
JeopardyDBContainer
°°+ >
(
°°> ?
)
°°? @
)
°°@ A
{
¢¢ 
var
££ 
user
££ 
=
££ 
	contextBD
££ (
.
££( )
Users
££) .
.
££. /
FirstOrDefault
££/ =
(
££= >
u
££> ?
=>
££@ B
u
££C D
.
££D E
UserName
££E M
==
££N P
userName
££Q Y
)
££Y Z
;
££Z [
if
§§ 
(
§§ 
user
§§ 
!=
§§ 
null
§§ #
)
§§# $
{
•• 
resultOfOperation
¶¶ )
.
¶¶) *
	CodeEvent
¶¶* 3
=
¶¶4 5!
ExceptionDictionary
¶¶6 I
.
¶¶I J
SUCCESFULL_EVENT
¶¶J Z
;
¶¶Z [
}
ßß 
else
®® 
{
©© 
resultOfOperation
™™ )
.
™™) *
	CodeEvent
™™* 3
=
™™4 5!
ExceptionDictionary
™™6 I
.
™™I J 
UNSUCCESFULL_EVENT
™™J \
;
™™\ ]
}
´´ 
resultOfOperation
¨¨ %
.
¨¨% &
ObjectSaved
¨¨& 1
=
¨¨2 3
user
¨¨4 8
;
¨¨8 9
}
≠≠ 
}
ÆÆ 
catch
ØØ 
(
ØØ #
ArgumentNullException
ØØ '
ex
ØØ( *
)
ØØ* +
{
∞∞ 
resultOfOperation
±± !
=
±±" #
ExceptionHandler
±±$ 4
.
±±4 5+
HandleExceptionDataAccesLevel
±±5 R
(
±±R S
resultOfOperation
±±S d
,
±±d e
ex
±±f h
)
±±h i
;
±±i j
ExceptionHandler
≤≤  
.
≤≤  !
LogException
≤≤! -
(
≤≤- .
ex
≤≤. 0
,
≤≤0 1!
ExceptionDictionary
≤≤2 E
.
≤≤E F
FATAL_EXCEPTION
≤≤F U
)
≤≤U V
;
≤≤V W
}
≥≥ 
catch
¥¥ 
(
¥¥ 
EntityException
¥¥ "
ex
¥¥# %
)
¥¥% &
{
µµ 
resultOfOperation
∂∂ !
=
∂∂" #
ExceptionHandler
∂∂$ 4
.
∂∂4 5+
HandleExceptionDataAccesLevel
∂∂5 R
(
∂∂R S
resultOfOperation
∂∂S d
,
∂∂d e
ex
∂∂f h
)
∂∂h i
;
∂∂i j
ExceptionHandler
∑∑  
.
∑∑  !
LogException
∑∑! -
(
∑∑- .
ex
∑∑. 0
,
∑∑0 1!
ExceptionDictionary
∑∑2 E
.
∑∑E F
FATAL_EXCEPTION
∑∑F U
)
∑∑U V
;
∑∑V W
}
∏∏ 
catch
ππ 
(
ππ 
SqlException
ππ 
ex
ππ  "
)
ππ" #
{
∫∫ 
resultOfOperation
ªª !
=
ªª" #
ExceptionHandler
ªª$ 4
.
ªª4 5+
HandleExceptionDataAccesLevel
ªª5 R
(
ªªR S
resultOfOperation
ªªS d
,
ªªd e
ex
ªªf h
)
ªªh i
;
ªªi j
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
resultOfOperation
ææ $
;
ææ$ %
}
øø 	
public
¡¡ 
static
¡¡  
GenericClassServer
¡¡ (
<
¡¡( )
int
¡¡) ,
>
¡¡, -
UpdatePlayer
¡¡. :
(
¡¡: ;
int
¡¡; >
idPlayerReported
¡¡? O
)
¡¡O P
{
¬¬ 	 
GenericClassServer
√√ 
<
√√ 
int
√√ "
>
√√" #
resultOfOperation
√√$ 5
=
√√6 7
new
√√8 ; 
GenericClassServer
√√< N
<
√√N O
int
√√O R
>
√√R S
(
√√S T
)
√√T U
;
√√U V
if
ƒƒ 
(
ƒƒ 
idPlayerReported
ƒƒ  
==
ƒƒ! #
NULL_INT_VALUE
ƒƒ$ 2
)
ƒƒ2 3
{
≈≈ 
return
∆∆ #
NullParametersHandler
∆∆ ,
.
∆∆, -*
HandleNullParametersDataBase
∆∆- I
(
∆∆I J
resultOfOperation
∆∆J [
)
∆∆[ \
;
∆∆\ ]
}
«« 
try
»» 
{
…… 
using
   
(
   
var
   
	contextBD
   $
=
  % &
new
  ' *!
JeopardyDBContainer
  + >
(
  > ?
)
  ? @
)
  @ A
{
ÀÀ 
var
ÃÃ 
player
ÃÃ 
=
ÃÃ  !
GetPlayerByIdPlayer
ÃÃ! 4
(
ÃÃ4 5
idPlayerReported
ÃÃ5 E
)
ÃÃE F
.
ÃÃF G
ObjectSaved
ÃÃG R
;
ÃÃR S
if
ÕÕ 
(
ÕÕ 
player
ÕÕ 
!=
ÕÕ !
null
ÕÕ" &
)
ÕÕ& '
{
ŒŒ 
player
œœ 
.
œœ 
	NoReports
œœ (
++
œœ( *
;
œœ* +
	contextBD
–– !
.
––! "
Entry
––" '
(
––' (
player
––( .
)
––. /
.
––/ 0
State
––0 5
=
––6 7
EntityState
––8 C
.
––C D
Modified
––D L
;
––L M
int
—— 
resultUpdate
—— (
=
——) *
	contextBD
——+ 4
.
——4 5
SaveChanges
——5 @
(
——@ A
)
——A B
;
——B C
if
““ 
(
““ 
resultUpdate
““ (
!=
““) +
NULL_INT_VALUE
““, :
)
““: ;
{
”” 
resultOfOperation
‘‘ -
.
‘‘- .
	CodeEvent
‘‘. 7
=
‘‘8 9!
ExceptionDictionary
‘‘: M
.
‘‘M N
SUCCESFULL_EVENT
‘‘N ^
;
‘‘^ _
}
’’ 
else
÷÷ 
{
◊◊ 
resultOfOperation
ÿÿ -
.
ÿÿ- .
	CodeEvent
ÿÿ. 7
=
ÿÿ8 9!
ExceptionDictionary
ÿÿ: M
.
ÿÿM N 
UNSUCCESFULL_EVENT
ÿÿN `
;
ÿÿ` a
}
ŸŸ 
resultOfOperation
⁄⁄ )
.
⁄⁄) *
ObjectSaved
⁄⁄* 5
=
⁄⁄6 7
resultUpdate
⁄⁄8 D
;
⁄⁄D E
}
€€ 
else
‹‹ 
{
›› 
resultOfOperation
ﬁﬁ )
.
ﬁﬁ) *
ObjectSaved
ﬁﬁ* 5
=
ﬁﬁ6 7
default
ﬁﬁ8 ?
;
ﬁﬁ? @
resultOfOperation
ﬂﬂ )
.
ﬂﬂ) *
	CodeEvent
ﬂﬂ* 3
=
ﬂﬂ4 5!
ExceptionDictionary
ﬂﬂ6 I
.
ﬂﬂI J 
UNSUCCESFULL_EVENT
ﬂﬂJ \
;
ﬂﬂ\ ]
}
‡‡ 
}
·· 
}
‚‚ 
catch
„„ 
(
„„ #
ArgumentNullException
„„ (
ex
„„) +
)
„„+ ,
{
‰‰ 
resultOfOperation
ÂÂ !
=
ÂÂ" #
ExceptionHandler
ÂÂ$ 4
.
ÂÂ4 5+
HandleExceptionDataAccesLevel
ÂÂ5 R
(
ÂÂR S
resultOfOperation
ÂÂS d
,
ÂÂd e
ex
ÂÂf h
)
ÂÂh i
;
ÂÂi j
ExceptionHandler
ÊÊ  
.
ÊÊ  !
LogException
ÊÊ! -
(
ÊÊ- .
ex
ÊÊ. 0
,
ÊÊ0 1!
ExceptionDictionary
ÊÊ2 E
.
ÊÊE F
FATAL_EXCEPTION
ÊÊF U
)
ÊÊU V
;
ÊÊV W
}
ÁÁ 
catch
ËË 
(
ËË 
DbUpdateException
ËË #
ex
ËË$ &
)
ËË& '
{
ÈÈ 
resultOfOperation
ÍÍ !
=
ÍÍ" #
ExceptionHandler
ÍÍ$ 4
.
ÍÍ4 5+
HandleExceptionDataAccesLevel
ÍÍ5 R
(
ÍÍR S
resultOfOperation
ÍÍS d
,
ÍÍd e
ex
ÍÍf h
)
ÍÍh i
;
ÍÍi j
ExceptionHandler
ÎÎ  
.
ÎÎ  !
LogException
ÎÎ! -
(
ÎÎ- .
ex
ÎÎ. 0
,
ÎÎ0 1!
ExceptionDictionary
ÎÎ2 E
.
ÎÎE F
FATAL_EXCEPTION
ÎÎF U
)
ÎÎU V
;
ÎÎV W
}
ÏÏ 
catch
ÌÌ 
(
ÌÌ 
EntityException
ÌÌ "
ex
ÌÌ# %
)
ÌÌ% &
{
ÓÓ 
resultOfOperation
ÔÔ !
=
ÔÔ" #
ExceptionHandler
ÔÔ$ 4
.
ÔÔ4 5+
HandleExceptionDataAccesLevel
ÔÔ5 R
(
ÔÔR S
resultOfOperation
ÔÔS d
,
ÔÔd e
ex
ÔÔf h
)
ÔÔh i
;
ÔÔi j
ExceptionHandler
  
.
  !
LogException
! -
(
- .
ex
. 0
,
0 1!
ExceptionDictionary
2 E
.
E F
FATAL_EXCEPTION
F U
)
U V
;
V W
}
ÒÒ 
catch
ÚÚ 
(
ÚÚ 
SqlException
ÚÚ 
ex
ÚÚ  "
)
ÚÚ" #
{
ÛÛ 
resultOfOperation
ÙÙ !
=
ÙÙ" #
ExceptionHandler
ÙÙ$ 4
.
ÙÙ4 5+
HandleExceptionDataAccesLevel
ÙÙ5 R
(
ÙÙR S
resultOfOperation
ÙÙS d
,
ÙÙd e
ex
ÙÙf h
)
ÙÙh i
;
ÙÙi j
ExceptionHandler
ıı  
.
ıı  !
LogException
ıı! -
(
ıı- .
ex
ıı. 0
,
ıı0 1!
ExceptionDictionary
ıı2 E
.
ııE F
FATAL_EXCEPTION
ııF U
)
ııU V
;
ııV W
}
ˆˆ 
return
˜˜ 
resultOfOperation
˜˜ $
;
˜˜$ %
}
¯¯ 	
public
˚˚ 
static
˚˚  
GenericClassServer
˚˚ (
<
˚˚( )
Player
˚˚) /
>
˚˚/ 0
GetPlayerByIdUser
˚˚1 B
(
˚˚B C
int
˚˚C F
idUser
˚˚G M
)
˚˚M N
{
¸¸ 	 
GenericClassServer
˝˝ 
<
˝˝ 
Player
˝˝ %
>
˝˝% &
resultOfOperation
˝˝' 8
=
˝˝9 :
new
˝˝; > 
GenericClassServer
˝˝? Q
<
˝˝Q R
Player
˝˝R X
>
˝˝X Y
(
˝˝Y Z
)
˝˝Z [
;
˝˝[ \
if
˛˛ 
(
˛˛ 
idUser
˛˛ 
==
˛˛ 
NULL_INT_VALUE
˛˛ (
)
˛˛( )
{
ˇˇ 
return
ÄÄ #
NullParametersHandler
ÄÄ ,
.
ÄÄ, -*
HandleNullParametersDataBase
ÄÄ- I
(
ÄÄI J
resultOfOperation
ÄÄJ [
)
ÄÄ[ \
;
ÄÄ\ ]
}
ÅÅ 
try
ÇÇ 
{
ÉÉ 
using
ÑÑ 
(
ÑÑ 
var
ÑÑ 
	contextBD
ÑÑ $
=
ÑÑ% &
new
ÑÑ' *!
JeopardyDBContainer
ÑÑ+ >
(
ÑÑ> ?
)
ÑÑ? @
)
ÑÑ@ A
{
ÖÖ 
var
ÜÜ 
playerConsulted
ÜÜ '
=
ÜÜ( )
	contextBD
ÜÜ* 3
.
ÜÜ3 4
Players
ÜÜ4 ;
.
ÜÜ; <
FirstOrDefault
ÜÜ< J
(
ÜÜJ K
player
ÜÜK Q
=>
ÜÜR T
player
ÜÜU [
.
ÜÜ[ \
User_IdUser
ÜÜ\ g
==
ÜÜh j
idUser
ÜÜk q
)
ÜÜq r
;
ÜÜr s
if
áá 
(
áá 
playerConsulted
áá '
!=
áá( *
null
áá+ /
)
áá/ 0
{
àà 
resultOfOperation
ââ )
.
ââ) *
	CodeEvent
ââ* 3
=
ââ4 5!
ExceptionDictionary
ââ6 I
.
ââI J
SUCCESFULL_EVENT
ââJ Z
;
ââZ [
}
ää 
else
ãã 
{
åå 
resultOfOperation
çç )
.
çç) *
	CodeEvent
çç* 3
=
çç4 5!
ExceptionDictionary
çç6 I
.
ççI J 
UNSUCCESFULL_EVENT
ççJ \
;
çç\ ]
}
éé 
resultOfOperation
èè %
.
èè% &
ObjectSaved
èè& 1
=
èè2 3
playerConsulted
èè4 C
;
èèC D
}
êê 
}
ëë 
catch
íí 
(
íí #
ArgumentNullException
íí (
ex
íí) +
)
íí+ ,
{
ìì 
resultOfOperation
îî !
=
îî" #
ExceptionHandler
îî$ 4
.
îî4 5+
HandleExceptionDataAccesLevel
îî5 R
(
îîR S
resultOfOperation
îîS d
,
îîd e
ex
îîf h
)
îîh i
;
îîi j
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
EntityException
óó "
ex
óó# %
)
óó% &
{
òò 
resultOfOperation
ôô !
=
ôô" #
ExceptionHandler
ôô$ 4
.
ôô4 5+
HandleExceptionDataAccesLevel
ôô5 R
(
ôôR S
resultOfOperation
ôôS d
,
ôôd e
ex
ôôf h
)
ôôh i
;
ôôi j
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
úú 
SqlException
úú 
ex
úú  "
)
úú" #
{
ùù 
resultOfOperation
ûû !
=
ûû" #
ExceptionHandler
ûû$ 4
.
ûû4 5+
HandleExceptionDataAccesLevel
ûû5 R
(
ûûR S
resultOfOperation
ûûS d
,
ûûd e
ex
ûûf h
)
ûûh i
;
ûûi j
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
†† 
return
°° 
resultOfOperation
°° $
;
°°$ %
}
££ 	
public
§§ 
static
§§  
GenericClassServer
§§ (
<
§§( )
Player
§§) /
>
§§/ 0!
GetPlayerByIdPlayer
§§1 D
(
§§D E
int
§§E H
idPlayer
§§I Q
)
§§Q R
{
•• 	 
GenericClassServer
¶¶ 
<
¶¶ 
Player
¶¶ %
>
¶¶% &
resultOfOperation
¶¶' 8
=
¶¶9 :
new
¶¶; > 
GenericClassServer
¶¶? Q
<
¶¶Q R
Player
¶¶R X
>
¶¶X Y
(
¶¶Y Z
)
¶¶Z [
;
¶¶[ \
if
ßß 
(
ßß 
idPlayer
ßß 
==
ßß 
NULL_INT_VALUE
ßß *
)
ßß* +
{
®® 
return
©© #
NullParametersHandler
©© ,
.
©©, -*
HandleNullParametersDataBase
©©- I
(
©©I J
resultOfOperation
©©J [
)
©©[ \
;
©©\ ]
}
™™ 
try
´´ 
{
¨¨ 
using
≠≠ 
(
≠≠ 
var
≠≠ 
	contextBD
≠≠ $
=
≠≠% &
new
≠≠' *!
JeopardyDBContainer
≠≠+ >
(
≠≠> ?
)
≠≠? @
)
≠≠@ A
{
ÆÆ 
var
ØØ 
playerConsulted
ØØ '
=
ØØ( )
	contextBD
ØØ* 3
.
ØØ3 4
Players
ØØ4 ;
.
ØØ; <
FirstOrDefault
ØØ< J
(
ØØJ K
player
ØØK Q
=>
ØØR T
player
ØØU [
.
ØØ[ \
IdPlayer
ØØ\ d
==
ØØe g
idPlayer
ØØh p
)
ØØp q
;
ØØq r
if
∞∞ 
(
∞∞ 
playerConsulted
∞∞ '
!=
∞∞( *
null
∞∞+ /
)
∞∞/ 0
{
±± 
resultOfOperation
≤≤ )
.
≤≤) *
	CodeEvent
≤≤* 3
=
≤≤4 5!
ExceptionDictionary
≤≤6 I
.
≤≤I J
SUCCESFULL_EVENT
≤≤J Z
;
≤≤Z [
}
≥≥ 
else
¥¥ 
{
µµ 
resultOfOperation
∂∂ )
.
∂∂) *
	CodeEvent
∂∂* 3
=
∂∂4 5!
ExceptionDictionary
∂∂6 I
.
∂∂I J 
UNSUCCESFULL_EVENT
∂∂J \
;
∂∂\ ]
}
∑∑ 
resultOfOperation
∏∏ %
.
∏∏% &
ObjectSaved
∏∏& 1
=
∏∏2 3
playerConsulted
∏∏4 C
;
∏∏C D
}
ππ 
}
∫∫ 
catch
ªª 
(
ªª #
ArgumentNullException
ªª (
ex
ªª) +
)
ªª+ ,
{
ºº 
resultOfOperation
ΩΩ !
=
ΩΩ" #
ExceptionHandler
ΩΩ$ 4
.
ΩΩ4 5+
HandleExceptionDataAccesLevel
ΩΩ5 R
(
ΩΩR S
resultOfOperation
ΩΩS d
,
ΩΩd e
ex
ΩΩf h
)
ΩΩh i
;
ΩΩi j
ExceptionHandler
ææ  
.
ææ  !
LogException
ææ! -
(
ææ- .
ex
ææ. 0
,
ææ0 1!
ExceptionDictionary
ææ2 E
.
ææE F
FATAL_EXCEPTION
ææF U
)
ææU V
;
ææV W
}
øø 
catch
¿¿ 
(
¿¿ 
EntityException
¿¿ "
ex
¿¿# %
)
¿¿% &
{
¡¡ 
resultOfOperation
¬¬ !
=
¬¬" #
ExceptionHandler
¬¬$ 4
.
¬¬4 5+
HandleExceptionDataAccesLevel
¬¬5 R
(
¬¬R S
resultOfOperation
¬¬S d
,
¬¬d e
ex
¬¬f h
)
¬¬h i
;
¬¬i j
ExceptionHandler
√√  
.
√√  !
LogException
√√! -
(
√√- .
ex
√√. 0
,
√√0 1!
ExceptionDictionary
√√2 E
.
√√E F
FATAL_EXCEPTION
√√F U
)
√√U V
;
√√V W
}
ƒƒ 
catch
≈≈ 
(
≈≈ 
SqlException
≈≈ 
ex
≈≈  "
)
≈≈" #
{
∆∆ 
resultOfOperation
«« !
=
««" #
ExceptionHandler
««$ 4
.
««4 5+
HandleExceptionDataAccesLevel
««5 R
(
««R S
resultOfOperation
««S d
,
««d e
ex
««f h
)
««h i
;
««i j
ExceptionHandler
»»  
.
»»  !
LogException
»»! -
(
»»- .
ex
»». 0
,
»»0 1!
ExceptionDictionary
»»2 E
.
»»E F
FATAL_EXCEPTION
»»F U
)
»»U V
;
»»V W
}
…… 
return
   
resultOfOperation
   $
;
  $ %
}
ÃÃ 	
public
ŒŒ 
static
ŒŒ  
GenericClassServer
ŒŒ (
<
ŒŒ( )
State
ŒŒ) .
>
ŒŒ. /
GetStateById
ŒŒ0 <
(
ŒŒ< =
int
ŒŒ= @
idSatate
ŒŒA I
)
ŒŒI J
{
œœ 	 
GenericClassServer
–– 
<
–– 
State
–– $
>
––$ %
resultOfOperation
––& 7
=
––8 9
new
––: = 
GenericClassServer
––> P
<
––P Q
State
––Q V
>
––V W
(
––W X
)
––X Y
;
––Y Z
if
—— 
(
—— 
idSatate
—— 
==
—— 
NULL_INT_VALUE
—— *
)
——* +
{
““ 
return
”” #
NullParametersHandler
”” ,
.
””, -*
HandleNullParametersDataBase
””- I
(
””I J
resultOfOperation
””J [
)
””[ \
;
””\ ]
}
‘‘ 
try
’’ 
{
÷÷ 
using
◊◊ 
(
◊◊ 
var
◊◊ 
	contextBD
◊◊ $
=
◊◊% &
new
◊◊' *!
JeopardyDBContainer
◊◊+ >
(
◊◊> ?
)
◊◊? @
)
◊◊@ A
{
ÿÿ 
var
ŸŸ 
stateConsulted
ŸŸ &
=
ŸŸ' (
	contextBD
ŸŸ) 2
.
ŸŸ2 3
States
ŸŸ3 9
.
ŸŸ9 :
Find
ŸŸ: >
(
ŸŸ> ?
idSatate
ŸŸ? G
)
ŸŸG H
;
ŸŸH I
if
⁄⁄ 
(
⁄⁄ 
stateConsulted
⁄⁄ &
!=
⁄⁄' )
null
⁄⁄* .
)
⁄⁄. /
{
€€ 
resultOfOperation
‹‹ )
.
‹‹) *
	CodeEvent
‹‹* 3
=
‹‹4 5!
ExceptionDictionary
‹‹6 I
.
‹‹I J
SUCCESFULL_EVENT
‹‹J Z
;
‹‹Z [
}
›› 
else
ﬁﬁ 
{
ﬂﬂ 
resultOfOperation
‡‡ )
.
‡‡) *
	CodeEvent
‡‡* 3
=
‡‡4 5!
ExceptionDictionary
‡‡6 I
.
‡‡I J 
UNSUCCESFULL_EVENT
‡‡J \
;
‡‡\ ]
}
·· 
resultOfOperation
‚‚ %
.
‚‚% &
ObjectSaved
‚‚& 1
=
‚‚2 3
stateConsulted
‚‚4 B
;
‚‚B C
}
„„ 
}
‰‰ 
catch
ÂÂ 
(
ÂÂ '
InvalidOperationException
ÂÂ ,
ex
ÂÂ- /
)
ÂÂ/ 0
{
ÊÊ 
resultOfOperation
ÁÁ !
=
ÁÁ" #
ExceptionHandler
ÁÁ$ 4
.
ÁÁ4 5+
HandleExceptionDataAccesLevel
ÁÁ5 R
(
ÁÁR S
resultOfOperation
ÁÁS d
,
ÁÁd e
ex
ÁÁf h
)
ÁÁh i
;
ÁÁi j
ExceptionHandler
ËË  
.
ËË  !
LogException
ËË! -
(
ËË- .
ex
ËË. 0
,
ËË0 1!
ExceptionDictionary
ËË2 E
.
ËËE F
FATAL_EXCEPTION
ËËF U
)
ËËU V
;
ËËV W
}
ÈÈ 
catch
ÍÍ 
(
ÍÍ 
EntityException
ÍÍ "
ex
ÍÍ# %
)
ÍÍ% &
{
ÎÎ 
resultOfOperation
ÏÏ !
=
ÏÏ" #
ExceptionHandler
ÏÏ$ 4
.
ÏÏ4 5+
HandleExceptionDataAccesLevel
ÏÏ5 R
(
ÏÏR S
resultOfOperation
ÏÏS d
,
ÏÏd e
ex
ÏÏf h
)
ÏÏh i
;
ÏÏi j
ExceptionHandler
ÌÌ  
.
ÌÌ  !
LogException
ÌÌ! -
(
ÌÌ- .
ex
ÌÌ. 0
,
ÌÌ0 1!
ExceptionDictionary
ÌÌ2 E
.
ÌÌE F
FATAL_EXCEPTION
ÌÌF U
)
ÌÌU V
;
ÌÌV W
}
ÓÓ 
catch
ÔÔ 
(
ÔÔ 
SqlException
ÔÔ 
ex
ÔÔ  "
)
ÔÔ" #
{
 
resultOfOperation
ÒÒ !
=
ÒÒ" #
ExceptionHandler
ÒÒ$ 4
.
ÒÒ4 5+
HandleExceptionDataAccesLevel
ÒÒ5 R
(
ÒÒR S
resultOfOperation
ÒÒS d
,
ÒÒd e
ex
ÒÒf h
)
ÒÒh i
;
ÒÒi j
ExceptionHandler
ÚÚ  
.
ÚÚ  !
LogException
ÚÚ! -
(
ÚÚ- .
ex
ÚÚ. 0
,
ÚÚ0 1!
ExceptionDictionary
ÚÚ2 E
.
ÚÚE F
FATAL_EXCEPTION
ÚÚF U
)
ÚÚU V
;
ÚÚV W
}
ÛÛ 
return
ÙÙ 
resultOfOperation
ÙÙ $
;
ÙÙ$ %
}
ıı 	
public
˜˜ 
static
˜˜ 
void
˜˜ 
DeleteUserById
˜˜ )
(
˜˜) *
int
˜˜* -
idUser
˜˜. 4
)
˜˜4 5
{
¯¯ 	
if
˘˘ 
(
˘˘ 
idUser
˘˘ 
!=
˘˘ 
NULL_INT_VALUE
˘˘ (
)
˘˘( )
{
˙˙ 
try
˚˚ 
{
¸¸ 
using
˝˝ 
(
˝˝ 
var
˝˝ 
	contextBD
˝˝ (
=
˝˝) *
new
˝˝+ .!
JeopardyDBContainer
˝˝/ B
(
˝˝B C
)
˝˝C D
)
˝˝D E
{
˛˛ 
var
ˇˇ 
userConsulted
ˇˇ )
=
ˇˇ* +
	contextBD
ˇˇ, 5
.
ˇˇ5 6
Users
ˇˇ6 ;
.
ˇˇ; <
Find
ˇˇ< @
(
ˇˇ@ A
idUser
ˇˇA G
)
ˇˇG H
;
ˇˇH I
if
ÄÄ 
(
ÄÄ 
userConsulted
ÄÄ )
!=
ÄÄ* ,
null
ÄÄ- 1
)
ÄÄ1 2
{
ÅÅ 
	contextBD
ÇÇ %
.
ÇÇ% &
Users
ÇÇ& +
.
ÇÇ+ ,
Remove
ÇÇ, 2
(
ÇÇ2 3
userConsulted
ÇÇ3 @
)
ÇÇ@ A
;
ÇÇA B
}
ÉÉ 
}
ÑÑ 
}
ÖÖ 
catch
ÜÜ 
(
ÜÜ 
SqlException
ÜÜ #
ex
ÜÜ$ &
)
ÜÜ& '
{
áá 
ExceptionHandler
àà $
.
àà$ %
LogException
àà% 1
(
àà1 2
ex
àà2 4
,
àà4 5!
ExceptionDictionary
àà6 I
.
ààI J
FATAL_EXCEPTION
ààJ Y
)
ààY Z
;
ààZ [
}
ââ 
catch
ää 
(
ää 
EntityException
ää &
ex
ää' )
)
ää) *
{
ãã 
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
çç 
}
éé 
}
èè 	
public
ëë 
static
ëë  
GenericClassServer
ëë (
<
ëë( )
int
ëë) ,
>
ëë, -#
UpdateUserInformation
ëë. C
(
ëëC D
string
ëëD J

editedName
ëëK U
,
ëëU V
string
ëëW ]
originalName
ëë^ j
)
ëëj k
{
íí 	 
GenericClassServer
ìì 
<
ìì 
int
ìì "
>
ìì" #
resultOfOperation
ìì$ 5
=
ìì6 7
new
ìì8 ; 
GenericClassServer
ìì< N
<
ììN O
int
ììO R
>
ììR S
(
ììS T
)
ììT U
;
ììU V
if
îî 
(
îî 
string
îî 
.
îî 
IsNullOrEmpty
îî $
(
îî$ %

editedName
îî% /
)
îî/ 0
||
îî1 3
string
îî4 :
.
îî: ;
IsNullOrEmpty
îî; H
(
îîH I
originalName
îîI U
)
îîU V
)
îîV W
{
ïï 
return
ññ #
NullParametersHandler
ññ ,
.
ññ, -*
HandleNullParametersDataBase
ññ- I
(
ññI J
resultOfOperation
ññJ [
)
ññ[ \
;
ññ\ ]
}
óó 
try
òò 
{
ôô 
using
öö 
(
öö 
var
öö 
	contextBD
öö $
=
öö% &
new
öö' *!
JeopardyDBContainer
öö+ >
(
öö> ?
)
öö? @
)
öö@ A
{
õõ 
var
úú 
userToUpdate
úú $
=
úú% &
	contextBD
úú' 0
.
úú0 1
Users
úú1 6
.
úú6 7
FirstOrDefault
úú7 E
(
úúE F
u
úúF G
=>
úúH J
u
úúK L
.
úúL M
Name
úúM Q
==
úúR T
originalName
úúU a
)
úúa b
;
úúb c
if
ùù 
(
ùù 
userToUpdate
ùù $
!=
ùù% '
null
ùù( ,
)
ùù, -
{
ûû 
userToUpdate
üü $
.
üü$ %
Name
üü% )
=
üü* +

editedName
üü, 6
;
üü6 7
int
†† 
resultOfEvent
†† )
=
††* +
	contextBD
††, 5
.
††5 6
SaveChanges
††6 A
(
††A B
)
††B C
;
††C D
if
°° 
(
°° 
resultOfEvent
°° )
==
°°* ,
$num
°°- .
)
°°. /
{
¢¢ 
resultOfOperation
££ -
.
££- .
	CodeEvent
££. 7
=
££8 9!
ExceptionDictionary
££: M
.
££M N
SUCCESFULL_EVENT
££N ^
;
££^ _
}
§§ 
else
•• 
{
¶¶ 
resultOfOperation
ßß -
.
ßß- .
	CodeEvent
ßß. 7
=
ßß8 9!
ExceptionDictionary
ßß: M
.
ßßM N 
UNSUCCESFULL_EVENT
ßßN `
;
ßß` a
}
®® 
resultOfOperation
©© )
.
©©) *
ObjectSaved
©©* 5
=
©©6 7
OPERATION_DONE
©©8 F
;
©©F G
}
™™ 
else
´´ 
{
¨¨ 
resultOfOperation
≠≠ )
.
≠≠) *
ObjectSaved
≠≠* 5
=
≠≠6 7
USER_NOT_FOUND
≠≠8 F
;
≠≠F G
resultOfOperation
ÆÆ )
.
ÆÆ) *
	CodeEvent
ÆÆ* 3
=
ÆÆ4 5!
ExceptionDictionary
ÆÆ6 I
.
ÆÆI J 
UNSUCCESFULL_EVENT
ÆÆJ \
;
ÆÆ\ ]
}
ØØ 
}
∞∞ 
}
±± 
catch
≤≤ 
(
≤≤ 
DbUpdateException
≤≤ $
ex
≤≤% '
)
≤≤' (
{
≥≥ 
resultOfOperation
¥¥ !
=
¥¥" #
ExceptionHandler
¥¥$ 4
.
¥¥4 5+
HandleExceptionDataAccesLevel
¥¥5 R
(
¥¥R S
resultOfOperation
¥¥S d
,
¥¥d e
ex
¥¥f h
)
¥¥h i
;
¥¥i j
ExceptionHandler
µµ  
.
µµ  !
LogException
µµ! -
(
µµ- .
ex
µµ. 0
,
µµ0 1!
ExceptionDictionary
µµ2 E
.
µµE F
FATAL_EXCEPTION
µµF U
)
µµU V
;
µµV W
}
∂∂ 
catch
∑∑ 
(
∑∑ 
SqlException
∑∑ 
ex
∑∑  "
)
∑∑" #
{
∏∏ 
resultOfOperation
ππ !
=
ππ" #
ExceptionHandler
ππ$ 4
.
ππ4 5+
HandleExceptionDataAccesLevel
ππ5 R
(
ππR S
resultOfOperation
ππS d
,
ππd e
ex
ππf h
)
ππh i
;
ππi j
ExceptionHandler
∫∫  
.
∫∫  !
LogException
∫∫! -
(
∫∫- .
ex
∫∫. 0
,
∫∫0 1!
ExceptionDictionary
∫∫2 E
.
∫∫E F
FATAL_EXCEPTION
∫∫F U
)
∫∫U V
;
∫∫V W
}
ªª 
catch
ºº 
(
ºº 
EntityException
ºº "
ex
ºº# %
)
ºº% &
{
ΩΩ 
resultOfOperation
ææ !
=
ææ" #
ExceptionHandler
ææ$ 4
.
ææ4 5+
HandleExceptionDataAccesLevel
ææ5 R
(
ææR S
resultOfOperation
ææS d
,
ææd e
ex
ææf h
)
ææh i
;
ææi j
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
¿¿ 
return
¡¡ 
resultOfOperation
¡¡ $
;
¡¡$ %
}
¬¬ 	
public
√√ 
static
√√  
GenericClassServer
√√ )
<
√√) *
List
√√* .
<
√√. /
Player
√√/ 5
>
√√5 6
>
√√6 7
Get20FriendScores
√√8 I
(
√√I J
int
√√J M
userId
√√N T
)
√√T U
{
ƒƒ 	 
GenericClassServer
≈≈ 
<
≈≈ 
List
≈≈ #
<
≈≈# $
Player
≈≈$ *
>
≈≈* +
>
≈≈+ ,
resultOfOperation
≈≈- >
=
≈≈? @
new
≈≈A D 
GenericClassServer
≈≈E W
<
≈≈W X
List
≈≈X \
<
≈≈\ ]
Player
≈≈] c
>
≈≈c d
>
≈≈d e
(
≈≈e f
)
≈≈f g
;
≈≈g h
if
∆∆ 
(
∆∆ 
userId
∆∆ 
<=
∆∆ 
NULL_INT_VALUE
∆∆ (
)
∆∆( )
{
«« 
return
»» #
NullParametersHandler
»» ,
.
»», -*
HandleNullParametersDataBase
»»- I
(
»»I J
resultOfOperation
»»J [
)
»»[ \
;
»»\ ]
}
…… 
try
   
{
ÀÀ 
using
ÃÃ 
(
ÃÃ 
var
ÃÃ 
	contextDB
ÃÃ $
=
ÃÃ% &
new
ÃÃ' *!
JeopardyDBContainer
ÃÃ+ >
(
ÃÃ> ?
)
ÃÃ? @
)
ÃÃ@ A
{
ÕÕ 
List
ŒŒ 
<
ŒŒ 
Player
ŒŒ 
>
ŒŒ  
friendScores
ŒŒ! -
=
ŒŒ. /
	contextDB
ŒŒ0 9
.
ŒŒ9 :
Friends
ŒŒ: A
.
œœ 
Where
œœ 
(
œœ 
friendRegistry
œœ -
=>
œœ. 0
friendRegistry
œœ1 ?
.
œœ? @
Player_IdPlayer
œœ@ O
==
œœP R
userId
œœS Y
||
œœZ \
friendRegistry
œœ] k
.
œœk l$
PlayerFriend_IdPlayerœœl Å
==œœÇ Ñ
userIdœœÖ ã
)œœã å
.
–– 
Select
–– 
(
––  
friendSelection
––  /
=>
––0 2
friendSelection
––3 B
.
––B C
Player_IdPlayer
––C R
==
––S U
userId
––V \
?
––] ^
friendSelection
––_ n
.
––n o$
PlayerFriend_IdPlayer––o Ñ
:––Ö Ü
friendSelection––á ñ
.––ñ ó
Player_IdPlayer––ó ¶
)––¶ ß
.
—— 
Join
—— 
(
—— 
	contextDB
—— '
.
——' (
Players
——( /
,
——/ 0
friendId
——1 9
=>
——: <
friendId
——= E
,
——E F
player
——G M
=>
——N P
player
——Q W
.
——W X
IdPlayer
——X `
,
——` a
(
““ 
friendId
““ !
,
““! "
player
““# )
)
““) *
=>
““+ -
new
““. 1
Player
““2 8
{
”” 
IdPlayer
‘‘  (
=
‘‘) *
player
‘‘+ 1
.
‘‘1 2
IdPlayer
‘‘2 :
,
‘‘: ;
GeneralPoints
’’  -
=
’’. /
player
’’0 6
.
’’6 7
GeneralPoints
’’7 D
,
’’D E
}
÷÷ 
)
÷÷ 
.
◊◊ 
ToList
◊◊ 
(
◊◊  
)
◊◊  !
;
◊◊! "
if
ÿÿ 
(
ÿÿ 
friendScores
ÿÿ $
!=
ÿÿ% '
null
ÿÿ( ,
)
ÿÿ, -
{
ŸŸ 
resultOfOperation
⁄⁄ )
.
⁄⁄) *
	CodeEvent
⁄⁄* 3
=
⁄⁄4 5!
ExceptionDictionary
⁄⁄6 I
.
⁄⁄I J
SUCCESFULL_EVENT
⁄⁄J Z
;
⁄⁄Z [
}
€€ 
else
‹‹ 
{
›› 
resultOfOperation
ﬁﬁ )
.
ﬁﬁ) *
	CodeEvent
ﬁﬁ* 3
=
ﬁﬁ4 5!
ExceptionDictionary
ﬁﬁ6 I
.
ﬁﬁI J 
UNSUCCESFULL_EVENT
ﬁﬁJ \
;
ﬁﬁ\ ]
}
ﬂﬂ 
resultOfOperation
‡‡ %
.
‡‡% &
ObjectSaved
‡‡& 1
=
‡‡2 3
friendScores
‡‡4 @
;
‡‡@ A
}
·· 
}
‚‚ 
catch
„„ 
(
„„ #
ArgumentNullException
„„ (
ex
„„) +
)
„„+ ,
{
‰‰ 
resultOfOperation
ÂÂ !
=
ÂÂ" #
ExceptionHandler
ÂÂ$ 4
.
ÂÂ4 5+
HandleExceptionDataAccesLevel
ÂÂ5 R
(
ÂÂR S
resultOfOperation
ÂÂS d
,
ÂÂd e
ex
ÂÂf h
)
ÂÂh i
;
ÂÂi j
ExceptionHandler
ÊÊ  
.
ÊÊ  !
LogException
ÊÊ! -
(
ÊÊ- .
ex
ÊÊ. 0
,
ÊÊ0 1!
ExceptionDictionary
ÊÊ2 E
.
ÊÊE F
FATAL_EXCEPTION
ÊÊF U
)
ÊÊU V
;
ÊÊV W
}
ÁÁ 
catch
ËË 
(
ËË 
SqlException
ËË 
ex
ËË  "
)
ËË" #
{
ÈÈ 
resultOfOperation
ÍÍ !
=
ÍÍ" #
ExceptionHandler
ÍÍ$ 4
.
ÍÍ4 5+
HandleExceptionDataAccesLevel
ÍÍ5 R
(
ÍÍR S
resultOfOperation
ÍÍS d
,
ÍÍd e
ex
ÍÍf h
)
ÍÍh i
;
ÍÍi j
ExceptionHandler
ÎÎ  
.
ÎÎ  !
LogException
ÎÎ! -
(
ÎÎ- .
ex
ÎÎ. 0
,
ÎÎ0 1!
ExceptionDictionary
ÎÎ2 E
.
ÎÎE F
FATAL_EXCEPTION
ÎÎF U
)
ÎÎU V
;
ÎÎV W
}
ÏÏ 
catch
ÌÌ 
(
ÌÌ 
EntityException
ÌÌ "
ex
ÌÌ# %
)
ÌÌ% &
{
ÓÓ 
resultOfOperation
ÔÔ !
=
ÔÔ" #
ExceptionHandler
ÔÔ$ 4
.
ÔÔ4 5+
HandleExceptionDataAccesLevel
ÔÔ5 R
(
ÔÔR S
resultOfOperation
ÔÔS d
,
ÔÔd e
ex
ÔÔf h
)
ÔÔh i
;
ÔÔi j
ExceptionHandler
  
.
  !
LogException
! -
(
- .
ex
. 0
,
0 1!
ExceptionDictionary
2 E
.
E F
FATAL_EXCEPTION
F U
)
U V
;
V W
}
ÒÒ 
return
ÚÚ 
resultOfOperation
ÚÚ $
;
ÚÚ$ %
}
ÛÛ 	
}
ıı 
}¯¯ ˛/
ÑC:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameServer\JeopardyGame.Data\Exceptions\ExceptionDiccionary.cs
	namespace 	
JeopardyGame
 
. 
Data 
. 

Exceptions &
{ 
public		 

class		 
ExceptionDictionary		 $
{

 
private 
static 
readonly 
String  &
_FATAL_EXCEPTION' 7
=8 9
$str: A
;A B
private 
static 
readonly 
String  &
_ERROR' -
=. /
$str0 7
;7 8
private 
static 
readonly 
String  &
_UNKNOW' .
=/ 0
$str1 9
;9 :
private 
static 
readonly 
int  #
_SUCCESFULL_EVENT$ 5
=6 7
-8 9
$num9 <
;< =
private 
static 
readonly 
int  #
_UNSUCCESFULL_EVENT$ 7
=8 9
-: ;
$num; =
;= >
private 
static 
readonly 
int  #
_NULL_PARAEMETER$ 4
=5 6
-7 8
$num8 ;
;; <
private 
static 
readonly 
int  #
_ARGUMENT_NULL$ 2
=3 4
-5 6
$num6 9
;9 :
private 
static 
readonly 
int  #,
 _ARGUMENT_OUT_OF_RANGE_EXCEPTION$ D
=E F
-G H
$numH K
;K L
private 
static 
readonly 
int  #
_FORMMAT_EXCEPTION$ 6
=7 8
-9 :
$num: =
;= >
private 
static 
readonly 
int  #
_RANK_EXCEPTION$ 3
=4 5
-6 7
$num7 :
;: ;
private 
static 
readonly 
int  #!
_EMAIL_FORMAT_INVALID$ 9
=: ;
-< =
$num= @
;@ A
private 
static 
readonly 
int  #
_INVALID_OPERATION$ 6
=7 8
-9 :
$num: =
;= >
private 
static 
readonly 
int  #
_NO_DB_CONECTION$ 4
=5 6
-7 8
$num8 ;
;; <
private 
static 
readonly 
int  #
_SAVE_CHANGES_ERROR$ 7
=8 9
-: ;
$num; >
;> ?
private 
static 
readonly 
int  #

_SQL_ERROR$ .
=/ 0
-1 2
$num2 5
;5 6
private 
static 
readonly 
int  #
_ENTITY_ERROR$ 1
=2 3
-4 5
$num5 8
;8 9
private 
static 
readonly 
int  #
_SMTP_EXCEPTION$ 3
=4 5
-6 7
$num7 :
;: ;
private 
static 
readonly 
int  #%
_UNKOWN_EXCEPTION_OCURRED$ =
=> ?
-@ A
$numA D
;D E
public 
static 
string 
FATAL_EXCEPTION ,
=>- /
_FATAL_EXCEPTION0 @
;@ A
public!! 
static!! 
string!! 
ERROR!! "
=>!!# %
_ERROR!!& ,
;!!, -
public## 
static## 
string## 
UNKNOW## #
=>##$ &
_UNKNOW##' .
;##. /
public%% 
static%% 
int%% 
SUCCESFULL_EVENT%% *
=>%%+ -
_SUCCESFULL_EVENT%%. ?
;%%? @
public'' 
static'' 
int'' 
UNSUCCESFULL_EVENT'' ,
=>''- /
_UNSUCCESFULL_EVENT''0 C
;''C D
public)) 
static)) 
int)) 
NULL_PARAEMETER)) )
=>))* ,
_NULL_PARAEMETER))- =
;))= >
public++ 
static++ 
int++ 
ARGUMENT_NULL++ '
=>++( *
_ARGUMENT_NULL+++ 9
;++9 :
public-- 
static-- 
int-- +
ARGUMENT_OUT_OF_RANGE_EXCEPTION-- 9
=>--: <,
 _ARGUMENT_OUT_OF_RANGE_EXCEPTION--= ]
;--] ^
public// 
static// 
int// 
FORMMAT_EXCEPTION// +
=>//, .
_FORMMAT_EXCEPTION/// A
;//A B
public11 
static11 
int11 
RANK_EXCEPTION11 (
=>11) +
_RANK_EXCEPTION11, ;
;11; <
public33 
static33 
int33  
EMAIL_FORMAT_INVALID33 .
=>33/ 1!
_EMAIL_FORMAT_INVALID332 G
;33G H
public55 
static55 
int55 
INVALID_OPERATION55 +
=>55, .
_INVALID_OPERATION55/ A
;55A B
public77 
static77 
int77 
NO_DB_CONECTION77 )
=>77* ,
_NO_DB_CONECTION77- =
;77= >
public99 
static99 
int99 
SAVE_CHANGES_ERROR99 ,
=>99- /
_SAVE_CHANGES_ERROR990 C
;99C D
public;; 
static;; 
int;; 
	SQL_ERROR;; #
=>;;$ &

_SQL_ERROR;;' 1
;;;1 2
public== 
static== 
int== 
ENTITY_ERROR== &
=>==' )
_ENTITY_ERROR==* 7
;==7 8
public?? 
static?? 
int?? 
SMTP_EXCEPTION?? (
=>??) +
_SMTP_EXCEPTION??, ;
;??; <
publicAA 
staticAA 
intAA $
UNKOWN_EXCEPTION_OCURREDAA 2
=>AA3 5%
_UNKOWN_EXCEPTION_OCURREDAA6 O
;AAO P
}BB 
}EE ë5
ÅC:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameServer\JeopardyGame.Data\Exceptions\ExceptionHandler.cs
	namespace 	
JeopardyGame
 
. 
Data 
. 

Exceptions &
{ 
public 

static 
class 
ExceptionHandler (
{ 
public 
static 
void 
LogException '
(' (
	Exception( 1
	exception2 ;
,; <
String= C
CategoryD L
)L M
{ 	
string 

logMessage 
= 
$"  "
$str" #
{# $
DateTime$ ,
., -
Now- 0
}0 1
$str1 9
{9 :
Category: B
}B C
$strC Q
{Q R
	exceptionR [
.[ \
Message\ c
}c d
$strd s
{s t
	exceptiont }
.} ~

StackTrace	~ à
}
à â
$str
â ã
"
ã å
;
å ç
SeriLogConfig 
	logConfig #
=$ %
new& )
SeriLogConfig* 7
(7 8
)8 9
;9 :
File 
. 
AppendAllText 
( 
	logConfig (
.( )
getPath) 0
(0 1
)1 2
,2 3

logMessage4 >
)> ?
;? @
} 	
public 
static 
GenericClassServer (
<( )
T) *
>* +)
HandleExceptionDataAccesLevel, I
<I J
TJ K
>K L
(L M
GenericClassServerM _
<_ `
T` a
>a b
resultExceptionc r
,r s
	Exceptiont }
	exception	~ á
)
á à
{ 	
resultException 
. 
ObjectSaved '
=( )
default* 1
;1 2
if 
( 
	exception 
is %
InvalidOperationException 6
)6 7
{ 
resultException 
.  
	CodeEvent  )
=* +
ExceptionDictionary, ?
.? @
INVALID_OPERATION@ Q
;Q R
return 
resultException &
;& '
} 
if 
( 
	exception 
is !
ArgumentNullException 2
)2 3
{   
resultException!! 
.!!  
	CodeEvent!!  )
=!!* +
ExceptionDictionary!!, ?
.!!? @
SAVE_CHANGES_ERROR!!@ R
;!!R S
return"" 
resultException"" &
;""& '
}## 
if$$ 
($$ 
	exception$$ 
is$$ 
DbUpdateException$$ .
)$$. /
{%% 
resultException&& 
.&&  
	CodeEvent&&  )
=&&* +
ExceptionDictionary&&, ?
.&&? @
SAVE_CHANGES_ERROR&&@ R
;&&R S
return'' 
resultException'' &
;''& '
}(( 
if)) 
()) 
	exception)) 
is)) 
EntityException)) ,
))), -
{** 
resultException++ 
.++  
	CodeEvent++  )
=++* +
ExceptionDictionary++, ?
.++? @
ENTITY_ERROR++@ L
;++L M
return,, 
resultException,, &
;,,& '
}-- 
if.. 
(.. 
	exception.. 
is.. 
SqlException.. )
)..) *
{// 
resultException00 
.00  
	CodeEvent00  )
=00* +
ExceptionDictionary00, ?
.00? @
	SQL_ERROR00@ I
;00I J
return11 
resultException11 &
;11& '
}22 
if33 
(33 
	exception33 
is33 
FormatException33 ,
)33, -
{44 
resultException55 
.55  
	CodeEvent55  )
=55* +
ExceptionDictionary55, ?
.55? @
FORMMAT_EXCEPTION55@ Q
;55Q R
return66 
resultException66 &
;66& '
}77 
if88 
(88 
	exception88 
is88 
RankException88 )
)88) *
{99 
resultException:: 
.::  
	CodeEvent::  )
=::* +
ExceptionDictionary::, ?
.::? @
RANK_EXCEPTION::@ N
;::N O
return;; 
resultException;; &
;;;& '
}<< 
if== 
(== 
	exception== 
is== 
	Exception== &
)==& '
{>> 
resultException?? 
.??  
	CodeEvent??  )
=??* +
ExceptionDictionary??, ?
.??? @$
UNKOWN_EXCEPTION_OCURRED??@ X
;??X Y
return@@ 
resultException@@ &
;@@& '
}AA 
returnBB 
resultExceptionBB "
;BB" #
}CC 	
}EE 
publicHH 

staticHH 
classHH !
NullParametersHandlerHH -
{II 
publicJJ 
staticJJ 
GenericClassServerJJ (
<JJ( )
TJJ) *
>JJ* +(
HandleNullParametersDataBaseJJ, H
<JJH I
TJJI J
>JJJ K
(JJK L
GenericClassServerJJL ^
<JJ^ _
TJJ_ `
>JJ` a
resultWithNullJJb p
)JJp q
{KK 	
resultWithNullLL 
.LL 
ObjectSavedLL &
=LL' (
defaultLL) 0
;LL0 1
resultWithNullMM 
.MM 
	CodeEventMM $
=MM% &
ExceptionDictionaryMM' :
.MM: ;
NULL_PARAEMETERMM; J
;MMJ K
returnNN 
resultWithNullNN !
;NN! "
}OO 	
publicQQ 
staticQQ 
GenericClassQQ "
<QQ" #
TQQ# $
>QQ$ %'
HandleNullParametersServiceQQ& A
<QQA B
TQQB C
>QQC D
(QQD E
GenericClassQQE Q
<QQQ R
TQQR S
>QQS T
resultWithNullQQU c
)QQc d
{RR 	
resultWithNullSS 
.SS 
ObjectSavedSS &
=SS' (
defaultSS) 0
;SS0 1
resultWithNullTT 
.TT 
	CodeEventTT $
=TT% &
ExceptionDictionaryTT' :
.TT: ;
NULL_PARAEMETERTT; J
;TTJ K
returnUU 
resultWithNullUU !
;UU! "
}VV 	
}WW 
}ZZ –3
~C:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameServer\JeopardyGame.Data\Exceptions\SeriLogConfig.cs
	namespace 	
JeopardyGame
 
. 
Data 
. 

Exceptions &
{ 
public 

class 
SeriLogConfig 
{ 
private 
static 
readonly 
string  &
logFileName' 2
=3 4
$"5 7
$str7 ?
{? @
DateTime@ H
.H I
NowI L
.L M
ToStringM U
(U V
$strV g
)g h
}h i
$stri m
"m n
;n o
private 
readonly 
String 
pathTris  (
=) *
$str	+ ´
;
´ ¨
private 
readonly 
String 
pathDodonaji  ,
=- .
$str. 1
;1 2
private 
String 
absolutePath #
;# $
public 
SeriLogConfig 
( 
) 
{ 	
String 
pathPC 
; 
if 
( 
GetMachineId 
( 
) 
. 
Equals %
(% &
$str& <
)< =
)= >
{ 
pathPC 
= 
pathTris !
;! "
} 
else 
{ 
pathPC 
= 
pathDodonaji %
;% &
} 
absolutePath   
=   
Path   
.    
Combine    '
(  ' (
pathPC  ( .
,  . /
logFileName  0 ;
)  ; <
;  < =
ConfigureLogger!! 
(!! 
absolutePath!! (
)!!( )
;!!) *
}"" 	
public## 
static## 
void## 
ConfigureLogger## *
(##* +
String##+ 1
relativePath##2 >
)##> ?
{$$ 	
Log%% 
.%% 
Logger%% 
=%% 
new%% 
LoggerConfiguration%% 0
(%%0 1
)%%1 2
.%%2 3
MinimumLevel%%3 ?
.%%? @
Error%%@ E
(%%E F
)%%F G
.%%G H
WriteTo%%H O
.%%O P
File%%P T
(%%T U
relativePath%%U a
,%%a b
rollingInterval%%c r
:%%r s
RollingInterval	%%t É
.
%%É Ñ
Day
%%Ñ á
)
%%á à
.
%%à â
CreateLogger
%%â ï
(
%%ï ñ
)
%%ñ ó
;
%%ó ò
}&& 	
public(( 
String(( 
getPath(( 
((( 
)(( 
{)) 	
return** 
absolutePath** 
;**  
}++ 	
private.. 
static.. 
string.. 
GetMachineId.. *
(..* +
)..+ ,
{// 	
try00 
{11 $
ManagementObjectSearcher22 (
searcher22) 1
=222 3
new224 7$
ManagementObjectSearcher228 P
(22P Q
$str22Q p
)22p q
;22q r&
ManagementObjectCollection33 *
drives33+ 1
=332 3
searcher334 <
.33< =
Get33= @
(33@ A
)33A B
;33B C
foreach44 
(44 
ManagementObject44 )
drive44* /
in440 2
drives443 9
)449 :
{55 
string66 
serialNumber66 '
=66( )
drive66* /
[66/ 0
$str660 >
]66> ?
?66? @
.66@ A
ToString66A I
(66I J
)66J K
;66K L
if77 
(77 
!77 
string77 
.77  
IsNullOrEmpty77  -
(77- .
serialNumber77. :
)77: ;
)77; <
{88 
return99 
serialNumber99 +
;99+ ,
}:: 
};; 
}<< 
catch== 
(== 
SecurityException== $
ex==% '
)==' (
{>> 
ExceptionHandler??  
.??  !
LogException??! -
(??- .
ex??. 0
,??0 1
ExceptionDictionary??1 D
.??D E
FATAL_EXCEPTION??E T
)??T U
;??U V
ConfigureLogger@@ 
(@@  
logFileName@@  +
)@@+ ,
;@@, -
}AA 
catchBB 
(BB '
UnauthorizedAccessExceptionBB .
exBB/ 1
)BB1 2
{CC 
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
;DDV W
ConfigureLoggerEE 
(EE  
logFileNameEE  +
)EE+ ,
;EE, -
}FF 
catchGG 
(GG 
ManagementExceptionGG &
exGG' )
)GG) *
{HH 
ExceptionHandlerII  
.II  !
LogExceptionII! -
(II- .
exII. 0
,II0 1
ExceptionDictionaryII2 E
.IIE F
FATAL_EXCEPTIONIIF U
)IIU V
;IIV W
ConfigureLoggerJJ 
(JJ  
logFileNameJJ  +
)JJ+ ,
;JJ, -
}KK 
catchLL 
(LL "
NullReferenceExceptionLL )
exLL* ,
)LL, -
{MM 
ExceptionHandlerNN  
.NN  !
LogExceptionNN! -
(NN- .
exNN. 0
,NN0 1
ExceptionDictionaryNN2 E
.NNE F
FATAL_EXCEPTIONNNF U
)NNU V
;NNV W
ConfigureLoggerOO 
(OO  
logFileNameOO  +
)OO+ ,
;OO, -
}PP 
catchQQ 
(QQ 
	ExceptionQQ 
exQQ 
)QQ  
{RR 
ExceptionHandlerSS  
.SS  !
LogExceptionSS! -
(SS- .
exSS. 0
,SS0 1
ExceptionDictionarySS2 E
.SSE F
FATAL_EXCEPTIONSSF U
)SSU V
;SSV W
ConfigureLoggerTT 
(TT  
logFileNameTT  +
)TT+ ,
;TT, -
}UU 
returnVV 
GuidVV 
.VV 
NewGuidVV 
(VV  
)VV  !
.VV! "
ToStringVV" *
(VV* +
)VV+ ,
;VV, -
}WW 	
}ZZ 
}]] òS
C:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameServer\JeopardyGame.Data\GenericClassAndObjecSaved.cs
	namespace 	
JeopardyGame
 
. 
Data 
{ 
[ 
DataContract 
] 
[ 
	KnownType 
( 
typeof 
( 
GenericClass "
<" #
int# &
>& '
)' (
)( )
]) *
[ 
	KnownType 
( 
typeof 
( 
GenericClass "
<" #"
FriendBasicInformation# 9
>9 :
): ;
); <
]< =
[ 
	KnownType 
( 
typeof 
( 
GenericClass "
<" #
PlayerInLobby# 0
>0 1
)1 2
)2 3
]3 4
[ 
	KnownType 
( 
typeof 
( 
GenericClass "
<" #
UserPOJO# +
>+ ,
), -
)- .
]. /
[ 
	KnownType 
( 
typeof 
( 
GenericClass "
<" #

PlayerPOJO# -
>- .
). /
)/ 0
]0 1
[ 
	KnownType 
( 
typeof 
( 
GenericClass "
<" #
UserValidate# /
>/ 0
)0 1
)1 2
]2 3
[ 
	KnownType 
( 
typeof 
( 
GenericClass "
<" #

AvatarPojo# -
>- .
). /
)/ 0
]0 1
[ 
	KnownType 
( 
typeof 
( 
GenericClass "
<" #
AvatarChoice# /
>/ 0
)0 1
)1 2
]2 3
[ 
	KnownType 
( 
typeof 
( 
GenericClass "
<" #
MessageChat# .
>. /
)/ 0
)0 1
]1 2
public 

class 
GenericClass 
< 
T 
>  
{ 
[ 	

DataMember	 
] 
public 
T 
ObjectSaved 
{ 
get "
;" #
set$ '
;' (
}) *
[ 	

DataMember	 
] 
public 
int 
	CodeEvent 
{ 
get "
;" #
set$ '
;' (
}) *
public 
GenericClass 
( 
) 
{   	
}"" 	
}## 
public%% 

class%% 
GenericClassServer%% #
<%%# $
T%%$ %
>%%% &
{&& 
public'' 
T'' 
ObjectSaved'' 
{'' 
get'' "
;''" #
set''$ '
;''' (
}'') *
public)) 
int)) 
	CodeEvent)) 
{)) 
get)) "
;))" #
set))$ '
;))' (
}))) *
public++ 
GenericClassServer++ !
(++! "
)++" #
{,, 	
}.. 	
}// 
public11 

struct11 "
FriendBasicInformation11 (
{22 
private33 
int33 
idUser33 
;33 
private44 
string44 
userName44 
;44  
private55 
int55  
idStatusAvailability55 (
;55( )
public66 
int66 
IdUser66 
{66 
get66 
;66  
set66! $
;66$ %
}66& '
public77 
string77 
UserName77 
{77  
get77! $
;77$ %
set77& )
;77) *
}77+ ,
public88 
int88  
IdStatusAvailability88 '
{88( )
get88* -
;88- .
set88/ 2
;882 3
}884 5
}99 
public;; 

struct;; 
MessageChat;; 
{<< 
private== 
string== 
userName== 
;==  
private>> 
string>> 
messageToSend>> $
;>>$ %
private?? 
int?? 
idUser?? 
;?? 
public@@ 
int@@ 
IdUser@@ 
{@@ 
get@@ 
;@@  
set@@! $
;@@$ %
}@@) *
publicAA 
stringAA 
UserNameAA 
{AA  
getAA! $
;AA$ %
setAA& )
;AA) *
}AA+ ,
publicBB 
stringBB 
MessageToSendBB #
{BB$ %
getBB& )
;BB) *
setBB+ .
;BB. /
}BB0 1
}CC 
publicDD 

structDD 
PlayerInLobbyDD 
{EE 
privateFF 
intFF 
idUserFF 
;FF 
privateGG 
intGG 
idPlayerGG 
;GG 
privateHH 
stringHH 
userNameHH 
;HH  
privateII 
intII !
numberOfPlayerInLobbyII )
;II) *
privateJJ 
intJJ 

sideOfTeamJJ 
;JJ 
publicKK 
intKK 
IdUserKK 
{KK 
getKK 
;KK  
setKK! $
;KK$ %
}KK& '
publicLL 
intLL 
IdPlayerLL 
{LL 
getLL !
;LL! "
setLL# &
;LL& '
}LL( )
publicMM 
stringMM 
UserNameMM 
{MM  
getMM! $
;MM$ %
setMM& )
;MM) *
}MM+ ,
publicNN 
intNN !
NumberOfPlayerInLobbyNN (
{NN) *
getNN+ .
;NN. /
setNN0 3
;NN3 4
}NN5 6
publicOO 
intOO 

SideOfTeamOO 
{OO 
getOO  #
;OO# $
setOO% (
;OO( )
}OO* +
}PP 
publicSS 

classSS 
UserPOJOSS 
{TT 
privateUU 
intUU 
idUserUU 
;UU 
privateVV 
StringVV 
nameVV 
;VV 
privateWW 
StringWW 
userNameWW 
;WW  
privateXX 
StringXX 
emailAddressXX #
;XX# $
privateYY 
StringYY 
passwordYY 
;YY  
publicZZ 
intZZ 
IdUserZZ 
{ZZ 
getZZ 
;ZZ  
setZZ! $
;ZZ$ %
}ZZ& '
public[[ 
String[[ 
UserName[[ 
{[[  
get[[! $
;[[$ %
set[[& )
;[[) *
}[[+ ,
public\\ 
String\\ 
Name\\ 
{\\ 
get\\  
;\\  !
set\\" %
;\\% &
}\\' (
public]] 
String]] 
EmailAddress]] "
{]]# $
get]]% (
;]]( )
set]]* -
;]]- .
}]]/ 0
public^^ 
String^^ 
Password^^ 
{^^  
get^^! $
;^^$ %
set^^& )
;^^) *
}^^+ ,
}__ 
public`` 

class`` 

PlayerPOJO`` 
{aa 
privatebb 
intbb 
idPlayerbb 
;bb 
privatecc 
intcc 
generalPointscc !
;cc! "
privatedd 
intdd 
	noReportsdd 
;dd 
privateee 
intee 
idUseree 
;ee 
privateff 
intff 
idStateff 
;ff 
privategg 
intgg 
idActualAvatargg "
;gg" #
publichh 
inthh 
IdPlayerhh 
{hh 
gethh !
;hh! "
sethh# &
;hh& '
}hh( )
publicii 
intii 
GeneralPointsii  
{ii! "
getii# &
;ii& '
setii( +
;ii+ ,
}ii- .
publicjj 
intjj 
	NoReportsjj 
{jj 
getjj "
;jj" #
setjj$ '
;jj' (
}jj) *
publickk 
intkk 
IdUserkk 
{kk 
getkk 
;kk  
setkk! $
;kk$ %
}kk& '
publicll 
intll 
IdStatell 
{ll 
getll  
;ll  !
setll" %
;ll% &
}ll' (
publicmm 
intmm 
IdActualAvatarmm !
{mm" #
getmm$ '
;mm' (
setmm) ,
;mm, -
}mm. /
}nn 
publicpp 

classpp 
UserValidatepp 
{qq 
privaterr 
Stringrr 
userNamerr 
;rr  
privatess 
Stringss 
passwordss 
;ss  
publictt 
Stringtt 
UserNamett 
{tt  
gettt! $
;tt$ %
settt& )
;tt) *
}tt+ ,
publicuu 
Stringuu 
Passworduu 
{uu  
getuu! $
;uu$ %
setuu& )
;uu) *
}uu+ ,
}vv 
publicxx 

classxx 

AvatarPojoxx 
{yy 
publiczz 
intzz 
Idzz 
{zz 
getzz 
;zz 
setzz  
;zz  !
}zz" #
public{{ 
string{{ 

AvatarName{{  
{{{! "
get{{# &
;{{& '
set{{( +
;{{+ ,
}{{- .
public|| 
byte|| 
[|| 
]|| 
	ImageData|| 
{||  !
get||" %
;||% &
set||' *
;||* +
}||, -
}}} 
public 

class 
AvatarChoice 
{
ÄÄ 
public
ÅÅ 
int
ÅÅ 
IdAvatar
ÅÅ 
{
ÅÅ 
get
ÅÅ !
;
ÅÅ! "
set
ÅÅ# &
;
ÅÅ& '
}
ÅÅ( )
public
ÇÇ 
int
ÇÇ 
idPlayer
ÇÇ 
{
ÇÇ 
get
ÇÇ !
;
ÇÇ! "
set
ÇÇ# &
;
ÇÇ& '
}
ÇÇ( )
}
ÉÉ 
}ÖÖ ®
}C:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameServer\JeopardyGame.Data\Properties\AssemblyInfo.cs
[ 
assembly 	
:	 

AssemblyTitle 
( 
$str ,
), -
]- .
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
$str .
). /
]/ 0
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
]$$) *