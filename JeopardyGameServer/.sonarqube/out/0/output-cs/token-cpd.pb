å¡
åC:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameServer\JeopardyGame.Data\DataAccess\FriendsManagerDataOperation.cs
	namespace 	
JeopardyGame
 
. 
Data 
. 

DataAccess &
{ 
public 

static 
class '
FriendsManagerDataOperation 3
{ 
private 
static 
readonly 
int  #
FRIEND_STATUS_NEW$ 5
=6 7
$num8 9
;9 :
private 
static 
readonly 
int  #)
FRIEND_STATUS_ACCCEPT_REQUEST$ A
=B C
$numD E
;E F
private 
static 
readonly 
int  #
NULL_INT_VALUE$ 2
=3 4
$num5 6
;6 7
public 
static 
GenericClassServer (
<( )
List) -
<- .
Friend. 4
>4 5
>5 6"
ConsultFriendsOfPlayer7 M
(M N
PlayerN T
playerU [
)[ \
{ 	
GenericClassServer 
< 
List #
<# $
Friend$ *
>* +
>+ ,
resultOfOperation- >
=? @
newA D
GenericClassServerE W
<W X
ListX \
<\ ]
Friend] c
>c d
>d e
(e f
)f g
;g h
if 
( 
player 
== 
null 
) 
{ 
return !
NullParametersHandler ,
., -(
HandleNullParametersDataBase- I
(I J
resultOfOperationJ [
)[ \
;\ ]
} 
try 
{ 
using 
( 
var 
	contextBD $
=% &
new' *
JeopardyDBContainer+ >
(> ?
)? @
)@ A
{ 
var!! 
friendsOfUser!! %
=!!& '
	contextBD!!( 1
.!!1 2
Friends!!2 9
.!!9 :
Where!!: ?
(!!? @
Friend!!@ F
=>!!G I
Friend!!J P
.!!P Q
Player_IdPlayer!!Q `
==!!a c
player!!d j
.!!j k
IdPlayer!!k s
||!!t v
Friend!!w }
.!!} ~"
PlayerFriend_IdPlayer	!!~ ì
==
!!î ñ
player
!!ó ù
.
!!ù û
IdPlayer
!!û ¶
)
!!¶ ß
.
!!ß ®
ToList
!!® Æ
(
!!Æ Ø
)
!!Ø ∞
;
!!∞ ±
resultOfOperation"" %
.""% &
ObjectSaved""& 1
=""2 3
friendsOfUser""4 A
;""A B
resultOfOperation$$ )
.$$) *
	CodeEvent$$* 3
=$$4 5
ExceptionDictionary$$6 I
.$$I J
SUCCESFULL_EVENT$$J Z
;$$Z [
}&& 
}'' 
catch(( 
((( !
ArgumentNullException(( (
ex(() +
)((+ ,
{)) 
resultOfOperation** !
=**" #
ExceptionHandler**$ 4
.**4 5)
HandleExceptionDataAccesLevel**5 R
(**R S
resultOfOperation**S d
,**d e
ex**f h
)**h i
;**i j
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
(-- 
EntityException-- "
ex--# %
)--% &
{.. 
resultOfOperation// !
=//" #
ExceptionHandler//$ 4
.//4 5)
HandleExceptionDataAccesLevel//5 R
(//R S
resultOfOperation//S d
,//d e
ex//f h
)//h i
;//i j
ExceptionHandler00  
.00  !
LogException00! -
(00- .
ex00. 0
,000 1
ExceptionDictionary002 E
.00E F
FATAL_EXCEPTION00F U
)00U V
;00V W
}11 
catch22 
(22 
SqlException22 
ex22  "
)22" #
{33 
resultOfOperation44 !
=44" #
ExceptionHandler44$ 4
.444 5)
HandleExceptionDataAccesLevel445 R
(44R S
resultOfOperation44S d
,44d e
ex44f h
)44h i
;44i j
ExceptionHandler55  
.55  !
LogException55! -
(55- .
ex55. 0
,550 1
ExceptionDictionary552 E
.55E F
FATAL_EXCEPTION55F U
)55U V
;55V W
}66 
catch77 
(77 '
DbEntityValidationException77 .
ex77/ 1
)771 2
{88 
resultOfOperation99 !
=99" #
ExceptionHandler99$ 4
.994 5)
HandleExceptionDataAccesLevel995 R
(99R S
resultOfOperation99S d
,99d e
ex99f h
)99h i
;99i j
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
};; 
return<< 
resultOfOperation<< $
;<<$ %
}== 	
public?? 
static?? 
GenericClassServer?? (
<??( )
List??) -
<??- .
Player??. 4
>??4 5
>??5 6!
Get20NotFriendsPlayer??7 L
(??L M
Player??M S
player??T Z
)??Z [
{@@ 	
GenericClassServerAA 
<AA 
ListAA #
<AA# $
PlayerAA$ *
>AA* +
>AA+ ,
resultOfOperationAA- >
=AA? @
newAAA D
GenericClassServerAAE W
<AAW X
ListAAX \
<AA\ ]
PlayerAA] c
>AAc d
>AAd e
(AAe f
)AAf g
;AAg h
ifBB 
(BB 
playerBB 
==BB 
nullBB 
)BB 
{CC 
returnDD !
NullParametersHandlerDD ,
.DD, -(
HandleNullParametersDataBaseDD- I
(DDI J
resultOfOperationDDJ [
)DD[ \
;DD\ ]
}EE 
tryFF 
{GG 
usingHH 
(HH 
varHH 
	contextBDHH $
=HH% &
newHH' *
JeopardyDBContainerHH+ >
(HH> ?
)HH? @
)HH@ A
{II 
varJJ 
friendsOfUserJJ %
=JJ& '"
ConsultFriendsOfPlayerJJ( >
(JJ> ?
playerJJ? E
)JJE F
;JJF G
ListKK 
<KK 
intKK 
>KK 

idsFriendsKK (
=KK) *
newKK+ .
ListKK/ 3
<KK3 4
intKK4 7
>KK7 8
(KK8 9
)KK9 :
;KK: ;
ifLL 
(LL 
friendsOfUserLL $
.LL$ %
	CodeEventLL% .
==LL/ 1
ExceptionDictionaryLL2 E
.LLE F
SUCCESFULL_EVENTLLF V
)LLV W
{MM 
foreachNN 
(NN  !
varNN! $
friendNN% +
inNN, .
friendsOfUserNN/ <
.NN< =
ObjectSavedNN= H
)NNH I
{OO 
ifPP 
(PP  
friendPP  &
.PP& '
Player_IdPlayerPP' 6
==PP7 9
playerPP: @
.PP@ A
IdPlayerPPA I
)PPI J
{QQ 

idsFriendsRR  *
.RR* +
AddRR+ .
(RR. /
friendRR/ 5
.RR5 6!
PlayerFriend_IdPlayerRR6 K
)RRK L
;RRL M
}SS 
elseTT  
{UU 

idsFriendsVV  *
.VV* +
AddVV+ .
(VV. /
friendVV/ 5
.VV5 6
Player_IdPlayerVV6 E
)VVE F
;VVF G
}WW 
}XX 

idsFriendsYY "
.YY" #
AddYY# &
(YY& '
playerYY' -
.YY- .
IdPlayerYY. 6
)YY6 7
;YY7 8
varZZ 
playersNotFriendsZZ -
=ZZ. /
	contextBDZZ0 9
.ZZ9 :
PlayersZZ: A
.ZZA B
WhereZZB G
(ZZG H
playerDataBaseZZH V
=>ZZW Y
!ZZZ [

idsFriendsZZ[ e
.ZZe f
ContainsZZf n
(ZZn o
playerDataBaseZZo }
.ZZ} ~
IdPlayer	ZZ~ Ü
)
ZZÜ á
&&
ZZà ä
playerDataBase
ZZã ô
.
ZZô ö
State_idState
ZZö ß
!=
ZZ® ™
$num
ZZ´ ¨
)
ZZ¨ ≠
.
ZZ≠ Æ
Take
ZZÆ ≤
(
ZZ≤ ≥
$num
ZZ≥ µ
)
ZZµ ∂
.
ZZ∂ ∑
ToList
ZZ∑ Ω
(
ZZΩ æ
)
ZZæ ø
;
ZZø ¿
resultOfOperation[[ )
.[[) *
ObjectSaved[[* 5
=[[6 7
playersNotFriends[[8 I
;[[I J
resultOfOperation]] -
.]]- .
	CodeEvent]]. 7
=]]8 9
ExceptionDictionary]]: M
.]]M N
SUCCESFULL_EVENT]]N ^
;]]^ _
}__ 
else`` 
{aa 
resultOfOperationbb )
.bb) *
ObjectSavedbb* 5
=bb6 7
nullbb8 <
;bb< =
resultOfOperationcc )
.cc) *
	CodeEventcc* 3
=cc4 5
friendsOfUsercc6 C
.ccC D
	CodeEventccD M
;ccM N
}dd 
}ee 
}ff 
catchgg 
(gg !
ArgumentNullExceptiongg (
exgg) +
)gg+ ,
{hh 
resultOfOperationii !
=ii" #
ExceptionHandlerii$ 4
.ii4 5)
HandleExceptionDataAccesLevelii5 R
(iiR S
resultOfOperationiiS d
,iid e
exiif h
)iih i
;iii j
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
(ll 
EntityExceptionll "
exll# %
)ll% &
{mm 
resultOfOperationnn !
=nn" #
ExceptionHandlernn$ 4
.nn4 5)
HandleExceptionDataAccesLevelnn5 R
(nnR S
resultOfOperationnnS d
,nnd e
exnnf h
)nnh i
;nni j
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
(qq 
SqlExceptionqq 
exqq  "
)qq" #
{rr 
resultOfOperationss !
=ss" #
ExceptionHandlerss$ 4
.ss4 5)
HandleExceptionDataAccesLevelss5 R
(ssR S
resultOfOperationssS d
,ssd e
exssf h
)ssh i
;ssi j
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
(vv '
DbEntityValidationExceptionvv .
exvv/ 1
)vv1 2
{ww 
resultOfOperationxx !
=xx" #
ExceptionHandlerxx$ 4
.xx4 5)
HandleExceptionDataAccesLevelxx5 R
(xxR S
resultOfOperationxxS d
,xxd e
exxxf h
)xxh i
;xxi j
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
return{{ 
resultOfOperation{{ $
;{{$ %
}|| 	
public~~ 
static~~ 
GenericClassServer~~ )
<~~) *
int~~* -
>~~- .!
DeleteFriendsRegister~~/ D
(~~D E
int~~E H
idPlayerFriend1~~I X
,~~X Y
int~~Z ]
idPlayerFriend2~~^ m
)~~m n
{ 	 
GenericClassServer
ÄÄ 
<
ÄÄ 
int
ÄÄ "
>
ÄÄ" #
resultOfOperation
ÄÄ$ 5
=
ÄÄ6 7
new
ÄÄ8 ; 
GenericClassServer
ÄÄ< N
<
ÄÄN O
int
ÄÄO R
>
ÄÄR S
(
ÄÄS T
)
ÄÄT U
;
ÄÄU V
if
ÅÅ 
(
ÅÅ 
idPlayerFriend1
ÅÅ 
==
ÅÅ  "
NULL_INT_VALUE
ÅÅ# 1
||
ÅÅ2 4
idPlayerFriend2
ÅÅ5 D
==
ÅÅE G
NULL_INT_VALUE
ÅÅH V
)
ÅÅV W
{
ÇÇ 
return
ÉÉ #
NullParametersHandler
ÉÉ ,
.
ÉÉ, -*
HandleNullParametersDataBase
ÉÉ- I
(
ÉÉI J
resultOfOperation
ÉÉJ [
)
ÉÉ[ \
;
ÉÉ\ ]
}
ÑÑ 
try
ÖÖ 
{
ÜÜ 
using
áá 
(
áá 
var
áá 
	contextBD
áá $
=
áá% &
new
áá' *!
JeopardyDBContainer
áá+ >
(
áá> ?
)
áá? @
)
áá@ A
{
àà 
var
ââ  
friendshipToDelete
ââ *
=
ââ+ ,
	contextBD
ââ- 6
.
ââ6 7
Friends
ââ7 >
.
ââ> ?
FirstOrDefault
ââ? M
(
ââM N
friendRegistry
ââN \
=>
ââ] _
(
ââ` a
friendRegistry
ââa o
.
ââo p
Player_IdPlayer
ââp 
==ââÄ Ç
idPlayerFriend1ââÉ í
&&ââì ï
friendRegistryââñ §
.ââ§ •%
PlayerFriend_IdPlayerââ• ∫
==ââª Ω
idPlayerFriend2ââæ Õ
)ââÕ Œ
||ââœ —
(ââ“ ”
friendRegistryââ” ·
.ââ· ‚
Player_IdPlayerââ‚ Ò
==ââÚ Ù
idPlayerFriend2ââı Ñ
&&ââÖ á
friendRegistryââà ñ
.ââñ ó%
PlayerFriend_IdPlayerââó ¨
==ââ≠ Ø
idPlayerFriend1ââ∞ ø
)ââø ¿
)ââ¿ ¡
;ââ¡ ¬
if
ää 
(
ää  
friendshipToDelete
ää *
!=
ää+ -
null
ää. 2
)
ää2 3
{
ãã 
	contextBD
åå !
.
åå! "
Friends
åå" )
.
åå) *
Remove
åå* 0
(
åå0 1 
friendshipToDelete
åå1 C
)
ååC D
;
ååD E
int
çç 
resultEvent
çç '
=
çç( )
	contextBD
çç* 3
.
çç3 4
SaveChanges
çç4 ?
(
çç? @
)
çç@ A
;
ççA B
resultOfOperation
éé )
.
éé) *
ObjectSaved
éé* 5
=
éé6 7
resultEvent
éé8 C
;
ééC D
if
èè 
(
èè 
resultEvent
èè '
!=
èè( *
NULL_INT_VALUE
èè+ 9
)
èè9 :
{
êê 
resultOfOperation
ëë -
.
ëë- .
	CodeEvent
ëë. 7
=
ëë8 9!
ExceptionDictionary
ëë: M
.
ëëM N
SUCCESFULL_EVENT
ëëN ^
;
ëë^ _
}
íí 
else
ìì 
{
îî 
resultOfOperation
ïï -
.
ïï- .
	CodeEvent
ïï. 7
=
ïï8 9!
ExceptionDictionary
ïï: M
.
ïïM N 
UNSUCCESFULL_EVENT
ïïN `
;
ïï` a
}
ññ 
}
óó 
else
òò 
{
ôô 
resultOfOperation
öö )
.
öö) *
	CodeEvent
öö* 3
=
öö4 5!
ExceptionDictionary
öö6 I
.
ööI J 
UNSUCCESFULL_EVENT
ööJ \
;
öö\ ]
}
õõ 
}
úú 
}
ùù 
catch
ûû 
(
ûû 
DbUpdateException
ûû $
ex
ûû% '
)
ûû' (
{
üü 
resultOfOperation
†† !
=
††" #
ExceptionHandler
††$ 4
.
††4 5+
HandleExceptionDataAccesLevel
††5 R
(
††R S
resultOfOperation
††S d
,
††d e
ex
††f h
)
††h i
;
††i j
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
££ #
ArgumentNullException
££ (
ex
££) +
)
££+ ,
{
§§ 
resultOfOperation
•• !
=
••" #
ExceptionHandler
••$ 4
.
••4 5+
HandleExceptionDataAccesLevel
••5 R
(
••R S
resultOfOperation
••S d
,
••d e
ex
••f h
)
••h i
;
••i j
ExceptionHandler
¶¶  
.
¶¶  !
LogException
¶¶! -
(
¶¶- .
ex
¶¶. 0
,
¶¶0 1!
ExceptionDictionary
¶¶2 E
.
¶¶E F
FATAL_EXCEPTION
¶¶F U
)
¶¶U V
;
¶¶V W
}
ßß 
catch
®® 
(
®® 
EntityException
®® "
ex
®®# %
)
®®% &
{
©© 
resultOfOperation
™™ !
=
™™" #
ExceptionHandler
™™$ 4
.
™™4 5+
HandleExceptionDataAccesLevel
™™5 R
(
™™R S
resultOfOperation
™™S d
,
™™d e
ex
™™f h
)
™™h i
;
™™i j
ExceptionHandler
´´  
.
´´  !
LogException
´´! -
(
´´- .
ex
´´. 0
,
´´0 1!
ExceptionDictionary
´´2 E
.
´´E F
FATAL_EXCEPTION
´´F U
)
´´U V
;
´´V W
}
¨¨ 
catch
≠≠ 
(
≠≠ 
SqlException
≠≠ 
ex
≠≠  "
)
≠≠" #
{
ÆÆ 
resultOfOperation
ØØ !
=
ØØ" #
ExceptionHandler
ØØ$ 4
.
ØØ4 5+
HandleExceptionDataAccesLevel
ØØ5 R
(
ØØR S
resultOfOperation
ØØS d
,
ØØd e
ex
ØØf h
)
ØØh i
;
ØØi j
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
≤≤ )
DbEntityValidationException
≤≤ .
ex
≤≤/ 1
)
≤≤1 2
{
≥≥ 
resultOfOperation
¥¥ !
=
¥¥" #
ExceptionHandler
¥¥$ 4
.
¥¥4 5+
HandleExceptionDataAccesLevel
¥¥5 R
(
¥¥R S
resultOfOperation
¥¥S d
,
¥¥d e
ex
¥¥f h
)
¥¥h i
;
¥¥i j
ExceptionHandler
µµ  
.
µµ  !
LogException
µµ! -
(
µµ- .
ex
µµ. 0
,
µµ0 1!
ExceptionDictionary
µµ2 E
.
µµE F
FATAL_EXCEPTION
µµF U
)
µµU V
;
µµV W
}
∂∂ 
return
∑∑ 
resultOfOperation
∑∑ $
;
∑∑$ %
}
∏∏ 	
public
∫∫ 
static
∫∫  
GenericClassServer
∫∫ (
<
∫∫( )
int
∫∫) ,
>
∫∫, -!
AcceptFriendRequest
∫∫. A
(
∫∫A B
int
∫∫B E
idPlayerFriend1
∫∫F U
,
∫∫U V
int
∫∫W Z
idPlayerFriend2
∫∫[ j
)
∫∫j k
{
ªª 	 
GenericClassServer
ºº 
<
ºº 
int
ºº "
>
ºº" #
resultOfOperation
ºº$ 5
=
ºº6 7
new
ºº8 ; 
GenericClassServer
ºº< N
<
ººN O
int
ººO R
>
ººR S
(
ººS T
)
ººT U
;
ººU V
if
ΩΩ 
(
ΩΩ 
idPlayerFriend1
ΩΩ 
==
ΩΩ  "
NULL_INT_VALUE
ΩΩ# 1
||
ΩΩ2 4
idPlayerFriend2
ΩΩ5 D
==
ΩΩE G
NULL_INT_VALUE
ΩΩH V
)
ΩΩV W
{
ææ 
return
øø #
NullParametersHandler
øø ,
.
øø, -*
HandleNullParametersDataBase
øø- I
(
øøI J
resultOfOperation
øøJ [
)
øø[ \
;
øø\ ]
}
¿¿ 
try
¡¡ 
{
¬¬ 
using
√√ 
(
√√ 
var
√√ 
	contextBD
√√ $
=
√√% &
new
√√' *!
JeopardyDBContainer
√√+ >
(
√√> ?
)
√√? @
)
√√@ A
{
ƒƒ 
var
≈≈  
friendshipToChange
≈≈ *
=
≈≈+ ,
new
≈≈- 0
Friend
≈≈1 7
(
≈≈7 8
)
≈≈8 9
;
≈≈9 : 
friendshipToChange
∆∆ &
=
∆∆' (
	contextBD
∆∆) 2
.
∆∆2 3
Friends
∆∆3 :
.
∆∆: ;
FirstOrDefault
∆∆; I
(
∆∆I J
friendRegistry
∆∆J X
=>
∆∆Y [
(
∆∆\ ]
friendRegistry
∆∆] k
.
∆∆k l
Player_IdPlayer
∆∆l {
==
∆∆| ~
idPlayerFriend1∆∆ é
&&∆∆è ë
friendRegistry∆∆í †
.∆∆† °%
PlayerFriend_IdPlayer∆∆° ∂
==∆∆∑ π
idPlayerFriend2∆∆∫ …
)∆∆…  
||∆∆À Õ
(∆∆Œ œ
friendRegistry∆∆œ ›
.∆∆› ﬁ
Player_IdPlayer∆∆ﬁ Ì
==∆∆Ó 
idPlayerFriend2∆∆Ò Ä
&&∆∆Å É
friendRegistry∆∆Ñ í
.∆∆í ì%
PlayerFriend_IdPlayer∆∆ì ®
==∆∆© ´
idPlayerFriend1∆∆¨ ª
)∆∆ª º
)∆∆º Ω
;∆∆Ω æ
if
«« 
(
««  
friendshipToChange
«« *
!=
««+ -
null
««. 2
)
««2 3
{
»»  
friendshipToChange
…… *
.
……* +
IdFriendState
……+ 8
=
……9 :+
FRIEND_STATUS_ACCCEPT_REQUEST
……; X
;
……X Y
	contextBD
   !
.
  ! "
Entry
  " '
(
  ' ( 
friendshipToChange
  ( :
)
  : ;
.
  ; <
State
  < A
=
  B C
EntityState
  D O
.
  O P
Modified
  P X
;
  X Y
int
ÀÀ 
resultEvent
ÀÀ '
=
ÀÀ( )
	contextBD
ÀÀ* 3
.
ÀÀ3 4
SaveChanges
ÀÀ4 ?
(
ÀÀ? @
)
ÀÀ@ A
;
ÀÀA B
resultOfOperation
ÃÃ )
.
ÃÃ) *
ObjectSaved
ÃÃ* 5
=
ÃÃ6 7
resultEvent
ÃÃ8 C
;
ÃÃC D
if
ÕÕ 
(
ÕÕ 
resultEvent
ÕÕ '
!=
ÕÕ( *
NULL_INT_VALUE
ÕÕ+ 9
)
ÕÕ9 :
{
ŒŒ 
resultOfOperation
œœ -
.
œœ- .
	CodeEvent
œœ. 7
=
œœ8 9!
ExceptionDictionary
œœ: M
.
œœM N
SUCCESFULL_EVENT
œœN ^
;
œœ^ _
}
–– 
else
—— 
{
““ 
resultOfOperation
”” -
.
””- .
	CodeEvent
””. 7
=
””8 9!
ExceptionDictionary
””: M
.
””M N 
UNSUCCESFULL_EVENT
””N `
;
””` a
}
‘‘ 
}
’’ 
else
÷÷ 
{
◊◊ 
resultOfOperation
ÿÿ )
.
ÿÿ) *
	CodeEvent
ÿÿ* 3
=
ÿÿ4 5!
ExceptionDictionary
ÿÿ6 I
.
ÿÿI J 
UNSUCCESFULL_EVENT
ÿÿJ \
;
ÿÿ\ ]
}
ŸŸ 
}
⁄⁄ 
}
€€ 
catch
‹‹ 
(
‹‹ 
DbUpdateException
‹‹ $
ex
‹‹% '
)
‹‹' (
{
›› 
resultOfOperation
ﬁﬁ !
=
ﬁﬁ" #
ExceptionHandler
ﬁﬁ$ 4
.
ﬁﬁ4 5+
HandleExceptionDataAccesLevel
ﬁﬁ5 R
(
ﬁﬁR S
resultOfOperation
ﬁﬁS d
,
ﬁﬁd e
ex
ﬁﬁf h
)
ﬁﬁh i
;
ﬁﬁi j
ExceptionHandler
ﬂﬂ  
.
ﬂﬂ  !
LogException
ﬂﬂ! -
(
ﬂﬂ- .
ex
ﬂﬂ. 0
,
ﬂﬂ0 1!
ExceptionDictionary
ﬂﬂ2 E
.
ﬂﬂE F
FATAL_EXCEPTION
ﬂﬂF U
)
ﬂﬂU V
;
ﬂﬂV W
}
‡‡ 
catch
·· 
(
·· #
ArgumentNullException
·· (
ex
··) +
)
··+ ,
{
‚‚ 
resultOfOperation
„„ !
=
„„" #
ExceptionHandler
„„$ 4
.
„„4 5+
HandleExceptionDataAccesLevel
„„5 R
(
„„R S
resultOfOperation
„„S d
,
„„d e
ex
„„f h
)
„„h i
;
„„i j
ExceptionHandler
‰‰  
.
‰‰  !
LogException
‰‰! -
(
‰‰- .
ex
‰‰. 0
,
‰‰0 1!
ExceptionDictionary
‰‰2 E
.
‰‰E F
FATAL_EXCEPTION
‰‰F U
)
‰‰U V
;
‰‰V W
}
ÂÂ 
catch
ÊÊ 
(
ÊÊ 
EntityException
ÊÊ "
ex
ÊÊ# %
)
ÊÊ% &
{
ÁÁ 
resultOfOperation
ËË !
=
ËË" #
ExceptionHandler
ËË$ 4
.
ËË4 5+
HandleExceptionDataAccesLevel
ËË5 R
(
ËËR S
resultOfOperation
ËËS d
,
ËËd e
ex
ËËf h
)
ËËh i
;
ËËi j
ExceptionHandler
ÈÈ  
.
ÈÈ  !
LogException
ÈÈ! -
(
ÈÈ- .
ex
ÈÈ. 0
,
ÈÈ0 1!
ExceptionDictionary
ÈÈ2 E
.
ÈÈE F
FATAL_EXCEPTION
ÈÈF U
)
ÈÈU V
;
ÈÈV W
}
ÍÍ 
catch
ÎÎ 
(
ÎÎ 
SqlException
ÎÎ 
ex
ÎÎ  "
)
ÎÎ" #
{
ÏÏ 
resultOfOperation
ÌÌ !
=
ÌÌ" #
ExceptionHandler
ÌÌ$ 4
.
ÌÌ4 5+
HandleExceptionDataAccesLevel
ÌÌ5 R
(
ÌÌR S
resultOfOperation
ÌÌS d
,
ÌÌd e
ex
ÌÌf h
)
ÌÌh i
;
ÌÌi j
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
 )
DbEntityValidationException
 .
