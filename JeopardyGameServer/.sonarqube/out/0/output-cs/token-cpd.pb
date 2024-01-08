ύΏ
C:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameServer\JeopardyGame.Data\DataAccess\FriendsManagerDataOperation.cs
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
PlayerFriend_IdPlayer	!!~ “
==
!!” –
player
!!— 
.
!! 
IdPlayer
!! ¦
)
!!¦ §
.
!!§ ¨
ToList
!!¨ ®
(
!!® ―
)
!!― °
;
!!° ±
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
IdPlayer	ZZ~ †
)
ZZ† ‡
&&
ZZ 
playerDataBase
ZZ‹ ™
.
ZZ™ 
State_idState
ZZ §
!=
ZZ¨ ª
$num
ZZ« ¬
)
ZZ¬ ­
.
ZZ­ ®
Take
ZZ® ²
(
ZZ² ³
$num
ZZ³ µ
)
ZZµ ¶
.
ZZ¶ ·
ToList
ZZ· ½
(
ZZ½ Ύ
)
ZZΎ Ώ
;
ZZΏ ΐ
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
€€ 
<
€€ 
int
€€ "
>
€€" #
resultOfOperation
€€$ 5
=
€€6 7
new
€€8 ; 
GenericClassServer
€€< N
<
€€N O
int
€€O R
>
€€R S
(
€€S T
)
€€T U
;
€€U V
if
 
(
 
idPlayerFriend1
 
==
  "
NULL_INT_VALUE
# 1
||
2 4
idPlayerFriend2
5 D
==
E G
NULL_INT_VALUE
H V
)
V W
{
‚‚ 
return
ƒƒ #
NullParametersHandler
ƒƒ ,
.
ƒƒ, -*
HandleNullParametersDataBase
ƒƒ- I
(
ƒƒI J
resultOfOperation
ƒƒJ [
)
ƒƒ[ \
;
ƒƒ\ ]
}
„„ 
try
…… 
{
†† 
using
‡‡ 
(
‡‡ 
var
‡‡ 
	contextBD
‡‡ $
=
‡‡% &
new
‡‡' *!
JeopardyDBContainer
‡‡+ >
(
‡‡> ?
)
‡‡? @
)
‡‡@ A
{
 
var
‰‰  
friendshipToDelete
‰‰ *
=
‰‰+ ,
	contextBD
‰‰- 6
.
‰‰6 7
Friends
‰‰7 >
.
‰‰> ?
FirstOrDefault
‰‰? M
(
‰‰M N
friendRegistry
‰‰N \
=>
‰‰] _
(
‰‰` a
friendRegistry
‰‰a o
.
‰‰o p
Player_IdPlayer
‰‰p 
==‰‰€ ‚
idPlayerFriend1‰‰ƒ ’
&&‰‰“ •
friendRegistry‰‰– ¤
.‰‰¤ ¥%
PlayerFriend_IdPlayer‰‰¥ Ί
==‰‰» ½
idPlayerFriend2‰‰Ύ Ν
)‰‰Ν Ξ
||‰‰Ο Ρ
(‰‰Ò Σ
friendRegistry‰‰Σ α
.‰‰α β
Player_IdPlayer‰‰β ρ
==‰‰ς τ
idPlayerFriend2‰‰υ „
&&‰‰… ‡
friendRegistry‰‰ –
.‰‰– —%
PlayerFriend_IdPlayer‰‰— ¬
==‰‰­ ―
idPlayerFriend1‰‰° Ώ
)‰‰Ώ ΐ
)‰‰ΐ Α
;‰‰Α Β
if
 
(
  
friendshipToDelete
 *
!=
+ -
null
. 2
)
2 3
{
‹‹ 
	contextBD
 !
.
! "
Friends
" )
.
) *
Remove
* 0
(
0 1 
friendshipToDelete
1 C
)
C D
;
D E
int
 
resultEvent
 '
=
( )
	contextBD
* 3
.
3 4
SaveChanges
4 ?
(
? @
)
@ A
;
A B
resultOfOperation
 )
.
) *
ObjectSaved
* 5
=
6 7
resultEvent
8 C
;
C D
if
 
(
 
resultEvent
 '
!=
( *
NULL_INT_VALUE
+ 9
)
9 :
{
 
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
““ 
{
”” 
resultOfOperation
•• -
.
••- .
	CodeEvent
••. 7
=
••8 9!
ExceptionDictionary
••: M
.
••M N 
UNSUCCESFULL_EVENT
••N `
;
••` a
}
–– 
}
—— 
else
 
{
™™ 
resultOfOperation
 )
.
) *
	CodeEvent
* 3
=
4 5!
ExceptionDictionary
6 I
.
I J 
UNSUCCESFULL_EVENT
J \
;
\ ]
}
›› 
}
 
}
 
catch
 
(
 
DbUpdateException
 $
ex
% '
)
' (
{
 
resultOfOperation
   !
=
  " #
ExceptionHandler
  $ 4
.
  4 5+
HandleExceptionDataAccesLevel
  5 R
(
  R S
resultOfOperation
  S d
,
  d e
ex
  f h
)
  h i
;
  i j
ExceptionHandler
΅΅  
.
΅΅  !
LogException
΅΅! -
(
΅΅- .
ex
΅΅. 0
,
΅΅0 1!
ExceptionDictionary
΅΅2 E
.
΅΅E F
FATAL_EXCEPTION
΅΅F U
)
΅΅U V
;
΅΅V W
}
ΆΆ 
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
¤¤ 
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
¦¦  
.
¦¦  !
LogException
¦¦! -
(
¦¦- .
ex
¦¦. 0
,
¦¦0 1!
ExceptionDictionary
¦¦2 E
.
¦¦E F
FATAL_EXCEPTION
¦¦F U
)
¦¦U V
;
¦¦V W
}
§§ 
catch
¨¨ 
(
¨¨ 
EntityException
¨¨ "
ex
¨¨# %
)
¨¨% &
{
©© 
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
««  
.
««  !
LogException
««! -
(
««- .
ex
««. 0
,
««0 1!
ExceptionDictionary
««2 E
.
««E F
FATAL_EXCEPTION
««F U
)
««U V
;
««V W
}
¬¬ 
catch
­­ 
(
­­ 
SqlException
­­ 
ex
­­  "
)
­­" #
{
®® 
resultOfOperation
―― !
=
――" #
ExceptionHandler
――$ 4
.
――4 5+
HandleExceptionDataAccesLevel
――5 R
(
――R S
resultOfOperation
――S d
,
――d e
ex
――f h
)
――h i
;
――i j
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
±± 
catch
²² 
(
²² )
DbEntityValidationException
²² .
ex
²²/ 1
)
²²1 2
{
³³ 
resultOfOperation
΄΄ !
=
΄΄" #
ExceptionHandler
΄΄$ 4
.
΄΄4 5+
HandleExceptionDataAccesLevel
΄΄5 R
(
΄΄R S
resultOfOperation
΄΄S d
,
΄΄d e
ex
΄΄f h
)
΄΄h i
;
΄΄i j
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
¶¶ 
return
·· 
resultOfOperation
·· $
;
··$ %
}
ΈΈ 	
public
ΊΊ 
static
ΊΊ  
GenericClassServer
ΊΊ (
<
ΊΊ( )
int
ΊΊ) ,
>
ΊΊ, -!
AcceptFriendRequest
ΊΊ. A
(
ΊΊA B
int
ΊΊB E
idPlayerFriend1
ΊΊF U
,
ΊΊU V
int
ΊΊW Z
idPlayerFriend2
ΊΊ[ j
)
ΊΊj k
{
»» 	 
GenericClassServer
ΌΌ 
<
ΌΌ 
int
ΌΌ "
>
ΌΌ" #
resultOfOperation
ΌΌ$ 5
=
ΌΌ6 7
new
ΌΌ8 ; 
GenericClassServer
ΌΌ< N
<
ΌΌN O
int
ΌΌO R
>
ΌΌR S
(
ΌΌS T
)
ΌΌT U
;
ΌΌU V
if
½½ 
(
½½ 
idPlayerFriend1
½½ 
==
½½  "
NULL_INT_VALUE
½½# 1
||
½½2 4
idPlayerFriend2
½½5 D
==
½½E G
NULL_INT_VALUE
½½H V
)
½½V W
{
ΎΎ 
return
ΏΏ #
NullParametersHandler
ΏΏ ,
.
ΏΏ, -*
HandleNullParametersDataBase
ΏΏ- I
(
ΏΏI J
resultOfOperation
ΏΏJ [
)
ΏΏ[ \
;
ΏΏ\ ]
}
ΐΐ 
try
ΑΑ 
{
ΒΒ 
using
ΓΓ 
(
ΓΓ 
var
ΓΓ 
	contextBD
ΓΓ $
=
ΓΓ% &
new
ΓΓ' *!
JeopardyDBContainer
ΓΓ+ >
(
ΓΓ> ?
)
ΓΓ? @
)
ΓΓ@ A
{
ΔΔ 
var
ΕΕ  
friendshipToChange
ΕΕ *
=
ΕΕ+ ,
	contextBD
ΕΕ- 6
.
ΕΕ6 7
Friends
ΕΕ7 >
.
ΕΕ> ?
FirstOrDefault
ΕΕ? M
(
ΕΕM N
friendRegistry
ΕΕN \
=>
ΕΕ] _
(
ΕΕ` a
friendRegistry
ΕΕa o
.
ΕΕo p
Player_IdPlayer
ΕΕp 
==ΕΕ€ ‚
idPlayerFriend1ΕΕƒ ’
&&ΕΕ“ •
friendRegistryΕΕ– ¤
.ΕΕ¤ ¥%
PlayerFriend_IdPlayerΕΕ¥ Ί
==ΕΕ» ½
idPlayerFriend2ΕΕΎ Ν
)ΕΕΝ Ξ
||ΕΕΟ Ρ
(ΕΕÒ Σ
friendRegistryΕΕΣ α
.ΕΕα β
Player_IdPlayerΕΕβ ρ
==ΕΕς τ
idPlayerFriend2ΕΕυ „
&&ΕΕ… ‡
friendRegistryΕΕ –
.ΕΕ– —%
PlayerFriend_IdPlayerΕΕ— ¬
==ΕΕ­ ―
idPlayerFriend1ΕΕ° Ώ
)ΕΕΏ ΐ
)ΕΕΐ Α
;ΕΕΑ Β
if
ΖΖ 
(
ΖΖ  
friendshipToChange
ΖΖ *
!=
ΖΖ+ -
null
ΖΖ. 2
)
ΖΖ2 3
{
ΗΗ  
friendshipToChange
ΘΘ *
.
ΘΘ* +
IdFriendState
ΘΘ+ 8
=
ΘΘ9 :+
FRIEND_STATUS_ACCCEPT_REQUEST
ΘΘ; X
;
ΘΘX Y
	contextBD
ΙΙ !
.
ΙΙ! "
Entry
ΙΙ" '
(
ΙΙ' ( 
friendshipToChange
ΙΙ( :
)
ΙΙ: ;
.
ΙΙ; <
State
ΙΙ< A
=
ΙΙB C
EntityState
ΙΙD O
.
ΙΙO P
Modified
ΙΙP X
;
ΙΙX Y
int
ΚΚ 
resultEvent
ΚΚ '
=
ΚΚ( )
	contextBD
ΚΚ* 3
.
ΚΚ3 4
SaveChanges
ΚΚ4 ?
(
ΚΚ? @
)
ΚΚ@ A
;
ΚΚA B
resultOfOperation
ΛΛ )
.
ΛΛ) *
ObjectSaved
ΛΛ* 5
=
ΛΛ6 7
resultEvent
ΛΛ8 C
;
ΛΛC D
if
ΜΜ 
(
ΜΜ 
resultEvent
ΜΜ '
!=
ΜΜ( *
NULL_INT_VALUE
ΜΜ+ 9
)
ΜΜ9 :
{
ΝΝ 
resultOfOperation
ΞΞ -
.
ΞΞ- .
	CodeEvent
ΞΞ. 7
=
ΞΞ8 9!
ExceptionDictionary
ΞΞ: M
.
ΞΞM N
SUCCESFULL_EVENT
ΞΞN ^
;
ΞΞ^ _
}
ΟΟ 
else
ΠΠ 
{
ΡΡ 
resultOfOperation
ÒÒ -
.
ÒÒ- .
	CodeEvent
ÒÒ. 7
=
ÒÒ8 9!
ExceptionDictionary
ÒÒ: M
.
ÒÒM N 
UNSUCCESFULL_EVENT
ÒÒN `
;
ÒÒ` a
}
ΣΣ 
}
ΤΤ 
else
ΥΥ 
{
ΦΦ 
resultOfOperation
ΧΧ )
.
ΧΧ) *
	CodeEvent
ΧΧ* 3
=
ΧΧ4 5!
ExceptionDictionary
ΧΧ6 I
.
ΧΧI J 
UNSUCCESFULL_EVENT
ΧΧJ \
;
ΧΧ\ ]
}
ΨΨ 
}
ΩΩ 
}
ΪΪ 
catch
ΫΫ 
(
ΫΫ 
DbUpdateException
ΫΫ $
ex
ΫΫ% '
)
ΫΫ' (
{
άά 
resultOfOperation
έέ !
=
έέ" #
ExceptionHandler
έέ$ 4
.
έέ4 5+
HandleExceptionDataAccesLevel
έέ5 R
(
έέR S
resultOfOperation
έέS d
,
έέd e
ex
έέf h
)
έέh i
;
έέi j
ExceptionHandler
ήή  
.
ήή  !
LogException
ήή! -
(
ήή- .
ex
ήή. 0
,
ήή0 1!
ExceptionDictionary
ήή2 E
.
ήήE F
FATAL_EXCEPTION
ήήF U
)
ήήU V
;
ήήV W
}
ίί 
catch
ΰΰ 
(
ΰΰ #
ArgumentNullException
ΰΰ (
ex
ΰΰ) +
)
ΰΰ+ ,
{
αα 
resultOfOperation
ββ !
=
ββ" #
ExceptionHandler
ββ$ 4
.
ββ4 5+
HandleExceptionDataAccesLevel
ββ5 R
(
ββR S
resultOfOperation
ββS d
,
ββd e
ex
ββf h
)
ββh i
;
ββi j
ExceptionHandler
γγ  
.
γγ  !
LogException
γγ! -
(
γγ- .
ex
γγ. 0
,
γγ0 1!
ExceptionDictionary
γγ2 E
.
γγE F
FATAL_EXCEPTION
γγF U
)
γγU V
;
γγV W
}
δδ 
catch
εε 
(
εε 
EntityException
εε "
ex
εε# %
)
εε% &
{
ζζ 
resultOfOperation
ηη !
=
ηη" #
ExceptionHandler
ηη$ 4
.
ηη4 5+
HandleExceptionDataAccesLevel
ηη5 R
(
ηηR S
resultOfOperation
ηηS d
,
ηηd e
ex
ηηf h
)
ηηh i
;
ηηi j
ExceptionHandler
θθ  
.
θθ  !
LogException
θθ! -
(
θθ- .
ex
θθ. 0
,
θθ0 1!
ExceptionDictionary
θθ2 E
.
θθE F
FATAL_EXCEPTION
θθF U
)
θθU V
;
θθV W
}
ιι 
catch
κκ 
(
κκ 
SqlException
κκ 
ex
κκ  "
)
κκ" #
{
λλ 
resultOfOperation
μμ !
=
μμ" #
ExceptionHandler
μμ$ 4
.
μμ4 5+
HandleExceptionDataAccesLevel
μμ5 R
(
μμR S
resultOfOperation
μμS d
,
μμd e
ex
μμf h
)
μμh i
;
μμi j
ExceptionHandler
νν  
.
νν  !
LogException
νν! -
(
νν- .
ex
νν. 0
,
νν0 1!
ExceptionDictionary
νν2 E
.
ννE F
FATAL_EXCEPTION
ννF U
)
ννU V
;
ννV W
}
ξξ 
catch
οο 
(
οο )
DbEntityValidationException
οο .
ex
οο/ 1
)
οο1 2
{
ππ 
resultOfOperation
ρρ !
=
ρρ" #
ExceptionHandler
ρρ$ 4
.
ρρ4 5+
HandleExceptionDataAccesLevel
ρρ5 R
(
ρρR S
resultOfOperation
ρρS d
,
ρρd e
ex
ρρf h
)
ρρh i
;
ρρi j
ExceptionHandler
ςς  
.
ςς  !
LogException
ςς! -
(
ςς- .
ex
ςς. 0
,
ςς0 1!
ExceptionDictionary
ςς2 E
.
ςςE F
FATAL_EXCEPTION
ςςF U
)
ςςU V
;
ςςV W
}
σσ 
return
ττ 
resultOfOperation
ττ $
;
ττ$ %
}
υυ 	
public
χχ 
static
χχ  
GenericClassServer
χχ (
<
χχ( )
int
χχ) ,
>
χχ, -
SendFriendRequest
χχ. ?
(
χχ? @
int
χχ@ C
idPlayerSender
χχD R
,
χχR S
int
χχT W
idPlayerCatcher
χχX g
)
χχg h
{
ψψ 	 
GenericClassServer
ωω 
<
ωω 
int
ωω "
>
ωω" #
resultOfOperation
ωω$ 5
=
ωω6 7
new
ωω8 ; 
GenericClassServer
ωω< N
<
ωωN O
int
ωωO R
>
ωωR S
(
ωωS T
)
ωωT U
;
ωωU V
if
ϊϊ 
(
ϊϊ 
idPlayerCatcher
ϊϊ 
==
ϊϊ  "
NULL_INT_VALUE
ϊϊ# 1
||
ϊϊ2 4
idPlayerSender
ϊϊ5 C
==
ϊϊD F
NULL_INT_VALUE
ϊϊG U
)
ϊϊU V
{
ϋϋ 
return
όό #
NullParametersHandler
όό ,
.
όό, -*
HandleNullParametersDataBase
όό- I
(
όόI J
resultOfOperation
όόJ [
)
όό[ \
;
όό\ ]
}
ύύ 
try
ώώ 
{
ÿÿ 
using
€€ 
(
€€ 
var
€€ 
	contextBD
€€ $
=
€€% &
new
€€' *!
JeopardyDBContainer
€€+ >
(
€€> ?
)
€€? @
)
€€@ A
{
 
bool
‚‚ 
doesFriendExist
‚‚ (
=
‚‚) *
	contextBD
‚‚+ 4
.
‚‚4 5
Friends
‚‚5 <
.
‚‚< =
Any
‚‚= @
(
‚‚@ A
friend
‚‚A G
=>
‚‚H J
(
‚‚K L
friend
‚‚L R
.
‚‚R S
Player_IdPlayer
‚‚S b
==
‚‚c e
idPlayerSender
‚‚f t
&&
‚‚u w
friend
‚‚x ~
.
‚‚~ $
PlayerFriend_IdPlayer‚‚ ”
==‚‚• —
idPlayerCatcher‚‚ §
)‚‚§ ¨
||‚‚© «
(‚‚¬ ­
friend‚‚­ ³
.‚‚³ ΄
Player_IdPlayer‚‚΄ Γ
==‚‚Δ Ζ
idPlayerCatcher‚‚Η Φ
&&‚‚Χ Ω
friend‚‚Ϊ ΰ
.‚‚ΰ α%
PlayerFriend_IdPlayer‚‚α φ
==‚‚χ ω
idPlayerSender‚‚ϊ 
)‚‚ ‰
)‚‚‰ 
;‚‚ ‹
if
ƒƒ 
(
ƒƒ 
!
ƒƒ 
doesFriendExist
ƒƒ (
)
ƒƒ( )
{
„„ 
Friend
…… 
newRelationShip
…… .
=
……/ 0
new
……1 4
Friend
……5 ;
(
……; <
)
……< =
;
……= >
newRelationShip
†† '
.
††' (
IdFriendState
††( 5
=
††6 7
NULL_INT_VALUE
††8 F
;
††F G
newRelationShip
‡‡ '
.
‡‡' (
Player_IdPlayer
‡‡( 7
=
‡‡8 9
idPlayerSender
‡‡: H
;
‡‡H I
newRelationShip
 '
.
' (#
PlayerFriend_IdPlayer
( =
=
> ?
idPlayerCatcher
@ O
;
O P
newRelationShip
‰‰ '
.
‰‰' (
IdFriendState
‰‰( 5
=
‰‰6 7
FRIEND_STATUS_NEW
‰‰8 I
;
‰‰I J
	contextBD
 !
.
! "
Friends
" )
.
) *
Add
* -
(
- .
newRelationShip
. =
)
= >
;
> ?
int
‹‹ 
resultEvent
‹‹ '
=
‹‹( )
	contextBD
‹‹* 3
.
‹‹3 4
SaveChanges
‹‹4 ?
(
‹‹? @
)
‹‹@ A
;
‹‹A B
resultOfOperation
 )
.
) *
ObjectSaved
* 5
=
6 7
resultEvent
8 C
;
C D
if
 
(
 
resultEvent
 '
!=
( *
NULL_INT_VALUE
+ 9
)
9 :
{
 
resultOfOperation
 -
.
- .
	CodeEvent
. 7
=
8 9!
ExceptionDictionary
: M
.
M N
SUCCESFULL_EVENT
N ^
;
^ _
}
 
else
‘‘ 
{
’’ 
resultOfOperation
““ -
.
““- .
	CodeEvent
““. 7
=
““8 9!
ExceptionDictionary
““: M
.
““M N 
UNSUCCESFULL_EVENT
““N `
;
““` a
}
”” 
}
•• 
else
–– 
{
—— 
resultOfOperation
 )
.
) *
	CodeEvent
* 3
=
4 5!
ExceptionDictionary
6 I
.
I J 
UNSUCCESFULL_EVENT
J \
;
\ ]
}
™™ 
}
 
}
›› 
catch
 
(
 
DbUpdateException
 $
ex
% '
)
' (
{
 
resultOfOperation
 !
=
" #
ExceptionHandler
$ 4
.
4 5+
HandleExceptionDataAccesLevel
5 R
(
R S
resultOfOperation
S d
,
d e
ex
f h
)
h i
;
i j
ExceptionHandler
  
.
  !
LogException
! -
(
- .
ex
. 0
,
0 1!
ExceptionDictionary
2 E
.
E F
FATAL_EXCEPTION
F U
)
U V
;
V W
}
   
catch
΅΅ 
(
΅΅ #
ArgumentNullException
΅΅ (
ex
΅΅) +
)
΅΅+ ,
{
ΆΆ 
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
¤¤  
.
¤¤  !
LogException
¤¤! -
(
¤¤- .
ex
¤¤. 0
,
¤¤0 1!
ExceptionDictionary
¤¤2 E
.
¤¤E F
FATAL_EXCEPTION
¤¤F U
)
¤¤U V
;
¤¤V W
}
¥¥ 
catch
¦¦ 
(
¦¦ 
EntityException
¦¦ "
ex
¦¦# %
)
¦¦% &
{
§§ 
resultOfOperation
¨¨ !
=
¨¨" #
ExceptionHandler
¨¨$ 4
.
¨¨4 5+
HandleExceptionDataAccesLevel
¨¨5 R
(
¨¨R S
resultOfOperation
¨¨S d
,
¨¨d e
ex
¨¨f h
)
¨¨h i
;
¨¨i j
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
ªª 
catch
«« 
(
«« 
SqlException
«« 
ex
««  "
)
««" #
{
¬¬ 
resultOfOperation
­­ !
=
­­" #
ExceptionHandler
­­$ 4
.
­­4 5+
HandleExceptionDataAccesLevel
­­5 R
(
­­R S
resultOfOperation
­­S d
,
­­d e
ex
­­f h
)
­­h i
;
­­i j
ExceptionHandler
®®  
.
®®  !
LogException
®®! -
(
®®- .
ex
®®. 0
,
®®0 1!
ExceptionDictionary
®®2 E
.
®®E F
FATAL_EXCEPTION
®®F U
)
®®U V
;
®®V W
}
―― 
catch
°° 
(
°° )
DbEntityValidationException
°° .
ex
°°/ 1
)
°°1 2
{
±± 
resultOfOperation
²² !
=
²²" #
ExceptionHandler
²²$ 4
.
²²4 5+
HandleExceptionDataAccesLevel
²²5 R
(
²²R S
resultOfOperation
²²S d
,
²²d e
ex
²²f h
)
²²h i
;
²²i j
ExceptionHandler
³³  
.
³³  !
LogException
³³! -
(
³³- .
ex
³³. 0
,
³³0 1!
ExceptionDictionary
³³2 E
.
³³E F
FATAL_EXCEPTION
³³F U
)
³³U V
;
³³V W
}
΄΄ 
return
µµ 
resultOfOperation
µµ $
;
µµ$ %
}
¶¶ 	
public
ΈΈ 
static
ΈΈ  
GenericClassServer
ΈΈ (
<
ΈΈ( )
int
ΈΈ) ,
>
ΈΈ, -

BannerUser
ΈΈ. 8
(
ΈΈ8 9
int
ΈΈ9 <
idUser
ΈΈ= C
)
ΈΈC D
{
ΉΉ 	 
GenericClassServer
ΊΊ 
<
ΊΊ 
int
ΊΊ "
>
ΊΊ" #
resultOfOperation
ΊΊ$ 5
=
ΊΊ6 7
new
ΊΊ8 ; 
GenericClassServer
ΊΊ< N
<
ΊΊN O
int
ΊΊO R
>
ΊΊR S
(
ΊΊS T
)
ΊΊT U
;
ΊΊU V
if
»» 
(
»» 
idUser
»» 
==
»» 
NULL_INT_VALUE
»» (
)
»»( )
{
ΌΌ 
return
½½ #
NullParametersHandler
½½ ,
.
½½, -*
HandleNullParametersDataBase
½½- I
(
½½I J
resultOfOperation
½½J [
)
½½[ \
;
½½\ ]
}
ΎΎ 
try
ΏΏ 
{
ΐΐ 
using
ΑΑ 
(
ΑΑ 
var
ΑΑ 
	contextBD
ΑΑ $
=
ΑΑ% &
new
ΑΑ' *!
JeopardyDBContainer
ΑΑ+ >
(
ΑΑ> ?
)
ΑΑ? @
)
ΑΑ@ A
{
ΒΒ 
var
ΓΓ 
player
ΓΓ 
=
ΓΓ  
	contextBD
ΓΓ! *
.
ΓΓ* +
Players
ΓΓ+ 2
.
ΓΓ2 3
FirstOrDefault
ΓΓ3 A
(
ΓΓA B
p
ΓΓB C
=>
ΓΓD F
p
ΓΓG H
.
ΓΓH I
User_IdUser
ΓΓI T
==
ΓΓU W
idUser
ΓΓX ^
)
ΓΓ^ _
;
ΓΓ_ `
if
ΕΕ 
(
ΕΕ 
player
ΕΕ 
!=
ΕΕ !
null
ΕΕ" &
)
ΕΕ& '
{
ΖΖ 
player
ΘΘ 
.
ΘΘ 
	NoReports
ΘΘ (
++
ΘΘ( *
;
ΘΘ* +
int
ΙΙ 
resultEvent
ΙΙ '
=
ΙΙ( )
	contextBD
ΙΙ* 3
.
ΙΙ3 4
SaveChanges
ΙΙ4 ?
(
ΙΙ? @
)
ΙΙ@ A
;
ΙΙA B
resultOfOperation
ΚΚ )
.
ΚΚ) *
ObjectSaved
ΚΚ* 5
=
ΚΚ6 7
resultEvent
ΚΚ8 C
;
ΚΚC D
if
ΛΛ 
(
ΛΛ 
resultEvent
ΛΛ '
>
ΛΛ( )
$num
ΛΛ* +
)
ΛΛ+ ,
{
ΜΜ 
resultOfOperation
ΝΝ -
.
ΝΝ- .
	CodeEvent
ΝΝ. 7
=
ΝΝ8 9!
ExceptionDictionary
ΝΝ: M
.
ΝΝM N
SUCCESFULL_EVENT
ΝΝN ^
;
ΝΝ^ _
}
ΞΞ 
else
ΟΟ 
{
ΠΠ 
resultOfOperation
ΡΡ -
.
ΡΡ- .
	CodeEvent
ΡΡ. 7
=
ΡΡ8 9!
ExceptionDictionary
ΡΡ: M
.
ΡΡM N 
UNSUCCESFULL_EVENT
ΡΡN `
;
ΡΡ` a
}
ÒÒ 
}
ΣΣ 
else
ΤΤ 
{
ΥΥ 
resultOfOperation
ΦΦ )
.
ΦΦ) *
	CodeEvent
ΦΦ* 3
=
ΦΦ4 5!
ExceptionDictionary
ΦΦ6 I
.
ΦΦI J 
UNSUCCESFULL_EVENT
ΦΦJ \
;
ΦΦ\ ]
}
ΧΧ 
}
ΨΨ 
}
ΩΩ 
catch
ΪΪ 
(
ΪΪ 
DbUpdateException
ΪΪ $
ex
ΪΪ% '
)
ΪΪ' (
{
ΫΫ 
resultOfOperation
άά !
=
άά" #
ExceptionHandler
άά$ 4
.
άά4 5+
HandleExceptionDataAccesLevel
άά5 R
(
άάR S
resultOfOperation
άάS d
,
άάd e
ex
άάf h
)
άάh i
;
άάi j
ExceptionHandler
έέ  
.
έέ  !
LogException
έέ! -
(
έέ- .
ex
έέ. 0
,
έέ0 1!
ExceptionDictionary
έέ2 E
.
έέE F
FATAL_EXCEPTION
έέF U
)
έέU V
;
έέV W
}
ήή 
catch
ίί 
(
ίί #
ArgumentNullException
ίί (
ex
ίί) +
)
ίί+ ,
{
ΰΰ 
resultOfOperation
αα !
=
αα" #
ExceptionHandler
αα$ 4
.
αα4 5+
HandleExceptionDataAccesLevel
αα5 R
(
ααR S
resultOfOperation
ααS d
,
ααd e
ex
ααf h
)
ααh i
;
ααi j
ExceptionHandler
ββ  
.
ββ  !
LogException
ββ! -
(
ββ- .
ex
ββ. 0
,
ββ0 1!
ExceptionDictionary
ββ2 E
.
ββE F
FATAL_EXCEPTION
ββF U
)
ββU V
;
ββV W
}
γγ 
catch
δδ 
(
δδ 
EntityException
δδ "
ex
δδ# %
)
δδ% &
{
εε 
resultOfOperation
ζζ !
=
ζζ" #
ExceptionHandler
ζζ$ 4
.
ζζ4 5+
HandleExceptionDataAccesLevel
ζζ5 R
(
ζζR S
resultOfOperation
ζζS d
,
ζζd e
ex
ζζf h
)
ζζh i
;
ζζi j
ExceptionHandler
ηη  
.
ηη  !
LogException
ηη! -
(
ηη- .
ex
ηη. 0
,
ηη0 1!
ExceptionDictionary
ηη2 E
.
ηηE F
FATAL_EXCEPTION
ηηF U
)
ηηU V
;
ηηV W
}
θθ 
catch
ιι 
(
ιι 
SqlException
ιι 
ex
ιι  "
)
ιι" #
{
κκ 
resultOfOperation
λλ !
=
λλ" #
ExceptionHandler
λλ$ 4
.
λλ4 5+
HandleExceptionDataAccesLevel
λλ5 R
(
λλR S
resultOfOperation
λλS d
,
λλd e
ex
λλf h
)
λλh i
;
λλi j
ExceptionHandler
μμ  
.
μμ  !
LogException
μμ! -
(
μμ- .
ex
μμ. 0
,
μμ0 1!
ExceptionDictionary
μμ2 E
.
μμE F
FATAL_EXCEPTION
μμF U
)
μμU V
;
μμV W
}
νν 
catch
ξξ 
(
ξξ )
DbEntityValidationException
ξξ .
ex
ξξ/ 1
)
ξξ1 2
{
οο 
resultOfOperation
ππ !
=
ππ" #
ExceptionHandler
ππ$ 4
.
ππ4 5+
HandleExceptionDataAccesLevel
ππ5 R
(
ππR S
resultOfOperation
ππS d
,
ππd e
ex
ππf h
)
ππh i
;
ππi j
ExceptionHandler
ρρ  
.
ρρ  !
LogException
ρρ! -
(
ρρ- .
ex
ρρ. 0
,
ρρ0 1!
ExceptionDictionary
ρρ2 E
.
ρρE F
FATAL_EXCEPTION
ρρF U
)
ρρU V
;
ρρV W
}
ςς 
return
σσ 
resultOfOperation
σσ $
;
σσ$ %
}
ττ 	
}
υυ 
}φφ οή
‚C:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameServer\JeopardyGame.Data\DataAccess\GameDataOperation.cs
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
(cc? @

Propertiescc@ J
.ccJ K
BdTableNamesccK W
.ccW X
	TableHostccX a
)cca b
.ccb c
FirstOrDefaultccc q
(ccq r
gameccr v
=>ccw y
gameccz ~
.cc~ 
RoomCode	cc ‡
==
cc 
roomCode
cc‹ “
)
cc“ ”
;
cc” •
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
€€ 
resultOfOperation
 !
=
" #
ExceptionHandler
$ 4
.
4 5+
HandleExceptionDataAccesLevel
5 R
(
R S
resultOfOperation
S d
,
d e
ex
f h
)
h i
;
i j
ExceptionHandler
‚‚  
.
‚‚  !
LogException
‚‚! -
(
‚‚- .
ex
‚‚. 0
,
‚‚0 1!
ExceptionDictionary
‚‚2 E
.
‚‚E F
FATAL_EXCEPTION
‚‚F U
)
‚‚U V
;
‚‚V W
}
ƒƒ 
catch
„„ 
(
„„ )
DbEntityValidationException
„„ .
ex
„„/ 1
)
„„1 2
{
…… 
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
‡‡  
.
‡‡  !
LogException
‡‡! -
(
‡‡- .
ex
‡‡. 0
,
‡‡0 1!
ExceptionDictionary
‡‡2 E
.
‡‡E F
FATAL_EXCEPTION
‡‡F U
)
‡‡U V
;
‡‡V W
}
 
return
‰‰ 
resultOfOperation
‰‰ $
;
‰‰$ %
}
 	
public
 
static
  
GenericClassServer
 (
<
( )
List
) -
<
- .
Category
. 6
>
6 7
>
7 8
Get10Categories
9 H
(
H I
)
I J
{
 	 
GenericClassServer
 
<
 
List
 #
<
# $
Category
$ ,
>
, -
>
- .
resultOfOperation
/ @
=
A B
new
C F 
GenericClassServer
G Y
<
Y Z
List
Z ^
<
^ _
Category
_ g
>
g h
>
h i
(
i j
)
j k
;
k l
try
 
{
 
using
‘‘ 
(
‘‘ 
var
‘‘ 
	contextBD
‘‘ $
=
‘‘% &
new
‘‘' *!
JeopardyDBContainer
‘‘+ >
(
‘‘> ?
)
‘‘? @
)
‘‘@ A
{
’’ 
var
““ 

categories
““ "
=
““# $
	contextBD
““% .
.
““. /

Categories
““/ 9
.
““9 :
Where
““: ?
(
““? @
category
““@ H
=>
““I K
category
““L T
.
““T U

IdCategory
““U _
!=
““` b
SPECIAL_CATEGORY
““c s
)
““s t
.
““t u
ToList
““u {
(
““{ |
)
““| }
;
““} ~
Random
”” 
random
”” !
=
””" #
new
””$ '
Random
””( .
(
””. /
)
””/ 0
;
””0 1
List
•• 
<
•• 
Category
•• !
>
••! "
categoriesList
••# 1
=
••2 3

categories
••4 >
.
••> ?
OrderBy
••? F
(
••F G
category
••G O
=>
••P R
random
••S Y
.
••Y Z
Next
••Z ^
(
••^ _
)
••_ `
)
••` a
.
••a b
Take
••b f
(
••f g"
NUMBER_OF_CATEGORIES
••g {
)
••{ |
.
••| }
ToList••} ƒ
(••ƒ „
)••„ …
;••… †
if
–– 
(
–– 
categoriesList
–– &
.
––& '
Count
––' ,
==
––- /"
NUMBER_OF_CATEGORIES
––0 D
)
––D E
{
—— 
resultOfOperation
 )
.
) *
	CodeEvent
* 3
=
4 5!
ExceptionDictionary
6 I
.
I J
SUCCESFULL_EVENT
J Z
;
Z [
}
™™ 
else
 
{
›› 
resultOfOperation
 )
.
) *
	CodeEvent
* 3
=
4 5!
ExceptionDictionary
6 I
.
I J 
UNSUCCESFULL_EVENT
J \
;
\ ]
}
 
resultOfOperation
 %
.
% &
ObjectSaved
& 1
=
2 3
categoriesList
4 B
;
B C
return
 
resultOfOperation
 ,
;
, -
}
   
}
΅΅ 
catch
ΆΆ 
(
ΆΆ #
ArgumentNullException
ΆΆ (
ex
ΆΆ) +
)
ΆΆ+ ,
{
££ 
resultOfOperation
¤¤ !
=
¤¤" #
ExceptionHandler
¤¤$ 4
.
¤¤4 5+
HandleExceptionDataAccesLevel
¤¤5 R
(
¤¤R S
resultOfOperation
¤¤S d
,
¤¤d e
ex
¤¤f h
)
¤¤h i
;
¤¤i j
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
¦¦ 
catch
§§ 
(
§§ 
EntityException
§§ "
ex
§§# %
)
§§% &
{
¨¨ 
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
«« 
catch
¬¬ 
(
¬¬ 
SqlException
¬¬ 
ex
¬¬  "
)
¬¬" #
{
­­ 
resultOfOperation
®® !
=
®®" #
ExceptionHandler
®®$ 4
.
®®4 5+
HandleExceptionDataAccesLevel
®®5 R
(
®®R S
resultOfOperation
®®S d
,
®®d e
ex
®®f h
)
®®h i
;
®®i j
ExceptionHandler
――  
.
――  !
LogException
――! -
(
――- .
ex
――. 0
,
――0 1!
ExceptionDictionary
――2 E
.
――E F
FATAL_EXCEPTION
――F U
)
――U V
;
――V W
}
°° 
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
²² 
resultOfOperation
³³ !
=
³³" #
ExceptionHandler
³³$ 4
.
³³4 5+
HandleExceptionDataAccesLevel
³³5 R
(
³³R S
resultOfOperation
³³S d
,
³³d e
ex
³³f h
)
³³h i
;
³³i j
ExceptionHandler
΄΄  
.
΄΄  !
LogException
΄΄! -
(
΄΄- .
ex
΄΄. 0
,
΄΄0 1!
ExceptionDictionary
΄΄2 E
.
΄΄E F
FATAL_EXCEPTION
΄΄F U
)
΄΄U V
;
΄΄V W
}
µµ 
return
¶¶ 
resultOfOperation
¶¶ $
;
¶¶$ %
}
·· 	
public
ΉΉ 
static
ΉΉ  
GenericClassServer
ΉΉ (
<
ΉΉ( )
List
ΉΉ) -
<
ΉΉ- .
Question
ΉΉ. 6
>
ΉΉ6 7
>
ΉΉ7 8$
GetQuestionsByCategory
ΉΉ9 O
(
ΉΉO P
List
ΉΉP T
<
ΉΉT U
Category
ΉΉU ]
>
ΉΉ] ^

