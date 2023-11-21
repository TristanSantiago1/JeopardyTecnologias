ˆË
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

class '
FriendsManagerDataOperation ,
{ 
private 
static 
int 
FRIEND_STATUS_NEW ,
=- .
$num/ 0
;0 1
private 
static 
int )
FRIEND_STATUS_ACCCEPT_REQUEST 8
=9 :
$num; <
;< =
private 
static 
int 
NULL_INT_VALUE )
=* +
$num, -
;- .
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
;  A B
if!! 
(!! 
friendsOfUser!! %
!=!!& (
null!!) -
)!!- .
{"" 
resultOfOperation## )
.##) *
	CodeEvent##* 3
=##4 5
ExceptionDictionary##6 I
.##I J
SUCCESFULL_EVENT##J Z
;##Z [
}$$ 
else%% 
{&& 
resultOfOperation'' )
.'') *
	CodeEvent''* 3
=''4 5
ExceptionDictionary''6 I
.''I J
UNSUCCESFULL_EVENT''J \
;''\ ]
}(( 
})) 
}** 
catch++ 
(++ !
ArgumentNullException++ (
ex++) +
)+++ ,
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
(00 
EntityException00 "
ex00# %
)00% &
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
}44 
catch55 
(55 
SqlException55 
ex55  "
)55" #
{66 
resultOfOperation77 !
=77" #
ExceptionHandler77$ 4
.774 5)
HandleExceptionDataAccesLevel775 R
(77R S
resultOfOperation77S d
,77d e
ex77f h
)77h i
;77i j
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
}99 
return:: 
resultOfOperation:: $
;::$ %
};; 	
public== 
static== 
GenericClassServer== (
<==( )
List==) -
<==- .
Player==. 4
>==4 5
>==5 6!
Get20NotFriendsPlayer==7 L
(==L M
Player==M S
player==T Z
)==Z [
{>> 	
GenericClassServer?? 
<?? 
List?? #
<??# $
Player??$ *
>??* +
>??+ ,
resultOfOperation??- >
=??? @
new??A D
GenericClassServer??E W
<??W X
List??X \
<??\ ]
Player??] c
>??c d
>??d e
(??e f
)??f g
;??g h
if@@ 
(@@ 
player@@ 
==@@ 
null@@ 
)@@ 
{AA 
returnBB !
NullParametersHandlerBB ,
.BB, -(
HandleNullParametersDataBaseBB- I
(BBI J
resultOfOperationBBJ [
)BB[ \
;BB\ ]
}CC 
tryDD 
{EE 
usingFF 
(FF 
varFF 
	contextBDFF $
=FF% &
newFF' *
JeopardyDBContainerFF+ >
(FF> ?
)FF? @
)FF@ A
{GG 
varHH 
friendsOfUserHH %
=HH& '"
ConsultFriendsOfPlayerHH( >
(HH> ?
playerHH? E
)HHE F
.HHF G
ObjectSavedHHG R
;HHR S
ListII 
<II 
intII 
>II 

idsFriendsII (
=II) *
newII+ .
ListII/ 3
<II3 4
intII4 7
>II7 8
(II8 9
)II9 :
;II: ;
ifJJ 
(JJ 
friendsOfUserJJ $
!=JJ% '
nullJJ( ,
)JJ, -
{KK 
foreachLL 
(LL  !
varLL! $
friendLL% +
inLL, .
friendsOfUserLL/ <
)LL< =
{MM 
ifNN 
(NN  
friendNN  &
.NN& '
Player_IdPlayerNN' 6
==NN7 9
playerNN: @
.NN@ A
IdPlayerNNA I
)NNI J
{OO 

idsFriendsPP  *
.PP* +
AddPP+ .
(PP. /
friendPP/ 5
.PP5 6!
PlayerFriend_IdPlayerPP6 K
)PPK L
;PPL M
}QQ 
elseRR  
{SS 

idsFriendsTT  *
.TT* +
AddTT+ .
(TT. /
friendTT/ 5
.TT5 6
Player_IdPlayerTT6 E
)TTE F
;TTF G
}UU 
}VV 

idsFriendsWW "
.WW" #
AddWW# &
(WW& '
playerWW' -
.WW- .
IdPlayerWW. 6
)WW6 7
;WW7 8
varXX 
playersNotFriendsXX -
=XX. /
	contextBDXX0 9
.XX9 :
PlayersXX: A
.XXA B
WhereXXB G
(XXG H
playerDataBaseXXH V
=>XXW Y
!XXZ [

idsFriendsXX[ e
.XXe f
ContainsXXf n
(XXn o
playerDataBaseXXo }
.XX} ~
IdPlayer	XX~ Ü
)
XXÜ á
)
XXá à
.
XXà â
Take
XXâ ç
(
XXç é
$num
XXé ê
)
XXê ë
.
XXë í
ToList
XXí ò
(
XXò ô
)
XXô ö
;
XXö õ
resultOfOperationYY )
.YY) *
ObjectSavedYY* 5
=YY6 7
playersNotFriendsYY8 I
;YYI J
ifZZ 
(ZZ 
playersNotFriendsZZ -
!=ZZ. 0
nullZZ1 5
)ZZ5 6
{[[ 
resultOfOperation\\ -
.\\- .
	CodeEvent\\. 7
=\\8 9
ExceptionDictionary\\: M
.\\M N
SUCCESFULL_EVENT\\N ^
;\\^ _
}]] 
else^^ 
{__ 
resultOfOperation`` -
.``- .
	CodeEvent``. 7
=``8 9
ExceptionDictionary``: M
.``M N
UNSUCCESFULL_EVENT``N `
;``` a
}aa 
}bb 
elsecc 
{dd 
resultOfOperationee )
.ee) *
ObjectSavedee* 5
=ee6 7
nullee8 <
;ee< =
resultOfOperationff )
.ff) *
	CodeEventff* 3
=ff4 5
ExceptionDictionaryff6 I
.ffI J
UNSUCCESFULL_EVENTffJ \
;ff\ ]
}gg 
}hh 
}ii 
catchjj 
(jj !
ArgumentNullExceptionjj (
exjj) +
)jj+ ,
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
}nn 
catchoo 
(oo 
EntityExceptionoo "
exoo# %
)oo% &
{pp 
resultOfOperationqq !
=qq" #
ExceptionHandlerqq$ 4
.qq4 5)
HandleExceptionDataAccesLevelqq5 R
(qqR S
resultOfOperationqqS d
,qqd e
exqqf h
)qqh i
;qqi j
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
(tt 
SqlExceptiontt 
extt  "
)tt" #
{uu 
resultOfOperationvv !
=vv" #
ExceptionHandlervv$ 4
.vv4 5)
HandleExceptionDataAccesLevelvv5 R
(vvR S
resultOfOperationvvS d
,vvd e
exvvf h
)vvh i
;vvi j
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
}xx 
returnyy 
resultOfOperationyy $
;yy$ %
}zz 	
public|| 
static|| 
GenericClassServer|| )
<||) *
int||* -
>||- .!
DeleteFriendsRegister||/ D
(||D E
int||E H
idPlayerFriend1||I X
,||X Y
int||Z ]
idPlayerFriend2||^ m
)||m n
{}} 	
GenericClassServer~~ 
<~~ 
int~~ "
>~~" #
resultOfOperation~~$ 5
=~~6 7
new~~8 ;
GenericClassServer~~< N
<~~N O
int~~O R
>~~R S
(~~S T
)~~T U
;~~U V
if 
( 
idPlayerFriend1 
==  "
NULL_INT_VALUE# 1
||2 4
idPlayerFriend25 D
==E G
NULL_INT_VALUEH V
)V W
{
ÄÄ 
return
ÅÅ #
NullParametersHandler
ÅÅ ,
.
ÅÅ, -*
HandleNullParametersDataBase
ÅÅ- I
(
ÅÅI J
resultOfOperation
ÅÅJ [
)
ÅÅ[ \
;
ÅÅ\ ]
}
ÇÇ 
try
ÉÉ 
{
ÑÑ 
using
ÖÖ 
(
ÖÖ 
var
ÖÖ 
	contextBD
ÖÖ $
=
ÖÖ% &
new
ÖÖ' *!
JeopardyDBContainer
ÖÖ+ >
(
ÖÖ> ?
)
ÖÖ? @
)
ÖÖ@ A
{
ÜÜ 
var
áá  
friendshipToDelete
áá *
=
áá+ ,
	contextBD
áá- 6
.
áá6 7
Friends
áá7 >
.
áá> ?
FirstOrDefault
áá? M
(
ááM N
friendRegistry
ááN \
=>
áá] _
(
áá` a
friendRegistry
ááa o
.
ááo p
Player_IdPlayer
ááp 
==ááÄ Ç
idPlayerFriend1ááÉ í
&&ááì ï
friendRegistryááñ §
.áá§ •%
PlayerFriend_IdPlayeráá• ∫
==ááª Ω
idPlayerFriend2ááæ Õ
)ááÕ Œ
||ááœ —
(áá“ ”
friendRegistryáá” ·
.áá· ‚
Player_IdPlayeráá‚ Ò
==ááÚ Ù
idPlayerFriend2ááı Ñ
&&ááÖ á
friendRegistryááà ñ
.ááñ ó%
PlayerFriend_IdPlayerááó ¨
==áá≠ Ø
idPlayerFriend1áá∞ ø
)ááø ¿
)áá¿ ¡
;áá¡ ¬
	contextBD
àà 
.
àà 
Friends
àà %
.
àà% &
Remove
àà& ,
(
àà, -
(
àà- .
Friend
àà. 4
)
àà4 5 
friendshipToDelete
àà5 G
)
ààG H
;
ààH I
int
ââ 
resultEvent
ââ #
=
ââ$ %
	contextBD
ââ& /
.
ââ/ 0
SaveChanges
ââ0 ;
(
ââ; <
)
ââ< =
;
ââ= >
resultOfOperation
ää %
.
ää% &
ObjectSaved
ää& 1
=
ää2 3
resultEvent
ää4 ?
;
ää? @
if
ãã 
(
ãã 
resultEvent
ãã #
!=
ãã$ &
NULL_INT_VALUE
ãã' 5
)
ãã5 6
{
åå 
resultOfOperation
çç )
.
çç) *
	CodeEvent
çç* 3
=
çç4 5!
ExceptionDictionary
çç6 I
.
ççI J
SUCCESFULL_EVENT
ççJ Z
;
ççZ [
}
éé 
else
èè 
{
êê 
resultOfOperation
ëë )
.
ëë) *
	CodeEvent
ëë* 3
=
ëë4 5!
ExceptionDictionary
ëë6 I
.
ëëI J 
UNSUCCESFULL_EVENT
ëëJ \
;
ëë\ ]
}
íí 
}
ìì 
}
îî 
catch
ïï 
(
ïï 
DbUpdateException
ïï $
ex
ïï% '
)
ïï' (
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
öö #
ArgumentNullException
öö (
ex
öö) +
)
öö+ ,
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
ûû 
catch
üü 
(
üü 
EntityException
üü "
ex
üü# %
)
üü% &
{
†† 
resultOfOperation
°° !
=
°°" #
ExceptionHandler
°°$ 4
.
°°4 5+
HandleExceptionDataAccesLevel
°°5 R
(
°°R S
resultOfOperation
°°S d
,
°°d e
ex
°°f h
)
°°h i
;
°°i j
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
§§ 
SqlException
§§ 
ex
§§  "
)
§§" #
{
•• 
resultOfOperation
¶¶ !
=
¶¶" #
ExceptionHandler
¶¶$ 4
.
¶¶4 5+
HandleExceptionDataAccesLevel
¶¶5 R
(
¶¶R S
resultOfOperation
¶¶S d
,
¶¶d e
ex
¶¶f h
)
¶¶h i
;
¶¶i j
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
®® 
return
©© 
resultOfOperation
©© $
;
©©$ %
}
™™ 	
public
¨¨ 
static
¨¨  
GenericClassServer
¨¨ (
<
¨¨( )
int
¨¨) ,
>
¨¨, -!
AcceptFriendRequest
¨¨. A
(
¨¨A B
int
¨¨B E
idPlayerFriend1
¨¨F U
,
¨¨U V
int
¨¨W Z
idPlayerFriend2
¨¨[ j
)
¨¨j k
{
≠≠ 	 
GenericClassServer
ÆÆ 
<
ÆÆ 
int
ÆÆ "
>
ÆÆ" #
resultOfOperation
ÆÆ$ 5
=
ÆÆ6 7
new
ÆÆ8 ; 
GenericClassServer
ÆÆ< N
<
ÆÆN O
int
ÆÆO R
>
ÆÆR S
(
ÆÆS T
)
ÆÆT U
;
ÆÆU V
if
ØØ 
(
ØØ 
idPlayerFriend1
ØØ 
==
ØØ  "
NULL_INT_VALUE
ØØ# 1
||
ØØ2 4
idPlayerFriend2
ØØ5 D
==
ØØE G
NULL_INT_VALUE
ØØH V
)
ØØV W
{
∞∞ 
return
±± #
NullParametersHandler
±± ,
.
±±, -*
HandleNullParametersDataBase
±±- I
(
±±I J
resultOfOperation
±±J [
)
±±[ \
;
±±\ ]
}
≤≤ 
try
≥≥ 
{
¥¥ 
using
µµ 
(
µµ 
var
µµ 
	contextBD
µµ $
=
µµ% &
new
µµ' *!
JeopardyDBContainer
µµ+ >
(
µµ> ?
)
µµ? @
)
µµ@ A
{
∂∂ 
var
∑∑  
friendshipToChange
∑∑ *
=
∑∑+ ,
	contextBD
∑∑- 6
.
∑∑6 7
Friends
∑∑7 >
.
∑∑> ?
FirstOrDefault
∑∑? M
(
∑∑M N
friendRegistry
∑∑N \
=>
∑∑] _
(
∑∑` a
friendRegistry
∑∑a o
.
∑∑o p
Player_IdPlayer
∑∑p 
==∑∑Ä Ç
idPlayerFriend1∑∑É í
&&∑∑ì ï
friendRegistry∑∑ñ §
.∑∑§ •%
PlayerFriend_IdPlayer∑∑• ∫
==∑∑ª Ω
idPlayerFriend2∑∑æ Õ
)∑∑Õ Œ
||∑∑œ —
(∑∑“ ”
friendRegistry∑∑” ·
.∑∑· ‚
Player_IdPlayer∑∑‚ Ò
==∑∑Ú Ù
idPlayerFriend2∑∑ı Ñ
&&∑∑Ö á
friendRegistry∑∑à ñ
.∑∑ñ ó%
PlayerFriend_IdPlayer∑∑ó ¨
==∑∑≠ Ø
idPlayerFriend1∑∑∞ ø
)∑∑ø ¿
)∑∑¿ ¡
;∑∑¡ ¬ 
friendshipToChange
∏∏ &
.
∏∏& '
IdFriendState
∏∏' 4
=
∏∏5 6+
FRIEND_STATUS_ACCCEPT_REQUEST
∏∏7 T
;
∏∏T U
	contextBD
ππ 
.
ππ 
Entry
ππ #
(
ππ# $ 
friendshipToChange
ππ$ 6
)
ππ6 7
.
ππ7 8
State
ππ8 =
=
ππ> ?
EntityState
ππ@ K
.
ππK L
Modified
ππL T
;
ππT U
int
∫∫ 
resultEvent
∫∫ #
=
∫∫$ %
	contextBD
∫∫& /
.
∫∫/ 0
SaveChanges
∫∫0 ;
(
∫∫; <
)
∫∫< =
;
∫∫= >
resultOfOperation
ªª %
.
ªª% &
ObjectSaved
ªª& 1
=
ªª2 3
resultEvent
ªª4 ?
;
ªª? @
if
ºº 
(
ºº 
resultEvent
ºº #
!=
ºº$ &
NULL_INT_VALUE
ºº' 5
)
ºº5 6
{
ΩΩ 
resultOfOperation
ææ )
.
ææ) *
	CodeEvent
ææ* 3
=
ææ4 5!
ExceptionDictionary
ææ6 I
.
ææI J
SUCCESFULL_EVENT
ææJ Z
;
ææZ [
}
øø 
else
¿¿ 
{
¡¡ 
resultOfOperation
¬¬ )
.
¬¬) *
	CodeEvent