ex
/ 1
)
1 2
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
ÙÙ 
return
ıı 
resultOfOperation
ıı $
;
ıı$ %
}
ˆˆ 	
public
¯¯ 
static
¯¯  
GenericClassServer
¯¯ (
<
¯¯( )
int
¯¯) ,
>
¯¯, -
SendFriendRequest
¯¯. ?
(
¯¯? @
int
¯¯@ C
idPlayerSender
¯¯D R
,
¯¯R S
int
¯¯T W
idPlayerCatcher
¯¯X g
)
¯¯g h
{
˘˘ 	 
GenericClassServer
˙˙ 
<
˙˙ 
int
˙˙ "
>
˙˙" #
resultOfOperation
˙˙$ 5
=
˙˙6 7
new
˙˙8 ; 
GenericClassServer
˙˙< N
<
˙˙N O
int
˙˙O R
>
˙˙R S
(
˙˙S T
)
˙˙T U
;
˙˙U V
if
˚˚ 
(
˚˚ 
idPlayerCatcher
˚˚ 
==
˚˚  "
NULL_INT_VALUE
˚˚# 1
||
˚˚2 4
idPlayerSender
˚˚5 C
==
˚˚D F
NULL_INT_VALUE
˚˚G U
)
˚˚U V
{
¸¸ 
return
˝˝ #
NullParametersHandler
˝˝ ,
.
˝˝, -*
HandleNullParametersDataBase
˝˝- I
(
˝˝I J
resultOfOperation
˝˝J [
)
˝˝[ \
;
˝˝\ ]
}
˛˛ 
try
ˇˇ 
{
ÄÄ 
using
ÅÅ 
(
ÅÅ 
var
ÅÅ 
	contextBD
ÅÅ $
=
ÅÅ% &
new
ÅÅ' *!
JeopardyDBContainer
ÅÅ+ >
(
ÅÅ> ?
)
ÅÅ? @
)
ÅÅ@ A
{
ÇÇ 
bool
ÉÉ 
doesFriendExist
ÉÉ (
=
ÉÉ) *
	contextBD
ÉÉ+ 4
.
ÉÉ4 5
Friends
ÉÉ5 <
.
ÉÉ< =
Any
ÉÉ= @
(
ÉÉ@ A
friend
ÉÉA G
=>
ÉÉH J
(
ÉÉK L
friend
ÉÉL R
.
ÉÉR S
Player_IdPlayer
ÉÉS b
==
ÉÉc e
idPlayerSender
ÉÉf t
&&
ÉÉu w
friend
ÉÉx ~
.
ÉÉ~ $
PlayerFriend_IdPlayerÉÉ î
==ÉÉï ó
idPlayerCatcherÉÉò ß
)ÉÉß ®
||ÉÉ© ´
(ÉÉ¨ ≠
friendÉÉ≠ ≥
.ÉÉ≥ ¥
Player_IdPlayerÉÉ¥ √
==ÉÉƒ ∆
idPlayerCatcherÉÉ« ÷
&&ÉÉ◊ Ÿ
friendÉÉ⁄ ‡
.ÉÉ‡ ·%
PlayerFriend_IdPlayerÉÉ· ˆ
==ÉÉ˜ ˘
idPlayerSenderÉÉ˙ à
)ÉÉà â
)ÉÉâ ä
;ÉÉä ã
if
ÑÑ 
(
ÑÑ 
!
ÑÑ 
doesFriendExist
ÑÑ (
)
ÑÑ( )
{
ÖÖ 
Friend
ÜÜ 
newRelationShip
ÜÜ .
=
ÜÜ/ 0
new
ÜÜ1 4
Friend
ÜÜ5 ;
(
ÜÜ; <
)
ÜÜ< =
;
ÜÜ= >
newRelationShip
áá '
.
áá' (
IdFriendState
áá( 5
=
áá6 7
NULL_INT_VALUE
áá8 F
;
ááF G
newRelationShip
àà '
.
àà' (
Player_IdPlayer
àà( 7
=
àà8 9
idPlayerSender
àà: H
;
ààH I
newRelationShip
ââ '
.
ââ' (#
PlayerFriend_IdPlayer
ââ( =
=
ââ> ?
idPlayerCatcher
ââ@ O
;
ââO P
newRelationShip
ää '
.
ää' (
IdFriendState
ää( 5
=
ää6 7
FRIEND_STATUS_NEW
ää8 I
;
ääI J
	contextBD
ãã !
.
ãã! "
Friends
ãã" )
.
ãã) *
Add
ãã* -
(
ãã- .
newRelationShip
ãã. =
)
ãã= >
;
ãã> ?
int
åå 
resultEvent
åå '
=
åå( )
	contextBD
åå* 3
.
åå3 4
SaveChanges
åå4 ?
(
åå? @
)
åå@ A
;
ååA B
resultOfOperation
çç )
.
çç) *
ObjectSaved
çç* 5
=
çç6 7
resultEvent
çç8 C
;
ççC D
if
éé 
(
éé 
resultEvent
éé '
!=
éé( *
NULL_INT_VALUE
éé+ 9
)
éé9 :
{
èè 
resultOfOperation
êê -
.
êê- .
	CodeEvent
êê. 7
=
êê8 9!
ExceptionDictionary
êê: M
.
êêM N
SUCCESFULL_EVENT
êêN ^
;
êê^ _
}
ëë 
else
íí 
{
ìì 
resultOfOperation
îî -
.
îî- .
	CodeEvent
îî. 7
=
îî8 9!
ExceptionDictionary
îî: M
.
îîM N 
UNSUCCESFULL_EVENT
îîN `
;
îî` a
}
ïï 
}
ññ 
else
óó 
{
òò 
resultOfOperation
ôô )
.
ôô) *
	CodeEvent
ôô* 3
=
ôô4 5!
ExceptionDictionary
ôô6 I
.
ôôI J 
UNSUCCESFULL_EVENT
ôôJ \
;
ôô\ ]
}
öö 
}
õõ 
}
úú 
catch
ùù 
(
ùù 
DbUpdateException
ùù $
ex
ùù% '
)
ùù' (
{
ûû 
resultOfOperation
üü !
=
üü" #
ExceptionHandler
üü$ 4
.
üü4 5+
HandleExceptionDataAccesLevel
üü5 R
(
üüR S
resultOfOperation
üüS d
,
üüd e
ex
üüf h
)
üüh i
;
üüi j
ExceptionHandler
††  
.
††  !
LogException
††! -
(
††- .
ex
††. 0
,
††0 1!
ExceptionDictionary
††2 E
.
††E F
FATAL_EXCEPTION
††F U
)
††U V
;
††V W
}
°° 
catch
¢¢ 
(
¢¢ #
ArgumentNullException
¢¢ (
ex
¢¢) +
)
¢¢+ ,
{
££ 
resultOfOperation
§§ !
=
§§" #
ExceptionHandler
§§$ 4
.
§§4 5+
HandleExceptionDataAccesLevel
§§5 R
(
§§R S
resultOfOperation
§§S d
,
§§d e
ex
§§f h
)
§§h i
;
§§i j
ExceptionHandler
••  
.
••  !
LogException
••! -
(
••- .
ex
••. 0
,
••0 1!
ExceptionDictionary
••2 E
.
••E F
FATAL_EXCEPTION
••F U
)
••U V
;
••V W
}
¶¶ 
catch
ßß 
(
ßß 
EntityException
ßß "
ex
ßß# %
)
ßß% &
{
®® 
resultOfOperation
©© !
=
©©" #
ExceptionHandler
©©$ 4
.
©©4 5+
HandleExceptionDataAccesLevel
©©5 R
(
©©R S
resultOfOperation
©©S d
,
©©d e
ex
©©f h
)
©©h i
;
©©i j
ExceptionHandler
™™  
.
™™  !
LogException
™™! -
(
™™- .
ex
™™. 0
,
™™0 1!
ExceptionDictionary
™™2 E
.
™™E F
FATAL_EXCEPTION
™™F U
)
™™U V
;
™™V W
}
´´ 
catch
¨¨ 
(
¨¨ 
SqlException
¨¨ 
ex
¨¨  "
)
¨¨" #
{
≠≠ 
resultOfOperation
ÆÆ !
=
ÆÆ" #
ExceptionHandler
ÆÆ$ 4
.
ÆÆ4 5+
HandleExceptionDataAccesLevel
ÆÆ5 R
(
ÆÆR S
resultOfOperation
ÆÆS d
,
ÆÆd e
ex
ÆÆf h
)
ÆÆh i
;
ÆÆi j
ExceptionHandler
ØØ  
.
ØØ  !
LogException
ØØ! -
(
ØØ- .
ex
ØØ. 0
,
ØØ0 1!
ExceptionDictionary
ØØ2 E
.
ØØE F
FATAL_EXCEPTION
ØØF U
)
ØØU V
;
ØØV W
}
∞∞ 
catch
±± 
(
±± )
DbEntityValidationException
±± .
ex
±±/ 1
)
±±1 2
{
≤≤ 
resultOfOperation
≥≥ !
=
≥≥" #
ExceptionHandler
≥≥$ 4
.
≥≥4 5+
HandleExceptionDataAccesLevel
≥≥5 R
(
≥≥R S
resultOfOperation
≥≥S d
,
≥≥d e
ex
≥≥f h
)
≥≥h i
;
≥≥i j
ExceptionHandler
¥¥  
.
¥¥  !
LogException
¥¥! -
(
¥¥- .
ex
¥¥. 0
,
¥¥0 1!
ExceptionDictionary
¥¥2 E
.
¥¥E F
FATAL_EXCEPTION
¥¥F U
)
¥¥U V
;
¥¥V W
}
µµ 
return
∂∂ 
resultOfOperation
∂∂ $
;
∂∂$ %
}
∑∑ 	
public
ππ 
static
ππ  
GenericClassServer
ππ (
<
ππ( )
int
ππ) ,
>
ππ, -

BannerUser
ππ. 8
(
ππ8 9
int
ππ9 <
idPlayer
ππ= E
)
ππE F
{
∫∫ 	 
GenericClassServer
ªª 
<
ªª 
int
ªª "
>
ªª" #
resultOfOperation
ªª$ 5
=
ªª6 7
new
ªª8 ; 
GenericClassServer
ªª< N
<
ªªN O
int
ªªO R
>
ªªR S
(
ªªS T
)
ªªT U
;
ªªU V
if
ºº 
(
ºº 
idPlayer
ºº 
==
ºº 
NULL_INT_VALUE
ºº *
)
ºº* +
{
ΩΩ 
return
ææ #
NullParametersHandler
ææ ,
.
ææ, -*
HandleNullParametersDataBase
ææ- I
(
ææI J
resultOfOperation
ææJ [
)
ææ[ \
;
ææ\ ]
}
øø 
try
¿¿ 
{
¡¡ 
using
¬¬ 
(
¬¬ 
var
¬¬ 
	contextBD
¬¬ $
=
¬¬% &
new
¬¬' *!
JeopardyDBContainer
¬¬+ >
(
¬¬> ?
)
¬¬? @
)
¬¬@ A
{
√√ 
var
ƒƒ 
player
ƒƒ 
=
ƒƒ  
	contextBD
ƒƒ! *
.
ƒƒ* +
Players
ƒƒ+ 2
.
ƒƒ2 3
FirstOrDefault
ƒƒ3 A
(
ƒƒA B
p
ƒƒB C
=>
ƒƒD F
p
ƒƒG H
.
ƒƒH I
IdPlayer
ƒƒI Q
==
ƒƒR T
idPlayer
ƒƒU ]
)
ƒƒ] ^
;
ƒƒ^ _
if
∆∆ 
(
∆∆ 
player
∆∆ 
!=
∆∆ !
null
∆∆" &
)
∆∆& '
{
«« 
player
»» 
.
»» 
	NoReports
»» (
++
»»( *
;
»»* +
int
…… 
resultEvent
…… '
=
……( )
	contextBD
……* 3
.
……3 4
SaveChanges
……4 ?
(
……? @
)
……@ A
;
……A B
resultOfOperation
   )
.
  ) *
ObjectSaved
  * 5
=
  6 7
resultEvent
  8 C
;
  C D
if
ÀÀ 
(
ÀÀ 
resultEvent
ÀÀ '
>
ÀÀ( )
$num
ÀÀ* +
)
ÀÀ+ ,
{
ÃÃ 
resultOfOperation
ÕÕ -
.
ÕÕ- .
	CodeEvent
ÕÕ. 7
=
ÕÕ8 9!
ExceptionDictionary
ÕÕ: M
.
ÕÕM N
SUCCESFULL_EVENT
ÕÕN ^
;
ÕÕ^ _
}
ŒŒ 
else
œœ 
{
–– 
resultOfOperation
—— -
.
——- .
	CodeEvent
——. 7
=
——8 9!
ExceptionDictionary
——: M
.
——M N 
UNSUCCESFULL_EVENT
——N `
;
——` a
}
““ 
}
”” 
else
‘‘ 
{
’’ 
resultOfOperation
÷÷ )
.
÷÷) *
	CodeEvent
÷÷* 3
=
÷÷4 5!
ExceptionDictionary
÷÷6 I
.
÷÷I J 
UNSUCCESFULL_EVENT
÷÷J \
;
÷÷\ ]
}
◊◊ 
}
ÿÿ 
}
ŸŸ 
catch
⁄⁄ 
(
⁄⁄ 
DbUpdateException
⁄⁄ $
ex
⁄⁄% '
)
⁄⁄' (
{
€€ 
resultOfOperation
‹‹ !
=
‹‹" #
ExceptionHandler
‹‹$ 4
.
‹‹4 5+
HandleExceptionDataAccesLevel
‹‹5 R
(
‹‹R S
resultOfOperation
‹‹S d
,
‹‹d e
ex
‹‹f h
)
‹‹h i
;
‹‹i j
ExceptionHandler
››  
.
››  !
LogException
››! -
(
››- .
ex
››. 0
,
››0 1!
ExceptionDictionary
››2 E
.
››E F
FATAL_EXCEPTION
››F U
)
››U V
;
››V W
}
ﬁﬁ 
catch
ﬂﬂ 
(
ﬂﬂ #
ArgumentNullException
ﬂﬂ (
ex
ﬂﬂ) +
)
ﬂﬂ+ ,
{
‡‡ 
resultOfOperation
·· !
=
··" #
ExceptionHandler
··$ 4
.
··4 5+
HandleExceptionDataAccesLevel
··5 R
(
··R S
resultOfOperation
··S d
,
··d e
ex
··f h
)
··h i
;
··i j
ExceptionHandler
‚‚  
.
‚‚  !
LogException
‚‚! -
(
‚‚- .
ex
‚‚. 0
,
‚‚0 1!
ExceptionDictionary
‚‚2 E
.
‚‚E F
FATAL_EXCEPTION
‚‚F U
)
‚‚U V
;
‚‚V W
}
„„ 
catch
‰‰ 
(
‰‰ 
EntityException
‰‰ "
ex
‰‰# %
)
‰‰% &
{
ÂÂ 
resultOfOperation
ÊÊ !
=
ÊÊ" #
ExceptionHandler
ÊÊ$ 4
.
ÊÊ4 5+
HandleExceptionDataAccesLevel
ÊÊ5 R
(
ÊÊR S
resultOfOperation
ÊÊS d
,
ÊÊd e
ex
ÊÊf h
)
ÊÊh i
;
ÊÊi j
ExceptionHandler
ÁÁ  
.
ÁÁ  !
LogException
ÁÁ! -
(
ÁÁ- .
ex
ÁÁ. 0
,
ÁÁ0 1!
ExceptionDictionary
ÁÁ2 E
.
ÁÁE F
FATAL_EXCEPTION
ÁÁF U
)
ÁÁU V
;
ÁÁV W
}
ËË 
catch
ÈÈ 
(
ÈÈ 
SqlException
ÈÈ 
ex
ÈÈ  "
)
ÈÈ" #
{
ÍÍ 
resultOfOperation
ÎÎ !
=
ÎÎ" #
ExceptionHandler
ÎÎ$ 4
.
ÎÎ4 5+
HandleExceptionDataAccesLevel
ÎÎ5 R
(
ÎÎR S
resultOfOperation
ÎÎS d
,
ÎÎd e
ex
ÎÎf h
)
ÎÎh i
;
ÎÎi j
ExceptionHandler
ÏÏ  
.
ÏÏ  !
LogException
ÏÏ! -
(
ÏÏ- .
ex
ÏÏ. 0
,
ÏÏ0 1!
ExceptionDictionary
ÏÏ2 E
.
ÏÏE F
FATAL_EXCEPTION
ÏÏF U
)
ÏÏU V
;
ÏÏV W
}
ÌÌ 
catch
ÓÓ 
(
ÓÓ )
DbEntityValidationException
ÓÓ .
ex
ÓÓ/ 1
)
ÓÓ1 2
{
ÔÔ 
resultOfOperation
 !
=
" #
ExceptionHandler
$ 4
.
4 5+
HandleExceptionDataAccesLevel
5 R
(
R S
resultOfOperation
S d
,
d e
ex
f h
)
h i
;
i j
ExceptionHandler
ÒÒ  
.
ÒÒ  !
LogException
ÒÒ! -
(
ÒÒ- .
ex
ÒÒ. 0
,
ÒÒ0 1!
ExceptionDictionary
ÒÒ2 E
.
ÒÒE F
FATAL_EXCEPTION
ÒÒF U
)
ÒÒU V
;
ÒÒV W
}
ÚÚ 
return
ÛÛ 
resultOfOperation
ÛÛ $
;
ÛÛ$ %
}
ÙÙ 	
}
ıı 
}ˆˆ –Ÿ
ÇC:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameServer\JeopardyGame.Data\DataAccess\GameDataOperation.cs
	namespace 	
JeopardyGame
 
. 
Data 
. 