categories
ΉΉ_ i
)
ΉΉi j
{
ΊΊ 	 
GenericClassServer
ΌΌ 
<
ΌΌ 
List
ΌΌ #
<
ΌΌ# $
Question
ΌΌ$ ,
>
ΌΌ, -
>
ΌΌ- .
resultOfOperation
ΌΌ/ @
=
ΌΌA B
new
ΌΌC F 
GenericClassServer
ΌΌG Y
<
ΌΌY Z
List
ΌΌZ ^
<
ΌΌ^ _
Question
ΌΌ_ g
>
ΌΌg h
>
ΌΌh i
(
ΌΌi j
)
ΌΌj k
;
ΌΌk l
if
½½ 
(
½½ 

categories
½½ 
==
½½ 
null
½½ "
)
½½" #
{
ΎΎ 
return
ΏΏ #
NullParametersHandler
ΏΏ ,
.
ΏΏ, -*
HandleNullParametersDataBase
ΏΏ- I
(
ΏΏI J
resultOfOperation
ΏΏJ [
)
ΏΏ[ \
;
ΏΏ\ ]
}
ΐΐ 
try
ΑΑ 
{
ΒΒ 
using
ΓΓ 
(
ΓΓ 
var
ΓΓ 
	contextBD
ΓΓ $
=
ΓΓ% &
new
ΓΓ' *!
JeopardyDBContainer
ΓΓ+ >
(
ΓΓ> ?
)
ΓΓ? @
)
ΓΓ@ A
{
ΔΔ 
List
ΕΕ 
<
ΕΕ 
Question
ΕΕ !
>
ΕΕ! "
	questions
ΕΕ# ,
=
ΕΕ- .
new
ΕΕ/ 2
List
ΕΕ3 7
<
ΕΕ7 8
Question
ΕΕ8 @
>
ΕΕ@ A
(
ΕΕA B
)
ΕΕB C
;
ΕΕC D
foreach
ΖΖ 
(
ΖΖ 
var
ΖΖ  
category
ΖΖ! )
in
ΖΖ* ,

categories
ΖΖ- 7
)
ΖΖ7 8
{
ΗΗ 
	contextBD
ΘΘ !
.
ΘΘ! "
Configuration
ΘΘ" /
.
ΘΘ/ 0 
LazyLoadingEnabled
ΘΘ0 B
=
ΘΘC D
false
ΘΘE J
;
ΘΘJ K
List
ΙΙ 
<
ΙΙ 
Question
ΙΙ %
>
ΙΙ% &!
questionPerCategory
ΙΙ' :
=
ΙΙ; <
	contextBD
ΙΙ= F
.
ΙΙF G
	Questions
ΙΙG P
.
ΙΙP Q
Include
ΙΙQ X
(
ΙΙX Y

Properties
ΙΙY c
.
ΙΙc d
BdTableNames
ΙΙd p
.
ΙΙp q
TableAnswer
ΙΙq |
)
ΙΙ| }
.
ΙΙ} ~
IncludeΙΙ~ …
(ΙΙ… †

PropertiesΙΙ† 
.ΙΙ ‘
BdTableNamesΙΙ‘ 
.ΙΙ 
TableCategoryΙΙ «
)ΙΙ« ¬
.ΙΙ¬ ­
WhereΙΙ­ ²
(ΙΙ² ³
questionΙΙ³ »
=>ΙΙΌ Ύ
questionΙΙΏ Η
.ΙΙΗ Θ"
CategoryIdCategoryΙΙΘ Ϊ
==ΙΙΫ έ
categoryΙΙή ζ
.ΙΙζ η

IdCategoryΙΙη ρ
)ΙΙρ ς
.ΙΙς σ
ToListΙΙσ ω
(ΙΙω ϊ
)ΙΙϊ ϋ
;ΙΙϋ ό
var
ΚΚ 
questionByPoints
ΚΚ ,
=
ΚΚ- .!
questionPerCategory
ΚΚ/ B
.
ΚΚB C
Where
ΚΚC H
(
ΚΚH I
questionPoints
ΚΚI W
=>
ΚΚX Z
questionPoints
ΚΚ[ i
.
ΚΚi j

ValueWorth
ΚΚj t
==
ΚΚu w&
VALUE_OF_EASY_QUESTIONSΚΚx 
)ΚΚ 
.ΚΚ ‘
ToListΚΚ‘ —
(ΚΚ— 
)ΚΚ ™
;ΚΚ™ 
Random
ΛΛ 
random
ΛΛ %
=
ΛΛ& '
new
ΛΛ( +
Random
ΛΛ, 2
(
ΛΛ2 3
)
ΛΛ3 4
;
ΛΛ4 5
	questions
ΜΜ !
.
ΜΜ! "
Add
ΜΜ" %
(
ΜΜ% &
questionByPoints
ΜΜ& 6
.
ΜΜ6 7
OrderBy
ΜΜ7 >
(
ΜΜ> ?
questionSelected
ΜΜ? O
=>
ΜΜP R
random
ΜΜS Y
.
ΜΜY Z
Next
ΜΜZ ^
(
ΜΜ^ _
)
ΜΜ_ `
)
ΜΜ` a
.
ΜΜa b
First
ΜΜb g
(
ΜΜg h
)
ΜΜh i
)
ΜΜi j
;
ΜΜj k
questionByPoints
ΝΝ (
=
ΝΝ) *!
questionPerCategory
ΝΝ+ >
.
ΝΝ> ?
Where
ΝΝ? D
(
ΝΝD E
questionPoints
ΝΝE S
=>
ΝΝT V
questionPoints
ΝΝW e
.
ΝΝe f

ValueWorth
ΝΝf p
==
ΝΝq s(
VALUE_OF_MEDIUM_QUESTIONSΝΝt 
)ΝΝ 
.ΝΝ 
ToListΝΝ •
(ΝΝ• –
)ΝΝ– —
;ΝΝ— 
	questions
ΞΞ !
.
ΞΞ! "
Add
ΞΞ" %
(
ΞΞ% &
questionByPoints
ΞΞ& 6
.
ΞΞ6 7
OrderBy
ΞΞ7 >
(
ΞΞ> ?
questionSelected
ΞΞ? O
=>
ΞΞP R
random
ΞΞS Y
.
ΞΞY Z
Next
ΞΞZ ^
(
ΞΞ^ _
)
ΞΞ_ `
)
ΞΞ` a
.
ΞΞa b
First
ΞΞb g
(
ΞΞg h
)
ΞΞh i
)
ΞΞi j
;
ΞΞj k
questionByPoints
ΟΟ (
=
ΟΟ) *!
questionPerCategory
ΟΟ+ >
.
ΟΟ> ?
Where
ΟΟ? D
(
ΟΟD E
questionPoints
ΟΟE S
=>
ΟΟT V
questionPoints
ΟΟW e
.
ΟΟe f

ValueWorth
ΟΟf p
==
ΟΟq s&
VALUE_OF_HARD_QUESTIONSΟΟt ‹
)ΟΟ‹ 
.ΟΟ 
ToListΟΟ “
(ΟΟ“ ”
)ΟΟ” •
;ΟΟ• –
	questions
ΠΠ !
.
ΠΠ! "
Add
ΠΠ" %
(
ΠΠ% &
questionByPoints
ΠΠ& 6
.
ΠΠ6 7
OrderBy
ΠΠ7 >
(
ΠΠ> ?
questionSelected
ΠΠ? O
=>
ΠΠP R
random
ΠΠS Y
.
ΠΠY Z
Next
ΠΠZ ^
(
ΠΠ^ _
)
ΠΠ_ `
)
ΠΠ` a
.
ΠΠa b
First
ΠΠb g
(
ΠΠg h
)
ΠΠh i
)
ΠΠi j
;
ΠΠj k
}
ΡΡ 
if
ÒÒ 
(
ÒÒ 
	questions
ÒÒ !
.
ÒÒ! "
Count
ÒÒ" '
==
ÒÒ( **
NUMBER_OF_QUESTIONS_IN_TOTAL
ÒÒ+ G
)
ÒÒG H
{
ΣΣ  
GenericClassServer
ΤΤ *
<
ΤΤ* +
Question
ΤΤ+ 3
>
ΤΤ3 4
finalQuestion
ΤΤ5 B
=
ΤΤC D
GetFinalQuestions
ΤΤE V
(
ΤΤV W
)
ΤΤW X
;
ΤΤX Y
if
ΥΥ 
(
ΥΥ 
finalQuestion
ΥΥ )
.
ΥΥ) *
	CodeEvent
ΥΥ* 3
==
ΥΥ4 6!
ExceptionDictionary
ΥΥ7 J
.
ΥΥJ K
SUCCESFULL_EVENT
ΥΥK [
)
ΥΥ[ \
{
ΦΦ 
	questions
ΧΧ %
.
ΧΧ% &
Add
ΧΧ& )
(
ΧΧ) *
finalQuestion
ΧΧ* 7
.
ΧΧ7 8
ObjectSaved
ΧΧ8 C
)
ΧΧC D
;
ΧΧD E
resultOfOperation
ΨΨ -
.
ΨΨ- .
	CodeEvent
ΨΨ. 7
=
ΨΨ8 9!
ExceptionDictionary
ΨΨ: M
.
ΨΨM N
SUCCESFULL_EVENT
ΨΨN ^
;
ΨΨ^ _
}
ΩΩ 
else
ΪΪ 
{
ΫΫ 
resultOfOperation
άά -
.
άά- .
	CodeEvent
άά. 7
=
άά8 9
finalQuestion
άά: G
.
άάG H
	CodeEvent
άάH Q
;
άάQ R
}
έέ 
}
ήή 
else
ίί 
{
ΰΰ 
resultOfOperation
αα )
.
αα) *
	CodeEvent
αα* 3
=
αα4 5!
ExceptionDictionary
αα6 I
.
ααI J 
UNSUCCESFULL_EVENT
ααJ \
;
αα\ ]
}
ββ 
resultOfOperation
γγ %
.
γγ% &
ObjectSaved
γγ& 1
=
γγ2 3
	questions
γγ4 =
;
γγ= >
return
δδ 
resultOfOperation
δδ ,
;
δδ, -
}
εε 
}
ζζ 
catch
ηη 
(
ηη #
ArgumentNullException
ηη (
ex
ηη) +
)
ηη+ ,
{
θθ 
resultOfOperation
ιι !
=
ιι" #
ExceptionHandler
ιι$ 4
.
ιι4 5+
HandleExceptionDataAccesLevel
ιι5 R
(
ιιR S
resultOfOperation
ιιS d
,
ιιd e
ex
ιιf h
)
ιιh i
;
ιιi j
ExceptionHandler
κκ  
.
κκ  !
LogException
κκ! -
(
κκ- .
ex
κκ. 0
,
κκ0 1!
ExceptionDictionary
κκ2 E
.
κκE F
FATAL_EXCEPTION
κκF U
)
κκU V
;
κκV W
}
λλ 
catch
μμ 
(
μμ 
EntityException
μμ "
ex
μμ# %
)
μμ% &
{
νν 
resultOfOperation
ξξ !
=
ξξ" #
ExceptionHandler
ξξ$ 4
.
ξξ4 5+
HandleExceptionDataAccesLevel
ξξ5 R
(
ξξR S
resultOfOperation
ξξS d
,
ξξd e
ex
ξξf h
)
ξξh i
;
ξξi j
ExceptionHandler
οο  
.
οο  !
LogException
οο! -
(
οο- .
ex
οο. 0
,
οο0 1!
ExceptionDictionary
οο2 E
.
οοE F
FATAL_EXCEPTION
οοF U
)
οοU V
;
οοV W
}
ππ 
catch
ρρ 
(
ρρ 
SqlException
ρρ 
ex
ρρ  "
)
ρρ" #
{
ςς 
resultOfOperation
σσ !
=
σσ" #
ExceptionHandler
σσ$ 4
.
σσ4 5+
HandleExceptionDataAccesLevel
σσ5 R
(
σσR S
resultOfOperation
σσS d
,
σσd e
ex
σσf h
)
σσh i
;
σσi j
ExceptionHandler
ττ  
.
ττ  !
LogException
ττ! -
(
ττ- .
ex
ττ. 0
,
ττ0 1!
ExceptionDictionary
ττ2 E
.
ττE F
FATAL_EXCEPTION
ττF U
)
ττU V
;
ττV W
}
υυ 
catch
φφ 
(
φφ )
DbEntityValidationException
φφ .
ex
φφ/ 1
)
φφ1 2
{
χχ 
resultOfOperation
ψψ !
=
ψψ" #
ExceptionHandler
ψψ$ 4
.
ψψ4 5+
HandleExceptionDataAccesLevel
ψψ5 R
(
ψψR S
resultOfOperation
ψψS d
,
ψψd e
ex
ψψf h
)
ψψh i
;
ψψi j
ExceptionHandler
ωω  
.
ωω  !
LogException
ωω! -
(
ωω- .
ex
ωω. 0
,
ωω0 1!
ExceptionDictionary
ωω2 E
.
ωωE F
FATAL_EXCEPTION
ωωF U
)
ωωU V
;
ωωV W
}
ϊϊ 
return
ϋϋ 
resultOfOperation
ϋϋ $
;
ϋϋ$ %
}
όό 	
public
ώώ 
static
ώώ  
GenericClassServer
ώώ (
<
ώώ( )
Question
ώώ) 1
>
ώώ1 2
GetFinalQuestions
ώώ3 D
(
ώώD E
)
ώώE F
{
ÿÿ 	 
GenericClassServer
€€ 
<
€€ 
Question
€€ '
>
€€' (
resultOfOperation
€€) :
=
€€; <
new
€€= @ 
GenericClassServer
€€A S
<
€€S T
Question
€€T \
>
€€\ ]
(
€€] ^
)
€€^ _
;
€€_ `
try
 
{
‚‚ 
using
ƒƒ 
(
ƒƒ 
var
ƒƒ 
	contextBD
ƒƒ $
=
ƒƒ% &
new
ƒƒ' *!
JeopardyDBContainer
ƒƒ+ >
(
ƒƒ> ?
)
ƒƒ? @
)
ƒƒ@ A
{
„„ 
	contextBD
…… 
.
…… 
Configuration
…… +
.
……+ , 
LazyLoadingEnabled
……, >
=
……? @
false
……A F
;
……F G
var
†† 

categories
†† "
=
††" #
	contextBD
††$ -
.
††- .

Categories
††. 8
.
††8 9
Where
††9 >
(
††> ?
category
††? G
=>
††H J
category
††K S
.
††S T

IdCategory
††T ^
==
††_ a
SPECIAL_CATEGORY
††b r
)
††r s
.
††s t
ToList
††t z
(
††z {
)
††{ |
;
††| }
Random
‡‡ 
random
‡‡ !
=
‡‡" #
new
‡‡$ '
Random
‡‡( .
(
‡‡. /
)
‡‡/ 0
;
‡‡0 1
Category
 
specialCategory
 ,
=
- .

categories
/ 9
.
9 :
OrderBy
: A
(
A B
questionSelected
B R
=>
S U
random
V \
.
\ ]
Next
] a
(
a b
)
b c
)
c d
.
d e
FirstOrDefault
e s
(
s t
)
t u
;
u v
List
‰‰ 
<
‰‰ 
Question
‰‰ !
>
‰‰! "!
questionPerCategory
‰‰# 6
=
‰‰7 8
	contextBD
‰‰9 B
.
‰‰B C
	Questions
‰‰C L
.
‰‰L M
Include
‰‰M T
(
‰‰T U

Properties
‰‰U _
.
‰‰_ `
BdTableNames
‰‰` l
.
‰‰l m
TableAnswer
‰‰m x
)
‰‰x y
.
‰‰y z
Include‰‰z 
(‰‰ ‚

Properties‰‰‚ 
.‰‰ 
BdTableNames‰‰ ™
.‰‰™ 
TableCategory‰‰ §
)‰‰§ ¨
.‰‰¨ ©
Where‰‰© ®
(‰‰® ―
question‰‰― ·
=>‰‰Έ Ί
question‰‰» Γ
.‰‰Γ Δ"
CategoryIdCategory‰‰Δ Φ
==‰‰Χ Ω
specialCategory‰‰Ϊ ι
.‰‰ι κ

IdCategory‰‰κ τ
)‰‰τ υ
.‰‰υ φ
ToList‰‰φ ό
(‰‰ό ύ
)‰‰ύ ώ
;‰‰ώ ÿ
var
 
lastQuestion
 $
=
% &!
questionPerCategory
' :
.
: ;
OrderBy
; B
(
B C
question
C K
=>
L N
random
O U
.
U V
Next
V Z
(
Z [
)
[ \
)
\ ]
.
] ^
First
^ c
(
c d
)
d e
;
e f
if
‹‹ 
(
‹‹ 
lastQuestion
‹‹ $
!=
‹‹% '
null
‹‹( ,
)
‹‹, -
{
 
resultOfOperation
 )
.
) *
	CodeEvent
* 3
=
4 5!
ExceptionDictionary
6 I
.
I J
SUCCESFULL_EVENT
J Z
;
Z [
}
 
else
 
{
 
resultOfOperation
‘‘ )
.
‘‘) *
	CodeEvent
‘‘* 3
=
‘‘4 5!
ExceptionDictionary
‘‘6 I
.
‘‘I J 
UNSUCCESFULL_EVENT
‘‘J \
;
‘‘\ ]
}
’’ 
resultOfOperation
““ %
.
““% &
ObjectSaved
““& 1
=
““2 3
lastQuestion
““4 @
;
““@ A
return
”” 
resultOfOperation
”” ,
;
””, -
}
•• 
}
–– 
catch
—— 
(
—— #
ArgumentNullException
—— (
ex
——) +
)
——+ ,
{
 
resultOfOperation
™™ !
=
™™" #
ExceptionHandler
™™$ 4
.
™™4 5+
HandleExceptionDataAccesLevel
™™5 R
(
™™R S
resultOfOperation
™™S d
,
™™d e
ex
™™f h
)
™™h i
;
™™i j
ExceptionHandler
  
.
  !
LogException
! -
(
- .
ex
. 0
,
0 1!
ExceptionDictionary
2 E
.
E F
FATAL_EXCEPTION
F U
)
U V
;
V W
}
›› 
catch
 
(
 
EntityException
 "
ex
# %
)
% &
{
 
resultOfOperation
 !
=
" #
ExceptionHandler
$ 4
.
4 5+
HandleExceptionDataAccesLevel
5 R
(
R S
resultOfOperation
S d
,
d e
ex
f h
)
h i
;
i j
ExceptionHandler
  
.
  !
LogException
! -
(
- .
ex
. 0
,
0 1!
ExceptionDictionary
2 E
.
E F
FATAL_EXCEPTION
F U
)
U V
;
V W
}
   
catch
΅΅ 
(
΅΅ 
SqlException
΅΅ 
ex
΅΅  "
)
΅΅" #
{
ΆΆ 
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
¤¤  
.
¤¤  !
LogException
¤¤! -
(
¤¤- .
ex
¤¤. 0
,
¤¤0 1!
ExceptionDictionary
¤¤2 E
.
¤¤E F
FATAL_EXCEPTION
¤¤F U
)
¤¤U V
;
¤¤V W
}
¥¥ 
catch
¦¦ 
(
¦¦ )
DbEntityValidationException
¦¦ .
ex
¦¦/ 1
)
¦¦1 2
{
§§ 
resultOfOperation
¨¨ !
=
¨¨" #
ExceptionHandler
¨¨$ 4
.
¨¨4 5+
HandleExceptionDataAccesLevel
¨¨5 R
(
¨¨R S
resultOfOperation
¨¨S d
,
¨¨d e
ex
¨¨f h
)
¨¨h i
;
¨¨i j
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
ªª 
return
«« 
resultOfOperation
«« $
;
««$ %
}
¬¬ 	
public
®® 
static
®®  
GenericClassServer
®® (
<
®®( )
List
®®) -
<
®®- .
Awnser
®®. 4
>
®®4 5
>
®®5 6#
GetAwnsersOfQuestions
®®7 L
(
®®L M
List
®®M Q
<
®®Q R
Question
®®R Z
>
®®Z [
	questions
®®\ e
)
®®e f
{
―― 	 
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
²² 
(
²² 
	questions
²² 
==
²² 
null
²² !
)
²²! "
{
³³ 
return
΄΄ #
NullParametersHandler
΄΄ ,
.
΄΄, -*
HandleNullParametersDataBase
΄΄- I
(
΄΄I J
resultOfOperation
΄΄J [
)
΄΄[ \
;
΄΄\ ]
}
µµ 
try
¶¶ 
{
·· 
using
ΈΈ 
(
ΈΈ 
var
ΈΈ 
	contextBD
ΈΈ $
=
ΈΈ% &
new
ΈΈ' *!
JeopardyDBContainer
ΈΈ+ >
(
ΈΈ> ?
)
ΈΈ? @
)
ΈΈ@ A
{
ΉΉ 
List
ΊΊ 
<
ΊΊ 
Awnser
ΊΊ 
>
ΊΊ  
answersToReturn
ΊΊ! 0
=
ΊΊ1 2
new
ΊΊ3 6
List
ΊΊ7 ;
<
ΊΊ; <
Awnser
ΊΊ< B
>
ΊΊB C
(
ΊΊC D
)
ΊΊD E
;
ΊΊE F
foreach
»» 
(
»» 
var
»»  
question
»»! )
in
»»* ,
	questions
»»- 6
)
»»6 7
{
ΌΌ 
	contextBD
½½ !
.
½½! "
Configuration
½½" /
.
½½/ 0 
LazyLoadingEnabled
½½0 B
=
½½C D
false
½½E J
;
½½J K
List
ΎΎ 
<
ΎΎ 
Awnser
ΎΎ #
>
ΎΎ# $
rightAnswer
ΎΎ% 0
=
ΎΎ1 2
	contextBD
ΎΎ3 <
.
ΎΎ< =
Awnsers
ΎΎ= D
.
ΎΎD E
Include
ΎΎE L
(
ΎΎL M

Properties
ΎΎM W
.
ΎΎW X
BdTableNames
ΎΎX d
.
ΎΎd e
TableCategory
ΎΎe r
)
ΎΎr s
.
ΎΎs t
Where
ΎΎt y
(
ΎΎy z
answerΎΎz €
=>ΎΎ ƒ
answerΎΎ„ 
.ΎΎ ‹
IdAwnserΎΎ‹ “
==ΎΎ” –
questionΎΎ— 
.ΎΎ  
AwnserΎΎ  ¦
.ΎΎ¦ §
IdAwnserΎΎ§ ―
)ΎΎ― °
.ΎΎ° ±
ToListΎΎ± ·
(ΎΎ· Έ
)ΎΎΈ Ή
;ΎΎΉ Ί
var
ΏΏ %
wrongAnswersPerQuestion
ΏΏ 3
=
ΏΏ4 5
	contextBD
ΏΏ6 ?
.
ΏΏ? @
Awnsers
ΏΏ@ G
.
ΏΏG H
Include
ΏΏH O
(
ΏΏO P

Properties
ΏΏP Z
.
ΏΏZ [
BdTableNames
ΏΏ[ g
.
ΏΏg h
TableCategory
ΏΏh u
)
ΏΏu v
.
ΏΏv w
Where
ΏΏw |
(
ΏΏ| }
answerΏΏ} ƒ
=>ΏΏ„ †
answerΏΏ‡ 
.ΏΏ 
CategoryΏΏ –
.ΏΏ– —

IdCategoryΏΏ— ΅
==ΏΏΆ ¤
questionΏΏ¥ ­
.ΏΏ­ ®
CategoryΏΏ® ¶
.ΏΏ¶ ·

IdCategoryΏΏ· Α
&&ΏΏΒ Δ
answerΏΏΕ Λ
.ΏΏΛ Μ
IdAwnserΏΏΜ Τ
!=ΏΏΥ Χ
questionΏΏΨ ΰ
.ΏΏΰ α
AwnserΏΏα η
.ΏΏη θ
IdAwnserΏΏθ π
)ΏΏπ ρ
.ΏΏρ ς
ToListΏΏς ψ
(ΏΏψ ω
)ΏΏω ϊ
;ΏΏϊ ϋ
answersToReturn
ΐΐ '
.
ΐΐ' (
Add
ΐΐ( +
(
ΐΐ+ ,
rightAnswer
ΐΐ, 7
.
ΐΐ7 8
FirstOrDefault
ΐΐ8 F
(
ΐΐF G
)
ΐΐG H
)
ΐΐH I
;
ΐΐI J
Random
ΑΑ 
random
ΑΑ %
=
ΑΑ& '
new
ΑΑ( +
Random
ΑΑ, 2
(
ΑΑ2 3
)
ΑΑ3 4
;
ΑΑ4 5
answersToReturn
ΒΒ '
.
ΒΒ' (
AddRange
ΒΒ( 0
(
ΒΒ0 1%
wrongAnswersPerQuestion
ΒΒ1 H
.
ΒΒH I
OrderBy
ΒΒI P
(
ΒΒP Q
answerSelected
ΒΒQ _
=>
ΒΒ` b
random
ΒΒc i
.
ΒΒi j
Next
ΒΒj n
(
ΒΒn o
)
ΒΒo p
)
ΒΒp q
.
ΒΒq r
Take
ΒΒr v
(
ΒΒv w
$num
ΒΒw x
)
ΒΒx y
.
ΒΒy z
ToListΒΒz €
(ΒΒ€ 
)ΒΒ ‚
)ΒΒ‚ ƒ
;ΒΒƒ „
}
ΓΓ 
if
ΔΔ 
(
ΔΔ 
answersToReturn
ΔΔ '
.
ΔΔ' (
Count
ΔΔ( -
==
ΔΔ. 0%
NUMBER_OF_TOTAL_ANSWERS
ΔΔ1 H
)
ΔΔH I
{
ΕΕ 
resultOfOperation
ΖΖ )
.
ΖΖ) *
	CodeEvent