¬¬* 3
=
¬¬4 5!
ExceptionDictionary
¬¬6 I
.
¬¬I J 
UNSUCCESFULL_EVENT
¬¬J \
;
¬¬\ ]
}
√√ 
}
ƒƒ 
}
≈≈ 
catch
∆∆ 
(
∆∆ 
DbUpdateException
∆∆ $
ex
∆∆% '
)
∆∆' (
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
ÀÀ #
ArgumentNullException
ÀÀ (
ex
ÀÀ) +
)
ÀÀ+ ,
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
–– 
EntityException
–– "
ex
––# %
)
––% &
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
‘‘ 
catch
’’ 
(
’’ 
SqlException
’’ 
ex
’’  "
)
’’" #
{
÷÷ 
resultOfOperation
◊◊ !
=
◊◊" #
ExceptionHandler
◊◊$ 4
.
◊◊4 5+
HandleExceptionDataAccesLevel
◊◊5 R
(
◊◊R S
resultOfOperation
◊◊S d
,
◊◊d e
ex
◊◊f h
)
◊◊h i
;
◊◊i j
ExceptionHandler
ÿÿ  
.
ÿÿ  !
LogException
ÿÿ! -
(
ÿÿ- .
ex
ÿÿ. 0
,
ÿÿ0 1!
ExceptionDictionary
ÿÿ2 E
.
ÿÿE F
FATAL_EXCEPTION
ÿÿF U
)
ÿÿU V
;
ÿÿV W
}
ŸŸ 
return
⁄⁄ 
resultOfOperation
⁄⁄ $
;
⁄⁄$ %
}
€€ 	
public
›› 
static
››  
GenericClassServer
›› (
<
››( )
int
››) ,
>
››, -
SendFriendRequest
››. ?
(
››? @
int
››@ C
idPlayerSender
››D R
,
››R S
int
››T W
idPlayerCatcher
››X g
)
››g h
{
ﬁﬁ 	 
GenericClassServer
ﬂﬂ 
<
ﬂﬂ 
int
ﬂﬂ "
>
ﬂﬂ" #
resultOfOperation
ﬂﬂ$ 5
=
ﬂﬂ6 7
new
ﬂﬂ8 ; 
GenericClassServer
ﬂﬂ< N
<
ﬂﬂN O
int
ﬂﬂO R
>
ﬂﬂR S
(
ﬂﬂS T
)
ﬂﬂT U
;
ﬂﬂU V
if
‡‡ 
(
‡‡ 
idPlayerCatcher
‡‡ 
==
‡‡  "
NULL_INT_VALUE
‡‡# 1
||
‡‡2 4
idPlayerSender
‡‡5 C
==
‡‡D F
NULL_INT_VALUE
‡‡G U
)
‡‡U V
{
·· 
return
‚‚ #
NullParametersHandler
‚‚ ,
.
‚‚, -*
HandleNullParametersDataBase
‚‚- I
(
‚‚I J
resultOfOperation
‚‚J [
)
‚‚[ \
;
‚‚\ ]
}
„„ 
try
‰‰ 
{
ÂÂ 
using
ÊÊ 
(
ÊÊ 
var
ÊÊ 
	contextBD
ÊÊ $
=
ÊÊ% &
new
ÊÊ' *!
JeopardyDBContainer
ÊÊ+ >
(
ÊÊ> ?
)
ÊÊ? @
)
ÊÊ@ A
{
ÁÁ 
Friend
ËË 
newRelationShip
ËË *
=
ËË+ ,
new
ËË- 0
Friend
ËË1 7
(
ËË7 8
)
ËË8 9
;
ËË9 :
newRelationShip
ÈÈ #
.
ÈÈ# $
IdFriendState
ÈÈ$ 1
=
ÈÈ2 3
NULL_INT_VALUE
ÈÈ4 B
;
ÈÈB C
newRelationShip
ÍÍ #
.
ÍÍ# $
Player_IdPlayer
ÍÍ$ 3
=
ÍÍ4 5
idPlayerSender
ÍÍ6 D
;
ÍÍD E
newRelationShip
ÎÎ #
.
ÎÎ# $#
PlayerFriend_IdPlayer
ÎÎ$ 9
=
ÎÎ: ;
idPlayerCatcher
ÎÎ< K
;
ÎÎK L
newRelationShip
ÏÏ #
.
ÏÏ# $
IdFriendState
ÏÏ$ 1
=
ÏÏ2 3
FRIEND_STATUS_NEW
ÏÏ4 E
;
ÏÏE F
	contextBD
ÌÌ 
.
ÌÌ 
Friends
ÌÌ %
.
ÌÌ% &
Add
ÌÌ& )
(
ÌÌ) *
newRelationShip
ÌÌ* 9
)
ÌÌ9 :
;
ÌÌ: ;
int
ÓÓ 
resultEvent
ÓÓ #
=
ÓÓ$ %
	contextBD
ÓÓ& /
.
ÓÓ/ 0
SaveChanges
ÓÓ0 ;
(
ÓÓ; <
)
ÓÓ< =
;
ÓÓ= >
resultOfOperation
ÔÔ %
.
ÔÔ% &
ObjectSaved
ÔÔ& 1
=
ÔÔ2 3
resultEvent
ÔÔ4 ?
;
ÔÔ? @
if
 
(
 
resultEvent
 #
!=
$ &
NULL_INT_VALUE
' 5
)
5 6
{
ÒÒ 
resultOfOperation
ÚÚ )
.
ÚÚ) *
	CodeEvent
ÚÚ* 3
=
ÚÚ4 5!
ExceptionDictionary
ÚÚ6 I
.
ÚÚI J
SUCCESFULL_EVENT
ÚÚJ Z
;
ÚÚZ [
}
ÛÛ 
else
ÙÙ 
{
ıı 
resultOfOperation
ˆˆ )
.
ˆˆ) *
	CodeEvent