DataAccess &
{ 
public 

static 
class 
GameDataOperation )
{ 
private 
const 
bool  
SUCCESFULL_OPERATION /
=0 1
true2 6
;6 7
private 
const 
bool !
UNSUCCESFUL_OPERATION 0
=1 2
false3 8
;8 9
private 
const 
int 
SPECIAL_CATEGORY *
=+ ,
$num- .
;. /
private 
const 
int  
NUMBER_OF_CATEGORIES .
=/ 0
$num1 2
;2 3
private 
const 
int #
NUMBER_OF_TOTAL_ANSWERS 1
=2 3
$num4 6
;6 7
private 
const 
int (
NUMBER_OF_QUESTIONS_IN_TOTAL 6
=7 8
$num9 ;
;; <
private 
const 
int #
VALUE_OF_EASY_QUESTIONS 1
=2 3
$num4 7
;7 8
private 
const 
int %
VALUE_OF_MEDIUM_QUESTIONS 3
=4 5
$num6 9
;9 :
private 
const 
int #
VALUE_OF_HARD_QUESTIONS 1
=2 3
$num4 7
;7 8
public 
static 
GenericClassServer (
<( )
bool) -
>- .!
SaveNewGameInDataBase/ D
(D E
GameE I

gameToSaveJ T
)T U
{ 	
GenericClassServer 
< 
bool #
># $
resultOfOperation% 6
=7 8
new9 <
GenericClassServer= O
<O P
boolP T
>T U
(U V
)V W
;W X
if 
( 

gameToSave 
== 
null "
)" #
{ 
return   !
NullParametersHandler   ,
.  , -(
HandleNullParametersDataBase  - I
(  I J
resultOfOperation  J [
)  [ \
;  \ ]
}!! 
try"" 
{## 
using$$ 
($$ 
var$$ 
	contextBD$$ $
=$$% &
new$$' *
JeopardyDBContainer$$+ >
($$> ?
)$$? @
)$$@ A
{%% 
	contextBD'' 
.'' 
Games'' #
.''# $
Add''$ '
(''' (

gameToSave''( 2
)''2 3
;''3 4
int(( 
resultOfEvent(( %
=((& '
	contextBD((( 1
.((1 2
SaveChanges((2 =
(((= >
)((> ?
;((? @
if)) 
()) 
resultOfEvent)) %
>))& '
$num))( )
)))) *
{** 
resultOfOperation++ )
.++) *
ObjectSaved++* 5
=++6 7 
SUCCESFULL_OPERATION++8 L
;++L M
resultOfOperation,, )
.,,) *
	CodeEvent,,* 3
=,,4 5
ExceptionDictionary,,6 I
.,,I J
SUCCESFULL_EVENT,,J Z
;,,Z [
}-- 
else.. 
{// 
resultOfOperation00 )
.00) *
ObjectSaved00* 5
=006 7!
UNSUCCESFUL_OPERATION008 M
;00M N
resultOfOperation11 )
.11) *
	CodeEvent11* 3
=114 5
ExceptionDictionary116 I
.11I J
UNSUCCESFULL_EVENT11J \
;11\ ]
}22 
return33 
resultOfOperation33 ,
;33, -
}44 
}55 
catch66 
(66 
UpdateException66 "
ex66# %
)66% &
{77 
resultOfOperation88 !
=88" #
ExceptionHandler88$ 4
.884 5)
HandleExceptionDataAccesLevel885 R
(88R S
resultOfOperation88S d
,88d e
ex88f h
)88h i
;88i j
ExceptionHandler99  
.99  !
LogException99! -
(99- .
ex99. 0
.990 1
GetBaseException991 A
(99A B
)99B C
,99C D
ExceptionDictionary99E X
.99X Y
FATAL_EXCEPTION99Y h
)99h i
;99i j
}:: 
catch;; 
(;; 
DbUpdateException;; $
ex;;% '
);;' (
{<< 
resultOfOperation== !
===" #
ExceptionHandler==$ 4
.==4 5)
HandleExceptionDataAccesLevel==5 R
(==R S
resultOfOperation==S d
,==d e
ex==f h
)==h i
;==i j
ExceptionHandler>>  
.>>  !
LogException>>! -
(>>- .
ex>>. 0
.>>0 1
GetBaseException>>1 A
(>>A B
)>>B C
,>>C D
ExceptionDictionary>>E X
.>>X Y
FATAL_EXCEPTION>>Y h
)>>h i
;>>i j
}?? 
catch@@ 
(@@ !
ArgumentNullException@@ (
ex@@) +
)@@+ ,
{AA 
resultOfOperationBB !
=BB" #
ExceptionHandlerBB$ 4
.BB4 5)
HandleExceptionDataAccesLevelBB5 R
(BBR S
resultOfOperationBBS d
,BBd e
exBBf h
)BBh i
;BBi j
ExceptionHandlerCC  
.CC  !
LogExceptionCC! -
(CC- .
exCC. 0
,CC0 1
ExceptionDictionaryCC2 E
.CCE F
FATAL_EXCEPTIONCCF U
)CCU V
;CCV W
}DD 
catchEE 
(EE 
EntityExceptionEE "
exEE# %
)EE% &
{FF 
resultOfOperationGG !
=GG" #
ExceptionHandlerGG$ 4
.GG4 5)
HandleExceptionDataAccesLevelGG5 R
(GGR S
resultOfOperationGGS d
,GGd e
exGGf h
)GGh i
;GGi j
ExceptionHandlerHH  
.HH  !
LogExceptionHH! -
(HH- .
exHH. 0
,HH0 1
ExceptionDictionaryHH2 E
.HHE F
FATAL_EXCEPTIONHHF U
)HHU V
;HHV W
}II 
catchJJ 
(JJ 
SqlExceptionJJ 
exJJ  "
)JJ" #
{KK 
resultOfOperationLL !
=LL" #
ExceptionHandlerLL$ 4
.LL4 5)
HandleExceptionDataAccesLevelLL5 R
(LLR S
resultOfOperationLLS d
,LLd e
exLLf h
)LLh i
;LLi j
ExceptionHandlerMM  
.MM  !
LogExceptionMM! -
(MM- .
exMM. 0
,MM0 1
ExceptionDictionaryMM2 E
.MME F
FATAL_EXCEPTIONMMF U
)MMU V
;MMV W
}NN 
catchOO 
(OO '
DbEntityValidationExceptionOO .
exOO/ 1
)OO1 2
{PP 
resultOfOperationQQ !
=QQ" #
ExceptionHandlerQQ$ 4
.QQ4 5)
HandleExceptionDataAccesLevelQQ5 R
(QQR S
resultOfOperationQQS d
,QQd e
exQQf h
)QQh i
;QQi j
ExceptionHandlerRR  
.RR  !
LogExceptionRR! -
(RR- .
exRR. 0
,RR0 1
ExceptionDictionaryRR2 E
.RRE F
FATAL_EXCEPTIONRRF U
)RRU V
;RRV W
}SS 
returnTT 
resultOfOperationTT $
;TT$ %
}UU 	
publicWW 
staticWW 
GenericClassServerWW (
<WW( )
GameWW) -
>WW- .
GetGameByRoomCodeWW/ @
(WW@ A
intWWA D
roomCodeWWE M
)WWM N
{XX 	
GenericClassServerYY 
<YY 
GameYY #
>YY# $
resultOfOperationYY% 6
=YY7 8
newYY9 <
GenericClassServerYY= O
<YYO P
GameYYP T
>YYT U
(YYU V
)YYV W
;YYW X
ifZZ 
(ZZ 
roomCodeZZ 
==ZZ 
$numZZ 
)ZZ 
{[[ 
return\\ !
NullParametersHandler\\ ,
.\\, -(
HandleNullParametersDataBase\\- I
(\\I J
resultOfOperation\\J [
)\\[ \
;\\\ ]
}]] 
try^^ 
{__ 
using`` 
(`` 
var`` 
	contextBD`` $
=``% &
new``' *
JeopardyDBContainer``+ >
(``> ?
)``? @
)``@ A
{aa 
	contextBDbb 
.bb 
Configurationbb +
.bb+ ,
LazyLoadingEnabledbb, >
=bb? @
falsebbA F
;bbF G
varcc 
gameConsultedcc %
=cc& '
	contextBDcc( 1
.cc1 2
Gamescc2 7
.cc7 8
Includecc8 ?
(cc? @
$strcc@ F
)ccF G
.ccG H
WhereccH M
(ccM N
gameccN R
=>ccS U
gameccV Z
.ccZ [
RoomCodecc[ c
==ccd f
roomCodeccg o
)cco p
.ccp q
FirstOrDefaultccq 
(	cc Ä
)
ccÄ Å
;
ccÅ Ç
ifdd 
(dd 
gameConsulteddd %
!=dd& (
nulldd) -
)dd- .
{ee 
resultOfOperationff )
.ff) *
ObjectSavedff* 5
=ff6 7
gameConsultedff8 E
;ffE F
resultOfOperationgg )
.gg) *
	CodeEventgg* 3
=gg4 5
ExceptionDictionarygg6 I
.ggI J
SUCCESFULL_EVENTggJ Z
;ggZ [
}hh 
elseii 
{jj 
resultOfOperationkk )
.kk) *
ObjectSavedkk* 5
=kk6 7
gameConsultedkk8 E
;kkE F
resultOfOperationll )
.ll) *
	CodeEventll* 3
=ll4 5
ExceptionDictionaryll6 I
.llI J
UNSUCCESFULL_EVENTllJ \
;ll\ ]
}mm 
}nn 
}oo 
catchpp 
(pp 
UpdateExceptionpp "
expp# %
)pp% &
{qq 
resultOfOperationrr !
=rr" #
ExceptionHandlerrr$ 4
.rr4 5)
HandleExceptionDataAccesLevelrr5 R
(rrR S
resultOfOperationrrS d
,rrd e
exrrf h
)rrh i
;rri j
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
(uu !
ArgumentNullExceptionuu (
exuu) +
)uu+ ,
{vv 
resultOfOperationww !
=ww" #
ExceptionHandlerww$ 4
.ww4 5)
HandleExceptionDataAccesLevelww5 R
(wwR S
resultOfOperationwwS d
,wwd e
exwwf h
)wwh i
;wwi j
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
(zz 
EntityExceptionzz "
exzz# %
)zz% &
{{{ 
resultOfOperation|| !
=||" #
ExceptionHandler||$ 4
.||4 5)
HandleExceptionDataAccesLevel||5 R
(||R S
resultOfOperation||S d
,||d e
ex||f h
)||h i
;||i j
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
( 
SqlException 
ex  "
)" #
{
ÄÄ 
resultOfOperation
ÅÅ !
=
ÅÅ" #
ExceptionHandler
ÅÅ$ 4
.
ÅÅ4 5+
HandleExceptionDataAccesLevel
ÅÅ5 R
(
ÅÅR S
resultOfOperation
ÅÅS d
,
ÅÅd e
ex
ÅÅf h
)
ÅÅh i
;
ÅÅi j
ExceptionHandler
ÇÇ  
.
ÇÇ  !
LogException
ÇÇ! -
(
ÇÇ- .
ex
ÇÇ. 0
,
ÇÇ0 1!
ExceptionDictionary
ÇÇ2 E
.
ÇÇE F
FATAL_EXCEPTION
ÇÇF U
)
ÇÇU V
;
ÇÇV W
}
ÉÉ 
catch
ÑÑ 
(
ÑÑ )
DbEntityValidationException
ÑÑ .
ex
ÑÑ/ 1
)
ÑÑ1 2
{
ÖÖ 
resultOfOperation
ÜÜ !
=
ÜÜ" #
ExceptionHandler
ÜÜ$ 4
.
ÜÜ4 5+
HandleExceptionDataAccesLevel
ÜÜ5 R
(
ÜÜR S
resultOfOperation
ÜÜS d
,
ÜÜd e
ex
ÜÜf h
)
ÜÜh i
;
ÜÜi j
ExceptionHandler
áá  
.
áá  !
LogException
áá! -
(
áá- .
ex
áá. 0
,
áá0 1!
ExceptionDictionary
áá2 E
.
ááE F
FATAL_EXCEPTION
ááF U
)
ááU V
;
ááV W
}
àà 
return
ââ 
resultOfOperation
ââ $
;
ââ$ %
}
ää 	
public
åå 
static
åå  
GenericClassServer
åå (
<
åå( )
List
åå) -
<
åå- .
Category
åå. 6
>
åå6 7
>
åå7 8
Get10Categories
åå9 H
(
ååH I
)
ååI J
{
çç 	 
GenericClassServer
éé 
<
éé 
List
éé #
<
éé# $
Category
éé$ ,
>
éé, -
>
éé- .
resultOfOperation
éé/ @
=
ééA B
new
ééC F 
GenericClassServer
ééG Y
<
ééY Z
List
ééZ ^
<
éé^ _
Category
éé_ g
>
éég h
>
ééh i
(
ééi j
)
ééj k
;
éék l
try
èè 
{
êê 
using
ëë 
(
ëë 
var
ëë 
	contextBD
ëë $
=
ëë% &
new
ëë' *!
JeopardyDBContainer
ëë+ >
(
ëë> ?
)
ëë? @
)
ëë@ A
{
íí 
var
ìì 

categories
ìì "
=
ìì# $
	contextBD
ìì% .
.
ìì. /

Categories
ìì/ 9
.
ìì9 :
Where
ìì: ?
(
ìì? @
category
ìì@ H
=>
ììI K
category
ììL T
.
ììT U

IdCategory
ììU _
!=
ìì` b
SPECIAL_CATEGORY
ììc s
)
ììs t
.
ììt u
ToList
ììu {
(
ìì{ |
)
ìì| }
;
ìì} ~
Random
îî 
random
îî !
=
îî" #
new
îî$ '
Random
îî( .
(
îî. /
)
îî/ 0
;
îî0 1
List
ïï 
<
ïï 
Category
ïï !
>
ïï! "
categoriesList
ïï# 1
=
ïï2 3

categories
ïï4 >
.
ïï> ?
OrderBy
ïï? F
(
ïïF G
category
ïïG O
=>
ïïP R
random
ïïS Y
.
ïïY Z
Next
ïïZ ^
(
ïï^ _
)
ïï_ `
)
ïï` a
.
ïïa b
Take
ïïb f
(
ïïf g"
NUMBER_OF_CATEGORIES
ïïg {
)
ïï{ |
.
ïï| }
ToListïï} É
(ïïÉ Ñ
)ïïÑ Ö
;ïïÖ Ü
if
ññ 
(
ññ 
categoriesList
ññ &
.
ññ& '
Count
ññ' ,
==
ññ- /"
NUMBER_OF_CATEGORIES
ññ0 D
)
ññD E
{
óó 
resultOfOperation
òò )
.
òò) *
	CodeEvent
òò* 3
=
òò4 5!
ExceptionDictionary
òò6 I
.
òòI J
SUCCESFULL_EVENT
òòJ Z
;
òòZ [
}
ôô 
else
öö 
{
õõ 
resultOfOperation
úú )
.
úú) *
	CodeEvent
úú* 3
=
úú4 5!
ExceptionDictionary
úú6 I
.
úúI J 
UNSUCCESFULL_EVENT
úúJ \
;
úú\ ]
}
ùù 
resultOfOperation
ûû %
.
ûû% &
ObjectSaved
ûû& 1
=
ûû2 3
categoriesList
ûû4 B
;
ûûB C
return
üü 
resultOfOperation
üü ,
;
üü, -
}
†† 
}
°° 
catch
¢¢ 
(
¢¢ #
ArgumentNullException
¢¢ (
ex
¢¢) +
)
¢¢+ ,
{
££ 
resultOfOperation
§§ !
=
§§" #
ExceptionHandler
§§$ 4
.
§§4 5+
HandleExceptionDataAccesLevel
§§5 R
(
§§R S
resultOfOperation
§§S d
,
§§d e
ex
§§f h
)
§§h i
;
§§i j
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
EntityException
ßß "
ex
ßß# %
)
ßß% &
{
®® 
resultOfOperation
©© !
=
©©" #
ExceptionHandler
©©$ 4
.
©©4 5+
HandleExceptionDataAccesLevel
©©5 R
(
©©R S
resultOfOperation
©©S d
,
©©d e
ex
©©f h
)
©©h i
;
©©i j
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
¨¨ 
SqlException
¨¨ 
ex
¨¨  "
)
¨¨" #
{
≠≠ 
resultOfOperation
ÆÆ !
=
ÆÆ" #
ExceptionHandler
ÆÆ$ 4
.
ÆÆ4 5+
HandleExceptionDataAccesLevel
ÆÆ5 R
(
ÆÆR S
resultOfOperation
ÆÆS d
,
ÆÆd e
ex
ÆÆf h
)
ÆÆh i
;
ÆÆi j
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
±± )
DbEntityValidationException
±± .
ex
±±/ 1
)
±±1 2
{
≤≤ 
resultOfOperation
≥≥ !
=
≥≥" #
ExceptionHandler
≥≥$ 4
.
≥≥4 5+
HandleExceptionDataAccesLevel
≥≥5 R
(
≥≥R S
resultOfOperation
≥≥S d
,
≥≥d e
ex
≥≥f h
)
≥≥h i
;
≥≥i j
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
µµ 
return
∂∂ 
resultOfOperation
∂∂ $
;
∂∂$ %
}
∑∑ 	
public
ππ 
static
ππ  
GenericClassServer
ππ (
<
ππ( )
List
ππ) -
<
ππ- .
Question
ππ. 6
>
ππ6 7
>
ππ7 8$
GetQuestionsByCategory
ππ9 O
(
ππO P
List
ππP T
<
ππT U
Category
ππU ]
>
ππ] ^

categories
ππ_ i
)
ππi j
{
∫∫ 	 
GenericClassServer
ºº 
<
ºº 
List
ºº #
<
ºº# $
Question
ºº$ ,
>
ºº, -
>
ºº- .
resultOfOperation
ºº/ @
=
ººA B
new
ººC F 
GenericClassServer
ººG Y
<
ººY Z
List
ººZ ^
<
ºº^ _
Question
ºº_ g
>
ººg h
>
ººh i
(
ººi j
)
ººj k
;
ººk l
if
ΩΩ 
(
ΩΩ 

categories
ΩΩ 
==
ΩΩ 
null
ΩΩ "
)
ΩΩ" #
{
ææ 
return
øø #
NullParametersHandler
øø ,
.
øø, -*
HandleNullParametersDataBase
øø- I
(
øøI J
resultOfOperation
øøJ [
)
øø[ \
;
øø\ ]
}
¿¿ 
try
¡¡ 
{
¬¬ 
using
√√ 
(
√√ 
var
√√ 
	contextBD
√√ $
=
√√% &
new
√√' *!
JeopardyDBContainer
√√+ >
(
√√> ?
)
√√? @
)
√√@ A
{
ƒƒ 
List
≈≈ 
<
≈≈ 
Question
≈≈ !
>
≈≈! "
	questions
≈≈# ,
=
≈≈- .
new
≈≈/ 2
List
≈≈3 7
<
≈≈7 8
Question
≈≈8 @
>
≈≈@ A
(
≈≈A B
)
≈≈B C
;
≈≈C D
foreach
∆∆ 
(
∆∆ 
var
∆∆  
category
∆∆! )
in
∆∆* ,

categories
∆∆- 7
)
∆∆7 8
{
«« 
	contextBD
»» !
.
»»! "
Configuration
»»" /
.
»»/ 0 
LazyLoadingEnabled
»»0 B
=
»»C D
false
»»E J
;
»»J K
List
…… 
<
…… 
Question
…… %
>
……% &!
questionPerCategory
……' :
=
……; <
	contextBD
……= F
.
……F G
	Questions
……G P
.
……P Q
Include
……Q X
(
……X Y
$str
……Y a
)
……a b
.
……b c
Include
……c j
(
……j k
$str
……k u
)
……u v
.
……v w
Where
……w |
(
……| }
question……} Ö
=>……Ü à
question……â ë
.……ë í"
CategoryIdCategory……í §
==……• ß
category……® ∞
.……∞ ±

IdCategory……± ª
)……ª º
.……º Ω
ToList……Ω √
(……√ ƒ
)……ƒ ≈
;……≈ ∆
var
   
questionByPoints
   ,
=
  - .!
questionPerCategory
  / B
.
  B C
Where
  C H
(
  H I
questionPoints
  I W
=>
  X Z
questionPoints
  [ i
.
  i j

ValueWorth
  j t
==
  u w&
VALUE_OF_EASY_QUESTIONS  x è
)  è ê
.  ê ë
ToList  ë ó
(  ó ò
)  ò ô
;  ô ö
Random
ÀÀ 
random
ÀÀ %
=
ÀÀ& '
new
ÀÀ( +
Random
ÀÀ, 2
(
ÀÀ2 3
)
ÀÀ3 4
;
ÀÀ4 5
	questions
ÃÃ !
.
ÃÃ! "
Add
ÃÃ" %
(
ÃÃ% &
questionByPoints
ÃÃ& 6
.
ÃÃ6 7
OrderBy
ÃÃ7 >
(
ÃÃ> ?
questionSelected
ÃÃ? O
=>
ÃÃP R
random
ÃÃS Y
.
ÃÃY Z
Next
ÃÃZ ^
(
ÃÃ^ _
)
ÃÃ_ `
)
ÃÃ` a
.
ÃÃa b
First
ÃÃb g
(
ÃÃg h
)
ÃÃh i
)
ÃÃi j
;
ÃÃj k
questionByPoints
ÕÕ (
=
ÕÕ) *!
questionPerCategory
ÕÕ+ >
.
ÕÕ> ?
Where
ÕÕ? D
(
ÕÕD E
questionPoints
ÕÕE S
=>
ÕÕT V
questionPoints
ÕÕW e
.
ÕÕe f

ValueWorth
ÕÕf p
==
ÕÕq s(
VALUE_OF_MEDIUM_QUESTIONSÕÕt ç
)ÕÕç é
.ÕÕé è
ToListÕÕè ï
(ÕÕï ñ
)ÕÕñ ó
;ÕÕó ò
	questions
ŒŒ !
.
ŒŒ! "
Add
ŒŒ" %
(
ŒŒ% &
questionByPoints
ŒŒ& 6
.
ŒŒ6 7
OrderBy
ŒŒ7 >
(
ŒŒ> ?
questionSelected
ŒŒ? O
=>
ŒŒP R
random
ŒŒS Y
.
ŒŒY Z
Next
ŒŒZ ^
(
ŒŒ^ _
)
ŒŒ_ `
)
ŒŒ` a
.
ŒŒa b
First
ŒŒb g
(
ŒŒg h
)
ŒŒh i
)
ŒŒi j
;
ŒŒj k
questionByPoints
œœ (
=
œœ) *!
questionPerCategory
œœ+ >
.
œœ> ?
Where
œœ? D
(
œœD E
questionPoints
œœE S
=>
œœT V
questionPoints
œœW e
.
œœe f

ValueWorth
œœf p
==
œœq s&
VALUE_OF_HARD_QUESTIONSœœt ã
)œœã å
.œœå ç
ToListœœç ì
(œœì î
)œœî ï
;œœï ñ
	questions
–– !
.
––! "
Add
––" %
(
––% &
questionByPoints
––& 6
.
––6 7
OrderBy
––7 >
(
––> ?
questionSelected
––? O
=>
––P R
random
––S Y
.
––Y Z
Next
––Z ^
(
––^ _
)
––_ `
)
––` a
.
––a b
First
––b g
(
––g h
)
––h i
)
––i j
;
––j k
}
—— 
if
““ 
(
““ 
	questions
““ !
.
““! "
Count
““" '
==
““( **
NUMBER_OF_QUESTIONS_IN_TOTAL
““+ G
)
““G H
{
””  
GenericClassServer
‘‘ *
<
‘‘* +
Question
‘‘+ 3
>
‘‘3 4
finalQuestion
‘‘5 B
=
‘‘C D
GetFinalQuestions
‘‘E V
(
‘‘V W
)
‘‘W X
;
‘‘X Y
if
’’ 
(
’’ 
finalQuestion
’’ )
.
’’) *
	CodeEvent
’’* 3
==
’’4 6!
ExceptionDictionary
’’7 J
.
’’J K
SUCCESFULL_EVENT
’’K [
)
’’[ \
{
÷÷ 
	questions
◊◊ %
.
◊◊% &
Add
◊◊& )
(
◊◊) *
finalQuestion
◊◊* 7
.
◊◊7 8
ObjectSaved
◊◊8 C
)
◊◊C D
;
◊◊D E
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
SUCCESFULL_EVENT
ÿÿN ^
;
ÿÿ^ _
}
ŸŸ 
else
⁄⁄ 
{
€€ 
resultOfOperation
‹‹ -
.
‹‹- .
	CodeEvent
‹‹. 7
=
‹‹8 9
finalQuestion
‹‹: G
.
‹‹G H
	CodeEvent
‹‹H Q
;
‹‹Q R
}
›› 
}
ﬁﬁ 
else
ﬂﬂ 
{
‡‡ 
resultOfOperation
·· )
.
··) *
	CodeEvent
··* 3
=
··4 5!
ExceptionDictionary
··6 I
.
··I J 
UNSUCCESFULL_EVENT
··J \
;
··\ ]
}
‚‚ 
resultOfOperation
„„ %
.
„„% &
ObjectSaved
„„& 1
=
„„2 3
	questions
„„4 =
;
„„= >
return
‰‰ 
resultOfOperation
‰‰ ,
;
‰‰, -
}
ÂÂ 
}
ÊÊ 
catch
ÁÁ 
(
ÁÁ #
ArgumentNullException
ÁÁ (
ex
ÁÁ) +
)
ÁÁ+ ,
{
ËË 
resultOfOperation
ÈÈ !
=
ÈÈ" #
ExceptionHandler
ÈÈ$ 4
.
ÈÈ4 5+
HandleExceptionDataAccesLevel
ÈÈ5 R
(
ÈÈR S
resultOfOperation
ÈÈS d
,
ÈÈd e
ex
ÈÈf h
)
ÈÈh i
;
ÈÈi j
ExceptionHandler
ÍÍ  
.
ÍÍ  !
LogException
ÍÍ! -
(
ÍÍ- .
ex
ÍÍ. 0
,
ÍÍ0 1!
ExceptionDictionary
ÍÍ2 E
.
ÍÍE F
FATAL_EXCEPTION
ÍÍF U
)
ÍÍU V
;
ÍÍV W
}
ÎÎ 
catch
ÏÏ 
(
ÏÏ 
EntityException
ÏÏ "
ex
ÏÏ# %
)
ÏÏ% &
{
ÌÌ 
resultOfOperation
ÓÓ !
=
ÓÓ" #
ExceptionHandler
ÓÓ$ 4
.
ÓÓ4 5+
HandleExceptionDataAccesLevel
ÓÓ5 R
(
ÓÓR S
resultOfOperation
ÓÓS d
,
ÓÓd e
ex
ÓÓf h
)
ÓÓh i
;
ÓÓi j
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
,
ÔÔ0 1!
ExceptionDictionary
ÔÔ2 E
.
ÔÔE F
FATAL_EXCEPTION
ÔÔF U
)
ÔÔU V
;
ÔÔV W
}
 
catch
ÒÒ 
(
ÒÒ 
SqlException
ÒÒ 
ex
ÒÒ  "
)
ÒÒ" #
{
ÚÚ 
resultOfOperation
ÛÛ !
=
ÛÛ" #
ExceptionHandler
ÛÛ$ 4
.
ÛÛ4 5+
HandleExceptionDataAccesLevel
ÛÛ5 R
(
ÛÛR S
resultOfOperation
ÛÛS d
,
ÛÛd e
ex
ÛÛf h
)
ÛÛh i
;
ÛÛi j
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
ˆˆ )
DbEntityValidationException
ˆˆ .
ex
ˆˆ/ 1
)
ˆˆ1 2
{
˜˜ 
resultOfOperation
¯¯ !
=
¯¯" #
ExceptionHandler
¯¯$ 4
.
¯¯4 5+
HandleExceptionDataAccesLevel
¯¯5 R
(
¯¯R S
resultOfOperation
¯¯S d
,
¯¯d e
ex
¯¯f h
)
¯¯h i
;
¯¯i j
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
˙˙ 
return
˚˚ 
resultOfOperation
˚˚ $
;
˚˚$ %
}
¸¸ 	
public
˛˛ 
static
˛˛  
GenericClassServer
˛˛ (
<
˛˛( )
Question
˛˛) 1
>
˛˛1 2
GetFinalQuestions
˛˛3 D
(
˛˛D E
)
˛˛E F
{
ˇˇ 	 
GenericClassServer
ÄÄ 
<
ÄÄ 
Question
ÄÄ '
>
ÄÄ' (
resultOfOperation
ÄÄ) :
=
ÄÄ; <
new
ÄÄ= @ 
GenericClassServer
ÄÄA S
<
ÄÄS T
Question
ÄÄT \
>
ÄÄ\ ]
(
ÄÄ] ^
)
ÄÄ^ _
;
ÄÄ_ `
try
ÅÅ 
{
ÇÇ 
using
ÉÉ 
(
ÉÉ 
var
ÉÉ 
	contextBD
ÉÉ $
=
ÉÉ% &
new
ÉÉ' *!
JeopardyDBContainer
ÉÉ+ >
(
ÉÉ> ?
)
ÉÉ? @
)
ÉÉ@ A
{
ÑÑ 
	contextBD
ÖÖ 
.
ÖÖ 
Configuration
ÖÖ +
.
ÖÖ+ , 
LazyLoadingEnabled
ÖÖ, >
=
ÖÖ? @
false
ÖÖA F
;
ÖÖF G
var
ÜÜ 

categories
ÜÜ "
=
ÜÜ" #
	contextBD
ÜÜ$ -
.
ÜÜ- .

Categories
ÜÜ. 8
.
ÜÜ8 9
Where
ÜÜ9 >
(
ÜÜ> ?
category
ÜÜ? G
=>
ÜÜH J
category
ÜÜK S
.
ÜÜS T

IdCategory
ÜÜT ^
==
ÜÜ_ a
SPECIAL_CATEGORY
ÜÜb r
)
ÜÜr s
.
ÜÜs t
ToList
ÜÜt z
(
ÜÜz {
)
ÜÜ{ |
;
ÜÜ| }
Random
áá 
random
áá !
=
áá" #
new
áá$ '
Random
áá( .
(
áá. /
)
áá/ 0
;
áá0 1
Category
àà 
specialCategory
àà ,
=
àà- .

categories
àà/ 9
.
àà9 :
OrderBy
àà: A
(
ààA B
questionSelected
ààB R
=>
ààS U
random
ààV \
.
àà\ ]
Next
àà] a
(
ààa b
)
ààb c
)
ààc d
.
ààd e
FirstOrDefault
ààe s
(
ààs t
)
ààt u
;
ààu v
List
ââ 
<
ââ 
Question
ââ !
>
ââ! "!
questionPerCategory
ââ# 6
=
ââ7 8
	contextBD
ââ9 B
.
ââB C
	Questions
ââC L
.
ââL M
Include
ââM T
(
ââT U
$str
ââU ]
)
ââ] ^
.
ââ^ _
Include
ââ_ f
(
ââf g
$str
ââg q
)
ââq r
.
ââr s
Where
ââs x
(
ââx y
questionâây Å
=>ââÇ Ñ
questionââÖ ç
.ââç é"
CategoryIdCategoryââé †
==ââ° £
specialCategoryââ§ ≥
.ââ≥ ¥

IdCategoryââ¥ æ
)ââæ ø
.ââø ¿
ToListââ¿ ∆
(ââ∆ «
)ââ« »
;ââ» …
var
ää 
lastQuestion
ää $
=
ää% &!
questionPerCategory
ää' :
.
ää: ;
OrderBy
ää; B
(
ääB C
question
ääC K
=>
ääL N
random
ääO U
.
ääU V
Next
ääV Z
(
ääZ [
)
ää[ \
)
ää\ ]
.
ää] ^
First
ää^ c
(
ääc d
)
ääd e
;
ääe f
if
ãã 
(
ãã 
lastQuestion
ãã $
!=
ãã% '
null
ãã( ,
)
ãã, -
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
SUCCESFULL_EVENT
ççJ Z
;
ççZ [
}
éé 
else
èè 
{
êê 
resultOfOperation
ëë )
.
ëë) *
	CodeEvent
ëë* 3
=
ëë4 5!
ExceptionDictionary
ëë6 I
.
ëëI J 
UNSUCCESFULL_EVENT
ëëJ \
;
ëë\ ]
}
íí 
resultOfOperation
ìì %
.
ìì% &
ObjectSaved
ìì& 1
=
ìì2 3
lastQuestion
ìì4 @
;
ìì@ A
return
îî 
resultOfOperation
îî ,
;
îî, -
}
ïï 
}
ññ 
catch
óó 
(
óó #
ArgumentNullException
óó (
ex
óó) +
)
óó+ ,
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
úú 
EntityException
úú "
ex
úú# %
)
úú% &
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
†† 
catch
°° 
(
°° 
SqlException
°° 
ex
°°  "
)
°°" #
{
¢¢ 
resultOfOperation
££ !
=
££" #
ExceptionHandler
££$ 4
.
££4 5+
HandleExceptionDataAccesLevel
££5 R
(
££R S
resultOfOperation
££S d
,
££d e
ex
££f h
)
££h i
;
££i j
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
•• 
catch
¶¶ 
(
¶¶ )
DbEntityValidationException
¶¶ .
ex
¶¶/ 1
)
¶¶1 2
{
ßß 
resultOfOperation
®® !
=
®®" #
ExceptionHandler
®®$ 4
.
®®4 5+
HandleExceptionDataAccesLevel
®®5 R
(
®®R S
resultOfOperation
®®S d
,
®®d e
ex
®®f h
)
®®h i
;
®®i j
ExceptionHandler
©©  
.
©©  !
LogException
©©! -
(
©©- .
ex
©©. 0
,
©©0 1!
ExceptionDictionary
©©2 E
.
©©E F
FATAL_EXCEPTION
©©F U
)
©©U V
;
©©V W
}
™™ 
return
´´ 
resultOfOperation
´´ $
;
´´$ %
}
¨¨ 	
public
ÆÆ 
static
ÆÆ  
GenericClassServer
ÆÆ (
<
ÆÆ( )
List
ÆÆ) -
<
ÆÆ- .
Awnser
ÆÆ. 4
>
ÆÆ4 5
>
ÆÆ5 6#
GetAwnsersOfQuestions
ÆÆ7 L
(
ÆÆL M
List
ÆÆM Q
<
ÆÆQ R
Question
ÆÆR Z
>
ÆÆZ [
	questions
ÆÆ\ e
)
ÆÆe f
{
ØØ 	 
GenericClassServer
±± 
<
±± 
List
±± #
<
±±# $
Awnser
±±$ *
>
±±* +
>
±±+ ,
resultOfOperation
±±- >
=
±±? @
new
±±A D 
GenericClassServer
±±E W
<
±±W X
List
±±X \
<
±±\ ]
Awnser
±±] c
>
±±c d
>
±±d e
(
±±e f
)
±±f g
;
±±g h
if
≤≤ 
(
≤≤ 
	questions
≤≤ 
==
≤≤ 
null
≤≤ !
)
≤≤! "
{
≥≥ 
return
¥¥ #
NullParametersHandler
¥¥ ,
.
¥¥, -*
HandleNullParametersDataBase
¥¥- I
(
¥¥I J
resultOfOperation
¥¥J [
)
¥¥[ \
;
¥¥\ ]
}
µµ 
try
∂∂ 
{
∑∑ 
using
∏∏ 
(
∏∏ 
var
∏∏ 
	contextBD
∏∏ $
=
∏∏% &
new
∏∏' *!
JeopardyDBContainer
∏∏+ >
(
∏∏> ?
)
∏∏? @
)
∏∏@ A
{
ππ 
List
∫∫ 
<
∫∫ 
Awnser
∫∫ 
>
∫∫  
answersToReturn
∫∫! 0
=
∫∫1 2
new
∫∫3 6
List
∫∫7 ;
<
∫∫; <
Awnser
∫∫< B
>
∫∫B C
(
∫∫C D
)
∫∫D E
;
∫∫E F
foreach
ªª 
(
ªª 
var
ªª  
question
ªª! )
in
ªª* ,
	questions
ªª- 6
)
ªª6 7
{
ºº 
	contextBD
ΩΩ !
.
ΩΩ! "
Configuration
ΩΩ" /
.
ΩΩ/ 0 
LazyLoadingEnabled
ΩΩ0 B
=
ΩΩC D
false
ΩΩE J
;
ΩΩJ K
List
ææ 
<
ææ 
Awnser
ææ #
>
ææ# $
rightAnswer
ææ% 0
=
ææ1 2
	contextBD
ææ3 <
.
ææ< =
Awnsers
ææ= D
.
ææD E
Include
ææE L
(
ææL M
$str
ææM W
)
ææW X
.
ææX Y
Where
ææY ^
(
ææ^ _
answer
ææ_ e
=>
ææf h
answer
ææi o
.
ææo p
IdAwnser
ææp x
==
ææy {
questionææ| Ñ
.ææÑ Ö
AwnserææÖ ã
.ææã å
IdAwnserææå î
)ææî ï
.ææï ñ
ToListææñ ú
(ææú ù
)ææù û
;ææû ü
var
øø %
wrongAnswersPerQuestion
øø 3
=
øø4 5
	contextBD
øø6 ?
.
øø? @
Awnsers
øø@ G
.
øøG H
Include
øøH O
(
øøO P
$str
øøP Z
)
øøZ [
.
øø[ \
Where
øø\ a
(
øøa b
answer
øøb h
=>
øøi k
answer
øøl r
.
øør s
Category
øøs {
.
øø{ |

IdCategoryøø| Ü
==øøá â
questionøøä í
.øøí ì
Categoryøøì õ
.øøõ ú

IdCategoryøøú ¶
&&øøß ©
answerøø™ ∞
.øø∞ ±
IdAwnserøø± π
!=øø∫ º
questionøøΩ ≈
.øø≈ ∆
Awnserøø∆ Ã
.øøÃ Õ
IdAwnserøøÕ ’
)øø’ ÷
.øø÷ ◊
ToListøø◊ ›
(øø› ﬁ
)øøﬁ ﬂ
;øøﬂ ‡
answersToReturn
¿¿ '
.
¿¿' (
Add
¿¿( +
(
¿¿+ ,
rightAnswer
¿¿, 7
.
¿¿7 8
FirstOrDefault
¿¿8 F
(
¿¿F G
)
¿¿G H
)
¿¿H I
;
¿¿I J
Random
¡¡ 
random
¡¡ %
=
¡¡& '
new
¡¡( +
Random
¡¡, 2
(
¡¡2 3
)
¡¡3 4
;
¡¡4 5
answersToReturn
¬¬ '
.
¬¬' (
AddRange
¬¬( 0
(
¬¬0 1%
wrongAnswersPerQuestion
¬¬1 H
.
¬¬H I
OrderBy
¬¬I P
(
¬¬P Q
answerSelected
¬¬Q _
=>
¬¬` b
random
¬¬c i
.
¬¬i j
Next
¬¬j n
(
¬¬n o
)
¬¬o p
)
¬¬p q
.
¬¬q r
Take
¬¬r v
(
¬¬v w
$num
¬¬w x
)
¬¬x y
.
¬¬y z
ToList¬¬z Ä
(¬¬Ä Å
)¬¬Å Ç
)¬¬Ç É
;¬¬É Ñ
}
√√ 
if
ƒƒ 
(
ƒƒ 
answersToReturn
ƒƒ '
.
ƒƒ' (
Count
ƒƒ( -
==
ƒƒ. 0%
NUMBER_OF_TOTAL_ANSWERS
ƒƒ1 H
)
ƒƒH I
{
≈≈ 
resultOfOperation
∆∆ )
.
∆∆) *
	CodeEvent
∆∆* 3
=
∆∆4 5!
ExceptionDictionary
∆∆6 I
.
∆∆I J
SUCCESFULL_EVENT
∆∆J Z
;
∆∆Z [
}
«« 
else
»» 
{
…… 
resultOfOperation
   )
.
  ) *
	CodeEvent
  * 3
=
  4 5!
ExceptionDictionary
  6 I
.
  I J 
UNSUCCESFULL_EVENT
  J \
;
  \ ]
}
ÀÀ 
resultOfOperation
ÃÃ %
.
ÃÃ% &
ObjectSaved
ÃÃ& 1
=
ÃÃ2 3
answersToReturn
ÃÃ4 C
;
ÃÃC D
return
ÕÕ 
resultOfOperation
ÕÕ ,
;
ÕÕ, -
}
ŒŒ 
}
œœ 
catch
–– 
(
–– #
ArgumentNullException
–– (
ex
––) +
)
––+ ,
{
—— 
resultOfOperation
““ !
=
““" #
ExceptionHandler
““$ 4
.
““4 5+
HandleExceptionDataAccesLevel
““5 R
(
““R S
resultOfOperation
““S d
,
““d e
ex
““f h
)
““h i
;
““i j
ExceptionHandler
””  
.
””  !
LogException
””! -
(
””- .
ex
””. 0
,
””0 1!
ExceptionDictionary
””2 E
.
””E F
FATAL_EXCEPTION
””F U
)
””U V
;
””V W
}
‘‘ 
catch
’’ 
(
’’ 
EntityException
’’ "
ex
’’# %
)
’’% &
{
÷÷ 
resultOfOperation
◊◊ !
=
◊◊" #
ExceptionHandler
◊◊$ 4
.
◊◊4 5+
HandleExceptionDataAccesLevel
◊◊5 R
(
◊◊R S
resultOfOperation
◊◊S d
,
◊◊d e
ex
◊◊f h
)
◊◊h i
;
◊◊i j
ExceptionHandler
ÿÿ  
.
ÿÿ  !
LogException
ÿÿ! -
(
ÿÿ- .
ex
ÿÿ. 0
,
ÿÿ0 1!
ExceptionDictionary
ÿÿ2 E
.
ÿÿE F
FATAL_EXCEPTION
ÿÿF U
)
ÿÿU V
;
ÿÿV W
}
ŸŸ 
catch
⁄⁄ 
(
⁄⁄ 
SqlException
⁄⁄ 
ex
⁄⁄  "
)
⁄⁄" #
{
€€ 
resultOfOperation
‹‹ !
=
‹‹" #
ExceptionHandler
‹‹$ 4
.
‹‹4 5+
HandleExceptionDataAccesLevel
‹‹5 R
(
‹‹R S
resultOfOperation
‹‹S d
,
‹‹d e
ex
‹‹f h
)
‹‹h i
;
‹‹i j
ExceptionHandler
››  
.
››  !
LogException
››! -
(
››- .
ex
››. 0
,
››0 1!
ExceptionDictionary
››2 E
.
››E F
FATAL_EXCEPTION
››F U
)
››U V
;
››V W
}
ﬁﬁ 
catch
ﬂﬂ 
(
ﬂﬂ )
DbEntityValidationException
ﬂﬂ .
ex
ﬂﬂ/ 1
)
ﬂﬂ1 2
{
‡‡ 
resultOfOperation
·· !
=
··" #
ExceptionHandler
··$ 4
.
··4 5+
HandleExceptionDataAccesLevel
··5 R
(
··R S
resultOfOperation
··S d
,
··d e
ex
··f h
)
··h i
;
··i j
ExceptionHandler
‚‚  
.
‚‚  !
LogException
‚‚! -
(
‚‚- .
ex
‚‚. 0
,
‚‚0 1!
ExceptionDictionary
‚‚2 E
.
‚‚E F
FATAL_EXCEPTION
‚‚F U
)
‚‚U V
;
‚‚V W
}
„„ 
return
‰‰ 
resultOfOperation
‰‰ $
;
‰‰$ %
}
ÂÂ 	
public
ÁÁ 
static
ÁÁ 
int
ÁÁ &
SaveGamePlayerInDataBase
ÁÁ 2
(
ÁÁ2 3

GamePlayer
ÁÁ3 =
gamePlayers
ÁÁ> I
)
ÁÁI J
{
ËË 	
int
ÈÈ 
resultOfOperation
ÈÈ !
=
ÈÈ" #!
ExceptionDictionary
ÈÈ$ 7
.
ÈÈ7 8 
UNSUCCESFULL_EVENT
ÈÈ8 J
;
ÈÈJ K
if
ÍÍ 
(
ÍÍ 
gamePlayers
ÍÍ 
==
ÍÍ 
null
ÍÍ #
)
ÍÍ# $
{
ÎÎ 
return
ÏÏ !
ExceptionDictionary
ÏÏ *
.
ÏÏ* +
NULL_PARAEMETER
ÏÏ+ :
;
ÏÏ: ;
}
ÌÌ 
try
ÓÓ 
{
ÔÔ 
using
 
(
 
var
 
	contextBD
 $
=
% &
new
' *!
JeopardyDBContainer
+ >
(
> ?
)
? @
)
@ A
{
ÒÒ 
	contextBD
ÚÚ 
.
ÚÚ 
Games
ÚÚ #
.
ÚÚ# $
Attach
ÚÚ$ *
(
ÚÚ* +
gamePlayers
ÚÚ+ 6
.
ÚÚ6 7
Game
ÚÚ7 ;
)
ÚÚ; <
;
ÚÚ< =
	contextBD
ÛÛ 
.
ÛÛ 
GamePlayers
ÛÛ )
.
ÛÛ) *
Add
ÛÛ* -
(
ÛÛ- .
gamePlayers
ÛÛ. 9
)
ÛÛ9 :
;
ÛÛ: ;
int
ÙÙ 
resultOfEvent
ÙÙ %
=
ÙÙ& '
	contextBD
ÙÙ( 1
.
ÙÙ1 2
SaveChanges
ÙÙ2 =
(
ÙÙ= >
)
ÙÙ> ?
;
ÙÙ? @
if
ıı 
(
ıı 
resultOfEvent
ıı %
>
ıı& '
$num
ıı( )
)
ıı) *
{
ˆˆ 
resultOfOperation
˜˜ )
=
˜˜* +!
UpdatePlayersPoints
˜˜, ?
(
˜˜? @
gamePlayers
˜˜@ K
)
˜˜K L
;
˜˜L M
}
¯¯ 
else
˘˘ 
{
˙˙ 
resultOfOperation
˚˚ )
=
˚˚* +!
ExceptionDictionary
˚˚, ?
.
˚˚? @ 
UNSUCCESFULL_EVENT
˚˚@ R
;
˚˚R S
}
¸¸ 
}
˝˝ 
}
˛˛ 
catch
ˇˇ 
(
ˇˇ 
UpdateException
ˇˇ "
ex
ˇˇ# %
)
ˇˇ% &
{
ÄÄ 
resultOfOperation
ÅÅ !
=
ÅÅ" #!
ExceptionDictionary
ÅÅ$ 7
.
ÅÅ7 8 
SAVE_CHANGES_ERROR
ÅÅ8 J
;
ÅÅJ K
ExceptionHandler
ÇÇ  
.
ÇÇ  !
LogException
ÇÇ! -
(
ÇÇ- .
ex
ÇÇ. 0
,
ÇÇ0 1!
ExceptionDictionary
ÇÇ2 E
.
ÇÇE F
FATAL_EXCEPTION
ÇÇF U
)
ÇÇU V
;
ÇÇV W
}
ÉÉ 
catch
ÑÑ 
(
ÑÑ 
DbUpdateException
ÑÑ $
ex
ÑÑ% '
)
ÑÑ' (
{
ÖÖ 
resultOfOperation
ÜÜ !
=
ÜÜ" #!
ExceptionDictionary
ÜÜ# 6
.
ÜÜ6 7 
SAVE_CHANGES_ERROR
ÜÜ7 I
;
ÜÜI J
ExceptionHandler
áá  
.
áá  !
LogException
áá! -
(
áá- .
ex
áá. 0
.
áá0 1
GetBaseException
áá1 A
(
ááA B
)
ááB C
,
ááC D!
ExceptionDictionary
ááE X
.
ááX Y
FATAL_EXCEPTION
ááY h
)
ááh i
;
áái j
}
àà 
catch
ââ 
(
ââ #
ArgumentNullException
ââ (
ex
ââ) +
)
ââ+ ,
{
ää 
resultOfOperation
ãã !
=
ãã" #!
ExceptionDictionary
ãã$ 7
.
ãã7 8
ARGUMENT_NULL
ãã8 E
;
ããE F
ExceptionHandler
åå  
.
åå  !
LogException
åå! -
(
åå- .
ex
åå. 0
,
åå0 1!
ExceptionDictionary
åå2 E
.
ååE F
FATAL_EXCEPTION
ååF U
)
ååU V
;
ååV W
}
çç 
catch
éé 
(
éé 
EntityException
éé "
ex
éé# %
)
éé% &
{
èè 
resultOfOperation
êê !
=
êê" #!
ExceptionDictionary
êê$ 7
.
êê7 8
ENTITY_ERROR
êê8 D
;
êêD E
ExceptionHandler
ëë  
.
ëë  !
LogException
ëë! -
(
ëë- .
ex
ëë. 0
,
ëë0 1!
ExceptionDictionary
ëë2 E
.
ëëE F
FATAL_EXCEPTION
ëëF U
)
ëëU V
;
ëëV W
}
íí 
catch
ìì 
(
ìì 
SqlException
ìì 
ex
ìì  "
)
ìì" #
{
îî 
resultOfOperation
ïï !
=
ïï" #!
ExceptionDictionary
ïï$ 7
.
ïï7 8
	SQL_ERROR
ïï8 A
;
ïïA B
ExceptionHandler
ññ  
.
ññ  !
LogException
ññ! -
(
ññ- .
ex
ññ. 0
,
ññ0 1!
ExceptionDictionary
ññ2 E
.
ññE F
FATAL_EXCEPTION
ññF U
)
ññU V
;
ññV W
}
óó 
catch
òò 
(
òò )
DbEntityValidationException
òò .
ex
òò/ 1
)
òò1 2
{
ôô 
resultOfOperation
öö !
=
öö" #!
ExceptionDictionary
öö$ 7
.
öö7 8 
SAVE_CHANGES_ERROR
öö8 J
;
ööJ K
ExceptionHandler
õõ  
.
õõ  !
LogException
õõ! -
(
õõ- .
ex
õõ. 0
,
õõ0 1!
ExceptionDictionary
õõ2 E
.
õõE F
FATAL_EXCEPTION
õõF U
)
õõU V
;
õõV W
}
úú 
return
ùù 
resultOfOperation
ùù $
;
ùù$ %
}
ûû 	
public
†† 
static
†† 
int
†† !
UpdatePlayersPoints
†† -
(
††- .

GamePlayer
††. 8
gamePlayers
††9 D
)
††D E
{
°° 	
int
¢¢ 
resultOfOperation
¢¢ !
=
¢¢" #!
ExceptionDictionary
¢¢$ 7
.
¢¢7 8 
UNSUCCESFULL_EVENT
¢¢8 J
;
¢¢J K
if
££ 
(
££ 
gamePlayers
££ 
==
££ 
null
££ #
)
££# $
{
§§ 
return
•• !
ExceptionDictionary
•• *
.
••* +
NULL_PARAEMETER
••+ :
;
••: ;
}
¶¶ 
try
ßß 
{
®® 
using
©© 
(
©© 
var
©© 
	contextBD
©© $
=
©©% &
new
©©' *!
JeopardyDBContainer
©©+ >
(
©©> ?
)
©©? @
)
©©@ A
{
™™ 
var
´´ 
playerToUpdate
´´ &
=
´´' (
	contextBD
´´) 2
.
´´2 3
Players
´´3 :
.
´´: ;
FirstOrDefault
´´; I
(
´´I J
pl
´´J L
=>
´´M O
pl
´´P R
.
´´R S
IdPlayer
´´S [
==
´´\ ^
gamePlayers
´´_ j
.
´´j k
Player_IdPlayer
´´k z
)
´´z {
;
´´{ |
if
¨¨ 
(
¨¨ 
playerToUpdate
¨¨ %
!=
¨¨& (
null
¨¨) -
)
¨¨- .
{
≠≠ 
if
ÆÆ 
(
ÆÆ 
gamePlayers
ÆÆ '
.
ÆÆ' (
PointsInGame
ÆÆ( 4
>
ÆÆ5 6
$num
ÆÆ7 8
)
ÆÆ8 9
{
ØØ 
playerToUpdate
∞∞ *
.
∞∞* +
GeneralPoints
∞∞+ 8
+=
∞∞9 ;
gamePlayers
∞∞< G
.
∞∞G H
PointsInGame
∞∞H T
;
∞∞T U
int
±± 
resultOfEvent
±±  -
=
±±. /
	contextBD
±±0 9
.
±±9 :
SaveChanges
±±: E
(
±±E F
)
±±F G
;
±±G H
if
≤≤ 
(
≤≤  
resultOfEvent
≤≤  -
>
≤≤. /
$num
≤≤0 1
)
≤≤1 2
{
≥≥ 
resultOfOperation
¥¥  1
=
¥¥2 3!
ExceptionDictionary
¥¥4 G
.
¥¥G H
SUCCESFULL_EVENT
¥¥H X
;
¥¥X Y
}
µµ 
else
∂∂  
{
∑∑ 
resultOfOperation
∏∏  1
=
∏∏2 3!
ExceptionDictionary
∏∏4 G
.
∏∏G H 
UNSUCCESFULL_EVENT
∏∏H Z
;
∏∏Z [
}
ππ 
}
∫∫ 
else
ªª 
{
ºº 
resultOfOperation
ΩΩ -
=
ΩΩ. /!
ExceptionDictionary
ΩΩ0 C
.
ΩΩC D
SUCCESFULL_EVENT
ΩΩD T
;
ΩΩT U
}
ææ 
}
øø 
}
¿¿ 
}
¡¡ 
catch
¬¬ 
(
¬¬ 
UpdateException
¬¬ "
ex
¬¬# %
)
¬¬% &
{
√√ 
resultOfOperation
ƒƒ !
=
ƒƒ" #!
ExceptionDictionary
ƒƒ$ 7
.
ƒƒ7 8 
SAVE_CHANGES_ERROR
ƒƒ8 J
;
ƒƒJ K
ExceptionHandler
≈≈  
.
≈≈  !
LogException
≈≈! -
(
≈≈- .
ex
≈≈. 0
,
≈≈0 1!
ExceptionDictionary
≈≈2 E
.
≈≈E F
FATAL_EXCEPTION
≈≈F U
)
≈≈U V
;
≈≈V W
}
∆∆ 
catch
«« 
(
«« 
DbUpdateException
«« $
ex
««% '
)
««' (
{
»» 
resultOfOperation
…… !
=
……" #!
ExceptionDictionary
……$ 7
.
……7 8 
SAVE_CHANGES_ERROR
……8 J
;
……J K
ExceptionHandler
    
.
    !
LogException
  ! -
(
  - .
ex
  . 0
.
  0 1
GetBaseException
  1 A
(
  A B
)
  B C
,
  C D!
ExceptionDictionary
  E X
.
  X Y
FATAL_EXCEPTION
  Y h
)
  h i
;
  i j
}
ÀÀ 
catch
ÃÃ 
(
ÃÃ #
ArgumentNullException
ÃÃ (
ex
ÃÃ) +
)
ÃÃ+ ,
{
ÕÕ 
resultOfOperation
ŒŒ !
=
ŒŒ" #!
ExceptionDictionary
ŒŒ$ 7
.
ŒŒ7 8
ARGUMENT_NULL
ŒŒ8 E
;
ŒŒE F
ExceptionHandler
œœ  
.
œœ  !
LogException
œœ! -
(
œœ- .
ex
œœ. 0
,
œœ0 1!
ExceptionDictionary
œœ2 E
.
œœE F
FATAL_EXCEPTION
œœF U
)
œœU V
;
œœV W
}
–– 
catch
—— 
(
—— 
EntityException
—— "
ex
——# %
)
——% &
{
““ 
resultOfOperation
”” !
=
””" #!
ExceptionDictionary
””$ 7
.
””7 8
ENTITY_ERROR
””8 D
;
””D E
ExceptionHandler
‘‘  
.
‘‘  !
LogException
‘‘! -
(
‘‘- .
ex
‘‘. 0
,
‘‘0 1!
ExceptionDictionary
‘‘2 E
.
‘‘E F
FATAL_EXCEPTION
‘‘F U
)
‘‘U V
;
‘‘V W
}
’’ 
catch
÷÷ 
(
÷÷ 
SqlException
÷÷ 
ex
÷÷  "
)
÷÷" #
{
◊◊ 
resultOfOperation
ÿÿ !
=
ÿÿ" #!
ExceptionDictionary
ÿÿ$ 7
.
ÿÿ7 8
	SQL_ERROR
ÿÿ8 A
;
ÿÿA B
ExceptionHandler
ŸŸ  
.
ŸŸ  !
LogException
ŸŸ! -
(
ŸŸ- .
ex
ŸŸ. 0
,
ŸŸ0 1!
ExceptionDictionary
ŸŸ2 E
.
ŸŸE F
FATAL_EXCEPTION
ŸŸF U
)
ŸŸU V
;
ŸŸV W
}
⁄⁄ 
catch
€€ 
(
€€ )
DbEntityValidationException
€€ .
ex
€€/ 1
)
€€1 2
{
‹‹ 
resultOfOperation
›› !
=
››" #!
ExceptionDictionary
››$ 7
.
››7 8 
SAVE_CHANGES_ERROR
››8 J
;
››J K
ExceptionHandler
ﬁﬁ  
.
ﬁﬁ  !
LogException
ﬁﬁ! -
(
ﬁﬁ- .
ex
ﬁﬁ. 0
,
ﬁﬁ0 1!
ExceptionDictionary
ﬁﬁ2 E
.
ﬁﬁE F
FATAL_EXCEPTION
ﬁﬁF U
)
ﬁﬁU V
;
ﬁﬁV W
}
ﬂﬂ 
return
‡‡ 
resultOfOperation
‡‡ $
;
‡‡$ %
}
·· 	
public
„„ 
static
„„  
GenericClassServer
„„ (
<
„„( )
List
„„) -
<
„„- .
int
„„. 1
>
„„1 2
>
„„2 3

GetHostIds
„„4 >
(
„„> ?
)
„„? @
{
‰‰ 	 
GenericClassServer
ÂÂ 
<
ÂÂ 
List
ÂÂ #
<
ÂÂ# $
int
ÂÂ$ '
>
ÂÂ' (
>
ÂÂ( )
resultOfOperation
ÂÂ* ;
=
ÂÂ< =
new
ÂÂ> A 
GenericClassServer
ÂÂB T
<
ÂÂT U
List
ÂÂU Y
<
ÂÂY Z
int
ÂÂZ ]
>
ÂÂ] ^
>
ÂÂ^ _
(
ÂÂ_ `
)
ÂÂ` a
;
ÂÂa b
try
ÊÊ 
{
ÁÁ 
using
ËË 
(
ËË 
var
ËË 
	contextBD
ËË $
=
ËË% &
new
ËË' *!
JeopardyDBContainer
ËË+ >
(
ËË> ?
)
ËË? @
)
ËË@ A
{
ÈÈ 
resultOfOperation
ÍÍ %
.
ÍÍ% &
ObjectSaved
ÍÍ& 1
=
ÍÍ2 3
	contextBD
ÍÍ4 =
.
ÍÍ= >
Hosts
ÍÍ> C
.
ÍÍC D
Where
ÍÍD I
(
ÍÍI J
host
ÍÍJ N
=>
ÍÍO Q
host
ÍÍR V
.
ÍÍV W
IdHost
ÍÍW ]
!=
ÍÍ^ `
$num
ÍÍa b
)
ÍÍb c
.
ÍÍc d
Select
ÍÍd j
(
ÍÍj k
host
ÍÍk o
=>
ÍÍp r
host
ÍÍs w
.
ÍÍw x
IdHost
ÍÍx ~
)
ÍÍ~ 
.ÍÍ Ä
ToListÍÍÄ Ü
(ÍÍÜ á
)ÍÍá à
;ÍÍà â
if
ÎÎ 
(
ÎÎ 
resultOfOperation
ÎÎ )
.
ÎÎ) *
ObjectSaved
ÎÎ* 5
.
ÎÎ5 6
Count
ÎÎ6 ;
!=
ÎÎ< >
$num
ÎÎ? @
)
ÎÎ@ A
{
ÏÏ 
resultOfOperation
ÌÌ )
.
ÌÌ) *
	CodeEvent
ÌÌ* 3
=
ÌÌ4 5!
ExceptionDictionary
ÌÌ6 I
.
ÌÌI J
SUCCESFULL_EVENT
ÌÌJ Z
;
ÌÌZ [
}
ÓÓ 
else
ÔÔ 
{
 
resultOfOperation
ÒÒ )
.
ÒÒ) *
	CodeEvent
ÒÒ* 3
=
ÒÒ4 5!
ExceptionDictionary
ÒÒ6 I
.
ÒÒI J 
UNSUCCESFULL_EVENT
ÒÒJ \
;
ÒÒ\ ]
}
ÚÚ 
}
ÛÛ 
}
ÙÙ 
catch
ıı 
(
ıı #
ArgumentNullException
ıı (
ex
ıı) +
)
ıı+ ,
{
ˆˆ 
resultOfOperation
˜˜ !
=
˜˜" #
ExceptionHandler
˜˜$ 4
.
˜˜4 5+
HandleExceptionDataAccesLevel
˜˜5 R
(
˜˜R S
resultOfOperation
˜˜S d
,
˜˜d e
ex
˜˜f h
)
˜˜h i
;
˜˜i j
ExceptionHandler
¯¯  
.
¯¯  !
LogException
¯¯! -
(
¯¯- .
ex
¯¯. 0
,
¯¯0 1!
ExceptionDictionary
¯¯2 E
.
¯¯E F
FATAL_EXCEPTION
¯¯F U
)
¯¯U V
;
¯¯V W
}
˘˘ 
catch
˙˙ 
(
˙˙ 
EntityException
˙˙ "
ex
˙˙# %
)
˙˙% &
{
˚˚ 
resultOfOperation
¸¸ !
=
¸¸" #
ExceptionHandler
¸¸$ 4
.
¸¸4 5+
HandleExceptionDataAccesLevel
¸¸5 R
(
¸¸R S
resultOfOperation
¸¸S d
,
¸¸d e
ex
¸¸f h
)
¸¸h i
;
¸¸i j
ExceptionHandler
˝˝  
.
˝˝  !
LogException
˝˝! -
(
˝˝- .
ex
˝˝. 0
,
˝˝0 1!
ExceptionDictionary
˝˝2 E
.
˝˝E F
FATAL_EXCEPTION
˝˝F U
)
˝˝U V
;
˝˝V W
}
˛˛ 
catch
ˇˇ 
(
ˇˇ 
SqlException
ˇˇ 
ex
ˇˇ  "
)
ˇˇ" #
{
ÄÄ 
resultOfOperation
ÅÅ !
=
ÅÅ" #
ExceptionHandler
ÅÅ$ 4
.
ÅÅ4 5+
HandleExceptionDataAccesLevel
ÅÅ5 R
(
ÅÅR S
resultOfOperation
ÅÅS d
,
ÅÅd e
ex
ÅÅf h
)
ÅÅh i
;
ÅÅi j
ExceptionHandler
ÇÇ  
.
ÇÇ  !
LogException
ÇÇ! -
(
ÇÇ- .
ex
ÇÇ. 0
,
ÇÇ0 1!
ExceptionDictionary
ÇÇ2 E
.
ÇÇE F
FATAL_EXCEPTION
ÇÇF U
)
ÇÇU V
;
ÇÇV W
}
ÉÉ 
catch
ÑÑ 
(
ÑÑ )
DbEntityValidationException
ÑÑ .
ex
ÑÑ/ 1
)
ÑÑ1 2
{
ÖÖ 
resultOfOperation
ÜÜ !
=
ÜÜ" #
ExceptionHandler
ÜÜ$ 4
.
ÜÜ4 5+
HandleExceptionDataAccesLevel
ÜÜ5 R
(
ÜÜR S
resultOfOperation
ÜÜS d
,
ÜÜd e
ex
ÜÜf h
)
ÜÜh i
;
ÜÜi j
ExceptionHandler
áá  
.
áá  !
LogException
áá! -
(
áá- .
ex
áá. 0
,
áá0 1!
ExceptionDictionary
áá2 E
.
ááE F
FATAL_EXCEPTION
ááF U
)
ááU V
;
ááV W
}
àà 
return
ââ 
resultOfOperation
ââ $
;
ââ$ %
}
ää 	
}
çç 
}éé ‘_
ÄC:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameServer\JeopardyGame.Data\DataAccess\LoginOperations.cs
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
class 
LoginOperations '
{ 
private 
static 
readonly 
int  #
NULL_INT_VALUE$ 2
=3 4
$num5 6
;6 7
private 
static 
readonly 
int  #
VALUE_EXIST$ /
=0 1
$num2 3
;3 4
private 
static 
readonly 
int  #
VALUE_NOT_EXIST$ 3
=4 5
$num6 7
;7 8
public 
static 
GenericClassServer (
<( )
bool) -
>- .
VerifyPassword/ =
(= >
string> D
passwordEnteredE T
,T U
stringV \
hashedPassword] k
)k l
{ 	
GenericClassServer 
< 
bool #
># $
resultOfOperation% 6
=7 8
new9 <
GenericClassServer= O
<O P
boolP T
>T U
(U V
)V W
;W X
if 
( 
passwordEntered 
.  
Length  &
==' )
NULL_INT_VALUE* 8
||9 ;
hashedPassword< J
.J K
LengthK Q
==R T
NULL_INT_VALUEU c
)c d
{ 
return !
NullParametersHandler ,
., -(
HandleNullParametersDataBase- I
(I J
resultOfOperationJ [
)[ \
;\ ]
} 
if 
( 
passwordEntered 
.  
Equals  &
(& '
hashedPassword' 5
)5 6
)6 7
{ 
resultOfOperation !
.! "
ObjectSaved" -
=. /
true0 4
;4 5
resultOfOperation !
.! "
	CodeEvent" +
=, -
ExceptionDictionary. A
.A B
SUCCESFULL_EVENTB R
;R S
} 
else 
{   
resultOfOperation!! !
.!!! "
ObjectSaved!!" -
=!!. /
false!!0 5
;!!5 6
resultOfOperation"" !
.""! "
	CodeEvent""" +
="", -
ExceptionDictionary"". A
.""A B
UNSUCCESFULL_EVENT""B T
;""T U
}## 
return$$ 
resultOfOperation$$ $
;$$$ %
}%% 	
public'' 
static'' 
GenericClassServer'' (
<''( )
int'') ,
>'', - 
ValidateIfEmailExist''. B
(''B C
String''C I
email''J O
)''O P
{(( 	
GenericClassServer)) 
<)) 
int)) "
>))" #
resultOfOperation))$ 5
=))6 7
new))8 ;
GenericClassServer))< N
<))N O
int))O R
>))R S
())S T
)))T U
;))U V
if** 
(** 
string** 
.** 
IsNullOrEmpty** $
(**$ %
email**% *
)*** +
)**+ ,
{++ 
return,, !
NullParametersHandler,, ,
.,,, -(
HandleNullParametersDataBase,,- I
(,,I J
resultOfOperation,,J [
),,[ \
;,,\ ]
}-- 
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
{11 
bool22 
exist22 
=22  
	contextBD22! *
.22* +
Users22+ 0
.220 1
Any221 4
(224 5
user225 9
=>22: <
user22= A
.22A B
EmailAddress22B N
==22O Q
email22R W
)22W X
;22X Y
if33 
(33 
!33 
exist33 
)33 
{44 
resultOfOperation55 )
.55) *
ObjectSaved55* 5
=556 7
VALUE_NOT_EXIST558 G
;55G H
resultOfOperation66 )
.66) *
	CodeEvent66* 3
=664 5
ExceptionDictionary666 I
.66I J
SUCCESFULL_EVENT66J Z
;66Z [
}77 
else88 
{99 
resultOfOperation:: )
.::) *
	CodeEvent::* 3
=::4 5
ExceptionDictionary::6 I
.::I J
UNSUCCESFULL_EVENT::J \
;::\ ]
resultOfOperation;; )
.;;) *
ObjectSaved;;* 5
=;;6 7
VALUE_EXIST;;8 C
;;;C D
}<< 
}== 
}>> 
catch?? 
(?? !
ArgumentNullException?? (
ex??) +
)??+ ,
{@@ 
resultOfOperationAA !
=AA" #
ExceptionHandlerAA$ 4
.AA4 5)
HandleExceptionDataAccesLevelAA5 R
(AAR S
resultOfOperationAAS d
,AAd e
exAAf h
)AAh i
;AAi j
ExceptionHandlerBB  
.BB  !
LogExceptionBB! -
(BB- .
exBB. 0
,BB0 1
ExceptionDictionaryBB2 E
.BBE F
FATAL_EXCEPTIONBBF U
)BBU V
;BBV W
}CC 
catchDD 
(DD 
EntityExceptionDD "
exDD# %
)DD% &
{EE 
resultOfOperationFF !
=FF" #
ExceptionHandlerFF$ 4
.FF4 5)
HandleExceptionDataAccesLevelFF5 R
(FFR S
resultOfOperationFFS d
,FFd e
exFFf h
)FFh i
;FFi j
ExceptionHandlerGG  
.GG  !
LogExceptionGG! -
(GG- .
exGG. 0
,GG0 1
ExceptionDictionaryGG2 E
.GGE F
FATAL_EXCEPTIONGGF U
)GGU V
;GGV W
}HH 
catchII 
(II 
SqlExceptionII 
exII  "
)II" #
{JJ 
resultOfOperationKK !
=KK" #
ExceptionHandlerKK$ 4
.KK4 5)
HandleExceptionDataAccesLevelKK5 R
(KKR S
resultOfOperationKKS d
,KKd e
exKKf h
)KKh i
;KKi j
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
}MM 
catchNN 
(NN '
DbEntityValidationExceptionNN .
exNN/ 1
)NN1 2
{OO 
resultOfOperationPP !
=PP" #
ExceptionHandlerPP$ 4
.PP4 5)
HandleExceptionDataAccesLevelPP5 R
(PPR S
resultOfOperationPPS d
,PPd e
exPPf h
)PPh i
;PPi j
ExceptionHandlerQQ  
.QQ  !
LogExceptionQQ! -
(QQ- .
exQQ. 0
,QQ0 1
ExceptionDictionaryQQ2 E
.QQE F
FATAL_EXCEPTIONQQF U
)QQU V
;QQV W
}RR 
returnSS 
resultOfOperationSS $
;SS$ %
}TT 	
publicVV 
staticVV 
GenericClassServerVV (
<VV( )
intVV) ,
>VV, -#
ValidateIfUserNameExistVV. E
(VVE F
StringVVF L
userNameVVM U
)VVU V
{WW 	
GenericClassServerXX 
<XX 
intXX "
>XX" #
resultOfOperationXX$ 5
=XX6 7
newXX8 ;
GenericClassServerXX< N
<XXN O
intXXO R
>XXR S
(XXS T
)XXT U
;XXU V
ifYY 
(YY 
stringYY 
.YY 
IsNullOrEmptyYY $
(YY$ %
userNameYY% -
)YY- .
)YY. /
{ZZ 
return[[ !
NullParametersHandler[[ ,
.[[, -(
HandleNullParametersDataBase[[- I
([[I J
resultOfOperation[[J [
)[[[ \
;[[\ ]
}\\ 
try]] 
{^^ 
using__ 
(__ 
var__ 
	contextBD__ $
=__% &
new__' *
JeopardyDBContainer__+ >
(__> ?
)__? @
)__@ A
{`` 
boolaa 
existaa 
=aa  
	contextBDaa! *
.aa* +
Usersaa+ 0
.aa0 1
Anyaa1 4
(aa4 5
useraa5 9
=>aa: <
useraa= A
.aaA B
UserNameaaB J
==aaK M
userNameaaN V
)aaV W
;aaW X
ifbb 
(bb 
!bb 
existbb 
)bb 
{cc 
resultOfOperationdd )
.dd) *
ObjectSaveddd* 5
=dd6 7
VALUE_NOT_EXISTdd8 G
;ddG H
resultOfOperationee )
.ee) *
	CodeEventee* 3
=ee4 5
ExceptionDictionaryee6 I
.eeI J
SUCCESFULL_EVENTeeJ Z
;eeZ [
}ff 
elsegg 
{hh 
resultOfOperationii )
.ii) *
	CodeEventii* 3
=ii4 5
ExceptionDictionaryii6 I
.iiI J
UNSUCCESFULL_EVENTiiJ \
;ii\ ]
resultOfOperationjj )
.jj) *
ObjectSavedjj* 5
=jj6 7
VALUE_EXISTjj8 C
;jjC D
}kk 
}ll 
}mm 
catchnn 
(nn !
ArgumentNullExceptionnn (
exnn) +
)nn+ ,
{oo 
resultOfOperationpp !
=pp" #
ExceptionHandlerpp$ 4
.pp4 5)
HandleExceptionDataAccesLevelpp5 R
(ppR S
resultOfOperationppS d
,ppd e
exppf h
)pph i
;ppi j
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
(ss 
EntityExceptionss "
exss# %
)ss% &
{tt 
resultOfOperationuu !
=uu" #
ExceptionHandleruu$ 4
.uu4 5)
HandleExceptionDataAccesLeveluu5 R
(uuR S
resultOfOperationuuS d
,uud e
exuuf h
)uuh i
;uui j
ExceptionHandlervv  
.vv  !
LogExceptionvv! -
(vv- .
exvv. 0
,vv0 1
ExceptionDictionaryvv2 E
.vvE F
FATAL_EXCEPTIONvvF U
)vvU V
;vvV W
}ww 
catchxx 
(xx 
SqlExceptionxx 
exxx  "
)xx" #
{yy 
resultOfOperationzz !
=zz" #
ExceptionHandlerzz$ 4
.zz4 5)
HandleExceptionDataAccesLevelzz5 R
(zzR S
resultOfOperationzzS d
,zzd e
exzzf h
)zzh i
;zzi j
ExceptionHandler{{  
.{{  !
LogException{{! -
({{- .
ex{{. 0
,{{0 1
ExceptionDictionary{{2 E
.{{E F
FATAL_EXCEPTION{{F U
){{U V
;{{V W
}|| 
catch}} 
(}} '
DbEntityValidationException}} .
ex}}/ 1
)}}1 2
{~~ 
resultOfOperation !
=" #
ExceptionHandler$ 4
.4 5)
HandleExceptionDataAccesLevel5 R
(R S
resultOfOperationS d
,d e
exf h
)h i
;i j
ExceptionHandler
ÄÄ  
.
ÄÄ  !
LogException
ÄÄ! -
(
ÄÄ- .
ex
ÄÄ. 0
,
ÄÄ0 1!
ExceptionDictionary
ÄÄ2 E
.
ÄÄE F
FATAL_EXCEPTION
ÄÄF U
)
ÄÄU V
;
ÄÄV W
}
ÅÅ 
return
ÇÇ 
resultOfOperation
ÇÇ $
;
ÇÇ$ %
}
ÉÉ 	
}
ÖÖ 
}ÜÜ ŸÇ
âC:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameServer\JeopardyGame.Data\DataAccess\UserManagerDataOperation.cs
	namespace 	
JeopardyGame
 
. 
Data 
. 

DataAccess &
{ 
public 

static 
class $
UserManagerDataOperation 0
{ 
private 
static 
readonly 
int  #
NULL_INT_VALUE$ 2
=3 4
$num5 6
;6 7
private 
static 
readonly 
int  #
USER_NOT_FOUND$ 2
=3 4
-5 6
$num6 7
;7 8
private 
static 
readonly 
int  #
OPERATION_DONE$ 2
=3 4
$num5 6
;6 7
public 
static 
GenericClassServer (
<( )
User) -
>- .
SaveUserInDataBase/ A
(A B
UserB F
userG K
)K L
{   	
GenericClassServer!! 
<!! 
User!! #
>!!# $
resultOfOperation!!% 6
=!!7 8
new!!9 <
GenericClassServer!!= O
<!!O P
User!!P T
>!!T U
(!!U V
)!!V W
;!!W X
if"" 
("" 
user"" 
=="" 
null"" 
)"" 
{## 
return$$ !
NullParametersHandler$$ ,
.$$, -(
HandleNullParametersDataBase$$- I
($$I J
resultOfOperation$$J [
)$$[ \
;$$\ ]
}%% 
try&& 
{'' 
using(( 
((( 
var(( 
	contextBD(( $
=((% &
new((' *
JeopardyDBContainer((+ >
(((> ?
)((? @
)((@ A
{)) 
var** 
newUser** 
=**  !
	contextBD**" +
.**+ ,
Users**, 1
.**1 2
Add**2 5
(**5 6
user**6 :
)**: ;
;**; <
int++ 
resultEvent++ #
=++$ %
	contextBD++& /
.++/ 0
SaveChanges++0 ;
(++; <
)++< =
;++= >
if,, 
(,, 
resultEvent,, #
!=,,$ &
NULL_INT_VALUE,,' 5
),,5 6
{-- 
resultOfOperation.. )
...) *
	CodeEvent..* 3
=..4 5
ExceptionDictionary..6 I
...I J
SUCCESFULL_EVENT..J Z
;..Z [
}// 
else00 
{11 
resultOfOperation22 )
.22) *
	CodeEvent22* 3
=224 5
ExceptionDictionary226 I
.22I J
UNSUCCESFULL_EVENT22J \
;22\ ]
}33 
resultOfOperation44 %
.44% &
ObjectSaved44& 1
=442 3
newUser444 ;
;44; <
}55 
}66 
catch77 
(77 
DbUpdateException77 $
ex77% '
)77' (
{88 
resultOfOperation99 !
=99" #
ExceptionHandler99$ 4
.994 5)
HandleExceptionDataAccesLevel995 R
(99R S
resultOfOperation99S d
,99d e
ex99f h
)99h i
;99i j
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
(<< 
EntityException<< "
ex<<# %
)<<% &
{== 
resultOfOperation>> !
=>>" #
ExceptionHandler>>$ 4
.>>4 5)
HandleExceptionDataAccesLevel>>5 R
(>>R S
resultOfOperation>>S d
,>>d e
ex>>f h
)>>h i
;>>i j
ExceptionHandler??  
.??  !
LogException??! -
(??- .
ex??. 0
,??0 1
ExceptionDictionary??2 E
.??E F
FATAL_EXCEPTION??F U
)??U V
;??V W
}@@ 
catchAA 
(AA 
SqlExceptionAA 
exAA  "
)AA" #
{BB 
resultOfOperationCC !
=CC" #
ExceptionHandlerCC$ 4
.CC4 5)
HandleExceptionDataAccesLevelCC5 R
(CCR S
resultOfOperationCCS d
,CCd e
exCCf h
)CCh i
;CCi j
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
(FF '
DbEntityValidationExceptionFF -
exFF. 0
)FF0 1
{GG 
resultOfOperationHH !
=HH" #
ExceptionHandlerHH$ 4
.HH4 5)
HandleExceptionDataAccesLevelHH5 R
(HHR S
resultOfOperationHHS d
,HHd e
exHHf h
)HHh i
;HHi j
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
;IIV W
}JJ 
returnKK 
resultOfOperationKK $
;KK$ %
}LL 	
publicOO 
staticOO 
GenericClassServerOO (
<OO( )
PlayerOO) /
>OO/ 0 
SavePlayerInDataBaseOO1 E
(OOE F
UserOOF J
	userSavedOOK T
,OOT U
StateOOV [
defaultStateOO\ h
,OOh i
PlayerOOj p
	newPlayerOOq z
)OOz {
{PP 	
GenericClassServerQQ 
<QQ 
PlayerQQ %
>QQ% &
resultOfOperationQQ' 8
=QQ9 :
newQQ; >
GenericClassServerQQ? Q
<QQQ R
PlayerQQR X
>QQX Y
(QQY Z
)QQZ [
;QQ[ \
ifRR 
(RR 
	userSavedRR 
==RR 
nullRR !
||RR" $
defaultStateRR% 1
==RR2 4
nullRR5 9
||RR: <
	newPlayerRR= F
==RRG I
nullRRJ N
)RRN O
{SS 
returnTT !
NullParametersHandlerTT ,
.TT, -(
HandleNullParametersDataBaseTT- I
(TTI J
resultOfOperationTTJ [
)TT[ \
;TT\ ]
}UU 
tryVV 
{WW 
usingXX 
(XX 
varXX 
	contextBDXX $
=XX% &
newXX' *
JeopardyDBContainerXX+ >
(XX> ?
)XX? @
)XX@ A
{YY 
	contextBDZZ 
.ZZ 
UsersZZ #
.ZZ# $
AttachZZ$ *
(ZZ* +
	userSavedZZ+ 4
)ZZ4 5
;ZZ5 6
	contextBD[[ 
.[[ 
States[[ $
.[[$ %
Attach[[% +
([[+ ,
defaultState[[, 8
)[[8 9
;[[9 :
	newPlayer\\ 
.\\ 
User\\ "
=\\# $
	userSaved\\% .
;\\. /
	newPlayer]] 
.]] 
State]] #
=]]$ %
defaultState]]& 2
;]]2 3
var^^ 
newPlayerSaved^^ &
=^^' (
	contextBD^^) 2
.^^2 3
Players^^3 :
.^^: ;
Add^^; >
(^^> ?
	newPlayer^^? H
)^^H I
;^^I J
int__ 
resultEvent__ #
=__$ %
	contextBD__& /
.__/ 0
SaveChanges__0 ;
(__; <
)__< =
;__= >
if`` 
(`` 
resultEvent`` #
!=``$ &
NULL_INT_VALUE``' 5
)``5 6
{aa 
resultOfOperationbb )
.bb) *
	CodeEventbb* 3
=bb4 5
ExceptionDictionarybb6 I
.bbI J
SUCCESFULL_EVENTbbJ Z
;bbZ [
}cc 
elsedd 
{ee 
resultOfOperationff )
.ff) *
	CodeEventff* 3
=ff4 5
ExceptionDictionaryff6 I
.ffI J
UNSUCCESFULL_EVENTffJ \
;ff\ ]
}gg 
resultOfOperationhh %
.hh% &
ObjectSavedhh& 1
=hh2 3
newPlayerSavedhh4 B
;hhB C
}ii 
}jj 
catchkk 
(kk 
DbUpdateExceptionkk $
exkk% '
)kk' (
{ll 
resultOfOperationmm !
=mm" #
ExceptionHandlermm$ 4
.mm4 5)
HandleExceptionDataAccesLevelmm5 R
(mmR S
resultOfOperationmmS d
,mmd e
exmmf h
)mmh i
;mmi j
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
(pp 
EntityExceptionpp "
expp# %
)pp% &
{qq 
resultOfOperationrr !
=rr" #
ExceptionHandlerrr$ 4
.rr4 5)
HandleExceptionDataAccesLevelrr5 R
(rrR S
resultOfOperationrrS d
,rrd e
exrrf h
)rrh i
;rri j
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
(uu 
SqlExceptionuu 
exuu  "
)uu" #
{vv 
resultOfOperationww !
=ww" #
ExceptionHandlerww$ 4
.ww4 5)
HandleExceptionDataAccesLevelww5 R
(wwR S
resultOfOperationwwS d
,wwd e
exwwf h
)wwh i
;wwi j
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
(zz '
DbEntityValidationExceptionzz .
exzz/ 1
)zz1 2
{{{ 
resultOfOperation|| !
=||" #
ExceptionHandler||$ 4
.||4 5)
HandleExceptionDataAccesLevel||5 R
(||R S
resultOfOperation||S d
,||d e
ex||f h
)||h i
;||i j
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
return 
resultOfOperation $
;$ %
}
ÄÄ 	
public
ÇÇ 
static
ÇÇ  
GenericClassServer
ÇÇ (
<
ÇÇ( )
User
ÇÇ) -
>
ÇÇ- .
GetUserById
ÇÇ/ :
(
ÇÇ: ;
int
ÇÇ; >
idUser
ÇÇ? E
)
ÇÇE F
{
ÉÉ 	 
GenericClassServer
ÑÑ 
<
ÑÑ 
User
ÑÑ #
>
ÑÑ# $
resultOfOperation
ÑÑ% 6
=
ÑÑ7 8
new
ÑÑ9 < 
GenericClassServer
ÑÑ= O
<
ÑÑO P
User
ÑÑP T
>
ÑÑT U
(
ÑÑU V
)
ÑÑV W
;
ÑÑW X
if
ÖÖ 
(
ÖÖ 
idUser
ÖÖ 
==
ÖÖ 
$num
ÖÖ 
)
ÖÖ 
{
ÜÜ 
return
áá #
NullParametersHandler
áá ,
.
áá, -*
HandleNullParametersDataBase
áá- I
(
ááI J
resultOfOperation
ááJ [
)
áá[ \
;
áá\ ]
}
àà 
try
ââ 
{
ää 
using
ãã 
(
ãã 
var
ãã 
	contextBD
ãã $
=
ãã% &
new
ãã' *!
JeopardyDBContainer
ãã+ >
(
ãã> ?
)
ãã? @
)
ãã@ A
{
åå 
var
çç 
userConsulted
çç %
=
çç& '
	contextBD
çç( 1
.
çç1 2
Users
çç2 7
.
çç7 8
Find
çç8 <
(
çç< =
idUser
çç= C
)
ççC D
;
ççD E
if
éé 
(
éé 
userConsulted
éé %
!=
éé& (
null
éé) -
)
éé- .
{
èè 
resultOfOperation
êê )
.
êê) *
	CodeEvent
êê* 3
=
êê4 5!
ExceptionDictionary
êê6 I
.
êêI J
SUCCESFULL_EVENT
êêJ Z
;
êêZ [
}
ëë 
else
íí 
{
ìì 
resultOfOperation
îî )
.
îî) *
	CodeEvent
îî* 3
=
îî4 5!
ExceptionDictionary
îî6 I
.
îîI J 
UNSUCCESFULL_EVENT
îîJ \
;
îî\ ]
}
ïï 
resultOfOperation
ññ %
.
ññ% &
ObjectSaved
ññ& 1
=
ññ2 3
userConsulted
ññ4 A
;
ññA B
}
óó 
}
òò 
catch
ôô 
(
ôô 
EntityException
ôô "
ex
ôô# %
)
ôô% &
{
öö 
resultOfOperation
õõ !
=
õõ" #
ExceptionHandler
õõ$ 4
.
õõ4 5+
HandleExceptionDataAccesLevel
õõ5 R
(
õõR S
resultOfOperation
õõS d
,
õõd e
ex
õõf h
)
õõh i
;
õõi j
ExceptionHandler
úú  
.
úú  !
LogException
úú! -
(
úú- .
ex
úú. 0
,
úú0 1!
ExceptionDictionary
úú2 E
.
úúE F
FATAL_EXCEPTION
úúF U
)
úúU V
;
úúV W
}
ùù 
catch
ûû 
(
ûû 
SqlException
ûû 
ex
ûû  "
)
ûû" #
{
üü 
resultOfOperation
†† !
=
††" #
ExceptionHandler
††$ 4
.
††4 5+
HandleExceptionDataAccesLevel
††5 R
(
††R S
resultOfOperation
††S d
,
††d e
ex
††f h
)
††h i
;
††i j
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
££ )
DbEntityValidationException
££ .
ex
££/ 1
)
££1 2
{
§§ 
resultOfOperation
•• !
=
••" #
ExceptionHandler
••$ 4
.
••4 5+
HandleExceptionDataAccesLevel
••5 R
(
••R S
resultOfOperation
••S d
,
••d e
ex
••f h
)
••h i
;
••i j
ExceptionHandler
¶¶  
.
¶¶  !
LogException
¶¶! -
(
¶¶- .
ex
¶¶. 0
,
¶¶0 1!
ExceptionDictionary
¶¶2 E
.
¶¶E F
FATAL_EXCEPTION
¶¶F U
)
¶¶U V
;
¶¶V W
}
ßß 
return
®® 
resultOfOperation
®® $
;
®®$ %
}
©© 	
public
™™ 
static
™™  
GenericClassServer
™™ (
<
™™( )
User
™™) -
>
™™- .
GetUserByUserName
™™/ @
(
™™@ A
String
™™A G
userName
™™H P
)
™™P Q
{
´´ 	 
GenericClassServer
¨¨ 
<
¨¨ 
User
¨¨ #
>
¨¨# $
resultOfOperation
¨¨% 6
=
¨¨7 8
new
¨¨9 < 
GenericClassServer
¨¨= O
<
¨¨O P
User
¨¨P T
>
¨¨T U
(
¨¨U V
)
¨¨V W
;
¨¨W X
if
≠≠ 
(
≠≠ 
string
≠≠ 
.
≠≠ 
IsNullOrEmpty
≠≠ $
(
≠≠$ %
userName
≠≠% -
)
≠≠- .
)
≠≠. /
{
ÆÆ 
return
ØØ #
NullParametersHandler
ØØ ,
.
ØØ, -*
HandleNullParametersDataBase
ØØ- I
(
ØØI J
resultOfOperation
ØØJ [
)
ØØ[ \
;
ØØ\ ]
}
∞∞ 
try
±± 
{
≤≤ 
using
≥≥ 
(
≥≥ 
var
≥≥ 
	contextBD
≥≥ $
=
≥≥% &
new
≥≥' *!
JeopardyDBContainer
≥≥+ >
(
≥≥> ?
)
≥≥? @
)
≥≥@ A
{
¥¥ 
var
µµ 
user
µµ 
=
µµ 
	contextBD
µµ (
.
µµ( )
Users
µµ) .
.
µµ. /
FirstOrDefault
µµ/ =
(
µµ= >
u
µµ> ?
=>
µµ@ B
u
µµC D
.
µµD E
UserName
µµE M
==
µµN P
userName
µµQ Y
)
µµY Z
;
µµZ [
if
∂∂ 
(
∂∂ 
user
∂∂ 
!=
∂∂ 
null
∂∂  $
)
∂∂$ %
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
SUCCESFULL_EVENT
∏∏J Z
;
∏∏Z [
}
ππ 
else
∫∫ 
{
ªª 
resultOfOperation
ºº )
.
ºº) *
	CodeEvent
ºº* 3
=
ºº4 5!
ExceptionDictionary
ºº6 I
.
ººI J 
UNSUCCESFULL_EVENT
ººJ \
;
ºº\ ]
}
ΩΩ 
resultOfOperation
ææ %
.
ææ% &
ObjectSaved
ææ& 1
=
ææ2 3
user
ææ4 8
;
ææ8 9
}
øø 
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
œœ 
catch
–– 
(
–– )
DbEntityValidationException
–– .
ex
––/ 1
)
––1 2
{
—— 
resultOfOperation
““ !
=
““" #
ExceptionHandler
““$ 4
.
““4 5+
HandleExceptionDataAccesLevel
““5 R
(
““R S
resultOfOperation
““S d
,
““d e
ex
““f h
)
““h i
;
““i j
ExceptionHandler
””  
.
””  !
LogException
””! -
(
””- .
ex
””. 0
,
””0 1!
ExceptionDictionary
””2 E
.
””E F
FATAL_EXCEPTION
””F U
)
””U V
;
””V W
}
‘‘ 
return
’’ 
resultOfOperation
’’ $
;
’’$ %
}
÷÷ 	
public
ÿÿ 
static
ÿÿ  
GenericClassServer
ÿÿ (
<
ÿÿ( )
int
ÿÿ) ,
>
ÿÿ, -"
UpdatePlayerReported
ÿÿ. B
(
ÿÿB C
int
ÿÿC F
idPlayerReported
ÿÿG W
)
ÿÿW X
{
ŸŸ 	 
GenericClassServer
⁄⁄ 
<
⁄⁄ 
int
⁄⁄ "
>
⁄⁄" #
resultOfOperation
⁄⁄$ 5
=
⁄⁄6 7
new
⁄⁄8 ; 
GenericClassServer
⁄⁄< N
<
⁄⁄N O
int
⁄⁄O R
>
⁄⁄R S
(
⁄⁄S T
)
⁄⁄T U
;
⁄⁄U V
if
€€ 
(
€€ 
idPlayerReported
€€  
==
€€! #
NULL_INT_VALUE
€€$ 2
)
€€2 3
{
‹‹ 
return
›› #
NullParametersHandler
›› ,
.
››, -*
HandleNullParametersDataBase
››- I
(
››I J
resultOfOperation
››J [
)
››[ \
;
››\ ]
}
ﬁﬁ 
try
ﬂﬂ 
{
‡‡ 
using
·· 
(
·· 
var
·· 
	contextBD
·· $
=
··% &
new
··' *!
JeopardyDBContainer
··+ >
(
··> ?
)
··? @
)
··@ A
{
‚‚ 
var
„„ 
player
„„ 
=
„„  !
GetPlayerByIdPlayer
„„! 4
(
„„4 5
idPlayerReported
„„5 E
)
„„E F
;
„„F G
if
‰‰ 
(
‰‰ 
player
‰‰ 
.
‰‰ 
	CodeEvent
‰‰ (
==
‰‰) +!
ExceptionDictionary
‰‰, ?
.
‰‰? @
SUCCESFULL_EVENT
‰‰@ P
)
‰‰P Q
{
ÂÂ 
player
ÊÊ 
.
ÊÊ 
ObjectSaved
ÊÊ *
.
ÊÊ* +
	NoReports
ÊÊ+ 4
++
ÊÊ4 6
;
ÊÊ6 7
	contextBD
ÁÁ !
.
ÁÁ! "
Entry
ÁÁ" '
(
ÁÁ' (
player
ÁÁ( .
)
ÁÁ. /
.
ÁÁ/ 0
State
ÁÁ0 5
=
ÁÁ6 7
EntityState
ÁÁ8 C
.
ÁÁC D
Modified
ÁÁD L
;
ÁÁL M
int
ËË 
resultUpdate
ËË (
=
ËË) *
	contextBD
ËË+ 4
.
ËË4 5
SaveChanges
ËË5 @
(
ËË@ A
)
ËËA B
;
ËËB C
if
ÈÈ 
(
ÈÈ 
resultUpdate
ÈÈ (
!=
ÈÈ) +
NULL_INT_VALUE
ÈÈ, :
)
ÈÈ: ;
{
ÍÍ 
resultOfOperation
ÎÎ -
.
ÎÎ- .
	CodeEvent
ÎÎ. 7
=
ÎÎ8 9!
ExceptionDictionary
ÎÎ: M
.
ÎÎM N
SUCCESFULL_EVENT
ÎÎN ^
;
ÎÎ^ _
}
ÏÏ 
else
ÌÌ 
{
ÓÓ 
resultOfOperation
ÔÔ -
.
ÔÔ- .
	CodeEvent
ÔÔ. 7
=
ÔÔ8 9!
ExceptionDictionary
ÔÔ: M
.
ÔÔM N 
UNSUCCESFULL_EVENT
ÔÔN `
;
ÔÔ` a
}
 
resultOfOperation
ÒÒ )
.
ÒÒ) *
ObjectSaved
ÒÒ* 5
=
ÒÒ6 7
resultUpdate
ÒÒ8 D
;
ÒÒD E
}
ÚÚ 
else
ÛÛ 
{
ÙÙ 
resultOfOperation
ıı )
.
ıı) *
ObjectSaved
ıı* 5
=
ıı6 7
default
ıı8 ?
;
ıı? @
resultOfOperation
ˆˆ )
.
ˆˆ) *
	CodeEvent
ˆˆ* 3
=
ˆˆ4 5
player
ˆˆ6 <
.
ˆˆ< =
	CodeEvent
ˆˆ= F
;
ˆˆF G
}
˜˜ 
}
¯¯ 
}
˘˘ 
catch
˙˙ 
(
˙˙ #
ArgumentNullException
˙˙ (
ex
˙˙) +
)
˙˙+ ,
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
ˇˇ 
DbUpdateException
ˇˇ $
ex
ˇˇ% '
)
ˇˇ' (
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
ÉÉ 
catch
ÑÑ 
(
ÑÑ 
EntityException
ÑÑ "
ex
ÑÑ# %
)
ÑÑ% &
{
ÖÖ 
resultOfOperation
ÜÜ !
=
ÜÜ" #
ExceptionHandler
ÜÜ$ 4
.
ÜÜ4 5+
HandleExceptionDataAccesLevel
ÜÜ5 R
(
ÜÜR S
resultOfOperation
ÜÜS d
,
ÜÜd e
ex
ÜÜf h
)
ÜÜh i
;
ÜÜi j
ExceptionHandler
áá  
.
áá  !
LogException
áá! -
(
áá- .
ex
áá. 0
,
áá0 1!
ExceptionDictionary
áá2 E
.
ááE F
FATAL_EXCEPTION
ááF U
)
ááU V
;
ááV W
}
àà 
catch
ââ 
(
ââ 
SqlException
ââ 
ex
ââ  "
)
ââ" #
{
ää 
resultOfOperation
ãã !
=
ãã" #
ExceptionHandler
ãã$ 4
.
ãã4 5+
HandleExceptionDataAccesLevel
ãã5 R
(
ããR S
resultOfOperation
ããS d
,
ããd e
ex
ããf h
)
ããh i
;
ããi j
ExceptionHandler
åå  
.
åå  !
LogException
åå! -
(
åå- .
ex
åå. 0
,
åå0 1!
ExceptionDictionary
åå2 E
.
ååE F
FATAL_EXCEPTION
ååF U
)
ååU V
;
ååV W
}
çç 
catch
éé 
(
éé )
DbEntityValidationException
éé .
ex
éé/ 1
)
éé1 2
{
èè 
resultOfOperation
êê !
=
êê" #
ExceptionHandler
êê$ 4
.
êê4 5+
HandleExceptionDataAccesLevel
êê5 R
(
êêR S
resultOfOperation
êêS d
,
êêd e
ex
êêf h
)
êêh i
;
êêi j
ExceptionHandler
ëë  
.
ëë  !
LogException
ëë! -
(
ëë- .
ex
ëë. 0
,
ëë0 1!
ExceptionDictionary
ëë2 E
.
ëëE F
FATAL_EXCEPTION
ëëF U
)
ëëU V
;
ëëV W
}
íí 
return
ìì 
resultOfOperation
ìì $
;
ìì$ %
}
îî 	
public
óó 
static
óó  
GenericClassServer
óó (
<
óó( )
Player
óó) /
>
óó/ 0
GetPlayerByIdUser
óó1 B
(
óóB C
int
óóC F
idUser
óóG M
)
óóM N
{
òò 	 
GenericClassServer
ôô 
<
ôô 
Player
ôô %
>
ôô% &
resultOfOperation
ôô' 8
=
ôô9 :
new
ôô; > 
GenericClassServer
ôô? Q
<
ôôQ R
Player
ôôR X
>
ôôX Y
(
ôôY Z
)
ôôZ [
;
ôô[ \
if
öö 
(
öö 
idUser
öö 
==
öö 
NULL_INT_VALUE
öö (
)
öö( )
{
õõ 
return
úú #
NullParametersHandler
úú ,
.
úú, -*
HandleNullParametersDataBase
úú- I
(
úúI J
resultOfOperation
úúJ [
)
úú[ \
;
úú\ ]
}
ùù 
try
ûû 
{
üü 
using
†† 
(
†† 
var
†† 
	contextBD
†† $
=
††% &
new
††' *!
JeopardyDBContainer
††+ >
(
††> ?
)
††? @
)
††@ A
{
°° 
var
¢¢ 
playerConsulted
¢¢ '
=
¢¢( )
	contextBD
¢¢* 3
.
¢¢3 4
Players
¢¢4 ;
.
¢¢; <
FirstOrDefault
¢¢< J
(
¢¢J K
player
¢¢K Q
=>
¢¢R T
player
¢¢U [
.
¢¢[ \
User_IdUser
¢¢\ g
==
¢¢h j
idUser
¢¢k q
)
¢¢q r
;
¢¢r s
if
££ 
(
££ 
playerConsulted
££ '
!=
££( *
null
££+ /
)
££/ 0
{
§§ 
resultOfOperation
•• )
.
••) *
	CodeEvent
••* 3
=
••4 5!
ExceptionDictionary
••6 I
.
••I J
SUCCESFULL_EVENT
••J Z
;
••Z [
}
¶¶ 
else
ßß 
{
®® 
resultOfOperation
©© )
.
©©) *
	CodeEvent
©©* 3
=
©©4 5!
ExceptionDictionary
©©6 I
.
©©I J 
UNSUCCESFULL_EVENT
©©J \
;
©©\ ]
}
™™ 
resultOfOperation
´´ %
.
´´% &
ObjectSaved
´´& 1
=
´´2 3
playerConsulted
´´4 C
;
´´C D
}
¨¨ 
}
≠≠ 
catch
ÆÆ 
(
ÆÆ #
ArgumentNullException
ÆÆ (
ex
ÆÆ) +
)
ÆÆ+ ,
{
ØØ 
resultOfOperation
∞∞ !
=
∞∞" #
ExceptionHandler
∞∞$ 4
.
∞∞4 5+
HandleExceptionDataAccesLevel
∞∞5 R
(
∞∞R S
resultOfOperation
∞∞S d
,
∞∞d e
ex
∞∞f h
)
∞∞h i
;
∞∞i j
ExceptionHandler
±±  
.
±±  !
LogException
±±! -
(
±±- .
ex
±±. 0
,
±±0 1!
ExceptionDictionary
±±2 E
.
±±E F
FATAL_EXCEPTION
±±F U
)
±±U V
;
±±V W
}
≤≤ 
catch
≥≥ 
(
≥≥ 
EntityException
≥≥ "
ex
≥≥# %
)
≥≥% &
{
¥¥ 
resultOfOperation
µµ !
=
µµ" #
ExceptionHandler
µµ$ 4
.
µµ4 5+
HandleExceptionDataAccesLevel
µµ5 R
(
µµR S
resultOfOperation
µµS d
,
µµd e
ex
µµf h
)
µµh i
;
µµi j
ExceptionHandler
∂∂  
.
∂∂  !
LogException
∂∂! -
(
∂∂- .
ex
∂∂. 0
,
∂∂0 1!
ExceptionDictionary
∂∂2 E
.
∂∂E F
FATAL_EXCEPTION
∂∂F U
)
∂∂U V
;
∂∂V W
}
∑∑ 
catch
∏∏ 
(
∏∏ 
SqlException
∏∏ 
ex
∏∏  "
)
∏∏" #
{
ππ 
resultOfOperation
∫∫ !
=
∫∫" #
ExceptionHandler
∫∫$ 4
.
∫∫4 5+
HandleExceptionDataAccesLevel
∫∫5 R
(
∫∫R S
resultOfOperation
∫∫S d
,
∫∫d e
ex
∫∫f h
)
∫∫h i
;
∫∫i j
ExceptionHandler
ªª  
.
ªª  !
LogException
ªª! -
(
ªª- .
ex
ªª. 0
,
ªª0 1!
ExceptionDictionary
ªª2 E
.
ªªE F
FATAL_EXCEPTION
ªªF U
)
ªªU V
;
ªªV W
}
ºº 
catch
ΩΩ 
(
ΩΩ )
DbEntityValidationException
ΩΩ .
ex
ΩΩ/ 1
)
ΩΩ1 2
{
ææ 
resultOfOperation
øø !
=
øø" #
ExceptionHandler
øø$ 4
.
øø4 5+
HandleExceptionDataAccesLevel
øø5 R
(
øøR S
resultOfOperation
øøS d
,
øød e
ex
øøf h
)
øøh i
;
øøi j
ExceptionHandler
¿¿  
.
¿¿  !
LogException
¿¿! -
(
¿¿- .
ex
¿¿. 0
,
¿¿0 1!
ExceptionDictionary
¿¿2 E
.
¿¿E F
FATAL_EXCEPTION
¿¿F U
)
¿¿U V
;
¿¿V W
}
¡¡ 
return
¬¬ 
resultOfOperation
¬¬ $
;
¬¬$ %
}
ƒƒ 	
public
≈≈ 
static
≈≈  
GenericClassServer
≈≈ (
<
≈≈( )
Player
≈≈) /
>
≈≈/ 0!
GetPlayerByIdPlayer
≈≈1 D
(
≈≈D E
int
≈≈E H
idPlayer
≈≈I Q
)
≈≈Q R
{
∆∆ 	 
GenericClassServer
«« 
<
«« 
Player
«« %
>
««% &
resultOfOperation
««' 8
=
««9 :
new
««; > 
GenericClassServer
««? Q
<
««Q R
Player
««R X
>
««X Y
(
««Y Z
)
««Z [
;
««[ \
if
»» 
(
»» 
idPlayer
»» 
==
»» 
NULL_INT_VALUE
»» *
)
»»* +
{
…… 
return
   #
NullParametersHandler
   ,
.
  , -*
HandleNullParametersDataBase
  - I
(
  I J
resultOfOperation
  J [
)
  [ \
;
  \ ]
}
ÀÀ 
try
ÃÃ 
{
ÕÕ 
using
ŒŒ 
(
ŒŒ 
var
ŒŒ 
	contextBD
ŒŒ $
=
ŒŒ% &
new
ŒŒ' *!
JeopardyDBContainer
ŒŒ+ >
(
ŒŒ> ?
)
ŒŒ? @
)
ŒŒ@ A
{
œœ 
var
–– 
playerConsulted
–– '
=
––( )
	contextBD
––* 3
.
––3 4
Players
––4 ;
.
––; <
FirstOrDefault
––< J
(
––J K
player
––K Q
=>
––R T
player
––U [
.
––[ \
IdPlayer
––\ d
==
––e g
idPlayer
––h p
)
––p q
;
––q r
if
—— 
(
—— 
playerConsulted
—— '
!=
——( *
null
——+ /
)
——/ 0
{
““ 
resultOfOperation
”” )
.
””) *
	CodeEvent
””* 3
=
””4 5!
ExceptionDictionary
””6 I
.
””I J
SUCCESFULL_EVENT
””J Z
;
””Z [
}
‘‘ 
else
’’ 
{
÷÷ 
resultOfOperation
◊◊ )
.
◊◊) *
	CodeEvent
◊◊* 3
=
◊◊4 5!
ExceptionDictionary
◊◊6 I
.
◊◊I J 
UNSUCCESFULL_EVENT
◊◊J \
;
◊◊\ ]
}
ÿÿ 
resultOfOperation
ŸŸ %
.
ŸŸ% &
ObjectSaved
ŸŸ& 1
=
ŸŸ2 3
playerConsulted
ŸŸ4 C
;
ŸŸC D
}
⁄⁄ 
}
€€ 
catch
‹‹ 
(
‹‹ #
ArgumentNullException
‹‹ (
ex
‹‹) +
)
‹‹+ ,
{
›› 
resultOfOperation
ﬁﬁ !
=
ﬁﬁ" #
ExceptionHandler
ﬁﬁ$ 4
.
ﬁﬁ4 5+
HandleExceptionDataAccesLevel
ﬁﬁ5 R
(
ﬁﬁR S
resultOfOperation
ﬁﬁS d
,
ﬁﬁd e
ex
ﬁﬁf h
)
ﬁﬁh i
;
ﬁﬁi j
ExceptionHandler
ﬂﬂ  
.
ﬂﬂ  !
LogException
ﬂﬂ! -
(
ﬂﬂ- .
ex
ﬂﬂ. 0
,
ﬂﬂ0 1!
ExceptionDictionary
ﬂﬂ2 E
.
ﬂﬂE F
FATAL_EXCEPTION
ﬂﬂF U
)
ﬂﬂU V
;
ﬂﬂV W
}
‡‡ 
catch
·· 
(
·· 
EntityException
·· "
ex
··# %
)
··% &
{
‚‚ 
resultOfOperation
„„ !
=
„„" #
ExceptionHandler
„„$ 4
.
„„4 5+
HandleExceptionDataAccesLevel
„„5 R
(
„„R S
resultOfOperation
„„S d
,
„„d e
ex
„„f h
)
„„h i
;
„„i j
ExceptionHandler
‰‰  
.
‰‰  !
LogException
‰‰! -
(
‰‰- .
ex
‰‰. 0
,
‰‰0 1!
ExceptionDictionary
‰‰2 E
.
‰‰E F
FATAL_EXCEPTION
‰‰F U
)
‰‰U V
;
‰‰V W
}
ÂÂ 
catch
ÊÊ 
(
ÊÊ 
SqlException
ÊÊ 
ex
ÊÊ  "
)
ÊÊ" #
{
ÁÁ 
resultOfOperation
ËË !
=
ËË" #
ExceptionHandler
ËË$ 4
.
ËË4 5+
HandleExceptionDataAccesLevel
ËË5 R
(
ËËR S
resultOfOperation
ËËS d
,
ËËd e
ex
ËËf h
)
ËËh i
;
ËËi j
ExceptionHandler
ÈÈ  
.
ÈÈ  !
LogException
ÈÈ! -
(
ÈÈ- .
ex
ÈÈ. 0
,
ÈÈ0 1!
ExceptionDictionary
ÈÈ2 E
.
ÈÈE F
FATAL_EXCEPTION
ÈÈF U
)
ÈÈU V
;
ÈÈV W
}
ÍÍ 
catch
ÎÎ 
(
ÎÎ )
DbEntityValidationException
ÎÎ .
ex
ÎÎ/ 1
)
ÎÎ1 2
{
ÏÏ 
resultOfOperation
ÌÌ !
=
ÌÌ" #
ExceptionHandler
ÌÌ$ 4
.
ÌÌ4 5+
HandleExceptionDataAccesLevel
ÌÌ5 R
(
ÌÌR S
resultOfOperation
ÌÌS d
,
ÌÌd e
ex
ÌÌf h
)
ÌÌh i
;
ÌÌi j
ExceptionHandler
ÓÓ  
.
ÓÓ  !
LogException
ÓÓ! -
(
ÓÓ- .
ex
ÓÓ. 0
,
ÓÓ0 1!
ExceptionDictionary
ÓÓ2 E
.
ÓÓE F
FATAL_EXCEPTION
ÓÓF U
)
ÓÓU V
;
ÓÓV W
}
ÔÔ 
return
 
resultOfOperation
 $
;
$ %
}
ÚÚ 	
public
ÙÙ 
static
ÙÙ  
GenericClassServer
ÙÙ (
<
ÙÙ( )
State
ÙÙ) .
>
ÙÙ. /
GetStateById
ÙÙ0 <
(
ÙÙ< =
int
ÙÙ= @
idSatate
ÙÙA I
)
ÙÙI J
{
ıı 	 
GenericClassServer
ˆˆ 
<
ˆˆ 
State
ˆˆ $
>
ˆˆ$ %
resultOfOperation
ˆˆ& 7
=
ˆˆ8 9
new
ˆˆ: = 
GenericClassServer
ˆˆ> P
<
ˆˆP Q
State
ˆˆQ V
>
ˆˆV W
(
ˆˆW X
)
ˆˆX Y
;
ˆˆY Z
if
˜˜ 
(
˜˜ 
idSatate
˜˜ 
==
˜˜ 
NULL_INT_VALUE
˜˜ *
)
˜˜* +
{
¯¯ 
return
˘˘ #
NullParametersHandler
˘˘ ,
.
˘˘, -*
HandleNullParametersDataBase
˘˘- I
(
˘˘I J
resultOfOperation
˘˘J [
)
˘˘[ \
;
˘˘\ ]
}
˙˙ 
try
˚˚ 
{
¸¸ 
using
˝˝ 
(
˝˝ 
var
˝˝ 
	contextBD
˝˝ $
=
˝˝% &
new
˝˝' *!
JeopardyDBContainer
˝˝+ >
(
˝˝> ?
)
˝˝? @
)
˝˝@ A
{
˛˛ 
var
ˇˇ 
stateConsulted
ˇˇ &
=
ˇˇ' (
	contextBD
ˇˇ) 2
.
ˇˇ2 3
States
ˇˇ3 9
.
ˇˇ9 :
Find
ˇˇ: >
(
ˇˇ> ?
idSatate
ˇˇ? G
)
ˇˇG H
;
ˇˇH I
if
ÄÄ 
(
ÄÄ 
stateConsulted
ÄÄ &
!=
ÄÄ' )
null
ÄÄ* .
)
ÄÄ. /
{
ÅÅ 
resultOfOperation
ÇÇ )
.
ÇÇ) *
	CodeEvent
ÇÇ* 3
=
ÇÇ4 5!
ExceptionDictionary
ÇÇ6 I
.
ÇÇI J
SUCCESFULL_EVENT
ÇÇJ Z
;
ÇÇZ [
}
ÉÉ 
else
ÑÑ 
{
ÖÖ 
resultOfOperation
ÜÜ )
.
ÜÜ) *
	CodeEvent
ÜÜ* 3
=
ÜÜ4 5!
ExceptionDictionary
ÜÜ6 I
.
ÜÜI J 
UNSUCCESFULL_EVENT
ÜÜJ \
;
ÜÜ\ ]
}
áá 
resultOfOperation
àà %
.
àà% &
ObjectSaved
àà& 1
=
àà2 3
stateConsulted
àà4 B
;
ààB C
}
ââ 
}
ää 
catch
ãã 
(
ãã '
InvalidOperationException
ãã ,
ex
ãã- /
)
ãã/ 0
{
åå 
resultOfOperation
çç !
=
çç" #
ExceptionHandler
çç$ 4
.
çç4 5+
HandleExceptionDataAccesLevel
çç5 R
(
ççR S
resultOfOperation
ççS d
,
ççd e
ex
ççf h
)
ççh i
;
ççi j
ExceptionHandler
éé  
.
éé  !
LogException
éé! -
(
éé- .
ex
éé. 0
,
éé0 1!
ExceptionDictionary
éé2 E
.
ééE F
FATAL_EXCEPTION
ééF U
)
ééU V
;
ééV W
}
èè 
catch
êê 
(
êê 
EntityException
êê "
ex
êê# %
)
êê% &
{
ëë 
resultOfOperation
íí !
=
íí" #
ExceptionHandler
íí$ 4
.
íí4 5+
HandleExceptionDataAccesLevel
íí5 R
(
ííR S
resultOfOperation
ííS d
,
ííd e
ex
ííf h
)
ííh i
;
ííi j
ExceptionHandler
ìì  
.
ìì  !
LogException
ìì! -
(
ìì- .
ex
ìì. 0
,
ìì0 1!
ExceptionDictionary
ìì2 E
.
ììE F
FATAL_EXCEPTION
ììF U
)
ììU V
;
ììV W
}
îî 
catch
ïï 
(
ïï 
SqlException
ïï 
ex
ïï  "
)
ïï" #
{
ññ 
resultOfOperation
óó !
=
óó" #
ExceptionHandler
óó$ 4
.
óó4 5+
HandleExceptionDataAccesLevel
óó5 R
(
óóR S
resultOfOperation
óóS d
,
óód e
ex
óóf h
)
óóh i
;
óói j
ExceptionHandler
òò  
.
òò  !
LogException
òò! -
(
òò- .
ex
òò. 0
,
òò0 1!
ExceptionDictionary
òò2 E
.
òòE F
FATAL_EXCEPTION
òòF U
)
òòU V
;
òòV W
}
ôô 
catch
öö 
(
öö )
DbEntityValidationException
öö .
ex
öö/ 1
)
öö1 2
{
õõ 
resultOfOperation
úú !
=
úú" #
ExceptionHandler
úú$ 4
.
úú4 5+
HandleExceptionDataAccesLevel
úú5 R
(
úúR S
resultOfOperation
úúS d
,
úúd e
ex
úúf h
)
úúh i
;
úúi j
ExceptionHandler
ùù  
.
ùù  !
LogException
ùù! -
(
ùù- .
ex
ùù. 0
,
ùù0 1!
ExceptionDictionary
ùù2 E
.
ùùE F
FATAL_EXCEPTION
ùùF U
)
ùùU V
;
ùùV W
}
ûû 
return
üü 
resultOfOperation
üü $
;
üü$ %
}
†† 	
public
¢¢ 
static
¢¢  
GenericClassServer
¢¢ (
<
¢¢( )
int
¢¢) ,
>
¢¢, -
DeleteUserById
¢¢. <
(
¢¢< =
int
¢¢= @
idUser
¢¢A G
)
¢¢G H
{
££ 	 
GenericClassServer
§§ 
<
§§ 
int
§§ "
>
§§" #
resultOfOperation
§§$ 5
=
§§6 7
new
§§8 ; 
GenericClassServer
§§< N
<
§§N O
int
§§O R
>
§§R S
(
§§S T
)
§§T U
;
§§U V
resultOfOperation
•• 
.
•• 
	CodeEvent
•• '
=
••( )!
ExceptionDictionary
••* =
.
••= > 
UNSUCCESFULL_EVENT
••> P
;
••P Q
if
¶¶ 
(
¶¶ 
idUser
¶¶ 
==
¶¶ 
NULL_INT_VALUE
¶¶ (
)
¶¶( )
{
ßß 
return
®® #
NullParametersHandler
®® ,
.
®®, -*
HandleNullParametersDataBase
®®- I
(
®®I J
resultOfOperation
®®J [
)
®®[ \
;
®®\ ]
}
©© 
try
™™ 
{
´´ 
using
¨¨ 
(
¨¨ 
var
¨¨ 
	contextBD
¨¨ $
=
¨¨% &
new
¨¨' *!
JeopardyDBContainer
¨¨+ >
(
¨¨> ?
)
¨¨? @
)
¨¨@ A
{
≠≠ 
var
ÆÆ 
userConsulted
ÆÆ %
=
ÆÆ& '
	contextBD
ÆÆ( 1
.
ÆÆ1 2
Users
ÆÆ2 7
.
ÆÆ7 8
Find
ÆÆ8 <
(
ÆÆ< =
idUser
ÆÆ= C
)
ÆÆC D
;
ÆÆD E
if
ØØ 
(
ØØ 
userConsulted
ØØ %
!=
ØØ& (
null
ØØ) -
)
ØØ- .
{
∞∞ 
var
±± 
playerToDelete
±± *
=
±±+ ,
	contextBD
±±- 6
.
±±6 7
Players
±±7 >
.
±±> ?
FirstOrDefault
±±? M
(
±±M N
player
±±N T
=>
±±U W
player
±±X ^
.
±±^ _
User
±±_ c
.
±±c d
IdUser
±±d j
==
±±k m
userConsulted
±±n {
.
±±{ |
IdUser±±| Ç
)±±Ç É
;±±É Ñ
if
≤≤ 
(
≤≤ 
playerToDelete
≤≤ *
!=
≤≤+ -
null
≤≤. 2
)
≤≤2 3
{
≥≥ 
	contextBD
¥¥ %
.
¥¥% &
Players
¥¥& -
.
¥¥- .
Remove
¥¥. 4
(
¥¥4 5
playerToDelete
¥¥5 C
)
¥¥C D
;
¥¥D E
}
µµ 
	contextBD
∂∂ !
.
∂∂! "
Users
∂∂" '
.
∂∂' (
Remove
∂∂( .
(
∂∂. /
userConsulted
∂∂/ <
)
∂∂< =
;
∂∂= >
	contextBD
∑∑ !
.
∑∑! "
SaveChanges
∑∑" -
(
∑∑- .
)
∑∑. /
;
∑∑/ 0
resultOfOperation
∏∏ )
.
∏∏) *
	CodeEvent
∏∏* 3
=
∏∏4 5!
ExceptionDictionary
∏∏6 I
.
∏∏I J
SUCCESFULL_EVENT
∏∏J Z
;
∏∏Z [
}
ππ 
}
∫∫ 
}
ªª 
catch
ºº 
(
ºº 
DbUpdateException
ºº $
ex
ºº% '
)
ºº' (
{
ΩΩ 
resultOfOperation
ææ !
.
ææ! "
	CodeEvent
ææ" +
=
ææ, -!
ExceptionDictionary
ææ. A
.
ææA B 
SAVE_CHANGES_ERROR
ææB T
;
ææT U
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
¿¿ 
catch
¡¡ 
(
¡¡ 
EntityException
¡¡ "
ex
¡¡# %
)
¡¡% &
{
¬¬ 
resultOfOperation
√√ !
.
√√! "
	CodeEvent
√√" +
=
√√, -!
ExceptionDictionary
√√. A
.
√√A B
ENTITY_ERROR
√√B N
;
√√N O
ExceptionHandler
ƒƒ  
.
ƒƒ  !
LogException
ƒƒ! -
(
ƒƒ- .
ex
ƒƒ. 0
,
ƒƒ0 1!
ExceptionDictionary
ƒƒ2 E
.
ƒƒE F
FATAL_EXCEPTION
ƒƒF U
)
ƒƒU V
;
ƒƒV W
}
≈≈ 
catch
∆∆ 
(
∆∆ 
SqlException
∆∆ 
ex
∆∆  "
)
∆∆" #
{
«« 
resultOfOperation
»» !
.
»»! "
	CodeEvent
»»" +
=
»», -!
ExceptionDictionary
»». A
.
»»A B
	SQL_ERROR
»»B K
;
»»K L
ExceptionHandler
……  
.
……  !
LogException
……! -
(
……- .
ex
……. 0
,
……0 1!
ExceptionDictionary
……2 E
.
……E F
FATAL_EXCEPTION
……F U
)
……U V
;
……V W
}
   
catch
ÀÀ 
(
ÀÀ )
DbEntityValidationException
ÀÀ .
ex
ÀÀ/ 1
)
ÀÀ1 2
{
ÃÃ 
resultOfOperation
ÕÕ !
.
ÕÕ! "
	CodeEvent
ÕÕ" +
=
ÕÕ, -!
ExceptionDictionary
ÕÕ. A
.
ÕÕA B
ENTITY_VALIDATION
ÕÕB S
;
ÕÕS T
ExceptionHandler
ŒŒ  
.
ŒŒ  !
LogException
ŒŒ! -
(
ŒŒ- .
ex
ŒŒ. 0
,
ŒŒ0 1!
ExceptionDictionary
ŒŒ2 E
.
ŒŒE F
FATAL_EXCEPTION
ŒŒF U
)
ŒŒU V
;
ŒŒV W
}
œœ 
return
–– 
resultOfOperation
–– $
;
––$ %
}
—— 	
public
”” 
static
””  
GenericClassServer
”” (
<
””( )
int
””) ,
>
””, -
UpdatePhotoPlayer
””. ?
(
””? @
int
””@ C
idPlayer
””D L
,
””L M
int
””N Q
imageId
””R Y
)
””Y Z
{
‘‘ 	 
GenericClassServer
’’ 
<
’’ 
int
’’ "
>
’’" #
resultOfOperation
’’$ 5
=
’’6 7
new
’’8 ; 
GenericClassServer
’’< N
<
’’N O
int
’’O R
>
’’R S
(
’’S T
)
’’T U
;
’’U V
if
÷÷ 
(
÷÷ 
idPlayer
÷÷ 
==
÷÷ 
NULL_INT_VALUE
÷÷ *
||
÷÷+ -
imageId
÷÷. 5
==
÷÷6 8
NULL_INT_VALUE
÷÷9 G
)
÷÷G H
{
◊◊ 
return
ÿÿ #
NullParametersHandler
ÿÿ ,
.
ÿÿ, -*
HandleNullParametersDataBase
ÿÿ- I
(
ÿÿI J
resultOfOperation
ÿÿJ [
)
ÿÿ[ \
;
ÿÿ\ ]
}
ŸŸ 
try
⁄⁄ 
{
€€ 
using
‹‹ 
(
‹‹ 
var
‹‹ 
	contextBD
‹‹ $
=
‹‹% &
new
‹‹' *!
JeopardyDBContainer
‹‹+ >
(
‹‹> ?
)
‹‹? @
)
‹‹@ A
{
›› 
var
ﬁﬁ 
player
ﬁﬁ 
=
ﬁﬁ  
	contextBD
ﬁﬁ! *
.
ﬁﬁ* +
Players
ﬁﬁ+ 2
.
ﬁﬁ2 3
FirstOrDefault
ﬁﬁ3 A
(
ﬁﬁA B
p
ﬁﬁB C
=>
ﬁﬁD F
p
ﬁﬁG H
.
ﬁﬁH I
IdPlayer
ﬁﬁI Q
==
ﬁﬁR T
idPlayer
ﬁﬁU ]
)
ﬁﬁ] ^
;
ﬁﬁ^ _
if
ﬂﬂ 
(
ﬂﬂ 
player
ﬂﬂ 
!=
ﬂﬂ !
null
ﬂﬂ" &
)
ﬂﬂ& '
{
‡‡ 
player
·· 
.
·· 
IdAvatarActual
·· -
=
··. /
imageId
··0 7
;
··7 8
int
‚‚ 
resultOfEvent
‚‚ )
=
‚‚* +
	contextBD
‚‚, 5
.
‚‚5 6
SaveChanges
‚‚6 A
(
‚‚A B
)
‚‚B C
;
‚‚C D
if
„„ 
(
„„ 
resultOfEvent
„„ )
!=
„„* ,
$num
„„- .
)
„„. /
{
‰‰ 
resultOfOperation
ÂÂ -
.
ÂÂ- .
	CodeEvent
ÂÂ. 7
=
ÂÂ8 9!
ExceptionDictionary
ÂÂ: M
.
ÂÂM N
SUCCESFULL_EVENT
ÂÂN ^
;
ÂÂ^ _
}
ÊÊ 
else
ÁÁ 
{
ËË 
resultOfOperation
ÈÈ -
.
ÈÈ- .
	CodeEvent
ÈÈ. 7
=
ÈÈ8 9!
ExceptionDictionary
ÈÈ: M
.
ÈÈM N 
UNSUCCESFULL_EVENT
ÈÈN `
;
ÈÈ` a
}
ÍÍ 
resultOfOperation
ÎÎ )
.
ÎÎ) *
ObjectSaved
ÎÎ* 5
=
ÎÎ6 7
OPERATION_DONE
ÎÎ8 F
;
ÎÎF G
}
ÏÏ 
else
ÌÌ 
{
ÓÓ 
resultOfOperation
ÔÔ )
.
ÔÔ) *
	CodeEvent
ÔÔ* 3
=
ÔÔ4 5!
ExceptionDictionary
ÔÔ6 I
.
ÔÔI J 
UNSUCCESFULL_EVENT
ÔÔJ \
;
ÔÔ\ ]
}
 
}
ÒÒ 
}
ÚÚ 
catch
ÛÛ 
(
ÛÛ 
DbUpdateException
ÛÛ $
ex
ÛÛ% '
)
ÛÛ' (
{
ÙÙ 
resultOfOperation
ıı !
=
ıı" #
ExceptionHandler
ıı$ 4
.
ıı4 5+
HandleExceptionDataAccesLevel
ıı5 R
(
ııR S
resultOfOperation
ııS d
,
ııd e
ex
ııf h
)
ııh i
;
ııi j
ExceptionHandler
ˆˆ  
.
ˆˆ  !
LogException
ˆˆ! -
(
ˆˆ- .
ex
ˆˆ. 0
,
ˆˆ0 1!
ExceptionDictionary
ˆˆ2 E
.
ˆˆE F
FATAL_EXCEPTION
ˆˆF U
)
ˆˆU V
;
ˆˆV W
}
˜˜ 
catch
¯¯ 
(
¯¯ 
SqlException
¯¯ 
ex
¯¯  "
)
¯¯" #
{
˘˘ 
resultOfOperation
˙˙ !
=
˙˙" #
ExceptionHandler
˙˙$ 4
.
˙˙4 5+
HandleExceptionDataAccesLevel
˙˙5 R
(
˙˙R S
resultOfOperation
˙˙S d
,
˙˙d e
ex
˙˙f h
)
˙˙h i
;
˙˙i j
ExceptionHandler
˚˚  
.
˚˚  !
LogException
˚˚! -
(
˚˚- .
ex
˚˚. 0
,
˚˚0 1!
ExceptionDictionary
˚˚2 E
.
˚˚E F
FATAL_EXCEPTION
˚˚F U
)
˚˚U V
;
˚˚V W
}
¸¸ 
catch
˝˝ 
(
˝˝ 
EntityException
˝˝ "
ex
˝˝# %
)
˝˝% &
{
˛˛ 
resultOfOperation
ˇˇ !
=
ˇˇ" #
ExceptionHandler
ˇˇ$ 4
.
ˇˇ4 5+
HandleExceptionDataAccesLevel
ˇˇ5 R
(
ˇˇR S
resultOfOperation
ˇˇS d
,
ˇˇd e
ex
ˇˇf h
)
ˇˇh i
;
ˇˇi j
ExceptionHandler
ÄÄ  
.
ÄÄ  !
LogException
ÄÄ! -
(
ÄÄ- .
ex
ÄÄ. 0
,
ÄÄ0 1!
ExceptionDictionary
ÄÄ2 E
.
ÄÄE F
FATAL_EXCEPTION
ÄÄF U
)
ÄÄU V
;
ÄÄV W
}
ÅÅ 
catch
ÇÇ 
(
ÇÇ )
DbEntityValidationException
ÇÇ .
ex
ÇÇ/ 1
)
ÇÇ1 2
{
ÉÉ 
resultOfOperation
ÑÑ !
=
ÑÑ" #
ExceptionHandler
ÑÑ$ 4
.
ÑÑ4 5+
HandleExceptionDataAccesLevel
ÑÑ5 R
(
ÑÑR S
resultOfOperation
ÑÑS d
,
ÑÑd e
ex
ÑÑf h
)
ÑÑh i
;
ÑÑi j
ExceptionHandler
ÖÖ  
.
ÖÖ  !
LogException
ÖÖ! -
(
ÖÖ- .
ex
ÖÖ. 0
,
ÖÖ0 1!
ExceptionDictionary
ÖÖ2 E
.
ÖÖE F
FATAL_EXCEPTION
ÖÖF U
)
ÖÖU V
;
ÖÖV W
}
ÜÜ 
return
áá 
resultOfOperation
áá $
;
áá$ %
}
àà 	
public
ää 
static
ää  
GenericClassServer
ää (
<
ää( )
int
ää) ,
>
ää, -#
UpdateUserInformation
ää. C
(
ääC D
int
ääD G
idUser
ääH N
,
ääN O
string
ääP V

editedName
ääW a
)
ääa b
{
ãã 	 
GenericClassServer
åå 
<
åå 
int
åå "
>
åå" #
resultOfOperation
åå$ 5
=
åå6 7
new
åå8 ; 
GenericClassServer
åå< N
<
ååN O
int
ååO R
>
ååR S
(
ååS T
)
ååT U
;
ååU V
if
çç 
(
çç 
string
çç 
.
çç 
IsNullOrEmpty
çç $
(
çç$ %

editedName
çç% /
)
çç/ 0
||
çç1 3
idUser
çç4 :
==
çç; =
NULL_INT_VALUE
çç> L
)
ççL M
{
éé 
return
èè #
NullParametersHandler
èè ,
.
èè, -*
HandleNullParametersDataBase
èè- I
(
èèI J
resultOfOperation
èèJ [
)
èè[ \
;
èè\ ]
}
êê 
try
ëë 
{
íí 
using
ìì 
(
ìì 
var
ìì 
	contextBD
ìì $
=
ìì% &
new
ìì' *!
JeopardyDBContainer
ìì+ >
(
ìì> ?
)
ìì? @
)
ìì@ A
{
îî 
var
ïï 
userToUpdate
ïï $
=
ïï% &
	contextBD
ïï' 0
.
ïï0 1
Users
ïï1 6
.
ïï6 7
FirstOrDefault
ïï7 E
(
ïïE F
u
ïïF G
=>
ïïH J
u
ïïJ K
.
ïïK L
IdUser
ïïL R
==
ïïS U
idUser
ïïV \
)
ïï\ ]
;
ïï] ^
if
ññ 
(
ññ 
userToUpdate
ññ $
!=
ññ% '
null
ññ( ,
)
ññ, -
{
óó 
userToUpdate
òò $
.
òò$ %
Name
òò% )
=
òò* +

editedName
òò, 6
;
òò6 7
int
ôô 
resultOfEvent
ôô )
=
ôô* +
	contextBD
ôô, 5
.
ôô5 6
SaveChanges
ôô6 A
(
ôôA B
)
ôôB C
;
ôôC D
if
öö 
(
öö 
resultOfEvent
öö )
!=
öö* ,
$num
öö- .
)
öö. /
{
õõ 
resultOfOperation
úú -
.
úú- .
	CodeEvent
úú. 7
=
úú8 9!
ExceptionDictionary
úú: M
.
úúM N
SUCCESFULL_EVENT
úúN ^
;
úú^ _
}
ùù 
else
ûû 
{
üü 
resultOfOperation
†† -
.
††- .
	CodeEvent
††. 7
=
††8 9!
ExceptionDictionary
††: M
.
††M N 
UNSUCCESFULL_EVENT
††N `
;
††` a
}
°° 
resultOfOperation
¢¢ )
.
¢¢) *
ObjectSaved
¢¢* 5
=
¢¢6 7
OPERATION_DONE
¢¢8 F
;
¢¢F G
}
££ 
else
§§ 
{
•• 
resultOfOperation
¶¶ )
.
¶¶) *
ObjectSaved
¶¶* 5
=
¶¶6 7
USER_NOT_FOUND
¶¶8 F
;
¶¶F G
resultOfOperation
ßß )
.
ßß) *
	CodeEvent
ßß* 3
=
ßß4 5!
ExceptionDictionary
ßß6 I
.
ßßI J 
UNSUCCESFULL_EVENT
ßßJ \
;
ßß\ ]
}
®® 
}
©© 
}
™™ 
catch
´´ 
(
´´ 
DbUpdateException
´´ $
ex
´´% '
)
´´' (
{
¨¨ 
resultOfOperation
≠≠ !
=
≠≠" #
ExceptionHandler
≠≠$ 4
.
≠≠4 5+
HandleExceptionDataAccesLevel
≠≠5 R
(
≠≠R S
resultOfOperation
≠≠S d
,
≠≠d e
ex
≠≠f h
)
≠≠h i
;
≠≠i j
ExceptionHandler
ÆÆ  
.
ÆÆ  !
LogException
ÆÆ! -
(
ÆÆ- .
ex
ÆÆ. 0
,
ÆÆ0 1!
ExceptionDictionary
ÆÆ2 E
.
ÆÆE F
FATAL_EXCEPTION
ÆÆF U
)
ÆÆU V
;
ÆÆV W
}
ØØ 
catch
∞∞ 
(
∞∞ 
SqlException
∞∞ 
ex
∞∞  "
)
∞∞" #
{
±± 
resultOfOperation
≤≤ !
=
≤≤" #
ExceptionHandler
≤≤$ 4
.
≤≤4 5+
HandleExceptionDataAccesLevel
≤≤5 R
(
≤≤R S
resultOfOperation
≤≤S d
,
≤≤d e
ex
≤≤f h
)
≤≤h i
;
≤≤i j
ExceptionHandler
≥≥  
.
≥≥  !
LogException
≥≥! -
(
≥≥- .
ex
≥≥. 0
,
≥≥0 1!
ExceptionDictionary
≥≥2 E
.
≥≥E F
FATAL_EXCEPTION
≥≥F U
)
≥≥U V
;
≥≥V W
}
¥¥ 
catch
µµ 
(
µµ 
EntityException
µµ "
ex
µµ# %
)
µµ% &
{
∂∂ 
resultOfOperation
∑∑ !
=
∑∑" #
ExceptionHandler
∑∑$ 4
.
∑∑4 5+
HandleExceptionDataAccesLevel
∑∑5 R
(
∑∑R S
resultOfOperation
∑∑S d
,
∑∑d e
ex
∑∑f h
)
∑∑h i
;
∑∑i j
ExceptionHandler
∏∏  
.
∏∏  !
LogException
∏∏! -
(
∏∏- .
ex
∏∏. 0
,
∏∏0 1!
ExceptionDictionary
∏∏2 E
.
∏∏E F
FATAL_EXCEPTION
∏∏F U
)
∏∏U V
;
∏∏V W
}
ππ 
catch
∫∫ 
(
∫∫ )
DbEntityValidationException
∫∫ .
ex
∫∫/ 1
)
∫∫1 2
{
ªª 
resultOfOperation
ºº !
=
ºº" #
ExceptionHandler
ºº$ 4
.
ºº4 5+
HandleExceptionDataAccesLevel
ºº5 R
(
ººR S
resultOfOperation
ººS d
,
ººd e
ex
ººf h
)
ººh i
;
ººi j
ExceptionHandler
ΩΩ  
.
ΩΩ  !
LogException
ΩΩ! -
(
ΩΩ- .
ex
ΩΩ. 0
,
ΩΩ0 1!
ExceptionDictionary
ΩΩ2 E
.
ΩΩE F
FATAL_EXCEPTION
ΩΩF U
)
ΩΩU V
;
ΩΩV W
}
ææ 
return
øø 
resultOfOperation
øø $
;
øø$ %
}
¿¿ 	
public
¬¬ 
static
¬¬  
GenericClassServer
¬¬ (
<
¬¬( )
List
¬¬) -
<
¬¬- .

PlayerInfo
¬¬. 8
>
¬¬8 9
>
¬¬9 :"
GetBestPlayersPoints
¬¬; O
(
¬¬O P
)
¬¬P Q
{
√√ 	 
GenericClassServer
ƒƒ 
<
ƒƒ  
List
ƒƒ  $
<
ƒƒ$ %

PlayerInfo
ƒƒ% /
>
ƒƒ/ 0
>
ƒƒ0 1
resultOfOperation
ƒƒ2 C
=
ƒƒD E
new
ƒƒF I 
GenericClassServer
ƒƒJ \
<
ƒƒ\ ]
List
ƒƒ] a
<
ƒƒa b

PlayerInfo
ƒƒb l
>
ƒƒl m
>
ƒƒm n
(
ƒƒn o
)
ƒƒo p
;
ƒƒp q
try
≈≈ 
{
∆∆ 
using
«« 
(
«« 
var
«« 
context
«« "
=
««# $
new
««% (!
JeopardyDBContainer
««) <
(
««< =
)
««= >
)
««> ?
{
»» 
var
…… 
playersInfo
…… #
=
……$ %
context
……& -
.
……- .
Players
……. 5
.
……5 6
OrderByDescending
……6 G
(
……G H
p
……H I
=>
……J L
p
……M N
.
……N O
GeneralPoints
……O \
)
……\ ]
.
   
Select
   
(
    
p
    !
=>
  " $
new
  % (

PlayerInfo
  ) 3
{
ÀÀ 
Name
ÃÃ  
=
ÃÃ! "
p
ÃÃ# $
.
ÃÃ$ %
User
ÃÃ% )
.
ÃÃ) *
UserName
ÃÃ* 2
,
ÃÃ2 3
Points
ÕÕ "
=
ÕÕ# $
p
ÕÕ% &
.
ÕÕ& '
GeneralPoints
ÕÕ' 4
??
ÕÕ5 7
$num
ÕÕ8 9
}
ŒŒ 
)
ŒŒ 
.
ŒŒ 
Take
ŒŒ 
(
ŒŒ  
$num
ŒŒ  "
)
ŒŒ" #
.
ŒŒ# $
ToList
ŒŒ$ *
(
ŒŒ* +
)
ŒŒ+ ,
;
ŒŒ, -
resultOfOperation
œœ %
.
œœ% &
ObjectSaved
œœ& 1
=
œœ2 3
playersInfo
œœ4 ?
;
œœ? @
resultOfOperation
–– %
.
––% &
	CodeEvent
––& /
=
––0 1!
ExceptionDictionary
––2 E
.
––E F
SUCCESFULL_EVENT
––F V
;
––V W
}
—— 
}
““ 
catch
”” 
(
”” 
DbUpdateException
”” #
ex
””$ &
)
””& '
{
‘‘ 
resultOfOperation
’’ !
=
’’" #
ExceptionHandler
’’$ 4
.
’’4 5+
HandleExceptionDataAccesLevel
’’5 R
(
’’R S
resultOfOperation
’’S d
,
’’d e
ex
’’f h
)
’’h i
;
’’i j
ExceptionHandler
÷÷  
.
÷÷  !
LogException
÷÷! -
(
÷÷- .
ex
÷÷. 0
,
÷÷0 1!
ExceptionDictionary
÷÷2 E
.
÷÷E F
FATAL_EXCEPTION
÷÷F U
)
÷÷U V
;
÷÷V W
}
◊◊ 
catch
ÿÿ 
(
ÿÿ 
SqlException
ÿÿ 
ex
ÿÿ  "
)
ÿÿ" #
{
ŸŸ 
resultOfOperation
⁄⁄ !
=
⁄⁄" #
ExceptionHandler
⁄⁄$ 4
.
⁄⁄4 5+
HandleExceptionDataAccesLevel
⁄⁄5 R
(
⁄⁄R S
resultOfOperation
⁄⁄S d
,
⁄⁄d e
ex
⁄⁄f h
)
⁄⁄h i
;
⁄⁄i j
ExceptionHandler
€€  
.
€€  !
LogException
€€! -
(
€€- .
ex
€€. 0
,
€€0 1!
ExceptionDictionary
€€2 E
.
€€E F
FATAL_EXCEPTION
€€F U
)
€€U V
;
€€V W
}
‹‹ 
catch
›› 
(
›› 
EntityException
›› "
ex
››# %
)
››% &
{
ﬁﬁ 
resultOfOperation
ﬂﬂ !
=
ﬂﬂ" #
ExceptionHandler
ﬂﬂ$ 4
.
ﬂﬂ4 5+
HandleExceptionDataAccesLevel
ﬂﬂ5 R
(
ﬂﬂR S
resultOfOperation
ﬂﬂS d
,
ﬂﬂd e
ex
ﬂﬂf h
)
ﬂﬂh i
;
ﬂﬂi j
ExceptionHandler
‡‡  
.
‡‡  !
LogException
‡‡! -
(
‡‡- .
ex
‡‡. 0
,
‡‡0 1!
ExceptionDictionary
‡‡2 E
.
‡‡E F
FATAL_EXCEPTION
‡‡F U
)
‡‡U V
;
‡‡V W
}
·· 
catch
‚‚ 
(
‚‚ )
DbEntityValidationException
‚‚ .
ex
‚‚/ 1
)
‚‚1 2
{
„„ 
resultOfOperation
‰‰ !
=
‰‰" #
ExceptionHandler
‰‰$ 4
.
‰‰4 5+
HandleExceptionDataAccesLevel
‰‰5 R
(
‰‰R S
resultOfOperation
‰‰S d
,
‰‰d e
ex
‰‰f h
)
‰‰h i
;
‰‰i j
ExceptionHandler
ÂÂ  
.
ÂÂ  !
LogException
ÂÂ! -
(
ÂÂ- .
ex
ÂÂ. 0
,
ÂÂ0 1!
ExceptionDictionary
ÂÂ2 E
.
ÂÂE F
FATAL_EXCEPTION
ÂÂF U
)
ÂÂU V
;
ÂÂV W
}
ÊÊ 
return
ÁÁ 
resultOfOperation
ÁÁ $
;
ÁÁ$ %
}
ÈÈ 	
public
ÎÎ 
static
ÎÎ  
GenericClassServer
ÎÎ (
<
ÎÎ( )
int
ÎÎ) ,
>
ÎÎ, -!
DeleteAllGuestUsers
ÎÎ. A
(
ÎÎA B
)
ÎÎB C
{
ÏÏ 	 
GenericClassServer
ÌÌ 
<
ÌÌ 
int
ÌÌ "
>
ÌÌ" #
resultOfOperation
ÌÌ$ 5
=
ÌÌ6 7
new
ÌÌ8 ; 
GenericClassServer
ÌÌ< N
<
ÌÌN O
int
ÌÌO R
>
ÌÌR S
(
ÌÌS T
)
ÌÌT U
;
ÌÌU V
resultOfOperation
ÓÓ 
.
ÓÓ 
	CodeEvent
ÓÓ '
=
ÓÓ( )!
ExceptionDictionary
ÓÓ* =
.
ÓÓ= > 
UNSUCCESFULL_EVENT
ÓÓ> P
;
ÓÓP Q
try
ÔÔ 
{
 
using
ÒÒ 
(
ÒÒ 
var
ÒÒ 
	contextBD
ÒÒ $
=
ÒÒ% &
new
ÒÒ' *!
JeopardyDBContainer
ÒÒ+ >
(
ÒÒ> ?
)
ÒÒ? @
)
ÒÒ@ A
{
ÚÚ 
var
ÛÛ 
usersConsulted
ÛÛ &
=
ÛÛ' (
	contextBD
ÛÛ) 2
.
ÛÛ2 3
Users
ÛÛ3 8
.
ÛÛ8 9
Where
ÛÛ9 >
(
ÛÛ> ?
user
ÛÛ? C
=>
ÛÛD F
user
ÛÛG K
.
ÛÛK L
Name
ÛÛL P
.
ÛÛP Q
Equals
ÛÛQ W
(
ÛÛW X
$str
ÛÛX Z
)
ÛÛZ [
)
ÛÛ[ \
.
ÛÛ\ ]
ToList
ÛÛ] c
(
ÛÛc d
)
ÛÛd e
;
ÛÛe f
if
ÙÙ 
(
ÙÙ 
usersConsulted
ÙÙ &
!=
ÙÙ' )
null
ÙÙ* .
)
ÙÙ. /
{
ıı 
List
ˆˆ 
<
ˆˆ 
Player
ˆˆ #
>
ˆˆ# $
playerGuests
ˆˆ% 1
=
ˆˆ2 3
new
ˆˆ4 7
List
ˆˆ8 <
<
ˆˆ< =
Player
ˆˆ= C
>
ˆˆC D
(
ˆˆD E
)
ˆˆE F
;
ˆˆF G
foreach
˜˜ 
(
˜˜  !
User
˜˜! %
user
˜˜& *
in
˜˜+ -
usersConsulted
˜˜. <
)
˜˜< =
{
¯¯ 
var
˘˘ 
playerToDelete
˘˘  .
=
˘˘/ 0
	contextBD
˘˘1 :
.
˘˘: ;
Players
˘˘; B
.
˘˘B C
FirstOrDefault
˘˘C Q
(
˘˘Q R
pla
˘˘R U
=>
˘˘V X
pla
˘˘Y \
.
˘˘\ ]
User_IdUser
˘˘] h
==
˘˘i k
user
˘˘l p
.
˘˘p q
IdUser
˘˘q w
)
˘˘w x
;
˘˘x y
if
˙˙ 
(
˙˙  
playerToDelete
˙˙  .
!=
˙˙/ 1
null
˙˙2 6
)
˙˙6 7
{
˚˚ 
playerGuests
¸¸  ,
.
¸¸, -
Add
¸¸- 0
(
¸¸0 1
playerToDelete
¸¸1 ?
)
¸¸? @
;
¸¸@ A
}
˝˝ 
}
˛˛ 
if
ˇˇ 
(
ˇˇ 
playerGuests
ˇˇ (
.
ˇˇ( )
Count
ˇˇ) .
!=
ˇˇ/ 1
$num
ˇˇ2 3
)
ˇˇ3 4
{
ÄÄ 
	contextBD
ÅÅ %
.
ÅÅ% &
Players
ÅÅ& -
.
ÅÅ- .
RemoveRange
ÅÅ. 9
(
ÅÅ9 :
playerGuests
ÅÅ: F
)
ÅÅF G
;
ÅÅG H
}
ÇÇ 
	contextBD
ÉÉ !
.
ÉÉ! "
Users
ÉÉ" '
.
ÉÉ' (
RemoveRange
ÉÉ( 3
(
ÉÉ3 4
usersConsulted
ÉÉ4 B
)
ÉÉB C
;
ÉÉC D
	contextBD
ÑÑ !
.
ÑÑ! "
SaveChanges
ÑÑ" -
(
ÑÑ- .
)
ÑÑ. /
;
ÑÑ/ 0
}
ÖÖ 
resultOfOperation
ÜÜ %
.
ÜÜ% &
	CodeEvent
ÜÜ& /
=
ÜÜ0 1!
ExceptionDictionary
ÜÜ2 E
.
ÜÜE F
SUCCESFULL_EVENT
ÜÜF V
;
ÜÜV W
}
áá 
}
àà 
catch
ââ 
(
ââ 
DbUpdateException
ââ $
ex
ââ% '
)
ââ' (
{
ää 
resultOfOperation
ãã !
=
ãã" #
ExceptionHandler
ãã$ 4
.
ãã4 5+
HandleExceptionDataAccesLevel
ãã5 R
(
ããR S
resultOfOperation
ããS d
,
ããd e
ex
ããf h
)
ããh i
;
ããi j
ExceptionHandler
åå  
.
åå  !
LogException
åå! -
(
åå- .
ex
åå. 0
,
åå0 1!
ExceptionDictionary
åå2 E
.
ååE F
FATAL_EXCEPTION
ååF U
)
ååU V
;
ååV W
}
çç 
catch
éé 
(
éé 
EntityException
éé "
ex
éé# %
)
éé% &
{
èè 
resultOfOperation
êê !
=
êê" #
ExceptionHandler
êê$ 4
.
êê4 5+
HandleExceptionDataAccesLevel
êê5 R
(
êêR S
resultOfOperation
êêS d
,
êêd e
ex
êêf h
)
êêh i
;
êêi j
ExceptionHandler
ëë  
.
ëë  !
LogException
ëë! -
(
ëë- .
ex
ëë. 0
,
ëë0 1!
ExceptionDictionary
ëë2 E
.
ëëE F
FATAL_EXCEPTION
ëëF U
)
ëëU V
;
ëëV W
}
íí 
catch
ìì 
(
ìì 
SqlException
ìì 
ex
ìì  "
)
ìì" #
{
îî 
resultOfOperation
ïï !
=
ïï" #
ExceptionHandler
ïï$ 4
.
ïï4 5+
HandleExceptionDataAccesLevel
ïï5 R
(
ïïR S
resultOfOperation
ïïS d
,
ïïd e
ex
ïïf h
)
ïïh i
;
ïïi j
ExceptionHandler
ññ  
.
ññ  !
LogException
ññ! -
(
ññ- .
ex
ññ. 0
,
ññ0 1!
ExceptionDictionary
ññ2 E
.
ññE F
FATAL_EXCEPTION
ññF U
)
ññU V
;
ññV W
}
óó 
catch
òò 
(
òò )
DbEntityValidationException
òò .
ex
òò/ 1
)
òò1 2
{
ôô 
resultOfOperation
öö !
=
öö" #
ExceptionHandler
öö$ 4
.
öö4 5+
HandleExceptionDataAccesLevel
öö5 R
(
ööR S
resultOfOperation
ööS d
,
ööd e
ex
ööf h
)
ööh i
;
ööi j
ExceptionHandler
õõ  
.
õõ  !
LogException
õõ! -
(
õõ- .
ex
õõ. 0
,
õõ0 1!
ExceptionDictionary
õõ2 E
.
õõE F
FATAL_EXCEPTION
õõF U
)
õõU V
;
õõV W
}
úú 
return
ùù 
resultOfOperation
ùù $
;
ùù$ %
}
ûû 	
public
†† 
static
††  
GenericClassServer
†† (
<
††( )
int
††) ,
>
††, -
UpdateEmailUser
††. =
(
††= >
int
††> A
idUser
††B H
,
††H I
string
††J P
email
††Q V
)
††V W
{
°° 	 
GenericClassServer
¢¢ 
<
¢¢ 
int
¢¢ "
>
¢¢" #
resultOfOperation
¢¢$ 5
=
¢¢6 7
new
¢¢8 ; 
GenericClassServer
¢¢< N
<
¢¢N O
int
¢¢O R
>
¢¢R S
(
¢¢S T
)
¢¢T U
;
¢¢U V
if
££ 
(
££ 
string
££ 
.
££ 
IsNullOrEmpty
££ $
(
££$ %
email
££% *
)
££* +
||
££, .
idUser
££/ 5
==
££6 8
NULL_INT_VALUE
££9 G
)
££G H
{
§§ 
return
•• #
NullParametersHandler
•• ,
.
••, -*
HandleNullParametersDataBase
••- I
(
••I J
resultOfOperation
••J [
)
••[ \
;
••\ ]
}
¶¶ 
try
ßß 
{
®® 
using
©© 
(
©© 
var
©© 
	contextBD
©© $
=
©©% &
new
©©' *!
JeopardyDBContainer
©©+ >
(
©©> ?
)
©©? @
)
©©@ A
{
™™ 
var
´´ 
user
´´ 
=
´´ 
	contextBD
´´ (
.
´´( )
Users
´´) .
.
´´. /
FirstOrDefault
´´/ =
(
´´= >
p
´´> ?
=>
´´@ B
p
´´C D
.
´´D E
IdUser
´´E K
==
´´L N
idUser
´´O U
)
´´U V
;
´´V W
if
¨¨ 
(
¨¨ 
user
¨¨ 
!=
¨¨ 
null
¨¨  $
)
¨¨$ %
{
≠≠ 
user
ÆÆ 
.
ÆÆ 
EmailAddress
ÆÆ )
=
ÆÆ* +
email
ÆÆ, 1
;
ÆÆ1 2
int
ØØ 
resultOfEvent
ØØ )
=
ØØ* +
	contextBD
ØØ, 5
.
ØØ5 6
SaveChanges
ØØ6 A
(
ØØA B
)
ØØB C
;
ØØC D
if
∞∞ 
(
∞∞ 
resultOfEvent
∞∞ )
!=
∞∞* ,
$num
∞∞- .
)
∞∞. /
{
±± 
resultOfOperation
≤≤ -
.
≤≤- .
	CodeEvent
≤≤. 7
=
≤≤8 9!
ExceptionDictionary
≤≤: M
.
≤≤M N
SUCCESFULL_EVENT
≤≤N ^
;
≤≤^ _
}
≥≥ 
else
¥¥ 
{
µµ 
resultOfOperation
∂∂ -
.
∂∂- .
	CodeEvent
∂∂. 7
=
∂∂8 9!
ExceptionDictionary
∂∂: M
.
∂∂M N 
UNSUCCESFULL_EVENT
∂∂N `
;
∂∂` a
}
∑∑ 
resultOfOperation
∏∏ )
.
∏∏) *
ObjectSaved
∏∏* 5
=
∏∏6 7
OPERATION_DONE
∏∏8 F
;
∏∏F G
}
ππ 
else
∫∫ 
{
ªª 
resultOfOperation
ºº )
.
ºº) *
	CodeEvent
ºº* 3
=
ºº4 5!
ExceptionDictionary
ºº6 I
.
ººI J 
UNSUCCESFULL_EVENT
ººJ \
;
ºº\ ]
}
ΩΩ 
}
ææ 
}
øø 
catch
¿¿ 
(
¿¿ 
DbUpdateException
¿¿ $
ex
¿¿% '
)
¿¿' (
{
¡¡ 
resultOfOperation
¬¬ !
=
¬¬" #
ExceptionHandler
¬¬$ 4
.
¬¬4 5+
HandleExceptionDataAccesLevel
¬¬5 R
(
¬¬R S
resultOfOperation
¬¬S d
,
¬¬d e
ex
¬¬f h
)
¬¬h i
;
¬¬i j
ExceptionHandler
√√  
.
√√  !
LogException
√√! -
(
√√- .
ex
√√. 0
,
√√0 1!
ExceptionDictionary
√√2 E
.
√√E F
FATAL_EXCEPTION
√√F U
)
√√U V
;
√√V W
}
ƒƒ 
catch
≈≈ 
(
≈≈ 
SqlException
≈≈ 
ex
≈≈  "
)
≈≈" #
{
∆∆ 
resultOfOperation
«« !
=
««" #
ExceptionHandler
««$ 4
.
««4 5+
HandleExceptionDataAccesLevel
««5 R
(
««R S
resultOfOperation
««S d
,
««d e
ex
««f h
)
««h i
;
««i j
ExceptionHandler
»»  
.
»»  !
LogException
»»! -
(
»»- .
ex
»». 0
,
»»0 1!
ExceptionDictionary
»»2 E
.
»»E F
FATAL_EXCEPTION
»»F U
)
»»U V
;
»»V W
}
…… 
catch
   
(
   
EntityException
   "
ex
  # %
)
  % &
{
ÀÀ 
resultOfOperation
ÃÃ !
=
ÃÃ" #
ExceptionHandler
ÃÃ$ 4
.
ÃÃ4 5+
HandleExceptionDataAccesLevel
ÃÃ5 R
(
ÃÃR S
resultOfOperation
ÃÃS d
,
ÃÃd e
ex
ÃÃf h
)
ÃÃh i
;
ÃÃi j
ExceptionHandler
ÕÕ  
.
ÕÕ  !
LogException
ÕÕ! -
(
ÕÕ- .
ex
ÕÕ. 0
,
ÕÕ0 1!
ExceptionDictionary
ÕÕ2 E
.
ÕÕE F
FATAL_EXCEPTION
ÕÕF U
)
ÕÕU V
;
ÕÕV W
}
ŒŒ 
catch
œœ 
(
œœ )
DbEntityValidationException
œœ .
ex
œœ/ 1
)
œœ1 2
{
–– 
resultOfOperation
—— !
=
——" #
ExceptionHandler
——$ 4
.
——4 5+
HandleExceptionDataAccesLevel
——5 R
(
——R S
resultOfOperation
——S d
,
——d e
ex
——f h
)
——h i
;
——i j
ExceptionHandler
““  
.
““  !
LogException
““! -
(
““- .
ex
““. 0
,
““0 1!
ExceptionDictionary
““2 E
.
““E F
FATAL_EXCEPTION
““F U
)
““U V
;
““V W
}
”” 
return
‘‘ 
resultOfOperation
‘‘ $
;
‘‘$ %
}
’’ 	
public
◊◊ 
static
◊◊  
GenericClassServer
◊◊ (
<
◊◊( )
int
◊◊) ,
>
◊◊, - 
UpdatePasswordUser
◊◊. @
(
◊◊@ A
string
◊◊A G
userName
◊◊H P
,
◊◊P Q
string
◊◊R X
password
◊◊Y a
)
◊◊a b
{
ÿÿ 	 
GenericClassServer
ŸŸ 
<
ŸŸ 
int
ŸŸ "
>
ŸŸ" #
resultOfOperation
ŸŸ$ 5
=
ŸŸ6 7
new
ŸŸ8 ; 
GenericClassServer
ŸŸ< N
<
ŸŸN O
int
ŸŸO R
>
ŸŸR S
(
ŸŸS T
)
ŸŸT U
;
ŸŸU V
if
⁄⁄ 
(
⁄⁄ 
string
⁄⁄ 
.
⁄⁄ 
IsNullOrEmpty
⁄⁄ $
(
⁄⁄$ %
password
⁄⁄% -
)
⁄⁄- .
||
⁄⁄/ 1
string
⁄⁄2 8
.
⁄⁄8 9
IsNullOrEmpty
⁄⁄9 F
(
⁄⁄F G
userName
⁄⁄G O
)
⁄⁄O P
)
⁄⁄P Q
{
€€ 
return
‹‹ #
NullParametersHandler
‹‹ ,
.
‹‹, -*
HandleNullParametersDataBase
‹‹- I
(
‹‹I J
resultOfOperation
‹‹J [
)
‹‹[ \
;
‹‹\ ]
}
›› 
try
ﬁﬁ 
{
ﬂﬂ 
using
‡‡ 
(
‡‡ 
var
‡‡ 
	contextBD
‡‡ $
=
‡‡% &
new
‡‡' *!
JeopardyDBContainer
‡‡+ >
(
‡‡> ?
)
‡‡? @
)
‡‡@ A
{
·· 
var
‚‚ 
user
‚‚ 
=
‚‚ 
	contextBD
‚‚ (
.
‚‚( )
Users
‚‚) .
.
‚‚. /
FirstOrDefault
‚‚/ =
(
‚‚= >
p
‚‚> ?
=>
‚‚@ B
p
‚‚C D
.
‚‚D E
UserName
‚‚E M
.
‚‚M N
Equals
‚‚N T
(
‚‚T U
userName
‚‚U ]
)
‚‚] ^
)
‚‚^ _
;
‚‚_ `
if
„„ 
(
„„ 
user
„„ 
!=
„„ 
null
„„  $
)
„„$ %
{
‰‰ 
user
ÂÂ 
.
ÂÂ 
Password
ÂÂ %
=
ÂÂ& '
password
ÂÂ( 0
;
ÂÂ0 1
int
ÊÊ 
resultOfEvent
ÊÊ )
=
ÊÊ* +
	contextBD
ÊÊ, 5
.
ÊÊ5 6
SaveChanges
ÊÊ6 A
(
ÊÊA B
)
ÊÊB C
;
ÊÊC D
if
ÁÁ 
(
ÁÁ 
resultOfEvent
ÁÁ )
!=
ÁÁ* ,
$num
ÁÁ- .
)
ÁÁ. /
{
ËË 
resultOfOperation
ÈÈ -
.
ÈÈ- .
	CodeEvent
ÈÈ. 7
=
ÈÈ8 9!
ExceptionDictionary
ÈÈ: M
.
ÈÈM N
SUCCESFULL_EVENT
ÈÈN ^
;
ÈÈ^ _
}
ÍÍ 
else
ÎÎ 
{
ÏÏ 
resultOfOperation
ÌÌ -
.
ÌÌ- .
	CodeEvent
ÌÌ. 7
=
ÌÌ8 9!
ExceptionDictionary
ÌÌ: M
.
ÌÌM N 
UNSUCCESFULL_EVENT
ÌÌN `
;
ÌÌ` a
}
ÓÓ 
resultOfOperation
ÔÔ )
.
ÔÔ) *
ObjectSaved
ÔÔ* 5
=
ÔÔ6 7
OPERATION_DONE
ÔÔ8 F
;
ÔÔF G
}
 
else
ÒÒ 
{
ÚÚ 
resultOfOperation
ÛÛ )
.
ÛÛ) *
	CodeEvent
ÛÛ* 3
=
ÛÛ4 5!
ExceptionDictionary
ÛÛ6 I
.
ÛÛI J 
UNSUCCESFULL_EVENT
ÛÛJ \
;
ÛÛ\ ]
}
ÙÙ 
}
ıı 
}
ˆˆ 
catch
˜˜ 
(
˜˜ 
DbUpdateException
˜˜ $
ex
˜˜% '
)
˜˜' (
{
¯¯ 
resultOfOperation
˘˘ !
=
˘˘" #
ExceptionHandler
˘˘$ 4
.
˘˘4 5+
HandleExceptionDataAccesLevel
˘˘5 R
(
˘˘R S
resultOfOperation
˘˘S d
,
˘˘d e
ex
˘˘f h
)
˘˘h i
;
˘˘i j
ExceptionHandler
˙˙  
.
˙˙  !
LogException
˙˙! -
(
˙˙- .
ex
˙˙. 0
,
˙˙0 1!
ExceptionDictionary
˙˙2 E
.
˙˙E F
FATAL_EXCEPTION
˙˙F U
)
˙˙U V
;
˙˙V W
}
˚˚ 
catch
¸¸ 
(
¸¸ 
SqlException
¸¸ 
ex
¸¸  "
)
¸¸" #
{
˝˝ 
resultOfOperation
˛˛ !
=
˛˛" #
ExceptionHandler
˛˛$ 4
.
˛˛4 5+
HandleExceptionDataAccesLevel
˛˛5 R
(
˛˛R S
resultOfOperation
˛˛S d
,
˛˛d e
ex
˛˛f h
)
˛˛h i
;
˛˛i j
ExceptionHandler
ˇˇ  
.
ˇˇ  !
LogException
ˇˇ! -
(
ˇˇ- .
ex
ˇˇ. 0
,
ˇˇ0 1!
ExceptionDictionary
ˇˇ2 E
.
ˇˇE F
FATAL_EXCEPTION
ˇˇF U
)
ˇˇU V
;
ˇˇV W
}
ÄÄ 
catch
ÅÅ 
(
ÅÅ 
EntityException
ÅÅ "
ex
ÅÅ# %
)
ÅÅ% &
{
ÇÇ 
resultOfOperation
ÉÉ !
=
ÉÉ" #
ExceptionHandler
ÉÉ$ 4
.
ÉÉ4 5+
HandleExceptionDataAccesLevel
ÉÉ5 R
(
ÉÉR S
resultOfOperation
ÉÉS d
,
ÉÉd e
ex
ÉÉf h
)
ÉÉh i
;
ÉÉi j
ExceptionHandler
ÑÑ  
.
ÑÑ  !
LogException
ÑÑ! -
(
ÑÑ- .
ex
ÑÑ. 0
,
ÑÑ0 1!
ExceptionDictionary
ÑÑ2 E
.
ÑÑE F
FATAL_EXCEPTION
ÑÑF U
)
ÑÑU V
;
ÑÑV W
}
ÖÖ 
catch
ÜÜ 
(
ÜÜ )
DbEntityValidationException
ÜÜ .
ex
ÜÜ/ 1
)
ÜÜ1 2
{
áá 
resultOfOperation
àà !
=
àà" #
ExceptionHandler
àà$ 4
.
àà4 5+
HandleExceptionDataAccesLevel
àà5 R
(
ààR S
resultOfOperation
ààS d
,
ààd e
ex
ààf h
)
ààh i
;
àài j
ExceptionHandler
ââ  
.
ââ  !
LogException
ââ! -
(
ââ- .
ex
ââ. 0
,
ââ0 1!
ExceptionDictionary
ââ2 E
.
ââE F
FATAL_EXCEPTION
ââF U
)
ââU V
;
ââV W
}
ää 
return
ãã 
resultOfOperation
ãã $
;
ãã$ %
}
åå 	
}
éé 
}
êê ˘7
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

static		 
class		 
ExceptionDictionary		 +
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
_EMAIL_ALREADY_EXIST$ 8
=9 :
-; <
$num< >
;> ?
private 
static 
readonly 
int  ##
_USERNAME_ALREADY_EXIST$ ;
=< =
-> ?
$num? A
;A B
private 
static 
readonly 
int  #
_NULL_PARAEMETER$ 4
=5 6
-7 8
$num8 ;
;; <
private 
static 
readonly 
int  #
_ARGUMENT_NULL$ 2
=3 4
-5 6
$num6 9
;9 :
private 
static 
readonly 
int  #,
 _ARGUMENT_OUT_OF_RANGE_EXCEPTION$ D
=E F
-G H
$numH K
;K L
private 
static 
readonly 
int  #
_FORMMAT_EXCEPTION$ 6
=7 8
-9 :
$num: =
;= >
private 
static 
readonly 
int  #
_RANK_EXCEPTION$ 3
=4 5
-6 7
$num7 :
;: ;
private 
static 
readonly 
int  #!
_EMAIL_FORMAT_INVALID$ 9
=: ;
-< =
$num= @
;@ A
private 
static 
readonly 
int  #
_INVALID_OPERATION$ 6
=7 8
-9 :
$num: =
;= >
private 
static 
readonly 
int  #
_NO_DB_CONECTION$ 4
=5 6
-7 8
$num8 ;
;; <
private 
static 
readonly 
int  #
_SAVE_CHANGES_ERROR$ 7
=8 9
-: ;
$num; >
;> ?
private 
static 
readonly 
int  #
_ENTITY_VALIDATION$ 6
=7 8
-9 :
$num: =
;= >
private 
static 
readonly 
int  #

_SQL_ERROR$ .
=/ 0
-1 2
$num2 5
;5 6
private 
static 
readonly 
int  #
_ENTITY_ERROR$ 1
=2 3
-4 5
$num5 8
;8 9
private 
static 
readonly 
int  #
_SMTP_EXCEPTION$ 3
=4 5
-6 7
$num7 :
;: ;
private   
static   
readonly   
int    #%
_UNKOWN_EXCEPTION_OCURRED  $ =
=  > ?
-  @ A
$num  A D
;  D E
public"" 
static"" 
string"" 
FATAL_EXCEPTION"" ,
=>""- /
_FATAL_EXCEPTION""0 @
;""@ A
public$$ 
static$$ 
string$$ 
ERROR$$ "
=>$$# %
_ERROR$$& ,
;$$, -
public&& 
static&& 
string&& 
UNKNOW&& #
=>&&$ &
_UNKNOW&&' .
;&&. /
public(( 
static(( 
int(( 
SUCCESFULL_EVENT(( *
=>((+ -
_SUCCESFULL_EVENT((. ?
;((? @
public** 
static** 
int** 
UNSUCCESFULL_EVENT** ,
=>**- /
_UNSUCCESFULL_EVENT**0 C
;**C D
public,, 
static,, 
int,, 
NULL_PARAEMETER,, )
=>,,* ,
_NULL_PARAEMETER,,- =
;,,= >
public.. 
static.. 
int.. 
ARGUMENT_NULL.. '
=>..( *
_ARGUMENT_NULL..+ 9
;..9 :
public00 
static00 
int00 +
ARGUMENT_OUT_OF_RANGE_EXCEPTION00 9
=>00: <,
 _ARGUMENT_OUT_OF_RANGE_EXCEPTION00= ]
;00] ^
public22 
static22 
int22 
FORMMAT_EXCEPTION22 +
=>22, .
_FORMMAT_EXCEPTION22/ A
;22A B
public44 
static44 
int44 
RANK_EXCEPTION44 (
=>44) +
_RANK_EXCEPTION44, ;
;44; <
public66 
static66 
int66  
EMAIL_FORMAT_INVALID66 .
=>66/ 1!
_EMAIL_FORMAT_INVALID662 G
;66G H
public88 
static88 
int88 
INVALID_OPERATION88 +
=>88, .
_INVALID_OPERATION88/ A
;88A B
public:: 
static:: 
int:: 
NO_DB_CONECTION:: )
=>::* ,
_NO_DB_CONECTION::- =
;::= >
public<< 
static<< 
int<< 
SAVE_CHANGES_ERROR<< ,
=><<- /
_SAVE_CHANGES_ERROR<<0 C
;<<C D
public>> 
static>> 
int>> 
	SQL_ERROR>> #
=>>>$ &

_SQL_ERROR>>' 1
;>>1 2
public@@ 
static@@ 
int@@ 
ENTITY_ERROR@@ &
=>@@' )
_ENTITY_ERROR@@* 7
;@@7 8
publicBB 
staticBB 
intBB 
SMTP_EXCEPTIONBB (
=>BB) +
_SMTP_EXCEPTIONBB, ;
;BB; <
publicDD 
staticDD 
intDD $
UNKOWN_EXCEPTION_OCURREDDD 2
=>DD3 5%
_UNKOWN_EXCEPTION_OCURREDDD6 O
;DDO P
publicFF 
staticFF 
intFF 
EMAIL_ALREADY_EXISTFF -
=>FF. 0 
_EMAIL_ALREADY_EXISTFF1 E
;FFE F
publicHH 
staticHH 
intHH "
USERNAME_ALREADY_EXISTHH 0
=>HH1 3#
_USERNAME_ALREADY_EXISTHH4 K
;HHK L
publicJJ 
staticJJ 
intJJ 
ENTITY_VALIDATIONJJ +
=>JJ, .
_ENTITY_VALIDATIONJJ/ A
;JJA B
}KK 
}NN ßC
ÅC:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameServer\JeopardyGame.Data\Exceptions\ExceptionHandler.cs
	namespace 	
JeopardyGame
 
. 
Data 
. 

Exceptions &
{ 
public 

static 
class 
ExceptionHandler (
{ 
public 
static 
void 
LogException '
(' (
	Exception( 1
	exception2 ;
,; <
String= C
CategoryD L
)L M
{ 	
if 
( 
	exception 
. 
InnerException '
!=( *
null+ /
)/ 0
{ 
	exception 
= 
	exception %
.% &
InnerException& 4
;4 5
} 
string 

logMessage 
= 
$"  "
$str" #
{# $
DateTime$ ,
., -
Now- 0
}0 1
$str1 9
{9 :
Category: B
}B C
$strC Q
{Q R
	exceptionR [
.[ \
Data\ `
+a b
$strc g
+g h
	exceptioni r
.r s
Messages z
}z {
$str	{ ä
{
ä ã
	exception
ã î
.
î ï

StackTrace
ï ü
}
ü †
$str
† ¢
"
¢ £
;
£ §
SeriLogConfig 
	logConfig #
=$ %
new& )
SeriLogConfig* 7
(7 8
)8 9
;9 :
try 
{ 
File 
. 
AppendAllText "
(" #
	logConfig# ,
., -
getPath- 4
(4 5
)5 6
,6 7

logMessage8 B
)B C
;C D
} 
catch 
( 
IOException 
) 
{ 
}   
}!! 	
public## 
static## 
GenericClassServer## (
<##( )
T##) *
>##* +)
HandleExceptionDataAccesLevel##, I
<##I J
T##J K
>##K L
(##L M
GenericClassServer##M _
<##_ `
T##` a
>##a b
resultException##c r
,##r s
	Exception##t }
	exception	##~ á
)
##á à
{$$ 	
resultException%% 
.%% 
ObjectSaved%% '
=%%( )
default%%* 1
;%%1 2
if&& 
(&& 
	exception&& 
is&& %
InvalidOperationException&& 6
)&&6 7
{'' 
resultException(( 
.((  
	CodeEvent((  )
=((* +
ExceptionDictionary((, ?
.((? @
INVALID_OPERATION((@ Q
;((Q R
return)) 
resultException)) &
;))& '
}** 
if++ 
(++ 
	exception++ 
is++ !
ArgumentNullException++ 2
)++2 3
{,, 
resultException-- 
.--  
	CodeEvent--  )
=--* +
ExceptionDictionary--, ?
.--? @
SAVE_CHANGES_ERROR--@ R
;--R S
return.. 
resultException.. &
;..& '
}// 
if00 
(00 
	exception00 
is00 
DbUpdateException00 .
)00. /
{11 
resultException22 
.22  
	CodeEvent22  )
=22* +
ExceptionDictionary22, ?
.22? @
SAVE_CHANGES_ERROR22@ R
;22R S
return33 
resultException33 &
;33& '
}44 
if55 
(55 
	exception55 
is55 
EntityException55 ,
)55, -
{66 
resultException77 
.77  
	CodeEvent77  )
=77* +
ExceptionDictionary77, ?
.77? @
ENTITY_ERROR77@ L
;77L M
return88 
resultException88 &
;88& '
}99 
if:: 
(:: 
	exception:: 
is:: 
SqlException:: )
)::) *
{;; 
resultException<< 
.<<  
	CodeEvent<<  )
=<<* +
ExceptionDictionary<<, ?
.<<? @
	SQL_ERROR<<@ I
;<<I J
return== 
resultException== &
;==& '
}>> 
if?? 
(?? 
	exception?? 
is?? 
FormatException?? ,
)??, -
{@@ 
resultExceptionAA 
.AA  
	CodeEventAA  )
=AA* +
ExceptionDictionaryAA, ?
.AA? @
FORMMAT_EXCEPTIONAA@ Q
;AAQ R
returnBB 
resultExceptionBB &
;BB& '
}CC 
ifDD 
(DD 
	exceptionDD 
isDD 
RankExceptionDD )
)DD) *
{EE 
resultExceptionFF 
.FF  
	CodeEventFF  )
=FF* +
ExceptionDictionaryFF, ?
.FF? @
RANK_EXCEPTIONFF@ N
;FFN O
returnGG 
resultExceptionGG &
;GG& '
}HH 
ifII 
(II 
	exceptionII 
isII '
DbEntityValidationExceptionII 7
)II7 8
{JJ 
resultExceptionKK 
.KK  
	CodeEventKK  )
=KK* +
ExceptionDictionaryKK, ?
.KK? @
ENTITY_VALIDATIONKK@ Q
;KKQ R
returnLL 
resultExceptionLL &
;LL& '
}MM 
ifNN 
(NN 
	exceptionNN 
isNN 
	ExceptionNN &
)NN& '
{OO 
resultExceptionPP 
.PP  
	CodeEventPP  )
=PP* +
ExceptionDictionaryPP, ?
.PP? @$
UNKOWN_EXCEPTION_OCURREDPP@ X
;PPX Y
returnQQ 
resultExceptionQQ &
;QQ& '
}RR 
ifSS 
(SS 
	exceptionSS 
isSS 
nullSS !
)SS! "
{TT 
resultExceptionUU 
.UU  
	CodeEventUU  )
=UU* +
ExceptionDictionaryUU, ?
.UU? @$
UNKOWN_EXCEPTION_OCURREDUU@ X
;UUX Y
returnVV 
resultExceptionVV &
;VV& '
}WW 
returnXX 
resultExceptionXX "
;XX" #
}YY 	
}[[ 
public^^ 

static^^ 
class^^ !
NullParametersHandler^^ -
{__ 
public`` 
static`` 
GenericClassServer`` (
<``( )
T``) *
>``* +(
HandleNullParametersDataBase``, H
<``H I
T``I J
>``J K
(``K L
GenericClassServer``L ^
<``^ _
T``_ `
>``` a
resultWithNull``b p
)``p q
{aa 	
resultWithNullbb 
.bb 
ObjectSavedbb &
=bb' (
defaultbb) 0
;bb0 1
resultWithNullcc 
.cc 
	CodeEventcc $
=cc% &
ExceptionDictionarycc' :
.cc: ;
NULL_PARAEMETERcc; J
;ccJ K
returndd 
resultWithNulldd !
;dd! "
}ee 	
publicgg 
staticgg 
GenericClassgg "
<gg" #
Tgg# $
>gg$ %'
HandleNullParametersServicegg& A
<ggA B
TggB C
>ggC D
(ggD E
GenericClassggE Q
<ggQ R
TggR S
>ggS T
resultWithNullggU c
)ggc d
{hh 	
resultWithNullii 
.ii 
ObjectSavedii &
=ii' (
defaultii) 0
;ii0 1
resultWithNulljj 
.jj 
	CodeEventjj $
=jj% &
ExceptionDictionaryjj' :
.jj: ;
NULL_PARAEMETERjj; J
;jjJ K
returnkk 
resultWithNullkk !
;kk! "
}ll 	
internalnn 
staticnn 
GenericClassnn $
<nn$ %
Tnn% &
>nn& '(
HandleNullParametersDataBasenn( D
<nnD E
TnnE F
>nnF G
(nnG H
GenericClassnnH T
<nnT U
TnnU V
>nnV W
resultOfOperationnnX i
)nni j
{oo 	
throwpp 
newpp #
NotImplementedExceptionpp -
(pp- .
)pp. /
;pp/ 0
}qq 	
}rr 
}uu ©8
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
private 
readonly 
String 
absolutePath  ,
;, -
public 
SeriLogConfig 
( 
) 
{ 	
string 
pathPC 
; 
if 
( 
GetMachineId 
( 
) 
. 
Equals %
(% &

Properties& 0
.0 1
Paths1 6
.6 7
TrisPCId7 ?
)? @
)@ A
{ 
pathPC 
= 
( 

Properties $
.$ %
Paths% *
.* +
PathTris+ 3
)3 4
;4 5
} 
else 
{ 
pathPC 
= 
( 

Properties $
.$ %
Paths% *
.* +
PathDodonaji+ 7
)7 8
;8 9
} 
absolutePath 
= 
Path 
.  
Combine  '
(' (
pathPC( .
,. /
string0 6
.6 7
Format7 =
(= >

Properties> H
.H I
PathsI N
.N O
logFileNameO Z
,Z [
DateTime\ d
.d e
Nowe h
.h i
ToStringi q
(q r

Propertiesr |
.| }
Paths	} Ç
.
Ç É

DateFromat
É ç
)
ç é
)
é è
)
è ê
;
ê ë
ConfigureLogger 
( 
absolutePath (
)( )
;) *
} 	
public   
static   
void   
ConfigureLogger   *
(  * +
string  + 1
relativePath  2 >
)  > ?
{!! 	
Log"" 
."" 
Logger"" 
="" 
new"" 
LoggerConfiguration"" 0
(""0 1
)""1 2
.""2 3
MinimumLevel""3 ?
.""? @
Error""@ E
(""E F
)""F G
.""G H
WriteTo""H O
.""O P
File""P T
(""T U
relativePath""U a
,""a b
rollingInterval""c r
:""r s
RollingInterval	""t É
.
""É Ñ
Day
""Ñ á
)
""á à
.
""à â
CreateLogger
""â ï
(
""ï ñ
)
""ñ ó
;
""ó ò
}## 	
public%% 
String%% 
getPath%% 
(%% 
)%% 
{&& 	
return'' 
absolutePath'' 
;''  
}(( 	
private++ 
static++ 
string++ 
GetMachineId++ *
(++* +
)+++ ,
{,, 	
try-- 
{.. $
ManagementObjectSearcher// (
searcher//) 1
=//2 3
new//4 7$
ManagementObjectSearcher//8 P
(//P Q

Properties//Q [
.//[ \
Paths//\ a
.//a b
SelectPC//b j
)//j k
;//k l&
ManagementObjectCollection00 *
drives00+ 1
=002 3
searcher004 <
.00< =
Get00= @
(00@ A
)00A B
;00B C
foreach11 
(11  
ManagementBaseObject11 -
drive11. 3
in114 6
drives117 =
)11= >
{22 
string33 
serialNumber33 '
=33( )
drive33* /
[33/ 0

Properties330 :
.33: ;
Paths33; @
.33@ A$
CharacteristicToConsider33A Y
]33Y Z
?33Z [
.33[ \
ToString33\ d
(33d e
)33e f
;33f g
if44 
(44 
!44 
string44 
.44  
IsNullOrEmpty44  -
(44- .
serialNumber44. :
)44: ;
)44; <
{55 
return66 
serialNumber66 +
;66+ ,
}77 
}88 
}99 
catch:: 
(:: 
SecurityException:: $
ex::% '
)::' (
{;; 
ExceptionHandler<<  
.<<  !
LogException<<! -
(<<- .
ex<<. 0
,<<0 1
ExceptionDictionary<<1 D
.<<D E
FATAL_EXCEPTION<<E T
)<<T U
;<<U V
ConfigureLogger== 
(==  

Properties==  *
.==* +
Paths==+ 0
.==0 1
logFileName==1 <
)==< =
;=== >
}>> 
catch?? 
(?? '
UnauthorizedAccessException?? .
ex??/ 1
)??1 2
{@@ 
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
;AAV W
ConfigureLoggerBB 
(BB  

PropertiesBB  *
.BB* +
PathsBB+ 0
.BB0 1
logFileNameBB1 <
)BB< =
;BB= >
}CC 
catchDD 
(DD 
ManagementExceptionDD &
exDD' )
)DD) *
{EE 
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
;FFV W
ConfigureLoggerGG 
(GG  

PropertiesGG  *
.GG* +
PathsGG+ 0
.GG0 1
logFileNameGG1 <
)GG< =
;GG= >
}HH 
catchII 
(II "
NullReferenceExceptionII )
exII* ,
)II, -
{JJ 
ExceptionHandlerKK  
.KK  !
LogExceptionKK! -
(KK- .
exKK. 0
,KK0 1
ExceptionDictionaryKK2 E
.KKE F
FATAL_EXCEPTIONKKF U
)KKU V
;KKV W
ConfigureLoggerLL 
(LL  

PropertiesLL  *
.LL* +
PathsLL+ 0
.LL0 1
logFileNameLL1 <
)LL< =
;LL= >
}MM 
catchNN 
(NN 
	ExceptionNN 
exNN 
)NN  
{OO 
ExceptionHandlerPP  
.PP  !
LogExceptionPP! -
(PP- .
exPP. 0
,PP0 1
ExceptionDictionaryPP2 E
.PPE F
FATAL_EXCEPTIONPPF U
)PPU V
;PPV W
ConfigureLoggerQQ 
(QQ  

PropertiesQQ  *
.QQ* +
PathsQQ+ 0
.QQ0 1
logFileNameQQ1 <
)QQ< =
;QQ= >
}RR 
returnSS 
GuidSS 
.SS 
NewGuidSS 
(SS  
)SS  !
.SS! "
ToStringSS" *
(SS* +
)SS+ ,
;SS, -
}TT 	
}WW 
}ZZ ûâ
C:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameServer\JeopardyGame.Data\GenericClassAndObjecSaved.cs
	namespace 	
JeopardyGame
 
. 
Data 
{ 
[ 
DataContract 
] 
[ 
	KnownType 
( 
typeof 
( 
GenericClass "
<" #
int# &
>& '
)' (
)( )
]) *
[ 
	KnownType 
( 
typeof 
( 
GenericClass "
<" #"
FriendBasicInformation# 9
>9 :
): ;
); <
]< =
[ 
	KnownType 
( 
typeof 
( 
GenericClass "
<" #
PlayerInLobby# 0
>0 1
)1 2
)2 3
]3 4
[ 
	KnownType 
( 
typeof 
( 
GenericClass "
<" #
UserPOJO# +
>+ ,
), -
)- .
]. /
[ 
	KnownType 
( 
typeof 
( 
GenericClass "
<" #

PlayerPOJO# -
>- .
). /
)/ 0
]0 1
[ 
	KnownType 
( 
typeof 
( 
GenericClass "
<" #
UserValidate# /
>/ 0
)0 1
)1 2
]2 3
[ 
	KnownType 
( 
typeof 
( 
GenericClass "
<" #

AvatarPojo# -
>- .
). /
)/ 0
]0 1
[ 
	KnownType 
( 
typeof 
( 
GenericClass "
<" #
AvatarChoice# /
>/ 0
)0 1
)1 2
]2 3
[ 
	KnownType 
( 
typeof 
( 
GenericClass "
<" #
MessageChat# .
>. /
)/ 0
)0 1
]1 2
public 

class 
GenericClass 
< 
T 
>  
{ 
[ 	

DataMember	 
] 
public 
T 
ObjectSaved 
{ 
get "
;" #
set$ '
;' (
}) *
[ 	

DataMember	 
] 
public 
int 
	CodeEvent 
{ 
get "
;" #
set$ '
;' (
}) *
public 
bool 
	IsSuccess 
{ 
get  #
;# $
set% (
;( )
}* +
public!! 
GenericClass!! 
(!! 
)!! 
{"" 	
}$$ 	
}%% 
public'' 

class'' 
GenericClassServer'' #
<''# $
T''$ %
>''% &
{(( 
public)) 
T)) 
ObjectSaved)) 
{)) 
get)) "
;))" #
set))$ '
;))' (
}))) *
public++ 
int++ 
	CodeEvent++ 
{++ 
get++ "
;++" #
set++$ '
;++' (
}++) *
public-- 
GenericClassServer-- !
(--! "
)--" #
{.. 	
}00 	
}11 
public33 

struct33 "
FriendBasicInformation33 (
{44 
public55 
int55 
IdUser55 
{55 
get55 
;55  
set55! $
;55$ %
}55& '
public66 
string66 
UserName66 
{66  
get66! $
;66$ %
set66& )
;66) *
}66+ ,
public77 
string77 
EmailAddress77 "
{77# $
get77% (
;77( )
set77* -
;77- .
}77/ 0
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
{<< 
public== 
int== 
IdUser== 
{== 
get== 
;==  
set==! $
;==$ %
}==) *
public>> 
string>> 
UserName>> 
{>>  
get>>! $
;>>$ %
set>>& )
;>>) *
}>>+ ,
public?? 
string?? 
MessageToSend?? #
{??$ %
get??& )
;??) *
set??+ .
;??. /
}??0 1
}@@ 
publicAA 

structAA 
PlayerInLobbyAA 
{BB 
publicCC 
intCC 
IdUserCC 
{CC 
getCC 
;CC  
setCC! $
;CC$ %
}CC& '
publicDD 
intDD 
IdPlayerDD 
{DD 
getDD !
;DD! "
setDD# &
;DD& '
}DD( )
publicEE 
stringEE 
UserNameEE 
{EE  
getEE! $
;EE$ %
setEE& )
;EE) *
}EE+ ,
publicFF 
intFF !
NumberOfPlayerInLobbyFF (
{FF) *
getFF+ .
;FF. /
setFF0 3
;FF3 4
}FF5 6
publicGG 
intGG 

SideOfTeamGG 
{GG 
getGG  #
;GG# $
setGG% (
;GG( )
}GG* +
}HH 
publicKK 

classKK 
UserPOJOKK 
{LL 
publicMM 
intMM 
IdUserMM 
{MM 
getMM 
;MM  
setMM! $
;MM$ %
}MM& '
publicNN 
StringNN 
UserNameNN 
{NN  
getNN! $
;NN$ %
setNN& )
;NN) *
}NN+ ,
publicOO 
StringOO 
NameOO 
{OO 
getOO  
;OO  !
setOO" %
;OO% &
}OO' (
publicPP 
StringPP 
EmailAddressPP "
{PP# $
getPP% (
;PP( )
setPP* -
;PP- .
}PP/ 0
publicQQ 
StringQQ 
PasswordQQ 
{QQ  
getQQ! $
;QQ$ %
setQQ& )
;QQ) *
}QQ+ ,
}RR 
publicSS 

classSS 

PlayerPOJOSS 
{TT 
publicUU 
intUU 
IdPlayerUU 
{UU 
getUU !
;UU! "
setUU# &
;UU& '
}UU( )
publicVV 
intVV 
GeneralPointsVV  
{VV! "
getVV# &
;VV& '
setVV( +
;VV+ ,
}VV- .
publicWW 
intWW 
	NoReportsWW 
{WW 
getWW "
;WW" #
setWW$ '
;WW' (
}WW) *
publicXX 
intXX 
IdUserXX 
{XX 
getXX 
;XX  
setXX! $
;XX$ %
}XX& '
publicYY 
intYY 
IdStateYY 
{YY 
getYY  
;YY  !
setYY" %
;YY% &
}YY' (
publicZZ 
intZZ 
IdActualAvatarZZ !
{ZZ" #
getZZ$ '
;ZZ' (
setZZ) ,
;ZZ, -
}ZZ. /
}[[ 
public]] 

class]] 
UserValidate]] 
{^^ 
public__ 
String__ 
UserName__ 
{__  
get__! $
;__$ %
set__& )
;__) *
}__+ ,
public`` 
String`` 
Password`` 
{``  
get``! $
;``$ %
set``& )
;``) *
}``+ ,
}aa 
publiccc 

classcc 

AvatarPojocc 
{dd 
publicee 
intee 
Idee 
{ee 
getee 
;ee 
setee  
;ee  !
}ee" #
publicff 
stringff 

AvatarNameff  
{ff! "
getff# &
;ff& '
setff( +
;ff+ ,
}ff- .
publicgg 
bytegg 
[gg 
]gg 
	ImageDatagg 
{gg  !
getgg" %
;gg% &
setgg' *
;gg* +
}gg, -
}hh 
publicjj 

classjj 
AvatarChoicejj 
{kk 
publicll 
intll 
IdAvatarll 
{ll 
getll !
;ll! "
setll# &
;ll& '
}ll( )
publicmm 
intmm 
idPlayermm 
{mm 
getmm !
;mm! "
setmm# &
;mm& '
}mm( )
}nn 
[pp 
DataContractpp 
]pp 
publicqq 

classqq #
QuestionCardInformationqq (
{rr 
[ss 	

DataMemberss	 
]ss 
publictt 
inttt 
IdQuestionCardtt !
{tt" #
gettt$ '
;tt' (
settt) ,
;tt, -
}tt. /
[uu 	

DataMemberuu	 
]uu 
publicvv 
CategoryPOJOvv 
CategoryOfQuestionvv .
{vv/ 0
getvv1 4
;vv4 5
setvv6 9
;vv9 :
}vv; <
[ww 	

DataMemberww	 
]ww 
publicxx 
QuestionPOJOxx #
SpecificQuestionDetailsxx 3
{xx3 4
getxx5 8
;xx8 9
setxx: =
;xx= >
}xx? @
[yy 	

DataMemberyy	 
]yy 
publiczz 

AnswerPOJOzz 
RightAnswerzz %
{zz& '
getzz( +
;zz+ ,
setzz- 0
;zz0 1
}zz2 3
[{{ 	

DataMember{{	 
]{{ 
public|| 

AnswerPOJO|| 
WrongOptionOne|| (
{||) *
get||+ .
;||. /
set||0 3
;||3 4
}||5 6
[}} 	

DataMember}}	 
]}} 
public~~ 

AnswerPOJO~~ 
WrongOptionTwo~~ (
{~~) *
get~~+ .
;~~. /
set~~0 3
;~~3 4
}~~5 6
[ 	

DataMember	 
] 
public
ÄÄ 

AnswerPOJO
ÄÄ 
WrongOptionThree
ÄÄ *
{
ÄÄ+ ,
get
ÄÄ- 0
;
ÄÄ0 1
set
ÄÄ2 5
;
ÄÄ5 6
}
ÄÄ7 8
[
ÅÅ 	

DataMember
ÅÅ	 
]
ÅÅ 
public
ÇÇ 
int
ÇÇ 
NumberOfRound
ÇÇ  
{
ÇÇ! "
get
ÇÇ# &
;
ÇÇ& '
set
ÇÇ( +
;
ÇÇ+ ,
}
ÇÇ- .
}
ÉÉ 
public
ÖÖ 

class
ÖÖ 
QuestionPOJO
ÖÖ 
{
ÜÜ 
public
áá 
int
áá 

IdQuestion
áá 
{
áá 
get
áá  #
;
áá# $
set
áá% (
;
áá( )
}
áá* +
public
àà 
string
àà (
SpanishQuestionDescription
àà 0
{
àà1 2
get
àà3 6
;
àà6 7
set
àà8 ;
;
àà; <
}
àà= >
public
ââ 
string
ââ (
EnglishQuestionDescription
ââ 0
{
ââ1 2
get
ââ3 6
;
ââ6 7
set
ââ8 ;
;
ââ; <
}
ââ= >
public
ää 
int
ää 
IdCategoryBelong
ää #
{
ää$ %
get
ää& )
;
ää) *
set
ää+ .
;
ää. /
}
ää0 1
public
ãã 
int
ãã  
IdAnswerOfQuestion
ãã %
{
ãã& '
get
ãã( +
;
ãã+ ,
set
ãã- 0
;
ãã0 1
}
ãã2 3
public
åå 
int
åå 

ValueWorth
åå 
{
åå 
get
åå  #
;
åå# $
set
åå% (
;
åå( )
}
åå* +
}
çç 
public
èè 

class
èè 

AnswerPOJO
èè 
{
êê 
public
ëë 
int
ëë 
IdAnswer
ëë 
{
ëë 
get
ëë !
;
ëë! "
set
ëë# &
;
ëë& '
}
ëë( )
public
íí 
string
íí &
SpanishAnswerDescription
íí .
{
íí/ 0
get
íí1 4
;
íí4 5
set
íí6 9
;
íí9 :
}
íí; <
public
ìì 
string
ìì &
EnglishAnswerDescription
ìì .
{
ìì/ 0
get
ìì1 4
;
ìì4 5
set
ìì6 9
;
ìì9 :
}
ìì; <
public
îî 
int
îî 

IdCategory
îî 
{
îî 
get
îî  #
;
îî# $
set
îî% (
;
îî( )
}
îî* +
}
ïï 
public
óó 

class
óó 
CategoryPOJO
óó 
{
òò 
public
ôô 
int
ôô 

IdCategory
ôô 
{
ôô 
get
ôô  #
;
ôô# $
set
ôô% (
;
ôô( )
}
ôô* +
public
öö 
string
öö (
SpanishCategoryDescription
öö 0
{
öö1 2
get
öö3 6
;
öö6 7
set
öö8 ;
;
öö; <
}
öö= >
public
õõ 
string
õõ (
EnglishCategoryDescription
õõ 0
{
õõ1 2
get
õõ3 6
;
õõ6 7
set
õõ8 ;
;
õõ; <
}
õõ= >
}
úú 
[
ûû 
DataContract
ûû 
]
ûû 
public
üü 

class
üü &
PlayerInGameDataContract
üü )
{
†† 
[
°° 	

DataMember
°°	 
]
°° 
public
¢¢ 
int
¢¢ 
IdUser
¢¢ 
{
¢¢ 
get
¢¢ 
;
¢¢  
set
¢¢! $
;
¢¢$ %
}
¢¢& '
[
££ 	

DataMember
££	 
]
££ 
public
§§ 
int
§§ 
IdPlayer
§§ 
{
§§ 
get
§§ !
;
§§! "
set
§§# &
;
§§& '
}
§§( )
[
•• 	

DataMember
••	 
]
•• 
public
¶¶ 
int
¶¶ 
FinalPosition
¶¶  
{
¶¶! "
get
¶¶# &
;
¶¶& '
set
¶¶( +
;
¶¶+ ,
}
¶¶- .
[
ßß 	

DataMember
ßß	 
]
ßß 
public
®® 
String
®® 
UserName
®® 
{
®®  
get
®®! $
;
®®$ %
set
®®& )
;
®®) *
}
®®+ ,
[
©© 	

DataMember
©©	 
]
©© 
public
™™ 
int
™™ 
SideTeam
™™ 
{
™™ 
get
™™ !
;
™™! "
set
™™# &
;
™™& '
}
™™( )
[
´´ 	

DataMember
´´	 
]
´´ 
public
¨¨ 
int
¨¨ 
TurnOfPlayer
¨¨ 
{
¨¨  !
get
¨¨" %
;
¨¨% &
set
¨¨' *
;
¨¨* +
}
¨¨, -
[
≠≠ 	

DataMember
≠≠	 
]
≠≠ 
public
ÆÆ 
int
ÆÆ 
IdAvatar
ÆÆ 
{
ÆÆ 
get
ÆÆ !
;
ÆÆ! "
set
ÆÆ# &
;
ÆÆ& '
}
ÆÆ( )
[
ØØ 	

DataMember
ØØ	 
]
ØØ 
public
∞∞ 
int
∞∞ "
CurrentPointsOfRound
∞∞ '
{
∞∞( )
get
∞∞* -
;
∞∞- .
set
∞∞/ 2
;
∞∞2 3
}
∞∞4 5
}
±± 
[
¥¥ 
DataContract
¥¥ 
]
¥¥ 
public
µµ 

class
µµ +
CurrentQuestionToShowContract
µµ .
{
∂∂ 
[
∑∑ 	

DataMember
∑∑	 
]
∑∑ 
public
∏∏ 
int
∏∏ 

IdQuestion
∏∏ 
{
∏∏ 
get
∏∏  #
;
∏∏# $
set
∏∏% (
;
∏∏( )
}
∏∏* +
[
ππ 	

DataMember
ππ	 
]
ππ 
public
∫∫ 
int
∫∫ 
IdFirstAnswer
∫∫  
{
∫∫! "
get
∫∫# &
;
∫∫& '
set
∫∫( +
;
∫∫+ ,
}
∫∫- .
[
ªª 	

DataMember
ªª	 
]
ªª 
public
ºº 
int
ºº 
IdSecondAnswer
ºº !
{
ºº" #
get
ºº$ '
;
ºº' (
set
ºº) ,
;
ºº, -
}
ºº. /
[
ΩΩ 	

DataMember
ΩΩ	 
]
ΩΩ 
public
ææ 
int
ææ 
IdThirdAnswer
ææ  
{
ææ! "
get
ææ# &
;
ææ& '
set
ææ( +
;
ææ+ ,
}
ææ- .
[
øø 	

DataMember
øø	 
]
øø 
public
¿¿ 
int
¿¿ 
IdFourthAnswer
¿¿ !
{
¿¿" #
get
¿¿$ '
;
¿¿' (
set
¿¿) ,
;
¿¿, -
}
¿¿. /
}
¡¡ 
public
ƒƒ 

class
ƒƒ 

PlayerInfo
ƒƒ 
{
≈≈ 
public
∆∆ 
string
∆∆ 
Name
∆∆ 
{
∆∆ 
get
∆∆  
;
∆∆  !
set
∆∆" %
;
∆∆% &
}
∆∆' (
public
»» 
long
»» 
Points
»» 
{
»» 
get
»»  
;
»»  !
set
»»" %
;
»»% &
}
»»' (
}
…… 
}ÃÃ ®
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