ΖΖ* 3
=
ΖΖ4 5!
ExceptionDictionary
ΖΖ6 I
.
ΖΖI J
SUCCESFULL_EVENT
ΖΖJ Z
;
ΖΖZ [
}
ΗΗ 
else
ΘΘ 
{
ΙΙ 
resultOfOperation
ΚΚ )
.
ΚΚ) *
	CodeEvent
ΚΚ* 3
=
ΚΚ4 5!
ExceptionDictionary
ΚΚ6 I
.
ΚΚI J 
UNSUCCESFULL_EVENT
ΚΚJ \
;
ΚΚ\ ]
}
ΛΛ 
resultOfOperation
ΜΜ %
.
ΜΜ% &
ObjectSaved
ΜΜ& 1
=
ΜΜ2 3
answersToReturn
ΜΜ4 C
;
ΜΜC D
return
ΝΝ 
resultOfOperation
ΝΝ ,
;
ΝΝ, -
}
ΞΞ 
}
ΟΟ 
catch
ΠΠ 
(
ΠΠ #
ArgumentNullException
ΠΠ (
ex
ΠΠ) +
)
ΠΠ+ ,
{
ΡΡ 
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
ΣΣ  
.
ΣΣ  !
LogException
ΣΣ! -
(
ΣΣ- .
ex
ΣΣ. 0
,
ΣΣ0 1!
ExceptionDictionary
ΣΣ2 E
.
ΣΣE F
FATAL_EXCEPTION
ΣΣF U
)
ΣΣU V
;
ΣΣV W
}
ΤΤ 
catch
ΥΥ 
(
ΥΥ 
EntityException
ΥΥ "
ex
ΥΥ# %
)
ΥΥ% &
{
ΦΦ 
resultOfOperation
ΧΧ !
=
ΧΧ" #
ExceptionHandler
ΧΧ$ 4
.
ΧΧ4 5+
HandleExceptionDataAccesLevel
ΧΧ5 R
(
ΧΧR S
resultOfOperation
ΧΧS d
,
ΧΧd e
ex
ΧΧf h
)
ΧΧh i
;
ΧΧi j
ExceptionHandler
ΨΨ  
.
ΨΨ  !
LogException
ΨΨ! -
(
ΨΨ- .
ex
ΨΨ. 0
,
ΨΨ0 1!
ExceptionDictionary
ΨΨ2 E
.
ΨΨE F
FATAL_EXCEPTION
ΨΨF U
)
ΨΨU V
;
ΨΨV W
}
ΩΩ 
catch
ΪΪ 
(
ΪΪ 
SqlException
ΪΪ 
ex
ΪΪ  "
)
ΪΪ" #
{
ΫΫ 
resultOfOperation
άά !
=
άά" #
ExceptionHandler
άά$ 4
.
άά4 5+
HandleExceptionDataAccesLevel
άά5 R
(
άάR S
resultOfOperation
άάS d
,
άάd e
ex
άάf h
)
άάh i
;
άάi j
ExceptionHandler
έέ  
.
έέ  !
LogException
έέ! -
(
έέ- .
ex
έέ. 0
,
έέ0 1!
ExceptionDictionary
έέ2 E
.
έέE F
FATAL_EXCEPTION
έέF U
)
έέU V
;
έέV W
}
ήή 
catch
ίί 
(
ίί )
DbEntityValidationException
ίί .
ex
ίί/ 1
)
ίί1 2
{
ΰΰ 
resultOfOperation
αα !
=
αα" #
ExceptionHandler
αα$ 4
.
αα4 5+
HandleExceptionDataAccesLevel
αα5 R
(
ααR S
resultOfOperation
ααS d
,
ααd e
ex
ααf h
)
ααh i
;
ααi j
ExceptionHandler
ββ  
.
ββ  !
LogException
ββ! -
(
ββ- .
ex
ββ. 0
,
ββ0 1!
ExceptionDictionary
ββ2 E
.
ββE F
FATAL_EXCEPTION
ββF U
)
ββU V
;
ββV W
}
γγ 
return
δδ 
resultOfOperation
δδ $
;
δδ$ %
}
εε 	
public
ηη 
static
ηη 
int
ηη &
SaveGamePlayerInDataBase
ηη 2
(
ηη2 3

GamePlayer
ηη3 =
gamePlayers
ηη> I
)
ηηI J
{
θθ 	
int
ιι 
resultOfOperation
ιι !
=
ιι" #!
ExceptionDictionary
ιι$ 7
.
ιι7 8 
UNSUCCESFULL_EVENT
ιι8 J
;
ιιJ K
if
κκ 
(
κκ 
gamePlayers
κκ 
==
κκ 
null
κκ #
)
κκ# $
{
λλ 
return
μμ !
ExceptionDictionary
μμ *
.
μμ* +
NULL_PARAEMETER
μμ+ :
;
μμ: ;
}
νν 
try
ξξ 
{
οο 
using
ππ 
(
ππ 
var
ππ 
	contextBD
ππ $
=
ππ% &
new
ππ' *!
JeopardyDBContainer
ππ+ >
(
ππ> ?
)
ππ? @
)
ππ@ A
{
ρρ 
	contextBD
ςς 
.
ςς 
Games
ςς #
.
ςς# $
Attach
ςς$ *
(
ςς* +
gamePlayers
ςς+ 6
.
ςς6 7
Game
ςς7 ;
)
ςς; <
;
ςς< =
	contextBD
σσ 
.
σσ 
GamePlayers
σσ )
.
σσ) *
Add
σσ* -
(
σσ- .
gamePlayers
σσ. 9
)
σσ9 :
;
σσ: ;
int
ττ 
resultOfEvent
ττ %
=
ττ& '
	contextBD
ττ( 1
.
ττ1 2
SaveChanges
ττ2 =
(
ττ= >
)
ττ> ?
;
ττ? @
if
υυ 
(
υυ 
resultOfEvent
υυ %
>
υυ& '
$num
υυ( )
)
υυ) *
{
φφ 
resultOfOperation
χχ )
=
χχ* +!
UpdatePlayersPoints
χχ, ?
(
χχ? @
gamePlayers
χχ@ K
)
χχK L
;
χχL M
}
ψψ 
else
ωω 
{
ϊϊ 
resultOfOperation
ϋϋ )
=
ϋϋ* +!
ExceptionDictionary
ϋϋ, ?
.
ϋϋ? @ 
UNSUCCESFULL_EVENT
ϋϋ@ R
;
ϋϋR S
}
όό 
}
ύύ 
}
ώώ 
catch
ÿÿ 
(
ÿÿ 
UpdateException
ÿÿ "
ex
ÿÿ# %
)
ÿÿ% &
{
€€ 
resultOfOperation
 !
=
" #!
ExceptionDictionary
$ 7
.
7 8 
SAVE_CHANGES_ERROR
8 J
;
J K
ExceptionHandler
‚‚  
.
‚‚  !
LogException
‚‚! -
(
‚‚- .
ex
‚‚. 0
,
‚‚0 1!
ExceptionDictionary
‚‚2 E
.
‚‚E F
FATAL_EXCEPTION
‚‚F U
)
‚‚U V
;
‚‚V W
}
ƒƒ 
catch
„„ 
(
„„ 
DbUpdateException
„„ $
ex
„„% '
)
„„' (
{
…… 
resultOfOperation
†† !
=
††" #!
ExceptionDictionary
††# 6
.
††6 7 
SAVE_CHANGES_ERROR
††7 I
;
††I J
ExceptionHandler
‡‡  
.
‡‡  !
LogException
‡‡! -
(
‡‡- .
ex
‡‡. 0
.
‡‡0 1
GetBaseException
‡‡1 A
(
‡‡A B
)
‡‡B C
,
‡‡C D!
ExceptionDictionary
‡‡E X
.
‡‡X Y
FATAL_EXCEPTION
‡‡Y h
)
‡‡h i
;
‡‡i j
}
 