ˆˆ* 3
=
ˆˆ4 5!
ExceptionDictionary
ˆˆ6 I
.
ˆˆI J 
UNSUCCESFULL_EVENT
ˆˆJ \
;
ˆˆ\ ]
}
˜˜ 
}
¯¯ 
}
˘˘ 
catch
˙˙ 
(
˙˙ 
DbUpdateException
˙˙ $
ex
˙˙% '
)
˙˙' (
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
ˇˇ #
ArgumentNullException
ˇˇ (
ex
ˇˇ) +
)
ˇˇ+ ,
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
çç 
return
éé 
resultOfOperation
éé $
;
éé$ %
}
èè 	
}
ëë 
}íí Ñy
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

class 
LoginOperations  
{ 
private 
static 
int 
NULL_INT_VALUE )
=* +
$num, -
;- .
private 
static 
int 
VALUE_EXIST &
=' (
$num) *
;* +
private 
static 
int 
VALUE_NOT_EXIST *
=+ ,
$num- .
;. /
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
}†† ìÑ
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

class $
UserManagerDataOperation )
{ 
private 
static 
int 
NULL_INT_VALUE )
=* +
$num, -
;- .
private 
static 
int 
USER_NOT_FOUND )
=* +
-, -
$num- .
;. /
private 
static 
int 
OPERATION_DONE )
=* +
$num, -
;- .
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
√√  
GenericClassServer
√√ !
<
√√! "
List
√√" &
<
√√& '
Player
√√' -
>
√√- .
>
√√. /
Get20FriendScores
√√0 A
(
√√A B
int
√√B E
userId
√√F L
)
√√L M
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
}¯¯ ›
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
 
