–u
fC:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameClient\Cards\GameTeamCard.cs
	namespace 	
JeopardyGame
 
. 
Cards 
{		 
public

 

class

 
GameTeamCard

 
:

  
Border

! '
{ 
private 
readonly $
PlayerInGameDataContract 1!
playerOfCardNumberOne2 G
;G H
private 
readonly $
PlayerInGameDataContract 1!
playerOfCardNumberTwo2 G
;G H
private 
	TextBlock 
userNamePlayer1 )
;) *
private 
	TextBlock 
userNamePlayer2 )
;) *
private 
	TextBlock 
points  
;  !
private 
Image 
avatarPlayer1 #
;# $
private 
Image 
avatarPlayer2 #
;# $
private 
SolidColorBrush 
color  %
;% &
private 
Grid 
grid 
; 
public 
GameTeamCard 
( $
PlayerInGameDataContract 4
playerNumber15 B
,B C$
PlayerInGameDataContractD \
playerNumber2] j
)k l
{ 	!
playerOfCardNumberOne !
=" #
playerNumber1$ 1
;1 2!
playerOfCardNumberTwo !
=" #
playerNumber2$ 1
;1 2
this 
. 
Name 
= 
$str 
+ 
playerNumber1 +
.+ ,
IdUser, 2
.2 3
ToString3 ;
(; <
)< =
+= >!
playerOfCardNumberTwo> S
.S T
IdUserT Z
.Z [
ToString[ c
(c d
)d e
;e f 
InitializeComponents  
(  !
)! "
;" #
	SetStyles 
( 
) 
; 
grid 
. 
Children 
. 
Add 
( 
userNamePlayer1 -
)- .
;. /
grid 
. 
Children 
. 
Add 
( 
points $
)$ %
;% &
grid 
. 
Children 
. 
Add 
( 
avatarPlayer1 +
)+ ,
;, -
grid   
.   
Children   
.   
Add   
(   
userNamePlayer2   -
)  - .
;  . /
grid!! 
.!! 
Children!! 
.!! 
Add!! 
(!! 
avatarPlayer2!! +
)!!+ ,
;!!, -
this"" 
."" 
Child"" 
="" 
grid"" 
;"" 
}## 	
private%% 
void%% 
	SetStyles%% 
(%% 
)%%  
{&& 	
SetBorderStyle'' 
('' 
)'' 
;'' 
SetStyleGrid(( 
((( 
)(( 
;(( 
SetStyleUserName)) 
()) 
))) 
;)) 
SetStylePoints** 
(** 
)** 
;** 
SetAvatarImage++ 
(++ 
)++ 
;++ 
},, 	
private.. 
void..  
InitializeComponents.. )
(..) *
)..* +
{// 	
grid00 
=00 
new00 
Grid00 
(00 
)00 
;00 
userNamePlayer111 
=11 
new11 !
	TextBlock11" +
(11+ ,
)11, -
;11- .
userNamePlayer222 
=22 
new22 !
	TextBlock22" +
(22+ ,
)22, -
;22- .
points33 
=33 
new33 
	TextBlock33 "
(33" #
)33# $
;33$ %
avatarPlayer144 
=44 
new44 
Image44  %
(44% &
)44& '
;44' (
avatarPlayer255 
=55 
new55 
Image55  %
(55% &
)55& '
;55' (
switch66 
(66 !
playerOfCardNumberOne66 )
.66) *
SideTeam66* 2
)662 3
{77 
case88 
$num88 
:88 
color99 
=99 
new99 
SolidColorBrush99  /
(99/ 0
Colors990 6
.996 7
	CadetBlue997 @
)99@ A
;99A B
break:: 
;:: 
case;; 
$num;; 
:;; 
color<< 
=<< 
new<< 
SolidColorBrush<<  /
(<</ 0
Colors<<0 6
.<<6 7
	IndianRed<<7 @
)<<@ A
;<<A B
break== 
;== 
}>> 
}?? 	
privateAA 
voidAA 
SetBorderStyleAA #
(AA# $
)AA$ %
{BB 	
thisCC 
.CC 
MarginCC 
=CC 
newCC 
SystemCC $
.CC$ %
WindowsCC% ,
.CC, -
	ThicknessCC- 6
(CC6 7
$numCC7 9
,CC9 :
$numCC; =
,CC= >
$numCC? A
,CCA B
$numCCC D
)CCD E
;CCE F
thisDD 
.DD 
HeightDD 
=DD 
$numDD 
;DD 
thisEE 
.EE 
WidthEE 
=EE 
$numEE 
;EE 
thisFF 
.FF 
BorderBrushFF 
=FF 
newFF "
SolidColorBrushFF# 2
(FF2 3
ColorsFF3 9
.FF9 :
	CadetBlueFF: C
)FFC D
;FFD E
thisGG 
.GG 

BackgroundGG 
=GG 
colorGG #
;GG# $
thisHH 
.HH 
HorizontalAlignmentHH $
=HH% &
SystemHH' -
.HH- .
WindowsHH. 5
.HH5 6
HorizontalAlignmentHH6 I
.HHI J
CenterHHJ P
;HHP Q
}II 	
privateKK 
voidKK 
SetStyleGridKK !
(KK! "
)KK" #
{LL 	
gridMM 
.MM 
MarginMM 
=MM 
newMM 
SystemMM $
.MM$ %
WindowsMM% ,
.MM, -
	ThicknessMM- 6
(MM6 7
$numMM7 8
)MM8 9
;MM9 :
gridNN 
.NN 
HeightNN 
=NN 
$numNN 
;NN 
gridOO 
.OO 
WidthOO 
=OO 
$numOO 
;OO 
}PP 	
privateRR 
voidRR 
SetStyleUserNameRR %
(RR% &
)RR& '
{SS 	
userNamePlayer1TT 
.TT 
MarginTT "
=TT# $
newTT% (
SystemTT) /
.TT/ 0
WindowsTT0 7
.TT7 8
	ThicknessTT8 A
(TTA B
$numTTB D
,TTD E
$numTTF G
,TTG H
$numTTI L
,TTL M
$numTTN P
)TTP Q
;TTQ R
userNamePlayer1UU 
.UU 
HeightUU "
=UU# $
$numUU% '
;UU' (
userNamePlayer1VV 
.VV 
WidthVV !
=VV" #
$numVV$ '
;VV' (
userNamePlayer1WW 
.WW 
TextAlignmentWW )
=WW* +
SystemWW, 2
.WW2 3
WindowsWW3 :
.WW: ;
TextAlignmentWW; H
.WWH I
CenterWWI O
;WWO P
userNamePlayer1XX 
.XX 
FontSizeXX $
=XX% &
$numXX' )
;XX) *
userNamePlayer1YY 
.YY 

ForegroundYY &
=YY' (
newYY) ,
SolidColorBrushYY- <
(YY< =
ColorsYY= C
.YYC D
BlackYYD I
)YYI J
;YYJ K
userNamePlayer1ZZ 
.ZZ 
TextZZ  
=ZZ! "!
playerOfCardNumberOneZZ# 8
.ZZ8 9
UserNameZZ9 A
;ZZA B
userNamePlayer2\\ 
.\\ 
Margin\\ "
=\\# $
new\\% (
System\\) /
.\\/ 0
Windows\\0 7
.\\7 8
	Thickness\\8 A
(\\A B
$num\\B E
,\\E F
$num\\G H
,\\H I
$num\\J L
,\\L M
$num\\N P
)\\P Q
;\\Q R
userNamePlayer2]] 
.]] 
Height]] "
=]]# $
$num]]% '
;]]' (
userNamePlayer2^^ 
.^^ 
Width^^ !
=^^" #
$num^^$ '
;^^' (
userNamePlayer2__ 
.__ 
TextAlignment__ )
=__* +
System__, 2
.__2 3
Windows__3 :
.__: ;
TextAlignment__; H
.__H I
Center__I O
;__O P
userNamePlayer2`` 
.`` 
FontSize`` $
=``% &
$num``' )
;``) *
userNamePlayer2aa 
.aa 

Foregroundaa &
=aa' (
newaa) ,
SolidColorBrushaa- <
(aa< =
Colorsaa= C
.aaC D
BlackaaD I
)aaI J
;aaJ K
userNamePlayer2bb 
.bb 
Textbb  
=bb! "!
playerOfCardNumberTwobb# 8
.bb8 9
UserNamebb9 A
;bbA B
}cc 	
privateee 
voidee 
SetStylePointsee #
(ee# $
)ee$ %
{ff 	
pointsgg 
.gg 
Margingg 
=gg 
newgg 
Systemgg  &
.gg& '
Windowsgg' .
.gg. /
	Thicknessgg/ 8
(gg8 9
$numgg9 ;
,gg; <
$numgg= ?
,gg? @
$numggA C
,ggC D
$numggE F
)ggF G
;ggG H
pointshh 
.hh 
Heighthh 
=hh 
$numhh 
;hh 
pointsii 
.ii 
Widthii 
=ii 
$numii 
;ii 
pointsjj 
.jj 
TextAlignmentjj  
=jj! "
Systemjj# )
.jj) *
Windowsjj* 1
.jj1 2
TextAlignmentjj2 ?
.jj? @
Centerjj@ F
;jjF G
pointskk 
.kk 
FontSizekk 
=kk 
$numkk  
;kk  !
pointsll 
.ll 

Foregroundll 
=ll 
newll  #
SolidColorBrushll$ 3
(ll3 4
Colorsll4 :
.ll: ;
Whitell; @
)ll@ A
;llA B
pointsmm 
.mm 

Backgroundmm 
=mm 
newmm  #
SolidColorBrushmm$ 3
(mm3 4
Colorsmm4 :
.mm: ;
Blackmm; @
)mm@ A
;mmA B
pointsnn 
.nn 
Opacitynn 
=nn 
$numnn  
;nn  !
pointsoo 
.oo 
Textoo 
=oo !
playerOfCardNumberOneoo /
.oo/ 0 
CurrentPointsOfRoundoo0 D
.ooD E
ToStringooE M
(ooM N
)ooN O
;ooO P
}pp 	
privaterr 
voidrr 
SetAvatarImagerr #
(rr# $
)rr$ %
{ss 	
avatarPlayer1tt 
.tt 
Sourcett  
=tt! "
newtt# &
BitmapImagett' 2
(tt2 3
newtt3 6
Uritt7 :
(tt: ;
GetSpecificResourcett; N
.ttN O
GetAvatarImagettO ]
(tt] ^!
playerOfCardNumberOnett^ s
.tts t
IdAvatarttt |
)tt| }
,tt} ~
UriKind	tt Ü
.
ttÜ á
Absolute
ttá è
)
ttè ê
)
ttê ë
;
ttë í
avatarPlayer1uu 
.uu 
Heightuu  
=uu! "
doubleuu# )
.uu) *
NaNuu* -
;uu- .
avatarPlayer1vv 
.vv 
Widthvv 
=vv  !
$numvv" $
;vv$ %
avatarPlayer1ww 
.ww 
HorizontalAlignmentww -
=ww. /
Systemww0 6
.ww6 7
Windowsww7 >
.ww> ?
HorizontalAlignmentww? R
.wwR S
LeftwwS W
;wwW X
avatarPlayer2xx 
.xx 
Sourcexx  
=xx! "
newxx# &
BitmapImagexx' 2
(xx2 3
newxx3 6
Urixx7 :
(xx: ;
GetSpecificResourcexx; N
.xxN O
GetAvatarImagexxO ]
(xx] ^!
playerOfCardNumberTwoxx^ s
.xxs t
IdAvatarxxt |
)xx| }
,xx} ~
UriKind	xx Ü
.
xxÜ á
Absolute
xxá è
)
xxè ê
)
xxê ë
;
xxë í
avatarPlayer2yy 
.yy 
Heightyy  
=yy! "
doubleyy# )
.yy) *
NaNyy* -
;yy- .
avatarPlayer2zz 
.zz 
Widthzz 
=zz  !
$numzz" $
;zz$ %
avatarPlayer2{{ 
.{{ 
HorizontalAlignment{{ -
={{. /
System{{0 6
.{{6 7
Windows{{7 >
.{{> ?
HorizontalAlignment{{? R
.{{R S
Right{{S X
;{{X Y
}|| 	
public~~ 
void~~ 
UpdatePoints~~  
(~~  !
int~~! $
nePoints~~% -
)~~- .
{ 	
points
ÄÄ 
.
ÄÄ 
Text
ÄÄ 
=
ÄÄ 
nePoints
ÄÄ "
.
ÄÄ" #
ToString
ÄÄ# +
(
ÄÄ+ ,
)
ÄÄ, -
;
ÄÄ- .
}
ÅÅ 	
public
ÉÉ 
void
ÉÉ 
MakeBorderSpecial
ÉÉ %
(
ÉÉ% &
)
ÉÉ& '
{
ÑÑ 	
this
ÖÖ 
.
ÖÖ 
BorderThickness
ÖÖ  
=
ÖÖ! "
new
ÖÖ# &
System
ÖÖ' -
.
ÖÖ- .
Windows
ÖÖ. 5
.
ÖÖ5 6
	Thickness
ÖÖ6 ?
(
ÖÖ? @
$num
ÖÖ@ A
)
ÖÖA B
;
ÖÖB C
}
ÜÜ 	
public
àà 
void
àà 
MakeBoredNormal
àà #
(
àà# $
)
àà$ %
{
ââ 	
this
ää 
.
ää 
BorderThickness
ää  
=
ää! "
new
ää# &
System
ää' -
.
ää- .
Windows
ää. 5
.
ää5 6
	Thickness
ää6 ?
(
ää? @
$num
ää@ A
)
ääA B
;
ääB C
}
ãã 	
public
çç 
int
çç 
	GetPoints
çç 
(
çç 
)
çç 
{
éé 	
return
èè 
int
èè 
.
èè 
Parse
èè 
(
èè 
points
èè #
.
èè# $
Text
èè$ (
)
èè( )
;
èè) *
}
êê 	
}
ìì 
}îî ê
C:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameClient\DialogWindows\ConfirmationDialogWindow.xaml.cs
	namespace 	
JeopardyGame
 
. 
DialogWindows $
{ 
public 

partial 
class $
ConfirmationDialogWindow 1
:2 3
Window4 :
{ 
public 
bool 
CloseWindow 
{  !
get" %
;% &
set' *
;* +
}, -
public $
ConfirmationDialogWindow '
(' (
String( .
title/ 4
,4 5
String6 <
message= D
,D E
WindowF L
currentWindowM Z
)Z [
{ 	
InitializeComponent 
(  
)  !
;! "
txbErrorTitle 
. 
Text 
=  
title! &
;& '
txbErrorMessage 
. 
Text  
=! "
message# *
;* +
CloseWindow 
= 
false 
;  #
ShowConfirmationMessage #
(# $
currentWindow$ 1
)1 2
;2 3
} 	
private 
void 
ClickAccept  
(  !
object! '
sender( .
,. /
RoutedEventArgs0 ?
e@ A
)A B
{ 	
CloseWindow 
= 
true 
; 
this 
. 
Close 
( 
) 
; 
} 	
private 
void 
ClickCancel  
(  !
object! '
sender( .
,. /
RoutedEventArgs0 ?
e@ A
)A B
{   	
this!! 
.!! 
Close!! 
(!! 
)!! 
;!! 
}"" 	
private## 
void## #
ShowConfirmationMessage## ,
(##, -
Window##- 3
currentWindow##4 A
)##A B
{$$ 	
double%% 
left%% 
=%% 
currentWindow%% '
.%%' (
Left%%( ,
+%%- .
(%%/ 0
currentWindow%%0 =
.%%= >
Width%%> C
-%%D E
this%%F J
.%%J K
Width%%K P
)%%P Q
/%%R S
$num%%T U
;%%U V
double&& 
top&& 
=&& 
currentWindow&& &
.&&& '
Top&&' *
+&&+ ,
(&&- .
currentWindow&&. ;
.&&; <
Height&&< B
-&&C D
this&&E I
.&&I J
Height&&J P
)&&P Q
/&&R S
$num&&T U
;&&U V
this'' 
.'' 
Left'' 
='' 
left'' 
;'' 
this(( 
.(( 
Top(( 
=(( 
top(( 
;(( 
this)) 
.)) 
VerticalAlignment)) "
=))# $
VerticalAlignment))% 6
.))6 7
Center))7 =
;))= >
this** 
.** 

ShowDialog** 
(** 
)** 
;** 
}++ 	
},, 
}-- ™:
iC:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameClient\Cards\ChatMessageCard.cs
	namespace		 	
JeopardyGame		
 
.		 
Helpers		 
{

 
public 

class 
ChatMessageCard  
:! "
Border# )
{ 
private 

StackPanel 
stpUserMessage )
;) *
private 
	TextBlock 
lblUserName %
;% &
private 
	TextBlock 

txbMessage $
;$ %
public 
ChatMessageCard 
( 
String %
userName& .
,. /
String1 7
message8 ?
)? @
{ 	
SetCardStyle 
( 
) 
;  
InitializeComponents  
(  !
)! "
;" #
SetUserNameStyle 
( 
userName %
)% &
;& '
SetMessageStyle 
( 
message #
)# $
;$ %
SetStackPanelStyle 
( 
)  
;  !
this 
. 
Child 
= 
stpUserMessage '
;' (
} 	
private 
void 
SetCardStyle !
(! "
)" #
{ 	
this 
. 
Margin 
= 
new 
System $
.$ %
Windows% ,
., -
	Thickness- 6
(6 7
$num7 8
,8 9
$num: ;
,; <
$num= >
,> ?
$num@ A
)A B
;B C
this 
. 
Width 
= 
double 
.  
NaN  #
;# $
this 
. 
MaxWidth 
= 
$num 
;  
this 
. 
Height 
= 
double  
.  !
NaN! $
;$ %
this   
.   

Background   
=   
new   !
SolidColorBrush  " 1
(  1 2
Colors  2 8
.  8 9
White  9 >
)  > ?
;  ? @
this!! 
.!! 
Opacity!! 
=!! 
$num!! 
;!! 
this"" 
."" 
CornerRadius"" 
="" 
new""  #
System""$ *
.""* +
Windows""+ 2
.""2 3
CornerRadius""3 ?
(""? @
$num""@ B
)""B C
;""C D
}## 	
private%% 
void%%  
InitializeComponents%% )
(%%) *
)%%* +
{&& 	
lblUserName'' 
='' 
new'' 
	TextBlock'' '
(''' (
)''( )
;'') *

txbMessage(( 
=(( 
new(( 
	TextBlock(( &
(((& '
)((' (
;((( )
stpUserMessage)) 
=)) 
new))  

StackPanel))! +
())+ ,
))), -
;))- .
}** 	
private,, 
void,, 
SetStackPanelStyle,, '
(,,' (
),,( )
{-- 	
stpUserMessage.. 
... 
Orientation.. &
=..' (
Orientation..) 4
...4 5
Vertical..5 =
;..= >
stpUserMessage// 
.// 
Height// !
=//" #
Double//$ *
.//* +
NaN//+ .
;//. /
stpUserMessage00 
.00 
Width00  
=00! "
Double00# )
.00) *
NaN00* -
;00- .
stpUserMessage11 
.11 
MaxWidth11 #
=11$ %
$num11& )
;11) *
stpUserMessage22 
.22 
Margin22 !
=22" #
new22$ '
System22( .
.22. /
Windows22/ 6
.226 7
	Thickness227 @
(22@ A
$num22A B
)22B C
;22C D
stpUserMessage33 
.33 
Children33 #
.33# $
Add33$ '
(33' (
lblUserName33( 3
)333 4
;334 5
stpUserMessage44 
.44 
Children44 #
.44# $
Add44$ '
(44' (

txbMessage44( 2
)442 3
;443 4
}55 	
private77 
void77 
SetUserNameStyle77 %
(77% &
string77& ,
userName77- 5
)775 6
{88 	
lblUserName99 
.99 
Height99 
=99  
Double99! '
.99' (
NaN99( +
;99+ ,
lblUserName:: 
.:: 
Width:: 
=:: 
Double::  &
.::& '
NaN::' *
;::* +
lblUserName;; 
.;; 
MaxWidth;;  
=;;! "
$num;;# &
;;;& '
lblUserName<< 
.<< 
FontSize<<  
=<<! "
$num<<# %
;<<% &
lblUserName== 
.== 

Foreground== "
===# $
new==% (
SolidColorBrush==) 8
(==8 9
Colors==9 ?
.==? @
DarkRed==@ G
)==G H
;==H I
lblUserName>> 
.>> 
Text>> 
=>> 
userName>> '
;>>' (
lblUserName?? 
.?? 
Margin?? 
=??  
new??! $
System??% +
.??+ ,
Windows??, 3
.??3 4
	Thickness??4 =
(??= >
$num??> @
,??@ A
$num??B C
,??C D
$num??E G
,??G H
$num??I J
)??J K
;??K L
}@@ 	
privateBB 
voidBB 
SetMessageStyleBB $
(BB$ %
stringBB% +
messageBB, 3
)BB3 4
{CC 	

txbMessageDD 
.DD 
HeightDD 
=DD 
DoubleDD  &
.DD& '
NaNDD' *
;DD* +

txbMessageEE 
.EE 
WidthEE 
=EE 
DoubleEE %
.EE% &
NaNEE& )
;EE) *

txbMessageFF 
.FF 
MaxWidthFF 
=FF  !
$numFF" %
;FF% &

txbMessageGG 
.GG 
FontSizeGG 
=GG  !
$numGG" $
;GG$ %

txbMessageHH 
.HH 

ForegroundHH !
=HH" #
newHH$ '
SolidColorBrushHH( 7
(HH7 8
ColorsHH8 >
.HH> ?
BlackHH? D
)HHD E
;HHE F

txbMessageII 
.II 
MarginII 
=II 
newII  #
SystemII$ *
.II* +
WindowsII+ 2
.II2 3
	ThicknessII3 <
(II< =
$numII= ?
,II? @
$numIIA B
,IIB C
$numIID F
,IIF G
$numIIH I
)III J
;IIJ K

txbMessageJJ 
.JJ 
TextJJ 
=JJ 
messageJJ %
;JJ% &

txbMessageKK 
.KK 
TextWrappingKK #
=KK$ %
SystemKK& ,
.KK, -
WindowsKK- 4
.KK4 5
TextWrappingKK5 A
.KKA B
WrapKKB F
;KKF G
}LL 	
}NN 
}PP ˇ4
rC:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameClient\Exceptions\ExceptionDictionary.cs
	namespace 	
JeopardyGame
 
. 

Exceptions !
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
int  #

_SQL_ERROR$ .
=/ 0
-1 2
$num2 5
;5 6
private 
static 
readonly 
int  #
_ENTITY_ERROR$ 1
=2 3
-4 5
$num5 8
;8 9
private 
static 
readonly 
int  #
_SMTP_EXCEPTION$ 3
=4 5
-6 7
$num7 :
;: ;
private 
static 
readonly 
int  #%
_UNKOWN_EXCEPTION_OCURRED$ =
=> ?
-@ A
$numA D
;D E
public!! 
static!! 
string!! 
FATAL_EXCEPTION!! ,
=>!!- /
_FATAL_EXCEPTION!!0 @
;!!@ A
public## 
static## 
string## 
ERROR## "
=>### %
_ERROR##& ,
;##, -
public%% 
static%% 
string%% 
UNKNOW%% #
=>%%$ &
_UNKNOW%%' .
;%%. /
public&& 
static&& 
int&& 
SUCCESFULL_EVENT&& *
=>&&+ -
_SUCCESFULL_EVENT&&. ?
;&&? @
public(( 
static(( 
int(( 
UNSUCCESFULL_EVENT(( ,
=>((- /
_UNSUCCESFULL_EVENT((0 C
;((C D
public** 
static** 
int** 
NULL_PARAEMETER** )
=>*** ,
_NULL_PARAEMETER**- =
;**= >
public,, 
static,, 
int,, 
ARGUMENT_NULL,, '
=>,,( *
_ARGUMENT_NULL,,+ 9
;,,9 :
public.. 
static.. 
int.. +
ARGUMENT_OUT_OF_RANGE_EXCEPTION.. 9
=>..: <,
 _ARGUMENT_OUT_OF_RANGE_EXCEPTION..= ]
;..] ^
public00 
static00 
int00 
FORMMAT_EXCEPTION00 +
=>00, .
_FORMMAT_EXCEPTION00/ A
;00A B
public22 
static22 
int22 
RANK_EXCEPTION22 (
=>22) +
_RANK_EXCEPTION22, ;
;22; <
public44 
static44 
int44  
EMAIL_FORMAT_INVALID44 .
=>44/ 1!
_EMAIL_FORMAT_INVALID442 G
;44G H
public66 
static66 
int66 
INVALID_OPERATION66 +
=>66, .
_INVALID_OPERATION66/ A
;66A B
public88 
static88 
int88 
NO_DB_CONECTION88 )
=>88* ,
_NO_DB_CONECTION88- =
;88= >
public:: 
static:: 
int:: 
SAVE_CHANGES_ERROR:: ,
=>::- /
_SAVE_CHANGES_ERROR::0 C
;::C D
public<< 
static<< 
int<< 
	SQL_ERROR<< #
=><<$ &

_SQL_ERROR<<' 1
;<<1 2
public>> 
static>> 
int>> 
ENTITY_ERROR>> &
=>>>' )
_ENTITY_ERROR>>* 7
;>>7 8
public@@ 
static@@ 
int@@ 
SMTP_EXCEPTION@@ (
=>@@) +
_SMTP_EXCEPTION@@, ;
;@@; <
publicBB 
staticBB 
intBB $
UNKOWN_EXCEPTION_OCURREDBB 2
=>BB3 5%
_UNKOWN_EXCEPTION_OCURREDBB6 O
;BBO P
publicDD 
staticDD 
intDD 
EMAIL_ALREADY_EXISTDD -
=>DD. 0 
_EMAIL_ALREADY_EXISTDD1 E
;DDE F
publicFF 
staticFF 
intFF "
USERNAME_ALREADY_EXISTFF 0
=>FF1 3#
_USERNAME_ALREADY_EXISTFF4 K
;FFK L
}GG 
}II –
vC:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameClient\Exceptions\ExceptionHandlerForLogs.cs
	namespace		 	
JeopardyGame		
 
.		 

Exceptions		 !
{

 
public 

static 
class #
ExceptionHandlerForLogs /
{ 
public 
static 
void 
LogException '
(' (
	Exception( 1
	exception2 ;
,; <
String= C
categoryD L
)L M
{ 	
string 

logMessage 
= 
$"  "
$str" #
{# $
DateTime$ ,
., -
Now- 0
}0 1
$str1 9
{9 :
category: B
}B C
$strC Q
{Q R
	exceptionR [
.[ \
Message\ c
}c d
$strd s
{s t
	exceptiont }
.} ~

StackTrace	~ à
}
à â
$str
â ã
"
ã å
;
å ç
SeriLogClient 
	logConfig #
=$ %
new& )
SeriLogClient* 7
(7 8
)8 9
;9 :
const 
int 

maxRetries  
=! "
$num# $
;$ %
int 

retryCount 
= 
$num 
; 
bool 
success 
= 
false  
;  !
while 
( 
! 
success 
&& 

retryCount )
<* +

maxRetries, 6
)6 7
{ 
try 
{ 
File 
. 
AppendAllText &
(& '
	logConfig' 0
.0 1
getPath1 8
(8 9
)9 :
,: ;

logMessage< F
)F G
;G H
success 
= 
true "
;" #
} 
catch 
( 
IOException "
)" #
{ 
Thread 
. 
Sleep  
(  !
$num! %
)% &
;& '

retryCount 
++  
;  !
} 
}   
}!! 	
}## 
}$$ “4
lC:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameClient\Exceptions\SeriLogClient.cs
	namespace 	
JeopardyGame
 
. 

Exceptions !
{ 
internal 
class 
SeriLogClient  
{ 
private 
readonly 
String 
absolutePath  ,
;, -
public 
SeriLogClient 
( 
) 
{ 	
String 
pathPC 
; 
if 
( 
GetMachineId 
( 
) 
. 
Equals %
(% &

Properties& 0
.0 1
ExceptionsPaths1 @
.@ A
TrisPCIdA I
)I J
)J K
{ 
pathPC 
= 

Properties #
.# $
ExceptionsPaths$ 3
.3 4
PathTris4 <
;< =
} 
else 
{ 
pathPC 
= 

Properties #
.# $
ExceptionsPaths$ 3
.3 4
PathDodonaji4 @
;@ A
} 
absolutePath 
= 
Path 
.  
Combine  '
(' (
pathPC( .
,. /
string0 6
.6 7
Format7 =
(= >

Properties> H
.H I
ExceptionsPathsI X
.X Y
logFileNameY d
,d e
DateTimef n
.n o
Nowo r
.r s
ToStrings {
({ |

Properties	| Ü
.
Ü á
ExceptionsPaths
á ñ
.
ñ ó

DateFormat
ó °
)
° ¢
)
¢ £
)
£ §
;
§ •
ConfigureLogger   
(   
absolutePath   (
)  ( )
;  ) *
}!! 	
public## 
static## 
void## 
ConfigureLogger## *
(##* +
String##+ 1
relativePath##2 >
)##> ?
{$$ 	
string%% 
directoryPath%%  
=%%! "
Path%%# '
.%%' (
GetDirectoryName%%( 8
(%%8 9
relativePath%%9 E
)%%E F
;%%F G
if&& 
(&& 
!&& 
	Directory&& 
.&& 
Exists&& !
(&&! "
directoryPath&&" /
)&&/ 0
)&&0 1
{'' 
	Directory(( 
.(( 
CreateDirectory(( )
((() *
directoryPath((* 7
)((7 8
;((8 9
})) 
Log** 
.** 
Logger** 
=** 
new** 
LoggerConfiguration** 0
(**0 1
)**1 2
.**2 3
MinimumLevel**3 ?
.**? @
Error**@ E
(**E F
)**F G
.**G H
WriteTo**H O
.**O P
File**P T
(**T U
relativePath**U a
,**a b
rollingInterval**c r
:**r s
RollingInterval	**t É
.
**É Ñ
Day
**Ñ á
)
**á à
.
**à â
CreateLogger
**â ï
(
**ï ñ
)
**ñ ó
;
**ó ò
}++ 	
public-- 
String-- 
getPath-- 
(-- 
)-- 
{.. 	
return// 
absolutePath// 
;//  
}00 	
private33 
static33 
string33 
GetMachineId33 *
(33* +
)33+ ,
{44 	
try55 
{66 $
ManagementObjectSearcher77 (
searcher77) 1
=772 3
new774 7$
ManagementObjectSearcher778 P
(77P Q

Properties77Q [
.77[ \
ExceptionsPaths77\ k
.77k l
SelectPC77l t
)77t u
;77u v&
ManagementObjectCollection88 *
drives88+ 1
=882 3
searcher884 <
.88< =
Get88= @
(88@ A
)88A B
;88B C
foreach99 
(99  
ManagementBaseObject99 -
drive99. 3
in994 6
drives997 =
)99= >
{:: 
string;; 
serialNumber;; '
=;;( )
drive;;* /
[;;/ 0

Properties;;0 :
.;;: ;
ExceptionsPaths;;; J
.;;J K$
CharacteristicToConsider;;K c
];;c d
?;;d e
.;;e f
ToString;;f n
(;;n o
);;o p
;;;p q
if<< 
(<< 
!<< 
string<< 
.<<  
IsNullOrEmpty<<  -
(<<- .
serialNumber<<. :
)<<: ;
)<<; <
{== 
return>> 
serialNumber>> +
;>>+ ,
}?? 
}@@ 
}AA 
catchBB 
(BB %
EndpointNotFoundExceptionBB ,
exBB- /
)BB/ 0
{CC #
ExceptionHandlerForLogsDD '
.DD' (
LogExceptionDD( 4
(DD4 5
exDD5 7
,DD7 8
ExceptionDictionaryDD9 L
.DDL M
FATAL_EXCEPTIONDDM \
)DD\ ]
;DD] ^
ConfigureLoggerEE 
(EE  

PropertiesEE  *
.EE* +
ExceptionsPathsEE+ :
.EE: ;
logFileNameEE; F
)EEF G
;EEG H
}FF 
catchGG 
(GG /
#CommunicationObjectFaultedExceptionGG 6
exGG7 9
)GG9 :
{HH #
ExceptionHandlerForLogsII '
.II' (
LogExceptionII( 4
(II4 5
exII5 7
,II7 8
ExceptionDictionaryII9 L
.IIL M
FATAL_EXCEPTIONIIM \
)II\ ]
;II] ^
ConfigureLoggerJJ 
(JJ  

PropertiesJJ  *
.JJ* +
ExceptionsPathsJJ+ :
.JJ: ;
logFileNameJJ; F
)JJF G
;JJG H
}KK 
catchLL 
(LL 
TimeoutExceptionLL #
exLL$ &
)LL& '
{MM #
ExceptionHandlerForLogsNN '
.NN' (
LogExceptionNN( 4
(NN4 5
exNN5 7
,NN7 8
ExceptionDictionaryNN9 L
.NNL M
FATAL_EXCEPTIONNNM \
)NN\ ]
;NN] ^
ConfigureLoggerOO 
(OO  

PropertiesOO  *
.OO* +
ExceptionsPathsOO+ :
.OO: ;
logFileNameOO; F
)OOF G
;OOG H
}PP 
returnQQ 
GuidQQ 
.QQ 
NewGuidQQ 
(QQ  
)QQ  !
.QQ! "
ToStringQQ" *
(QQ* +
)QQ+ ,
;QQ, -
}RR 	
}UU 
}VV Û
mC:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameClient\Helpers\EncryptationClass.cs
	namespace 	
JeopardyGame
 
. 
Helpers 
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
 
EncryptionClass

 '
{ 
public 
static 
string 
EncryptPassword ,
(, -
string- 3
password4 <
)< =
{ 	
using 
( 
SHA256 
sha256 
=  !
SHA256" (
.( )
Create) /
(/ 0
)0 1
)1 2
{ 
byte 
[ 
] 
	hashBytes  
=! "
sha256# )
.) *
ComputeHash* 5
(5 6
Encoding6 >
.> ?
UTF8? C
.C D
GetBytesD L
(L M
passwordM U
)U V
)V W
;W X
string 
hashedPassword %
=& '
BitConverter( 4
.4 5
ToString5 =
(= >
	hashBytes> G
)G H
.H I
ReplaceI P
(P Q
$strQ T
,T U
$strV X
)X Y
.Y Z
ToLowerZ a
(a b
)b c
;c d
return 
hashedPassword %
;% &
} 
} 	
} 
} …_
dC:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameClient\Cards\FriendCard.cs
	namespace		 	
JeopardyGame		
 
.		 
Helpers		 
{

 
public 

partial 
class 

FriendCard #
:$ %

StackPanel& 0
{ 
private 

StackPanel 
stpNameAndStatus +
;+ ,
private 
Label 
lblFriendName #
;# $
private 
Border 
	brdButton  
;  !
private 
Ellipse 
ellConnectionStatus +
;+ ,
private 
Button 
bttInviteFriend &
;& '
public 
event 
EventHandler !
InviteButtonClicked" 5
;5 6
private 
readonly 
int 
AVAILABLE_STATUS -
=. /
$num0 1
;1 2
private 
readonly 
int 
UNAVAILABLE_STATUS /
=0 1
$num2 3
;3 4
private 
readonly 
int 
PLAYING_STATUS +
=, -
$num. /
;/ 0
public 

FriendCard 
( 
String  
userName! )
,) *
int+ .
state/ 4
,4 5
String6 <

textInvite= G
)G H
{ 	
SetCardStyle 
( 
) 
;  
InitializeComponents  
(  !
)! "
;" #
SetLabelStyle 
( 
userName "
)" #
;# $
SetEllipseStyle 
( 
state !
)! "
;" #
SetButtonStyle 
( 

textInvite %
)% &
;& '
SetStackPanelStyle 
( 
)  
;  !
this 
. 
Children 
. 
Add 
( 
stpNameAndStatus .
). /
;/ 0
this   
.   
Children   
.   
Add   
(   
	brdButton   '
)  ' (
;  ( )
bttInviteFriend!! 
.!! 
Click!! !
+=!!" $
ClickInviteFriend!!% 6
;!!6 7
}"" 	
private$$ 
void$$ 
SetCardStyle$$ !
($$! "
)$$" #
{%% 	
this&& 
.&& 
Margin&& 
=&& 
new&& 
	Thickness&& '
(&&' (
$num&&( )
,&&) *
$num&&+ ,
,&&, -
$num&&. /
,&&/ 0
$num&&1 2
)&&2 3
;&&3 4
this'' 
.'' 
Width'' 
='' 
$num'' 
;'' 
this(( 
.(( 
MaxWidth(( 
=(( 
$num(( 
;((  
this)) 
.)) 
Orientation)) 
=)) 
System)) %
.))% &
Windows))& -
.))- .
Controls)). 6
.))6 7
Orientation))7 B
.))B C

Horizontal))C M
;))M N
this** 
.** 

Background** 
=** 
new** !
SolidColorBrush**" 1
(**1 2
Colors**2 8
.**8 9
Transparent**9 D
)**D E
;**E F
}++ 	
private-- 
void--  
InitializeComponents-- )
(--) *
)--* +
{.. 	
lblFriendName// 
=// 
new// 
Label//  %
(//% &
)//& '
;//' (
ellConnectionStatus00 
=00  !
new00" %
Ellipse00& -
(00- .
)00. /
;00/ 0
bttInviteFriend11 
=11 
new11 !
Button11" (
(11( )
)11) *
;11* +
stpNameAndStatus22 
=22 
new22 "

StackPanel22# -
(22- .
)22. /
;22/ 0
	brdButton33 
=33 
new33 
Border33 "
(33" #
)33# $
;33$ %
}44 	
private77 
void77 
SetLabelStyle77 "
(77" #
string77# )
userName77* 2
)772 3
{88 	
lblFriendName99 
.99 
Height99  
=99! "
$num99# %
;99% &
lblFriendName:: 
.:: 
Width:: 
=::  !
Double::" (
.::( )
NaN::) ,
;::, -
lblFriendName;; 
.;; 
Margin;;  
=;;! "
new;;# &
	Thickness;;' 0
(;;0 1
$num;;1 2
,;;2 3
$num;;4 5
,;;5 6
$num;;7 8
,;;8 9
$num;;: ;
);;; <
;;;< =
lblFriendName<< 
.<< 
FontSize<< "
=<<# $
$num<<% '
;<<' (
lblFriendName== 
.== 

Foreground== $
===% &
new==' *
SolidColorBrush==+ :
(==: ;
Colors==; A
.==A B
White==B G
)==G H
;==H I
lblFriendName>> 
.>> &
HorizontalContentAlignment>> 4
=>>5 6
System>>7 =
.>>= >
Windows>>> E
.>>E F
HorizontalAlignment>>F Y
.>>Y Z
Left>>Z ^
;>>^ _
lblFriendName?? 
.?? 
Content?? !
=??" #
userName??$ ,
;??, -
}@@ 	
privateBB 
voidBB 
SetEllipseStyleBB $
(BB$ %
intBB% (
stateBB) .
)BB. /
{CC 	
ellConnectionStatusDD 
.DD  
HeightDD  &
=DD' (
$numDD) +
;DD+ ,
ellConnectionStatusEE 
.EE  
WidthEE  %
=EE& '
$numEE( *
;EE* +
ellConnectionStatusFF 
.FF  
MarginFF  &
=FF' (
newFF) ,
	ThicknessFF- 6
(FF6 7
$numFF7 8
,FF8 9
$numFF: ;
,FF; <
$numFF= ?
,FF? @
$numFFA B
)FFB C
;FFC D
ifGG 
(GG 
stateGG 
==GG 
AVAILABLE_STATUSGG )
)GG) *
{HH 
ellConnectionStatusII "
.II" #
FillII# '
=II( )
newII* -
SolidColorBrushII. =
(II= >
ColorsII> D
.IID E
GreenIIE J
)IIJ K
;IIK L
}JJ 
elseKK 
ifKK 
(KK 
stateKK 
==KK 
UNAVAILABLE_STATUSKK /
)KK/ 0
{LL 
ellConnectionStatusMM $
.MM$ %
FillMM% )
=MM* +
newMM, /
SolidColorBrushMM0 ?
(MM? @
ColorsMM@ F
.MMF G
GrayMMG K
)MMK L
;MML M
}NN 
elseNN 
ifNN 
(NN 
stateNN 
==NN 
PLAYING_STATUSNN ,
)NN, -
{OO 
ellConnectionStatusPP #
.PP# $
FillPP$ (
=PP) *
newPP+ .
SolidColorBrushPP/ >
(PP> ?
ColorsPP? E
.PPE F
BluePPF J
)PPJ K
;PPK L
}QQ 
elseRR 
{SS 
ellConnectionStatusTT #
.TT# $
FillTT$ (
=TT) *
newTT+ .
SolidColorBrushTT/ >
(TT> ?
ColorsTT? E
.TTE F
YellowTTF L
)TTL M
;TTM N
}UU 
}VV 	
privateXX 
voidXX 
SetStackPanelStyleXX '
(XX' (
)XX( )
{YY 	
stpNameAndStatusZZ 
.ZZ 
ChildrenZZ %
.ZZ% &
AddZZ& )
(ZZ) *
lblFriendNameZZ* 7
)ZZ7 8
;ZZ8 9
stpNameAndStatus[[ 
.[[ 
Children[[ %
.[[% &
Add[[& )
([[) *
ellConnectionStatus[[* =
)[[= >
;[[> ?
stpNameAndStatus\\ 
.\\ 
Orientation\\ (
=\\) *
Orientation\\+ 6
.\\6 7

Horizontal\\7 A
;\\A B
stpNameAndStatus]] 
.]] 
Width]] "
=]]# $
$num]]% (
;]]( )
stpNameAndStatus^^ 
.^^ 
HorizontalAlignment^^ 0
=^^1 2
HorizontalAlignment^^3 F
.^^F G
Left^^G K
;^^K L
}__ 	
privateaa 
voidaa 
SetButtonStyleaa #
(aa# $
stringaa$ *

textInviteaa+ 5
)aa5 6
{bb 	
bttInviteFriendcc 
.cc 
Heightcc "
=cc# $
$numcc% '
;cc' (
bttInviteFrienddd 
.dd 
Widthdd !
=dd" #
$numdd$ &
;dd& '
bttInviteFriendee 
.ee 
Marginee "
=ee# $
newee% (
	Thicknessee) 2
(ee2 3
$numee3 4
)ee4 5
;ee5 6
bttInviteFriendff 
.ff 
HorizontalAlignmentff /
=ff0 1
HorizontalAlignmentff2 E
.ffE F
CenterffF L
;ffL M
bttInviteFriendgg 
.gg 
FontSizegg $
=gg% &
$numgg' )
;gg) *
bttInviteFriendhh 
.hh 

Foregroundhh &
=hh' (
newhh) ,
SolidColorBrushhh- <
(hh< =
Colorshh= C
.hhC D
WhitehhD I
)hhI J
;hhJ K
bttInviteFriendii 
.ii 

Backgroundii &
=ii' (
newii) ,
SolidColorBrushii- <
(ii< =
Colorsii= C
.iiC D
TransparentiiD O
)iiO P
;iiP Q
bttInviteFriendjj 
.jj 
BorderBrushjj '
=jj( )
newjj* -
SolidColorBrushjj. =
(jj= >
Colorsjj> D
.jjD E
TransparentjjE P
)jjP Q
;jjQ R
bttInviteFriendkk 
.kk 
Contentkk #
=kk$ %

textInvitekk& 0
;kk0 1
	brdButtonll 
.ll 
CornerRadiusll "
=ll# $
newll% (
CornerRadiusll) 5
(ll5 6
$numll6 8
)ll8 9
;ll9 :
	brdButtonmm 
.mm 
BorderBrushmm !
=mm" #
newmm$ '
SolidColorBrushmm( 7
(mm7 8
Colorsmm8 >
.mm> ?
Bluemm? C
)mmC D
;mmD E
	brdButtonnn 
.nn 

Backgroundnn  
=nn! "
newnn# &
SolidColorBrushnn' 6
(nn6 7
Colorsnn7 =
.nn= >
	CadetBluenn> G
)nnG H
;nnH I
	brdButtonoo 
.oo 
BorderThicknessoo %
=oo& '
newoo( +
	Thicknessoo, 5
(oo5 6
$numoo6 7
)oo7 8
;oo8 9
	brdButtonpp 
.pp 
HorizontalAlignmentpp )
=pp* +
HorizontalAlignmentpp, ?
.pp? @
Rightpp@ E
;ppE F
	brdButtonqq 
.qq 
Heightqq 
=qq 
$numqq !
;qq! "
	brdButtonrr 
.rr 
Widthrr 
=rr 
$numrr  
;rr  !
	brdButtonss 
.ss 
Childss 
=ss 
bttInviteFriendss -
;ss- .
}uu 	
privateww 
voidww 
ClickInviteFriendww &
(ww& '
objectww' -
senderww. 4
,ww4 5
RoutedEventArgsww6 E
ewwF G
)wwG H
{xx 	
InviteButtonClickedyy 
?yy  
.yy  !
Invokeyy! '
(yy' (
thisyy( ,
,yy, -
	EventArgsyy. 7
.yy7 8
Emptyyy8 =
)yy= >
;yy> ?
}zz 	
}|| 
}}} —»
tC:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameClient\Cards\FriendCardManagementWindow.cs
	namespace 	
JeopardyGame
 
. 
Helpers 
{ 
public		 

class		 &
FriendCardManagementWindow		 ,
:		- .

StackPanel		/ 9
{

 
private 
readonly 
int 
idUser #
;# $
private 

StackPanel 
stcName "
;" #
private 

StackPanel 

stcButtons %
;% &
private 
Label 
lblUserName !
;! "
private 
Border 
brdLeftButton $
;$ %
private 
Border 
brdRightButton %
;% &
private 
System 
. 
Windows 
. 
Shapes %
.% &
Ellipse& -
ellPointMark. :
;: ;
private 
Button 
bttLeftFunction &
;& '
private 
Button 
bttRightFunction '
;' (
private 
readonly 
FriendManager &
friendManager' 4
;4 5
public &
FriendCardManagementWindow )
() *
int* -
idUser. 4
,4 5
String6 <
userName= E
,E F
intG J
stateK P
,P Q
StringR X
textLeftButtonY g
,g h
Stringi o
textRigthButtonp 
,	 Ä
FriendManager
Å é
windowInstance
è ù
)
ù û
{ 	
SetCardStyle 
( 
) 
; 
this 
. 
idUser 
= 
idUser  
;  !
friendManager 
= 
windowInstance *
;* + 
InitializeComponents  
(  !
)! "
;" #
SetLabelStyle 
( 
userName "
)" #
;# $
SetEllipseStyle 
( 
) 
; 
SetLefButtonStyle 
( 
textLeftButton ,
,, -
state. 3
)3 4
;4 5
SetRigthButtonStyle 
(  
textRigthButton  /
,/ 0
state1 6
)6 7
;7 8
SetStackPanelStyle   
(   
)    
;    !%
SetStackPanelButtonsStyle!! %
(!!% &
)!!& '
;!!' (
this"" 
."" 
Children"" 
."" 
Add"" 
("" 
stcName"" %
)""% &
;""& '
this## 
.## 
Children## 
.## 
Add## 
(## 

stcButtons## (
)##( )
;##) *
}$$ 	
private&& 
void&& 
SetCardStyle&& !
(&&! "
)&&" #
{'' 	
this(( 
.(( 
Margin(( 
=(( 
new(( 
	Thickness(( '
(((' (
$num((( )
)(() *
;((* +
this)) 
.)) 
Width)) 
=)) 
$num)) 
;)) 
this** 
.** 
MaxWidth** 
=** 
$num**  
;**  !
this++ 
.++ 
Orientation++ 
=++ 
Orientation++ *
.++* +

Horizontal+++ 5
;++5 6
this,, 
.,, 
HorizontalAlignment,, $
=,,% &
HorizontalAlignment,,' :
.,,: ;
Left,,; ?
;,,? @
this-- 
.-- 
VerticalAlignment-- "
=--# $
VerticalAlignment--% 6
.--6 7
Center--7 =
;--= >
}.. 	
private00 
void00  
InitializeComponents00 )
(00) *
)00* +
{11 	
stcName22 
=22 
new22 

StackPanel22 $
(22$ %
)22% &
;22& '

stcButtons33 
=33 
new33 

StackPanel33 '
(33' (
)33( )
;33) *
lblUserName44 
=44 
new44 
Label44 #
(44# $
)44$ %
;44% &
brdLeftButton55 
=55 
new55 
Border55  &
(55& '
)55' (
;55( )
brdRightButton66 
=66 
new66  
Border66! '
(66' (
)66( )
;66) *
ellPointMark77 
=77 
new77 
System77 %
.77% &
Windows77& -
.77- .
Shapes77. 4
.774 5
Ellipse775 <
(77< =
)77= >
;77> ?
bttLeftFunction88 
=88 
new88 !
Button88" (
(88( )
)88) *
;88* +
bttRightFunction99 
=99 
new99 "
Button99# )
(99) *
)99* +
;99+ ,
}:: 	
private<< 
void<< 
SetLabelStyle<< "
(<<" #
string<<# )
userName<<* 2
)<<2 3
{== 	
lblUserName>> 
.>> 
Height>> 
=>>  
Double>>! '
.>>' (
NaN>>( +
;>>+ ,
lblUserName?? 
.?? 
Width?? 
=?? 
Double??  &
.??& '
NaN??' *
;??* +
lblUserName@@ 
.@@ 
Margin@@ 
=@@  
new@@! $
	Thickness@@% .
(@@. /
$num@@/ 0
,@@0 1
$num@@2 3
,@@3 4
$num@@5 6
,@@6 7
$num@@8 9
)@@9 :
;@@: ;
lblUserNameAA 
.AA 
FontSizeAA  
=AA! "
$numAA# %
;AA% &
lblUserNameBB 
.BB 

FontWeightBB "
=BB# $
FontWeightsBB% 0
.BB0 1
BoldBB1 5
;BB5 6
lblUserNameCC 
.CC 

ForegroundCC "
=CC# $
newCC% (
SolidColorBrushCC) 8
(CC8 9
ColorsCC9 ?
.CC? @
BlackCC@ E
)CCE F
;CCF G
lblUserNameDD 
.DD &
HorizontalContentAlignmentDD 2
=DD3 4
HorizontalAlignmentDD5 H
.DDH I
LeftDDI M
;DDM N
lblUserNameEE 
.EE 
VerticalAlignmentEE )
=EE* +
VerticalAlignmentEE, =
.EE= >
TopEE> A
;EEA B
lblUserNameFF 
.FF 
ContentFF 
=FF  !
userNameFF" *
;FF* +
}GG 	
privateII 
voidII 
SetEllipseStyleII $
(II$ %
)II% &
{JJ 	
ellPointMarkKK 
.KK 
HeightKK 
=KK  !
$numKK" $
;KK$ %
ellPointMarkLL 
.LL 
WidthLL 
=LL  
$numLL! #
;LL# $
ellPointMarkMM 
.MM 
MarginMM 
=MM  !
newMM" %
	ThicknessMM& /
(MM/ 0
$numMM0 1
,MM1 2
$numMM3 4
,MM4 5
$numMM6 8
,MM8 9
$numMM: ;
)MM; <
;MM< =
ellPointMarkNN 
.NN 
FillNN 
=NN 
newNN  #
SolidColorBrushNN$ 3
(NN3 4
ColorsNN4 :
.NN: ;
BlackNN; @
)NN@ A
;NNA B
}OO 	
privateQQ 
voidQQ 
SetStackPanelStyleQQ '
(QQ' (
)QQ( )
{RR 	
stcNameSS 
.SS 
ChildrenSS 
.SS 
AddSS  
(SS  !
ellPointMarkSS! -
)SS- .
;SS. /
stcNameTT 
.TT 
ChildrenTT 
.TT 
AddTT  
(TT  !
lblUserNameTT! ,
)TT, -
;TT- .
stcNameUU 
.UU 
OrientationUU 
=UU  !
OrientationUU" -
.UU- .

HorizontalUU. 8
;UU8 9
stcNameVV 
.VV 
WidthVV 
=VV 
$numVV 
;VV  
stcNameWW 
.WW 
MarginWW 
=WW 
newWW  
	ThicknessWW! *
(WW* +
$numWW+ -
,WW- .
$numWW. /
,WW/ 0
$numWW0 2
,WW2 3
$numWW3 4
)WW4 5
;WW5 6
stcNameXX 
.XX 
HorizontalAlignmentXX '
=XX( )
HorizontalAlignmentXX* =
.XX= >
LeftXX> B
;XXB C
stcNameYY 
.YY 
VerticalAlignmentYY %
=YY& '
VerticalAlignmentYY( 9
.YY9 :
CenterYY: @
;YY@ A
}ZZ 	
private\\ 
void\\ 
SetLefButtonStyle\\ &
(\\& '
string\\' -
textLefB\\. 6
,\\6 7
int\\8 ;
typeOfButton\\< H
)\\H I
{]] 	
bttLeftFunction^^ 
.^^ 
Height^^ "
=^^# $
$num^^% '
;^^' (
bttLeftFunction__ 
.__ 
Width__ !
=__" #
Double__$ *
.__* +
NaN__+ .
;__. /
bttLeftFunction`` 
.`` 
Padding`` #
=``$ %
new``& )
	Thickness``* 3
(``3 4
$num``4 6
,``6 7
$num``7 8
,``8 9
$num``9 ;
,``; <
$num``< =
)``= >
;``> ?
bttLeftFunctionaa 
.aa 
Marginaa "
=aa# $
newaa% (
	Thicknessaa) 2
(aa2 3
$numaa3 4
)aa4 5
;aa5 6
bttLeftFunctionbb 
.bb 
HorizontalAlignmentbb /
=bb0 1
HorizontalAlignmentbb2 E
.bbE F
CenterbbF L
;bbL M
bttLeftFunctioncc 
.cc 
FontSizecc $
=cc% &
$numcc' )
;cc) *
bttLeftFunctiondd 
.dd 

Foregrounddd &
=dd' (
newdd) ,
SolidColorBrushdd- <
(dd< =
Colorsdd= C
.ddC D
WhiteddD I
)ddI J
;ddJ K
bttLeftFunctionee 
.ee 

Backgroundee &
=ee' (
newee) ,
SolidColorBrushee- <
(ee< =
Colorsee= C
.eeC D
TransparenteeD O
)eeO P
;eeP Q
bttLeftFunctionff 
.ff 
BorderBrushff '
=ff( )
newff* -
SolidColorBrushff. =
(ff= >
Colorsff> D
.ffD E
TransparentffE P
)ffP Q
;ffQ R
bttLeftFunctiongg 
.gg 
Contentgg #
=gg$ %
textLefBgg& .
;gg. /
SolidColorBrushii 
backGroundColorii +
;ii+ ,
switchjj 
(jj 
typeOfButtonjj  
)jj  !
{kk 
casell 
$numll 
:ll 
backGroundColormm #
=mm$ %
newmm& )
SolidColorBrushmm* 9
(mm9 :
(mm: ;
Colormm; @
)mm@ A
ColorConvertermmA O
.mmO P
ConvertFromStringmmP a
(mma b
$strmmb k
)mmk l
)mml m
;mmm n
bttLeftFunctionnn #
.nn# $
Clicknn$ )
+=nn* ,
ClickReportUsernn- <
;nn< =
breakoo 
;oo 
casepp 
$numpp 
:pp 
backGroundColorqq #
=qq$ %
newqq& )
SolidColorBrushqq* 9
(qq9 :
(qq: ;
Colorqq; @
)qq@ A
ColorConverterqqA O
.qqO P
ConvertFromStringqqP a
(qqa b
$strqqb k
)qqk l
)qql m
;qqm n
bttLeftFunctionrr #
.rr# $
Clickrr$ )
+=rr* ,
ClickAcceptRequestrr- ?
;rr? @
breakss 
;ss 
casett 
$numtt 
:tt 
backGroundColoruu #
=uu$ %
newuu& )
SolidColorBrushuu* 9
(uu9 :
(uu: ;
Coloruu; @
)uu@ A
ColorConverteruuA O
.uuO P
ConvertFromStringuuP a
(uua b
$struub k
)uuk l
)uul m
;uum n
bttLeftFunctionvv #
.vv# $
Clickvv$ )
+=vv* ,
ClickSendRequestvv- =
;vv= >
breakww 
;ww 
defaultxx 
:xx 
backGroundColoryy #
=yy$ %
newyy& )
SolidColorBrushyy* 9
(yy9 :
(yy: ;
Coloryy; @
)yy@ A
ColorConverteryyA O
.yyO P
ConvertFromStringyyP a
(yya b
$stryyb k
)yyk l
)yyl m
;yym n
breakzz 
;zz 
}{{ 
brdLeftButton}} 
.}} 
CornerRadius}} &
=}}' (
new}}) ,
CornerRadius}}- 9
(}}9 :
$num}}: <
)}}< =
;}}= >
brdLeftButton~~ 
.~~ 

Background~~ $
=~~% &
backGroundColor~~' 6
;~~6 7
brdLeftButton 
. 
BorderBrush %
=& '
new( +
SolidColorBrush, ;
(; <
Colors< B
.B C
WhiteC H
)H I
;I J
brdLeftButton
ÄÄ 
.
ÄÄ 
BorderThickness
ÄÄ )
=
ÄÄ* +
new
ÄÄ, /
	Thickness
ÄÄ0 9
(
ÄÄ9 :
$num
ÄÄ: ;
)
ÄÄ; <
;
ÄÄ< =
brdLeftButton
ÅÅ 
.
ÅÅ !
HorizontalAlignment
ÅÅ -
=
ÅÅ. /!
HorizontalAlignment
ÅÅ0 C
.
ÅÅC D
Left
ÅÅD H
;
ÅÅH I
brdLeftButton
ÇÇ 
.
ÇÇ 
VerticalAlignment
ÇÇ +
=
ÇÇ, -
VerticalAlignment
ÇÇ. ?
.
ÇÇ? @
Center
ÇÇ@ F
;
ÇÇF G
brdLeftButton
ÉÉ 
.
ÉÉ 
Height
ÉÉ  
=
ÉÉ! "
$num
ÉÉ# %
;
ÉÉ% &
brdLeftButton
ÑÑ 
.
ÑÑ 
Width
ÑÑ 
=
ÑÑ  !
Double
ÑÑ" (
.
ÑÑ( )
NaN
ÑÑ) ,
;
ÑÑ, -
brdLeftButton
ÖÖ 
.
ÖÖ 
Margin
ÖÖ  
=
ÖÖ! "
new
ÖÖ# &
	Thickness
ÖÖ' 0
(
ÖÖ0 1
$num
ÖÖ1 3
,
ÖÖ3 4
$num
ÖÖ4 5
,
ÖÖ5 6
$num
ÖÖ6 7
,
ÖÖ7 8
$num
ÖÖ8 9
)
ÖÖ9 :
;
ÖÖ: ;
brdLeftButton
ÜÜ 
.
ÜÜ 
Child
ÜÜ 
=
ÜÜ  !
bttLeftFunction
ÜÜ" 1
;
ÜÜ1 2
}
áá 	
private
ãã 
void
ãã !
SetRigthButtonStyle
ãã (
(
ãã( )
string
ãã) /

textRigthB
ãã0 :
,
ãã: ;
int
ãã< ?
typeOfButton
ãã@ L
)
ããL M
{
åå 	
bttRightFunction
çç 
.
çç 
Height
çç #
=
çç$ %
$num
çç& (
;
çç( )
bttRightFunction
éé 
.
éé 
Width
éé "
=
éé# $
Double
éé% +
.
éé+ ,
NaN
éé, /
;
éé/ 0
bttRightFunction
èè 
.
èè 
Margin
èè #
=
èè$ %
new
èè& )
	Thickness
èè* 3
(
èè3 4
$num
èè4 5
)
èè5 6
;
èè6 7
bttRightFunction
êê 
.
êê 
Padding
êê $
=
êê% &
new
êê' *
	Thickness
êê+ 4
(
êê4 5
$num
êê5 7
,
êê7 8
$num
êê8 9
,
êê9 :
$num
êê: <
,
êê< =
$num
êê= >
)
êê> ?
;
êê? @
bttRightFunction
ëë 
.
ëë !
HorizontalAlignment
ëë 0
=
ëë1 2!
HorizontalAlignment
ëë3 F
.
ëëF G
Center
ëëG M
;
ëëM N
bttRightFunction
íí 
.
íí 
FontSize
íí %
=
íí& '
$num
íí( *
;
íí* +
bttRightFunction
ìì 
.
ìì 

Foreground
ìì '
=
ìì( )
new
ìì* -
SolidColorBrush
ìì. =
(
ìì= >
Colors
ìì> D
.
ììD E
White
ììE J
)
ììJ K
;
ììK L
bttRightFunction
îî 
.
îî 

Background
îî '
=
îî( )
new
îî* -
SolidColorBrush
îî. =
(
îî= >
Colors
îî> D
.
îîD E
Transparent
îîE P
)
îîP Q
;
îîQ R
bttRightFunction
ïï 
.
ïï 
BorderBrush
ïï (
=
ïï) *
new
ïï+ .
SolidColorBrush
ïï/ >
(
ïï> ?
Colors
ïï? E
.
ïïE F
Transparent
ïïF Q
)
ïïQ R
;
ïïR S
bttRightFunction
ññ 
.
ññ 
Content
ññ $
=
ññ% &

textRigthB
ññ' 1
;
ññ1 2
SolidColorBrush
òò 
backGroundColor
òò +
;
òò+ ,
switch
ôô 
(
ôô 
typeOfButton
ôô  
)
ôô  !
{
öö 
case
õõ 
$num
õõ 
:
õõ 
backGroundColor
úú #
=
úú$ %
new
úú& )
SolidColorBrush
úú* 9
(
úú9 :
(
úú: ;
Color
úú; @
)
úú@ A
ColorConverter
úúA O
.
úúO P
ConvertFromString
úúP a
(
úúa b
$str
úúb k
)
úúk l
)
úúl m
;
úúm n
bttRightFunction
ùù $
.
ùù$ %
Click
ùù% *
+=
ùù+ -"
ClickEliminateFriend
ùù. B
;
ùùB C
break
ûû 
;
ûû 
case
üü 
$num
üü 
:
üü 
backGroundColor
†† #
=
††$ %
new
††& )
SolidColorBrush
††* 9
(
††9 :
(
††: ;
Color
††; @
)
††@ A
ColorConverter
††A O
.
††O P
ConvertFromString
††P a
(
††a b
$str
††b k
)
††k l
)
††l m
;
††m n
bttRightFunction
°° $
.
°°$ %
Click
°°% *
+=
°°+ -!
ClickDeclineRequest
°°. A
;
°°A B
break
¢¢ 
;
¢¢ 
case
££ 
$num
££ 
:
££ 
backGroundColor
§§ #
=
§§$ %
new
§§& )
SolidColorBrush
§§* 9
(
§§9 :
(
§§: ;
Color
§§; @
)
§§@ A
ColorConverter
§§A O
.
§§O P
ConvertFromString
§§P a
(
§§a b
$str
§§b k
)
§§k l
)
§§l m
;
§§m n
bttRightFunction
•• $
.
••$ %
Click
••% *
+=
••+ -
ClickReportUser
••. =
;
••= >
break
¶¶ 
;
¶¶ 
default
ßß 
:
ßß 
backGroundColor
®® #
=
®®$ %
new
®®& )
SolidColorBrush
®®* 9
(
®®9 :
(
®®: ;
Color
®®; @
)
®®@ A
ColorConverter
®®A O
.
®®O P
ConvertFromString
®®P a
(
®®a b
$str
®®b k
)
®®k l
)
®®l m
;
®®m n
break
©© 
;
©© 
}
™™ 
brdRightButton
¨¨ 
.
¨¨ 
CornerRadius
¨¨ '
=
¨¨( )
new
¨¨* -
CornerRadius
¨¨. :
(
¨¨: ;
$num
¨¨; =
)
¨¨= >
;
¨¨> ?
brdRightButton
≠≠ 
.
≠≠ 

Background
≠≠ %
=
≠≠& '
backGroundColor
≠≠( 7
;
≠≠7 8
brdRightButton
ÆÆ 
.
ÆÆ 
BorderBrush
ÆÆ &
=
ÆÆ' (
new
ÆÆ) ,
SolidColorBrush
ÆÆ- <
(
ÆÆ< =
Colors
ÆÆ= C
.
ÆÆC D
White
ÆÆD I
)
ÆÆI J
;
ÆÆJ K
brdRightButton
ØØ 
.
ØØ 
BorderThickness
ØØ *
=
ØØ+ ,
new
ØØ- 0
	Thickness
ØØ1 :
(
ØØ: ;
$num
ØØ; <
)
ØØ< =
;
ØØ= >
brdRightButton
∞∞ 
.
∞∞ 
BorderThickness
∞∞ *
=
∞∞+ ,
new
∞∞- 0
	Thickness
∞∞1 :
(
∞∞: ;
$num
∞∞; <
)
∞∞< =
;
∞∞= >
brdRightButton
±± 
.
±± 
Margin
±± !
=
±±" #
new
±±$ '
	Thickness
±±( 1
(
±±1 2
$num
±±2 4
,
±±4 5
$num
±±5 6
,
±±6 7
$num
±±7 8
,
±±8 9
$num
±±9 :
)
±±: ;
;
±±; <
brdRightButton
≤≤ 
.
≤≤ !
HorizontalAlignment
≤≤ .
=
≤≤/ 0!
HorizontalAlignment
≤≤1 D
.
≤≤D E
Right
≤≤E J
;
≤≤J K
brdRightButton
≥≥ 
.
≥≥ 
VerticalAlignment
≥≥ ,
=
≥≥- .
VerticalAlignment
≥≥/ @
.
≥≥@ A
Center
≥≥A G
;
≥≥G H
brdRightButton
¥¥ 
.
¥¥ 
Height
¥¥ !
=
¥¥" #
$num
¥¥$ &
;
¥¥& '
brdRightButton
µµ 
.
µµ 
Width
µµ  
=
µµ! "
Double
µµ# )
.
µµ) *
NaN
µµ* -
;
µµ- .
brdRightButton
∂∂ 
.
∂∂ 
Child
∂∂  
=
∂∂! "
bttRightFunction
∂∂# 3
;
∂∂3 4
}
∑∑ 	
private
∏∏ 
void
∏∏ '
SetStackPanelButtonsStyle
∏∏ .
(
∏∏. /
)
∏∏/ 0
{
ππ 	

stcButtons
∫∫ 
.
∫∫ 
Children
∫∫ 
.
∫∫  
Add
∫∫  #
(
∫∫# $
brdLeftButton
∫∫$ 1
)
∫∫1 2
;
∫∫2 3

stcButtons
ªª 
.
ªª 
Children
ªª 
.
ªª  
Add
ªª  #
(
ªª# $
brdRightButton
ªª$ 2
)
ªª2 3
;
ªª3 4

stcButtons
ºº 
.
ºº 
Orientation
ºº "
=
ºº# $
Orientation
ºº% 0
.
ºº0 1

Horizontal
ºº1 ;
;
ºº; <

stcButtons
ΩΩ 
.
ΩΩ 
Margin
ΩΩ 
=
ΩΩ 
new
ΩΩ  #
	Thickness
ΩΩ$ -
(
ΩΩ- .
$num
ΩΩ. 0
,
ΩΩ0 1
$num
ΩΩ1 2
,
ΩΩ2 3
$num
ΩΩ3 4
,
ΩΩ4 5
$num
ΩΩ5 6
)
ΩΩ6 7
;
ΩΩ7 8

stcButtons
ææ 
.
ææ 
MaxWidth
ææ 
=
ææ  !
$num
ææ" %
;
ææ% &

stcButtons
øø 
.
øø !
HorizontalAlignment
øø *
=
øø+ ,!
HorizontalAlignment
øø- @
.
øø@ A
Right
øøA F
;
øøF G

stcButtons
¿¿ 
.
¿¿ 
VerticalAlignment
¿¿ (
=
¿¿) *
VerticalAlignment
¿¿, =
.
¿¿= >
Center
¿¿> D
;
¿¿D E
}
¡¡ 	
private
¬¬ 
void
¬¬ 
ClickReportUser
¬¬ $
(
¬¬$ %
object
¬¬% +
sender
¬¬, 2
,
¬¬2 3
RoutedEventArgs
¬¬4 C
e
¬¬D E
)
¬¬E F
{
√√ 	
friendManager
ƒƒ 
.
ƒƒ 

ReportUser
ƒƒ $
(
ƒƒ$ %
idUser
ƒƒ% +
)
ƒƒ+ ,
;
ƒƒ, -
}
∆∆ 	
private
»» 
void
»» "
ClickEliminateFriend
»» )
(
»») *
object
»»* 0
sender
»»1 7
,
»»7 8
RoutedEventArgs
»»9 H
e
»»I J
)
»»J K
{
…… 	
friendManager
   
.
   
EliminateFriend
   )
(
  ) *
idUser
  * 0
)
  0 1
;
  1 2
}
ÀÀ 	
private
ÕÕ 
void
ÕÕ  
ClickAcceptRequest
ÕÕ '
(
ÕÕ' (
object
ÕÕ( .
sender
ÕÕ/ 5
,
ÕÕ5 6
RoutedEventArgs
ÕÕ7 F
e
ÕÕG H
)
ÕÕH I
{
ŒŒ 	
friendManager
œœ 
.
œœ !
AcceptFriendRequest
œœ -
(
œœ- .
idUser
œœ. 4
,
œœ4 5
lblUserName
œœ6 A
.
œœA B
Content
œœB I
.
œœI J
ToString
œœJ R
(
œœR S
)
œœS T
)
œœT U
;
œœU V
}
–– 	
private
““ 
void
““ !
ClickDeclineRequest
““ (
(
““( )
object
““) /
sender
““0 6
,
““6 7
RoutedEventArgs
““8 G
e
““H I
)
““I J
{
”” 	
friendManager
‘‘ 
.
‘‘ "
DeclineFriendRequest
‘‘ .
(
‘‘. /
idUser
‘‘/ 5
,
‘‘5 6
lblUserName
‘‘7 B
.
‘‘B C
Content
‘‘C J
.
‘‘J K
ToString
‘‘K S
(
‘‘S T
)
‘‘T U
)
‘‘U V
;
‘‘V W
}
’’ 	
private
◊◊ 
void
◊◊ 
ClickSendRequest
◊◊ %
(
◊◊% &
object
◊◊& ,
sender
◊◊- 3
,
◊◊3 4
RoutedEventArgs
◊◊5 D
e
◊◊E F
)
◊◊F G
{
ÿÿ 	
friendManager
ŸŸ 
.
ŸŸ 
SentFriendRequest
ŸŸ +
(
ŸŸ+ ,
idUser
ŸŸ, 2
)
ŸŸ2 3
;
ŸŸ3 4
}
⁄⁄ 	
}
€€ 
}‹‹ Ä$
pC:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameClient\Helpers\FriendListDictionary.cs
	namespace 	
JeopardyGame
 
. 
Helpers 
{ 
public		 

partial		 
class		 )
FriendAvailabilityInformation		 6
(		6 7
)		7 8
{

 
public 
int 
IdUser 
{ 
get 
;  
set! $
;$ %
}& '
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
EmailAddress "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
int "
IdStatusOfAvailability )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
} 
public 

static 
partial 
class 

FriendList  *
{ 
private 
static 

Dictionary !
<! "
int" %
,% &)
FriendAvailabilityInformation' D
>D E
friendOfUserListF V
=W X
newY \

Dictionary] g
<g h
inth k
,k l*
FriendAvailabilityInformation	m ä
>
ä ã
(
ã å
)
å ç
;
ç é
public 
static 
void )
RegisterNewFriendInDictionary 8
(8 9
int9 <
idUser= C
,C D)
FriendAvailabilityInformationE b
friendc i
)i j
{ 	
if 
( 
! 
friendOfUserList !
.! "
ContainsKey" -
(- .
idUser. 4
)4 5
)5 6
{ 
friendOfUserList  
.  !
Add! $
($ %
idUser% +
,+ ,
friend- 3
)3 4
;4 5
} 
} 	
public 
static )
FriendAvailabilityInformation 3
	GetFriend4 =
(= >
int> A
idUserB H
)H I
{ 	
foreach 
( 
var 
item 
in  
friendOfUserList! 1
)1 2
{   
if!! 
(!! 
item!! 
.!! 
Key!! 
==!! 
idUser!!  &
)!!& '
{"" 
return## 
item## 
.##  
Value##  %
;##% &
}$$ 
}%% 
return&& 
null&& 
;&& 
}'' 	
public)) 
static)) 
void)) &
RemoveFriendFromDictionary)) 5
())5 6
int))6 9
idUser)): @
)))@ A
{** 	
if++ 
(++ 
friendOfUserList++  
.++  !
ContainsKey++! ,
(++, -
idUser++- 3
)++3 4
)++4 5
{,, 
friendOfUserList--  
.--  !
Remove--! '
(--' (
idUser--( .
)--. /
;--/ 0
}.. 
}// 	
public11 
static11 
void11  
ChangeStatusOfFriend11 /
(11/ 0
int110 3
idUser114 :
,11: ;
int11< ?
idStatus11@ H
)11H I
{22 	
if33 
(33 
friendOfUserList33  
.33  !
ContainsKey33! ,
(33, -
idUser33- 3
)333 4
)334 5
{44 
friendOfUserList55  
[55  !
idUser55! '
]55' (
.55( )"
IdStatusOfAvailability55) ?
=55@ A
idStatus55B J
;55J K
}66 
}77 	
public99 
static99 
void99 
CleanDictionary99 *
(99* +
)99+ ,
{:: 	
friendOfUserList;; 
.;; 
Clear;; "
(;;" #
);;# $
;;;$ %
}<< 	
public>> 
static>> 

Dictionary>>  
<>>  !
int>>! $
,>>$ %)
FriendAvailabilityInformation>>& C
>>>C D 
GetActiveFriendsList>>E Y
(>>Y Z
)>>Z [
{?? 	
return@@ 
friendOfUserList@@ #
;@@# $
}AA 	
}BB 
}CC é
jC:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameClient\Cards\GameCategoryCard.cs
	namespace 	
JeopardyGame
 
. 
Helpers 
{ 
public 

class 
GameCategoryCard "
:# $
Border% +
{ 
private		 
Label		 
lblCategoryName		 %
;		% &
public 
GameCategoryCard 
(  
String  &
category( 0
)0 1
{ 	
SetStyle 
( 
) 
; 
SetLabelStyle 
( 
category "
)" #
;# $
this 
. 
Child 
= 
lblCategoryName (
;( )
} 	
private 
void 
SetStyle 
( 
) 
{ 	
this 
. 
Style 
= 
( 
Style 
)  
FindResource  ,
(, -
$str- J
)J K
;K L
this 
. 
Margin 
= 
new 
	Thickness '
(' (
$num( *
,* +
$num, .
,. /
$num/ 1
,1 2
$num2 4
)4 5
;5 6
} 	
private 
void 
SetLabelStyle "
(" #
string# )
category* 2
)2 3
{ 	
lblCategoryName 
= 
new !
(! "
)" #
;# $
lblCategoryName 
. 
Style !
=" #
($ %
Style% *
)* +
FindResource+ 7
(7 8
$str8 L
)L M
;M N
lblCategoryName 
. 
Content #
=$ %
category& .
;. /
} 	
}   
}!! ˆX
hC:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameClient\Cards\GamePlayerCard.cs
	namespace 	
JeopardyGame
 
. 
Helpers 
{		 
public

 

class

 
GamePlayerCard

 
:

  !
Border

" (
{ 
private 
readonly $
PlayerInGameDataContract 1
playerOfCard2 >
;> ?
private 
	TextBlock 
userName "
;" #
private 
	TextBlock 
points  
;  !
private 
Image 
avatar 
; 
private 
SolidColorBrush 
color  %
;% &
private 
Grid 
grid 
; 
public 
GamePlayerCard 
( $
PlayerInGameDataContract 6
player7 =
)= >
{ 	
playerOfCard 
= 
player !
;! "
this 
. 
Name 
= 
$str 
+ 
player "
." #
IdUser# )
.) *
ToString* 2
(2 3
)3 4
;4 5 
InitializeComponents  
(  !
)! "
;" #
	SetStyles 
( 
) 
; 
grid 
. 
Children 
. 
Add 
( 
userName &
)& '
;' (
grid 
. 
Children 
. 
Add 
( 
points $
)$ %
;% &
grid 
. 
Children 
. 
Add 
( 
avatar $
)$ %
;% &
this 
. 
Child 
= 
grid 
; 
} 	
private 
void 
	SetStyles 
( 
)  
{   	
SetBorderStyle!! 
(!! 
)!! 
;!! 
SetStyleGrid"" 
("" 
)"" 
;"" 
SetStyleUserName## 
(## 
)## 
;## 
SetStylePoints$$ 
($$ 
)$$ 
;$$ 
SetAvatarImage%% 
(%% 
)%% 
;%% 
}&& 	
private(( 
void((  
InitializeComponents(( )
((() *
)((* +
{)) 	
grid** 
=** 
new** 
Grid** 
(** 
)** 
;** 
userName++ 
=++ 
new++ 
	TextBlock++ $
(++$ %
)++% &
;++& '
points,, 
=,, 
new,, 
	TextBlock,, "
(,," #
),,# $
;,,$ %
avatar-- 
=-- 
new-- 
Image-- 
(-- 
)--  
;--  !
switch.. 
(.. 
playerOfCard.. 
...  
TurnOfPlayer..  ,
).., -
{// 
case00 
$num00 
:00 
color11 
=11 
new11 
SolidColorBrush11  /
(11/ 0
Colors110 6
.116 7
Yellow117 =
)11= >
;11> ?
break22 
;22 
case33 
$num33 
:33 
color44 
=44 
new44 
SolidColorBrush44  /
(44/ 0
Colors440 6
.446 7
Green447 <
)44< =
;44= >
break55 
;55 
case66 
$num66 
:66 
color77 
=77 
new77 
SolidColorBrush77  /
(77/ 0
Colors770 6
.776 7
Blue777 ;
)77; <
;77< =
break88 
;88 
case99 
$num99 
:99 
color:: 
=:: 
new:: 
SolidColorBrush::  /
(::/ 0
Colors::0 6
.::6 7
Red::7 :
)::: ;
;::; <
break;; 
;;; 
}<< 
}== 	
private?? 
void?? 
SetBorderStyle?? #
(??# $
)??$ %
{@@ 	
thisAA 
.AA 
MarginAA 
=AA 
newAA 
SystemAA $
.AA$ %
WindowsAA% ,
.AA, -
	ThicknessAA- 6
(AA6 7
$numAA7 8
,AA8 9
$numAA: <
,AA< =
$numAA> ?
,AA? @
$numAAA B
)AAB C
;AAC D
thisBB 
.BB 
HeightBB 
=BB 
$numBB 
;BB 
thisCC 
.CC 
WidthCC 
=CC 
$numCC 
;CC 
thisDD 
.DD 
BorderBrushDD 
=DD 
newDD "
SolidColorBrushDD# 2
(DD2 3
ColorsDD3 9
.DD9 :
	CadetBlueDD: C
)DDC D
;DDD E
thisEE 
.EE 

BackgroundEE 
=EE 
colorEE #
;EE# $
}FF 	
privateHH 
voidHH 
SetStyleGridHH !
(HH! "
)HH" #
{II 	
gridJJ 
.JJ 
MarginJJ 
=JJ 
newJJ 
SystemJJ $
.JJ$ %
WindowsJJ% ,
.JJ, -
	ThicknessJJ- 6
(JJ6 7
$numJJ7 8
)JJ8 9
;JJ9 :
gridKK 
.KK 
HeightKK 
=KK 
$numKK 
;KK 
gridLL 
.LL 
WidthLL 
=LL 
$numLL 
;LL 
}MM 	
privateOO 
voidOO 
SetStyleUserNameOO %
(OO% &
)OO& '
{PP 	
userNameQQ 
.QQ 
MarginQQ 
=QQ 
newQQ !
SystemQQ" (
.QQ( )
WindowsQQ) 0
.QQ0 1
	ThicknessQQ1 :
(QQ: ;
$numQQ; <
,QQ< =
$numQQ= >
,QQ> ?
$numQQ? A
,QQA B
$numQQB D
)QQD E
;QQE F
userNameRR 
.RR 
HeightRR 
=RR 
$numRR  
;RR  !
userNameSS 
.SS 
WidthSS 
=SS 
$numSS  
;SS  !
userNameTT 
.TT 
TextAlignmentTT "
=TT# $
SystemTT% +
.TT+ ,
WindowsTT, 3
.TT3 4
TextAlignmentTT4 A
.TTA B
CenterTTB H
;TTH I
userNameUU 
.UU 
FontSizeUU 
=UU 
$numUU  "
;UU" #
userNameVV 
.VV 

ForegroundVV 
=VV  !
newVV" %
SolidColorBrushVV& 5
(VV5 6
ColorsVV6 <
.VV< =
BlackVV= B
)VVB C
;VVC D
userNameWW 
.WW 
TextWW 
=WW 
playerOfCardWW (
.WW( )
UserNameWW) 1
;WW1 2
}XX 	
privateZZ 
voidZZ 
SetStylePointsZZ #
(ZZ# $
)ZZ$ %
{[[ 	
points\\ 
.\\ 
Margin\\ 
=\\ 
new\\ 
System\\  &
.\\& '
Windows\\' .
.\\. /
	Thickness\\/ 8
(\\8 9
$num\\9 :
,\\: ;
$num\\< >
,\\> ?
$num\\@ B
,\\B C
$num\\D E
)\\E F
;\\F G
points]] 
.]] 
Height]] 
=]] 
$num]] 
;]] 
points^^ 
.^^ 
Width^^ 
=^^ 
$num^^ 
;^^ 
points__ 
.__ 
TextAlignment__  
=__! "
System__# )
.__) *
Windows__* 1
.__1 2
TextAlignment__2 ?
.__? @
Center__@ F
;__F G
points`` 
.`` 
FontSize`` 
=`` 
$num``  
;``  !
pointsaa 
.aa 

Foregroundaa 
=aa 
newaa  #
SolidColorBrushaa$ 3
(aa3 4
Colorsaa4 :
.aa: ;
Whiteaa; @
)aa@ A
;aaA B
pointsbb 
.bb 

Backgroundbb 
=bb 
newbb  #
SolidColorBrushbb$ 3
(bb3 4
Colorsbb4 :
.bb: ;
Blackbb; @
)bb@ A
;bbA B
pointscc 
.cc 
Opacitycc 
=cc 
$numcc  
;cc  !
pointsdd 
.dd 
Textdd 
=dd 
playerOfCarddd &
.dd& ' 
CurrentPointsOfRounddd' ;
.dd; <
ToStringdd< D
(ddD E
)ddE F
;ddF G
}ee 	
privategg 
voidgg 
SetAvatarImagegg #
(gg# $
)gg$ %
{hh 	
avatarii 
.ii 
Sourceii 
=ii 
newii 
BitmapImageii  +
(ii+ ,
newii, /
Uriii0 3
(ii3 4
GetSpecificResourceii4 G
.iiG H
GetAvatarImageiiH V
(iiV W
playerOfCardiiW c
.iic d
IdAvatariid l
)iil m
,iim n
UriKindiio v
.iiv w
Absoluteiiw 
)	ii Ä
)
iiÄ Å
;
iiÅ Ç
avatarjj 
.jj 
Marginjj 
=jj 
newjj 
Systemjj  &
.jj& '
Windowsjj' .
.jj. /
	Thicknessjj/ 8
(jj8 9
$numjj9 <
,jj< =
$numjj= >
,jj> ?
$numjj? @
,jj@ A
$numjjA B
)jjB C
;jjC D
}kk 	
publicmm 
voidmm 
UpdatePointsmm !
(mm! "
intmm" %
nePointsmm& .
)mm. /
{nn 	
pointsoo 
.oo 
Textoo 
=oo 
nePointsoo "
.oo" #
ToStringoo# +
(oo+ ,
)oo, -
;oo- .
}pp 	
publicrr 
voidrr 
MakeBorderSpecialrr %
(rr% &
)rr& '
{ss 	
thistt 
.tt 
BorderThicknesstt  
=tt! "
newtt# &
Systemtt' -
.tt- .
Windowstt. 5
.tt5 6
	Thicknesstt6 ?
(tt? @
$numtt@ A
)ttA B
;ttB C
}uu 	
publicww 
voidww 
MakeBoredNormalww #
(ww# $
)ww$ %
{xx 	
thisyy 
.yy 
BorderThicknessyy  
=yy! "
newyy# &
Systemyy' -
.yy- .
Windowsyy. 5
.yy5 6
	Thicknessyy6 ?
(yy? @
$numyy@ A
)yyA B
;yyB C
}zz 	
public|| 
int|| 
	GetPoints|| 
(|| 
)|| 
{}} 	
return~~ 
int~~ 
.~~ 
Parse~~ 
(~~ 
points~~ #
.~~# $
Text~~$ (
)~~( )
;~~) *
} 	
}
ÅÅ 
}ÇÇ †
hC:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameClient\Cards\GamePointsCard.cs
	namespace 	
JeopardyGame
 
. 
Helpers 
{ 
public		 

class		 
GamePointsCard		 
:		  !
Border		" (
{

 
private 
Label 
	lblPoints 
;  
private 
readonly #
QuestionCardInformation 0#
questionCardInformation1 H
;H I
private 
readonly 
	GameBoard "
board# (
;( )
public 
GamePointsCard 
( #
QuestionCardInformation 5
questionCard6 B
,B C
	GameBoardE N
currentBoardO [
)[ \
{ 	
board 
= 
currentBoard  
;  !#
questionCardInformation #
=$ %
questionCard& 2
;2 3
SetStyle 
( 
) 
; 
SetLabelStyle 
( 
questionCard &
.& '#
SpecificQuestionDetails' >
.> ?

ValueWorth? I
.I J
ToStringJ R
(R S
)S T
)T U
;U V
this 
. 
Child 
= 
	lblPoints "
;" #
this 
. 
Name 
= 
$str 
+ 
questionCard (
.( )#
SpecificQuestionDetails) @
.@ A

IdQuestionA K
.K L
ToStringL T
(T U
)U V
;V W
this 
. 
	MouseDown 
+= '
ClickOnCardToSelectQuestion 9
;9 :
} 	
private 
void 
SetStyle 
( 
) 
{ 	
this 
. 
Style 
= 
( 
Style 
)  
FindResource! -
(- .
$str. C
)C D
;D E
this 
. 
Margin 
= 
new 
	Thickness '
(' (
$num( *
,* +
$num, .
,. /
$num0 2
,2 3
$num4 6
)6 7
;7 8
} 	
private   
void   
SetLabelStyle   "
(  " #
string  # )
pointsValue  * 5
)  5 6
{!! 	
	lblPoints"" 
="" 
new"" 
Label"" !
(""! "
)""" #
;""# $
	lblPoints## 
.## 
Style## 
=## 
(## 
Style## $
)##$ %
FindResource##& 2
(##2 3
$str##3 E
)##E F
;##F G
	lblPoints$$ 
.$$ 
Content$$ 
=$$ 
pointsValue$$  +
;$$+ ,
}%% 	
private'' 
void'' '
ClickOnCardToSelectQuestion'' 0
(''0 1
object''1 7
sender''8 >
,''> ? 
MouseButtonEventArgs''@ T
args''U Y
)''Y Z
{(( 	
board)) 
.)) 
SelectQuestion))  
())  !#
questionCardInformation))! 8
)))8 9
;))9 :
}** 	
public,, #
QuestionCardInformation,, &&
GetQuestionCardInformation,,' A
(,,A B
),,B C
{-- 	
return.. #
questionCardInformation.. *
;..* +
}// 	
}00 
}11 •@
oC:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameClient\Helpers\GetSpecificResource.cs
	namespace 	
JeopardyGame
 
. 
Helpers 
{ 
public 

static 
class 
GetSpecificResource +
{ 
public 
static 
string 
GetHosImage (
(( )
int) ,
idHost- 3
)3 4
{ 	
return 
idHost 
switch  
{ 
$num 
=> 
App 
. 
Current  
.  !
	Resources! *
[* +
$str+ 6
]6 7
.7 8
ToString8 @
(@ A
)A B
,B C
$num 
=> 
App 
. 
Current  
.  !
	Resources! *
[* +
$str+ 4
]4 5
.5 6
ToString6 >
(> ?
)? @
,@ A
$num 
=> 
App 
. 
Current  
.  !
	Resources! *
[* +
$str+ 5
]5 6
.6 7
ToString7 ?
(? @
)@ A
,A B
_ 
=> 
App 
. 
Current  
.  !
	Resources! *
[* +
$str+ 5
]5 6
.6 7
ToString7 ?
(? @
)@ A
,A B
} 
; 
} 	
public 
static 
string 
GetAvatarImage +
(+ ,
int, /
idAvatar0 8
)8 9
{ 	
return 
idAvatar 
switch "
{   
$num!! 
=>!! 
App!! 
.!! 
Current!!  
.!!  !
	Resources!!! *
[!!* +
$str!!+ ;
]!!; <
.!!< =
ToString!!= E
(!!E F
)!!F G
,!!G H
$num"" 
=>"" 
App"" 
."" 
Current""  
.""  !
	Resources""! *
[""* +
$str""+ 6
]""6 7
.""7 8
ToString""8 @
(""@ A
)""A B
,""B C
$num## 
=>## 
App## 
.## 
Current##  
.##  !
	Resources##! *
[##* +
$str##+ 9
]##9 :
.##: ;
ToString##; C
(##C D
)##D E
,##E F
$num$$ 
=>$$ 
App$$ 
.$$ 
Current$$  
.$$  !
	Resources$$! *
[$$* +
$str$$+ 8
]$$8 9
.$$9 :
ToString$$: B
($$B C
)$$C D
,$$D E
$num%% 
=>%% 
App%% 
.%% 
Current%%  
.%%  !
	Resources%%! *
[%%* +
$str%%+ :
]%%: ;
.%%; <
ToString%%< D
(%%D E
)%%E F
,%%F G
$num&& 
=>&& 
App&& 
.&& 
Current&&  
.&&  !
	Resources&&! *
[&&* +
$str&&+ 9
]&&9 :
.&&: ;
ToString&&; C
(&&C D
)&&D E
,&&E F
$num'' 
=>'' 
App'' 
.'' 
Current''  
.''  !
	Resources''! *
[''* +
$str''+ <
]''< =
.''= >
ToString''> F
(''F G
)''G H
,''H I
_(( 
=>(( 
App(( 
.(( 
Current((  
.((  !
	Resources((! *
[((* +
$str((+ 6
]((6 7
.((7 8
ToString((8 @
(((@ A
)((A B
,((B C
})) 
;)) 
}** 	
public.. 
static.. 
int.. 

GetGuestId.. $
(..$ %
)..% &
{// 	
ThreadLocal00 
<00 
Random00 
>00 
generateAleatory00  0
=001 2
new003 6
ThreadLocal007 B
<00B C
Random00C I
>00I J
(00J K
(00K L
)00L M
=>00N P
new00Q T
Random00U [
(00[ \
)00\ ]
)00] ^
;00^ _
return11 
generateAleatory11 #
.11# $
Value11$ )
.11) *
Next11* .
(11. /
$num11/ 5
,115 6
$num117 >
)11> ?
;11? @
}22 	
public44 
static44 
string44 *
GetEnglishOrSpanishDescription44 ;
(44; <
string44< B
englisDescription44C T
,44T U
string44V \
spanishDescription44] o
)44o p
{55 	
if66 
(66 
spanishDescription66 "
is66# %
null66& *
)66* +
{77 
return88 
englisDescription88 (
;88( )
}99 
if:: 
(:: 
englisDescription:: !
is::" $
null::% )
)::) *
{;; 
return<< 
spanishDescription<< )
;<<) *
}== 
bool>> 
	isEnglish>> 
=>> 
App>>  
.>>  !
	IsEnglish>>! *
;>>* +
if?? 
(?? 
	isEnglish?? 
)?? 
{@@ 
returnAA 
englisDescriptionAA (
;AA( )
}BB 
elseCC 
{DD 
returnEE 
spanishDescriptionEE )
;EE) *
}FF 
}GG 	
publicJJ 
staticJJ 
boolJJ 1
%HasAtLeastTwoSeparateUppercaseLettersJJ @
(JJ@ A
stringJJA G
passwordJJH P
)JJP Q
{KK 	
intLL 
uppercaseCountLL 
=LL  
$numLL! "
;LL" #
boolMM 
isPreviousUppercaseMM $
=MM% &
falseMM' ,
;MM, -
foreachOO 
(OO 
charOO 
cOO 
inOO 
passwordOO '
)OO' (
{PP 
ifQQ 
(QQ 
charQQ 
.QQ 
IsUpperQQ  
(QQ  !
cQQ! "
)QQ" #
)QQ# $
{RR 
uppercaseCountSS "
++SS" $
;SS$ %
ifUU 
(UU 
isPreviousUppercaseUU +
)UU+ ,
{VV 
returnWW 
falseWW $
;WW$ %
}XX 
isPreviousUppercaseZZ '
=ZZ( )
trueZZ* .
;ZZ. /
}[[ 
else\\ 
{]] 
isPreviousUppercase^^ '
=^^( )
false^^* /
;^^/ 0
}__ 
}`` 
returnbb 
uppercaseCountbb !
>=bb" $
$numbb% &
;bb& '
}cc 	
}ee 
publicii 

staticii 
classii 0
$GetParentOfGraphicInterfaceComponentii <
{jj 
publickk 
statickk 
Tkk 

FindParentkk "
<kk" #
Tkk# $
>kk$ %
(kk% &
DependencyObjectkk& 6
childkk7 <
)kk< =
wherekk> C
TkkD E
:kkF G
DependencyObjectkkH X
{ll 	
DependencyObjectmm 
parentmm #
=mm$ %
VisualTreeHelpermm& 6
.mm6 7
	GetParentmm7 @
(mm@ A
childmmA F
)mmF G
;mmG H
whilenn 
(nn 
parentnn 
!=nn 
nullnn !
&&nn" $
!nn% &
(nn& '
parentnn' -
isnn. 0
Tnn1 2
)nn2 3
)nn3 4
{oo 
parentpp 
=pp 
VisualTreeHelperpp )
.pp) *
	GetParentpp* 3
(pp3 4
parentpp4 :
)pp: ;
;pp; <
}qq 
returnrr 
(rr 
Trr 
)rr 
parentrr 
;rr 
}ss 	
}uu 
}ww ´ô
lC:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameClient\Pages\ActiveFriends.xaml.cs
	namespace 	
JeopardyGame
 
. 
Pages 
{ 
public   

partial   
class   
ActiveFriends   '
:  ( )
Page  * .
,  . /+
INotifyUserAvailabilityCallback  0 O
{!! 
private"" 
	LobbyPage"" 
	lobbyPage"" #
;""# $
public## 
const## 
int## 
NULL_INT_VALUE## '
=##( )
$num##* +
;##+ ,
private$$ 
Window$$ 
dialogMessage$$ $
;$$$ %
private%% 
const%% 
int%% 
DISALLOWED_VALUES%% +
=%%, -
$num%%. /
;%%/ 0
private&& 
const&& 
int&& 
ALLOWED_VALUES&& (
=&&) *
$num&&+ ,
;&&, -
public(( 
ActiveFriends(( 
((( 
int((  
idUser((! '
)((' (
{)) 	
try** 
{++ 
InitializeComponent,, #
(,,# $
),,$ %
;,,% &
InstanceContext-- 
context--  '
=--( )
new--* -
InstanceContext--. =
(--= >
this--> B
)--B C
;--C D(
NotifyUserAvailabilityClient.. ,!
userAvailabilityProxy..- B
=..C D
new..E H
(..H I
context..I P
)..P Q
;..Q R!
userAvailabilityProxy// %
.//% &0
$SubscribeToAvailabityCallBackChannel//& J
(//J K
idUser//K Q
)//Q R
;//R S
txbSendEmail00 
.00 
	MaxLength00 &
=00' (
$num00) +
;00+ ,
}11 
catch22 
(22 %
EndpointNotFoundException22 ,
ex22- /
)22/ 0
{33 
HandleException44 
(44  
ex44  "
,44" #

Properties44$ .
.44. /
	Resources44/ 8
.448 9
lblEndPointNotFound449 L
)44L M
;44M N
}55 
catch66 
(66 /
#CommunicationObjectFaultedException66 6
ex667 9
)669 :
{77 
HandleException88 
(88  
ex88  "
,88" #

Properties88$ .
.88. /
	Resources88/ 8
.888 9$
lblComunicationException889 Q
)88Q R
;88R S
}99 
catch:: 
(:: 
TimeoutException:: #
ex::$ &
)::& '
{;; 
HandleException<< 
(<<  
ex<<  "
,<<" #

Properties<<$ .
.<<. /
	Resources<</ 8
.<<8 9
lblTimeException<<9 I
)<<I J
;<<J K
}== 
catch>> 
(>> "
CommunicationException>> )
ex>>* ,
)>>, -
{?? 
HandleException@@ 
(@@  
ex@@  "
,@@" #

Properties@@$ .
.@@. /
	Resources@@/ 8
.@@8 9
lblWithoutConection@@9 L
)@@L M
;@@M N
}AA 
catchBB 
(BB 
SocketExceptionBB "
exBB# %
)BB% &
{CC 
HandleExceptionDD 
(DD  
exDD  "
,DD" #

PropertiesDD$ .
.DD. /
	ResourcesDD/ 8
.DD8 9#
lblFailtToEnterTheLobbyDD9 P
)DDP Q
;DDQ R
}EE 
}FF 	
publicHH 
voidHH 
	StartPageHH 
(HH 
	LobbyPageHH '
lobbyHH( -
)HH- .
{II 	
	lobbyPageJJ 
=JJ 
lobbyJJ 
;JJ 
	GetFriendKK 
(KK 
)KK 
;KK 
	SetFriendLL 
(LL 
)LL 
;LL 
}MM 	
publicOO 
voidOO &
RenewFriendCallBackChannelOO .
(OO. /
intOO/ 2
idUserOO3 9
)OO9 :
{PP 	
tryQQ 
{RR 
InstanceContextSS 
contextSS  '
=SS( )
newSS* -
InstanceContextSS. =
(SS= >
thisSS> B
)SSB C
;SSC D(
NotifyUserAvailabilityClientTT ,!
userAvailabilityProxyTT- B
=TTC D
newTTE H
(TTH I
contextTTI P
)TTP Q
;TTQ R!
userAvailabilityProxyUU %
.UU% &)
RenewNotifyAvailabityCallBackUU& C
(UUC D
idUserUUD J
)UUJ K
;UUK L
}VV 
catchWW 
(WW %
EndpointNotFoundExceptionWW ,
exWW- /
)WW/ 0
{XX 
HandleExceptionYY 
(YY  
exYY  "
,YY" #

PropertiesYY$ .
.YY. /
	ResourcesYY/ 8
.YY8 9
lblEndPointNotFoundYY9 L
)YYL M
;YYM N
}ZZ 
catch[[ 
([[ /
#CommunicationObjectFaultedException[[ 6
ex[[7 9
)[[9 :
{\\ 
HandleException]] 
(]]  
ex]]  "
,]]" #

Properties]]$ .
.]]. /
	Resources]]/ 8
.]]8 9$
lblComunicationException]]9 Q
)]]Q R
;]]R S
}^^ 
catch__ 
(__ 
TimeoutException__ #
ex__$ &
)__& '
{`` 
HandleExceptionaa 
(aa  
exaa  "
,aa" #

Propertiesaa$ .
.aa. /
	Resourcesaa/ 8
.aa8 9
lblTimeExceptionaa9 I
)aaI J
;aaJ K
}bb 
catchcc 
(cc "
CommunicationExceptioncc )
excc* ,
)cc, -
{dd 
HandleExceptionee 
(ee  
exee  "
,ee" #

Propertiesee$ .
.ee. /
	Resourcesee/ 8
.ee8 9
lblWithoutConectionee9 L
)eeL M
;eeM N
}ff 
catchgg 
(gg 
SocketExceptiongg "
exgg# %
)gg% &
{hh 
HandleExceptionii 
(ii  
exii  "
,ii" #

Propertiesii$ .
.ii. /
	Resourcesii/ 8
.ii8 9#
lblFailtToEnterTheLobbyii9 P
+iiQ R
$striiS X
+iiY Z

Propertiesii[ e
.iie f
	Resourcesiif o
.iio p 
lblEndPointNotFound	iip É
)
iiÉ Ñ
;
iiÑ Ö
}jj 
}kk 	
privatemm 
voidmm !
ClickCloseListFriendsmm *
(mm* +
objectmm+ 1
sendermm2 8
,mm8 9 
MouseButtonEventArgsmm: N
emmO P
)mmP Q
{nn 	
	lobbyPageoo 
.oo )
CloseSubFrameOfChatAndFriendsoo 3
(oo3 4
)oo4 5
;oo5 6
}pp 	
privaterr 
voidrr 
	GetFriendrr 
(rr 
)rr  
{ss 	
trytt 
{tt 
UserSingletonuu 
mainCurrentUseruu -
=uu. /
UserSingletonuu0 =
.uu= >
GetMainUseruu> I
(uuI J
)uuJ K
;uuK L(
ConsultUserInformationClientvv ,#
consultInformationProxyvv- D
=vvE F
newvvG J(
ConsultUserInformationClientvvK g
(vvg h
)vvh i
;vvi j
varww 
userww 
=ww #
consultInformationProxyww 2
.ww2 3
ConsultUserByIdww3 B
(wwB C
mainCurrentUserwwC R
.wwR S
IdUserwwS Y
)wwY Z
;wwZ [ 
ConsultFriendsClientxx $
friendManagerProxyxx% 7
=xx8 9
newxx: = 
ConsultFriendsClientxx> R
(xxR S
)xxS T
;xxT U
varyy 
friendsyy 
=yy 
friendManagerProxyyy 0
.yy0 1
GetUserFriendsyy1 ?
(yy? @
useryy@ D
.yyD E
ObjectSavedyyE P
)yyP Q
;yyQ R
ifzz 
(zz 
friendszz 
.zz 
	CodeEventzz %
==zz& (
ExceptionDictionaryzz) <
.zz< =
SUCCESFULL_EVENTzz= M
)zzM N
{{{ 
foreach|| 
(|| 
var||  
item||! %
in||& (
friends||) 0
.||0 1
ObjectSaved||1 <
)||< =
{}} )
FriendAvailabilityInformation~~ 5
activeFriendProxy~~6 G
=~~H I
new~~J M)
FriendAvailabilityInformation~~N k
(~~k l
)~~l m
;~~m n
activeFriendProxy )
.) *
IdUser* 0
=1 2
item3 7
.7 8
IdUser8 >
;> ?
activeFriendProxy
ÄÄ )
.
ÄÄ) *
Name
ÄÄ* .
=
ÄÄ/ 0
item
ÄÄ1 5
.
ÄÄ5 6
UserName
ÄÄ6 >
;
ÄÄ> ?
activeFriendProxy
ÅÅ )
.
ÅÅ) *
EmailAddress
ÅÅ* 6
=
ÅÅ7 8
item
ÅÅ9 =
.
ÅÅ= >
EmailAddress
ÅÅ> J
;
ÅÅJ K
activeFriendProxy
ÇÇ )
.
ÇÇ) *$
IdStatusOfAvailability
ÇÇ* @
=
ÇÇA B
item
ÇÇC G
.
ÇÇG H"
IdStatusAvailability
ÇÇH \
;
ÇÇ\ ]

FriendList
ÉÉ "
.
ÉÉ" #+
RegisterNewFriendInDictionary
ÉÉ# @
(
ÉÉ@ A
item
ÉÉA E
.
ÉÉE F
IdUser
ÉÉF L
,
ÉÉL M
activeFriendProxy
ÉÉN _
)
ÉÉ_ `
;
ÉÉ` a
}
ÑÑ 
}
ÖÖ 
else
ÜÜ 
{
áá 
dialogMessage
àà !
=
àà" #
new
àà$ '&
ErrorMessageDialogWindow
àà( @
(
àà@ A

Properties
ààA K
.
ààK L
	Resources
ààL U
.
ààU V
txbWarningTitle
ààV e
,
ààe f

Properties
ààg q
.
ààq r
	Resources
ààr {
.
àà{ | 
lblWithoutFriendsàà| ç
,ààç é
Applicationààè ö
.ààö õ
Currentààõ ¢
.àà¢ £

MainWindowàà£ ≠
)àà≠ Æ
;ààÆ Ø
}
ââ  
friendManagerProxy
ää "
.
ää" #
Close
ää# (
(
ää( )
)
ää) *
;
ää* +%
consultInformationProxy
ãã '
.
ãã' (
Close
ãã( -
(
ãã- .
)
ãã. /
;
ãã/ 0
}
åå 
catch
çç 
(
çç '
EndpointNotFoundException
çç ,
ex
çç- /
)
çç/ 0
{
éé 
HandleException
èè 
(
èè  
ex
èè  "
,
èè" #

Properties
èè$ .
.
èè. /
	Resources
èè/ 8
.
èè8 9!
lblEndPointNotFound
èè9 L
)
èèL M
;
èèM N
}
êê 
catch
ëë 
(
ëë 1
#CommunicationObjectFaultedException
ëë 6
ex
ëë7 9
)
ëë9 :
{
íí 
HandleException
ìì 
(
ìì  
ex
ìì  "
,
ìì" #

Properties
ìì$ .
.
ìì. /
	Resources
ìì/ 8
.
ìì8 9&
lblComunicationException
ìì9 Q
)
ììQ R
;
ììR S
}
îî 
catch
ïï 
(
ïï 
TimeoutException
ïï #
ex
ïï$ &
)
ïï& '
{
ññ 
HandleException
óó 
(
óó  
ex
óó  "
,
óó" #

Properties
óó$ .
.
óó. /
	Resources
óó/ 8
.
óó8 9
lblTimeException
óó9 I
)
óóI J
;
óóJ K
}
òò 
catch
ôô 
(
ôô $
CommunicationException
ôô )
ex
ôô* ,
)
ôô, -
{
öö 
HandleException
õõ 
(
õõ  
ex
õõ  "
,
õõ" #

Properties
õõ$ .
.
õõ. /
	Resources
õõ/ 8
.
õõ8 9!
lblWithoutConection
õõ9 L
)
õõL M
;
õõM N
}
úú 
catch
ùù 
(
ùù 
SocketException
ùù "
ex
ùù# %
)
ùù% &
{
ûû 
HandleException
üü 
(
üü  
ex
üü  "
,
üü" #

Properties
üü$ .
.
üü. /
	Resources
üü/ 8
.
üü8 9%
lblFailtToEnterTheLobby
üü9 P
)
üüP Q
;
üüQ R
}
†† 
}
°° 	
private
££ 
void
££ 
	SetFriend
££ 
(
££ 
)
££  
{
§§ 	
stcFriendList
•• 
.
•• 
Children
•• "
.
••" #
Clear
••# (
(
••( )
)
••) *
;
••* +
stcFriendList
¶¶ 
.
¶¶ 
Orientation
¶¶ %
=
¶¶& '
Orientation
¶¶( 3
.
¶¶3 4
Vertical
¶¶4 <
;
¶¶< =
int
ßß 
roomCode
ßß 
=
ßß 
GameCodeContainer
ßß ,
.
ßß, -
RoomCode
ßß- 5
;
ßß5 6

Dictionary
®® 
<
®® 
int
®® 
,
®® +
FriendAvailabilityInformation
®® 9
>
®®9 :

friendList
®®; E
=
®®F G

FriendList
®®H R
.
®®R S"
GetActiveFriendsList
®®S g
(
®®g h
)
®®h i
;
®®i j
if
©© 
(
©© 

friendList
©© 
!=
©© 
null
©© "
)
©©" #
{
™™ 
foreach
´´ 
(
´´ 
var
´´ 
item
´´ !
in
´´" $

friendList
´´% /
)
´´/ 0
{
¨¨ 

FriendCard
≠≠ 

friendCard
≠≠ )
=
≠≠* +
new
≠≠, /

FriendCard
≠≠0 :
(
≠≠: ;
item
≠≠; ?
.
≠≠? @
Value
≠≠@ E
.
≠≠E F
Name
≠≠F J
,
≠≠J K
item
≠≠L P
.
≠≠P Q
Value
≠≠Q V
.
≠≠V W$
IdStatusOfAvailability
≠≠W m
,
≠≠m n

Properties
≠≠o y
.
≠≠y z
	Resources≠≠z É
.≠≠É Ñ
	bttInvite≠≠Ñ ç
)≠≠ç é
;≠≠é è

friendCard
ÆÆ 
.
ÆÆ !
InviteButtonClicked
ÆÆ 2
+=
ÆÆ3 5
(
ÆÆ6 7
sender
ÆÆ7 =
,
ÆÆ= >
e
ÆÆ? @
)
ÆÆ@ A
=>
ÆÆB D
{
ØØ 
string
∞∞ 
friendEmail
∞∞ *
=
∞∞+ ,
item
∞∞- 1
.
∞∞1 2
Value
∞∞2 7
.
∞∞7 8
EmailAddress
∞∞8 D
;
∞∞D E
string
±± 
subject
±± &
=
±±' (

Properties
±±) 3
.
±±3 4
	Resources
±±4 =
.
±±= >%
txbTitleEmailInvitation
±±> U
;
±±U V
string
≤≤ 
body
≤≤ #
=
≤≤$ %

Properties
≤≤& 0
.
≤≤0 1
	Resources
≤≤1 :
.
≤≤: ;
tbxBodyInvitation
≤≤; L
+
≤≤M N
$str
≤≤O R
+
≤≤R S
$"
≤≤T V
{
≤≤V W
roomCode
≤≤W _
}
≤≤_ `
"
≤≤` a
;
≤≤a b*
SendEmailForInvitationToGame
≥≥ 4
(
≥≥4 5
friendEmail
≥≥5 @
,
≥≥@ A
subject
≥≥B I
,
≥≥I J
body
≥≥K O
)
≥≥O P
;
≥≥P Q
dialogMessage
¥¥ %
=
¥¥& '
new
¥¥( +,
InformationMessageDialogWindow
¥¥, J
(
¥¥J K

Properties
¥¥K U
.
¥¥U V
	Resources
¥¥V _
.
¥¥_ `
tbxEmailSend
¥¥` l
,
¥¥l m

Properties
¥¥n x
.
¥¥x y
	Resources¥¥y Ç
.¥¥Ç É 
txbInfoEmailSend¥¥É ì
,¥¥ì î
Application¥¥ï †
.¥¥† °
Current¥¥° ®
.¥¥® ©

MainWindow¥¥© ≥
)¥¥≥ ¥
;¥¥¥ µ
}
µµ 
;
µµ 
stcFriendList
∂∂ !
.
∂∂! "
Children
∂∂" *
.
∂∂* +
Add
∂∂+ .
(
∂∂. /

friendCard
∂∂/ 9
)
∂∂9 :
;
∂∂: ;
}
∑∑ 
}
∏∏ 
}
ππ 	
public
ªª 
void
ªª *
ResponseOfPlayerAvailability
ªª 0
(
ªª0 1
int
ªª1 4
status
ªª5 ;
,
ªª; <
int
ªª= @
idFriend
ªªA I
)
ªªI J
{
ºº 	

Dictionary
ΩΩ 
<
ΩΩ 
int
ΩΩ 
,
ΩΩ +
FriendAvailabilityInformation
ΩΩ 9
>
ΩΩ9 :

friendList
ΩΩ; E
=
ΩΩF G

FriendList
ΩΩH R
.
ΩΩR S"
GetActiveFriendsList
ΩΩS g
(
ΩΩg h
)
ΩΩh i
;
ΩΩi j
if
ææ 
(
ææ 

friendList
ææ 
.
ææ 
ContainsKey
ææ &
(
ææ& '
idFriend
ææ' /
)
ææ/ 0
)
ææ0 1
{
øø 

FriendList
¿¿ 
.
¿¿ "
ChangeStatusOfFriend
¿¿ /
(
¿¿/ 0
idFriend
¿¿0 8
,
¿¿8 9
status
¿¿: @
)
¿¿@ A
;
¿¿A B
}
¡¡ 
if
¬¬ 
(
¬¬ 

Dispatcher
¬¬ 
.
¬¬ 
CheckAccess
¬¬ &
(
¬¬& '
)
¬¬' (
)
¬¬( )
{
√√ 
	SetFriend
ƒƒ 
(
ƒƒ 
)
ƒƒ 
;
ƒƒ 
}
≈≈ 
else
∆∆ 
{
«« 

Dispatcher
»» 
.
»» 
Invoke
»» !
(
»»! "
(
»»" #
)
»»# $
=>
»»% '
	SetFriend
»»( 1
(
»»1 2
)
»»2 3
)
»»3 4
;
»»4 5
}
…… 
}
   	
private
ÃÃ 
void
ÃÃ *
SendEmailForInvitationToGame
ÃÃ 1
(
ÃÃ1 2
string
ÃÃ2 8
email
ÃÃ9 >
,
ÃÃ> ?
string
ÃÃ@ F
subject
ÃÃG N
,
ÃÃN O
string
ÃÃP V
body
ÃÃW [
)
ÃÃ[ \
{
ÕÕ 	&
EmailSenderManagerClient
ŒŒ $
emailSenderProxy
ŒŒ% 5
=
ŒŒ6 7
new
ŒŒ8 ;&
EmailSenderManagerClient
ŒŒ< T
(
ŒŒT U
)
ŒŒU V
;
ŒŒV W
UserSingleton
œœ 
userSingleton
œœ '
=
œœ( )
UserSingleton
œœ* 7
.
œœ7 8
GetMainUser
œœ8 C
(
œœC D
)
œœD E
;
œœE F
UserPojo
–– 
user
–– 
=
–– 
new
–– 
UserPojo
––  (
(
––( )
)
––) *
{
—— 
IdUser
““ 
=
““ 
userSingleton
““ &
.
““& '
IdUser
““' -
,
““- .
UserName
”” 
=
”” 
userSingleton
”” (
.
””( )
UserName
””) 1
,
””1 2
EmailAddress
‘‘ 
=
‘‘ 
email
‘‘ $
,
‘‘$ %
}
’’ 
;
’’ 
try
÷÷ 
{
◊◊ 
GenericClassOfint
ÿÿ !
sentEmailResult
ÿÿ" 1
=
ÿÿ2 3
emailSenderProxy
ÿÿ4 D
.
ÿÿD E%
SentEmailInvitingToGame
ÿÿE \
(
ÿÿ\ ]
user
ÿÿ] a
,
ÿÿa b
subject
ÿÿc j
,
ÿÿj k
body
ÿÿl p
)
ÿÿp q
;
ÿÿq r
if
ŸŸ 
(
ŸŸ 
sentEmailResult
ŸŸ #
.
ŸŸ# $
	CodeEvent
ŸŸ$ -
==
ŸŸ. 0!
ExceptionDictionary
ŸŸ1 D
.
ŸŸD E
SUCCESFULL_EVENT
ŸŸE U
)
ŸŸU V
{
⁄⁄ 
dialogMessage
€€ !
=
€€" #
new
€€$ ',
InformationMessageDialogWindow
€€( F
(
€€F G

Properties
€€G Q
.
€€Q R
	Resources
€€R [
.
€€[ \
tbxEmailSend
€€\ h
,
€€h i

Properties
€€j t
.
€€t u
	Resources
€€u ~
.
€€~ 
txbInfoEmailSend€€ è
,€€è ê
Application€€ë ú
.€€ú ù
Current€€ù §
.€€§ •

MainWindow€€• Ø
)€€Ø ∞
;€€∞ ±
}
‹‹ 
else
›› 
{
ﬁﬁ 
if
ﬂﬂ 
(
ﬂﬂ 
sentEmailResult
ﬂﬂ '
.
ﬂﬂ' (
ObjectSaved
ﬂﬂ( 3
==
ﬂﬂ4 6
NULL_INT_VALUE
ﬂﬂ7 E
)
ﬂﬂE F
{
‡‡ 
dialogMessage
·· %
=
··& '
new
··( +&
ErrorMessageDialogWindow
··, D
(
··D E

Properties
··E O
.
··O P
	Resources
··P Y
.
··Y Z
txbErrorTitle
··Z g
,
··g h

Properties
··i s
.
··s t
	Resources
··t }
.
··} ~
SentEmailIssue··~ å
,··å ç
Application··é ô
.··ô ö
Current··ö °
.··° ¢

MainWindow··¢ ¨
)··¨ ≠
;··≠ Æ
}
„„ 
}
‰‰ 
}
ÊÊ 
catch
ÁÁ 
(
ÁÁ '
EndpointNotFoundException
ÁÁ ,
ex
ÁÁ- /
)
ÁÁ/ 0
{
ËË 
HandleException
ÈÈ 
(
ÈÈ  
ex
ÈÈ  "
,
ÈÈ" #

Properties
ÈÈ$ .
.
ÈÈ. /
	Resources
ÈÈ/ 8
.
ÈÈ8 9!
lblEndPointNotFound
ÈÈ9 L
)
ÈÈL M
;
ÈÈM N
}
ÍÍ 
catch
ÎÎ 
(
ÎÎ 1
#CommunicationObjectFaultedException
ÎÎ 6
ex
ÎÎ7 9
)
ÎÎ9 :
{
ÏÏ 
HandleException
ÌÌ 
(
ÌÌ  
ex
ÌÌ  "
,
ÌÌ" #

Properties
ÌÌ$ .
.
ÌÌ. /
	Resources
ÌÌ/ 8
.
ÌÌ8 9&
lblComunicationException
ÌÌ9 Q
)
ÌÌQ R
;
ÌÌR S
}
ÓÓ 
catch
ÔÔ 
(
ÔÔ 
TimeoutException
ÔÔ #
ex
ÔÔ$ &
)
ÔÔ& '
{
 
HandleException
ÒÒ 
(
ÒÒ  
ex
ÒÒ  "
,
ÒÒ" #

Properties
ÒÒ$ .
.
ÒÒ. /
	Resources
ÒÒ/ 8
.
ÒÒ8 9
lblTimeException
ÒÒ9 I
)
ÒÒI J
;
ÒÒJ K
}
ÚÚ 
catch
ÛÛ 
(
ÛÛ $
CommunicationException
ÛÛ )
ex
ÛÛ* ,
)
ÛÛ, -
{
ÙÙ 
HandleException
ıı 
(
ıı  
ex
ıı  "
,
ıı" #

Properties
ıı$ .
.
ıı. /
	Resources
ıı/ 8
.
ıı8 9!
lblWithoutConection
ıı9 L
)
ııL M
;
ııM N
}
ˆˆ 
catch
˜˜ 
(
˜˜ 
SocketException
˜˜ "
ex
˜˜# %
)
˜˜% &
{
¯¯ 
HandleException
˘˘ 
(
˘˘  
ex
˘˘  "
,
˘˘" #

Properties
˘˘$ .
.
˘˘. /
	Resources
˘˘/ 8
.
˘˘8 9%
lblFailtToEnterTheLobby
˘˘9 P
)
˘˘P Q
;
˘˘Q R
}
˙˙ 
}
˚˚ 	
private
˝˝ 
void
˝˝ 
HandleException
˝˝ $
(
˝˝$ %
	Exception
˝˝% .
ex
˝˝/ 1
,
˝˝1 2
string
˝˝3 9
errorMessage
˝˝: F
)
˝˝F G
{
˛˛ 	%
ExceptionHandlerForLogs
ˇˇ #
.
ˇˇ# $
LogException
ˇˇ$ 0
(
ˇˇ0 1
ex
ˇˇ1 3
,
ˇˇ3 4!
ExceptionDictionary
ˇˇ5 H
.
ˇˇH I
FATAL_EXCEPTION
ˇˇI X
)
ˇˇX Y
;
ˇˇY Z
dialogMessage
ÄÄ 
=
ÄÄ 
new
ÄÄ &
ErrorMessageDialogWindow
ÄÄ  8
(
ÄÄ8 9

Properties
ÄÄ9 C
.
ÄÄC D
	Resources
ÄÄD M
.
ÄÄM N
txbErrorTitle
ÄÄN [
,
ÄÄ[ \
errorMessage
ÄÄ] i
,
ÄÄi j
Application
ÄÄk v
.
ÄÄv w
Current
ÄÄw ~
.
ÄÄ~ 

MainWindowÄÄ â
)ÄÄâ ä
;ÄÄä ã
}
ÅÅ 	
private
ÉÉ 
void
ÉÉ )
ClickSendEmailForInvitation
ÉÉ 0
(
ÉÉ0 1
object
ÉÉ1 7
sender
ÉÉ8 >
,
ÉÉ> ?"
MouseButtonEventArgs
ÉÉ@ T
e
ÉÉU V
)
ÉÉV W
{
ÑÑ 	
string
ÖÖ 
email
ÖÖ 
=
ÖÖ 
txbSendEmail
ÖÖ '
.
ÖÖ' (
Text
ÖÖ( ,
;
ÖÖ, -
int
ÜÜ 
roomCode
ÜÜ 
=
ÜÜ 
GameCodeContainer
ÜÜ ,
.
ÜÜ, -
RoomCode
ÜÜ- 5
;
ÜÜ5 6
string
áá 
subject
áá 
=
áá 

Properties
áá '
.
áá' (
	Resources
áá( 1
.
áá1 2%
txbTitleEmailInvitation
áá2 I
;
ááI J
string
àà 
bodyWithCode
àà 
=
àà  !

Properties
àà" ,
.
àà, -
	Resources
àà- 6
.
àà6 7
tbxBodyInvitation
àà7 H
+
ààI J
$str
ààK N
+
ààO P
$"
ààQ S
{
ààS T
roomCode
ààT \
}
àà\ ]
"
àà] ^
;
àà^ _
txbSendEmail
ââ 
.
ââ 
Text
ââ 
=
ââ 
string
ââ  &
.
ââ& '
Empty
ââ' ,
;
ââ, -
if
ãã 
(
ãã 
string
ãã 
.
ãã 
IsNullOrEmpty
ãã $
(
ãã$ %
email
ãã% *
)
ãã* +
)
ãã+ ,
{
åå 
LblWrongEmail
çç 
.
çç 
Content
çç %
=
çç& '

Properties
çç( 2
.
çç2 3
	Resources
çç3 <
.
çç< =
lblWrongEmail
çç= J
;
ççJ K
LblWrongEmail
éé 
.
éé 

Visibility
éé (
=
éé) *

Visibility
éé+ 5
.
éé5 6
Visible
éé6 =
;
éé= >
return
èè 
;
èè 
}
êê 
if
ëë 
(
ëë 
!
ëë 
IsValidEmail
ëë 
(
ëë 
email
ëë #
)
ëë# $
)
ëë$ %
{
íí 
LblWrongEmail
ìì 
.
ìì 
Content
ìì %
=
ìì& '

Properties
ìì( 2
.
ìì2 3
	Resources
ìì3 <
.
ìì< =
lblWrongFormat
ìì= K
;
ììK L
LblWrongEmail
îî 
.
îî 

Visibility
îî (
=
îî) *

Visibility
îî+ 5
.
îî5 6
Visible
îî6 =
;
îî= >
return
ïï 
;
ïï 
}
ññ 
if
òò 
(
òò !
CheckEmailExistence
òò #
(
òò# $
email
òò$ )
)
òò) *
==
òò+ -
DISALLOWED_VALUES
òò. ?
)
òò? @
{
ôô 
LblWrongEmail
öö 
.
öö 
Content
öö %
=
öö& '

Properties
öö( 2
.
öö2 3
	Resources
öö3 <
.
öö< =
lblEmailExistInBD
öö= N
;
ööN O
LblWrongEmail
õõ 
.
õõ 

Visibility
õõ (
=
õõ) *

Visibility
õõ+ 5
.
õõ5 6
Visible
õõ6 =
;
õõ= >
return
úú 
;
úú 
}
ùù 
LblWrongEmail
ûû 
.
ûû 

Visibility
ûû $
=
ûû% &

Visibility
ûû' 1
.
ûû1 2
	Collapsed
ûû2 ;
;
ûû; <&
EmailSenderManagerClient
†† $
emailSenderProxy
††% 5
=
††6 7
new
††8 ;&
EmailSenderManagerClient
††< T
(
††T U
)
††U V
;
††V W
try
¢¢ 
{
££ 
GenericClassOfint
•• !
sentEmailResult
••" 1
=
••2 3
emailSenderProxy
••4 D
.
••D E$
SentEmailForInvitation
••E [
(
••[ \
email
••\ a
,
••a b
subject
••c j
,
••j k
bodyWithCode
••l x
)
••x y
;
••y z
if
ßß 
(
ßß 
sentEmailResult
ßß #
.
ßß# $
	CodeEvent
ßß$ -
==
ßß. 0!
ExceptionDictionary
ßß1 D
.
ßßD E
SUCCESFULL_EVENT
ßßE U
)
ßßU V
{
®® 
dialogMessage
©© !
=
©©" #
new
©©$ ',
InformationMessageDialogWindow
©©( F
(
©©F G

Properties
©©G Q
.
©©Q R
	Resources
©©R [
.
©©[ \
tbxEmailSend
©©\ h
,
©©h i

Properties
©©j t
.
©©t u
	Resources
©©u ~
.
©©~ 
txbInfoEmailSend©© è
,©©è ê
Application©©ë ú
.©©ú ù
Current©©ù §
.©©§ •

MainWindow©©• Ø
)©©Ø ∞
;©©∞ ±
}
™™ 
else
´´ 
{
¨¨ 
if
≠≠ 
(
≠≠ 
sentEmailResult
≠≠ '
.
≠≠' (
ObjectSaved
≠≠( 3
==
≠≠4 6
NULL_INT_VALUE
≠≠7 E
)
≠≠E F
{
ÆÆ 
dialogMessage
ØØ %
=
ØØ& '
new
ØØ( +&
ErrorMessageDialogWindow
ØØ, D
(
ØØD E

Properties
ØØE O
.
ØØO P
	Resources
ØØP Y
.
ØØY Z
txbErrorTitle
ØØZ g
,
ØØg h

Properties
ØØi s
.
ØØs t
	Resources
ØØt }
.
ØØ} ~
SentEmailIssueØØ~ å
,ØØå ç
ApplicationØØé ô
.ØØô ö
CurrentØØö °
.ØØ° ¢

MainWindowØØ¢ ¨
)ØØ¨ ≠
;ØØ≠ Æ
}
∞∞ 
}
±± 
}
≤≤ 
catch
≥≥ 
(
≥≥ '
EndpointNotFoundException
≥≥ ,
ex
≥≥- /
)
≥≥/ 0
{
¥¥ 
HandleException
µµ 
(
µµ  
ex
µµ  "
,
µµ" #

Properties
µµ$ .
.
µµ. /
	Resources
µµ/ 8
.
µµ8 9!
lblEndPointNotFound
µµ9 L
)
µµL M
;
µµM N
}
∂∂ 
catch
∑∑ 
(
∑∑ 1
#CommunicationObjectFaultedException
∑∑ 6
ex
∑∑7 9
)
∑∑9 :
{
∏∏ 
HandleException
ππ 
(
ππ  
ex
ππ  "
,
ππ" #

Properties
ππ$ .
.
ππ. /
	Resources
ππ/ 8
.
ππ8 9&
lblComunicationException
ππ9 Q
)
ππQ R
;
ππR S
}
∫∫ 
catch
ªª 
(
ªª 
TimeoutException
ªª #
ex
ªª$ &
)
ªª& '
{
ºº 
HandleException
ΩΩ 
(
ΩΩ  
ex
ΩΩ  "
,
ΩΩ" #

Properties
ΩΩ$ .
.
ΩΩ. /
	Resources
ΩΩ/ 8
.
ΩΩ8 9
lblTimeException
ΩΩ9 I
)
ΩΩI J
;
ΩΩJ K
}
ææ 
catch
øø 
(
øø $
CommunicationException
øø )
ex
øø* ,
)
øø, -
{
¿¿ 
HandleException
¡¡ 
(
¡¡  
ex
¡¡  "
,
¡¡" #

Properties
¡¡$ .
.
¡¡. /
	Resources
¡¡/ 8
.
¡¡8 9!
lblWithoutConection
¡¡9 L
)
¡¡L M
;
¡¡M N
}
¬¬ 
catch
√√ 
(
√√ 
SocketException
√√ "
ex
√√# %
)
√√% &
{
ƒƒ 
HandleException
≈≈ 
(
≈≈  
ex
≈≈  "
,
≈≈" #

Properties
≈≈$ .
.
≈≈. /
	Resources
≈≈/ 8
.
≈≈8 9%
lblFailtToEnterTheLobby
≈≈9 P
)
≈≈P Q
;
≈≈Q R
}
∆∆ 
}
«« 	
private
»» 
bool
»» 
IsValidEmail
»» !
(
»»! "
string
»»" (
email
»») .
)
»». /
{
…… 	
try
   
{
ÀÀ '
RegularExpressionsLibrary
ÃÃ )
regexInstance
ÃÃ* 7
=
ÃÃ8 9
new
ÃÃ: ='
RegularExpressionsLibrary
ÃÃ> W
(
ÃÃW X
)
ÃÃX Y
;
ÃÃY Z
Regex
ÕÕ 
regexExpression
ÕÕ %
=
ÕÕ& '
new
ÕÕ( +
Regex
ÕÕ, 1
(
ÕÕ1 2
regexInstance
ÕÕ2 ?
.
ÕÕ? @!
GetEMAIL_RULES_CHAR
ÕÕ@ S
(
ÕÕS T
)
ÕÕT U
)
ÕÕU V
;
ÕÕV W
return
ŒŒ 
Regex
ŒŒ 
.
ŒŒ 
IsMatch
ŒŒ $
(
ŒŒ$ %
email
ŒŒ% *
,
ŒŒ* +
regexExpression
ŒŒ, ;
.
ŒŒ; <
ToString
ŒŒ< D
(
ŒŒD E
)
ŒŒE F
,
ŒŒF G
RegexOptions
ŒŒH T
.
ŒŒT U

IgnoreCase
ŒŒU _
,
ŒŒ_ `
TimeSpan
ŒŒa i
.
ŒŒi j
FromMilliseconds
ŒŒj z
(
ŒŒz {
$num
ŒŒ{ ~
)
ŒŒ~ 
)ŒŒ Ä
;ŒŒÄ Å
}
œœ 
catch
–– 
(
–– (
RegexMatchTimeoutException
–– -
ex
––. 0
)
––0 1
{
—— %
ExceptionHandlerForLogs
““ '
.
““' (
LogException
““( 4
(
““4 5
ex
““5 7
,
““7 8!
ExceptionDictionary
““9 L
.
““L M
ERROR
““M R
)
““R S
;
““S T
return
”” 
false
”” 
;
”” 
}
‘‘ 
}
’’ 	
private
÷÷ 
int
÷÷ !
CheckEmailExistence
÷÷ '
(
÷÷' (
string
÷÷( .
email
÷÷/ 4
)
÷÷4 5
{
◊◊ 	
try
ÿÿ 
{
ŸŸ )
ValidateUserExistanceClient
⁄⁄ +
dataCheckerProxy
⁄⁄, <
=
⁄⁄= >
new
⁄⁄? B
(
⁄⁄B C
)
⁄⁄C D
;
⁄⁄D E
GenericClassOfint
€€ !
	userIsNew
€€" +
=
€€, -
dataCheckerProxy
€€. >
.
€€> ?
EmailAlreadyExist
€€? P
(
€€P Q
email
€€Q V
)
€€V W
;
€€W X
dataCheckerProxy
‹‹  
.
‹‹  !
Close
‹‹! &
(
‹‹& '
)
‹‹' (
;
‹‹( )
if
›› 
(
›› 
	userIsNew
›› 
.
›› 
	CodeEvent
›› '
==
››( *!
ExceptionDictionary
››+ >
.
››> ?
SUCCESFULL_EVENT
››? O
||
››P R
	userIsNew
››S \
.
››\ ]
	CodeEvent
››] f
==
››g i!
ExceptionDictionary
››j }
.
››} ~!
UNSUCCESFULL_EVENT››~ ê
)››ê ë
{
ﬁﬁ 
if
ﬂﬂ 
(
ﬂﬂ 
	userIsNew
ﬂﬂ !
.
ﬂﬂ! "
ObjectSaved
ﬂﬂ" -
==
ﬂﬂ. 0
ALLOWED_VALUES
ﬂﬂ1 ?
)
ﬂﬂ? @
{
‡‡ 
return
·· 
ALLOWED_VALUES
·· -
;
··- .
}
‚‚ 
else
„„ 
{
‰‰ 
return
ÂÂ 
DISALLOWED_VALUES
ÂÂ 0
;
ÂÂ0 1
}
ÊÊ 
}
ÁÁ 
else
ËË 
{
ÈÈ 
return
ÍÍ 
DISALLOWED_VALUES
ÍÍ ,
;
ÍÍ, -
}
ÎÎ 
}
ÏÏ 
catch
ÌÌ 
(
ÌÌ '
EndpointNotFoundException
ÌÌ ,
)
ÌÌ, -
{
ÓÓ 
throw
ÔÔ 
new
ÔÔ '
EndpointNotFoundException
ÔÔ 3
(
ÔÔ3 4
)
ÔÔ4 5
;
ÔÔ5 6
}
 
catch
ÒÒ 
(
ÒÒ 1
#CommunicationObjectFaultedException
ÒÒ 6
)
ÒÒ6 7
{
ÚÚ 
throw
ÛÛ 
new
ÛÛ $
CommunicationException
ÛÛ 0
(
ÛÛ0 1
)
ÛÛ1 2
;
ÛÛ2 3
}
ÙÙ 
catch
ıı 
(
ıı 
TimeoutException
ıı #
)
ıı# $
{
ˆˆ 
throw
˜˜ 
new
˜˜ 
TimeoutException
˜˜ *
(
˜˜* +
)
˜˜+ ,
;
˜˜, -
}
¯¯ 
catch
˘˘ 
(
˘˘ $
CommunicationException
˘˘ )
)
˘˘) *
{
˙˙ 
throw
˚˚ 
new
˚˚ $
CommunicationException
˚˚ 0
(
˚˚0 1
)
˚˚1 2
;
˚˚2 3
}
¸¸ 
catch
˝˝ 
(
˝˝ 
SocketException
˝˝ "
)
˝˝" #
{
˛˛ 
throw
ˇˇ 
new
ˇˇ 
SocketException
ˇˇ )
(
ˇˇ) *
)
ˇˇ* +
;
ˇˇ+ ,
}
ÄÄ 
}
ÅÅ 	
}
ÉÉ 
}ÖÖ Û 
oC:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameClient\Pages\CodeConfirmation.xaml.cs
	namespace 	
JeopardyGame
 
. 
Pages 
{ 
public 

partial 
class 
CodeConfirmation )
:* +
Page, 0
,0 1$
ICheckUserLivingCallback2 J
{ 
private   
UserSingleton   
userSingleton   +
=  , -
UserSingleton  . ;
.  ; <
GetMainUser  < G
(  G H
)  H I
;  I J
public!! 
const!! 
int!! 
NULL_INT_VALUE!! '
=!!( )
$num!!* +
;!!+ ,
private"" 
DispatcherTimer"" 
timer""  %
;""% &
private## 
int## 
leftTime## 
;## 
private$$ 
String$$ 
password$$ 
;$$  
private%% 
UserPojo%% 

userToSave%% #
;%%# $
private&& 
Window&& 
dialogMessage&& $
;&&$ %
private'' 
bool'' 
isTimerExpired'' #
=''$ %
false''& +
;''+ ,
public)) 
CodeConfirmation)) 
())  
UserPojo))  (
user))) -
)))- .
{** 	
this++ 
.++ 

userToSave++ 
=++ 
user++ "
;++" #
password,, 
=,, 
user,, 
.,, 
Password,, $
;,,$ %
InitializeComponent-- 
(--  
)--  !
;--! "
Loaded.. 
+=.. 
LoadedPrepareWindow.. )
;..) *
}// 	
private11 
void11 
LoadedPrepareWindow11 (
(11( )
object11) /
sender110 6
,116 7
RoutedEventArgs118 G
e11H I
)11I J
{22 	%
RegistryWithTheDictionary33 %
(33% &
)33& '
;33' (
	SentEmail44 
(44 
)44 
;44 

StartTimer55 
(55 
)55 
;55 
}66 	
private88 
void88 %
RegistryWithTheDictionary88 .
(88. /
)88/ 0
{99 	
try:: 
{;; '
UserCreateAccountCodeClient<< +
userCreateAccount<<, =
=<<> ?
new<<@ C
(<<C D
)<<D E
;<<E F
userCreateAccount== !
.==! "+
AddUserToConfirmationDictionary==" A
(==A B

userToSave==B L
)==L M
;==M N
InstanceContext>> 
instanceContext>>  /
=>>0 1
new>>2 5
InstanceContext>>6 E
(>>E F
this>>F J
)>>J K
;>>K L!
CheckUserLivingClient?? %!
checkUserLivingClient??& ;
=??< =
new??> A
(??A B
instanceContext??B Q
)??Q R
;??R S
var@@ 
success@@ 
=@@ !
checkUserLivingClient@@ 3
.@@3 4'
SubscribeToICheckUserLiving@@4 O
(@@O P

userToSave@@P Z
)@@Z [
;@@[ \
ifAA 
(AA 
successAA 
!=AA 
ExceptionDictionaryAA 2
.AA2 3
SUCCESFULL_EVENTAA3 C
)AAC D
{BB 
dialogMessageCC !
=CC" #
newCC$ '$
ErrorMessageDialogWindowCC( @
(CC@ A

PropertiesCCA K
.CCK L
	ResourcesCCL U
.CCU V
txbErrorTitleCCV c
,CCc d

PropertiesCCe o
.CCo p
	ResourcesCCp y
.CCy z&
lblFailRegistryToCallBack	CCz ì
,
CCì î
Application
CCî ü
.
CCü †
Current
CC† ß
.
CCß ®

MainWindow
CC® ≤
)
CC≤ ≥
;
CC≥ ¥#
ClickButtonCancelSavingDD +
(DD+ ,
bttCancellActionDD, <
,DD< =
newDD> A
RoutedEventArgsDDB Q
(DDQ R
)DDR S
)DDS T
;DDT U
}EE 
}FF 
catchGG 
(GG %
EndpointNotFoundExceptionGG ,
exGG- /
)GG/ 0
{HH 
HandleExceptionII 
(II  
exII  "
,II" #

PropertiesII$ .
.II. /
	ResourcesII/ 8
.II8 9
lblEndPointNotFoundII9 L
)IIL M
;IIM N#
ClickButtonCancelSavingJJ '
(JJ' (
bttCancellActionJJ( 8
,JJ8 9
newJJ: =
RoutedEventArgsJJ> M
(JJM N
)JJN O
)JJO P
;JJP Q
}KK 
catchLL 
(LL /
#CommunicationObjectFaultedExceptionLL 6
exLL7 9
)LL9 :
{MM 
HandleExceptionNN 
(NN  
exNN  "
,NN" #

PropertiesNN$ .
.NN. /
	ResourcesNN/ 8
.NN8 9$
lblComunicationExceptionNN9 Q
)NNQ R
;NNR S#
ClickButtonCancelSavingOO '
(OO' (
bttCancellActionOO( 8
,OO8 9
newOO: =
RoutedEventArgsOO> M
(OOM N
)OON O
)OOO P
;OOP Q
}PP 
catchQQ 
(QQ 
TimeoutExceptionQQ #
exQQ$ &
)QQ& '
{RR 
HandleExceptionSS 
(SS  
exSS  "
,SS" #

PropertiesSS$ .
.SS. /
	ResourcesSS/ 8
.SS8 9
lblTimeExceptionSS9 I
)SSI J
;SSJ K#
ClickButtonCancelSavingTT '
(TT' (
bttCancellActionTT( 8
,TT8 9
newTT: =
RoutedEventArgsTT> M
(TTM N
)TTN O
)TTO P
;TTP Q
}UU 
catchVV 
(VV "
CommunicationExceptionVV )
exVV* ,
)VV, -
{WW 
HandleExceptionXX 
(XX  
exXX  "
,XX" #

PropertiesXX$ .
.XX. /
	ResourcesXX/ 8
.XX8 9
lblWithoutConectionXX9 L
)XXL M
;XXM N#
ClickButtonCancelSavingYY '
(YY' (
bttCancellActionYY( 8
,YY8 9
newYY: =
RoutedEventArgsYY> M
(YYM N
)YYN O
)YYO P
;YYP Q
}ZZ 
catch[[ 
([[ 
SocketException[[ "
ex[[# %
)[[% &
{\\ 
HandleException]] 
(]]  
ex]]  "
,]]" #

Properties]]$ .
.]]. /
	Resources]]/ 8
.]]8 9#
lblFailtToEnterTheLobby]]9 P
)]]P Q
;]]Q R#
ClickButtonCancelSaving^^ '
(^^' (
bttCancellAction^^( 8
,^^8 9
new^^: =
RoutedEventArgs^^> M
(^^M N
)^^N O
)^^O P
;^^P Q
}__ 
}`` 	
privatebb 
voidbb 

StartTimerbb 
(bb  
)bb  !
{cc 	
leftTimedd 
=dd 
$numdd 
;dd 
timeree 
=ee 
newee 
DispatcherTimeree '
(ee' (
)ee( )
;ee) *
timerff 
.ff 
Intervalff 
=ff 
TimeSpanff %
.ff% &
FromSecondsff& 1
(ff1 2
$numff2 3
)ff3 4
;ff4 5
timergg 
.gg 
Tickgg 
+=gg 
TickTimerResendCodegg -
;gg- .
bttResendCodehh 
.hh 
	IsEnabledhh #
=hh$ %
falsehh& +
;hh+ ,
timerii 
.ii 
Startii 
(ii 
)ii 
;ii 
}jj 	
privatell 
voidll 
TickTimerResendCodell (
(ll( )
objectll) /
senderll0 6
,ll6 7
	EventArgsll8 A
ellB C
)llC D
{mm 	
ifnn 
(nn 
leftTimenn 
>nn 
NULL_INT_VALUEnn )
)nn) *
{oo 
leftTimepp 
--pp 
;pp 
lblResentCodeqq 
.qq 
Contentqq %
=qq& '

Propertiesqq( 2
.qq2 3
	Resourcesqq3 <
.qq< =
lblResentCodeqq= J
+qqK L
$strqqM P
+qqQ R
leftTimeqqS [
;qq[ \
lblResentCoderr 
.rr 

Foregroundrr (
=rr) *
newrr+ .
SolidColorBrushrr/ >
(rr> ?
Colorsrr? E
.rrE F
	IndianRedrrF O
)rrO P
;rrP Q
}ss 
elsett 
{uu 
lblResentCodevv 
.vv 
Contentvv %
=vv& '

Propertiesvv( 2
.vv2 3
	Resourcesvv3 <
.vv< =
lblResentCodevv= J
+vvK L
$strvvM P
+vvQ R
leftTimevvS [
;vv[ \
lblResentCodeww 
.ww 

Foregroundww (
=ww) *
newww+ .
SolidColorBrushww/ >
(ww> ?
Colorsww? E
.wwE F
ForestGreenwwF Q
)wwQ R
;wwR S
bttResendCodexx 
.xx 
	IsEnabledxx '
=xx( )
truexx* .
;xx. /
timeryy 
.yy 
Stopyy 
(yy 
)yy 
;yy 
isTimerExpiredzz 
=zz  
truezz! %
;zz% &
UpdateLabelStyle{{  
({{  !
){{! "
;{{" #
}|| 
}}} 	
private 
void 
	SentEmail 
( 
)  
{
ÄÄ 	
try
ÅÅ 
{
ÇÇ &
EmailSenderManagerClient
ÉÉ (
emailSender
ÉÉ) 4
=
ÉÉ5 6
new
ÉÉ7 :&
EmailSenderManagerClient
ÉÉ; S
(
ÉÉS T
)
ÉÉT U
;
ÉÉU V
GenericClassOfint
ÑÑ !
sentEmailSucc
ÑÑ" /
=
ÑÑ0 1
emailSender
ÑÑ2 =
.
ÑÑ= >2
$SentEmailConfirmationToCreateAccount
ÑÑ> b
(
ÑÑb c

userToSave
ÖÖ" ,
,
ÖÖ, -

Properties
ÖÖ. 8
.
ÖÖ8 9
	Resources
ÖÖ9 B
.
ÖÖB C
EmailSubjectCode
ÖÖC S
,
ÖÖS T

Properties
ÖÖU _
.
ÖÖ_ `
	Resources
ÖÖ` i
.
ÖÖi j
EmailCodeDescrip
ÖÖj z
)
ÖÖz {
;
ÖÖ{ |
if
ÜÜ 
(
ÜÜ 
sentEmailSucc
ÜÜ !
.
ÜÜ! "
	CodeEvent
ÜÜ" +
!=
ÜÜ, .!
ExceptionDictionary
ÜÜ/ B
.
ÜÜB C
SUCCESFULL_EVENT
ÜÜC S
)
ÜÜS T
{
áá 
dialogMessage
àà !
=
àà" #
new
àà$ '&
ErrorMessageDialogWindow
àà( @
(
àà@ A

Properties
ààA K
.
ààK L
	Resources
ààL U
.
ààU V
txbErrorTitle
ààV c
,
ààc d

Properties
ààe o
.
àào p
	Resources
ààp y
.
àày z
SentEmailIssueààz à
,ààà â
Applicationààä ï
.ààï ñ
Currentààñ ù
.ààù û

MainWindowààû ®
)àà® ©
;àà© ™
}
ââ 
if
ää 
(
ää 
sentEmailSucc
ää !
.
ää! "
ObjectSaved
ää" -
==
ää. 0
NULL_INT_VALUE
ää1 ?
)
ää? @
{
ãã 
dialogMessage
åå !
=
åå" #
new
åå$ '&
ErrorMessageDialogWindow
åå( @
(
åå@ A

Properties
ååA K
.
ååK L
	Resources
ååL U
.
ååU V
txbErrorTitle
ååV c
,
ååc d

Properties
ååe o
.
ååo p
	Resources
ååp y
.
ååy z
SentEmailIssueååz à
,ååà â
Applicationååä ï
.ååï ñ
Currentååñ ù
.ååù û

MainWindowååû ®
)åå® ©
;åå© ™
}
çç 
}
éé 
catch
èè 
(
èè '
EndpointNotFoundException
èè ,
ex
èè- /
)
èè/ 0
{
êê 
HandleException
ëë 
(
ëë  
ex
ëë  "
,
ëë" #

Properties
ëë$ .
.
ëë. /
	Resources
ëë/ 8
.
ëë8 9!
lblEndPointNotFound
ëë9 L
)
ëëL M
;
ëëM N
}
íí 
catch
ìì 
(
ìì 1
#CommunicationObjectFaultedException
ìì 6
ex
ìì7 9
)
ìì9 :
{
îî 
HandleException
ïï 
(
ïï  
ex
ïï  "
,
ïï" #

Properties
ïï$ .
.
ïï. /
	Resources
ïï/ 8
.
ïï8 9&
lblComunicationException
ïï9 Q
)
ïïQ R
;
ïïR S
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
HandleException
ôô 
(
ôô  
ex
ôô  "
,
ôô" #

Properties
ôô$ .
.
ôô. /
	Resources
ôô/ 8
.
ôô8 9
lblTimeException
ôô9 I
)
ôôI J
;
ôôJ K
}
öö 
catch
õõ 
(
õõ $
CommunicationException
õõ )
ex
õõ* ,
)
õõ, -
{
úú 
HandleException
ùù 
(
ùù  
ex
ùù  "
,
ùù" #

Properties
ùù$ .
.
ùù. /
	Resources
ùù/ 8
.
ùù8 9!
lblWithoutConection
ùù9 L
)
ùùL M
;
ùùM N
}
ûû 
catch
üü 
(
üü 
SocketException
üü "
ex
üü# %
)
üü% &
{
†† 
HandleException
°° 
(
°°  
ex
°°  "
,
°°" #

Properties
°°$ .
.
°°. /
	Resources
°°/ 8
.
°°8 9%
lblFailtToEnterTheLobby
°°9 P
)
°°P Q
;
°°Q R
}
¢¢ 
}
££ 	
private
•• 
void
•• !
ClickButtonSaveUser
•• (
(
••( )
object
••) /
sender
••0 6
,
••6 7
RoutedEventArgs
••8 G
e
••H I
)
••I J
{
¶¶ 	
try
ßß 
{
®® )
UserCreateAccountCodeClient
©© +
userCreateAccount
©©, =
=
©©> ?
new
©©@ C
(
©©C D
)
©©D E
;
©©E F
if
™™ 
(
™™ 
userCreateAccount
™™ %
.
™™% &
CheckCodeEntered
™™& 6
(
™™6 7

userToSave
™™7 A
,
™™A B
txbCodeCreateAcc
™™C S
.
™™S T
Text
™™T X
.
™™X Y
ToString
™™Y a
(
™™a b
)
™™b c
.
™™c d
Trim
™™d h
(
™™h i
)
™™i j
)
™™j k
==
™™l n"
ExceptionDictionary™™o Ç
.™™Ç É 
SUCCESFULL_EVENT™™É ì
)™™ì î
{
´´ "
PrepareUserToBeSaved
¨¨ (
(
¨¨( )
)
¨¨) *
;
¨¨* +
UserManagerClient
≠≠ %
userManagerProxy
≠≠& 6
=
≠≠7 8
new
≠≠9 <
UserManagerClient
≠≠= N
(
≠≠N O
)
≠≠O P
;
≠≠P Q
GenericClassOfint
ÆÆ %
	userSaved
ÆÆ& /
=
ÆÆ0 1
userManagerProxy
ÆÆ2 B
.
ÆÆB C
SaveUser
ÆÆC K
(
ÆÆK L

userToSave
ÆÆL V
,
ÆÆV W
txbCodeCreateAcc
ÆÆX h
.
ÆÆh i
Text
ÆÆi m
.
ÆÆm n
ToString
ÆÆn v
(
ÆÆv w
)
ÆÆw x
.
ÆÆx y
Trim
ÆÆy }
(
ÆÆ} ~
)
ÆÆ~ 
)ÆÆ Ä
;ÆÆÄ Å
if
ØØ 
(
ØØ 
	userSaved
ØØ !
.
ØØ! "
	CodeEvent
ØØ" +
==
ØØ, .!
ExceptionDictionary
ØØ/ B
.
ØØB C
SUCCESFULL_EVENT
ØØC S
)
ØØS T
{
∞∞ 
SetSingleton
±± $
(
±±$ %
)
±±% &
;
±±& '&
NotifyUserABoutNewPlayer
≤≤ 0
(
≤≤0 1
)
≤≤1 2
;
≤≤2 3
dialogMessage
≥≥ %
=
≥≥& '
new
≥≥( +,
InformationMessageDialogWindow
≥≥, J
(
≥≥J K

Properties
¥¥ &
.
¥¥& '
	Resources
¥¥' 0
.
¥¥0 1!
txbInformationTitle
¥¥1 D
,
¥¥D E

Properties
¥¥E O
.
¥¥O P
	Resources
¥¥P Y
.
¥¥Y Z%
txbInfoMessgSuccRegUser
¥¥Z q
,
¥¥q r
Application
¥¥s ~
.
¥¥~ 
Current¥¥ Ü
.¥¥Ü á

MainWindow¥¥á ë
)¥¥ë í
;¥¥í ì
MainMenu
µµ  
mainMenu
µµ! )
=
µµ* +
new
µµ, /
MainMenu
µµ0 8
(
µµ8 9
)
µµ9 :
;
µµ: ;
this
∂∂ 
.
∂∂ 
NavigationService
∂∂ .
.
∂∂. /
Navigate
∂∂/ 7
(
∂∂7 8
mainMenu
∂∂8 @
)
∂∂@ A
;
∂∂A B
NavigationService
∑∑ )
.
∑∑) *
RemoveBackEntry
∑∑* 9
(
∑∑9 :
)
∑∑: ;
;
∑∑; <
}
∏∏ 
else
ππ 
{
∫∫ 

userToSave
ªª "
.
ªª" #
Password
ªª# +
=
ªª, -
this
ªª. 2
.
ªª2 3
password
ªª3 ;
;
ªª; <
dialogMessage
ºº %
=
ºº& '
new
ºº( +&
ErrorMessageDialogWindow
ºº, D
(
ººD E

Properties
ººE O
.
ººO P
	Resources
ººP Y
.
ººY Z
txbErrorTitle
ººZ g
,
ººg h

Properties
ººi s
.
ººs t
	Resources
ººt }
.
ºº} ~*
txbErrorMessageRegisterUserºº~ ô
,ººô ö
Applicationººõ ¶
.ºº¶ ß
Currentººß Æ
.ººÆ Ø

MainWindowººØ π
)ººπ ∫
;ºº∫ ª
}
ΩΩ 
}
ææ 
else
øø 
{
¿¿ 
txbWrongCode
¡¡  
.
¡¡  !

Visibility
¡¡! +
=
¡¡, -

Visibility
¡¡. 8
.
¡¡8 9
Visible
¡¡9 @
;
¡¡@ A
}
¬¬ 
}
√√ 
catch
ƒƒ 
(
ƒƒ '
EndpointNotFoundException
ƒƒ ,
ex
ƒƒ- /
)
ƒƒ/ 0
{
≈≈ 
HandleException
∆∆ 
(
∆∆  
ex
∆∆  "
,
∆∆" #

Properties
∆∆$ .
.
∆∆. /
	Resources
∆∆/ 8
.
∆∆8 9!
lblEndPointNotFound
∆∆9 L
)
∆∆L M
;
∆∆M N
}
«« 
catch
»» 
(
»» 1
#CommunicationObjectFaultedException
»» 6
ex
»»7 9
)
»»9 :
{
…… 
HandleException
   
(
    
ex
    "
,
  " #

Properties
  $ .
.
  . /
	Resources
  / 8
.
  8 9&
lblComunicationException
  9 Q
)
  Q R
;
  R S
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
HandleException
ŒŒ 
(
ŒŒ  
ex
ŒŒ  "
,
ŒŒ" #

Properties
ŒŒ$ .
.
ŒŒ. /
	Resources
ŒŒ/ 8
.
ŒŒ8 9
lblTimeException
ŒŒ9 I
)
ŒŒI J
;
ŒŒJ K
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
HandleException
““ 
(
““  
ex
““  "
,
““" #

Properties
““$ .
.
““. /
	Resources
““/ 8
.
““8 9!
lblWithoutConection
““9 L
)
““L M
;
““M N
}
”” 
catch
‘‘ 
(
‘‘ 
SocketException
‘‘ "
ex
‘‘# %
)
‘‘% &
{
’’ 
HandleException
÷÷ 
(
÷÷  
ex
÷÷  "
,
÷÷" #

Properties
÷÷$ .
.
÷÷. /
	Resources
÷÷/ 8
.
÷÷8 9%
lblFailtToEnterTheLobby
÷÷9 P
)
÷÷P Q
;
÷÷Q R
}
◊◊ 
}
ÿÿ 	
private
⁄⁄ 
void
⁄⁄ 
ClickResendCode
⁄⁄ $
(
⁄⁄$ %
object
⁄⁄% +
sender
⁄⁄, 2
,
⁄⁄2 3
RoutedEventArgs
⁄⁄4 C
e
⁄⁄D E
)
⁄⁄E F
{
€€ 	
if
‹‹ 
(
‹‹ 
leftTime
‹‹ 
==
‹‹ 
NULL_INT_VALUE
‹‹ *
)
‹‹* +
{
›› 
try
ﬁﬁ 
{
ﬂﬂ )
UserCreateAccountCodeClient
‡‡ /
userCreateAccount
‡‡0 A
=
‡‡B C
new
‡‡D G
(
‡‡G H
)
‡‡H I
;
‡‡I J
if
·· 
(
·· 
userCreateAccount
·· )
.
··) *

ResendCode
··* 4
(
··4 5

userToSave
··5 ?
)
··? @
==
··A C!
ExceptionDictionary
··D W
.
··W X
SUCCESFULL_EVENT
··X h
)
··h i
{
‚‚ 
	SentEmail
„„ !
(
„„! "
)
„„" #
;
„„# $

StartTimer
‰‰ "
(
‰‰" #
)
‰‰# $
;
‰‰$ %
}
ÂÂ 
else
ÊÊ 
{
ÁÁ 
dialogMessage
ËË %
=
ËË& '
new
ËË( +&
ErrorMessageDialogWindow
ËË, D
(
ËËD E

Properties
ËËE O
.
ËËO P
	Resources
ËËP Y
.
ËËY Z
txbErrorTitle
ËËZ g
,
ËËg h

Properties
ËËi s
.
ËËs t
	Resources
ËËt }
.
ËË} ~(
lblFailRegistryToCallBackËË~ ó
,ËËó ò
ApplicationËËô §
.ËË§ •
CurrentËË• ¨
.ËË¨ ≠

MainWindowËË≠ ∑
)ËË∑ ∏
;ËË∏ π
}
ÈÈ 
}
ÍÍ 
catch
ÎÎ 
(
ÎÎ '
EndpointNotFoundException
ÎÎ 0
ex
ÎÎ1 3
)
ÎÎ3 4
{
ÏÏ 
HandleException
ÌÌ #
(
ÌÌ# $
ex
ÌÌ$ &
,
ÌÌ& '

Properties
ÌÌ( 2
.
ÌÌ2 3
	Resources
ÌÌ3 <
.
ÌÌ< =!
lblEndPointNotFound
ÌÌ= P
)
ÌÌP Q
;
ÌÌQ R%
ClickButtonCancelSaving
ÓÓ +
(
ÓÓ+ ,
bttCancellAction
ÓÓ, <
,
ÓÓ< =
new
ÓÓ> A
RoutedEventArgs
ÓÓB Q
(
ÓÓQ R
)
ÓÓR S
)
ÓÓS T
;
ÓÓT U
}
ÔÔ 
catch
 
(
 1
#CommunicationObjectFaultedException
 :
ex
; =
)
= >
{
ÒÒ 
HandleException
ÚÚ #
(
ÚÚ# $
ex
ÚÚ$ &
,
ÚÚ& '

Properties
ÚÚ( 2
.
ÚÚ2 3
	Resources
ÚÚ3 <
.
ÚÚ< =&
lblComunicationException
ÚÚ= U
)
ÚÚU V
;
ÚÚV W%
ClickButtonCancelSaving
ÛÛ +
(
ÛÛ+ ,
bttCancellAction
ÛÛ, <
,
ÛÛ< =
new
ÛÛ> A
RoutedEventArgs
ÛÛB Q
(
ÛÛQ R
)
ÛÛR S
)
ÛÛS T
;
ÛÛT U
}
ÙÙ 
catch
ıı 
(
ıı 
TimeoutException
ıı '
ex
ıı( *
)
ıı* +
{
ˆˆ 
HandleException
˜˜ #
(
˜˜# $
ex
˜˜$ &
,
˜˜& '

Properties
˜˜( 2
.
˜˜2 3
	Resources
˜˜3 <
.
˜˜< =
lblTimeException
˜˜= M
)
˜˜M N
;
˜˜N O%
ClickButtonCancelSaving
¯¯ +
(
¯¯+ ,
bttCancellAction
¯¯, <
,
¯¯< =
new
¯¯> A
RoutedEventArgs
¯¯B Q
(
¯¯Q R
)
¯¯R S
)
¯¯S T
;
¯¯T U
}
˘˘ 
catch
˙˙ 
(
˙˙ $
CommunicationException
˙˙ -
ex
˙˙. 0
)
˙˙0 1
{
˚˚ 
HandleException
¸¸ #
(
¸¸# $
ex
¸¸$ &
,
¸¸& '

Properties
¸¸( 2
.
¸¸2 3
	Resources
¸¸3 <
.
¸¸< =!
lblWithoutConection
¸¸= P
)
¸¸P Q
;
¸¸Q R%
ClickButtonCancelSaving
˝˝ +
(
˝˝+ ,
bttCancellAction
˝˝, <
,
˝˝< =
new
˝˝> A
RoutedEventArgs
˝˝B Q
(
˝˝Q R
)
˝˝R S
)
˝˝S T
;
˝˝T U
}
˛˛ 
catch
ˇˇ 
(
ˇˇ 
SocketException
ˇˇ &
ex
ˇˇ' )
)
ˇˇ) *
{
ÄÄ 
HandleException
ÅÅ #
(
ÅÅ# $
ex
ÅÅ$ &
,
ÅÅ& '

Properties
ÅÅ( 2
.
ÅÅ2 3
	Resources
ÅÅ3 <
.
ÅÅ< =%
lblFailtToEnterTheLobby
ÅÅ= T
)
ÅÅT U
;
ÅÅU V%
ClickButtonCancelSaving
ÇÇ +
(
ÇÇ+ ,
bttCancellAction
ÇÇ, <
,
ÇÇ< =
new
ÇÇ> A
RoutedEventArgs
ÇÇB Q
(
ÇÇQ R
)
ÇÇR S
)
ÇÇS T
;
ÇÇT U
}
ÉÉ 
}
ÑÑ 
}
ÖÖ 	
private
áá 
void
áá "
PrepareUserToBeSaved
áá )
(
áá) *
)
áá* +
{
àà 	
String
ââ 
encryptedPassword
ââ $
=
ââ% &
EncryptionClass
ââ' 6
.
ââ6 7
EncryptPassword
ââ7 F
(
ââF G

userToSave
ââG Q
.
ââQ R
Password
ââR Z
.
ââZ [
ToString
ââ[ c
(
ââc d
)
ââd e
.
ââe f
Trim
ââf j
(
ââj k
)
ââk l
)
ââl m
;
ââm n

userToSave
ää 
.
ää 
Password
ää 
=
ää  !
encryptedPassword
ää" 3
;
ää3 4

userToSave
ãã 
.
ãã 
IdUser
ãã 
=
ãã 
NULL_INT_VALUE
ãã  .
;
ãã. /
}
åå 	
private
éé 
void
éé &
NotifyUserABoutNewPlayer
éé -
(
éé- .
)
éé. /
{
èè 	
try
êê 
{
ëë 1
#FriendManagerActionOperationsClient
íí 3*
managerActionOperationsProxy
íí4 P
=
ííQ R
new
ííS V
(
ííV W
)
ííW X
;
ííX Y*
managerActionOperationsProxy
ìì ,
.
ìì, -&
NotifyUserAboutNewPlayer
ìì- E
(
ììE F
userSingleton
ììF S
.
ììS T
IdUser
ììT Z
,
ììZ [
userSingleton
ìì\ i
.
ììi j
UserName
ììj r
)
ììr s
;
ììs t
}
îî 
catch
ïï 
(
ïï '
EndpointNotFoundException
ïï ,
ex
ïï- /
)
ïï/ 0
{
ññ %
ExceptionHandlerForLogs
óó '
.
óó' (
LogException
óó( 4
(
óó4 5
ex
óó5 7
,
óó7 8!
ExceptionDictionary
óó9 L
.
óóL M
FATAL_EXCEPTION
óóM \
)
óó\ ]
;
óó] ^
}
òò 
catch
ôô 
(
ôô 1
#CommunicationObjectFaultedException
ôô 6
ex
ôô7 9
)
ôô9 :
{
öö %
ExceptionHandlerForLogs
õõ '
.
õõ' (
LogException
õõ( 4
(
õõ4 5
ex
õõ5 7
,
õõ7 8!
ExceptionDictionary
õõ9 L
.
õõL M
FATAL_EXCEPTION
õõM \
)
õõ\ ]
;
õõ] ^
}
úú 
catch
ùù 
(
ùù 
TimeoutException
ùù #
ex
ùù$ &
)
ùù& '
{
ûû %
ExceptionHandlerForLogs
üü '
.
üü' (
LogException
üü( 4
(
üü4 5
ex
üü5 7
,
üü7 8!
ExceptionDictionary
üü9 L
.
üüL M
FATAL_EXCEPTION
üüM \
)
üü\ ]
;
üü] ^
}
†† 
catch
°° 
(
°° $
CommunicationException
°° )
ex
°°* ,
)
°°, -
{
¢¢ %
ExceptionHandlerForLogs
££ '
.
££' (
LogException
££( 4
(
££4 5
ex
££5 7
,
££7 8!
ExceptionDictionary
££9 L
.
££L M
FATAL_EXCEPTION
££M \
)
££\ ]
;
££] ^
}
§§ 
catch
•• 
(
•• 
SocketException
•• "
ex
••# %
)
••% &
{
¶¶ %
ExceptionHandlerForLogs
ßß '
.
ßß' (
LogException
ßß( 4
(
ßß4 5
ex
ßß5 7
,
ßß7 8!
ExceptionDictionary
ßß9 L
.
ßßL M
FATAL_EXCEPTION
ßßM \
)
ßß\ ]
;
ßß] ^
}
®® 
}
©© 	
private
≠≠ 
void
≠≠ %
ClickButtonCancelSaving
≠≠ ,
(
≠≠, -
object
≠≠- 3
sender
≠≠4 :
,
≠≠: ;
RoutedEventArgs
≠≠< K
e
≠≠L M
)
≠≠M N
{
ÆÆ 	
try
ØØ 
{
∞∞ 
if
±± 
(
±± 
timer
±± 
!=
±± 
null
±± !
)
±±! "
{
≤≤ 
timer
≥≥ 
.
≥≥ 
Stop
≥≥ 
(
≥≥ 
)
≥≥  
;
≥≥  !
}
¥¥ )
UserCreateAccountCodeClient
µµ +
userCreateAccount
µµ, =
=
µµ> ?
new
µµ@ C
(
µµC D
)
µµD E
;
µµE F
userCreateAccount
∂∂ !
.
∂∂! "%
TakeUserOutOfDictionary
∂∂" 9
(
∂∂9 :

userToSave
∂∂: D
)
∂∂D E
;
∂∂E F.
 CheckUserLivingUnsubscribeClient
∑∑ 0#
checkUserLivingClient
∑∑1 F
=
∑∑G H
new
∑∑I L
(
∑∑L M
)
∑∑M N
;
∑∑N O#
checkUserLivingClient
∏∏ %
.
∏∏% &-
UnsubscribeFromICheckUserLiving
∏∏& E
(
∏∏E F

userToSave
∏∏F P
)
∏∏P Q
;
∏∏Q R
}
ππ 
catch
∫∫ 
(
∫∫ '
EndpointNotFoundException
∫∫ ,
ex
∫∫- /
)
∫∫/ 0
{
ªª %
ExceptionHandlerForLogs
ºº '
.
ºº' (
LogException
ºº( 4
(
ºº4 5
ex
ºº5 7
,
ºº7 8!
ExceptionDictionary
ºº9 L
.
ººL M
FATAL_EXCEPTION
ººM \
)
ºº\ ]
;
ºº] ^
}
ΩΩ 
catch
ææ 
(
ææ 1
#CommunicationObjectFaultedException
ææ 6
ex
ææ7 9
)
ææ9 :
{
øø %
ExceptionHandlerForLogs
¿¿ '
.
¿¿' (
LogException
¿¿( 4
(
¿¿4 5
ex
¿¿5 7
,
¿¿7 8!
ExceptionDictionary
¿¿9 L
.
¿¿L M
FATAL_EXCEPTION
¿¿M \
)
¿¿\ ]
;
¿¿] ^
}
¡¡ 
catch
¬¬ 
(
¬¬ 
TimeoutException
¬¬ #
ex
¬¬$ &
)
¬¬& '
{
√√ %
ExceptionHandlerForLogs
ƒƒ '
.
ƒƒ' (
LogException
ƒƒ( 4
(
ƒƒ4 5
ex
ƒƒ5 7
,
ƒƒ7 8!
ExceptionDictionary
ƒƒ9 L
.
ƒƒL M
FATAL_EXCEPTION
ƒƒM \
)
ƒƒ\ ]
;
ƒƒ] ^
}
≈≈ 
catch
∆∆ 
(
∆∆ $
CommunicationException
∆∆ )
ex
∆∆* ,
)
∆∆, -
{
«« %
ExceptionHandlerForLogs
»» '
.
»»' (
LogException
»»( 4
(
»»4 5
ex
»»5 7
,
»»7 8!
ExceptionDictionary
»»9 L
.
»»L M
FATAL_EXCEPTION
»»M \
)
»»\ ]
;
»»] ^
}
…… 
catch
   
(
   
SocketException
   "
ex
  # %
)
  % &
{
ÀÀ %
ExceptionHandlerForLogs
ÃÃ '
.
ÃÃ' (
LogException
ÃÃ( 4
(
ÃÃ4 5
ex
ÃÃ5 7
,
ÃÃ7 8!
ExceptionDictionary
ÃÃ9 L
.
ÃÃL M
FATAL_EXCEPTION
ÃÃM \
)
ÃÃ\ ]
;
ÃÃ] ^
}
ÕÕ 
UserSingleton
ŒŒ 
.
ŒŒ 
CleanSingleton
ŒŒ (
(
ŒŒ( )
)
ŒŒ) *
;
ŒŒ* +
UserRegister
œœ 
userToRegister
œœ '
=
œœ( )
new
œœ* -
UserRegister
œœ. :
(
œœ: ;
)
œœ; <
;
œœ< =
this
–– 
.
–– 
NavigationService
–– "
.
––" #
Navigate
––# +
(
––+ ,
userToRegister
––, :
)
––: ;
;
––; <
userToRegister
—— 
.
—— 

LoadFields
—— %
(
——% &

userToSave
——& 0
)
——0 1
;
——1 2
NavigationService
““ 
.
““ 
RemoveBackEntry
““ -
(
““- .
)
““. /
;
““/ 0
}
”” 	
private
÷÷ 
void
÷÷ $
EntryCodeCharValidator
÷÷ +
(
÷÷+ ,
object
÷÷, 2
sender
÷÷3 9
,
÷÷9 :"
TextChangedEventArgs
÷÷; O
e
÷÷P Q
)
÷÷Q R
{
◊◊ 	
if
ÿÿ 
(
ÿÿ 
txbCodeCreateAcc
ÿÿ  
.
ÿÿ  !
Text
ÿÿ! %
.
ÿÿ% &
Trim
ÿÿ& *
(
ÿÿ* +
)
ÿÿ+ ,
.
ÿÿ, -
Length
ÿÿ- 3
==
ÿÿ4 6
$num
ÿÿ7 8
)
ÿÿ8 9
{
ŸŸ 
bttSaveUser
⁄⁄ 
.
⁄⁄ 
	IsEnabled
⁄⁄ %
=
⁄⁄& '
true
⁄⁄( ,
;
⁄⁄, -
}
€€ 
else
‹‹ 
{
›› 
bttSaveUser
ﬁﬁ 
.
ﬁﬁ 
	IsEnabled
ﬁﬁ %
=
ﬁﬁ% &
false
ﬁﬁ& +
;
ﬁﬁ+ ,
}
ﬂﬂ 
}
‡‡ 	
private
‚‚ 
void
‚‚ 
SetSingleton
‚‚ !
(
‚‚! "
)
‚‚" #
{
„„ 	
try
‰‰ 
{
ÂÂ *
ConsultUserInformationClient
ÊÊ ,&
consultInformationClient
ÊÊ- E
=
ÊÊF G
new
ÊÊH K*
ConsultUserInformationClient
ÊÊL h
(
ÊÊh i
)
ÊÊi j
;
ÊÊj k
var
ÁÁ 
	userSaved
ÁÁ 
=
ÁÁ &
consultInformationClient
ÁÁ  8
.
ÁÁ8 9#
ConsultUserByUserName
ÁÁ9 N
(
ÁÁN O

userToSave
ÁÁO Y
.
ÁÁY Z
UserName
ÁÁZ b
)
ÁÁb c
;
ÁÁc d
if
ËË 
(
ËË 
	userSaved
ËË 
.
ËË 
	CodeEvent
ËË '
==
ËË( *!
ExceptionDictionary
ËË+ >
.
ËË> ?
SUCCESFULL_EVENT
ËË? O
)
ËËO P
{
ÈÈ 
var
ÍÍ 
playerSaved
ÍÍ #
=
ÍÍ$ %&
consultInformationClient
ÍÍ& >
.
ÍÍ> ?#
ConsultPlayerByIdUser
ÍÍ? T
(
ÍÍT U
	userSaved
ÍÍU ^
.
ÍÍ^ _
ObjectSaved
ÍÍ_ j
.
ÍÍj k
IdUser
ÍÍk q
)
ÍÍq r
;
ÍÍr s
if
ÎÎ 
(
ÎÎ 
playerSaved
ÎÎ #
.
ÎÎ# $
	CodeEvent
ÎÎ$ -
==
ÎÎ. 0!
ExceptionDictionary
ÎÎ1 D
.
ÎÎD E
SUCCESFULL_EVENT
ÎÎE U
)
ÎÎU V
{
ÏÏ 
UserSingleton
ÌÌ %
.
ÌÌ% &
CleanSingleton
ÌÌ& 4
(
ÌÌ4 5
)
ÌÌ5 6
;
ÌÌ6 7
userSingleton
ÓÓ %
=
ÓÓ& '
UserSingleton
ÓÓ( 5
.
ÓÓ5 6
GetMainUser
ÓÓ6 A
(
ÓÓA B
	userSaved
ÓÓB K
.
ÓÓK L
ObjectSaved
ÓÓL W
,
ÓÓW X
playerSaved
ÓÓY d
.
ÓÓd e
ObjectSaved
ÓÓe p
)
ÓÓp q
;
ÓÓq r-
AvailabilityUserManagmentClient
ÔÔ 7'
availabilityUserManagment
ÔÔ8 Q
=
ÔÔR S
new
ÔÔT W-
AvailabilityUserManagmentClient
ÔÔX w
(
ÔÔw x
)
ÔÔx y
;
ÔÔy z'
availabilityUserManagment
 1
.
1 2
PlayerIsAvailable
2 C
(
C D
userSingleton
D Q
.
Q R
IdUser
R X
)
X Y
;
Y Z
}
ÒÒ 
else
ÚÚ 
{
ÛÛ 
dialogMessage
ÙÙ %
=
ÙÙ& '
new
ÙÙ( +&
ErrorMessageDialogWindow
ÙÙ, D
(
ÙÙD E

Properties
ÙÙE O
.
ÙÙO P
	Resources
ÙÙP Y
.
ÙÙY Z
txbErrorTitle
ÙÙZ g
,
ÙÙg h

Properties
ÙÙi s
.
ÙÙs t
	Resources
ÙÙt }
.
ÙÙ} ~%
lblFailConsultingTheBDÙÙ~ î
,ÙÙî ï
ApplicationÙÙñ °
.ÙÙ° ¢
CurrentÙÙ¢ ©
.ÙÙ© ™

MainWindowÙÙ™ ¥
)ÙÙ¥ µ
;ÙÙµ ∂
}
ıı 
}
ˆˆ 
else
˜˜ 
{
¯¯ 
dialogMessage
˘˘ !
=
˘˘" #
new
˘˘$ '&
ErrorMessageDialogWindow
˘˘( @
(
˘˘@ A

Properties
˘˘A K
.
˘˘K L
	Resources
˘˘L U
.
˘˘U V
txbErrorTitle
˘˘V c
,
˘˘c d

Properties
˘˘e o
.
˘˘o p
	Resources
˘˘p y
.
˘˘y z%
lblFailConsultingTheBD˘˘z ê
,˘˘ê ë
Application˘˘í ù
.˘˘ù û
Current˘˘û •
.˘˘• ¶

MainWindow˘˘¶ ∞
)˘˘∞ ±
;˘˘± ≤
}
˙˙ 
}
˚˚ 
catch
¸¸ 
(
¸¸ '
EndpointNotFoundException
¸¸ ,
ex
¸¸- /
)
¸¸/ 0
{
˝˝ 
HandleException
˛˛ 
(
˛˛  
ex
˛˛  "
,
˛˛" #

Properties
˛˛$ .
.
˛˛. /
	Resources
˛˛/ 8
.
˛˛8 9/
!lblUserRegisteredButFailToconnect
˛˛9 Z
)
˛˛Z [
;
˛˛[ \%
ClickButtonCancelSaving
ˇˇ '
(
ˇˇ' (
bttCancellAction
ˇˇ( 8
,
ˇˇ8 9
new
ˇˇ: =
RoutedEventArgs
ˇˇ> M
(
ˇˇM N
)
ˇˇN O
)
ˇˇO P
;
ˇˇP Q
}
ÄÄ 
catch
ÅÅ 
(
ÅÅ 1
#CommunicationObjectFaultedException
ÅÅ 6
ex
ÅÅ7 9
)
ÅÅ9 :
{
ÇÇ 
HandleException
ÉÉ 
(
ÉÉ  
ex
ÉÉ  "
,
ÉÉ" #

Properties
ÉÉ$ .
.
ÉÉ. /
	Resources
ÉÉ/ 8
.
ÉÉ8 9/
!lblUserRegisteredButFailToconnect
ÉÉ9 Z
)
ÉÉZ [
;
ÉÉ[ \%
ClickButtonCancelSaving
ÑÑ '
(
ÑÑ' (
bttCancellAction
ÑÑ( 8
,
ÑÑ8 9
new
ÑÑ: =
RoutedEventArgs
ÑÑ> M
(
ÑÑM N
)
ÑÑN O
)
ÑÑO P
;
ÑÑP Q
}
ÖÖ 
catch
ÜÜ 
(
ÜÜ 
TimeoutException
ÜÜ #
ex
ÜÜ$ &
)
ÜÜ& '
{
áá 
HandleException
àà 
(
àà  
ex
àà  "
,
àà" #

Properties
àà$ .
.
àà. /
	Resources
àà/ 8
.
àà8 9/
!lblUserRegisteredButFailToconnect
àà9 Z
)
ààZ [
;
àà[ \%
ClickButtonCancelSaving
ââ '
(
ââ' (
bttCancellAction
ââ( 8
,
ââ8 9
new
ââ: =
RoutedEventArgs
ââ> M
(
ââM N
)
ââN O
)
ââO P
;
ââP Q
}
ää 
catch
ãã 
(
ãã $
CommunicationException
ãã )
ex
ãã* ,
)
ãã, -
{
åå 
HandleException
çç 
(
çç  
ex
çç  "
,
çç" #

Properties
çç$ .
.
çç. /
	Resources
çç/ 8
.
çç8 9/
!lblUserRegisteredButFailToconnect
çç9 Z
)
ççZ [
;
çç[ \%
ClickButtonCancelSaving
éé '
(
éé' (
bttCancellAction
éé( 8
,
éé8 9
new
éé: =
RoutedEventArgs
éé> M
(
ééM N
)
ééN O
)
ééO P
;
ééP Q
}
èè 
catch
êê 
(
êê 
SocketException
êê "
ex
êê# %
)
êê% &
{
ëë 
HandleException
íí 
(
íí  
ex
íí  "
,
íí" #

Properties
íí$ .
.
íí. /
	Resources
íí/ 8
.
íí8 9/
!lblUserRegisteredButFailToconnect
íí9 Z
)
ííZ [
;
íí[ \%
ClickButtonCancelSaving
ìì '
(
ìì' (
bttCancellAction
ìì( 8
,
ìì8 9
new
ìì: =
RoutedEventArgs
ìì> M
(
ììM N
)
ììN O
)
ììO P
;
ììP Q
}
îî 
}
ïï 	
public
óó 
bool
óó 
IsClientActive
óó "
(
óó" #
)
óó# $
{
òò 	
return
ôô 
(
ôô 
(
ôô &
ICheckUserLivingCallback
ôô -
)
ôô- .
userSingleton
ôô. ;
)
ôô; <
.
ôô< =
IsClientActive
ôô= K
(
ôôK L
)
ôôL M
;
ôôM N
}
öö 	
private
úú 
void
úú 
HandleException
úú $
(
úú$ %
	Exception
úú% .
ex
úú/ 1
,
úú1 2
string
úú3 9
errorMessage
úú: F
)
úúF G
{
ùù 	%
ExceptionHandlerForLogs
ûû #
.
ûû# $
LogException
ûû$ 0
(
ûû0 1
ex
ûû1 3
,
ûû3 4!
ExceptionDictionary
ûû5 H
.
ûûH I
FATAL_EXCEPTION
ûûI X
)
ûûX Y
;
ûûY Z
dialogMessage
üü 
=
üü 
new
üü &
ErrorMessageDialogWindow
üü  8
(
üü8 9

Properties
üü9 C
.
üüC D
	Resources
üüD M
.
üüM N
txbErrorTitle
üüN [
,
üü[ \
errorMessage
üü] i
,
üüi j
Application
üük v
.
üüv w
Current
üüw ~
.
üü~ 

MainWindowüü â
)üüâ ä
;üüä ã
}
†† 	
private
°° 
void
°° 
UpdateLabelStyle
°° %
(
°°% &
)
°°& '
{
¢¢ 	
if
££ 
(
££ 
isTimerExpired
££ 
)
££ 
{
§§ 
lblResentCode
•• 
.
•• 

FontWeight
•• (
=
••) *
FontWeights
••+ 6
.
••6 7
Bold
••7 ;
;
••; <
lblResentCode
¶¶ 
.
¶¶ 

Foreground
¶¶ (
=
¶¶) *
Brushes
¶¶+ 2
.
¶¶2 3
Red
¶¶3 6
;
¶¶6 7
}
ßß 
else
®® 
{
©© 
lblResentCode
™™ 
.
™™ 

FontWeight
™™ (
=
™™) *
FontWeights
™™+ 6
.
™™6 7
Normal
™™7 =
;
™™= >
lblResentCode
´´ 
.
´´ 

Foreground
´´ (
=
´´) *
Brushes
´´+ 2
.
´´2 3
DeepSkyBlue
´´3 >
;
´´> ?
}
¨¨ 
}
≠≠ 	
}
ØØ 
}∞∞ œÓ
nC:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameClient\Pages\EditUserProfile.xaml.cs
	namespace 	
JeopardyGame
 
. 
Pages 
{ 
public!! 

partial!! 
class!! 
EditUserProfile!! (
:!!) *
Page!!+ /
{"" 
private## 
Window## 
dialogMessage## $
;##$ %
String$$ 
imageResource$$ 
=$$ 
$str$$ !
;$$! "
private%% 

Dictionary%% 
<%% 
string%% !
,%%! "
int%%# &
>%%& '
imageIdMappings%%( 7
;%%7 8
private&& 
const&& 
int&& 
DISALLOWED_VALUES&& +
=&&, -
$num&&. /
;&&/ 0
private'' 
const'' 
int'' 
ALLOWED_VALUES'' (
='') *
$num''+ ,
;'', -
public)) 
EditUserProfile)) 
()) 
)))  
{** 	
InitializeComponent++ 
(++  
)++  !
;++! "
Loaded,, 
+=,,  
LoadedPreparedWindow,, *
;,,* +
}-- 	
private// 
void//  
LoadedPreparedWindow// )
(//) *
object//* 0
sender//1 7
,//7 8
RoutedEventArgs//9 H
e//I J
)//J K
{00 	#
InitializeImageMappings11 #
(11# $
)11$ %
;11% & 
ImagenInitialization22  
(22  !
)22! "
;22" #
ReadResource33 
(33 
)33 
;33 
DisplayUserInfo44 
(44 
)44 
;44 
}66 	
public88 
void88 
DisplayUserInfo88 #
(88# $
)88$ %
{99 	
txbEditUserName:: 
.:: 

IsReadOnly:: &
=::' (
true::) -
;::- .
UserSingleton;; 
userSingleton;; '
=;;( )
UserSingleton;;* 7
.;;7 8
GetMainUser;;8 C
(;;C D
);;D E
;;;E F
txbEditName<< 
.<< 
Text<< 
=<< 
userSingleton<< ,
.<<, -
Name<<- 1
;<<1 2
txbEditUserName== 
.== 
Text==  
===! "
userSingleton==# 0
.==0 1
UserName==1 9
;==9 :
txbEditEmail>> 
.>> 
Text>> 
=>> 
userSingleton>>  -
.>>- .
Email>>. 3
;>>3 4
}?? 	
privateAA 
voidAA (
CLickButtonSaveAvatarChangesAA 1
(AA1 2
objectAA2 8
senderAA9 ?
,AA? @
RoutedEventArgsAAA P
eAAQ R
)AAR S
{BB 	
tryCC 
{DD 
UserManagerClientEE !
useManagerProxyEE" 1
=EE2 3
newEE4 7
UserManagerClientEE8 I
(EEI J
)EEJ K
;EEK L
intFF 
idPlayerFF 
=FF 
UserSingletonFF ,
.FF, -
GetMainUserFF- 8
(FF8 9
)FF9 :
.FF: ;
IdPlayerFF; C
;FFC D
imageIdMappingsGG 
.GG  
TryGetValueGG  +
(GG+ ,
imageResourceGG, 9
,GG9 :
outGG; >
intGG? B
imageIdGGC J
)GGJ K
;GGK L
varHH 
resultPhotoHH 
=HH  !
useManagerProxyHH" 1
.HH1 2
UpdatePlayerPhotoHH2 C
(HHC D
idPlayerHHD L
,HHL M
imageIdHHN U
)HHU V
;HHV W
ifJJ 
(JJ 
resultPhotoJJ 
!=JJ  "
nullJJ# '
)JJ' (
{KK 
UserSingletonLL !
.LL! "
GetMainUserLL" -
(LL- .
)LL. /
.LL/ 0
UpdateAvatarDataLL0 @
(LL@ A
imageIdLLA H
)LLH I
;LLI J
dialogMessageMM !
=MM" #
newMM$ '*
InformationMessageDialogWindowMM( F
(MMF G

PropertiesMMG Q
.MMQ R
	ResourcesMMR [
.MM[ \
txbInformationTitleMM\ o
,MMo p

PropertiesMMq {
.MM{ |
	Resources	MM| Ö
.
MMÖ Ü
lblUpdateAvatar
MMÜ ï
,
MMï ñ
Application
MMó ¢
.
MM¢ £
Current
MM£ ™
.
MM™ ´

MainWindow
MM´ µ
)
MMµ ∂
;
MM∂ ∑
MainMenuNN 
mainMenuPageNN )
=NN* +
newNN, /
MainMenuNN0 8
(NN8 9
)NN9 :
;NN: ;
thisOO 
.OO 
NavigationServiceOO *
.OO* +
NavigateOO+ 3
(OO3 4
mainMenuPageOO4 @
)OO@ A
;OOA B
NavigationServicePP %
.PP% &
RemoveBackEntryPP& 5
(PP5 6
)PP6 7
;PP7 8
}QQ 
elseRR 
{SS 
dialogMessageTT !
=TT" #
newTT$ '$
ErrorMessageDialogWindowTT( @
(TT@ A

PropertiesTTA K
.TTK L
	ResourcesTTL U
.TTU V
txbErrorTitleTTV c
,TTc d

PropertiesTTe o
.TTo p
	ResourcesTTp y
.TTy z!
lblWrongUpdateAvatar	TTz é
,
TTé è
Application
TTê õ
.
TTõ ú
Current
TTú £
.
TT£ §

MainWindow
TT§ Æ
)
TTÆ Ø
;
TTØ ∞
RefreshWindowUU !
(UU! "
)UU" #
;UU# $
}VV 
useManagerProxyWW 
.WW  
CloseWW  %
(WW% &
)WW& '
;WW' (
}XX 
catchYY 
(YY %
EndpointNotFoundExceptionYY ,
exYY- /
)YY/ 0
{ZZ 
HandleException[[ 
([[  
ex[[  "
,[[" #

Properties[[$ .
.[[. /
	Resources[[/ 8
.[[8 9 
lblWrongUpdateAvatar[[9 M
+[[N O
$str[[P U
+[[V W

Properties[[X b
.[[b c
	Resources[[c l
.[[l m 
lblEndPointNotFound	[[m Ä
)
[[Ä Å
;
[[Å Ç
}\\ 
catch]] 
(]] /
#CommunicationObjectFaultedException]] 6
ex]]7 9
)]]9 :
{^^ 
HandleException__ 
(__  
ex__  "
,__" #

Properties__$ .
.__. /
	Resources__/ 8
.__8 9 
lblWrongUpdateAvatar__9 M
+__N O
$str__P U
+__V W

Properties__X b
.__b c
	Resources__c l
.__l m%
lblComunicationException	__m Ö
)
__Ö Ü
;
__Ü á
}`` 
catchaa 
(aa 
TimeoutExceptionaa #
exaa$ &
)aa& '
{bb 
HandleExceptioncc 
(cc  
excc  "
,cc" #

Propertiescc$ .
.cc. /
	Resourcescc/ 8
.cc8 9 
lblWrongUpdateAvatarcc9 M
+ccN O
$strccP U
+ccV W

PropertiesccX b
.ccb c
	Resourcesccc l
.ccl m
lblTimeExceptionccm }
)cc} ~
;cc~ 
}dd 
catchee 
(ee "
CommunicationExceptionee )
exee* ,
)ee, -
{ff 
HandleExceptiongg 
(gg  
exgg  "
,gg" #

Propertiesgg$ .
.gg. /
	Resourcesgg/ 8
.gg8 9 
lblWrongUpdateAvatargg9 M
+ggN O
$strggP U
+ggV W

PropertiesggX b
.ggb c
	Resourcesggc l
.ggl m 
lblWithoutConection	ggm Ä
)
ggÄ Å
;
ggÅ Ç
}hh 
catchii 
(ii 
SocketExceptionii "
exii# %
)ii% &
{jj 
HandleExceptionkk 
(kk  
exkk  "
,kk" #

Propertieskk$ .
.kk. /
	Resourceskk/ 8
.kk8 9 
lblWrongUpdateAvatarkk9 M
+kkN O
$strkkP U
+kkV W

PropertieskkX b
.kkb c
	Resourceskkc l
.kkl m 
lblWithoutConection	kkm Ä
)
kkÄ Å
;
kkÅ Ç
}ll 
}mm 	
privateoo 
voidoo 
SelectImageoo  
(oo  !
objectoo! '
senderoo( .
,oo. /%
SelectionChangedEventArgsoo0 I
eooJ K
)ooK L
{pp 	
ifqq 
(qq 
lxtImageSelectorqq  
.qq  !
SelectedItemqq! -
!=qq. 0
nullqq1 5
)qq5 6
{rr 
Bitmaptt 
bmptt 
=tt 
(tt 
Bitmaptt $
)tt$ %

Propertiestt% /
.tt/ 0
ResourcesImagett0 >
.tt> ?
ResourceManagertt? N
.ttN O
	GetObjectttO X
(ttX Y
lxtImageSelectorttY i
.tti j
SelectedItemttj v
.ttv w
ToStringttw 
(	tt Ä
)
ttÄ Å
)
ttÅ Ç
;
ttÇ É
BitmapSourcevv 
bmpImagevv %
=vv& '
Imagingvv( /
.vv/ 0)
CreateBitmapSourceFromHBitmapvv0 M
(vvM N
bmpww 
.ww 

GetHbitmapww "
(ww" #
)ww# $
,ww$ %
IntPtrxx 
.xx 
Zeroxx 
,xx  
	Int32Rectyy 
.yy 
Emptyyy #
,yy# $
BitmapSizeOptionszz %
.zz% &
FromEmptyOptionszz& 6
(zz6 7
)zz7 8
){{ 
;{{ 
imageProfile}} 
.}} 
Source}} #
=}}$ %
bmpImage}}& .
;}}. /
imageResource~~ 
=~~ 
lxtImageSelector~~  0
.~~0 1
SelectedItem~~1 =
.~~= >
ToString~~> F
(~~F G
)~~G H
;~~H I
} 
}
ÄÄ 	
private
ÇÇ 
void
ÇÇ 
ReadResource
ÇÇ !
(
ÇÇ! "
)
ÇÇ" #
{
ÉÉ 	
lxtImageSelector
ÑÑ 
.
ÑÑ 
Items
ÑÑ "
.
ÑÑ" #
Add
ÑÑ# &
(
ÑÑ& '
$str
ÑÑ' 0
)
ÑÑ0 1
;
ÑÑ1 2
lxtImageSelector
ÖÖ 
.
ÖÖ 
Items
ÖÖ "
.
ÖÖ" #
Add
ÖÖ# &
(
ÖÖ& '
$str
ÖÖ' 4
)
ÖÖ4 5
;
ÖÖ5 6
lxtImageSelector
ÜÜ 
.
ÜÜ 
Items
ÜÜ "
.
ÜÜ" #
Add
ÜÜ# &
(
ÜÜ& '
$str
ÜÜ' /
)
ÜÜ/ 0
;
ÜÜ0 1
lxtImageSelector
áá 
.
áá 
Items
áá "
.
áá" #
Add
áá# &
(
áá& '
$str
áá' 0
)
áá0 1
;
áá1 2
lxtImageSelector
àà 
.
àà 
Items
àà "
.
àà" #
Add
àà# &
(
àà& '
$str
àà' 0
)
àà0 1
;
àà1 2
lxtImageSelector
ââ 
.
ââ 
Items
ââ "
.
ââ" #
Add
ââ# &
(
ââ& '
$str
ââ' 3
)
ââ3 4
;
ââ4 5
lxtImageSelector
ää 
.
ää 
Items
ää "
.
ää" #
Add
ää# &
(
ää& '
$str
ää' 2
)
ää2 3
;
ää3 4
}
ãã 	
private
çç 
void
çç "
ImagenInitialization
çç )
(
çç) *
)
çç* +
{
éé 	
try
èè 
{
êê 
int
ëë 
idPlayer
ëë 
=
ëë 
UserSingleton
ëë ,
.
ëë, -
GetMainUser
ëë- 8
(
ëë8 9
)
ëë9 :
.
ëë: ;
IdPlayer
ëë; C
;
ëëC D*
ConsultUserInformationClient
íí ,%
consultInformationProxy
íí- D
=
ííE F
new
ííG J*
ConsultUserInformationClient
ííK g
(
ííg h
)
ííh i
;
ííi j
var
îî 

playerInfo
îî 
=
îî  %
consultInformationProxy
îî! 8
.
îî8 9
ConsultPlayerById
îî9 J
(
îîJ K
idPlayer
îîK S
)
îîS T
;
îîT U%
consultInformationProxy
ïï '
.
ïï' (
Close
ïï( -
(
ïï- .
)
ïï. /
;
ïï/ 0
if
óó 
(
óó 

playerInfo
óó 
.
óó 
	CodeEvent
óó (
==
óó) +!
ExceptionDictionary
óó, ?
.
óó? @
SUCCESFULL_EVENT
óó@ P
&&
óóQ S

playerInfo
óóT ^
.
óó^ _
ObjectSaved
óó_ j
is
óók m

PlayerPojo
óón x
)
óóx y
{
òò 
int
ôô 
imageId
ôô 
=
ôô  !

playerInfo
ôô" ,
.
ôô, -
ObjectSaved
ôô- 8
.
ôô8 9
IdActualAvatar
ôô9 G
;
ôôG H
string
öö 
	imageName
öö $
=
öö% &
imageIdMappings
öö' 6
.
öö6 7
FirstOrDefault
öö7 E
(
ööE F
x
ööF G
=>
ööH J
x
ööK L
.
ööL M
Value
ööM R
==
ööS U
imageId
ööV ]
)
öö] ^
.
öö^ _
Key
öö_ b
;
ööb c
if
õõ 
(
õõ 
!
õõ 
string
õõ 
.
õõ  
IsNullOrEmpty
õõ  -
(
õõ- .
	imageName
õõ. 7
)
õõ7 8
)
õõ8 9
{
úú 
Bitmap
ùù 
bmp
ùù "
=
ùù# $
(
ùù% &
Bitmap
ùù& ,
)
ùù, -

Properties
ùù- 7
.
ùù7 8
ResourcesImage
ùù8 F
.
ùùF G
ResourceManager
ùùG V
.
ùùV W
	GetObject
ùùW `
(
ùù` a
	imageName
ùùa j
)
ùùj k
;
ùùk l
BitmapSource
üü $
bmpImage
üü% -
=
üü. /
Imaging
üü0 7
.
üü7 8+
CreateBitmapSourceFromHBitmap
üü8 U
(
üüU V
bmp
†† 
.
††  

GetHbitmap
††  *
(
††* +
)
††+ ,
,
††, -
IntPtr
°° "
.
°°" #
Zero
°°# '
,
°°' (
	Int32Rect
¢¢ %
.
¢¢% &
Empty
¢¢& +
,
¢¢+ ,
BitmapSizeOptions
££ -
.
££- .
FromEmptyOptions
££. >
(
££> ?
)
££? @
)
§§ 
;
§§ 
imageProfile
¶¶ $
.
¶¶$ %
Source
¶¶% +
=
¶¶, -
bmpImage
¶¶. 6
;
¶¶6 7
}
ßß 
}
®® 
}
©© 
catch
™™ 
(
™™ '
EndpointNotFoundException
™™ ,
ex
™™- /
)
™™/ 0
{
´´ 
HandleException
¨¨ 
(
¨¨  
ex
¨¨  "
,
¨¨" #

Properties
¨¨$ .
.
¨¨. /
	Resources
¨¨/ 8
.
¨¨8 9!
lblEndPointNotFound
¨¨9 L
)
¨¨L M
;
¨¨M N
}
≠≠ 
catch
ÆÆ 
(
ÆÆ 1
#CommunicationObjectFaultedException
ÆÆ 6
ex
ÆÆ7 9
)
ÆÆ9 :
{
ØØ 
HandleException
∞∞ 
(
∞∞  
ex
∞∞  "
,
∞∞" #

Properties
∞∞$ .
.
∞∞. /
	Resources
∞∞/ 8
.
∞∞8 9&
lblComunicationException
∞∞9 Q
)
∞∞Q R
;
∞∞R S
}
±± 
catch
≤≤ 
(
≤≤ 
TimeoutException
≤≤ #
ex
≤≤$ &
)
≤≤& '
{
≥≥ 
HandleException
¥¥ 
(
¥¥  
ex
¥¥  "
,
¥¥" #

Properties
¥¥$ .
.
¥¥. /
	Resources
¥¥/ 8
.
¥¥8 9
lblTimeException
¥¥9 I
)
¥¥I J
;
¥¥J K
}
µµ 
catch
∂∂ 
(
∂∂ $
CommunicationException
∂∂ )
ex
∂∂* ,
)
∂∂, -
{
∑∑ 
HandleException
∏∏ 
(
∏∏  
ex
∏∏  "
,
∏∏" #

Properties
∏∏$ .
.
∏∏. /
	Resources
∏∏/ 8
.
∏∏8 9!
lblWithoutConection
∏∏9 L
)
∏∏L M
;
∏∏M N
}
ππ 
catch
∫∫ 
(
∫∫ 
SocketException
∫∫ "
ex
∫∫# %
)
∫∫% &
{
ªª 
HandleException
ºº 
(
ºº  
ex
ºº  "
,
ºº" #

Properties
ºº$ .
.
ºº. /
	Resources
ºº/ 8
.
ºº8 9"
lblWrongUpdateAvatar
ºº9 M
)
ººM N
;
ººN O
}
ΩΩ 
}
ææ 	
private
øø 
void
øø %
InitializeImageMappings
øø ,
(
øø, -
)
øø- .
{
¿¿ 	
imageIdMappings
¡¡ 
=
¡¡ 
new
¡¡ !

Dictionary
¡¡" ,
<
¡¡, -
string
¡¡- 3
,
¡¡3 4
int
¡¡5 8
>
¡¡8 9
{
¬¬ 
{
√√ 
$str
√√ 
,
√√ 
$num
√√ 
}
√√  
,
√√  !
{
ƒƒ 
$str
ƒƒ 
,
ƒƒ  
$num
ƒƒ! "
}
ƒƒ# $
,
ƒƒ$ %
{
≈≈ 
$str
≈≈ 
,
≈≈ 
$num
≈≈ 
}
≈≈ 
,
≈≈  
{
∆∆ 
$str
∆∆ 
,
∆∆ 
$num
∆∆ 
}
∆∆ 
,
∆∆ 
{
«« 
$str
«« 
,
«« 
$num
«« 
}
«« 
,
«« 
{
»» 
$str
»» 
,
»» 
$num
»» 
}
»»  !
,
»»! "
{
…… 
$str
…… 
,
…… 
$num
…… 
}
……  
}
   
;
   
}
ÀÀ 	
private
ÕÕ 
void
ÕÕ !
ClickViewAvatarList
ÕÕ (
(
ÕÕ( )
object
ÕÕ) /
sender
ÕÕ0 6
,
ÕÕ6 7"
MouseButtonEventArgs
ÕÕ8 L
e
ÕÕM N
)
ÕÕN O
{
ŒŒ 	
brdAvatarList
œœ 
.
œœ 

Visibility
œœ $
=
œœ% &

Visibility
œœ' 1
.
œœ1 2
Visible
œœ2 9
;
œœ9 : 
imgViewAvartarList
–– 
.
–– 

Visibility
–– )
=
––* +

Visibility
––, 6
.
––6 7
Hidden
––7 =
;
––= >
}
—— 	
private
”” 
void
”” "
ClickCloseAvatarList
”” )
(
””) *
object
””* 0
sender
””1 7
,
””7 8"
MouseButtonEventArgs
””9 M
e
””N O
)
””O P
{
‘‘ 	
brdAvatarList
’’ 
.
’’ 

Visibility
’’ $
=
’’% &

Visibility
’’' 1
.
’’1 2
Hidden
’’2 8
;
’’8 9 
imgViewAvartarList
÷÷ 
.
÷÷ 

Visibility
÷÷ )
=
÷÷* +

Visibility
÷÷, 6
.
÷÷6 7
Visible
÷÷7 >
;
÷÷> ?
}
◊◊ 	
private
ŸŸ 
void
ŸŸ 
ClickSaveNewEmail
ŸŸ &
(
ŸŸ& '
object
ŸŸ' -
sender
ŸŸ. 4
,
ŸŸ4 5"
MouseButtonEventArgs
ŸŸ6 J
e
ŸŸK L
)
ŸŸL M
{
⁄⁄ 	
try
€€ 
{
‹‹ 
UserManagerClient
›› !
useManagerProxy
››" 1
=
››2 3
new
››4 7
UserManagerClient
››8 I
(
››I J
)
››J K
;
››K L
int
ﬁﬁ 
idUser
ﬁﬁ 
=
ﬁﬁ 
UserSingleton
ﬁﬁ *
.
ﬁﬁ* +
GetMainUser
ﬁﬁ+ 6
(
ﬁﬁ6 7
)
ﬁﬁ7 8
.
ﬁﬁ8 9
IdUser
ﬁﬁ9 ?
;
ﬁﬁ? @
string
ﬂﬂ 
email
ﬂﬂ 
=
ﬂﬂ 
txbEditEmail
ﬂﬂ +
.
ﬂﬂ+ ,
Text
ﬂﬂ, 0
.
ﬂﬂ0 1
Trim
ﬂﬂ1 5
(
ﬂﬂ5 6
)
ﬂﬂ6 7
;
ﬂﬂ7 8
if
·· 
(
·· 
string
·· 
.
·· 
IsNullOrEmpty
·· (
(
··( )
email
··) .
)
··. /
)
··/ 0
{
‚‚ 
LblWrongEmail
„„ !
.
„„! "
Content
„„" )
=
„„* +

Properties
„„, 6
.
„„6 7
	Resources
„„7 @
.
„„@ A
lblWrongEmail
„„A N
;
„„N O
LblWrongEmail
‰‰ !
.
‰‰! "

Visibility
‰‰" ,
=
‰‰- .

Visibility
‰‰/ 9
.
‰‰9 :
Visible
‰‰: A
;
‰‰A B
return
ÂÂ 
;
ÂÂ 
}
ÊÊ 
if
ÁÁ 
(
ÁÁ 
!
ÁÁ 
IsValidEmail
ÁÁ !
(
ÁÁ! "
email
ÁÁ" '
)
ÁÁ' (
)
ÁÁ( )
{
ËË 
LblWrongEmail
ÈÈ !
.
ÈÈ! "
Content
ÈÈ" )
=
ÈÈ* +

Properties
ÈÈ, 6
.
ÈÈ6 7
	Resources
ÈÈ7 @
.
ÈÈ@ A
lblWrongFormat
ÈÈA O
;
ÈÈO P
LblWrongEmail
ÍÍ !
.
ÍÍ! "

Visibility
ÍÍ" ,
=
ÍÍ- .

Visibility
ÍÍ/ 9
.
ÍÍ9 :
Visible
ÍÍ: A
;
ÍÍA B
return
ÎÎ 
;
ÎÎ 
}
ÏÏ 
if
ÌÌ 
(
ÌÌ !
CheckEmailExistence
ÌÌ '
(
ÌÌ' (
email
ÌÌ( -
)
ÌÌ- .
==
ÌÌ/ 1
DISALLOWED_VALUES
ÌÌ2 C
)
ÌÌC D
{
ÓÓ 
LblWrongEmail
ÔÔ !
.
ÔÔ! "
Content
ÔÔ" )
=
ÔÔ* +

Properties
ÔÔ, 6
.
ÔÔ6 7
	Resources
ÔÔ7 @
.
ÔÔ@ A
lblEmailExistInBD
ÔÔA R
;
ÔÔR S
LblWrongEmail
 !
.
! "

Visibility
" ,
=
- .

Visibility
/ 9
.
9 :
Visible
: A
;
A B
return
ÒÒ 
;
ÒÒ 
}
ÚÚ 
LblWrongEmail
ÙÙ 
.
ÙÙ 

Visibility
ÙÙ (
=
ÙÙ) *

Visibility
ÙÙ+ 5
.
ÙÙ5 6
	Collapsed
ÙÙ6 ?
;
ÙÙ? @
if
ˆˆ 
(
ˆˆ %
CheckEmailAddressFormat
ˆˆ +
(
ˆˆ+ ,
)
ˆˆ, -
==
ˆˆ. 0
ALLOWED_VALUES
ˆˆ1 ?
&&
ˆˆ@ B!
CheckEmailExistence
˜˜ '
(
˜˜' (
email
˜˜( -
)
˜˜- .
==
˜˜/ 1
ALLOWED_VALUES
˜˜2 @
)
˜˜@ A
{
¯¯ 
var
˘˘ 
result
˘˘ 
=
˘˘  
useManagerProxy
˘˘! 0
.
˘˘0 1
UpdateEmailUser
˘˘1 @
(
˘˘@ A
idUser
˘˘A G
,
˘˘G H
email
˘˘I N
)
˘˘N O
;
˘˘O P
if
˙˙ 
(
˙˙ 
result
˙˙ 
!=
˙˙ !
null
˙˙" &
)
˙˙& '
{
˚˚ 
UserSingleton
¸¸ %
.
¸¸% &
GetMainUser
¸¸& 1
(
¸¸1 2
)
¸¸2 3
.
¸¸3 4
UpdateEmailData
¸¸4 C
(
¸¸C D
email
¸¸D I
)
¸¸I J
;
¸¸J K
dialogMessage
˝˝ %
=
˝˝& '
new
˝˝( +,
InformationMessageDialogWindow
˝˝, J
(
˝˝J K

Properties
˝˝K U
.
˝˝U V
	Resources
˝˝V _
.
˝˝_ `!
txbInformationTitle
˝˝` s
,
˝˝s t

Properties
˝˝u 
.˝˝ Ä
	Resources˝˝Ä â
.˝˝â ä
lblUpdateEmail˝˝ä ò
,˝˝ò ô
Application˝˝ö •
.˝˝• ¶
Current˝˝¶ ≠
.˝˝≠ Æ

MainWindow˝˝Æ ∏
)˝˝∏ π
;˝˝π ∫
MainMenu
˛˛  
mainMenuPage
˛˛! -
=
˛˛. /
new
˛˛0 3
MainMenu
˛˛4 <
(
˛˛< =
)
˛˛= >
;
˛˛> ?
this
ˇˇ 
.
ˇˇ 
NavigationService
ˇˇ .
.
ˇˇ. /
Navigate
ˇˇ/ 7
(
ˇˇ7 8
mainMenuPage
ˇˇ8 D
)
ˇˇD E
;
ˇˇE F
NavigationService
ÄÄ )
.
ÄÄ) *
RemoveBackEntry
ÄÄ* 9
(
ÄÄ9 :
)
ÄÄ: ;
;
ÄÄ; <
}
ÅÅ 
else
ÇÇ 
{
ÉÉ 
RefreshWindow
ÑÑ %
(
ÑÑ% &
)
ÑÑ& '
;
ÑÑ' (
dialogMessage
ÖÖ %
=
ÖÖ& '
new
ÖÖ( +&
ErrorMessageDialogWindow
ÖÖ, D
(
ÖÖD E

Properties
ÖÖE O
.
ÖÖO P
	Resources
ÖÖP Y
.
ÖÖY Z
txbErrorTitle
ÖÖZ g
,
ÖÖg h

Properties
ÖÖi s
.
ÖÖs t
	Resources
ÖÖt }
.
ÖÖ} ~"
lblWrongUpdateEmailÖÖ~ ë
,ÖÖë í
ApplicationÖÖì û
.ÖÖû ü
CurrentÖÖü ¶
.ÖÖ¶ ß

MainWindowÖÖß ±
)ÖÖ± ≤
;ÖÖ≤ ≥
}
ÜÜ 
useManagerProxy
áá #
.
áá# $
Close
áá$ )
(
áá) *
)
áá* +
;
áá+ ,
}
àà 
}
ââ 
catch
ää 
(
ää '
EndpointNotFoundException
ää ,
ex
ää- /
)
ää/ 0
{
ãã 
HandleException
åå 
(
åå  
ex
åå  "
,
åå" #

Properties
åå$ .
.
åå. /
	Resources
åå/ 8
.
åå8 9!
lblWrongUpdateEmail
åå9 L
+
ååM N
$str
ååO T
+
ååU V

Properties
ååW a
.
ååa b
	Resources
ååb k
.
ååk l!
lblEndPointNotFound
åål 
)åå Ä
;ååÄ Å
}
çç 
catch
éé 
(
éé 1
#CommunicationObjectFaultedException
éé 6
ex
éé7 9
)
éé9 :
{
èè 
HandleException
êê 
(
êê  
ex
êê  "
,
êê" #

Properties
êê$ .
.
êê. /
	Resources
êê/ 8
.
êê8 9!
lblWrongUpdateEmail
êê9 L
+
êêM N
$str
êêO T
+
êêU V

Properties
êêW a
.
êêa b
	Resources
êêb k
.
êêk l'
lblComunicationExceptionêêl Ñ
)êêÑ Ö
;êêÖ Ü
}
ëë 
catch
íí 
(
íí 
TimeoutException
íí #
ex
íí$ &
)
íí& '
{
ìì 
HandleException
îî 
(
îî  
ex
îî  "
,
îî" #

Properties
îî$ .
.
îî. /
	Resources
îî/ 8
.
îî8 9!
lblWrongUpdateEmail
îî9 L
+
îîM N
$str
îîO T
+
îîU V

Properties
îîW a
.
îîa b
	Resources
îîb k
.
îîk l
lblTimeException
îîl |
)
îî| }
;
îî} ~
}
ïï 
catch
ññ 
(
ññ $
CommunicationException
ññ )
ex
ññ* ,
)
ññ, -
{
óó 
HandleException
òò 
(
òò  
ex
òò  "
,
òò" #

Properties
òò$ .
.
òò. /
	Resources
òò/ 8
.
òò8 9!
lblWrongUpdateEmail
òò9 L
+
òòM N
$str
òòO T
+
òòU V

Properties
òòW a
.
òòa b
	Resources
òòb k
.
òòk l!
lblWithoutConection
òòl 
)òò Ä
;òòÄ Å
}
ôô 
catch
öö 
(
öö 
SocketException
öö "
ex
öö# %
)
öö% &
{
õõ 
HandleException
úú 
(
úú  
ex
úú  "
,
úú" #

Properties
úú$ .
.
úú. /
	Resources
úú/ 8
.
úú8 9"
lblWrongUpdateAvatar
úú9 M
+
úúN O
$str
úúP U
+
úúV W

Properties
úúX b
.
úúb c
	Resources
úúc l
.
úúl m"
lblWithoutConectionúúm Ä
)úúÄ Å
;úúÅ Ç
}
ùù 
}
ûû 	
private
üü 
void
üü 
ClickSaveNewName
üü %
(
üü% &
object
üü& ,
sender
üü- 3
,
üü3 4"
MouseButtonEventArgs
üü5 I
e
üüJ K
)
üüK L
{
†† 	
try
°° 
{
¢¢ 
UserManagerClient
££ !
useManagerProxy
££" 1
=
££2 3
new
££4 7
UserManagerClient
££8 I
(
££I J
)
££J K
;
££K L
String
§§ 

nameEdited
§§ !
=
§§" #
txbEditName
§§$ /
.
§§/ 0
Text
§§0 4
;
§§4 5
int
•• 
idUser
•• 
=
•• 
UserSingleton
•• *
.
••* +
GetMainUser
••+ 6
(
••6 7
)
••7 8
.
••8 9
IdUser
••9 ?
;
••? @
if
¶¶ 
(
¶¶ 
string
¶¶ 
.
¶¶ 
IsNullOrEmpty
¶¶ (
(
¶¶( )

nameEdited
¶¶) 3
)
¶¶3 4
)
¶¶4 5
{
ßß 
LblWrongName
®®  
.
®®  !
Content
®®! (
=
®®) *

Properties
®®+ 5
.
®®5 6
	Resources
®®6 ?
.
®®? @
lblWrongName
®®@ L
;
®®L M
LblWrongName
©©  
.
©©  !

Visibility
©©! +
=
©©, -

Visibility
©©. 8
.
©©8 9
Visible
©©9 @
;
©©@ A
return
™™ 
;
™™ 
}
´´ 
LblWrongName
¨¨ 
.
¨¨ 

Visibility
¨¨ '
=
¨¨( )

Visibility
¨¨* 4
.
¨¨4 5
	Collapsed
¨¨5 >
;
¨¨> ?
var
ÆÆ 
result
ÆÆ 
=
ÆÆ 
useManagerProxy
ÆÆ ,
.
ÆÆ, -#
UpdateUserInformation
ÆÆ- B
(
ÆÆB C
idUser
ÆÆC I
,
ÆÆI J

nameEdited
ÆÆK U
)
ÆÆU V
;
ÆÆV W
if
ØØ 
(
ØØ 
result
ØØ 
!=
ØØ 
null
ØØ "
)
ØØ" #
{
∞∞ 
UserSingleton
±± !
.
±±! "
GetMainUser
±±" -
(
±±- .
)
±±. /
.
±±/ 0
UpdateNameData
±±0 >
(
±±> ?

nameEdited
±±? I
)
±±I J
;
±±J K
dialogMessage
≤≤ !
=
≤≤" #
new
≤≤$ ',
InformationMessageDialogWindow
≤≤( F
(
≤≤F G

Properties
≤≤G Q
.
≤≤Q R
	Resources
≤≤R [
.
≤≤[ \!
txbInformationTitle
≤≤\ o
,
≤≤o p

Properties
≤≤q {
.
≤≤{ |
	Resources≤≤| Ö
.≤≤Ö Ü
lblUpdateName≤≤Ü ì
,≤≤ì î
Application≤≤ï †
.≤≤† °
Current≤≤° ®
.≤≤® ©

MainWindow≤≤© ≥
)≤≤≥ ¥
;≤≤¥ µ
MainMenu
≥≥ 
mainMenuPage
≥≥ )
=
≥≥* +
new
≥≥, /
MainMenu
≥≥0 8
(
≥≥8 9
)
≥≥9 :
;
≥≥: ;
this
¥¥ 
.
¥¥ 
NavigationService
¥¥ *
.
¥¥* +
Navigate
¥¥+ 3
(
¥¥3 4
mainMenuPage
¥¥4 @
)
¥¥@ A
;
¥¥A B
NavigationService
µµ %
.
µµ% &
RemoveBackEntry
µµ& 5
(
µµ5 6
)
µµ6 7
;
µµ7 8
}
∂∂ 
else
∑∑ 
{
∏∏ 
dialogMessage
ππ !
=
ππ" #
new
ππ$ '&
ErrorMessageDialogWindow
ππ( @
(
ππ@ A

Properties
ππA K
.
ππK L
	Resources
ππL U
.
ππU V
txbErrorTitle
ππV c
,
ππc d

Properties
ππe o
.
ππo p
	Resources
ππp y
.
ππy z!
lblWrongUpdateNameππz å
,ππå ç
Applicationππé ô
.ππô ö
Currentππö °
.ππ° ¢

MainWindowππ¢ ¨
)ππ¨ ≠
;ππ≠ Æ
}
∫∫ 
useManagerProxy
ªª 
.
ªª  
Close
ªª  %
(
ªª% &
)
ªª& '
;
ªª' (
}
ºº 
catch
ΩΩ 
(
ΩΩ '
EndpointNotFoundException
ΩΩ ,
ex
ΩΩ- /
)
ΩΩ/ 0
{
ææ 
HandleException
øø 
(
øø  
ex
øø  "
,
øø" #

Properties
øø$ .
.
øø. /
	Resources
øø/ 8
.
øø8 9 
lblWrongUpdateName
øø9 K
+
øøL M
$str
øøN S
+
øøT U

Properties
øøV `
.
øø` a
	Resources
øøa j
.
øøj k!
lblEndPointNotFound
øøk ~
)
øø~ 
;øø Ä
}
¿¿ 
catch
¡¡ 
(
¡¡ 1
#CommunicationObjectFaultedException
¡¡ 6
ex
¡¡7 9
)
¡¡9 :
{
¬¬ 
HandleException
√√ 
(
√√  
ex
√√  "
,
√√" #

Properties
√√$ .
.
√√. /
	Resources
√√/ 8
.
√√8 9 
lblWrongUpdateName
√√9 K
+
√√L M
$str
√√N S
+
√√T U

Properties
√√V `
.
√√` a
	Resources
√√a j
.
√√j k'
lblComunicationException√√k É
)√√É Ñ
;√√Ñ Ö
}
ƒƒ 
catch
≈≈ 
(
≈≈ 
TimeoutException
≈≈ #
ex
≈≈$ &
)
≈≈& '
{
∆∆ 
HandleException
«« 
(
««  
ex
««  "
,
««" #

Properties
««$ .
.
««. /
	Resources
««/ 8
.
««8 9 
lblWrongUpdateName
««9 K
+
««L M
$str
««N S
+
««T U

Properties
««V `
.
««` a
	Resources
««a j
.
««j k
lblTimeException
««k {
)
««{ |
;
««| }
}
»» 
catch
…… 
(
…… $
CommunicationException
…… )
ex
……* ,
)
……, -
{
   
HandleException
ÀÀ 
(
ÀÀ  
ex
ÀÀ  "
,
ÀÀ" #

Properties
ÀÀ$ .
.
ÀÀ. /
	Resources
ÀÀ/ 8
.
ÀÀ8 9 
lblWrongUpdateName
ÀÀ9 K
+
ÀÀL M
$str
ÀÀN S
+
ÀÀT U

Properties
ÀÀV `
.
ÀÀ` a
	Resources
ÀÀa j
.
ÀÀj k!
lblWithoutConection
ÀÀk ~
)
ÀÀ~ 
;ÀÀ Ä
}
ÃÃ 
catch
ÕÕ 
(
ÕÕ 
SocketException
ÕÕ "
ex
ÕÕ# %
)
ÕÕ% &
{
ŒŒ 
HandleException
œœ 
(
œœ  
ex
œœ  "
,
œœ" #

Properties
œœ$ .
.
œœ. /
	Resources
œœ/ 8
.
œœ8 9"
lblWrongUpdateAvatar
œœ9 M
+
œœN O
$str
œœP U
+
œœV W

Properties
œœX b
.
œœb c
	Resources
œœc l
.
œœl m"
lblWithoutConectionœœm Ä
)œœÄ Å
;œœÅ Ç
}
–– 
}
—— 	
private
““ 
int
““ %
CheckEmailAddressFormat
““ +
(
““+ ,
)
““, -
{
”” 	
try
‘‘ 
{
’’ '
RegularExpressionsLibrary
÷÷ )
regexInstance
÷÷* 7
=
÷÷8 9
new
÷÷: ='
RegularExpressionsLibrary
÷÷> W
(
÷÷W X
)
÷÷X Y
;
÷÷Y Z
Regex
◊◊ 
regexExpression
◊◊ %
=
◊◊& '
new
◊◊( +
Regex
◊◊, 1
(
◊◊1 2
regexInstance
◊◊2 ?
.
◊◊? @!
GetEMAIL_RULES_CHAR
◊◊@ S
(
◊◊S T
)
◊◊T U
)
◊◊U V
;
◊◊V W
int
ÿÿ 
answer
ÿÿ 
;
ÿÿ 
String
ŸŸ 
email
ŸŸ 
=
ŸŸ 
txbEditEmail
ŸŸ +
.
ŸŸ+ ,
Text
ŸŸ, 0
.
ŸŸ0 1
Trim
ŸŸ1 5
(
ŸŸ5 6
)
ŸŸ6 7
;
ŸŸ7 8
if
⁄⁄ 
(
⁄⁄ 
!
⁄⁄ 
Regex
⁄⁄ 
.
⁄⁄ 
IsMatch
⁄⁄ "
(
⁄⁄" #
email
⁄⁄# (
,
⁄⁄( )
regexExpression
⁄⁄* 9
.
⁄⁄9 :
ToString
⁄⁄: B
(
⁄⁄B C
)
⁄⁄C D
,
⁄⁄D E
RegexOptions
⁄⁄F R
.
⁄⁄R S

IgnoreCase
⁄⁄S ]
,
⁄⁄] ^
TimeSpan
⁄⁄_ g
.
⁄⁄g h
FromMilliseconds
⁄⁄h x
(
⁄⁄x y
$num
⁄⁄y |
)
⁄⁄| }
)
⁄⁄} ~
)
⁄⁄~ 
{
€€ 
lblEmailWarning
‹‹ #
.
‹‹# $
Content
‹‹$ +
=
‹‹, -

Properties
‹‹. 8
.
‹‹8 9
	Resources
‹‹9 B
.
‹‹B C
lblInvalidEmail
‹‹C R
;
‹‹R S
lblEmailWarning
›› #
.
››# $

Visibility
››$ .
=
››/ 0

Visibility
››1 ;
.
››; <
Visible
››< C
;
››C D
answer
ﬁﬁ 
=
ﬁﬁ 
DISALLOWED_VALUES
ﬁﬁ .
;
ﬁﬁ. /
}
ﬂﬂ 
else
‡‡ 
{
·· 
lblEmailWarning
‚‚ #
.
‚‚# $
Content
‚‚$ +
=
‚‚, -
string
‚‚. 4
.
‚‚4 5
Empty
‚‚5 :
;
‚‚: ;
lblEmailWarning
„„ #
.
„„# $

Visibility
„„$ .
=
„„/ 0

Visibility
„„1 ;
.
„„; <
	Collapsed
„„< E
;
„„E F
answer
‰‰ 
=
‰‰ 
ALLOWED_VALUES
‰‰ +
;
‰‰+ ,
}
ÂÂ 
return
ÊÊ 
answer
ÊÊ 
;
ÊÊ 
}
ÁÁ 
catch
ËË 
(
ËË (
RegexMatchTimeoutException
ËË -
ex
ËË. 0
)
ËË0 1
{
ÈÈ %
ExceptionHandlerForLogs
ÍÍ '
.
ÍÍ' (
LogException
ÍÍ( 4
(
ÍÍ4 5
ex
ÍÍ5 7
,
ÍÍ7 8!
ExceptionDictionary
ÍÍ9 L
.
ÍÍL M
ERROR
ÍÍM R
)
ÍÍR S
;
ÍÍS T
return
ÎÎ 
DISALLOWED_VALUES
ÎÎ (
;
ÎÎ( )
}
ÏÏ 
}
ÓÓ 	
private
 
int
 !
CheckEmailExistence
 '
(
' (
string
( .
email
/ 4
)
4 5
{
ÒÒ 	
try
ÚÚ 
{
ÛÛ )
ValidateUserExistanceClient
ÙÙ +
dataCheckerProxy
ÙÙ, <
=
ÙÙ= >
new
ÙÙ? B
(
ÙÙB C
)
ÙÙC D
;
ÙÙD E
GenericClassOfint
ıı !
	userIsNew
ıı" +
=
ıı, -
dataCheckerProxy
ıı. >
.
ıı> ?
EmailAlreadyExist
ıı? P
(
ııP Q
email
ııQ V
)
ııV W
;
ııW X
dataCheckerProxy
ˆˆ  
.
ˆˆ  !
Close
ˆˆ! &
(
ˆˆ& '
)
ˆˆ' (
;
ˆˆ( )
if
˜˜ 
(
˜˜ 
	userIsNew
˜˜ 
.
˜˜ 
	CodeEvent
˜˜ '
==
˜˜( *!
ExceptionDictionary
˜˜+ >
.
˜˜> ?
SUCCESFULL_EVENT
˜˜? O
||
˜˜P R
	userIsNew
˜˜S \
.
˜˜\ ]
	CodeEvent
˜˜] f
==
˜˜g i!
ExceptionDictionary
˜˜j }
.
˜˜} ~!
UNSUCCESFULL_EVENT˜˜~ ê
||˜˜ë ì
	userIsNew˜˜î ù
.˜˜ù û
ObjectSaved˜˜û ©
==˜˜™ ¨
ALLOWED_VALUES˜˜≠ ª
)˜˜ª º
{
¯¯ 
return
˘˘ 
ALLOWED_VALUES
˘˘ )
;
˘˘) *
}
˙˙ 
else
˚˚ 
{
¸¸ 
if
˝˝ 
(
˝˝ 
	userIsNew
˝˝ !
.
˝˝! "
ObjectSaved
˝˝" -
==
˝˝. 0!
ExceptionDictionary
˝˝1 D
.
˝˝D E!
EMAIL_ALREADY_EXIST
˝˝E X
)
˝˝X Y
{
˛˛ 
dialogMessage
ˇˇ %
=
ˇˇ& '
new
ˇˇ( +&
ErrorMessageDialogWindow
ˇˇ, D
(
ˇˇD E

Properties
ˇˇE O
.
ˇˇO P
	Resources
ˇˇP Y
.
ˇˇY Z
txbErrorTitle
ˇˇZ g
,
ˇˇg h

Properties
ˇˇi s
.
ˇˇs t
	Resources
ˇˇt }
.
ˇˇ} ~
lblRepeatedEmailˇˇ~ é
,ˇˇé è
Applicationˇˇê õ
.ˇˇõ ú
Currentˇˇú £
.ˇˇ£ §

MainWindowˇˇ§ Æ
)ˇˇÆ Ø
;ˇˇØ ∞
}
ÄÄ 
else
ÅÅ 
if
ÅÅ 
(
ÅÅ 
	userIsNew
ÅÅ &
.
ÅÅ& '
ObjectSaved
ÅÅ' 2
==
ÅÅ3 5!
ExceptionDictionary
ÅÅ6 I
.
ÅÅI J$
USERNAME_ALREADY_EXIST
ÅÅJ `
)
ÅÅ` a
{
ÇÇ 
dialogMessage
ÉÉ %
=
ÉÉ& '
new
ÉÉ( +&
ErrorMessageDialogWindow
ÉÉ, D
(
ÉÉD E

Properties
ÉÉE O
.
ÉÉO P
	Resources
ÉÉP Y
.
ÉÉY Z
txbErrorTitle
ÉÉZ g
,
ÉÉg h

Properties
ÉÉi s
.
ÉÉs t
	Resources
ÉÉt }
.
ÉÉ} ~"
lblRepeatedUserNameÉÉ~ ë
,ÉÉë í
ApplicationÉÉì û
.ÉÉû ü
CurrentÉÉü ¶
.ÉÉ¶ ß

MainWindowÉÉß ±
)ÉÉ± ≤
;ÉÉ≤ ≥
}
ÑÑ 
else
ÖÖ 
{
ÜÜ 
dialogMessage
áá %
=
áá& '
new
áá( +&
ErrorMessageDialogWindow
áá, D
(
ááD E

Properties
ááE O
.
ááO P
	Resources
ááP Y
.
ááY Z
txbErrorTitle
ááZ g
,
áág h

Properties
áái s
.
áás t
	Resources
áát }
.
áá} ~#
lblWrongEmailRepitedáá~ í
,ááí ì
Applicationááî ü
.ááü †
Currentáá† ß
.ááß ®

MainWindowáá® ≤
)áá≤ ≥
;áá≥ ¥
CloseWindow
àà #
(
àà# $
)
àà$ %
;
àà% &
}
ââ 
return
ää 
DISALLOWED_VALUES
ää ,
;
ää, -
}
ãã 
}
åå 
catch
çç 
(
çç '
EndpointNotFoundException
çç ,
)
çç, -
{
éé 
throw
èè 
new
èè '
EndpointNotFoundException
èè 3
(
èè3 4
)
èè4 5
;
èè5 6
}
êê 
catch
ëë 
(
ëë 1
#CommunicationObjectFaultedException
ëë 6
)
ëë6 7
{
íí 
throw
ìì 
new
ìì $
CommunicationException
ìì 0
(
ìì0 1
)
ìì1 2
;
ìì2 3
}
îî 
catch
ïï 
(
ïï 
TimeoutException
ïï #
)
ïï# $
{
ññ 
throw
óó 
new
óó 
TimeoutException
óó *
(
óó* +
)
óó+ ,
;
óó, -
}
òò 
catch
ôô 
(
ôô $
CommunicationException
ôô )
)
ôô) *
{
öö 
throw
õõ 
new
õõ $
CommunicationException
õõ 0
(
õõ0 1
)
õõ1 2
;
õõ2 3
}
úú 
catch
ùù 
(
ùù 
SocketException
ùù "
)
ùù" #
{
ûû 
throw
üü 
new
üü 
SocketException
üü )
(
üü) *
)
üü* +
;
üü+ ,
}
†† 
}
°° 	
private
££ 
void
££ "
ClickBackToMaminMenu
££ )
(
££) *
object
££* 0
sender
££1 7
,
££7 8"
MouseButtonEventArgs
££9 M
e
££N O
)
££O P
{
§§ 	
CloseWindow
•• 
(
•• 
)
•• 
;
•• 
}
¶¶ 	
private
ßß 
void
ßß 
CloseWindow
ßß  
(
ßß  !
)
ßß! "
{
®® 	
MainMenu
©© 
mainMenuPage
©© !
=
©©" #
new
©©$ '
MainMenu
©©( 0
(
©©0 1
)
©©1 2
;
©©2 3
this
™™ 
.
™™ 
NavigationService
™™ "
.
™™" #
Navigate
™™# +
(
™™+ ,
mainMenuPage
™™, 8
)
™™8 9
;
™™9 :
NavigationService
´´ 
.
´´ 
RemoveBackEntry
´´ -
(
´´- .
)
´´. /
;
´´/ 0
}
¨¨ 	
private
ÆÆ 
void
ÆÆ 
RefreshWindow
ÆÆ "
(
ÆÆ" #
)
ÆÆ# $
{
ØØ 	
EditUserProfile
∞∞ !
editUserProfilePage
∞∞ /
=
∞∞0 1
new
∞∞2 5
EditUserProfile
∞∞6 E
(
∞∞E F
)
∞∞F G
;
∞∞G H
this
±± 
.
±± 
NavigationService
±± "
.
±±" #
Navigate
±±# +
(
±±+ ,!
editUserProfilePage
±±, ?
)
±±? @
;
±±@ A
NavigationService
≤≤ 
.
≤≤ 
RemoveBackEntry
≤≤ -
(
≤≤- .
)
≤≤. /
;
≤≤/ 0
}
≥≥ 	
private
µµ 
void
µµ 
HandleException
µµ $
(
µµ$ %
	Exception
µµ% .
ex
µµ/ 1
,
µµ1 2
string
µµ3 9
errorMessage
µµ: F
)
µµF G
{
∂∂ 	%
ExceptionHandlerForLogs
∑∑ #
.
∑∑# $
LogException
∑∑$ 0
(
∑∑0 1
ex
∑∑1 3
,
∑∑3 4!
ExceptionDictionary
∑∑5 H
.
∑∑H I
FATAL_EXCEPTION
∑∑I X
)
∑∑X Y
;
∑∑Y Z
dialogMessage
∏∏ 
=
∏∏ 
new
∏∏ &
ErrorMessageDialogWindow
∏∏  8
(
∏∏8 9

Properties
∏∏9 C
.
∏∏C D
	Resources
∏∏D M
.
∏∏M N
txbErrorTitle
∏∏N [
,
∏∏[ \
errorMessage
∏∏] i
,
∏∏i j
Application
∏∏k v
.
∏∏v w
Current
∏∏w ~
.
∏∏~ 

MainWindow∏∏ â
)∏∏â ä
;∏∏ä ã
CloseWindow
ππ 
(
ππ 
)
ππ 
;
ππ 
}
∫∫ 	
private
ªª 
bool
ªª 
IsValidEmail
ªª !
(
ªª! "
string
ªª" (
email
ªª) .
)
ªª. /
{
ºº 	
try
ΩΩ 
{
ææ '
RegularExpressionsLibrary
øø )
regexInstance
øø* 7
=
øø8 9
new
øø: ='
RegularExpressionsLibrary
øø> W
(
øøW X
)
øøX Y
;
øøY Z
Regex
¿¿ 
regexExpression
¿¿ %
=
¿¿& '
new
¿¿( +
Regex
¿¿, 1
(
¿¿1 2
regexInstance
¿¿2 ?
.
¿¿? @!
GetEMAIL_RULES_CHAR
¿¿@ S
(
¿¿S T
)
¿¿T U
)
¿¿U V
;
¿¿V W
return
¡¡ 
Regex
¡¡ 
.
¡¡ 
IsMatch
¡¡ $
(
¡¡$ %
email
¡¡% *
,
¡¡* +
regexExpression
¡¡, ;
.
¡¡; <
ToString
¡¡< D
(
¡¡D E
)
¡¡E F
,
¡¡F G
RegexOptions
¡¡H T
.
¡¡T U

IgnoreCase
¡¡U _
,
¡¡_ `
TimeSpan
¡¡a i
.
¡¡i j
FromMilliseconds
¡¡j z
(
¡¡z {
$num
¡¡{ ~
)
¡¡~ 
)¡¡ Ä
;¡¡Ä Å
}
¬¬ 
catch
√√ 
(
√√ (
RegexMatchTimeoutException
√√ -
ex
√√. 0
)
√√0 1
{
ƒƒ %
ExceptionHandlerForLogs
≈≈ '
.
≈≈' (
LogException
≈≈( 4
(
≈≈4 5
ex
≈≈5 7
,
≈≈7 8!
ExceptionDictionary
≈≈9 L
.
≈≈L M
ERROR
≈≈M R
)
≈≈R S
;
≈≈S T
return
∆∆ 
false
∆∆ 
;
∆∆ 
}
«« 
}
…… 	
}
   
}ÀÀ òª
pC:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameClient\Pages\enterGameWithCode.xaml.cs
	namespace 	
JeopardyGame
 
. 
Pages 
{ 
public 

partial 
class 
enterGameWithCode *
:+ ,
Page- 1
,1 2$
ICheckUserLivingCallback3 K
{ 
private 
Window 
windowBehind #
;# $
private   
Window   
dialogMessage   $
;  $ %
UserSingleton!! 
userSingleton!! #
=!!$ %
UserSingleton!!& 3
.!!3 4
GetMainUser!!4 ?
(!!? @
)!!@ A
;!!A B
private"" 
UserPojo"" 
userForGuest"" %
;""% &
int## 
idUser## 
=## 
-## 
$num## 
;## 
private$$ 
readonly$$ 
int$$ 
ROOMCODE_IS_FULL$$ -
=$$. /
-$$0 1
$num$$1 2
;$$2 3
private%% 
readonly%% 
int%% 
	SUCCESFUL%% &
=%%' (
$num%%) *
;%%* +
public'' 
enterGameWithCode''  
(''  !
Window''! '
previousWindow''( 6
,''6 7
bool''8 <
isGuest''= D
)''D E
{(( 	
InitializeComponent)) 
())  
)))  !
;))! "
this** 
.** 
windowBehind** 
=** 
previousWindow**  .
;**. /
tbxCode++ 
.++ 
	MaxLength++ 
=++ 
$num++  "
;++" #
if,, 
(,, 
!,, 
isGuest,, 
),, 
{-- 
idUser.. 
=.. 
userSingleton.. &
...& '
IdUser..' -
;..- .
}// 
}00 	
private22 
void22 #
ClickEnterLobbyWithCode22 ,
(22, -
object22- 3
sender224 :
,22: ;
RoutedEventArgs22< K
e22L M
)22M N
{33 	
int44 
enteredCode44 
;44 
if55 
(55 
int55 
.55 
TryParse55 
(55 
tbxCode55 $
.55$ %
Text55% )
,55) *
out55+ .
enteredCode55/ :
)55: ;
)55; <
{66 
try77 
{88 )
LobbyCodeAuthenticationClient99 1#
codeAuthenticationProxy992 I
=99J K
new99L O)
LobbyCodeAuthenticationClient99P m
(99m n
)99n o
;99o p
GenericClassOfint:: %
isRoomActive::& 2
=::3 4#
codeAuthenticationProxy::5 L
.::L M
VerifyRoomCodeExist::M `
(::` a
enteredCode::a l
,::l m
idUser::n t
)::t u
;::u v
if;; 
(;; 
isRoomActive;; $
.;;$ %
	CodeEvent;;% .
==;;/ 1
ExceptionDictionary;;2 E
.;;E F
SUCCESFULL_EVENT;;F V
||;;W Y
isRoomActive;;Z f
.;;f g
	CodeEvent;;g p
==;;q s 
ExceptionDictionary	;;t á
.
;;á à 
UNSUCCESFULL_EVENT
;;à ö
)
;;ö õ
{<< 
if== 
(== 
isRoomActive== '
.==' (
ObjectSaved==( 3
====4 6
	SUCCESFUL==7 @
)==@ A
{>> 
if?? 
(??  
AssurePlayer??  ,
(??, -
enteredCode??- 8
)??8 9
)??9 :
{@@ 
GotoLobbyPageAA  -
(AA- .
enteredCodeAA. 9
)AA9 :
;AA: ;
}BB 
}CC 
elseDD 
ifDD 
(DD  
isRoomActiveDD  ,
.DD, -
ObjectSavedDD- 8
==DD9 ;
ROOMCODE_IS_FULLDD< L
)DDL M
{EE 
dialogMessageFF )
=FF* +
newFF, /$
ErrorMessageDialogWindowFF0 H
(FFH I

PropertiesFFI S
.FFS T
	ResourcesFFT ]
.FF] ^
txbErrorTitleFF^ k
,FFk l

PropertiesFFm w
.FFw x
	Resources	FFx Å
.
FFÅ Ç
LobbyIsFull
FFÇ ç
,
FFç é
Application
FFè ö
.
FFö õ
Current
FFõ ¢
.
FF¢ £

MainWindow
FF£ ≠
)
FF≠ Æ
;
FFÆ Ø
}GG 
elseHH 
{II 
dialogMessageJJ )
=JJ* +
newJJ, /$
ErrorMessageDialogWindowJJ0 H
(JJH I

PropertiesJJI S
.JJS T
	ResourcesJJT ]
.JJ] ^
txbErrorTitleJJ^ k
,JJk l

PropertiesJJm w
.JJw x
	Resources	JJx Å
.
JJÅ Ç
LobbyNotExist
JJÇ è
,
JJè ê
Application
JJë ú
.
JJú ù
Current
JJù §
.
JJ§ •

MainWindow
JJ• Ø
)
JJØ ∞
;
JJ∞ ±
}KK 
}LL 
}MM 
catchNN 
(NN %
EndpointNotFoundExceptionNN 0
exNN1 3
)NN3 4
{OO 
HandleExceptionPP #
(PP# $
exPP$ &
,PP& '

PropertiesPP) 3
.PP3 4
	ResourcesPP4 =
.PP= >
lblEndPointNotFoundPP> Q
)PPQ R
;PPR S
WindowQQ 
.QQ 
	GetWindowQQ $
(QQ$ %
thisQQ% )
)QQ) *
.QQ* +
CloseQQ+ 0
(QQ0 1
)QQ1 2
;QQ2 3
}RR 
catchSS 
(SS /
#CommunicationObjectFaultedExceptionSS :
exSS; =
)SS= >
{TT 
HandleExceptionUU #
(UU# $
exUU$ &
,UU& '

PropertiesUU( 2
.UU2 3
	ResourcesUU3 <
.UU< =$
lblComunicationExceptionUU= U
)UUU V
;UUV W
WindowVV 
.VV 
	GetWindowVV $
(VV$ %
thisVV% )
)VV) *
.VV* +
CloseVV+ 0
(VV0 1
)VV1 2
;VV2 3
}WW 
catchXX 
(XX 
TimeoutExceptionXX '
exXX( *
)XX* +
{YY 
HandleExceptionZZ #
(ZZ# $
exZZ$ &
,ZZ& '

PropertiesZZ( 2
.ZZ2 3
	ResourcesZZ3 <
.ZZ< =
lblTimeExceptionZZ= M
)ZZM N
;ZZN O
Window[[ 
.[[ 
	GetWindow[[ $
([[$ %
this[[% )
)[[) *
.[[* +
Close[[+ 0
([[0 1
)[[1 2
;[[2 3
}\\ 
catch]] 
(]] "
CommunicationException]] -
ex]]. 0
)]]0 1
{^^ 
HandleException__ #
(__# $
ex__$ &
,__& '

Properties__( 2
.__2 3
	Resources__3 <
.__< =
lblWithoutConection__= P
)__P Q
;__Q R
Window`` 
.`` 
	GetWindow`` $
(``$ %
this``% )
)``) *
.``* +
Close``+ 0
(``0 1
)``1 2
;``2 3
}aa 
catchbb 
(bb 
SocketExceptionbb &
exbb' )
)bb) *
{cc 
HandleExceptiondd #
(dd# $
exdd$ &
,dd& '

Propertiesdd( 2
.dd2 3
	Resourcesdd3 <
.dd< =
lblWithoutConectiondd= P
)ddP Q
;ddQ R
Windowee 
.ee 
	GetWindowee $
(ee$ %
thisee% )
)ee) *
.ee* +
Closeee+ 0
(ee0 1
)ee1 2
;ee2 3
}ff 
}gg 
elsehh 
{ii 
dialogMessagejj 
=jj 
newjj  #$
ErrorMessageDialogWindowjj$ <
(jj< =

Propertiesjj= G
.jjG H
	ResourcesjjH Q
.jjQ R
txbErrorTitlejjR _
,jj_ `

Propertiesjja k
.jjk l
	Resourcesjjl u
.jju v
lblnvalidCode	jjv É
,
jjÉ Ñ
Application
jjÖ ê
.
jjê ë
Current
jjë ò
.
jjò ô

MainWindow
jjô £
)
jj£ §
;
jj§ •
}kk 
}ll 	
privatenn 
boolnn 
AssurePlayernn !
(nn! "
intnn" %
enteredCodenn& 1
)nn1 2
{oo 	
boolpp 
successpp 
=pp 
truepp 
;pp  
ifqq 
(qq 
idUserqq 
==qq 
-qq 
$numqq 
)qq 
{rr 
ifss 
(ss 
!ss '
GetPlayerAndUserInformationss 0
(ss0 1
)ss1 2
)ss2 3
{tt 
returnuu 
falseuu  
;uu  !
}vv 
successww 
=ww $
SubscribeToLivingChannelww 2
(ww2 3
)ww3 4
;ww4 5
}xx 
returnyy 
successyy 
;yy 
}zz 	
private|| 
bool|| '
GetPlayerAndUserInformation|| 0
(||0 1
)||1 2
{}} 	
bool~~ 
isPlayerGuestActive~~ $
=~~% &
false~~' ,
;~~, -
try 
{
ÄÄ &
GuestPlayerManagerClient
ÅÅ (%
guestPlayerManagerProxy
ÅÅ) @
=
ÅÅA B
new
ÅÅC F&
GuestPlayerManagerClient
ÅÅG _
(
ÅÅ_ `
)
ÅÅ` a
;
ÅÅa b
var
ÇÇ 
	userGuest
ÇÇ 
=
ÇÇ %
guestPlayerManagerProxy
ÇÇ  7
.
ÇÇ7 8 
CreateUserForGuest
ÇÇ8 J
(
ÇÇJ K
)
ÇÇK L
;
ÇÇL M
if
ÉÉ 
(
ÉÉ 
	userGuest
ÉÉ 
.
ÉÉ 
	CodeEvent
ÉÉ '
==
ÉÉ( *!
ExceptionDictionary
ÉÉ+ >
.
ÉÉ> ?
SUCCESFULL_EVENT
ÉÉ? O
)
ÉÉO P
{
ÑÑ 
userForGuest
ÖÖ  
=
ÖÖ! "
	userGuest
ÖÖ# ,
.
ÖÖ, -
ObjectSaved
ÖÖ- 8
;
ÖÖ8 9*
ConsultUserInformationClient
ÜÜ 0)
consultUserInformationProxy
ÜÜ1 L
=
ÜÜM N
new
ÜÜO R
(
ÜÜR S
)
ÜÜS T
;
ÜÜT U
var
áá 
playerGuest
áá #
=
áá$ %)
consultUserInformationProxy
áá& A
.
ááA B#
ConsultPlayerByIdUser
ááB W
(
ááW X
	userGuest
ááX a
.
ááa b
ObjectSaved
ááb m
.
áám n
IdUser
áán t
)
áát u
;
ááu v
if
àà 
(
àà 
playerGuest
àà #
.
àà# $
	CodeEvent
àà$ -
==
àà. 0!
ExceptionDictionary
àà1 D
.
ààD E
SUCCESFULL_EVENT
ààE U
)
ààU V
{
ââ 
UserSingleton
ää %
.
ää% &
CleanSingleton
ää& 4
(
ää4 5
)
ää5 6
;
ää6 7
UserSingleton
ãã %
.
ãã% &
GetMainUser
ãã& 1
(
ãã1 2
	userGuest
ãã2 ;
.
ãã; <
ObjectSaved
ãã< G
,
ããG H
playerGuest
ããI T
.
ããT U
ObjectSaved
ããU `
)
ãã` a
;
ããa b!
isPlayerGuestActive
åå +
=
åå, -
true
åå. 2
;
åå2 3
}
çç 
}
éé 
else
èè 
{
êê 
dialogMessage
ëë !
=
ëë" #
new
ëë$ '&
ErrorMessageDialogWindow
ëë( @
(
ëë@ A

Properties
ëëA K
.
ëëK L
	Resources
ëëL U
.
ëëU V
txbErrorTitle
ëëV c
,
ëëc d

Properties
ëëe o
.
ëëo p
	Resources
ëëp y
.
ëëy z'
lblFailToCreateGuestUserëëz í
,ëëí ì
Applicationëëî ü
.ëëü †
Currentëë† ß
.ëëß ®

MainWindowëë® ≤
)ëë≤ ≥
;ëë≥ ¥
Window
íí 
.
íí 
	GetWindow
íí $
(
íí$ %
this
íí% )
)
íí) *
.
íí* +
Close
íí+ 0
(
íí0 1
)
íí1 2
;
íí2 3
}
ìì 
}
îî 
catch
ïï 
(
ïï '
EndpointNotFoundException
ïï ,
ex
ïï- /
)
ïï/ 0
{
ññ 
HandleException
óó 
(
óó  
ex
óó  "
,
óó" #

Properties
óó$ .
.
óó. /
	Resources
óó/ 8
.
óó8 9!
lblEndPointNotFound
óó9 L
+
óóM N
$str
óóO T
+
óóU V

Properties
óóW a
.
óóa b
	Resources
óób k
.
óók l'
lblFailToCreateGuestUseróól Ñ
)óóÑ Ö
;óóÖ Ü
Window
òò 
.
òò 
	GetWindow
òò  
(
òò  !
this
òò! %
)
òò% &
.
òò& '
Close
òò' ,
(
òò, -
)
òò- .
;
òò. /
}
ôô 
catch
öö 
(
öö 1
#CommunicationObjectFaultedException
öö 6
ex
öö7 9
)
öö9 :
{
õõ 
HandleException
úú 
(
úú  
ex
úú  "
,
úú" #

Properties
úú$ .
.
úú. /
	Resources
úú/ 8
.
úú8 9&
lblComunicationException
úú9 Q
+
úúR S
$str
úúT Y
+
úúZ [

Properties
úú\ f
.
úúf g
	Resources
úúg p
.
úúp q'
lblFailToCreateGuestUserúúq â
)úúâ ä
;úúä ã
Window
ùù 
.
ùù 
	GetWindow
ùù  
(
ùù  !
this
ùù! %
)
ùù% &
.
ùù& '
Close
ùù' ,
(
ùù, -
)
ùù- .
;
ùù. /
}
ûû 
catch
üü 
(
üü 
TimeoutException
üü #
ex
üü$ &
)
üü& '
{
†† 
HandleException
°° 
(
°°  
ex
°°  "
,
°°" #

Properties
°°$ .
.
°°. /
	Resources
°°/ 8
.
°°8 9
lblTimeException
°°9 I
+
°°J K
$str
°°L Q
+
°°R S

Properties
°°T ^
.
°°^ _
	Resources
°°_ h
.
°°h i'
lblFailToCreateGuestUser°°i Å
)°°Å Ç
;°°Ç É
Window
¢¢ 
.
¢¢ 
	GetWindow
¢¢  
(
¢¢  !
this
¢¢! %
)
¢¢% &
.
¢¢& '
Close
¢¢' ,
(
¢¢, -
)
¢¢- .
;
¢¢. /
}
££ 
catch
§§ 
(
§§ $
CommunicationException
§§ )
ex
§§* ,
)
§§, -
{
•• 
HandleException
¶¶ 
(
¶¶  
ex
¶¶  "
,
¶¶" #

Properties
¶¶$ .
.
¶¶. /
	Resources
¶¶/ 8
.
¶¶8 9!
lblWithoutConection
¶¶9 L
+
¶¶M N
$str
¶¶O T
+
¶¶U V

Properties
¶¶W a
.
¶¶a b
	Resources
¶¶b k
.
¶¶k l'
lblFailToCreateGuestUser¶¶l Ñ
)¶¶Ñ Ö
;¶¶Ö Ü
Window
ßß 
.
ßß 
	GetWindow
ßß  
(
ßß  !
this
ßß! %
)
ßß% &
.
ßß& '
Close
ßß' ,
(
ßß, -
)
ßß- .
;
ßß. /
}
®® 
catch
©© 
(
©© 
SocketException
©© "
ex
©©# %
)
©©% &
{
™™ 
HandleException
´´ 
(
´´  
ex
´´  "
,
´´" #

Properties
´´$ .
.
´´. /
	Resources
´´/ 8
.
´´8 9!
lblWithoutConection
´´9 L
)
´´L M
;
´´M N
Window
¨¨ 
.
¨¨ 
	GetWindow
¨¨  
(
¨¨  !
this
¨¨! %
)
¨¨% &
.
¨¨& '
Close
¨¨' ,
(
¨¨, -
)
¨¨- .
;
¨¨. /
}
≠≠ 
return
ÆÆ !
isPlayerGuestActive
ÆÆ &
;
ÆÆ& '
}
ØØ 	
private
±± 
bool
±± &
SubscribeToLivingChannel
±± -
(
±±- .
)
±±. /
{
≤≤ 	
try
≥≥ 
{
¥¥ 
InstanceContext
µµ 
context
µµ  '
=
µµ( )
new
µµ* -
(
µµ- .
this
µµ. 2
)
µµ2 3
;
µµ3 4#
CheckUserLivingClient
∂∂ %#
checkUserLivingClient
∂∂& ;
=
∂∂< =
new
∂∂> A
(
∂∂A B
context
∂∂B I
)
∂∂I J
;
∂∂J K
int
∑∑ 
success
∑∑ 
=
∑∑ #
checkUserLivingClient
∑∑ 3
.
∑∑3 4)
SubscribeToICheckUserLiving
∑∑4 O
(
∑∑O P
userForGuest
∑∑P \
)
∑∑\ ]
;
∑∑] ^
if
∏∏ 
(
∏∏ 
success
∏∏ 
==
∏∏ !
ExceptionDictionary
∏∏ 1
.
∏∏1 2
SUCCESFULL_EVENT
∏∏2 B
)
∏∏B C
{
ππ 
return
∫∫ 
true
∫∫ 
;
∫∫  
}
ªª 
else
ºº 
{
ΩΩ 
dialogMessage
ææ !
=
ææ" #
new
ææ$ '&
ErrorMessageDialogWindow
ææ( @
(
ææ@ A

Properties
ææA K
.
ææK L
	Resources
ææL U
.
ææU V
txbErrorTitle
ææV c
,
ææc d

Properties
ææe o
.
ææo p
	Resources
ææp y
.
ææy z(
lblFailRegistryToCallBackææz ì
,ææì î
Applicationææï †
.ææ† °
Currentææ° ®
.ææ® ©

MainWindowææ© ≥
)ææ≥ ¥
;ææ¥ µ
Window
øø 
.
øø 
	GetWindow
øø $
(
øø$ %
this
øø% )
)
øø) *
.
øø* +
Close
øø+ 0
(
øø0 1
)
øø1 2
;
øø2 3
return
¿¿ 
false
¿¿  
;
¿¿  !
}
¡¡ 
}
¬¬ 
catch
√√ 
(
√√ '
EndpointNotFoundException
√√ ,
ex
√√- /
)
√√/ 0
{
ƒƒ 
HandleException
≈≈ 
(
≈≈  
ex
≈≈  "
,
≈≈" #

Properties
≈≈$ .
.
≈≈. /
	Resources
≈≈/ 8
.
≈≈8 9!
lblEndPointNotFound
≈≈9 L
+
≈≈M N
$str
≈≈O T
+
≈≈U V

Properties
≈≈W a
.
≈≈a b
	Resources
≈≈b k
.
≈≈k l(
lblFailRegistryToCallBack≈≈l Ö
)≈≈Ö Ü
;≈≈Ü á
}
∆∆ 
catch
«« 
(
«« 1
#CommunicationObjectFaultedException
«« 6
ex
««7 9
)
««9 :
{
»» 
HandleException
…… 
(
……  
ex
……  "
,
……" #

Properties
……$ .
.
……. /
	Resources
……/ 8
.
……8 9&
lblComunicationException
……9 Q
+
……R S
$str
……T Y
+
……Z [

Properties
……\ f
.
……f g
	Resources
……g p
.
……p q(
lblFailRegistryToCallBack……q ä
)……ä ã
;……ã å
}
   
catch
ÀÀ 
(
ÀÀ 
TimeoutException
ÀÀ #
ex
ÀÀ$ &
)
ÀÀ& '
{
ÃÃ 
HandleException
ÕÕ 
(
ÕÕ  
ex
ÕÕ  "
,
ÕÕ" #

Properties
ÕÕ$ .
.
ÕÕ. /
	Resources
ÕÕ/ 8
.
ÕÕ8 9
lblTimeException
ÕÕ9 I
+
ÕÕJ K
$str
ÕÕL Q
+
ÕÕR S

Properties
ÕÕT ^
.
ÕÕ^ _
	Resources
ÕÕ_ h
.
ÕÕh i(
lblFailRegistryToCallBackÕÕi Ç
)ÕÕÇ É
;ÕÕÉ Ñ
}
ŒŒ 
catch
œœ 
(
œœ $
CommunicationException
œœ )
ex
œœ* ,
)
œœ, -
{
–– 
HandleException
—— 
(
——  
ex
——  "
,
——" #

Properties
——$ .
.
——. /
	Resources
——/ 8
.
——8 9!
lblWithoutConection
——9 L
+
——M N
$str
——O T
+
——U V

Properties
——W a
.
——a b
	Resources
——b k
.
——k l(
lblFailRegistryToCallBack——l Ö
)——Ö Ü
;——Ü á
}
““ 
catch
”” 
(
”” 
SocketException
”” "
ex
””# %
)
””% &
{
‘‘ 
HandleException
’’ 
(
’’  
ex
’’  "
,
’’" #

Properties
’’$ .
.
’’. /
	Resources
’’/ 8
.
’’8 9!
lblWithoutConection
’’9 L
+
’’M N
$str
’’O T
+
’’U V

Properties
’’W a
.
’’a b
	Resources
’’b k
.
’’k l(
lblFailRegistryToCallBack’’l Ö
)’’Ö Ü
;’’Ü á
}
÷÷ 
return
◊◊ 
false
◊◊ 
;
◊◊ 
}
ÿÿ 	
private
€€ 
void
€€ 
GotoLobbyPage
€€ "
(
€€" #
int
€€# &
enteredCode
€€' 2
)
€€2 3
{
‹‹ 	
Views
›› 
.
›› 
PrincipalWindow
›› !

gameWindow
››" ,
=
››- .
new
››/ 2
Views
››3 8
.
››8 9
PrincipalWindow
››9 H
(
››H I
)
››I J
;
››J K
	LobbyPage
ﬁﬁ 
	lobbyPage
ﬁﬁ 
=
ﬁﬁ  !
new
ﬁﬁ" %
	LobbyPage
ﬁﬁ& /
(
ﬁﬁ/ 0
enteredCode
ﬁﬁ0 ;
)
ﬁﬁ; <
;
ﬁﬁ< =

gameWindow
ﬂﬂ 
.
ﬂﬂ 
Show
ﬂﬂ 
(
ﬂﬂ 
)
ﬂﬂ 
;
ﬂﬂ 

gameWindow
‡‡ 
.
‡‡ 
contentFrame
‡‡ #
.
‡‡# $
Navigate
‡‡$ ,
(
‡‡, -
	lobbyPage
‡‡- 6
)
‡‡6 7
;
‡‡7 8
windowBehind
·· 
.
·· 
Close
·· 
(
·· 
)
··  
;
··  !
Window
‚‚ 
.
‚‚ 
	GetWindow
‚‚ 
(
‚‚ 
this
‚‚ !
)
‚‚! "
.
‚‚" #
Close
‚‚# (
(
‚‚( )
)
‚‚) *
;
‚‚* +
}
„„ 	
private
ÂÂ 
void
ÂÂ 

ClickClose
ÂÂ 
(
ÂÂ  
object
ÂÂ  &
sender
ÂÂ' -
,
ÂÂ- ."
MouseButtonEventArgs
ÂÂ/ C
e
ÂÂD E
)
ÂÂE F
{
ÊÊ 	
Window
ÁÁ 
.
ÁÁ 
	GetWindow
ÁÁ 
(
ÁÁ 
this
ÁÁ !
)
ÁÁ! "
.
ÁÁ" #
Close
ÁÁ# (
(
ÁÁ( )
)
ÁÁ) *
;
ÁÁ* +
}
ËË 	
public
ÍÍ 
bool
ÍÍ 
IsClientActive
ÍÍ "
(
ÍÍ" #
)
ÍÍ# $
{
ÎÎ 	
return
ÏÏ 
(
ÏÏ 
(
ÏÏ &
ICheckUserLivingCallback
ÏÏ -
)
ÏÏ- .
userSingleton
ÏÏ. ;
)
ÏÏ; <
.
ÏÏ< =
IsClientActive
ÏÏ= K
(
ÏÏK L
)
ÏÏL M
;
ÏÏM N
}
ÌÌ 	
private
ÔÔ 
void
ÔÔ 
HandleException
ÔÔ $
(
ÔÔ$ %
	Exception
ÔÔ% .
ex
ÔÔ/ 1
,
ÔÔ1 2
string
ÔÔ3 9
errorMessage
ÔÔ: F
)
ÔÔF G
{
 	%
ExceptionHandlerForLogs
ÒÒ #
.
ÒÒ# $
LogException
ÒÒ$ 0
(
ÒÒ0 1
ex
ÒÒ1 3
,
ÒÒ3 4!
ExceptionDictionary
ÒÒ5 H
.
ÒÒH I
FATAL_EXCEPTION
ÒÒI X
)
ÒÒX Y
;
ÒÒY Z
dialogMessage
ÚÚ 
=
ÚÚ 
new
ÚÚ &
ErrorMessageDialogWindow
ÚÚ  8
(
ÚÚ8 9

Properties
ÚÚ9 C
.
ÚÚC D
	Resources
ÚÚD M
.
ÚÚM N
txbErrorTitle
ÚÚN [
,
ÚÚ[ \
errorMessage
ÚÚ] i
,
ÚÚi j
Application
ÚÚk v
.
ÚÚv w
Current
ÚÚw ~
.
ÚÚ~ 

MainWindowÚÚ â
)ÚÚâ ä
;ÚÚä ã
}
ÛÛ 	
}
ˆˆ 
}˜˜ †¶
lC:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameClient\Pages\FriendManager.xaml.cs
	namespace 	
JeopardyGame
 
. 
Pages 
{ 
public 

partial 
class 
FriendManager &
:' (
Page) -
,- .)
IFriendManagerActionsCallback/ L
{ 
private 
List 
< "
FriendBasicInformation +
>+ ,
friends- 4
;4 5
private 
List 
< "
FriendBasicInformation +
>+ ,
friendRequests- ;
;; <
private 
List 
< "
FriendBasicInformation +
>+ ,
otherPeople- 8
;8 9
private 
String 
textLeftButton %
=& '

Properties( 2
.2 3
	Resources3 <
.< =
	bttReport= F
;F G
private 
String 
textRightButton &
=' (

Properties) 3
.3 4
	Resources4 =
.= >
bttEliminate> J
;J K
private   
DispatcherTimer   
timer    %
;  % &
private!! 
int!! 
leftTime!! 
=!! 
$num!!  
;!!  !
private"" 
const"" 
int"" 

NOT_STATUS"" $
=""% &
$num""' (
;""( )
private## 
const## 
int## 

MY_FRIENDS## $
=##% &
$num##' (
;##( )
private$$ 
const$$ 
int$$ 
FRIENDS_REQUEST$$ )
=$$* +
$num$$, -
;$$- .
private%% 
const%% 
int%% 
OTHER_PEOPLE%% &
=%%' (
$num%%) *
;%%* +
private&& 
const&& 
int&& 
DECLINED_REQUEST&& *
=&&+ ,
$num&&- .
;&&. /
private'' 
const'' 
int'' 
SEND_REQUEST'' &
=''' (
$num'') *
;''* +
private(( 
const(( 
int(( 
ACCEPT_REQUEST(( (
=(() *
$num((+ ,
;((, -
private)) 
int)) 
typeUserConsult)) #
=))$ %

MY_FRIENDS))& 0
;))0 1
private** 
Window** 
dialogMessage** $
;**$ %
private++ 
UserSingleton++ 
userSingleton++ +
;+++ ,
public-- 
FriendManager-- 
(-- 
)-- 
{.. 	
InitializeComponent// 
(//  
)//  !
;//! "
Loaded00 
+=00 
LoadedPrepareWindow00 )
;00) *
}11 	
private33 
void33 
LoadedPrepareWindow33 (
(33( )
object33) /
sender330 6
,336 7
RoutedEventArgs338 G
e33H I
)33I J
{44 	
userSingleton55 
=55 
UserSingleton55 )
.55) *
GetMainUser55* 5
(555 6
)556 7
;557 8
try66 
{77 
InstanceContext88 
context88  '
=88( )
new88* -
InstanceContext88. =
(88= >
this88> B
)88B C
;88C D&
FriendManagerActionsClient99 *
friendActionsProxy99+ =
=99> ?
new99@ C&
FriendManagerActionsClient99D ^
(99^ _
context99_ f
)99f g
;99g h
friendActionsProxy:: "
.::" #%
RegisterFriendManagerUser::# <
(::< =
userSingleton::= J
.::J K
IdUser::K Q
)::Q R
;::R S
GetAllTables;; 
(;; 
);; 
;;; 
}<< 
catch== 
(== 
SocketException== "
ex==# %
)==% &
{>> 
HandleException?? 
(??  
ex??  "
,??" #

Properties??$ .
.??. /
	Resources??/ 8
.??8 9
lblEndPointNotFound??9 L
)??L M
;??M N
GotoMenu@@ 
(@@ 
)@@ 
;@@ 
}AA 
catchBB 
(BB %
EndpointNotFoundExceptionBB ,
exBB- /
)BB/ 0
{CC 
HandleExceptionDD 
(DD  
exDD  "
,DD" #

PropertiesDD$ .
.DD. /
	ResourcesDD/ 8
.DD8 9
lblEndPointNotFoundDD9 L
)DDL M
;DDM N
GotoMenuEE 
(EE 
)EE 
;EE 
}FF 
catchGG 
(GG /
#CommunicationObjectFaultedExceptionGG 6
exGG7 9
)GG9 :
{HH 
HandleExceptionII 
(II  
exII  "
,II" #

PropertiesII$ .
.II. /
	ResourcesII/ 8
.II8 9$
lblComunicationExceptionII9 Q
)IIQ R
;IIR S
GotoMenuJJ 
(JJ 
)JJ 
;JJ 
}KK 
catchLL 
(LL 
TimeoutExceptionLL #
exLL$ &
)LL& '
{MM 
HandleExceptionNN 
(NN  
exNN  "
,NN" #

PropertiesNN$ .
.NN. /
	ResourcesNN/ 8
.NN8 9
lblTimeExceptionNN9 I
)NNI J
;NNJ K
GotoMenuOO 
(OO 
)OO 
;OO 
}PP 
catchQQ 
(QQ "
CommunicationExceptionQQ )
exQQ* ,
)QQ, -
{RR 
HandleExceptionSS 
(SS  
exSS  "
,SS" #

PropertiesSS$ .
.SS. /
	ResourcesSS/ 8
.SS8 9$
lblComunicationExceptionSS9 Q
)SSQ R
;SSR S
GotoMenuTT 
(TT 
)TT 
;TT 
}UU 
}VV 	
privateYY 
voidYY 
GetAllTablesYY !
(YY! "
)YY" #
{ZZ 	
try[[ 
{\\ 
if]] 
(]] 
userSingleton]] !
!=]]" $
null]]% )
)]]) *
{^^ 
UserPojo__ 
userConsulted__ *
=__+ ,
new__- 0
UserPojo__1 9
(__9 :
)__: ;
{`` 
IdUseraa 
=aa  
userSingletonaa! .
.aa. /
IdUseraa/ 5
,aa5 6
EmailAddressbb $
=bb% &
userSingletonbb' 4
.bb4 5
Emailbb5 :
,bb: ;
Namecc 
=cc 
userSingletoncc ,
.cc, -
Namecc- 1
,cc1 2
Passworddd  
=dd! "
userSingletondd# 0
.dd0 1
Passworddd1 9
,dd9 :
UserNameee  
=ee! "
userSingletonee# 0
.ee0 1
Nameee1 5
,ee5 6
}ff 
;ff  
ConsultFriendsClientgg (
friendManagerProxygg) ;
=gg< =
newgg> A 
ConsultFriendsClientggB V
(ggV W
)ggW X
;ggX Y
varhh 
friendsConsultedhh (
=hh) *
friendManagerProxyhh+ =
.hh= >
GetUserFriendshh> L
(hhL M
userConsultedhhM Z
)hhZ [
;hh[ \
ifii 
(ii 
friendsConsultedii (
.ii( )
	CodeEventii) 2
==ii3 5
ExceptionDictionaryii6 I
.iiI J
SUCCESFULL_EVENTiiJ Z
)iiZ [
{jj 
varkk #
friendRequestsConsultedkk 3
=kk4 5
friendManagerProxykk6 H
.kkH I!
GetUserFriendRequestskkI ^
(kk^ _
userConsultedkk_ l
)kkl m
;kkm n
ifll 
(ll #
friendRequestsConsultedll 3
.ll3 4
	CodeEventll4 =
==ll> @
ExceptionDictionaryllA T
.llT U
SUCCESFULL_EVENTllU e
)lle f
{mm 
varnn  
otherPeopleConsultednn  4
=nn5 6
friendManagerProxynn7 I
.nnI J
GetUsersNotFriendsnnJ \
(nn\ ]
userConsultednn] j
)nnj k
;nnk l
ifoo 
(oo   
otherPeopleConsultedoo  4
.oo4 5
	CodeEventoo5 >
==oo? A
ExceptionDictionaryooB U
.ooU V
SUCCESFULL_EVENTooV f
)oof g
{pp 
friendsqq  '
=qq( )
friendsConsultedqq* :
.qq: ;
ObjectSavedqq; F
.qqF G
ToListqqG M
(qqM N
)qqN O
;qqO P
friendRequestsrr  .
=rr/ 0#
friendRequestsConsultedrr1 H
.rrH I
ObjectSavedrrI T
.rrT U
ToListrrU [
(rr[ \
)rr\ ]
;rr] ^
otherPeopless  +
=ss, - 
otherPeopleConsultedss. B
.ssB C
ObjectSavedssC N
.ssN O
ToListssO U
(ssU V
)ssV W
;ssW X
}tt 
elseuu  
{vv 
dialogMessageww  -
=ww. /
newww0 3$
ErrorMessageDialogWindowww4 L
(wwL M

PropertieswwM W
.wwW X
	ResourceswwX a
.wwa b
txbErrorTitlewwb o
,wwo p

Propertieswwq {
.ww{ |
	Resources	ww| Ö
.
wwÖ Ü%
lblFailToRecoverFriends
wwÜ ù
,
wwù û
Application
wwü ™
.
ww™ ´
Current
ww´ ≤
.
ww≤ ≥

MainWindow
ww≥ Ω
)
wwΩ æ
;
wwæ ø
GotoMenuxx  (
(xx( )
)xx) *
;xx* +
}yy 
}zz 
else{{ 
{|| 
dialogMessage}} )
=}}* +
new}}, /$
ErrorMessageDialogWindow}}0 H
(}}H I

Properties}}I S
.}}S T
	Resources}}T ]
.}}] ^
txbErrorTitle}}^ k
,}}k l

Properties}}m w
.}}w x
	Resources	}}x Å
.
}}Å Ç%
lblFailToRecoverFriends
}}Ç ô
,
}}ô ö
Application
}}õ ¶
.
}}¶ ß
Current
}}ß Æ
.
}}Æ Ø

MainWindow
}}Ø π
)
}}π ∫
;
}}∫ ª
GotoMenu~~ $
(~~$ %
)~~% &
;~~& '
} 
}
ÄÄ 
else
ÅÅ 
{
ÇÇ 
dialogMessage
ÉÉ %
=
ÉÉ& '
new
ÉÉ( +&
ErrorMessageDialogWindow
ÉÉ, D
(
ÉÉD E

Properties
ÉÉE O
.
ÉÉO P
	Resources
ÉÉP Y
.
ÉÉY Z
txbErrorTitle
ÉÉZ g
,
ÉÉg h

Properties
ÉÉi s
.
ÉÉs t
	Resources
ÉÉt }
.
ÉÉ} ~&
lblFailToRecoverFriendsÉÉ~ ï
,ÉÉï ñ
ApplicationÉÉó ¢
.ÉÉ¢ £
CurrentÉÉ£ ™
.ÉÉ™ ´

MainWindowÉÉ´ µ
)ÉÉµ ∂
;ÉÉ∂ ∑
GotoMenu
ÑÑ  
(
ÑÑ  !
)
ÑÑ! "
;
ÑÑ" #
}
ÖÖ  
friendManagerProxy
ÜÜ &
.
ÜÜ& '
Close
ÜÜ' ,
(
ÜÜ, -
)
ÜÜ- .
;
ÜÜ. /
}
áá 
else
àà 
{
ââ 
dialogMessage
ää !
=
ää" #
new
ää$ '&
ErrorMessageDialogWindow
ää( @
(
ää@ A

Properties
ääA K
.
ääK L
	Resources
ääL U
.
ääU V
txbErrorTitle
ääV c
,
ääc d

Properties
ääe o
.
ääo p
	Resources
ääp y
.
ääy z"
lblWithoutConectionääz ç
,ääç é
Applicationääè ö
.ääö õ
Currentääõ ¢
.ää¢ £

MainWindowää£ ≠
)ää≠ Æ
;ääÆ Ø
GotoMenu
ãã 
(
ãã 
)
ãã 
;
ãã 
}
åå 
}
çç 
catch
éé 
(
éé '
EndpointNotFoundException
éé ,
ex
éé- /
)
éé/ 0
{
èè 
HandleException
êê 
(
êê  
ex
êê  "
,
êê" #

Properties
êê$ .
.
êê. /
	Resources
êê/ 8
.
êê8 9!
lblEndPointNotFound
êê9 L
)
êêL M
;
êêM N
GotoMenu
ëë 
(
ëë 
)
ëë 
;
ëë 
}
íí 
catch
ìì 
(
ìì 1
#CommunicationObjectFaultedException
ìì 6
ex
ìì7 9
)
ìì9 :
{
îî 
HandleException
ïï 
(
ïï  
ex
ïï  "
,
ïï" #

Properties
ïï$ .
.
ïï. /
	Resources
ïï/ 8
.
ïï8 9&
lblComunicationException
ïï9 Q
)
ïïQ R
;
ïïR S
GotoMenu
ññ 
(
ññ 
)
ññ 
;
ññ 
}
óó 
catch
òò 
(
òò 
TimeoutException
òò #
ex
òò$ &
)
òò& '
{
ôô 
HandleException
öö 
(
öö  
ex
öö  "
,
öö" #

Properties
öö$ .
.
öö. /
	Resources
öö/ 8
.
öö8 9
lblTimeException
öö9 I
)
ööI J
;
ööJ K
GotoMenu
õõ 
(
õõ 
)
õõ 
;
õõ 
}
úú 
catch
ùù 
(
ùù $
CommunicationException
ùù )
ex
ùù* ,
)
ùù, -
{
ûû 
HandleException
üü 
(
üü  
ex
üü  "
,
üü" #

Properties
üü$ .
.
üü. /
	Resources
üü/ 8
.
üü8 9&
lblComunicationException
üü9 Q
)
üüQ R
;
üüR S
GotoMenu
†† 
(
†† 
)
†† 
;
†† 
}
°° 
catch
¢¢ 
(
¢¢ 
SocketException
¢¢ "
ex
¢¢# %
)
¢¢% &
{
££ 
HandleException
§§ 
(
§§  
ex
§§  "
,
§§" #

Properties
§§$ .
.
§§. /
	Resources
§§/ 8
.
§§8 9&
lblComunicationException
§§9 Q
)
§§Q R
;
§§R S
GotoMenu
•• 
(
•• 
)
•• 
;
•• 
}
¶¶ 
}
ßß 	
private
©© 
void
©© 
SetCards
©© 
(
©© 
)
©© 
{
™™ 	#
stpFrinedsManagerList
´´ !
.
´´! "
Children
´´" *
.
´´* +
Clear
´´+ 0
(
´´0 1
)
´´1 2
;
´´2 3
List
¨¨ 
<
¨¨ $
FriendBasicInformation
¨¨ '
>
¨¨' (
listOfUsers
¨¨) 4
;
¨¨4 5
switch
≠≠ 
(
≠≠ 
typeUserConsult
≠≠ #
)
≠≠# $
{
ÆÆ 
case
ØØ 

MY_FRIENDS
ØØ 
:
ØØ  
listOfUsers
∞∞ 
=
∞∞  !
new
∞∞" %
List
∞∞& *
<
∞∞* +$
FriendBasicInformation
∞∞+ A
>
∞∞A B
(
∞∞B C
friends
∞∞C J
)
∞∞J K
;
∞∞K L
break
±± 
;
±± 
case
≤≤ 
FRIENDS_REQUEST
≤≤ $
:
≤≤$ %
listOfUsers
≥≥ 
=
≥≥  !
new
≥≥" %
List
≥≥& *
<
≥≥* +$
FriendBasicInformation
≥≥+ A
>
≥≥A B
(
≥≥B C
friendRequests
≥≥C Q
)
≥≥Q R
;
≥≥R S
break
¥¥ 
;
¥¥ 
case
µµ 
OTHER_PEOPLE
µµ !
:
µµ! "
listOfUsers
∂∂ 
=
∂∂  !
new
∂∂" %
List
∂∂& *
<
∂∂* +$
FriendBasicInformation
∂∂+ A
>
∂∂A B
(
∂∂B C
otherPeople
∂∂C N
)
∂∂N O
;
∂∂O P
break
∑∑ 
;
∑∑ 
default
∏∏ 
:
∏∏ 
listOfUsers
ππ 
=
ππ  !
new
ππ" %
List
ππ& *
<
ππ* +$
FriendBasicInformation
ππ+ A
>
ππA B
(
ππB C
)
ππC D
;
ππD E
break
∫∫ 
;
∫∫ 
}
ªª 
foreach
ºº 
(
ºº 
var
ºº 
item
ºº 
in
ºº  
listOfUsers
ºº! ,
)
ºº, -
{
ΩΩ 
Border
ææ 
brdCard
ææ 
=
ææ  
new
ææ! $
Border
ææ% +
(
ææ+ ,
)
ææ, -
;
ææ- .(
FriendCardManagementWindow
øø *"
friendCardManagement
øø+ ?
=
øø@ A
new
øøB E(
FriendCardManagementWindow
øøF `
(
øø` a
item
øøa e
.
øøe f
IdUser
øøf l
,
øøl m
item
øøn r
.
øør s
UserName
øøs {
,
øø{ |
typeUserConsultøø} å
,øøå ç
textLeftButtonøøé ú
,øøú ù
textRightButtonøøû ≠
,øø≠ Æ
thisøøØ ≥
)øø≥ ¥
;øø¥ µ
brdCard
¿¿ 
.
¿¿ 
Child
¿¿ 
=
¿¿ "
friendCardManagement
¿¿  4
;
¿¿4 5#
stpFrinedsManagerList
¡¡ %
.
¡¡% &
Children
¡¡& .
.
¡¡. /
Add
¡¡/ 2
(
¡¡2 3 
SetBorderCardStyle
¡¡3 E
(
¡¡E F
brdCard
¡¡F M
)
¡¡M N
)
¡¡N O
;
¡¡O P
}
¬¬ 
}
√√ 	
private
∆∆ 
Border
∆∆  
SetBorderCardStyle
∆∆ )
(
∆∆) *
Border
∆∆* 0
brdCard
∆∆1 8
)
∆∆8 9
{
«« 	
brdCard
»» 
.
»» 

Background
»» 
=
»»  
new
»»! $
SolidColorBrush
»»% 4
(
»»4 5
(
»»5 6
Color
»»6 ;
)
»»; <
ColorConverter
»»< J
.
»»J K
ConvertFromString
»»K \
(
»»\ ]
$str
»»] f
)
»»f g
)
»»g h
;
»»h i
brdCard
…… 
.
…… 

Background
…… 
.
…… 
Opacity
…… &
=
……' (
$num
……) -
;
……- .
brdCard
   
.
   
CornerRadius
    
=
  ! "
new
  # &
CornerRadius
  ' 3
(
  3 4
$num
  4 6
)
  6 7
;
  7 8
brdCard
ÀÀ 
.
ÀÀ 
Margin
ÀÀ 
=
ÀÀ 
new
ÀÀ  
	Thickness
ÀÀ! *
(
ÀÀ* +
$num
ÀÀ+ -
,
ÀÀ- .
$num
ÀÀ/ 1
,
ÀÀ1 2
$num
ÀÀ3 4
,
ÀÀ4 5
$num
ÀÀ6 8
)
ÀÀ8 9
;
ÀÀ9 :
brdCard
ÃÃ 
.
ÃÃ 
Width
ÃÃ 
=
ÃÃ 
$num
ÃÃ  
;
ÃÃ  !
brdCard
ÕÕ 
.
ÕÕ 
MaxWidth
ÕÕ 
=
ÕÕ 
$num
ÕÕ #
;
ÕÕ# $
brdCard
ŒŒ 
.
ŒŒ 
Height
ŒŒ 
=
ŒŒ 
$num
ŒŒ 
;
ŒŒ  
brdCard
œœ 
.
œœ !
HorizontalAlignment
œœ '
=
œœ( )!
HorizontalAlignment
œœ* =
.
œœ= >
Left
œœ> B
;
œœB C
return
–– 
brdCard
–– 
;
–– 
}
—— 	
private
”” 
void
”” #
ClickConsultMyFriends
”” *
(
””* +
object
””+ 1
sender
””2 8
,
””8 9"
MouseButtonEventArgs
””: N
e
””O P
)
””P Q
{
‘‘ 	
typeUserConsult
’’ 
=
’’ 

MY_FRIENDS
’’ (
;
’’( )
textLeftButton
÷÷ 
=
÷÷ 

Properties
÷÷ '
.
÷÷' (
	Resources
÷÷( 1
.
÷÷1 2
	bttReport
÷÷2 ;
;
÷÷; <
textRightButton
◊◊ 
=
◊◊ 

Properties
◊◊ (
.
◊◊( )
	Resources
◊◊) 2
.
◊◊2 3
bttEliminate
◊◊3 ?
;
◊◊? @
SelectLabel
ÿÿ 
(
ÿÿ 
lblMyFriends
ÿÿ $
)
ÿÿ$ %
;
ÿÿ% &
SetCards
ŸŸ 
(
ŸŸ 
)
ŸŸ 
;
ŸŸ 
}
⁄⁄ 	
private
‹‹ 
void
‹‹ +
ClickConsultFriendSolicitudes
‹‹ 2
(
‹‹2 3
object
‹‹3 9
sender
‹‹: @
,
‹‹@ A"
MouseButtonEventArgs
‹‹B V
e
‹‹W X
)
‹‹X Y
{
›› 	
typeUserConsult
ﬁﬁ 
=
ﬁﬁ 
FRIENDS_REQUEST
ﬁﬁ -
;
ﬁﬁ- .
textLeftButton
ﬂﬂ 
=
ﬂﬂ 

Properties
ﬂﬂ '
.
ﬂﬂ' (
	Resources
ﬂﬂ( 1
.
ﬂﬂ1 2$
bttAcceptFriendRequest
ﬂﬂ2 H
;
ﬂﬂH I
textRightButton
‡‡ 
=
‡‡ 

Properties
‡‡ (
.
‡‡( )
	Resources
‡‡) 2
.
‡‡2 3%
bttDeclineFriendRequest
‡‡3 J
;
‡‡J K
SelectLabel
·· 
(
·· 
lblRequests
·· #
)
··# $
;
··$ %
SetCards
‚‚ 
(
‚‚ 
)
‚‚ 
;
‚‚ 
}
„„ 	
private
ÂÂ 
void
ÂÂ $
ClickConsultMorePeople
ÂÂ +
(
ÂÂ+ ,
object
ÂÂ, 2
sender
ÂÂ3 9
,
ÂÂ9 :"
MouseButtonEventArgs
ÂÂ; O
e
ÂÂP Q
)
ÂÂQ R
{
ÊÊ 	
typeUserConsult
ÁÁ 
=
ÁÁ 
OTHER_PEOPLE
ÁÁ *
;
ÁÁ* +
textLeftButton
ËË 
=
ËË 

Properties
ËË '
.
ËË' (
	Resources
ËË( 1
.
ËË1 2
bttAddFriend
ËË2 >
;
ËË> ?
textRightButton
ÈÈ 
=
ÈÈ 

Properties
ÈÈ (
.
ÈÈ( )
	Resources
ÈÈ) 2
.
ÈÈ2 3
	bttReport
ÈÈ3 <
;
ÈÈ< =
SelectLabel
ÍÍ 
(
ÍÍ 
lblMorePeople
ÍÍ %
)
ÍÍ% &
;
ÍÍ& '
SetCards
ÎÎ 
(
ÎÎ 
)
ÎÎ 
;
ÎÎ 
}
ÏÏ 	
private
ÓÓ 
void
ÓÓ 
SelectLabel
ÓÓ  
(
ÓÓ  !
Label
ÓÓ! &
selectedLabel
ÓÓ' 4
)
ÓÓ4 5
{
ÔÔ 	
lblMyFriends
 
.
 
FontSize
 !
=
" #
$num
$ &
;
& '
lblMyFriends
ÒÒ 
.
ÒÒ 

Foreground
ÒÒ #
=
ÒÒ$ %
new
ÒÒ& )
SolidColorBrush
ÒÒ* 9
(
ÒÒ9 :
Colors
ÒÒ: @
.
ÒÒ@ A
White
ÒÒA F
)
ÒÒF G
;
ÒÒG H
lblRequests
ÚÚ 
.
ÚÚ 
FontSize
ÚÚ  
=
ÚÚ! "
$num
ÚÚ# %
;
ÚÚ% &
lblRequests
ÛÛ 
.
ÛÛ 

Foreground
ÛÛ "
=
ÛÛ# $
new
ÛÛ% (
SolidColorBrush
ÛÛ) 8
(
ÛÛ8 9
Colors
ÛÛ9 ?
.
ÛÛ? @
White
ÛÛ@ E
)
ÛÛE F
;
ÛÛF G
lblMorePeople
ÙÙ 
.
ÙÙ 
FontSize
ÙÙ "
=
ÙÙ# $
$num
ÙÙ% '
;
ÙÙ' (
lblMorePeople
ıı 
.
ıı 

Foreground
ıı $
=
ıı% &
new
ıı' *
SolidColorBrush
ıı+ :
(
ıı: ;
Colors
ıı; A
.
ııA B
White
ııB G
)
ııG H
;
ııH I
selectedLabel
ˆˆ 
.
ˆˆ 
FontSize
ˆˆ "
=
ˆˆ# $
$num
ˆˆ% '
;
ˆˆ' (
selectedLabel
˜˜ 
.
˜˜ 

Foreground
˜˜ $
=
˜˜% &
new
˜˜' *
SolidColorBrush
˜˜+ :
(
˜˜: ;
Colors
˜˜; A
.
˜˜A B
	LightGray
˜˜B K
)
˜˜K L
;
˜˜L M
}
¯¯ 	
public
˙˙ 
void
˙˙ 

ReportUser
˙˙ 
(
˙˙ 
int
˙˙ "
idPlayer
˙˙# +
)
˙˙+ ,
{
˚˚ 	
try
¸¸ 
{
˝˝ (
FriendManagerActionsClient
˛˛ *(
friendActionsCallBackProxy
˛˛+ E
=
˛˛F G
new
˛˛H K(
FriendManagerActionsClient
˛˛L f
(
˛˛f g
new
˛˛g j
InstanceContext
˛˛k z
(
˛˛z {
this
˛˛{ 
)˛˛ Ä
)˛˛Ä Å
;˛˛Å Ç(
friendActionsCallBackProxy
ˇˇ *
.
ˇˇ* +,
RenewFriendManagerUserCallBack
ˇˇ+ I
(
ˇˇI J
userSingleton
ˇˇJ W
.
ˇˇW X
IdUser
ˇˇX ^
)
ˇˇ^ _
;
ˇˇ_ `1
#FriendManagerActionOperationsClient
ÅÅ 3 
friendActionsProxy
ÅÅ4 F
=
ÅÅG H
new
ÅÅI L
(
ÅÅL M
)
ÅÅM N
;
ÅÅN O
var
ÇÇ 
result
ÇÇ 
=
ÇÇ  
friendActionsProxy
ÇÇ /
.
ÇÇ/ 0
BanUser
ÇÇ0 7
(
ÇÇ7 8
idPlayer
ÇÇ8 @
,
ÇÇ@ A
userSingleton
ÇÇB O
.
ÇÇO P
IdUser
ÇÇP V
)
ÇÇV W
;
ÇÇW X
if
ÉÉ 
(
ÉÉ 
result
ÉÉ 
.
ÉÉ 
	CodeEvent
ÉÉ $
==
ÉÉ% '!
ExceptionDictionary
ÉÉ( ;
.
ÉÉ; <
SUCCESFULL_EVENT
ÉÉ< L
)
ÉÉL M
{
ÑÑ 
dialogMessage
ÖÖ !
=
ÖÖ" #
new
ÖÖ$ ',
InformationMessageDialogWindow
ÖÖ( F
(
ÖÖF G

Properties
ÖÖG Q
.
ÖÖQ R
	Resources
ÖÖR [
.
ÖÖ[ \!
txbInformationTitle
ÖÖ\ o
,
ÖÖo p

Properties
ÖÖq {
.
ÖÖ{ |
	ResourcesÖÖ| Ö
.ÖÖÖ Ü%
lblSuccesReportedUserÖÖÜ õ
,ÖÖõ ú
ApplicationÖÖù ®
.ÖÖ® ©
CurrentÖÖ© ∞
.ÖÖ∞ ±

MainWindowÖÖ± ª
)ÖÖª º
;ÖÖº Ω
}
ÜÜ 
else
áá 
{
àà 
dialogMessage
ââ !
=
ââ" #
new
ââ$ '&
ErrorMessageDialogWindow
ââ( @
(
ââ@ A

Properties
ââA K
.
ââK L
	Resources
ââL U
.
ââU V
txbErrorTitle
ââV c
,
ââc d

Properties
ââe o
.
ââo p
	Resources
ââp y
.
âây z#
lblFailToReportAUserââz é
,ââé è
Applicationââê õ
.ââõ ú
Currentââú £
.ââ£ §

MainWindowââ§ Æ
)ââÆ Ø
;ââØ ∞
}
ää 
}
ãã 
catch
åå 
(
åå '
EndpointNotFoundException
åå ,
ex
åå- /
)
åå/ 0
{
çç 
HandleException
éé 
(
éé  
ex
éé  "
,
éé" #

Properties
éé$ .
.
éé. /
	Resources
éé/ 8
.
éé8 9"
lblFailToReportAUser
éé9 M
+
ééN O
$str
ééP U
+
ééV W

Properties
ééX b
.
ééb c
	Resources
ééc l
.
éél m"
lblEndPointNotFoundéém Ä
)ééÄ Å
;ééÅ Ç
}
èè 
catch
êê 
(
êê 1
#CommunicationObjectFaultedException
êê 6
ex
êê7 9
)
êê9 :
{
ëë 
HandleException
íí 
(
íí  
ex
íí  "
,
íí" #

Properties
íí$ .
.
íí. /
	Resources
íí/ 8
.
íí8 9"
lblFailToReportAUser
íí9 M
+
ííN O
$str
ííP U
+
ííV W

Properties
ííX b
.
ííb c
	Resources
ííc l
.
ííl m'
lblComunicationExceptioníím Ö
)ííÖ Ü
;ííÜ á
}
ìì 
catch
îî 
(
îî 
TimeoutException
îî #
ex
îî$ &
)
îî& '
{
ïï 
HandleException
ññ 
(
ññ  
ex
ññ  "
,
ññ" #

Properties
ññ$ .
.
ññ. /
	Resources
ññ/ 8
.
ññ8 9"
lblFailToReportAUser
ññ9 M
+
ññN O
$str
ññP U
+
ññV W

Properties
ññX b
.
ññb c
	Resources
ññc l
.
ññl m
lblTimeException
ññm }
)
ññ} ~
;
ññ~ 
}
óó 
catch
òò 
(
òò $
CommunicationException
òò )
ex
òò* ,
)
òò, -
{
ôô 
HandleException
öö 
(
öö  
ex
öö  "
,
öö" #

Properties
öö$ .
.
öö. /
	Resources
öö/ 8
.
öö8 9"
lblFailToReportAUser
öö9 M
+
ööN O
$str
ööP U
+
ööV W

Properties
ööX b
.
ööb c
	Resources
ööc l
.
ööl m'
lblComunicationExceptionööm Ö
)ööÖ Ü
;ööÜ á
}
õõ 
catch
úú 
(
úú 
SocketException
úú "
ex
úú# %
)
úú% &
{
ùù 
HandleException
ûû 
(
ûû  
ex
ûû  "
,
ûû" #

Properties
ûû$ .
.
ûû. /
	Resources
ûû/ 8
.
ûû8 9"
lblFailToReportAUser
ûû9 M
+
ûûN O
$str
ûûP U
+
ûûV W

Properties
ûûX b
.
ûûb c
	Resources
ûûc l
.
ûûl m"
lblEndPointNotFoundûûm Ä
)ûûÄ Å
;ûûÅ Ç
}
üü 
}
†† 	
public
¢¢ 
void
¢¢ 
EliminateFriend
¢¢ #
(
¢¢# $
int
¢¢$ '%
idUserFriendToEliminate
¢¢( ?
)
¢¢? @
{
££ 	
try
§§ 
{
•• (
FriendManagerActionsClient
¶¶ *(
friendActionsCallBackProxy
¶¶+ E
=
¶¶F G
new
¶¶H K(
FriendManagerActionsClient
¶¶L f
(
¶¶f g
new
¶¶g j
InstanceContext
¶¶k z
(
¶¶z {
this
¶¶{ 
)¶¶ Ä
)¶¶Ä Å
;¶¶Å Ç(
friendActionsCallBackProxy
ßß *
.
ßß* +,
RenewFriendManagerUserCallBack
ßß+ I
(
ßßI J
userSingleton
ßßJ W
.
ßßW X
IdUser
ßßX ^
)
ßß^ _
;
ßß_ `1
#FriendManagerActionOperationsClient
©© 3 
friendActionsProxy
©©4 F
=
©©G H
new
©©I L
(
©©L M
)
©©M N
;
©©N O 
friendActionsProxy
™™ "
.
™™" #&
EliminateUserFromFriends
™™# ;
(
™™; <
userSingleton
™™< I
.
™™I J
IdPlayer
™™J R
,
™™R S%
idUserFriendToEliminate
™™T k
)
™™k l
;
™™l m
String
´´ 
userName
´´ 
=
´´  !
String
´´" (
.
´´( )
Empty
´´) .
;
´´. /
foreach
¨¨ 
(
¨¨ 
var
¨¨ 
item
¨¨ !
in
¨¨" $
friends
¨¨% ,
)
¨¨, -
{
≠≠ 
if
ÆÆ 
(
ÆÆ 
item
ÆÆ 
.
ÆÆ 
IdUser
ÆÆ #
==
ÆÆ$ &%
idUserFriendToEliminate
ÆÆ' >
)
ÆÆ> ?
{
ØØ 
friends
∞∞ 
.
∞∞  
Remove
∞∞  &
(
∞∞& '
item
∞∞' +
)
∞∞+ ,
;
∞∞, -
userName
±±  
=
±±! "
item
±±# '
.
±±' (
UserName
±±( 0
;
±±0 1
break
≤≤ 
;
≤≤ 
}
≥≥ 
}
¥¥ 
if
µµ 
(
µµ 
!
µµ 
otherPeople
µµ  
.
µµ  !
Exists
µµ! '
(
µµ' (
pla
µµ( +
=>
µµ, .
pla
µµ/ 2
.
µµ2 3
UserName
µµ3 ;
.
µµ; <
Equals
µµ< B
(
µµB C
userName
µµC K
)
µµK L
)
µµL M
)
µµM N
{
∂∂ $
FriendBasicInformation
∑∑ *
	newFriend
∑∑+ 4
=
∑∑5 6
new
∑∑7 :$
FriendBasicInformation
∑∑; Q
(
∑∑Q R
)
∑∑R S
;
∑∑S T
	newFriend
∏∏ 
.
∏∏ 
IdUser
∏∏ $
=
∏∏% &%
idUserFriendToEliminate
∏∏' >
;
∏∏> ?
	newFriend
ππ 
.
ππ 
UserName
ππ &
=
ππ' (
userName
ππ) 1
;
ππ1 2
	newFriend
∫∫ 
.
∫∫ "
IdStatusAvailability
∫∫ 2
=
∫∫3 4

NOT_STATUS
∫∫5 ?
;
∫∫? @
otherPeople
ªª 
.
ªª  
Add
ªª  #
(
ªª# $
	newFriend
ªª$ -
)
ªª- .
;
ªª. /
}
ºº 
SetCards
ΩΩ 
(
ΩΩ 
)
ΩΩ 
;
ΩΩ 
}
ææ 
catch
øø 
(
øø '
EndpointNotFoundException
øø ,
ex
øø- /
)
øø/ 0
{
¿¿ 
HandleException
¡¡ 
(
¡¡  
ex
¡¡  "
,
¡¡" #

Properties
¡¡$ .
.
¡¡. /
	Resources
¡¡/ 8
.
¡¡8 9&
lblFailToEliminateFriend
¡¡9 Q
+
¡¡R S
$str
¡¡T Y
+
¡¡Z [

Properties
¡¡\ f
.
¡¡f g
	Resources
¡¡g p
.
¡¡p q"
lblEndPointNotFound¡¡q Ñ
)¡¡Ñ Ö
;¡¡Ö Ü
}
¬¬ 
catch
√√ 
(
√√ 1
#CommunicationObjectFaultedException
√√ 6
ex
√√7 9
)
√√9 :
{
ƒƒ 
HandleException
≈≈ 
(
≈≈  
ex
≈≈  "
,
≈≈" #

Properties
≈≈$ .
.
≈≈. /
	Resources
≈≈/ 8
.
≈≈8 9&
lblFailToEliminateFriend
≈≈9 Q
+
≈≈R S
$str
≈≈T Y
+
≈≈Z [

Properties
≈≈\ f
.
≈≈f g
	Resources
≈≈g p
.
≈≈p q'
lblComunicationException≈≈q â
)≈≈â ä
;≈≈ä ã
}
∆∆ 
catch
«« 
(
«« 
TimeoutException
«« #
ex
««$ &
)
««& '
{
»» 
HandleException
…… 
(
……  
ex
……  "
,
……" #

Properties
……$ .
.
……. /
	Resources
……/ 8
.
……8 9&
lblFailToEliminateFriend
……9 Q
+
……R S
$str
……T Y
+
……Z [

Properties
……\ f
.
……f g
	Resources
……g p
.
……p q
lblTimeException……q Å
)……Å Ç
;……Ç É
}
   
catch
ÀÀ 
(
ÀÀ $
CommunicationException
ÀÀ )
ex
ÀÀ* ,
)
ÀÀ, -
{
ÃÃ 
HandleException
ÕÕ 
(
ÕÕ  
ex
ÕÕ  "
,
ÕÕ" #

Properties
ÕÕ$ .
.
ÕÕ. /
	Resources
ÕÕ/ 8
.
ÕÕ8 9&
lblFailToEliminateFriend
ÕÕ9 Q
+
ÕÕR S
$str
ÕÕT Y
+
ÕÕZ [

Properties
ÕÕ\ f
.
ÕÕf g
	Resources
ÕÕg p
.
ÕÕp q'
lblComunicationExceptionÕÕq â
)ÕÕâ ä
;ÕÕä ã
}
ŒŒ 
catch
œœ 
(
œœ 
SocketException
œœ "
ex
œœ# %
)
œœ% &
{
–– 
HandleException
—— 
(
——  
ex
——  "
,
——" #

Properties
——$ .
.
——. /
	Resources
——/ 8
.
——8 9"
lblFailToReportAUser
——9 M
+
——N O
$str
——P U
+
——V W

Properties
——X b
.
——b c
	Resources
——c l
.
——l m"
lblEndPointNotFound——m Ä
)——Ä Å
;——Å Ç
}
““ 
}
”” 	
public
’’ 
void
’’ 
SentFriendRequest
’’ %
(
’’% &
int
’’& )
idUserRequested
’’* 9
)
’’9 :
{
÷÷ 	
try
◊◊ 
{
ÿÿ (
FriendManagerActionsClient
ŸŸ *(
friendActionsCallBackProxy
ŸŸ+ E
=
ŸŸF G
new
ŸŸH K(
FriendManagerActionsClient
ŸŸL f
(
ŸŸf g
new
ŸŸg j
InstanceContext
ŸŸk z
(
ŸŸz {
this
ŸŸ{ 
)ŸŸ Ä
)ŸŸÄ Å
;ŸŸÅ Ç(
friendActionsCallBackProxy
⁄⁄ *
.
⁄⁄* +,
RenewFriendManagerUserCallBack
⁄⁄+ I
(
⁄⁄I J
userSingleton
⁄⁄J W
.
⁄⁄W X
IdUser
⁄⁄X ^
)
⁄⁄^ _
;
⁄⁄_ `1
#FriendManagerActionOperationsClient
‹‹ 3 
friendActionsProxy
‹‹4 F
=
‹‹G H
new
‹‹I L
(
‹‹L M
)
‹‹M N
;
‹‹N O 
friendActionsProxy
›› "
.
››" #
SendFriendRequest
››# 4
(
››4 5
userSingleton
››5 B
.
››B C
IdPlayer
››C K
,
››K L
idUserRequested
››M \
)
››\ ]
;
››] ^$
FriendBasicInformation
ﬁﬁ &
item
ﬁﬁ' +
=
ﬁﬁ, -
otherPeople
ﬁﬁ. 9
.
ﬁﬁ9 :
Find
ﬁﬁ: >
(
ﬁﬁ> ?
pla
ﬁﬁ? B
=>
ﬁﬁC E
pla
ﬁﬁF I
.
ﬁﬁI J
IdUser
ﬁﬁJ P
==
ﬁﬁQ S
idUserRequested
ﬁﬁT c
)
ﬁﬁc d
;
ﬁﬁd e
if
ﬂﬂ 
(
ﬂﬂ 
item
ﬂﬂ 
.
ﬂﬂ 
IdUser
ﬂﬂ 
==
ﬂﬂ  "
idUserRequested
ﬂﬂ# 2
)
ﬂﬂ2 3
{
‡‡ 
otherPeople
·· 
.
··  
Remove
··  &
(
··& '
item
··' +
)
··+ ,
;
··, -
}
‚‚ 
SetCards
„„ 
(
„„ 
)
„„ 
;
„„ 
}
‰‰ 
catch
ÂÂ 
(
ÂÂ '
EndpointNotFoundException
ÂÂ ,
ex
ÂÂ- /
)
ÂÂ/ 0
{
ÊÊ 
HandleException
ÁÁ 
(
ÁÁ  
ex
ÁÁ  "
,
ÁÁ" #

Properties
ÁÁ$ .
.
ÁÁ. /
	Resources
ÁÁ/ 8
.
ÁÁ8 9+
lblFailToSentTheFriendRequest
ÁÁ9 V
+
ÁÁW X
$str
ÁÁY ^
+
ÁÁ_ `

Properties
ÁÁa k
.
ÁÁk l
	Resources
ÁÁl u
.
ÁÁu v"
lblEndPointNotFoundÁÁv â
)ÁÁâ ä
;ÁÁä ã
}
ËË 
catch
ÈÈ 
(
ÈÈ 1
#CommunicationObjectFaultedException
ÈÈ 6
ex
ÈÈ7 9
)
ÈÈ9 :
{
ÍÍ 
HandleException
ÎÎ 
(
ÎÎ  
ex
ÎÎ  "
,
ÎÎ" #

Properties
ÎÎ$ .
.
ÎÎ. /
	Resources
ÎÎ/ 8
.
ÎÎ8 9+
lblFailToSentTheFriendRequest
ÎÎ9 V
+
ÎÎW X
$str
ÎÎY ^
+
ÎÎ_ `

Properties
ÎÎa k
.
ÎÎk l
	Resources
ÎÎl u
.
ÎÎu v'
lblComunicationExceptionÎÎv é
)ÎÎé è
;ÎÎè ê
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
ÓÓ 
HandleException
ÔÔ 
(
ÔÔ  
ex
ÔÔ  "
,
ÔÔ" #

Properties
ÔÔ$ .
.
ÔÔ. /
	Resources
ÔÔ/ 8
.
ÔÔ8 9+
lblFailToSentTheFriendRequest
ÔÔ9 V
+
ÔÔW X
$str
ÔÔY ^
+
ÔÔ_ `

Properties
ÔÔa k
.
ÔÔk l
	Resources
ÔÔl u
.
ÔÔu v
lblTimeExceptionÔÔv Ü
)ÔÔÜ á
;ÔÔá à
}
 
catch
ÒÒ 
(
ÒÒ $
CommunicationException
ÒÒ )
ex
ÒÒ* ,
)
ÒÒ, -
{
ÚÚ 
HandleException
ÛÛ 
(
ÛÛ  
ex
ÛÛ  "
,
ÛÛ" #

Properties
ÛÛ$ .
.
ÛÛ. /
	Resources
ÛÛ/ 8
.
ÛÛ8 9+
lblFailToSentTheFriendRequest
ÛÛ9 V
+
ÛÛW X
$str
ÛÛY ^
+
ÛÛ_ `

Properties
ÛÛa k
.
ÛÛk l
	Resources
ÛÛl u
.
ÛÛu v'
lblComunicationExceptionÛÛv é
)ÛÛé è
;ÛÛè ê
}
ÙÙ 
catch
ıı 
(
ıı 
SocketException
ıı "
ex
ıı# %
)
ıı% &
{
ˆˆ 
HandleException
˜˜ 
(
˜˜  
ex
˜˜  "
,
˜˜" #

Properties
˜˜$ .
.
˜˜. /
	Resources
˜˜/ 8
.
˜˜8 9"
lblFailToReportAUser
˜˜9 M
+
˜˜N O
$str
˜˜P U
+
˜˜V W

Properties
˜˜X b
.
˜˜b c
	Resources
˜˜c l
.
˜˜l m"
lblEndPointNotFound˜˜m Ä
)˜˜Ä Å
;˜˜Å Ç
}
¯¯ 
}
˘˘ 	
public
˚˚ 
void
˚˚ !
AcceptFriendRequest
˚˚ '
(
˚˚' (
int
˚˚( +
idUserRequesting
˚˚, <
,
˚˚< =
String
˚˚> D
userName
˚˚E M
)
˚˚M N
{
¸¸ 	
try
˝˝ 
{
˛˛ (
FriendManagerActionsClient
ˇˇ *(
friendActionsCallBackProxy
ˇˇ+ E
=
ˇˇF G
new
ˇˇH K(
FriendManagerActionsClient
ˇˇL f
(
ˇˇf g
new
ˇˇg j
InstanceContext
ˇˇk z
(
ˇˇz {
this
ˇˇ{ 
)ˇˇ Ä
)ˇˇÄ Å
;ˇˇÅ Ç(
friendActionsCallBackProxy
ÄÄ *
.
ÄÄ* +,
RenewFriendManagerUserCallBack
ÄÄ+ I
(
ÄÄI J
userSingleton
ÄÄJ W
.
ÄÄW X
IdUser
ÄÄX ^
)
ÄÄ^ _
;
ÄÄ_ `1
#FriendManagerActionOperationsClient
ÇÇ 3 
friendActionsProxy
ÇÇ4 F
=
ÇÇG H
new
ÇÇI L
(
ÇÇL M
)
ÇÇM N
;
ÇÇN O 
friendActionsProxy
ÉÉ "
.
ÉÉ" #!
AcceptFriendRequest
ÉÉ# 6
(
ÉÉ6 7
userSingleton
ÉÉ7 D
.
ÉÉD E
IdPlayer
ÉÉE M
,
ÉÉM N
idUserRequesting
ÉÉO _
)
ÉÉ_ `
;
ÉÉ` a
foreach
ÑÑ 
(
ÑÑ 
var
ÑÑ 
item
ÑÑ !
in
ÑÑ" $
friendRequests
ÑÑ% 3
)
ÑÑ3 4
{
ÖÖ 
if
ÜÜ 
(
ÜÜ 
item
ÜÜ 
.
ÜÜ 
IdUser
ÜÜ #
==
ÜÜ$ &
idUserRequesting
ÜÜ' 7
)
ÜÜ7 8
{
áá 
friendRequests
àà &
.
àà& '
Remove
àà' -
(
àà- .
item
àà. 2
)
àà2 3
;
àà3 4
break
ââ 
;
ââ 
}
ää 
}
ãã 
if
åå 
(
åå 
!
åå 
friends
åå 
.
åå 
Exists
åå #
(
åå# $
pla
åå$ '
=>
åå( *
pla
åå+ .
.
åå. /
IdUser
åå/ 5
==
åå6 8
idUserRequesting
åå9 I
)
ååI J
)
ååJ K
{
çç $
FriendBasicInformation
éé *
	newFriend
éé+ 4
=
éé5 6
new
éé7 :$
FriendBasicInformation
éé; Q
(
ééQ R
)
ééR S
;
ééS T
	newFriend
èè 
.
èè 
IdUser
èè $
=
èè% &
idUserRequesting
èè' 7
;
èè7 8
	newFriend
êê 
.
êê 
UserName
êê &
=
êê' (
userName
êê) 1
;
êê1 2
	newFriend
ëë 
.
ëë "
IdStatusAvailability
ëë 2
=
ëë3 4

NOT_STATUS
ëë5 ?
;
ëë? @
friends
íí 
.
íí 
Add
íí 
(
íí  
	newFriend
íí  )
)
íí) *
;
íí* +
}
ìì 
SetCards
îî 
(
îî 
)
îî 
;
îî 
}
ïï 
catch
ññ 
(
ññ '
EndpointNotFoundException
ññ ,
ex
ññ- /
)
ññ/ 0
{
óó 
HandleException
òò 
(
òò  
ex
òò  "
,
òò" #

Properties
òò$ .
.
òò. /
	Resources
òò/ 8
.
òò8 9&
lblFailToAccepInvitation
òò9 Q
+
òòR S
$str
òòT Y
+
òòZ [

Properties
òò\ f
.
òòf g
	Resources
òòg p
.
òòp q"
lblEndPointNotFoundòòq Ñ
)òòÑ Ö
;òòÖ Ü
}
ôô 
catch
öö 
(
öö 1
#CommunicationObjectFaultedException
öö 6
ex
öö7 9
)
öö9 :
{
õõ 
HandleException
úú 
(
úú  
ex
úú  "
,
úú" #

Properties
úú$ .
.
úú. /
	Resources
úú/ 8
.
úú8 9&
lblFailToAccepInvitation
úú9 Q
+
úúR S
$str
úúT Y
+
úúZ [

Properties
úú\ f
.
úúf g
	Resources
úúg p
.
úúp q'
lblComunicationExceptionúúq â
)úúâ ä
;úúä ã
}
ùù 
catch
ûû 
(
ûû 
TimeoutException
ûû #
ex
ûû$ &
)
ûû& '
{
üü 
HandleException
†† 
(
††  
ex
††  "
,
††" #

Properties
††$ .
.
††. /
	Resources
††/ 8
.
††8 9&
lblFailToAccepInvitation
††9 Q
+
††R S
$str
††T Y
+
††Z [

Properties
††\ f
.
††f g
	Resources
††g p
.
††p q
lblTimeException††q Å
)††Å Ç
;††Ç É
}
°° 
catch
¢¢ 
(
¢¢ $
CommunicationException
¢¢ )
ex
¢¢* ,
)
¢¢, -
{
££ 
HandleException
§§ 
(
§§  
ex
§§  "
,
§§" #

Properties
§§$ .
.
§§. /
	Resources
§§/ 8
.
§§8 9&
lblFailToAccepInvitation
§§9 Q
+
§§R S
$str
§§T Y
+
§§Z [

Properties
§§\ f
.
§§f g
	Resources
§§g p
.
§§p q'
lblComunicationException§§q â
)§§â ä
;§§ä ã
}
•• 
catch
¶¶ 
(
¶¶ 
SocketException
¶¶ "
ex
¶¶# %
)
¶¶% &
{
ßß 
HandleException
®® 
(
®®  
ex
®®  "
,
®®" #

Properties
®®$ .
.
®®. /
	Resources
®®/ 8
.
®®8 9"
lblFailToReportAUser
®®9 M
+
®®N O
$str
®®P U
+
®®V W

Properties
®®X b
.
®®b c
	Resources
®®c l
.
®®l m"
lblEndPointNotFound®®m Ä
)®®Ä Å
;®®Å Ç
}
©© 
}
™™ 	
public
¨¨ 
void
¨¨ "
DeclineFriendRequest
¨¨ (
(
¨¨( )
int
¨¨) ,
idUserRequesting
¨¨- =
,
¨¨= >
String
¨¨? E
userName
¨¨F N
)
¨¨N O
{
≠≠ 	
try
ÆÆ 
{
ØØ (
FriendManagerActionsClient
∞∞ *(
friendActionsCallBackProxy
∞∞+ E
=
∞∞F G
new
∞∞H K(
FriendManagerActionsClient
∞∞L f
(
∞∞f g
new
∞∞g j
InstanceContext
∞∞k z
(
∞∞z {
this
∞∞{ 
)∞∞ Ä
)∞∞Ä Å
;∞∞Å Ç(
friendActionsCallBackProxy
±± *
.
±±* +,
RenewFriendManagerUserCallBack
±±+ I
(
±±I J
userSingleton
±±J W
.
±±W X
IdUser
±±X ^
)
±±^ _
;
±±_ `1
#FriendManagerActionOperationsClient
≥≥ 3 
friendActionsProxy
≥≥4 F
=
≥≥G H
new
≥≥I L
(
≥≥L M
)
≥≥M N
;
≥≥N O 
friendActionsProxy
¥¥ "
.
¥¥" #"
DeclineFriendRequest
¥¥# 7
(
¥¥7 8
userSingleton
¥¥8 E
.
¥¥E F
IdPlayer
¥¥F N
,
¥¥N O
idUserRequesting
¥¥P `
)
¥¥` a
;
¥¥a b
foreach
µµ 
(
µµ 
var
µµ 
item
µµ !
in
µµ" $
friendRequests
µµ% 3
)
µµ3 4
{
∂∂ 
if
∑∑ 
(
∑∑ 
item
∑∑ 
.
∑∑ 
IdUser
∑∑ #
==
∑∑$ &
idUserRequesting
∑∑' 7
)
∑∑7 8
{
∏∏ 
friendRequests
ππ &
.
ππ& '
Remove
ππ' -
(
ππ- .
item
ππ. 2
)
ππ2 3
;
ππ3 4
break
∫∫ 
;
∫∫ 
}
ªª 
}
ºº 
if
ΩΩ 
(
ΩΩ 
!
ΩΩ 
otherPeople
ΩΩ  
.
ΩΩ  !
Exists
ΩΩ! '
(
ΩΩ' (
pla
ΩΩ( +
=>
ΩΩ, .
pla
ΩΩ/ 2
.
ΩΩ2 3
IdUser
ΩΩ3 9
==
ΩΩ: <
idUserRequesting
ΩΩ= M
)
ΩΩM N
)
ΩΩN O
{
ææ $
FriendBasicInformation
øø *
	newFriend
øø+ 4
=
øø5 6
new
øø7 :$
FriendBasicInformation
øø; Q
(
øøQ R
)
øøR S
;
øøS T
	newFriend
¿¿ 
.
¿¿ 
IdUser
¿¿ $
=
¿¿% &
idUserRequesting
¿¿' 7
;
¿¿7 8
	newFriend
¡¡ 
.
¡¡ 
UserName
¡¡ &
=
¡¡' (
userName
¡¡) 1
;
¡¡1 2
	newFriend
¬¬ 
.
¬¬ "
IdStatusAvailability
¬¬ 2
=
¬¬3 4

NOT_STATUS
¬¬5 ?
;
¬¬? @
otherPeople
√√ 
.
√√  
Add
√√  #
(
√√# $
	newFriend
√√$ -
)
√√- .
;
√√. /
}
ƒƒ 
SetCards
≈≈ 
(
≈≈ 
)
≈≈ 
;
≈≈ 
}
∆∆ 
catch
«« 
(
«« '
EndpointNotFoundException
«« ,
ex
««- /
)
««/ 0
{
»» 
HandleException
…… 
(
……  
ex
……  "
,
……" #

Properties
……$ .
.
……. /
	Resources
……/ 8
.
……8 9%
lblFailToDeclineRequest
……9 P
+
……Q R
$str
……S X
+
……Y Z

Properties
……[ e
.
……e f
	Resources
……f o
.
……o p"
lblEndPointNotFound……p É
)……É Ñ
;……Ñ Ö
}
   
catch
ÀÀ 
(
ÀÀ 1
#CommunicationObjectFaultedException
ÀÀ 6
ex
ÀÀ7 9
)
ÀÀ9 :
{
ÃÃ 
HandleException
ÕÕ 
(
ÕÕ  
ex
ÕÕ  "
,
ÕÕ" #

Properties
ÕÕ$ .
.
ÕÕ. /
	Resources
ÕÕ/ 8
.
ÕÕ8 9%
lblFailToDeclineRequest
ÕÕ9 P
+
ÕÕQ R
$str
ÕÕS X
+
ÕÕY Z

Properties
ÕÕ[ e
.
ÕÕe f
	Resources
ÕÕf o
.
ÕÕo p'
lblComunicationExceptionÕÕp à
)ÕÕà â
;ÕÕâ ä
}
ŒŒ 
catch
œœ 
(
œœ 
TimeoutException
œœ #
ex
œœ$ &
)
œœ& '
{
–– 
HandleException
—— 
(
——  
ex
——  "
,
——" #

Properties
——$ .
.
——. /
	Resources
——/ 8
.
——8 9%
lblFailToDeclineRequest
——9 P
+
——Q R
$str
——S X
+
——Y Z

Properties
——[ e
.
——e f
	Resources
——f o
.
——o p
lblTimeException——p Ä
)——Ä Å
;——Å Ç
}
““ 
catch
”” 
(
”” $
CommunicationException
”” )
ex
””* ,
)
””, -
{
‘‘ 
HandleException
’’ 
(
’’  
ex
’’  "
,
’’" #

Properties
’’$ .
.
’’. /
	Resources
’’/ 8
.
’’8 9%
lblFailToDeclineRequest
’’9 P
+
’’Q R
$str
’’S X
+
’’Y Z

Properties
’’[ e
.
’’e f
	Resources
’’f o
.
’’o p'
lblComunicationException’’p à
)’’à â
;’’â ä
}
÷÷ 
catch
◊◊ 
(
◊◊ 
SocketException
◊◊ "
ex
◊◊# %
)
◊◊% &
{
ÿÿ 
HandleException
ŸŸ 
(
ŸŸ  
ex
ŸŸ  "
,
ŸŸ" #

Properties
ŸŸ$ .
.
ŸŸ. /
	Resources
ŸŸ/ 8
.
ŸŸ8 9"
lblFailToReportAUser
ŸŸ9 M
+
ŸŸN O
$str
ŸŸP U
+
ŸŸV W

Properties
ŸŸX b
.
ŸŸb c
	Resources
ŸŸc l
.
ŸŸl m"
lblEndPointNotFoundŸŸm Ä
)ŸŸÄ Å
;ŸŸÅ Ç
}
⁄⁄ 
}
€€ 	
public
›› 
void
›› 
ResponseReported
›› $
(
››$ %
int
››% (

numReports
››) 3
)
››3 4
{
ﬁﬁ 	
dialogMessage
ﬂﬂ 
=
ﬂﬂ 
new
ﬂﬂ ,
InformationMessageDialogWindow
ﬂﬂ  >
(
ﬂﬂ> ?

Properties
ﬂﬂ? I
.
ﬂﬂI J
	Resources
ﬂﬂJ S
.
ﬂﬂS T
txbWarningTitle
ﬂﬂT c
,
ﬂﬂc d

Properties
ﬂﬂe o
.
ﬂﬂo p
	Resources
ﬂﬂp y
.
ﬂﬂy z
MessageReportedﬂﬂz â
+ﬂﬂä ã

numReportsﬂﬂå ñ
.ﬂﬂñ ó
ToStringﬂﬂó ü
(ﬂﬂü †
)ﬂﬂ† °
,ﬂﬂ° ¢
Applicationﬂﬂ£ Æ
.ﬂﬂÆ Ø
CurrentﬂﬂØ ∂
.ﬂﬂ∂ ∑

MainWindowﬂﬂ∑ ¡
)ﬂﬂ¡ ¬
;ﬂﬂ¬ √
}
‡‡ 	
public
‚‚ 
void
‚‚ #
ResponseRequestAction
‚‚ )
(
‚‚) *
int
‚‚* -
idUser
‚‚. 4
,
‚‚4 5
int
‚‚6 9
requestStatus
‚‚: G
,
‚‚G H
string
‚‚I O
userName
‚‚P X
)
‚‚X Y
{
„„ 	
switch
‰‰ 
(
‰‰ 
requestStatus
‰‰ !
)
‰‰! "
{
ÂÂ 
case
ÊÊ 
DECLINED_REQUEST
ÊÊ %
:
ÊÊ% &
ManageResponse
ÁÁ "
(
ÁÁ" #
friendRequests
ÁÁ# 1
,
ÁÁ1 2
otherPeople
ÁÁ3 >
,
ÁÁ> ?
idUser
ÁÁ? E
,
ÁÁE F
userName
ÁÁF N
)
ÁÁN O
;
ÁÁO P&
lblDeclineRequestMessage
ËË ,
.
ËË, -
Content
ËË- 4
=
ËË5 6
userName
ËË7 ?
+
ËË@ A
$str
ËËB E
+
ËËF G

Properties
ËËH R
.
ËËR S
	Resources
ËËS \
.
ËË\ ]%
MessageFriRequeDeclined
ËË] t
;
ËËt u

StartTimer
ÈÈ 
(
ÈÈ 
)
ÈÈ  
;
ÈÈ  !
break
ÍÍ 
;
ÍÍ 
case
ÎÎ 
SEND_REQUEST
ÎÎ !
:
ÎÎ! "
ManageResponse
ÏÏ "
(
ÏÏ" #
otherPeople
ÏÏ# .
,
ÏÏ. /
friendRequests
ÏÏ0 >
,
ÏÏ> ?
idUser
ÏÏ@ F
,
ÏÏF G
userName
ÏÏH P
)
ÏÏP Q
;
ÏÏQ R
break
ÌÌ 
;
ÌÌ 
case
ÓÓ 
ACCEPT_REQUEST
ÓÓ #
:
ÓÓ# $
ManageResponse
ÔÔ "
(
ÔÔ" #
friendRequests
ÔÔ# 1
,
ÔÔ1 2
friends
ÔÔ3 :
,
ÔÔ: ;
idUser
ÔÔ< B
,
ÔÔB C
userName
ÔÔD L
)
ÔÔL M
;
ÔÔM N
break
 
;
 
}
ÒÒ 
SetCards
ÚÚ 
(
ÚÚ 
)
ÚÚ 
;
ÚÚ 
}
ÛÛ 	
private
ıı 
void
ıı 
ManageResponse
ıı #
(
ıı# $
List
ıı$ (
<
ıı( )$
FriendBasicInformation
ıı) ?
>
ıı? @
deleteFromList
ııA O
,
ııO P
List
ııQ U
<
ııU V$
FriendBasicInformation
ııV l
>
ııl m
	addToList
ıın w
,
ııw x
int
ııy |
idUserOperationıı} å
,ııå ç
stringııé î
userNameııï ù
)ııù û
{
ˆˆ 	
foreach
˜˜ 
(
˜˜ 
var
˜˜ 
item
˜˜ 
in
˜˜  
deleteFromList
˜˜! /
)
˜˜/ 0
{
¯¯ 
if
˘˘ 
(
˘˘ 
item
˘˘ 
.
˘˘ 
IdUser
˘˘ 
==
˘˘  "
idUserOperation
˘˘# 2
)
˘˘2 3
{
˙˙ 
deleteFromList
˚˚ "
.
˚˚" #
Remove
˚˚# )
(
˚˚) *
item
˚˚* .
)
˚˚. /
;
˚˚/ 0
break
¸¸ 
;
¸¸ 
}
˝˝ 
}
˛˛ 
if
ˇˇ 
(
ˇˇ 
!
ˇˇ 
	addToList
ˇˇ 
.
ˇˇ 
Exists
ˇˇ  
(
ˇˇ  !
pla
ˇˇ! $
=>
ˇˇ% '
pla
ˇˇ( +
.
ˇˇ+ ,
IdUser
ˇˇ, 2
==
ˇˇ3 5
idUserOperation
ˇˇ6 E
)
ˇˇE F
)
ˇˇF G
{
ÄÄ $
FriendBasicInformation
ÅÅ &
	newFriend
ÅÅ' 0
=
ÅÅ1 2
new
ÅÅ3 6$
FriendBasicInformation
ÅÅ7 M
(
ÅÅM N
)
ÅÅN O
;
ÅÅO P
	newFriend
ÇÇ 
.
ÇÇ 
IdUser
ÇÇ  
=
ÇÇ! "
idUserOperation
ÇÇ# 2
;
ÇÇ2 3
	newFriend
ÉÉ 
.
ÉÉ 
UserName
ÉÉ "
=
ÉÉ# $
userName
ÉÉ% -
;
ÉÉ- .
	newFriend
ÑÑ 
.
ÑÑ "
IdStatusAvailability
ÑÑ .
=
ÑÑ/ 0

NOT_STATUS
ÑÑ1 ;
;
ÑÑ; <
	addToList
ÖÖ 
.
ÖÖ 
Add
ÖÖ 
(
ÖÖ 
	newFriend
ÖÖ '
)
ÖÖ' (
;
ÖÖ( )
}
ÜÜ 
}
áá 	
public
ââ 
void
ââ ,
ResponseEliminationFromFriends
ââ 2
(
ââ2 3
int
ââ3 6
IdUser
ââ7 =
)
ââ= >
{
ää 	
String
ãã 
userName
ãã 
=
ãã 
String
ãã $
.
ãã$ %
Empty
ãã% *
;
ãã* +
foreach
åå 
(
åå 
var
åå 
item
åå 
in
åå  
friends
åå! (
)
åå( )
{
çç 
if
éé 
(
éé 
item
éé 
.
éé 
IdUser
éé 
==
éé  "
IdUser
éé# )
)
éé) *
{
èè 
friends
êê 
.
êê 
Remove
êê "
(
êê" #
item
êê# '
)
êê' (
;
êê( )
userName
ëë 
=
ëë 
item
ëë #
.
ëë# $
UserName
ëë$ ,
;
ëë, -
break
íí 
;
íí 
}
ìì 
}
îî 
if
ïï 
(
ïï 
!
ïï 
otherPeople
ïï 
.
ïï 
Exists
ïï #
(
ïï# $
pla
ïï$ '
=>
ïï( *
pla
ïï+ .
.
ïï. /
IdUser
ïï/ 5
==
ïï6 8
IdUser
ïï9 ?
)
ïï? @
)
ïï@ A
{
ññ $
FriendBasicInformation
óó &
	newFriend
óó' 0
=
óó1 2
new
óó3 6$
FriendBasicInformation
óó7 M
(
óóM N
)
óóN O
;
óóO P
	newFriend
òò 
.
òò 
IdUser
òò  
=
òò! "
IdUser
òò# )
;
òò) *
	newFriend
ôô 
.
ôô 
UserName
ôô "
=
ôô# $
userName
ôô% -
;
ôô- .
	newFriend
öö 
.
öö "
IdStatusAvailability
öö .
=
öö/ 0

NOT_STATUS
öö1 ;
;
öö; <
otherPeople
õõ 
.
õõ 
Add
õõ 
(
õõ  
	newFriend
õõ  )
)
õõ) *
;
õõ* +
}
úú 
SetCards
ùù 
(
ùù 
)
ùù 
;
ùù 
}
ûû 	
private
†† 
void
†† %
ClickSearchPlayerButton
†† ,
(
††, -
object
††- 3
sender
††4 :
,
††: ;
RoutedEventArgs
††< K
e
††L M
)
††M N
{
°° 	
String
¢¢ 
userNameToSearch
¢¢ #
=
¢¢$ %
txbUserToSearch
¢¢& 5
.
¢¢5 6
Text
¢¢6 :
;
¢¢: ;
if
££ 
(
££ 
!
££ 
userNameToSearch
££ !
.
££! "
Equals
££" (
(
££( )

Properties
££) 3
.
££3 4
	Resources
££4 =
.
££= >
	bttSearch
££> G
)
££G H
)
££H I
{
§§ #
stpFrinedsManagerList
•• %
.
••% &
Children
••& .
.
••. /
Clear
••/ 4
(
••4 5
)
••5 6
;
••6 7
List
¶¶ 
<
¶¶ $
FriendBasicInformation
¶¶ +
>
¶¶+ ,
listOfUsers
¶¶- 8
;
¶¶8 9
switch
ßß 
(
ßß 
typeUserConsult
ßß '
)
ßß' (
{
®® 
case
©© 

MY_FRIENDS
©© #
:
©©# $
listOfUsers
™™ #
=
™™$ %
new
™™& )
List
™™* .
<
™™. /$
FriendBasicInformation
™™/ E
>
™™E F
(
™™F G
friends
™™G N
)
™™N O
;
™™O P
break
´´ 
;
´´ 
case
¨¨ 
FRIENDS_REQUEST
¨¨ (
:
¨¨( )
listOfUsers
≠≠ #
=
≠≠$ %
new
≠≠& )
List
≠≠* .
<
≠≠. /$
FriendBasicInformation
≠≠/ E
>
≠≠E F
(
≠≠F G
friendRequests
≠≠G U
)
≠≠U V
;
≠≠V W
break
ÆÆ 
;
ÆÆ 
case
ØØ 
OTHER_PEOPLE
ØØ %
:
ØØ% &
listOfUsers
∞∞ #
=
∞∞$ %
new
∞∞& )
List
∞∞* .
<
∞∞. /$
FriendBasicInformation
∞∞/ E
>
∞∞E F
(
∞∞F G
otherPeople
∞∞G R
)
∞∞R S
;
∞∞S T
break
±± 
;
±± 
default
≤≤ 
:
≤≤ 
listOfUsers
≥≥ #
=
≥≥$ %
new
≥≥& )
List
≥≥* .
<
≥≥. /$
FriendBasicInformation
≥≥/ E
>
≥≥E F
(
≥≥F G
)
≥≥G H
;
≥≥H I
break
¥¥ 
;
¥¥ 
}
µµ 
foreach
∂∂ 
(
∂∂ $
FriendBasicInformation
∂∂ /
item
∂∂0 4
in
∂∂5 7
listOfUsers
∂∂8 C
)
∂∂C D
{
∑∑ 
if
∏∏ 
(
∏∏ 
item
∏∏ 
.
∏∏ 
UserName
∏∏ %
==
∏∏& (
userNameToSearch
∏∏) 9
)
∏∏9 :
{
ππ 
Border
∫∫ 
brdCard
∫∫ &
=
∫∫' (
new
∫∫) ,
Border
∫∫- 3
(
∫∫3 4
)
∫∫4 5
;
∫∫5 6(
FriendCardManagementWindow
ªª 2"
friendCardManagement
ªª3 G
=
ªªH I
new
ªªJ M(
FriendCardManagementWindow
ªªN h
(
ªªh i
item
ªªi m
.
ªªm n
IdUser
ªªn t
,
ªªt u
item
ªªv z
.
ªªz {
UserNameªª{ É
,ªªÉ Ñ
typeUserConsultªªÖ î
,ªªî ï
textLeftButtonªªñ §
,ªª§ •
textRightButtonªª¶ µ
,ªªµ ∂
thisªª∑ ª
)ªªª º
;ªªº Ω
brdCard
ºº 
.
ºº  
Child
ºº  %
=
ºº& '"
friendCardManagement
ºº( <
;
ºº< =#
stpFrinedsManagerList
ΩΩ -
.
ΩΩ- .
Children
ΩΩ. 6
.
ΩΩ6 7
Add
ΩΩ7 :
(
ΩΩ: ; 
SetBorderCardStyle
ΩΩ; M
(
ΩΩM N
brdCard
ΩΩN U
)
ΩΩU V
)
ΩΩV W
;
ΩΩW X
}
ææ 
}
øø 
}
¿¿ 
}
¡¡ 	
private
√√ 
void
√√ 

StartTimer
√√ 
(
√√  
)
√√  !
{
ƒƒ 	
leftTime
≈≈ 
=
≈≈ 
$num
≈≈ 
;
≈≈ 
timer
∆∆ 
=
∆∆ 
new
∆∆ 
DispatcherTimer
∆∆ '
(
∆∆' (
)
∆∆( )
;
∆∆) *
timer
«« 
.
«« 
Interval
«« 
=
«« 
TimeSpan
«« %
.
««% &
FromSeconds
««& 1
(
««1 2
$num
««2 3
)
««3 4
;
««4 5
timer
»» 
.
»» 
Tick
»» 
+=
»» 

Timer_Tick
»» $
;
»»$ %
timer
…… 
.
…… 
Start
…… 
(
…… 
)
…… 
;
…… 
}
   	
private
ÃÃ 
void
ÃÃ 

Timer_Tick
ÃÃ 
(
ÃÃ  
object
ÃÃ  &
sender
ÃÃ' -
,
ÃÃ- .
	EventArgs
ÃÃ/ 8
e
ÃÃ9 :
)
ÃÃ: ;
{
ÕÕ 	
if
ŒŒ 
(
ŒŒ 
leftTime
ŒŒ 
>
ŒŒ 
$num
ŒŒ 
)
ŒŒ 
{
œœ 
leftTime
–– 
--
–– 
;
–– 
}
—— 
else
““ 
{
”” &
lblDeclineRequestMessage
‘‘ (
.
‘‘( )
Content
‘‘) 0
=
‘‘1 2
string
‘‘3 9
.
‘‘9 :
Empty
‘‘: ?
;
‘‘? @
timer
’’ 
.
’’ 
Stop
’’ 
(
’’ 
)
’’ 
;
’’ 
}
÷÷ 
}
◊◊ 	
private
ŸŸ 
void
ŸŸ 
OverSearchBar
ŸŸ "
(
ŸŸ" #
object
ŸŸ# )
sender
ŸŸ* 0
,
ŸŸ0 1
MouseEventArgs
ŸŸ2 @
e
ŸŸA B
)
ŸŸB C
{
⁄⁄ 	
txbUserToSearch
€€ 
.
€€ 
Text
€€  
=
€€! "
string
€€# )
.
€€) *
Empty
€€* /
;
€€/ 0
}
‹‹ 	
private
ﬁﬁ 
void
ﬁﬁ 
HandleException
ﬁﬁ $
(
ﬁﬁ$ %
	Exception
ﬁﬁ% .
ex
ﬁﬁ/ 1
,
ﬁﬁ1 2
string
ﬁﬁ3 9
errorMessage
ﬁﬁ: F
)
ﬁﬁF G
{
ﬂﬂ 	%
ExceptionHandlerForLogs
‡‡ #
.
‡‡# $
LogException
‡‡$ 0
(
‡‡0 1
ex
‡‡1 3
,
‡‡3 4!
ExceptionDictionary
‡‡5 H
.
‡‡H I
FATAL_EXCEPTION
‡‡I X
)
‡‡X Y
;
‡‡Y Z
dialogMessage
·· 
=
·· 
new
·· &
ErrorMessageDialogWindow
··  8
(
··8 9

Properties
··9 C
.
··C D
	Resources
··D M
.
··M N
txbErrorTitle
··N [
,
··[ \
errorMessage
··] i
,
··i j
Application
··k v
.
··v w
Current
··w ~
.
··~ 

MainWindow·· â
)··â ä
;··ä ã
}
‚‚ 	
private
‰‰ 
void
‰‰ 
ClickBackToMenu
‰‰ $
(
‰‰$ %
object
‰‰% +
sender
‰‰, 2
,
‰‰2 3"
MouseButtonEventArgs
‰‰4 H
e
‰‰I J
)
‰‰J K
{
ÂÂ 	
GotoMenu
ÊÊ 
(
ÊÊ 
)
ÊÊ 
;
ÊÊ 
}
ÁÁ 	
private
ÈÈ 
void
ÈÈ 
GotoMenu
ÈÈ 
(
ÈÈ 
)
ÈÈ 
{
ÍÍ 	
try
ÎÎ 
{
ÏÏ 1
#FriendManagerActionOperationsClient
ÌÌ 3 
friendActionsProxy
ÌÌ4 F
=
ÌÌG H
new
ÌÌI L
(
ÌÌL M
)
ÌÌM N
;
ÌÌN O 
friendActionsProxy
ÓÓ "
.
ÓÓ" #)
UnregisterFriendManagerUser
ÓÓ# >
(
ÓÓ> ?
userSingleton
ÓÓ? L
.
ÓÓL M
IdUser
ÓÓM S
)
ÓÓS T
;
ÓÓT U
}
ÔÔ 
catch
 
(
 '
EndpointNotFoundException
 ,
ex
- /
)
/ 0
{
ÒÒ %
ExceptionHandlerForLogs
ÚÚ '
.
ÚÚ' (
LogException
ÚÚ( 4
(
ÚÚ4 5
ex
ÚÚ5 7
,
ÚÚ7 8!
ExceptionDictionary
ÚÚ9 L
.
ÚÚL M
FATAL_EXCEPTION
ÚÚM \
)
ÚÚ\ ]
;
ÚÚ] ^
}
ÛÛ 
catch
ÙÙ 
(
ÙÙ 1
#CommunicationObjectFaultedException
ÙÙ 6
ex
ÙÙ7 9
)
ÙÙ9 :
{
ıı %
ExceptionHandlerForLogs
ˆˆ '
.
ˆˆ' (
LogException
ˆˆ( 4
(
ˆˆ4 5
ex
ˆˆ5 7
,
ˆˆ7 8!
ExceptionDictionary
ˆˆ9 L
.
ˆˆL M
FATAL_EXCEPTION
ˆˆM \
)
ˆˆ\ ]
;
ˆˆ] ^
}
˜˜ 
catch
¯¯ 
(
¯¯ 
TimeoutException
¯¯ #
ex
¯¯$ &
)
¯¯& '
{
˘˘ %
ExceptionHandlerForLogs
˙˙ '
.
˙˙' (
LogException
˙˙( 4
(
˙˙4 5
ex
˙˙5 7
,
˙˙7 8!
ExceptionDictionary
˙˙9 L
.
˙˙L M
FATAL_EXCEPTION
˙˙M \
)
˙˙\ ]
;
˙˙] ^
}
˚˚ 
catch
¸¸ 
(
¸¸ $
CommunicationException
¸¸ )
ex
¸¸* ,
)
¸¸, -
{
˝˝ %
ExceptionHandlerForLogs
˛˛ '
.
˛˛' (
LogException
˛˛( 4
(
˛˛4 5
ex
˛˛5 7
,
˛˛7 8!
ExceptionDictionary
˛˛9 L
.
˛˛L M
FATAL_EXCEPTION
˛˛M \
)
˛˛\ ]
;
˛˛] ^
}
ˇˇ 
catch
ÄÄ 
(
ÄÄ 
SocketException
ÄÄ "
ex
ÄÄ# %
)
ÄÄ% &
{
ÅÅ %
ExceptionHandlerForLogs
ÇÇ '
.
ÇÇ' (
LogException
ÇÇ( 4
(
ÇÇ4 5
ex
ÇÇ5 7
,
ÇÇ7 8!
ExceptionDictionary
ÇÇ9 L
.
ÇÇL M
FATAL_EXCEPTION
ÇÇM \
)
ÇÇ\ ]
;
ÇÇ] ^
}
ÉÉ 
MainMenu
ÑÑ 
mainMenu
ÑÑ 
=
ÑÑ 
new
ÑÑ  #
MainMenu
ÑÑ$ ,
(
ÑÑ, -
)
ÑÑ- .
;
ÑÑ. /
this
ÖÖ 
.
ÖÖ 
NavigationService
ÖÖ "
.
ÖÖ" #
Navigate
ÖÖ# +
(
ÖÖ+ ,
mainMenu
ÖÖ, 4
)
ÖÖ4 5
;
ÖÖ5 6
NavigationService
ÜÜ 
.
ÜÜ 
RemoveBackEntry
ÜÜ -
(
ÜÜ- .
)
ÜÜ. /
;
ÜÜ/ 0
}
áá 	
public
ââ 
void
ââ &
ResponseNewPlayerJusJoin
ââ ,
(
ââ, -
int
ââ- 0
idUser
ââ1 7
,
ââ7 8
string
ââ9 ?
userName
ââ@ H
)
ââH I
{
ää 	
if
ãã 
(
ãã 
idUser
ãã 
!=
ãã 
$num
ãã 
&&
ãã 
!
ãã 
string
ãã %
.
ãã% &
IsNullOrEmpty
ãã& 3
(
ãã3 4
userName
ãã4 <
)
ãã< =
&&
ãã> @
!
ããA B
otherPeople
ããB M
.
ããM N
Exists
ããN T
(
ããT U
pl
ããU W
=>
ããX Z
pl
ãã[ ]
.
ãã] ^
IdUser
ãã^ d
==
ããe g
idUser
ããh n
)
ããn o
)
ãão p
{
åå 
otherPeople
çç 
.
çç 
Add
çç 
(
çç  
new
çç  #$
FriendBasicInformation
çç$ :
(
çç; <
)
çç< =
{
çç= >
IdUser
çç> D
=
ççE F
idUser
ççG M
,
ççM N
EmailAddress
ççO [
=
çç\ ]
string
çç^ d
.
ççd e
Empty
ççe j
,
ççj k
UserName
ççl t
=
ççu v
userName
ççw 
,çç Ä$
IdStatusAvailabilityççÅ ï
=ççñ ó
$numççò ô
}ççö õ
)ççõ ú
;ççú ù
SetCards
éé 
(
éé 
)
éé 
;
éé 
}
èè 
}
êê 	
}
íí 
}ìì Ë´	
hC:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameClient\Pages\GameBoard.xaml.cs
	namespace 	
JeopardyGame
 
. 
Pages 
{ 
public 

partial 
class 
	GameBoard "
:# $
Page% )
,) * 
IGameActionsCallback+ ?
,? @!
IChatForTeamsCallbackA V
{ 
private 
const 
int 
	ROUND_ONE #
=$ %
$num& '
;' (
private 
const 
int 
	ROUND_TWO #
=$ %
$num& '
;' (
private 
const 
int 
ROUND_THREE %
=& '
$num( )
;) *
private   
readonly   
string   
secondsAbbreviation    3
=  4 5

Properties  6 @
.  @ A
	Resources  A J
.  J K 
lblSecondsAbrevation  K _
;  _ `
private!! 
int!! 
timeLeft!! 
;!! 
private"" 
bool"" 
itsTeamGame""  
;""  !
private## 
readonly## 
int## 
roomCode## %
;##% &
private$$ 
int$$ 
	pointsBet$$ 
;$$ 
private%% 
List%% 
<%% $
PlayerInGameDataContract%% -
>%%- .
team1%%/ 4
;%%4 5
private&& 
List&& 
<&& $
PlayerInGameDataContract&& -
>&&- .
team2&&/ 4
;&&4 5
private'' 
string'' 
	team1Name''  
;''  !
private(( 
string(( 
	team2Name((  
;((  !
private)) 
List)) 
<)) #
QuestionCardInformation)) ,
>)), -
currentQuestions)). >
;))> ?
private** 
List** 
<** #
QuestionCardInformation** ,
>**, -
questionsRoundOne**. ?
;**? @
private++ 
List++ 
<++ #
QuestionCardInformation++ ,
>++, -
questionsRoundTwo++. ?
;++? @
private,, #
QuestionCardInformation,, '
finalQuestion,,( 5
;,,5 6
private-- 
List-- 
<-- 
CategoryPojo-- !
>--! ""
categoriesOfGameRound1--# 9
=--: ;
new--< ?
List--@ D
<--D E
CategoryPojo--E Q
>--Q R
(--R S
)--S T
;--T U
private.. 
List.. 
<.. 
CategoryPojo.. !
>..! ""
categoriesOfGameRound2..# 9
=..: ;
new..< ?
List..@ D
<..D E
CategoryPojo..E Q
>..Q R
(..R S
)..S T
;..T U
private// 
List// 
<// $
PlayerInGameDataContract// -
>//- .
playersInGame/// <
;//< =
private00 
int00 
yourTurn00 
;00 
private11 
int11 
currentTurn11 
;11  
private22 
int22 
currentRound22  
;22  !
private33 
QuestionPojo33 
questionBeingAsked33 /
;33/ 0
private44 

AnswerPojo44 #
answerToCurrentQuestion44 2
;442 3
private55 
List55 
<55 

AnswerPojo55 
>55  '
answersOfQuestionBeingAsked55! <
;55< =
private66 
DispatcherTimer66 
timer66  %
;66% &
private77 
readonly77 
UserSingleton77 &
userSingleton77' 4
=775 6
UserSingleton777 D
.77D E
GetMainUser77E P
(77P Q
)77Q R
;77R S
private88 
Window88 
dialogMessage88 $
;88$ %
private99 
TeamChat99 
teamChat99 !
;99! "
public<< 
	GameBoard<< 
(<< 
List<< 
<<< #
QuestionCardInformation<< 5
><<5 6
	questions<<7 @
,<<@ A
int<<B E
roomCode<<F N
)<<N O
{== 	
InitializeComponent>> 
(>>  
)>>  !
;>>! "
currentQuestions?? 
=?? 
	questions?? (
;??( )
this@@ 
.@@ 
roomCode@@ 
=@@ 
roomCode@@ $
;@@$ %
LoadedAA 
+=AA *
LoadedSubscribeCallBackChannelAA 4
;AA4 5
}BB 	
privateEE 
voidEE *
LoadedSubscribeCallBackChannelEE 3
(EE3 4
objectEE4 :
senderEE; A
,EEA B
RoutedEventArgsEEC R
eEES T
)EET U
{FF 	
tryGG 
{HH 
InstanceContextII 
contextII  '
=II( )
newII* -
InstanceContextII. =
(II= >
thisII> B
)IIB C
;IIC D
GameActionsClientJJ !"
gameActionsClientProxyJJ" 8
=JJ9 :
newJJ; >
GameActionsClientJJ? P
(JJP Q
contextJJQ X
)JJX Y
;JJY Z"
gameActionsClientProxyKK &
.KK& '#
SubscribeToGameCallBackKK' >
(KK> ?
roomCodeKK? G
,KKG H
userSingletonKKI V
.KKV W
IdUserKKW ]
,KK] ^
userSingletonKK_ l
.KKl m
IdCurrentAvatarKKm |
)KK| }
;KK} ~
}LL 
catchMM 
(MM %
EndpointNotFoundExceptionMM ,
exMM- /
)MM/ 0
{NN 
HandleExceptionOO 
(OO  
exOO  "
,OO" #

PropertiesOO$ .
.OO. /
	ResourcesOO/ 8
.OO8 9
lblFailToStartGameOO9 K
+OOL M
$strOON S
+OOT U

PropertiesOOV `
.OO` a
	ResourcesOOa j
.OOj k
lblEndPointNotFoundOOk ~
)OO~ 
;	OO Ä
}PP 
catchQQ 
(QQ /
#CommunicationObjectFaultedExceptionQQ 6
exQQ7 9
)QQ9 :
{RR 
HandleExceptionSS 
(SS  
exSS  "
,SS" #

PropertiesSS$ .
.SS. /
	ResourcesSS/ 8
.SS8 9
lblFailToStartGameSS9 K
+SSL M
$strSSN S
+SST U

PropertiesSSV `
.SS` a
	ResourcesSSa j
.SSj k%
lblComunicationException	SSk É
)
SSÉ Ñ
;
SSÑ Ö
}TT 
catchUU 
(UU 
TimeoutExceptionUU #
exUU$ &
)UU& '
{VV 
HandleExceptionWW 
(WW  
exWW  "
,WW" #

PropertiesWW$ .
.WW. /
	ResourcesWW/ 8
.WW8 9
lblFailToStartGameWW9 K
+WWL M
$strWWN S
+WWT U

PropertiesWWV `
.WW` a
	ResourcesWWa j
.WWj k
lblTimeExceptionWWk {
)WW{ |
;WW| }
}XX 
catchYY 
(YY "
CommunicationExceptionYY )
exYY* ,
)YY, -
{ZZ 
HandleException[[ 
([[  
ex[[  "
,[[" #

Properties[[$ .
.[[. /
	Resources[[/ 8
.[[8 9
lblFailToStartGame[[9 K
+[[L M
$str[[N S
+[[T U

Properties[[V `
.[[` a
	Resources[[a j
.[[j k
lblWithoutConection[[k ~
)[[~ 
;	[[ Ä
}\\ 
catch]] 
(]] 
SocketException]] "
ex]]# %
)]]% &
{^^ 
HandleException__ 
(__  
ex__  "
,__" #

Properties__$ .
.__. /
	Resources__/ 8
.__8 9
lblFailToStartGame__9 K
+__L M
$str__N S
+__T U

Properties__V `
.__` a
	Resources__a j
.__j k
lblEndPointNotFound__k ~
)__~ 
;	__ Ä
}`` 
}aa 	
publiccc 
voidcc 1
%ReceiveNotificationEverybodyIsPlayingcc 9
(cc9 :
boolcc: >
isEveryBodyPlayingcc? Q
,ccQ R
intccS V

isYourTurnccW a
,cca b$
PlayerInGameDataContractccc {
[cc{ |
]cc| }
playerInGame	cc~ ä
)
ccä ã
{dd 	
tryee 
{ff 
currentTurngg 
=gg 
$numgg 
;gg  
yourTurnhh 
=hh 

isYourTurnhh %
;hh% &
playersInGameii 
=ii 
playerInGameii  ,
.ii, -
ToListii- 3
(ii3 4
)ii4 5
;ii5 6
PrepareWindowjj 
(jj 
)jj 
;jj  
ShowIfItsYourTurnkk !
(kk! "
)kk" #
;kk# $
}ll 
catchmm 
(mm %
EndpointNotFoundExceptionmm ,
exmm- /
)mm/ 0
{nn 
HandleExceptionoo 
(oo  
exoo  "
,oo" #

Propertiesoo$ .
.oo. /
	Resourcesoo/ 8
.oo8 9
lblFailToStartGameoo9 K
+ooL M
$strooN S
+ooT U

PropertiesooV `
.oo` a
	Resourcesooa j
.ooj k
lblEndPointNotFoundook ~
)oo~ 
;	oo Ä
}pp 
catchqq 
(qq /
#CommunicationObjectFaultedExceptionqq 6
exqq7 9
)qq9 :
{rr 
HandleExceptionss 
(ss  
exss  "
,ss" #

Propertiesss$ .
.ss. /
	Resourcesss/ 8
.ss8 9
lblFailToStartGamess9 K
+ssL M
$strssN S
+ssT U

PropertiesssV `
.ss` a
	Resourcesssa j
.ssj k%
lblComunicationException	ssk É
)
ssÉ Ñ
;
ssÑ Ö
}tt 
catchuu 
(uu 
TimeoutExceptionuu #
exuu$ &
)uu& '
{vv 
HandleExceptionww 
(ww  
exww  "
,ww" #

Propertiesww$ .
.ww. /
	Resourcesww/ 8
.ww8 9
lblFailToStartGameww9 K
+wwL M
$strwwN S
+wwT U

PropertieswwV `
.ww` a
	Resourceswwa j
.wwj k
lblTimeExceptionwwk {
)ww{ |
;ww| }
}xx 
catchyy 
(yy "
CommunicationExceptionyy )
exyy* ,
)yy, -
{zz 
HandleException{{ 
({{  
ex{{  "
,{{" #

Properties{{$ .
.{{. /
	Resources{{/ 8
.{{8 9
lblFailToStartGame{{9 K
+{{L M
$str{{N S
+{{T U

Properties{{V `
.{{` a
	Resources{{a j
.{{j k
lblWithoutConection{{k ~
){{~ 
;	{{ Ä
}|| 
catch}} 
(}} 
SocketException}} "
ex}}# %
)}}% &
{~~ 
HandleException 
(  
ex  "
," #

Properties$ .
.. /
	Resources/ 8
.8 9
lblFailToStartGame9 K
+L M
$strN S
+T U

PropertiesV `
.` a
	Resourcesa j
.j k
lblEndPointNotFoundk ~
)~ 
;	 Ä
}
ÄÄ 
}
ÅÅ 	
private
ÉÉ 
void
ÉÉ 
PrepareWindow
ÉÉ "
(
ÉÉ" #
)
ÉÉ# $
{
ÑÑ 	!
VerifyThereAreTeams
ÖÖ 
(
ÖÖ  
)
ÖÖ  !
;
ÖÖ! "1
#PrepareListOfQuestionsAndCategories
ÜÜ /
(
ÜÜ/ 0
)
ÜÜ0 1
;
ÜÜ1 2'
CreatePlayersScoresBoards
áá %
(
áá% &
)
áá& '
;
áá' (
if
àà 
(
àà 
IsLoaded
àà 
)
àà 
{
ââ (
BeginHostPresentationAsync
ää *
(
ää* +
)
ää+ ,
;
ää, -
}
ãã 
if
åå 
(
åå 
itsTeamGame
åå 
)
åå 
{
çç 
var
éé 
player
éé 
=
éé 
playersInGame
éé *
.
éé* +
Find
éé+ /
(
éé/ 0
pl
éé0 2
=>
éé3 5
pl
éé6 8
.
éé8 9
IdUser
éé9 ?
==
éé@ B
userSingleton
ééC P
.
ééP Q
IdUser
ééQ W
)
ééW X
;
ééX Y
var
èè 

playerTeam
èè 
=
èè  
playersInGame
èè! .
.
èè. /
Find
èè/ 3
(
èè3 4
pla
èè4 7
=>
èè8 :
pla
èè; >
.
èè> ?
SideTeam
èè? G
==
èèH J
player
èèK Q
.
èèQ R
SideTeam
èèR Z
&&
èè[ ]
pla
èè^ a
.
èèa b
IdUser
èèb h
!=
èèi k
userSingleton
èèl y
.
èèy z
IdUserèèz Ä
)èèÄ Å
;èèÅ Ç
if
êê 
(
êê 

playerTeam
êê 
!=
êê !
null
êê" &
)
êê& '
{
êê( )
teamChat
ëë 
=
ëë 
new
ëë "
TeamChat
ëë# +
(
ëë+ ,
this
ëë, 0
,
ëë0 1

playerTeam
ëë2 <
.
ëë< =
IdUser
ëë= C
)
ëëC D
;
ëëD E
}
íí 
}
ìì 
PrepareRoundOne
îî 
(
îî 
)
îî 
;
îî 
}
ïï 	
private
óó 
void
óó !
VerifyThereAreTeams
óó (
(
óó( )
)
óó) *
{
òò 	
if
ôô 
(
ôô 
playersInGame
ôô 
.
ôô 
Exists
ôô $
(
ôô$ %
pla
ôô% (
=>
ôô) +
pla
ôô, /
.
ôô/ 0
SideTeam
ôô0 8
==
ôô9 ;
$num
ôô< =
)
ôô= >
)
ôô> ?
{
öö 
itsTeamGame
õõ 
=
õõ 
true
õõ "
;
õõ" #
imgChatIcon
úú 
.
úú 

Visibility
úú &
=
úú' (

Visibility
úú) 3
.
úú3 4
Visible
úú4 ;
;
úú; <
}
ùù 
else
ûû 
{
üü 
itsTeamGame
†† 
=
†† 
false
†† #
;
††# $
}
°° 
}
¢¢ 	
private
§§ 
void
§§ 1
#PrepareListOfQuestionsAndCategories
§§ 8
(
§§8 9
)
§§9 :
{
•• 	
questionsRoundOne
¶¶ 
=
¶¶ 
currentQuestions
¶¶  0
.
¶¶0 1
Where
¶¶1 6
(
¶¶6 7
(
¶¶7 8
currentQuestion
¶¶8 G
)
¶¶G H
=>
¶¶I K
currentQuestion
¶¶L [
.
¶¶[ \
NumberOfRound
¶¶\ i
==
¶¶j l
	ROUND_ONE
¶¶m v
)
¶¶v w
.
¶¶w x
ToList
¶¶x ~
(
¶¶~ 
)¶¶ Ä
;¶¶Ä Å
questionsRoundTwo
ßß 
=
ßß 
currentQuestions
ßß  0
.
ßß0 1
Where
ßß1 6
(
ßß6 7
(
ßß7 8
currentQuestion
ßß8 G
)
ßßG H
=>
ßßI K
currentQuestion
ßßL [
.
ßß[ \
NumberOfRound
ßß\ i
==
ßßj l
	ROUND_TWO
ßßm v
)
ßßv w
.
ßßw x
ToList
ßßx ~
(
ßß~ 
)ßß Ä
;ßßÄ Å
finalQuestion
®® 
=
®® 
currentQuestions
®® ,
.
®®, -
Find
®®- 1
(
®®1 2
(
®®2 3
currentQuestion
®®3 B
)
®®B C
=>
®®D F
currentQuestion
®®G V
.
®®V W
NumberOfRound
®®W d
==
®®e g
ROUND_THREE
®®h s
)
®®s t
;
®®t u
var
©© 
categoriesRound1
©©  
=
©©! "
currentQuestions
©©# 3
.
©©3 4
Where
©©4 9
(
©©9 :
currentQuestion
©©: I
=>
©©J L
currentQuestion
©©M \
.
©©\ ]
NumberOfRound
©©] j
==
©©k m
	ROUND_ONE
©©n w
)
©©w x
.
©©x y
Select
©©y 
(©© Ä
currentQuestion©©Ä è
=>©©ê í
currentQuestion©©ì ¢
.©©¢ £"
CategoryOfQuestion©©£ µ
)©©µ ∂
.©©∂ ∑
ToList©©∑ Ω
(©©Ω æ
)©©æ ø
;©©ø ¿!
GetUniqueCategories
™™ 
(
™™  
categoriesRound1
™™  0
,
™™0 1$
categoriesOfGameRound1
™™2 H
)
™™H I
;
™™I J
var
´´ 
categoriesRound2
´´  
=
´´! "
currentQuestions
´´# 3
.
´´3 4
Where
´´4 9
(
´´9 :
currentQuestion
´´: I
=>
´´J L
currentQuestion
´´M \
.
´´\ ]
NumberOfRound
´´] j
==
´´k m
	ROUND_TWO
´´n w
)
´´w x
.
´´x y
Select
´´y 
(´´ Ä
currentQuestion´´Ä è
=>´´ê í
currentQuestion´´ì ¢
.´´¢ £"
CategoryOfQuestion´´£ µ
)´´µ ∂
.´´∂ ∑
ToList´´∑ Ω
(´´Ω æ
)´´æ ø
;´´ø ¿!
GetUniqueCategories
¨¨ 
(
¨¨  
categoriesRound2
¨¨  0
,
¨¨0 1$
categoriesOfGameRound2
¨¨2 H
)
¨¨H I
;
¨¨I J
}
≠≠ 	
private
ØØ 
void
ØØ !
GetUniqueCategories
ØØ (
(
ØØ( )
List
ØØ) -
<
ØØ- .
CategoryPojo
ØØ. :
>
ØØ: ;$
categoriesRepeatedList
ØØ< R
,
ØØR S
List
ØØT X
<
ØØX Y
CategoryPojo
ØØY e
>
ØØe f 
uniqueCategoryList
ØØg y
)
ØØy z
{
∞∞ 	
foreach
±± 
(
±± 
var
±± 
categoryToProve
±± (
in
±±) +$
categoriesRepeatedList
±±, B
)
±±B C
{
≤≤ 
bool
≥≥ 
exist
≥≥ 
=
≥≥ 
false
≥≥ "
;
≥≥" #
foreach
¥¥ 
(
¥¥ 
var
¥¥ 
CategorySaved
¥¥ *
in
¥¥+ - 
uniqueCategoryList
¥¥. @
)
¥¥@ A
{
µµ 
if
∑∑ 
(
∑∑ 
categoryToProve
∑∑ '
.
∑∑' (

IdCategory
∑∑( 2
==
∑∑3 5
CategorySaved
∑∑6 C
.
∑∑C D

IdCategory
∑∑D N
)
∑∑N O
{
∏∏ 
exist
ππ 
=
ππ 
true
ππ  $
;
ππ$ %
break
∫∫ 
;
∫∫ 
}
ªª 
}
ºº 
if
ΩΩ 
(
ΩΩ 
!
ΩΩ 
exist
ΩΩ 
)
ΩΩ 
{
ææ  
uniqueCategoryList
øø &
.
øø& '
Add
øø' *
(
øø* +
categoryToProve
øø+ :
)
øø: ;
;
øø; <
}
¿¿ 
}
¡¡ 
}
¬¬ 	
private
ƒƒ 
void
ƒƒ '
CreatePlayersScoresBoards
ƒƒ .
(
ƒƒ. /
)
ƒƒ/ 0
{
≈≈ 	

stpPlayers
∆∆ 
.
∆∆ 
Children
∆∆ 
.
∆∆  
Clear
∆∆  %
(
∆∆% &
)
∆∆& '
;
∆∆' (
if
«« 
(
«« 
itsTeamGame
«« 
)
«« 
{
»» 
team1
…… 
=
…… 
playersInGame
…… %
.
……% &
Where
……& +
(
……+ ,
pla
……, /
=>
……0 2
pla
……3 6
.
……6 7
SideTeam
……7 ?
==
……@ B
$num
……C D
)
……D E
.
……E F
ToList
……F L
(
……L M
)
……M N
;
……N O
team2
   
=
   
playersInGame
   %
.
  % &
Where
  & +
(
  + ,
pla
  , /
=>
  0 2
pla
  3 6
.
  6 7
SideTeam
  7 ?
==
  @ B
$num
  C D
)
  D E
.
  E F
ToList
  F L
(
  L M
)
  M N
;
  N O

stpPlayers
ÀÀ 
.
ÀÀ 
Children
ÀÀ #
.
ÀÀ# $
Add
ÀÀ$ '
(
ÀÀ' (
new
ÀÀ( +
GameTeamCard
ÀÀ, 8
(
ÀÀ8 9
team1
ÀÀ9 >
[
ÀÀ> ?
$num
ÀÀ? @
]
ÀÀ@ A
,
ÀÀA B
team1
ÀÀC H
[
ÀÀH I
$num
ÀÀI J
]
ÀÀJ K
)
ÀÀK L
)
ÀÀL M
;
ÀÀM N

stpPlayers
ÃÃ 
.
ÃÃ 
Children
ÃÃ #
.
ÃÃ# $
Add
ÃÃ$ '
(
ÃÃ' (
new
ÃÃ( +
GameTeamCard
ÃÃ, 8
(
ÃÃ8 9
team2
ÃÃ9 >
[
ÃÃ> ?
$num
ÃÃ? @
]
ÃÃ@ A
,
ÃÃA B
team2
ÃÃC H
[
ÃÃH I
$num
ÃÃI J
]
ÃÃJ K
)
ÃÃK L
)
ÃÃL M
;
ÃÃM N
	team1Name
ÕÕ 
=
ÕÕ 
$str
ÕÕ 
+
ÕÕ  
team1
ÕÕ  %
[
ÕÕ% &
$num
ÕÕ& '
]
ÕÕ' (
.
ÕÕ( )
IdUser
ÕÕ) /
.
ÕÕ/ 0
ToString
ÕÕ0 8
(
ÕÕ8 9
)
ÕÕ9 :
+
ÕÕ: ;
team1
ÕÕ< A
[
ÕÕA B
$num
ÕÕB C
]
ÕÕC D
.
ÕÕD E
IdUser
ÕÕE K
.
ÕÕK L
ToString
ÕÕL T
(
ÕÕT U
)
ÕÕU V
;
ÕÕV W
	team2Name
ŒŒ 
=
ŒŒ 
$str
ŒŒ 
+
ŒŒ  !
team2
ŒŒ" '
[
ŒŒ' (
$num
ŒŒ( )
]
ŒŒ) *
.
ŒŒ* +
IdUser
ŒŒ+ 1
.
ŒŒ1 2
ToString
ŒŒ2 :
(
ŒŒ: ;
)
ŒŒ; <
+
ŒŒ< =
team2
ŒŒ> C
[
ŒŒC D
$num
ŒŒD E
]
ŒŒE F
.
ŒŒF G
IdUser
ŒŒG M
.
ŒŒM N
ToString
ŒŒN V
(
ŒŒV W
)
ŒŒW X
;
ŒŒX Y
}
œœ 
else
–– 
{
—— 
foreach
““ 
(
““ 
var
““ 
item
““ !
in
““" $
playersInGame
““% 2
)
““2 3
{
”” 
GamePlayerCard
‘‘ "

playerCard
‘‘# -
=
‘‘. /
new
‘‘0 3
GamePlayerCard
‘‘4 B
(
‘‘B C
item
‘‘C G
)
‘‘G H
;
‘‘H I

stpPlayers
’’ 
.
’’ 
Children
’’ '
.
’’' (
Add
’’( +
(
’’+ ,

playerCard
’’, 6
)
’’6 7
;
’’7 8
}
÷÷ 
}
◊◊ 
}
ÿÿ 	
private
⁄⁄ 
void
⁄⁄ 
PrepareRoundOne
⁄⁄ #
(
⁄⁄# $
)
⁄⁄$ %
{
€€ 	#
SetInformationInCards
‹‹ !
(
‹‹! "$
categoriesOfGameRound1
‹‹" 8
,
‹‹8 9
questionsRoundOne
‹‹: K
)
‹‹K L
;
‹‹L M
currentRound
›› 
=
›› 
	ROUND_ONE
›› $
;
››$ %
}
ﬁﬁ 	
private
‡‡ 
void
‡‡ 
PrepareRoundTwo
‡‡ $
(
‡‡$ %
)
‡‡% &
{
·· 	
wrpBoardOfCards
‚‚ 
.
‚‚ 
Children
‚‚ $
.
‚‚$ %
Clear
‚‚% *
(
‚‚* +
)
‚‚+ ,
;
‚‚, -.
 BeginHostPresentationSecondRound
„„ ,
(
„„, -
)
„„- .
;
„„. /#
SetInformationInCards
‰‰ !
(
‰‰! "$
categoriesOfGameRound2
‰‰" 8
,
‰‰8 9
questionsRoundTwo
‰‰: K
)
‰‰K L
;
‰‰L M
}
ÂÂ 	
private
ÁÁ 
void
ÁÁ 
PrepareLastRound
ÁÁ %
(
ÁÁ% &
)
ÁÁ& '
{
ËË 	
wrpBoardOfCards
ÈÈ 
.
ÈÈ 
Children
ÈÈ $
.
ÈÈ$ %
Clear
ÈÈ% *
(
ÈÈ* +
)
ÈÈ+ ,
;
ÈÈ, -
wrpBoardOfCards
ÍÍ 
.
ÍÍ 

Visibility
ÍÍ &
=
ÍÍ' (

Visibility
ÍÍ) 3
.
ÍÍ3 4
	Collapsed
ÍÍ4 =
;
ÍÍ= >,
BeginHostPresentationLastRound
ÎÎ *
(
ÎÎ* +
)
ÎÎ+ ,
;
ÎÎ, -
}
ÏÏ 	
private
ÓÓ 
void
ÓÓ #
SetInformationInCards
ÓÓ *
(
ÓÓ* +
List
ÓÓ+ /
<
ÓÓ/ 0
CategoryPojo
ÓÓ0 <
>
ÓÓ< =
categoriesOfGame
ÓÓ> N
,
ÓÓN O
List
ÓÓP T
<
ÓÓT U%
QuestionCardInformation
ÓÓU l
>
ÓÓl m
questionsOfRound
ÓÓn ~
)
ÓÓ~ 
{
ÔÔ 	
foreach
 
(
 
var
 
category
 !
in
" $
categoriesOfGame
% 5
)
5 6
{
ÒÒ 
GameCategoryCard
ÚÚ  
categoryCard
ÚÚ! -
=
ÚÚ. /
new
ÚÚ0 3
(
ÚÚ3 4!
GetSpecificResource
ÚÚ4 G
.
ÚÚG H,
GetEnglishOrSpanishDescription
ÚÚH f
(
ÚÚf g
category
ÚÚg o
.
ÚÚo p)
EnglishCategoryDescriptionÚÚp ä
,ÚÚä ã
categoryÚÚå î
.ÚÚî ï*
SpanishCategoryDescriptionÚÚï Ø
)ÚÚØ ∞
)ÚÚ∞ ±
;ÚÚ± ≤
wrpBoardOfCards
ÛÛ 
.
ÛÛ  
Children
ÛÛ  (
.
ÛÛ( )
Add
ÛÛ) ,
(
ÛÛ, -
categoryCard
ÛÛ- 9
)
ÛÛ9 :
;
ÛÛ: ;
var
ÙÙ !
questionsOfCategory
ÙÙ '
=
ÙÙ( )
questionsOfRound
ÙÙ* :
.
ÙÙ: ;
Where
ÙÙ; @
(
ÙÙ@ A
quest
ÙÙA F
=>
ÙÙG I
quest
ÙÙJ O
.
ÙÙO P%
SpecificQuestionDetails
ÙÙP g
.
ÙÙg h
IdCategoryBelong
ÙÙh x
==
ÙÙy {
categoryÙÙ| Ñ
.ÙÙÑ Ö

IdCategoryÙÙÖ è
)ÙÙè ê
.ÙÙê ë
ToListÙÙë ó
(ÙÙó ò
)ÙÙò ô
;ÙÙô ö
foreach
ıı 
(
ıı 
var
ıı 
questionCard
ıı )
in
ıı* ,!
questionsOfCategory
ıı- @
)
ıı@ A
{
ˆˆ 
GamePointsCard
˜˜ "

pointsCard
˜˜# -
=
˜˜. /
new
˜˜0 3
(
˜˜3 4
questionCard
˜˜4 @
,
˜˜@ A
this
˜˜B F
)
˜˜F G
;
˜˜G H
wrpBoardOfCards
¯¯ #
.
¯¯# $
Children
¯¯$ ,
.
¯¯, -
Add
¯¯- 0
(
¯¯0 1

pointsCard
¯¯1 ;
)
¯¯; <
;
¯¯< =
}
˘˘ 
}
˙˙ 
}
˚˚ 	
private
˝˝ 
async
˝˝ 
void
˝˝ (
BeginHostPresentationAsync
˝˝ 5
(
˝˝5 6
)
˝˝6 7
{
˛˛ 	
wrpBoardOfCards
ˇˇ 
.
ˇˇ 

Visibility
ˇˇ &
=
ˇˇ' (

Visibility
ˇˇ) 3
.
ˇˇ3 4
Hidden
ˇˇ4 :
;
ˇˇ: ;
stpTurnLigth
ÄÄ 
.
ÄÄ 

Visibility
ÄÄ #
=
ÄÄ$ %

Visibility
ÄÄ& 0
.
ÄÄ0 1
Hidden
ÄÄ1 7
;
ÄÄ7 8
grdPresentation
ÅÅ 
.
ÅÅ 

Visibility
ÅÅ &
=
ÅÅ' (

Visibility
ÅÅ) 3
.
ÅÅ3 4
Visible
ÅÅ4 ;
;
ÅÅ; <
string
ÇÇ 
hostPath
ÇÇ 
=
ÇÇ !
GetSpecificResource
ÇÇ 1
.
ÇÇ1 2
GetHosImage
ÇÇ2 =
(
ÇÇ= >
$num
ÇÇ> ?
)
ÇÇ? @
;
ÇÇ@ A
imgHostImage
ÉÉ 
.
ÉÉ 
Source
ÉÉ 
=
ÉÉ  !
new
ÉÉ" %
BitmapImage
ÉÉ& 1
(
ÉÉ1 2
new
ÉÉ2 5
Uri
ÉÉ6 9
(
ÉÉ9 :
hostPath
ÉÉ: B
,
ÉÉB C
UriKind
ÉÉD K
.
ÉÉK L
Absolute
ÉÉL T
)
ÉÉT U
)
ÉÉU V
;
ÉÉV W
string
ÑÑ 
hostName
ÑÑ 
=
ÑÑ 
System
ÑÑ $
.
ÑÑ$ %
IO
ÑÑ% '
.
ÑÑ' (
Path
ÑÑ( ,
.
ÑÑ, -)
GetFileNameWithoutExtension
ÑÑ- H
(
ÑÑH I
hostPath
ÑÑI Q
)
ÑÑQ R
;
ÑÑR S
txbHostMessage
ÖÖ 
.
ÖÖ 
Text
ÖÖ 
=
ÖÖ  !

Properties
ÖÖ" ,
.
ÖÖ, -
	Resources
ÖÖ- 6
.
ÖÖ6 7$
HostRound1Presentation
ÖÖ7 M
.
ÖÖM N
Replace
ÖÖN U
(
ÖÖU V
$str
ÖÖV Y
,
ÖÖY Z
hostName
ÖÖ[ c
)
ÖÖc d
;
ÖÖd e
await
ÜÜ &
ShowPresentationOneAsync
ÜÜ *
(
ÜÜ* +
)
ÜÜ+ ,
;
ÜÜ, -
wrpBoardOfCards
áá 
.
áá 

Visibility
áá &
=
áá' (

Visibility
áá) 3
.
áá3 4
Visible
áá4 ;
;
áá; <
stpTurnLigth
àà 
.
àà 

Visibility
àà #
=
àà$ %

Visibility
àà& 0
.
àà0 1
Visible
àà1 8
;
àà8 9
grdPresentation
ââ 
.
ââ 

Visibility
ââ &
=
ââ' (

Visibility
ââ) 3
.
ââ3 4
	Collapsed
ââ4 =
;
ââ= >
}
ää 	
private
åå 
async
åå 
Task
åå &
ShowPresentationOneAsync
åå 3
(
åå3 4
)
åå4 5
{
çç 	
string
éé $
categoriesPresentation
éé )
=
éé* +

Properties
éé, 6
.
éé6 7
	Resources
éé7 @
.
éé@ A(
HostCategoriesPresentation
ééA [
;
éé[ \$
categoriesPresentation
èè "
=
èè# $$
categoriesPresentation
èè% ;
.
èè; <
Replace
èè< C
(
èèC D
$str
èèD G
,
èèG H!
GetSpecificResource
èèI \
.
èè\ ],
GetEnglishOrSpanishDescription
èè] {
(
èè{ |%
categoriesOfGameRound1èè| í
[èèí ì
$numèèì î
]èèî ï
.èèï ñ*
EnglishCategoryDescriptionèèñ ∞
,èè∞ ±&
categoriesOfGameRound1èè≤ »
[èè» …
$numèè…  
]èè  À
.èèÀ Ã*
SpanishCategoryDescriptionèèÃ Ê
)èèÊ Á
)èèÁ Ë
;èèË È$
categoriesPresentation
êê "
=
êê# $$
categoriesPresentation
êê% ;
.
êê; <
Replace
êê< C
(
êêC D
$str
êêD G
,
êêG H!
GetSpecificResource
êêI \
.
êê\ ],
GetEnglishOrSpanishDescription
êê] {
(
êê{ |%
categoriesOfGameRound1êê| í
[êêí ì
$numêêì î
]êêî ï
.êêï ñ*
EnglishCategoryDescriptionêêñ ∞
,êê∞ ±&
categoriesOfGameRound1êê≤ »
[êê» …
$numêê…  
]êê  À
.êêÀ Ã*
SpanishCategoryDescriptionêêÃ Ê
)êêÊ Á
)êêÁ Ë
;êêË È$
categoriesPresentation
ëë "
=
ëë# $$
categoriesPresentation
ëë% ;
.
ëë; <
Replace
ëë< C
(
ëëC D
$str
ëëD G
,
ëëG H!
GetSpecificResource
ëëI \
.
ëë\ ],
GetEnglishOrSpanishDescription
ëë] {
(
ëë{ |%
categoriesOfGameRound1ëë| í
[ëëí ì
$numëëì î
]ëëî ï
.ëëï ñ*
EnglishCategoryDescriptionëëñ ∞
,ëë∞ ±&
categoriesOfGameRound1ëë≤ »
[ëë» …
$numëë…  
]ëë  À
.ëëÀ Ã*
SpanishCategoryDescriptionëëÃ Ê
)ëëÊ Á
)ëëÁ Ë
;ëëË È$
categoriesPresentation
íí "
=
íí# $$
categoriesPresentation
íí% ;
.
íí; <
Replace
íí< C
(
ííC D
$str
ííD I
,
ííI J
Environment
ííK V
.
ííV W
NewLine
ííW ^
)
íí^ _
;
íí_ `$
categoriesPresentation
ìì "
=
ìì# $$
categoriesPresentation
ìì% ;
.
ìì; <
Replace
ìì< C
(
ììC D
$str
ììD G
,
ììG H
	ROUND_ONE
ììI R
.
ììR S
ToString
ììS [
(
ìì[ \
)
ìì\ ]
)
ìì] ^
;
ìì^ _
txbHostMessage
îî 
.
îî 
Text
îî 
=
îî  !$
categoriesPresentation
îî" 8
;
îî8 9
await
ïï 
Task
ïï 
.
ïï 
Delay
ïï 
(
ïï 
$num
ïï !
)
ïï! "
;
ïï" #
}
ññ 	
private
òò 
async
òò 
void
òò .
 BeginHostPresentationSecondRound
òò ;
(
òò; <
)
òò< =
{
ôô 	
grTimer
öö 
.
öö 

Visibility
öö 
=
öö  

Visibility
öö! +
.
öö+ ,
Hidden
öö, 2
;
öö2 3
wrpBoardOfCards
õõ 
.
õõ 

Visibility
õõ &
=
õõ' (

Visibility
õõ) 3
.
õõ3 4
Hidden
õõ4 :
;
õõ: ;
stpTurnLigth
úú 
.
úú 

Visibility
úú #
=
úú$ %

Visibility
úú& 0
.
úú0 1
Hidden
úú1 7
;
úú7 8
grdPresentation
ùù 
.
ùù 

Visibility
ùù &
=
ùù' (

Visibility
ùù) 3
.
ùù3 4
Visible
ùù4 ;
;
ùù; <
txbHostMessage
ûû 
.
ûû 
Text
ûû 
=
ûû  !

Properties
ûû" ,
.
ûû, -
	Resources
ûû- 6
.
ûû6 7#
HostRoun2Presentation
ûû7 L
;
ûûL M
await
üü &
ShowPresentationTwoAsync
üü *
(
üü* +
)
üü+ ,
;
üü, -
wrpBoardOfCards
†† 
.
†† 

Visibility
†† &
=
††' (

Visibility
††) 3
.
††3 4
Visible
††4 ;
;
††; <
stpTurnLigth
°° 
.
°° 

Visibility
°° #
=
°°$ %

Visibility
°°& 0
.
°°0 1
Visible
°°1 8
;
°°8 9
grdPresentation
¢¢ 
.
¢¢ 

Visibility
¢¢ &
=
¢¢' (

Visibility
¢¢) 3
.
¢¢3 4
	Collapsed
¢¢4 =
;
¢¢= >
}
££ 	
private
•• 
async
•• 
Task
•• &
ShowPresentationTwoAsync
•• 3
(
••3 4
)
••4 5
{
¶¶ 	
string
ßß $
categoriesPresentation
ßß )
=
ßß* +

Properties
ßß, 6
.
ßß6 7
	Resources
ßß7 @
.
ßß@ A(
HostCategoriesPresentation
ßßA [
;
ßß[ \$
categoriesPresentation
®® "
=
®®# $$
categoriesPresentation
®®% ;
.
®®; <
Replace
®®< C
(
®®C D
$str
®®D G
,
®®G H!
GetSpecificResource
®®I \
.
®®\ ],
GetEnglishOrSpanishDescription
®®] {
(
®®{ |%
categoriesOfGameRound2®®| í
[®®í ì
$num®®ì î
]®®î ï
.®®ï ñ*
EnglishCategoryDescription®®ñ ∞
,®®∞ ±&
categoriesOfGameRound2®®≤ »
[®®» …
$num®®…  
]®®  À
.®®À Ã*
SpanishCategoryDescription®®Ã Ê
)®®Ê Á
)®®Á Ë
;®®Ë È$
categoriesPresentation
©© "
=
©©# $$
categoriesPresentation
©©% ;
.
©©; <
Replace
©©< C
(
©©C D
$str
©©D G
,
©©G H!
GetSpecificResource
©©I \
.
©©\ ],
GetEnglishOrSpanishDescription
©©] {
(
©©{ |%
categoriesOfGameRound2©©| í
[©©í ì
$num©©ì î
]©©î ï
.©©ï ñ*
EnglishCategoryDescription©©ñ ∞
,©©∞ ±&
categoriesOfGameRound2©©≤ »
[©©» …
$num©©…  
]©©  À
.©©À Ã*
SpanishCategoryDescription©©Ã Ê
)©©Ê Á
)©©Á Ë
;©©Ë È$
categoriesPresentation
™™ "
=
™™# $$
categoriesPresentation
™™% ;
.
™™; <
Replace
™™< C
(
™™C D
$str
™™D G
,
™™G H!
GetSpecificResource
™™I \
.
™™\ ],
GetEnglishOrSpanishDescription
™™] {
(
™™{ |%
categoriesOfGameRound2™™| í
[™™í ì
$num™™ì î
]™™î ï
.™™ï ñ*
EnglishCategoryDescription™™ñ ∞
,™™∞ ±&
categoriesOfGameRound2™™≤ »
[™™» …
$num™™…  
]™™  À
.™™À Ã*
SpanishCategoryDescription™™Ã Ê
)™™Ê Á
)™™Á Ë
;™™Ë È$
categoriesPresentation
´´ "
=
´´# $$
categoriesPresentation
´´% ;
.
´´; <
Replace
´´< C
(
´´C D
$str
´´D I
,
´´I J
Environment
´´K V
.
´´V W
NewLine
´´W ^
)
´´^ _
;
´´_ `$
categoriesPresentation
¨¨ "
=
¨¨# $$
categoriesPresentation
¨¨% ;
.
¨¨; <
Replace
¨¨< C
(
¨¨C D
$str
¨¨D G
,
¨¨G H
	ROUND_TWO
¨¨I R
.
¨¨R S
ToString
¨¨S [
(
¨¨[ \
)
¨¨\ ]
)
¨¨] ^
;
¨¨^ _
txbHostMessage
≠≠ 
.
≠≠ 
Text
≠≠ 
=
≠≠  !$
categoriesPresentation
≠≠" 8
;
≠≠8 9
await
ÆÆ 
Task
ÆÆ 
.
ÆÆ 
Delay
ÆÆ 
(
ÆÆ 
$num
ÆÆ !
)
ÆÆ! "
;
ÆÆ" #
}
ØØ 	
private
±± 
async
±± 
void
±± ,
BeginHostPresentationLastRound
±± 9
(
±±9 :
)
±±: ;
{
≤≤ 	
await
≥≥ (
ShowPresentationThreeAsync
≥≥ +
(
≥≥+ ,
)
≥≥, -
;
≥≥- .
grdBet
¥¥ 
.
¥¥ 

Visibility
¥¥ 
=
¥¥ 

Visibility
¥¥  *
.
¥¥* +
Visible
¥¥+ 2
;
¥¥2 3
grdPresentation
µµ 
.
µµ 

Visibility
µµ &
=
µµ' (

Visibility
µµ) 3
.
µµ3 4
	Collapsed
µµ4 =
;
µµ= >
List
∂∂ 
<
∂∂ 
Border
∂∂ 
>
∂∂ 
playersBorders
∂∂ '
=
∂∂( )

stpPlayers
∂∂* 4
.
∂∂4 5
Children
∂∂5 =
.
∂∂= >
OfType
∂∂> D
<
∂∂D E
Border
∂∂E K
>
∂∂K L
(
∂∂L M
)
∂∂M N
.
∂∂N O
ToList
∂∂O U
(
∂∂U V
)
∂∂V W
;
∂∂W X
if
∑∑ 
(
∑∑ 
itsTeamGame
∑∑ 
)
∑∑ 
{
∏∏ 
string
ππ 
nameOfBorder
ππ #
;
ππ# $
var
∫∫ 
playerInGame
∫∫  
=
∫∫! "
playersInGame
∫∫# 0
.
∫∫0 1
Find
∫∫1 5
(
∫∫5 6
pl
∫∫6 8
=>
∫∫9 ;
pl
∫∫< >
.
∫∫> ?
IdUser
∫∫? E
==
∫∫F H
userSingleton
∫∫I V
.
∫∫V W
IdUser
∫∫W ]
)
∫∫] ^
;
∫∫^ _
if
ªª 
(
ªª 
playerInGame
ªª  
!=
ªª! #
null
ªª$ (
&&
ªª) +
playerInGame
ªª, 8
.
ªª8 9
SideTeam
ªª9 A
==
ªªB D
$num
ªªE F
)
ªªF G
{
ºº 
nameOfBorder
ΩΩ  
=
ΩΩ! "
	team1Name
ΩΩ# ,
;
ΩΩ, -
}
ææ 
else
øø 
{
¿¿ 
nameOfBorder
¡¡  
=
¡¡! "
	team2Name
¡¡# ,
;
¡¡, -
}
¬¬ 
GameTeamCard
√√ #
currentPointsOfPlayer
√√ 2
=
√√3 4
(
√√5 6
GameTeamCard
√√6 B
)
√√B C

stpPlayers
√√C M
.
√√M N
Children
√√N V
.
√√V W
OfType
√√W ]
<
√√] ^
Border
√√^ d
>
√√d e
(
√√e f
)
√√f g
.
√√g h
FirstOrDefault
√√h v
(
√√v w
pla
√√w z
=>
√√{ }
pla√√~ Å
.√√Å Ç
Name√√Ç Ü
.√√Ü á
Equals√√á ç
(√√ç é
nameOfBorder√√é ö
)√√ö õ
)√√õ ú
;√√ú ù
if
ƒƒ 
(
ƒƒ #
currentPointsOfPlayer
ƒƒ )
.
ƒƒ) *
	GetPoints
ƒƒ* 3
(
ƒƒ3 4
)
ƒƒ4 5
<
ƒƒ6 7
$num
ƒƒ8 9
)
ƒƒ9 :
{
≈≈ 
txbPointsToBet
∆∆ "
.
∆∆" #
Text
∆∆# '
=
∆∆( )
$str
∆∆* -
;
∆∆- .
txbPointsToBet
«« "
.
««" #
	IsEnabled
««# ,
=
««- .
false
««/ 4
;
««4 5
}
»» 
}
…… 
else
   
{
ÀÀ 
GamePlayerCard
ÃÃ #
currentPointsOfPlayer
ÃÃ 4
=
ÃÃ5 6
(
ÃÃ7 8
GamePlayerCard
ÃÃ8 F
)
ÃÃF G
playersBorders
ÃÃG U
.
ÃÃU V
Find
ÃÃV Z
(
ÃÃZ [
pl
ÃÃ[ ]
=>
ÃÃ^ `
pl
ÃÃa c
.
ÃÃc d
Name
ÃÃd h
.
ÃÃh i
Equals
ÃÃi o
(
ÃÃo p
$str
ÃÃp s
+
ÃÃt u
userSingletonÃÃv É
.ÃÃÉ Ñ
IdUserÃÃÑ ä
.ÃÃä ã
ToStringÃÃã ì
(ÃÃì î
)ÃÃî ï
)ÃÃï ñ
)ÃÃñ ó
;ÃÃó ò
if
ÕÕ 
(
ÕÕ #
currentPointsOfPlayer
ÕÕ )
!=
ÕÕ* ,
null
ÕÕ- 1
&&
ÕÕ2 4#
currentPointsOfPlayer
ÕÕ5 J
.
ÕÕJ K
	GetPoints
ÕÕK T
(
ÕÕT U
)
ÕÕU V
<
ÕÕW X
$num
ÕÕY Z
)
ÕÕZ [
{
ŒŒ 
txbPointsToBet
œœ "
.
œœ" #
Text
œœ# '
=
œœ( )
$str
œœ* -
;
œœ- .
txbPointsToBet
–– "
.
––" #
	IsEnabled
––# ,
=
––- .
false
––/ 4
;
––4 5
}
—— 
}
““ 
}
”” 	
private
’’ 
async
’’ 
Task
’’ (
ShowPresentationThreeAsync
’’ 5
(
’’5 6
)
’’6 7
{
÷÷ 	
grTimer
◊◊ 
.
◊◊ 

Visibility
◊◊ 
=
◊◊  

Visibility
◊◊! +
.
◊◊+ ,
Hidden
◊◊, 2
;
◊◊2 3
wrpBoardOfCards
ÿÿ 
.
ÿÿ 

Visibility
ÿÿ &
=
ÿÿ' (

Visibility
ÿÿ) 3
.
ÿÿ3 4
Hidden
ÿÿ4 :
;
ÿÿ: ;
stpTurnLigth
ŸŸ 
.
ŸŸ 

Visibility
ŸŸ #
=
ŸŸ$ %

Visibility
ŸŸ& 0
.
ŸŸ0 1
Hidden
ŸŸ1 7
;
ŸŸ7 8
grdPresentation
⁄⁄ 
.
⁄⁄ 

Visibility
⁄⁄ &
=
⁄⁄' (

Visibility
⁄⁄) 3
.
⁄⁄3 4
Visible
⁄⁄4 ;
;
⁄⁄; <
txbHostMessage
€€ 
.
€€ 
Text
€€ 
=
€€  !

Properties
€€" ,
.
€€, -
	Resources
€€- 6
.
€€6 7$
HostRound3Presentation
€€7 M
;
€€M N
await
‹‹ 
Task
‹‹ 
.
‹‹ 
Delay
‹‹ 
(
‹‹ 
$num
‹‹ !
)
‹‹! "
;
‹‹" #
}
›› 	
private
ﬂﬂ 
void
ﬂﬂ 
ClickConfirmBet
ﬂﬂ $
(
ﬂﬂ$ %
object
ﬂﬂ% +
sender
ﬂﬂ, 2
,
ﬂﬂ2 3
RoutedEventArgs
ﬂﬂ4 C
e
ﬂﬂD E
)
ﬂﬂE F
{
‡‡ 	
string
·· 
pointsToBets
·· 
=
··  !
txbPointsToBet
··" 0
.
··0 1
Text
··1 5
;
··5 6
if
‚‚ 
(
‚‚ 
!
‚‚ 
string
‚‚ 
.
‚‚ 
IsNullOrEmpty
‚‚ %
(
‚‚% &
pointsToBets
‚‚& 2
)
‚‚2 3
)
‚‚3 4
{
„„ 
	pointsBet
‰‰ 
=
‰‰ 
int
‰‰ 
.
‰‰  
Parse
‰‰  %
(
‰‰% &
txbPointsToBet
‰‰& 4
.
‰‰4 5
Text
‰‰5 9
)
‰‰9 :
;
‰‰: ;
List
ÂÂ 
<
ÂÂ 
Border
ÂÂ 
>
ÂÂ 
playersBorders
ÂÂ +
=
ÂÂ, -

stpPlayers
ÂÂ. 8
.
ÂÂ8 9
Children
ÂÂ9 A
.
ÂÂA B
OfType
ÂÂB H
<
ÂÂH I
Border
ÂÂI O
>
ÂÂO P
(
ÂÂP Q
)
ÂÂQ R
.
ÂÂR S
ToList
ÂÂS Y
(
ÂÂY Z
)
ÂÂZ [
;
ÂÂ[ \
if
ÊÊ 
(
ÊÊ 
itsTeamGame
ÊÊ 
)
ÊÊ  
{
ÁÁ 
string
ËË 
nameOfBorder
ËË '
;
ËË' (
var
ÈÈ 
playerInGameSide
ÈÈ (
=
ÈÈ) *
playersInGame
ÈÈ+ 8
.
ÈÈ8 9
Find
ÈÈ9 =
(
ÈÈ= >
pl
ÈÈ> @
=>
ÈÈA C
pl
ÈÈD F
.
ÈÈF G
IdUser
ÈÈG M
==
ÈÈN P
userSingleton
ÈÈQ ^
.
ÈÈ^ _
IdUser
ÈÈ_ e
)
ÈÈe f
;
ÈÈf g
if
ÍÍ 
(
ÍÍ 
playerInGameSide
ÍÍ (
!=
ÍÍ) +
null
ÍÍ, 0
&&
ÍÍ1 3
playerInGameSide
ÍÍ4 D
.
ÍÍD E
SideTeam
ÍÍE M
==
ÍÍN P
$num
ÍÍQ R
)
ÍÍR S
{
ÎÎ 
nameOfBorder
ÏÏ $
=
ÏÏ% &
	team1Name
ÏÏ' 0
;
ÏÏ0 1
}
ÌÌ 
else
ÓÓ 
{
ÔÔ 
nameOfBorder
 $
=
% &
	team2Name
' 0
;
0 1
}
ÒÒ 
var
ÚÚ #
currentPointsOfPlayer
ÚÚ -
=
ÚÚ. /
playersBorders
ÚÚ0 >
.
ÚÚ> ?
Find
ÚÚ? C
(
ÚÚC D
pla
ÚÚD G
=>
ÚÚH J
pla
ÚÚK N
.
ÚÚN O
Name
ÚÚO S
.
ÚÚS T
Equals
ÚÚT Z
(
ÚÚZ [
nameOfBorder
ÚÚ[ g
)
ÚÚg h
)
ÚÚh i
;
ÚÚi j
if
ÛÛ 
(
ÛÛ 
	pointsBet
ÛÛ !
<=
ÛÛ" $
(
ÛÛ% &
(
ÛÛ& '
GameTeamCard
ÛÛ' 3
)
ÛÛ3 4#
currentPointsOfPlayer
ÛÛ4 I
)
ÛÛI J
.
ÛÛJ K
	GetPoints
ÛÛK T
(
ÛÛT U
)
ÛÛU V
||
ÛÛW Y
	pointsBet
ÛÛZ c
==
ÛÛd f
$num
ÛÛg h
)
ÛÛh i
{
ÙÙ 

ConfirmBet
ıı "
(
ıı" #
)
ıı# $
;
ıı$ %
}
ˆˆ 
}
˜˜ 
else
¯¯ 
{
˘˘ 
var
˙˙ #
currentPointsOfPlayer
˙˙ -
=
˙˙. /
playersBorders
˙˙0 >
.
˙˙> ?
Find
˙˙? C
(
˙˙C D
pl
˙˙D F
=>
˙˙G I
pl
˙˙J L
.
˙˙L M
Name
˙˙M Q
.
˙˙Q R
Equals
˙˙R X
(
˙˙X Y
$str
˙˙Y \
+
˙˙] ^
userSingleton
˙˙_ l
.
˙˙l m
IdUser
˙˙m s
.
˙˙s t
ToString
˙˙t |
(
˙˙| }
)
˙˙} ~
)
˙˙~ 
)˙˙ Ä
;˙˙Ä Å
if
˚˚ 
(
˚˚ #
currentPointsOfPlayer
˚˚ -
!=
˚˚- /
null
˚˚0 4
&&
˚˚5 7
	pointsBet
˚˚8 A
<=
˚˚B D
(
˚˚E F
(
˚˚F G
GamePlayerCard
˚˚G U
)
˚˚U V#
currentPointsOfPlayer
˚˚V k
)
˚˚k l
.
˚˚l m
	GetPoints
˚˚m v
(
˚˚v w
)
˚˚w x
||
˚˚y {
	pointsBet˚˚| Ö
==˚˚Ü à
$num˚˚â ä
)˚˚ä ã
{
¸¸ 

ConfirmBet
˝˝ "
(
˝˝" #
)
˝˝# $
;
˝˝$ %
}
˛˛ 
}
ˇˇ 
}
ÄÄ 
}
ÅÅ 	
private
ÉÉ 
void
ÉÉ 

ConfirmBet
ÉÉ 
(
ÉÉ  
)
ÉÉ  !
{
ÑÑ 	
try
ÖÖ 
{
ÜÜ 
GameActionsClient
áá !,
gameActionsCallBackClientProxy
áá" @
=
ááA B
new
ááC F
GameActionsClient
ááG X
(
ááX Y
new
ááY \
InstanceContext
áá] l
(
áál m
this
áám q
)
ááq r
)
áár s
;
áás t,
gameActionsCallBackClientProxy
àà .
.
àà. /
RenewGameCallBack
àà/ @
(
àà@ A
roomCode
ààA I
,
ààI J
userSingleton
ààK X
.
ààX Y
IdUser
ààY _
)
àà_ `
;
àà` a)
GameActionsOperationsClient
ää +$
gameActionsClientProxy
ää, B
=
ääC D
new
ääE H
(
ääH I
)
ääI J
;
ääJ K$
gameActionsClientProxy
ãã &
.
ãã& '

ConfirmBet
ãã' 1
(
ãã1 2
roomCode
ãã2 :
,
ãã: ;
userSingleton
ãã< I
.
ããI J
IdUser
ããJ P
)
ããP Q
;
ããQ R
txbPointsToBet
åå 
.
åå 
	IsEnabled
åå (
=
åå) *
false
åå+ 0
;
åå0 1
bttConfirmBet
çç 
.
çç 
	IsEnabled
çç '
=
çç( )
false
çç* /
;
çç/ 0
}
éé 
catch
èè 
(
èè '
EndpointNotFoundException
èè ,
ex
èè- /
)
èè/ 0
{
êê 
HandleException
ëë 
(
ëë  
ex
ëë  "
,
ëë" #

Properties
ëë$ .
.
ëë. /
	Resources
ëë/ 8
.
ëë8 9
lblFailToMakeBet
ëë9 I
+
ëëJ K
$str
ëëL Q
+
ëëR S

Properties
ëëT ^
.
ëë^ _
	Resources
ëë_ h
.
ëëh i!
lblEndPointNotFound
ëëi |
)
ëë| }
;
ëë} ~
}
íí 
catch
ìì 
(
ìì 1
#CommunicationObjectFaultedException
ìì 6
ex
ìì7 9
)
ìì9 :
{
îî 
HandleException
ïï 
(
ïï  
ex
ïï  "
,
ïï" #

Properties
ïï$ .
.
ïï. /
	Resources
ïï/ 8
.
ïï8 9
lblFailToMakeBet
ïï9 I
+
ïïJ K
$str
ïïL Q
+
ïïR S

Properties
ïïT ^
.
ïï^ _
	Resources
ïï_ h
.
ïïh i'
lblComunicationExceptionïïi Å
)ïïÅ Ç
;ïïÇ É
}
ññ 
catch
óó 
(
óó 
TimeoutException
óó #
ex
óó$ &
)
óó& '
{
òò 
HandleException
ôô 
(
ôô  
ex
ôô  "
,
ôô" #

Properties
ôô$ .
.
ôô. /
	Resources
ôô/ 8
.
ôô8 9
lblFailToMakeBet
ôô9 I
+
ôôJ K
$str
ôôL Q
+
ôôR S

Properties
ôôT ^
.
ôô^ _
	Resources
ôô_ h
.
ôôh i
lblTimeException
ôôi y
)
ôôy z
;
ôôz {
}
öö 
catch
õõ 
(
õõ $
CommunicationException
õõ )
ex
õõ* ,
)
õõ, -
{
úú 
HandleException
ùù 
(
ùù  
ex
ùù  "
,
ùù" #

Properties
ùù$ .
.
ùù. /
	Resources
ùù/ 8
.
ùù8 9
lblFailToMakeBet
ùù9 I
+
ùùJ K
$str
ùùL Q
+
ùùR S

Properties
ùùT ^
.
ùù^ _
	Resources
ùù_ h
.
ùùh i!
lblWithoutConection
ùùi |
)
ùù| }
;
ùù} ~
}
ûû 
catch
üü 
(
üü 
SocketException
üü "
ex
üü# %
)
üü% &
{
†† 
HandleException
°° 
(
°°  
ex
°°  "
,
°°" #

Properties
°°$ .
.
°°. /
	Resources
°°/ 8
.
°°8 9 
lblFailToStartGame
°°9 K
+
°°L M
$str
°°N S
+
°°T U

Properties
°°V `
.
°°` a
	Resources
°°a j
.
°°j k!
lblEndPointNotFound
°°k ~
)
°°~ 
;°° Ä
}
¢¢ 
}
££ 	
private
•• 
void
•• 
EntryBetPoints
•• #
(
••# $
object
••$ *
sender
••+ 1
,
••1 2&
TextCompositionEventArgs
••3 K
e
••L M
)
••M N
{
¶¶ 	
if
ßß 
(
ßß 
!
ßß 
int
ßß 
.
ßß 
TryParse
ßß 
(
ßß 
e
ßß 
.
ßß  
Text
ßß  $
,
ßß$ %
out
ßß& )
_
ßß* +
)
ßß+ ,
)
ßß, -
{
®® 
e
©© 
.
©© 
Handled
©© 
=
©© 
true
©©  
;
©©  !
}
™™ 
}
´´ 	
public
≠≠ 
void
≠≠ &
ResponseShowLastQuestion
≠≠ ,
(
≠≠, -
)
≠≠- .
{
ÆÆ 	 
questionBeingAsked
ØØ 
=
ØØ  
finalQuestion
ØØ! .
.
ØØ. /%
SpecificQuestionDetails
ØØ/ F
;
ØØF G
grdAnswerChoices
∞∞ 
.
∞∞ 

Visibility
∞∞ '
=
∞∞( )

Visibility
∞∞* 4
.
∞∞4 5
Visible
∞∞5 <
;
∞∞< =
grdBet
±± 
.
±± 

Visibility
±± 
=
±± 

Visibility
±±  *
.
±±* +
	Collapsed
±±+ 4
;
±±4 5
grTimer
≤≤ 
.
≤≤ 

Visibility
≤≤ 
=
≤≤  

Visibility
≤≤! +
.
≤≤+ ,
Visible
≤≤, 3
;
≤≤3 4
txbQuestion
≥≥ 
.
≥≥ 
Text
≥≥ 
=
≥≥ !
GetSpecificResource
≥≥  3
.
≥≥3 4,
GetEnglishOrSpanishDescription
≥≥4 R
(
≥≥R S 
questionBeingAsked
≥≥S e
.
≥≥e f)
EnglishQuestionDescription≥≥f Ä
,≥≥Ä Å"
questionBeingAsked≥≥Ç î
.≥≥î ï*
SpanishQuestionDescription≥≥ï Ø
)≥≥Ø ∞
;≥≥∞ ±)
answersOfQuestionBeingAsked
¥¥ '
=
¥¥( )
new
¥¥* -
List
¥¥. 2
<
¥¥2 3

AnswerPojo
¥¥3 =
>
¥¥= >
(
¥¥> ?
)
¥¥? @
{
¥¥A B
finalQuestion
¥¥C P
.
¥¥P Q
RightAnswer
¥¥Q \
,
¥¥\ ]
finalQuestion
¥¥^ k
.
¥¥k l
WrongOptionOne
¥¥l z
,
¥¥z {
finalQuestion¥¥| â
.¥¥â ä
WrongOptionTwo¥¥ä ò
,¥¥ò ô
finalQuestion¥¥ö ß
.¥¥ß ® 
WrongOptionThree¥¥® ∏
}¥¥π ∫
.¥¥∫ ª
OrderBy¥¥ª ¬
(¥¥¬ √
order¥¥√ »
=>¥¥… À
Guid¥¥Ã –
.¥¥– —
NewGuid¥¥— ÿ
(¥¥ÿ Ÿ
)¥¥Ÿ ⁄
)¥¥⁄ €
.¥¥€ ‹
ToList¥¥‹ ‚
(¥¥‚ „
)¥¥„ ‰
;¥¥‰ Â%
answerToCurrentQuestion
µµ #
=
µµ$ %)
answersOfQuestionBeingAsked
µµ& A
.
µµA B
Find
µµB F
(
µµF G
answer
µµG M
=>
µµN P
answer
µµQ W
.
µµW X
IdAnswer
µµX `
==
µµa c
finalQuestion
µµd q
.
µµq r&
SpecificQuestionDetailsµµr â
.µµâ ä"
IdAnswerOfQuestionµµä ú
)µµú ù
;µµù û
bttFirstAnswer
∂∂ 
.
∂∂ 
Content
∂∂ "
=
∂∂# $!
GetSpecificResource
∂∂% 8
.
∂∂8 9,
GetEnglishOrSpanishDescription
∂∂9 W
(
∂∂W X)
answersOfQuestionBeingAsked
∂∂X s
[
∂∂s t
$num
∂∂t u
]
∂∂u v
.
∂∂v w'
EnglishAnswerDescription∂∂w è
,∂∂è ê+
answersOfQuestionBeingAsked∂∂ë ¨
[∂∂¨ ≠
$num∂∂≠ Æ
]∂∂Æ Ø
.∂∂Ø ∞(
SpanishAnswerDescription∂∂∞ »
)∂∂» …
;∂∂…  
bttSecondAnswer
∑∑ 
.
∑∑ 
Content
∑∑ #
=
∑∑$ %!
GetSpecificResource
∑∑& 9
.
∑∑9 :,
GetEnglishOrSpanishDescription
∑∑: X
(
∑∑X Y)
answersOfQuestionBeingAsked
∑∑Y t
[
∑∑t u
$num
∑∑u v
]
∑∑v w
.
∑∑w x'
EnglishAnswerDescription∑∑x ê
,∑∑ê ë+
answersOfQuestionBeingAsked∑∑í ≠
[∑∑≠ Æ
$num∑∑Æ Ø
]∑∑Ø ∞
.∑∑∞ ±(
SpanishAnswerDescription∑∑± …
)∑∑…  
;∑∑  À
bttThridAnswer
∏∏ 
.
∏∏ 
Content
∏∏ "
=
∏∏# $!
GetSpecificResource
∏∏% 8
.
∏∏8 9,
GetEnglishOrSpanishDescription
∏∏9 W
(
∏∏W X)
answersOfQuestionBeingAsked
∏∏X s
[
∏∏s t
$num
∏∏t u
]
∏∏u v
.
∏∏v w'
EnglishAnswerDescription∏∏w è
,∏∏è ê+
answersOfQuestionBeingAsked∏∏ë ¨
[∏∏¨ ≠
$num∏∏≠ Æ
]∏∏Æ Ø
.∏∏Ø ∞(
SpanishAnswerDescription∏∏∞ »
)∏∏» …
;∏∏…  
bttFourAnswer
ππ 
.
ππ 
Content
ππ !
=
ππ" #!
GetSpecificResource
ππ$ 7
.
ππ7 8,
GetEnglishOrSpanishDescription
ππ8 V
(
ππV W)
answersOfQuestionBeingAsked
ππW r
[
ππr s
$num
ππs t
]
ππt u
.
ππu v'
EnglishAnswerDescriptionππv é
,ππé è+
answersOfQuestionBeingAskedππê ´
[ππ´ ¨
$numππ¨ ≠
]ππ≠ Æ
.ππÆ Ø(
SpanishAnswerDescriptionππØ «
)ππ« »
;ππ» …

StartTimer
∫∫ 
(
∫∫ 
)
∫∫ 
;
∫∫ 
}
ªª 	
public
ΩΩ 
void
ΩΩ 
SelectQuestion
ΩΩ "
(
ΩΩ" #%
QuestionCardInformation
ΩΩ# :
question
ΩΩ; C
)
ΩΩC D
{
ææ 	
if
øø 
(
øø 
yourTurn
øø 
==
øø 
currentTurn
øø '
)
øø' (
{
¿¿ 
var
¡¡ #
answersQuestionsAsked
¡¡ )
=
¡¡* +
new
¡¡, /
List
¡¡0 4
<
¡¡4 5

AnswerPojo
¡¡5 ?
>
¡¡? @
(
¡¡@ A
)
¡¡A B
{
¡¡C D
question
¡¡E M
.
¡¡M N
RightAnswer
¡¡N Y
,
¡¡Y Z
question
¡¡[ c
.
¡¡c d
WrongOptionOne
¡¡d r
,
¡¡r s
question
¡¡t |
.
¡¡| }
WrongOptionTwo¡¡} ã
,¡¡ã å
question¡¡ç ï
.¡¡ï ñ 
WrongOptionThree¡¡ñ ¶
}¡¡ß ®
.¡¡® ©
OrderBy¡¡© ∞
(¡¡∞ ±
order¡¡± ∂
=>¡¡∑ π
Guid¡¡∫ æ
.¡¡æ ø
NewGuid¡¡ø ∆
(¡¡∆ «
)¡¡« »
)¡¡» …
.¡¡…  
ToList¡¡  –
(¡¡– —
)¡¡— “
;¡¡“ ”+
CurrentQuestionToShowContract
¬¬ -#
currentQuestionToShow
¬¬. C
=
¬¬D E
new
¬¬F I+
CurrentQuestionToShowContract
¬¬J g
(
¬¬g h
)
¬¬h i
{
√√ 

IdQuestion
ƒƒ 
=
ƒƒ  
question
ƒƒ! )
.
ƒƒ) *%
SpecificQuestionDetails
ƒƒ* A
.
ƒƒA B

IdQuestion
ƒƒB L
,
ƒƒL M
IdFirstAnswer
≈≈ !
=
≈≈" ##
answersQuestionsAsked
≈≈$ 9
[
≈≈9 :
$num
≈≈: ;
]
≈≈; <
.
≈≈< =
IdAnswer
≈≈= E
,
≈≈E F
IdSecondAnswer
∆∆ "
=
∆∆# $#
answersQuestionsAsked
∆∆% :
[
∆∆: ;
$num
∆∆; <
]
∆∆< =
.
∆∆= >
IdAnswer
∆∆> F
,
∆∆F G
IdThirdAnswer
«« !
=
««" ##
answersQuestionsAsked
««$ 9
[
««9 :
$num
««: ;
]
««; <
.
««< =
IdAnswer
««= E
,
««E F
IdFourthAnswer
»» "
=
»»# $#
answersQuestionsAsked
»»% :
[
»»: ;
$num
»»; <
]
»»< =
.
»»= >
IdAnswer
»»> F
,
»»F G
}
…… 
;
…… 
try
   
{
ÀÀ 
GameActionsClient
ÃÃ %,
gameActionsCallBackClientProxy
ÃÃ& D
=
ÃÃE F
new
ÃÃG J
GameActionsClient
ÃÃK \
(
ÃÃ\ ]
new
ÃÃ] `
InstanceContext
ÃÃa p
(
ÃÃp q
this
ÃÃq u
)
ÃÃu v
)
ÃÃv w
;
ÃÃw x,
gameActionsCallBackClientProxy
ÕÕ 2
.
ÕÕ2 3
RenewGameCallBack
ÕÕ3 D
(
ÕÕD E
roomCode
ÕÕE M
,
ÕÕM N
userSingleton
ÕÕO \
.
ÕÕ\ ]
IdUser
ÕÕ] c
)
ÕÕc d
;
ÕÕd e)
GameActionsOperationsClient
œœ /$
gameActionsClientProxy
œœ0 F
=
œœG H
new
œœI L
(
œœL M
)
œœM N
;
œœN O$
gameActionsClientProxy
–– *
.
––* +#
ChooseQuestionOfBoard
––+ @
(
––@ A
roomCode
––A I
,
––I J
userSingleton
––K X
.
––X Y
IdUser
––Y _
,
––_ `
question
––a i
.
––i j
NumberOfRound
––j w
,
––w x$
currentQuestionToShow––y é
)––é è
;––è ê
}
—— 
catch
““ 
(
““ '
EndpointNotFoundException
““ 0
ex
““1 3
)
““3 4
{
”” 
HandleException
‘‘ #
(
‘‘# $
ex
‘‘$ &
,
‘‘& '

Properties
‘‘( 2
.
‘‘2 3
	Resources
‘‘3 <
.
‘‘< =$
lblFailToChoseQuestion
‘‘= S
+
‘‘T U
$str
‘‘V [
+
‘‘\ ]

Properties
‘‘^ h
.
‘‘h i
	Resources
‘‘i r
.
‘‘r s"
lblEndPointNotFound‘‘s Ü
)‘‘Ü á
;‘‘á à
}
’’ 
catch
÷÷ 
(
÷÷ 1
#CommunicationObjectFaultedException
÷÷ :
ex
÷÷; =
)
÷÷= >
{
◊◊ 
HandleException
ÿÿ #
(
ÿÿ# $
ex
ÿÿ$ &
,
ÿÿ& '

Properties
ÿÿ( 2
.
ÿÿ2 3
	Resources
ÿÿ3 <
.
ÿÿ< =$
lblFailToChoseQuestion
ÿÿ= S
+
ÿÿT U
$str
ÿÿV [
+
ÿÿ\ ]

Properties
ÿÿ^ h
.
ÿÿh i
	Resources
ÿÿi r
.
ÿÿr s'
lblComunicationExceptionÿÿs ã
)ÿÿã å
;ÿÿå ç
}
ŸŸ 
catch
⁄⁄ 
(
⁄⁄ 
TimeoutException
⁄⁄ '
ex
⁄⁄( *
)
⁄⁄* +
{
€€ 
HandleException
‹‹ #
(
‹‹# $
ex
‹‹$ &
,
‹‹& '

Properties
‹‹( 2
.
‹‹2 3
	Resources
‹‹3 <
.
‹‹< =$
lblFailToChoseQuestion
‹‹= S
+
‹‹T U
$str
‹‹V [
+
‹‹\ ]

Properties
‹‹^ h
.
‹‹h i
	Resources
‹‹i r
.
‹‹r s
lblTimeException‹‹s É
)‹‹É Ñ
;‹‹Ñ Ö
}
›› 
catch
ﬁﬁ 
(
ﬁﬁ $
CommunicationException
ﬁﬁ -
ex
ﬁﬁ. 0
)
ﬁﬁ0 1
{
ﬂﬂ 
HandleException
‡‡ #
(
‡‡# $
ex
‡‡$ &
,
‡‡& '

Properties
‡‡( 2
.
‡‡2 3
	Resources
‡‡3 <
.
‡‡< =$
lblFailToChoseQuestion
‡‡= S
+
‡‡T U
$str
‡‡V [
+
‡‡\ ]

Properties
‡‡^ h
.
‡‡h i
	Resources
‡‡i r
.
‡‡r s"
lblWithoutConection‡‡s Ü
)‡‡Ü á
;‡‡á à
}
·· 
catch
‚‚ 
(
‚‚ 
SocketException
‚‚ &
ex
‚‚' )
)
‚‚) *
{
„„ 
HandleException
‰‰ #
(
‰‰# $
ex
‰‰$ &
,
‰‰& '

Properties
‰‰( 2
.
‰‰2 3
	Resources
‰‰3 <
.
‰‰< = 
lblFailToStartGame
‰‰= O
+
‰‰P Q
$str
‰‰R W
+
‰‰X Y

Properties
‰‰Z d
.
‰‰d e
	Resources
‰‰e n
.
‰‰n o"
lblEndPointNotFound‰‰o Ç
)‰‰Ç É
;‰‰É Ñ
}
ÂÂ 
}
ÊÊ 
}
ÁÁ 	
public
ÈÈ 
void
ÈÈ ,
ResponseSomeOneSelectAQuestion
ÈÈ 2
(
ÈÈ2 3+
CurrentQuestionToShowContract
ÈÈ3 P
questionToShow
ÈÈQ _
,
ÈÈ_ `
int
ÈÈa d
currentRound
ÈÈe q
,
ÈÈq r
int
ÈÈs v
idUser
ÈÈw }
)
ÈÈ} ~
{
ÍÍ 	
this
ÎÎ 
.
ÎÎ 
currentRound
ÎÎ 
=
ÎÎ 
currentRound
ÎÎ  ,
;
ÎÎ, -%
QuestionCardInformation
ÏÏ #
questionCard
ÏÏ$ 0
=
ÏÏ1 2
currentQuestions
ÏÏ3 C
.
ÏÏC D
Find
ÏÏD H
(
ÏÏH I
quest
ÏÏI N
=>
ÏÏO Q
quest
ÏÏR W
.
ÏÏW X%
SpecificQuestionDetails
ÏÏX o
.
ÏÏo p

IdQuestion
ÏÏp z
==
ÏÏ{ }
questionToShowÏÏ~ å
.ÏÏå ç

IdQuestionÏÏç ó
)ÏÏó ò
;ÏÏò ô
if
ÌÌ 
(
ÌÌ 
questionCard
ÌÌ 
!=
ÌÌ 
null
ÌÌ  $
)
ÌÌ$ %
{
ÓÓ  
questionBeingAsked
ÔÔ "
=
ÔÔ# $
questionCard
ÔÔ% 1
.
ÔÔ1 2%
SpecificQuestionDetails
ÔÔ2 I
;
ÔÔI J
}
 
grdAnswerChoices
ÒÒ 
.
ÒÒ 

Visibility
ÒÒ '
=
ÒÒ( )

Visibility
ÒÒ* 4
.
ÒÒ4 5
Visible
ÒÒ5 <
;
ÒÒ< =
grTimer
ÚÚ 
.
ÚÚ 

Visibility
ÚÚ 
=
ÚÚ  

Visibility
ÚÚ! +
.
ÚÚ+ ,
Visible
ÚÚ, 3
;
ÚÚ3 4
txbQuestion
ÛÛ 
.
ÛÛ 
Text
ÛÛ 
=
ÛÛ !
GetSpecificResource
ÛÛ 2
.
ÛÛ2 3,
GetEnglishOrSpanishDescription
ÛÛ3 Q
(
ÛÛQ R
questionCard
ÛÛR ^
.
ÛÛ^ _%
SpecificQuestionDetails
ÛÛ_ v
.
ÛÛv w)
EnglishQuestionDescriptionÛÛw ë
,ÛÛë í
questionCardÛÛì ü
.ÛÛü †'
SpecificQuestionDetailsÛÛ† ∑
.ÛÛ∑ ∏*
SpanishQuestionDescriptionÛÛ∏ “
)ÛÛ“ ”
;ÛÛ” ‘
List
ÙÙ 
<
ÙÙ 

AnswerPojo
ÙÙ 
>
ÙÙ $
answersForThisQuestion
ÙÙ 3
=
ÙÙ4 5
new
ÙÙ6 9
List
ÙÙ: >
<
ÙÙ> ?

AnswerPojo
ÙÙ? I
>
ÙÙI J
(
ÙÙJ K
)
ÙÙK L
{
ÙÙM N
questionCard
ÙÙO [
.
ÙÙ[ \
RightAnswer
ÙÙ\ g
,
ÙÙg h
questionCard
ÙÙi u
.
ÙÙu v
WrongOptionOneÙÙv Ñ
,ÙÙÑ Ö
questionCardÙÙÜ í
.ÙÙí ì
WrongOptionTwoÙÙì °
,ÙÙ° ¢
questionCardÙÙ£ Ø
.ÙÙØ ∞ 
WrongOptionThreeÙÙ∞ ¿
}ÙÙ¡ ¬
;ÙÙ¬ √)
answersOfQuestionBeingAsked
ıı '
=
ıı( )$
answersForThisQuestion
ıı* @
.
ıı@ A
ToList
ııA G
(
ııG H
)
ııH I
;
ııI J%
answerToCurrentQuestion
ˆˆ #
=
ˆˆ$ %$
answersForThisQuestion
ˆˆ& <
.
ˆˆ< =
Find
ˆˆ= A
(
ˆˆA B
ans
ˆˆB E
=>
ˆˆF H
ans
ˆˆI L
.
ˆˆL M
IdAnswer
ˆˆM U
==
ˆˆV X 
questionBeingAsked
ˆˆY k
.
ˆˆk l 
IdAnswerOfQuestion
ˆˆl ~
)
ˆˆ~ 
;ˆˆ Ä
var
˜˜ 

answerbtt1
˜˜ 
=
˜˜ $
answersForThisQuestion
˜˜ 3
.
˜˜3 4
Find
˜˜4 8
(
˜˜8 9
answer
˜˜9 ?
=>
˜˜@ B
answer
˜˜C I
.
˜˜I J
IdAnswer
˜˜J R
==
˜˜S U
questionToShow
˜˜V d
.
˜˜d e
IdFirstAnswer
˜˜e r
)
˜˜r s
;
˜˜s t
bttFirstAnswer
¯¯ 
.
¯¯ 
Content
¯¯ "
=
¯¯# $!
GetSpecificResource
¯¯% 8
.
¯¯8 9,
GetEnglishOrSpanishDescription
¯¯9 W
(
¯¯W X

answerbtt1
¯¯X b
.
¯¯b c&
EnglishAnswerDescription
¯¯c {
,
¯¯{ |

answerbtt1¯¯} á
.¯¯á à(
SpanishAnswerDescription¯¯à †
)¯¯† °
;¯¯° ¢
var
˘˘ 

answerbtt2
˘˘ 
=
˘˘ $
answersForThisQuestion
˘˘ 3
.
˘˘3 4
Find
˘˘4 8
(
˘˘8 9
answer
˘˘9 ?
=>
˘˘@ B
answer
˘˘C I
.
˘˘I J
IdAnswer
˘˘J R
==
˘˘S U
questionToShow
˘˘V d
.
˘˘d e
IdSecondAnswer
˘˘e s
)
˘˘s t
;
˘˘t u
bttSecondAnswer
˙˙ 
.
˙˙ 
Content
˙˙ #
=
˙˙$ %!
GetSpecificResource
˙˙& 9
.
˙˙9 :,
GetEnglishOrSpanishDescription
˙˙: X
(
˙˙X Y

answerbtt2
˙˙Y c
.
˙˙c d&
EnglishAnswerDescription
˙˙d |
,
˙˙| }

answerbtt2˙˙~ à
.˙˙à â(
SpanishAnswerDescription˙˙â °
)˙˙° ¢
;˙˙¢ £
var
˚˚ 

answerbtt3
˚˚ 
=
˚˚ $
answersForThisQuestion
˚˚ 3
.
˚˚3 4
Find
˚˚4 8
(
˚˚8 9
answer
˚˚9 ?
=>
˚˚@ B
answer
˚˚C I
.
˚˚I J
IdAnswer
˚˚J R
==
˚˚S U
questionToShow
˚˚V d
.
˚˚d e
IdThirdAnswer
˚˚e r
)
˚˚r s
;
˚˚s t
bttThridAnswer
¸¸ 
.
¸¸ 
Content
¸¸ "
=
¸¸# $!
GetSpecificResource
¸¸% 8
.
¸¸8 9,
GetEnglishOrSpanishDescription
¸¸9 W
(
¸¸W X

answerbtt3
¸¸X b
.
¸¸b c&
EnglishAnswerDescription
¸¸c {
,
¸¸{ |

answerbtt3¸¸} á
.¸¸á à(
SpanishAnswerDescription¸¸à †
)¸¸† °
;¸¸° ¢
var
˝˝ 

answerbtt4
˝˝ 
=
˝˝ $
answersForThisQuestion
˝˝ 3
.
˝˝3 4
Find
˝˝4 8
(
˝˝8 9
answer
˝˝9 ?
=>
˝˝@ B
answer
˝˝C I
.
˝˝I J
IdAnswer
˝˝J R
==
˝˝S U
questionToShow
˝˝V d
.
˝˝d e
IdFourthAnswer
˝˝e s
)
˝˝s t
;
˝˝t u
bttFourAnswer
˛˛ 
.
˛˛ 
Content
˛˛ !
=
˛˛" #!
GetSpecificResource
˛˛$ 7
.
˛˛7 8,
GetEnglishOrSpanishDescription
˛˛8 V
(
˛˛V W

answerbtt4
˛˛W a
.
˛˛a b&
EnglishAnswerDescription
˛˛b z
,
˛˛z {

answerbtt4˛˛| Ü
.˛˛Ü á(
SpanishAnswerDescription˛˛á ü
)˛˛ü †
;˛˛† °

StartTimer
ˇˇ 
(
ˇˇ 
)
ˇˇ 
;
ˇˇ 
}
ÄÄ 	
private
ÇÇ 
void
ÇÇ 
ClickSelectAnswer
ÇÇ &
(
ÇÇ& '
object
ÇÇ' -
sender
ÇÇ. 4
,
ÇÇ4 5
RoutedEventArgs
ÇÇ6 E
e
ÇÇF G
)
ÇÇG H
{
ÉÉ 	
if
ÑÑ 
(
ÑÑ 
yourTurn
ÑÑ 
==
ÑÑ 
currentTurn
ÑÑ '
||
ÑÑ( *
currentRound
ÑÑ+ 7
==
ÑÑ8 :
ROUND_THREE
ÑÑ; F
)
ÑÑF G
{
ÖÖ 
var
ÜÜ 
answerCardChoose
ÜÜ $
=
ÜÜ% &
(
ÜÜ' (
Button
ÜÜ( .
)
ÜÜ. /
sender
ÜÜ/ 5
;
ÜÜ5 6
try
áá 
{
àà 
GameActionsClient
ââ %,
gameActionsCallBackClientProxy
ââ& D
=
ââE F
new
ââG J
GameActionsClient
ââK \
(
ââ\ ]
new
ââ] `
InstanceContext
ââa p
(
ââp q
this
ââq u
)
ââu v
)
ââv w
;
ââw x,
gameActionsCallBackClientProxy
ää 2
.
ää2 3
RenewGameCallBack
ää3 D
(
ääD E
roomCode
ääE M
,
ääM N
userSingleton
ääO \
.
ää\ ]
IdUser
ää] c
)
ääc d
;
ääd e
if
ãã 
(
ãã 
currentRound
ãã $
!=
ãã% '
ROUND_THREE
ãã( 3
)
ãã3 4
{
åå 
ConfirmAnswer
çç %
(
çç% &
answerCardChoose
çç& 6
)
çç6 7
;
çç7 8
}
éé 
else
èè 
{
êê '
ConfirmLastQuestionAnswer
ëë 1
(
ëë1 2
answerCardChoose
ëë2 B
)
ëëB C
;
ëëC D
}
íí 
}
ìì 
catch
îî 
(
îî '
EndpointNotFoundException
îî 0
ex
îî1 3
)
îî3 4
{
ïï 
HandleException
ññ #
(
ññ# $
ex
ññ$ &
,
ññ& '

Properties
ññ( 2
.
ññ2 3
	Resources
ññ3 <
.
ññ< =#
lblFailToChooseAnswer
ññ= R
+
ññS T
$str
ññU Z
+
ññ[ \

Properties
ññ] g
.
ññg h
	Resources
ññh q
.
ññq r"
lblEndPointNotFoundññr Ö
)ññÖ Ü
;ññÜ á
}
óó 
catch
òò 
(
òò 1
#CommunicationObjectFaultedException
òò :
ex
òò; =
)
òò= >
{
ôô 
HandleException
öö #
(
öö# $
ex
öö$ &
,
öö& '

Properties
öö( 2
.
öö2 3
	Resources
öö3 <
.
öö< =#
lblFailToChooseAnswer
öö= R
+
ööS T
$str
ööU Z
+
öö[ \

Properties
öö] g
.
öög h
	Resources
ööh q
.
ööq r'
lblComunicationExceptionöör ä
)ööä ã
;ööã å
}
õõ 
catch
úú 
(
úú 
TimeoutException
úú '
ex
úú( *
)
úú* +
{
ùù 
HandleException
ûû #
(
ûû# $
ex
ûû$ &
,
ûû& '

Properties
ûû( 2
.
ûû2 3
	Resources
ûû3 <
.
ûû< =#
lblFailToChooseAnswer
ûû= R
+
ûûS T
$str
ûûU Z
+
ûû[ \

Properties
ûû] g
.
ûûg h
	Resources
ûûh q
.
ûûq r
lblTimeExceptionûûr Ç
)ûûÇ É
;ûûÉ Ñ
}
üü 
catch
†† 
(
†† $
CommunicationException
†† -
ex
††. 0
)
††0 1
{
°° 
HandleException
¢¢ #
(
¢¢# $
ex
¢¢$ &
,
¢¢& '

Properties
¢¢( 2
.
¢¢2 3
	Resources
¢¢3 <
.
¢¢< =#
lblFailToChooseAnswer
¢¢= R
+
¢¢S T
$str
¢¢U Z
+
¢¢[ \

Properties
¢¢] g
.
¢¢g h
	Resources
¢¢h q
.
¢¢q r"
lblWithoutConection¢¢r Ö
)¢¢Ö Ü
;¢¢Ü á
}
££ 
catch
§§ 
(
§§ 
SocketException
§§ &
ex
§§' )
)
§§) *
{
•• 
HandleException
¶¶ #
(
¶¶# $
ex
¶¶$ &
,
¶¶& '

Properties
¶¶( 2
.
¶¶2 3
	Resources
¶¶3 <
.
¶¶< = 
lblFailToStartGame
¶¶= O
+
¶¶P Q
$str
¶¶R W
+
¶¶X Y

Properties
¶¶Z d
.
¶¶d e
	Resources
¶¶e n
.
¶¶n o"
lblEndPointNotFound¶¶o Ç
)¶¶Ç É
;¶¶É Ñ
}
ßß 
}
®® 
}
©© 	
private
´´ 
void
´´ 
ConfirmAnswer
´´ "
(
´´" #
Button
´´# )
answerCardChoose
´´* :
)
´´: ;
{
¨¨ 	)
GameActionsOperationsClient
≠≠ '$
gameActionsClientProxy
≠≠( >
=
≠≠? @
new
≠≠A D
(
≠≠D E
)
≠≠E F
;
≠≠F G
var
ÆÆ 
answerSelected
ÆÆ 
=
ÆÆ  )
answersOfQuestionBeingAsked
ÆÆ! <
.
ÆÆ< =
Find
ÆÆ= A
(
ÆÆA B
anw
ÆÆB E
=>
ÆÆF H!
GetSpecificResource
ÆÆI \
.
ÆÆ\ ],
GetEnglishOrSpanishDescription
ÆÆ] {
(
ÆÆ{ |
anw
ÆÆ| 
.ÆÆ Ä(
EnglishAnswerDescriptionÆÆÄ ò
,ÆÆò ô
anwÆÆö ù
.ÆÆù û(
SpanishAnswerDescriptionÆÆû ∂
)ÆÆ∂ ∑
.ÆÆ∑ ∏
EqualsÆÆ∏ æ
(ÆÆæ ø 
answerCardChooseÆÆø œ
.ÆÆœ –
ContentÆÆ– ◊
)ÆÆ◊ ÿ
)ÆÆÿ Ÿ
;ÆÆŸ ⁄
if
ØØ 
(
ØØ 
answerSelected
ØØ 
!=
ØØ  
null
ØØ! %
)
ØØ% &
{
∞∞ 
try
±± 
{
≤≤ $
gameActionsClientProxy
≥≥ *
.
≥≥* +
ChooseAnswer
≥≥+ 7
(
≥≥7 8
roomCode
≥≥8 @
,
≥≥@ A
userSingleton
≥≥B O
.
≥≥O P
IdUser
≥≥P V
,
≥≥V W
answerSelected
≥≥X f
.
≥≥f g
IdAnswer
≥≥g o
,
≥≥o p!
questionBeingAsked≥≥q É
.≥≥É Ñ

ValueWorth≥≥Ñ é
,≥≥é è
yourTurn≥≥ê ò
)≥≥ò ô
;≥≥ô ö
}
¥¥ 
catch
µµ 
(
µµ '
EndpointNotFoundException
µµ 0
ex
µµ1 3
)
µµ3 4
{
∂∂ 
HandleException
∑∑ #
(
∑∑# $
ex
∑∑$ &
,
∑∑& '

Properties
∑∑( 2
.
∑∑2 3
	Resources
∑∑3 <
.
∑∑< =#
lblFailToChooseAnswer
∑∑= R
+
∑∑S T
$str
∑∑U Z
+
∑∑[ \

Properties
∑∑] g
.
∑∑g h
	Resources
∑∑h q
.
∑∑q r"
lblEndPointNotFound∑∑r Ö
)∑∑Ö Ü
;∑∑Ü á
}
∏∏ 
catch
ππ 
(
ππ 1
#CommunicationObjectFaultedException
ππ :
ex
ππ; =
)
ππ= >
{
∫∫ 
HandleException
ªª #
(
ªª# $
ex
ªª$ &
,
ªª& '

Properties
ªª( 2
.
ªª2 3
	Resources
ªª3 <
.
ªª< =#
lblFailToChooseAnswer
ªª= R
+
ªªS T
$str
ªªU Z
+
ªª[ \

Properties
ªª] g
.
ªªg h
	Resources
ªªh q
.
ªªq r'
lblComunicationExceptionªªr ä
)ªªä ã
;ªªã å
}
ºº 
catch
ΩΩ 
(
ΩΩ 
TimeoutException
ΩΩ '
ex
ΩΩ( *
)
ΩΩ* +
{
ææ 
HandleException
øø #
(
øø# $
ex
øø$ &
,
øø& '

Properties
øø( 2
.
øø2 3
	Resources
øø3 <
.
øø< =#
lblFailToChooseAnswer
øø= R
+
øøS T
$str
øøU Z
+
øø[ \

Properties
øø] g
.
øøg h
	Resources
øøh q
.
øøq r
lblTimeExceptionøør Ç
)øøÇ É
;øøÉ Ñ
}
¿¿ 
catch
¡¡ 
(
¡¡ $
CommunicationException
¡¡ -
ex
¡¡. 0
)
¡¡0 1
{
¬¬ 
HandleException
√√ #
(
√√# $
ex
√√$ &
,
√√& '

Properties
√√( 2
.
√√2 3
	Resources
√√3 <
.
√√< =#
lblFailToChooseAnswer
√√= R
+
√√S T
$str
√√U Z
+
√√[ \

Properties
√√] g
.
√√g h
	Resources
√√h q
.
√√q r"
lblWithoutConection√√r Ö
)√√Ö Ü
;√√Ü á
}
ƒƒ 
catch
≈≈ 
(
≈≈ 
SocketException
≈≈ &
ex
≈≈' )
)
≈≈) *
{
∆∆ 
HandleException
«« #
(
««# $
ex
««$ &
,
««& '

Properties
««( 2
.
««2 3
	Resources
««3 <
.
««< = 
lblFailToStartGame
««= O
+
««P Q
$str
««R W
+
««X Y

Properties
««Z d
.
««d e
	Resources
««e n
.
««n o"
lblEndPointNotFound««o Ç
)««Ç É
;««É Ñ
}
»» 
}
…… 
}
ÀÀ 	
private
ÕÕ 
void
ÕÕ '
ConfirmLastQuestionAnswer
ÕÕ .
(
ÕÕ. /
Button
ÕÕ/ 5
answerCardChoose
ÕÕ6 F
)
ÕÕF G
{
ŒŒ 	
bool
œœ 
	isCorrect
œœ 
;
œœ 
if
–– 
(
–– !
GetSpecificResource
–– #
.
––# $,
GetEnglishOrSpanishDescription
––$ B
(
––B C%
answerToCurrentQuestion
––C Z
.
––Z [&
EnglishAnswerDescription
––[ s
,
––s t&
answerToCurrentQuestion––u å
.––å ç(
SpanishAnswerDescription––ç •
)––• ¶
.––¶ ß
Equals––ß ≠
(––≠ Æ 
answerCardChoose––Æ æ
.––æ ø
Content––ø ∆
)––∆ «
)––« »
{
—— 
	isCorrect
““ 
=
““ 
true
““  
;
““  !
}
”” 
else
‘‘ 
{
’’ 
	isCorrect
÷÷ 
=
÷÷ 
false
÷÷ !
;
÷÷! "
}
◊◊ )
GameActionsOperationsClient
ÿÿ '$
gameActionsClientProxy
ÿÿ( >
=
ÿÿ? @
new
ÿÿA D
(
ÿÿD E
)
ÿÿE F
;
ÿÿF G
answerCardChoose
ŸŸ 
.
ŸŸ 
BorderBrush
ŸŸ (
=
ŸŸ) *
new
ŸŸ+ .
SolidColorBrush
ŸŸ/ >
(
ŸŸ> ?
Colors
ŸŸ? E
.
ŸŸE F
Blue
ŸŸF J
)
ŸŸJ K
;
ŸŸK L
bttFirstAnswer
⁄⁄ 
.
⁄⁄ 
	IsEnabled
⁄⁄ $
=
⁄⁄% &
false
⁄⁄' ,
;
⁄⁄, -
bttSecondAnswer
€€ 
.
€€ 
	IsEnabled
€€ %
=
€€& '
false
€€( -
;
€€- .
bttThridAnswer
‹‹ 
.
‹‹ 
	IsEnabled
‹‹ $
=
‹‹% &
false
‹‹' ,
;
‹‹, -
bttFourAnswer
›› 
.
›› 
	IsEnabled
›› #
=
››$ %
false
››& +
;
››+ ,
txbAdvicement
ﬁﬁ 
.
ﬁﬁ 

Visibility
ﬁﬁ $
=
ﬁﬁ% &

Visibility
ﬁﬁ' 1
.
ﬁﬁ1 2
Visible
ﬁﬁ2 9
;
ﬁﬁ9 :
try
ﬂﬂ 
{
‡‡ $
gameActionsClientProxy
·· &
.
··& ''
ConfirmLastQuestionAnswer
··' @
(
··@ A
roomCode
··A I
,
··I J
playersInGame
··K X
.
··X Y
FirstOrDefault
··Y g
(
··g h
pla
··h k
=>
··l n
pla
··o r
.
··r s
IdUser
··s y
==
··z |
userSingleton··} ä
.··ä ã
IdUser··ã ë
)··ë í
,··í ì
	pointsBet··î ù
,··ù û
	isCorrect··ü ®
)··® ©
;··© ™
}
‚‚ 
catch
„„ 
(
„„ '
EndpointNotFoundException
„„ ,
ex
„„- /
)
„„/ 0
{
‰‰ 
HandleException
ÂÂ 
(
ÂÂ  
ex
ÂÂ  "
,
ÂÂ" #

Properties
ÂÂ$ .
.
ÂÂ. /
	Resources
ÂÂ/ 8
.
ÂÂ8 9#
lblFailToChooseAnswer
ÂÂ9 N
+
ÂÂO P
$str
ÂÂQ V
+
ÂÂW X

Properties
ÂÂY c
.
ÂÂc d
	Resources
ÂÂd m
.
ÂÂm n"
lblEndPointNotFoundÂÂn Å
)ÂÂÅ Ç
;ÂÂÇ É
}
ÊÊ 
catch
ÁÁ 
(
ÁÁ 1
#CommunicationObjectFaultedException
ÁÁ 6
ex
ÁÁ7 9
)
ÁÁ9 :
{
ËË 
HandleException
ÈÈ 
(
ÈÈ  
ex
ÈÈ  "
,
ÈÈ" #

Properties
ÈÈ$ .
.
ÈÈ. /
	Resources
ÈÈ/ 8
.
ÈÈ8 9#
lblFailToChooseAnswer
ÈÈ9 N
+
ÈÈO P
$str
ÈÈQ V
+
ÈÈW X

Properties
ÈÈY c
.
ÈÈc d
	Resources
ÈÈd m
.
ÈÈm n'
lblComunicationExceptionÈÈn Ü
)ÈÈÜ á
;ÈÈá à
}
ÍÍ 
catch
ÎÎ 
(
ÎÎ 
TimeoutException
ÎÎ #
ex
ÎÎ$ &
)
ÎÎ& '
{
ÏÏ 
HandleException
ÌÌ 
(
ÌÌ  
ex
ÌÌ  "
,
ÌÌ" #

Properties
ÌÌ$ .
.
ÌÌ. /
	Resources
ÌÌ/ 8
.
ÌÌ8 9#
lblFailToChooseAnswer
ÌÌ9 N
+
ÌÌO P
$str
ÌÌQ V
+
ÌÌW X

Properties
ÌÌY c
.
ÌÌc d
	Resources
ÌÌd m
.
ÌÌm n
lblTimeException
ÌÌn ~
)
ÌÌ~ 
;ÌÌ Ä
}
ÓÓ 
catch
ÔÔ 
(
ÔÔ $
CommunicationException
ÔÔ )
ex
ÔÔ* ,
)
ÔÔ, -
{
 
HandleException
ÒÒ 
(
ÒÒ  
ex
ÒÒ  "
,
ÒÒ" #

Properties
ÒÒ$ .
.
ÒÒ. /
	Resources
ÒÒ/ 8
.
ÒÒ8 9#
lblFailToChooseAnswer
ÒÒ9 N
+
ÒÒO P
$str
ÒÒQ V
+
ÒÒW X

Properties
ÒÒY c
.
ÒÒc d
	Resources
ÒÒd m
.
ÒÒm n"
lblWithoutConectionÒÒn Å
)ÒÒÅ Ç
;ÒÒÇ É
}
ÚÚ 
catch
ÛÛ 
(
ÛÛ 
SocketException
ÛÛ "
ex
ÛÛ# %
)
ÛÛ% &
{
ÙÙ 
HandleException
ıı 
(
ıı  
ex
ıı  "
,
ıı" #

Properties
ıı$ .
.
ıı. /
	Resources
ıı/ 8
.
ıı8 9 
lblFailToStartGame
ıı9 K
+
ııL M
$str
ııN S
+
ııT U

Properties
ııV `
.
ıı` a
	Resources
ııa j
.
ııj k!
lblEndPointNotFound
ıık ~
)
ıı~ 
;ıı Ä
}
ˆˆ 
}
¯¯ 	
public
˙˙ 
void
˙˙ +
ResponseSomeOneChooseAnAnswer
˙˙ 1
(
˙˙1 2
int
˙˙2 5
idAnswerSelected
˙˙6 F
,
˙˙F G
int
˙˙H K
idUserAnswering
˙˙L [
,
˙˙[ \
int
˙˙] `
pointsWorth
˙˙a l
)
˙˙l m
{
˚˚ 	
timer
¸¸ 
.
¸¸ 
Stop
¸¸ 
(
¸¸ 
)
¸¸ 
;
¸¸ 
bool
˝˝ 
	isCorrect
˝˝ 
;
˝˝ 
string
˛˛ *
descriptionOfCurrentQuestion
˛˛ /
=
˛˛0 1!
GetSpecificResource
˛˛2 E
.
˛˛E F,
GetEnglishOrSpanishDescription
˛˛F d
(
˛˛d e%
answerToCurrentQuestion
˛˛e |
.
˛˛| }'
EnglishAnswerDescription˛˛} ï
,˛˛ï ñ'
answerToCurrentQuestion˛˛ó Æ
.˛˛Æ Ø(
SpanishAnswerDescription˛˛Ø «
)˛˛« »
;˛˛» …
var
ˇˇ 
answerSelected
ˇˇ 
=
ˇˇ  )
answersOfQuestionBeingAsked
ˇˇ! <
.
ˇˇ< =
Find
ˇˇ= A
(
ˇˇA B
ans
ˇˇB E
=>
ˇˇF H
ans
ˇˇI L
.
ˇˇL M
IdAnswer
ˇˇM U
==
ˇˇV X
idAnswerSelected
ˇˇY i
)
ˇˇi j
;
ˇˇj k
if
ÄÄ 
(
ÄÄ *
descriptionOfCurrentQuestion
ÄÄ ,
.
ÄÄ, -
Equals
ÄÄ- 3
(
ÄÄ3 4!
GetSpecificResource
ÄÄ4 G
.
ÄÄG H,
GetEnglishOrSpanishDescription
ÄÄH f
(
ÄÄf g
answerSelected
ÄÄg u
.
ÄÄu v'
EnglishAnswerDescriptionÄÄv é
,ÄÄé è
answerSelectedÄÄê û
.ÄÄû ü(
SpanishAnswerDescriptionÄÄü ∑
)ÄÄ∑ ∏
)ÄÄ∏ π
)ÄÄπ ∫
{
ÅÅ 
	isCorrect
ÇÇ 
=
ÇÇ 
true
ÇÇ  
;
ÇÇ  !
}
ÉÉ 
else
ÑÑ 
{
ÖÖ 
	isCorrect
ÜÜ 
=
ÜÜ 
false
ÜÜ !
;
ÜÜ! "
}
áá  
ShowResultOfAnswer
àà 
(
àà 
	isCorrect
àà (
,
àà( )
idAnswerSelected
àà* :
,
àà: ;
pointsWorth
àà< G
.
ààG H
ToString
ààH P
(
ààP Q
)
ààQ R
)
ààR S
;
ààS T
SumOrRestPoints
ââ 
(
ââ 
	isCorrect
ââ %
,
ââ% &
pointsWorth
ââ' 2
,
ââ2 3
idUserAnswering
ââ4 C
)
ââC D
;
ââD E
HideQuestion
ää 
(
ää 
)
ää 
;
ää %
AssureThereAreQuestions
ãã #
(
ãã# $
)
ãã$ %
;
ãã% &
cnvResultOfAwnser
åå 
.
åå 

Visibility
åå (
=
åå) *

Visibility
åå+ 5
.
åå5 6
Hidden
åå6 <
;
åå< =
grTimer
çç 
.
çç 

Visibility
çç 
=
çç  

Visibility
çç! +
.
çç+ ,
Hidden
çç, 2
;
çç2 3
}
éé 	
private
êê 
async
êê 
Task
êê  
ShowResultOfAnswer
êê -
(
êê- .
bool
êê. 2
	isCorrect
êê3 <
,
êê< =
int
êê> A
idAnswerSelected
êêB R
,
êêR S
string
êêT Z
points
êê[ a
)
êêa b
{
ëë 	
grdAnswerChoices
íí 
.
íí 

Visibility
íí '
=
íí( )

Visibility
íí* 4
.
íí4 5
Hidden
íí5 ;
;
íí; <
cnvResultOfAwnser
ìì 
.
ìì 

Visibility
ìì (
=
ìì) *

Visibility
ìì+ 5
.
ìì5 6
Visible
ìì6 =
;
ìì= >
txbQuestionResult
îî 
.
îî 
Text
îî "
=
îî# $!
GetSpecificResource
îî% 8
.
îî8 9,
GetEnglishOrSpanishDescription
îî9 W
(
îîW X 
questionBeingAsked
îîY k
.
îîk l)
EnglishQuestionDescriptionîîl Ü
,îîÜ á"
questionBeingAskedîîà ö
.îîö õ*
SpanishQuestionDescriptionîîõ µ
)îîµ ∂
;îî∂ ∑
var
ïï 
answerSelected
ïï 
=
ïï  )
answersOfQuestionBeingAsked
ïï! <
.
ïï< =
Find
ïï= A
(
ïïA B
ans
ïïB E
=>
ïïF H
ans
ïïI L
.
ïïL M
IdAnswer
ïïM U
==
ïïV X
idAnswerSelected
ïïY i
)
ïïi j
;
ïïj k#
txbStringAnswerChoose
ññ !
.
ññ! "
Text
ññ" &
=
ññ' (!
GetSpecificResource
ññ) <
.
ññ< =,
GetEnglishOrSpanishDescription
ññ= [
(
ññ[ \
answerSelected
ññ\ j
.
ññj k'
EnglishAnswerDescriptionññk É
,ññÉ Ñ
answerSelectedññÖ ì
.ññì î(
SpanishAnswerDescriptionññî ¨
)ññ¨ ≠
;ññ≠ Æ
if
óó 
(
óó 
	isCorrect
óó 
)
óó 
{
òò 
imgAnswerResult
ôô 
.
ôô  
Source
ôô  &
=
ôô' (
new
ôô) ,
BitmapImage
ôô- 8
(
ôô8 9
new
ôô9 <
Uri
ôô= @
(
ôô@ A
App
ôôA D
.
ôôD E
Current
ôôE L
.
ôôL M
	Resources
ôôM V
[
ôôV W
$str
ôôW h
]
ôôh i
.
ôôi j
ToString
ôôj r
(
ôôr s
)
ôôs t
,
ôôt u
UriKind
ôôv }
.
ôô} ~
Absoluteôô~ Ü
)ôôÜ á
)ôôá à
;ôôà â#
txbPointsEarnedOrLost
öö %
.
öö% &
Text
öö& *
=
öö+ ,
$str
öö- 1
+
öö2 3
points
öö4 :
;
öö: ;
}
õõ 
else
úú 
{
ùù 
imgAnswerResult
ûû 
.
ûû  
Source
ûû  &
=
ûû' (
new
ûû) ,
BitmapImage
ûû- 8
(
ûû8 9
new
ûû9 <
Uri
ûû= @
(
ûû@ A
App
ûûA D
.
ûûD E
Current
ûûE L
.
ûûL M
	Resources
ûûM V
[
ûûV W
$str
ûûW h
]
ûûh i
.
ûûi j
ToString
ûûj r
(
ûûr s
)
ûûs t
,
ûût u
UriKind
ûûv }
.
ûû} ~
Absoluteûû~ Ü
)ûûÜ á
)ûûá à
;ûûà â#
txbPointsEarnedOrLost
üü %
.
üü% &
Text
üü& *
=
üü+ ,
$str
üü- 1
+
üü2 3
points
üü4 :
;
üü: ;
}
†† 
await
°° 
Task
°° 
.
°° 
Delay
°° 
(
°° 
$num
°° !
)
°°! "
;
°°" #
}
¢¢ 	
private
§§ 
void
§§ 
SumOrRestPoints
§§ $
(
§§$ %
bool
§§% )
	isCorrect
§§* 3
,
§§3 4
int
§§5 8
points
§§9 ?
,
§§? @
int
§§A D
idUser
§§E K
)
§§K L
{
•• 	
var
¶¶ 
playerChoosing
¶¶ 
=
¶¶  
playersInGame
¶¶! .
.
¶¶. /
Find
¶¶/ 3
(
¶¶3 4
player
¶¶4 :
=>
¶¶; =
player
¶¶> D
.
¶¶D E
IdUser
¶¶E K
==
¶¶L N
idUser
¶¶O U
)
¶¶U V
;
¶¶V W
GameTeamCard
ßß 
specificTeam
ßß %
=
ßß& '
null
ßß( ,
;
ßß, -
if
®® 
(
®® 
itsTeamGame
®® 
)
®® 
{
©© 
string
™™ 
nameOfBorder
™™ #
;
™™# $
if
´´ 
(
´´ 
playerChoosing
´´ "
.
´´" #
SideTeam
´´# +
==
´´, .
$num
´´/ 0
)
´´0 1
{
¨¨ 
nameOfBorder
≠≠  
=
≠≠! "
	team1Name
≠≠# ,
;
≠≠, -
}
ÆÆ 
else
ØØ 
{
∞∞ 
nameOfBorder
±±  
=
±±! "
	team2Name
±±# ,
;
±±, -
}
≤≤ 
specificTeam
≥≥ 
=
≥≥ 
(
≥≥  
GameTeamCard
≥≥  ,
)
≥≥, -

stpPlayers
≥≥- 7
.
≥≥7 8
Children
≥≥8 @
.
≥≥@ A
OfType
≥≥A G
<
≥≥G H
Border
≥≥H N
>
≥≥N O
(
≥≥O P
)
≥≥P Q
.
≥≥Q R
FirstOrDefault
≥≥R `
(
≥≥` a
pla
≥≥a d
=>
≥≥e g
pla
≥≥h k
.
≥≥k l
Name
≥≥l p
.
≥≥p q
Equals
≥≥q w
(
≥≥w x
nameOfBorder≥≥x Ñ
)≥≥Ñ Ö
)≥≥Ö Ü
;≥≥Ü á
}
¥¥ 
if
µµ 
(
µµ 
	isCorrect
µµ 
)
µµ 
{
∂∂ 
playerChoosing
∑∑ 
.
∑∑ "
CurrentPointsOfRound
∑∑ 3
+=
∑∑4 6
points
∑∑7 =
;
∑∑= >
if
∏∏ 
(
∏∏ 
itsTeamGame
∏∏ 
)
∏∏  
{
ππ 
specificTeam
∫∫  
.
∫∫  !
UpdatePoints
∫∫! -
(
∫∫- .
points
∫∫. 4
+=
∫∫5 7
specificTeam
∫∫8 D
.
∫∫D E
	GetPoints
∫∫E N
(
∫∫N O
)
∫∫O P
)
∫∫P Q
;
∫∫Q R
playersInGame
ªª !
.
ªª! "
Where
ªª" '
(
ªª' (
pl
ªª( *
=>
ªª+ -
pl
ªª. 0
.
ªª0 1
SideTeam
ªª1 9
==
ªª: <
playerChoosing
ªª= K
.
ªªK L
SideTeam
ªªL T
)
ªªT U
.
ªªU V
ToList
ªªV \
(
ªª\ ]
)
ªª] ^
.
ªª^ _
ForEach
ªª_ f
(
ªªf g
pl
ªªg i
=>
ªªj l
pl
ªªm o
.
ªªo p#
CurrentPointsOfRoundªªp Ñ
=ªªÖ Ü
specificTeamªªá ì
.ªªì î
	GetPointsªªî ù
(ªªù û
)ªªû ü
)ªªü †
;ªª† °
}
ºº 
}
ΩΩ 
else
ææ 
{
øø 
playerChoosing
¿¿ 
.
¿¿ "
CurrentPointsOfRound
¿¿ 3
-=
¿¿4 6
points
¿¿7 =
;
¿¿= >
if
¡¡ 
(
¡¡ 
itsTeamGame
¡¡ 
)
¡¡  
{
¬¬ 
specificTeam
√√  
.
√√  !
UpdatePoints
√√! -
(
√√- .
points
√√. 4
-=
√√5 7
specificTeam
√√8 D
.
√√D E
	GetPoints
√√E N
(
√√N O
)
√√O P
)
√√P Q
;
√√Q R
playersInGame
ƒƒ !
.
ƒƒ! "
Where
ƒƒ" '
(
ƒƒ' (
pl
ƒƒ( *
=>
ƒƒ+ -
pl
ƒƒ. 0
.
ƒƒ0 1
SideTeam
ƒƒ1 9
==
ƒƒ: <
playerChoosing
ƒƒ= K
.
ƒƒK L
SideTeam
ƒƒL T
)
ƒƒT U
.
ƒƒU V
ToList
ƒƒV \
(
ƒƒ\ ]
)
ƒƒ] ^
.
ƒƒ^ _
ForEach
ƒƒ_ f
(
ƒƒf g
pl
ƒƒg i
=>
ƒƒj l
pl
ƒƒm o
.
ƒƒo p#
CurrentPointsOfRoundƒƒp Ñ
=ƒƒÖ Ü
specificTeamƒƒá ì
.ƒƒì î
	GetPointsƒƒî ù
(ƒƒù û
)ƒƒû ü
)ƒƒü †
;ƒƒ† °
}
≈≈ 
}
∆∆ 
if
«« 
(
«« 
!
«« 
itsTeamGame
«« 
)
«« 
{
»» 
GamePlayerCard
…… 
specificPlayer
…… -
=
……. /
(
……0 1
GamePlayerCard
……1 ?
)
……? @

stpPlayers
……@ J
.
……J K
Children
……K S
.
……S T
OfType
……T Z
<
……Z [
Border
……[ a
>
……a b
(
……b c
)
……c d
.
……d e
FirstOrDefault
……e s
(
……s t
pla
……t w
=>
……x z
pla
……{ ~
.
……~ 
Name…… É
.……É Ñ
Equals……Ñ ä
(……ä ã
$str……ã é
+……è ê
playerChoosing……ë ü
.……ü †
IdUser……† ¶
.……¶ ß
ToString……ß Ø
(……Ø ∞
)……∞ ±
)……± ≤
)……≤ ≥
;……≥ ¥
if
   
(
   
specificPlayer
   "
!=
  # %
null
  & *
)
  * +
{
ÀÀ 
specificPlayer
ÃÃ "
.
ÃÃ" #
UpdatePoints
ÃÃ# /
(
ÃÃ/ 0
playerChoosing
ÃÃ0 >
.
ÃÃ> ?"
CurrentPointsOfRound
ÃÃ? S
)
ÃÃS T
;
ÃÃT U
}
ÕÕ 
}
ŒŒ 
}
œœ 	
private
““ 
void
““ 
HideQuestion
““ !
(
““! "
)
““" #
{
”” 	
var
‘‘ 

cardToHide
‘‘ 
=
‘‘ 
wrpBoardOfCards
‘‘ ,
.
‘‘, -
Children
‘‘- 5
.
‘‘5 6
OfType
‘‘6 <
<
‘‘< =
Border
‘‘= C
>
‘‘C D
(
‘‘D E
)
‘‘E F
.
‘‘F G
FirstOrDefault
‘‘G U
(
‘‘U V
card
‘‘V Z
=>
‘‘[ ]
card
‘‘^ b
.
‘‘b c
Name
‘‘c g
.
‘‘g h
Equals
‘‘h n
(
‘‘n o
$str
‘‘o r
+
‘‘s t!
questionBeingAsked‘‘u á
.‘‘á à

IdQuestion‘‘à í
.‘‘í ì
ToString‘‘ì õ
(‘‘õ ú
)‘‘ú ù
)‘‘ù û
)‘‘û ü
;‘‘ü †
if
’’ 
(
’’ 

cardToHide
’’ 
!=
’’ 
null
’’ "
)
’’" #
{
÷÷ 

cardToHide
◊◊ 
.
◊◊ 
	IsEnabled
◊◊ $
=
◊◊% &
false
◊◊' ,
;
◊◊, -
}
ÿÿ 
}
ŸŸ 	
private
€€ 
void
€€ %
AssureThereAreQuestions
€€ ,
(
€€, -
)
€€- .
{
‹‹ 	
if
›› 
(
›› 
currentTurn
›› 
==
›› 
yourTurn
›› '
)
››' (
{
ﬁﬁ 
if
ﬂﬂ 
(
ﬂﬂ 
wrpBoardOfCards
ﬂﬂ #
.
ﬂﬂ# $
Children
ﬂﬂ$ ,
.
ﬂﬂ, -
OfType
ﬂﬂ- 3
<
ﬂﬂ3 4
Border
ﬂﬂ4 :
>
ﬂﬂ: ;
(
ﬂﬂ; <
)
ﬂﬂ< =
.
ﬂﬂ= >
Where
ﬂﬂ> C
(
ﬂﬂC D
card
ﬂﬂD H
=>
ﬂﬂI K
card
ﬂﬂL P
.
ﬂﬂP Q
	IsEnabled
ﬂﬂQ Z
)
ﬂﬂZ [
.
ﬂﬂ[ \
Count
ﬂﬂ\ a
(
ﬂﬂa b
)
ﬂﬂb c
<=
ﬂﬂd f
$num
ﬂﬂg h
)
ﬂﬂh i
{
‡‡ 
try
·· 
{
‚‚ 
GameActionsClient
„„ ),
gameActionsCallBackClientProxy
„„* H
=
„„I J
new
„„K N
GameActionsClient
„„O `
(
„„` a
new
„„a d
InstanceContext
„„e t
(
„„t u
this
„„u y
)
„„y z
)
„„z {
;
„„{ |,
gameActionsCallBackClientProxy
‰‰ 6
.
‰‰6 7
RenewGameCallBack
‰‰7 H
(
‰‰H I
roomCode
‰‰I Q
,
‰‰Q R
userSingleton
‰‰S `
.
‰‰` a
IdUser
‰‰a g
)
‰‰g h
;
‰‰h i)
GameActionsOperationsClient
ÂÂ 3$
gameActionsClientProxy
ÂÂ4 J
=
ÂÂK L
new
ÂÂM P
(
ÂÂP Q
)
ÂÂQ R
;
ÂÂR S$
gameActionsClientProxy
ÊÊ .
.
ÊÊ. /
FinishRound
ÊÊ/ :
(
ÊÊ: ;
roomCode
ÊÊ; C
,
ÊÊC D
playersInGame
ÊÊE R
.
ÊÊR S
ToArray
ÊÊS Z
(
ÊÊZ [
)
ÊÊ[ \
,
ÊÊ\ ]
currentRound
ÊÊ^ j
)
ÊÊj k
;
ÊÊk l
}
ÁÁ 
catch
ËË 
(
ËË '
EndpointNotFoundException
ËË 4
ex
ËË5 7
)
ËË7 8
{
ÈÈ 
HandleException
ÍÍ '
(
ÍÍ' (
ex
ÍÍ( *
,
ÍÍ* +

Properties
ÍÍ, 6
.
ÍÍ6 7
	Resources
ÍÍ7 @
.
ÍÍ@ A#
lblFailToChooseAnswer
ÍÍA V
+
ÍÍW X
$str
ÍÍY ^
+
ÍÍ_ `

Properties
ÍÍa k
.
ÍÍk l
	Resources
ÍÍl u
.
ÍÍu v"
lblEndPointNotFoundÍÍv â
)ÍÍâ ä
;ÍÍä ã
}
ÎÎ 
catch
ÏÏ 
(
ÏÏ 1
#CommunicationObjectFaultedException
ÏÏ >
ex
ÏÏ? A
)
ÏÏA B
{
ÌÌ 
HandleException
ÓÓ '
(
ÓÓ' (
ex
ÓÓ( *
,
ÓÓ* +

Properties
ÓÓ, 6
.
ÓÓ6 7
	Resources
ÓÓ7 @
.
ÓÓ@ A#
lblFailToChooseAnswer
ÓÓA V
+
ÓÓW X
$str
ÓÓY ^
+
ÓÓ_ `

Properties
ÓÓa k
.
ÓÓk l
	Resources
ÓÓl u
.
ÓÓu v'
lblComunicationExceptionÓÓv é
)ÓÓé è
;ÓÓè ê
}
ÔÔ 
catch
 
(
 
TimeoutException
 +
ex
, .
)
. /
{
ÒÒ 
HandleException
ÚÚ '
(
ÚÚ' (
ex
ÚÚ( *
,
ÚÚ* +

Properties
ÚÚ, 6
.
ÚÚ6 7
	Resources
ÚÚ7 @
.
ÚÚ@ A#
lblFailToChooseAnswer
ÚÚA V
+
ÚÚW X
$str
ÚÚY ^
+
ÚÚ_ `

Properties
ÚÚa k
.
ÚÚk l
	Resources
ÚÚl u
.
ÚÚu v
lblTimeExceptionÚÚv Ü
)ÚÚÜ á
;ÚÚá à
}
ÛÛ 
catch
ÙÙ 
(
ÙÙ $
CommunicationException
ÙÙ 1
ex
ÙÙ2 4
)
ÙÙ4 5
{
ıı 
HandleException
ˆˆ '
(
ˆˆ' (
ex
ˆˆ( *
,
ˆˆ* +

Properties
ˆˆ, 6
.
ˆˆ6 7
	Resources
ˆˆ7 @
.
ˆˆ@ A#
lblFailToChooseAnswer
ˆˆA V
+
ˆˆW X
$str
ˆˆY ^
+
ˆˆ_ `

Properties
ˆˆa k
.
ˆˆk l
	Resources
ˆˆl u
.
ˆˆu v"
lblWithoutConectionˆˆv â
)ˆˆâ ä
;ˆˆä ã
}
˜˜ 
catch
¯¯ 
(
¯¯ 
SocketException
¯¯ *
ex
¯¯+ -
)
¯¯- .
{
˘˘ 
HandleException
˙˙ '
(
˙˙' (
ex
˙˙( *
,
˙˙* +

Properties
˙˙, 6
.
˙˙6 7
	Resources
˙˙7 @
.
˙˙@ A 
lblFailToStartGame
˙˙A S
+
˙˙T U
$str
˙˙V [
+
˙˙\ ]

Properties
˙˙^ h
.
˙˙h i
	Resources
˙˙i r
.
˙˙r s"
lblEndPointNotFound˙˙s Ü
)˙˙Ü á
;˙˙á à
}
˚˚ 
}
¸¸ 
}
˝˝ 
}
˛˛ 	
public
ÄÄ 
void
ÄÄ *
ReceiveNotificationAboutTurn
ÄÄ 0
(
ÄÄ0 1
int
ÄÄ1 4

isYourTurn
ÄÄ5 ?
)
ÄÄ? @
{
ÅÅ 	
currentTurn
ÇÇ 
=
ÇÇ 

isYourTurn
ÇÇ $
;
ÇÇ$ %
ShowIfItsYourTurn
ÉÉ 
(
ÉÉ 
)
ÉÉ 
;
ÉÉ  
}
ÑÑ 	
private
ÜÜ 
void
ÜÜ 
ShowIfItsYourTurn
ÜÜ &
(
ÜÜ& '
)
ÜÜ' (
{
áá 	
var
àà 
userTurn
àà 
=
àà 
playersInGame
àà (
.
àà( )
Find
àà) -
(
àà- .
pla
àà. 1
=>
àà2 4
pla
àà5 8
.
àà8 9
TurnOfPlayer
àà9 E
==
ààF H
currentTurn
ààI T
)
ààT U
;
ààU V
List
ââ 
<
ââ 
Border
ââ 
>
ââ 
specificPlayer
ââ '
=
ââ( )

stpPlayers
ââ* 4
.
ââ4 5
Children
ââ5 =
.
ââ= >
OfType
ââ> D
<
ââD E
Border
ââE K
>
ââK L
(
ââL M
)
ââM N
.
ââN O
ToList
ââO U
(
ââU V
)
ââV W
;
ââW X
if
ää 
(
ää 
itsTeamGame
ää 
&&
ää 
userTurn
ää '
!=
ää( *
null
ää+ /
)
ää/ 0
{
ãã %
ResaltTeamPlayersBorder
åå '
(
åå' (
specificPlayer
åå( 6
,
åå6 7
userTurn
åå8 @
)
åå@ A
;
ååA B
}
çç 
else
éé 
{
èè &
ResaltSinglePlayerBorder
êê (
(
êê( )
specificPlayer
êê) 7
,
êê7 8
userTurn
êê9 A
)
êêA B
;
êêB C
}
ëë 
}
íí 	
private
îî 
void
îî &
ResaltSinglePlayerBorder
îî -
(
îî- .
List
îî. 2
<
îî2 3
Border
îî3 9
>
îî9 :
specificPlayer
îî; I
,
îîI J&
PlayerInGameDataContract
îîK c
userTurn
îîd l
)
îîl m
{
ïï 	
foreach
ññ 
(
ññ 
Border
ññ 
card
ññ  
in
ññ! #
specificPlayer
ññ$ 2
)
ññ2 3
{
óó 
GamePlayerCard
òò 

playerCard
òò )
=
òò* +
card
òò, 0
as
òò1 3
GamePlayerCard
òò4 B
;
òòB C
if
ôô 
(
ôô 

playerCard
ôô 
.
ôô 
Name
ôô #
.
ôô# $
Equals
ôô$ *
(
ôô* +
$str
ôô+ .
+
ôô/ 0
userTurn
ôô1 9
.
ôô9 :
IdUser
ôô: @
)
ôô@ A
)
ôôA B
{
öö 

playerCard
õõ 
.
õõ 
MakeBorderSpecial
õõ 0
(
õõ0 1
)
õõ1 2
;
õõ2 3
}
úú 
else
ùù 
{
ûû 

playerCard
üü 
.
üü 
MakeBoredNormal
üü .
(
üü. /
)
üü/ 0
;
üü0 1
}
†† 
}
°° $
ChangeColorOfTrunLigth
¢¢ "
(
¢¢" #
)
¢¢# $
;
¢¢$ %
}
££ 	
private
•• 
void
•• %
ResaltTeamPlayersBorder
•• ,
(
••, -
List
••- 1
<
••1 2
Border
••2 8
>
••8 9
specificPlayer
••: H
,
••H I&
PlayerInGameDataContract
••J b
userTurn
••c k
)
••k l
{
¶¶ 	
string
ßß 
nameOfBorder
ßß 
;
ßß  
if
®® 
(
®® 
userTurn
®® 
.
®® 
SideTeam
®® !
==
®®" $
$num
®®% &
)
®®& '
{
©© 
nameOfBorder
™™ 
=
™™ 
	team1Name
™™ (
;
™™( )
}
´´ 
else
¨¨ 
{
≠≠ 
nameOfBorder
ÆÆ 
=
ÆÆ 
	team2Name
ÆÆ (
;
ÆÆ( )
}
ØØ 
foreach
∞∞ 
(
∞∞ 
Border
∞∞ 
card
∞∞  
in
∞∞! #
specificPlayer
∞∞$ 2
)
∞∞2 3
{
±± 
GameTeamCard
≤≤ 

playerCard
≤≤ '
=
≤≤( )
card
≤≤* .
as
≤≤/ 1
GameTeamCard
≤≤2 >
;
≤≤> ?
if
≥≥ 
(
≥≥ 

playerCard
≥≥ 
.
≥≥ 
Name
≥≥ #
.
≥≥# $
Equals
≥≥$ *
(
≥≥* +
nameOfBorder
≥≥+ 7
)
≥≥7 8
)
≥≥8 9
{
¥¥ 

playerCard
µµ 
.
µµ 
MakeBorderSpecial
µµ 0
(
µµ0 1
)
µµ1 2
;
µµ2 3
}
∂∂ 
else
∑∑ 
{
∏∏ 

playerCard
ππ 
.
ππ 
MakeBoredNormal
ππ .
(
ππ. /
)
ππ/ 0
;
ππ0 1
}
∫∫ 
}
ªª 
}
ºº 	
private
ææ 
void
ææ $
ChangeColorOfTrunLigth
ææ +
(
ææ+ ,
)
ææ, -
{
øø 	
if
¿¿ 
(
¿¿ 
yourTurn
¿¿ 
==
¿¿ 
currentTurn
¿¿ '
)
¿¿' (
{
¡¡ 
ellYourTurn
¬¬ 
.
¬¬ 
Fill
¬¬  
=
¬¬! "
Brushes
¬¬# *
.
¬¬* +
Green
¬¬+ 0
;
¬¬0 1
}
√√ 
else
ƒƒ 
{
≈≈ 
ellYourTurn
∆∆ 
.
∆∆ 
Fill
∆∆  
=
∆∆! "
Brushes
∆∆# *
.
∆∆* +
Gray
∆∆+ /
;
∆∆/ 0
}
«« 
}
»» 	
public
   
void
    
ResponseBeginRound
   &
(
  & '
int
  ' *

isYourTurn
  + 5
,
  5 6
int
  7 :
roundToStart
  ; G
,
  G H&
PlayerInGameDataContract
  I a
[
  a b
]
  b c
playerInGam
  d o
)
  o p
{
ÀÀ 	
playersInGame
ÃÃ 
=
ÃÃ 
playersInGame
ÃÃ )
.
ÃÃ) *
ToList
ÃÃ* 0
(
ÃÃ0 1
)
ÃÃ1 2
;
ÃÃ2 3
switch
ÕÕ 
(
ÕÕ 
roundToStart
ÕÕ  
)
ÕÕ  !
{
ŒŒ 
case
œœ 
$num
œœ 
:
œœ 
currentRound
––  
=
––! "
roundToStart
––# /
;
––/ 0
PrepareRoundTwo
—— #
(
——# $
)
——$ %
;
——% &
break
““ 
;
““ 
case
”” 
$num
”” 
:
”” 
currentRound
‘‘  
=
‘‘! "
roundToStart
‘‘# /
;
‘‘/ 0
PrepareLastRound
’’ $
(
’’$ %
)
’’% &
;
’’& '
break
÷÷ 
;
÷÷ 
}
◊◊ 
}
ÿÿ 	
public
⁄⁄ 
void
⁄⁄  
ResponseShowWinner
⁄⁄ &
(
⁄⁄& '&
PlayerInGameDataContract
⁄⁄' ?
[
⁄⁄? @
]
⁄⁄@ A
playerInGame
⁄⁄B N
,
⁄⁄N O
int
⁄⁄P S
pointsWereSaved
⁄⁄T c
)
⁄⁄c d
{
€€ 	
currentRound
‹‹ 
=
‹‹ 
$num
‹‹ 
;
‹‹ 
playersInGame
›› 
=
›› 
playerInGame
›› (
.
››( )
ToList
››) /
(
››/ 0
)
››0 1
;
››1 2'
CreatePlayersScoresBoards
ﬁﬁ %
(
ﬁﬁ% &
)
ﬁﬁ& '
;
ﬁﬁ' (
List
ﬂﬂ 
<
ﬂﬂ &
PlayerInGameDataContract
ﬂﬂ )
>
ﬂﬂ) *
playersOredered
ﬂﬂ+ :
=
ﬂﬂ; <
playerInGame
ﬂﬂ= I
.
ﬂﬂI J
OrderByDescending
ﬂﬂJ [
(
ﬂﬂ[ \
pl
ﬂﬂ\ ^
=>
ﬂﬂ_ a
pl
ﬂﬂb d
.
ﬂﬂd e"
CurrentPointsOfRound
ﬂﬂe y
)
ﬂﬂy z
.
ﬂﬂz {
ToListﬂﬂ{ Å
(ﬂﬂÅ Ç
)ﬂﬂÇ É
;ﬂﬂÉ Ñ
grdAnswerChoices
‡‡ 
.
‡‡ 

Visibility
‡‡ '
=
‡‡( )

Visibility
‡‡* 4
.
‡‡4 5
Hidden
‡‡5 ;
;
‡‡; <
grTimer
·· 
.
·· 

Visibility
·· 
=
··  

Visibility
··! +
.
··+ ,
Hidden
··, 2
;
··2 3
grWinnerPanel
‚‚ 
.
‚‚ 

Visibility
‚‚ $
=
‚‚% &

Visibility
‚‚' 1
.
‚‚1 2
Visible
‚‚2 9
;
‚‚9 :
List
„„ 
<
„„ 
Border
„„ 
>
„„ 
playersBorders
„„ '
=
„„( )

stpPlayers
„„* 4
.
„„4 5
Children
„„5 =
.
„„= >
OfType
„„> D
<
„„D E
Border
„„E K
>
„„K L
(
„„L M
)
„„M N
.
„„N O
ToList
„„O U
(
„„U V
)
„„V W
;
„„W X&
SetPlayerInPositionSpots
‰‰ $
(
‰‰$ %
playersBorders
‰‰% 3
,
‰‰3 4
playersOredered
‰‰5 D
)
‰‰D E
;
‰‰E F
if
ÂÂ 
(
ÂÂ 
userSingleton
ÂÂ 
.
ÂÂ 
IdState
ÂÂ $
!=
ÂÂ% '
$num
ÂÂ( )
)
ÂÂ) *
{
ÊÊ 
if
ÁÁ 
(
ÁÁ 
pointsWereSaved
ÁÁ #
==
ÁÁ$ &!
ExceptionDictionary
ÁÁ' :
.
ÁÁ: ;
SUCCESFULL_EVENT
ÁÁ; K
)
ÁÁK L
{
ËË 
dialogMessage
ÈÈ !
=
ÈÈ" #
new
ÈÈ$ ',
InformationMessageDialogWindow
ÈÈ( F
(
ÈÈF G

Properties
ÈÈG Q
.
ÈÈQ R
	Resources
ÈÈR [
.
ÈÈ[ \
txbGameFinish
ÈÈ\ i
,
ÈÈi j

Properties
ÈÈk u
.
ÈÈu v
	Resources
ÈÈv 
.ÈÈ Ä
GameFinishedÈÈÄ å
,ÈÈå ç
WindowÈÈé î
.ÈÈî ï
	GetWindowÈÈï û
(ÈÈû ü
thisÈÈü £
)ÈÈ£ §
)ÈÈ§ •
;ÈÈ• ¶
}
ÍÍ 
else
ÎÎ 
{
ÏÏ 
dialogMessage
ÌÌ !
=
ÌÌ" #
new
ÌÌ$ ',
InformationMessageDialogWindow
ÌÌ( F
(
ÌÌF G

Properties
ÌÌG Q
.
ÌÌQ R
	Resources
ÌÌR [
.
ÌÌ[ \
txbErrorTitle
ÌÌ\ i
,
ÌÌi j

Properties
ÌÌk u
.
ÌÌu v
	Resources
ÌÌv 
.ÌÌ Ä,
lblFailToSavePoinstAfterGameÌÌÄ ú
,ÌÌú ù
WindowÌÌû §
.ÌÌ§ •
	GetWindowÌÌ• Æ
(ÌÌÆ Ø
thisÌÌØ ≥
)ÌÌ≥ ¥
)ÌÌ¥ µ
;ÌÌµ ∂
}
ÓÓ 
}
ÔÔ 
else
 
{
ÒÒ 
dialogMessage
ÚÚ 
=
ÚÚ 
new
ÚÚ  #,
InformationMessageDialogWindow
ÚÚ$ B
(
ÚÚB C

Properties
ÚÚC M
.
ÚÚM N
	Resources
ÚÚN W
.
ÚÚW X
txbErrorTitle
ÚÚX e
,
ÚÚe f

Properties
ÚÚg q
.
ÚÚq r
	Resources
ÚÚr {
.
ÚÚ{ | 
lblGuestEndOfGameÚÚ| ç
,ÚÚç é
WindowÚÚè ï
.ÚÚï ñ
	GetWindowÚÚñ ü
(ÚÚü †
thisÚÚ† §
)ÚÚ§ •
)ÚÚ• ¶
;ÚÚ¶ ß
}
ÛÛ 
}
ÙÙ 	
private
ˆˆ 
void
ˆˆ &
SetPlayerInPositionSpots
ˆˆ .
(
ˆˆ. /
List
ˆˆ/ 3
<
ˆˆ3 4
Border
ˆˆ4 :
>
ˆˆ: ;
playerBorder
ˆˆ< H
,
ˆˆH I
List
ˆˆJ N
<
ˆˆN O&
PlayerInGameDataContract
ˆˆO g
>
ˆˆg h
playerInGame
ˆˆi u
)
ˆˆu v
{
˜˜ 	
List
¯¯ 
<
¯¯ 
Border
¯¯ 
>
¯¯ 
pillarRectangles
¯¯ )
=
¯¯* +
new
¯¯, /
List
¯¯0 4
<
¯¯4 5
Border
¯¯5 ;
>
¯¯; <
(
¯¯< =
)
¯¯= >
{
¯¯? @
brdFirstPlaceSpot
¯¯A R
,
¯¯R S 
brdSecondPlaceSpot
¯¯T f
,
¯¯f g 
brdtThirdPlaceSpot
¯¯h z
,
¯¯z {%
brdForthPlacePlaceSpot¯¯| í
}¯¯í ì
;¯¯ì î
List
˘˘ 
<
˘˘ 
Border
˘˘ 
>
˘˘ 
borderPositions
˘˘ (
=
˘˘) *
new
˘˘+ .
List
˘˘/ 3
<
˘˘3 4
Border
˘˘4 :
>
˘˘: ;
(
˘˘; <
)
˘˘< =
{
˘˘> ?
brdFirstPlace
˘˘@ M
,
˘˘M N
brdSecondPlace
˘˘O ]
,
˘˘] ^
brdThirdPlace
˘˘_ l
,
˘˘l m
brdForthPlace
˘˘n {
}
˘˘{ |
;
˘˘| }
if
˙˙ 
(
˙˙ 
itsTeamGame
˙˙ 
)
˙˙ 
{
˚˚ 
var
¸¸ 
borderTeam1
¸¸ 
=
¸¸  !
playerBorder
¸¸" .
.
¸¸. /
Find
¸¸/ 3
(
¸¸3 4
pla
¸¸4 7
=>
¸¸8 :
pla
¸¸; >
.
¸¸> ?
Name
¸¸? C
.
¸¸C D
Equals
¸¸D J
(
¸¸J K
	team1Name
¸¸K T
)
¸¸T U
)
¸¸U V
;
¸¸V W
var
˝˝ 
borderTeam2
˝˝ 
=
˝˝  !
playerBorder
˝˝" .
.
˝˝. /
Find
˝˝/ 3
(
˝˝3 4
pla
˝˝4 7
=>
˝˝8 :
pla
˝˝; >
.
˝˝> ?
Name
˝˝? C
.
˝˝C D
Equals
˝˝D J
(
˝˝J K
	team2Name
˝˝K T
)
˝˝T U
)
˝˝U V
;
˝˝V W
var
˛˛ 
playersTeam1
˛˛  
=
˛˛! "
playerInGame
˛˛# /
.
˛˛/ 0
Find
˛˛0 4
(
˛˛4 5
pl
˛˛5 7
=>
˛˛8 :
pl
˛˛; =
.
˛˛= >
SideTeam
˛˛> F
==
˛˛G I
$num
˛˛J K
)
˛˛K L
;
˛˛L M
var
ˇˇ 
playerTeam2
ˇˇ 
=
ˇˇ  !
playerInGame
ˇˇ" .
.
ˇˇ. /
Find
ˇˇ/ 3
(
ˇˇ3 4
pl
ˇˇ4 6
=>
ˇˇ7 9
pl
ˇˇ: <
.
ˇˇ< =
SideTeam
ˇˇ= E
==
ˇˇF H
$num
ˇˇI J
)
ˇˇJ K
;
ˇˇK L
if
ÄÄ 
(
ÄÄ 
playersTeam1
ÄÄ  
!=
ÄÄ! #
null
ÄÄ$ (
&&
ÄÄ) +
playerTeam2
ÄÄ, 7
!=
ÄÄ8 :
null
ÄÄ; ?
&&
ÄÄ@ B
borderTeam1
ÄÄC N
!=
ÄÄO Q
null
ÄÄR V
&&
ÄÄW Y
borderTeam2
ÄÄZ e
!=
ÄÄf h
null
ÄÄi m
)
ÄÄm n
{
ÅÅ 
if
ÇÇ 
(
ÇÇ 
playersTeam1
ÇÇ $
.
ÇÇ$ %"
CurrentPointsOfRound
ÇÇ% 9
>=
ÇÇ: <
playerTeam2
ÇÇ= H
.
ÇÇH I"
CurrentPointsOfRound
ÇÇI ]
)
ÇÇ] ^
{
ÉÉ 
borderTeam1
ÑÑ #
.
ÑÑ# $
Margin
ÑÑ$ *
=
ÑÑ+ ,
borderPositions
ÑÑ- <
[
ÑÑ< =
$num
ÑÑ= >
]
ÑÑ> ?
.
ÑÑ? @
Margin
ÑÑ@ F
;
ÑÑF G
borderTeam2
ÖÖ #
.
ÖÖ# $
Margin
ÖÖ$ *
=
ÖÖ+ ,
borderPositions
ÖÖ- <
[
ÖÖ< =
$num
ÖÖ= >
]
ÖÖ> ?
.
ÖÖ? @
Margin
ÖÖ@ F
;
ÖÖF G
pillarRectangles
ÜÜ (
[
ÜÜ( )
$num
ÜÜ) *
]
ÜÜ* +
.
ÜÜ+ ,

Background
ÜÜ, 6
=
ÜÜ7 8
borderTeam1
ÜÜ9 D
.
ÜÜD E

Background
ÜÜE O
;
ÜÜO P
pillarRectangles
áá (
[
áá( )
$num
áá) *
]
áá* +
.
áá+ ,

Background
áá, 6
=
áá7 8
borderTeam2
áá9 D
.
ááD E

Background
ááE O
;
ááO P
}
àà 
else
ââ 
{
ää 
borderTeam1
ãã #
.
ãã# $
Margin
ãã$ *
=
ãã+ ,
borderPositions
ãã- <
[
ãã< =
$num
ãã= >
]
ãã> ?
.
ãã? @
Margin
ãã@ F
;
ããF G
borderTeam2
åå #
.
åå# $
Margin
åå$ *
=
åå+ ,
borderPositions
åå- <
[
åå< =
$num
åå= >
]
åå> ?
.
åå? @
Margin
åå@ F
;
ååF G
pillarRectangles
çç (
[
çç( )
$num
çç) *
]
çç* +
.
çç+ ,

Background
çç, 6
=
çç7 8
borderTeam1
çç9 D
.
ççD E

Background
ççE O
;
ççO P
pillarRectangles
éé (
[
éé( )
$num
éé) *
]
éé* +
.
éé+ ,

Background
éé, 6
=
éé7 8
borderTeam2
éé9 D
.
ééD E

Background
ééE O
;
ééO P
}
èè 
borderTeam1
êê 
.
êê  
Width
êê  %
=
êê& '
double
êê( .
.
êê. /
NaN
êê/ 2
;
êê2 3
borderTeam1
ëë 
.
ëë  
Height
ëë  &
=
ëë' (
double
ëë) /
.
ëë/ 0
NaN
ëë0 3
;
ëë3 4
borderTeam2
íí 
.
íí  
Width
íí  %
=
íí& '
double
íí( .
.
íí. /
NaN
íí/ 2
;
íí2 3
borderTeam2
ìì 
.
ìì  
Height
ìì  &
=
ìì' (
double
ìì) /
.
ìì/ 0
NaN
ìì0 3
;
ìì3 4

stpPlayers
îî 
.
îî 
Children
îî '
.
îî' (
Clear
îî( -
(
îî- .
)
îî. /
;
îî/ 0
int
ïï 
indexBorder0
ïï $
=
ïï% &
grWinnerPanel
ïï' 4
.
ïï4 5
Children
ïï5 =
.
ïï= >
IndexOf
ïï> E
(
ïïE F
borderPositions
ïïF U
[
ïïU V
$num
ïïV W
]
ïïW X
)
ïïX Y
;
ïïY Z
int
ññ 
indexBorder1
ññ $
=
ññ% &
grWinnerPanel
ññ' 4
.
ññ4 5
Children
ññ5 =
.
ññ= >
IndexOf
ññ> E
(
ññE F
borderPositions
ññF U
[
ññU V
$num
ññV W
]
ññW X
)
ññX Y
;
ññY Z
grWinnerPanel
óó !
.
óó! "
Children
óó" *
.
óó* +
RemoveAt
óó+ 3
(
óó3 4
indexBorder0
óó4 @
)
óó@ A
;
óóA B
grWinnerPanel
òò !
.
òò! "
Children
òò" *
.
òò* +
RemoveAt
òò+ 3
(
òò3 4
indexBorder1
òò4 @
)
òò@ A
;
òòA B
grWinnerPanel
ôô !
.
ôô! "
Children
ôô" *
.
ôô* +
Insert
ôô+ 1
(
ôô1 2
indexBorder0
ôô2 >
,
ôô> ?
borderTeam1
ôô@ K
)
ôôK L
;
ôôL M
grWinnerPanel
öö !
.
öö! "
Children
öö" *
.
öö* +
Insert
öö+ 1
(
öö1 2
indexBorder1
öö2 >
,
öö> ?
borderTeam2
öö@ K
)
ööK L
;
ööL M
}
õõ 
}
úú 
else
ùù 
{
ûû 
for
üü 
(
üü 
int
üü 
i
üü 
=
üü 
playerInGame
üü )
.
üü) *
Count
üü* /
(
üü/ 0
)
üü0 1
-
üü2 3
$num
üü4 5
;
üü5 6
i
üü7 8
>=
üü9 ;
$num
üü< =
;
üü= >
i
üü? @
--
üü@ B
)
üüB C
{
†† 
pillarRectangles
°° $
[
°°$ %
i
°°% &
]
°°& '
.
°°' (

Visibility
°°( 2
=
°°3 4

Visibility
°°5 ?
.
°°? @
Visible
°°@ G
;
°°G H
int
¢¢ 
index
¢¢ 
=
¢¢ 
grWinnerPanel
¢¢  -
.
¢¢- .
Children
¢¢. 6
.
¢¢6 7
IndexOf
¢¢7 >
(
¢¢> ?
borderPositions
¢¢? N
[
¢¢N O
i
¢¢O P
]
¢¢P Q
)
¢¢Q R
;
¢¢R S
Border
££ 

borderCopy
££ %
;
££% &

borderCopy
§§ 
=
§§  
playerBorder
§§! -
.
§§- .
Find
§§. 2
(
§§2 3
pla
§§3 6
=>
§§7 9
pla
§§: =
.
§§= >
Name
§§> B
.
§§B C
Equals
§§C I
(
§§I J
$str
§§J M
+
§§N O
playerInGame
§§P \
[
§§\ ]
i
§§] ^
]
§§^ _
.
§§_ `
IdUser
§§` f
.
§§f g
ToString
§§g o
(
§§o p
)
§§p q
)
§§q r
)
§§r s
;
§§s t
if
•• 
(
•• 

borderCopy
•• "
!=
••# %
null
••& *
)
••* +
{
¶¶ 

stpPlayers
ßß "
.
ßß" #
Children
ßß# +
.
ßß+ ,
Remove
ßß, 2
(
ßß2 3

borderCopy
ßß3 =
)
ßß= >
;
ßß> ?

borderCopy
®® "
.
®®" #
Margin
®®# )
=
®®* +
borderPositions
®®, ;
[
®®; <
i
®®< =
]
®®= >
.
®®> ?
Margin
®®? E
;
®®E F
grWinnerPanel
©© %
.
©©% &
Children
©©& .
.
©©. /
RemoveAt
©©/ 7
(
©©7 8
index
©©8 =
)
©©= >
;
©©> ?
grWinnerPanel
™™ %
.
™™% &
Children
™™& .
.
™™. /
Insert
™™/ 5
(
™™5 6
index
™™6 ;
,
™™; <

borderCopy
™™= G
)
™™G H
;
™™H I
pillarRectangles
´´ (
[
´´( )
i
´´) *
]
´´* +
.
´´+ ,

Background
´´, 6
=
´´7 8

borderCopy
´´9 C
.
´´C D

Background
´´D N
;
´´N O
}
¨¨ 
}
≠≠ 
}
ÆÆ 
}
ØØ 	
private
±± 
void
±± 

StartTimer
±± 
(
±±  
)
±±  !
{
≤≤ 	
txbTimer
≥≥ 
.
≥≥ 
Text
≥≥ 
=
≥≥ 
timeLeft
≥≥ $
.
≥≥$ %
ToString
≥≥% -
(
≥≥- .
)
≥≥. /
+
≥≥0 1!
secondsAbbreviation
≥≥2 E
;
≥≥E F
if
¥¥ 
(
¥¥ 
currentRound
¥¥ 
==
¥¥ 
	ROUND_ONE
¥¥ (
)
¥¥( )
{
µµ 
timeLeft
∂∂ 
=
∂∂ 
$num
∂∂ 
;
∂∂ 
}
∑∑ 
else
∏∏ 
{
ππ 
timeLeft
∫∫ 
=
∫∫ 
$num
∫∫ 
;
∫∫ 
}
ªª 
timer
ºº 
=
ºº 
new
ºº 
DispatcherTimer
ºº '
(
ºº' (
)
ºº( )
;
ºº) *
timer
ΩΩ 
.
ΩΩ 
Interval
ΩΩ 
=
ΩΩ 
TimeSpan
ΩΩ %
.
ΩΩ% &
FromSeconds
ΩΩ& 1
(
ΩΩ1 2
$num
ΩΩ2 3
)
ΩΩ3 4
;
ΩΩ4 5
timer
ææ 
.
ææ 
Tick
ææ 
+=
ææ 

Timer_Tick
ææ $
;
ææ$ %
timer
øø 
.
øø 
Start
øø 
(
øø 
)
øø 
;
øø 
}
¿¿ 	
private
¬¬ 
void
¬¬ 

Timer_Tick
¬¬ 
(
¬¬  
object
¬¬  &
sender
¬¬' -
,
¬¬- .
	EventArgs
¬¬/ 8
e
¬¬9 :
)
¬¬: ;
{
√√ 	
txbTimer
ƒƒ 
.
ƒƒ 
Text
ƒƒ 
=
ƒƒ 
timeLeft
ƒƒ $
.
ƒƒ$ %
ToString
ƒƒ% -
(
ƒƒ- .
)
ƒƒ. /
+
ƒƒ0 1!
secondsAbbreviation
ƒƒ2 E
;
ƒƒE F
if
≈≈ 
(
≈≈ 
timeLeft
≈≈ 
<=
≈≈ 
$num
≈≈ 
)
≈≈ 
{
∆∆ 
if
«« 
(
«« 
currentRound
««  
!=
««! #
ROUND_THREE
««$ /
&&
««0 2
grdAnswerChoices
««3 C
.
««C D
	IsVisible
««D M
)
««M N
{
»» 
ChooseWrongAnswer
…… %
(
……% &
)
……& '
;
……' (
}
   
}
ÀÀ 
else
ÃÃ 
{
ÕÕ 
timeLeft
ŒŒ 
--
ŒŒ 
;
ŒŒ 
}
œœ 
}
–– 	
private
““ 
void
““ 
ChooseWrongAnswer
““ &
(
““& '
)
““' (
{
”” 	
if
‘‘ 
(
‘‘ 
currentTurn
‘‘ 
==
‘‘ 
yourTurn
‘‘ '
)
‘‘' (
{
’’ 
string
÷÷ )
descriptionAnswerToQuestion
÷÷ 2
=
÷÷3 4!
GetSpecificResource
÷÷5 H
.
÷÷H I,
GetEnglishOrSpanishDescription
÷÷I g
(
÷÷g h%
answerToCurrentQuestion
÷÷h 
.÷÷ Ä(
EnglishAnswerDescription÷÷Ä ò
,÷÷ò ô'
answerToCurrentQuestion÷÷ö ±
.÷÷± ≤(
SpanishAnswerDescription÷÷≤  
)÷÷  À
;÷÷À Ã
Button
◊◊ 
answerButton
◊◊ #
=
◊◊$ %
grdAnswerChoices
◊◊& 6
.
◊◊6 7
Children
◊◊7 ?
.
◊◊? @
OfType
◊◊@ F
<
◊◊F G
Button
◊◊G M
>
◊◊M N
(
◊◊N O
)
◊◊O P
.
◊◊P Q
FirstOrDefault
◊◊Q _
(
◊◊_ `
btt
◊◊` c
=>
◊◊d f
!
◊◊g h
btt
◊◊h k
.
◊◊k l
Content
◊◊l s
.
◊◊s t
Equals
◊◊t z
(
◊◊z {*
descriptionAnswerToQuestion◊◊{ ñ
)◊◊ñ ó
)◊◊ó ò
;◊◊ò ô
try
ÿÿ 
{
ŸŸ 
GameActionsClient
⁄⁄ %,
gameActionsCallBackClientProxy
⁄⁄& D
=
⁄⁄E F
new
⁄⁄G J
GameActionsClient
⁄⁄K \
(
⁄⁄\ ]
new
⁄⁄] `
InstanceContext
⁄⁄a p
(
⁄⁄p q
this
⁄⁄q u
)
⁄⁄u v
)
⁄⁄v w
;
⁄⁄w x,
gameActionsCallBackClientProxy
€€ 2
.
€€2 3
RenewGameCallBack
€€3 D
(
€€D E
roomCode
€€E M
,
€€M N
userSingleton
€€O \
.
€€\ ]
IdUser
€€] c
)
€€c d
;
€€d e
if
›› 
(
›› 
currentRound
›› $
!=
››% '
ROUND_THREE
››( 3
)
››3 4
{
ﬁﬁ )
GameActionsOperationsClient
ﬂﬂ 3$
gameActionsClientProxy
ﬂﬂ4 J
=
ﬂﬂK L
new
ﬂﬂM P
(
ﬂﬂP Q
)
ﬂﬂQ R
;
ﬂﬂR S
var
‡‡ 
answerSelected
‡‡ *
=
‡‡+ ,)
answersOfQuestionBeingAsked
‡‡- H
.
‡‡H I
FirstOrDefault
‡‡I W
(
‡‡W X
anw
‡‡X [
=>
‡‡\ ^!
GetSpecificResource
‡‡_ r
.
‡‡r s-
GetEnglishOrSpanishDescription‡‡s ë
(‡‡ë í
anw‡‡í ï
.‡‡ï ñ(
EnglishAnswerDescription‡‡ñ Æ
,‡‡Æ Ø
anw‡‡∞ ≥
.‡‡≥ ¥(
SpanishAnswerDescription‡‡¥ Ã
)‡‡Ã Õ
.‡‡Õ Œ
Equals‡‡Œ ‘
(‡‡‘ ’
answerButton‡‡’ ·
.‡‡· ‚
Content‡‡‚ È
)‡‡È Í
)‡‡Í Î
;‡‡Î Ï
if
·· 
(
·· 
answerSelected
·· *
!=
··+ -
null
··. 2
)
··2 3
{
‚‚ $
gameActionsClientProxy
„„ 2
.
„„2 3
ChooseAnswer
„„3 ?
(
„„? @
roomCode
„„@ H
,
„„H I
userSingleton
„„J W
.
„„W X
IdUser
„„X ^
,
„„^ _
answerSelected
„„` n
.
„„n o
IdAnswer
„„o w
,
„„w x!
questionBeingAsked„„y ã
.„„ã å

ValueWorth„„å ñ
,„„ñ ó
yourTurn„„ò †
)„„† °
;„„° ¢
}
‰‰ 
}
ÂÂ 
else
ÊÊ 
{
ÁÁ )
GameActionsOperationsClient
ËË 3$
gameActionsClientProxy
ËË4 J
=
ËËK L
new
ËËM P
(
ËËP Q
)
ËËQ R
;
ËËR S
bool
ÈÈ 
	isCorrect
ÈÈ &
=
ÈÈ' (
false
ÈÈ) .
;
ÈÈ. /
answerButton
ÍÍ $
.
ÍÍ$ %
BorderBrush
ÍÍ% 0
=
ÍÍ1 2
new
ÍÍ3 6
SolidColorBrush
ÍÍ7 F
(
ÍÍF G
Colors
ÍÍG M
.
ÍÍM N
Blue
ÍÍN R
)
ÍÍR S
;
ÍÍS T
bttFirstAnswer
ÎÎ &
.
ÎÎ& '
	IsEnabled
ÎÎ' 0
=
ÎÎ1 2
false
ÎÎ3 8
;
ÎÎ8 9
bttSecondAnswer
ÏÏ '
.
ÏÏ' (
	IsEnabled
ÏÏ( 1
=
ÏÏ2 3
false
ÏÏ4 9
;
ÏÏ9 :
bttThridAnswer
ÌÌ &
.
ÌÌ& '
	IsEnabled
ÌÌ' 0
=
ÌÌ1 2
false
ÌÌ3 8
;
ÌÌ8 9
bttFourAnswer
ÓÓ %
.
ÓÓ% &
	IsEnabled
ÓÓ& /
=
ÓÓ0 1
false
ÓÓ2 7
;
ÓÓ7 8
txbAdvicement
ÔÔ %
.
ÔÔ% &

Visibility
ÔÔ& 0
=
ÔÔ1 2

Visibility
ÔÔ3 =
.
ÔÔ= >
Visible
ÔÔ> E
;
ÔÔE F$
gameActionsClientProxy
 .
.
. /'
ConfirmLastQuestionAnswer
/ H
(
H I
roomCode
I Q
,
Q R
playersInGame
S `
.
` a
Find
a e
(
e f
pla
f i
=>
j l
pla
m p
.
p q
IdUser
q w
==
x z
userSingleton{ à
.à â
IdUserâ è
)è ê
,ê ë
	pointsBetí õ
,õ ú
	isCorrectù ¶
)¶ ß
;ß ®
}
ÒÒ 
}
ÚÚ 
catch
ÛÛ 
(
ÛÛ '
EndpointNotFoundException
ÛÛ 0
ex
ÛÛ1 3
)
ÛÛ3 4
{
ÙÙ 
HandleException
ıı #
(
ıı# $
ex
ıı$ &
,
ıı& '

Properties
ıı( 2
.
ıı2 3
	Resources
ıı3 <
.
ıı< =#
lblFailToChooseAnswer
ıı= R
+
ııS T
$str
ııU Z
+
ıı[ \

Properties
ıı] g
.
ııg h
	Resources
ııh q
.
ııq r"
lblEndPointNotFoundıır Ö
)ııÖ Ü
;ııÜ á
}
ˆˆ 
catch
˜˜ 
(
˜˜ 1
#CommunicationObjectFaultedException
˜˜ :
ex
˜˜; =
)
˜˜= >
{
¯¯ 
HandleException
˘˘ #
(
˘˘# $
ex
˘˘$ &
,
˘˘& '

Properties
˘˘( 2
.
˘˘2 3
	Resources
˘˘3 <
.
˘˘< =#
lblFailToChooseAnswer
˘˘= R
+
˘˘S T
$str
˘˘U Z
+
˘˘[ \

Properties
˘˘] g
.
˘˘g h
	Resources
˘˘h q
.
˘˘q r'
lblComunicationException˘˘r ä
)˘˘ä ã
;˘˘ã å
}
˙˙ 
catch
˚˚ 
(
˚˚ 
TimeoutException
˚˚ '
ex
˚˚( *
)
˚˚* +
{
¸¸ 
HandleException
˝˝ #
(
˝˝# $
ex
˝˝$ &
,
˝˝& '

Properties
˝˝( 2
.
˝˝2 3
	Resources
˝˝3 <
.
˝˝< =#
lblFailToChooseAnswer
˝˝= R
+
˝˝S T
$str
˝˝U Z
+
˝˝[ \

Properties
˝˝] g
.
˝˝g h
	Resources
˝˝h q
.
˝˝q r
lblTimeException˝˝r Ç
)˝˝Ç É
;˝˝É Ñ
}
˛˛ 
catch
ˇˇ 
(
ˇˇ $
CommunicationException
ˇˇ -
ex
ˇˇ. 0
)
ˇˇ0 1
{
ÄÄ 
HandleException
ÅÅ #
(
ÅÅ# $
ex
ÅÅ$ &
,
ÅÅ& '

Properties
ÅÅ( 2
.
ÅÅ2 3
	Resources
ÅÅ3 <
.
ÅÅ< =#
lblFailToChooseAnswer
ÅÅ= R
+
ÅÅS T
$str
ÅÅU Z
+
ÅÅ[ \

Properties
ÅÅ] g
.
ÅÅg h
	Resources
ÅÅh q
.
ÅÅq r"
lblWithoutConectionÅÅr Ö
)ÅÅÖ Ü
;ÅÅÜ á
}
ÇÇ 
catch
ÉÉ 
(
ÉÉ 
SocketException
ÉÉ &
ex
ÉÉ' )
)
ÉÉ) *
{
ÑÑ 
HandleException
ÖÖ #
(
ÖÖ# $
ex
ÖÖ$ &
,
ÖÖ& '

Properties
ÖÖ( 2
.
ÖÖ2 3
	Resources
ÖÖ3 <
.
ÖÖ< = 
lblFailToStartGame
ÖÖ= O
+
ÖÖP Q
$str
ÖÖR W
+
ÖÖX Y

Properties
ÖÖZ d
.
ÖÖd e
	Resources
ÖÖe n
.
ÖÖn o"
lblEndPointNotFoundÖÖo Ç
)ÖÖÇ É
;ÖÖÉ Ñ
}
ÜÜ 
}
áá 
}
àà 	
private
ää 
void
ää 
ClickLeaveGame
ää #
(
ää# $
object
ää$ *
sender
ää+ 1
,
ää1 2"
MouseButtonEventArgs
ää3 G
e
ääH I
)
ääI J
{
ãã 	
if
åå 
(
åå 
currentRound
åå 
==
åå 
$num
åå  
)
åå  !
{
çç 
CloseWindow
éé 
(
éé 
)
éé 
;
éé 
}
èè 
else
êê 
if
êê 
(
êê 
new
êê &
ConfirmationDialogWindow
êê 0
(
êê0 1

Properties
êê1 ;
.
êê; <
	Resources
êê< E
.
êêE F
txbWarningTitle
êêF U
,
êêU V

Properties
êêW a
.
êêa b
	Resources
êêb k
.
êêk l$
LeaveGameConfirmationêêl Å
,êêÅ Ç
WindowêêÉ â
.êêâ ä
	GetWindowêêä ì
(êêì î
thisêêî ò
)êêò ô
)êêô ö
.êêö õ
CloseWindowêêõ ¶
)êê¶ ß
{
ëë 
NotifyLeavingGame
íí !
(
íí! "
)
íí" #
;
íí# $
CloseWindow
ìì 
(
ìì 
)
ìì 
;
ìì 
}
îî 
}
ññ 	
private
óó 
void
óó 
CloseWindow
óó  
(
óó  !
)
óó! "
{
òò 	
if
ôô 
(
ôô 
timer
ôô 
!=
ôô 
null
ôô 
)
ôô 
{
öö 
timer
õõ 
.
õõ 
Stop
õõ 
(
õõ 
)
õõ 
;
õõ 
}
úú 
if
ùù 
(
ùù 
userSingleton
ùù 
.
ùù 
IdState
ùù %
!=
ùù& (
$num
ùù) *
)
ùù* +
{
ûû 
MainMenu
üü 
mainMenu
üü !
=
üü" #
new
üü$ '
MainMenu
üü( 0
(
üü0 1
)
üü1 2
;
üü2 3
this
†† 
.
†† 
NavigationService
†† &
.
††& '
Navigate
††' /
(
††/ 0
mainMenu
††0 8
)
††8 9
;
††9 :
NavigationService
°° !
.
°°! "
RemoveBackEntry
°°" 1
(
°°1 2
)
°°2 3
;
°°3 4
}
¢¢ 
else
££ 
{
§§ 
DeleteSingleton
•• 
(
••  
)
••  !
;
••! "
PrincipalPage
¶¶ 
principalPage
¶¶ +
=
¶¶, -
new
¶¶. 1
PrincipalPage
¶¶2 ?
(
¶¶? @
)
¶¶@ A
;
¶¶A B
this
ßß 
.
ßß 
NavigationService
ßß &
.
ßß& '
Navigate
ßß' /
(
ßß/ 0
principalPage
ßß0 =
)
ßß= >
;
ßß> ?
NavigationService
®® !
.
®®! "
RemoveBackEntry
®®" 1
(
®®1 2
)
®®2 3
;
®®3 4
}
©© 
}
™™ 	
private
≠≠ 
void
≠≠ 
NotifyLeavingGame
≠≠ &
(
≠≠& '
)
≠≠' (
{
ÆÆ 	
try
ØØ 
{
∞∞ )
GameActionsOperationsClient
±± +$
gameActionsClientProxy
±±, B
=
±±C D
new
±±E H
(
±±H I
)
±±I J
;
±±J K$
gameActionsClientProxy
≤≤ &
.
≤≤& ')
UnSubscribeFromGameCallBack
≤≤' B
(
≤≤B C
roomCode
≤≤C K
,
≤≤K L
userSingleton
≤≤M Z
.
≤≤Z [
IdUser
≤≤[ a
)
≤≤a b
;
≤≤b c
}
≥≥ 
catch
¥¥ 
(
¥¥ '
EndpointNotFoundException
¥¥ ,
ex
¥¥- /
)
¥¥/ 0
{
µµ %
ExceptionHandlerForLogs
∂∂ '
.
∂∂' (
LogException
∂∂( 4
(
∂∂4 5
ex
∂∂5 7
,
∂∂7 8!
ExceptionDictionary
∂∂9 L
.
∂∂L M
FATAL_EXCEPTION
∂∂M \
)
∂∂\ ]
;
∂∂] ^
}
∑∑ 
catch
∏∏ 
(
∏∏ 1
#CommunicationObjectFaultedException
∏∏ 6
ex
∏∏7 9
)
∏∏9 :
{
ππ %
ExceptionHandlerForLogs
∫∫ '
.
∫∫' (
LogException
∫∫( 4
(
∫∫4 5
ex
∫∫5 7
,
∫∫7 8!
ExceptionDictionary
∫∫9 L
.
∫∫L M
FATAL_EXCEPTION
∫∫M \
)
∫∫\ ]
;
∫∫] ^
}
ªª 
catch
ºº 
(
ºº 
TimeoutException
ºº #
ex
ºº$ &
)
ºº& '
{
ΩΩ %
ExceptionHandlerForLogs
ææ '
.
ææ' (
LogException
ææ( 4
(
ææ4 5
ex
ææ5 7
,
ææ7 8!
ExceptionDictionary
ææ9 L
.
ææL M
FATAL_EXCEPTION
ææM \
)
ææ\ ]
;
ææ] ^
}
øø 
catch
¿¿ 
(
¿¿ $
CommunicationException
¿¿ )
ex
¿¿* ,
)
¿¿, -
{
¡¡ %
ExceptionHandlerForLogs
¬¬ '
.
¬¬' (
LogException
¬¬( 4
(
¬¬4 5
ex
¬¬5 7
,
¬¬7 8!
ExceptionDictionary
¬¬9 L
.
¬¬L M
FATAL_EXCEPTION
¬¬M \
)
¬¬\ ]
;
¬¬] ^
}
√√ 
catch
ƒƒ 
(
ƒƒ 
SocketException
ƒƒ "
ex
ƒƒ# %
)
ƒƒ% &
{
≈≈ %
ExceptionHandlerForLogs
∆∆ '
.
∆∆' (
LogException
∆∆( 4
(
∆∆4 5
ex
∆∆5 7
,
∆∆7 8!
ExceptionDictionary
∆∆9 L
.
∆∆L M
FATAL_EXCEPTION
∆∆M \
)
∆∆\ ]
;
∆∆] ^
}
«« 
}
»» 	
public
   
void
   ,
ReceiveNotificationSomeOneLeft
   2
(
  2 3
int
  3 6

isYourTurn
  7 A
,
  A B&
PlayerInGameDataContract
  C [
[
  [ \
]
  \ ]
playerInGame
  ^ j
)
  j k
{
ÀÀ 	
try
ÃÃ 
{
ÕÕ 
if
ŒŒ 
(
ŒŒ 
playerInGame
ŒŒ  
.
ŒŒ  !
Count
ŒŒ! &
(
ŒŒ& '
)
ŒŒ' (
==
ŒŒ) +
$num
ŒŒ, -
||
ŒŒ. 0
itsTeamGame
ŒŒ1 <
)
ŒŒ< =
{
œœ 
if
–– 
(
–– 
itsTeamGame
–– #
)
––# $
{
—— 
dialogMessage
““ %
=
““& '
new
““( +,
InformationMessageDialogWindow
““, J
(
““J K

Properties
““K U
.
““U V
	Resources
““V _
.
““_ `#
txbInformationMessage
““` u
,
““u v

Properties““w Å
.““Å Ç
	Resources““Ç ã
.““ã å.
lblFinishGameBecauseOfTeamLeft““å ™
,““™ ´
Window““¨ ≤
.““≤ ≥
	GetWindow““≥ º
(““º Ω
this““Ω ¡
)““¡ ¬
)““¬ √
;““√ ƒ
}
”” 
else
‘‘ 
{
’’ 
dialogMessage
÷÷ %
=
÷÷& '
new
÷÷( +,
InformationMessageDialogWindow
÷÷, J
(
÷÷J K

Properties
÷÷K U
.
÷÷U V
	Resources
÷÷V _
.
÷÷_ `#
txbInformationMessage
÷÷` u
,
÷÷u v

Properties÷÷w Å
.÷÷Å Ç
	Resources÷÷Ç ã
.÷÷ã å1
!lblFinishGameBecauseJustOnePlayer÷÷å ≠
,÷÷≠ Æ
Window÷÷Ø µ
.÷÷µ ∂
	GetWindow÷÷∂ ø
(÷÷ø ¿
this÷÷¿ ƒ
)÷÷ƒ ≈
)÷÷≈ ∆
;÷÷∆ «
}
◊◊ 
CloseWindow
ÿÿ 
(
ÿÿ  
)
ÿÿ  !
;
ÿÿ! "
return
ŸŸ 
;
ŸŸ 
}
⁄⁄ 
if
€€ 
(
€€ 
currentTurn
€€ 
==
€€  "
playerInGame
€€# /
.
€€/ 0
Count
€€0 5
(
€€5 6
)
€€6 7
)
€€7 8
{
‹‹ 
currentTurn
›› 
=
››  !
$num
››" #
;
››# $
}
ﬁﬁ 
grdAnswerChoices
ﬂﬂ  
.
ﬂﬂ  !

Visibility
ﬂﬂ! +
=
ﬂﬂ, -

Visibility
ﬂﬂ. 8
.
ﬂﬂ8 9
Hidden
ﬂﬂ9 ?
;
ﬂﬂ? @
yourTurn
‡‡ 
=
‡‡ 

isYourTurn
‡‡ %
;
‡‡% &
playersInGame
·· 
=
·· 
playerInGame
··  ,
.
··, -
ToList
··- 3
(
··3 4
)
··4 5
;
··5 6
ShowIfItsYourTurn
‚‚ !
(
‚‚! "
)
‚‚" #
;
‚‚# $
}
„„ 
catch
‰‰ 
(
‰‰ '
EndpointNotFoundException
‰‰ ,
ex
‰‰- /
)
‰‰/ 0
{
ÂÂ 
HandleException
ÊÊ 
(
ÊÊ  
ex
ÊÊ  "
,
ÊÊ" #

Properties
ÊÊ$ .
.
ÊÊ. /
	Resources
ÊÊ/ 8
.
ÊÊ8 9!
lblEndPointNotFound
ÊÊ9 L
)
ÊÊL M
;
ÊÊM N
}
ÁÁ 
catch
ËË 
(
ËË 1
#CommunicationObjectFaultedException
ËË 6
ex
ËË7 9
)
ËË9 :
{
ÈÈ 
HandleException
ÍÍ 
(
ÍÍ  
ex
ÍÍ  "
,
ÍÍ" #

Properties
ÍÍ$ .
.
ÍÍ. /
	Resources
ÍÍ/ 8
.
ÍÍ8 9&
lblComunicationException
ÍÍ9 Q
)
ÍÍQ R
;
ÍÍR S
}
ÎÎ 
catch
ÏÏ 
(
ÏÏ 
TimeoutException
ÏÏ #
ex
ÏÏ$ &
)
ÏÏ& '
{
ÌÌ 
HandleException
ÓÓ 
(
ÓÓ  
ex
ÓÓ  "
,
ÓÓ" #

Properties
ÓÓ$ .
.
ÓÓ. /
	Resources
ÓÓ/ 8
.
ÓÓ8 9
lblTimeException
ÓÓ9 I
)
ÓÓI J
;
ÓÓJ K
}
ÔÔ 
catch
 
(
 $
CommunicationException
 )
ex
* ,
)
, -
{
ÒÒ 
HandleException
ÚÚ 
(
ÚÚ  
ex
ÚÚ  "
,
ÚÚ" #

Properties
ÚÚ$ .
.
ÚÚ. /
	Resources
ÚÚ/ 8
.
ÚÚ8 9!
lblWithoutConection
ÚÚ9 L
)
ÚÚL M
;
ÚÚM N
}
ÛÛ 
catch
ÙÙ 
(
ÙÙ 
SocketException
ÙÙ "
ex
ÙÙ# %
)
ÙÙ% &
{
ıı 
HandleException
ˆˆ 
(
ˆˆ  
ex
ˆˆ  "
,
ˆˆ" #

Properties
ˆˆ$ .
.
ˆˆ. /
	Resources
ˆˆ/ 8
.
ˆˆ8 9!
lblEndPointNotFound
ˆˆ9 L
)
ˆˆL M
;
ˆˆM N
}
˜˜ 
}
¯¯ 	
private
˚˚ 
void
˚˚ 
DeleteSingleton
˚˚ $
(
˚˚$ %
)
˚˚% &
{
¸¸ 	
try
˝˝ 
{
˛˛ &
GuestPlayerManagerClient
ˇˇ (%
guestPlayerManagerProxy
ˇˇ) @
=
ˇˇA B
new
ˇˇC F
(
ˇˇF G
)
ˇˇG H
;
ˇˇH I%
guestPlayerManagerProxy
Ä	Ä	 '
.
Ä	Ä	' (
DeleteGuest
Ä	Ä	( 3
(
Ä	Ä	3 4
userSingleton
Ä	Ä	4 A
.
Ä	Ä	A B
IdUser
Ä	Ä	B H
)
Ä	Ä	H I
;
Ä	Ä	I J
}
Å	Å	 
catch
Ç	Ç	 
(
Ç	Ç	 '
EndpointNotFoundException
Ç	Ç	 ,
ex
Ç	Ç	- /
)
Ç	Ç	/ 0
{
É	É	 %
ExceptionHandlerForLogs
Ñ	Ñ	 '
.
Ñ	Ñ	' (
LogException
Ñ	Ñ	( 4
(
Ñ	Ñ	4 5
ex
Ñ	Ñ	5 7
,
Ñ	Ñ	7 8!
ExceptionDictionary
Ñ	Ñ	9 L
.
Ñ	Ñ	L M
FATAL_EXCEPTION
Ñ	Ñ	M \
)
Ñ	Ñ	\ ]
;
Ñ	Ñ	] ^
}
Ö	Ö	 
catch
Ü	Ü	 
(
Ü	Ü	 1
#CommunicationObjectFaultedException
Ü	Ü	 6
ex
Ü	Ü	7 9
)
Ü	Ü	9 :
{
á	á	 %
ExceptionHandlerForLogs
à	à	 '
.
à	à	' (
LogException
à	à	( 4
(
à	à	4 5
ex
à	à	5 7
,
à	à	7 8!
ExceptionDictionary
à	à	9 L
.
à	à	L M
FATAL_EXCEPTION
à	à	M \
)
à	à	\ ]
;
à	à	] ^
}
â	â	 
catch
ä	ä	 
(
ä	ä	 
TimeoutException
ä	ä	 #
ex
ä	ä	$ &
)
ä	ä	& '
{
ã	ã	 %
ExceptionHandlerForLogs
å	å	 '
.
å	å	' (
LogException
å	å	( 4
(
å	å	4 5
ex
å	å	5 7
,
å	å	7 8!
ExceptionDictionary
å	å	9 L
.
å	å	L M
FATAL_EXCEPTION
å	å	M \
)
å	å	\ ]
;
å	å	] ^
}
ç	ç	 
catch
é	é	 
(
é	é	 $
CommunicationException
é	é	 )
ex
é	é	* ,
)
é	é	, -
{
è	è	 
HandleException
ê	ê	 
(
ê	ê	  
ex
ê	ê	  "
,
ê	ê	" #

Properties
ê	ê	$ .
.
ê	ê	. /
	Resources
ê	ê	/ 8
.
ê	ê	8 9!
lblWithoutConection
ê	ê	9 L
)
ê	ê	L M
;
ê	ê	M N
}
ë	ë	 
catch
í	í	 
(
í	í	 
SocketException
í	í	 "
ex
í	í	# %
)
í	í	% &
{
ì	ì	 
HandleException
î	î	 
(
î	î	  
ex
î	î	  "
,
î	î	" #

Properties
î	î	$ .
.
î	î	. /
	Resources
î	î	/ 8
.
î	î	8 9!
lblEndPointNotFound
î	î	9 L
)
î	î	L M
;
î	î	M N
}
ï	ï	 
UserSingleton
ñ	ñ	 
.
ñ	ñ	 
CleanSingleton
ñ	ñ	 (
(
ñ	ñ	( )
)
ñ	ñ	) *
;
ñ	ñ	* +
}
ó	ó	 	
private
ö	ö	 
void
ö	ö	 
ClickOpenChat
ö	ö	 "
(
ö	ö	" #
object
ö	ö	# )
sender
ö	ö	* 0
,
ö	ö	0 1"
MouseButtonEventArgs
ö	ö	2 F
e
ö	ö	G H
)
ö	ö	H I
{
õ	õ	 	
teamChat
ú	ú	 
.
ú	ú	 "
RenewCallBackChannel
ú	ú	 )
(
ú	ú	) *
)
ú	ú	* +
;
ú	ú	+ ,
grdChat
ù	ù	 
.
ù	ù	 

Visibility
ù	ù	 
=
ù	ù	  

Visibility
ù	ù	! +
.
ù	ù	+ ,
Visible
ù	ù	, 3
;
ù	ù	3 4
frmChat
û	û	 
.
û	û	 
Content
û	û	 
=
û	û	 
teamChat
û	û	 &
;
û	û	& '
}
ü	ü	 	
public
°	°	 
void
°	°	 
CloseLiveChat
°	°	 !
(
°	°	! "
)
°	°	" #
{
¢	¢	 	
grdChat
£	£	 
.
£	£	 

Visibility
£	£	 
=
£	£	  

Visibility
£	£	! +
.
£	£	+ ,
	Collapsed
£	£	, 5
;
£	£	5 6
}
§	§	 	
public
¶	¶	 
void
¶	¶	 $
ReceiveMessageTeamChat
¶	¶	 *
(
¶	¶	* +/
!GenericClassOfMessageChatxY0a3WX4
¶	¶	+ L
message
¶	¶	M T
)
¶	¶	T U
{
ß	ß	 	
(
®	®	 
(
®	®	 #
IChatForTeamsCallback
®	®	 #
)
®	®	# $
teamChat
®	®	$ ,
)
®	®	, -
.
®	®	- .$
ReceiveMessageTeamChat
®	®	. D
(
®	®	D E
message
®	®	E L
)
®	®	L M
;
®	®	M N
}
©	©	 	
private
´	´	 
void
´	´	 
HandleException
´	´	 $
(
´	´	$ %
	Exception
´	´	% .
ex
´	´	/ 1
,
´	´	1 2
string
´	´	3 9
errorMessage
´	´	: F
)
´	´	F G
{
¨	¨	 	%
ExceptionHandlerForLogs
≠	≠	 #
.
≠	≠	# $
LogException
≠	≠	$ 0
(
≠	≠	0 1
ex
≠	≠	1 3
,
≠	≠	3 4!
ExceptionDictionary
≠	≠	5 H
.
≠	≠	H I
FATAL_EXCEPTION
≠	≠	I X
)
≠	≠	X Y
;
≠	≠	Y Z
dialogMessage
Æ	Æ	 
=
Æ	Æ	 
new
Æ	Æ	 &
ErrorMessageDialogWindow
Æ	Æ	  8
(
Æ	Æ	8 9

Properties
Æ	Æ	9 C
.
Æ	Æ	C D
	Resources
Æ	Æ	D M
.
Æ	Æ	M N
txbErrorTitle
Æ	Æ	N [
,
Æ	Æ	[ \
errorMessage
Æ	Æ	] i
,
Æ	Æ	i j
Application
Æ	Æ	k v
.
Æ	Æ	v w
Current
Æ	Æ	w ~
.
Æ	Æ	~ 

MainWindowÆ	Æ	 â
)Æ	Æ	â ä
;Æ	Æ	ä ã
NotifyLeavingGame
Ø	Ø	 
(
Ø	Ø	 
)
Ø	Ø	 
;
Ø	Ø	  

ReturnPage
∞	∞	 
(
∞	∞	 
)
∞	∞	 
;
∞	∞	 
}
±	±	 	
private
¥	¥	 
void
¥	¥	 

ReturnPage
¥	¥	 
(
¥	¥	  
)
¥	¥	  !
{
µ	µ	 	
UserSingleton
∂	∂	 
.
∂	∂	 
CleanSingleton
∂	∂	 (
(
∂	∂	( )
)
∂	∂	) *
;
∂	∂	* +
	LogInUser
∑	∑	 
logInUserPage
∑	∑	 #
=
∑	∑	$ %
new
∑	∑	& )
	LogInUser
∑	∑	* 3
(
∑	∑	3 4
)
∑	∑	4 5
;
∑	∑	5 6
this
∏	∏	 
.
∏	∏	 
NavigationService
∏	∏	 "
.
∏	∏	" #
Navigate
∏	∏	# +
(
∏	∏	+ ,
logInUserPage
∏	∏	, 9
)
∏	∏	9 :
;
∏	∏	: ;
NavigationService
π	π	 
.
π	π	 
RemoveBackEntry
π	π	 -
(
π	π	- .
)
π	π	. /
;
π	π	/ 0
}
∫	∫	 	
}
º	º	 
}Ω	Ω	 Ü—
gC:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameClient\Pages\LiveChat.xaml.cs
	namespace 	
JeopardyGame
 
. 
Pages 
{ 
public 

partial 
class 
LiveChat !
:" #
Page$ (
,( )
ILiveChatCallback* ;
{ 
private   
bool   
isAdmin   
;   
private!! 
int!! 
roomCode!! 
;!! 
private"" 
UserSingleton"" 
userSingleton"" ,
;"", -
private## 
List## 
<## 
MessageChat## !
>##! "
messagesInChats### 2
=##3 4
new##5 8
List##9 =
<##= >
MessageChat##> I
>##I J
(##J K
)##K L
;##L M
private$$ 
	LobbyPage$$ 
	lobbyPage$$ $
;$$$ %
private%% 
Window%% 
dialogMessage%% $
;%%$ %
public'' 
LiveChat'' 
('' 
)'' 
{(( 	
InitializeComponent)) 
())  
)))  !
;))! "
}** 	
public,, 
void,, 
	StartPage,, 
(,, 
bool,, "
rol,,# &
,,,& '
int,,( +
room,,, 0
,,,0 1
	LobbyPage,,2 ;
lobby,,< A
),,A B
{-- 	
	lobbyPage.. 
=.. 
lobby.. 
;.. 
isAdmin// 
=// 
rol// 
;// 
roomCode00 
=00 
room00 
;00 
PrepareWindow11 
(11 
)11 
;11 
}22 	
public44 
void44 !
RenewLiveChatCallBack44 )
(44) *
)44* +
{55 	
try66 
{77 
LiveChatClient88 !
liveChatCallBackProxy88 4
=885 6
new887 :
LiveChatClient88; I
(88I J
new88J M
InstanceContext88N ]
(88] ^
this88^ b
)88b c
)88c d
;88d e!
liveChatCallBackProxy99 %
.99% &!
RenewLiveChatCallBack99& ;
(99; <
roomCode99< D
,99D E
userSingleton99F S
.99S T
IdUser99T Z
)99Z [
;99[ \
}:: 
catch;; 
(;; %
EndpointNotFoundException;; ,
ex;;- /
);;/ 0
{<< 
HandleException== 
(==  
ex==  "
,==" #

Properties==$ .
.==. /
	Resources==/ 8
.==8 9%
lblFailRegistryToCallBack==9 R
+==S T
$str==U Z
+==[ \

Properties==] g
.==g h
	Resources==h q
.==q r 
lblEndPointNotFound	==r Ö
)
==Ö Ü
;
==Ü á
}>> 
catch?? 
(?? /
#CommunicationObjectFaultedException?? 6
ex??7 9
)??9 :
{@@ 
HandleExceptionAA 
(AA  
exAA  "
,AA" #

PropertiesAA$ .
.AA. /
	ResourcesAA/ 8
.AA8 9%
lblFailRegistryToCallBackAA9 R
+AAS T
$strAAU Z
+AA[ \

PropertiesAA] g
.AAg h
	ResourcesAAh q
.AAq r%
lblComunicationException	AAr ä
)
AAä ã
;
AAã å
}BB 
catchCC 
(CC 
TimeoutExceptionCC #
exCC$ &
)CC& '
{DD 
HandleExceptionEE 
(EE  
exEE  "
,EE" #

PropertiesEE$ .
.EE. /
	ResourcesEE/ 8
.EE8 9%
lblFailRegistryToCallBackEE9 R
+EES T
$strEEU Z
+EE[ \

PropertiesEE] g
.EEg h
	ResourcesEEh q
.EEq r
lblTimeException	EEr Ç
)
EEÇ É
;
EEÉ Ñ
}FF 
catchGG 
(GG "
CommunicationExceptionGG )
exGG* ,
)GG, -
{HH 
HandleExceptionII 
(II  
exII  "
,II" #

PropertiesII$ .
.II. /
	ResourcesII/ 8
.II8 9%
lblFailRegistryToCallBackII9 R
+IIS T
$strIIU Z
+II[ \

PropertiesII] g
.IIg h
	ResourcesIIh q
.IIq r 
lblWithoutConection	IIr Ö
)
IIÖ Ü
;
IIÜ á
}JJ 
catchKK 
(KK 
SocketExceptionKK "
exKK# %
)KK% &
{LL 
HandleExceptionMM 
(MM  
exMM  "
,MM" #

PropertiesMM$ .
.MM. /
	ResourcesMM/ 8
.MM8 9%
lblFailRegistryToCallBackMM9 R
+MMS T
$strMMU Z
+MM[ \

PropertiesMM] g
.MMg h
	ResourcesMMh q
.MMq r 
lblWithoutConection	MMr Ö
)
MMÖ Ü
;
MMÜ á
}NN 
}OO 	
privateQQ 
voidQQ 
PrepareWindowQQ "
(QQ" #
)QQ# $
{RR 	
InstanceContextSS 
contextSS #
=SS$ %
newSS& )
InstanceContextSS* 9
(SS9 :
thisSS: >
)SS> ?
;SS? @
LiveChatClientTT 
liveChatProxyTT (
=TT) *
newTT+ .
LiveChatClientTT/ =
(TT= >
contextTT> E
)TTE F
;TTF G
tryUU 
{VV 
userSingletonWW 
=WW 
UserSingletonWW  -
.WW- .
GetMainUserWW. 9
(WW9 :
)WW: ;
;WW; <
ifXX 
(XX 
isAdminXX 
)XX 
{YY 
liveChatProxyZZ !
.ZZ! "
CreateChatForLobbyZZ" 4
(ZZ4 5
roomCodeZZ5 =
,ZZ= >
userSingletonZZ? L
.ZZL M
IdUserZZM S
)ZZS T
;ZZT U
}[[ 
else\\ 
{]] 
var^^ 
serverResponse^^ &
=^^' (
liveChatProxy^^) 6
.^^6 7
GetAllMessages^^7 E
(^^E F
roomCode^^F N
,^^N O
userSingleton^^P ]
.^^] ^
IdUser^^^ d
)^^d e
;^^e f
if__ 
(__ 
serverResponse__ &
.__& '
	CodeEvent__' 0
==__1 3
ExceptionDictionary__4 G
.__G H
SUCCESFULL_EVENT__H X
)__X Y
{`` 
messagesInChatsaa '
=aa( )
serverResponseaa* 8
.aa8 9
ObjectSavedaa9 D
.aaD E
ToListaaE K
(aaK L
)aaL M
;aaM N
LoadChatbb  
(bb  !
)bb! "
;bb" #
}cc 
}dd 
}ee 
catchff 
(ff %
EndpointNotFoundExceptionff ,
exff- /
)ff/ 0
{gg 
HandleExceptionhh 
(hh  
exhh  "
,hh" #

Propertieshh$ .
.hh. /
	Resourceshh/ 8
.hh8 9%
lblFailRegistryToCallBackhh9 R
+hhS T
$strhhU Z
+hh[ \

Propertieshh] g
.hhg h
	Resourceshhh q
.hhq r 
lblEndPointNotFound	hhr Ö
)
hhÖ Ü
;
hhÜ á
}ii 
catchjj 
(jj /
#CommunicationObjectFaultedExceptionjj 6
exjj7 9
)jj9 :
{kk 
HandleExceptionll 
(ll  
exll  "
,ll" #

Propertiesll$ .
.ll. /
	Resourcesll/ 8
.ll8 9%
lblFailRegistryToCallBackll9 R
+llS T
$strllU Z
+ll[ \

Propertiesll] g
.llg h
	Resourcesllh q
.llq r%
lblComunicationException	llr ä
)
llä ã
;
llã å
}mm 
catchnn 
(nn 
TimeoutExceptionnn #
exnn$ &
)nn& '
{oo 
HandleExceptionpp 
(pp  
expp  "
,pp" #

Propertiespp$ .
.pp. /
	Resourcespp/ 8
.pp8 9%
lblFailRegistryToCallBackpp9 R
+ppS T
$strppU Z
+pp[ \

Propertiespp] g
.ppg h
	Resourcespph q
.ppq r
lblTimeException	ppr Ç
)
ppÇ É
;
ppÉ Ñ
}qq 
catchrr 
(rr "
CommunicationExceptionrr )
exrr* ,
)rr, -
{ss 
HandleExceptiontt 
(tt  
extt  "
,tt" #

Propertiestt$ .
.tt. /
	Resourcestt/ 8
.tt8 9%
lblFailRegistryToCallBacktt9 R
+ttS T
$strttU Z
+tt[ \

Propertiestt] g
.ttg h
	Resourcestth q
.ttq r 
lblWithoutConection	ttr Ö
)
ttÖ Ü
;
ttÜ á
}uu 
catchvv 
(vv 
SocketExceptionvv "
exvv# %
)vv% &
{ww 
HandleExceptionxx 
(xx  
exxx  "
,xx" #

Propertiesxx$ .
.xx. /
	Resourcesxx/ 8
.xx8 9%
lblFailRegistryToCallBackxx9 R
+xxS T
$strxxU Z
+xx[ \

Propertiesxx] g
.xxg h
	Resourcesxxh q
.xxq r 
lblWithoutConection	xxr Ö
)
xxÖ Ü
;
xxÜ á
}yy 
}zz 	
public|| 
void|| 
LoadChat|| 
(|| 
)|| 
{}} 	
stpChat~~ 
.~~ 
Children~~ 
.~~ 
Clear~~ "
(~~" #
)~~# $
;~~$ %
foreach 
( 
var 
item 
in  
messagesInChats! 0
)0 1
{
ÄÄ 
ChatMessageCard
ÅÅ 
chatMessageCard
ÅÅ  /
=
ÅÅ0 1
new
ÅÅ2 5
ChatMessageCard
ÅÅ6 E
(
ÅÅE F
item
ÅÅF J
.
ÅÅJ K
UserName
ÅÅK S
,
ÅÅS T
item
ÅÅU Y
.
ÅÅY Z
MessageToSend
ÅÅZ g
)
ÅÅg h
;
ÅÅh i
if
ÇÇ 
(
ÇÇ 
item
ÇÇ 
.
ÇÇ 
IdUser
ÇÇ 
==
ÇÇ  "
userSingleton
ÇÇ# 0
.
ÇÇ0 1
IdUser
ÇÇ1 7
)
ÇÇ7 8
{
ÉÉ 
chatMessageCard
ÑÑ #
.
ÑÑ# $!
HorizontalAlignment
ÑÑ$ 7
=
ÑÑ8 9!
HorizontalAlignment
ÑÑ: M
.
ÑÑM N
Right
ÑÑN S
;
ÑÑS T
}
ÖÖ 
else
ÜÜ 
{
áá 
chatMessageCard
àà #
.
àà# $!
HorizontalAlignment
àà$ 7
=
àà8 9!
HorizontalAlignment
àà: M
.
ààM N
Left
ààN R
;
ààR S
}
ââ 
stpChat
ää 
.
ää 
Children
ää  
.
ää  !
Add
ää! $
(
ää$ %
chatMessageCard
ää% 4
)
ää4 5
;
ää5 6
}
ãã 
}
åå 	
private
éé 
void
éé 
ClickCloseChat
éé #
(
éé# $
object
éé$ *
sender
éé+ 1
,
éé1 2"
MouseButtonEventArgs
éé3 G
e
ééH I
)
ééI J
{
èè 	
	lobbyPage
êê 
.
êê +
CloseSubFrameOfChatAndFriends
êê 3
(
êê3 4
)
êê4 5
;
êê5 6
}
ëë 	
private
ìì 
void
ìì 
ClickSendMessage
ìì %
(
ìì% &
object
ìì& ,
sender
ìì- 3
,
ìì3 4"
MouseButtonEventArgs
ìì5 I
e
ììJ K
)
ììK L
{
îî 	
try
ïï 
{
ññ 
string
óó 
message
óó 
=
óó  
txbMessageToSend
óó! 1
.
óó1 2
Text
óó2 6
;
óó6 7
if
òò 
(
òò 
!
òò 
string
òò 
.
òò 
IsNullOrEmpty
òò )
(
òò) *
message
òò* 1
)
òò1 2
)
òò2 3
{
ôô &
LiveChatOperationsClient
öö ,
liveChatProxy
öö- :
=
öö; <
new
öö= @
(
öö@ A
)
ööA B
;
ööB C
liveChatProxy
õõ !
.
õõ! "
SendMessage
õõ" -
(
õõ- .
userSingleton
õõ. ;
.
õõ; <
IdUser
õõ< B
,
õõB C
roomCode
õõD L
,
õõL M
userSingleton
õõN [
.
õõ[ \
UserName
õõ\ d
,
õõd e
message
õõf m
)
õõm n
;
õõn o
MessageChat
úú 
messageChat
úú  +
=
úú, -
new
úú. 1
MessageChat
úú2 =
(
úú= >
)
úú> ?
;
úú? @
messageChat
ùù 
.
ùù  
IdUser
ùù  &
=
ùù' (
userSingleton
ùù) 6
.
ùù6 7
IdUser
ùù7 =
;
ùù= >
messageChat
ûû 
.
ûû  
UserName
ûû  (
=
ûû) *
userSingleton
ûû+ 8
.
ûû8 9
UserName
ûû9 A
;
ûûA B
messageChat
üü 
.
üü  
MessageToSend
üü  -
=
üü. /
message
üü0 7
;
üü7 8
messagesInChats
†† #
.
††# $
Add
††$ '
(
††' (
messageChat
††( 3
)
††3 4
;
††4 5
ChatMessageCard
°° #
chatMessageCard
°°$ 3
=
°°4 5
new
°°6 9
ChatMessageCard
°°: I
(
°°I J
userSingleton
°°J W
.
°°W X
UserName
°°X `
,
°°` a
message
°°b i
)
°°i j
;
°°j k
chatMessageCard
¢¢ #
.
¢¢# $!
HorizontalAlignment
¢¢$ 7
=
¢¢8 9!
HorizontalAlignment
¢¢: M
.
¢¢M N
Right
¢¢N S
;
¢¢S T
stpChat
££ 
.
££ 
Children
££ $
.
££$ %
Add
££% (
(
££( )
chatMessageCard
££) 8
)
££8 9
;
££9 :
txbMessageToSend
§§ $
.
§§$ %
Text
§§% )
=
§§* +
string
§§, 2
.
§§2 3
Empty
§§3 8
;
§§8 9
}
•• 
}
¶¶ 
catch
ßß 
(
ßß '
EndpointNotFoundException
ßß ,
ex
ßß- /
)
ßß/ 0
{
®® %
ExceptionHandlerForLogs
©© '
.
©©' (
LogException
©©( 4
(
©©4 5
ex
©©5 7
,
©©7 8!
ExceptionDictionary
©©9 L
.
©©L M
FATAL_EXCEPTION
©©M \
)
©©\ ]
;
©©] ^
messagesInChats
™™ 
.
™™  
Add
™™  #
(
™™# $
new
™™$ '
MessageChat
™™( 3
(
™™3 4
)
™™4 5
{
™™6 7
IdUser
™™8 >
=
™™? @
$num
™™A B
,
™™B C
MessageToSend
™™D Q
=
™™R S

Properties
™™T ^
.
™™^ _
	Resources
™™_ h
.
™™h i,
txbFailToSendOrReciveAMessage™™i Ü
,™™Ü á
UserName™™à ê
=™™ë í

Properties™™ì ù
.™™ù û
	Resources™™û ß
.™™ß ®
txbErrorTitle™™® µ
}™™∂ ∑
)™™∑ ∏
;™™∏ π
}
´´ 
catch
¨¨ 
(
¨¨ 1
#CommunicationObjectFaultedException
¨¨ 6
ex
¨¨7 9
)
¨¨9 :
{
≠≠ %
ExceptionHandlerForLogs
ÆÆ '
.
ÆÆ' (
LogException
ÆÆ( 4
(
ÆÆ4 5
ex
ÆÆ5 7
,
ÆÆ7 8!
ExceptionDictionary
ÆÆ9 L
.
ÆÆL M
FATAL_EXCEPTION
ÆÆM \
)
ÆÆ\ ]
;
ÆÆ] ^
messagesInChats
ØØ 
.
ØØ  
Add
ØØ  #
(
ØØ# $
new
ØØ$ '
MessageChat
ØØ( 3
(
ØØ3 4
)
ØØ4 5
{
ØØ6 7
IdUser
ØØ8 >
=
ØØ? @
$num
ØØA B
,
ØØB C
MessageToSend
ØØD Q
=
ØØR S

Properties
ØØT ^
.
ØØ^ _
	Resources
ØØ_ h
.
ØØh i,
txbFailToSendOrReciveAMessageØØi Ü
,ØØÜ á
UserNameØØà ê
=ØØë í

PropertiesØØì ù
.ØØù û
	ResourcesØØû ß
.ØØß ®
txbErrorTitleØØ® µ
}ØØ∂ ∑
)ØØ∑ ∏
;ØØ∏ π
}
∞∞ 
catch
±± 
(
±± 
TimeoutException
±± #
ex
±±$ &
)
±±& '
{
≤≤ %
ExceptionHandlerForLogs
≥≥ '
.
≥≥' (
LogException
≥≥( 4
(
≥≥4 5
ex
≥≥5 7
,
≥≥7 8!
ExceptionDictionary
≥≥9 L
.
≥≥L M
FATAL_EXCEPTION
≥≥M \
)
≥≥\ ]
;
≥≥] ^
messagesInChats
¥¥ 
.
¥¥  
Add
¥¥  #
(
¥¥# $
new
¥¥$ '
MessageChat
¥¥( 3
(
¥¥3 4
)
¥¥4 5
{
¥¥6 7
IdUser
¥¥8 >
=
¥¥? @
$num
¥¥A B
,
¥¥B C
MessageToSend
¥¥D Q
=
¥¥R S

Properties
¥¥T ^
.
¥¥^ _
	Resources
¥¥_ h
.
¥¥h i,
txbFailToSendOrReciveAMessage¥¥i Ü
,¥¥Ü á
UserName¥¥à ê
=¥¥ë í

Properties¥¥ì ù
.¥¥ù û
	Resources¥¥û ß
.¥¥ß ®
txbErrorTitle¥¥® µ
}¥¥∂ ∑
)¥¥∑ ∏
;¥¥∏ π
}
µµ 
catch
∂∂ 
(
∂∂ $
CommunicationException
∂∂ )
ex
∂∂* ,
)
∂∂, -
{
∑∑ %
ExceptionHandlerForLogs
∏∏ '
.
∏∏' (
LogException
∏∏( 4
(
∏∏4 5
ex
∏∏5 7
,
∏∏7 8!
ExceptionDictionary
∏∏9 L
.
∏∏L M
FATAL_EXCEPTION
∏∏M \
)
∏∏\ ]
;
∏∏] ^
messagesInChats
ππ 
.
ππ  
Add
ππ  #
(
ππ# $
new
ππ$ '
MessageChat
ππ( 3
(
ππ3 4
)
ππ4 5
{
ππ6 7
IdUser
ππ8 >
=
ππ? @
$num
ππA B
,
ππB C
MessageToSend
ππD Q
=
ππR S

Properties
ππT ^
.
ππ^ _
	Resources
ππ_ h
.
ππh i,
txbFailToSendOrReciveAMessageππi Ü
,ππÜ á
UserNameππà ê
=ππë í

Propertiesππì ù
.ππù û
	Resourcesππû ß
.ππß ®
txbErrorTitleππ® µ
}ππ∂ ∑
)ππ∑ ∏
;ππ∏ π
}
∫∫ 
catch
ªª 
(
ªª 
SocketException
ªª "
ex
ªª# %
)
ªª% &
{
ºº %
ExceptionHandlerForLogs
ΩΩ '
.
ΩΩ' (
LogException
ΩΩ( 4
(
ΩΩ4 5
ex
ΩΩ5 7
,
ΩΩ7 8!
ExceptionDictionary
ΩΩ9 L
.
ΩΩL M
FATAL_EXCEPTION
ΩΩM \
)
ΩΩ\ ]
;
ΩΩ] ^
messagesInChats
ææ 
.
ææ  
Add
ææ  #
(
ææ# $
new
ææ$ '
MessageChat
ææ( 3
(
ææ3 4
)
ææ4 5
{
ææ6 7
IdUser
ææ8 >
=
ææ? @
$num
ææA B
,
ææB C
MessageToSend
ææD Q
=
ææR S

Properties
ææT ^
.
ææ^ _
	Resources
ææ_ h
.
ææh i,
txbFailToSendOrReciveAMessageææi Ü
,ææÜ á
UserNameææà ê
=ææë í

Propertiesææì ù
.ææù û
	Resourcesææû ß
.ææß ®
txbErrorTitleææ® µ
}ææ∂ ∑
)ææ∑ ∏
;ææ∏ π
}
øø 
}
¿¿ 	
public
¬¬ 
void
¬¬ 
ReceiveMessage
¬¬ "
(
¬¬" #/
!GenericClassOfMessageChatxY0a3WX4
¬¬# D
message
¬¬E L
)
¬¬L M
{
√√ 	
try
ƒƒ 
{
≈≈ 
if
∆∆ 
(
∆∆ 
message
∆∆ 
.
∆∆ 
	CodeEvent
∆∆ %
==
∆∆& (!
ExceptionDictionary
∆∆) <
.
∆∆< =
SUCCESFULL_EVENT
∆∆= M
)
∆∆M N
{
«« 
messagesInChats
»» #
.
»»# $
Add
»»$ '
(
»»' (
message
»»( /
.
»»/ 0
ObjectSaved
»»0 ;
)
»»; <
;
»»< =
}
…… 
}
   
catch
ÀÀ 
(
ÀÀ '
EndpointNotFoundException
ÀÀ ,
ex
ÀÀ- /
)
ÀÀ/ 0
{
ÃÃ %
ExceptionHandlerForLogs
ÕÕ '
.
ÕÕ' (
LogException
ÕÕ( 4
(
ÕÕ4 5
ex
ÕÕ5 7
,
ÕÕ7 8!
ExceptionDictionary
ÕÕ9 L
.
ÕÕL M
FATAL_EXCEPTION
ÕÕM \
)
ÕÕ\ ]
;
ÕÕ] ^
messagesInChats
ŒŒ 
.
ŒŒ  
Add
ŒŒ  #
(
ŒŒ# $
new
ŒŒ$ '
MessageChat
ŒŒ( 3
(
ŒŒ3 4
)
ŒŒ4 5
{
ŒŒ6 7
IdUser
ŒŒ8 >
=
ŒŒ? @
$num
ŒŒA B
,
ŒŒB C
MessageToSend
ŒŒD Q
=
ŒŒR S

Properties
ŒŒT ^
.
ŒŒ^ _
	Resources
ŒŒ_ h
.
ŒŒh i,
txbFailToSendOrReciveAMessageŒŒi Ü
,ŒŒÜ á
UserNameŒŒà ê
=ŒŒë í

PropertiesŒŒì ù
.ŒŒù û
	ResourcesŒŒû ß
.ŒŒß ®
txbErrorTitleŒŒ® µ
}ŒŒ∂ ∑
)ŒŒ∑ ∏
;ŒŒ∏ π
}
œœ 
catch
–– 
(
–– 1
#CommunicationObjectFaultedException
–– 6
ex
––7 9
)
––9 :
{
—— %
ExceptionHandlerForLogs
““ '
.
““' (
LogException
““( 4
(
““4 5
ex
““5 7
,
““7 8!
ExceptionDictionary
““9 L
.
““L M
FATAL_EXCEPTION
““M \
)
““\ ]
;
““] ^
messagesInChats
”” 
.
””  
Add
””  #
(
””# $
new
””$ '
MessageChat
””( 3
(
””3 4
)
””4 5
{
””6 7
IdUser
””8 >
=
””? @
$num
””A B
,
””B C
MessageToSend
””D Q
=
””R S

Properties
””T ^
.
””^ _
	Resources
””_ h
.
””h i,
txbFailToSendOrReciveAMessage””i Ü
,””Ü á
UserName””à ê
=””ë í

Properties””ì ù
.””ù û
	Resources””û ß
.””ß ®
txbErrorTitle””® µ
}””∂ ∑
)””∑ ∏
;””∏ π
}
‘‘ 
catch
’’ 
(
’’ 
TimeoutException
’’ #
ex
’’$ &
)
’’& '
{
÷÷ %
ExceptionHandlerForLogs
◊◊ '
.
◊◊' (
LogException
◊◊( 4
(
◊◊4 5
ex
◊◊5 7
,
◊◊7 8!
ExceptionDictionary
◊◊9 L
.
◊◊L M
FATAL_EXCEPTION
◊◊M \
)
◊◊\ ]
;
◊◊] ^
messagesInChats
ÿÿ 
.
ÿÿ  
Add
ÿÿ  #
(
ÿÿ# $
new
ÿÿ$ '
MessageChat
ÿÿ( 3
(
ÿÿ3 4
)
ÿÿ4 5
{
ÿÿ6 7
IdUser
ÿÿ8 >
=
ÿÿ? @
$num
ÿÿA B
,
ÿÿB C
MessageToSend
ÿÿD Q
=
ÿÿR S

Properties
ÿÿT ^
.
ÿÿ^ _
	Resources
ÿÿ_ h
.
ÿÿh i,
txbFailToSendOrReciveAMessageÿÿi Ü
,ÿÿÜ á
UserNameÿÿà ê
=ÿÿë í

Propertiesÿÿì ù
.ÿÿù û
	Resourcesÿÿû ß
.ÿÿß ®
txbErrorTitleÿÿ® µ
}ÿÿ∂ ∑
)ÿÿ∑ ∏
;ÿÿ∏ π
}
ŸŸ 
catch
⁄⁄ 
(
⁄⁄ $
CommunicationException
⁄⁄ )
ex
⁄⁄* ,
)
⁄⁄, -
{
€€ %
ExceptionHandlerForLogs
‹‹ '
.
‹‹' (
LogException
‹‹( 4
(
‹‹4 5
ex
‹‹5 7
,
‹‹7 8!
ExceptionDictionary
‹‹9 L
.
‹‹L M
FATAL_EXCEPTION
‹‹M \
)
‹‹\ ]
;
‹‹] ^
messagesInChats
›› 
.
››  
Add
››  #
(
››# $
new
››$ '
MessageChat
››( 3
(
››3 4
)
››4 5
{
››6 7
IdUser
››8 >
=
››? @
$num
››A B
,
››B C
MessageToSend
››D Q
=
››R S

Properties
››T ^
.
››^ _
	Resources
››_ h
.
››h i,
txbFailToSendOrReciveAMessage››i Ü
,››Ü á
UserName››à ê
=››ë í

Properties››ì ù
.››ù û
	Resources››û ß
.››ß ®
txbErrorTitle››® µ
}››∂ ∑
)››∑ ∏
;››∏ π
}
ﬁﬁ 
catch
ﬂﬂ 
(
ﬂﬂ 
SocketException
ﬂﬂ "
ex
ﬂﬂ# %
)
ﬂﬂ% &
{
‡‡ %
ExceptionHandlerForLogs
·· '
.
··' (
LogException
··( 4
(
··4 5
ex
··5 7
,
··7 8!
ExceptionDictionary
··9 L
.
··L M
FATAL_EXCEPTION
··M \
)
··\ ]
;
··] ^
messagesInChats
‚‚ 
.
‚‚  
Add
‚‚  #
(
‚‚# $
new
‚‚$ '
MessageChat
‚‚( 3
(
‚‚3 4
)
‚‚4 5
{
‚‚6 7
IdUser
‚‚8 >
=
‚‚? @
$num
‚‚A B
,
‚‚B C
MessageToSend
‚‚D Q
=
‚‚R S

Properties
‚‚T ^
.
‚‚^ _
	Resources
‚‚_ h
.
‚‚h i,
txbFailToSendOrReciveAMessage‚‚i Ü
,‚‚Ü á
UserName‚‚à ê
=‚‚ë í

Properties‚‚ì ù
.‚‚ù û
	Resources‚‚û ß
.‚‚ß ®
txbErrorTitle‚‚® µ
}‚‚∂ ∑
)‚‚∑ ∏
;‚‚∏ π
}
„„ 
LoadChat
‰‰ 
(
‰‰ 
)
‰‰ 
;
‰‰ 
}
ÂÂ 	
private
ÊÊ 
void
ÊÊ 
HandleException
ÊÊ $
(
ÊÊ$ %
	Exception
ÊÊ% .
ex
ÊÊ/ 1
,
ÊÊ1 2
string
ÊÊ3 9
errorMessage
ÊÊ: F
)
ÊÊF G
{
ÁÁ 	%
ExceptionHandlerForLogs
ËË #
.
ËË# $
LogException
ËË$ 0
(
ËË0 1
ex
ËË1 3
,
ËË3 4!
ExceptionDictionary
ËË5 H
.
ËËH I
FATAL_EXCEPTION
ËËI X
)
ËËX Y
;
ËËY Z
dialogMessage
ÈÈ 
=
ÈÈ 
new
ÈÈ &
ErrorMessageDialogWindow
ÈÈ  8
(
ÈÈ8 9

Properties
ÈÈ9 C
.
ÈÈC D
	Resources
ÈÈD M
.
ÈÈM N
txbErrorTitle
ÈÈN [
,
ÈÈ[ \
errorMessage
ÈÈ] i
,
ÈÈi j
Application
ÈÈk v
.
ÈÈv w
Current
ÈÈw ~
.
ÈÈ~ 

MainWindowÈÈ â
)ÈÈâ ä
;ÈÈä ã
}
ÍÍ 	
}
ÏÏ 
}ÌÌ âŒ
hC:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameClient\Pages\LobbyPage.xaml.cs
	namespace 	
JeopardyGame
 
. 
Pages 
{ 
public 

partial 
class 
	LobbyPage "
:# $
Page% )
,) *!
ILobbyActionsCallback+ @
,@ A
ILiveChatCallbackB S
,S T+
INotifyUserAvailabilityCallbackU t
{ 
private 
ActiveFriends 
activeUsersInstance 1
=2 3
null4 8
;8 9
private 
LiveChat 
liveChatInstance )
=* +
null, 0
;0 1
private 
const 
int 
NULL_INT_VALUE (
=) *
$num+ ,
;, -
private   
const   
int   
TEAM_LEFT_SIDE   (
=  ) *
$num  + ,
;  , -
private!! 
const!! 
int!! 
TEMA_RIGHT_SIDE!! )
=!!* +
$num!!, -
;!!- .
private"" 
Random"" 
generateAleatory"" '
;""' (
private## 
int## 
roomCode## 
;## 
private$$ 
bool$$ 
isAdminOfLobby$$ #
;$$# $
private%% 
List%% 
<%% 
PlayerInLobby%% "
>%%" # 
currentPlayerInLobby%%$ 8
=%%9 :
new%%; >
List%%? C
<%%C D
PlayerInLobby%%D Q
>%%Q R
(%%R S
)%%S T
;%%T U
private&& 
UserSingleton&& 
userSingleton&& +
;&&+ ,
private'' 
Window'' 
dialogMessage'' $
;''$ %
public)) 
	LobbyPage)) 
()) 
))) 
{** 	
InitializeComponent++ 
(++  
)++  !
;++! "
isAdminOfLobby,, 
=,, 
true,, !
;,,! "
Loaded-- 
+=-- $
LoadedPrepareWindowAdmin-- .
;--. /
}.. 	
private00 
void00 $
LoadedPrepareWindowAdmin00 -
(00- .
object00. 4
sender005 ;
,00; <
RoutedEventArgs00= L
e00M N
)00N O
{11 	
PrepareWindow22 
(22 
)22 
;22 '
LobbyActionsOperationClient33 '
lobbyActionsProxy33( 9
=33: ;
new33< ?
(33? @
)33@ A
;33A B
lobbyActionsProxy44 
.44 '
SelectQuestionsForGameAsync44 9
(449 :
roomCode44: B
)44B C
;44C D
}55 	
public77 
	LobbyPage77 
(77 
int77 
roomCode77 %
)77% &
{88 	
InitializeComponent99 
(99  
)99  !
;99! "
this:: 
.:: 
roomCode:: 
=:: 
roomCode:: $
;::$ %
isAdminOfLobby;; 
=;; 
false;; "
;;;" #
Loaded<< 
+=<< %
LoadedPrepareWindowPlayer<< /
;<</ 0
}== 	
private@@ 
void@@ %
LoadedPrepareWindowPlayer@@ .
(@@. /
object@@/ 5
sender@@6 <
,@@< =
RoutedEventArgs@@> M
e@@N O
)@@O P
{AA 	
PrepareWindowBB 
(BB 
)BB 
;BB 
}CC 	
privateEE 
voidEE 
PrepareWindowEE "
(EE" #
)EE# $
{FF 	
userSingletonGG 
=GG 
UserSingletonGG )
.GG) *
GetMainUserGG* 5
(GG5 6
)GG6 7
;GG7 8
tryHH 
{II 
InstanceContextJJ 
contextJJ  '
=JJ( )
newJJ* -
InstanceContextJJ. =
(JJ= >
thisJJ> B
)JJB C
;JJC D
LobbyActionsClientLL "
lobbyActionsProxyLL# 4
=LL5 6
newLL7 :
LobbyActionsClientLL; M
(LLM N
contextLLN U
)LLU V
;LLV W
ifNN 
(NN 
isAdminOfLobbyNN "
)NN" #
{OO 
CreateNewlobbyPP "
(PP" #
lobbyActionsProxyPP# 4
)PP4 5
;PP5 6
}QQ 
elseRR 
{SS 
	JoinLobbyTT 
(TT 
lobbyActionsProxyTT /
)TT/ 0
;TT0 1
}UU 

GetPlayersVV 
(VV 
)VV 
;VV !
PrepareChatAndFriendsWW %
(WW% &
)WW& '
;WW' (
lblAleatoryCodeXX 
.XX  
ContentXX  '
=XX( )
roomCodeXX* 2
;XX2 3
SetPlayerInLabelsYY !
(YY! "
)YY" #
;YY# $#
NotifyFriendsIamPlayingZZ '
(ZZ' (
)ZZ( )
;ZZ) *
}[[ 
catch\\ 
(\\ 
SocketException\\ "
ex\\# %
)\\% &
{]] 
HandleException^^ 
(^^  
ex^^  "
,^^" #

Properties^^$ .
.^^. /
	Resources^^/ 8
.^^8 9#
lblFailtToEnterTheLobby^^9 P
+^^Q R
$str^^S X
+^^Y Z

Properties^^[ e
.^^e f
	Resources^^f o
.^^o p 
lblEndPointNotFound	^^p É
)
^^É Ñ
;
^^Ñ Ö
}__ 
catch`` 
(`` %
EndpointNotFoundException`` ,
ex``- /
)``/ 0
{aa 
HandleExceptionbb 
(bb  
exbb  "
,bb" #

Propertiesbb$ .
.bb. /
	Resourcesbb/ 8
.bb8 9#
lblFailtToEnterTheLobbybb9 P
+bbQ R
$strbbS X
+bbY Z

Propertiesbb[ e
.bbe f
	Resourcesbbf o
.bbo p 
lblEndPointNotFound	bbp É
)
bbÉ Ñ
;
bbÑ Ö
}cc 
catchdd 
(dd /
#CommunicationObjectFaultedExceptiondd 6
exdd7 9
)dd9 :
{ee 
HandleExceptionff 
(ff  
exff  "
,ff" #

Propertiesff$ .
.ff. /
	Resourcesff/ 8
.ff8 9#
lblFailtToEnterTheLobbyff9 P
+ffQ R
$strffS X
+ffY Z

Propertiesff[ e
.ffe f
	Resourcesfff o
.ffo p%
lblComunicationException	ffp à
)
ffà â
;
ffâ ä
}gg 
catchhh 
(hh 
TimeoutExceptionhh #
exhh$ &
)hh& '
{ii 
HandleExceptionjj 
(jj  
exjj  "
,jj" #

Propertiesjj$ .
.jj. /
	Resourcesjj/ 8
.jj8 9#
lblFailtToEnterTheLobbyjj9 P
+jjQ R
$strjjS X
+jjY Z

Propertiesjj[ e
.jje f
	Resourcesjjf o
.jjo p
lblTimeException	jjp Ä
)
jjÄ Å
;
jjÅ Ç
}kk 
catchll 
(ll "
CommunicationExceptionll )
exll* ,
)ll, -
{mm 
HandleExceptionnn 
(nn  
exnn  "
,nn" #

Propertiesnn$ .
.nn. /
	Resourcesnn/ 8
.nn8 9#
lblFailtToEnterTheLobbynn9 P
+nnQ R
$strnnS X
+nnY Z

Propertiesnn[ e
.nne f
	Resourcesnnf o
.nno p 
lblWithoutConection	nnp É
)
nnÉ Ñ
;
nnÑ Ö
}oo 
}qq 	
privatess 
voidss !
PrepareChatAndFriendsss *
(ss* +
)ss+ ,
{tt 	
ifuu 
(uu 
liveChatInstanceuu  
==uu! #
nulluu$ (
)uu( )
{vv 
liveChatInstanceww  
=ww! "
newww# &
LiveChatww' /
(ww/ 0
)ww0 1
;ww1 2
liveChatInstancexx  
.xx  !
	StartPagexx! *
(xx* +
isAdminOfLobbyxx+ 9
,xx9 :
roomCodexx; C
,xxC D
thisxxE I
)xxI J
;xxJ K
}yy 
ifzz 
(zz 
activeUsersInstancezz #
==zz$ &
nullzz' +
)zz+ ,
{{{ 
activeUsersInstance|| #
=||$ %
new||& )
ActiveFriends||* 7
(||7 8
userSingleton||8 E
.||E F
IdUser||F L
)||L M
;||M N
activeUsersInstance}} #
.}}# $
	StartPage}}$ -
(}}- .
this}}. 2
)}}2 3
;}}3 4
}~~ 
} 	
private
ÅÅ 
void
ÅÅ 
CreateNewlobby
ÅÅ #
(
ÅÅ# $ 
LobbyActionsClient
ÅÅ$ 6
lobbyActionsProxy
ÅÅ7 H
)
ÅÅH I
{
ÇÇ 	
try
ÉÉ 
{
ÑÑ 
ThreadLocal
ÖÖ 
<
ÖÖ 
Random
ÖÖ "
>
ÖÖ" #
generateAleatory
ÖÖ$ 4
=
ÖÖ5 6
new
ÖÖ7 :
ThreadLocal
ÖÖ; F
<
ÖÖF G
Random
ÖÖG M
>
ÖÖM N
(
ÖÖN O
(
ÖÖO P
)
ÖÖP Q
=>
ÖÖR T
new
ÖÖU X
Random
ÖÖY _
(
ÖÖ_ `
)
ÖÖ` a
)
ÖÖa b
;
ÖÖb c
int
ÜÜ 
aleatoryNumber
ÜÜ "
=
ÜÜ# $
generateAleatory
ÜÜ% 5
.
ÜÜ5 6
Value
ÜÜ6 ;
.
ÜÜ; <
Next
ÜÜ< @
(
ÜÜ@ A
$num
ÜÜA F
,
ÜÜF G
$num
ÜÜH M
)
ÜÜM N
;
ÜÜN O
roomCode
áá 
=
áá 
aleatoryNumber
áá )
;
áá) *
var
àà 
newLobby
àà 
=
àà 
lobbyActionsProxy
àà 0
.
àà0 1
CreateNewLobby
àà1 ?
(
àà? @
roomCode
àà@ H
,
ààH I
userSingleton
ààJ W
.
ààW X
IdUser
ààX ^
)
àà^ _
;
àà_ `
if
ââ 
(
ââ 
newLobby
ââ 
.
ââ 
	CodeEvent
ââ %
!=
ââ& (!
ExceptionDictionary
ââ) <
.
ââ< =
SUCCESFULL_EVENT
ââ= M
)
ââM N
{
ää 
throw
ãã 
new
ãã $
CommunicationException
ãã 4
(
ãã4 5
)
ãã5 6
;
ãã6 7
}
åå 
GameCodeContainer
çç !
.
çç! "
RoomCode
çç" *
=
çç+ ,
roomCode
çç- 5
;
çç5 6
}
éé 
catch
èè 
(
èè '
EndpointNotFoundException
èè ,
)
èè, -
{
êê 
throw
ëë 
new
ëë '
EndpointNotFoundException
ëë 3
(
ëë3 4
)
ëë4 5
;
ëë5 6
}
íí 
catch
ìì 
(
ìì 1
#CommunicationObjectFaultedException
ìì 6
)
ìì6 7
{
îî 
throw
ïï 
new
ïï 1
#CommunicationObjectFaultedException
ïï =
(
ïï= >
)
ïï> ?
;
ïï? @
}
ññ 
catch
óó 
(
óó 
TimeoutException
óó #
)
óó# $
{
òò 
throw
ôô 
new
ôô 
TimeoutException
ôô *
(
ôô* +
)
ôô+ ,
;
ôô, -
}
öö 
catch
õõ 
(
õõ $
CommunicationException
õõ )
)
õõ) *
{
úú 
throw
ùù 
new
ùù $
CommunicationException
ùù 0
(
ùù0 1
)
ùù1 2
;
ùù2 3
}
ûû 
}
üü 	
private
°° 
void
°° 
	JoinLobby
°° 
(
°°  
LobbyActionsClient
°° 1
lobbyActionsProxy
°°2 C
)
°°C D
{
¢¢ 	
try
££ 
{
§§ 
GenericClassOfint
•• !

successful
••" ,
=
••- .
lobbyActionsProxy
••/ @
.
••@ A
JoinIntoLobby
••A N
(
••N O
roomCode
••O W
,
••W X
userSingleton
••Y f
.
••f g
IdUser
••g m
)
••m n
;
••n o
if
¶¶ 
(
¶¶ 

successful
¶¶ 
.
¶¶ 
	CodeEvent
¶¶ (
==
¶¶) +!
ExceptionDictionary
¶¶, ?
.
¶¶? @
SUCCESFULL_EVENT
¶¶@ P
)
¶¶P Q
{
ßß )
LobbyActionsOperationClient
®® /(
lobbyActionsOperationProxy
®®0 J
=
®®K L
new
®®M P
(
®®P Q
)
®®Q R
;
®®R S(
lobbyActionsOperationProxy
©© .
.
©©. /!
NotifyPlayerInLobby
©©/ B
(
©©B C
roomCode
©©C K
,
©©K L
userSingleton
©©M Z
.
©©Z [
IdUser
©©[ a
)
©©a b
;
©©b c
}
™™ 
	chbTeamUp
´´ 
.
´´ 
	IsEnabled
´´ #
=
´´$ %
false
´´& +
;
´´+ ,
}
¨¨ 
catch
≠≠ 
(
≠≠ '
EndpointNotFoundException
≠≠ ,
)
≠≠, -
{
ÆÆ 
throw
ØØ 
new
ØØ '
EndpointNotFoundException
ØØ 3
(
ØØ3 4
)
ØØ4 5
;
ØØ5 6
}
∞∞ 
catch
±± 
(
±± 1
#CommunicationObjectFaultedException
±± 6
)
±±6 7
{
≤≤ 
throw
≥≥ 
new
≥≥ 1
#CommunicationObjectFaultedException
≥≥ =
(
≥≥= >
)
≥≥> ?
;
≥≥? @
}
¥¥ 
catch
µµ 
(
µµ 
TimeoutException
µµ #
)
µµ# $
{
∂∂ 
throw
∑∑ 
new
∑∑ 
TimeoutException
∑∑ *
(
∑∑* +
)
∑∑+ ,
;
∑∑, -
}
∏∏ 
catch
ππ 
(
ππ $
CommunicationException
ππ )
)
ππ) *
{
∫∫ 
throw
ªª 
new
ªª $
CommunicationException
ªª 0
(
ªª0 1
)
ªª1 2
;
ªª2 3
}
ºº 
}
ΩΩ 	
private
øø 
void
øø 

GetPlayers
øø 
(
øø  
)
øø  !
{
¿¿ 	
try
¡¡ 
{
¬¬ )
LobbyActionsOperationClient
√√ +
lobbyActionsProxy
√√, =
=
√√> ?
new
√√@ C
(
√√C D
)
√√D E
;
√√E F
var
ƒƒ 
playersInLobby
ƒƒ "
=
ƒƒ# $
lobbyActionsProxy
ƒƒ% 6
.
ƒƒ6 7(
GetAllCurrentPlayerInLobby
ƒƒ7 Q
(
ƒƒQ R
roomCode
ƒƒR Z
,
ƒƒZ [
userSingleton
ƒƒ\ i
.
ƒƒi j
IdUser
ƒƒj p
)
ƒƒp q
;
ƒƒq r
if
≈≈ 
(
≈≈ 
playersInLobby
≈≈ "
.
≈≈" #
	CodeEvent
≈≈# ,
==
≈≈- /!
ExceptionDictionary
≈≈0 C
.
≈≈C D
SUCCESFULL_EVENT
≈≈D T
)
≈≈T U
{
∆∆ "
currentPlayerInLobby
«« (
=
««) *
playersInLobby
««+ 9
.
««9 :
ObjectSaved
««: E
.
««E F
ToList
««F L
(
««L M
)
««M N
;
««N O
}
»» 
}
   
catch
ÀÀ 
(
ÀÀ '
EndpointNotFoundException
ÀÀ ,
)
ÀÀ, -
{
ÃÃ 
throw
ÕÕ 
new
ÕÕ '
EndpointNotFoundException
ÕÕ 3
(
ÕÕ3 4
)
ÕÕ4 5
;
ÕÕ5 6
}
ŒŒ 
catch
œœ 
(
œœ 1
#CommunicationObjectFaultedException
œœ 6
)
œœ6 7
{
–– 
throw
—— 
new
—— 1
#CommunicationObjectFaultedException
—— =
(
——= >
)
——> ?
;
——? @
}
““ 
catch
”” 
(
”” 
TimeoutException
”” #
)
””# $
{
‘‘ 
throw
’’ 
new
’’ 
TimeoutException
’’ *
(
’’* +
)
’’+ ,
;
’’, -
}
÷÷ 
catch
◊◊ 
(
◊◊ $
CommunicationException
◊◊ )
)
◊◊) *
{
ÿÿ 
throw
ŸŸ 
new
ŸŸ $
CommunicationException
ŸŸ 0
(
ŸŸ0 1
)
ŸŸ1 2
;
ŸŸ2 3
}
⁄⁄ 
}
€€ 	
private
›› 
void
›› 
SetPlayerInLabels
›› &
(
››& '
)
››' (
{
ﬁﬁ 	
CleanAllLabels
ﬂﬂ 
(
ﬂﬂ 
)
ﬂﬂ 
;
ﬂﬂ 
if
‡‡ 
(
‡‡ "
currentPlayerInLobby
‡‡ $
!=
‡‡% '
null
‡‡( ,
)
‡‡, -
{
·· 
foreach
‚‚ 
(
‚‚ 
var
‚‚ 
item
‚‚ !
in
‚‚" $"
currentPlayerInLobby
‚‚% 9
)
‚‚9 :
{
„„ 
switch
‰‰ 
(
‰‰ 
item
‰‰  
.
‰‰  !#
NumberOfPlayerInLobby
‰‰! 6
)
‰‰6 7
{
ÂÂ 
case
ÊÊ 
$num
ÊÊ 
:
ÊÊ 

ShowPlayer
ÁÁ &
(
ÁÁ& '
lblLeaderBlue
ÁÁ' 4
,
ÁÁ4 5
lblLeaderRed
ÁÁ6 B
,
ÁÁB C
brdLeaderBlue
ÁÁD Q
,
ÁÁQ R
brdLeaderRed
ÁÁS _
,
ÁÁ_ `
item
ÁÁa e
.
ÁÁe f
UserName
ÁÁf n
,
ÁÁn o
item
ÁÁp t
.
ÁÁt u

SideOfTeam
ÁÁu 
)ÁÁ Ä
;ÁÁÄ Å
break
ËË !
;
ËË! "
case
ÈÈ 
$num
ÈÈ 
:
ÈÈ 

ShowPlayer
ÍÍ &
(
ÍÍ& '
lblPlayer2Blue
ÍÍ' 5
,
ÍÍ5 6
lblPlayer2Red
ÍÍ7 D
,
ÍÍD E
brdPlayer2Blue
ÍÍF T
,
ÍÍT U
brdPlayer2Red
ÍÍV c
,
ÍÍc d
item
ÍÍe i
.
ÍÍi j
UserName
ÍÍj r
,
ÍÍr s
item
ÍÍt x
.
ÍÍx y

SideOfTeamÍÍy É
)ÍÍÉ Ñ
;ÍÍÑ Ö
break
ÎÎ !
;
ÎÎ! "
case
ÏÏ 
$num
ÏÏ 
:
ÏÏ 

ShowPlayer
ÌÌ &
(
ÌÌ& '
lblPlayer3Blue
ÌÌ' 5
,
ÌÌ5 6
lblPlayer3Red
ÌÌ7 D
,
ÌÌD E
brdPlayer3Blue
ÌÌF T
,
ÌÌT U
brdPlayer3Red
ÌÌV c
,
ÌÌc d
item
ÌÌe i
.
ÌÌi j
UserName
ÌÌj r
,
ÌÌr s
item
ÌÌt x
.
ÌÌx y

SideOfTeamÌÌy É
)ÌÌÉ Ñ
;ÌÌÑ Ö
break
ÓÓ !
;
ÓÓ! "
case
ÔÔ 
$num
ÔÔ 
:
ÔÔ 

ShowPlayer
 &
(
& '
lblPlayer4Blue
' 5
,
5 6
lblPlayer4Red
7 D
,
D E
brdPlayer4Blue
F T
,
T U
brdPlayer4Red
V c
,
c d
item
e i
.
i j
UserName
j r
,
r s
item
t x
.
x y

SideOfTeamy É
)É Ñ
;Ñ Ö
break
ÒÒ !
;
ÒÒ! "
}
ÚÚ 
}
ÛÛ 
}
ÙÙ 
}
ıı 	
private
˜˜ 
void
˜˜ 
CleanAllLabels
˜˜ #
(
˜˜# $
)
˜˜$ %
{
¯¯ 	
brdLeaderBlue
˘˘ 
.
˘˘ 

Visibility
˘˘ $
=
˘˘% &

Visibility
˘˘' 1
.
˘˘1 2
Hidden
˘˘2 8
;
˘˘8 9
brdLeaderRed
˙˙ 
.
˙˙ 

Visibility
˙˙ #
=
˙˙$ %

Visibility
˙˙& 0
.
˙˙0 1
Hidden
˙˙1 7
;
˙˙7 8
brdPlayer2Blue
˚˚ 
.
˚˚ 

Visibility
˚˚ %
=
˚˚& '

Visibility
˚˚( 2
.
˚˚2 3
Hidden
˚˚3 9
;
˚˚9 :
brdPlayer2Red
¸¸ 
.
¸¸ 

Visibility
¸¸ $
=
¸¸% &

Visibility
¸¸' 1
.
¸¸1 2
Hidden
¸¸2 8
;
¸¸8 9
brdPlayer3Blue
˝˝ 
.
˝˝ 

Visibility
˝˝ %
=
˝˝& '

Visibility
˝˝( 2
.
˝˝2 3
Hidden
˝˝3 9
;
˝˝9 :
brdPlayer3Red
˛˛ 
.
˛˛ 

Visibility
˛˛ $
=
˛˛% &

Visibility
˛˛' 1
.
˛˛1 2
Hidden
˛˛2 8
;
˛˛8 9
brdPlayer4Blue
ˇˇ 
.
ˇˇ 

Visibility
ˇˇ %
=
ˇˇ& '

Visibility
ˇˇ( 2
.
ˇˇ2 3
Hidden
ˇˇ3 9
;
ˇˇ9 :
brdPlayer4Red
ÄÄ 
.
ÄÄ 

Visibility
ÄÄ $
=
ÄÄ% &

Visibility
ÄÄ' 1
.
ÄÄ1 2
Hidden
ÄÄ2 8
;
ÄÄ8 9
lblLeaderBlue
ÅÅ 
.
ÅÅ 
Content
ÅÅ !
=
ÅÅ" #
string
ÅÅ$ *
.
ÅÅ* +
Empty
ÅÅ+ 0
;
ÅÅ0 1
lblLeaderRed
ÇÇ 
.
ÇÇ 
Content
ÇÇ  
=
ÇÇ! "
string
ÇÇ# )
.
ÇÇ) *
Empty
ÇÇ* /
;
ÇÇ/ 0
lblPlayer2Blue
ÉÉ 
.
ÉÉ 
Content
ÉÉ "
=
ÉÉ# $
string
ÉÉ% +
.
ÉÉ+ ,
Empty
ÉÉ, 1
;
ÉÉ1 2
lblPlayer2Red
ÑÑ 
.
ÑÑ 
Content
ÑÑ !
=
ÑÑ" #
string
ÑÑ$ *
.
ÑÑ* +
Empty
ÑÑ+ 0
;
ÑÑ0 1
lblPlayer3Blue
ÖÖ 
.
ÖÖ 
Content
ÖÖ "
=
ÖÖ# $
string
ÖÖ% +
.
ÖÖ+ ,
Empty
ÖÖ, 1
;
ÖÖ1 2
lblPlayer3Red
ÜÜ 
.
ÜÜ 
Content
ÜÜ !
=
ÜÜ" #
string
ÜÜ$ *
.
ÜÜ* +
Empty
ÜÜ+ 0
;
ÜÜ0 1
lblPlayer4Blue
áá 
.
áá 
Content
áá "
=
áá# $
string
áá% +
.
áá+ ,
Empty
áá, 1
;
áá1 2
lblPlayer4Red
àà 
.
àà 
Content
àà !
=
àà" #
string
àà$ *
.
àà* +
Empty
àà+ 0
;
àà0 1
}
ââ 	
private
ãã 
void
ãã 

ShowPlayer
ãã 
(
ãã  
Label
ãã  %
	labelBlue
ãã& /
,
ãã/ 0
Label
ãã1 6
labelRed
ãã7 ?
,
ãã? @
Border
ããA G

borderBlue
ããH R
,
ããR S
Border
ããT Z
	borderRed
ãã[ d
,
ããd e
String
ããf l
userName
ããm u
,
ããu v
int
ããw z
side
ãã{ 
)ãã Ä
{
åå 	
if
çç 
(
çç 
side
çç 
==
çç 
TEAM_LEFT_SIDE
çç &
)
çç& '
{
éé 
	labelBlue
èè 
.
èè 
Content
èè !
=
èè" #
userName
èè$ ,
;
èè, -

borderBlue
êê 
.
êê 

Visibility
êê %
=
êê& '

Visibility
êê( 2
.
êê2 3
Visible
êê3 :
;
êê: ;
	borderRed
ëë 
.
ëë 

Visibility
ëë $
=
ëë% &

Visibility
ëë' 1
.
ëë1 2
Hidden
ëë2 8
;
ëë8 9
}
íí 
else
ìì 
{
îî 
labelRed
ïï 
.
ïï 
Content
ïï  
=
ïï! "
userName
ïï# +
;
ïï+ ,

borderBlue
ññ 
.
ññ 

Visibility
ññ %
=
ññ& '

Visibility
ññ( 2
.
ññ2 3
Hidden
ññ3 9
;
ññ9 :
	borderRed
óó 
.
óó 

Visibility
óó $
=
óó% &

Visibility
óó' 1
.
óó1 2
Visible
óó2 9
;
óó9 :
}
òò 
}
ôô 	
public
õõ 
void
õõ (
UpdateJoinedPlayerResponse
õõ .
(
õõ. /8
*GenericClassOfArrayOfPlayerInLobbyxY0a3WX4
õõ/ Y
playersInTheLobby
õõZ k
)
õõk l
{
úú 	
try
ùù 
{
ûû 
if
üü 
(
üü 
playersInTheLobby
üü %
.
üü% &
	CodeEvent
üü& /
==
üü0 2!
ExceptionDictionary
üü3 F
.
üüF G
SUCCESFULL_EVENT
üüG W
)
üüW X
{
†† "
currentPlayerInLobby
°° (
=
°°) *
playersInTheLobby
°°+ <
.
°°< =
ObjectSaved
°°= H
.
°°H I
ToList
°°I O
(
°°O P
)
°°P Q
;
°°Q R
if
¢¢ 
(
¢¢ "
currentPlayerInLobby
¢¢ ,
.
¢¢, -
Exists
¢¢- 3
(
¢¢3 4
pla
¢¢4 7
=>
¢¢8 :
pla
¢¢; >
.
¢¢> ?
IdPlayer
¢¢? G
==
¢¢H J
userSingleton
¢¢K X
.
¢¢X Y
IdPlayer
¢¢Y a
)
¢¢a b
)
¢¢b c
{
££ 
SetPlayerInLabels
§§ )
(
§§) *
)
§§* +
;
§§+ ,
if
•• 
(
•• 
(
•• 
bool
•• !
)
••! "
	chbTeamUp
••" +
.
••+ ,
	IsChecked
••, 5
)
••5 6
{
¶¶ 
	chbTeamUp
ßß %
.
ßß% &
	IsChecked
ßß& /
=
ßß0 1
false
ßß2 7
;
ßß7 8
}
®® 
}
©© 
else
™™ 
{
´´ 
dialogMessage
¨¨ %
=
¨¨& '
new
¨¨( +,
InformationMessageDialogWindow
¨¨, J
(
¨¨J K

Properties
¨¨K U
.
¨¨U V
	Resources
¨¨V _
.
¨¨_ `
txbWarningTitle
¨¨` o
,
¨¨o p

Properties
¨¨q {
.
¨¨{ |
	Resources¨¨| Ö
.¨¨Ö Ü%
lblEliminateFromLobby¨¨Ü õ
,¨¨õ ú
Window¨¨ù £
.¨¨£ §
	GetWindow¨¨§ ≠
(¨¨≠ Æ
this¨¨Æ ≤
)¨¨≤ ≥
)¨¨≥ ¥
;¨¨¥ µ
CloseWindow
≠≠ #
(
≠≠# $
)
≠≠$ %
;
≠≠% &
}
ÆÆ 
}
ØØ 
else
∞∞ 
{
±± 
dialogMessage
≤≤ !
=
≤≤" #
new
≤≤$ ',
InformationMessageDialogWindow
≤≤( F
(
≤≤F G

Properties
≤≤G Q
.
≤≤Q R
	Resources
≤≤R [
.
≤≤[ \
txbWarningTitle
≤≤\ k
,
≤≤k l

Properties
≤≤m w
.
≤≤w x
	Resources≤≤x Å
.≤≤Å Ç
KickedFromLobby≤≤Ç ë
,≤≤ë í
Window≤≤ì ô
.≤≤ô ö
	GetWindow≤≤ö £
(≤≤£ §
this≤≤§ ®
)≤≤® ©
)≤≤© ™
;≤≤™ ´
CloseWindow
≥≥ 
(
≥≥  
)
≥≥  !
;
≥≥! "
}
¥¥ 
}
µµ 
catch
∂∂ 
(
∂∂ '
EndpointNotFoundException
∂∂ ,
ex
∂∂- /
)
∂∂/ 0
{
∑∑ 
HandleException
∏∏ 
(
∏∏  
ex
∏∏  "
,
∏∏" #

Properties
∏∏$ .
.
∏∏. /
	Resources
∏∏/ 8
.
∏∏8 9!
lblEndPointNotFound
∏∏9 L
)
∏∏L M
;
∏∏M N
}
ππ 
catch
∫∫ 
(
∫∫ 1
#CommunicationObjectFaultedException
∫∫ 6
ex
∫∫7 9
)
∫∫9 :
{
ªª 
HandleException
ºº 
(
ºº  
ex
ºº  "
,
ºº" #

Properties
ºº$ .
.
ºº. /
	Resources
ºº/ 8
.
ºº8 9&
lblComunicationException
ºº9 Q
)
ººQ R
;
ººR S
}
ΩΩ 
catch
ææ 
(
ææ 
TimeoutException
ææ #
ex
ææ$ &
)
ææ& '
{
øø 
HandleException
¿¿ 
(
¿¿  
ex
¿¿  "
,
¿¿" #

Properties
¿¿$ .
.
¿¿. /
	Resources
¿¿/ 8
.
¿¿8 9
lblTimeException
¿¿9 I
)
¿¿I J
;
¿¿J K
}
¡¡ 
catch
¬¬ 
(
¬¬ $
CommunicationException
¬¬ )
ex
¬¬* ,
)
¬¬, -
{
√√ 
HandleException
ƒƒ 
(
ƒƒ  
ex
ƒƒ  "
,
ƒƒ" #

Properties
ƒƒ$ .
.
ƒƒ. /
	Resources
ƒƒ/ 8
.
ƒƒ8 9!
lblWithoutConection
ƒƒ9 L
)
ƒƒL M
;
ƒƒM N
}
≈≈ 
}
∆∆ 	
private
»» 
void
»» +
ClickEliminatePlayerFromLobby
»» 2
(
»»2 3
object
»»3 9
sender
»»: @
,
»»@ A"
MouseButtonEventArgs
»»B V
e
»»W X
)
»»X Y
{
…… 	
if
   
(
   
isAdminOfLobby
   
)
   
{
ÀÀ 
string
ÃÃ 
userName
ÃÃ 
=
ÃÃ  !)
GetUserNameFromLabelByImage
ÃÃ" =
(
ÃÃ= >
sender
ÃÃ> D
)
ÃÃD E
;
ÃÃE F
if
ÕÕ 
(
ÕÕ 
!
ÕÕ 
string
ÕÕ 
.
ÕÕ 
IsNullOrEmpty
ÕÕ )
(
ÕÕ) *
userName
ÕÕ* 2
)
ÕÕ2 3
)
ÕÕ3 4
{
ŒŒ 
var
œœ 
userChanged
œœ #
=
œœ$ %$
EliminateUserFromLobby
œœ& <
(
œœ< =
userName
œœ= E
)
œœE F
;
œœF G
if
–– 
(
–– 
userChanged
–– #
.
––# $
IdUser
––$ *
!=
––+ -
NULL_INT_VALUE
––. <
)
––< =
{
—— 
try
““ 
{
””  
LobbyActionsClient
‘‘ .'
lobbyActionsCallBackProxy
‘‘/ H
=
‘‘I J
new
‘‘K N 
LobbyActionsClient
‘‘O a
(
‘‘a b
new
‘‘b e
InstanceContext
‘‘f u
(
‘‘u v
this
‘‘v z
)
‘‘z {
)
‘‘{ |
;
‘‘| }'
lobbyActionsCallBackProxy
’’ 5
.
’’5 6 
RenewLobbyCallBack
’’6 H
(
’’H I
roomCode
’’I Q
,
’’Q R
userSingleton
’’S `
.
’’` a
IdUser
’’a g
)
’’g h
;
’’h i)
LobbyActionsOperationClient
◊◊ 7
lobbyActionsProxy
◊◊8 I
=
◊◊J K
new
◊◊L O
(
◊◊O P
)
◊◊P Q
;
◊◊Q R
lobbyActionsProxy
ÿÿ -
.
ÿÿ- .&
EliminatePlayerFromMatch
ÿÿ. F
(
ÿÿF G
roomCode
ÿÿG O
,
ÿÿO P
userChanged
ÿÿQ \
.
ÿÿ\ ]
IdUser
ÿÿ] c
)
ÿÿc d
;
ÿÿd e
}
ŸŸ 
catch
⁄⁄ 
(
⁄⁄ '
EndpointNotFoundException
⁄⁄ 8
ex
⁄⁄9 ;
)
⁄⁄; <
{
€€ 
HandleException
‹‹ +
(
‹‹+ ,
ex
‹‹, .
,
‹‹. /

Properties
‹‹0 :
.
‹‹: ;
	Resources
‹‹; D
.
‹‹D E/
!lblFailToEliminatePlayerFromLobby
‹‹E f
+
‹‹g h
$str
‹‹i n
+
‹‹o p

Properties
‹‹q {
.
‹‹{ |
	Resources‹‹| Ö
.‹‹Ö Ü#
lblEndPointNotFound‹‹Ü ô
)‹‹ô ö
;‹‹ö õ
}
›› 
catch
ﬁﬁ 
(
ﬁﬁ 1
#CommunicationObjectFaultedException
ﬁﬁ B
ex
ﬁﬁC E
)
ﬁﬁE F
{
ﬂﬂ 
HandleException
‡‡ +
(
‡‡+ ,
ex
‡‡, .
,
‡‡. /

Properties
‡‡0 :
.
‡‡: ;
	Resources
‡‡; D
.
‡‡D E/
!lblFailToEliminatePlayerFromLobby
‡‡E f
+
‡‡g h
$str
‡‡i n
+
‡‡o p

Properties
‡‡q {
.
‡‡{ |
	Resources‡‡| Ö
.‡‡Ö Ü(
lblComunicationException‡‡Ü û
)‡‡û ü
;‡‡ü †
}
·· 
catch
‚‚ 
(
‚‚ 
TimeoutException
‚‚ /
ex
‚‚0 2
)
‚‚2 3
{
„„ 
HandleException
‰‰ +
(
‰‰+ ,
ex
‰‰, .
,
‰‰. /

Properties
‰‰0 :
.
‰‰: ;
	Resources
‰‰; D
.
‰‰D E/
!lblFailToEliminatePlayerFromLobby
‰‰E f
+
‰‰g h
$str
‰‰i n
+
‰‰o p

Properties
‰‰q {
.
‰‰{ |
	Resources‰‰| Ö
.‰‰Ö Ü 
lblTimeException‰‰Ü ñ
)‰‰ñ ó
;‰‰ó ò
}
ÂÂ 
catch
ÊÊ 
(
ÊÊ $
CommunicationException
ÊÊ 5
ex
ÊÊ6 8
)
ÊÊ8 9
{
ÁÁ 
HandleException
ËË +
(
ËË+ ,
ex
ËË, .
,
ËË. /

Properties
ËË0 :
.
ËË: ;
	Resources
ËË; D
.
ËËD E/
!lblFailToEliminatePlayerFromLobby
ËËE f
+
ËËg h
$str
ËËi n
+
ËËo p

Properties
ËËq {
.
ËË{ |
	ResourcesËË| Ö
.ËËÖ Ü#
lblWithoutConectionËËÜ ô
)ËËô ö
;ËËö õ
}
ÈÈ 
}
ÍÍ 
}
ÎÎ 
}
ÏÏ 
}
ÌÌ 	
private
 
PlayerInLobby
 $
EliminateUserFromLobby
 4
(
4 5
String
5 ;
userName
< D
)
D E
{
ÒÒ 	
PlayerInLobby
ÚÚ 
playerInLobby
ÚÚ '
=
ÚÚ( )
new
ÚÚ* -
PlayerInLobby
ÚÚ. ;
(
ÚÚ; <
)
ÚÚ< =
;
ÚÚ= >
playerInLobby
ÛÛ 
.
ÛÛ 
IdUser
ÛÛ  
=
ÛÛ! "
NULL_INT_VALUE
ÛÛ# 1
;
ÛÛ1 2
foreach
ÙÙ 
(
ÙÙ 
var
ÙÙ 
item
ÙÙ 
in
ÙÙ  
from
ÙÙ! %
item
ÙÙ& *
in
ÙÙ+ -"
currentPlayerInLobby
ÙÙ. B
where
ÙÙC H
item
ÙÙI M
.
ÙÙM N
UserName
ÙÙN V
.
ÙÙV W
Equals
ÙÙW ]
(
ÙÙ] ^
userName
ÙÙ^ f
)
ÙÙf g
select
ÙÙh n
item
ÙÙo s
)
ÙÙs t
{
ıı "
currentPlayerInLobby
ˆˆ $
.
ˆˆ$ %
Remove
ˆˆ% +
(
ˆˆ+ ,
item
ˆˆ, 0
)
ˆˆ0 1
;
ˆˆ1 2
playerInLobby
˜˜ 
=
˜˜ 
item
˜˜  $
;
˜˜$ %
}
¯¯ 
return
˘˘ 
playerInLobby
˘˘  
;
˘˘  !
}
˙˙ 	
private
¸¸ 
String
¸¸ )
GetUserNameFromLabelByImage
¸¸ 2
(
¸¸2 3
object
¸¸3 9
sender
¸¸: @
)
¸¸@ A
{
˝˝ 	
Image
˛˛ 
	imgChosen
˛˛ 
=
˛˛ 
(
˛˛ 
Image
˛˛ $
)
˛˛$ %
sender
˛˛% +
;
˛˛+ ,

StackPanel
ˇˇ 
	stcChosen
ˇˇ  
=
ˇˇ! "2
$GetParentOfGraphicInterfaceComponent
ˇˇ# G
.
ˇˇG H

FindParent
ˇˇH R
<
ˇˇR S

StackPanel
ˇˇS ]
>
ˇˇ] ^
(
ˇˇ^ _
	imgChosen
ˇˇ_ h
)
ˇˇh i
;
ˇˇi j
Label
ÄÄ 
label
ÄÄ 
=
ÄÄ 
	stcChosen
ÄÄ #
.
ÄÄ# $
Children
ÄÄ$ ,
.
ÄÄ, -
OfType
ÄÄ- 3
<
ÄÄ3 4
Label
ÄÄ4 9
>
ÄÄ9 :
(
ÄÄ: ;
)
ÄÄ; <
.
ÄÄ< =
FirstOrDefault
ÄÄ= K
(
ÄÄK L
)
ÄÄL M
;
ÄÄM N
return
ÅÅ 
label
ÅÅ 
?
ÅÅ 
.
ÅÅ 
Content
ÅÅ !
?
ÅÅ! "
.
ÅÅ" #
ToString
ÅÅ# +
(
ÅÅ+ ,
)
ÅÅ, -
;
ÅÅ- .
}
ÇÇ 	
private
ÖÖ 
void
ÖÖ 
ClickTeamUp
ÖÖ  
(
ÖÖ  !
object
ÖÖ! '
sender
ÖÖ( .
,
ÖÖ. /
RoutedEventArgs
ÖÖ0 ?
e
ÖÖ@ A
)
ÖÖA B
{
ÜÜ 	
if
áá 
(
áá 
isAdminOfLobby
áá 
)
áá 
{
àà 
try
ââ 
{
ää  
LobbyActionsClient
ãã &'
lobbyActionsCallBackProxy
ãã' @
=
ããA B
new
ããC F 
LobbyActionsClient
ããG Y
(
ããY Z
new
ããZ ]
InstanceContext
ãã^ m
(
ããm n
this
ããn r
)
ããr s
)
ããs t
;
ããt u'
lobbyActionsCallBackProxy
åå -
.
åå- . 
RenewLobbyCallBack
åå. @
(
åå@ A
roomCode
ååA I
,
ååI J
userSingleton
ååK X
.
ååX Y
IdUser
ååY _
)
åå_ `
;
åå` a
if
éé 
(
éé "
currentPlayerInLobby
éé ,
.
éé, -
Count
éé- 2
==
éé3 5
$num
éé6 7
)
éé7 8
{
èè 
DoOrUndoTeams
êê %
(
êê% &
true
êê& *
)
êê* +
;
êê+ ,
SetPlayerInLabels
ëë )
(
ëë) *
)
ëë* +
;
ëë+ ,)
LobbyActionsOperationClient
íí 3
lobbyActionsProxy
íí4 E
=
ííF G
new
ííH K
(
ííK L
)
ííL M
;
ííM N
lobbyActionsProxy
ìì )
.
ìì) *
	MakeTeams
ìì* 3
(
ìì3 4
roomCode
ìì4 <
,
ìì< =
userSingleton
ìì> K
.
ììK L
IdUser
ììL R
,
ììR S
true
ììT X
)
ììX Y
;
ììY Z
}
îî 
else
ïï 
{
ññ 
	chbTeamUp
óó !
.
óó! "
	IsChecked
óó" +
=
óó, -
false
óó. 3
;
óó3 4
dialogMessage
òò %
=
òò& '
new
òò( +,
InformationMessageDialogWindow
òò, J
(
òòJ K

Properties
òòK U
.
òòU V
	Resources
òòV _
.
òò_ `!
txbInformationTitle
òò` s
,
òòs t

Properties
òòu 
.òò Ä
	ResourcesòòÄ â
.òòâ ä
MustBe4Playersòòä ò
,òòò ô
Windowòòö †
.òò† °
	GetWindowòò° ™
(òò™ ´
thisòò´ Ø
)òòØ ∞
)òò∞ ±
;òò± ≤
}
ôô 
}
öö 
catch
õõ 
(
õõ '
EndpointNotFoundException
õõ 0
ex
õõ1 3
)
õõ3 4
{
úú 

Exceptions
ùù 
.
ùù %
ExceptionHandlerForLogs
ùù 6
.
ùù6 7
LogException
ùù7 C
(
ùùC D
ex
ùùD F
,
ùùF G

Exceptions
ùùH R
.
ùùR S!
ExceptionDictionary
ùùS f
.
ùùf g
ERROR
ùùg l
)
ùùl m
;
ùùm n
dialogMessage
ûû !
=
ûû" #
new
ûû$ '&
ErrorMessageDialogWindow
ûû( @
(
ûû@ A

Properties
ûûA K
.
ûûK L
	Resources
ûûL U
.
ûûU V
txbErrorTitle
ûûV c
,
ûûc d

Properties
ûûe o
.
ûûo p
	Resources
ûûp y
.
ûûy z#
lblFailToManageTeamsûûz é
+ûûè ê
$strûûë ñ
+ûûó ò

Propertiesûûô £
.ûû£ §
	Resourcesûû§ ≠
.ûû≠ Æ#
lblEndPointNotFoundûûÆ ¡
,ûû¡ ¬
Windowûû√ …
.ûû…  
	GetWindowûû  ”
(ûû” ‘
thisûû‘ ÿ
)ûûÿ Ÿ
)ûûŸ ⁄
;ûû⁄ €
	chbTeamUp
üü 
.
üü 
	IsChecked
üü '
=
üü( )
false
üü* /
;
üü/ 0
}
†† 
catch
°° 
(
°° 1
#CommunicationObjectFaultedException
°° :
ex
°°; =
)
°°= >
{
¢¢ 

Exceptions
££ 
.
££ %
ExceptionHandlerForLogs
££ 6
.
££6 7
LogException
££7 C
(
££C D
ex
££D F
,
££F G

Exceptions
££H R
.
££R S!
ExceptionDictionary
££S f
.
££f g
ERROR
££g l
)
££l m
;
££m n
dialogMessage
§§ !
=
§§" #
new
§§$ '&
ErrorMessageDialogWindow
§§( @
(
§§@ A

Properties
§§A K
.
§§K L
	Resources
§§L U
.
§§U V
txbErrorTitle
§§V c
,
§§c d

Properties
§§e o
.
§§o p
	Resources
§§p y
.
§§y z#
lblFailToManageTeams§§z é
+§§è ê
$str§§ë ñ
+§§ó ò

Properties§§ô £
.§§£ §
	Resources§§§ ≠
.§§≠ Æ(
lblComunicationException§§Æ ∆
,§§∆ «
Window§§» Œ
.§§Œ œ
	GetWindow§§œ ÿ
(§§ÿ Ÿ
this§§Ÿ ›
)§§› ﬁ
)§§ﬁ ﬂ
;§§ﬂ ‡
	chbTeamUp
•• 
.
•• 
	IsChecked
•• '
=
••( )
false
••* /
;
••/ 0
}
¶¶ 
catch
ßß 
(
ßß 
TimeoutException
ßß '
ex
ßß( *
)
ßß* +
{
®® 

Exceptions
©© 
.
©© %
ExceptionHandlerForLogs
©© 6
.
©©6 7
LogException
©©7 C
(
©©C D
ex
©©D F
,
©©F G

Exceptions
©©H R
.
©©R S!
ExceptionDictionary
©©S f
.
©©f g
ERROR
©©g l
)
©©l m
;
©©m n
dialogMessage
™™ !
=
™™" #
new
™™$ '&
ErrorMessageDialogWindow
™™( @
(
™™@ A

Properties
™™A K
.
™™K L
	Resources
™™L U
.
™™U V
txbErrorTitle
™™V c
,
™™c d

Properties
™™e o
.
™™o p
	Resources
™™p y
.
™™y z#
lblFailToManageTeams™™z é
+™™è ê
$str™™ë ñ
+™™ó ò

Properties™™ô £
.™™£ §
	Resources™™§ ≠
.™™≠ Æ 
lblTimeException™™Æ æ
,™™æ ø
Window™™¿ ∆
.™™∆ «
	GetWindow™™« –
(™™– —
this™™— ’
)™™’ ÷
)™™÷ ◊
;™™◊ ÿ
	chbTeamUp
´´ 
.
´´ 
	IsChecked
´´ '
=
´´( )
false
´´* /
;
´´/ 0
}
¨¨ 
catch
≠≠ 
(
≠≠ $
CommunicationException
≠≠ -
ex
≠≠. 0
)
≠≠0 1
{
ÆÆ 

Exceptions
ØØ 
.
ØØ %
ExceptionHandlerForLogs
ØØ 6
.
ØØ6 7
LogException
ØØ7 C
(
ØØC D
ex
ØØD F
,
ØØF G

Exceptions
ØØH R
.
ØØR S!
ExceptionDictionary
ØØS f
.
ØØf g
ERROR
ØØg l
)
ØØl m
;
ØØm n
dialogMessage
∞∞ !
=
∞∞" #
new
∞∞$ '&
ErrorMessageDialogWindow
∞∞( @
(
∞∞@ A

Properties
∞∞A K
.
∞∞K L
	Resources
∞∞L U
.
∞∞U V
txbErrorTitle
∞∞V c
,
∞∞c d

Properties
∞∞e o
.
∞∞o p
	Resources
∞∞p y
.
∞∞y z#
lblFailToManageTeams∞∞z é
+∞∞è ê
$str∞∞ë ñ
+∞∞ó ò

Properties∞∞ô £
.∞∞£ §
	Resources∞∞§ ≠
.∞∞≠ Æ#
lblWithoutConection∞∞Æ ¡
,∞∞¡ ¬
Window∞∞√ …
.∞∞…  
	GetWindow∞∞  ”
(∞∞” ‘
this∞∞‘ ÿ
)∞∞ÿ Ÿ
)∞∞Ÿ ⁄
;∞∞⁄ €
	chbTeamUp
±± 
.
±± 
	IsChecked
±± '
=
±±( )
false
±±* /
;
±±/ 0
}
≤≤ 
}
≥≥ 
}
¥¥ 	
private
∂∂ 
void
∂∂ 
ClickNoTeamUp
∂∂ "
(
∂∂" #
object
∂∂# )
sender
∂∂* 0
,
∂∂0 1
RoutedEventArgs
∂∂2 A
e
∂∂B C
)
∂∂C D
{
∑∑ 	
if
∏∏ 
(
∏∏ 
isAdminOfLobby
∏∏ 
)
∏∏ 
{
ππ 
try
∫∫ 
{
ªª  
LobbyActionsClient
ºº &'
lobbyActionsCallBackProxy
ºº' @
=
ººA B
new
ººC F 
LobbyActionsClient
ººG Y
(
ººY Z
new
ººZ ]
InstanceContext
ºº^ m
(
ººm n
this
ººn r
)
ººr s
)
ººs t
;
ººt u'
lobbyActionsCallBackProxy
ΩΩ -
.
ΩΩ- . 
RenewLobbyCallBack
ΩΩ. @
(
ΩΩ@ A
roomCode
ΩΩA I
,
ΩΩI J
userSingleton
ΩΩK X
.
ΩΩX Y
IdUser
ΩΩY _
)
ΩΩ_ `
;
ΩΩ` a
DoOrUndoTeams
øø !
(
øø! "
false
øø" '
)
øø' (
;
øø( )
SetPlayerInLabels
¿¿ %
(
¿¿% &
)
¿¿& '
;
¿¿' ()
LobbyActionsOperationClient
¡¡ /
lobbyActionsProxy
¡¡0 A
=
¡¡B C
new
¡¡D G
(
¡¡G H
)
¡¡H I
;
¡¡I J
lobbyActionsProxy
¬¬ %
.
¬¬% &
	MakeTeams
¬¬& /
(
¬¬/ 0
roomCode
¬¬0 8
,
¬¬8 9
userSingleton
¬¬: G
.
¬¬G H
IdUser
¬¬H N
,
¬¬N O
false
¬¬P U
)
¬¬U V
;
¬¬V W
}
√√ 
catch
ƒƒ 
(
ƒƒ '
EndpointNotFoundException
ƒƒ 0
ex
ƒƒ1 3
)
ƒƒ3 4
{
≈≈ 

Exceptions
∆∆ 
.
∆∆ %
ExceptionHandlerForLogs
∆∆ 6
.
∆∆6 7
LogException
∆∆7 C
(
∆∆C D
ex
∆∆D F
,
∆∆F G

Exceptions
∆∆H R
.
∆∆R S!
ExceptionDictionary
∆∆S f
.
∆∆f g
ERROR
∆∆g l
)
∆∆l m
;
∆∆m n
dialogMessage
«« !
=
««" #
new
««$ '&
ErrorMessageDialogWindow
««( @
(
««@ A

Properties
««A K
.
««K L
	Resources
««L U
.
««U V
txbErrorTitle
««V c
,
««c d

Properties
««e o
.
««o p
	Resources
««p y
.
««y z#
lblFailToManageTeams««z é
+««è ê
$str««ë ñ
+««ó ò

Properties««ô £
.««£ §
	Resources««§ ≠
.««≠ Æ#
lblEndPointNotFound««Æ ¡
,««¡ ¬
Window««√ …
.««…  
	GetWindow««  ”
(««” ‘
this««‘ ÿ
)««ÿ Ÿ
)««Ÿ ⁄
;««⁄ €
DoOrUndoTeams
»» !
(
»»! "
true
»»" &
)
»»& '
;
»»' (
SetPlayerInLabels
…… %
(
……% &
)
……& '
;
……' (
}
   
catch
ÀÀ 
(
ÀÀ 1
#CommunicationObjectFaultedException
ÀÀ :
ex
ÀÀ; =
)
ÀÀ= >
{
ÃÃ 

Exceptions
ÕÕ 
.
ÕÕ %
ExceptionHandlerForLogs
ÕÕ 6
.
ÕÕ6 7
LogException
ÕÕ7 C
(
ÕÕC D
ex
ÕÕD F
,
ÕÕF G

Exceptions
ÕÕH R
.
ÕÕR S!
ExceptionDictionary
ÕÕS f
.
ÕÕf g
ERROR
ÕÕg l
)
ÕÕl m
;
ÕÕm n
dialogMessage
ŒŒ !
=
ŒŒ" #
new
ŒŒ$ '&
ErrorMessageDialogWindow
ŒŒ( @
(
ŒŒ@ A

Properties
ŒŒA K
.
ŒŒK L
	Resources
ŒŒL U
.
ŒŒU V
txbErrorTitle
ŒŒV c
,
ŒŒc d

Properties
ŒŒe o
.
ŒŒo p
	Resources
ŒŒp y
.
ŒŒy z#
lblFailToManageTeamsŒŒz é
+ŒŒè ê
$strŒŒë ñ
+ŒŒó ò

PropertiesŒŒô £
.ŒŒ£ §
	ResourcesŒŒ§ ≠
.ŒŒ≠ Æ(
lblComunicationExceptionŒŒÆ ∆
,ŒŒ∆ «
WindowŒŒ» Œ
.ŒŒŒ œ
	GetWindowŒŒœ ÿ
(ŒŒÿ Ÿ
thisŒŒŸ ›
)ŒŒ› ﬁ
)ŒŒﬁ ﬂ
;ŒŒﬂ ‡
DoOrUndoTeams
œœ !
(
œœ! "
true
œœ" &
)
œœ& '
;
œœ' (
SetPlayerInLabels
–– %
(
––% &
)
––& '
;
––' (
}
—— 
catch
““ 
(
““ 
TimeoutException
““ '
ex
““( *
)
““* +
{
”” 

Exceptions
‘‘ 
.
‘‘ %
ExceptionHandlerForLogs
‘‘ 6
.
‘‘6 7
LogException
‘‘7 C
(
‘‘C D
ex
‘‘D F
,
‘‘F G

Exceptions
‘‘H R
.
‘‘R S!
ExceptionDictionary
‘‘S f
.
‘‘f g
ERROR
‘‘g l
)
‘‘l m
;
‘‘m n
dialogMessage
’’ !
=
’’" #
new
’’$ '&
ErrorMessageDialogWindow
’’( @
(
’’@ A

Properties
’’A K
.
’’K L
	Resources
’’L U
.
’’U V
txbErrorTitle
’’V c
,
’’c d

Properties
’’e o
.
’’o p
	Resources
’’p y
.
’’y z#
lblFailToManageTeams’’z é
+’’è ê
$str’’ë ñ
+’’ó ò

Properties’’ô £
.’’£ §
	Resources’’§ ≠
.’’≠ Æ 
lblTimeException’’Æ æ
,’’æ ø
Window’’¿ ∆
.’’∆ «
	GetWindow’’« –
(’’– —
this’’— ’
)’’’ ÷
)’’÷ ◊
;’’◊ ÿ
DoOrUndoTeams
÷÷ !
(
÷÷! "
true
÷÷" &
)
÷÷& '
;
÷÷' (
SetPlayerInLabels
◊◊ %
(
◊◊% &
)
◊◊& '
;
◊◊' (
}
ÿÿ 
catch
ŸŸ 
(
ŸŸ $
CommunicationException
ŸŸ -
ex
ŸŸ. 0
)
ŸŸ0 1
{
⁄⁄ 

Exceptions
€€ 
.
€€ %
ExceptionHandlerForLogs
€€ 6
.
€€6 7
LogException
€€7 C
(
€€C D
ex
€€D F
,
€€F G

Exceptions
€€H R
.
€€R S!
ExceptionDictionary
€€S f
.
€€f g
ERROR
€€g l
)
€€l m
;
€€m n
dialogMessage
‹‹ !
=
‹‹" #
new
‹‹$ '&
ErrorMessageDialogWindow
‹‹( @
(
‹‹@ A

Properties
‹‹A K
.
‹‹K L
	Resources
‹‹L U
.
‹‹U V
txbErrorTitle
‹‹V c
,
‹‹c d

Properties
‹‹e o
.
‹‹o p
	Resources
‹‹p y
.
‹‹y z#
lblFailToManageTeams‹‹z é
+‹‹è ê
$str‹‹ë ñ
+‹‹ó ò

Properties‹‹ô £
.‹‹£ §
	Resources‹‹§ ≠
.‹‹≠ Æ#
lblWithoutConection‹‹Æ ¡
,‹‹¡ ¬
Window‹‹√ …
.‹‹…  
	GetWindow‹‹  ”
(‹‹” ‘
this‹‹‘ ÿ
)‹‹ÿ Ÿ
)‹‹Ÿ ⁄
;‹‹⁄ €
DoOrUndoTeams
›› !
(
››! "
true
››" &
)
››& '
;
››' (
SetPlayerInLabels
ﬁﬁ %
(
ﬁﬁ% &
)
ﬁﬁ& '
;
ﬁﬁ' (
}
ﬂﬂ 
}
‡‡ 
}
·· 	
public
„„ 
void
„„ 
MakeTeamsResponse
„„ %
(
„„% &
bool
„„& *
teamUp
„„+ 1
)
„„1 2
{
‰‰ 	
DoOrUndoTeams
ÂÂ 
(
ÂÂ 
teamUp
ÂÂ  
)
ÂÂ  !
;
ÂÂ! "
SetPlayerInLabels
ÊÊ 
(
ÊÊ 
)
ÊÊ 
;
ÊÊ  
}
ÁÁ 	
private
ÈÈ 
void
ÈÈ 
DoOrUndoTeams
ÈÈ "
(
ÈÈ" #
bool
ÈÈ# '
teamUp
ÈÈ( .
)
ÈÈ. /
{
ÍÍ 	
if
ÎÎ 
(
ÎÎ 
teamUp
ÎÎ 
)
ÎÎ 
{
ÏÏ "
currentPlayerInLobby
ÌÌ $
=
ÌÌ% &"
currentPlayerInLobby
ÌÌ' ;
.
ÌÌ; <
Select
ÌÌ< B
(
ÌÌB C
pla
ÌÌC F
=>
ÌÌG I
{
ÓÓ 
if
ÔÔ 
(
ÔÔ 
pla
ÔÔ 
.
ÔÔ #
NumberOfPlayerInLobby
ÔÔ 1
<=
ÔÔ2 4
TEMA_RIGHT_SIDE
ÔÔ5 D
)
ÔÔD E
{
 
pla
ÒÒ 
.
ÒÒ 

SideOfTeam
ÒÒ &
=
ÒÒ' (
TEAM_LEFT_SIDE
ÒÒ) 7
;
ÒÒ7 8
}
ÚÚ 
else
ÛÛ 
{
ÙÙ 
pla
ıı 
.
ıı 

SideOfTeam
ıı &
=
ıı' (
TEMA_RIGHT_SIDE
ıı) 8
;
ıı8 9
}
ˆˆ 
return
˜˜ 
pla
˜˜ 
;
˜˜ 
}
¯¯ 
)
¯¯ 
.
¯¯ 
ToList
¯¯ 
(
¯¯ 
)
¯¯ 
;
¯¯ 
}
˘˘ 
else
˙˙ 
{
˚˚ "
currentPlayerInLobby
¸¸ $
=
¸¸% &"
currentPlayerInLobby
¸¸' ;
.
¸¸; <
Select
¸¸< B
(
¸¸B C
pla
¸¸C F
=>
¸¸G I
{
˝˝ 
pla
˛˛ 
.
˛˛ 

SideOfTeam
˛˛ "
=
˛˛# $
TEAM_LEFT_SIDE
˛˛% 3
;
˛˛3 4
return
ˇˇ 
pla
ˇˇ 
;
ˇˇ 
}
ÄÄ 
)
ÄÄ 
.
ÄÄ 
ToList
ÄÄ 
(
ÄÄ 
)
ÄÄ 
;
ÄÄ 
}
ÅÅ 
if
ÇÇ 
(
ÇÇ 
!
ÇÇ 
isAdminOfLobby
ÇÇ 
)
ÇÇ  
{
ÉÉ 
	chbTeamUp
ÑÑ 
.
ÑÑ 
	IsChecked
ÑÑ #
=
ÑÑ$ %
teamUp
ÑÑ& ,
;
ÑÑ, -
}
ÖÖ 
}
ÜÜ 	
private
ââ 
void
ââ !
ClickChangeTeamSide
ââ (
(
ââ( )
object
ââ) /
sender
ââ0 6
,
ââ6 7"
MouseButtonEventArgs
ââ8 L
e
ââM N
)
ââN O
{
ää 	
if
ãã 
(
ãã 
isAdminOfLobby
ãã 
&&
ãã !"
currentPlayerInLobby
ãã" 6
.
ãã6 7
Count
ãã7 <
==
ãã= ?
$num
ãã@ A
&&
ããB D
(
ããE F
bool
ããF J
)
ããJ K
	chbTeamUp
ããK T
.
ããT U
	IsChecked
ããU ^
)
ãã^ _
{
åå 
string
çç 
userName
çç 
=
çç  !*
GetUserNameFromLabelByBorder
çç" >
(
çç> ?
sender
çç? E
)
ççE F
;
ççF G
if
éé 
(
éé 
userName
éé 
!=
éé 
null
éé  $
)
éé$ %
{
èè 
PlayerInLobby
êê !
userChanged
êê" -
=
êê. / 
ChangeSideOfPlayer
êê0 B
(
êêB C
userName
êêC K
)
êêK L
;
êêL M
if
ëë 
(
ëë 
userChanged
ëë #
.
ëë# $
IdUser
ëë$ *
!=
ëë+ -
NULL_INT_VALUE
ëë. <
)
ëë< =
{
íí 
ChangePlayerTeam
ìì (
(
ìì( )
userChanged
ìì) 4
)
ìì4 5
;
ìì5 6
SetPlayerInLabels
îî )
(
îî) *
)
îî* +
;
îî+ ,
}
ïï 
}
ññ 
}
óó 
}
òò 	
private
öö 
void
öö 
ChangePlayerTeam
öö %
(
öö% &
PlayerInLobby
öö& 3
userChanged
öö4 ?
)
öö? @
{
õõ 	
try
úú 
{
ùù  
LobbyActionsClient
ûû "'
lobbyActionsCallBackProxy
ûû# <
=
ûû= >
new
ûû? B 
LobbyActionsClient
ûûC U
(
ûûU V
new
ûûV Y
InstanceContext
ûûZ i
(
ûûi j
this
ûûj n
)
ûûn o
)
ûûo p
;
ûûp q'
lobbyActionsCallBackProxy
üü )
.
üü) * 
RenewLobbyCallBack
üü* <
(
üü< =
roomCode
üü= E
,
üüE F
userSingleton
üüG T
.
üüT U
IdUser
üüU [
)
üü[ \
;
üü\ ])
LobbyActionsOperationClient
°° +
lobbyActionsProxy
°°, =
=
°°> ?
new
°°@ C
(
°°C D
)
°°D E
;
°°E F
lobbyActionsProxy
¢¢ !
.
¢¢! "
ChangePlayerSide
¢¢" 2
(
¢¢2 3
roomCode
¢¢3 ;
,
¢¢; <
userChanged
¢¢= H
.
¢¢H I
IdUser
¢¢I O
,
¢¢O P
userChanged
¢¢Q \
.
¢¢\ ]

SideOfTeam
¢¢] g
)
¢¢g h
;
¢¢h i
}
££ 
catch
§§ 
(
§§ '
EndpointNotFoundException
§§ ,
ex
§§- /
)
§§/ 0
{
•• 

Exceptions
¶¶ 
.
¶¶ %
ExceptionHandlerForLogs
¶¶ 2
.
¶¶2 3
LogException
¶¶3 ?
(
¶¶? @
ex
¶¶@ B
,
¶¶B C

Exceptions
¶¶D N
.
¶¶N O!
ExceptionDictionary
¶¶O b
.
¶¶b c
ERROR
¶¶c h
)
¶¶h i
;
¶¶i j
dialogMessage
ßß 
=
ßß 
new
ßß  #&
ErrorMessageDialogWindow
ßß$ <
(
ßß< =

Properties
ßß= G
.
ßßG H
	Resources
ßßH Q
.
ßßQ R
txbErrorTitle
ßßR _
,
ßß_ `

Properties
ßßa k
.
ßßk l
	Resources
ßßl u
.
ßßu v#
lblFailToManageTeamsßßv ä
+ßßã å
$strßßç í
+ßßì î

Propertiesßßï ü
.ßßü †
	Resourcesßß† ©
.ßß© ™#
lblEndPointNotFoundßß™ Ω
,ßßΩ æ
Windowßßø ≈
.ßß≈ ∆
	GetWindowßß∆ œ
(ßßœ –
thisßß– ‘
)ßß‘ ’
)ßß’ ÷
;ßß÷ ◊ 
ChangeSideOfPlayer
®® "
(
®®" #
userChanged
®®# .
.
®®. /
UserName
®®/ 7
)
®®7 8
;
®®8 9
}
©© 
catch
™™ 
(
™™ 1
#CommunicationObjectFaultedException
™™ 6
ex
™™7 9
)
™™9 :
{
´´ 

Exceptions
¨¨ 
.
¨¨ %
ExceptionHandlerForLogs
¨¨ 2
.
¨¨2 3
LogException
¨¨3 ?
(
¨¨? @
ex
¨¨@ B
,
¨¨B C

Exceptions
¨¨D N
.
¨¨N O!
ExceptionDictionary
¨¨O b
.
¨¨b c
ERROR
¨¨c h
)
¨¨h i
;
¨¨i j
dialogMessage
≠≠ 
=
≠≠ 
new
≠≠  #&
ErrorMessageDialogWindow
≠≠$ <
(
≠≠< =

Properties
≠≠= G
.
≠≠G H
	Resources
≠≠H Q
.
≠≠Q R
txbErrorTitle
≠≠R _
,
≠≠_ `

Properties
≠≠a k
.
≠≠k l
	Resources
≠≠l u
.
≠≠u v#
lblFailToManageTeams≠≠v ä
+≠≠ã å
$str≠≠ç í
+≠≠ì î

Properties≠≠ï ü
.≠≠ü †
	Resources≠≠† ©
.≠≠© ™(
lblComunicationException≠≠™ ¬
,≠≠¬ √
Window≠≠ƒ  
.≠≠  À
	GetWindow≠≠À ‘
(≠≠‘ ’
this≠≠’ Ÿ
)≠≠Ÿ ⁄
)≠≠⁄ €
;≠≠€ ‹ 
ChangeSideOfPlayer
ÆÆ "
(
ÆÆ" #
userChanged
ÆÆ# .
.
ÆÆ. /
UserName
ÆÆ/ 7
)
ÆÆ7 8
;
ÆÆ8 9
}
ØØ 
catch
∞∞ 
(
∞∞ 
TimeoutException
∞∞ #
ex
∞∞$ &
)
∞∞& '
{
±± 

Exceptions
≤≤ 
.
≤≤ %
ExceptionHandlerForLogs
≤≤ 2
.
≤≤2 3
LogException
≤≤3 ?
(
≤≤? @
ex
≤≤@ B
,
≤≤B C

Exceptions
≤≤D N
.
≤≤N O!
ExceptionDictionary
≤≤O b
.
≤≤b c
ERROR
≤≤c h
)
≤≤h i
;
≤≤i j
dialogMessage
≥≥ 
=
≥≥ 
new
≥≥  #&
ErrorMessageDialogWindow
≥≥$ <
(
≥≥< =

Properties
≥≥= G
.
≥≥G H
	Resources
≥≥H Q
.
≥≥Q R
txbErrorTitle
≥≥R _
,
≥≥_ `

Properties
≥≥a k
.
≥≥k l
	Resources
≥≥l u
.
≥≥u v#
lblFailToManageTeams≥≥v ä
+≥≥ã å
$str≥≥ç í
+≥≥ì î

Properties≥≥ï ü
.≥≥ü †
	Resources≥≥† ©
.≥≥© ™ 
lblTimeException≥≥™ ∫
,≥≥∫ ª
Window≥≥º ¬
.≥≥¬ √
	GetWindow≥≥√ Ã
(≥≥Ã Õ
this≥≥Õ —
)≥≥— “
)≥≥“ ”
;≥≥” ‘ 
ChangeSideOfPlayer
¥¥ "
(
¥¥" #
userChanged
¥¥# .
.
¥¥. /
UserName
¥¥/ 7
)
¥¥7 8
;
¥¥8 9
}
µµ 
catch
∂∂ 
(
∂∂ $
CommunicationException
∂∂ )
ex
∂∂* ,
)
∂∂, -
{
∑∑ 

Exceptions
∏∏ 
.
∏∏ %
ExceptionHandlerForLogs
∏∏ 2
.
∏∏2 3
LogException
∏∏3 ?
(
∏∏? @
ex
∏∏@ B
,
∏∏B C

Exceptions
∏∏D N
.
∏∏N O!
ExceptionDictionary
∏∏O b
.
∏∏b c
ERROR
∏∏c h
)
∏∏h i
;
∏∏i j
dialogMessage
ππ 
=
ππ 
new
ππ  #&
ErrorMessageDialogWindow
ππ$ <
(
ππ< =

Properties
ππ= G
.
ππG H
	Resources
ππH Q
.
ππQ R
txbErrorTitle
ππR _
,
ππ_ `

Properties
ππa k
.
ππk l
	Resources
ππl u
.
ππu v#
lblFailToManageTeamsππv ä
+ππã å
$strππç í
+ππì î

Propertiesππï ü
.ππü †
	Resourcesππ† ©
.ππ© ™#
lblWithoutConectionππ™ Ω
,ππΩ æ
Windowππø ≈
.ππ≈ ∆
	GetWindowππ∆ œ
(ππœ –
thisππ– ‘
)ππ‘ ’
)ππ’ ÷
;ππ÷ ◊ 
ChangeSideOfPlayer
∫∫ "
(
∫∫" #
userChanged
∫∫# .
.
∫∫. /
UserName
∫∫/ 7
)
∫∫7 8
;
∫∫8 9
}
ªª 
}
ºº 	
private
ææ 
PlayerInLobby
ææ  
ChangeSideOfPlayer
ææ 0
(
ææ0 1
String
ææ1 7
userName
ææ8 @
)
ææ@ A
{
øø 	"
currentPlayerInLobby
¿¿  
=
¿¿! ""
currentPlayerInLobby
¿¿# 7
.
¿¿7 8
Select
¿¿8 >
(
¿¿> ?
pla
¿¿? B
=>
¿¿C E
{
¡¡ 
if
¬¬ 
(
¬¬ 
pla
¬¬ 
.
¬¬ 
UserName
¬¬  
.
¬¬  !
Equals
¬¬! '
(
¬¬' (
userName
¬¬( 0
)
¬¬0 1
)
¬¬1 2
{
√√ 
if
ƒƒ 
(
ƒƒ 
pla
ƒƒ 
.
ƒƒ 

SideOfTeam
ƒƒ &
==
ƒƒ' )
TEAM_LEFT_SIDE
ƒƒ* 8
)
ƒƒ8 9
{
≈≈ 
pla
∆∆ 
.
∆∆ 

SideOfTeam
∆∆ &
=
∆∆' (
TEMA_RIGHT_SIDE
∆∆) 8
;
∆∆8 9
}
«« 
else
»» 
{
…… 
pla
   
.
   

SideOfTeam
   &
=
  ' (
TEAM_LEFT_SIDE
  ) 7
;
  7 8
}
ÀÀ 
}
ÃÃ 
return
ÕÕ 
pla
ÕÕ 
;
ÕÕ 
}
ŒŒ 
)
ŒŒ 
.
ŒŒ 
ToList
ŒŒ 
(
ŒŒ 
)
ŒŒ 
;
ŒŒ 
PlayerInLobby
œœ 
player
œœ  
=
œœ! ""
currentPlayerInLobby
œœ# 7
.
œœ7 8
Find
œœ8 <
(
œœ< =
x
œœ= >
=>
œœ? A
x
œœB C
.
œœC D
UserName
œœD L
.
œœL M
Equals
œœM S
(
œœS T
userName
œœT \
)
œœ\ ]
)
œœ] ^
;
œœ^ _
return
–– 
player
–– 
;
–– 
}
—— 	
private
”” 
String
”” *
GetUserNameFromLabelByBorder
”” 3
(
””3 4
object
””4 :
sender
””; A
)
””A B
{
‘‘ 	
Border
’’ 
	brdChosen
’’ 
=
’’ 
(
’’  
Border
’’  &
)
’’& '
sender
’’' -
;
’’- .

StackPanel
÷÷ 
	stcChosen
÷÷  
=
÷÷! "
(
÷÷# $

StackPanel
÷÷$ .
)
÷÷. /
	brdChosen
÷÷/ 8
.
÷÷8 9
Child
÷÷9 >
;
÷÷> ?
Label
◊◊ 
label
◊◊ 
=
◊◊ 
	stcChosen
◊◊ #
.
◊◊# $
Children
◊◊$ ,
.
◊◊, -
OfType
◊◊- 3
<
◊◊3 4
Label
◊◊4 9
>
◊◊9 :
(
◊◊: ;
)
◊◊; <
.
◊◊< =
FirstOrDefault
◊◊= K
(
◊◊K L
)
◊◊L M
;
◊◊M N
return
ÿÿ 
label
ÿÿ 
?
ÿÿ 
.
ÿÿ 
Content
ÿÿ !
?
ÿÿ! "
.
ÿÿ" #
ToString
ÿÿ# +
(
ÿÿ+ ,
)
ÿÿ, -
;
ÿÿ- .
}
ŸŸ 	
public
€€ 
void
€€ 
UpdateTeamSide
€€ "
(
€€" #8
*GenericClassOfArrayOfPlayerInLobbyxY0a3WX4
€€# M
playersInTheLobby
€€N _
)
€€_ `
{
‹‹ 	
if
›› 
(
›› 
playersInTheLobby
›› !
.
››! "
	CodeEvent
››" +
==
››, .!
ExceptionDictionary
››/ B
.
››B C
SUCCESFULL_EVENT
››C S
)
››S T
{
ﬁﬁ "
currentPlayerInLobby
ﬂﬂ $
=
ﬂﬂ% &
playersInTheLobby
ﬂﬂ' 8
.
ﬂﬂ8 9
ObjectSaved
ﬂﬂ9 D
.
ﬂﬂD E
ToList
ﬂﬂE K
(
ﬂﬂK L
)
ﬂﬂL M
;
ﬂﬂM N
SetPlayerInLabels
‡‡ !
(
‡‡! "
)
‡‡" #
;
‡‡# $
}
·· 
}
‚‚ 	
private
‰‰ 
void
‰‰ "
CLicButtonCancelGame
‰‰ )
(
‰‰) *
object
‰‰* 0
sender
‰‰1 7
,
‰‰7 8
RoutedEventArgs
‰‰9 H
e
‰‰I J
)
‰‰J K
{
ÂÂ 	
if
ÊÊ 
(
ÊÊ 
new
ÊÊ &
ConfirmationDialogWindow
ÊÊ ,
(
ÊÊ, -

Properties
ÊÊ- 7
.
ÊÊ7 8
	Resources
ÊÊ8 A
.
ÊÊA B
txbWarningTitle
ÊÊB Q
,
ÊÊQ R

Properties
ÊÊS ]
.
ÊÊ] ^
	Resources
ÊÊ^ g
.
ÊÊg h
	txbCancel
ÊÊh q
,
ÊÊq r
Window
ÊÊs y
.
ÊÊy z
	GetWindowÊÊz É
(ÊÊÉ Ñ
thisÊÊÑ à
)ÊÊà â
)ÊÊâ ä
.ÊÊä ã
CloseWindowÊÊã ñ
)ÊÊñ ó
{
ÁÁ 
try
ËË 
{
ÈÈ )
LobbyActionsOperationClient
ÍÍ /
lobbyActionsProxy
ÍÍ0 A
=
ÍÍB C
new
ÍÍD G
(
ÍÍG H
)
ÍÍH I
;
ÍÍI J
if
ÎÎ 
(
ÎÎ 
isAdminOfLobby
ÎÎ &
)
ÎÎ& '
{
ÏÏ 
lobbyActionsProxy
ÌÌ )
.
ÌÌ) *
DissolveLobby
ÌÌ* 7
(
ÌÌ7 8
roomCode
ÌÌ8 @
,
ÌÌ@ A
userSingleton
ÌÌB O
.
ÌÌO P
IdUser
ÌÌP V
)
ÌÌV W
;
ÌÌW X
}
ÓÓ 
else
ÔÔ 
{
 
lobbyActionsProxy
ÒÒ )
.
ÒÒ) *

LeaveLobby
ÒÒ* 4
(
ÒÒ4 5
roomCode
ÒÒ5 =
,
ÒÒ= >
userSingleton
ÒÒ? L
.
ÒÒL M
IdUser
ÒÒM S
)
ÒÒS T
;
ÒÒT U
}
ÚÚ 
}
ÛÛ 
catch
ÙÙ 
(
ÙÙ '
EndpointNotFoundException
ÙÙ 0
ex
ÙÙ1 3
)
ÙÙ3 4
{
ıı 

Exceptions
ˆˆ 
.
ˆˆ %
ExceptionHandlerForLogs
ˆˆ 6
.
ˆˆ6 7
LogException
ˆˆ7 C
(
ˆˆC D
ex
ˆˆD F
,
ˆˆF G

Exceptions
ˆˆH R
.
ˆˆR S!
ExceptionDictionary
ˆˆS f
.
ˆˆf g
ERROR
ˆˆg l
)
ˆˆl m
;
ˆˆm n
}
˜˜ 
catch
¯¯ 
(
¯¯ 1
#CommunicationObjectFaultedException
¯¯ :
ex
¯¯; =
)
¯¯= >
{
˘˘ 

Exceptions
˙˙ 
.
˙˙ %
ExceptionHandlerForLogs
˙˙ 6
.
˙˙6 7
LogException
˙˙7 C
(
˙˙C D
ex
˙˙D F
,
˙˙F G

Exceptions
˙˙H R
.
˙˙R S!
ExceptionDictionary
˙˙S f
.
˙˙f g
ERROR
˙˙g l
)
˙˙l m
;
˙˙m n
}
˚˚ 
catch
¸¸ 
(
¸¸ 
TimeoutException
¸¸ '
ex
¸¸( *
)
¸¸* +
{
˝˝ 

Exceptions
˛˛ 
.
˛˛ %
ExceptionHandlerForLogs
˛˛ 6
.
˛˛6 7
LogException
˛˛7 C
(
˛˛C D
ex
˛˛D F
,
˛˛F G

Exceptions
˛˛H R
.
˛˛R S!
ExceptionDictionary
˛˛S f
.
˛˛f g
ERROR
˛˛g l
)
˛˛l m
;
˛˛m n
}
ˇˇ 
catch
ÄÄ 
(
ÄÄ $
CommunicationException
ÄÄ -
ex
ÄÄ. 0
)
ÄÄ0 1
{
ÅÅ 

Exceptions
ÇÇ 
.
ÇÇ %
ExceptionHandlerForLogs
ÇÇ 6
.
ÇÇ6 7
LogException
ÇÇ7 C
(
ÇÇC D
ex
ÇÇD F
,
ÇÇF G

Exceptions
ÇÇH R
.
ÇÇR S!
ExceptionDictionary
ÇÇS f
.
ÇÇf g
ERROR
ÇÇg l
)
ÇÇl m
;
ÇÇm n
}
ÉÉ 
CloseWindow
ÑÑ 
(
ÑÑ 
)
ÑÑ 
;
ÑÑ 
}
ÖÖ 
}
ÜÜ 	
private
áá 
void
áá 
CloseWindow
áá  
(
áá  !
)
áá! "
{
àà 	
if
ââ 
(
ââ 
userSingleton
ââ 
.
ââ 
IdState
ââ %
!=
ââ& (
$num
ââ) *
)
ââ* +
{
ää 
MainMenu
ãã 
mainMenu
ãã !
=
ãã" #
new
ãã$ '
MainMenu
ãã( 0
(
ãã0 1
)
ãã1 2
;
ãã2 3
this
åå 
.
åå 
NavigationService
åå &
.
åå& '
Navigate
åå' /
(
åå/ 0
mainMenu
åå0 8
)
åå8 9
;
åå9 :
NavigationService
çç !
.
çç! "
RemoveBackEntry
çç" 1
(
çç1 2
)
çç2 3
;
çç3 4
}
éé 
else
èè 
{
êê 
DeleteSingleton
ëë 
(
ëë  
)
ëë  !
;
ëë! "
PrincipalPage
íí 
principalPage
íí +
=
íí, -
new
íí. 1
PrincipalPage
íí2 ?
(
íí? @
)
íí@ A
;
ííA B
this
ìì 
.
ìì 
NavigationService
ìì &
.
ìì& '
Navigate
ìì' /
(
ìì/ 0
principalPage
ìì0 =
)
ìì= >
;
ìì> ?
NavigationService
îî !
.
îî! "
RemoveBackEntry
îî" 1
(
îî1 2
)
îî2 3
;
îî3 4
}
ïï 
}
ññ 	
public
òò 
void
òò 
DissolvingLobby
òò #
(
òò# $
)
òò$ %
{
ôô 	
dialogMessage
öö 
=
öö 
new
öö ,
InformationMessageDialogWindow
öö  >
(
öö> ?

Properties
öö? I
.
ööI J
	Resources
ööJ S
.
ööS T
txbWarningTitle
ööT c
,
ööc d

Properties
ööe o
.
ööo p
	Resources
ööp y
.
ööy z
GameCancelledööz á
,ööá à
Windowööâ è
.ööè ê
	GetWindowööê ô
(ööô ö
thisööö û
)ööû ü
)ööü †
;öö† °
CloseWindow
õõ 
(
õõ 
)
õõ 
;
õõ 
}
úú 	
private
ûû 
void
ûû 
DeleteSingleton
ûû $
(
ûû$ %
)
ûû% &
{
üü 	
try
†† 
{
°° &
GuestPlayerManagerClient
¢¢ (%
guestPlayerManagerProxy
¢¢) @
=
¢¢A B
new
¢¢C F
(
¢¢F G
)
¢¢G H
;
¢¢H I%
guestPlayerManagerProxy
££ '
.
££' (
DeleteGuest
££( 3
(
££3 4
userSingleton
££4 A
.
££A B
IdUser
££B H
)
££H I
;
££I J
}
§§ 
catch
•• 
(
•• '
EndpointNotFoundException
•• ,
ex
••- /
)
••/ 0
{
¶¶ %
ExceptionHandlerForLogs
ßß '
.
ßß' (
LogException
ßß( 4
(
ßß4 5
ex
ßß5 7
,
ßß7 8!
ExceptionDictionary
ßß9 L
.
ßßL M
FATAL_EXCEPTION
ßßM \
)
ßß\ ]
;
ßß] ^
}
®® 
catch
©© 
(
©© 1
#CommunicationObjectFaultedException
©© 6
ex
©©7 9
)
©©9 :
{
™™ %
ExceptionHandlerForLogs
´´ '
.
´´' (
LogException
´´( 4
(
´´4 5
ex
´´5 7
,
´´7 8!
ExceptionDictionary
´´9 L
.
´´L M
FATAL_EXCEPTION
´´M \
)
´´\ ]
;
´´] ^
}
¨¨ 
catch
≠≠ 
(
≠≠ 
TimeoutException
≠≠ #
ex
≠≠$ &
)
≠≠& '
{
ÆÆ %
ExceptionHandlerForLogs
ØØ '
.
ØØ' (
LogException
ØØ( 4
(
ØØ4 5
ex
ØØ5 7
,
ØØ7 8!
ExceptionDictionary
ØØ9 L
.
ØØL M
FATAL_EXCEPTION
ØØM \
)
ØØ\ ]
;
ØØ] ^
}
∞∞ 
catch
±± 
(
±± $
CommunicationException
±± )
ex
±±* ,
)
±±, -
{
≤≤ 
HandleException
≥≥ 
(
≥≥  
ex
≥≥  "
,
≥≥" #

Properties
≥≥$ .
.
≥≥. /
	Resources
≥≥/ 8
.
≥≥8 9!
lblWithoutConection
≥≥9 L
)
≥≥L M
;
≥≥M N
}
¥¥ 
UserSingleton
µµ 
.
µµ 
CleanSingleton
µµ (
(
µµ( )
)
µµ) *
;
µµ* +
}
∂∂ 	
private
∏∏ 
void
∏∏ 
ClickOpenChat
∏∏ "
(
∏∏" #
object
∏∏# )
sender
∏∏* 0
,
∏∏0 1"
MouseButtonEventArgs
∏∏2 F
e
∏∏G H
)
∏∏H I
{
ππ 	
if
∫∫ 
(
∫∫ 
liveChatInstance
∫∫  
==
∫∫! #
null
∫∫$ (
)
∫∫( )
{
ªª 
liveChatInstance
ºº  
=
ºº! "
new
ºº# &
LiveChat
ºº' /
(
ºº/ 0
)
ºº0 1
;
ºº1 2
liveChatInstance
ΩΩ  
.
ΩΩ  !
	StartPage
ΩΩ! *
(
ΩΩ* +
isAdminOfLobby
ΩΩ+ 9
,
ΩΩ9 :
roomCode
ΩΩ; C
,
ΩΩC D
this
ΩΩE I
)
ΩΩI J
;
ΩΩJ K
}
ææ 
liveChatInstance
øø 
.
øø #
RenewLiveChatCallBack
øø 2
(
øø2 3
)
øø3 4
;
øø4 5%
frmActiveFriendsAndChat
¿¿ #
.
¿¿# $
Content
¿¿$ +
=
¿¿, -
liveChatInstance
¿¿. >
;
¿¿> ?
grdActiveUser
¡¡ 
.
¡¡ 

Visibility
¡¡ $
=
¡¡% &

Visibility
¡¡' 1
.
¡¡1 2
Visible
¡¡2 9
;
¡¡9 :
}
¬¬ 	
public
ƒƒ 
void
ƒƒ 
ReceiveMessage
ƒƒ "
(
ƒƒ" #/
!GenericClassOfMessageChatxY0a3WX4
ƒƒ# D
message
ƒƒE L
)
ƒƒL M
{
≈≈ 	
(
∆∆ 
(
∆∆ 
ILiveChatCallback
∆∆ 
)
∆∆  
liveChatInstance
∆∆  0
)
∆∆0 1
.
∆∆1 2
ReceiveMessage
∆∆2 @
(
∆∆@ A
message
∆∆A H
)
∆∆H I
;
∆∆I J
}
«« 	
private
»» 
void
»» 
ClickListFriends
»» %
(
»»% &
object
»»& ,
sender
»»- 3
,
»»3 4"
MouseButtonEventArgs
»»5 I
e
»»J K
)
»»K L
{
…… 	
if
   
(
   !
activeUsersInstance
   #
==
  $ &
null
  ' +
)
  + ,
{
ÀÀ !
activeUsersInstance
ÃÃ #
=
ÃÃ$ %
new
ÃÃ& )
ActiveFriends
ÃÃ* 7
(
ÃÃ7 8
userSingleton
ÃÃ8 E
.
ÃÃE F
IdUser
ÃÃF L
)
ÃÃL M
;
ÃÃM N!
activeUsersInstance
ÕÕ #
.
ÕÕ# $
	StartPage
ÕÕ$ -
(
ÕÕ- .
this
ÕÕ. 2
)
ÕÕ2 3
;
ÕÕ3 4
}
ŒŒ !
activeUsersInstance
œœ 
.
œœ  (
RenewFriendCallBackChannel
œœ  :
(
œœ: ;
userSingleton
œœ; H
.
œœH I
IdUser
œœI O
)
œœO P
;
œœP Q%
frmActiveFriendsAndChat
–– #
.
––# $
Content
––$ +
=
––, -!
activeUsersInstance
––. A
;
––A B
grdActiveUser
—— 
.
—— 

Visibility
—— $
=
——% &

Visibility
——' 1
.
——1 2
Visible
——2 9
;
——9 :
}
““ 	
private
‘‘ 
void
‘‘ %
NotifyFriendsIamPlaying
‘‘ ,
(
‘‘, -
)
‘‘- .
{
’’ 	
try
÷÷ 
{
◊◊ -
AvailabilityUserManagmentClient
ÿÿ /#
availabilityUserProxy
ÿÿ0 E
=
ÿÿF G
new
ÿÿH K
(
ÿÿK L
)
ÿÿL M
;
ÿÿM N#
availabilityUserProxy
ŸŸ %
.
ŸŸ% &
PlayerIsPlaying
ŸŸ& 5
(
ŸŸ5 6
userSingleton
ŸŸ6 C
.
ŸŸC D
IdUser
ŸŸD J
)
ŸŸJ K
;
ŸŸK L
}
⁄⁄ 
catch
€€ 
(
€€ '
EndpointNotFoundException
€€ ,
ex
€€- /
)
€€/ 0
{
‹‹ %
ExceptionHandlerForLogs
›› '
.
››' (
LogException
››( 4
(
››4 5
ex
››5 7
,
››7 8!
ExceptionDictionary
››9 L
.
››L M
FATAL_EXCEPTION
››M \
)
››\ ]
;
››] ^
dialogMessage
ﬁﬁ 
=
ﬁﬁ 
new
ﬁﬁ  #,
InformationMessageDialogWindow
ﬁﬁ$ B
(
ﬁﬁB C

Properties
ﬁﬁC M
.
ﬁﬁM N
	Resources
ﬁﬁN W
.
ﬁﬁW X
txbErrorTitle
ﬁﬁX e
,
ﬁﬁe f

Properties
ﬁﬁg q
.
ﬁﬁq r
	Resources
ﬁﬁr {
.
ﬁﬁ{ |)
lblFailToNotifyYourFriendsﬁﬁ| ñ
+ﬁﬁó ò
$strﬁﬁô û
+ﬁﬁü †

Propertiesﬁﬁ° ´
.ﬁﬁ´ ¨
	Resourcesﬁﬁ¨ µ
.ﬁﬁµ ∂#
lblEndPointNotFoundﬁﬁ∂ …
,ﬁﬁ…  
WindowﬁﬁÀ —
.ﬁﬁ— “
	GetWindowﬁﬁ“ €
(ﬁﬁ€ ‹
thisﬁﬁ‹ ‡
)ﬁﬁ‡ ·
)ﬁﬁ· ‚
;ﬁﬁ‚ „
}
ﬂﬂ 
catch
‡‡ 
(
‡‡ 1
#CommunicationObjectFaultedException
‡‡ 6
ex
‡‡7 9
)
‡‡9 :
{
·· %
ExceptionHandlerForLogs
‚‚ '
.
‚‚' (
LogException
‚‚( 4
(
‚‚4 5
ex
‚‚5 7
,
‚‚7 8!
ExceptionDictionary
‚‚9 L
.
‚‚L M
FATAL_EXCEPTION
‚‚M \
)
‚‚\ ]
;
‚‚] ^
dialogMessage
„„ 
=
„„ 
new
„„  #,
InformationMessageDialogWindow
„„$ B
(
„„B C

Properties
„„C M
.
„„M N
	Resources
„„N W
.
„„W X
txbErrorTitle
„„X e
,
„„e f

Properties
„„g q
.
„„q r
	Resources
„„r {
.
„„{ |)
lblFailToNotifyYourFriends„„| ñ
+„„ó ò
$str„„ô û
+„„ü †

Properties„„° ´
.„„´ ¨
	Resources„„¨ µ
.„„µ ∂#
lblEndPointNotFound„„∂ …
,„„…  
Window„„À —
.„„— “
	GetWindow„„“ €
(„„€ ‹
this„„‹ ‡
)„„‡ ·
)„„· ‚
;„„‚ „
}
‰‰ 
catch
ÂÂ 
(
ÂÂ 
TimeoutException
ÂÂ #
ex
ÂÂ$ &
)
ÂÂ& '
{
ÊÊ %
ExceptionHandlerForLogs
ÁÁ '
.
ÁÁ' (
LogException
ÁÁ( 4
(
ÁÁ4 5
ex
ÁÁ5 7
,
ÁÁ7 8!
ExceptionDictionary
ÁÁ9 L
.
ÁÁL M
FATAL_EXCEPTION
ÁÁM \
)
ÁÁ\ ]
;
ÁÁ] ^
dialogMessage
ËË 
=
ËË 
new
ËË  #,
InformationMessageDialogWindow
ËË$ B
(
ËËB C

Properties
ËËC M
.
ËËM N
	Resources
ËËN W
.
ËËW X
txbErrorTitle
ËËX e
,
ËËe f

Properties
ËËg q
.
ËËq r
	Resources
ËËr {
.
ËË{ |)
lblFailToNotifyYourFriendsËË| ñ
+ËËó ò
$strËËô û
+ËËü †

PropertiesËË° ´
.ËË´ ¨
	ResourcesËË¨ µ
.ËËµ ∂#
lblEndPointNotFoundËË∂ …
,ËË…  
WindowËËÀ —
.ËË— “
	GetWindowËË“ €
(ËË€ ‹
thisËË‹ ‡
)ËË‡ ·
)ËË· ‚
;ËË‚ „
}
ÈÈ 
catch
ÍÍ 
(
ÍÍ $
CommunicationException
ÍÍ )
ex
ÍÍ* ,
)
ÍÍ, -
{
ÎÎ %
ExceptionHandlerForLogs
ÏÏ '
.
ÏÏ' (
LogException
ÏÏ( 4
(
ÏÏ4 5
ex
ÏÏ5 7
,
ÏÏ7 8!
ExceptionDictionary
ÏÏ9 L
.
ÏÏL M
FATAL_EXCEPTION
ÏÏM \
)
ÏÏ\ ]
;
ÏÏ] ^
dialogMessage
ÌÌ 
=
ÌÌ 
new
ÌÌ  #,
InformationMessageDialogWindow
ÌÌ$ B
(
ÌÌB C

Properties
ÌÌC M
.
ÌÌM N
	Resources
ÌÌN W
.
ÌÌW X
txbErrorTitle
ÌÌX e
,
ÌÌe f

Properties
ÌÌg q
.
ÌÌq r
	Resources
ÌÌr {
.
ÌÌ{ |)
lblFailToNotifyYourFriendsÌÌ| ñ
+ÌÌó ò
$strÌÌô û
+ÌÌü †

PropertiesÌÌ° ´
.ÌÌ´ ¨
	ResourcesÌÌ¨ µ
.ÌÌµ ∂#
lblEndPointNotFoundÌÌ∂ …
,ÌÌ…  
WindowÌÌÀ —
.ÌÌ— “
	GetWindowÌÌ“ €
(ÌÌ€ ‹
thisÌÌ‹ ‡
)ÌÌ‡ ·
)ÌÌ· ‚
;ÌÌ‚ „
}
ÓÓ 
}
ÔÔ 	
public
ÒÒ 
void
ÒÒ +
CloseSubFrameOfChatAndFriends
ÒÒ 1
(
ÒÒ1 2
)
ÒÒ2 3
{
ÚÚ 	%
frmActiveFriendsAndChat
ÛÛ #
.
ÛÛ# $
Content
ÛÛ$ +
=
ÛÛ, -
null
ÛÛ. 2
;
ÛÛ2 3
grdActiveUser
ÙÙ 
.
ÙÙ 

Visibility
ÙÙ $
=
ÙÙ% &

Visibility
ÙÙ' 1
.
ÙÙ1 2
Hidden
ÙÙ2 8
;
ÙÙ8 9
}
ıı 	
public
ˆˆ 
void
ˆˆ *
ResponseOfPlayerAvailability
ˆˆ 0
(
ˆˆ0 1
int
ˆˆ1 4
status
ˆˆ5 ;
,
ˆˆ; <
int
ˆˆ= @
idFriend
ˆˆA I
)
ˆˆI J
{
˜˜ 	
(
¯¯ 
(
¯¯ -
INotifyUserAvailabilityCallback
¯¯ -
)
¯¯- .!
activeUsersInstance
¯¯. A
)
¯¯A B
.
¯¯B C*
ResponseOfPlayerAvailability
¯¯C _
(
¯¯_ `
status
¯¯` f
,
¯¯f g
idFriend
¯¯h p
)
¯¯p q
;
¯¯q r
}
˘˘ 	
public
¸¸ 
void
¸¸ %
NotifyQuestionsAreReady
¸¸ +
(
¸¸+ ,
int
¸¸, /
	codeEvent
¸¸0 9
)
¸¸9 :
{
˝˝ 	
if
˛˛ 
(
˛˛ 
	codeEvent
˛˛ 
==
˛˛ !
ExceptionDictionary
˛˛ 0
.
˛˛0 1
SUCCESFULL_EVENT
˛˛1 A
)
˛˛A B
{
ˇˇ 
bttStartGame
ÄÄ 
.
ÄÄ 
	IsEnabled
ÄÄ &
=
ÄÄ' (
true
ÄÄ) -
;
ÄÄ- .
}
ÅÅ 
else
ÇÇ 
{
ÉÉ 
dialogMessage
ÑÑ 
=
ÑÑ 
new
ÑÑ  #&
ErrorMessageDialogWindow
ÑÑ$ <
(
ÑÑ< =

Properties
ÑÑ= G
.
ÑÑG H
	Resources
ÑÑH Q
.
ÑÑQ R
txbErrorTitle
ÑÑR _
,
ÑÑ_ `

Properties
ÑÑa k
.
ÑÑk l
	Resources
ÑÑl u
.
ÑÑu v

lblNotGameÑÑv Ä
,ÑÑÄ Å
WindowÑÑÇ à
.ÑÑà â
	GetWindowÑÑâ í
(ÑÑí ì
thisÑÑì ó
)ÑÑó ò
)ÑÑò ô
;ÑÑô ö
}
ÖÖ 
}
ÜÜ 	
private
ââ 
void
ââ 
ClickStartGame
ââ #
(
ââ# $
object
ââ$ *
sender
ââ+ 1
,
ââ1 2
RoutedEventArgs
ââ3 B
e
ââC D
)
ââD E
{
ää 	
if
ãã 
(
ãã 
(
ãã 
bool
ãã 
)
ãã 
	chbTeamUp
ãã 
.
ãã  
	IsChecked
ãã  )
)
ãã) *
{
åå 
if
çç 
(
çç "
currentPlayerInLobby
çç (
.
çç( )
Where
çç) .
(
çç. /
pl
çç/ 1
=>
çç2 4
pl
çç5 7
.
çç7 8

SideOfTeam
çç8 B
==
ççC E
TEAM_LEFT_SIDE
ççF T
)
ççT U
.
ççU V
ToList
ççV \
(
çç\ ]
)
çç] ^
.
çç^ _
Count
çç_ d
==
ççe g"
currentPlayerInLobby
ççh |
.
çç| }
Whereçç} Ç
(ççÇ É
plççÉ Ö
=>ççÜ à
plççâ ã
.ççã å

SideOfTeamççå ñ
==ççó ô
TEMA_RIGHT_SIDEççö ©
)çç© ™
.çç™ ´
ToListçç´ ±
(çç± ≤
)çç≤ ≥
.çç≥ ¥
Countçç¥ π
)ççπ ∫
{
éé #
CallMethodToStartGame
èè )
(
èè) *
)
èè* +
;
èè+ ,
}
êê 
else
ëë 
{
íí 
dialogMessage
ìì !
=
ìì" #
new
ìì$ '&
ErrorMessageDialogWindow
ìì( @
(
ìì@ A

Properties
ììA K
.
ììK L
	Resources
ììL U
.
ììU V
txbErrorTitle
ììV c
,
ììc d

Properties
ììe o
.
ììo p
	Resources
ììp y
.
ììy z
_2PlayerByTeamììz à
,ììà â
Windowììä ê
.ììê ë
	GetWindowììë ö
(ììö õ
thisììõ ü
)ììü †
)ìì† °
;ìì° ¢
}
îî 
}
ïï 
else
ññ 
if
ññ 
(
ññ "
currentPlayerInLobby
ññ )
.
ññ) *
Count
ññ* /
>
ññ0 1
$num
ññ2 3
)
ññ3 4
{
óó #
CallMethodToStartGame
òò %
(
òò% &
)
òò& '
;
òò' (
}
ôô 
else
öö 
{
õõ 
dialogMessage
úú 
=
úú 
new
úú  #&
ErrorMessageDialogWindow
úú$ <
(
úú< =

Properties
úú= G
.
úúG H
	Resources
úúH Q
.
úúQ R
txbErrorTitle
úúR _
,
úú_ `

Properties
úúa k
.
úúk l
	Resources
úúl u
.
úúu v
MoreThan1Playerúúv Ö
,úúÖ Ü
Windowúúá ç
.úúç é
	GetWindowúúé ó
(úúó ò
thisúúò ú
)úúú ù
)úúù û
;úúû ü
}
ùù 
}
ûû 	
private
†† 
void
†† #
CallMethodToStartGame
†† *
(
††* +
)
††+ ,
{
°° 	
try
¢¢ 
{
££ )
LobbyActionsOperationClient
§§ +
lobbyActionsProxy
§§, =
=
§§> ?
new
§§@ C
(
§§C D
)
§§D E
;
§§E F
lobbyActionsProxy
•• !
.
••! "
	StartGame
••" +
(
••+ ,
roomCode
••, 4
)
••4 5
;
••5 6
}
¶¶ 
catch
ßß 
(
ßß '
EndpointNotFoundException
ßß ,
ex
ßß- /
)
ßß/ 0
{
®® 
HandleException
©© 
(
©©  
ex
©©  "
,
©©" #

Properties
©©$ .
.
©©. /
	Resources
©©/ 8
.
©©8 9 
lblFailToStartGame
©©9 K
+
©©L M
$str
©©N S
+
©©T U

Properties
©©V `
.
©©` a
	Resources
©©a j
.
©©j k!
lblEndPointNotFound
©©k ~
)
©©~ 
;©© Ä
}
™™ 
catch
´´ 
(
´´ 1
#CommunicationObjectFaultedException
´´ 6
ex
´´7 9
)
´´9 :
{
¨¨ 
HandleException
≠≠ 
(
≠≠  
ex
≠≠  "
,
≠≠" #

Properties
≠≠$ .
.
≠≠. /
	Resources
≠≠/ 8
.
≠≠8 9 
lblFailToStartGame
≠≠9 K
+
≠≠L M
$str
≠≠N S
+
≠≠T U

Properties
≠≠V `
.
≠≠` a
	Resources
≠≠a j
.
≠≠j k'
lblComunicationException≠≠k É
)≠≠É Ñ
;≠≠Ñ Ö
}
ÆÆ 
catch
ØØ 
(
ØØ 
TimeoutException
ØØ #
ex
ØØ$ &
)
ØØ& '
{
∞∞ 
HandleException
±± 
(
±±  
ex
±±  "
,
±±" #

Properties
±±$ .
.
±±. /
	Resources
±±/ 8
.
±±8 9 
lblFailToStartGame
±±9 K
+
±±L M
$str
±±N S
+
±±T U

Properties
±±V `
.
±±` a
	Resources
±±a j
.
±±j k
lblTimeException
±±k {
)
±±{ |
;
±±| }
}
≤≤ 
catch
≥≥ 
(
≥≥ $
CommunicationException
≥≥ )
ex
≥≥* ,
)
≥≥, -
{
¥¥ 
HandleException
µµ 
(
µµ  
ex
µµ  "
,
µµ" #

Properties
µµ$ .
.
µµ. /
	Resources
µµ/ 8
.
µµ8 9 
lblFailToStartGame
µµ9 K
+
µµL M
$str
µµN S
+
µµT U

Properties
µµV `
.
µµ` a
	Resources
µµa j
.
µµj k!
lblWithoutConection
µµk ~
)
µµ~ 
;µµ Ä
}
∂∂ 
}
∑∑ 	
public
ππ 
void
ππ !
NotifyGameWillStart
ππ '
(
ππ' (%
QuestionCardInformation
ππ( ?
[
ππ? @
]
ππ@ A
questionsForGame
ππB R
)
ππR S
{
∫∫ 	
	GameBoard
ªª 
game
ªª 
=
ªª 
new
ªª  
	GameBoard
ªª! *
(
ªª* +
questionsForGame
ªª+ ;
.
ªª; <
ToList
ªª< B
(
ªªB C
)
ªªC D
,
ªªD E
roomCode
ªªF N
)
ªªN O
;
ªªO P
this
ºº 
.
ºº 
NavigationService
ºº "
.
ºº" #
Navigate
ºº# +
(
ºº+ ,
game
ºº, 0
)
ºº0 1
;
ºº1 2
NavigationService
ΩΩ 
.
ΩΩ 
RemoveBackEntry
ΩΩ -
(
ΩΩ- .
)
ΩΩ. /
;
ΩΩ/ 0
}
ææ 	
public
¿¿ 
static
¿¿ 
class
¿¿ 
GameCodeContainer
¿¿ -
{
¡¡ 	
public
¬¬ 
static
¬¬ 
int
¬¬ 
RoomCode
¬¬ &
{
¬¬' (
get
¬¬) ,
;
¬¬, -
set
¬¬. 1
;
¬¬1 2
}
¬¬3 4
}
√√ 	
private
ƒƒ 
void
ƒƒ 
HandleException
ƒƒ $
(
ƒƒ$ %
	Exception
ƒƒ% .
ex
ƒƒ/ 1
,
ƒƒ1 2
string
ƒƒ3 9
errorMessage
ƒƒ: F
)
ƒƒF G
{
≈≈ 	%
ExceptionHandlerForLogs
∆∆ #
.
∆∆# $
LogException
∆∆$ 0
(
∆∆0 1
ex
∆∆1 3
,
∆∆3 4!
ExceptionDictionary
∆∆5 H
.
∆∆H I
FATAL_EXCEPTION
∆∆I X
)
∆∆X Y
;
∆∆Y Z
dialogMessage
«« 
=
«« 
new
«« &
ErrorMessageDialogWindow
««  8
(
««8 9

Properties
««9 C
.
««C D
	Resources
««D M
.
««M N
txbErrorTitle
««N [
,
««[ \
errorMessage
««] i
,
««i j
Application
««k v
.
««v w
Current
««w ~
.
««~ 

MainWindow«« â
)««â ä
;««ä ã
ReturnToLogin
»» 
(
»» 
)
»» 
;
»» 
}
…… 	
private
ÀÀ 
void
ÀÀ 
ReturnToLogin
ÀÀ "
(
ÀÀ" #
)
ÀÀ# $
{
ÃÃ 	
UserSingleton
ÕÕ 
.
ÕÕ 
CleanSingleton
ÕÕ (
(
ÕÕ( )
)
ÕÕ) *
;
ÕÕ* +
	LogInUser
ŒŒ 
logInUserPage
ŒŒ #
=
ŒŒ$ %
new
ŒŒ& )
	LogInUser
ŒŒ* 3
(
ŒŒ3 4
)
ŒŒ4 5
;
ŒŒ5 6
this
œœ 
.
œœ 
NavigationService
œœ "
.
œœ" #
Navigate
œœ# +
(
œœ+ ,
logInUserPage
œœ, 9
)
œœ9 :
;
œœ: ;
NavigationService
–– 
.
–– 
RemoveBackEntry
–– -
(
––- .
)
––. /
;
––/ 0
}
““ 	
}
‘‘ 
}’’ •å
hC:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameClient\Pages\LogInUser.xaml.cs
	namespace 	
JeopardyGame
 
. 
Pages 
{ 
public   

partial   
class   
	LogInUser   "
:  # $
System  % +
.  + ,
Windows  , 3
.  3 4
Controls  4 <
.  < =
Page  = A
,  A B$
ICheckUserLivingCallback  C [
{!! 
private"" 
const"" 
int"" 
RIGTH_CREDENTIALS"" +
="", -
$num"". /
;""/ 0
private## 
const## 
int## 
WRONG_CREDENTIALS## +
=##, -
$num##. /
;##/ 0
private$$ 
UserSingleton$$ 
userSingleton$$ +
;$$+ ,
private%% 
Window%% 
dialogMessage%% $
;%%$ %
public'' 
	LogInUser'' 
('' 
)'' 
{(( 	
InitializeComponent)) 
())  
)))  !
;))! "
txbUserNameLogIn** 
.** 
	MaxLength** &
=**' (
$num**) +
;**+ ,
pssPasswordLogIn++ 
.++ 
	MaxLength++ &
=++' (
$num++) +
;+++ ,
},, 	
private.. 
void.. 
ClickDoLogIn.. !
(..! "
object.." (
sender..) /
,../ 0
RoutedEventArgs..1 @
e..A B
)..B C
{// 	
if00 
(00 
CheckEmptyFields00  
(00  !
)00! "
)00" #
{11 
UserValidate22 
userValidate22 )
=22* +
new22, /
UserValidate220 <
(22< =
)22= >
;22> ?
userValidate33 
.33 
UserName33 %
=33& '
txbUserNameLogIn33( 8
.338 9
Text339 =
.33= >
Trim33> B
(33B C
)33C D
;33D E
userValidate44 
.44 
Password44 %
=44& '
EncryptionClass44( 7
.447 8
EncryptPassword448 G
(44G H
pssPasswordLogIn44H X
.44X Y
Password44Y a
.44a b
Trim44b f
(44f g
)44g h
)44h i
;44i j
try55 
{66 #
LogInVerificationClient77 +"
logInVerificationProxy77, B
=77C D
new77E H#
LogInVerificationClient77I `
(77` a
)77a b
;77b c
var88 
result88 
=88  "
logInVerificationProxy88! 7
.887 8
ValidateCredentials888 K
(88K L
userValidate88L X
)88X Y
;88Y Z
if99 
(99 
result99 
.99 
	CodeEvent99 (
==99) +
ExceptionDictionary99, ?
.99? @
SUCCESFULL_EVENT99@ P
||99Q S
result99T Z
.99Z [
	CodeEvent99[ d
==99e g
ExceptionDictionary99h {
.99{ |
UNSUCCESFULL_EVENT	99| é
)
99é è
{:: 
if<< 
(<< 
result<< "
.<<" #
ObjectSaved<<# .
==<</ 1
RIGTH_CREDENTIALS<<2 C
)<<C D
{== 
ValidateOnlyOneUser>> /
(>>/ 0
userValidate>>0 <
)>>< =
;>>= >
}?? 
else@@ 
if@@ 
(@@  !
result@@! '
.@@' (
ObjectSaved@@( 3
==@@4 6
WRONG_CREDENTIALS@@7 H
)@@H I
{AA 
dialogMessageBB )
=BB* +
newBB, /$
ErrorMessageDialogWindowBB0 H
(BBH I

PropertiesBBI S
.BBS T
	ResourcesBBT ]
.BB] ^
txbErrorTitleBB^ k
,BBk l

PropertiesBBm w
.BBw x
	Resources	BBx Å
.
BBÅ Ç#
lblinvalidCredentials
BBÇ ó
,
BBó ò
Application
BBô §
.
BB§ •
Current
BB• ¨
.
BB¨ ≠

MainWindow
BB≠ ∑
)
BB∑ ∏
;
BB∏ π
}CC 
elseDD 
{EE 
dialogMessageFF )
=FF* +
newFF, /$
ErrorMessageDialogWindowFF0 H
(FFH I

PropertiesFFI S
.FFS T
	ResourcesFFT ]
.FF] ^
txbErrorTitleFF^ k
,FFk l

PropertiesFFm w
.FFw x
	Resources	FFx Å
.
FFÅ Ç&
lblComunicationException
FFÇ ö
,
FFö õ
Application
FFú ß
.
FFß ®
Current
FF® Ø
.
FFØ ∞

MainWindow
FF∞ ∫
)
FF∫ ª
;
FFª º
}GG 
}HH 
elseII 
{JJ 
dialogMessageKK %
=KK& '
newKK( +$
ErrorMessageDialogWindowKK, D
(KKD E

PropertiesKKE O
.KKO P
	ResourcesKKP Y
.KKY Z
txbErrorTitleKKZ g
,KKg h

PropertiesKKi s
.KKs t
	ResourcesKKt }
.KK} ~ 
MessageSQLException	KK~ ë
,
KKë í
Application
KKì û
.
KKû ü
Current
KKü ¶
.
KK¶ ß

MainWindow
KKß ±
)
KK± ≤
;
KK≤ ≥
}LL 
}MM 
catchNN 
(NN %
EndpointNotFoundExceptionNN 0
exNN1 3
)NN3 4
{OO 
HandleExceptionPP #
(PP# $
exPP$ &
,PP& '

PropertiesPP( 2
.PP2 3
	ResourcesPP3 <
.PP< =
lblEndPointNotFoundPP= P
)PPP Q
;PPQ R
}QQ 
catchRR 
(RR /
#CommunicationObjectFaultedExceptionRR :
exRR; =
)RR= >
{SS 
HandleExceptionTT #
(TT# $
exTT$ &
,TT& '

PropertiesTT( 2
.TT2 3
	ResourcesTT3 <
.TT< =$
lblComunicationExceptionTT= U
)TTU V
;TTV W
}UU 
catchVV 
(VV 
TimeoutExceptionVV '
exVV( *
)VV* +
{WW 
HandleExceptionXX #
(XX# $
exXX$ &
,XX& '

PropertiesXX( 2
.XX2 3
	ResourcesXX3 <
.XX< =
lblTimeExceptionXX= M
)XXM N
;XXN O
}YY 
catchZZ 
(ZZ "
CommunicationExceptionZZ -
exZZ. 0
)ZZ0 1
{[[ 
HandleException\\ #
(\\# $
ex\\$ &
,\\& '

Properties\\( 2
.\\2 3
	Resources\\3 <
.\\< =
lblWithoutConection\\= P
)\\P Q
;\\Q R
}]] 
catch^^ 
(^^ 
SocketException^^ &
ex^^' )
)^^) *
{__ 
HandleException`` #
(``# $
ex``$ &
,``& '

Properties``( 2
.``2 3
	Resources``3 <
.``< =
lblEndPointNotFound``= P
)``P Q
;``Q R
}aa 
}bb 
}cc 	
privateee 
voidee 
ValidateOnlyOneUseree (
(ee( )
UserValidateee) 5
userValidateee6 B
)eeB C
{ff 	
trygg 
{hh #
LogInVerificationClientii '"
logInVerificationProxyii( >
=ii? @
newiiA D#
LogInVerificationClientiiE \
(ii\ ]
)ii] ^
;ii^ _(
ConsultUserInformationClientjj ,#
consultInformationProxyjj- D
=jjE F
newjjG J(
ConsultUserInformationClientjjK g
(jjg h
)jjh i
;jji j
varkk 
userConsultedkk !
=kk" ##
consultInformationProxykk$ ;
.kk; <!
ConsultUserByUserNamekk< Q
(kkQ R
userValidatekkR ^
.kk^ _
UserNamekk_ g
)kkg h
;kkh i
varll 
isAlreadyConnectedll &
=ll' ("
logInVerificationProxyll) ?
.ll? @0
$ValidateThereIsOnlyOneAActiveAccountll@ d
(lld e
userConsultedlle r
.llr s
ObjectSavedlls ~
.ll~ 
UserName	ll á
)
llá à
;
llà â"
logInVerificationProxymm &
.mm& '
Closemm' ,
(mm, -
)mm- .
;mm. /
ifnn 
(nn 
isAlreadyConnectednn &
==nn' )
ExceptionDictionarynn* =
.nn= >
SUCCESFULL_EVENTnn> N
)nnN O
{oo 
DoLoginpp 
(pp 
userValidatepp (
.pp( )
UserNamepp) 1
)pp1 2
;pp2 3
}qq 
elserr 
ifrr 
(rr 
isAlreadyConnectedrr +
!=rr, .
ExceptionDictionaryrr/ B
.rrB C
SUCCESFULL_EVENTrrC S
)rrS T
{ss 
dialogMessagett !
=tt" #
newtt$ '$
ErrorMessageDialogWindowtt( @
(tt@ A

PropertiesttA K
.ttK L
	ResourcesttL U
.ttU V
txbErrorTitlettV c
,ttc d

Propertiestte o
.tto p
	Resourcesttp y
.tty z
lblLogInExist	ttz á
,
ttá à
Application
ttâ î
.
ttî ï
Current
ttï ú
.
ttú ù

MainWindow
ttù ß
)
ttß ®
;
tt® ©
}uu 
}vv 
catchww 
(ww %
EndpointNotFoundExceptionww ,
exww- /
)ww/ 0
{xx 
HandleExceptionyy 
(yy  
exyy  "
,yy" #

Propertiesyy$ .
.yy. /
	Resourcesyy/ 8
.yy8 9
lblEndPointNotFoundyy9 L
)yyL M
;yyM N
}zz 
catch{{ 
({{ /
#CommunicationObjectFaultedException{{ 6
ex{{7 9
){{9 :
{|| 
HandleException}} 
(}}  
ex}}  "
,}}" #

Properties}}$ .
.}}. /
	Resources}}/ 8
.}}8 9$
lblComunicationException}}9 Q
)}}Q R
;}}R S
}~~ 
catch 
( 
TimeoutException #
ex$ &
)& '
{
ÄÄ 
HandleException
ÅÅ 
(
ÅÅ  
ex
ÅÅ  "
,
ÅÅ" #

Properties
ÅÅ$ .
.
ÅÅ. /
	Resources
ÅÅ/ 8
.
ÅÅ8 9
lblTimeException
ÅÅ9 I
)
ÅÅI J
;
ÅÅJ K
}
ÇÇ 
catch
ÉÉ 
(
ÉÉ $
CommunicationException
ÉÉ )
ex
ÉÉ* ,
)
ÉÉ, -
{
ÑÑ 
HandleException
ÖÖ 
(
ÖÖ  
ex
ÖÖ  "
,
ÖÖ" #

Properties
ÖÖ$ .
.
ÖÖ. /
	Resources
ÖÖ/ 8
.
ÖÖ8 9!
lblWithoutConection
ÖÖ9 L
)
ÖÖL M
;
ÖÖM N
}
ÜÜ 
catch
áá 
(
áá 
SocketException
áá "
ex
áá# %
)
áá% &
{
àà 
HandleException
ââ 
(
ââ  
ex
ââ  "
,
ââ" #

Properties
ââ$ .
.
ââ. /
	Resources
ââ/ 8
.
ââ8 9!
lblEndPointNotFound
ââ9 L
)
ââL M
;
ââM N
}
ää 
}
ãã 	
private
çç 
bool
çç 
CheckEmptyFields
çç %
(
çç% &
)
çç& '
{
éé 	
bool
èè 
answer
èè 
=
èè 
true
èè 
;
èè 
if
êê 
(
êê 
string
êê 
.
êê 
IsNullOrEmpty
êê $
(
êê$ %
txbUserNameLogIn
êê% 5
.
êê5 6
Text
êê6 :
)
êê: ;
)
êê; <
{
ëë 
LblWrongUserName
íí  
.
íí  !
Content
íí! (
=
íí) *

Properties
íí+ 5
.
íí5 6
	Resources
íí6 ?
.
íí? @
LblWrongUserName
íí@ P
;
ííP Q
LblWrongUserName
ìì  
.
ìì  !

Visibility
ìì! +
=
ìì, -

Visibility
ìì. 8
.
ìì8 9
Visible
ìì9 @
;
ìì@ A
answer
îî 
=
îî 
false
îî 
;
îî 
}
ïï 
else
ññ 
{
óó 
LblWrongUserName
òò  
.
òò  !

Visibility
òò! +
=
òò, -

Visibility
òò. 8
.
òò8 9
	Collapsed
òò9 B
;
òòB C
}
ôô 
if
õõ 
(
õõ 
string
õõ 
.
õõ 
IsNullOrEmpty
õõ $
(
õõ$ %
pssPasswordLogIn
õõ% 5
.
õõ5 6
Password
õõ6 >
)
õõ> ?
)
õõ? @
{
úú 
lblPasswordWrong
ùù  
.
ùù  !
Content
ùù! (
=
ùù) *

Properties
ùù+ 5
.
ùù5 6
	Resources
ùù6 ?
.
ùù? @
lblPasswordWrong
ùù@ P
;
ùùP Q
lblPasswordWrong
ûû  
.
ûû  !

Visibility
ûû! +
=
ûû, -

Visibility
ûû. 8
.
ûû8 9
Visible
ûû9 @
;
ûû@ A
answer
üü 
=
üü 
false
üü 
;
üü 
}
†† 
else
°° 
{
¢¢ 
lblPasswordWrong
££  
.
££  !

Visibility
££! +
=
££, -

Visibility
££. 8
.
££8 9
	Collapsed
££9 B
;
££B C
}
§§ 
return
•• 
answer
•• 
;
•• 
}
¶¶ 	
private
®® 
void
®® 
DoLogin
®® 
(
®® 
String
®® #
userName
®®$ ,
)
®®, -
{
©© 	
try
™™ 
{
´´ *
ConsultUserInformationClient
¨¨ ,%
consultInformationProxy
¨¨- D
=
¨¨E F
new
¨¨G J*
ConsultUserInformationClient
¨¨K g
(
¨¨g h
)
¨¨h i
;
¨¨i j
var
≠≠ 
currentUser
≠≠ 
=
≠≠  !%
consultInformationProxy
≠≠" 9
.
≠≠9 :#
ConsultUserByUserName
≠≠: O
(
≠≠O P
userName
≠≠P X
)
≠≠X Y
;
≠≠Y Z
if
ÆÆ 
(
ÆÆ 
currentUser
ÆÆ 
.
ÆÆ  
	CodeEvent
ÆÆ  )
==
ÆÆ* ,!
ExceptionDictionary
ÆÆ- @
.
ÆÆ@ A
SUCCESFULL_EVENT
ÆÆA Q
)
ÆÆQ R
{
ØØ 
var
∞∞ 
currentPlayer
∞∞ %
=
∞∞& '%
consultInformationProxy
∞∞( ?
.
∞∞? @#
ConsultPlayerByIdUser
∞∞@ U
(
∞∞U V
currentUser
∞∞V a
.
∞∞a b
ObjectSaved
∞∞b m
.
∞∞m n
IdUser
∞∞n t
)
∞∞t u
;
∞∞u v
if
±± 
(
±± 
currentPlayer
±± %
.
±±% &
	CodeEvent
±±& /
==
±±0 2!
ExceptionDictionary
±±3 F
.
±±F G
SUCCESFULL_EVENT
±±G W
)
±±W X
{
≤≤ 
if
¥¥ 
(
¥¥ 
currentPlayer
¥¥ )
.
¥¥) *
ObjectSaved
¥¥* 5
.
¥¥5 6
	NoReports
¥¥6 ?
>=
¥¥@ B
$num
¥¥C D
)
¥¥D E
{
µµ 
dialogMessage
∂∂ )
=
∂∂* +
new
∂∂, /&
ErrorMessageDialogWindow
∂∂0 H
(
∂∂H I

Properties
∂∂I S
.
∂∂S T
	Resources
∂∂T ]
.
∂∂] ^
txbErrorTitle
∂∂^ k
,
∂∂k l

Properties
∂∂m w
.
∂∂w x
	Resources∂∂x Å
.∂∂Å Ç
lblUserBanner∂∂Ç è
,∂∂è ê
Application∂∂ë ú
.∂∂ú ù
Current∂∂ù §
.∂∂§ •

MainWindow∂∂• Ø
)∂∂Ø ∞
;∂∂∞ ±
UserSingleton
∑∑ )
.
∑∑) *
CleanSingleton
∑∑* 8
(
∑∑8 9
)
∑∑9 :
;
∑∑: ;
}
∏∏ 
else
ππ 
if
ππ 
(
ππ  !&
SubscribeToLivingChannel
ππ! 9
(
ππ9 :
currentUser
ππ: E
.
ππE F
ObjectSaved
ππF Q
)
ππQ R
==
ππS U!
ExceptionDictionary
ππV i
.
ππi j
SUCCESFULL_EVENT
ππj z
)
ππz {
{
∫∫ 
InstanceSingleton
ªª -
(
ªª- .
currentUser
ªª. 9
.
ªª9 :
ObjectSaved
ªª: E
,
ªªE F
currentPlayer
ªªG T
.
ªªT U
ObjectSaved
ªªU `
)
ªª` a
;
ªªa b
GoToMainMenu
ºº (
(
ºº( )
)
ºº) *
;
ºº* +
}
ΩΩ 
else
ææ 
{
øø 
dialogMessage
¿¿ )
=
¿¿* +
new
¿¿, /&
ErrorMessageDialogWindow
¿¿0 H
(
¿¿H I

Properties
¿¿I S
.
¿¿S T
	Resources
¿¿T ]
.
¿¿] ^
txbErrorTitle
¿¿^ k
,
¿¿k l

Properties
¿¿m w
.
¿¿w x
	Resources¿¿x Å
.¿¿Å Ç)
lblFailRegistryToCallBack¿¿Ç õ
,¿¿õ ú
Application¿¿ù ®
.¿¿® ©
Current¿¿© ∞
.¿¿∞ ±

MainWindow¿¿± ª
)¿¿ª º
;¿¿º Ω
UserSingleton
¡¡ )
.
¡¡) *
CleanSingleton
¡¡* 8
(
¡¡8 9
)
¡¡9 :
;
¡¡: ;
}
¬¬ 
}
√√ 
else
ƒƒ 
{
≈≈ 
dialogMessage
∆∆ %
=
∆∆& '
new
∆∆( +&
ErrorMessageDialogWindow
∆∆, D
(
∆∆D E

Properties
∆∆E O
.
∆∆O P
	Resources
∆∆P Y
.
∆∆Y Z
txbErrorTitle
∆∆Z g
,
∆∆g h

Properties
∆∆i s
.
∆∆s t
	Resources
∆∆t }
.
∆∆} ~"
MessageSQLException∆∆~ ë
,∆∆ë í
Application∆∆ì û
.∆∆û ü
Current∆∆ü ¶
.∆∆¶ ß

MainWindow∆∆ß ±
)∆∆± ≤
;∆∆≤ ≥
}
«« 
}
»» 
else
…… 
{
   
dialogMessage
ÀÀ !
=
ÀÀ" #
new
ÀÀ$ '&
ErrorMessageDialogWindow
ÀÀ( @
(
ÀÀ@ A

Properties
ÀÀA K
.
ÀÀK L
	Resources
ÀÀL U
.
ÀÀU V
txbErrorTitle
ÀÀV c
,
ÀÀc d

Properties
ÀÀe o
.
ÀÀo p
	Resources
ÀÀp y
.
ÀÀy z"
MessageSQLExceptionÀÀz ç
,ÀÀç é
ApplicationÀÀè ö
.ÀÀö õ
CurrentÀÀõ ¢
.ÀÀ¢ £

MainWindowÀÀ£ ≠
)ÀÀ≠ Æ
;ÀÀÆ Ø
}
ÃÃ 
}
ÕÕ 
catch
ŒŒ 
(
ŒŒ '
EndpointNotFoundException
ŒŒ ,
ex
ŒŒ- /
)
ŒŒ/ 0
{
œœ %
ExceptionHandlerForLogs
–– '
.
––' (
LogException
––( 4
(
––4 5
ex
––5 7
,
––7 8!
ExceptionDictionary
––8 K
.
––K L
ERROR
––L Q
)
––Q R
;
––R S
throw
—— 
new
—— '
EndpointNotFoundException
—— 3
(
——3 4
)
——4 5
;
——5 6
}
““ 
catch
”” 
(
”” 1
#CommunicationObjectFaultedException
”” 6
ex
””7 9
)
””9 :
{
‘‘ %
ExceptionHandlerForLogs
’’ '
.
’’' (
LogException
’’( 4
(
’’4 5
ex
’’5 7
,
’’7 8!
ExceptionDictionary
’’9 L
.
’’L M
ERROR
’’M R
)
’’R S
;
’’S T
throw
÷÷ 
new
÷÷ 1
#CommunicationObjectFaultedException
÷÷ =
(
÷÷= >
)
÷÷> ?
;
÷÷? @
}
◊◊ 
catch
ÿÿ 
(
ÿÿ 
TimeoutException
ÿÿ #
ex
ÿÿ$ &
)
ÿÿ& '
{
ŸŸ %
ExceptionHandlerForLogs
⁄⁄ '
.
⁄⁄' (
LogException
⁄⁄( 4
(
⁄⁄4 5
ex
⁄⁄5 7
,
⁄⁄7 8!
ExceptionDictionary
⁄⁄9 L
.
⁄⁄L M
ERROR
⁄⁄M R
)
⁄⁄R S
;
⁄⁄S T
throw
€€ 
new
€€ 
TimeoutException
€€ *
(
€€* +
)
€€+ ,
;
€€, -
}
‹‹ 
catch
›› 
(
›› $
CommunicationException
›› )
ex
››* ,
)
››, -
{
ﬁﬁ %
ExceptionHandlerForLogs
ﬂﬂ '
.
ﬂﬂ' (
LogException
ﬂﬂ( 4
(
ﬂﬂ4 5
ex
ﬂﬂ5 7
,
ﬂﬂ7 8!
ExceptionDictionary
ﬂﬂ9 L
.
ﬂﬂL M
ERROR
ﬂﬂM R
)
ﬂﬂR S
;
ﬂﬂS T
throw
‡‡ 
new
‡‡ $
CommunicationException
‡‡ 0
(
‡‡0 1
)
‡‡1 2
;
‡‡2 3
}
·· 
catch
‚‚ 
(
‚‚ 
SocketException
‚‚ "
ex
‚‚# %
)
‚‚% &
{
„„ %
ExceptionHandlerForLogs
‰‰ '
.
‰‰' (
LogException
‰‰( 4
(
‰‰4 5
ex
‰‰5 7
,
‰‰7 8!
ExceptionDictionary
‰‰9 L
.
‰‰L M
ERROR
‰‰M R
)
‰‰R S
;
‰‰S T
throw
ÂÂ 
new
ÂÂ 
SocketException
ÂÂ )
(
ÂÂ) *
)
ÂÂ* +
;
ÂÂ+ ,
}
ÊÊ 
}
ÁÁ 	
private
ÈÈ 
int
ÈÈ &
SubscribeToLivingChannel
ÈÈ ,
(
ÈÈ, -
UserPojo
ÈÈ- 5
user
ÈÈ6 :
)
ÈÈ: ;
{
ÍÍ 	
try
ÎÎ 
{
ÏÏ 
InstanceContext
ÌÌ 
context
ÌÌ  '
=
ÌÌ( )
new
ÌÌ* -
(
ÌÌ- .
this
ÌÌ. 2
)
ÌÌ2 3
;
ÌÌ3 4#
CheckUserLivingClient
ÓÓ %#
checkUserLivingClient
ÓÓ& ;
=
ÓÓ< =
new
ÓÓ> A
(
ÓÓA B
context
ÓÓB I
)
ÓÓI J
;
ÓÓJ K
return
ÔÔ #
checkUserLivingClient
ÔÔ ,
.
ÔÔ, -)
SubscribeToICheckUserLiving
ÔÔ- H
(
ÔÔH I
user
ÔÔI M
)
ÔÔM N
;
ÔÔN O
}
 
catch
ÒÒ 
(
ÒÒ '
EndpointNotFoundException
ÒÒ ,
ex
ÒÒ- /
)
ÒÒ/ 0
{
ÚÚ %
ExceptionHandlerForLogs
ÛÛ '
.
ÛÛ' (
LogException
ÛÛ( 4
(
ÛÛ4 5
ex
ÛÛ5 7
,
ÛÛ7 8!
ExceptionDictionary
ÛÛ9 L
.
ÛÛL M
ERROR
ÛÛM R
)
ÛÛR S
;
ÛÛS T
throw
ÙÙ 
new
ÙÙ '
EndpointNotFoundException
ÙÙ 3
(
ÙÙ3 4
)
ÙÙ4 5
;
ÙÙ5 6
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
˜˜ %
ExceptionHandlerForLogs
¯¯ '
.
¯¯' (
LogException
¯¯( 4
(
¯¯4 5
ex
¯¯5 7
,
¯¯7 8!
ExceptionDictionary
¯¯9 L
.
¯¯L M
ERROR
¯¯M R
)
¯¯R S
;
¯¯S T
throw
˘˘ 
new
˘˘ 1
#CommunicationObjectFaultedException
˘˘ =
(
˘˘= >
)
˘˘> ?
;
˘˘? @
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
¸¸ %
ExceptionHandlerForLogs
˝˝ '
.
˝˝' (
LogException
˝˝( 4
(
˝˝4 5
ex
˝˝5 7
,
˝˝7 8!
ExceptionDictionary
˝˝9 L
.
˝˝L M
ERROR
˝˝M R
)
˝˝R S
;
˝˝S T
throw
˛˛ 
new
˛˛ 
TimeoutException
˛˛ *
(
˛˛* +
)
˛˛+ ,
;
˛˛, -
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
ÅÅ %
ExceptionHandlerForLogs
ÇÇ '
.
ÇÇ' (
LogException
ÇÇ( 4
(
ÇÇ4 5
ex
ÇÇ5 7
,
ÇÇ7 8!
ExceptionDictionary
ÇÇ9 L
.
ÇÇL M
ERROR
ÇÇM R
)
ÇÇR S
;
ÇÇS T
throw
ÉÉ 
new
ÉÉ $
CommunicationException
ÉÉ 0
(
ÉÉ0 1
)
ÉÉ1 2
;
ÉÉ2 3
}
ÑÑ 
catch
ÖÖ 
(
ÖÖ 
SocketException
ÖÖ "
ex
ÖÖ# %
)
ÖÖ% &
{
ÜÜ %
ExceptionHandlerForLogs
áá '
.
áá' (
LogException
áá( 4
(
áá4 5
ex
áá5 7
,
áá7 8!
ExceptionDictionary
áá9 L
.
ááL M
ERROR
ááM R
)
ááR S
;
ááS T
throw
àà 
new
àà 
SocketException
àà )
(
àà) *
)
àà* +
;
àà+ ,
}
ââ 
}
ää 	
private
åå 
void
åå 
InstanceSingleton
åå &
(
åå& '
UserPojo
åå' /
currentUser
åå0 ;
,
åå; <

PlayerPojo
åå= G
currenPlayer
ååH T
)
ååT U
{
çç 	
userSingleton
éé 
=
éé 
UserSingleton
éé )
.
éé) *
GetMainUser
éé* 5
(
éé5 6
currentUser
éé6 A
,
ééA B
currenPlayer
ééC O
)
ééO P
;
ééP Q
}
èè 	
private
ëë 
void
ëë 
GoToMainMenu
ëë !
(
ëë! "
)
ëë" #
{
íí 	
MainMenu
ìì 
mainMenuPage
ìì !
=
ìì" #
new
ìì$ '
MainMenu
ìì( 0
(
ìì0 1
)
ìì1 2
;
ìì2 3
this
îî 
.
îî 
NavigationService
îî "
.
îî" #
Navigate
îî# +
(
îî+ ,
mainMenuPage
îî, 8
)
îî8 9
;
îî9 :
NavigationService
ïï 
.
ïï 
RemoveBackEntry
ïï -
(
ïï- .
)
ïï. /
;
ïï/ 0
}
ññ 	
private
òò 
void
òò !
CLickButtonRegister
òò (
(
òò( )
object
òò) /
sender
òò0 6
,
òò6 7
RoutedEventArgs
òò8 G
e
òòH I
)
òòI J
{
ôô 	
UserRegister
öö 
userRegistryPage
öö )
=
öö* +
new
öö, /
UserRegister
öö0 <
(
öö< =
)
öö= >
;
öö> ?
this
õõ 
.
õõ 
NavigationService
õõ "
.
õõ" #
Navigate
õõ# +
(
õõ+ ,
userRegistryPage
õõ, <
)
õõ< =
;
õõ= >
NavigationService
úú 
.
úú 
RemoveBackEntry
úú -
(
úú- .
)
úú. /
;
úú/ 0
}
ùù 	
private
üü 
void
üü 
ClickSingOut
üü !
(
üü! "
object
üü" (
sender
üü) /
,
üü/ 0"
MouseButtonEventArgs
üü1 E
e
üüF G
)
üüG H
{
†† 	
PrincipalPage
°° 
principalPage
°° '
=
°°( )
new
°°* -
PrincipalPage
°°. ;
(
°°; <
)
°°< =
;
°°= >
this
¢¢ 
.
¢¢ 
NavigationService
¢¢ "
.
¢¢" #
Navigate
¢¢# +
(
¢¢+ ,
principalPage
¢¢, 9
)
¢¢9 :
;
¢¢: ;
NavigationService
££ 
.
££ 
RemoveBackEntry
££ -
(
££- .
)
££. /
;
££/ 0
}
§§ 	
private
¶¶ 
void
¶¶ 
ClickSeePassword
¶¶ %
(
¶¶% &
object
¶¶& ,
sender
¶¶- 3
,
¶¶3 4"
MouseButtonEventArgs
¶¶5 I
e
¶¶J K
)
¶¶K L
{
ßß 	
lblViewPassword
®® 
.
®® 
Content
®® #
=
®®$ %
pssPasswordLogIn
®®& 6
.
®®6 7
Password
®®7 ?
.
®®? @
ToString
®®@ H
(
®®H I
)
®®I J
;
®®J K
pssPasswordLogIn
©© 
.
©© 

Visibility
©© '
=
©©( )

Visibility
©©* 4
.
©©4 5
	Collapsed
©©5 >
;
©©> ?
lblViewPassword
™™ 
.
™™ 

Visibility
™™ &
=
™™' (

Visibility
™™) 3
.
™™3 4
Visible
™™4 ;
;
™™; <
}
´´ 	
private
≠≠ 
void
≠≠ #
OverLeaveHidePassword
≠≠ *
(
≠≠* +
object
≠≠+ 1
sender
≠≠2 8
,
≠≠8 9
MouseEventArgs
≠≠: H
e
≠≠I J
)
≠≠J K
{
ÆÆ 	
if
ØØ 
(
ØØ 
lblViewPassword
ØØ 
.
ØØ  
	IsVisible
ØØ  )
)
ØØ) *
{
∞∞ 
pssPasswordLogIn
±±  
.
±±  !

Visibility
±±! +
=
±±, -

Visibility
±±. 8
.
±±8 9
Visible
±±9 @
;
±±@ A
pssPasswordLogIn
≤≤  
.
≤≤  !
PasswordChar
≤≤! -
=
≤≤. /
$char
≤≤0 3
;
≤≤3 4
pssPasswordLogIn
≥≥  
.
≥≥  !
Password
≥≥! )
=
≥≥* +
(
≥≥, -
string
≥≥- 3
)
≥≥3 4
lblViewPassword
≥≥4 C
.
≥≥C D
Content
≥≥D K
;
≥≥K L
lblViewPassword
¥¥ 
.
¥¥  

Visibility
¥¥  *
=
¥¥+ ,

Visibility
¥¥- 7
.
¥¥7 8
	Collapsed
¥¥8 A
;
¥¥A B
}
µµ 
}
∂∂ 	
public
∫∫ 
bool
∫∫ 
IsClientActive
∫∫ "
(
∫∫" #
)
∫∫# $
{
ªª 	
return
ºº 
(
ºº 
(
ºº &
ICheckUserLivingCallback
ºº -
)
ºº- .
userSingleton
ºº. ;
)
ºº; <
.
ºº< =
IsClientActive
ºº= K
(
ººK L
)
ººL M
;
ººM N
}
ΩΩ 	
private
øø 
void
øø 
HandleException
øø $
(
øø$ %
	Exception
øø% .
ex
øø/ 1
,
øø1 2
string
øø3 9
errorMessage
øø: F
)
øøF G
{
¿¿ 	%
ExceptionHandlerForLogs
¡¡ #
.
¡¡# $
LogException
¡¡$ 0
(
¡¡0 1
ex
¡¡1 3
,
¡¡3 4!
ExceptionDictionary
¡¡5 H
.
¡¡H I
FATAL_EXCEPTION
¡¡I X
)
¡¡X Y
;
¡¡Y Z
dialogMessage
¬¬ 
=
¬¬ 
new
¬¬ &
ErrorMessageDialogWindow
¬¬  8
(
¬¬8 9

Properties
¬¬9 C
.
¬¬C D
	Resources
¬¬D M
.
¬¬M N
txbErrorTitle
¬¬N [
,
¬¬[ \
errorMessage
¬¬] i
,
¬¬i j
Application
¬¬k v
.
¬¬v w
Current
¬¬w ~
.
¬¬~ 

MainWindow¬¬ â
)¬¬â ä
;¬¬ä ã
}
√√ 	
private
≈≈ 
void
≈≈ !
LanguageButtonClick
≈≈ (
(
≈≈( )
object
≈≈) /
sender
≈≈0 6
,
≈≈6 7
RoutedEventArgs
≈≈8 G
e
≈≈H I
)
≈≈I J
{
∆∆ 	
LanguageOptions
«« 
.
«« 

Visibility
«« &
=
««' (

Visibility
««) 3
.
««3 4
Visible
««4 ;
;
««; <
}
»» 	
private
   
void
   
SelectLanguage
   #
(
  # $
object
  $ *
sender
  + 1
,
  1 2
RoutedEventArgs
  3 B
e
  C D
)
  D E
{
ÀÀ 	
System
ÃÃ 
.
ÃÃ 
Windows
ÃÃ 
.
ÃÃ 
Controls
ÃÃ #
.
ÃÃ# $
Button
ÃÃ$ *
selectedButton
ÃÃ+ 9
=
ÃÃ: ;
sender
ÃÃ< B
as
ÃÃC E
Button
ÃÃF L
;
ÃÃL M
string
ÕÕ 
selectedLanguage
ÕÕ #
=
ÕÕ$ %
selectedButton
ÕÕ& 4
.
ÕÕ4 5
Tag
ÕÕ5 8
.
ÕÕ8 9
ToString
ÕÕ9 A
(
ÕÕA B
)
ÕÕB C
;
ÕÕC D
App
œœ 
.
œœ 
ChangeLanguage
œœ 
(
œœ 
selectedLanguage
œœ /
)
œœ/ 0
;
œœ0 1
RegistryKey
–– 
key
–– 
=
–– 
Registry
–– &
.
––& '
CurrentUser
––' 2
.
––2 3
CreateSubKey
––3 ?
(
––? @
$str
––@ X
)
––X Y
;
––Y Z
key
—— 
.
—— 
SetValue
—— 
(
—— 
$str
—— +
,
——+ ,
selectedLanguage
——- =
)
——= >
;
——> ?
key
““ 
.
““ 
Close
““ 
(
““ 
)
““ 
;
““ &
UpdateInterfaceResources
”” $
(
””$ %
)
””% &
;
””& '
LanguageButton
‘‘ 
.
‘‘ 
Content
‘‘ "
=
‘‘# $
selectedButton
‘‘% 3
.
‘‘3 4
Content
‘‘4 ;
;
‘‘; <
LanguageOptions
’’ 
.
’’ 

Visibility
’’ &
=
’’' (

Visibility
’’) 3
.
’’3 4
	Collapsed
’’4 =
;
’’= >
}
÷÷ 	
private
ÿÿ 
void
ÿÿ &
UpdateInterfaceResources
ÿÿ -
(
ÿÿ- .
)
ÿÿ. /
{
ŸŸ 	
if
⁄⁄ 
(
⁄⁄ 
lblUserNameLogIn
⁄⁄  
!=
⁄⁄! #
null
⁄⁄$ (
)
⁄⁄( )
lblUserNameLogIn
€€  
.
€€  !
Content
€€! (
=
€€) *

Properties
€€+ 5
.
€€5 6
	Resources
€€6 ?
.
€€? @
lblUserNameLogIn
€€@ P
;
€€P Q
if
›› 
(
›› 
lblPasswordLogIn
››  
!=
››! #
null
››$ (
)
››( )
lblPasswordLogIn
ﬁﬁ  
.
ﬁﬁ  !
Content
ﬁﬁ! (
=
ﬁﬁ) *

Properties
ﬁﬁ+ 5
.
ﬁﬁ5 6
	Resources
ﬁﬁ6 ?
.
ﬁﬁ? @
lblPasswordLogIn
ﬁﬁ@ P
;
ﬁﬁP Q
if
‡‡ 
(
‡‡ 
btnEnter
‡‡ 
!=
‡‡ 
null
‡‡  
)
‡‡  !
btnEnter
·· 
.
·· 
Content
··  
=
··! "

Properties
··# -
.
··- .
	Resources
··. 7
.
··7 8
btnEnter
··8 @
;
··@ A
if
„„ 
(
„„ 
btnRegistrer
„„ 
!=
„„ 
null
„„  $
)
„„$ %
btnRegistrer
‰‰ 
.
‰‰ 
Content
‰‰ $
=
‰‰% &

Properties
‰‰' 1
.
‰‰1 2
	Resources
‰‰2 ;
.
‰‰; <
btnRegistrer
‰‰< H
;
‰‰H I
}
ÂÂ 	
}
ÁÁ 
}ËË ‚±
gC:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameClient\Pages\MainMenu.xaml.cs
	namespace 	
JeopardyGame
 
. 
Pages 
{ 
public 

partial 
class 
MainMenu !
:" #
Page$ (
{ 
private 
Window 
dialogMessage $
;$ %
public 
MainMenu 
( 
) 
{ 	
InitializeComponent 
(  
)  !
;! "
NotifyItIsAvailable   
(    
)    !
;  ! "
this!! 
.!! 
Loaded!! 
+=!! 
LoadPlayersData!! *
;!!* +
}"" 	
private$$ 
void$$ 
NotifyItIsAvailable$$ (
($$( )
)$$) *
{%% 	
try&& 
{'' 
UserSingleton(( 
userSingleton(( +
=((, -
UserSingleton((. ;
.((; <
GetMainUser((< G
(((G H
)((H I
;((I J+
AvailabilityUserManagmentClient)) /!
availabilityUserProxy))0 E
=))F G
new))H K
())K L
)))L M
;))M N!
availabilityUserProxy** %
.**% &
PlayerIsAvailable**& 7
(**7 8
userSingleton**8 E
.**E F
IdUser**F L
)**L M
;**M N
}++ 
catch,, 
(,, %
EndpointNotFoundException,, ,
ex,,- /
),,/ 0
{-- #
ExceptionHandlerForLogs.. '
...' (
LogException..( 4
(..4 5
ex..5 7
,..7 8
ExceptionDictionary..9 L
...L M
FATAL_EXCEPTION..M \
)..\ ]
;..] ^
}// 
catch00 
(00 /
#CommunicationObjectFaultedException00 6
ex007 9
)009 :
{11 #
ExceptionHandlerForLogs22 '
.22' (
LogException22( 4
(224 5
ex225 7
,227 8
ExceptionDictionary229 L
.22L M
FATAL_EXCEPTION22M \
)22\ ]
;22] ^
}33 
catch44 
(44 
TimeoutException44 #
ex44$ &
)44& '
{55 #
ExceptionHandlerForLogs66 '
.66' (
LogException66( 4
(664 5
ex665 7
,667 8
ExceptionDictionary669 L
.66L M
FATAL_EXCEPTION66M \
)66\ ]
;66] ^
}77 
catch88 
(88 "
CommunicationException88 )
ex88* ,
)88, -
{99 #
ExceptionHandlerForLogs:: '
.::' (
LogException::( 4
(::4 5
ex::5 7
,::7 8
ExceptionDictionary::9 L
.::L M
FATAL_EXCEPTION::M \
)::\ ]
;::] ^
};; 
catch<< 
(<< 
SocketException<< "
ex<<# %
)<<% &
{== #
ExceptionHandlerForLogs>> '
.>>' (
LogException>>( 4
(>>4 5
ex>>5 7
,>>7 8
ExceptionDictionary>>9 L
.>>L M
FATAL_EXCEPTION>>M \
)>>\ ]
;>>] ^
}?? 
}@@ 	
privateBB 
voidBB 
ClickSingOutBB !
(BB! "
objectBB" (
senderBB) /
,BB/ 0 
MouseButtonEventArgsBB1 E
eBBF G
)BBG H
{CC 	
ifDD 
(DD 
newDD $
ConfirmationDialogWindowDD ,
(DD, -

PropertiesDD- 7
.DD7 8
	ResourcesDD8 A
.DDA B
txbWarningTitleDDB Q
,DDQ R

PropertiesDDS ]
.DD] ^
	ResourcesDD^ g
.DDg h

tbxSignOutDDh r
,DDr s
ApplicationDDt 
.	DD Ä
Current
DDÄ á
.
DDá à

MainWindow
DDà í
)
DDí ì
.
DDì î
CloseWindow
DDî ü
)
DDü †
{EE 

ReturnPageFF 
(FF 
)FF 
;FF 
}GG 
}HH 	
privateJJ 
voidJJ !
CleanGlobalParametersJJ *
(JJ* +
)JJ+ ,
{KK 	

FriendListLL 
.LL 
CleanDictionaryLL &
(LL& '
)LL' (
;LL( )
UserSingletonMM  
currentUserSingletonMM .
=MM/ 0
UserSingletonMM1 >
.MM> ?
GetMainUserMM? J
(MMJ K
)MMK L
;MML M+
AvailabilityUserManagmentClientNN +!
userAvailabilityProxyNN, A
=NNB C
newNND G
(NNG H
)NNH I
;NNI J
tryOO 
{PP !
userAvailabilityProxyQQ %
.QQ% & 
PlayerIsNotAvailableQQ& :
(QQ: ; 
currentUserSingletonQQ; O
.QQO P
IdUserQQP V
)QQV W
;QQW X
}RR 
catchSS 
(SS %
EndpointNotFoundExceptionSS ,
exSS- /
)SS/ 0
{TT #
ExceptionHandlerForLogsUU '
.UU' (
LogExceptionUU( 4
(UU4 5
exUU5 7
,UU7 8
ExceptionDictionaryUU9 L
.UUL M
FATAL_EXCEPTIONUUM \
)UU\ ]
;UU] ^
}WW 
catchXX 
(XX /
#CommunicationObjectFaultedExceptionXX 6
exXX7 9
)XX9 :
{YY #
ExceptionHandlerForLogsZZ '
.ZZ' (
LogExceptionZZ( 4
(ZZ4 5
exZZ5 7
,ZZ7 8
ExceptionDictionaryZZ9 L
.ZZL M
FATAL_EXCEPTIONZZM \
)ZZ\ ]
;ZZ] ^
}[[ 
catch\\ 
(\\ 
TimeoutException\\ #
ex\\$ &
)\\& '
{]] #
ExceptionHandlerForLogs^^ '
.^^' (
LogException^^( 4
(^^4 5
ex^^5 7
,^^7 8
ExceptionDictionary^^9 L
.^^L M
FATAL_EXCEPTION^^M \
)^^\ ]
;^^] ^
}__ 
catch`` 
(`` "
CommunicationException`` )
ex``* ,
)``, -
{aa #
ExceptionHandlerForLogsbb '
.bb' (
LogExceptionbb( 4
(bb4 5
exbb5 7
,bb7 8
ExceptionDictionarybb9 L
.bbL M
FATAL_EXCEPTIONbbM \
)bb\ ]
;bb] ^
}cc 
catchdd 
(dd 
SocketExceptiondd "
exdd# %
)dd% &
{ee #
ExceptionHandlerForLogsff '
.ff' (
LogExceptionff( 4
(ff4 5
exff5 7
,ff7 8
ExceptionDictionaryff9 L
.ffL M
FATAL_EXCEPTIONffM \
)ff\ ]
;ff] ^
}gg 
UserSingletonhh 
.hh 
CleanSingletonhh (
(hh( )
)hh) *
;hh* +
}ii 	
privatekk 
voidkk 
ClickUserProfilekk %
(kk% &
objectkk& ,
senderkk- 3
,kk3 4 
MouseButtonEventArgskk5 I
ekkJ K
)kkK L
{ll 	
ProfileDataConsultmm 
profileConsultPagemm 1
=mm2 3
newmm4 7
ProfileDataConsultmm8 J
(mmJ K
)mmK L
;mmL M
thisnn 
.nn 
NavigationServicenn "
.nn" #
Navigatenn# +
(nn+ ,
profileConsultPagenn, >
)nn> ?
;nn? @
NavigationServiceoo 
.oo 
RemoveBackEntryoo -
(oo- .
)oo. /
;oo/ 0
}pp 	
privaterr 
voidrr 
CLickButtonNewGamerr '
(rr' (
objectrr( .
senderrr/ 5
,rr5 6
RoutedEventArgsrr7 F
errG H
)rrH I
{ss 	
	LobbyPagett 
lobbyGamePagett #
=tt$ %
newtt& )
	LobbyPagett* 3
(tt3 4
)tt4 5
;tt5 6
thisuu 
.uu 
NavigationServiceuu "
.uu" #
Navigateuu# +
(uu+ ,
lobbyGamePageuu, 9
)uu9 :
;uu: ;
NavigationServicevv 
.vv 
RemoveBackEntryvv -
(vv- .
)vv. /
;vv/ 0
}xx 	
privateyy 
voidyy  
CLickButtonEnterGameyy )
(yy) *
objectyy* 0
senderyy1 7
,yy7 8
RoutedEventArgsyy9 H
eyyI J
)yyJ K
{zz 	
Views{{ 
.{{ 
EnterWithGameCode{{ #

codeWindow{{$ .
={{/ 0
new{{1 4
Views{{5 :
.{{: ;
EnterWithGameCode{{; L
({{L M
){{M N
;{{N O

codeWindow|| 
.|| !
WindowStartupLocation|| ,
=||- .
System||/ 5
.||5 6
Windows||6 =
.||= >!
WindowStartupLocation||> S
.||S T
CenterScreen||T `
;||` a
enterGameWithCode}} 
codePage}} &
=}}' (
new}}) ,
enterGameWithCode}}- >
(}}> ?
Window}}? E
.}}E F
	GetWindow}}F O
(}}O P
this}}P T
)}}T U
,}}U V
false}}W \
)}}\ ]
;}}] ^

codeWindow~~ 
.~~ 
contentFrame~~ #
.~~# $
NavigationService~~$ 5
.~~5 6
Navigate~~6 >
(~~> ?
codePage~~? G
)~~G H
;~~H I

codeWindow 
. 

ShowDialog !
(! "
)" #
;# $
}
ÄÄ 	
private
ÇÇ 
void
ÇÇ $
CLickButtonFriendsList
ÇÇ +
(
ÇÇ+ ,
object
ÇÇ, 2
sender
ÇÇ3 9
,
ÇÇ9 :
RoutedEventArgs
ÇÇ; J
e
ÇÇK L
)
ÇÇL M
{
ÉÉ 	
FriendManager
ÑÑ 
friendManager
ÑÑ '
=
ÑÑ( )
new
ÑÑ* -
FriendManager
ÑÑ. ;
(
ÑÑ; <
)
ÑÑ< =
;
ÑÑ= >
this
ÖÖ 
.
ÖÖ 
NavigationService
ÖÖ "
.
ÖÖ" #
Navigate
ÖÖ# +
(
ÖÖ+ ,
friendManager
ÖÖ, 9
)
ÖÖ9 :
;
ÖÖ: ;
NavigationService
ÜÜ 
.
ÜÜ 
RemoveBackEntry
ÜÜ -
(
ÜÜ- .
)
ÜÜ. /
;
ÜÜ/ 0
}
áá 	
private
ââ 
void
ââ 
LoadPlayersData
ââ $
(
ââ$ %
object
ââ% +
sender
ââ, 2
,
ââ2 3
RoutedEventArgs
ââ4 C
e
ââD E
)
ââE F
{
ää 	
try
ãã 
{
åå *
ConsultUserInformationClient
çç ,%
consultInformationProxy
çç- D
=
ççE F
new
ççG J*
ConsultUserInformationClient
ççK g
(
ççg h
)
ççh i
;
ççi j
UserSingleton
éé 
userSingleton
éé +
=
éé, -
UserSingleton
éé. ;
.
éé; <
GetMainUser
éé< G
(
ééG H
)
ééH I
;
ééI J
var
èè 
playersInfo
èè 
=
èè  !%
consultInformationProxy
èè" 9
.
èè9 :#
GetPlayersInformation
èè: O
(
èèO P
userSingleton
èèP ]
.
èè] ^
IdUser
èè^ d
)
èèd e
;
èèe f
if
êê 
(
êê 
playersInfo
êê 
.
êê  
	CodeEvent
êê  )
==
êê* ,!
ExceptionDictionary
êê. A
.
êêA B
SUCCESFULL_EVENT
êêB R
)
êêR S
{
ëë 
foreach
íí 
(
íí 
var
íí  

playerInfo
íí! +
in
íí, .
playersInfo
íí/ :
.
íí: ;
ObjectSaved
íí; F
)
ííF G
{
ìì 
string
îî 

playerName
îî )
=
îî* +

playerInfo
îî, 6
.
îî6 7
Name
îî7 ;
;
îî; <
long
ïï 
score
ïï "
=
ïï# $

playerInfo
ïï% /
.
ïï/ 0
Points
ïï0 6
;
ïï6 7
ListBoxItem
óó #
item
óó$ (
=
óó) *
new
óó+ .
ListBoxItem
óó/ :
(
óó: ;
)
óó; <
;
óó< =
item
òò 
.
òò 
Content
òò $
=
òò% &
$"
òò' )
{
òò) *

playerName
òò* 4
}
òò4 5
$str
òò5 7
{
òò7 8
score
òò8 =
}
òò= >
"
òò> ?
;
òò? @

lstWinners
ôô "
.
ôô" #
Items
ôô# (
.
ôô( )
Add
ôô) ,
(
ôô, -
item
ôô- 1
)
ôô1 2
;
ôô2 3
}
öö 
}
õõ 
}
úú 
catch
ùù 
(
ùù '
EndpointNotFoundException
ùù ,
ex
ùù- /
)
ùù/ 0
{
ûû 
HandleException
üü 
(
üü  
ex
üü  "
,
üü" #

Properties
üü$ .
.
üü. /
	Resources
üü/ 8
.
üü8 9!
lblEndPointNotFound
üü9 L
)
üüL M
;
üüM N
}
†† 
catch
°° 
(
°° 1
#CommunicationObjectFaultedException
°° 6
ex
°°7 9
)
°°9 :
{
¢¢ 
HandleException
££ 
(
££  
ex
££  "
,
££" #

Properties
££$ .
.
££. /
	Resources
££/ 8
.
££8 9&
lblComunicationException
££9 Q
)
££Q R
;
££R S
}
§§ 
catch
•• 
(
•• 
TimeoutException
•• #
ex
••$ &
)
••& '
{
¶¶ 
HandleException
ßß 
(
ßß  
ex
ßß  "
,
ßß" #

Properties
ßß$ .
.
ßß. /
	Resources
ßß/ 8
.
ßß8 9
lblTimeException
ßß9 I
)
ßßI J
;
ßßJ K
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
HandleException
´´ 
(
´´  
ex
´´  "
,
´´" #

Properties
´´$ .
.
´´. /
	Resources
´´/ 8
.
´´8 9!
lblWithoutConection
´´9 L
)
´´L M
;
´´M N
}
¨¨ 
catch
≠≠ 
(
≠≠ 
SocketException
≠≠ "
ex
≠≠# %
)
≠≠% &
{
ÆÆ 
HandleException
ØØ 
(
ØØ  
ex
ØØ  "
,
ØØ" #

Properties
ØØ$ .
.
ØØ. /
	Resources
ØØ/ 8
.
ØØ8 9!
lblEndPointNotFound
ØØ9 L
)
ØØL M
;
ØØM N
}
∞∞ 
}
±± 	
private
≥≥ 
void
≥≥ 
HandleException
≥≥ $
(
≥≥$ %
	Exception
≥≥% .
ex
≥≥/ 1
,
≥≥1 2
string
≥≥3 9
errorMessage
≥≥: F
)
≥≥F G
{
¥¥ 	%
ExceptionHandlerForLogs
µµ #
.
µµ# $
LogException
µµ$ 0
(
µµ0 1
ex
µµ1 3
,
µµ3 4!
ExceptionDictionary
µµ5 H
.
µµH I
FATAL_EXCEPTION
µµI X
)
µµX Y
;
µµY Z
dialogMessage
∂∂ 
=
∂∂ 
new
∂∂ &
ErrorMessageDialogWindow
∂∂  8
(
∂∂8 9

Properties
∂∂9 C
.
∂∂C D
	Resources
∂∂D M
.
∂∂M N
txbErrorTitle
∂∂N [
,
∂∂[ \
errorMessage
∂∂] i
,
∂∂i j
Application
∂∂k v
.
∂∂v w
Current
∂∂w ~
.
∂∂~ 

MainWindow∂∂ â
)∂∂â ä
;∂∂ä ã
}
∏∏ 	
private
∫∫ 
void
∫∫ !
LanguageButtonClick
∫∫ (
(
∫∫( )
object
∫∫) /
sender
∫∫0 6
,
∫∫6 7
RoutedEventArgs
∫∫8 G
e
∫∫H I
)
∫∫I J
{
ªª 	
LanguageOptions
ºº 
.
ºº 

Visibility
ºº &
=
ºº' (

Visibility
ºº) 3
.
ºº3 4
Visible
ºº4 ;
;
ºº; <
}
ΩΩ 	
private
øø 
void
øø 
SelectLanguage
øø #
(
øø# $
object
øø$ *
sender
øø+ 1
,
øø1 2
RoutedEventArgs
øø3 B
e
øøC D
)
øøD E
{
¿¿ 	
Button
¡¡ 
selectedButton
¡¡ !
=
¡¡" #
sender
¡¡$ *
as
¡¡+ -
Button
¡¡. 4
;
¡¡4 5
string
¬¬ 
selectedLanguage
¬¬ #
=
¬¬$ %
selectedButton
¬¬& 4
.
¬¬4 5
Tag
¬¬5 8
.
¬¬8 9
ToString
¬¬9 A
(
¬¬A B
)
¬¬B C
;
¬¬C D
App
ƒƒ 
.
ƒƒ 
ChangeLanguage
ƒƒ 
(
ƒƒ 
selectedLanguage
ƒƒ /
)
ƒƒ/ 0
;
ƒƒ0 1
RegistryKey
≈≈ 
key
≈≈ 
=
≈≈ 
Registry
≈≈ &
.
≈≈& '
CurrentUser
≈≈' 2
.
≈≈2 3
CreateSubKey
≈≈3 ?
(
≈≈? @
$str
≈≈@ X
)
≈≈X Y
;
≈≈Y Z
key
∆∆ 
.
∆∆ 
SetValue
∆∆ 
(
∆∆ 
$str
∆∆ +
,
∆∆+ ,
selectedLanguage
∆∆- =
)
∆∆= >
;
∆∆> ?
key
«« 
.
«« 
Close
«« 
(
«« 
)
«« 
;
«« &
UpdateInterfaceResources
»» $
(
»»$ %
)
»»% &
;
»»& '
LanguageButton
   
.
   
Content
   "
=
  # $
selectedButton
  % 3
.
  3 4
Content
  4 ;
;
  ; <
LanguageOptions
ÃÃ 
.
ÃÃ 

Visibility
ÃÃ &
=
ÃÃ' (

Visibility
ÃÃ) 3
.
ÃÃ3 4
	Collapsed
ÃÃ4 =
;
ÃÃ= >
}
ÕÕ 	
private
œœ 
void
œœ &
UpdateInterfaceResources
œœ -
(
œœ- .
)
œœ. /
{
–– 	
if
—— 
(
—— 
bttEnterGame
—— 
!=
—— 
null
——  $
)
——$ %
bttEnterGame
““ 
.
““ 
Content
““ #
=
““$ %

Properties
““& 0
.
““0 1
	Resources
““1 :
.
““: ;
bttEnterGame
““; G
;
““G H
if
‘‘ 
(
‘‘ 

bttFriends
‘‘ 
!=
‘‘ 
null
‘‘ "
)
‘‘" #

bttFriends
’’ 
.
’’ 
Content
’’ "
=
’’# $

Properties
’’% /
.
’’/ 0
	Resources
’’0 9
.
’’9 :

bttFriends
’’: D
;
’’D E
if
◊◊ 
(
◊◊ 

bttNewGame
◊◊ 
!=
◊◊ 
null
◊◊ "
)
◊◊" #

bttNewGame
ÿÿ 
.
ÿÿ 
Content
ÿÿ "
=
ÿÿ# $

Properties
ÿÿ% /
.
ÿÿ/ 0
	Resources
ÿÿ0 9
.
ÿÿ9 :

bttNewGame
ÿÿ: D
;
ÿÿD E
if
⁄⁄ 
(
⁄⁄ #
lblProfileInformation
⁄⁄ %
!=
⁄⁄& (
null
⁄⁄) -
)
⁄⁄- .#
lblProfileInformation
€€ %
.
€€% &
Content
€€& -
=
€€. /

Properties
€€0 :
.
€€: ;
	Resources
€€; D
.
€€D E#
lblProfileInformation
€€E Z
;
€€Z [
}
‹‹ 	
private
ﬁﬁ 
void
ﬁﬁ 

ReturnPage
ﬁﬁ 
(
ﬁﬁ  
)
ﬁﬁ  !
{
ﬂﬂ 	%
NotifyFriendsIamLeaving
‡‡ #
(
‡‡# $
)
‡‡$ %
;
‡‡% &#
CleanGlobalParameters
·· !
(
··! "
)
··" #
;
··# $
	LogInUser
‚‚ 
	logInPage
‚‚ 
=
‚‚  !
new
‚‚" %
	LogInUser
‚‚& /
(
‚‚/ 0
)
‚‚0 1
;
‚‚1 2
this
„„ 
.
„„ 
NavigationService
„„ "
.
„„" #
Navigate
„„# +
(
„„+ ,
	logInPage
„„, 5
)
„„5 6
;
„„6 7
NavigationService
‰‰ 
.
‰‰ 
RemoveBackEntry
‰‰ -
(
‰‰- .
)
‰‰. /
;
‰‰/ 0
}
ÂÂ 	
private
ÁÁ 
void
ÁÁ %
NotifyFriendsIamLeaving
ÁÁ ,
(
ÁÁ, -
)
ÁÁ- .
{
ËË 	
try
ÈÈ 
{
ÍÍ .
 CheckUserLivingUnsubscribeClient
ÎÎ 0#
checkUserLivingClient
ÎÎ1 F
=
ÎÎG H
new
ÎÎI L
(
ÎÎL M
)
ÎÎM N
;
ÎÎN O#
checkUserLivingClient
ÏÏ %
.
ÏÏ% &-
UnsubscribeFromICheckUserLiving
ÏÏ& E
(
ÏÏE F
UserSingleton
ÏÏF S
.
ÏÏS T"
GetUserPojoSingelton
ÏÏT h
(
ÏÏh i
)
ÏÏi j
)
ÏÏj k
;
ÏÏk l
}
ÌÌ 
catch
ÓÓ 
(
ÓÓ '
EndpointNotFoundException
ÓÓ ,
ex
ÓÓ- /
)
ÓÓ/ 0
{
ÔÔ %
ExceptionHandlerForLogs
 '
.
' (
LogException
( 4
(
4 5
ex
5 7
,
7 8!
ExceptionDictionary
9 L
.
L M
FATAL_EXCEPTION
M \
)
\ ]
;
] ^
}
ÒÒ 
catch
ÚÚ 
(
ÚÚ 1
#CommunicationObjectFaultedException
ÚÚ 6
ex
ÚÚ7 9
)
ÚÚ9 :
{
ÛÛ %
ExceptionHandlerForLogs
ÙÙ '
.
ÙÙ' (
LogException
ÙÙ( 4
(
ÙÙ4 5
ex
ÙÙ5 7
,
ÙÙ7 8!
ExceptionDictionary
ÙÙ9 L
.
ÙÙL M
FATAL_EXCEPTION
ÙÙM \
)
ÙÙ\ ]
;
ÙÙ] ^
}
ıı 
catch
ˆˆ 
(
ˆˆ 
TimeoutException
ˆˆ #
ex
ˆˆ$ &
)
ˆˆ& '
{
˜˜ %
ExceptionHandlerForLogs
¯¯ '
.
¯¯' (
LogException
¯¯( 4
(
¯¯4 5
ex
¯¯5 7
,
¯¯7 8!
ExceptionDictionary
¯¯9 L
.
¯¯L M
FATAL_EXCEPTION
¯¯M \
)
¯¯\ ]
;
¯¯] ^
}
˘˘ 
catch
˙˙ 
(
˙˙ $
CommunicationException
˙˙ )
ex
˙˙* ,
)
˙˙, -
{
˚˚ %
ExceptionHandlerForLogs
¸¸ '
.
¸¸' (
LogException
¸¸( 4
(
¸¸4 5
ex
¸¸5 7
,
¸¸7 8!
ExceptionDictionary
¸¸9 L
.
¸¸L M
FATAL_EXCEPTION
¸¸M \
)
¸¸\ ]
;
¸¸] ^
}
˝˝ 
catch
˛˛ 
(
˛˛ 
SocketException
˛˛ "
ex
˛˛# %
)
˛˛% &
{
ˇˇ %
ExceptionHandlerForLogs
ÄÄ '
.
ÄÄ' (
LogException
ÄÄ( 4
(
ÄÄ4 5
ex
ÄÄ5 7
,
ÄÄ7 8!
ExceptionDictionary
ÄÄ9 L
.
ÄÄL M
FATAL_EXCEPTION
ÄÄM \
)
ÄÄ\ ]
;
ÄÄ] ^
}
ÅÅ 
}
ÇÇ 	
}
ÖÖ 
}ÜÜ §
C:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameClient\DialogWindows\ErrorMessageDialogWindow.xaml.cs
	namespace 	
JeopardyGame
 
. 
DialogWindows $
{ 
public		 

partial		 
class		 $
ErrorMessageDialogWindow		 1
:		2 3
Window		4 :
{

 
public $
ErrorMessageDialogWindow '
(' (
String( .
windowTitle/ :
,: ;
String< B
messageC J
,J K
WindowL R
currentWindowS `
)` a
{ 	
InitializeComponent 
(  
)  !
;! "
txbErrorTitle 
. 
Text 
=  
windowTitle! ,
;, -
txbErrorMessage 
. 
Text  
=! "
message# *
;* +
ShowErrorMessage 
( 
currentWindow *
)* +
;+ ,
} 	
private 
void 
ClickAcceptButton &
(& '
object' -
sender. 4
,4 5
RoutedEventArgs6 E
eF G
)G H
{ 	
this 
. 
Close 
( 
) 
; 
} 	
private 
void 
ShowErrorMessage %
(% &
Window& ,
currentWindow- :
): ;
{ 	
double 
left 
= 
currentWindow '
.' (
Left( ,
+- .
(/ 0
currentWindow0 =
.= >
Width> C
-D E
thisF J
.J K
WidthK P
)P Q
/R S
$numT U
;U V
double 
top 
= 
currentWindow &
.& '
Top' *
++ ,
(- .
currentWindow. ;
.; <
Height< B
-C D
thisE I
.I J
HeightJ P
)P Q
/R S
$numT U
;U V
this 
. 
Left 
= 
left 
; 
this 
. 
Top 
= 
top 
; 
this 
. 
VerticalAlignment "
=# $
VerticalAlignment% 6
.6 7
Center7 =
;= >
this 
. 

ShowDialog 
( 
) 
; 
}   	
}"" 
}## √
ÖC:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameClient\DialogWindows\InformationMessageDialogWindow.xaml.cs
	namespace 	
JeopardyGame
 
. 
DialogWindows $
{ 
public		 

partial		 
class		 *
InformationMessageDialogWindow		 8
:		9 :
Window		; A
{

 
public *
InformationMessageDialogWindow .
(. /
String/ 5
windowTitle6 A
,A B
StringC I
messageJ Q
,Q R
WindowS Y
currentWindowZ g
)g h
{ 	
InitializeComponent 
(  
)  !
;! "
txbErrorTitle 
. 
Text 
=  
windowTitle! ,
;, -
txbErrorMessage 
. 
Text  
=! "
message# *
;* +"
ShowInformationMessage "
(" #
currentWindow# 0
)0 1
;1 2
} 	
private 
void 
ClickAcceptButton &
(& '
object' -
sender. 4
,4 5
RoutedEventArgs6 E
eF G
)G H
{ 	
this 
. 
Close 
( 
) 
; 
} 	
private 
void "
ShowInformationMessage +
(+ ,
Window, 2
currentWindow3 @
)@ A
{ 	
double 
left 
= 
currentWindow '
.' (
Left( ,
+- .
(/ 0
currentWindow0 =
.= >
Width> C
-D E
thisF J
.J K
WidthK P
)P Q
/R S
$numT U
;U V
double 
top 
= 
currentWindow &
.& '
Top' *
++ ,
(- .
currentWindow. ;
.; <
Height< B
-C D
thisE I
.I J
HeightJ P
)P Q
/R S
$numT U
;U V
this 
. 
Left 
= 
left 
; 
this 
. 
Top 
= 
top 
; 
this 
. 
VerticalAlignment "
=# $
VerticalAlignment% 6
.6 7
Center7 =
;= >
this 
. 

ShowDialog 
( 
) 
; 
}   	
}"" 
}## œ≥
oC:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameClient\Pages\PasswordRecovery.xaml.cs
	namespace 	
JeopardyGame
 
. 
Pages 
{ 
public 

partial 
class 
PasswordRecovery )
:* +
Page, 0
{ 
private!! 
List!! 
<!! 
Label!! 
>!! 
ListBoxRules!! (
=!!) *
new!!+ .
List!!/ 3
<!!3 4
Label!!4 9
>!!9 :
(!!: ;
)!!; <
;!!< =
private"" 
const"" 
int"" 
DISALLOWED_VALUES"" +
="", -
$num"". /
;""/ 0
private## 
const## 
int## 
ALLOWED_VALUES## (
=##) *
$num##+ ,
;##, -
private$$ 
const$$ 
int$$ #
MINIMUN_PASSWORD_LENGTH$$ 1
=$$2 3
$num$$4 6
;$$6 7
private%% 
const%% 
int%% #
MAXIMUM_PASSWORD_LENGTH%% 1
=%%2 3
$num%%4 6
;%%6 7
private&& 
DispatcherTimer&& 
timer&&  %
;&&% &
private'' 
int'' 
leftTime'' 
;'' 
private(( 
string(( 
currentUserName(( &
;((& '
private)) 
Window)) 
dialogMessage)) $
;))$ %
public,, 
PasswordRecovery,, 
(,,  
),,  !
{-- 	
InitializeComponent.. 
(..  
)..  !
;..! "
PrepareWindow// 
(// 
)// 
;// $
txbUserNameCreateAccount00 $
.00$ %
	MaxLength00% .
=00/ 0
$num001 3
;003 4
txbCode11 
.11 
	MaxLength11 
=11 
$num11  !
;11! "
psbPassword22 
.22 
	MaxLength22 !
=22" #
$num22$ &
;22& '
}33 	
private55 
void55 
PrepareWindow55 "
(55" #
)55# $
{66 	
InitializeListeners77 
(77  
)77  !
;77! "
CreateRuleLabels88 
(88 
)88 
;88 
foreach99 
(99 
var99 
rule99 
in99  
ListBoxRules99! -
)99- .
{:: 
lsbPasswordRules;;  
.;;  !
Items;;! &
.;;& '
Add;;' *
(;;* +
rule;;+ /
);;/ 0
;;;0 1
}<< 
}== 	
private?? 
void?? 
InitializeListeners?? (
(??( )
)??) *
{@@ 	
psbPasswordAA 
.AA 
PreviewKeyDownAA &
+=AA' )
EntryTextBoxPasteAA* ;
;AA; <$
txbUserNameCreateAccountBB $
.BB$ %
PreviewTextInputBB% 5
+=BB6 8&
EntryTextBoxCharValidationBB9 S
;BBS T$
txbUserNameCreateAccountCC $
.CC$ %
PreviewKeyDownCC% 3
+=CC4 6
EntryTextBoxPasteCC7 H
;CCH I
}DD 	
privateFF 
voidFF &
EntryTextBoxCharValidationFF /
(FF/ 0
objectFF0 6
senderFF7 =
,FF= >$
TextCompositionEventArgsFF? W
eFFX Y
)FFY Z
{GG 	
TextBoxHH 
currentTextBoxHH "
=HH# $
senderHH% +
asHH, .
TextBoxHH/ 6
;HH6 7%
RegularExpressionsLibraryII %%
regularExpressionsLibraryII& ?
=II@ A
newIIB E%
RegularExpressionsLibraryIIF _
(II_ `
)II` a
;IIa b
tryJJ 
{KK 
ifLL 
(LL 
(LL %
regularExpressionsLibraryLL .
.LL. /$
ValidationTextBoxRegexesLL/ G
.LLG H
TryGetValueLLH S
(LLS T
currentTextBoxLLT b
.LLb c
NameLLc g
,LLg h
outLLi l
stringLLm s
regexLLt y
)LLy z
)LLz {
&&MM 
!MM 
RegexMM 
.MM 
IsMatchMM  
(MM  !
(MM! "
currentTextBoxMM" 0
.MM0 1
TextMM1 5
+MM6 7
eMM8 9
.MM9 :
TextMM: >
)MM> ?
,MM? @
regexMMA F
,MMF G
RegexOptionsMMH T
.MMT U

IgnoreCaseMMU _
,MM_ `
TimeSpanMMa i
.MMi j
FromMillisecondsMMj z
(MMz {
$numMM{ ~
)MM~ 
)	MM Ä
)
MMÄ Å
{NN 
eOO 
.OO 
HandledOO 
=OO 
trueOO  $
;OO$ %
}PP 
}QQ 
catchRR 
(RR &
RegexMatchTimeoutExceptionRR -
exRR. 0
)RR0 1
{SS #
ExceptionHandlerForLogsTT '
.TT' (
LogExceptionTT( 4
(TT4 5
exTT5 7
,TT7 8
ExceptionDictionaryTT9 L
.TTL M
ERRORTTM R
)TTR S
;TTS T
eUU 
.UU 
HandledUU 
=UU 
trueUU  
;UU  !
}VV 
catchWW 
(WW !
ArgumentNullExceptionWW (
exWW) +
)WW+ ,
{XX #
ExceptionHandlerForLogsYY '
.YY' (
LogExceptionYY( 4
(YY4 5
exYY5 7
,YY7 8
ExceptionDictionaryYY9 L
.YYL M
ERRORYYM R
)YYR S
;YYS T
eZZ 
.ZZ 
HandledZZ 
=ZZ 
trueZZ  
;ZZ  !
}[[ 
}\\ 	
private^^ 
void^^ 
EntryTextBoxPaste^^ &
(^^& '
object^^' -
sender^^. 4
,^^4 5
KeyEventArgs^^6 B
e^^C D
)^^D E
{__ 	
if`` 
(`` 
(`` 
Keyboard`` 
.`` 
	Modifiers`` #
&``$ %
ModifierKeys``& 2
.``2 3
Control``3 :
)``: ;
==``< >
ModifierKeys``? K
.``K L
Control``L S
&&``T V
(``W X
e``X Y
.``Y Z
Key``Z ]
==``^ `
Key``a d
.``d e
V``e f
)``f g
)``g h
{aa 
ebb 
.bb 
Handledbb 
=bb 
truebb  
;bb  !
}cc 
}dd 	
privateff 
voidff 
CreateRuleLabelsff %
(ff% &
)ff& '
{gg 	
Labelhh !
lblPasswordLengthRulehh '
=hh( )
newhh* -
Labelhh. 3
(hh3 4
)hh4 5
;hh5 6!
lblPasswordLengthRuleii !
.ii! "
Contentii" )
=ii* +

Propertiesii, 6
.ii6 7
	Resourcesii7 @
.ii@ A!
lblPassLengthRuleDesciiA V
;iiV W!
lblPasswordLengthRulejj !
.jj! "

Foregroundjj" ,
=jj- .
Brushesjj/ 6
.jj6 7
Whitejj7 <
;jj< =!
lblPasswordLengthRulekk !
.kk! "
FontSizekk" *
=kk+ ,
$numkk- /
;kk/ 0
Labelll "
lblPasswordNumbersRulell (
=ll) *
newll+ .
Labelll/ 4
(ll4 5
)ll5 6
;ll6 7"
lblPasswordNumbersRulemm "
.mm" #
Contentmm# *
=mm+ ,

Propertiesmm- 7
.mm7 8
	Resourcesmm8 A
.mmA B!
lblPassNumberRuleDescmmB W
;mmW X"
lblPasswordNumbersRulenn "
.nn" #

Foregroundnn# -
=nn. /
Brushesnn0 7
.nn7 8
Whitenn8 =
;nn= >"
lblPasswordNumbersRuleoo "
.oo" #
FontSizeoo# +
=oo, -
$numoo. 0
;oo0 1
Labelpp #
lblPasswordCapitalsRulepp )
=pp* +
newpp, /
Labelpp0 5
(pp5 6
)pp6 7
;pp7 8#
lblPasswordCapitalsRuleqq #
.qq# $
Contentqq$ +
=qq, -

Propertiesqq. 8
.qq8 9
	Resourcesqq9 B
.qqB C"
lblPassCapitalRuleDescqqC Y
;qqY Z#
lblPasswordCapitalsRulerr #
.rr# $

Foregroundrr$ .
=rr/ 0
Brushesrr1 8
.rr8 9
Whiterr9 >
;rr> ?#
lblPasswordCapitalsRuless #
.ss# $
FontSizess$ ,
=ss- .
$numss/ 1
;ss1 2
Labeltt "
lblPasswordSpeCharRulett (
=tt) *
newtt+ .
Labeltt/ 4
(tt4 5
)tt5 6
;tt6 7"
lblPasswordSpeCharRuleuu "
.uu" #
Contentuu# *
=uu+ ,

Propertiesuu- 7
.uu7 8
	Resourcesuu8 A
.uuA B"
lblPassSpeCharRuleDescuuB X
;uuX Y"
lblPasswordSpeCharRulevv "
.vv" #

Foregroundvv# -
=vv. /
Brushesvv0 7
.vv7 8
Whitevv8 =
;vv= >"
lblPasswordSpeCharRuleww "
.ww" #
FontSizeww# +
=ww, -
$numww. 0
;ww0 1
Labelxx &
lblPasswordPunctuationRulexx ,
=xx- .
newxx/ 2
Labelxx3 8
(xx8 9
)xx9 :
;xx: ;&
lblPasswordPunctuationRuleyy &
.yy& '
Contentyy' .
=yy/ 0

Propertiesyy1 ;
.yy; <
	Resourcesyy< E
.yyE F"
lblPassPuntSigRuleDescyyF \
;yy\ ]&
lblPasswordPunctuationRulezz &
.zz& '

Foregroundzz' 1
=zz2 3
Brusheszz4 ;
.zz; <
Whitezz< A
;zzA B&
lblPasswordPunctuationRule{{ &
.{{& '
FontSize{{' /
={{0 1
$num{{2 4
;{{4 5
Label|| $
lblPasswordSameEmailRule|| *
=||+ ,
new||- 0
Label||1 6
(||6 7
)||7 8
;||8 9$
lblPasswordSameEmailRule}} $
.}}$ %
Content}}% ,
=}}- .

Properties}}/ 9
.}}9 :
	Resources}}: C
.}}C D&
lblPassEqualsEmailRuleDesc}}D ^
;}}^ _$
lblPasswordSameEmailRule~~ $
.~~$ %

Foreground~~% /
=~~0 1
Brushes~~2 9
.~~9 :
White~~: ?
;~~? @$
lblPasswordSameEmailRule $
.$ %
FontSize% -
=. /
$num0 2
;2 3
ListBoxRules
ÄÄ 
.
ÄÄ 
Add
ÄÄ 
(
ÄÄ #
lblPasswordLengthRule
ÄÄ 2
)
ÄÄ2 3
;
ÄÄ3 4
ListBoxRules
ÅÅ 
.
ÅÅ 
Add
ÅÅ 
(
ÅÅ $
lblPasswordNumbersRule
ÅÅ 3
)
ÅÅ3 4
;
ÅÅ4 5
ListBoxRules
ÇÇ 
.
ÇÇ 
Add
ÇÇ 
(
ÇÇ %
lblPasswordCapitalsRule
ÇÇ 4
)
ÇÇ4 5
;
ÇÇ5 6
ListBoxRules
ÉÉ 
.
ÉÉ 
Add
ÉÉ 
(
ÉÉ $
lblPasswordSpeCharRule
ÉÉ 3
)
ÉÉ3 4
;
ÉÉ4 5
ListBoxRules
ÑÑ 
.
ÑÑ 
Add
ÑÑ 
(
ÑÑ (
lblPasswordPunctuationRule
ÑÑ 7
)
ÑÑ7 8
;
ÑÑ8 9
ListBoxRules
ÖÖ 
.
ÖÖ 
Add
ÖÖ 
(
ÖÖ &
lblPasswordSameEmailRule
ÖÖ 5
)
ÖÖ5 6
;
ÖÖ6 7
}
ÜÜ 	
private
ââ 
int
ââ 
CheckEmptyFields
ââ $
(
ââ$ %
Label
ââ% *
warningLabel
ââ+ 7
,
ââ7 8
TextBox
ââ9 @

txbToCheck
ââA K
)
ââK L
{
ää 	
int
ãã 
answer
ãã 
=
ãã 
ALLOWED_VALUES
ãã '
;
ãã' (
if
åå 
(
åå 
string
åå 
.
åå 
IsNullOrEmpty
åå $
(
åå$ %

txbToCheck
åå% /
.
åå/ 0
Text
åå0 4
.
åå4 5
Trim
åå5 9
(
åå9 :
)
åå: ;
)
åå; <
)
åå< =
{
çç 
warningLabel
éé 
.
éé 

Visibility
éé '
=
éé( )

Visibility
éé* 4
.
éé4 5
Visible
éé5 <
;
éé< =
answer
èè 
=
èè 
DISALLOWED_VALUES
èè *
;
èè* +
}
êê 
else
ëë 
{
íí 
warningLabel
ìì 
.
ìì 

Visibility
ìì '
=
ìì( )

Visibility
ìì* 4
.
ìì4 5
	Collapsed
ìì5 >
;
ìì> ?
}
îî 
return
ïï 
answer
ïï 
;
ïï 
}
ññ 	
private
òò 
void
òò "
ClickConfirmUserName
òò )
(
òò) *
object
òò* 0
sender
òò1 7
,
òò7 8
RoutedEventArgs
òò9 H
e
òòI J
)
òòJ K
{
ôô 	
if
öö 
(
öö 
CheckEmptyFields
öö 
(
öö  
lblUserNamWarning
öö  1
,
öö1 2&
txbUserNameCreateAccount
öö3 K
)
ööK L
==
ööM O
ALLOWED_VALUES
ööP ^
)
öö^ _
{
õõ 
try
úú 
{
ùù #
RecoverPasswordClient
ûû )"
recoverPasswordProxy
ûû* >
=
ûû? @
new
ûûA D#
RecoverPasswordClient
ûûE Z
(
ûûZ [
)
ûû[ \
;
ûû\ ]
int
üü 
succes
üü 
=
üü  "
recoverPasswordProxy
üü! 5
.
üü5 6)
CreateCodeToRecoverPassWord
üü6 Q
(
üüQ R&
txbUserNameCreateAccount
üüR j
.
üüj k
Text
üük o
,
üüo p

Properties
üüq {
.
üü{ |
	Resourcesüü| Ö
.üüÖ Ü 
EmailSubjectCodeüüÜ ñ
,üüñ ó

Propertiesüüò ¢
.üü¢ £
	Resourcesüü£ ¨
.üü¨ ≠&
RecoverPasswordMessageüü≠ √
)üü√ ƒ
;üüƒ ≈
if
†† 
(
†† 
succes
†† 
==
††  !
ExceptionDictionary
††! 4
.
††4 5
SUCCESFULL_EVENT
††5 E
||
††F H!
ExceptionDictionary
††I \
.
††\ ]$
USERNAME_ALREADY_EXIST
††] s
==
††t v
succes
††w }
)
††} ~
{
°° %
ConfirmCodeAlreadyExist
¢¢ /
(
¢¢/ 0
succes
¢¢0 6
)
¢¢6 7
;
¢¢7 8
}
££ 
else
§§ 
if
§§ 
(
§§ 
succes
§§ "
==
§§# %!
ExceptionDictionary
§§& 9
.
§§9 :
NULL_PARAEMETER
§§: I
)
§§I J
{
•• 
dialogMessage
¶¶ %
=
¶¶& '
new
¶¶( +&
ErrorMessageDialogWindow
¶¶, D
(
¶¶D E

Properties
¶¶E O
.
¶¶O P
	Resources
¶¶P Y
.
¶¶Y Z
txbErrorTitle
¶¶Z g
,
¶¶g h

Properties
¶¶i s
.
¶¶s t
	Resources
¶¶t }
.
¶¶} ~&
lblUserNameDoesNotExist¶¶~ ï
,¶¶ï ñ
Window¶¶ó ù
.¶¶ù û
	GetWindow¶¶û ß
(¶¶ß ®
this¶¶® ¨
)¶¶¨ ≠
)¶¶≠ Æ
;¶¶Æ Ø
}
ßß 
else
®® 
{
©© 
dialogMessage
™™ %
=
™™& '
new
™™( +&
ErrorMessageDialogWindow
™™, D
(
™™D E

Properties
™™E O
.
™™O P
	Resources
™™P Y
.
™™Y Z
txbErrorTitle
™™Z g
,
™™g h

Properties
™™i s
.
™™s t
	Resources
™™t }
.
™™} ~ 
GenericEmailIssue™™~ è
,™™è ê
Window™™ë ó
.™™ó ò
	GetWindow™™ò °
(™™° ¢
this™™¢ ¶
)™™¶ ß
)™™ß ®
;™™® ©
}
´´ 
}
¨¨ 
catch
≠≠ 
(
≠≠ '
EndpointNotFoundException
≠≠ 0
ex
≠≠1 3
)
≠≠3 4
{
ÆÆ 
HandleException
ØØ #
(
ØØ# $
ex
ØØ$ &
,
ØØ& '

Properties
ØØ( 2
.
ØØ2 3
	Resources
ØØ3 <
.
ØØ< =
GenericEmailIssue
ØØ= N
+
ØØO P
$str
ØØQ T
+
ØØU V

Properties
ØØW a
.
ØØa b
	Resources
ØØb k
.
ØØk l!
lblEndPointNotFound
ØØl 
)ØØ Ä
;ØØÄ Å
}
±± 
catch
≤≤ 
(
≤≤ 1
#CommunicationObjectFaultedException
≤≤ :
ex
≤≤; =
)
≤≤= >
{
≥≥ 
HandleException
¥¥ #
(
¥¥# $
ex
¥¥$ &
,
¥¥& '

Properties
¥¥( 2
.
¥¥2 3
	Resources
¥¥3 <
.
¥¥< =
GenericEmailIssue
¥¥= N
+
¥¥O P
$str
¥¥Q T
+
¥¥U V

Properties
¥¥W a
.
¥¥a b
	Resources
¥¥b k
.
¥¥k l'
lblComunicationException¥¥l Ñ
)¥¥Ñ Ö
;¥¥Ö Ü
}
µµ 
catch
∂∂ 
(
∂∂ 
TimeoutException
∂∂ '
ex
∂∂( *
)
∂∂* +
{
∑∑ 
HandleException
∏∏ #
(
∏∏# $
ex
∏∏$ &
,
∏∏& '

Properties
∏∏( 2
.
∏∏2 3
	Resources
∏∏3 <
.
∏∏< =
GenericEmailIssue
∏∏= N
+
∏∏O P
$str
∏∏Q T
+
∏∏U V

Properties
∏∏W a
.
∏∏a b
	Resources
∏∏b k
.
∏∏k l
lblTimeException
∏∏l |
)
∏∏| }
;
∏∏} ~
}
ππ 
catch
∫∫ 
(
∫∫ $
CommunicationException
∫∫ -
ex
∫∫. 0
)
∫∫0 1
{
ªª 
HandleException
ºº #
(
ºº# $
ex
ºº$ &
,
ºº& '

Properties
ºº( 2
.
ºº2 3
	Resources
ºº3 <
.
ºº< =
GenericEmailIssue
ºº= N
+
ººO P
$str
ººQ T
+
ººU V

Properties
ººW a
.
ººa b
	Resources
ººb k
.
ººk l!
lblWithoutConection
ººl 
)ºº Ä
;ººÄ Å
}
ΩΩ 
catch
ææ 
(
ææ 
SocketException
ææ &
ex
ææ' )
)
ææ) *
{
øø 
HandleException
¿¿ #
(
¿¿# $
ex
¿¿$ &
,
¿¿& '

Properties
¿¿( 2
.
¿¿2 3
	Resources
¿¿3 <
.
¿¿< =
GenericEmailIssue
¿¿= N
+
¿¿O P
$str
¿¿Q T
+
¿¿U V

Properties
¿¿W a
.
¿¿a b
	Resources
¿¿b k
.
¿¿k l!
lblEndPointNotFound
¿¿l 
)¿¿ Ä
;¿¿Ä Å
}
¡¡ 
}
¬¬ 
}
√√ 	
private
≈≈ 
void
≈≈ %
ConfirmCodeAlreadyExist
≈≈ ,
(
≈≈, -
int
≈≈- 0
succes
≈≈1 7
)
≈≈7 8
{
∆∆ 	
currentUserName
«« 
=
«« &
txbUserNameCreateAccount
«« 6
.
««6 7
Text
««7 ;
.
««; <
Trim
««< @
(
««@ A
)
««A B
;
««B C
bttConfirmCode
»» 
.
»» 
	IsEnabled
»» $
=
»»% &
true
»»' +
;
»»+ , 
bttConfirmUserName
…… 
.
…… 
	IsEnabled
…… (
=
……) *
false
……+ 0
;
……0 1&
txbUserNameCreateAccount
   $
.
  $ %
	IsEnabled
  % .
=
  / 0
false
  1 6
;
  6 7
bttSaveUser
ÀÀ 
.
ÀÀ 
	IsEnabled
ÀÀ !
=
ÀÀ" #
false
ÀÀ$ )
;
ÀÀ) *

StartTimer
ÃÃ 
(
ÃÃ 
)
ÃÃ 
;
ÃÃ 
if
ÕÕ 
(
ÕÕ 
succes
ÕÕ 
==
ÕÕ !
ExceptionDictionary
ÕÕ -
.
ÕÕ- .$
USERNAME_ALREADY_EXIST
ÕÕ. D
)
ÕÕD E
{
ŒŒ 
dialogMessage
œœ 
=
œœ 
new
œœ  #&
ErrorMessageDialogWindow
œœ$ <
(
œœ< =

Properties
œœ= G
.
œœG H
	Resources
œœH Q
.
œœQ R
txbErrorTitle
œœR _
,
œœ_ `

Properties
œœa k
.
œœk l
	Resources
œœl u
.
œœu v3
$lblAlreadyExistACodeToChangePasswordœœv ö
,œœö õ
Windowœœú ¢
.œœ¢ £
	GetWindowœœ£ ¨
(œœ¨ ≠
thisœœ≠ ±
)œœ± ≤
)œœ≤ ≥
;œœ≥ ¥
}
–– 
else
—— 
{
““ 
dialogMessage
”” 
=
”” 
new
””  #,
InformationMessageDialogWindow
””$ B
(
””B C

Properties
””C M
.
””M N
	Resources
””N W
.
””W X!
txbInformationTitle
””X k
,
””k l

Properties
””m w
.
””w x
	Resources””x Å
.””Å Ç3
#lblEmailCodePassWordSendSuccesfully””Ç •
,””• ¶
Window””ß ≠
.””≠ Æ
	GetWindow””Æ ∑
(””∑ ∏
this””∏ º
)””º Ω
)””Ω æ
;””æ ø
}
‘‘ 
}
’’ 	
private
◊◊ 
void
◊◊ 
CLickConfirmCode
◊◊ %
(
◊◊% &
object
◊◊& ,
sender
◊◊- 3
,
◊◊3 4
RoutedEventArgs
◊◊5 D
e
◊◊E F
)
◊◊F G
{
ÿÿ 	
if
ŸŸ 
(
ŸŸ 
CheckEmptyFields
ŸŸ  
(
ŸŸ  !
lblCodeNamWarning
ŸŸ! 2
,
ŸŸ2 3
txbCode
ŸŸ4 ;
)
ŸŸ; <
==
ŸŸ= ?
ALLOWED_VALUES
ŸŸ@ N
)
ŸŸN O
{
⁄⁄ 
try
€€ 
{
‹‹ #
RecoverPasswordClient
›› )"
recoverPasswordProxy
››* >
=
››? @
new
››A D#
RecoverPasswordClient
››E Z
(
››Z [
)
››[ \
;
››\ ]
int
ﬁﬁ 
succes
ﬁﬁ 
=
ﬁﬁ  "
recoverPasswordProxy
ﬁﬁ! 5
.
ﬁﬁ5 6)
VerifyCodeToRecoverPassword
ﬁﬁ6 Q
(
ﬁﬁQ R
currentUserName
ﬁﬁR a
,
ﬁﬁa b
txbCode
ﬁﬁc j
.
ﬁﬁj k
Text
ﬁﬁk o
.
ﬁﬁo p
Trim
ﬁﬁp t
(
ﬁﬁt u
)
ﬁﬁu v
)
ﬁﬁv w
;
ﬁﬁw x
if
ﬂﬂ 
(
ﬂﬂ 
succes
ﬂﬂ 
==
ﬂﬂ !!
ExceptionDictionary
ﬂﬂ" 5
.
ﬂﬂ5 6
SUCCESFULL_EVENT
ﬂﬂ6 F
)
ﬂﬂF G
{
‡‡ 
bttConfirmCode
·· &
.
··& '
	IsEnabled
··' 0
=
··1 2
false
··3 8
;
··8 9 
bttConfirmUserName
‚‚ *
.
‚‚* +
	IsEnabled
‚‚+ 4
=
‚‚5 6
false
‚‚7 <
;
‚‚< =&
txbUserNameCreateAccount
„„ 0
.
„„0 1
	IsEnabled
„„1 :
=
„„; <
false
„„= B
;
„„B C
txbCode
‰‰ 
.
‰‰  
	IsEnabled
‰‰  )
=
‰‰* +
false
‰‰, 1
;
‰‰1 2
bttSaveUser
ÂÂ #
.
ÂÂ# $
	IsEnabled
ÂÂ$ -
=
ÂÂ. /
true
ÂÂ0 4
;
ÂÂ4 5
dialogMessage
ÊÊ %
=
ÊÊ& '
new
ÊÊ( +,
InformationMessageDialogWindow
ÊÊ, J
(
ÊÊJ K

Properties
ÊÊK U
.
ÊÊU V
	Resources
ÊÊV _
.
ÊÊ_ `!
txbInformationTitle
ÊÊ` s
,
ÊÊs t

Properties
ÊÊu 
.ÊÊ Ä
	ResourcesÊÊÄ â
.ÊÊâ ä$
lblRigthCodePasswordÊÊä û
,ÊÊû ü
WindowÊÊ† ¶
.ÊÊ¶ ß
	GetWindowÊÊß ∞
(ÊÊ∞ ±
thisÊÊ± µ
)ÊÊµ ∂
)ÊÊ∂ ∑
;ÊÊ∑ ∏
}
ËË 
else
ÈÈ 
{
ÍÍ %
ShowSpecificCodeMessage
ÎÎ /
(
ÎÎ/ 0
succes
ÎÎ0 6
)
ÎÎ6 7
;
ÎÎ7 8
}
ÏÏ 
}
ÌÌ 
catch
ÓÓ 
(
ÓÓ '
EndpointNotFoundException
ÓÓ 0
ex
ÓÓ1 3
)
ÓÓ3 4
{
ÔÔ 
HandleException
 #
(
# $
ex
$ &
,
& '

Properties
( 2
.
2 3
	Resources
3 <
.
< =$
lblFailToVerifyTheCode
= S
+
T U
$str
V Y
+
Z [

Properties
\ f
.
f g
	Resources
g p
.
p q"
lblEndPointNotFoundq Ñ
)Ñ Ö
;Ö Ü
}
ÚÚ 
catch
ÛÛ 
(
ÛÛ 1
#CommunicationObjectFaultedException
ÛÛ :
ex
ÛÛ; =
)
ÛÛ= >
{
ÙÙ 
HandleException
ıı #
(
ıı# $
ex
ıı$ &
,
ıı& '

Properties
ıı( 2
.
ıı2 3
	Resources
ıı3 <
.
ıı< =$
lblFailToVerifyTheCode
ıı= S
+
ııT U
$str
ııV Y
+
ııZ [

Properties
ıı\ f
.
ııf g
	Resources
ııg p
.
ııp q'
lblComunicationExceptionııq â
)ııâ ä
;ııä ã
}
ˆˆ 
catch
˜˜ 
(
˜˜ 
TimeoutException
˜˜ '
ex
˜˜( *
)
˜˜* +
{
¯¯ 
HandleException
˘˘ #
(
˘˘# $
ex
˘˘$ &
,
˘˘& '

Properties
˘˘( 2
.
˘˘2 3
	Resources
˘˘3 <
.
˘˘< =$
lblFailToVerifyTheCode
˘˘= S
+
˘˘T U
$str
˘˘V Y
+
˘˘Z [

Properties
˘˘\ f
.
˘˘f g
	Resources
˘˘g p
.
˘˘p q
lblTimeException˘˘q Å
)˘˘Å Ç
;˘˘Ç É
}
˙˙ 
catch
˚˚ 
(
˚˚ $
CommunicationException
˚˚ -
ex
˚˚. 0
)
˚˚0 1
{
¸¸ 
HandleException
˝˝ #
(
˝˝# $
ex
˝˝$ &
,
˝˝& '

Properties
˝˝( 2
.
˝˝2 3
	Resources
˝˝3 <
.
˝˝< =$
lblFailToVerifyTheCode
˝˝= S
+
˝˝T U
$str
˝˝V Y
+
˝˝Z [

Properties
˝˝\ f
.
˝˝f g
	Resources
˝˝g p
.
˝˝p q"
lblWithoutConection˝˝q Ñ
)˝˝Ñ Ö
;˝˝Ö Ü
}
˛˛ 
catch
ˇˇ 
(
ˇˇ 
SocketException
ˇˇ &
ex
ˇˇ' )
)
ˇˇ) *
{
ÄÄ 
HandleException
ÅÅ #
(
ÅÅ# $
ex
ÅÅ$ &
,
ÅÅ& '

Properties
ÅÅ( 2
.
ÅÅ2 3
	Resources
ÅÅ3 <
.
ÅÅ< =
GenericEmailIssue
ÅÅ= N
+
ÅÅO P
$str
ÅÅQ T
+
ÅÅU V

Properties
ÅÅW a
.
ÅÅa b
	Resources
ÅÅb k
.
ÅÅk l!
lblEndPointNotFound
ÅÅl 
)ÅÅ Ä
;ÅÅÄ Å
}
ÇÇ 
}
ÉÉ 
}
ÑÑ 	
private
ÜÜ 
void
ÜÜ %
ShowSpecificCodeMessage
ÜÜ ,
(
ÜÜ, -
int
ÜÜ- 0
succes
ÜÜ1 7
)
ÜÜ7 8
{
áá 	
if
àà 
(
àà 
succes
àà 
==
àà !
ExceptionDictionary
àà -
.
àà- .
NULL_PARAEMETER
àà. =
)
àà= >
{
ââ 
dialogMessage
ää 
=
ää 
new
ää  #&
ErrorMessageDialogWindow
ää$ <
(
ää< =

Properties
ää= G
.
ääG H
	Resources
ääH Q
.
ääQ R
txbErrorTitle
ääR _
,
ää_ `

Properties
ääa k
.
ääk l
	Resources
ääl u
.
ääu v&
lblUserNameDoesNotExistääv ç
,ääç é
Windowääè ï
.ääï ñ
	GetWindowääñ ü
(ääü †
thisää† §
)ää§ •
)ää• ¶
;ää¶ ß
}
ãã 
else
åå 
if
åå 
(
åå 
succes
åå 
==
åå !
ExceptionDictionary
åå 2
.
åå2 3
ARGUMENT_NULL
åå3 @
)
åå@ A
{
çç 
dialogMessage
éé 
=
éé 
new
éé  #&
ErrorMessageDialogWindow
éé$ <
(
éé< =

Properties
éé= G
.
ééG H
	Resources
ééH Q
.
ééQ R
txbErrorTitle
ééR _
,
éé_ `

Properties
ééa k
.
éék l
	Resources
éél u
.
ééu v)
lblThereIsnoCodeFoThisUseréév ê
,ééê ë
Windowééí ò
.ééò ô
	GetWindowééô ¢
(éé¢ £
thiséé£ ß
)ééß ®
)éé® ©
;éé© ™
}
èè 
else
êê 
if
êê 
(
êê 
succes
êê 
==
êê !
ExceptionDictionary
êê 2
.
êê2 3
INVALID_OPERATION
êê3 D
)
êêD E
{
ëë 
dialogMessage
íí 
=
íí 
new
íí  #&
ErrorMessageDialogWindow
íí$ <
(
íí< =

Properties
íí= G
.
ííG H
	Resources
ííH Q
.
ííQ R
txbErrorTitle
ííR _
,
íí_ `

Properties
íía k
.
íík l
	Resources
ííl u
.
ííu v"
lblWrongCodeEnteredíív â
,ííâ ä
Windowííã ë
.ííë í
	GetWindowííí õ
(ííõ ú
thisííú †
)íí† °
)íí° ¢
;íí¢ £
}
ìì 
else
îî 
{
ïï 
dialogMessage
ññ 
=
ññ 
new
ññ  #&
ErrorMessageDialogWindow
ññ$ <
(
ññ< =

Properties
ññ= G
.
ññG H
	Resources
ññH Q
.
ññQ R
txbErrorTitle
ññR _
,
ññ_ `

Properties
ñña k
.
ññk l
	Resources
ññl u
.
ññu v%
lblFailToVerifyTheCodeññv å
,ññå ç
Windowññé î
.ññî ï
	GetWindowññï û
(ññû ü
thisññü £
)ññ£ §
)ññ§ •
;ññ• ¶
}
óó 
}
òò 	
private
öö 
void
öö +
ClickButtonConfirmNewPassword
öö 2
(
öö2 3
object
öö3 9
sender
öö: @
,
öö@ A
RoutedEventArgs
ööB Q
e
ööR S
)
ööS T
{
õõ 	
try
úú 
{
úú *
ConsultUserInformationClient
ùù ,%
consultInformationProxy
ùù- D
=
ùùE F
new
ùùG J*
ConsultUserInformationClient
ùùK g
(
ùùg h
)
ùùh i
;
ùùi j
var
ûû 
userCosulted
ûû  
=
ûû! "%
consultInformationProxy
ûû# :
.
ûû: ;#
ConsultUserByUserName
ûû; P
(
ûûP Q
currentUserName
ûûQ `
)
ûû` a
;
ûûa b
if
üü 
(
üü 
userCosulted
üü  
.
üü  !
	CodeEvent
üü! *
==
üü+ -!
ExceptionDictionary
üü. A
.
üüA B
SUCCESFULL_EVENT
üüB R
)
üüR S
{
†† 
if
°° 
(
°° 
ALLOWED_VALUES
°° &
==
°°' )
CheckPassword
°°* 7
(
°°7 8
userCosulted
°°8 D
.
°°D E
ObjectSaved
°°E P
.
°°P Q
EmailAddress
°°Q ]
)
°°] ^
)
°°^ _
{
¢¢ 
UserManagerClient
££ )
userManagerClient
££* ;
=
££< =
new
££> A
UserManagerClient
££B S
(
££S T
)
££T U
;
££U V
var
§§ 
succes
§§ "
=
§§# $
userManagerClient
§§% 6
.
§§6 7 
UpdatePasswordUser
§§7 I
(
§§I J
currentUserName
§§J Y
,
§§Y Z
EncryptionClass
§§Z i
.
§§i j
EncryptPassword
§§j y
(
§§y z
psbPassword§§z Ö
.§§Ö Ü
Password§§Ü é
.§§é è
ToString§§è ó
(§§ó ò
)§§ò ô
.§§ô ö
Trim§§ö û
(§§û ü
)§§ü †
)§§† °
)§§° ¢
;§§¢ £
if
•• 
(
•• 
succes
•• "
.
••" #
	CodeEvent
••# ,
==
••- /!
ExceptionDictionary
••0 C
.
••C D
SUCCESFULL_EVENT
••D T
)
••T U
{
¶¶ 
dialogMessage
ßß )
=
ßß* +
new
ßß, /&
ErrorMessageDialogWindow
ßß0 H
(
ßßH I

Properties
ßßI S
.
ßßS T
	Resources
ßßT ]
.
ßß] ^!
txbInformationTitle
ßß^ q
,
ßßq r

Properties
ßßs }
.
ßß} ~
	Resourcesßß~ á
.ßßá à+
lblPassWordUpdatedCorrectlyßßà £
,ßß£ §
Windowßß• ´
.ßß´ ¨
	GetWindowßß¨ µ
(ßßµ ∂
thisßß∂ ∫
)ßß∫ ª
)ßßª º
;ßßº Ω!
GoToPrincipalWindow
®® /
(
®®/ 0
)
®®0 1
;
®®1 2
}
©© 
else
™™ 
{
´´ 
dialogMessage
¨¨ )
=
¨¨* +
new
¨¨, /&
ErrorMessageDialogWindow
¨¨0 H
(
¨¨H I

Properties
¨¨I S
.
¨¨S T
	Resources
¨¨T ]
.
¨¨] ^
txbErrorTitle
¨¨^ k
,
¨¨k l

Properties
¨¨m w
.
¨¨w x
	Resources¨¨x Å
.¨¨Å Ç'
lblFailToUpdatePassword¨¨Ç ô
+¨¨ö õ
$str¨¨ú ü
+¨¨† °

Properties¨¨¢ ¨
.¨¨¨ ≠
	Resources¨¨≠ ∂
.¨¨∂ ∑"
lblFailToConenctBD¨¨∑ …
,¨¨…  
Window¨¨À —
.¨¨— “
	GetWindow¨¨“ €
(¨¨€ ‹
this¨¨‹ ‡
)¨¨‡ ·
)¨¨· ‚
;¨¨‚ „
}
≠≠ 
}
ÆÆ 
else
ØØ 
{
∞∞ 
ShowPasswordRules
±± )
(
±±) *
)
±±* +
;
±±+ ,
}
≤≤ 
}
≥≥ 
else
¥¥ 
{
µµ 
dialogMessage
∂∂ !
=
∂∂" #
new
∂∂$ '&
ErrorMessageDialogWindow
∂∂( @
(
∂∂@ A

Properties
∂∂A K
.
∂∂K L
	Resources
∂∂L U
.
∂∂U V
txbErrorTitle
∂∂V c
,
∂∂c d

Properties
∂∂e o
.
∂∂o p
	Resources
∂∂p y
.
∂∂y z&
lblFailToUpdatePassword∂∂z ë
+∂∂í ì
$str∂∂î ó
+∂∂ò ô

Properties∂∂ö §
.∂∂§ •
	Resources∂∂• Æ
.∂∂Æ Ø"
lblFailToConenctBD∂∂Ø ¡
,∂∂¡ ¬
Window∂∂√ …
.∂∂…  
	GetWindow∂∂  ”
(∂∂” ‘
this∂∂‘ ÿ
)∂∂ÿ Ÿ
)∂∂Ÿ ⁄
;∂∂⁄ €
}
∑∑ 
}
∏∏ 
catch
ππ 
(
ππ '
EndpointNotFoundException
ππ ,
ex
ππ- /
)
ππ/ 0
{
∫∫ 
HandleException
ªª 
(
ªª  
ex
ªª  "
,
ªª" #

Properties
ªª$ .
.
ªª. /
	Resources
ªª/ 8
.
ªª8 9%
lblFailToUpdatePassword
ªª9 P
+
ªªQ R
$str
ªªS V
+
ªªX Y

Properties
ªªZ d
.
ªªd e
	Resources
ªªe n
.
ªªn o"
lblEndPointNotFoundªªo Ç
)ªªÇ É
;ªªÉ Ñ
}
ΩΩ 
catch
ææ 
(
ææ 1
#CommunicationObjectFaultedException
ææ 6
ex
ææ7 9
)
ææ9 :
{
øø 
HandleException
¿¿ 
(
¿¿  
ex
¿¿  "
,
¿¿" #

Properties
¿¿$ .
.
¿¿. /
	Resources
¿¿/ 8
.
¿¿8 9%
lblFailToUpdatePassword
¿¿9 P
+
¿¿Q R
$str
¿¿S V
+
¿¿V W

Properties
¿¿X b
.
¿¿b c
	Resources
¿¿c l
.
¿¿l m'
lblComunicationException¿¿m Ö
)¿¿Ö Ü
;¿¿Ü á
}
¡¡ 
catch
¬¬ 
(
¬¬ 
TimeoutException
¬¬ #
ex
¬¬$ &
)
¬¬& '
{
√√ 
HandleException
ƒƒ 
(
ƒƒ  
ex
ƒƒ  "
,
ƒƒ" #

Properties
ƒƒ$ .
.
ƒƒ. /
	Resources
ƒƒ/ 8
.
ƒƒ8 9%
lblFailToUpdatePassword
ƒƒ9 P
+
ƒƒQ R
$str
ƒƒS V
+
ƒƒW X

Properties
ƒƒY c
.
ƒƒc d
	Resources
ƒƒd m
.
ƒƒm n
lblTimeException
ƒƒn ~
)
ƒƒ~ 
;ƒƒ Ä
}
≈≈ 
catch
∆∆ 
(
∆∆ $
CommunicationException
∆∆ )
ex
∆∆* ,
)
∆∆, -
{
«« 
HandleException
»» 
(
»»  
ex
»»  "
,
»»" #

Properties
»»$ .
.
»». /
	Resources
»»/ 8
.
»»8 9%
lblFailToUpdatePassword
»»9 P
+
»»Q R
$str
»»S V
+
»»W X

Properties
»»Y c
.
»»c d
	Resources
»»d m
.
»»m n"
lblWithoutConection»»n Å
)»»Å Ç
;»»Ç É
}
…… 
catch
   
(
   
SocketException
   "
ex
  # %
)
  % &
{
ÀÀ 
HandleException
ÃÃ 
(
ÃÃ  
ex
ÃÃ  "
,
ÃÃ" #

Properties
ÃÃ$ .
.
ÃÃ. /
	Resources
ÃÃ/ 8
.
ÃÃ8 9
GenericEmailIssue
ÃÃ9 J
+
ÃÃK L
$str
ÃÃM P
+
ÃÃQ R

Properties
ÃÃS ]
.
ÃÃ] ^
	Resources
ÃÃ^ g
.
ÃÃg h!
lblEndPointNotFound
ÃÃh {
)
ÃÃ{ |
;
ÃÃ| }
}
ÕÕ 
}
ŒŒ 	
private
–– 
int
–– 
CheckPassword
–– !
(
––! "
string
––" (
email
––) .
)
––. /
{
—— 	
int
““ 
answer
““ 
=
““ 
ALLOWED_VALUES
““ '
;
““' (
try
”” 
{
‘‘ '
RegularExpressionsLibrary
’’ )
regexInstance
’’* 7
=
’’8 9
new
’’: ='
RegularExpressionsLibrary
’’> W
(
’’W X
)
’’X Y
;
’’Y Z
string
÷÷ 
regexExpression
÷÷ &
;
÷÷& '
String
◊◊ 
passwordChecked
◊◊ &
=
◊◊' (
psbPassword
◊◊) 4
.
◊◊4 5
Password
◊◊5 =
.
◊◊= >
ToString
◊◊> F
(
◊◊F G
)
◊◊G H
.
◊◊H I
Trim
◊◊I M
(
◊◊M N
)
◊◊N O
;
◊◊O P
if
ÿÿ 
(
ÿÿ 
passwordChecked
ÿÿ #
.
ÿÿ# $
Length
ÿÿ$ *
<
ÿÿ+ ,%
MINIMUN_PASSWORD_LENGTH
ÿÿ- D
||
ÿÿE G
passwordChecked
ÿÿH W
.
ÿÿW X
Length
ÿÿX ^
>
ÿÿ_ `%
MAXIMUM_PASSWORD_LENGTH
ÿÿa x
)
ÿÿx y
{
ŸŸ !
HighLightBrokenRule
⁄⁄ '
(
⁄⁄' (
ListBoxRules
⁄⁄( 4
[
⁄⁄4 5
$num
⁄⁄5 6
]
⁄⁄6 7
)
⁄⁄7 8
;
⁄⁄8 9
answer
€€ 
=
€€ 
DISALLOWED_VALUES
€€ .
;
€€. /
}
‹‹ 
else
›› 
{
ﬁﬁ 
ClearBrokenRule
ﬂﬂ #
(
ﬂﬂ# $
ListBoxRules
ﬂﬂ$ 0
[
ﬂﬂ0 1
$num
ﬂﬂ1 2
]
ﬂﬂ2 3
)
ﬂﬂ3 4
;
ﬂﬂ4 5
}
‡‡ 
regexExpression
·· 
=
··  !
regexInstance
··" /
.
··/ 0$
GetAt_LEAST_TWO_NUMBER
··0 F
(
··F G
)
··G H
;
··H I
if
‚‚ 
(
‚‚ 
!
‚‚ 
Regex
‚‚ 
.
‚‚ 
IsMatch
‚‚ "
(
‚‚" #
passwordChecked
‚‚# 2
,
‚‚2 3
regexExpression
‚‚4 C
,
‚‚C D
RegexOptions
‚‚E Q
.
‚‚Q R

IgnoreCase
‚‚R \
,
‚‚\ ]
TimeSpan
‚‚^ f
.
‚‚f g
FromMilliseconds
‚‚g w
(
‚‚w x
$num
‚‚x {
)
‚‚{ |
)
‚‚| }
)
‚‚} ~
{
„„ !
HighLightBrokenRule
‰‰ '
(
‰‰' (
ListBoxRules
‰‰( 4
[
‰‰4 5
$num
‰‰5 6
]
‰‰6 7
)
‰‰7 8
;
‰‰8 9
answer
ÂÂ 
=
ÂÂ 
DISALLOWED_VALUES
ÂÂ .
;
ÂÂ. /
}
ÊÊ 
else
ÁÁ 
{
ËË 
ClearBrokenRule
ÈÈ #
(
ÈÈ# $
ListBoxRules
ÈÈ$ 0
[
ÈÈ0 1
$num
ÈÈ1 2
]
ÈÈ2 3
)
ÈÈ3 4
;
ÈÈ4 5
}
ÍÍ 
if
ÎÎ 
(
ÎÎ 
!
ÎÎ !
GetSpecificResource
ÎÎ (
.
ÎÎ( )3
%HasAtLeastTwoSeparateUppercaseLetters
ÎÎ) N
(
ÎÎN O
passwordChecked
ÎÎO ^
)
ÎÎ^ _
)
ÎÎ_ `
{
ÏÏ !
HighLightBrokenRule
ÌÌ '
(
ÌÌ' (
ListBoxRules
ÌÌ( 4
[
ÌÌ4 5
$num
ÌÌ5 6
]
ÌÌ6 7
)
ÌÌ7 8
;
ÌÌ8 9
answer
ÓÓ 
=
ÓÓ 
DISALLOWED_VALUES
ÓÓ .
;
ÓÓ. /
}
ÔÔ 
else
 
{
ÒÒ 
ClearBrokenRule
ÚÚ #
(
ÚÚ# $
ListBoxRules
ÚÚ$ 0
[
ÚÚ0 1
$num
ÚÚ1 2
]
ÚÚ2 3
)
ÚÚ3 4
;
ÚÚ4 5
}
ÛÛ 
regexExpression
ÙÙ 
=
ÙÙ  !
regexInstance
ÙÙ" /
.
ÙÙ/ 0/
!GetAt_LEAST_ONE_SPECIAL_CHARACTER
ÙÙ0 Q
(
ÙÙQ R
)
ÙÙR S
;
ÙÙS T
if
ıı 
(
ıı 
!
ıı 
Regex
ıı 
.
ıı 
IsMatch
ıı "
(
ıı" #
passwordChecked
ıı# 2
,
ıı2 3
regexExpression
ıı4 C
,
ııC D
RegexOptions
ııE Q
.
ııQ R

IgnoreCase
ııR \
,
ıı\ ]
TimeSpan
ıı^ f
.
ııf g
FromMilliseconds
ııg w
(
ııw x
$num
ııx {
)
ıı{ |
)
ıı| }
)
ıı} ~
{
ˆˆ !
HighLightBrokenRule
˜˜ '
(
˜˜' (
ListBoxRules
˜˜( 4
[
˜˜4 5
$num
˜˜5 6
]
˜˜6 7
)
˜˜7 8
;
˜˜8 9
answer
¯¯ 
=
¯¯ 
DISALLOWED_VALUES
¯¯ .
;
¯¯. /
}
˘˘ 
else
˙˙ 
{
˚˚ 
ClearBrokenRule
¸¸ #
(
¸¸# $
ListBoxRules
¸¸$ 0
[
¸¸0 1
$num
¸¸1 2
]
¸¸2 3
)
¸¸3 4
;
¸¸4 5
}
˝˝ 
regexExpression
˛˛ 
=
˛˛  !
regexInstance
˛˛" /
.
˛˛/ 0,
GetAt_LEAST_ONE_PUTUATION_MARK
˛˛0 N
(
˛˛N O
)
˛˛O P
;
˛˛P Q
if
ˇˇ 
(
ˇˇ 
!
ˇˇ 
Regex
ˇˇ 
.
ˇˇ 
IsMatch
ˇˇ "
(
ˇˇ" #
passwordChecked
ˇˇ# 2
,
ˇˇ2 3
regexExpression
ˇˇ4 C
,
ˇˇC D
RegexOptions
ˇˇE Q
.
ˇˇQ R

IgnoreCase
ˇˇR \
,
ˇˇ\ ]
TimeSpan
ˇˇ^ f
.
ˇˇf g
FromMilliseconds
ˇˇg w
(
ˇˇw x
$num
ˇˇx {
)
ˇˇ{ |
)
ˇˇ| }
)
ˇˇ} ~
{
ÄÄ !
HighLightBrokenRule
ÅÅ '
(
ÅÅ' (
ListBoxRules
ÅÅ( 4
[
ÅÅ4 5
$num
ÅÅ5 6
]
ÅÅ6 7
)
ÅÅ7 8
;
ÅÅ8 9
answer
ÇÇ 
=
ÇÇ 
DISALLOWED_VALUES
ÇÇ .
;
ÇÇ. /
}
ÉÉ 
else
ÑÑ 
{
ÖÖ 
ClearBrokenRule
ÜÜ #
(
ÜÜ# $
ListBoxRules
ÜÜ$ 0
[
ÜÜ0 1
$num
ÜÜ1 2
]
ÜÜ2 3
)
ÜÜ3 4
;
ÜÜ4 5
}
áá 
int
àà 
arrobaIndex
àà 
=
àà  !
(
àà" #
email
àà# (
.
àà( )
IndexOf
àà) 0
(
àà0 1
$char
àà1 4
)
àà4 5
!=
àà6 8
-
àà9 :
$num
àà: ;
)
àà; <
?
àà= >
email
àà? D
.
ààD E
IndexOf
ààE L
(
ààL M
$char
ààM P
)
ààP Q
:
ààR S
$num
ààT U
;
ààU V
if
ââ 
(
ââ 
email
ââ 
.
ââ 
Trim
ââ 
(
ââ 
)
ââ  
.
ââ  !
	Substring
ââ! *
(
ââ* +
$num
ââ+ ,
,
ââ, -
arrobaIndex
ââ. 9
)
ââ9 :
.
ââ: ;
Equals
ââ; A
(
ââA B
passwordChecked
ââB Q
)
ââQ R
)
ââR S
{
ää !
HighLightBrokenRule
ãã '
(
ãã' (
ListBoxRules
ãã( 4
[
ãã4 5
$num
ãã5 6
]
ãã6 7
)
ãã7 8
;
ãã8 9
answer
åå 
=
åå 
DISALLOWED_VALUES
åå .
;
åå. /
}
çç 
else
éé 
{
èè 
ClearBrokenRule
êê #
(
êê# $
ListBoxRules
êê$ 0
[
êê0 1
$num
êê1 2
]
êê2 3
)
êê3 4
;
êê4 5
}
ëë 
}
ìì 
catch
îî 
(
îî (
RegexMatchTimeoutException
îî -
ex
îî. 0
)
îî0 1
{
ïï %
ExceptionHandlerForLogs
ññ '
.
ññ' (
LogException
ññ( 4
(
ññ4 5
ex
ññ5 7
,
ññ7 8!
ExceptionDictionary
ññ9 L
.
ññL M
ERROR
ññM R
)
ññR S
;
ññS T
answer
óó 
=
óó 
DISALLOWED_VALUES
óó *
;
óó* +
}
òò 
return
öö 
answer
öö 
;
öö 
}
õõ 	
private
ùù 
void
ùù !
HighLightBrokenRule
ùù (
(
ùù( )
Label
ùù) .
missingRule
ùù/ :
)
ùù: ;
{
ûû 	
missingRule
üü 
.
üü 

Foreground
üü "
=
üü# $
Brushes
üü% ,
.
üü, -
Red
üü- 0
;
üü0 1
}
†† 	
private
°° 
void
°° 
ClearBrokenRule
°° $
(
°°$ %
Label
°°% *
missingRule
°°+ 6
)
°°6 7
{
¢¢ 	
missingRule
££ 
.
££ 

Foreground
££ "
=
££# $
Brushes
££% ,
.
££, -
White
££- 2
;
££2 3
}
§§ 	
private
¶¶ 
void
¶¶ $
ClickViewPasswordRules
¶¶ +
(
¶¶+ ,
object
¶¶, 2
sender
¶¶3 9
,
¶¶9 :"
MouseButtonEventArgs
¶¶; O
e
¶¶P Q
)
¶¶Q R
{
ßß 	
ShowPasswordRules
®® 
(
®® 
)
®® 
;
®®  
}
©© 	
private
´´ 
void
´´ 
ShowPasswordRules
´´ &
(
´´& '
)
´´' (
{
¨¨ 	
if
≠≠ 
(
≠≠ "
imgViewPasswordRules
≠≠ $
.
≠≠$ %

Visibility
≠≠% /
==
≠≠0 2

Visibility
≠≠3 =
.
≠≠= >
Visible
≠≠> E
)
≠≠E F
{
ÆÆ 
brdPasswordRules
ØØ  
.
ØØ  !

Visibility
ØØ! +
=
ØØ, -

Visibility
ØØ. 8
.
ØØ8 9
Visible
ØØ9 @
;
ØØ@ A"
imgViewPasswordRules
∞∞ $
.
∞∞$ %

Visibility
∞∞% /
=
∞∞0 1

Visibility
∞∞2 <
.
∞∞< =
Hidden
∞∞= C
;
∞∞C D
}
±± 
}
≤≤ 	
private
≥≥ 
void
≥≥ %
ClickClosePasswordRules
≥≥ ,
(
≥≥, -
object
≥≥- 3
sender
≥≥4 :
,
≥≥: ;"
MouseButtonEventArgs
≥≥< P
e
≥≥Q R
)
≥≥R S
{
¥¥ 	
brdPasswordRules
µµ 
.
µµ 

Visibility
µµ '
=
µµ( )

Visibility
µµ* 4
.
µµ4 5
Hidden
µµ5 ;
;
µµ; <"
imgViewPasswordRules
∂∂  
.
∂∂  !

Visibility
∂∂! +
=
∂∂, -

Visibility
∂∂. 8
.
∂∂8 9
Visible
∂∂9 @
;
∂∂@ A
}
∑∑ 	
private
ππ 
void
ππ 
ClickSeePassword
ππ %
(
ππ% &
object
ππ& ,
sender
ππ- 3
,
ππ3 4"
MouseButtonEventArgs
ππ5 I
e
ππJ K
)
ππK L
{
∫∫ 	
lblViewPassword
ªª 
.
ªª 
Content
ªª #
=
ªª$ %
psbPassword
ªª& 1
.
ªª1 2
Password
ªª2 :
.
ªª: ;
ToString
ªª; C
(
ªªC D
)
ªªD E
;
ªªE F
psbPassword
ºº 
.
ºº 

Visibility
ºº "
=
ºº# $

Visibility
ºº% /
.
ºº/ 0
	Collapsed
ºº0 9
;
ºº9 :
lblViewPassword
ΩΩ 
.
ΩΩ 

Visibility
ΩΩ &
=
ΩΩ' (

Visibility
ΩΩ) 3
.
ΩΩ3 4
Visible
ΩΩ4 ;
;
ΩΩ; <
}
ææ 	
private
¿¿ 
void
¿¿ #
OverLeaveHidePassword
¿¿ *
(
¿¿* +
object
¿¿+ 1
sender
¿¿2 8
,
¿¿8 9
MouseEventArgs
¿¿: H
e
¿¿I J
)
¿¿J K
{
¡¡ 	
if
¬¬ 
(
¬¬ 
lblViewPassword
¬¬ 
.
¬¬  
	IsVisible
¬¬  )
)
¬¬) *
{
√√ 
psbPassword
ƒƒ 
.
ƒƒ 

Visibility
ƒƒ &
=
ƒƒ' (

Visibility
ƒƒ) 3
.
ƒƒ3 4
Visible
ƒƒ4 ;
;
ƒƒ; <
psbPassword
≈≈ 
.
≈≈ 
PasswordChar
≈≈ (
=
≈≈) *
$char
≈≈+ .
;
≈≈. /
psbPassword
∆∆ 
.
∆∆ 
Password
∆∆ $
=
∆∆% &
(
∆∆' (
string
∆∆( .
)
∆∆. /
lblViewPassword
∆∆/ >
.
∆∆> ?
Content
∆∆? F
;
∆∆F G
lblViewPassword
«« 
.
««  

Visibility
««  *
=
««+ ,

Visibility
««- 7
.
««7 8
	Collapsed
««8 A
;
««A B
}
»» 
}
…… 	
private
ÃÃ 
void
ÃÃ 

StartTimer
ÃÃ 
(
ÃÃ  
)
ÃÃ  !
{
ÕÕ 	
leftTime
ŒŒ 
=
ŒŒ 
$num
ŒŒ 
;
ŒŒ 
timer
œœ 
=
œœ 
new
œœ 
DispatcherTimer
œœ '
(
œœ' (
)
œœ( )
;
œœ) *
timer
–– 
.
–– 
Interval
–– 
=
–– 
TimeSpan
–– %
.
––% &
FromSeconds
––& 1
(
––1 2
$num
––2 3
)
––3 4
;
––4 5
timer
—— 
.
—— 
Tick
—— 
+=
—— !
TickTimerResendCode
—— -
;
——- .
timer
““ 
.
““ 
Start
““ 
(
““ 
)
““ 
;
““ 
}
”” 	
private
’’ 
void
’’ !
TickTimerResendCode
’’ (
(
’’( )
object
’’) /
sender
’’0 6
,
’’6 7
	EventArgs
’’8 A
e
’’B C
)
’’C D
{
÷÷ 	
if
◊◊ 
(
◊◊ 
leftTime
◊◊ 
>
◊◊ 
$num
◊◊ 
)
◊◊ 
{
ÿÿ 
leftTime
ŸŸ 
--
ŸŸ 
;
ŸŸ 
lblResendCode
⁄⁄ 
.
⁄⁄ 

Foreground
⁄⁄ (
=
⁄⁄) *
new
⁄⁄+ .
SolidColorBrush
⁄⁄/ >
(
⁄⁄> ?
Colors
⁄⁄? E
.
⁄⁄E F
	IndianRed
⁄⁄F O
)
⁄⁄O P
;
⁄⁄P Q
lblResendCode
€€ 
.
€€ 
Content
€€ %
=
€€& '

Properties
€€( 2
.
€€2 3
	Resources
€€3 <
.
€€< =
lblResentCode
€€= J
+
€€K L
$str
€€M P
+
€€Q R
leftTime
€€S [
;
€€[ \
}
‹‹ 
else
›› 
{
ﬁﬁ 
lblResendCode
ﬂﬂ 
.
ﬂﬂ 

Foreground
ﬂﬂ (
=
ﬂﬂ) *
new
ﬂﬂ+ .
SolidColorBrush
ﬂﬂ/ >
(
ﬂﬂ> ?
Colors
ﬂﬂ? E
.
ﬂﬂE F
ForestGreen
ﬂﬂF Q
)
ﬂﬂQ R
;
ﬂﬂR S
lblResendCode
‡‡ 
.
‡‡ 
Content
‡‡ %
=
‡‡& '

Properties
‡‡( 2
.
‡‡2 3
	Resources
‡‡3 <
.
‡‡< =
lblResentCode
‡‡= J
+
‡‡K L
$str
‡‡M P
+
‡‡Q R
leftTime
‡‡S [
;
‡‡[ \
SetDefaultBotons
··  
(
··  !
)
··! "
;
··" #
timer
‚‚ 
.
‚‚ 
Stop
‚‚ 
(
‚‚ 
)
‚‚ 
;
‚‚ 
}
„„ 
}
‰‰ 	
private
ÊÊ 
void
ÊÊ 
SetDefaultBotons
ÊÊ %
(
ÊÊ% &
)
ÊÊ& '
{
ÁÁ 	 
bttConfirmUserName
ËË 
.
ËË 
	IsEnabled
ËË (
=
ËË) *
true
ËË+ /
;
ËË/ 0&
txbUserNameCreateAccount
ÈÈ $
.
ÈÈ$ %
	IsEnabled
ÈÈ% .
=
ÈÈ/ 0
true
ÈÈ1 5
;
ÈÈ5 6
}
ÍÍ 	
private
ÌÌ 
void
ÌÌ %
ClickButtonCancelSaving
ÌÌ ,
(
ÌÌ, -
object
ÌÌ- 3
sender
ÌÌ4 :
,
ÌÌ: ;
RoutedEventArgs
ÌÌ< K
e
ÌÌL M
)
ÌÌM N
{
ÓÓ 	
if
ÔÔ 
(
ÔÔ 
new
ÔÔ &
ConfirmationDialogWindow
ÔÔ ,
(
ÔÔ, -

Properties
ÔÔ- 7
.
ÔÔ7 8
	Resources
ÔÔ8 A
.
ÔÔA B
txbWarningTitle
ÔÔB Q
,
ÔÔQ R

Properties
ÔÔS ]
.
ÔÔ] ^
	Resources
ÔÔ^ g
.
ÔÔg h,
txbConfirmationCancelSaveUserÔÔh Ö
,ÔÔÖ Ü
ApplicationÔÔá í
.ÔÔí ì
CurrentÔÔì ö
.ÔÔö õ

MainWindowÔÔõ •
)ÔÔ• ¶
.ÔÔ¶ ß
CloseWindowÔÔß ≤
)ÔÔ≤ ≥
{
 !
GoToPrincipalWindow
ÒÒ #
(
ÒÒ# $
)
ÒÒ$ %
;
ÒÒ% &
}
ÚÚ 
}
ÛÛ 	
private
ıı 
void
ıı !
GoToPrincipalWindow
ıı (
(
ıı( )
)
ıı) *
{
ˆˆ 	
if
˜˜ 
(
˜˜ 
timer
˜˜ 
!=
˜˜ 
null
˜˜ 
)
˜˜ 
{
¯¯ 
timer
˙˙ 
.
˙˙ 
Stop
˙˙ 
(
˙˙ 
)
˙˙ 
;
˙˙ 
}
˚˚ 
PrincipalPage
¸¸ 
principalPage
¸¸ '
=
¸¸( )
new
¸¸* -
(
¸¸- .
)
¸¸. /
;
¸¸/ 0
this
˝˝ 
.
˝˝ 
NavigationService
˝˝ "
.
˝˝" #
Navigate
˝˝# +
(
˝˝+ ,
principalPage
˝˝, 9
)
˝˝9 :
;
˝˝: ;
NavigationService
˛˛ 
.
˛˛ 
RemoveBackEntry
˛˛ -
(
˛˛- .
)
˛˛. /
;
˛˛/ 0
}
ˇˇ 	
private
ÅÅ 
void
ÅÅ 
HandleException
ÅÅ $
(
ÅÅ$ %
	Exception
ÅÅ% .
ex
ÅÅ/ 1
,
ÅÅ1 2
string
ÅÅ3 9
errorMessage
ÅÅ: F
)
ÅÅF G
{
ÇÇ 	%
ExceptionHandlerForLogs
ÉÉ #
.
ÉÉ# $
LogException
ÉÉ$ 0
(
ÉÉ0 1
ex
ÉÉ1 3
,
ÉÉ3 4!
ExceptionDictionary
ÉÉ5 H
.
ÉÉH I
FATAL_EXCEPTION
ÉÉI X
)
ÉÉX Y
;
ÉÉY Z
dialogMessage
ÑÑ 
=
ÑÑ 
new
ÑÑ &
ErrorMessageDialogWindow
ÑÑ  8
(
ÑÑ8 9

Properties
ÑÑ9 C
.
ÑÑC D
	Resources
ÑÑD M
.
ÑÑM N
txbErrorTitle
ÑÑN [
,
ÑÑ[ \
errorMessage
ÑÑ] i
,
ÑÑi j
Application
ÑÑk v
.
ÑÑv w
Current
ÑÑw ~
.
ÑÑ~ 

MainWindowÑÑ â
)ÑÑâ ä
;ÑÑä ã
}
ÖÖ 	
}
àà 
}ââ ‰5
lC:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameClient\Pages\PrincipalPage.xaml.cs
	namespace 	
JeopardyGame
 
. 
Pages 
{ 
public 

partial 
class 
PrincipalPage &
:' (
Page) -
{ 
public 
PrincipalPage 
( 
) 
{ 	
InitializeComponent 
(  
)  !
;! "
} 	
private 
void 
ClickButtonLogin %
(% &
object& ,
sender- 3
,3 4
RoutedEventArgs5 D
eE F
)F G
{ 	
	LogInUser   
	logInPage   
=    !
new  " %
	LogInUser  & /
(  / 0
)  0 1
;  1 2
this!! 
.!! 
NavigationService!! "
.!!" #
Navigate!!# +
(!!+ ,
	logInPage!!, 5
)!!5 6
;!!6 7
NavigationService"" 
."" 
RemoveBackEntry"" -
(""- .
)"". /
;""/ 0
}## 	
private%% 
void%% 
ClickGetInAsIGuest%% '
(%%' (
object%%( .
sender%%/ 5
,%%5 6
RoutedEventArgs%%7 F
e%%G H
)%%H I
{&& 	
Views'' 
.'' 
EnterWithGameCode'' #

codeWindow''$ .
=''/ 0
new''1 4
Views''5 :
.'': ;
EnterWithGameCode''; L
(''L M
)''M N
;''N O

codeWindow(( 
.(( 
Owner(( 
=(( 
Window(( %
.((% &
	GetWindow((& /
(((/ 0
this((0 4
)((4 5
;((5 6

codeWindow)) 
.)) !
WindowStartupLocation)) ,
=))- .
System))/ 5
.))5 6
Windows))6 =
.))= >!
WindowStartupLocation))> S
.))S T
CenterScreen))T `
;))` a
enterGameWithCode** 
codePage** &
=**' (
new**) ,
enterGameWithCode**- >
(**> ?
Window**? E
.**E F
	GetWindow**F O
(**O P
this**P T
)**T U
,**U V
true**W [
)**[ \
;**\ ]

codeWindow++ 
.++ 
contentFrame++ #
.++# $
NavigationService++$ 5
.++5 6
Navigate++6 >
(++> ?
codePage++? G
)++G H
;++H I

codeWindow,, 
.,, 

ShowDialog,, !
(,,! "
),," #
;,,# $
}-- 	
public// 
void//  
ClosePrincipalWindow// )
(//) *
)//* +
{00 	
Window11 
.11 
	GetWindow11 
(11 
this11 !
)11! "
.11" #
Close11# (
(11( )
)11) *
;11* +
}22 	
private44 
void44 $
ClickGoToRecoverPassword44 -
(44- .
object44. 4
sender445 ;
,44; < 
MouseButtonEventArgs44= Q
e44R S
)44S T
{55 	
PasswordRecovery66 
passwordRecovery66 -
=66. /
new660 3
PasswordRecovery664 D
(66D E
)66E F
;66F G
this77 
.77 
NavigationService77 "
.77" #
Navigate77# +
(77+ ,
passwordRecovery77, <
)77< =
;77= >
NavigationService88 
.88 
RemoveBackEntry88 -
(88- .
)88. /
;88/ 0
}99 	
private;; 
void;; 
LanguageButtonClick;; (
(;;( )
object;;) /
sender;;0 6
,;;6 7
RoutedEventArgs;;8 G
e;;H I
);;I J
{<< 	
LanguageOptions== 
.== 

Visibility== &
===' (

Visibility==) 3
.==3 4
Visible==4 ;
;==; <
}>> 	
private?? 
void?? $
UpdateInterfaceResources?? -
(??- .
)??. /
{@@ 	
ifAA 
(AA 
	bttPlayerAA 
!=AA 
nullAA !
)AA! "
	bttPlayerBB 
.BB 
ContentBB !
=BB" #

PropertiesBB$ .
.BB. /
	ResourcesBB/ 8
.BB8 9
	bttPlayerBB9 B
;BBB C
ifDD 
(DD 
bttGuestDD 
!=DD 
nullDD  
)DD  !
bttGuestEE 
.EE 
ContentEE  
=EE! "

PropertiesEE# -
.EE- .
	ResourcesEE. 7
.EE7 8
	btnInviteEE8 A
;EEA B
ifGG 
(GG 
lblRecoverPasswordGG "
!=GG# %
nullGG& *
)GG* +
lblRecoverPasswordHH "
.HH" #
ContentHH# *
=HH+ ,

PropertiesHH- 7
.HH7 8
	ResourcesHH8 A
.HHA B
lblRecoverPasswordHHB T
;HHT U
}II 	
privateKK 
voidKK 
SelectLanguageKK #
(KK# $
objectKK$ *
senderKK+ 1
,KK1 2
RoutedEventArgsKK3 B
eKKC D
)KKD E
{LL 	
SystemMM 
.MM 
WindowsMM 
.MM 
ControlsMM #
.MM# $
ButtonMM$ *
selectedButtonMM+ 9
=MM: ;
senderMM< B
asMMC E
ButtonMMF L
;MML M
stringNN 
selectedLanguageNN #
=NN$ %
selectedButtonNN& 4
.NN4 5
TagNN5 8
.NN8 9
ToStringNN9 A
(NNA B
)NNB C
;NNC D
AppPP 
.PP 
ChangeLanguagePP 
(PP 
selectedLanguagePP /
)PP/ 0
;PP0 1
RegistryKeyQQ 
keyQQ 
=QQ 
RegistryQQ &
.QQ& '
CurrentUserQQ' 2
.QQ2 3
CreateSubKeyQQ3 ?
(QQ? @
$strQQ@ X
)QQX Y
;QQY Z
keyRR 
.RR 
SetValueRR 
(RR 
$strRR +
,RR+ ,
selectedLanguageRR- =
)RR= >
;RR> ?
keySS 
.SS 
CloseSS 
(SS 
)SS 
;SS $
UpdateInterfaceResourcesTT $
(TT$ %
)TT% &
;TT& '
LanguageButtonVV 
.VV 
ContentVV "
=VV# $
selectedButtonVV% 3
.VV3 4
ContentVV4 ;
;VV; <
LanguageOptionsXX 
.XX 

VisibilityXX &
=XX' (

VisibilityXX) 3
.XX3 4
	CollapsedXX4 =
;XX= >
}YY 	
}ZZ 
}[[ ∑®
gC:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameClient\Pages\TeamChat.xaml.cs
	namespace 	
JeopardyGame
 
. 
Pages 
{ 
public 

partial 
class 
TeamChat !
:" #
Page$ (
,( )!
IChatForTeamsCallback* ?
{ 
private 
static 
UserSingleton $
userSingleton% 2
=3 4
UserSingleton5 B
.B C
GetMainUserC N
(N O
)O P
;P Q
private 
int 

idTeamMate 
; 
private 
	GameBoard 
	gameBoard #
;# $
private   
Window   
dialogMessage   $
;  $ %
public"" 
TeamChat"" 
("" 
	GameBoard"" !
game""" &
,""& '
int""( +
idTeam"", 2
)""2 3
{## 	
InitializeComponent$$ 
($$  
)$$  !
;$$! "
this%% 
.%% 
	gameBoard%% 
=%% 
game%% !
;%%! "
this&& 
.&& 

idTeamMate&& 
=&& 
idTeam&& $
;&&$ %
InstanceContext'' 
context'' #
=''$ %
new''& )
InstanceContext''* 9
(''9 :
this'': >
)''> ?
;''? @
ChatForTeamsClient(( 
chatForTeamProxy(( /
=((0 1
new((2 5
ChatForTeamsClient((6 H
(((H I
context((I P
)((P Q
;((Q R
RegisterForCallBack)) 
())  
chatForTeamProxy))  0
)))0 1
;))1 2
}** 	
public,, 
void,,  
RenewCallBackChannel,, (
(,,( )
),,) *
{-- 	
try.. 
{// 
InstanceContext00 
context00  '
=00( )
new00* -
InstanceContext00. =
(00= >
this00> B
)00B C
;00C D
ChatForTeamsClient11 "
chatForTeamProxy11# 3
=114 5
new116 9
ChatForTeamsClient11: L
(11L M
context11M T
)11T U
;11U V
chatForTeamProxy22  
.22  !!
RenewTeamChatCallBack22! 6
(226 7
userSingleton227 D
.22D E
IdUser22E K
)22K L
;22L M
}33 
catch44 
(44 %
EndpointNotFoundException44 ,
ex44- /
)44/ 0
{55 
HandleException66 
(66  
ex66  "
,66" #

Properties66$ .
.66. /
	Resources66/ 8
.668 9%
lblFailRegistryToCallBack669 R
+66S T
$str66U Z
+66[ \

Properties66] g
.66g h
	Resources66h q
.66q r 
lblEndPointNotFound	66r Ö
)
66Ö Ü
;
66Ü á
}77 
catch88 
(88 /
#CommunicationObjectFaultedException88 6
ex887 9
)889 :
{99 
HandleException:: 
(::  
ex::  "
,::" #

Properties::$ .
.::. /
	Resources::/ 8
.::8 9%
lblFailRegistryToCallBack::9 R
+::S T
$str::U Z
+::[ \

Properties::] g
.::g h
	Resources::h q
.::q r%
lblComunicationException	::r ä
)
::ä ã
;
::ã å
};; 
catch<< 
(<< 
TimeoutException<< #
ex<<$ &
)<<& '
{== 
HandleException>> 
(>>  
ex>>  "
,>>" #

Properties>>$ .
.>>. /
	Resources>>/ 8
.>>8 9%
lblFailRegistryToCallBack>>9 R
+>>S T
$str>>U Z
+>>[ \

Properties>>] g
.>>g h
	Resources>>h q
.>>q r
lblTimeException	>>r Ç
)
>>Ç É
;
>>É Ñ
}?? 
catch@@ 
(@@ "
CommunicationException@@ )
ex@@* ,
)@@, -
{AA 
HandleExceptionBB 
(BB  
exBB  "
,BB" #

PropertiesBB$ .
.BB. /
	ResourcesBB/ 8
.BB8 9%
lblFailRegistryToCallBackBB9 R
+BBS T
$strBBU Z
+BB[ \

PropertiesBB] g
.BBg h
	ResourcesBBh q
.BBq r 
lblWithoutConection	BBr Ö
)
BBÖ Ü
;
BBÜ á
}CC 
catchDD 
(DD 
SocketExceptionDD "
exDD# %
)DD% &
{EE 
HandleExceptionFF 
(FF  
exFF  "
,FF" #

PropertiesFF$ .
.FF. /
	ResourcesFF/ 8
.FF8 9
GenericEmailIssueFF9 J
+FFK L
$strFFM P
+FFQ R

PropertiesFFS ]
.FF] ^
	ResourcesFF^ g
.FFg h
lblEndPointNotFoundFFh {
)FF{ |
;FF| }
}GG 
}HH 	
privateJJ 
voidJJ 
RegisterForCallBackJJ (
(JJ( )
ChatForTeamsClientJJ) ;
chatForTeamProxyJJ< L
)JJL M
{KK 	
tryLL 
{MM 
chatForTeamProxyNN  
.NN  !
RegisterForTeamChatNN! 4
(NN4 5
userSingletonNN5 B
.NNB C
IdUserNNC I
)NNI J
;NNJ K
}OO 
catchPP 
(PP %
EndpointNotFoundExceptionPP ,
exPP- /
)PP/ 0
{QQ 
HandleExceptionRR 
(RR  
exRR  "
,RR" #

PropertiesRR$ .
.RR. /
	ResourcesRR/ 8
.RR8 9%
lblFailRegistryToCallBackRR9 R
+RRS T
$strRRU Z
+RR[ \

PropertiesRR] g
.RRg h
	ResourcesRRh q
.RRq r 
lblEndPointNotFound	RRr Ö
)
RRÖ Ü
;
RRÜ á
}SS 
catchTT 
(TT /
#CommunicationObjectFaultedExceptionTT 6
exTT7 9
)TT9 :
{UU 
HandleExceptionVV 
(VV  
exVV  "
,VV" #

PropertiesVV$ .
.VV. /
	ResourcesVV/ 8
.VV8 9%
lblFailRegistryToCallBackVV9 R
+VVS T
$strVVU Z
+VV[ \

PropertiesVV] g
.VVg h
	ResourcesVVh q
.VVq r%
lblComunicationException	VVr ä
)
VVä ã
;
VVã å
}WW 
catchXX 
(XX 
TimeoutExceptionXX #
exXX$ &
)XX& '
{YY 
HandleExceptionZZ 
(ZZ  
exZZ  "
,ZZ" #

PropertiesZZ$ .
.ZZ. /
	ResourcesZZ/ 8
.ZZ8 9%
lblFailRegistryToCallBackZZ9 R
+ZZS T
$strZZU Z
+ZZ[ \

PropertiesZZ] g
.ZZg h
	ResourcesZZh q
.ZZq r
lblTimeException	ZZr Ç
)
ZZÇ É
;
ZZÉ Ñ
}[[ 
catch\\ 
(\\ "
CommunicationException\\ )
ex\\* ,
)\\, -
{]] 
HandleException^^ 
(^^  
ex^^  "
,^^" #

Properties^^$ .
.^^. /
	Resources^^/ 8
.^^8 9%
lblFailRegistryToCallBack^^9 R
+^^S T
$str^^U Z
+^^[ \

Properties^^] g
.^^g h
	Resources^^h q
.^^q r 
lblWithoutConection	^^r Ö
)
^^Ö Ü
;
^^Ü á
}__ 
catch`` 
(`` 
SocketException`` "
ex``# %
)``% &
{aa 
HandleExceptionbb 
(bb  
exbb  "
,bb" #

Propertiesbb$ .
.bb. /
	Resourcesbb/ 8
.bb8 9
GenericEmailIssuebb9 J
+bbK L
$strbbM P
+bbQ R

PropertiesbbS ]
.bb] ^
	Resourcesbb^ g
.bbg h
lblEndPointNotFoundbbh {
)bb{ |
;bb| }
}cc 
}dd 	
privateff 
voidff 
ClickCloseChatff #
(ff# $
objectff$ *
senderff+ 1
,ff1 2 
MouseButtonEventArgsff3 G
effH I
)ffI J
{gg 	
	gameBoardhh 
.hh 
CloseLiveChathh #
(hh# $
)hh$ %
;hh% &
}ii 	
privatekk 
voidkk 
ClickSendMessagekk %
(kk% &
objectkk& ,
senderkk- 3
,kk3 4 
MouseButtonEventArgskk5 I
ekkJ K
)kkK L
{ll 	
trymm 
{nn 
stringoo 
messageoo 
=oo  
txbMessageToSendoo! 1
.oo1 2
Textoo2 6
;oo6 7
ifpp 
(pp 
!pp 
stringpp 
.pp 
IsNullOrEmptypp )
(pp) *
messagepp* 1
)pp1 2
)pp2 3
{qq (
ChatForTeamsOperationsClientrr 0
chatForTeamProxyrr1 A
=rrB C
newrrD G
(rrG H
)rrH I
;rrI J
chatForTeamProxyss $
.ss$ %
SendMessageTeamss% 4
(ss4 5
userSingletonss5 B
.ssB C
IdUserssC I
,ssI J

idTeamMatessK U
,ssU V
userSingletonssW d
.ssd e
UserNamesse m
,ssm n
messagesso v
)ssv w
;ssw x
ChatMessageCardtt #
chatMessageCardtt$ 3
=tt4 5
newtt6 9
ChatMessageCardtt: I
(ttI J
userSingletonttJ W
.ttW X
UserNamettX `
,tt` a
messagettb i
)tti j
;ttj k
chatMessageCarduu #
.uu# $
HorizontalAlignmentuu$ 7
=uu8 9
HorizontalAlignmentuu: M
.uuM N
RightuuN S
;uuS T
stpChatvv 
.vv 
Childrenvv $
.vv$ %
Addvv% (
(vv( )
chatMessageCardvv) 8
)vv8 9
;vv9 :
txbMessageToSendww $
.ww$ %
Textww% )
=ww* +
stringww, 2
.ww2 3
Emptyww3 8
;ww8 9
}xx 
}yy 
catchzz 
(zz %
EndpointNotFoundExceptionzz ,
exzz- /
)zz/ 0
{{{ #
ExceptionHandlerForLogs|| '
.||' (
LogException||( 4
(||4 5
ex||5 7
,||7 8
ExceptionDictionary||9 L
.||L M
FATAL_EXCEPTION||M \
)||\ ]
;||] ^
stpChat}} 
.}} 
Children}}  
.}}  !
Add}}! $
(}}$ %
new}}% (
ChatMessageCard}}) 8
(}}8 9

Properties}}9 C
.}}C D
	Resources}}D M
.}}M N
txbErrorTitle}}N [
,}}[ \

Properties}}] g
.}}g h
	Resources}}h q
.}}q r*
txbFailToSendOrReciveAMessage	}}r è
)
}}è ê
)
}}ê ë
;
}}ë í
}~~ 
catch 
( /
#CommunicationObjectFaultedException 6
ex7 9
)9 :
{
ÄÄ %
ExceptionHandlerForLogs
ÅÅ '
.
ÅÅ' (
LogException
ÅÅ( 4
(
ÅÅ4 5
ex
ÅÅ5 7
,
ÅÅ7 8!
ExceptionDictionary
ÅÅ9 L
.
ÅÅL M
FATAL_EXCEPTION
ÅÅM \
)
ÅÅ\ ]
;
ÅÅ] ^
stpChat
ÇÇ 
.
ÇÇ 
Children
ÇÇ  
.
ÇÇ  !
Add
ÇÇ! $
(
ÇÇ$ %
new
ÇÇ% (
ChatMessageCard
ÇÇ) 8
(
ÇÇ8 9

Properties
ÇÇ9 C
.
ÇÇC D
	Resources
ÇÇD M
.
ÇÇM N
txbErrorTitle
ÇÇN [
,
ÇÇ[ \

Properties
ÇÇ] g
.
ÇÇg h
	Resources
ÇÇh q
.
ÇÇq r,
txbFailToSendOrReciveAMessageÇÇr è
)ÇÇè ê
)ÇÇê ë
;ÇÇë í
}
ÉÉ 
catch
ÑÑ 
(
ÑÑ 
TimeoutException
ÑÑ #
ex
ÑÑ$ &
)
ÑÑ& '
{
ÖÖ %
ExceptionHandlerForLogs
ÜÜ '
.
ÜÜ' (
LogException
ÜÜ( 4
(
ÜÜ4 5
ex
ÜÜ5 7
,
ÜÜ7 8!
ExceptionDictionary
ÜÜ9 L
.
ÜÜL M
FATAL_EXCEPTION
ÜÜM \
)
ÜÜ\ ]
;
ÜÜ] ^
stpChat
áá 
.
áá 
Children
áá  
.
áá  !
Add
áá! $
(
áá$ %
new
áá% (
ChatMessageCard
áá) 8
(
áá8 9

Properties
áá9 C
.
ááC D
	Resources
ááD M
.
ááM N
txbErrorTitle
ááN [
,
áá[ \

Properties
áá] g
.
áág h
	Resources
ááh q
.
ááq r,
txbFailToSendOrReciveAMessageáár è
)ááè ê
)ááê ë
;ááë í
}
àà 
catch
ââ 
(
ââ $
CommunicationException
ââ )
ex
ââ* ,
)
ââ, -
{
ää %
ExceptionHandlerForLogs
ãã '
.
ãã' (
LogException
ãã( 4
(
ãã4 5
ex
ãã5 7
,
ãã7 8!
ExceptionDictionary
ãã9 L
.
ããL M
FATAL_EXCEPTION
ããM \
)
ãã\ ]
;
ãã] ^
stpChat
åå 
.
åå 
Children
åå  
.
åå  !
Add
åå! $
(
åå$ %
new
åå% (
ChatMessageCard
åå) 8
(
åå8 9

Properties
åå9 C
.
ååC D
	Resources
ååD M
.
ååM N
txbErrorTitle
ååN [
,
åå[ \

Properties
åå] g
.
ååg h
	Resources
ååh q
.
ååq r,
txbFailToSendOrReciveAMessageåår è
)ååè ê
)ååê ë
;ååë í
}
çç 
catch
éé 
(
éé 
SocketException
éé "
ex
éé# %
)
éé% &
{
èè %
ExceptionHandlerForLogs
êê '
.
êê' (
LogException
êê( 4
(
êê4 5
ex
êê5 7
,
êê7 8!
ExceptionDictionary
êê9 L
.
êêL M
FATAL_EXCEPTION
êêM \
)
êê\ ]
;
êê] ^
stpChat
ëë 
.
ëë 
Children
ëë  
.
ëë  !
Add
ëë! $
(
ëë$ %
new
ëë% (
ChatMessageCard
ëë) 8
(
ëë8 9

Properties
ëë9 C
.
ëëC D
	Resources
ëëD M
.
ëëM N
txbErrorTitle
ëëN [
,
ëë[ \

Properties
ëë] g
.
ëëg h
	Resources
ëëh q
.
ëëq r,
txbFailToSendOrReciveAMessageëër è
)ëëè ê
)ëëê ë
;ëëë í
}
íí 
}
ìì 	
public
ïï 
void
ïï $
ReceiveMessageTeamChat
ïï *
(
ïï* +/
!GenericClassOfMessageChatxY0a3WX4
ïï+ L
message
ïïM T
)
ïïT U
{
ññ 	
try
óó 
{
òò 
if
ôô 
(
ôô 
message
ôô 
.
ôô 
	CodeEvent
ôô %
==
ôô& (

Exceptions
ôô) 3
.
ôô3 4!
ExceptionDictionary
ôô4 G
.
ôôG H
SUCCESFULL_EVENT
ôôH X
)
ôôX Y
{
öö 
ChatMessageCard
õõ #
chatMessageCard
õõ$ 3
=
õõ4 5
new
õõ6 9
ChatMessageCard
õõ: I
(
õõI J
message
õõJ Q
.
õõQ R
ObjectSaved
õõR ]
.
õõ] ^
UserName
õõ^ f
,
õõf g
message
õõh o
.
õõo p
ObjectSaved
õõp {
.
õõ{ |
MessageToSendõõ| â
)õõâ ä
;õõä ã
chatMessageCard
úú #
.
úú# $!
HorizontalAlignment
úú$ 7
=
úú8 9!
HorizontalAlignment
úú: M
.
úúM N
Right
úúN S
;
úúS T
stpChat
ùù 
.
ùù 
Children
ùù $
.
ùù$ %
Add
ùù% (
(
ùù( )
chatMessageCard
ùù) 8
)
ùù8 9
;
ùù9 :
}
ûû 
}
üü 
catch
†† 
(
†† '
EndpointNotFoundException
†† ,
ex
††- /
)
††/ 0
{
°° %
ExceptionHandlerForLogs
¢¢ '
.
¢¢' (
LogException
¢¢( 4
(
¢¢4 5
ex
¢¢5 7
,
¢¢7 8!
ExceptionDictionary
¢¢9 L
.
¢¢L M
FATAL_EXCEPTION
¢¢M \
)
¢¢\ ]
;
¢¢] ^
stpChat
££ 
.
££ 
Children
££  
.
££  !
Add
££! $
(
££$ %
new
££% (
ChatMessageCard
££) 8
(
££8 9

Properties
££9 C
.
££C D
	Resources
££D M
.
££M N
txbErrorTitle
££N [
,
££[ \

Properties
££] g
.
££g h
	Resources
££h q
.
££q r,
txbFailToSendOrReciveAMessage££r è
)££è ê
)££ê ë
;££ë í
}
§§ 
catch
•• 
(
•• 1
#CommunicationObjectFaultedException
•• 6
ex
••7 9
)
••9 :
{
¶¶ %
ExceptionHandlerForLogs
ßß '
.
ßß' (
LogException
ßß( 4
(
ßß4 5
ex
ßß5 7
,
ßß7 8!
ExceptionDictionary
ßß9 L
.
ßßL M
FATAL_EXCEPTION
ßßM \
)
ßß\ ]
;
ßß] ^
stpChat
®® 
.
®® 
Children
®®  
.
®®  !
Add
®®! $
(
®®$ %
new
®®% (
ChatMessageCard
®®) 8
(
®®8 9

Properties
®®9 C
.
®®C D
	Resources
®®D M
.
®®M N
txbErrorTitle
®®N [
,
®®[ \

Properties
®®] g
.
®®g h
	Resources
®®h q
.
®®q r,
txbFailToSendOrReciveAMessage®®r è
)®®è ê
)®®ê ë
;®®ë í
}
©© 
catch
™™ 
(
™™ 
TimeoutException
™™ #
ex
™™$ &
)
™™& '
{
´´ %
ExceptionHandlerForLogs
¨¨ '
.
¨¨' (
LogException
¨¨( 4
(
¨¨4 5
ex
¨¨5 7
,
¨¨7 8!
ExceptionDictionary
¨¨9 L
.
¨¨L M
FATAL_EXCEPTION
¨¨M \
)
¨¨\ ]
;
¨¨] ^
stpChat
≠≠ 
.
≠≠ 
Children
≠≠  
.
≠≠  !
Add
≠≠! $
(
≠≠$ %
new
≠≠% (
ChatMessageCard
≠≠) 8
(
≠≠8 9

Properties
≠≠9 C
.
≠≠C D
	Resources
≠≠D M
.
≠≠M N
txbErrorTitle
≠≠N [
,
≠≠[ \

Properties
≠≠] g
.
≠≠g h
	Resources
≠≠h q
.
≠≠q r,
txbFailToSendOrReciveAMessage≠≠r è
)≠≠è ê
)≠≠ê ë
;≠≠ë í
}
ÆÆ 
catch
ØØ 
(
ØØ $
CommunicationException
ØØ )
ex
ØØ* ,
)
ØØ, -
{
∞∞ %
ExceptionHandlerForLogs
±± '
.
±±' (
LogException
±±( 4
(
±±4 5
ex
±±5 7
,
±±7 8!
ExceptionDictionary
±±9 L
.
±±L M
FATAL_EXCEPTION
±±M \
)
±±\ ]
;
±±] ^
stpChat
≤≤ 
.
≤≤ 
Children
≤≤  
.
≤≤  !
Add
≤≤! $
(
≤≤$ %
new
≤≤% (
ChatMessageCard
≤≤) 8
(
≤≤8 9

Properties
≤≤9 C
.
≤≤C D
	Resources
≤≤D M
.
≤≤M N
txbErrorTitle
≤≤N [
,
≤≤[ \

Properties
≤≤] g
.
≤≤g h
	Resources
≤≤h q
.
≤≤q r,
txbFailToSendOrReciveAMessage≤≤r è
)≤≤è ê
)≤≤ê ë
;≤≤ë í
}
≥≥ 
catch
¥¥ 
(
¥¥ 
SocketException
¥¥ "
ex
¥¥# %
)
¥¥% &
{
µµ %
ExceptionHandlerForLogs
∂∂ '
.
∂∂' (
LogException
∂∂( 4
(
∂∂4 5
ex
∂∂5 7
,
∂∂7 8!
ExceptionDictionary
∂∂9 L
.
∂∂L M
FATAL_EXCEPTION
∂∂M \
)
∂∂\ ]
;
∂∂] ^
stpChat
∑∑ 
.
∑∑ 
Children
∑∑  
.
∑∑  !
Add
∑∑! $
(
∑∑$ %
new
∑∑% (
ChatMessageCard
∑∑) 8
(
∑∑8 9

Properties
∑∑9 C
.
∑∑C D
	Resources
∑∑D M
.
∑∑M N
txbErrorTitle
∑∑N [
,
∑∑[ \

Properties
∑∑] g
.
∑∑g h
	Resources
∑∑h q
.
∑∑q r,
txbFailToSendOrReciveAMessage∑∑r è
)∑∑è ê
)∑∑ê ë
;∑∑ë í
}
∏∏ 
}
ππ 	
private
ªª 
void
ªª 
HandleException
ªª $
(
ªª$ %
	Exception
ªª% .
ex
ªª/ 1
,
ªª1 2
string
ªª3 9
errorMessage
ªª: F
)
ªªF G
{
ºº 	%
ExceptionHandlerForLogs
ΩΩ #
.
ΩΩ# $
LogException
ΩΩ$ 0
(
ΩΩ0 1
ex
ΩΩ1 3
,
ΩΩ3 4!
ExceptionDictionary
ΩΩ5 H
.
ΩΩH I
FATAL_EXCEPTION
ΩΩI X
)
ΩΩX Y
;
ΩΩY Z
dialogMessage
ææ 
=
ææ 
new
ææ &
ErrorMessageDialogWindow
ææ  8
(
ææ8 9

Properties
ææ9 C
.
ææC D
	Resources
ææD M
.
ææM N
txbErrorTitle
ææN [
,
ææ[ \
errorMessage
ææ] i
,
ææi j
Application
ææk v
.
ææv w
Current
ææw ~
.
ææ~ 

MainWindowææ â
)ææâ ä
;ææä ã
}
øø 	
}
¡¡ 
}¬¬ Ω
tC:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameClient\ReGexs\RegularExpressionsLibrary.cs
	namespace 	
JeopardyGame
 
. 
ReGexs 
{ 
public 

class %
RegularExpressionsLibrary *
{ 
private		 
static		 
readonly		 
String		  &!
_AT_LEAST_TWO_NUMBERS		' <
=		= >
$str		? g
;		g h
private

 
static

 
readonly

 
String

  &+
_AT_LEAST_ONE_SPECIAL_CHARACTER

' F
=

G H
$str

I Z
;

Z [
private 
static 
readonly 
String  &)
_AT_LEAST_ONE_PUNTUATION_MARK' D
=E F
$strG P
;P Q
private 
static 
readonly 
string  &
_NAME_RULES_CHAR' 7
=8 9
$str: [
;[ \
private 
static 
readonly 
string  & 
_USERNAME_RULES_CHAR' ;
=< =
$str> ^
;^ _
private 
static 
readonly 
string  &
_EMAIL_RULES_CHAR' 8
=9 :
$str; z
;z {
private 
static 
readonly 
string  &
_EMAIL_ALLOW_CHAR' 8
=9 :
$str; U
;U V
public 

Dictionary 
< 
string  
,  !
string" (
>( )$
ValidationTextBoxRegexes* B
{C D
getE H
;H I
setJ M
;M N
}O P
=Q R
newS V

DictionaryW a
<a b
stringb h
,h i
stringj p
>p q
{ 	
{ 
$str $
,$ %
_NAME_RULES_CHAR& 6
}7 8
,8 9
{ 
$str (
,( ) 
_USERNAME_RULES_CHAR* >
}? @
,@ A
{ 
$str %
,% &
_EMAIL_ALLOW_CHAR' 8
}9 :
} 	
;	 

public 
String "
GetAt_LEAST_TWO_NUMBER ,
(, -
)- .
{ 	
return !
_AT_LEAST_TWO_NUMBERS (
;( )
} 	
public 
String -
!GetAt_LEAST_ONE_SPECIAL_CHARACTER 7
(7 8
)8 9
{ 	
return   +
_AT_LEAST_ONE_SPECIAL_CHARACTER   2
;  2 3
}!! 	
public## 
String## *
GetAt_LEAST_ONE_PUTUATION_MARK## 4
(##4 5
)##5 6
{$$ 	
return%% )
_AT_LEAST_ONE_PUNTUATION_MARK%% 0
;%%0 1
}&& 	
public(( 
String(( 
GetNAME_RULES_CHAR(( (
(((( )
)(() *
{)) 	
return** 
_NAME_RULES_CHAR** #
;**# $
}++ 	
public-- 
String-- "
GetUSERNAME_RULES_CHAR-- ,
(--, -
)--- .
{.. 	
return//  
_USERNAME_RULES_CHAR// '
;//' (
}00 	
public22 
String22 
GetEMAIL_RULES_CHAR22 )
(22) *
)22* +
{33 	
return44 
_EMAIL_RULES_CHAR44 $
;44$ %
}55 	
}77 
}99 åá
aC:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameClient\UserSingleton.cs
	namespace 	
JeopardyGame
 
{ 
public 

class 
UserSingleton 
:  $
ICheckUserLivingCallback! 9
{ 
private 
static 
UserSingleton $#
instanceOfUserSingleton% <
;< =
private 
static 
bool 
isActive $
=% &
false' ,
;, -
private 
static 
System 
. 
	Threading '
.' (
Timer( -
heartbeatTimer. <
;< =
public 
int 
IdUser 
{ 
get 
;  
set! $
;$ %
}& '
public 
String 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
String 
UserName 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
String 
Email 
{ 
get !
;! "
set# &
;& '
}( )
public 
String 
Password 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
int 
IdPlayer 
{ 
get !
;! "
set# &
;& '
}( )
public 
int 
GeneralPoints  
{! "
get# &
;& '
set( +
;+ ,
}- .
public   
int   
	NoReports   
{   
get   "
;  " #
set  $ '
;  ' (
}  ) *
public!! 
int!! 
IdCurrentAvatar!! "
{!!# $
get!!% (
;!!( )
set!!* -
;!!- .
}!!/ 0
public"" 
int"" 
IdState"" 
{"" 
get""  
;""  !
set""" %
;""% &
}""' (
private$$ 
UserSingleton$$ 
($$ 
)$$ 
{$$  !
}$$" #
private%% 
UserSingleton%% 
(%% 
UserPojo%% &
userSingleton%%' 4
,%%4 5

PlayerPojo%%6 @
playerSingleton%%A P
)%%P Q
{&& 	
IdUser'' 
='' 
userSingleton'' "
.''" #
IdUser''# )
;'') *
Name(( 
=(( 
userSingleton((  
.((  !
Name((! %
;((% &
UserName)) 
=)) 
userSingleton)) $
.))$ %
UserName))% -
;))- .
Email** 
=** 
userSingleton** !
.**! "
EmailAddress**" .
;**. /
Password++ 
=++ 
userSingleton++ $
.++$ %
Password++% -
;++- .
IdPlayer,, 
=,, 
playerSingleton,, &
.,,& '
IdPlayer,,' /
;,,/ 0
GeneralPoints-- 
=-- 
playerSingleton-- +
.--+ ,
GeneralPoints--, 9
;--9 :
	NoReports.. 
=.. 
playerSingleton.. '
...' (
	NoReports..( 1
;..1 2
IdCurrentAvatar// 
=// 
playerSingleton// -
.//- .
IdActualAvatar//. <
;//< =
IdState00 
=00 
playerSingleton00 %
.00% &
IdState00& -
;00- .
}11 	
public33 
static33 
UserPojo33  
GetUserPojoSingelton33 3
(333 4
)334 5
{44 	
if55 
(55 #
instanceOfUserSingleton55 &
!=55' )
null55* .
)55. /
{66 
UserPojo77 
userPOJO77 !
=77" #
new77$ '
UserPojo77( 0
(770 1
)771 2
{88 
IdUser99 
=99 #
instanceOfUserSingleton99 4
.994 5
IdUser995 ;
,99; <
Name:: 
=:: #
instanceOfUserSingleton:: 2
.::2 3
Name::3 7
,::7 8
UserName;; 
=;; #
instanceOfUserSingleton;; 6
.;;6 7
UserName;;7 ?
,;;? @
EmailAddress<<  
=<<! "#
instanceOfUserSingleton<<# :
.<<: ;
Email<<; @
,<<@ A
Password== 
=== #
instanceOfUserSingleton== 6
.==6 7
Password==7 ?
}>> 
;>> 
return?? 
userPOJO?? 
;??  
}@@ 
returnAA 
nullAA 
;AA 
}BB 	
publicDD 
staticDD 
UserSingletonDD #
GetMainUserDD$ /
(DD/ 0
)DD0 1
{EE 	
isActiveFF 
=FF 
trueFF 
;FF 
ifGG 
(GG #
instanceOfUserSingletonGG '
==GG( *
nullGG+ /
)GG/ 0
{HH #
instanceOfUserSingletonII '
=II( )
newII* -
UserSingletonII. ;
(II; <
)II< =
;II= >
BeginHeartBeatJJ 
(JJ 
)JJ  
;JJ  !
}KK 
returnLL #
instanceOfUserSingletonLL *
;LL* +
}MM 	
publicOO 
staticOO 
UserSingletonOO #
GetMainUserOO$ /
(OO/ 0
UserPojoOO0 8
userSingletonOO9 F
,OOF G

PlayerPojoOOH R
playerSingletonOOS b
)OOb c
{PP 	
isActiveQQ 
=QQ 
trueQQ 
;QQ 
ifRR 
(RR #
instanceOfUserSingletonRR '
==RR( *
nullRR+ /
)RR/ 0
{SS #
instanceOfUserSingletonTT '
=TT( )
newTT* -
UserSingletonTT. ;
(TT; <
userSingletonTT< I
,TTI J
playerSingletonTTK Z
)TTZ [
;TT[ \
BeginHeartBeatUU 
(UU 
)UU  
;UU  !
}VV 
returnWW #
instanceOfUserSingletonWW *
;WW* +
}XX 	
publicZZ 
staticZZ 
voidZZ 
CleanSingletonZZ )
(ZZ) *
)ZZ* +
{[[ 	#
instanceOfUserSingleton\\ #
=\\$ %
null\\& *
;\\* +
isActive]] 
=]] 
false]] 
;]] 
StopHeartBeat^^ 
(^^ 
)^^ 
;^^ 
}__ 	
public`` 
void`` 
UpdateNameData`` "
(``" #
string``# )
newName``* 1
)``1 2
{aa 	
thisbb 
.bb 
Namebb 
=bb 
newNamebb 
;bb  
}cc 	
publicdd 
voiddd 
UpdateAvatarDatadd $
(dd% &
intdd& )
newPhotodd* 2
)dd2 3
{ee 	
thisff 
.ff 
IdCurrentAvatarff  
=ff! "
newPhotoff# +
;ff+ ,
}gg 	
publichh 
voidhh 
UpdateEmailDatahh #
(hh# $
stringhh$ *
newEmailhh+ 3
)hh3 4
{ii 	
thisjj 
.jj 
Emailjj 
=jj 
newEmailjj !
;jj! "
}kk 	
publicmm 
boolmm 
IsClientActivemm "
(mm" #
)mm# $
{nn 	
returnoo 
isActiveoo 
;oo 
}pp 	
privaterr 
staticrr 
voidrr 
BeginHeartBeatrr *
(rr* +
)rr+ ,
{ss 	
tryuu 
{vv 
varww 
heartbeatClientww #
=ww$ %
newww& )
HeartBeatClientww* 9
(ww9 :
)ww: ;
;ww; <
heartbeatTimerxx 
=xx  
newxx! $
Systemxx% +
.xx+ ,
	Threadingxx, 5
.xx5 6
Timerxx6 ;
(xx; <
statexx< A
=>xxB D
{xxE F
tryyy 
{zz 
heartbeatClient{{ '
.{{' (
	Heartbeat{{( 1
({{1 2
){{2 3
;{{3 4
}|| 
catch}} 
(}} (
SecurityNegotiationException}} 7
ex}}8 :
)}}: ;
{~~ #
ExceptionHandlerForLogs /
./ 0
LogException0 <
(< =
ex= ?
,? @
ExceptionDictionaryA T
.T U
FATAL_EXCEPTIONU d
)d e
;e f
}
ÅÅ 
catch
ÉÉ 
(
ÉÉ *
AddressAccessDeniedException
ÉÉ 7
ex
ÉÉ8 :
)
ÉÉ: ;
{
ÑÑ %
ExceptionHandlerForLogs
ÖÖ /
.
ÖÖ/ 0
LogException
ÖÖ0 <
(
ÖÖ< =
ex
ÖÖ= ?
,
ÖÖ? @!
ExceptionDictionary
ÖÖA T
.
ÖÖT U
FATAL_EXCEPTION
ÖÖU d
)
ÖÖd e
;
ÖÖe f
}
áá 
catch
àà 
(
àà 
ProtocolException
àà ,
ex
àà- /
)
àà/ 0
{
ââ %
ExceptionHandlerForLogs
ää /
.
ää/ 0
LogException
ää0 <
(
ää< =
ex
ää= ?
,
ää? @!
ExceptionDictionary
ääA T
.
ääT U
FATAL_EXCEPTION
ääU d
)
ääd e
;
ääe f
}
åå 
catch
çç 
(
çç 
SocketException
çç *
ex
çç+ -
)
çç- .
{
éé %
ExceptionHandlerForLogs
èè /
.
èè/ 0
LogException
èè0 <
(
èè< =
ex
èè= ?
,
èè? @!
ExceptionDictionary
èèA T
.
èèT U
FATAL_EXCEPTION
èèU d
)
èèd e
;
èèe f
}
ëë 
catch
íí 
(
íí '
EndpointNotFoundException
íí 4
ex
íí5 7
)
íí7 8
{
ìì %
ExceptionHandlerForLogs
îî /
.
îî/ 0
LogException
îî0 <
(
îî< =
ex
îî= ?
,
îî? @!
ExceptionDictionary
îîA T
.
îîT U
FATAL_EXCEPTION
îîU d
)
îîd e
;
îîe f
}
ññ 
catch
óó 
(
óó 1
#CommunicationObjectFaultedException
óó >
ex
óó? A
)
óóA B
{
òò %
ExceptionHandlerForLogs
ôô /
.
ôô/ 0
LogException
ôô0 <
(
ôô< =
ex
ôô= ?
,
ôô? @!
ExceptionDictionary
ôôA T
.
ôôT U
FATAL_EXCEPTION
ôôU d
)
ôôd e
;
ôôe f
}
öö 
catch
õõ 
(
õõ 
TimeoutException
õõ +
ex
õõ, .
)
õõ. /
{
úú %
ExceptionHandlerForLogs
ùù /
.
ùù/ 0
LogException
ùù0 <
(
ùù< =
ex
ùù= ?
,
ùù? @!
ExceptionDictionary
ùùA T
.
ùùT U
FATAL_EXCEPTION
ùùU d
)
ùùd e
;
ùùe f
}
ûû 
catch
üü 
(
üü $
CommunicationException
üü 1
ex
üü2 4
)
üü4 5
{
†† %
ExceptionHandlerForLogs
°° /
.
°°/ 0
LogException
°°0 <
(
°°< =
ex
°°= ?
,
°°? @!
ExceptionDictionary
°°A T
.
°°T U
FATAL_EXCEPTION
°°U d
)
°°d e
;
°°e f
if
¢¢ 
(
¢¢ 
ex
¢¢ 
.
¢¢ 
InnerException
¢¢ -
is
¢¢. 0
SocketException
¢¢1 @
socketException
¢¢A P
)
¢¢P Q
{
££ %
ExceptionHandlerForLogs
§§ 3
.
§§3 4
LogException
§§4 @
(
§§@ A
socketException
§§A P
,
§§P Q!
ExceptionDictionary
§§R e
.
§§e f
FATAL_EXCEPTION
§§f u
)
§§u v
;
§§v w
}
•• 
}
¶¶ 
}
ßß 
,
ßß 
null
ßß 
,
ßß 
TimeSpan
ßß %
.
ßß% &
Zero
ßß& *
,
ßß* +
TimeSpan
ßß, 4
.
ßß4 5
FromSeconds
ßß5 @
(
ßß@ A
$num
ßßA C
)
ßßC D
)
ßßD E
;
ßßE F
}
®® 
catch
©© 
(
©© *
SecurityNegotiationException
©© /
ex
©©0 2
)
©©2 3
{
™™ %
ExceptionHandlerForLogs
´´ '
.
´´' (
LogException
´´( 4
(
´´4 5
ex
´´5 7
,
´´7 8!
ExceptionDictionary
´´9 L
.
´´L M
FATAL_EXCEPTION
´´M \
)
´´\ ]
;
´´] ^
}
¨¨ 
catch
≠≠ 
(
≠≠ *
AddressAccessDeniedException
≠≠ /
ex
≠≠0 2
)
≠≠2 3
{
ÆÆ %
ExceptionHandlerForLogs
ØØ '
.
ØØ' (
LogException
ØØ( 4
(
ØØ4 5
ex
ØØ5 7
,
ØØ7 8!
ExceptionDictionary
ØØ9 L
.
ØØL M
FATAL_EXCEPTION
ØØM \
)
ØØ\ ]
;
ØØ] ^
}
∞∞ 
catch
±± 
(
±± 
ProtocolException
±± $
ex
±±% '
)
±±' (
{
≤≤ %
ExceptionHandlerForLogs
≥≥ '
.
≥≥' (
LogException
≥≥( 4
(
≥≥4 5
ex
≥≥5 7
,
≥≥7 8!
ExceptionDictionary
≥≥9 L
.
≥≥L M
FATAL_EXCEPTION
≥≥M \
)
≥≥\ ]
;
≥≥] ^
}
¥¥ 
catch
µµ 
(
µµ 
SocketException
µµ "
ex
µµ# %
)
µµ% &
{
∂∂ %
ExceptionHandlerForLogs
∑∑ '
.
∑∑' (
LogException
∑∑( 4
(
∑∑4 5
ex
∑∑5 7
,
∑∑7 8!
ExceptionDictionary
∑∑9 L
.
∑∑L M
FATAL_EXCEPTION
∑∑M \
)
∑∑\ ]
;
∑∑] ^
}
∏∏ 
catch
ππ 
(
ππ '
EndpointNotFoundException
ππ ,
ex
ππ- /
)
ππ/ 0
{
∫∫ %
ExceptionHandlerForLogs
ªª '
.
ªª' (
LogException
ªª( 4
(
ªª4 5
ex
ªª5 7
,
ªª7 8!
ExceptionDictionary
ªª9 L
.
ªªL M
FATAL_EXCEPTION
ªªM \
)
ªª\ ]
;
ªª] ^
}
ºº 
catch
ΩΩ 
(
ΩΩ 1
#CommunicationObjectFaultedException
ΩΩ 6
ex
ΩΩ7 9
)
ΩΩ9 :
{
ææ %
ExceptionHandlerForLogs
øø '
.
øø' (
LogException
øø( 4
(
øø4 5
ex
øø5 7
,
øø7 8!
ExceptionDictionary
øø9 L
.
øøL M
FATAL_EXCEPTION
øøM \
)
øø\ ]
;
øø] ^
}
¿¿ 
catch
¡¡ 
(
¡¡ 
TimeoutException
¡¡ #
ex
¡¡$ &
)
¡¡& '
{
¬¬ %
ExceptionHandlerForLogs
√√ '
.
√√' (
LogException
√√( 4
(
√√4 5
ex
√√5 7
,
√√7 8!
ExceptionDictionary
√√9 L
.
√√L M
FATAL_EXCEPTION
√√M \
)
√√\ ]
;
√√] ^
}
ƒƒ 
catch
≈≈ 
(
≈≈ $
CommunicationException
≈≈ )
ex
≈≈* ,
)
≈≈, -
{
∆∆ %
ExceptionHandlerForLogs
«« '
.
««' (
LogException
««( 4
(
««4 5
ex
««5 7
,
««7 8!
ExceptionDictionary
««9 L
.
««L M
FATAL_EXCEPTION
««M \
)
««\ ]
;
««] ^
if
»» 
(
»» 
ex
»» 
.
»» 
InnerException
»» $
is
»»% '
SocketException
»»( 7
socketException
»»8 G
)
»»G H
{
…… %
ExceptionHandlerForLogs
   +
.
  + ,
LogException
  , 8
(
  8 9
socketException
  9 H
,
  H I!
ExceptionDictionary
  J ]
.
  ] ^
FATAL_EXCEPTION
  ^ m
)
  m n
;
  n o
}
ÀÀ 
}
ÃÃ 
}
ÕÕ 	
private
œœ 
static
œœ 
void
œœ 
StopHeartBeat
œœ )
(
œœ) *
)
œœ* +
{
–– 	
try
—— 
{
““ 
heartbeatTimer
”” 
?
”” 
.
””  
Change
””  &
(
””& '
Timeout
””' .
.
””. /
Infinite
””/ 7
,
””7 8
Timeout
””9 @
.
””@ A
Infinite
””A I
)
””I J
;
””J K
heartbeatTimer
‘‘ 
?
‘‘ 
.
‘‘  
Dispose
‘‘  '
(
‘‘' (
)
‘‘( )
;
‘‘) *
}
’’ 
catch
’’ 
(
’’ %
ObjectDisposedException
’’ *
ex
’’+ -
)
’’- .
{
÷÷ %
ExceptionHandlerForLogs
◊◊ '
.
◊◊' (
LogException
◊◊( 4
(
◊◊4 5
ex
◊◊5 7
,
◊◊7 8!
ExceptionDictionary
◊◊9 L
.
◊◊L M
FATAL_EXCEPTION
◊◊M \
)
◊◊\ ]
;
◊◊] ^
}
ÿÿ 
}
ŸŸ 	
}
›› 
}ﬁﬁ ß
kC:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameClient\Views\BannerWindow.xaml.cs
	namespace 	
JeopardyGame
 
. 
Views 
{ 
public 

partial 
class 
BannerWindow %
:& '
Window( .
{ 
public 
BannerWindow 
( 
) 
{ 	
InitializeComponent 
(  
)  !
;! "
} 	
} 
} ∂
pC:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameClient\Views\EnterWithGameCode.xaml.cs
	namespace 	
JeopardyGame
 
. 
Views 
{ 
public 

partial 
class 
EnterWithGameCode *
:+ ,
Window- 3
{ 
public 
EnterWithGameCode  
(  !
)! "
{ 	
InitializeComponent 
(  
)  !
;! "
} 	
} 
} §
jC:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameClient\Views\IdiomSelect.xaml.cs
	namespace 	
JeopardyGame
 
. 
Views 
{ 
public 

partial 
class 
IdiomSelect $
:% &
Window' -
{ 
public 
IdiomSelect 
( 
) 
{ 	
InitializeComponent 
(  
)  !
;! "
} 	
} 
} ›
nC:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameClient\Views\PrincipalWindow.xaml.cs
	namespace 	
JeopardyGame
 
. 
Views 
{ 
public		 

partial		 
class		 
PrincipalWindow		 (
:		) *
Window		+ 1
{

 
public 
PrincipalWindow 
( 
)  
{ 	
InitializeComponent 
(  
)  !
;! "
Loaded 
+= !
LoadedPrincipalWindow +
;+ ,
this 
. 
HorizontalAlignment $
=% &
HorizontalAlignment' :
.: ;
Center; A
;A B
this 
. 
VerticalAlignment "
=# $
VerticalAlignment% 6
.6 7
Top7 :
;: ;
} 	
private 
void !
LoadedPrincipalWindow *
(* +
object+ 1
sender2 8
,8 9
RoutedEventArgs: I
eJ K
)K L
{ 	
contentFrame 
. 
Navigate !
(! "
new" %
Pages& +
.+ ,
PrincipalPage, 9
(9 :
): ;
); <
;< =
contentFrame 
. 

Visibility #
=$ %

Visibility& 0
.0 1
Visible1 8
;8 9
} 	
public 
void 
ShowOverlayPage #
(# $
Page$ (
overlayPage) 4
)4 5
{ 	
overlayFrame 
. 
Content  
=! "
overlayPage# .
;. /
overlayFrame 
. 

Visibility #
=$ %

Visibility& 0
.0 1
Visible1 8
;8 9
} 	
}   
}!! á
pC:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameClient\Views\UserManagerWindow.xaml.cs
	namespace 	
JeopardyGame
 
. 
Views 
{ 
public 

partial 
class 
UserManagerWindow *
:+ ,
Window- 3
{		 
public

 
UserManagerWindow

  
(

  !
)

! "
{ 	
InitializeComponent 
(  
)  !
;! "
Loaded 
+= 
UserWindowLoaded &
;& '
} 	
private 
void 
UserWindowLoaded %
(% &
object& ,
sender- 3
,3 4
RoutedEventArgs5 D
eE F
)F G
{ 	
CurrentPage 
. 
Navigate  
(  !
new! $
JeopardyGame% 1
.1 2
Pages2 7
.7 8
UserRegister8 D
(D E
)E F
)F G
;G H
this 
. 
HorizontalAlignment $
=% &
HorizontalAlignment' :
.: ;
Center; A
;A B
this 
. 
VerticalAlignment "
=# $
VerticalAlignment% 6
.6 7
Top7 :
;: ;
} 	
public 
void 
CloseWindow 
(  
)  !
{ 	
this 
. 
Close 
( 
) 
; 
} 	
} 
} â
\C:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameClient\App.xaml.cs
	namespace 	
JeopardyGame
 
{ 
public 

partial 
class 
App 
: 
Application *
{ 
public 
static 
bool 
	IsEnglish $
{% &
get' *
;+ ,
set- 0
;1 2
}3 4
	protected		 
override		 
void		 
	OnStartup		  )
(		) *
StartupEventArgs		* :
e		; <
)		< =
{

 	
base 
. 
	OnStartup 
( 
e 
) 
; 
	IsEnglish 
= 
true 
; 
Views 
. 
PrincipalWindow !

mainWindow" ,
=- .
new/ 2
Views3 8
.8 9
PrincipalWindow9 H
(H I
)I J
;J K

mainWindow 
. !
WindowStartupLocation ,
=- .
System/ 5
.5 6
Windows6 =
.= >!
WindowStartupLocation> S
.S T
CenterScreenT `
;` a
this 
. 

MainWindow 
= 

mainWindow (
;( )

mainWindow 
. 
Show 
( 
) 
; 
} 	
App 
( 
) 
{ 	
System 
. 
	Threading 
. 
Thread #
.# $
CurrentThread$ 1
.1 2
CurrentUICulture2 B
=C D
newE H
SystemI O
.O P
GlobalizationP ]
.] ^
CultureInfo^ i
(i j
$strj q
)q r
;r s
} 	
public 
static 
void 
ChangeLanguage )
(* +
string+ 1
language2 :
): ;
{ 	
if 
( 
language 
. 
Equals 
(  
$str  '
)' (
)( )
{ 
	IsEnglish 
= 
true  
;  !
} 
else 
{ 
	IsEnglish   
=   
false   !
;  ! "
}!! 
System"" 
."" 
	Threading"" 
."" 
Thread"" #
.""# $
CurrentThread""$ 1
.""1 2
CurrentUICulture""2 B
=""C D
new""E H
System""I O
.""O P
Globalization""P ]
.""] ^
CultureInfo""^ i
(""i j
language""j r
)""r s
;""s t
}## 	
}%% 
}&& §
jC:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameClient\Views\UserProfile.xaml.cs
	namespace 	
JeopardyGame
 
. 
Views 
{ 
public 

partial 
class 
UserProfile $
:% &
Window' -
{ 
public 
UserProfile 
( 
) 
{ 	
InitializeComponent 
(  
)  !
;! "
} 	
} 
} ™N
qC:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameClient\Pages\ProfileDataConsult.xaml.cs
	namespace 	
JeopardyGame
 
. 
Pages 
{ 
public 

partial 
class 
ProfileDataConsult +
:, -
Page. 2
{ 
private 
Window 
dialogMessage $
;$ %
private 

Dictionary 
< 
string !
,! "
int# &
>& '
imageIdMappings( 7
;7 8
public 
ProfileDataConsult !
(! "
)" #
{ 	
InitializeComponent 
(  
)  !
;! "#
InitializeImageMappings   #
(  # $
)  $ %
;  % &

ImagenInit!! 
(!! 
)!! 
;!! 
DisplayUserInfo"" 
("" 
)"" 
;"" 
}## 	
public%% 
void%% 
DisplayUserInfo%% $
(%%$ %
)%%% &
{&& 	
UserSingleton'' 
userSingleton'' '
=''( )
UserSingleton''* 7
.''7 8
GetMainUser''8 C
(''C D
)''D E
;''E F"
lblUserNameEditAccount(( "
.((" #
Content((# *
=((+ ,
userSingleton((- :
.((: ;
UserName((; C
;((C D
lblNameEditAccount)) 
.)) 
Content)) &
=))' (
userSingleton))) 6
.))6 7
Name))7 ;
;)); < 
lblAddresEditAccount**  
.**  !
Content**! (
=**) *
userSingleton**+ 8
.**8 9
Email**9 >
;**> ?
}++ 	
private-- 
void-- $
ClickEditUserInformation-- -
(--- .
object--. 4
sender--5 ;
,--; <
System--= C
.--C D
Windows--D K
.--K L
Input--L Q
.--Q R 
MouseButtonEventArgs--R f
e--g h
)--h i
{.. 	
EditUserProfile// 
editUserProfilePage// /
=//0 1
new//2 5
EditUserProfile//6 E
(//E F
)//F G
;//G H
this00 
.00 
NavigationService00 "
.00" #
Navigate00# +
(00+ ,
editUserProfilePage00, ?
)00? @
;00@ A
NavigationService11 
.11 
RemoveBackEntry11 -
(11- .
)11. /
;11/ 0
}22 	
private44 
void44 
ClickSingOut44 !
(44! "
object44" (
sender44) /
,44/ 0
System441 7
.447 8
Windows448 ?
.44? @
Input44@ E
.44E F 
MouseButtonEventArgs44F Z
e44[ \
)44\ ]
{55 	
MainMenu66 
mainMenuPage66 !
=66" #
new66$ '
MainMenu66( 0
(660 1
)661 2
;662 3
this77 
.77 
NavigationService77 "
.77" #
Navigate77# +
(77+ ,
mainMenuPage77, 8
)778 9
;779 :
NavigationService88 
.88 
RemoveBackEntry88 -
(88- .
)88. /
;88/ 0
}99 	
private:: 
void:: #
InitializeImageMappings:: ,
(::, -
)::- .
{;; 	
imageIdMappings<< 
=<< 
new<< !

Dictionary<<" ,
<<<, -
string<<- 3
,<<3 4
int<<5 8
><<8 9
{== 
{>> 
$str>> 
,>> 
$num>> 
}>>  
,>>  !
{?? 
$str?? 
,??  
$num??! "
}??# $
,??$ %
{@@ 
$str@@ 
,@@ 
$num@@ 
}@@ 
,@@  
{AA 
$strAA 
,AA 
$numAA 
}AA 
,AA 
{BB 
$strBB 
,BB 
$numBB 
}BB 
,BB 
{CC 
$strCC 
,CC 
$numCC 
}CC  !
,CC! "
{DD 
$strDD 
,DD 
$numDD 
}DD  
}EE 
;EE 
}FF 	
privateGG 
voidGG 

ImagenInitGG 
(GG  
)GG  !
{HH 	
tryII 
{JJ 
intKK 
idPlayerKK 
=KK 
UserSingletonKK ,
.KK, -
GetMainUserKK- 8
(KK8 9
)KK9 :
.KK: ;
IdPlayerKK; C
;KKC D(
ConsultUserInformationClientLL ,#
consultInformationProxyLL- D
=LLE F
newLLG J(
ConsultUserInformationClientLLK g
(LLg h
)LLh i
;LLi j
varMM 

playerInfoMM 
=MM  #
consultInformationProxyMM! 8
.MM8 9
ConsultPlayerByIdMM9 J
(MMJ K
idPlayerMMK S
)MMS T
;MMT U#
consultInformationProxyNN '
.NN' (
CloseNN( -
(NN- .
)NN. /
;NN/ 0
ifOO 
(OO 

playerInfoOO 
!=OO !
nullOO" &
&&OO' )

playerInfoOO* 4
.OO4 5
	CodeEventOO5 >
==OO? A
ExceptionDictionaryOOB U
.OOU V
SUCCESFULL_EVENTOOV f
&&OOg i

playerInfoOOj t
.OOt u
ObjectSaved	OOu Ä
is
OOÅ É

PlayerPojo
OOÑ é
)
OOé è
{PP 
intQQ 
imageIdQQ 
=QQ  !

playerInfoQQ" ,
.QQ, -
ObjectSavedQQ- 8
.QQ8 9
IdActualAvatarQQ9 G
;QQG H
stringRR 
	imageNameRR $
=RR% &
imageIdMappingsRR' 6
.RR6 7
FirstOrDefaultRR7 E
(RRE F
xRRF G
=>RRH J
xRRK L
.RRL M
ValueRRM R
==RRS U
imageIdRRV ]
)RR] ^
.RR^ _
KeyRR_ b
;RRb c
ifSS 
(SS 
!SS 
stringSS 
.SS  
IsNullOrEmptySS  -
(SS- .
	imageNameSS. 7
)SS7 8
)SS8 9
{TT 
BitmapUU 
bmpUU "
=UU# $
(UU% &
BitmapUU& ,
)UU, -

PropertiesUU- 7
.UU7 8
ResourcesImageUU8 F
.UUF G
ResourceManagerUUG V
.UUV W
	GetObjectUUW `
(UU` a
	imageNameUUa j
)UUj k
;UUk l
BitmapSourceWW $
bmpImageWW% -
=WW. /
ImagingWW0 7
.WW7 8)
CreateBitmapSourceFromHBitmapWW8 U
(WWU V
bmpXX 
.XX  

GetHbitmapXX  *
(XX* +
)XX+ ,
,XX, -
IntPtrYY "
.YY" #
ZeroYY# '
,YY' (
	Int32RectZZ %
.ZZ% &
EmptyZZ& +
,ZZ+ ,
BitmapSizeOptions[[ -
.[[- .
FromEmptyOptions[[. >
([[> ?
)[[? @
)\\ 
;\\ 
imageProfile^^ $
.^^$ %
Source^^% +
=^^, -
bmpImage^^. 6
;^^6 7
}__ 
}aa 
}bb 
catchcc 
(cc %
EndpointNotFoundExceptioncc ,
excc- /
)cc/ 0
{dd 
HandleExceptionee 
(ee  
exee  "
,ee" #

Propertiesee$ .
.ee. /
	Resourcesee/ 8
.ee8 9
lblEndPointNotFoundee9 L
)eeL M
;eeM N
}ff 
catchgg 
(gg /
#CommunicationObjectFaultedExceptiongg 6
exgg7 9
)gg9 :
{hh 
HandleExceptionii 
(ii  
exii  "
,ii" #

Propertiesii$ .
.ii. /
	Resourcesii/ 8
.ii8 9$
lblComunicationExceptionii9 Q
)iiQ R
;iiR S
}jj 
catchkk 
(kk 
TimeoutExceptionkk #
exkk$ &
)kk& '
{ll 
HandleExceptionmm 
(mm  
exmm  "
,mm" #

Propertiesmm$ .
.mm. /
	Resourcesmm/ 8
.mm8 9
lblTimeExceptionmm9 I
)mmI J
;mmJ K
}nn 
catchoo 
(oo "
CommunicationExceptionoo )
exoo* ,
)oo, -
{pp 
HandleExceptionqq 
(qq  
exqq  "
,qq" #

Propertiesqq$ .
.qq. /
	Resourcesqq/ 8
.qq8 9
lblWithoutConectionqq9 L
)qqL M
;qqM N
}rr 
catchss 
(ss 
SocketExceptionss "
exss# %
)ss% &
{tt 
HandleExceptionuu 
(uu  
exuu  "
,uu" #

Propertiesuu$ .
.uu. /
	Resourcesuu/ 8
.uu8 9
GenericEmailIssueuu9 J
)uuJ K
;uuK L
}vv 
}ww 	
privatexx 
voidxx 
HandleExceptionxx $
(xx$ %
	Exceptionxx% .
exxx/ 1
,xx1 2
stringxx3 9
errorMessagexx: F
)xxF G
{yy 	#
ExceptionHandlerForLogszz #
.zz# $
LogExceptionzz$ 0
(zz0 1
exzz1 3
,zz3 4
ExceptionDictionaryzz5 H
.zzH I
FATAL_EXCEPTIONzzI X
)zzX Y
;zzY Z
dialogMessage{{ 
={{ 
new{{ $
ErrorMessageDialogWindow{{  8
({{8 9

Properties{{9 C
.{{C D
	Resources{{D M
.{{M N
txbErrorTitle{{N [
,{{[ \
errorMessage{{] i
,{{i j
Application{{k v
.{{v w
Current{{w ~
.{{~ 

MainWindow	{{ â
)
{{â ä
;
{{ä ã
}|| 	
}}} 
}~~ ˝ﬂ
kC:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameClient\Pages\UserRegister.xaml.cs
	namespace 	
JeopardyGame
 
. 
Pages 
{ 
public 

partial 
class 
UserRegister %
:& '
Page( ,
{ 
private 
List 
< 
Label 
> 
ListBoxRules (
=) *
new+ .
List/ 3
<3 4
Label4 9
>9 :
(: ;
); <
;< =
private 
const 
int 
DISALLOWED_VALUES +
=, -
$num. /
;/ 0
private 
const 
int 
ALLOWED_VALUES (
=) *
$num+ ,
;, -
private 
const 
int #
MINIMUN_PASSWORD_LENGTH 1
=2 3
$num4 6
;6 7
private 
const 
int #
MAXIMUM_PASSWORD_LENGTH 1
=2 3
$num4 6
;6 7
private   
Window   
dialogMessage   $
;  $ %
public## 
UserRegister## 
(## 
)## 
{$$ 	
InitializeComponent%% 
(%%  
)%%  !
;%%! "
PrepareWindow&& 
(&& 
)&& 
;&&  
txbNameCreateAccount''  
.''  !
	MaxLength''! *
=''+ ,
$num''- /
;''/ 0$
txbUserNameCreateAccount(( $
.(($ %
	MaxLength((% .
=((/ 0
$num((1 3
;((3 4!
txbEmailCreateAccount)) !
.))! "
	MaxLength))" +
=)), -
$num)). 0
;))0 1$
psbPasswordCreateAccount** $
.**$ %
	MaxLength**% .
=**/ 0
$num**1 3
;**3 4
}++ 	
public-- 
void-- 

LoadFields-- 
(-- 
UserPojo-- '
user--( ,
)--, -
{.. 	
ListBoxRules// 
.// 
Clear// 
(// 
)//  
;//  !
PrepareWindow00 
(00 
)00 
;00  
txbNameCreateAccount11  
.11  !
Text11! %
=11& '
user11( ,
.11, -
Name11- 1
;111 2$
txbUserNameCreateAccount22 $
.22$ %
Text22% )
=22* +
user22, 0
.220 1
UserName221 9
;229 :!
txbEmailCreateAccount33 !
.33! "
Text33" &
=33' (
user33) -
.33- .
EmailAddress33. :
;33: ;$
psbPasswordCreateAccount44 $
.44$ %
Password44% -
=44. /
user440 4
.444 5
Password445 =
;44= >
}55 	
private77 
void77 
PrepareWindow77 "
(77" #
)77# $
{88 	
InitializeListeners99 
(99  
)99  !
;99! "
CreateRuleLabels:: 
(:: 
):: 
;:: 
foreach;; 
(;; 
var;; 
rule;; 
in;;  
ListBoxRules;;! -
);;- .
{<< 
lsbPasswordRules==  
.==  !
Items==! &
.==& '
Add==' *
(==* +
rule==+ /
)==/ 0
;==0 1
}>> 
}?? 	
privateAA 
voidAA 
InitializeListenersAA (
(AA( )
)AA) *
{BB 	$
psbPasswordCreateAccountCC $
.CC$ %
PasswordChangedCC% 4
+=CC5 7
EntryPasswordCharCC8 I
;CCI J$
psbPasswordCreateAccountDD $
.DD$ %
PreviewKeyDownDD% 3
+=DD4 6
EntryTextBoxPasteDD7 H
;DDH I 
txbNameCreateAccountFF  
.FF  !
PreviewTextInputFF! 1
+=FF2 4&
EntryTextBoxCharValidationFF5 O
;FFO P$
txbUserNameCreateAccountGG $
.GG$ %
PreviewTextInputGG% 5
+=GG6 8&
EntryTextBoxCharValidationGG9 S
;GGS T 
txbNameCreateAccountII  
.II  !
PreviewKeyDownII! /
+=II0 2
EntryTextBoxPasteII3 D
;IID E$
txbUserNameCreateAccountJJ $
.JJ$ %
PreviewKeyDownJJ% 3
+=JJ4 6
EntryTextBoxPasteJJ7 H
;JJH I!
txbEmailCreateAccountKK !
.KK! "
PreviewTextInputKK" 2
+=KK3 5&
EntryTextBoxCharValidationKK6 P
;KKP Q!
txbEmailCreateAccountLL !
.LL! "
PreviewKeyDownLL" 0
+=LL1 3
EntryTextBoxPasteLL4 E
;LLE F
}MM 	
privateOO 
voidOO 
EntryPasswordCharOO &
(OO& '
objectOO' -
senderOO. 4
,OO4 5
RoutedEventArgsOO6 E
eOOF G
)OOG H
{PP 	
intQQ (
changeButtonStateForPasswordQQ ,
=QQ- .
CheckPasswordQQ/ <
(QQ< =
)QQ= >
;QQ> ?
ifRR 
(RR (
changeButtonStateForPasswordRR ,
==RR- /
ALLOWED_VALUESRR0 >
)RR> ?
{SS 
bttSaveUserTT 
.TT 
	IsEnabledTT %
=TT& '
trueTT( ,
;TT, -
}UU 
elseVV 
{WW 
bttSaveUserXX 
.XX 
	IsEnabledXX %
=XX& '
falseXX( -
;XX- .
}YY 
}ZZ 	
private\\ 
void\\ &
EntryTextBoxCharValidation\\ /
(\\/ 0
object\\0 6
sender\\7 =
,\\= >$
TextCompositionEventArgs\\? W
e\\X Y
)\\Y Z
{]] 	
TextBox^^ 
currentTextBox^^ "
=^^# $
sender^^% +
as^^, .
TextBox^^/ 6
;^^6 7%
RegularExpressionsLibrary__ %%
regularExpressionsLibrary__& ?
=__@ A
new__B E%
RegularExpressionsLibrary__F _
(___ `
)__` a
;__a b
try`` 
{aa 
ifbb 
(bb 
(bb %
regularExpressionsLibrarybb .
.bb. /$
ValidationTextBoxRegexesbb/ G
.bbG H
TryGetValuebbH S
(bbS T
currentTextBoxbbT b
.bbb c
Namebbc g
,bbg h
outbbi l
stringbbm s
regexbbt y
)bby z
)bbz {
&&cc 
!cc 
Regexcc 
.cc 
IsMatchcc  
(cc  !
(cc! "
currentTextBoxcc" 0
.cc0 1
Textcc1 5
+cc6 7
ecc8 9
.cc9 :
Textcc: >
)cc> ?
,cc? @
regexccA F
,ccF G
RegexOptionsccH T
.ccT U

IgnoreCaseccU _
,cc_ `
TimeSpancca i
.cci j
FromMillisecondsccj z
(ccz {
$numcc{ ~
)cc~ 
)	cc Ä
)
ccÄ Å
{dd 
eee 
.ee 
Handledee 
=ee 
trueee  $
;ee$ %
}ff 
}gg 
catchhh 
(hh &
RegexMatchTimeoutExceptionhh -
exhh. 0
)hh0 1
{ii #
ExceptionHandlerForLogsjj '
.jj' (
LogExceptionjj( 4
(jj4 5
exjj5 7
,jj7 8
ExceptionDictionaryjj9 L
.jjL M
ERRORjjM R
)jjR S
;jjS T
ekk 
.kk 
Handledkk 
=kk 
truekk  
;kk  !
}ll 
catchmm 
(mm !
ArgumentNullExceptionmm (
exmm) +
)mm+ ,
{nn #
ExceptionHandlerForLogsoo '
.oo' (
LogExceptionoo( 4
(oo4 5
exoo5 7
,oo7 8
ExceptionDictionaryoo9 L
.ooL M
ERRORooM R
)ooR S
;ooS T
epp 
.pp 
Handledpp 
=pp 
truepp  
;pp  !
}qq 
}rr 	
privatett 
voidtt 
EntryTextBoxPastett &
(tt& '
objecttt' -
sendertt. 4
,tt4 5
KeyEventArgstt6 B
ettC D
)ttD E
{uu 	
ifvv 
(vv 
(vv 
Keyboardvv 
.vv 
	Modifiersvv #
&vv$ %
ModifierKeysvv& 2
.vv2 3
Controlvv3 :
)vv: ;
==vv< >
ModifierKeysvv? K
.vvK L
ControlvvL S
&&vvT V
(vvW X
evvX Y
.vvY Z
KeyvvZ ]
==vv^ `
Keyvva d
.vvd e
Vvve f
)vvf g
)vvg h
{ww 
exx 
.xx 
Handledxx 
=xx 
truexx  $
;xx$ %
}yy 
}zz 	
private|| 
void|| 
CreateRuleLabels|| %
(||% &
)||& '
{}} 	
Label~~ 
PasswordLengthRule~~ $
=~~% &
new~~' *
Label~~+ 0
(~~0 1
)~~1 2
;~~2 3
PasswordLengthRule 
. 
Content &
=' (

Properties) 3
.3 4
	Resources4 =
.= >!
lblPassLengthRuleDesc> S
;S T 
PasswordLengthRule
ÄÄ 
.
ÄÄ 

Foreground
ÄÄ )
=
ÄÄ* +
Brushes
ÄÄ, 3
.
ÄÄ3 4
White
ÄÄ4 9
;
ÄÄ9 : 
PasswordLengthRule
ÅÅ 
.
ÅÅ 
FontSize
ÅÅ '
=
ÅÅ( )
$num
ÅÅ* ,
;
ÅÅ, -
Label
ÇÇ !
PasswordNumbersRule
ÇÇ %
=
ÇÇ& '
new
ÇÇ( +
Label
ÇÇ, 1
(
ÇÇ1 2
)
ÇÇ2 3
;
ÇÇ3 4!
PasswordNumbersRule
ÉÉ 
.
ÉÉ  
Content
ÉÉ  '
=
ÉÉ( )

Properties
ÉÉ* 4
.
ÉÉ4 5
	Resources
ÉÉ5 >
.
ÉÉ> ?#
lblPassNumberRuleDesc
ÉÉ? T
;
ÉÉT U!
PasswordNumbersRule
ÑÑ 
.
ÑÑ  

Foreground
ÑÑ  *
=
ÑÑ+ ,
Brushes
ÑÑ- 4
.
ÑÑ4 5
White
ÑÑ5 :
;
ÑÑ: ;!
PasswordNumbersRule
ÖÖ 
.
ÖÖ  
FontSize
ÖÖ  (
=
ÖÖ) *
$num
ÖÖ+ -
;
ÖÖ- .
Label
ÜÜ "
PasswordCapitalsRule
ÜÜ &
=
ÜÜ' (
new
ÜÜ) ,
Label
ÜÜ- 2
(
ÜÜ2 3
)
ÜÜ3 4
;
ÜÜ4 5"
PasswordCapitalsRule
áá  
.
áá  !
Content
áá! (
=
áá) *

Properties
áá+ 5
.
áá5 6
	Resources
áá6 ?
.
áá? @$
lblPassCapitalRuleDesc
áá@ V
;
ááV W"
PasswordCapitalsRule
àà  
.
àà  !

Foreground
àà! +
=
àà, -
Brushes
àà. 5
.
àà5 6
White
àà6 ;
;
àà; <"
PasswordCapitalsRule
ââ  
.
ââ  !
FontSize
ââ! )
=
ââ* +
$num
ââ, .
;
ââ. /
Label
ää !
PasswordSpeCharRule
ää %
=
ää& '
new
ää( +
Label
ää, 1
(
ää1 2
)
ää2 3
;
ää3 4!
PasswordSpeCharRule
ãã 
.
ãã  
Content
ãã  '
=
ãã( )

Properties
ãã* 4
.
ãã4 5
	Resources
ãã5 >
.
ãã> ?$
lblPassSpeCharRuleDesc
ãã? U
;
ããU V!
PasswordSpeCharRule
åå 
.
åå  

Foreground
åå  *
=
åå+ ,
Brushes
åå- 4
.
åå4 5
White
åå5 :
;
åå: ;!
PasswordSpeCharRule
çç 
.
çç  
FontSize
çç  (
=
çç) *
$num
çç+ -
;
çç- .
Label
éé %
PasswordPunctuationRule
éé )
=
éé* +
new
éé, /
Label
éé0 5
(
éé5 6
)
éé6 7
;
éé7 8%
PasswordPunctuationRule
èè #
.
èè# $
Content
èè$ +
=
èè, -

Properties
èè/ 9
.
èè9 :
	Resources
èè: C
.
èèC D$
lblPassPuntSigRuleDesc
èèD Z
;
èèZ [%
PasswordPunctuationRule
êê #
.
êê# $

Foreground
êê$ .
=
êê/ 0
Brushes
êê1 8
.
êê8 9
White
êê9 >
;
êê> ?%
PasswordPunctuationRule
ëë #
.
ëë# $
FontSize
ëë$ ,
=
ëë- .
$num
ëë/ 1
;
ëë1 2
Label
íí #
PasswordSameEmailRule
íí '
=
íí( )
new
íí* -
Label
íí. 3
(
íí3 4
)
íí4 5
;
íí5 6#
PasswordSameEmailRule
ìì !
.
ìì! "
Content
ìì" )
=
ìì* +

Properties
ìì, 6
.
ìì6 7
	Resources
ìì7 @
.
ìì@ A(
lblPassEqualsEmailRuleDesc
ììA [
;
ìì[ \#
PasswordSameEmailRule
îî !
.
îî! "

Foreground
îî" ,
=
îî- .
Brushes
îî/ 6
.
îî6 7
White
îî7 <
;
îî< =#
PasswordSameEmailRule
ïï !
.
ïï! "
FontSize
ïï" *
=
ïï+ ,
$num
ïï- /
;
ïï/ 0
ListBoxRules
ññ 
.
ññ 
Add
ññ 
(
ññ  
PasswordLengthRule
ññ /
)
ññ/ 0
;
ññ0 1
ListBoxRules
óó 
.
óó 
Add
óó 
(
óó !
PasswordNumbersRule
óó 0
)
óó0 1
;
óó1 2
ListBoxRules
òò 
.
òò 
Add
òò 
(
òò "
PasswordCapitalsRule
òò 1
)
òò1 2
;
òò2 3
ListBoxRules
ôô 
.
ôô 
Add
ôô 
(
ôô !
PasswordSpeCharRule
ôô 0
)
ôô0 1
;
ôô1 2
ListBoxRules
öö 
.
öö 
Add
öö 
(
öö %
PasswordPunctuationRule
öö 4
)
öö4 5
;
öö5 6
ListBoxRules
õõ 
.
õõ 
Add
õõ 
(
õõ #
PasswordSameEmailRule
õõ 2
)
õõ2 3
;
õõ3 4
}
úú 	
private
üü 
void
üü !
ClickButtonSaveUser
üü (
(
üü( )
object
üü) /
sender
üü0 6
,
üü6 7
RoutedEventArgs
üü8 G
e
üüH I
)
üüI J
{
†† 	
UserPojo
°° 

userToSave
°° 
=
°°  !
new
°°" %
UserPojo
°°& .
(
°°. /
)
°°/ 0
;
°°0 1

userToSave
¢¢ 
.
¢¢ 
Name
¢¢ 
=
¢¢ "
txbNameCreateAccount
¢¢ 2
.
¢¢2 3
Text
¢¢3 7
.
¢¢7 8
Trim
¢¢8 <
(
¢¢< =
)
¢¢= >
;
¢¢> ?

userToSave
££ 
.
££ 
UserName
££ 
=
££  !&
txbUserNameCreateAccount
££" :
.
££: ;
Text
££; ?
.
££? @
Trim
££@ D
(
££D E
)
££E F
;
££F G

userToSave
§§ 
.
§§ 
EmailAddress
§§ #
=
§§$ %#
txbEmailCreateAccount
§§& ;
.
§§; <
Text
§§< @
.
§§@ A
Trim
§§A E
(
§§E F
)
§§F G
;
§§G H

userToSave
•• 
.
•• 
Password
•• 
=
••  !&
psbPasswordCreateAccount
••" :
.
••: ;
Password
••; C
.
••C D
Trim
••D H
(
••H I
)
••I J
;
••J K
if
¶¶ 
(
¶¶ 
CheckEmptyFields
¶¶  
(
¶¶  !
)
¶¶! "
==
¶¶# %
ALLOWED_VALUES
¶¶& 4
&&
¶¶5 7%
CheckEmailAddressFormat
ßß '
(
ßß' (
)
ßß( )
==
ßß* ,
ALLOWED_VALUES
ßß- ;
&&
ßß< >,
CheckUserNameAndEmailExistence
®® .
(
®®. /

userToSave
®®/ 9
)
®®9 :
==
®®; =
ALLOWED_VALUES
®®> L
)
®®L M
{
©© (
GoToCodeConfirmationWindow
™™ *
(
™™* +

userToSave
™™+ 5
)
™™5 6
;
™™6 7
}
´´ 
}
¨¨ 	
private
ÆÆ 
int
ÆÆ 
CheckEmptyFields
ÆÆ $
(
ÆÆ$ %
)
ÆÆ% &
{
ØØ 	
int
∞∞ 
answer
∞∞ 
=
∞∞ 
ALLOWED_VALUES
∞∞ '
;
∞∞' (
if
±± 
(
±± 
string
±± 
.
±± 
IsNullOrEmpty
±± $
(
±±$ %"
txbNameCreateAccount
±±% 9
.
±±9 :
Text
±±: >
.
±±> ?
Trim
±±? C
(
±±C D
)
±±D E
)
±±E F
)
±±F G
{
≤≤ 
lblNameWarning
≥≥ 
.
≥≥ 

Visibility
≥≥ )
=
≥≥* +

Visibility
≥≥, 6
.
≥≥6 7
Visible
≥≥7 >
;
≥≥> ?
answer
¥¥ 
=
¥¥ 
DISALLOWED_VALUES
¥¥ *
;
¥¥* +
}
µµ 
else
∂∂ 
{
∑∑ 
lblNameWarning
∏∏ 
.
∏∏ 

Visibility
∏∏ )
=
∏∏* +

Visibility
∏∏, 6
.
∏∏6 7
	Collapsed
∏∏7 @
;
∏∏@ A
}
ππ 
if
∫∫ 
(
∫∫ 
string
∫∫ 
.
∫∫ 
IsNullOrEmpty
∫∫ $
(
∫∫$ %&
txbUserNameCreateAccount
∫∫% =
.
∫∫= >
Text
∫∫> B
.
∫∫B C
Trim
∫∫C G
(
∫∫G H
)
∫∫H I
)
∫∫I J
)
∫∫J K
{
ªª  
lblUserNameWarning
ºº "
.
ºº" #

Visibility
ºº# -
=
ºº. /

Visibility
ºº0 :
.
ºº: ;
Visible
ºº; B
;
ººB C
answer
ΩΩ 
=
ΩΩ 
DISALLOWED_VALUES
ΩΩ *
;
ΩΩ* +
}
ææ 
else
øø 
{
¿¿  
lblUserNameWarning
¡¡ "
.
¡¡" #

Visibility
¡¡# -
=
¡¡. /

Visibility
¡¡0 :
.
¡¡: ;
	Collapsed
¡¡; D
;
¡¡D E
}
¬¬ 
if
√√ 
(
√√ 
string
√√ 
.
√√ 
IsNullOrEmpty
√√ $
(
√√$ %#
txbEmailCreateAccount
√√% :
.
√√: ;
Text
√√; ?
.
√√? @
Trim
√√@ D
(
√√D E
)
√√E F
)
√√F G
)
√√G H
{
ƒƒ 
lblEmailWarning
≈≈ 
.
≈≈  
Content
≈≈  '
=
≈≈( )

Properties
≈≈* 4
.
≈≈4 5
	Resources
≈≈5 >
.
≈≈> ?
lblEmptyField
≈≈? L
;
≈≈L M
lblEmailWarning
∆∆ 
.
∆∆  

Visibility
∆∆  *
=
∆∆+ ,

Visibility
∆∆- 7
.
∆∆7 8
Visible
∆∆8 ?
;
∆∆? @
answer
«« 
=
«« 
DISALLOWED_VALUES
«« *
;
««* +
}
»» 
else
…… 
{
   
lblEmailWarning
ÀÀ 
.
ÀÀ  
Content
ÀÀ  '
=
ÀÀ( )
string
ÀÀ* 0
.
ÀÀ0 1
Empty
ÀÀ1 6
;
ÀÀ6 7
lblEmailWarning
ÃÃ 
.
ÃÃ  

Visibility
ÃÃ  *
=
ÃÃ+ ,

Visibility
ÃÃ- 7
.
ÃÃ7 8
	Collapsed
ÃÃ8 A
;
ÃÃA B
}
ÕÕ 
if
ŒŒ 
(
ŒŒ 
string
ŒŒ 
.
ŒŒ 
IsNullOrEmpty
ŒŒ $
(
ŒŒ$ %&
psbPasswordCreateAccount
ŒŒ% =
.
ŒŒ= >
Password
ŒŒ> F
.
ŒŒF G
Trim
ŒŒG K
(
ŒŒK L
)
ŒŒL M
)
ŒŒM N
)
ŒŒN O
{
œœ  
lblPasswordWarning
–– "
.
––" #

Visibility
––# -
=
––. /

Visibility
––0 :
.
––: ;
Visible
––; B
;
––B C
answer
—— 
=
—— 
DISALLOWED_VALUES
—— *
;
——* +
}
““ 
else
”” 
{
‘‘  
lblPasswordWarning
’’ "
.
’’" #

Visibility
’’# -
=
’’. /

Visibility
’’0 :
.
’’: ;
	Collapsed
’’; D
;
’’D E
}
÷÷ 
return
◊◊ 
answer
◊◊ 
;
◊◊ 
}
ÿÿ 	
private
⁄⁄ 
int
⁄⁄ %
CheckEmailAddressFormat
⁄⁄ +
(
⁄⁄+ ,
)
⁄⁄, -
{
€€ 	'
RegularExpressionsLibrary
‹‹ %
regexInstance
‹‹& 3
=
‹‹4 5
new
‹‹6 9'
RegularExpressionsLibrary
‹‹: S
(
‹‹S T
)
‹‹T U
;
‹‹U V
Regex
›› 
regexExpression
›› !
=
››" #
new
››$ '
Regex
››( -
(
››- .
regexInstance
››. ;
.
››; <!
GetEMAIL_RULES_CHAR
››< O
(
››O P
)
››P Q
)
››Q R
;
››R S
int
ﬁﬁ 
answer
ﬁﬁ 
;
ﬁﬁ 
String
ﬂﬂ 
email
ﬂﬂ 
=
ﬂﬂ #
txbEmailCreateAccount
ﬂﬂ 0
.
ﬂﬂ0 1
Text
ﬂﬂ1 5
.
ﬂﬂ5 6
Trim
ﬂﬂ6 :
(
ﬂﬂ: ;
)
ﬂﬂ; <
;
ﬂﬂ< =
if
‡‡ 
(
‡‡ 
!
‡‡ 
regexExpression
‡‡  
.
‡‡  !
IsMatch
‡‡! (
(
‡‡( )
email
‡‡) .
)
‡‡. /
)
‡‡/ 0
{
·· 
lblEmailWarning
‚‚ 
.
‚‚  
Content
‚‚  '
=
‚‚( )

Properties
‚‚* 4
.
‚‚4 5
	Resources
‚‚5 >
.
‚‚> ?
lblInvalidEmail
‚‚? N
;
‚‚N O
lblEmailWarning
„„ 
.
„„  

Visibility
„„  *
=
„„+ ,

Visibility
„„- 7
.
„„7 8
Visible
„„8 ?
;
„„? @
answer
‰‰ 
=
‰‰ 
DISALLOWED_VALUES
‰‰ *
;
‰‰* +
}
ÂÂ 
else
ÊÊ 
{
ÁÁ 
lblEmailWarning
ËË 
.
ËË  
Content
ËË  '
=
ËË( )
string
ËË* 0
.
ËË0 1
Empty
ËË1 6
;
ËË6 7
lblEmailWarning
ÈÈ 
.
ÈÈ  

Visibility
ÈÈ  *
=
ÈÈ+ ,

Visibility
ÈÈ- 7
.
ÈÈ7 8
	Collapsed
ÈÈ8 A
;
ÈÈA B
answer
ÍÍ 
=
ÍÍ 
CheckPassword
ÍÍ &
(
ÍÍ& '
)
ÍÍ' (
;
ÍÍ( )
}
ÎÎ 
return
ÏÏ 
answer
ÏÏ 
;
ÏÏ 
}
ÌÌ 	
private
ÔÔ 
int
ÔÔ 
CheckPassword
ÔÔ !
(
ÔÔ! "
)
ÔÔ" #
{
 	
int
ÒÒ 
answer
ÒÒ 
=
ÒÒ 
ALLOWED_VALUES
ÒÒ '
;
ÒÒ' (
try
ÚÚ 
{
ÛÛ '
RegularExpressionsLibrary
ÙÙ )
regexInstance
ÙÙ* 7
=
ÙÙ8 9
new
ÙÙ: ='
RegularExpressionsLibrary
ÙÙ> W
(
ÙÙW X
)
ÙÙX Y
;
ÙÙY Z
string
ıı 
regexExpression
ıı &
;
ıı& '
String
ˆˆ 
passwordChecked
ˆˆ &
=
ˆˆ' (&
psbPasswordCreateAccount
ˆˆ) A
.
ˆˆA B
Password
ˆˆB J
.
ˆˆJ K
ToString
ˆˆK S
(
ˆˆS T
)
ˆˆT U
.
ˆˆU V
Trim
ˆˆV Z
(
ˆˆZ [
)
ˆˆ[ \
;
ˆˆ\ ]
if
˜˜ 
(
˜˜ 
passwordChecked
˜˜ #
.
˜˜# $
Length
˜˜$ *
<
˜˜+ ,%
MINIMUN_PASSWORD_LENGTH
˜˜- D
||
˜˜E G
passwordChecked
˜˜H W
.
˜˜W X
Length
˜˜X ^
>
˜˜_ `%
MAXIMUM_PASSWORD_LENGTH
˜˜a x
)
˜˜x y
{
¯¯ !
HighLightBrokenRule
˘˘ '
(
˘˘' (
ListBoxRules
˘˘( 4
[
˘˘4 5
$num
˘˘5 6
]
˘˘6 7
)
˘˘7 8
;
˘˘8 9
answer
˙˙ 
=
˙˙ 
DISALLOWED_VALUES
˙˙ .
;
˙˙. /
}
˚˚ 
else
¸¸ 
{
˝˝ 
ClearBrokenRule
˛˛ #
(
˛˛# $
ListBoxRules
˛˛$ 0
[
˛˛0 1
$num
˛˛1 2
]
˛˛2 3
)
˛˛3 4
;
˛˛4 5
}
ˇˇ 
regexExpression
ÄÄ 
=
ÄÄ  !
regexInstance
ÄÄ" /
.
ÄÄ/ 0$
GetAt_LEAST_TWO_NUMBER
ÄÄ0 F
(
ÄÄF G
)
ÄÄG H
;
ÄÄH I
if
ÅÅ 
(
ÅÅ 
!
ÅÅ 
Regex
ÅÅ 
.
ÅÅ 
IsMatch
ÅÅ "
(
ÅÅ" #
passwordChecked
ÅÅ# 2
,
ÅÅ2 3
regexExpression
ÅÅ4 C
,
ÅÅC D
RegexOptions
ÅÅE Q
.
ÅÅQ R

IgnoreCase
ÅÅR \
,
ÅÅ\ ]
TimeSpan
ÅÅ^ f
.
ÅÅf g
FromMilliseconds
ÅÅg w
(
ÅÅw x
$num
ÅÅx {
)
ÅÅ{ |
)
ÅÅ| }
)
ÅÅ} ~
{
ÇÇ !
HighLightBrokenRule
ÉÉ '
(
ÉÉ' (
ListBoxRules
ÉÉ( 4
[
ÉÉ4 5
$num
ÉÉ5 6
]
ÉÉ6 7
)
ÉÉ7 8
;
ÉÉ8 9
answer
ÑÑ 
=
ÑÑ 
DISALLOWED_VALUES
ÑÑ .
;
ÑÑ. /
}
ÖÖ 
else
ÜÜ 
{
áá 
ClearBrokenRule
àà #
(
àà# $
ListBoxRules
àà$ 0
[
àà0 1
$num
àà1 2
]
àà2 3
)
àà3 4
;
àà4 5
}
ââ 
if
ää 
(
ää 
!
ää !
GetSpecificResource
ää (
.
ää( )3
%HasAtLeastTwoSeparateUppercaseLetters
ää) N
(
ääN O
passwordChecked
ääO ^
)
ää^ _
)
ää_ `
{
ãã !
HighLightBrokenRule
åå '
(
åå' (
ListBoxRules
åå( 4
[
åå4 5
$num
åå5 6
]
åå6 7
)
åå7 8
;
åå8 9
answer
çç 
=
çç 
DISALLOWED_VALUES
çç .
;
çç. /
}
éé 
else
èè 
{
êê 
ClearBrokenRule
ëë #
(
ëë# $
ListBoxRules
ëë$ 0
[
ëë0 1
$num
ëë1 2
]
ëë2 3
)
ëë3 4
;
ëë4 5
}
íí 
regexExpression
ìì 
=
ìì  !
regexInstance
ìì" /
.
ìì/ 0/
!GetAt_LEAST_ONE_SPECIAL_CHARACTER
ìì0 Q
(
ììQ R
)
ììR S
;
ììS T
if
îî 
(
îî 
!
îî 
Regex
îî 
.
îî 
IsMatch
îî "
(
îî" #
passwordChecked
îî# 2
,
îî2 3
regexExpression
îî4 C
,
îîC D
RegexOptions
îîE Q
.
îîQ R

IgnoreCase
îîR \
,
îî\ ]
TimeSpan
îî^ f
.
îîf g
FromMilliseconds
îîg w
(
îîw x
$num
îîx {
)
îî{ |
)
îî| }
)
îî} ~
{
ïï !
HighLightBrokenRule
ññ '
(
ññ' (
ListBoxRules
ññ( 4
[
ññ4 5
$num
ññ5 6
]
ññ6 7
)
ññ7 8
;
ññ8 9
answer
óó 
=
óó 
DISALLOWED_VALUES
óó .
;
óó. /
}
òò 
else
ôô 
{
öö 
ClearBrokenRule
õõ #
(
õõ# $
ListBoxRules
õõ$ 0
[
õõ0 1
$num
õõ1 2
]
õõ2 3
)
õõ3 4
;
õõ4 5
}
úú 
regexExpression
ùù 
=
ùù  !
regexInstance
ùù" /
.
ùù/ 0,
GetAt_LEAST_ONE_PUTUATION_MARK
ùù0 N
(
ùùN O
)
ùùO P
;
ùùP Q
if
ûû 
(
ûû 
!
ûû 
Regex
ûû 
.
ûû 
IsMatch
ûû "
(
ûû" #
passwordChecked
ûû# 2
,
ûû2 3
regexExpression
ûû4 C
,
ûûC D
RegexOptions
ûûE Q
.
ûûQ R

IgnoreCase
ûûR \
,
ûû\ ]
TimeSpan
ûû^ f
.
ûûf g
FromMilliseconds
ûûg w
(
ûûw x
$num
ûûx {
)
ûû{ |
)
ûû| }
)
ûû} ~
{
üü !
HighLightBrokenRule
†† '
(
††' (
ListBoxRules
††( 4
[
††4 5
$num
††5 6
]
††6 7
)
††7 8
;
††8 9
answer
°° 
=
°° 
DISALLOWED_VALUES
°° .
;
°°. /
}
¢¢ 
else
££ 
{
§§ 
ClearBrokenRule
•• #
(
••# $
ListBoxRules
••$ 0
[
••0 1
$num
••1 2
]
••2 3
)
••3 4
;
••4 5
}
¶¶ 
int
ßß 
arrobaIndex
ßß 
=
ßß  !
(
ßß" ##
txbEmailCreateAccount
ßß# 8
.
ßß8 9
Text
ßß9 =
.
ßß= >
IndexOf
ßß> E
(
ßßE F
$char
ßßF I
)
ßßI J
!=
ßßK M
-
ßßN O
$num
ßßO P
)
ßßP Q
?
ßßR S#
txbEmailCreateAccount
ßßT i
.
ßßi j
Text
ßßj n
.
ßßn o
IndexOf
ßßo v
(
ßßv w
$char
ßßw z
)
ßßz {
:
ßß| }
$num
ßß~ 
;ßß Ä
if
®® 
(
®® #
txbEmailCreateAccount
®® )
.
®®) *
Text
®®* .
.
®®. /
Trim
®®/ 3
(
®®3 4
)
®®4 5
.
®®5 6
	Substring
®®6 ?
(
®®? @
$num
®®@ A
,
®®A B
arrobaIndex
®®C N
)
®®N O
.
®®O P
Equals
®®P V
(
®®V W
passwordChecked
®®W f
)
®®f g
)
®®g h
{
©© !
HighLightBrokenRule
™™ '
(
™™' (
ListBoxRules
™™( 4
[
™™4 5
$num
™™5 6
]
™™6 7
)
™™7 8
;
™™8 9
answer
´´ 
=
´´ 
DISALLOWED_VALUES
´´ .
;
´´. /
}
¨¨ 
else
≠≠ 
{
ÆÆ 
ClearBrokenRule
ØØ #
(
ØØ# $
ListBoxRules
ØØ$ 0
[
ØØ0 1
$num
ØØ1 2
]
ØØ2 3
)
ØØ3 4
;
ØØ4 5
}
∞∞ 
}
±± 
catch
≤≤ 
(
≤≤ (
RegexMatchTimeoutException
≤≤ -
ex
≤≤. 0
)
≤≤0 1
{
≥≥ %
ExceptionHandlerForLogs
¥¥ '
.
¥¥' (
LogException
¥¥( 4
(
¥¥4 5
ex
¥¥5 7
,
¥¥7 8!
ExceptionDictionary
¥¥9 L
.
¥¥L M
ERROR
¥¥M R
)
¥¥R S
;
¥¥S T
answer
µµ 
=
µµ 
DISALLOWED_VALUES
µµ *
;
µµ* +
}
∂∂ 
catch
∑∑ 
(
∑∑ #
ArgumentNullException
∑∑ (
ex
∑∑) +
)
∑∑+ ,
{
∏∏ %
ExceptionHandlerForLogs
ππ '
.
ππ' (
LogException
ππ( 4
(
ππ4 5
ex
ππ5 7
,
ππ7 8!
ExceptionDictionary
ππ9 L
.
ππL M
ERROR
ππM R
)
ππR S
;
ππS T
answer
∫∫ 
=
∫∫ 
DISALLOWED_VALUES
∫∫ *
;
∫∫* +
}
ªª 
return
ºº 
answer
ºº 
;
ºº 
}
ΩΩ 	
private
øø 
int
øø ,
CheckUserNameAndEmailExistence
øø 2
(
øø2 3
UserPojo
øø3 ;
userToVerify
øø< H
)
øøH I
{
¿¿ 	
try
¡¡ 
{
¬¬ )
ValidateUserExistanceClient
√√ +
dataCheckerProxy
√√, <
=
√√= >
new
√√? B
(
√√C D
)
√√D E
;
√√E F
GenericClassOfint
ƒƒ !
	userIsNew
ƒƒ" +
=
ƒƒ, -
dataCheckerProxy
ƒƒ. >
.
ƒƒ> ?
UserAlreadyExist
ƒƒ? O
(
ƒƒO P
userToVerify
ƒƒP \
)
ƒƒ\ ]
;
ƒƒ] ^
dataCheckerProxy
≈≈  
.
≈≈  !
Close
≈≈! &
(
≈≈& '
)
≈≈' (
;
≈≈( )
if
∆∆ 
(
∆∆ 
	userIsNew
∆∆ 
.
∆∆ 
	CodeEvent
∆∆ '
==
∆∆( *!
ExceptionDictionary
∆∆+ >
.
∆∆> ?
SUCCESFULL_EVENT
∆∆? O
||
∆∆P R
	userIsNew
∆∆S \
.
∆∆\ ]
	CodeEvent
∆∆] f
==
∆∆g i!
ExceptionDictionary
∆∆j }
.
∆∆} ~!
UNSUCCESFULL_EVENT∆∆~ ê
)∆∆ê ë
{
«« 
if
»» 
(
»» 
	userIsNew
»» !
.
»»! "
ObjectSaved
»»" -
==
»». 0
ALLOWED_VALUES
»»1 ?
)
»»? @
{
…… 
return
   
ALLOWED_VALUES
   -
;
  - .
}
ÀÀ 
else
ÃÃ 
{
ÕÕ %
ShowSpecificUserMessage
ŒŒ /
(
ŒŒ/ 0
	userIsNew
ŒŒ0 9
.
ŒŒ9 :
ObjectSaved
ŒŒ: E
)
ŒŒE F
;
ŒŒF G
return
œœ 
DISALLOWED_VALUES
œœ 0
;
œœ0 1
}
–– 
}
—— 
else
““ 
{
”” 
dialogMessage
‘‘ !
=
‘‘" #
new
‘‘$ '&
ErrorMessageDialogWindow
‘‘( @
(
‘‘@ A

Properties
‘‘A K
.
‘‘K L
	Resources
‘‘L U
.
‘‘U V
txbErrorTitle
‘‘V c
,
‘‘c d

Properties
‘‘e o
.
‘‘o p
	Resources
‘‘p y
.
‘‘y z"
MessageSQLException‘‘z ç
,‘‘ç é
Application‘‘è ö
.‘‘ö õ
Current‘‘õ ¢
.‘‘¢ £

MainWindow‘‘£ ≠
)‘‘≠ Æ
;‘‘Æ Ø
return
’’ 
DISALLOWED_VALUES
’’ ,
;
’’, -
}
÷÷ 
}
◊◊ 
catch
ÿÿ 
(
ÿÿ '
EndpointNotFoundException
ÿÿ ,
ex
ÿÿ- /
)
ÿÿ/ 0
{
ŸŸ 
HandleException
⁄⁄ 
(
⁄⁄  
ex
⁄⁄  "
,
⁄⁄" #

Properties
⁄⁄$ .
.
⁄⁄. /
	Resources
⁄⁄/ 8
.
⁄⁄8 9!
lblEndPointNotFound
⁄⁄9 L
)
⁄⁄L M
;
⁄⁄M N
}
‹‹ 
catch
›› 
(
›› 1
#CommunicationObjectFaultedException
›› 6
ex
››7 9
)
››9 :
{
ﬁﬁ 
HandleException
ﬂﬂ 
(
ﬂﬂ  
ex
ﬂﬂ  "
,
ﬂﬂ" #

Properties
ﬂﬂ$ .
.
ﬂﬂ. /
	Resources
ﬂﬂ/ 8
.
ﬂﬂ8 9&
lblComunicationException
ﬂﬂ9 Q
)
ﬂﬂQ R
;
ﬂﬂR S
}
‡‡ 
catch
·· 
(
·· 
TimeoutException
·· #
ex
··$ &
)
··& '
{
‚‚ 
HandleException
„„ 
(
„„  
ex
„„  "
,
„„" #

Properties
„„$ .
.
„„. /
	Resources
„„/ 8
.
„„8 9
lblTimeException
„„9 I
)
„„I J
;
„„J K
}
‰‰ 
catch
ÂÂ 
(
ÂÂ $
CommunicationException
ÂÂ )
ex
ÂÂ* ,
)
ÂÂ, -
{
ÊÊ 
HandleException
ÁÁ 
(
ÁÁ  
ex
ÁÁ  "
,
ÁÁ" #

Properties
ÁÁ$ .
.
ÁÁ. /
	Resources
ÁÁ/ 8
.
ÁÁ8 9!
lblWithoutConection
ÁÁ9 L
)
ÁÁL M
;
ÁÁM N
}
ËË 
catch
ÈÈ 
(
ÈÈ 
SocketException
ÈÈ "
ex
ÈÈ# %
)
ÈÈ% &
{
ÍÍ 
HandleException
ÎÎ 
(
ÎÎ  
ex
ÎÎ  "
,
ÎÎ" #

Properties
ÎÎ$ .
.
ÎÎ. /
	Resources
ÎÎ/ 8
.
ÎÎ8 9!
lblEndPointNotFound
ÎÎ9 L
)
ÎÎL M
;
ÎÎM N
}
ÏÏ 
return
ÌÌ 
DISALLOWED_VALUES
ÌÌ $
;
ÌÌ$ %
}
ÓÓ 	
private
 
void
 %
ShowSpecificUserMessage
 ,
(
, -
int
- 0
unsucces
1 9
)
9 :
{
ÒÒ 	
if
ÚÚ 
(
ÚÚ 
unsucces
ÚÚ 
==
ÚÚ !
ExceptionDictionary
ÚÚ /
.
ÚÚ/ 0!
EMAIL_ALREADY_EXIST
ÚÚ0 C
)
ÚÚC D
{
ÛÛ 
dialogMessage
ÙÙ 
=
ÙÙ 
new
ÙÙ  #&
ErrorMessageDialogWindow
ÙÙ$ <
(
ÙÙ< =

Properties
ÙÙ= G
.
ÙÙG H
	Resources
ÙÙH Q
.
ÙÙQ R
txbErrorTitle
ÙÙR _
,
ÙÙ_ `

Properties
ÙÙa k
.
ÙÙk l
	Resources
ÙÙl u
.
ÙÙu v
lblRepeatedEmailÙÙv Ü
,ÙÙÜ á
ApplicationÙÙà ì
.ÙÙì î
CurrentÙÙî õ
.ÙÙõ ú

MainWindowÙÙú ¶
)ÙÙ¶ ß
;ÙÙß ®
}
ıı 
else
ˆˆ 
if
ˆˆ 
(
ˆˆ 
unsucces
ˆˆ 
==
ˆˆ  !
ExceptionDictionary
ˆˆ! 4
.
ˆˆ4 5$
USERNAME_ALREADY_EXIST
ˆˆ5 K
)
ˆˆK L
{
˜˜ 
dialogMessage
¯¯ 
=
¯¯ 
new
¯¯  #&
ErrorMessageDialogWindow
¯¯$ <
(
¯¯< =

Properties
¯¯= G
.
¯¯G H
	Resources
¯¯H Q
.
¯¯Q R
txbErrorTitle
¯¯R _
,
¯¯_ `

Properties
¯¯a k
.
¯¯k l
	Resources
¯¯l u
.
¯¯u v"
lblRepeatedUserName¯¯v â
,¯¯â ä
Application¯¯ã ñ
.¯¯ñ ó
Current¯¯ó û
.¯¯û ü

MainWindow¯¯ü ©
)¯¯© ™
;¯¯™ ´
}
˘˘ 
else
˙˙ 
{
˚˚ 
dialogMessage
¸¸ 
=
¸¸ 
new
¸¸  #&
ErrorMessageDialogWindow
¸¸$ <
(
¸¸< =

Properties
¸¸= G
.
¸¸G H
	Resources
¸¸H Q
.
¸¸Q R
txbErrorTitle
¸¸R _
,
¸¸_ `

Properties
¸¸a k
.
¸¸k l
	Resources
¸¸l u
.
¸¸u v$
lblFailToRegisterUser¸¸v ã
,¸¸ã å
Application¸¸ç ò
.¸¸ò ô
Current¸¸ô †
.¸¸† °

MainWindow¸¸° ´
)¸¸´ ¨
;¸¸¨ ≠
}
˝˝ 
}
˛˛ 	
private
ÄÄ 
void
ÄÄ !
HighLightBrokenRule
ÄÄ (
(
ÄÄ( )
Label
ÄÄ) .
missingRule
ÄÄ/ :
)
ÄÄ: ;
{
ÅÅ 	
missingRule
ÇÇ 
.
ÇÇ 

Foreground
ÇÇ "
=
ÇÇ# $
Brushes
ÇÇ% ,
.
ÇÇ, -
Red
ÇÇ- 0
;
ÇÇ0 1
}
ÉÉ 	
private
ÑÑ 
void
ÑÑ 
ClearBrokenRule
ÑÑ $
(
ÑÑ$ %
Label
ÑÑ% *
missingRule
ÑÑ+ 6
)
ÑÑ6 7
{
ÖÖ 	
missingRule
ÜÜ 
.
ÜÜ 

Foreground
ÜÜ "
=
ÜÜ# $
Brushes
ÜÜ% ,
.
ÜÜ, -
White
ÜÜ- 2
;
ÜÜ2 3
}
áá 	
private
ââ 
void
ââ $
ClickViewPasswordRules
ââ +
(
ââ+ ,
object
ââ, 2
sender
ââ3 9
,
ââ9 :"
MouseButtonEventArgs
ââ; O
e
ââP Q
)
ââQ R
{
ää 	
brdPasswordRules
ãã 
.
ãã 

Visibility
ãã '
=
ãã( )

Visibility
ãã* 4
.
ãã4 5
Visible
ãã5 <
;
ãã< ="
imgViewPasswordRules
åå  
.
åå  !

Visibility
åå! +
=
åå, -

Visibility
åå. 8
.
åå8 9
Hidden
åå9 ?
;
åå? @
}
éé 	
private
èè 
void
èè %
ClickClosePasswordRules
èè ,
(
èè, -
object
èè- 3
sender
èè4 :
,
èè: ;"
MouseButtonEventArgs
èè< P
e
èèQ R
)
èèR S
{
êê 	
brdPasswordRules
ëë 
.
ëë 

Visibility
ëë '
=
ëë( )

Visibility
ëë* 4
.
ëë4 5
Hidden
ëë5 ;
;
ëë; <"
imgViewPasswordRules
íí  
.
íí  !

Visibility
íí! +
=
íí, -

Visibility
íí. 8
.
íí8 9
Visible
íí9 @
;
íí@ A
}
ìì 	
private
ïï 
void
ïï 
ClickSeePassword
ïï %
(
ïï% &
object
ïï& ,
sender
ïï- 3
,
ïï3 4"
MouseButtonEventArgs
ïï5 I
e
ïïJ K
)
ïïK L
{
ññ 	
lblViewPassword
óó 
.
óó 
Content
óó #
=
óó$ %&
psbPasswordCreateAccount
óó& >
.
óó> ?
Password
óó? G
.
óóG H
ToString
óóH P
(
óóP Q
)
óóQ R
;
óóR S&
psbPasswordCreateAccount
òò $
.
òò$ %

Visibility
òò% /
=
òò0 1

Visibility
òò2 <
.
òò< =
	Collapsed
òò= F
;
òòF G
lblViewPassword
ôô 
.
ôô 

Visibility
ôô &
=
ôô' (

Visibility
ôô) 3
.
ôô3 4
Visible
ôô4 ;
;
ôô; <
}
öö 	
private
úú 
void
úú #
OverLeaveHidePassword
úú *
(
úú* +
object
úú+ 1
sender
úú2 8
,
úú8 9
MouseEventArgs
úú: H
e
úúI J
)
úúJ K
{
ùù 	
if
ûû 
(
ûû 
lblViewPassword
ûû 
.
ûû  
	IsVisible
ûû  )
)
ûû) *
{
üü &
psbPasswordCreateAccount
†† (
.
††( )

Visibility
††) 3
=
††4 5

Visibility
††6 @
.
††@ A
Visible
††A H
;
††H I&
psbPasswordCreateAccount
°° (
.
°°( )
PasswordChar
°°) 5
=
°°6 7
$char
°°8 ;
;
°°; <&
psbPasswordCreateAccount
¢¢ (
.
¢¢( )
Password
¢¢) 1
=
¢¢2 3
(
¢¢4 5
string
¢¢5 ;
)
¢¢; <
lblViewPassword
¢¢< K
.
¢¢K L
Content
¢¢L S
;
¢¢S T
lblViewPassword
££ 
.
££  

Visibility
££  *
=
££+ ,

Visibility
££- 7
.
££7 8
	Collapsed
££8 A
;
££A B
}
§§ 
}
•• 	
private
ßß 
void
ßß %
ClickButtonCancelSaving
ßß ,
(
ßß, -
object
ßß- 3
sender
ßß4 :
,
ßß: ;
RoutedEventArgs
ßß< K
e
ßßL M
)
ßßM N
{
®® 	
if
©© 
(
©© 
new
©© &
ConfirmationDialogWindow
©© +
(
©©+ ,

Properties
©©, 6
.
©©6 7
	Resources
©©7 @
.
©©@ A
txbWarningTitle
©©A P
,
©©P Q

Properties
©©R \
.
©©\ ]
	Resources
©©] f
.
©©f g,
txbConfirmationCancelSaveUser©©g Ñ
,©©Ñ Ö
Application©©Ü ë
.©©ë í
Current©©í ô
.©©ô ö

MainWindow©©ö §
)©©§ •
.©©• ¶
CloseWindow©©¶ ±
)©©± ≤
{
™™ 
GoToLogInWindow
´´ 
(
´´  
)
´´  !
;
´´! "
}
¨¨ 
}
≠≠ 	
private
ØØ 
void
ØØ 
GoToLogInWindow
ØØ $
(
ØØ$ %
)
ØØ% &
{
∞∞ 	
	LogInUser
±± 
	logInPage
±± 
=
±±  !
new
±±" %
	LogInUser
±±& /
(
±±/ 0
)
±±0 1
;
±±1 2
this
≤≤ 
.
≤≤ 
NavigationService
≤≤ "
.
≤≤" #
Navigate
≤≤# +
(
≤≤+ ,
	logInPage
≤≤, 5
)
≤≤5 6
;
≤≤6 7
NavigationService
≥≥ 
.
≥≥ 
RemoveBackEntry
≥≥ -
(
≥≥- .
)
≥≥. /
;
≥≥/ 0
}
¥¥ 	
private
∂∂ 
void
∂∂ (
GoToCodeConfirmationWindow
∂∂ /
(
∂∂/ 0
UserPojo
∂∂0 8

userToSave
∂∂9 C
)
∂∂C D
{
∑∑ 	
CodeConfirmation
∏∏ 
codeConfirmation
∏∏ -
=
∏∏. /
new
∏∏0 3
CodeConfirmation
∏∏4 D
(
∏∏D E

userToSave
∏∏F P
)
∏∏P Q
;
∏∏Q R
this
ππ 
.
ππ 
NavigationService
ππ "
.
ππ" #
Navigate
ππ# +
(
ππ+ ,
codeConfirmation
ππ, <
)
ππ< =
;
ππ= >
NavigationService
∫∫ 
.
∫∫ 
RemoveBackEntry
∫∫ -
(
∫∫- .
)
∫∫. /
;
∫∫/ 0
}
ªª 	
private
ΩΩ 
void
ΩΩ 
HandleException
ΩΩ $
(
ΩΩ$ %
	Exception
ΩΩ% .
ex
ΩΩ/ 1
,
ΩΩ1 2
string
ΩΩ3 9
errorMessage
ΩΩ: F
)
ΩΩF G
{
ææ 	%
ExceptionHandlerForLogs
øø #
.
øø# $
LogException
øø$ 0
(
øø0 1
ex
øø1 3
,
øø3 4!
ExceptionDictionary
øø5 H
.
øøH I
FATAL_EXCEPTION
øøI X
)
øøX Y
;
øøY Z
dialogMessage
¿¿ 
=
¿¿ 
new
¿¿ &
ErrorMessageDialogWindow
¿¿  8
(
¿¿8 9

Properties
¿¿9 C
.
¿¿C D
	Resources
¿¿D M
.
¿¿M N
txbErrorTitle
¿¿N [
,
¿¿[ \
errorMessage
¿¿] i
,
¿¿i j
Application
¿¿k v
.
¿¿v w
Current
¿¿w ~
.
¿¿~ 

MainWindow¿¿ â
)¿¿â ä
;¿¿ä ã
}
¡¡ 	
}
√√ 
}ƒƒ ≤
kC:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameClient\Properties\AssemblyInfo.cs
[ 
assembly 	
:	 

AssemblyTitle 
( 
$str '
)' (
]( )
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
$str )
)) *
]* +
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
[   
assembly   	
:  	 

	ThemeInfo   
(   &
ResourceDictionaryLocation!! 
.!! 
None!! #
,!!# $&
ResourceDictionaryLocation$$ 
.$$ 
SourceAssembly$$ -
)'' 
]'' 
[44 
assembly44 	
:44	 

AssemblyVersion44 
(44 
$str44 $
)44$ %
]44% &
[55 
assembly55 	
:55	 

AssemblyFileVersion55 
(55 
$str55 (
)55( )
]55) *