catch
‰‰ 
(
‰‰ #
ArgumentNullException
‰‰ (
ex
‰‰) +
)
‰‰+ ,
{
 
resultOfOperation
‹‹ !
=
‹‹" #!
ExceptionDictionary
‹‹$ 7
.
‹‹7 8
ARGUMENT_NULL
‹‹8 E
;
‹‹E F
ExceptionHandler
  
.
  !
LogException
! -
(
- .
ex
. 0
,
0 1!
ExceptionDictionary
2 E
.
E F
FATAL_EXCEPTION
F U
)
U V
;
V W
}
 
catch
 
(
 
EntityException
 "
ex
# %
)
% &
{
 
resultOfOperation
 !
=
" #!
ExceptionDictionary
$ 7
.
7 8
ENTITY_ERROR
8 D
;
D E
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
““ 
(
““ 
SqlException
““ 
ex
““  "
)
““" #
{
”” 
resultOfOperation
•• !
=
••" #!
ExceptionDictionary
••$ 7
.
••7 8
	SQL_ERROR
••8 A
;
••A B
ExceptionHandler
––  
.
––  !
LogException
––! -
(
––- .
ex
––. 0
,
––0 1!
ExceptionDictionary
––2 E
.
––E F
FATAL_EXCEPTION
––F U
)
––U V
;
––V W
}
—— 
catch
 
(
 )
DbEntityValidationException
 .
ex
/ 1
)
1 2
{
™™ 
resultOfOperation
 !
=
" #!
ExceptionDictionary
$ 7
.
7 8 
SAVE_CHANGES_ERROR
8 J
;
J K
ExceptionHandler
››  
.
››  !
LogException
››! -
(
››- .
ex
››. 0
,
››0 1!
ExceptionDictionary
››2 E
.
››E F
FATAL_EXCEPTION
››F U
)
››U V
;
››V W
}
 
return
 
resultOfOperation
 $
;
$ %
}
 	
public
   
static
   
int
   !
UpdatePlayersPoints
   -