public 
static 
String 
FATAL_EXCEPTION ,
=- .
$str/ 6
;6 7
public 
static 
String 
ERROR "
=# $
$str% ,
;, -
public 
static 
String 
UNKNOW #
=$ %
$str& .
;. /
public 
static 
int 
SUCCESFULL_EVENT *
=+ ,
-- .
$num. 1
;1 2
public 
static 
int 
UNSUCCESFULL_EVENT ,
=- .
-/ 0
$num0 2
;2 3
public 
static 
int 
NULL_PARAEMETER )
=* +
-, -
$num- 0
;0 1
public 
static 
int 
ARGUMENT_NULL '
=( )
-* +
$num+ .
;. /
public 
static 
int +
ARGUMENT_OUT_OF_RANGE_EXCEPTION 9
=: ;
-< =
$num= @
;@ A
public 
static 
int 
FORMMAT_EXCEPTION +
=, -
-. /
$num/ 2
;2 3
public 
static 
int 
RANK_EXCEPTION (
=) *
-+ ,
$num, /
;/ 0
public 
static 
int  
EMAIL_FORMAT_INVALID .
=/ 0
-1 2
$num2 5
;5 6
public 
static 
int 
INVALID_OPERATION +
=, -
-. /
$num/ 2
;2 3
public 
static 
int 
NO_DB_CONECTION )
=* +
-, -
$num- 0
;0 1
public 
static 
int 
SAVE_CHANGES_ERROR ,
=- .
-/ 0
$num0 3
;3 4
public 
static 
int 
	SQL_ERROR #
=$ %
-& '
$num' *
;* +
public 
static 
int 
ENTITY_ERROR &
=' (
-) *
$num* -
;- .
public 
static 
int 
SMTP_EXCEPTION (
=) *
-+ ,
$num, /
;/ 0
public 
static 
int $
UNKOWN_EXCEPTION_OCURRED 2
=3 4
-5 6
$num6 9
;9 :
} 
}!! È4
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

class 
ExceptionHandler !
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

classHH !
NullParametersHandlerHH &
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
}]] ™q
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
{66  !
return66" (
idUser66) /
;66/ 0
}661 2
set663 6
{667 8
idUser669 ?
=66@ A
value66B G
;66G H
}66I J
}66K L
public77 
string77 
UserName77 
{77  
get77! $
{77% &
return77' -
userName77. 6
;776 7
}778 9
set77: =
{77> ?
userName77@ H
=77I J
value77K P
;77P Q
}77R S
}77T U
public88 
int88  
IdStatusAvailability88 '
{88( )
get88* -
{88. /
return880 6 
idStatusAvailability887 K
;88K L
}88M N
set88O R
{88S T 
idStatusAvailability88U i
=88j k
value88l q
;88q r
}88s t
}88u v
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
{@@  !
return@@" (
idUser@@) /
;@@/ 0
}@@1 2
set@@3 6
{@@7 8
idUser@@9 ?
=@@@ A
value@@B G
;@@G H
}@@I J
}@@K L
publicAA 
stringAA 
UserNameAA 
{AA  
getAA! $
{AA% &
returnAA' -
userNameAA. 6
;AA6 7
}AA8 9
setAA: =
{AA> ?
userNameAA@ H
=AAI J
valueAAK P
;AAP Q
}AAR S
}AAT U
publicBB 
stringBB 
MessageToSendBB #
{BB$ %
getBB& )
{BB* +
returnBB, 2
messageToSendBB3 @
;BB@ A
}BBB C
setBBD G
{BBH I
messageToSendBBJ W
=BBX Y
valueBBZ _
;BB_ `
}BBa b
}BBc d
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
{KK  !
returnKK" (
idUserKK) /
;KK/ 0
}KK1 2
setKK3 6
{KK7 8
idUserKK9 ?
=KK@ A
valueKKB G
;KKG H
}KKI J
}KKK L
publicLL 
intLL 
IdPlayerLL 
{LL 
getLL !
{LL" #
returnLL$ *
idPlayerLL+ 3
;LL3 4
}LL5 6
setLL7 :
{LL; <
idPlayerLL= E
=LLF G
valueLLH M
;LLM N
}LLO P
}LLQ R
publicMM 
stringMM 
UserNameMM 
{MM  
getMM! $
{MM% &
returnMM' -
userNameMM. 6
;MM6 7
}MM8 9
setMM: =
{MM> ?
userNameMM@ H
=MMI J
valueMMK P
;MMP Q
}MMR S
}MMT U
publicNN 
intNN !
NumberOfPlayerInLobbyNN (
{NN) *
getNN+ .
{NN/ 0
returnNN1 7!
numberOfPlayerInLobbyNN8 M
;NNM N
}NNO P
setNNQ T
{NNU V!
numberOfPlayerInLobbyNNW l
=NNm n
valueNNo t
;NNt u
}NNv w
}NNx y
publicOO 
intOO 

SideOfTeamOO 
{OO 
getOO  #
{OO$ %
returnOO& ,

sideOfTeamOO- 7
;OO7 8
}OO9 :
setOO; >
{OO? @

sideOfTeamOOA K
=OOL M
valueOON S
;OOS T
}OOU V
}OOW X
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
{ZZ  !
returnZZ" (
idUserZZ) /
;ZZ/ 0
}ZZ1 2
setZZ3 6
{ZZ7 8
idUserZZ9 ?
=ZZ@ A
valueZZB G
;ZZG H
}ZZI J
}ZZK L
public[[ 
String[[ 
UserName[[ 
{[[  
get[[! $
{[[% &
return[[' -
userName[[. 6
;[[6 7
}[[8 9
set[[: =
{[[> ?
userName[[@ H
=[[I J
value[[K P
;[[P Q
}[[R S
}[[T U
public\\ 
String\\ 
Name\\ 
{\\ 
get\\  
{\\! "
return\\# )
name\\* .
;\\. /
}\\0 1
set\\2 5
{\\6 7
name\\8 <
=\\= >
value\\? D
;\\D E
}\\F G
}\\H I
public]] 
String]] 
EmailAddress]] "
{]]# $
get]]% (
{]]) *
return]]+ 1
emailAddress]]2 >
;]]> ?
}]]@ A
set]]B E
{]]F G
emailAddress]]H T
=]]U V
value]]W \
;]]\ ]
}]]^ _
}]]` a
public^^ 
String^^ 
Password^^ 
{^^  
get^^! $
{^^% &
return^^' -
password^^. 6
;^^6 7
}^^8 9
set^^: =
{^^> ?
password^^@ H
=^^I J
value^^K P
;^^P Q
}^^R S
}^^T U
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
{hh" #
returnhh$ *
idPlayerhh+ 3
;hh3 4
}hh5 6
sethh7 :
{hh; <
idPlayerhh= E
=hhF G
valuehhH M
;hhM N
}hhO P
}hhQ R
publicii 
intii 
GeneralPointsii  
{ii! "
getii# &
{ii' (
returnii) /
generalPointsii0 =
;ii= >
}ii? @
setiiA D
{iiE F
generalPointsiiG T
=iiU V
valueiiW \
;ii\ ]
}ii^ _
}ii` a
publicjj 
intjj 
	NoReportsjj 
{jj 
getjj "
{jj# $
returnjj% +
	noReportsjj, 5
;jj5 6
}jj7 8
setjj9 <
{jj= >
	noReportsjj? H
=jjI J
valuejjK P
;jjP Q
}jjR S
}jjT U
publickk 
intkk 
IdUserkk 
{kk 
getkk 
{kk  !
returnkk" (
idUserkk) /
;kk/ 0
}kk1 2
setkk3 6
{kk7 8
idUserkk9 ?
=kk@ A
valuekkB G
;kkG H
}kkI J
}kkK L
publicll 
intll 
IdStatell 
{ll 
getll  
{ll! "
returnll# )
idStatell* 1
;ll1 2
}ll3 4
setll5 8
{ll9 :
idStatell; B
=llC D
valuellE J
;llJ K
}llL M
}llN O
publicmm 
intmm 
IdActualAvatarmm !
{mm" #
getmm$ '
{mm( )
returnmm* 0
idActualAvatarmm1 ?
;mm? @
}mmA B
setmmC F
{mmG H
idActualAvatarmmI W
=mmX Y
valuemmZ _
;mm_ `
}mma b
}mmc d
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
{tt% &
returntt' -
userNamett. 6
;tt6 7
}tt8 9
settt: =
{tt> ?
userNamett@ H
=ttI J
valuettK P
;ttP Q
}ttR S
}ttT U
publicuu 
Stringuu 
Passworduu 
{uu  
getuu! $
{uu% &
returnuu' -
passworduu. 6
;uu6 7
}uu8 9
setuu: =
{uu> ?
passworduu@ H
=uuI J
valueuuK P
;uuP Q
}uuR S
}uuT U
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