(
  - .

GamePlayer
  . 8
gamePlayers
  9 D
)
  D E
{
΅΅ 	
int
ΆΆ 
resultOfOperation
ΆΆ !
=
ΆΆ" #!
ExceptionDictionary
ΆΆ$ 7
.
ΆΆ7 8 
UNSUCCESFULL_EVENT
ΆΆ8 J
;
ΆΆJ K
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
¤¤ 
return
¥¥ !
ExceptionDictionary
¥¥ *
.
¥¥* +
NULL_PARAEMETER
¥¥+ :
;
¥¥: ;
}
¦¦ 
try
§§ 
{
¨¨ 
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
ªª 
var
«« 
playerToUpdate
«« &
=
««' (
	contextBD
««) 2
.
««2 3
Players
««3 :
.
««: ;
FirstOrDefault
««; I
(
««I J
pl
««J L
=>
««M O
pl
««P R
.
««R S
IdPlayer
««S [
==
««\ ^
gamePlayers
««_ j
.
««j k
Player_IdPlayer
««k z
)
««z {
;
««{ |
if
¬¬ 
(
¬¬ 
playerToUpdate
¬¬ %
!=
¬¬& (
null
¬¬) -
)
¬¬- .
{
­­ 
if
®® 
(
®® 
gamePlayers
®® '
.
®®' (
PointsInGame
®®( 4
>
®®5 6
$num
®®7 8
)
®®8 9
{
―― 
playerToUpdate
°° *
.
°°* +
GeneralPoints
°°+ 8
+=
°°9 ;
gamePlayers
°°< G
.
°°G H
PointsInGame
°°H T
;
°°T U
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
²² 
(
²²  
resultOfEvent
²²  -
>
²². /
$num
²²0 1
)
²²1 2
{
³³ 
resultOfOperation
΄΄  1
=
΄΄2 3!
ExceptionDictionary
΄΄4 G
.
΄΄G H
SUCCESFULL_EVENT
΄΄H X
;
΄΄X Y
}
µµ 
else
¶¶  
{
·· 
resultOfOperation
ΈΈ  1
=
ΈΈ2 3!
ExceptionDictionary
ΈΈ4 G
.
ΈΈG H 
UNSUCCESFULL_EVENT
ΈΈH Z
;
ΈΈZ [
}
ΉΉ 
}
ΊΊ 
else
»» 
{
ΌΌ 
resultOfOperation
½½ -
=
½½. /!
ExceptionDictionary
½½0 C
.
½½C D
SUCCESFULL_EVENT
½½D T
;
½½T U
}
ΎΎ 
}
ΏΏ 
}
ΐΐ 
}
ΑΑ 
catch
ΒΒ 
(
ΒΒ 
UpdateException
ΒΒ "
ex
ΒΒ# %
)
ΒΒ% &
{
ΓΓ 
resultOfOperation
ΔΔ !
=
ΔΔ" #!
ExceptionDictionary
ΔΔ$ 7
.
ΔΔ7 8 
SAVE_CHANGES_ERROR
ΔΔ8 J
;
ΔΔJ K
ExceptionHandler
ΕΕ  
.
ΕΕ  !
LogException
ΕΕ! -
(
ΕΕ- .
ex
ΕΕ. 0
,
ΕΕ0 1!
ExceptionDictionary
ΕΕ2 E
.
ΕΕE F
FATAL_EXCEPTION
ΕΕF U
)
ΕΕU V
;
ΕΕV W
}
ΖΖ 
catch
ΗΗ 
(
ΗΗ 
DbUpdateException
ΗΗ $
ex
ΗΗ% '
)
ΗΗ' (
{
ΘΘ 
resultOfOperation
ΙΙ !
=
ΙΙ" #!
ExceptionDictionary
ΙΙ$ 7
.
ΙΙ7 8 
SAVE_CHANGES_ERROR
ΙΙ8 J
;
ΙΙJ K
ExceptionHandler
ΚΚ  
.
ΚΚ  !
LogException
ΚΚ! -
(
ΚΚ- .
ex
ΚΚ. 0
.
ΚΚ0 1
GetBaseException
ΚΚ1 A
(
ΚΚA B
)
ΚΚB C
,
ΚΚC D!
ExceptionDictionary
ΚΚE X
.
ΚΚX Y
FATAL_EXCEPTION
ΚΚY h
)
ΚΚh i
;
ΚΚi j
}
ΛΛ 
catch
ΜΜ 
(
ΜΜ #
ArgumentNullException
ΜΜ (
ex
ΜΜ) +
)
ΜΜ+ ,
{
ΝΝ 
resultOfOperation
ΞΞ !
=
ΞΞ" #!
ExceptionDictionary
ΞΞ$ 7
.
ΞΞ7 8
ARGUMENT_NULL
ΞΞ8 E
;
ΞΞE F
ExceptionHandler
ΟΟ  
.
ΟΟ  !
LogException
ΟΟ! -
(
ΟΟ- .
ex
ΟΟ. 0
,
ΟΟ0 1!
ExceptionDictionary
ΟΟ2 E
.
ΟΟE F
FATAL_EXCEPTION
ΟΟF U
)
ΟΟU V
;
ΟΟV W
}
ΠΠ 
catch
ΡΡ 
(
ΡΡ 
EntityException
ΡΡ "
ex
ΡΡ# %
)
ΡΡ% &
{
ÒÒ 
resultOfOperation
ΣΣ !
=
ΣΣ" #!
ExceptionDictionary
ΣΣ$ 7
.
ΣΣ7 8
ENTITY_ERROR
ΣΣ8 D
;
ΣΣD E
ExceptionHandler
ΤΤ  
.
ΤΤ  !
LogException
ΤΤ! -
(
ΤΤ- .
ex
ΤΤ. 0
,
ΤΤ0 1!
ExceptionDictionary
ΤΤ2 E
.
ΤΤE F
FATAL_EXCEPTION
ΤΤF U
)
ΤΤU V
;
ΤΤV W
}
ΥΥ 
catch
ΦΦ 
(
ΦΦ 
SqlException
ΦΦ 
ex
ΦΦ  "
)
ΦΦ" #
{
ΧΧ 
resultOfOperation
ΨΨ !
=
ΨΨ" #!
ExceptionDictionary
ΨΨ$ 7
.
ΨΨ7 8
	SQL_ERROR
ΨΨ8 A
;
ΨΨA B
ExceptionHandler
ΩΩ  
.
ΩΩ  !
LogException
ΩΩ! -
(
ΩΩ- .
ex
ΩΩ. 0
,
ΩΩ0 1!
ExceptionDictionary
ΩΩ2 E
.
ΩΩE F
FATAL_EXCEPTION
ΩΩF U
)
ΩΩU V
;
ΩΩV W
}
ΪΪ 
catch
ΫΫ 
(
ΫΫ )
DbEntityValidationException
ΫΫ .
ex
ΫΫ/ 1
)
ΫΫ1 2
{
άά 
resultOfOperation
έέ !
=
έέ" #!
ExceptionDictionary
έέ$ 7
.
έέ7 8 
SAVE_CHANGES_ERROR
έέ8 J
;
έέJ K
ExceptionHandler
ήή  
.
ήή  !
LogException
ήή! -
(
ήή- .
ex
ήή. 0
,
ήή0 1!
ExceptionDictionary
ήή2 E
.
ήήE F
FATAL_EXCEPTION
ήήF U
)
ήήU V
;
ήήV W
}
ίί 
return
ΰΰ 
resultOfOperation
ΰΰ $
;
ΰΰ$ %
}
αα 	
public
γγ 
static
γγ  
GenericClassServer
γγ (
<
γγ( )
List
γγ) -
<
γγ- .
int
γγ. 1
>
γγ1 2
>
γγ2 3

GetHostIds
γγ4 >
(
γγ> ?
)
γγ? @
{
δδ 	 
GenericClassServer
εε 
<
εε 
List
εε #
<
εε# $
int
εε$ '
>
εε' (
>
εε( )
resultOfOperation
εε* ;
=
εε< =
new
εε> A 
GenericClassServer
εεB T
<
εεT U
List
εεU Y
<
εεY Z
int
εεZ ]
>
εε] ^
>
εε^ _
(
εε_ `
)
εε` a
;
εεa b
try
ζζ 
{
ηη 
using
θθ 
(
θθ 
var
θθ 
	contextBD
θθ $
=
θθ% &
new
θθ' *!
JeopardyDBContainer
θθ+ >
(
θθ> ?
)
θθ? @
)
θθ@ A
{
ιι 
resultOfOperation
κκ %
.
κκ% &
ObjectSaved
κκ& 1
=
κκ2 3
	contextBD
κκ4 =
.
κκ= >
Hosts
κκ> C
.
κκC D
Where
κκD I
(
κκI J
host
κκJ N
=>
κκO Q
host
κκR V
.
κκV W
IdHost
κκW ]
!=
κκ^ `
$num
κκa b
)
κκb c
.
κκc d
Select
κκd j
(
κκj k
host
κκk o
=>
κκp r
host
κκs w
.
κκw x
IdHost
κκx ~
)
κκ~ 
.κκ €
ToListκκ€ †
(κκ† ‡
)κκ‡ 
;κκ ‰
if
λλ 
(
λλ 
resultOfOperation
λλ )
.
λλ) *
ObjectSaved
λλ* 5
.
λλ5 6
Count
λλ6 ;
!=
λλ< >
$num
λλ? @
)
λλ@ A
{
μμ 
resultOfOperation
νν )
.
νν) *
	CodeEvent
νν* 3
=
νν4 5!
ExceptionDictionary
νν6 I
.
ννI J
SUCCESFULL_EVENT
ννJ Z
;
ννZ [
}
ξξ 
else
οο 
{
ππ 
resultOfOperation
ρρ )
.
ρρ) *
	CodeEvent
ρρ* 3
=
ρρ4 5!
ExceptionDictionary
ρρ6 I
.
ρρI J 
UNSUCCESFULL_EVENT
ρρJ \
;
ρρ\ ]
}
ςς 
}
σσ 
}
ττ 
catch
υυ 
(
υυ #
ArgumentNullException
υυ (
ex
υυ) +
)
υυ+ ,
{
φφ 
resultOfOperation
χχ !
=
χχ" #
ExceptionHandler
χχ$ 4
.
χχ4 5+
HandleExceptionDataAccesLevel
χχ5 R
(
χχR S
resultOfOperation
χχS d
,
χχd e
ex
χχf h
)
χχh i
;
χχi j
ExceptionHandler
ψψ  
.
ψψ  !
LogException
ψψ! -
(
ψψ- .
ex
ψψ. 0
,
ψψ0 1!
ExceptionDictionary
ψψ2 E
.
ψψE F
FATAL_EXCEPTION
ψψF U
)
ψψU V
;
ψψV W
}
ωω 
catch
ϊϊ 
(
ϊϊ 
EntityException
ϊϊ "
ex
ϊϊ# %
)
ϊϊ% &
{
ϋϋ 
resultOfOperation
όό !
=
όό" #
ExceptionHandler
όό$ 4
.
όό4 5+
HandleExceptionDataAccesLevel
όό5 R
(
όόR S
resultOfOperation
όόS d
,
όόd e
ex
όόf h
)
όόh i
;
όόi j
ExceptionHandler
ύύ  
.
ύύ  !
LogException
ύύ! -
(
ύύ- .
ex
ύύ. 0
,
ύύ0 1!
ExceptionDictionary
ύύ2 E
.
ύύE F
FATAL_EXCEPTION
ύύF U
)
ύύU V
;
ύύV W
}
ώώ 
catch
ÿÿ 
(
ÿÿ 
SqlException
ÿÿ 
ex
ÿÿ  "
)
ÿÿ" #
{
€€ 
resultOfOperation
 !
=
" #
ExceptionHandler
$ 4
.
4 5+
HandleExceptionDataAccesLevel
5 R
(
R S
resultOfOperation
S d
,
d e
ex
f h
)
h i
;
i j
ExceptionHandler
‚‚  
.
‚‚  !
LogException
‚‚! -
(
‚‚- .
ex
‚‚. 0
,
‚‚0 1!
ExceptionDictionary
‚‚2 E
.
‚‚E F
FATAL_EXCEPTION
‚‚F U
)
‚‚U V
;
‚‚V W
}
ƒƒ 
catch
„„ 
(
„„ )
DbEntityValidationException
„„ .
ex
„„/ 1
)
„„1 2
{
…… 
resultOfOperation
†† !
=
††" #
ExceptionHandler
††$ 4
.
††4 5+
HandleExceptionDataAccesLevel
††5 R
(
††R S
resultOfOperation
††S d
,
††d e
ex
††f h
)
††h i
;
††i j
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
 
return
‰‰ 
resultOfOperation
‰‰ $
;
‰‰$ %
}
 	
}
 
} Τ_
€C:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameServer\JeopardyGame.Data\DataAccess\LoginOperations.cs
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
€€  
.
€€  !
LogException
€€! -
(
€€- .
ex
€€. 0
,
€€0 1!
ExceptionDictionary
€€2 E
.
€€E F
FATAL_EXCEPTION
€€F U
)
€€U V
;
€€V W
}
 
return
‚‚ 
resultOfOperation
‚‚ $
;
‚‚$ %
}
ƒƒ 	
}
…… 
}†† ώ‚
‰C:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameServer\JeopardyGame.Data\DataAccess\UserManagerDataOperation.cs
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
€€ 	
public
‚‚ 
static
‚‚  
GenericClassServer
‚‚ (
<
‚‚( )
User
‚‚) -
>
‚‚- .
GetUserById
‚‚/ :
(
‚‚: ;
int
‚‚; >
idUser
‚‚? E
)
‚‚E F
{
ƒƒ 	 
GenericClassServer
„„ 
<
„„ 
User
„„ #
>
„„# $
resultOfOperation
„„% 6
=
„„7 8
new
„„9 < 
GenericClassServer
„„= O
<
„„O P
User
„„P T
>
„„T U
(
„„U V
)
„„V W
;
„„W X
if
…… 
(
…… 
idUser
…… 
==
…… 
$num
…… 
)
…… 
{
†† 
return
‡‡ #
NullParametersHandler
‡‡ ,
.
‡‡, -*
HandleNullParametersDataBase
‡‡- I
(
‡‡I J
resultOfOperation
‡‡J [
)
‡‡[ \
;
‡‡\ ]
}
 
try
‰‰ 
{
 
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
 
var
 
userConsulted
 %
=
& '
	contextBD
( 1
.
1 2
Users
2 7
.
7 8
Find
8 <
(
< =
idUser
= C
)
C D
;
D E
if
 
(
 
userConsulted
 %
!=
& (
null
) -
)
- .
{
 
resultOfOperation
 )
.
) *
	CodeEvent
* 3
=
4 5!
ExceptionDictionary
6 I
.
I J
SUCCESFULL_EVENT
J Z
;
Z [
}
‘‘ 
else
’’ 
{
““ 
resultOfOperation
”” )
.
””) *
	CodeEvent
””* 3
=
””4 5!
ExceptionDictionary
””6 I
.
””I J 
UNSUCCESFULL_EVENT
””J \
;
””\ ]
}
•• 
resultOfOperation
–– %
.
––% &
ObjectSaved
––& 1
=
––2 3
userConsulted
––4 A
;
––A B
}
—— 
}
 
catch
™™ 
(
™™ 
EntityException
™™ "
ex
™™# %
)
™™% &
{
 
resultOfOperation
›› !
=
››" #
ExceptionHandler
››$ 4
.
››4 5+
HandleExceptionDataAccesLevel
››5 R
(
››R S
resultOfOperation
››S d
,
››d e
ex
››f h
)
››h i
;
››i j
ExceptionHandler
  
.
  !
LogException
! -
(
- .
ex
. 0
,
0 1!
ExceptionDictionary
2 E
.
E F
FATAL_EXCEPTION
F U
)
U V
;
V W
}
 
catch
 
(
 
SqlException
 
ex
  "
)
" #
{
 
resultOfOperation
   !
=
  " #
ExceptionHandler
  $ 4
.
  4 5+
HandleExceptionDataAccesLevel
  5 R
(
  R S
resultOfOperation
  S d
,
  d e
ex
  f h
)
  h i
;
  i j
ExceptionHandler
΅΅  
.
΅΅  !
LogException
΅΅! -
(
΅΅- .
ex
΅΅. 0
,
΅΅0 1!
ExceptionDictionary
΅΅2 E
.
΅΅E F
FATAL_EXCEPTION
΅΅F U
)
΅΅U V
;
΅΅V W
}
ΆΆ 
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
¤¤ 
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
¦¦  
.
¦¦  !
LogException
¦¦! -
(
¦¦- .
ex
¦¦. 0
,
¦¦0 1!
ExceptionDictionary
¦¦2 E
.
¦¦E F
FATAL_EXCEPTION
¦¦F U
)
¦¦U V
;
¦¦V W
}
§§ 
return
¨¨ 
resultOfOperation
¨¨ $
;
¨¨$ %
}
©© 	
public
ªª 
static
ªª  
GenericClassServer
ªª (
<
ªª( )
User
ªª) -
>
ªª- .
GetUserByUserName
ªª/ @
(
ªª@ A
String
ªªA G
userName
ªªH P
)
ªªP Q
{
«« 	 
GenericClassServer
¬¬ 
<
¬¬ 
User
¬¬ #
>
¬¬# $
resultOfOperation
¬¬% 6
=
¬¬7 8
new
¬¬9 < 
GenericClassServer
¬¬= O
<
¬¬O P
User
¬¬P T
>
¬¬T U
(
¬¬U V
)
¬¬V W
;
¬¬W X
if
­­ 
(
­­ 
string
­­ 
.
­­ 
IsNullOrEmpty
­­ $
(
­­$ %
userName
­­% -
)
­­- .
)
­­. /
{
®® 
return
―― #
NullParametersHandler
―― ,
.
――, -*
HandleNullParametersDataBase
――- I
(
――I J
resultOfOperation
――J [
)
――[ \
;
――\ ]
}
°° 
try
±± 
{
²² 
using
³³ 
(
³³ 
var
³³ 
	contextBD
³³ $
=
³³% &
new
³³' *!
JeopardyDBContainer
³³+ >
(
³³> ?
)
³³? @
)
³³@ A
{
΄΄ 
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
¶¶ 
(
¶¶ 
user
¶¶ 
!=
¶¶ 
null
¶¶  $
)
¶¶$ %
{
·· 
resultOfOperation
ΈΈ )
.
ΈΈ) *
	CodeEvent
ΈΈ* 3
=
ΈΈ4 5!
ExceptionDictionary
ΈΈ6 I
.
ΈΈI J
SUCCESFULL_EVENT
ΈΈJ Z
;
ΈΈZ [
}
ΉΉ 
else
ΊΊ 
{
»» 
resultOfOperation
ΌΌ )
.
ΌΌ) *
	CodeEvent
ΌΌ* 3
=
ΌΌ4 5!
ExceptionDictionary
ΌΌ6 I
.
ΌΌI J 
UNSUCCESFULL_EVENT
ΌΌJ \
;
ΌΌ\ ]
}
½½ 
resultOfOperation
ΎΎ %
.
ΎΎ% &
ObjectSaved
ΎΎ& 1
=
ΎΎ2 3
user
ΎΎ4 8
;
ΎΎ8 9
}
ΏΏ 
}
ΐΐ 
catch
ΑΑ 
(
ΑΑ #
ArgumentNullException
ΑΑ (
ex
ΑΑ) +
)
ΑΑ+ ,
{
ΒΒ 
resultOfOperation
ΓΓ !
=
ΓΓ" #
ExceptionHandler
ΓΓ$ 4
.
ΓΓ4 5+
HandleExceptionDataAccesLevel
ΓΓ5 R
(
ΓΓR S
resultOfOperation
ΓΓS d
,
ΓΓd e
ex
ΓΓf h
)
ΓΓh i
;
ΓΓi j
ExceptionHandler
ΔΔ  
.
ΔΔ  !
LogException
ΔΔ! -
(
ΔΔ- .
ex
ΔΔ. 0
,
ΔΔ0 1!
ExceptionDictionary
ΔΔ2 E
.
ΔΔE F
FATAL_EXCEPTION
ΔΔF U
)
ΔΔU V
;
ΔΔV W
}
ΕΕ 
catch
ΖΖ 
(
ΖΖ 
EntityException
ΖΖ "
ex
ΖΖ# %
)
ΖΖ% &
{
ΗΗ 
resultOfOperation
ΘΘ !
=
ΘΘ" #
ExceptionHandler
ΘΘ$ 4
.
ΘΘ4 5+
HandleExceptionDataAccesLevel
ΘΘ5 R
(
ΘΘR S
resultOfOperation
ΘΘS d
,
ΘΘd e
ex
ΘΘf h
)
ΘΘh i
;
ΘΘi j
ExceptionHandler
ΙΙ  
.
ΙΙ  !
LogException
ΙΙ! -
(
ΙΙ- .
ex
ΙΙ. 0
,
ΙΙ0 1!
ExceptionDictionary
ΙΙ2 E
.
ΙΙE F
FATAL_EXCEPTION
ΙΙF U
)
ΙΙU V
;
ΙΙV W
}
ΚΚ 
catch
ΛΛ 
(
ΛΛ 
SqlException
ΛΛ 
ex
ΛΛ  "
)
ΛΛ" #
{
ΜΜ 
resultOfOperation
ΝΝ !
=
ΝΝ" #
ExceptionHandler
ΝΝ$ 4
.
ΝΝ4 5+
HandleExceptionDataAccesLevel
ΝΝ5 R
(
ΝΝR S
resultOfOperation
ΝΝS d
,
ΝΝd e
ex
ΝΝf h
)
ΝΝh i
;
ΝΝi j
ExceptionHandler
ΞΞ  
.
ΞΞ  !
LogException
ΞΞ! -
(
ΞΞ- .
ex
ΞΞ. 0
,
ΞΞ0 1!
ExceptionDictionary
ΞΞ2 E
.
ΞΞE F
FATAL_EXCEPTION
ΞΞF U
)
ΞΞU V
;
ΞΞV W
}
ΟΟ 
catch
ΠΠ 
(
ΠΠ )
DbEntityValidationException
ΠΠ .
ex
ΠΠ/ 1
)
ΠΠ1 2
{
ΡΡ 
resultOfOperation
ÒÒ !
=
ÒÒ" #
ExceptionHandler
ÒÒ$ 4
.
ÒÒ4 5+
HandleExceptionDataAccesLevel
ÒÒ5 R
(
ÒÒR S
resultOfOperation
ÒÒS d
,
ÒÒd e
ex
ÒÒf h
)
ÒÒh i
;
ÒÒi j
ExceptionHandler
ΣΣ  
.
ΣΣ  !
LogException
ΣΣ! -
(
ΣΣ- .
ex
ΣΣ. 0
,
ΣΣ0 1!
ExceptionDictionary
ΣΣ2 E
.
ΣΣE F
FATAL_EXCEPTION
ΣΣF U
)
ΣΣU V
;
ΣΣV W
}
ΤΤ 
return
ΥΥ 
resultOfOperation
ΥΥ $
;
ΥΥ$ %
}
ΦΦ 	
public
ΨΨ 
static
ΨΨ  
GenericClassServer
ΨΨ (
<
ΨΨ( )
int
ΨΨ) ,
>
ΨΨ, -"
UpdatePlayerReported
ΨΨ. B
(
ΨΨB C
int
ΨΨC F
idPlayerReported
ΨΨG W
)
ΨΨW X
{
ΩΩ 	 
GenericClassServer
ΪΪ 
<
ΪΪ 
int
ΪΪ "
>
ΪΪ" #
resultOfOperation
ΪΪ$ 5
=
ΪΪ6 7
new
ΪΪ8 ; 
GenericClassServer
ΪΪ< N
<
ΪΪN O
int
ΪΪO R
>
ΪΪR S
(
ΪΪS T
)
ΪΪT U
;
ΪΪU V
if
ΫΫ 
(
ΫΫ 
idPlayerReported
ΫΫ  
==
ΫΫ! #
NULL_INT_VALUE
ΫΫ$ 2
)
ΫΫ2 3
{
άά 
return
έέ #
NullParametersHandler
έέ ,
.
έέ, -*
HandleNullParametersDataBase
έέ- I
(
έέI J
resultOfOperation
έέJ [
)
έέ[ \
;
έέ\ ]
}
ήή 
try
ίί 
{
ΰΰ 
using
αα 
(
αα 
var
αα 
	contextBD
αα $
=
αα% &
new
αα' *!
JeopardyDBContainer
αα+ >
(
αα> ?
)
αα? @
)
αα@ A
{
ββ 
var
γγ 
player
γγ 
=
γγ  !
GetPlayerByIdPlayer
γγ! 4
(
γγ4 5
idPlayerReported
γγ5 E
)
γγE F
;
γγF G
if
δδ 
(
δδ 
player
δδ 
.
δδ 
	CodeEvent
δδ (
==
δδ) +!
ExceptionDictionary
δδ, ?
.
δδ? @
SUCCESFULL_EVENT
δδ@ P
)
δδP Q
{
εε 
player
ζζ 
.
ζζ 
ObjectSaved
ζζ *
.
ζζ* +
	NoReports
ζζ+ 4
++
ζζ4 6
;
ζζ6 7
	contextBD
ηη !
.
ηη! "
Entry
ηη" '
(
ηη' (
player
ηη( .
)
ηη. /
.
ηη/ 0
State
ηη0 5
=
ηη6 7
EntityState
ηη8 C
.
ηηC D
Modified
ηηD L
;
ηηL M
int
θθ 
resultUpdate
θθ (
=
θθ) *
	contextBD
θθ+ 4
.
θθ4 5
SaveChanges
θθ5 @
(
θθ@ A
)
θθA B
;
θθB C
if
ιι 
(
ιι 
resultUpdate
ιι (
!=
ιι) +
NULL_INT_VALUE
ιι, :
)
ιι: ;
{
κκ 
resultOfOperation
λλ -
.
λλ- .
	CodeEvent
λλ. 7
=
λλ8 9!
ExceptionDictionary
λλ: M
.
λλM N
SUCCESFULL_EVENT
λλN ^
;
λλ^ _
}
μμ 
else
νν 
{
ξξ 
resultOfOperation
οο -
.
οο- .
	CodeEvent
οο. 7
=
οο8 9!
ExceptionDictionary
οο: M
.
οοM N 
UNSUCCESFULL_EVENT
οοN `
;
οο` a
}
ππ 
resultOfOperation
ρρ )
.
ρρ) *
ObjectSaved
ρρ* 5
=
ρρ6 7
resultUpdate
ρρ8 D
;
ρρD E
}
ςς 
else
σσ 
{
ττ 
resultOfOperation
υυ )
.
υυ) *
ObjectSaved
υυ* 5
=
υυ6 7
default
υυ8 ?
;
υυ? @
resultOfOperation
φφ )
.
φφ) *
	CodeEvent
φφ* 3
=
φφ4 5
player
φφ6 <
.
φφ< =
	CodeEvent
φφ= F
;
φφF G
}
χχ 
}
ψψ 
}
ωω 
catch
ϊϊ 
(
ϊϊ #
ArgumentNullException
ϊϊ (
ex
ϊϊ) +
)
ϊϊ+ ,
{
ϋϋ 
resultOfOperation
όό !
=
όό" #
ExceptionHandler
όό$ 4
.
όό4 5+
HandleExceptionDataAccesLevel
όό5 R
(
όόR S
resultOfOperation
όόS d
,
όόd e
ex
όόf h
)
όόh i
;
όόi j
ExceptionHandler
ύύ  
.
ύύ  !
LogException
ύύ! -
(
ύύ- .
ex
ύύ. 0
,
ύύ0 1!
ExceptionDictionary
ύύ2 E
.
ύύE F
FATAL_EXCEPTION
ύύF U
)
ύύU V
;
ύύV W
}
ώώ 
catch
ÿÿ 
(
ÿÿ 
DbUpdateException
ÿÿ $
ex
ÿÿ% '
)
ÿÿ' (
{
€€ 
resultOfOperation
 !
=
" #
ExceptionHandler
$ 4
.
4 5+
HandleExceptionDataAccesLevel
5 R
(
R S
resultOfOperation
S d
,
d e
ex
f h
)
h i
;
i j
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
ƒƒ 
catch
„„ 
(
„„ 
EntityException
„„ "
ex
„„# %
)
„„% &
{
…… 
resultOfOperation
†† !
=
††" #
ExceptionHandler
††$ 4
.
††4 5+
HandleExceptionDataAccesLevel
††5 R
(
††R S
resultOfOperation
††S d
,
††d e
ex
††f h
)
††h i
;
††i j
ExceptionHandler
‡‡  
.
‡‡  !
LogException
‡‡! -
(
‡‡- .
ex
‡‡. 0
,
‡‡0 1!
ExceptionDictionary
‡‡2 E
.
‡‡E F
FATAL_EXCEPTION
‡‡F U
)
‡‡U V
;
‡‡V W
}
 
catch
‰‰ 
(
‰‰ 
SqlException
‰‰ 
ex
‰‰  "
)
‰‰" #
{
 
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
  
.
  !
LogException
! -
(
- .
ex
. 0
,
0 1!
ExceptionDictionary
2 E
.
E F
FATAL_EXCEPTION
F U
)
U V
;
V W
}
 
catch
 
(
 )
DbEntityValidationException
 .
ex
/ 1
)
1 2
{
 
resultOfOperation
 !
=
" #
ExceptionHandler
$ 4
.
4 5+
HandleExceptionDataAccesLevel
5 R
(
R S
resultOfOperation
S d
,
d e
ex
f h
)
h i
;
i j
ExceptionHandler
‘‘  
.
‘‘  !
LogException
‘‘! -
(
‘‘- .
ex
‘‘. 0
,
‘‘0 1!
ExceptionDictionary
‘‘2 E
.
‘‘E F
FATAL_EXCEPTION
‘‘F U
)
‘‘U V
;
‘‘V W
}
’’ 
return
““ 
resultOfOperation
““ $
;
““$ %
}
”” 	
public
—— 
static
——  
GenericClassServer
—— (
<
——( )
Player
——) /
>
——/ 0
GetPlayerByIdUser
——1 B
(
——B C
int
——C F
idUser
——G M
)
——M N
{
 	 
GenericClassServer
™™ 
<
™™ 
Player
™™ %
>
™™% &
resultOfOperation
™™' 8
=
™™9 :
new
™™; > 
GenericClassServer
™™? Q
<
™™Q R
Player
™™R X
>
™™X Y
(
™™Y Z
)
™™Z [
;
™™[ \
if
 
(
 
idUser
 
==
 
NULL_INT_VALUE
 (
)
( )
{
›› 
return
 #
NullParametersHandler
 ,
.
, -*
HandleNullParametersDataBase
- I
(
I J
resultOfOperation
J [
)
[ \
;
\ ]
}
 
try
 
{
 
using
   
(
   
var
   
	contextBD
   $
=
  % &
new
  ' *!
JeopardyDBContainer
  + >
(
  > ?
)
  ? @
)
  @ A
{
΅΅ 
var
ΆΆ 
playerConsulted
ΆΆ '
=
ΆΆ( )
	contextBD
ΆΆ* 3
.
ΆΆ3 4
Players
ΆΆ4 ;
.
ΆΆ; <
FirstOrDefault
ΆΆ< J
(
ΆΆJ K
player
ΆΆK Q
=>
ΆΆR T
player
ΆΆU [
.
ΆΆ[ \
User_IdUser
ΆΆ\ g
==
ΆΆh j
idUser
ΆΆk q
)
ΆΆq r
;
ΆΆr s
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
¤¤ 
resultOfOperation
¥¥ )
.
¥¥) *
	CodeEvent
¥¥* 3
=
¥¥4 5!
ExceptionDictionary
¥¥6 I
.
¥¥I J
SUCCESFULL_EVENT
¥¥J Z
;
¥¥Z [
}
¦¦ 
else
§§ 
{
¨¨ 
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
ªª 
resultOfOperation
«« %
.
««% &
ObjectSaved
««& 1
=
««2 3
playerConsulted
««4 C
;
««C D
}
¬¬ 
}
­­ 
catch
®® 
(
®® #
ArgumentNullException
®® (
ex
®®) +
)
®®+ ,
{
―― 
resultOfOperation
°° !
=
°°" #
ExceptionHandler
°°$ 4
.
°°4 5+
HandleExceptionDataAccesLevel
°°5 R
(
°°R S
resultOfOperation
°°S d
,
°°d e
ex
°°f h
)
°°h i
;
°°i j
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
²² 
catch
³³ 
(
³³ 
EntityException
³³ "
ex
³³# %
)
³³% &
{
΄΄ 
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
¶¶  
.
¶¶  !
LogException
¶¶! -
(
¶¶- .
ex
¶¶. 0
,
¶¶0 1!
ExceptionDictionary
¶¶2 E
.
¶¶E F
FATAL_EXCEPTION
¶¶F U
)
¶¶U V
;
¶¶V W
}
·· 
catch
ΈΈ 
(
ΈΈ 
SqlException
ΈΈ 
ex
ΈΈ  "
)
ΈΈ" #
{
ΉΉ 
resultOfOperation
ΊΊ !
=
ΊΊ" #
ExceptionHandler
ΊΊ$ 4
.
ΊΊ4 5+
HandleExceptionDataAccesLevel
ΊΊ5 R
(
ΊΊR S
resultOfOperation
ΊΊS d
,
ΊΊd e
ex
ΊΊf h
)
ΊΊh i
;
ΊΊi j
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
ΌΌ 
catch
½½ 
(
½½ )
DbEntityValidationException
½½ .
ex
½½/ 1
)
½½1 2
{
ΎΎ 
resultOfOperation
ΏΏ !
=
ΏΏ" #
ExceptionHandler
ΏΏ$ 4
.
ΏΏ4 5+
HandleExceptionDataAccesLevel
ΏΏ5 R
(
ΏΏR S
resultOfOperation
ΏΏS d
,
ΏΏd e
ex
ΏΏf h
)
ΏΏh i
;
ΏΏi j
ExceptionHandler
ΐΐ  
.
ΐΐ  !
LogException
ΐΐ! -
(
ΐΐ- .
ex
ΐΐ. 0
,
ΐΐ0 1!
ExceptionDictionary
ΐΐ2 E
.
ΐΐE F
FATAL_EXCEPTION
ΐΐF U
)
ΐΐU V
;
ΐΐV W
}
ΑΑ 
return
ΒΒ 
resultOfOperation
ΒΒ $
;
ΒΒ$ %
}
ΔΔ 	
public
ΕΕ 
static
ΕΕ  
GenericClassServer
ΕΕ (
<
ΕΕ( )
Player
ΕΕ) /
>
ΕΕ/ 0!
GetPlayerByIdPlayer
ΕΕ1 D
(
ΕΕD E
int
ΕΕE H
idPlayer
ΕΕI Q
)
ΕΕQ R
{
ΖΖ 	 
GenericClassServer
ΗΗ 
<
ΗΗ 
Player
ΗΗ %
>
ΗΗ% &
resultOfOperation
ΗΗ' 8
=
ΗΗ9 :
new
ΗΗ; > 
GenericClassServer
ΗΗ? Q
<
ΗΗQ R
Player
ΗΗR X
>
ΗΗX Y
(
ΗΗY Z
)
ΗΗZ [
;
ΗΗ[ \
if
ΘΘ 
(
ΘΘ 
idPlayer
ΘΘ 
==
ΘΘ 
NULL_INT_VALUE
ΘΘ *
)
ΘΘ* +
{
ΙΙ 
return
ΚΚ #
NullParametersHandler
ΚΚ ,
.
ΚΚ, -*
HandleNullParametersDataBase
ΚΚ- I
(
ΚΚI J
resultOfOperation
ΚΚJ [
)
ΚΚ[ \
;
ΚΚ\ ]
}
ΛΛ 
try
ΜΜ 
{
ΝΝ 
using
ΞΞ 
(
ΞΞ 
var
ΞΞ 
	contextBD
ΞΞ $
=
ΞΞ% &
new
ΞΞ' *!
JeopardyDBContainer
ΞΞ+ >
(
ΞΞ> ?
)
ΞΞ? @
)
ΞΞ@ A
{
ΟΟ 
var
ΠΠ 
playerConsulted
ΠΠ '
=
ΠΠ( )
	contextBD
ΠΠ* 3
.
ΠΠ3 4
Players
ΠΠ4 ;
.
ΠΠ; <
FirstOrDefault
ΠΠ< J
(
ΠΠJ K
player
ΠΠK Q
=>
ΠΠR T
player
ΠΠU [
.
ΠΠ[ \
IdPlayer
ΠΠ\ d
==
ΠΠe g
idPlayer
ΠΠh p
)
ΠΠp q
;
ΠΠq r
if
ΡΡ 
(
ΡΡ 
playerConsulted
ΡΡ '
!=
ΡΡ( *
null
ΡΡ+ /
)
ΡΡ/ 0
{
ÒÒ 
resultOfOperation
ΣΣ )
.
ΣΣ) *
	CodeEvent
ΣΣ* 3
=
ΣΣ4 5!
ExceptionDictionary
ΣΣ6 I
.
ΣΣI J
SUCCESFULL_EVENT
ΣΣJ Z
;
ΣΣZ [
}
ΤΤ 
else
ΥΥ 
{
ΦΦ 
resultOfOperation
ΧΧ )
.
ΧΧ) *
	CodeEvent
ΧΧ* 3
=
ΧΧ4 5!
ExceptionDictionary
ΧΧ6 I
.
ΧΧI J 
UNSUCCESFULL_EVENT
ΧΧJ \
;
ΧΧ\ ]
}
ΨΨ 
resultOfOperation
ΩΩ %
.
ΩΩ% &
ObjectSaved
ΩΩ& 1
=
ΩΩ2 3
playerConsulted
ΩΩ4 C
;
ΩΩC D
}
ΪΪ 
}
ΫΫ 
catch
άά 
(
άά #
ArgumentNullException
άά (
ex
άά) +
)
άά+ ,
{
έέ 
resultOfOperation
ήή !
=
ήή" #
ExceptionHandler
ήή$ 4
.
ήή4 5+
HandleExceptionDataAccesLevel
ήή5 R
(
ήήR S
resultOfOperation
ήήS d
,
ήήd e
ex
ήήf h
)
ήήh i
;
ήήi j
ExceptionHandler
ίί  
.
ίί  !
LogException
ίί! -
(
ίί- .
ex
ίί. 0
,
ίί0 1!
ExceptionDictionary
ίί2 E
.
ίίE F
FATAL_EXCEPTION
ίίF U
)
ίίU V
;
ίίV W
}
ΰΰ 
catch
αα 
(
αα 
EntityException
αα "
ex
αα# %
)
αα% &
{
ββ 
resultOfOperation
γγ !
=
γγ" #
ExceptionHandler
γγ$ 4
.
γγ4 5+
HandleExceptionDataAccesLevel
γγ5 R
(
γγR S
resultOfOperation
γγS d
,
γγd e
ex
γγf h
)
γγh i
;
γγi j
ExceptionHandler
δδ  
.
δδ  !
LogException
δδ! -
(
δδ- .
ex
δδ. 0
,
δδ0 1!
ExceptionDictionary
δδ2 E
.
δδE F
FATAL_EXCEPTION
δδF U
)
δδU V
;
δδV W
}
εε 
catch
ζζ 
(
ζζ 
SqlException
ζζ 
ex
ζζ  "
)
ζζ" #
{
ηη 
resultOfOperation
θθ !
=
θθ" #
ExceptionHandler
θθ$ 4
.
θθ4 5+
HandleExceptionDataAccesLevel
θθ5 R
(
θθR S
resultOfOperation
θθS d
,
θθd e
ex
θθf h
)
θθh i
;
θθi j
ExceptionHandler
ιι  
.
ιι  !
LogException
ιι! -
(
ιι- .
ex
ιι. 0
,
ιι0 1!
ExceptionDictionary
ιι2 E
.
ιιE F
FATAL_EXCEPTION
ιιF U
)
ιιU V
;
ιιV W
}
κκ 
catch
λλ 
(
λλ )
DbEntityValidationException
λλ .
ex
λλ/ 1
)
λλ1 2
{
μμ 
resultOfOperation
νν !
=
νν" #
ExceptionHandler
νν$ 4
.
νν4 5+
HandleExceptionDataAccesLevel
νν5 R
(
ννR S
resultOfOperation
ννS d
,
ννd e
ex
ννf h
)
ννh i
;
ννi j
ExceptionHandler
ξξ  
.
ξξ  !
LogException
ξξ! -
(
ξξ- .
ex
ξξ. 0
,
ξξ0 1!
ExceptionDictionary
ξξ2 E
.
ξξE F
FATAL_EXCEPTION
ξξF U
)
ξξU V
;
ξξV W
}
οο 
return
ππ 
resultOfOperation
ππ $
;
ππ$ %
}
ςς 	
public
ττ 
static
ττ  
GenericClassServer
ττ (
<
ττ( )
State
ττ) .
>
ττ. /
GetStateById
ττ0 <
(
ττ< =
int
ττ= @
idSatate
ττA I
)
ττI J
{
υυ 	 
GenericClassServer
φφ 
<
φφ 
State
φφ $
>
φφ$ %
resultOfOperation
φφ& 7
=
φφ8 9
new
φφ: = 
GenericClassServer
φφ> P
<
φφP Q
State
φφQ V
>
φφV W
(
φφW X
)
φφX Y
;
φφY Z
if
χχ 
(
χχ 
idSatate
χχ 
==
χχ 
NULL_INT_VALUE
χχ *
)
χχ* +
{
ψψ 
return
ωω #
NullParametersHandler
ωω ,
.
ωω, -*
HandleNullParametersDataBase
ωω- I
(
ωωI J
resultOfOperation
ωωJ [
)
ωω[ \
;
ωω\ ]
}
ϊϊ 
try
ϋϋ 
{
όό 
using
ύύ 
(
ύύ 
var
ύύ 
	contextBD
ύύ $
=
ύύ% &
new
ύύ' *!
JeopardyDBContainer
ύύ+ >
(
ύύ> ?
)
ύύ? @
)
ύύ@ A
{
ώώ 
var
ÿÿ 
stateConsulted
ÿÿ &
=
ÿÿ' (
	contextBD
ÿÿ) 2
.
ÿÿ2 3
States
ÿÿ3 9
.
ÿÿ9 :
Find
ÿÿ: >
(
ÿÿ> ?
idSatate
ÿÿ? G
)
ÿÿG H
;
ÿÿH I
if
€€ 
(
€€ 
stateConsulted
€€ &
!=
€€' )
null
€€* .
)
€€. /
{
 
resultOfOperation
‚‚ )
.
‚‚) *
	CodeEvent
‚‚* 3
=
‚‚4 5!
ExceptionDictionary
‚‚6 I
.
‚‚I J
SUCCESFULL_EVENT
‚‚J Z
;
‚‚Z [
}
ƒƒ 
else
„„ 
{
…… 
resultOfOperation
†† )
.
††) *
	CodeEvent
††* 3
=
††4 5!
ExceptionDictionary
††6 I
.
††I J 
UNSUCCESFULL_EVENT
††J \
;
††\ ]
}
‡‡ 
resultOfOperation
 %
.
% &
ObjectSaved
& 1
=
2 3
stateConsulted
4 B
;
B C
}
‰‰ 
}
 
catch
‹‹ 
(
‹‹ '
InvalidOperationException
‹‹ ,
ex
‹‹- /
)
‹‹/ 0
{
 
resultOfOperation
 !
=
" #
ExceptionHandler
$ 4
.
4 5+
HandleExceptionDataAccesLevel
5 R
(
R S
resultOfOperation
S d
,
d e
ex
f h
)
h i
;
i j
ExceptionHandler
  
.
  !
LogException
! -
(
- .
ex
. 0
,
0 1!
ExceptionDictionary
2 E
.
E F
FATAL_EXCEPTION
F U
)
U V
;
V W
}
 
catch
 
(
 
EntityException
 "
ex
# %
)
% &
{
‘‘ 
resultOfOperation
’’ !
=
’’" #
ExceptionHandler
’’$ 4
.
’’4 5+
HandleExceptionDataAccesLevel
’’5 R
(
’’R S
resultOfOperation
’’S d
,
’’d e
ex
’’f h
)
’’h i
;
’’i j
ExceptionHandler
““  
.
““  !
LogException
““! -
(
““- .
ex
““. 0
,
““0 1!
ExceptionDictionary
““2 E
.
““E F
FATAL_EXCEPTION
““F U
)
““U V
;
““V W
}
”” 
catch
•• 
(
•• 
SqlException
•• 
ex
••  "
)
••" #
{
–– 
resultOfOperation
—— !
=
——" #
ExceptionHandler
——$ 4
.
——4 5+
HandleExceptionDataAccesLevel
——5 R
(
——R S
resultOfOperation
——S d
,
——d e
ex
——f h
)
——h i
;
——i j
ExceptionHandler
  
.
  !
LogException
! -
(
- .
ex
. 0
,
0 1!
ExceptionDictionary
2 E
.
E F
FATAL_EXCEPTION
F U
)
U V
;
V W
}
™™ 
catch
 
(
 )
DbEntityValidationException
 .
ex
/ 1
)
1 2
{
›› 
resultOfOperation
 !
=
" #
ExceptionHandler
$ 4
.
4 5+
HandleExceptionDataAccesLevel
5 R
(
R S
resultOfOperation
S d
,
d e
ex
f h
)
h i
;
i j
ExceptionHandler
  
.
  !
LogException
! -
(
- .
ex
. 0
,
0 1!
ExceptionDictionary
2 E
.
E F
FATAL_EXCEPTION
F U
)
U V
;
V W
}
 
return
 
resultOfOperation
 $
;
$ %
}
   	
public
ΆΆ 
static
ΆΆ  
GenericClassServer
ΆΆ (
<
ΆΆ( )
int
ΆΆ) ,
>
ΆΆ, -
DeleteUserById
ΆΆ. <
(
ΆΆ< =
int
ΆΆ= @
idUser
ΆΆA G
)
ΆΆG H
{
££ 	 
GenericClassServer
¤¤ 
<
¤¤ 
int
¤¤ "
>
¤¤" #
resultOfOperation
¤¤$ 5
=
¤¤6 7
new
¤¤8 ; 
GenericClassServer
¤¤< N
<
¤¤N O
int
¤¤O R
>
¤¤R S
(
¤¤S T
)
¤¤T U
;
¤¤U V
resultOfOperation
¥¥ 
.
¥¥ 
	CodeEvent
¥¥ '
=
¥¥( )!
ExceptionDictionary
¥¥* =
.
¥¥= > 
UNSUCCESFULL_EVENT
¥¥> P
;
¥¥P Q
if
¦¦ 
(
¦¦ 
idUser
¦¦ 
==
¦¦ 
NULL_INT_VALUE
¦¦ (
)
¦¦( )
{
§§ 
return
¨¨ #
NullParametersHandler
¨¨ ,
.
¨¨, -*
HandleNullParametersDataBase
¨¨- I
(
¨¨I J
resultOfOperation
¨¨J [
)
¨¨[ \
;
¨¨\ ]
}
©© 
try
ªª 
{
«« 
using
¬¬ 
(
¬¬ 
var
¬¬ 
	contextBD
¬¬ $
=
¬¬% &
new
¬¬' *!
JeopardyDBContainer
¬¬+ >
(
¬¬> ?
)
¬¬? @
)
¬¬@ A
{
­­ 
var
®® 
userConsulted
®® %
=
®®& '
	contextBD
®®( 1
.
®®1 2
Users
®®2 7
.
®®7 8
Find
®®8 <
(
®®< =
idUser
®®= C
)
®®C D
;
®®D E
if
―― 
(
―― 
userConsulted
―― %
!=
――& (
null
――) -
)
――- .
{
°° 
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
IdUser±±| ‚
)±±‚ ƒ
;±±ƒ „
if
²² 
(
²² 
playerToDelete
²² *
!=
²²+ -
null
²². 2
)
²²2 3
{
³³ 
	contextBD
΄΄ %
.
΄΄% &
Players
΄΄& -
.
΄΄- .
Remove
΄΄. 4
(
΄΄4 5
playerToDelete
΄΄5 C
)
΄΄C D
;
΄΄D E
}
µµ 
	contextBD
¶¶ !
.
¶¶! "
Users
¶¶" '
.
¶¶' (
Remove
¶¶( .
(
¶¶. /
userConsulted
¶¶/ <
)
¶¶< =
;
¶¶= >
	contextBD
·· !
.
··! "
SaveChanges
··" -
(
··- .
)
··. /
;
··/ 0
resultOfOperation
ΈΈ )
.
ΈΈ) *
	CodeEvent
ΈΈ* 3
=
ΈΈ4 5!
ExceptionDictionary
ΈΈ6 I
.
ΈΈI J
SUCCESFULL_EVENT
ΈΈJ Z
;
ΈΈZ [
}
ΉΉ 
}
ΊΊ 
}
»» 
catch
ΌΌ 
(
ΌΌ 
DbUpdateException
ΌΌ $
ex
ΌΌ% '
)
ΌΌ' (
{
½½ 
resultOfOperation
ΎΎ !
.
ΎΎ! "
	CodeEvent
ΎΎ" +
=
ΎΎ, -!
ExceptionDictionary
ΎΎ. A
.
ΎΎA B 
SAVE_CHANGES_ERROR
ΎΎB T
;
ΎΎT U
ExceptionHandler
ΏΏ  
.
ΏΏ  !
LogException
ΏΏ! -
(
ΏΏ- .
ex
ΏΏ. 0
,
ΏΏ0 1!
ExceptionDictionary
ΏΏ2 E
.
ΏΏE F
FATAL_EXCEPTION
ΏΏF U
)
ΏΏU V
;
ΏΏV W
}
ΐΐ 
catch
ΑΑ 
(
ΑΑ 
EntityException
ΑΑ "
ex
ΑΑ# %
)
ΑΑ% &
{
ΒΒ 
resultOfOperation
ΓΓ !
.
ΓΓ! "
	CodeEvent
ΓΓ" +
=
ΓΓ, -!
ExceptionDictionary
ΓΓ. A
.
ΓΓA B
ENTITY_ERROR
ΓΓB N
;
ΓΓN O
ExceptionHandler
ΔΔ  
.
ΔΔ  !
LogException
ΔΔ! -
(
ΔΔ- .
ex
ΔΔ. 0
,
ΔΔ0 1!
ExceptionDictionary
ΔΔ2 E
.
ΔΔE F
FATAL_EXCEPTION
ΔΔF U
)
ΔΔU V
;
ΔΔV W
}
ΕΕ 
catch
ΖΖ 
(
ΖΖ 
SqlException
ΖΖ 
ex
ΖΖ  "
)
ΖΖ" #
{
ΗΗ 
resultOfOperation
ΘΘ !
.
ΘΘ! "
	CodeEvent
ΘΘ" +
=
ΘΘ, -!
ExceptionDictionary
ΘΘ. A
.
ΘΘA B
	SQL_ERROR
ΘΘB K
;
ΘΘK L
ExceptionHandler
ΙΙ  
.
ΙΙ  !
LogException
ΙΙ! -
(
ΙΙ- .
ex
ΙΙ. 0
,
ΙΙ0 1!
ExceptionDictionary
ΙΙ2 E
.
ΙΙE F
FATAL_EXCEPTION
ΙΙF U
)
ΙΙU V
;
ΙΙV W
}
ΚΚ 
catch
ΛΛ 
(
ΛΛ )
DbEntityValidationException
ΛΛ .
ex
ΛΛ/ 1
)
ΛΛ1 2
{
ΜΜ 
resultOfOperation
ΝΝ !
.
ΝΝ! "
	CodeEvent
ΝΝ" +
=
ΝΝ, -!
ExceptionDictionary
ΝΝ. A
.
ΝΝA B
ENTITY_VALIDATION
ΝΝB S
;
ΝΝS T
ExceptionHandler
ΞΞ  
.
ΞΞ  !
LogException
ΞΞ! -
(
ΞΞ- .
ex
ΞΞ. 0
,
ΞΞ0 1!
ExceptionDictionary
ΞΞ2 E
.
ΞΞE F
FATAL_EXCEPTION
ΞΞF U
)
ΞΞU V
;
ΞΞV W
}
ΟΟ 
return
ΠΠ 
resultOfOperation
ΠΠ $
;
ΠΠ$ %
}
ΡΡ 	
public
ΣΣ 
static
ΣΣ  
GenericClassServer
ΣΣ (
<
ΣΣ( )
int
ΣΣ) ,
>
ΣΣ, -
UpdatePhotoPlayer
ΣΣ. ?
(
ΣΣ? @
int
ΣΣ@ C
idPlayer
ΣΣD L
,
ΣΣL M
int
ΣΣN Q
imageId
ΣΣR Y
)
ΣΣY Z
{
ΤΤ 	 
GenericClassServer
ΥΥ 
<
ΥΥ 
int
ΥΥ "
>
ΥΥ" #
resultOfOperation
ΥΥ$ 5
=
ΥΥ6 7
new
ΥΥ8 ; 
GenericClassServer
ΥΥ< N
<
ΥΥN O
int
ΥΥO R
>
ΥΥR S
(
ΥΥS T
)
ΥΥT U
;
ΥΥU V
if
ΦΦ 
(
ΦΦ 
idPlayer
ΦΦ 
==
ΦΦ 
NULL_INT_VALUE
ΦΦ *
||
ΦΦ+ -
imageId
ΦΦ. 5
==
ΦΦ6 8
NULL_INT_VALUE
ΦΦ9 G
)
ΦΦG H
{
ΧΧ 
return
ΨΨ #
NullParametersHandler
ΨΨ ,
.
ΨΨ, -*
HandleNullParametersDataBase
ΨΨ- I
(
ΨΨI J
resultOfOperation
ΨΨJ [
)
ΨΨ[ \
;
ΨΨ\ ]
}
ΩΩ 
try
ΪΪ 
{
ΫΫ 
using
άά 
(
άά 
var
άά 
	contextBD
άά $
=
άά% &
new
άά' *!
JeopardyDBContainer
άά+ >
(
άά> ?
)
άά? @
)
άά@ A
{
έέ 
var
ήή 
player
ήή 
=
ήή  
	contextBD
ήή! *
.
ήή* +
Players
ήή+ 2
.
ήή2 3
FirstOrDefault
ήή3 A
(
ήήA B
p
ήήB C
=>
ήήD F
p
ήήG H
.
ήήH I
IdPlayer
ήήI Q
==
ήήR T
idPlayer
ήήU ]
)
ήή] ^
;
ήή^ _
if
ίί 
(
ίί 
player
ίί 
!=
ίί !
null
ίί" &
)
ίί& '
{
ΰΰ 
player
αα 
.
αα 
IdAvatarActual
αα -
=
αα. /
imageId
αα0 7
;
αα7 8
int
ββ 
resultOfEvent
ββ )
=
ββ* +
	contextBD
ββ, 5
.
ββ5 6
SaveChanges
ββ6 A
(
ββA B
)
ββB C
;
ββC D
if
γγ 
(
γγ 
resultOfEvent
γγ )
!=
γγ* ,
$num
γγ- .
)
γγ. /
{
δδ 
resultOfOperation
εε -
.
εε- .
	CodeEvent
εε. 7
=
εε8 9!
ExceptionDictionary
εε: M
.
εεM N
SUCCESFULL_EVENT
εεN ^
;
εε^ _
}
ζζ 
else
ηη 
{
θθ 
resultOfOperation
ιι -
.
ιι- .
	CodeEvent
ιι. 7
=
ιι8 9!
ExceptionDictionary
ιι: M
.
ιιM N 
UNSUCCESFULL_EVENT
ιιN `
;
ιι` a
}
κκ 
resultOfOperation
λλ )
.
λλ) *
ObjectSaved
λλ* 5
=
λλ6 7
OPERATION_DONE
λλ8 F
;
λλF G
}
μμ 
else
νν 
{
ξξ 
resultOfOperation
οο )
.
οο) *
	CodeEvent
οο* 3
=
οο4 5!
ExceptionDictionary
οο6 I
.
οοI J 
UNSUCCESFULL_EVENT
οοJ \
;
οο\ ]
}
ππ 
}
ρρ 
}
ςς 
catch
σσ 
(
σσ 
DbUpdateException
σσ $
ex
σσ% '
)
σσ' (
{
ττ 
resultOfOperation
υυ !
=
υυ" #
ExceptionHandler
υυ$ 4
.
υυ4 5+
HandleExceptionDataAccesLevel
υυ5 R
(
υυR S
resultOfOperation
υυS d
,
υυd e
ex
υυf h
)
υυh i
;
υυi j
ExceptionHandler
φφ  
.
φφ  !
LogException
φφ! -
(
φφ- .
ex
φφ. 0
,
φφ0 1!
ExceptionDictionary
φφ2 E
.
φφE F
FATAL_EXCEPTION
φφF U
)
φφU V
;
φφV W
}
χχ 
catch
ψψ 
(
ψψ 
SqlException
ψψ 
ex
ψψ  "
)
ψψ" #
{
ωω 
resultOfOperation
ϊϊ !
=
ϊϊ" #
ExceptionHandler
ϊϊ$ 4
.
ϊϊ4 5+
HandleExceptionDataAccesLevel
ϊϊ5 R
(
ϊϊR S
resultOfOperation
ϊϊS d
,
ϊϊd e
ex
ϊϊf h
)
ϊϊh i
;
ϊϊi j
ExceptionHandler
ϋϋ  
.
ϋϋ  !
LogException
ϋϋ! -
(
ϋϋ- .
ex
ϋϋ. 0
,
ϋϋ0 1!
ExceptionDictionary
ϋϋ2 E
.
ϋϋE F
FATAL_EXCEPTION
ϋϋF U
)
ϋϋU V
;
ϋϋV W
}
όό 
catch
ύύ 
(
ύύ 
EntityException
ύύ "
ex
ύύ# %
)
ύύ% &
{
ώώ 
resultOfOperation
ÿÿ !
=
ÿÿ" #
ExceptionHandler
ÿÿ$ 4
.
ÿÿ4 5+
HandleExceptionDataAccesLevel
ÿÿ5 R
(
ÿÿR S
resultOfOperation
ÿÿS d
,
ÿÿd e
ex
ÿÿf h
)
ÿÿh i
;
ÿÿi j
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
 
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
ƒƒ 
resultOfOperation
„„ !
=
„„" #
ExceptionHandler
„„$ 4
.
„„4 5+
HandleExceptionDataAccesLevel
„„5 R
(
„„R S
resultOfOperation
„„S d
,
„„d e
ex
„„f h
)
„„h i
;
„„i j
ExceptionHandler
……  
.
……  !
LogException
……! -
(
……- .
ex
……. 0
,
……0 1!
ExceptionDictionary
……2 E
.
……E F
FATAL_EXCEPTION
……F U
)
……U V
;
……V W
}
†† 
return
‡‡ 
resultOfOperation
‡‡ $
;
‡‡$ %
}
 	
public
 
static
  
GenericClassServer
 (
<
( )
int
) ,
>
, -#
UpdateUserInformation
. C
(
C D
int
D G
idUser
H N
,
N O
string
P V

editedName
W a
)
a b
{
‹‹ 	 
GenericClassServer
 
<
 
int
 "
>
" #
resultOfOperation
$ 5
=
6 7
new
8 ; 
GenericClassServer
< N
<
N O
int
O R
>
R S
(
S T
)
T U
;
U V
if
 
(
 
string
 
.
 
IsNullOrEmpty
 $
(
$ %

editedName
% /
)
/ 0
||
1 3
idUser
4 :
==
; =
NULL_INT_VALUE
> L
)
L M
{
 
return
 #
NullParametersHandler
 ,
.
, -*
HandleNullParametersDataBase
- I
(
I J
resultOfOperation
J [
)
[ \
;
\ ]
}
 
try
‘‘ 
{
’’ 
using
““ 
(
““ 
var
““ 
	contextBD
““ $
=
““% &
new
““' *!
JeopardyDBContainer
““+ >
(
““> ?
)
““? @
)
““@ A
{
”” 
var
•• 
userToUpdate
•• $
=
••% &
	contextBD
••' 0
.
••0 1
Users
••1 6
.
••6 7
FirstOrDefault
••7 E
(
••E F
u
••F G
=>
••H J
u
••J K
.
••K L
IdUser
••L R
==
••S U
idUser
••V \
)
••\ ]
;
••] ^
if
–– 
(
–– 
userToUpdate
–– $
!=
––% '
null
––( ,
)
––, -
{
—— 
userToUpdate
 $
.
$ %
Name
% )
=
* +

editedName
, 6
;
6 7
int
™™ 
resultOfEvent
™™ )
=
™™* +
	contextBD
™™, 5
.
™™5 6
SaveChanges
™™6 A
(
™™A B
)
™™B C
;
™™C D
if
 
(
 
resultOfEvent
 )
!=
* ,
$num
- .
)
. /
{
›› 
resultOfOperation
 -
.
- .
	CodeEvent
. 7
=
8 9!
ExceptionDictionary
: M
.
M N
SUCCESFULL_EVENT
N ^
;
^ _
}
 
else
 
{
 
resultOfOperation
   -
.
  - .
	CodeEvent
  . 7
=
  8 9!
ExceptionDictionary
  : M
.
  M N 
UNSUCCESFULL_EVENT
  N `
;
  ` a
}
΅΅ 
resultOfOperation
ΆΆ )
.
ΆΆ) *
ObjectSaved
ΆΆ* 5
=
ΆΆ6 7
OPERATION_DONE
ΆΆ8 F
;
ΆΆF G
}
££ 
else
¤¤ 
{
¥¥ 
resultOfOperation
¦¦ )
.
¦¦) *
ObjectSaved
¦¦* 5
=
¦¦6 7
USER_NOT_FOUND
¦¦8 F
;
¦¦F G
resultOfOperation
§§ )
.
§§) *
	CodeEvent
§§* 3
=
§§4 5!
ExceptionDictionary
§§6 I
.
§§I J 
UNSUCCESFULL_EVENT
§§J \
;
§§\ ]
}
¨¨ 
}
©© 
}
ªª 
catch
«« 
(
«« 
DbUpdateException
«« $
ex
««% '
)
««' (
{
¬¬ 
resultOfOperation
­­ !
=
­­" #
ExceptionHandler
­­$ 4
.
­­4 5+
HandleExceptionDataAccesLevel
­­5 R
(
­­R S
resultOfOperation
­­S d
,
­­d e
ex
­­f h
)
­­h i
;
­­i j
ExceptionHandler
®®  
.
®®  !
LogException
®®! -
(
®®- .
ex
®®. 0
,
®®0 1!
ExceptionDictionary
®®2 E
.
®®E F
FATAL_EXCEPTION
®®F U
)
®®U V
;
®®V W
}
―― 
catch
°° 
(
°° 
SqlException
°° 
ex
°°  "
)
°°" #
{
±± 
resultOfOperation
²² !
=
²²" #
ExceptionHandler
²²$ 4
.
²²4 5+
HandleExceptionDataAccesLevel
²²5 R
(
²²R S
resultOfOperation
²²S d
,
²²d e
ex
²²f h
)
²²h i
;
²²i j
ExceptionHandler
³³  
.
³³  !
LogException
³³! -
(
³³- .
ex
³³. 0
,
³³0 1!
ExceptionDictionary
³³2 E
.
³³E F
FATAL_EXCEPTION
³³F U
)
³³U V
;
³³V W
}
΄΄ 
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
¶¶ 
resultOfOperation
·· !
=
··" #
ExceptionHandler
··$ 4
.
··4 5+
HandleExceptionDataAccesLevel
··5 R
(
··R S
resultOfOperation
··S d
,
··d e
ex
··f h
)
··h i
;
··i j
ExceptionHandler
ΈΈ  
.
ΈΈ  !
LogException
ΈΈ! -
(
ΈΈ- .
ex
ΈΈ. 0
,
ΈΈ0 1!
ExceptionDictionary
ΈΈ2 E
.
ΈΈE F
FATAL_EXCEPTION
ΈΈF U
)
ΈΈU V
;
ΈΈV W
}
ΉΉ 
catch
ΊΊ 
(
ΊΊ )
DbEntityValidationException
ΊΊ .
ex
ΊΊ/ 1
)
ΊΊ1 2
{
»» 
resultOfOperation
ΌΌ !
=
ΌΌ" #
ExceptionHandler
ΌΌ$ 4
.
ΌΌ4 5+
HandleExceptionDataAccesLevel
ΌΌ5 R
(
ΌΌR S
resultOfOperation
ΌΌS d
,
ΌΌd e
ex
ΌΌf h
)
ΌΌh i
;
ΌΌi j
ExceptionHandler
½½  
.
½½  !
LogException
½½! -
(
½½- .
ex
½½. 0
,
½½0 1!
ExceptionDictionary
½½2 E
.
½½E F
FATAL_EXCEPTION
½½F U
)
½½U V
;
½½V W
}
ΎΎ 
return
ΏΏ 
resultOfOperation
ΏΏ $
;
ΏΏ$ %
}
ΐΐ 	
public
ΒΒ 
static
ΒΒ  
GenericClassServer
ΒΒ (
<
ΒΒ( )
List
ΒΒ) -
<
ΒΒ- .

PlayerInfo
ΒΒ. 8
>
ΒΒ8 9
>
ΒΒ9 :"
GetBestPlayersPoints
ΒΒ; O
(
ΒΒO P
)
ΒΒP Q
{
ΓΓ 	 
GenericClassServer
ΔΔ 
<
ΔΔ  
List
ΔΔ  $
<
ΔΔ$ %

PlayerInfo
ΔΔ% /
>
ΔΔ/ 0
>
ΔΔ0 1
resultOfOperation
ΔΔ2 C
=
ΔΔD E
new
ΔΔF I 
GenericClassServer
ΔΔJ \
<
ΔΔ\ ]
List
ΔΔ] a
<
ΔΔa b

PlayerInfo
ΔΔb l
>
ΔΔl m
>
ΔΔm n
(
ΔΔn o
)
ΔΔo p
;
ΔΔp q
try
ΕΕ 
{
ΖΖ 
using
ΗΗ 
(
ΗΗ 
var
ΗΗ 
context
ΗΗ "
=
ΗΗ# $
new
ΗΗ% (!
JeopardyDBContainer
ΗΗ) <
(
ΗΗ< =
)
ΗΗ= >
)
ΗΗ> ?
{
ΘΘ 
var
ΙΙ 
playersInfo
ΙΙ #
=
ΙΙ$ %
context
ΙΙ& -
.
ΙΙ- .
Players
ΙΙ. 5
.
ΙΙ5 6
OrderByDescending
ΙΙ6 G
(
ΙΙG H
p
ΙΙH I
=>
ΙΙJ L
p
ΙΙM N
.
ΙΙN O
GeneralPoints
ΙΙO \
)
ΙΙ\ ]
.
ΚΚ 
Select
ΚΚ 
(
ΚΚ  
p
ΚΚ  !
=>
ΚΚ" $
new
ΚΚ% (

PlayerInfo
ΚΚ) 3
{
ΛΛ 
Name
ΜΜ  
=
ΜΜ! "
p
ΜΜ# $
.
ΜΜ$ %
User
ΜΜ% )
.
ΜΜ) *
UserName
ΜΜ* 2
,
ΜΜ2 3
Points
ΝΝ "
=
ΝΝ# $
p
ΝΝ% &
.
ΝΝ& '
GeneralPoints
ΝΝ' 4
??
ΝΝ5 7
$num
ΝΝ8 9
}
ΞΞ 
)
ΞΞ 
.
ΞΞ 
Take
ΞΞ 
(
ΞΞ  
$num
ΞΞ  "
)
ΞΞ" #
.
ΞΞ# $
ToList
ΞΞ$ *
(
ΞΞ* +
)
ΞΞ+ ,
;
ΞΞ, -
resultOfOperation
ΟΟ %
.
ΟΟ% &
ObjectSaved
ΟΟ& 1
=
ΟΟ2 3
playersInfo
ΟΟ4 ?
;
ΟΟ? @
resultOfOperation
ΠΠ %
.
ΠΠ% &
	CodeEvent
ΠΠ& /
=
ΠΠ0 1!
ExceptionDictionary
ΠΠ2 E
.
ΠΠE F
SUCCESFULL_EVENT
ΠΠF V
;
ΠΠV W
}
ΡΡ 
}
ÒÒ 
catch
ΣΣ 
(
ΣΣ 
DbUpdateException
ΣΣ #
ex
ΣΣ$ &
)
ΣΣ& '
{
ΤΤ 
resultOfOperation
ΥΥ !
=
ΥΥ" #
ExceptionHandler
ΥΥ$ 4
.
ΥΥ4 5+
HandleExceptionDataAccesLevel
ΥΥ5 R
(
ΥΥR S
resultOfOperation
ΥΥS d
,
ΥΥd e
ex
ΥΥf h
)
ΥΥh i
;
ΥΥi j
ExceptionHandler
ΦΦ  
.
ΦΦ  !
LogException
ΦΦ! -
(
ΦΦ- .
ex
ΦΦ. 0
,
ΦΦ0 1!
ExceptionDictionary
ΦΦ2 E
.
ΦΦE F
FATAL_EXCEPTION
ΦΦF U
)
ΦΦU V
;
ΦΦV W
}
ΧΧ 
catch
ΨΨ 
(
ΨΨ 
SqlException
ΨΨ 
ex
ΨΨ  "
)
ΨΨ" #
{
ΩΩ 
resultOfOperation
ΪΪ !
=
ΪΪ" #
ExceptionHandler
ΪΪ$ 4
.
ΪΪ4 5+
HandleExceptionDataAccesLevel
ΪΪ5 R
(
ΪΪR S
resultOfOperation
ΪΪS d
,
ΪΪd e
ex
ΪΪf h
)
ΪΪh i
;
ΪΪi j
ExceptionHandler
ΫΫ  
.
ΫΫ  !
LogException
ΫΫ! -
(
ΫΫ- .
ex
ΫΫ. 0
,
ΫΫ0 1!
ExceptionDictionary
ΫΫ2 E
.
ΫΫE F
FATAL_EXCEPTION
ΫΫF U
)
ΫΫU V
;
ΫΫV W
}
άά 
catch
έέ 
(
έέ 
EntityException
έέ "
ex
έέ# %
)
έέ% &
{
ήή 
resultOfOperation
ίί !
=
ίί" #
ExceptionHandler
ίί$ 4
.
ίί4 5+
HandleExceptionDataAccesLevel
ίί5 R
(
ίίR S
resultOfOperation
ίίS d
,
ίίd e
ex
ίίf h
)
ίίh i
;
ίίi j
ExceptionHandler
ΰΰ  
.
ΰΰ  !
LogException
ΰΰ! -
(
ΰΰ- .
ex
ΰΰ. 0
,
ΰΰ0 1!
ExceptionDictionary
ΰΰ2 E
.
ΰΰE F
FATAL_EXCEPTION
ΰΰF U
)
ΰΰU V
;
ΰΰV W
}
αα 
catch
ββ 
(
ββ )
DbEntityValidationException
ββ .
ex
ββ/ 1
)
ββ1 2
{
γγ 
resultOfOperation
δδ !
=
δδ" #
ExceptionHandler
δδ$ 4
.
δδ4 5+
HandleExceptionDataAccesLevel
δδ5 R
(
δδR S
resultOfOperation
δδS d
,
δδd e
ex
δδf h
)
δδh i
;
δδi j
ExceptionHandler
εε  
.
εε  !
LogException
εε! -
(
εε- .
ex
εε. 0
,
εε0 1!
ExceptionDictionary
εε2 E
.
εεE F
FATAL_EXCEPTION
εεF U
)
εεU V
;
εεV W
}
ζζ 
return
ηη 
resultOfOperation
ηη $
;
ηη$ %
}
ιι 	
public
λλ 
static
λλ  
GenericClassServer
λλ (
<
λλ( )
int
λλ) ,
>
λλ, -!
DeleteAllGuestUsers
λλ. A
(
λλA B
)
λλB C
{
μμ 	 
GenericClassServer
νν 
<
νν 
int
νν "
>
νν" #
resultOfOperation
νν$ 5
=
νν6 7
new
νν8 ; 
GenericClassServer
νν< N
<
ννN O
int
ννO R
>
ννR S
(
ννS T
)
ννT U
;
ννU V
resultOfOperation
ξξ 
.
ξξ 
	CodeEvent
ξξ '
=
ξξ( )!
ExceptionDictionary
ξξ* =
.
ξξ= > 
UNSUCCESFULL_EVENT
ξξ> P
;
ξξP Q
try
οο 
{
ππ 
using
ρρ 
(
ρρ 
var
ρρ 
	contextBD
ρρ $
=
ρρ% &
new
ρρ' *!
JeopardyDBContainer
ρρ+ >
(
ρρ> ?
)
ρρ? @
)
ρρ@ A
{
ςς 
var
σσ 
usersConsulted
σσ &
=
σσ' (
	contextBD
σσ) 2
.
σσ2 3
Users
σσ3 8
.
σσ8 9
Where
σσ9 >
(
σσ> ?
user
σσ? C
=>
σσD F
user
σσG K
.
σσK L
Name
σσL P
.
σσP Q
Equals
σσQ W
(
σσW X
$str
σσX Z
)
σσZ [
)
σσ[ \
.
σσ\ ]
ToList
σσ] c
(
σσc d
)
σσd e
;
σσe f
if
ττ 
(
ττ 
usersConsulted
ττ &
.
ττ& '
Count
ττ' ,
>
ττ- .
$num
ττ/ 0
)
ττ0 1
{
υυ 
List
φφ 
<
φφ 
Player
φφ #
>
φφ# $
playerGuests
φφ% 1
=
φφ2 3
new
φφ4 7
List
φφ8 <
<
φφ< =
Player
φφ= C
>
φφC D
(
φφD E
)
φφE F
;
φφF G
foreach
χχ 
(
χχ  !
User
χχ! %
user
χχ& *
in
χχ+ -
usersConsulted
χχ. <
)
χχ< =
{
ψψ 
var
ωω 
playerToDelete
ωω  .
=
ωω/ 0
	contextBD
ωω1 :
.
ωω: ;
Players
ωω; B
.
ωωB C
FirstOrDefault
ωωC Q
(
ωωQ R
pla
ωωR U
=>
ωωV X
pla
ωωY \
.
ωω\ ]
User_IdUser
ωω] h
==
ωωi k
user
ωωl p
.
ωωp q
IdUser
ωωq w
)
ωωw x
;
ωωx y
if
ϊϊ 
(
ϊϊ  
playerToDelete
ϊϊ  .
!=
ϊϊ/ 1
null
ϊϊ2 6
)
ϊϊ6 7
{
ϋϋ 
playerGuests
όό  ,
.
όό, -
Add
όό- 0
(
όό0 1
playerToDelete
όό1 ?
)
όό? @
;
όό@ A
}
ύύ 
}
ώώ 
if
ÿÿ 
(
ÿÿ 
playerGuests
ÿÿ (
.
ÿÿ( )
Count
ÿÿ) .
!=
ÿÿ/ 1
$num
ÿÿ2 3
)
ÿÿ3 4
{
€€ 
	contextBD
 %
.
% &
Players
& -
.
- .
RemoveRange
. 9
(
9 :
playerGuests
: F
)
F G
;
G H
}
‚‚ 
	contextBD
ƒƒ !
.
ƒƒ! "
Users
ƒƒ" '
.
ƒƒ' (
RemoveRange
ƒƒ( 3
(
ƒƒ3 4
usersConsulted
ƒƒ4 B
)
ƒƒB C
;
ƒƒC D
	contextBD
„„ !
.
„„! "
SaveChanges
„„" -
(
„„- .
)
„„. /
;
„„/ 0
}
…… 
resultOfOperation
†† %
.
††% &
	CodeEvent
††& /
=
††0 1!
ExceptionDictionary
††2 E
.
††E F
SUCCESFULL_EVENT
††F V
;
††V W
}
‡‡ 
}
 
catch
‰‰ 
(
‰‰ 
DbUpdateException
‰‰ $
ex
‰‰% '
)
‰‰' (
{
 
resultOfOperation
‹‹ !
=
‹‹" #
ExceptionHandler
‹‹$ 4
.
‹‹4 5+
HandleExceptionDataAccesLevel
‹‹5 R
(
‹‹R S
resultOfOperation
‹‹S d
,
‹‹d e
ex
‹‹f h
)
‹‹h i
;
‹‹i j
ExceptionHandler
  
.
  !
LogException
! -
(
- .
ex
. 0
,
0 1!
ExceptionDictionary
2 E
.
E F
FATAL_EXCEPTION
F U
)
U V
;
V W
}
 
catch
 
(
 
EntityException
 "
ex
# %
)
% &
{
 
resultOfOperation
 !
=
" #
ExceptionHandler
$ 4
.
4 5+
HandleExceptionDataAccesLevel
5 R
(
R S
resultOfOperation
S d
,
d e
ex
f h
)
h i
;
i j
ExceptionHandler
‘‘  
.
‘‘  !
LogException
‘‘! -
(
‘‘- .
ex
‘‘. 0
,
‘‘0 1!
ExceptionDictionary
‘‘2 E
.
‘‘E F
FATAL_EXCEPTION
‘‘F U
)
‘‘U V
;
‘‘V W
}
’’ 
catch
““ 
(
““ 
SqlException
““ 
ex
““  "
)
““" #
{
”” 
resultOfOperation
•• !
=
••" #
ExceptionHandler
••$ 4
.
••4 5+
HandleExceptionDataAccesLevel
••5 R
(
••R S
resultOfOperation
••S d
,
••d e
ex
••f h
)
••h i
;
••i j
ExceptionHandler
––  
.
––  !
LogException
––! -
(
––- .
ex
––. 0
,
––0 1!
ExceptionDictionary
––2 E
.
––E F
FATAL_EXCEPTION
––F U
)
––U V
;
––V W
}
—— 
catch
 
(
 )
DbEntityValidationException
 .
ex
/ 1
)
1 2
{
™™ 
resultOfOperation
 !
=
" #
ExceptionHandler
$ 4
.
4 5+
HandleExceptionDataAccesLevel
5 R
(
R S
resultOfOperation
S d
,
d e
ex
f h
)
h i
;
i j
ExceptionHandler
››  
.
››  !
LogException
››! -
(
››- .
ex
››. 0
,
››0 1!
ExceptionDictionary
››2 E
.
››E F
FATAL_EXCEPTION
››F U
)
››U V
;
››V W
}
 
return
 
resultOfOperation
 $
;
$ %
}
 	
public
   
static
    
GenericClassServer
   (
<
  ( )
int
  ) ,
>
  , -
UpdateEmailUser
  . =
(
  = >
int
  > A
idUser
  B H
,
  H I
string
  J P
email
  Q V
)
  V W
{
΅΅ 	 
GenericClassServer
ΆΆ 
<
ΆΆ 
int
ΆΆ "
>
ΆΆ" #
resultOfOperation
ΆΆ$ 5
=
ΆΆ6 7
new
ΆΆ8 ; 
GenericClassServer
ΆΆ< N
<
ΆΆN O
int
ΆΆO R
>
ΆΆR S
(
ΆΆS T
)
ΆΆT U
;
ΆΆU V
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
¤¤ 
return
¥¥ #
NullParametersHandler
¥¥ ,
.
¥¥, -*
HandleNullParametersDataBase
¥¥- I
(
¥¥I J
resultOfOperation
¥¥J [
)
¥¥[ \
;
¥¥\ ]
}
¦¦ 
try
§§ 
{
¨¨ 
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
ªª 
var
«« 
user
«« 
=
«« 
	contextBD
«« (
.
««( )
Users
««) .
.
««. /
FirstOrDefault
««/ =
(
««= >
p
««> ?
=>
««@ B
p
««C D
.
««D E
IdUser
««E K
==
««L N
idUser
««O U
)
««U V
;
««V W
if
¬¬ 
(
¬¬ 
user
¬¬ 
!=
¬¬ 
null
¬¬  $
)
¬¬$ %
{
­­ 
user
®® 
.
®® 
EmailAddress
®® )
=
®®* +
email
®®, 1
;
®®1 2
int
―― 
resultOfEvent
―― )
=
――* +
	contextBD
――, 5
.
――5 6
SaveChanges
――6 A
(
――A B
)
――B C
;
――C D
if
°° 
(
°° 
resultOfEvent
°° )
!=
°°* ,
$num
°°- .
)
°°. /
{
±± 
resultOfOperation
²² -
.
²²- .
	CodeEvent
²². 7
=
²²8 9!
ExceptionDictionary
²²: M
.
²²M N
SUCCESFULL_EVENT
²²N ^
;
²²^ _
}
³³ 
else
΄΄ 
{
µµ 
resultOfOperation
¶¶ -
.
¶¶- .
	CodeEvent
¶¶. 7
=
¶¶8 9!
ExceptionDictionary
¶¶: M
.
¶¶M N 
UNSUCCESFULL_EVENT
¶¶N `
;
¶¶` a
}
·· 
resultOfOperation
ΈΈ )
.
ΈΈ) *
ObjectSaved
ΈΈ* 5
=
ΈΈ6 7
OPERATION_DONE
ΈΈ8 F
;
ΈΈF G
}
ΉΉ 
else
ΊΊ 
{
»» 
resultOfOperation
ΌΌ )
.
ΌΌ) *
	CodeEvent
ΌΌ* 3
=
ΌΌ4 5!
ExceptionDictionary
ΌΌ6 I
.
ΌΌI J 
UNSUCCESFULL_EVENT
ΌΌJ \
;
ΌΌ\ ]
}
½½ 
}
ΎΎ 
}
ΏΏ 
catch
ΐΐ 
(
ΐΐ 
DbUpdateException
ΐΐ $
ex
ΐΐ% '
)
ΐΐ' (
{
ΑΑ 
resultOfOperation
ΒΒ !
=
ΒΒ" #
ExceptionHandler
ΒΒ$ 4
.
ΒΒ4 5+
HandleExceptionDataAccesLevel
ΒΒ5 R
(
ΒΒR S
resultOfOperation
ΒΒS d
,
ΒΒd e
ex
ΒΒf h
)
ΒΒh i
;
ΒΒi j
ExceptionHandler
ΓΓ  
.
ΓΓ  !
LogException
ΓΓ! -
(
ΓΓ- .
ex
ΓΓ. 0
,
ΓΓ0 1!
ExceptionDictionary
ΓΓ2 E
.
ΓΓE F
FATAL_EXCEPTION
ΓΓF U
)
ΓΓU V
;
ΓΓV W
}
ΔΔ 
catch
ΕΕ 
(
ΕΕ 
SqlException
ΕΕ 
ex
ΕΕ  "
)
ΕΕ" #
{
ΖΖ 
resultOfOperation
ΗΗ !
=
ΗΗ" #
ExceptionHandler
ΗΗ$ 4
.
ΗΗ4 5+
HandleExceptionDataAccesLevel
ΗΗ5 R
(
ΗΗR S
resultOfOperation
ΗΗS d
,
ΗΗd e
ex
ΗΗf h
)
ΗΗh i
;
ΗΗi j
ExceptionHandler
ΘΘ  
.
ΘΘ  !
LogException
ΘΘ! -
(
ΘΘ- .
ex
ΘΘ. 0
,
ΘΘ0 1!
ExceptionDictionary
ΘΘ2 E
.
ΘΘE F
FATAL_EXCEPTION
ΘΘF U
)
ΘΘU V
;
ΘΘV W
}
ΙΙ 
catch
ΚΚ 
(
ΚΚ 
EntityException
ΚΚ "
ex
ΚΚ# %
)
ΚΚ% &
{
ΛΛ 
resultOfOperation
ΜΜ !
=
ΜΜ" #
ExceptionHandler
ΜΜ$ 4
.
ΜΜ4 5+
HandleExceptionDataAccesLevel
ΜΜ5 R
(
ΜΜR S
resultOfOperation
ΜΜS d
,
ΜΜd e
ex
ΜΜf h
)
ΜΜh i
;
ΜΜi j
ExceptionHandler
ΝΝ  
.
ΝΝ  !
LogException
ΝΝ! -
(
ΝΝ- .
ex
ΝΝ. 0
,
ΝΝ0 1!
ExceptionDictionary
ΝΝ2 E
.
ΝΝE F
FATAL_EXCEPTION
ΝΝF U
)
ΝΝU V
;
ΝΝV W
}
ΞΞ 
catch
ΟΟ 
(
ΟΟ )
DbEntityValidationException
ΟΟ .
ex
ΟΟ/ 1
)
ΟΟ1 2
{
ΠΠ 
resultOfOperation
ΡΡ !
=
ΡΡ" #
ExceptionHandler
ΡΡ$ 4
.
ΡΡ4 5+
HandleExceptionDataAccesLevel
ΡΡ5 R
(
ΡΡR S
resultOfOperation
ΡΡS d
,
ΡΡd e
ex
ΡΡf h
)
ΡΡh i
;
ΡΡi j
ExceptionHandler
ÒÒ  
.
ÒÒ  !
LogException
ÒÒ! -
(
ÒÒ- .
ex
ÒÒ. 0
,
ÒÒ0 1!
ExceptionDictionary
ÒÒ2 E
.
ÒÒE F
FATAL_EXCEPTION
ÒÒF U
)
ÒÒU V
;
ÒÒV W
}
ΣΣ 
return
ΤΤ 
resultOfOperation
ΤΤ $
;
ΤΤ$ %
}
ΥΥ 	
public
ΧΧ 
static
ΧΧ  
GenericClassServer
ΧΧ (
<
ΧΧ( )
int
ΧΧ) ,
>
ΧΧ, - 
UpdatePasswordUser
ΧΧ. @
(
ΧΧ@ A
string
ΧΧA G
userName
ΧΧH P
,
ΧΧP Q
string
ΧΧR X
password
ΧΧY a
)
ΧΧa b
{
ΨΨ 	 
GenericClassServer
ΩΩ 
<
ΩΩ 
int
ΩΩ "
>
ΩΩ" #
resultOfOperation
ΩΩ$ 5
=
ΩΩ6 7
new
ΩΩ8 ; 
GenericClassServer
ΩΩ< N
<
ΩΩN O
int
ΩΩO R
>
ΩΩR S
(
ΩΩS T
)
ΩΩT U
;
ΩΩU V
if
ΪΪ 
(
ΪΪ 
string
ΪΪ 
.
ΪΪ 
IsNullOrEmpty
ΪΪ $
(
ΪΪ$ %
password
ΪΪ% -
)
ΪΪ- .
||
ΪΪ/ 1
string
ΪΪ2 8
.
ΪΪ8 9
IsNullOrEmpty
ΪΪ9 F
(
ΪΪF G
userName
ΪΪG O
)
ΪΪO P
)
ΪΪP Q
{
ΫΫ 
return
άά #
NullParametersHandler
άά ,
.
άά, -*
HandleNullParametersDataBase
άά- I
(
άάI J
resultOfOperation
άάJ [
)
άά[ \
;
άά\ ]
}
έέ 
try
ήή 
{
ίί 
using
ΰΰ 
(
ΰΰ 
var
ΰΰ 
	contextBD
ΰΰ $
=
ΰΰ% &
new
ΰΰ' *!
JeopardyDBContainer
ΰΰ+ >
(
ΰΰ> ?
)
ΰΰ? @
)
ΰΰ@ A
{
αα 
var
ββ 
user
ββ 
=
ββ 
	contextBD
ββ (
.
ββ( )
Users
ββ) .
.
ββ. /
FirstOrDefault
ββ/ =
(
ββ= >
p
ββ> ?
=>
ββ@ B
p
ββC D
.
ββD E
UserName
ββE M
.
ββM N
Equals
ββN T
(
ββT U
userName
ββU ]
)
ββ] ^
)
ββ^ _
;
ββ_ `
if
γγ 
(
γγ 
user
γγ 
!=
γγ 
null
γγ  $
)
γγ$ %
{
δδ 
user
εε 
.
εε 
Password
εε %
=
εε& '
password
εε( 0
;
εε0 1
int
ζζ 
resultOfEvent
ζζ )
=
ζζ* +
	contextBD
ζζ, 5
.
ζζ5 6
SaveChanges
ζζ6 A
(
ζζA B
)
ζζB C
;
ζζC D
if
ηη 
(
ηη 
resultOfEvent
ηη )
!=
ηη* ,
$num
ηη- .
)
ηη. /
{
θθ 
resultOfOperation
ιι -
.
ιι- .
	CodeEvent
ιι. 7
=
ιι8 9!
ExceptionDictionary
ιι: M
.
ιιM N
SUCCESFULL_EVENT
ιιN ^
;
ιι^ _
}
κκ 
else
λλ 
{
μμ 
resultOfOperation
νν -
.
νν- .
	CodeEvent
νν. 7
=
νν8 9!
ExceptionDictionary
νν: M
.
ννM N 
UNSUCCESFULL_EVENT
ννN `
;
νν` a
}
ξξ 
resultOfOperation
οο )
.
οο) *
ObjectSaved
οο* 5
=
οο6 7
OPERATION_DONE
οο8 F
;
οοF G
}
ππ 
else
ρρ 
{
ςς 
resultOfOperation
σσ )
.
σσ) *
	CodeEvent
σσ* 3
=
σσ4 5!
ExceptionDictionary
σσ6 I
.
σσI J 
UNSUCCESFULL_EVENT
σσJ \
;
σσ\ ]
}
ττ 
}
υυ 
}
φφ 
catch
χχ 
(
χχ 
DbUpdateException
χχ $
ex
χχ% '
)
χχ' (
{
ψψ 
resultOfOperation
ωω !
=
ωω" #
ExceptionHandler
ωω$ 4
.
ωω4 5+
HandleExceptionDataAccesLevel
ωω5 R
(
ωωR S
resultOfOperation
ωωS d
,
ωωd e
ex
ωωf h
)
ωωh i
;
ωωi j
ExceptionHandler
ϊϊ  
.
ϊϊ  !
LogException
ϊϊ! -
(
ϊϊ- .
ex
ϊϊ. 0
,
ϊϊ0 1!
ExceptionDictionary
ϊϊ2 E
.
ϊϊE F
FATAL_EXCEPTION
ϊϊF U
)
ϊϊU V
;
ϊϊV W
}
ϋϋ 
catch
όό 
(
όό 
SqlException
όό 
ex
όό  "
)
όό" #
{
ύύ 
resultOfOperation
ώώ !
=
ώώ" #
ExceptionHandler
ώώ$ 4
.
ώώ4 5+
HandleExceptionDataAccesLevel
ώώ5 R
(
ώώR S
resultOfOperation
ώώS d
,
ώώd e
ex
ώώf h
)
ώώh i
;
ώώi j
ExceptionHandler
ÿÿ  
.
ÿÿ  !
LogException
ÿÿ! -
(
ÿÿ- .
ex
ÿÿ. 0
,
ÿÿ0 1!
ExceptionDictionary
ÿÿ2 E
.
ÿÿE F
FATAL_EXCEPTION
ÿÿF U
)
ÿÿU V
;
ÿÿV W
}
€€ 
catch
 
(
 
EntityException
 "
ex
# %
)
% &
{
‚‚ 
resultOfOperation
ƒƒ !
=
ƒƒ" #
ExceptionHandler
ƒƒ$ 4
.
ƒƒ4 5+
HandleExceptionDataAccesLevel
ƒƒ5 R
(
ƒƒR S
resultOfOperation
ƒƒS d
,
ƒƒd e
ex
ƒƒf h
)
ƒƒh i
;
ƒƒi j
ExceptionHandler
„„  
.
„„  !
LogException
„„! -
(
„„- .
ex
„„. 0
,
„„0 1!
ExceptionDictionary
„„2 E
.
„„E F
FATAL_EXCEPTION
„„F U
)
„„U V
;
„„V W
}
…… 
catch
†† 
(
†† )
DbEntityValidationException
†† .
ex
††/ 1
)
††1 2
{
‡‡ 
resultOfOperation
 !
=
" #
ExceptionHandler
$ 4
.
4 5+
HandleExceptionDataAccesLevel
5 R
(
R S
resultOfOperation
S d
,
d e
ex
f h
)
h i
;
i j
ExceptionHandler
‰‰  
.
‰‰  !
LogException
‰‰! -
(
‰‰- .
ex
‰‰. 0
,
‰‰0 1!
ExceptionDictionary
‰‰2 E
.
‰‰E F
FATAL_EXCEPTION
‰‰F U
)
‰‰U V
;
‰‰V W
}
 
return
‹‹ 
resultOfOperation
‹‹ $
;
‹‹$ %
}
 	
}
 
}
 ω7
„C:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameServer\JeopardyGame.Data\Exceptions\ExceptionDiccionary.cs
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
}NN ΞD
C:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameServer\JeopardyGame.Data\Exceptions\ExceptionHandler.cs
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
$str	{ 
{
 ‹
	exception
‹ ”
.
” •

StackTrace
• 
}
  
$str
  Ά
"
Ά £
;
£ ¤
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
IOException 
ex !
)! "
{ 
Console 
. 
	WriteLine !
(! "
ex" $
.$ %
Message% ,
), -
;- .
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
	exception	##~ ‡
)
##‡ 
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
!=NN 
nullNN !
)NN! "
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
Paths	} ‚
.
‚ ƒ

DateFromat
ƒ 
)
 
)
 
)
 
;
 ‘
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
RollingInterval	""t ƒ
.
""ƒ „
Day
""„ ‡
)
""‡ 
.
"" ‰
CreateLogger
""‰ •
(
""• –
)
""– —
;
""— 
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
}ZZ ‰
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
UserPojo# +
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

PlayerPojo# -
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
UserPojoKK 
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

PlayerPojoSS 
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
CategoryPojovv 
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
QuestionPojoxx #
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

AnswerPojozz 
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

AnswerPojo|| 
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

AnswerPojo~~ 
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
€€ 

AnswerPojo
€€ 
WrongOptionThree
€€ *
{
€€+ ,
get
€€- 0
;
€€0 1
set
€€2 5
;
€€5 6
}
€€7 8
[
 	

DataMember
	 
]
 
public
‚‚ 
int
‚‚ 
NumberOfRound
‚‚  
{
‚‚! "
get
‚‚# &
;
‚‚& '
set
‚‚( +
;
‚‚+ ,
}
‚‚- .
}
ƒƒ 
public
…… 

class
…… 
QuestionPojo
…… 
{
†† 
public
‡‡ 
int
‡‡ 

IdQuestion
‡‡ 
{
‡‡ 
get
‡‡  #
;
‡‡# $
set
‡‡% (
;
‡‡( )
}
‡‡* +
public
 
string
 (
SpanishQuestionDescription
 0
{
1 2
get
3 6
;
6 7
set
8 ;
;
; <
}
= >
public
‰‰ 
string
‰‰ (
EnglishQuestionDescription
‰‰ 0
{
‰‰1 2
get
‰‰3 6
;
‰‰6 7
set
‰‰8 ;
;
‰‰; <
}
‰‰= >
public
 
int
 
IdCategoryBelong
 #
{
$ %
get
& )
;
) *
set
+ .
;
. /
}
0 1
public
‹‹ 
int
‹‹  
IdAnswerOfQuestion
‹‹ %
{
‹‹& '
get
‹‹( +
;
‹‹+ ,
set
‹‹- 0
;
‹‹0 1
}
‹‹2 3
public
 
int
 

ValueWorth
 
{
 
get
  #
;
# $
set
% (
;
( )
}
* +
}
 
public
 

class
 

AnswerPojo
 
{
 
public
‘‘ 
int
‘‘ 
IdAnswer
‘‘ 
{
‘‘ 
get
‘‘ !
;
‘‘! "
set
‘‘# &
;
‘‘& '
}
‘‘( )
public
’’ 
string
’’ &
SpanishAnswerDescription
’’ .
{
’’/ 0
get
’’1 4
;
’’4 5
set
’’6 9
;
’’9 :
}
’’; <
public
““ 
string
““ &
EnglishAnswerDescription
““ .
{
““/ 0
get
““1 4
;
““4 5
set
““6 9
;
““9 :
}
““; <
public
”” 
int
”” 

IdCategory
”” 
{
”” 
get
””  #
;
””# $
set
””% (
;
””( )
}
””* +
}
•• 
public
—— 

class
—— 
CategoryPojo
—— 
{
 
public
™™ 
int
™™ 

IdCategory
™™ 
{
™™ 
get
™™  #
;
™™# $
set
™™% (
;
™™( )
}
™™* +
public
 
string
 (
SpanishCategoryDescription
 0
{
1 2
get
3 6
;
6 7
set
8 ;
;
; <
}
= >
public
›› 
string
›› (
EnglishCategoryDescription
›› 0
{
››1 2
get
››3 6
;
››6 7
set
››8 ;
;
››; <
}
››= >
}
 
[
 
DataContract
 
]
 
public
 

class
 &
PlayerInGameDataContract
 )
{
   
[
΅΅ 	

DataMember
΅΅	 
]
΅΅ 
public
ΆΆ 
int
ΆΆ 
IdUser
ΆΆ 
{
ΆΆ 
get
ΆΆ 
;
ΆΆ  
set
ΆΆ! $
;
ΆΆ$ %
}
ΆΆ& '
[
££ 	

DataMember
££	 
]
££ 
public
¤¤ 
int
¤¤ 
IdPlayer
¤¤ 
{
¤¤ 
get
¤¤ !
;
¤¤! "
set
¤¤# &
;
¤¤& '
}
¤¤( )
[
¥¥ 	

DataMember
¥¥	 
]
¥¥ 
public
¦¦ 
int
¦¦ 
FinalPosition
¦¦  
{
¦¦! "
get
¦¦# &
;
¦¦& '
set
¦¦( +
;
¦¦+ ,
}
¦¦- .
[
§§ 	

DataMember
§§	 
]
§§ 
public
¨¨ 
String
¨¨ 
UserName
¨¨ 
{
¨¨  
get
¨¨! $
;
¨¨$ %
set
¨¨& )
;
¨¨) *
}
¨¨+ ,
[
©© 	

DataMember
©©	 
]
©© 
public
ªª 
int
ªª 
SideTeam
ªª 
{
ªª 
get
ªª !
;
ªª! "
set
ªª# &
;
ªª& '
}
ªª( )
[
«« 	

DataMember
««	 
]
«« 
public
¬¬ 
int
¬¬ 
TurnOfPlayer
¬¬ 
{
¬¬  !
get
¬¬" %
;
¬¬% &
set
¬¬' *
;
¬¬* +
}
¬¬, -
[
­­ 	

DataMember
­­	 
]
­­ 
public
®® 
int
®® 
IdAvatar
®® 
{
®® 
get
®® !
;
®®! "
set
®®# &
;
®®& '
}
®®( )
[
―― 	

DataMember
――	 
]
―― 
public
°° 
int
°° "
CurrentPointsOfRound
°° '
{
°°( )
get
°°* -
;
°°- .
set
°°/ 2
;
°°2 3
}
°°4 5
}
±± 
[
΄΄ 
DataContract
΄΄ 
]
΄΄ 
public
µµ 

class
µµ +
CurrentQuestionToShowContract
µµ .
{
¶¶ 
[
·· 	

DataMember
··	 
]
·· 
public
ΈΈ 
int
ΈΈ 

IdQuestion
ΈΈ 
{
ΈΈ 
get
ΈΈ  #
;
ΈΈ# $
set
ΈΈ% (
;
ΈΈ( )
}
ΈΈ* +
[
ΉΉ 	

DataMember
ΉΉ	 
]
ΉΉ 
public
ΊΊ 
int
ΊΊ 
IdFirstAnswer
ΊΊ  
{
ΊΊ! "
get
ΊΊ# &
;
ΊΊ& '
set
ΊΊ( +
;
ΊΊ+ ,
}
ΊΊ- .
[
»» 	

DataMember
»»	 
]
»» 
public
ΌΌ 
int
ΌΌ 
IdSecondAnswer
ΌΌ !
{
ΌΌ" #
get
ΌΌ$ '
;
ΌΌ' (
set
ΌΌ) ,
;
ΌΌ, -
}
ΌΌ. /
[
½½ 	

DataMember
½½	 
]
½½ 
public
ΎΎ 
int
ΎΎ 
IdThirdAnswer
ΎΎ  
{
ΎΎ! "
get
ΎΎ# &
;
ΎΎ& '
set
ΎΎ( +
;
ΎΎ+ ,
}
ΎΎ- .
[
ΏΏ 	

DataMember
ΏΏ	 
]
ΏΏ 
public
ΐΐ 
int
ΐΐ 
IdFourthAnswer
ΐΐ !
{
ΐΐ" #
get
ΐΐ$ '
;
ΐΐ' (
set
ΐΐ) ,
;
ΐΐ, -
}
ΐΐ. /
}
ΑΑ 
public
ΔΔ 

class
ΔΔ 

PlayerInfo
ΔΔ 
{
ΕΕ 
public
ΖΖ 
string
ΖΖ 
Name
ΖΖ 
{
ΖΖ 
get
ΖΖ  
;
ΖΖ  !
set
ΖΖ" %
;
ΖΖ% &
}
ΖΖ' (
public
ΘΘ 
long
ΘΘ 
Points
ΘΘ 
{
ΘΘ 
get
ΘΘ  
;
ΘΘ  !
set
ΘΘ" %
;
ΘΘ% &
}
ΘΘ' (
}
ΙΙ 
}ΜΜ ¨
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