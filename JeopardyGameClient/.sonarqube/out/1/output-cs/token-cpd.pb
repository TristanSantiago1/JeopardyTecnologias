§u
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
private $
PlayerInGameDataContract (!
playerOfCardNumberOne) >
;> ?
private $
PlayerInGameDataContract (!
playerOfCardNumberTwo) >
;> ?
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
}îî ”
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
{ 
private 
bool 
closeWindow  
;  !
public 
bool 
CloseWindow 
{  !
get" %
=>& (
closeWindow) 4
;4 5
set6 9
=>: <
closeWindow= H
=I J
valueK P
;P Q
}R S
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
}II Ó
vC:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameClient\Exceptions\ExceptionHandlerForLogs.cs
	namespace 	
JeopardyGame
 
. 

Exceptions !
{		 
internal

 
class

 #
ExceptionHandlerForLogs

 *
{ 
public 
static 
void 
LogException '
(' (
	Exception( 1
	exception2 ;
,; <
String= C
categoryD L
)L M
{ 	
string 

logMessage 
= 
$"  "
$str" #
{# $
DateTime$ ,
., -
Now- 0
}0 1
$str1 9
{9 :
category: B
}B C
$strC Q
{Q R
	exceptionR [
.[ \
Message\ c
}c d
$strd s
{s t
	exceptiont }
.} ~

StackTrace	~ à
}
à â
$str
â ã
"
ã å
;
å ç
SeriLogClient 
	logConfig #
=$ %
new& )
SeriLogClient* 7
(7 8
)8 9
;9 :
try 
{ 
File 
. 
AppendAllText "
(" #
	logConfig# ,
., -
getPath- 4
(4 5
)5 6
,6 7

logMessage8 B
)B C
;C D
} 
catch 
( 
IOException 
) 
{ 
} 
} 	
} 
} †.
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
(% &
$str& <
)< =
)= >
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
ManagementBaseObject44 -
drive44. 3
in444 6
drives447 =
)44= >
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
(== %
EndpointNotFoundException== ,
ex==- /
)==/ 0
{>> #
ExceptionHandlerForLogs?? '
.??' (
LogException??( 4
(??4 5
ex??5 7
,??7 8
ExceptionDictionary??9 L
.??L M
FATAL_EXCEPTION??M \
)??\ ]
;??] ^
ConfigureLogger@@ 
(@@  

Properties@@  *
.@@* +
ExceptionsPaths@@+ :
.@@: ;
logFileName@@; F
)@@F G
;@@G H
}AA 
catchBB 
(BB /
#CommunicationObjectFaultedExceptionBB 6
exBB7 9
)BB9 :
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
(GG 
TimeoutExceptionGG #
exGG$ &
)GG& '
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
}KK 
returnLL 
GuidLL 
.LL 
NewGuidLL 
(LL  
)LL  !
.LL! "
ToStringLL" *
(LL* +
)LL+ ,
;LL, -
}MM 	
}PP 
}QQ Û
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
}}} •»
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
private 
int 
idUser 
; 
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
private 
FriendManager 
friendManager +
;+ ,
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
}‹‹ Ï#
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

partial 
class 

FriendList #
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
}!! ‡X
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
private $
PlayerInGameDataContract (
playerOfCard) 5
;5 6
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
}ÇÇ Ù
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
private #
QuestionCardInformation '#
questionCardInformation( ?
;? @
private 
	GameBoard 
board 
;  
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
}11 ∑4
oC:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameClient\Helpers\GetSpecificResource.cs
	namespace 	
JeopardyGame
 
. 
Helpers 
{ 
public 

static 
class 
GetSpecificResource +
{ 
public 
static 
string 
GetHosImage (
(( )
int) ,
idHost- 3
)3 4
{ 	
return 
idHost 
switch  
{ 
$num 
=> 
App 
. 
Current  
.  !
	Resources! *
[* +
$str+ 6
]6 7
.7 8
ToString8 @
(@ A
)A B
,B C
$num 
=> 
App 
. 
Current  
.  !
	Resources! *
[* +
$str+ 4
]4 5
.5 6
ToString6 >
(> ?
)? @
,@ A
$num 
=> 
App 
. 
Current  
.  !
	Resources! *
[* +
$str+ 5
]5 6
.6 7
ToString7 ?
(? @
)@ A
,A B
_ 
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
} 
; 
} 	
public 
static 
string 
GetAvatarImage +
(+ ,
int, /
idAvatar0 8
)8 9
{ 	
return 
idAvatar 
switch "
{ 
$num   
=>   
App   
.   
Current    
.    !
	Resources  ! *
[  * +
$str  + ;
]  ; <
.  < =
ToString  = E
(  E F
)  F G
,  G H
$num!! 
=>!! 
App!! 
.!! 
Current!!  
.!!  !
	Resources!!! *
[!!* +
$str!!+ 6
]!!6 7
.!!7 8
ToString!!8 @
(!!@ A
)!!A B
,!!B C
$num"" 
=>"" 
App"" 
."" 
Current""  
.""  !
	Resources""! *
[""* +
$str""+ 9
]""9 :
."": ;
ToString""; C
(""C D
)""D E
,""E F
$num## 
=>## 
App## 
.## 
Current##  
.##  !
	Resources##! *
[##* +
$str##+ 8
]##8 9
.##9 :
ToString##: B
(##B C
)##C D
,##D E
$num$$ 
=>$$ 
App$$ 
.$$ 
Current$$  
.$$  !
	Resources$$! *
[$$* +
$str$$+ :
]$$: ;
.$$; <
ToString$$< D
($$D E
)$$E F
,$$F G
$num%% 
=>%% 
App%% 
.%% 
Current%%  
.%%  !
	Resources%%! *
[%%* +
$str%%+ 9
]%%9 :
.%%: ;
ToString%%; C
(%%C D
)%%D E
,%%E F
$num&& 
=>&& 
App&& 
.&& 
Current&&  
.&&  !
	Resources&&! *
[&&* +
$str&&+ <
]&&< =
.&&= >
ToString&&> F
(&&F G
)&&G H
,&&H I
_'' 
=>'' 
App'' 
.'' 
Current''  
.''  !
	Resources''! *
[''* +
$str''+ 6
]''6 7
.''7 8
ToString''8 @
(''@ A
)''A B
,''B C
}(( 
;(( 
})) 	
public-- 
static-- 
int-- 

GetGuestId-- $
(--$ %
)--% &
{.. 	
Random// 
generateAleatory// #
=//$ %
new//& )
Random//* 0
(//0 1
)//1 2
;//2 3
return00 
generateAleatory00 #
.00# $
Next00$ (
(00( )
$num00) /
,00/ 0
$num001 8
)008 9
;009 :
}11 	
public33 
static33 
string33 *
GetEnglishOrSpanishDescription33 ;
(33; <
string33< B
englisDescription33C T
,33T U
string33V \
spanishDescription33] o
)33o p
{44 	
if55 
(55 
spanishDescription55 "
is55# %
null55& *
)55* +
{66 
return77 
englisDescription77 (
;77( )
}88 
if99 
(99 
englisDescription99 !
is99" $
null99% )
)99) *
{:: 
return;; 
spanishDescription;; )
;;;) *
}<< 
bool== 
	isEnglish== 
=== 
App==  
.==  !
	IsEnglish==! *
;==* +
if>> 
(>> 
	isEnglish>> 
)>> 
{?? 
return@@ 
englisDescription@@ (
;@@( )
}AA 
elseBB 
{CC 
returnDD 
spanishDescriptionDD )
;DD) *
}EE 
}FF 	
}HH 
publicLL 

staticLL 
classLL 0
$GetParentOfGraphicInterfaceComponentLL <
{MM 
publicNN 
staticNN 
TNN 

FindParentNN "
<NN" #
TNN# $
>NN$ %
(NN% &
DependencyObjectNN& 6
childNN7 <
)NN< =
whereNN> C
TNND E
:NNF G
DependencyObjectNNH X
{OO 	
DependencyObjectPP 
parentPP #
=PP$ %
VisualTreeHelperPP& 6
.PP6 7
	GetParentPP7 @
(PP@ A
childPPA F
)PPF G
;PPG H
whileQQ 
(QQ 
parentQQ 
!=QQ 
nullQQ !
&&QQ" $
!QQ% &
(QQ& '
parentQQ' -
isQQ. 0
TQQ1 2
)QQ2 3
)QQ3 4
{RR 
parentSS 
=SS 
VisualTreeHelperSS )
.SS) *
	GetParentSS* 3
(SS3 4
parentSS4 :
)SS: ;
;SS; <
}TT 
returnUU 
(UU 
TUU 
)UU 
parentUU 
;UU 
}VV 	
}XX 
}ZZ ⁄í
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
.oo 
CloseFriendListoo %
(oo% &
)oo& '
;oo' (
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
…… 	'
RegularExpressionsLibrary
   %
regexInstance
  & 3
=
  4 5
new
  6 9'
RegularExpressionsLibrary
  : S
(
  S T
)
  T U
;
  U V
Regex
ÀÀ 
regexExpression
ÀÀ !
=
ÀÀ" #
new
ÀÀ$ '
Regex
ÀÀ( -
(
ÀÀ- .
regexInstance
ÀÀ. ;
.
ÀÀ; <!
GetEMAIL_RULES_CHAR
ÀÀ< O
(
ÀÀO P
)
ÀÀP Q
)
ÀÀQ R
;
ÀÀR S
return
ÃÃ 
regexExpression
ÃÃ "
.
ÃÃ" #
IsMatch
ÃÃ# *
(
ÃÃ* +
email
ÃÃ+ 0
)
ÃÃ0 1
;
ÃÃ1 2
}
ÕÕ 	
private
ŒŒ 
int
ŒŒ !
CheckEmailExistence
ŒŒ '
(
ŒŒ' (
string
ŒŒ( .
email
ŒŒ/ 4
)
ŒŒ4 5
{
œœ 	
try
–– 
{
—— )
ValidateUserExistanceClient
““ +
dataCheckerProxy
““, <
=
““= >
new
““? B
(
““B C
)
““C D
;
““D E
GenericClassOfint
”” !
	userIsNew
””" +
=
””, -
dataCheckerProxy
””. >
.
””> ?
EmailAlreadyExist
””? P
(
””P Q
email
””Q V
)
””V W
;
””W X
dataCheckerProxy
‘‘  
.
‘‘  !
Close
‘‘! &
(
‘‘& '
)
‘‘' (
;
‘‘( )
if
’’ 
(
’’ 
	userIsNew
’’ 
.
’’ 
	CodeEvent
’’ '
==
’’( *!
ExceptionDictionary
’’+ >
.
’’> ?
SUCCESFULL_EVENT
’’? O
||
’’P R
	userIsNew
’’S \
.
’’\ ]
	CodeEvent
’’] f
==
’’g i!
ExceptionDictionary
’’j }
.
’’} ~!
UNSUCCESFULL_EVENT’’~ ê
)’’ê ë
{
÷÷ 
if
◊◊ 
(
◊◊ 
	userIsNew
◊◊ !
.
◊◊! "
ObjectSaved
◊◊" -
==
◊◊. 0
ALLOWED_VALUES
◊◊1 ?
)
◊◊? @
{
ÿÿ 
return
ŸŸ 
ALLOWED_VALUES
ŸŸ -
;
ŸŸ- .
}
⁄⁄ 
else
€€ 
{
‹‹ 
return
›› 
DISALLOWED_VALUES
›› 0
;
››0 1
}
ﬁﬁ 
}
ﬂﬂ 
else
‡‡ 
{
·· 
return
‚‚ 
DISALLOWED_VALUES
‚‚ ,
;
‚‚, -
}
„„ 
}
‰‰ 
catch
ÂÂ 
(
ÂÂ '
EndpointNotFoundException
ÂÂ ,
)
ÂÂ, -
{
ÊÊ 
throw
ÁÁ 
new
ÁÁ '
EndpointNotFoundException
ÁÁ 3
(
ÁÁ3 4
)
ÁÁ4 5
;
ÁÁ5 6
}
ËË 
catch
ÈÈ 
(
ÈÈ 1
#CommunicationObjectFaultedException
ÈÈ 6
)
ÈÈ6 7
{
ÍÍ 
throw
ÎÎ 
new
ÎÎ $
CommunicationException
ÎÎ 0
(
ÎÎ0 1
)
ÎÎ1 2
;
ÎÎ2 3
}
ÏÏ 
catch
ÌÌ 
(
ÌÌ 
TimeoutException
ÌÌ #
)
ÌÌ# $
{
ÓÓ 
throw
ÔÔ 
new
ÔÔ 
TimeoutException
ÔÔ *
(
ÔÔ* +
)
ÔÔ+ ,
;
ÔÔ, -
}
 
catch
ÒÒ 
(
ÒÒ $
CommunicationException
ÒÒ )
)
ÒÒ) *
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
SocketException
ıı "
ex
ıı# %
)
ıı% &
{
ˆˆ 
throw
˜˜ 
new
˜˜ 
SocketException
˜˜ )
(
˜˜) *
)
˜˜* +
;
˜˜+ ,
}
¯¯ 
}
˘˘ 	
}
˚˚ 
}˝˝ õ‘
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
{BB 
newCC $
ErrorMessageDialogWindowCC 0
(CC0 1

PropertiesCC1 ;
.CC; <
	ResourcesCC< E
.CCE F
txbErrorTitleCCF S
,CCS T

PropertiesCCU _
.CC_ `
	ResourcesCC` i
.CCi j&
lblFailRegistryToCallBack	CCj É
,
CCÉ Ñ
Application
CCÑ è
.
CCè ê
Current
CCê ó
.
CCó ò

MainWindow
CCò ¢
)
CC¢ £
;
CC£ §#
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
®® 
InstanceContext
™™ 
instanceContext
™™  /
=
™™0 1
new
™™2 5
InstanceContext
™™6 E
(
™™E F
this
™™F J
)
™™J K
;
™™K L#
CheckUserLivingClient
´´ %#
checkUserLivingClient
´´& ;
=
´´< =
new
´´> A
(
´´A B
instanceContext
´´B Q
)
´´Q R
;
´´R S
var
¨¨ 
success
¨¨ 
=
¨¨ #
checkUserLivingClient
¨¨ 3
.
¨¨3 4!
RenewLivingCallBack
¨¨4 G
(
¨¨G H

userToSave
¨¨H R
)
¨¨R S
;
¨¨S T)
UserCreateAccountCodeClient
ÆÆ +
userCreateAccount
ÆÆ, =
=
ÆÆ> ?
new
ÆÆ@ C
(
ÆÆC D
)
ÆÆD E
;
ÆÆE F
if
ØØ 
(
ØØ 
userCreateAccount
ØØ %
.
ØØ% &
CheckCodeEntered
ØØ& 6
(
ØØ6 7

userToSave
ØØ7 A
,
ØØA B
txbCodeCreateAcc
ØØC S
.
ØØS T
Text
ØØT X
.
ØØX Y
ToString
ØØY a
(
ØØa b
)
ØØb c
.
ØØc d
Trim
ØØd h
(
ØØh i
)
ØØi j
)
ØØj k
==
ØØl n"
ExceptionDictionaryØØo Ç
.ØØÇ É 
SUCCESFULL_EVENTØØÉ ì
)ØØì î
{
∞∞ "
PrepareUserToBeSaved
±± (
(
±±( )
)
±±) *
;
±±* +
UserManagerClient
≤≤ %
userManagerProxy
≤≤& 6
=
≤≤7 8
new
≤≤9 <
UserManagerClient
≤≤= N
(
≤≤N O
)
≤≤O P
;
≤≤P Q
GenericClassOfint
≥≥ %
	userSaved
≥≥& /
=
≥≥0 1
userManagerProxy
≥≥2 B
.
≥≥B C
SaveUser
≥≥C K
(
≥≥K L

userToSave
≥≥L V
,
≥≥V W
txbCodeCreateAcc
≥≥X h
.
≥≥h i
Text
≥≥i m
.
≥≥m n
ToString
≥≥n v
(
≥≥v w
)
≥≥w x
.
≥≥x y
Trim
≥≥y }
(
≥≥} ~
)
≥≥~ 
)≥≥ Ä
;≥≥Ä Å
if
¥¥ 
(
¥¥ 
	userSaved
¥¥ !
.
¥¥! "
	CodeEvent
¥¥" +
==
¥¥, .!
ExceptionDictionary
¥¥/ B
.
¥¥B C
SUCCESFULL_EVENT
¥¥C S
)
¥¥S T
{
µµ 
SetSingleton
∂∂ $
(
∂∂$ %
)
∂∂% &
;
∂∂& '&
NotifyUserABoutNewPlayer
∑∑ 0
(
∑∑0 1
)
∑∑1 2
;
∑∑2 3
dialogMessage
∏∏ %
=
∏∏& '
new
∏∏( +,
InformationMessageDialogWindow
∏∏, J
(
∏∏J K

Properties
ππ &
.
ππ& '
	Resources
ππ' 0
.
ππ0 1!
txbInformationTitle
ππ1 D
,
ππD E

Properties
ππE O
.
ππO P
	Resources
ππP Y
.
ππY Z%
txbInfoMessgSuccRegUser
ππZ q
,
ππq r
Application
ππs ~
.
ππ~ 
Currentππ Ü
.ππÜ á

MainWindowππá ë
)ππë í
;ππí ì
MainMenu
∫∫  
mainMenu
∫∫! )
=
∫∫* +
new
∫∫, /
MainMenu
∫∫0 8
(
∫∫8 9
)
∫∫9 :
;
∫∫: ;
this
ªª 
.
ªª 
NavigationService
ªª .
.
ªª. /
Navigate
ªª/ 7
(
ªª7 8
mainMenu
ªª8 @
)
ªª@ A
;
ªªA B
NavigationService
ºº )
.
ºº) *
RemoveBackEntry
ºº* 9
(
ºº9 :
)
ºº: ;
;
ºº; <
}
ΩΩ 
else
ææ 
{
øø 

userToSave
¿¿ "
.
¿¿" #
Password
¿¿# +
=
¿¿, -
this
¿¿. 2
.
¿¿2 3
password
¿¿3 ;
;
¿¿; <
dialogMessage
¡¡ %
=
¡¡& '
new
¡¡( +&
ErrorMessageDialogWindow
¡¡, D
(
¡¡D E

Properties
¡¡E O
.
¡¡O P
	Resources
¡¡P Y
.
¡¡Y Z
txbErrorTitle
¡¡Z g
,
¡¡g h

Properties
¡¡i s
.
¡¡s t
	Resources
¡¡t }
.
¡¡} ~*
txbErrorMessageRegisterUser¡¡~ ô
,¡¡ô ö
Application¡¡õ ¶
.¡¡¶ ß
Current¡¡ß Æ
.¡¡Æ Ø

MainWindow¡¡Ø π
)¡¡π ∫
;¡¡∫ ª
}
¬¬ 
}
√√ 
else
ƒƒ 
{
≈≈ 
txbWrongCode
∆∆  
.
∆∆  !

Visibility
∆∆! +
=
∆∆, -

Visibility
∆∆. 8
.
∆∆8 9
Visible
∆∆9 @
;
∆∆@ A
}
«« 
}
»» 
catch
…… 
(
…… '
EndpointNotFoundException
…… ,
ex
……- /
)
……/ 0
{
   
HandleException
ÀÀ 
(
ÀÀ  
ex
ÀÀ  "
,
ÀÀ" #

Properties
ÀÀ$ .
.
ÀÀ. /
	Resources
ÀÀ/ 8
.
ÀÀ8 9!
lblEndPointNotFound
ÀÀ9 L
)
ÀÀL M
;
ÀÀM N
}
ÃÃ 
catch
ÕÕ 
(
ÕÕ 1
#CommunicationObjectFaultedException
ÕÕ 6
ex
ÕÕ7 9
)
ÕÕ9 :
{
ŒŒ 
HandleException
œœ 
(
œœ  
ex
œœ  "
,
œœ" #

Properties
œœ$ .
.
œœ. /
	Resources
œœ/ 8
.
œœ8 9&
lblComunicationException
œœ9 Q
)
œœQ R
;
œœR S
}
–– 
catch
—— 
(
—— 
TimeoutException
—— #
ex
——$ &
)
——& '
{
““ 
HandleException
”” 
(
””  
ex
””  "
,
””" #

Properties
””$ .
.
””. /
	Resources
””/ 8
.
””8 9
lblTimeException
””9 I
)
””I J
;
””J K
}
‘‘ 
catch
’’ 
(
’’ $
CommunicationException
’’ )
ex
’’* ,
)
’’, -
{
÷÷ 
HandleException
◊◊ 
(
◊◊  
ex
◊◊  "
,
◊◊" #

Properties
◊◊$ .
.
◊◊. /
	Resources
◊◊/ 8
.
◊◊8 9!
lblWithoutConection
◊◊9 L
)
◊◊L M
;
◊◊M N
}
ÿÿ 
catch
ŸŸ 
(
ŸŸ 
SocketException
ŸŸ "
ex
ŸŸ# %
)
ŸŸ% &
{
⁄⁄ 
HandleException
€€ 
(
€€  
ex
€€  "
,
€€" #

Properties
€€$ .
.
€€. /
	Resources
€€/ 8
.
€€8 9%
lblFailtToEnterTheLobby
€€9 P
)
€€P Q
;
€€Q R
}
‹‹ 
}
›› 	
private
ﬂﬂ 
void
ﬂﬂ 
ClickResendCode
ﬂﬂ $
(
ﬂﬂ$ %
object
ﬂﬂ% +
sender
ﬂﬂ, 2
,
ﬂﬂ2 3
RoutedEventArgs
ﬂﬂ4 C
e
ﬂﬂD E
)
ﬂﬂE F
{
‡‡ 	
if
·· 
(
·· 
leftTime
·· 
==
·· 
NULL_INT_VALUE
·· *
)
··* +
{
‚‚ 
try
„„ 
{
‰‰ 
InstanceContext
ÂÂ #
instanceContext
ÂÂ$ 3
=
ÂÂ4 5
new
ÂÂ6 9
InstanceContext
ÂÂ: I
(
ÂÂI J
this
ÂÂJ N
)
ÂÂN O
;
ÂÂO P#
CheckUserLivingClient
ÊÊ )#
checkUserLivingClient
ÊÊ* ?
=
ÊÊ@ A
new
ÊÊB E
(
ÊÊE F
instanceContext
ÊÊF U
)
ÊÊU V
;
ÊÊV W
var
ÁÁ 
success
ÁÁ 
=
ÁÁ  !#
checkUserLivingClient
ÁÁ" 7
.
ÁÁ7 8!
RenewLivingCallBack
ÁÁ8 K
(
ÁÁK L

userToSave
ÁÁL V
)
ÁÁV W
;
ÁÁW X)
UserCreateAccountCodeClient
ÈÈ /
userCreateAccount
ÈÈ0 A
=
ÈÈB C
new
ÈÈD G
(
ÈÈG H
)
ÈÈH I
;
ÈÈI J
if
ÍÍ 
(
ÍÍ 
userCreateAccount
ÍÍ )
.
ÍÍ) *

ResendCode
ÍÍ* 4
(
ÍÍ4 5

userToSave
ÍÍ5 ?
)
ÍÍ? @
==
ÍÍA C!
ExceptionDictionary
ÍÍD W
.
ÍÍW X
SUCCESFULL_EVENT
ÍÍX h
)
ÍÍh i
{
ÎÎ 
	SentEmail
ÏÏ !
(
ÏÏ! "
)
ÏÏ" #
;
ÏÏ# $

StartTimer
ÌÌ "
(
ÌÌ" #
)
ÌÌ# $
;
ÌÌ$ %
}
ÓÓ 
else
ÔÔ 
{
 
dialogMessage
ÒÒ %
=
ÒÒ& '
new
ÒÒ( +&
ErrorMessageDialogWindow
ÒÒ, D
(
ÒÒD E

Properties
ÒÒE O
.
ÒÒO P
	Resources
ÒÒP Y
.
ÒÒY Z
txbErrorTitle
ÒÒZ g
,
ÒÒg h

Properties
ÒÒi s
.
ÒÒs t
	Resources
ÒÒt }
.
ÒÒ} ~(
lblFailRegistryToCallBackÒÒ~ ó
,ÒÒó ò
ApplicationÒÒô §
.ÒÒ§ •
CurrentÒÒ• ¨
.ÒÒ¨ ≠

MainWindowÒÒ≠ ∑
)ÒÒ∑ ∏
;ÒÒ∏ π
}
ÚÚ 
}
ÛÛ 
catch
ÙÙ 
(
ÙÙ '
EndpointNotFoundException
ÙÙ 0
ex
ÙÙ1 3
)
ÙÙ3 4
{
ıı 
HandleException
ˆˆ #
(
ˆˆ# $
ex
ˆˆ$ &
,
ˆˆ& '

Properties
ˆˆ( 2
.
ˆˆ2 3
	Resources
ˆˆ3 <
.
ˆˆ< =!
lblEndPointNotFound
ˆˆ= P
)
ˆˆP Q
;
ˆˆQ R%
ClickButtonCancelSaving
˜˜ +
(
˜˜+ ,
bttCancellAction
˜˜, <
,
˜˜< =
new
˜˜> A
RoutedEventArgs
˜˜B Q
(
˜˜Q R
)
˜˜R S
)
˜˜S T
;
˜˜T U
}
¯¯ 
catch
˘˘ 
(
˘˘ 1
#CommunicationObjectFaultedException
˘˘ :
ex
˘˘; =
)
˘˘= >
{
˙˙ 
HandleException
˚˚ #
(
˚˚# $
ex
˚˚$ &
,
˚˚& '

Properties
˚˚( 2
.
˚˚2 3
	Resources
˚˚3 <
.
˚˚< =&
lblComunicationException
˚˚= U
)
˚˚U V
;
˚˚V W%
ClickButtonCancelSaving
¸¸ +
(
¸¸+ ,
bttCancellAction
¸¸, <
,
¸¸< =
new
¸¸> A
RoutedEventArgs
¸¸B Q
(
¸¸Q R
)
¸¸R S
)
¸¸S T
;
¸¸T U
}
˝˝ 
catch
˛˛ 
(
˛˛ 
TimeoutException
˛˛ '
ex
˛˛( *
)
˛˛* +
{
ˇˇ 
HandleException
ÄÄ #
(
ÄÄ# $
ex
ÄÄ$ &
,
ÄÄ& '

Properties
ÄÄ( 2
.
ÄÄ2 3
	Resources
ÄÄ3 <
.
ÄÄ< =
lblTimeException
ÄÄ= M
)
ÄÄM N
;
ÄÄN O%
ClickButtonCancelSaving
ÅÅ +
(
ÅÅ+ ,
bttCancellAction
ÅÅ, <
,
ÅÅ< =
new
ÅÅ> A
RoutedEventArgs
ÅÅB Q
(
ÅÅQ R
)
ÅÅR S
)
ÅÅS T
;
ÅÅT U
}
ÇÇ 
catch
ÉÉ 
(
ÉÉ $
CommunicationException
ÉÉ -
ex
ÉÉ. 0
)
ÉÉ0 1
{
ÑÑ 
HandleException
ÖÖ #
(
ÖÖ# $
ex
ÖÖ$ &
,
ÖÖ& '

Properties
ÖÖ( 2
.
ÖÖ2 3
	Resources
ÖÖ3 <
.
ÖÖ< =!
lblWithoutConection
ÖÖ= P
)
ÖÖP Q
;
ÖÖQ R%
ClickButtonCancelSaving
ÜÜ +
(
ÜÜ+ ,
bttCancellAction
ÜÜ, <
,
ÜÜ< =
new
ÜÜ> A
RoutedEventArgs
ÜÜB Q
(
ÜÜQ R
)
ÜÜR S
)
ÜÜS T
;
ÜÜT U
}
áá 
catch
àà 
(
àà 
SocketException
àà &
ex
àà' )
)
àà) *
{
ââ 
HandleException
ää #
(
ää# $
ex
ää$ &
,
ää& '

Properties
ää( 2
.
ää2 3
	Resources
ää3 <
.
ää< =%
lblFailtToEnterTheLobby
ää= T
)
ääT U
;
ääU V%
ClickButtonCancelSaving
ãã +
(
ãã+ ,
bttCancellAction
ãã, <
,
ãã< =
new
ãã> A
RoutedEventArgs
ããB Q
(
ããQ R
)
ããR S
)
ããS T
;
ããT U
}
åå 
}
çç 
}
éé 	
private
êê 
void
êê "
PrepareUserToBeSaved
êê )
(
êê) *
)
êê* +
{
ëë 	
String
íí 
encryptedPassword
íí $
=
íí% &
EncryptionClass
íí' 6
.
íí6 7
EncryptPassword
íí7 F
(
ííF G

userToSave
ííG Q
.
ííQ R
Password
ííR Z
.
ííZ [
ToString
íí[ c
(
ííc d
)
ííd e
.
ííe f
Trim
ííf j
(
ííj k
)
íík l
)
ííl m
;
íím n

userToSave
ìì 
.
ìì 
Password
ìì 
=
ìì  !
encryptedPassword
ìì" 3
;
ìì3 4

userToSave
îî 
.
îî 
IdUser
îî 
=
îî 
NULL_INT_VALUE
îî  .
;
îî. /
}
ïï 	
private
óó 
void
óó &
NotifyUserABoutNewPlayer
óó -
(
óó- .
)
óó. /
{
òò 	
try
ôô 
{
öö 1
#FriendManagerActionOperationsClient
õõ 3*
managerActionOperationsProxy
õõ4 P
=
õõQ R
new
õõS V
(
õõV W
)
õõW X
;
õõX Y*
managerActionOperationsProxy
úú ,
.
úú, -&
NotifyUserAboutNewPlayer
úú- E
(
úúE F
userSingleton
úúF S
.
úúS T
IdUser
úúT Z
,
úúZ [
userSingleton
úú\ i
.
úúi j
UserName
úúj r
)
úúr s
;
úús t
}
ùù 
catch
ûû 
(
ûû '
EndpointNotFoundException
ûû ,
ex
ûû- /
)
ûû/ 0
{
üü %
ExceptionHandlerForLogs
†† '
.
††' (
LogException
††( 4
(
††4 5
ex
††5 7
,
††7 8!
ExceptionDictionary
††9 L
.
††L M
FATAL_EXCEPTION
††M \
)
††\ ]
;
††] ^
}
°° 
catch
¢¢ 
(
¢¢ 1
#CommunicationObjectFaultedException
¢¢ 6
ex
¢¢7 9
)
¢¢9 :
{
££ %
ExceptionHandlerForLogs
§§ '
.
§§' (
LogException
§§( 4
(
§§4 5
ex
§§5 7
,
§§7 8!
ExceptionDictionary
§§9 L
.
§§L M
FATAL_EXCEPTION
§§M \
)
§§\ ]
;
§§] ^
}
•• 
catch
¶¶ 
(
¶¶ 
TimeoutException
¶¶ #
ex
¶¶$ &
)
¶¶& '
{
ßß %
ExceptionHandlerForLogs
®® '
.
®®' (
LogException
®®( 4
(
®®4 5
ex
®®5 7
,
®®7 8!
ExceptionDictionary
®®9 L
.
®®L M
FATAL_EXCEPTION
®®M \
)
®®\ ]
;
®®] ^
}
©© 
catch
™™ 
(
™™ $
CommunicationException
™™ )
ex
™™* ,
)
™™, -
{
´´ %
ExceptionHandlerForLogs
¨¨ '
.
¨¨' (
LogException
¨¨( 4
(
¨¨4 5
ex
¨¨5 7
,
¨¨7 8!
ExceptionDictionary
¨¨9 L
.
¨¨L M
FATAL_EXCEPTION
¨¨M \
)
¨¨\ ]
;
¨¨] ^
}
≠≠ 
catch
ÆÆ 
(
ÆÆ 
SocketException
ÆÆ "
ex
ÆÆ# %
)
ÆÆ% &
{
ØØ %
ExceptionHandlerForLogs
∞∞ '
.
∞∞' (
LogException
∞∞( 4
(
∞∞4 5
ex
∞∞5 7
,
∞∞7 8!
ExceptionDictionary
∞∞9 L
.
∞∞L M
FATAL_EXCEPTION
∞∞M \
)
∞∞\ ]
;
∞∞] ^
}
±± 
}
≤≤ 	
private
∂∂ 
void
∂∂ %
ClickButtonCancelSaving
∂∂ ,
(
∂∂, -
object
∂∂- 3
sender
∂∂4 :
,
∂∂: ;
RoutedEventArgs
∂∂< K
e
∂∂L M
)
∂∂M N
{
∑∑ 	
try
∏∏ 
{
ππ 
if
∫∫ 
(
∫∫ 
timer
∫∫ 
!=
∫∫ 
null
∫∫ !
)
∫∫! "
{
ªª 
timer
ºº 
.
ºº 
Stop
ºº 
(
ºº 
)
ºº  
;
ºº  !
}
ΩΩ )
UserCreateAccountCodeClient
ææ +
userCreateAccount
ææ, =
=
ææ> ?
new
ææ@ C
(
ææC D
)
ææD E
;
ææE F
userCreateAccount
øø !
.
øø! "%
TakeUserOutOfDictionary
øø" 9
(
øø9 :

userToSave
øø: D
)
øøD E
;
øøE F.
 CheckUserLivingUnsubscribeClient
¿¿ 0#
checkUserLivingClient
¿¿1 F
=
¿¿G H
new
¿¿I L
(
¿¿L M
)
¿¿M N
;
¿¿N O#
checkUserLivingClient
¡¡ %
.
¡¡% &-
UnsubscribeFromICheckUserLiving
¡¡& E
(
¡¡E F

userToSave
¡¡F P
)
¡¡P Q
;
¡¡Q R
}
¬¬ 
catch
√√ 
(
√√ '
EndpointNotFoundException
√√ ,
ex
√√- /
)
√√/ 0
{
ƒƒ %
ExceptionHandlerForLogs
≈≈ '
.
≈≈' (
LogException
≈≈( 4
(
≈≈4 5
ex
≈≈5 7
,
≈≈7 8!
ExceptionDictionary
≈≈9 L
.
≈≈L M
FATAL_EXCEPTION
≈≈M \
)
≈≈\ ]
;
≈≈] ^
}
∆∆ 
catch
«« 
(
«« 1
#CommunicationObjectFaultedException
«« 6
ex
««7 9
)
««9 :
{
»» %
ExceptionHandlerForLogs
…… '
.
……' (
LogException
……( 4
(
……4 5
ex
……5 7
,
……7 8!
ExceptionDictionary
……9 L
.
……L M
FATAL_EXCEPTION
……M \
)
……\ ]
;
……] ^
}
   
catch
ÀÀ 
(
ÀÀ 
TimeoutException
ÀÀ #
ex
ÀÀ$ &
)
ÀÀ& '
{
ÃÃ %
ExceptionHandlerForLogs
ÕÕ '
.
ÕÕ' (
LogException
ÕÕ( 4
(
ÕÕ4 5
ex
ÕÕ5 7
,
ÕÕ7 8!
ExceptionDictionary
ÕÕ9 L
.
ÕÕL M
FATAL_EXCEPTION
ÕÕM \
)
ÕÕ\ ]
;
ÕÕ] ^
}
ŒŒ 
catch
œœ 
(
œœ $
CommunicationException
œœ )
ex
œœ* ,
)
œœ, -
{
–– %
ExceptionHandlerForLogs
—— '
.
——' (
LogException
——( 4
(
——4 5
ex
——5 7
,
——7 8!
ExceptionDictionary
——9 L
.
——L M
FATAL_EXCEPTION
——M \
)
——\ ]
;
——] ^
}
““ 
catch
”” 
(
”” 
SocketException
”” "
ex
””# %
)
””% &
{
‘‘ %
ExceptionHandlerForLogs
’’ '
.
’’' (
LogException
’’( 4
(
’’4 5
ex
’’5 7
,
’’7 8!
ExceptionDictionary
’’9 L
.
’’L M
FATAL_EXCEPTION
’’M \
)
’’\ ]
;
’’] ^
}
÷÷ 
UserSingleton
◊◊ 
.
◊◊ 
CleanSingleton
◊◊ (
(
◊◊( )
)
◊◊) *
;
◊◊* +
UserRegister
ÿÿ 
userToRegister
ÿÿ '
=
ÿÿ( )
new
ÿÿ* -
UserRegister
ÿÿ. :
(
ÿÿ: ;
)
ÿÿ; <
;
ÿÿ< =
this
ŸŸ 
.
ŸŸ 
NavigationService
ŸŸ "
.
ŸŸ" #
Navigate
ŸŸ# +
(
ŸŸ+ ,
userToRegister
ŸŸ, :
)
ŸŸ: ;
;
ŸŸ; <
userToRegister
⁄⁄ 
.
⁄⁄ 

LoadFields
⁄⁄ %
(
⁄⁄% &

userToSave
⁄⁄& 0
)
⁄⁄0 1
;
⁄⁄1 2
NavigationService
€€ 
.
€€ 
RemoveBackEntry
€€ -
(
€€- .
)
€€. /
;
€€/ 0
}
‹‹ 	
private
ﬂﬂ 
void
ﬂﬂ $
EntryCodeCharValidator
ﬂﬂ +
(
ﬂﬂ+ ,
object
ﬂﬂ, 2
sender
ﬂﬂ3 9
,
ﬂﬂ9 :"
TextChangedEventArgs
ﬂﬂ; O
e
ﬂﬂP Q
)
ﬂﬂQ R
{
‡‡ 	
if
·· 
(
·· 
txbCodeCreateAcc
··  
.
··  !
Text
··! %
.
··% &
Trim
··& *
(
··* +
)
··+ ,
.
··, -
Length
··- 3
==
··4 6
$num
··7 8
)
··8 9
{
‚‚ 
bttSaveUser
„„ 
.
„„ 
	IsEnabled
„„ %
=
„„& '
true
„„( ,
;
„„, -
}
‰‰ 
else
ÂÂ 
{
ÊÊ 
bttSaveUser
ÁÁ 
.
ÁÁ 
	IsEnabled
ÁÁ %
=
ÁÁ% &
false
ÁÁ& +
;
ÁÁ+ ,
}
ËË 
}
ÈÈ 	
private
ÎÎ 
void
ÎÎ 
SetSingleton
ÎÎ !
(
ÎÎ! "
)
ÎÎ" #
{
ÏÏ 	
try
ÌÌ 
{
ÓÓ *
ConsultUserInformationClient
ÔÔ ,&
consultInformationClient
ÔÔ- E
=
ÔÔF G
new
ÔÔH K*
ConsultUserInformationClient
ÔÔL h
(
ÔÔh i
)
ÔÔi j
;
ÔÔj k
var
 
	userSaved
 
=
 &
consultInformationClient
  8
.
8 9#
ConsultUserByUserName
9 N
(
N O

userToSave
O Y
.
Y Z
UserName
Z b
)
b c
;
c d
if
ÒÒ 
(
ÒÒ 
	userSaved
ÒÒ 
.
ÒÒ 
	CodeEvent
ÒÒ '
==
ÒÒ( *!
ExceptionDictionary
ÒÒ+ >
.
ÒÒ> ?
SUCCESFULL_EVENT
ÒÒ? O
)
ÒÒO P
{
ÚÚ 
var
ÛÛ 
playerSaved
ÛÛ #
=
ÛÛ$ %&
consultInformationClient
ÛÛ& >
.
ÛÛ> ?#
ConsultPlayerByIdUser
ÛÛ? T
(
ÛÛT U
	userSaved
ÛÛU ^
.
ÛÛ^ _
ObjectSaved
ÛÛ_ j
.
ÛÛj k
IdUser
ÛÛk q
)
ÛÛq r
;
ÛÛr s
if
ÙÙ 
(
ÙÙ 
playerSaved
ÙÙ #
.
ÙÙ# $
	CodeEvent
ÙÙ$ -
==
ÙÙ. 0!
ExceptionDictionary
ÙÙ1 D
.
ÙÙD E
SUCCESFULL_EVENT
ÙÙE U
)
ÙÙU V
{
ıı 
UserSingleton
ˆˆ %
.
ˆˆ% &
CleanSingleton
ˆˆ& 4
(
ˆˆ4 5
)
ˆˆ5 6
;
ˆˆ6 7
userSingleton
˜˜ %
=
˜˜& '
UserSingleton
˜˜( 5
.
˜˜5 6
GetMainUser
˜˜6 A
(
˜˜A B
	userSaved
˜˜B K
.
˜˜K L
ObjectSaved
˜˜L W
,
˜˜W X
playerSaved
˜˜Y d
.
˜˜d e
ObjectSaved
˜˜e p
)
˜˜p q
;
˜˜q r-
AvailabilityUserManagmentClient
¯¯ 7'
availabilityUserManagment
¯¯8 Q
=
¯¯R S
new
¯¯T W-
AvailabilityUserManagmentClient
¯¯X w
(
¯¯w x
)
¯¯x y
;
¯¯y z'
availabilityUserManagment
˘˘ 1
.
˘˘1 2
PlayerIsAvailable
˘˘2 C
(
˘˘C D
userSingleton
˘˘D Q
.
˘˘Q R
IdUser
˘˘R X
)
˘˘X Y
;
˘˘Y Z
}
˙˙ 
else
˚˚ 
{
¸¸ 
dialogMessage
˝˝ %
=
˝˝& '
new
˝˝( +&
ErrorMessageDialogWindow
˝˝, D
(
˝˝D E

Properties
˝˝E O
.
˝˝O P
	Resources
˝˝P Y
.
˝˝Y Z
txbErrorTitle
˝˝Z g
,
˝˝g h

Properties
˝˝i s
.
˝˝s t
	Resources
˝˝t }
.
˝˝} ~%
lblFailConsultingTheBD˝˝~ î
,˝˝î ï
Application˝˝ñ °
.˝˝° ¢
Current˝˝¢ ©
.˝˝© ™

MainWindow˝˝™ ¥
)˝˝¥ µ
;˝˝µ ∂
}
˛˛ 
}
ˇˇ 
else
ÄÄ 
{
ÅÅ 
dialogMessage
ÇÇ !
=
ÇÇ" #
new
ÇÇ$ '&
ErrorMessageDialogWindow
ÇÇ( @
(
ÇÇ@ A

Properties
ÇÇA K
.
ÇÇK L
	Resources
ÇÇL U
.
ÇÇU V
txbErrorTitle
ÇÇV c
,
ÇÇc d

Properties
ÇÇe o
.
ÇÇo p
	Resources
ÇÇp y
.
ÇÇy z%
lblFailConsultingTheBDÇÇz ê
,ÇÇê ë
ApplicationÇÇí ù
.ÇÇù û
CurrentÇÇû •
.ÇÇ• ¶

MainWindowÇÇ¶ ∞
)ÇÇ∞ ±
;ÇÇ± ≤
}
ÉÉ 
}
ÑÑ 
catch
ÖÖ 
(
ÖÖ '
EndpointNotFoundException
ÖÖ ,
ex
ÖÖ- /
)
ÖÖ/ 0
{
ÜÜ 
HandleException
áá 
(
áá  
ex
áá  "
,
áá" #

Properties
áá$ .
.
áá. /
	Resources
áá/ 8
.
áá8 9/
!lblUserRegisteredButFailToconnect
áá9 Z
)
ááZ [
;
áá[ \%
ClickButtonCancelSaving
àà '
(
àà' (
bttCancellAction
àà( 8
,
àà8 9
new
àà: =
RoutedEventArgs
àà> M
(
ààM N
)
ààN O
)
ààO P
;
ààP Q
}
ââ 
catch
ää 
(
ää 1
#CommunicationObjectFaultedException
ää 6
ex
ää7 9
)
ää9 :
{
ãã 
HandleException
åå 
(
åå  
ex
åå  "
,
åå" #

Properties
åå$ .
.
åå. /
	Resources
åå/ 8
.
åå8 9/
!lblUserRegisteredButFailToconnect
åå9 Z
)
ååZ [
;
åå[ \%
ClickButtonCancelSaving
çç '
(
çç' (
bttCancellAction
çç( 8
,
çç8 9
new
çç: =
RoutedEventArgs
çç> M
(
ççM N
)
ççN O
)
ççO P
;
ççP Q
}
éé 
catch
èè 
(
èè 
TimeoutException
èè #
ex
èè$ &
)
èè& '
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
ëë8 9/
!lblUserRegisteredButFailToconnect
ëë9 Z
)
ëëZ [
;
ëë[ \%
ClickButtonCancelSaving
íí '
(
íí' (
bttCancellAction
íí( 8
,
íí8 9
new
íí: =
RoutedEventArgs
íí> M
(
ííM N
)
ííN O
)
ííO P
;
ííP Q
}
ìì 
catch
îî 
(
îî $
CommunicationException
îî )
ex
îî* ,
)
îî, -
{
ïï 
HandleException
ññ 
(
ññ  
ex
ññ  "
,
ññ" #

Properties
ññ$ .
.
ññ. /
	Resources
ññ/ 8
.
ññ8 9/
!lblUserRegisteredButFailToconnect
ññ9 Z
)
ññZ [
;
ññ[ \%
ClickButtonCancelSaving
óó '
(
óó' (
bttCancellAction
óó( 8
,
óó8 9
new
óó: =
RoutedEventArgs
óó> M
(
óóM N
)
óóN O
)
óóO P
;
óóP Q
}
òò 
catch
ôô 
(
ôô 
SocketException
ôô "
ex
ôô# %
)
ôô% &
{
öö 
HandleException
õõ 
(
õõ  
ex
õõ  "
,
õõ" #

Properties
õõ$ .
.
õõ. /
	Resources
õõ/ 8
.
õõ8 9/
!lblUserRegisteredButFailToconnect
õõ9 Z
)
õõZ [
;
õõ[ \%
ClickButtonCancelSaving
úú '
(
úú' (
bttCancellAction
úú( 8
,
úú8 9
new
úú: =
RoutedEventArgs
úú> M
(
úúM N
)
úúN O
)
úúO P
;
úúP Q
}
ùù 
}
ûû 	
public
†† 
bool
†† 
IsClientActive
†† "
(
††" #
)
††# $
{
°° 	
return
¢¢ 
(
¢¢ 
(
¢¢ &
ICheckUserLivingCallback
¢¢ -
)
¢¢- .
userSingleton
¢¢. ;
)
¢¢; <
.
¢¢< =
IsClientActive
¢¢= K
(
¢¢K L
)
¢¢L M
;
¢¢M N
}
££ 	
private
•• 
void
•• 
HandleException
•• $
(
••$ %
	Exception
••% .
ex
••/ 1
,
••1 2
string
••3 9
errorMessage
••: F
)
••F G
{
¶¶ 	%
ExceptionHandlerForLogs
ßß #
.
ßß# $
LogException
ßß$ 0
(
ßß0 1
ex
ßß1 3
,
ßß3 4!
ExceptionDictionary
ßß5 H
.
ßßH I
FATAL_EXCEPTION
ßßI X
)
ßßX Y
;
ßßY Z
dialogMessage
®® 
=
®® 
new
®® &
ErrorMessageDialogWindow
®®  8
(
®®8 9

Properties
®®9 C
.
®®C D
	Resources
®®D M
.
®®M N
txbErrorTitle
®®N [
,
®®[ \
errorMessage
®®] i
,
®®i j
Application
®®k v
.
®®v w
Current
®®w ~
.
®®~ 

MainWindow®® â
)®®â ä
;®®ä ã
}
©© 	
private
™™ 
void
™™ 
UpdateLabelStyle
™™ %
(
™™% &
)
™™& '
{
´´ 	
if
¨¨ 
(
¨¨ 
isTimerExpired
¨¨ 
)
¨¨ 
{
≠≠ 
lblResentCode
ÆÆ 
.
ÆÆ 

FontWeight
ÆÆ (
=
ÆÆ) *
FontWeights
ÆÆ+ 6
.
ÆÆ6 7
Bold
ÆÆ7 ;
;
ÆÆ; <
lblResentCode
ØØ 
.
ØØ 

Foreground
ØØ (
=
ØØ) *
Brushes
ØØ+ 2
.
ØØ2 3
Red
ØØ3 6
;
ØØ6 7
}
∞∞ 
else
±± 
{
≤≤ 
lblResentCode
≥≥ 
.
≥≥ 

FontWeight
≥≥ (
=
≥≥) *
FontWeights
≥≥+ 6
.
≥≥6 7
Normal
≥≥7 =
;
≥≥= >
lblResentCode
¥¥ 
.
¥¥ 

Foreground
¥¥ (
=
¥¥) *
Brushes
¥¥+ 2
.
¥¥2 3
DeepSkyBlue
¥¥3 >
;
¥¥> ?
}
µµ 
}
∂∂ 	
}
∏∏ 
}ππ ΩÊ
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
void88 
DisplayUserInfo88 $
(88$ %
)88% &
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
èè 
int
êê 
idPlayer
êê 
=
êê 
UserSingleton
êê (
.
êê( )
GetMainUser
êê) 4
(
êê4 5
)
êê5 6
.
êê6 7
IdPlayer
êê7 ?
;
êê? @*
ConsultUserInformationClient
ëë (%
consultInformationProxy
ëë) @
=
ëëA B
new
ëëC F*
ConsultUserInformationClient
ëëG c
(
ëëc d
)
ëëd e
;
ëëe f
var
ìì 

playerInfo
ìì 
=
ìì %
consultInformationProxy
ìì 4
.
ìì4 5
ConsultPlayerById
ìì5 F
(
ììF G
idPlayer
ììG O
)
ììO P
;
ììP Q%
consultInformationProxy
îî #
.
îî# $
Close
îî$ )
(
îî) *
)
îî* +
;
îî+ ,
if
ññ 
(
ññ 

playerInfo
ññ 
!=
ññ !
null
ññ" &
&&
ññ' )

playerInfo
ññ* 4
.
ññ4 5
	CodeEvent
ññ5 >
==
ññ? A!
ExceptionDictionary
ññB U
.
ññU V
SUCCESFULL_EVENT
ññV f
)
ññf g
{
óó 
var
òò 
playerWrapper
òò %
=
òò& '

playerInfo
òò( 2
.
òò2 3
ObjectSaved
òò3 >
;
òò> ?
if
öö 
(
öö 
playerWrapper
öö %
!=
öö& (
null
öö) -
&&
öö. 0
playerWrapper
öö1 >
is
öö? A

PlayerPojo
ööB L
)
ööL M
{
õõ 
var
úú 
player
úú "
=
úú# $
(
úú% &

PlayerPojo
úú& 0
)
úú0 1
playerWrapper
úú1 >
;
úú> ?
int
ûû 
imageId
ûû #
=
ûû$ %
player
ûû& ,
.
ûû, -
IdActualAvatar
ûû- ;
;
ûû; <
string
†† 
	imageName
†† (
=
††) *
imageIdMappings
††+ :
.
††: ;
FirstOrDefault
††; I
(
††I J
x
††J K
=>
††L N
x
††O P
.
††P Q
Value
††Q V
==
††W Y
imageId
††Z a
)
††a b
.
††b c
Key
††c f
;
††f g
if
¢¢ 
(
¢¢ 
!
¢¢ 
string
¢¢ #
.
¢¢# $
IsNullOrEmpty
¢¢$ 1
(
¢¢1 2
	imageName
¢¢2 ;
)
¢¢; <
)
¢¢< =
{
££ 
Bitmap
§§ "
bmp
§§# &
=
§§' (
(
§§) *
Bitmap
§§* 0
)
§§0 1

Properties
§§1 ;
.
§§; <
ResourcesImage
§§< J
.
§§J K
ResourceManager
§§K Z
.
§§Z [
	GetObject
§§[ d
(
§§d e
	imageName
§§e n
)
§§n o
;
§§o p
BitmapSource
¶¶ (
bmpImage
¶¶) 1
=
¶¶2 3
Imaging
¶¶4 ;
.
¶¶; <+
CreateBitmapSourceFromHBitmap
¶¶< Y
(
¶¶Y Z
bmp
ßß  #
.
ßß# $

GetHbitmap
ßß$ .
(
ßß. /
)
ßß/ 0
,
ßß0 1
IntPtr
®®  &
.
®®& '
Zero
®®' +
,
®®+ ,
	Int32Rect
©©  )
.
©©) *
Empty
©©* /
,
©©/ 0
BitmapSizeOptions
™™  1
.
™™1 2
FromEmptyOptions
™™2 B
(
™™B C
)
™™C D
)
´´ 
;
´´ 
imageProfile
≠≠ (
.
≠≠( )
Source
≠≠) /
=
≠≠0 1
bmpImage
≠≠2 :
;
≠≠: ;
}
ÆÆ 
}
ØØ 
}
∞∞ 
}
±± 
catch
≤≤ 
(
≤≤ '
EndpointNotFoundException
≤≤ ,
ex
≤≤- /
)
≤≤/ 0
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
¥¥8 9!
lblEndPointNotFound
¥¥9 L
)
¥¥L M
;
¥¥M N
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
∏∏8 9&
lblComunicationException
∏∏9 Q
)
∏∏Q R
;
∏∏R S
}
ππ 
catch
∫∫ 
(
∫∫ 
TimeoutException
∫∫ #
ex
∫∫$ &
)
∫∫& '
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
ºº8 9
lblTimeException
ºº9 I
)
ººI J
;
ººJ K
}
ΩΩ 
catch
ææ 
(
ææ $
CommunicationException
ææ )
ex
ææ* ,
)
ææ, -
{
øø 
HandleException
¿¿ 
(
¿¿  
ex
¿¿  "
,
¿¿" #

Properties
¿¿$ .
.
¿¿. /
	Resources
¿¿/ 8
.
¿¿8 9!
lblWithoutConection
¿¿9 L
)
¿¿L M
;
¿¿M N
}
¡¡ 
catch
¬¬ 
(
¬¬ 
SocketException
¬¬ "
ex
¬¬# %
)
¬¬% &
{
√√ 
HandleException
ƒƒ 
(
ƒƒ  
ex
ƒƒ  "
,
ƒƒ" #

Properties
ƒƒ$ .
.
ƒƒ. /
	Resources
ƒƒ/ 8
.
ƒƒ8 9"
lblWrongUpdateAvatar
ƒƒ9 M
)
ƒƒM N
;
ƒƒN O
}
≈≈ 
}
∆∆ 	
private
«« 
void
«« %
InitializeImageMappings
«« ,
(
««, -
)
««- .
{
»» 	
imageIdMappings
…… 
=
…… 
new
…… !

Dictionary
……" ,
<
……, -
string
……- 3
,
……3 4
int
……5 8
>
……8 9
{
   
{
ÀÀ 
$str
ÀÀ 
,
ÀÀ 
$num
ÀÀ 
}
ÀÀ  
,
ÀÀ  !
{
ÃÃ 
$str
ÃÃ 
,
ÃÃ  
$num
ÃÃ! "
}
ÃÃ# $
,
ÃÃ$ %
{
ÕÕ 
$str
ÕÕ 
,
ÕÕ 
$num
ÕÕ 
}
ÕÕ 
,
ÕÕ  
{
ŒŒ 
$str
ŒŒ 
,
ŒŒ 
$num
ŒŒ 
}
ŒŒ 
,
ŒŒ 
{
œœ 
$str
œœ 
,
œœ 
$num
œœ 
}
œœ 
,
œœ 
{
–– 
$str
–– 
,
–– 
$num
–– 
}
––  !
,
––! "
{
—— 
$str
—— 
,
—— 
$num
—— 
}
——  
}
““ 
;
““ 
}
”” 	
private
’’ 
void
’’ !
ClickViewAvatarList
’’ (
(
’’( )
object
’’) /
sender
’’0 6
,
’’6 7"
MouseButtonEventArgs
’’8 L
e
’’M N
)
’’N O
{
÷÷ 	
brdAvatarList
◊◊ 
.
◊◊ 

Visibility
◊◊ $
=
◊◊% &

Visibility
◊◊' 1
.
◊◊1 2
Visible
◊◊2 9
;
◊◊9 : 
imgViewAvartarList
ÿÿ 
.
ÿÿ 

Visibility
ÿÿ )
=
ÿÿ* +

Visibility
ÿÿ, 6
.
ÿÿ6 7
Hidden
ÿÿ7 =
;
ÿÿ= >
}
ŸŸ 	
private
€€ 
void
€€ "
ClickCloseAvatarList
€€ )
(
€€) *
object
€€* 0
sender
€€1 7
,
€€7 8"
MouseButtonEventArgs
€€9 M
e
€€N O
)
€€O P
{
‹‹ 	
brdAvatarList
›› 
.
›› 

Visibility
›› $
=
››% &

Visibility
››' 1
.
››1 2
Hidden
››2 8
;
››8 9 
imgViewAvartarList
ﬁﬁ 
.
ﬁﬁ 

Visibility
ﬁﬁ )
=
ﬁﬁ* +

Visibility
ﬁﬁ, 6
.
ﬁﬁ6 7
Visible
ﬁﬁ7 >
;
ﬁﬁ> ?
}
ﬂﬂ 	
private
·· 
void
·· 
ClickSaveNewEmail
·· &
(
··& '
object
··' -
sender
··. 4
,
··4 5"
MouseButtonEventArgs
··6 J
e
··K L
)
··L M
{
‚‚ 	
try
„„ 
{
‰‰ 
UserManagerClient
ÂÂ !
useManagerProxy
ÂÂ" 1
=
ÂÂ2 3
new
ÂÂ4 7
UserManagerClient
ÂÂ8 I
(
ÂÂI J
)
ÂÂJ K
;
ÂÂK L
int
ÊÊ 
idUser
ÊÊ 
=
ÊÊ 
UserSingleton
ÊÊ *
.
ÊÊ* +
GetMainUser
ÊÊ+ 6
(
ÊÊ6 7
)
ÊÊ7 8
.
ÊÊ8 9
IdUser
ÊÊ9 ?
;
ÊÊ? @
string
ÁÁ 
email
ÁÁ 
=
ÁÁ 
txbEditEmail
ÁÁ +
.
ÁÁ+ ,
Text
ÁÁ, 0
.
ÁÁ0 1
Trim
ÁÁ1 5
(
ÁÁ5 6
)
ÁÁ6 7
;
ÁÁ7 8
if
ÈÈ 
(
ÈÈ 
string
ÈÈ 
.
ÈÈ 
IsNullOrEmpty
ÈÈ (
(
ÈÈ( )
email
ÈÈ) .
)
ÈÈ. /
)
ÈÈ/ 0
{
ÍÍ 
LblWrongEmail
ÎÎ !
.
ÎÎ! "
Content
ÎÎ" )
=
ÎÎ* +

Properties
ÎÎ, 6
.
ÎÎ6 7
	Resources
ÎÎ7 @
.
ÎÎ@ A
lblWrongEmail
ÎÎA N
;
ÎÎN O
LblWrongEmail
ÏÏ !
.
ÏÏ! "

Visibility
ÏÏ" ,
=
ÏÏ- .

Visibility
ÏÏ/ 9
.
ÏÏ9 :
Visible
ÏÏ: A
;
ÏÏA B
return
ÌÌ 
;
ÌÌ 
}
ÓÓ 
if
ÔÔ 
(
ÔÔ 
!
ÔÔ 
IsValidEmail
ÔÔ !
(
ÔÔ! "
email
ÔÔ" '
)
ÔÔ' (
)
ÔÔ( )
{
 
LblWrongEmail
ÒÒ !
.
ÒÒ! "
Content
ÒÒ" )
=
ÒÒ* +

Properties
ÒÒ, 6
.
ÒÒ6 7
	Resources
ÒÒ7 @
.
ÒÒ@ A
lblWrongFormat
ÒÒA O
;
ÒÒO P
LblWrongEmail
ÚÚ !
.
ÚÚ! "

Visibility
ÚÚ" ,
=
ÚÚ- .

Visibility
ÚÚ/ 9
.
ÚÚ9 :
Visible
ÚÚ: A
;
ÚÚA B
return
ÛÛ 
;
ÛÛ 
}
ÙÙ 
if
ıı 
(
ıı !
CheckEmailExistence
ıı '
(
ıı' (
email
ıı( -
)
ıı- .
==
ıı/ 1
DISALLOWED_VALUES
ıı2 C
)
ııC D
{
ˆˆ 
LblWrongEmail
˜˜ !
.
˜˜! "
Content
˜˜" )
=
˜˜* +

Properties
˜˜, 6
.
˜˜6 7
	Resources
˜˜7 @
.
˜˜@ A
lblEmailExistInBD
˜˜A R
;
˜˜R S
LblWrongEmail
¯¯ !
.
¯¯! "

Visibility
¯¯" ,
=
¯¯- .

Visibility
¯¯/ 9
.
¯¯9 :
Visible
¯¯: A
;
¯¯A B
return
˘˘ 
;
˘˘ 
}
˙˙ 
LblWrongEmail
¸¸ 
.
¸¸ 

Visibility
¸¸ (
=
¸¸) *

Visibility
¸¸+ 5
.
¸¸5 6
	Collapsed
¸¸6 ?
;
¸¸? @
if
˛˛ 
(
˛˛ %
CheckEmailAddressFormat
˛˛ +
(
˛˛+ ,
)
˛˛, -
==
˛˛. 0
ALLOWED_VALUES
˛˛1 ?
&&
˛˛@ B!
CheckEmailExistence
ˇˇ '
(
ˇˇ' (
email
ˇˇ( -
)
ˇˇ- .
==
ˇˇ/ 1
ALLOWED_VALUES
ˇˇ2 @
)
ˇˇ@ A
{
ÄÄ 
var
ÅÅ 
result
ÅÅ 
=
ÅÅ  
useManagerProxy
ÅÅ! 0
.
ÅÅ0 1
UpdateEmailUser
ÅÅ1 @
(
ÅÅ@ A
idUser
ÅÅA G
,
ÅÅG H
email
ÅÅI N
)
ÅÅN O
;
ÅÅO P
if
ÇÇ 
(
ÇÇ 
result
ÇÇ 
!=
ÇÇ !
null
ÇÇ" &
)
ÇÇ& '
{
ÉÉ 
UserSingleton
ÑÑ %
.
ÑÑ% &
GetMainUser
ÑÑ& 1
(
ÑÑ1 2
)
ÑÑ2 3
.
ÑÑ3 4
UpdateEmailData
ÑÑ4 C
(
ÑÑC D
email
ÑÑD I
)
ÑÑI J
;
ÑÑJ K
dialogMessage
ÖÖ %
=
ÖÖ& '
new
ÖÖ( +,
InformationMessageDialogWindow
ÖÖ, J
(
ÖÖJ K

Properties
ÖÖK U
.
ÖÖU V
	Resources
ÖÖV _
.
ÖÖ_ `!
txbInformationTitle
ÖÖ` s
,
ÖÖs t

Properties
ÖÖu 
.ÖÖ Ä
	ResourcesÖÖÄ â
.ÖÖâ ä
lblUpdateEmailÖÖä ò
,ÖÖò ô
ApplicationÖÖö •
.ÖÖ• ¶
CurrentÖÖ¶ ≠
.ÖÖ≠ Æ

MainWindowÖÖÆ ∏
)ÖÖ∏ π
;ÖÖπ ∫
MainMenu
ÜÜ  
mainMenuPage
ÜÜ! -
=
ÜÜ. /
new
ÜÜ0 3
MainMenu
ÜÜ4 <
(
ÜÜ< =
)
ÜÜ= >
;
ÜÜ> ?
this
áá 
.
áá 
NavigationService
áá .
.
áá. /
Navigate
áá/ 7
(
áá7 8
mainMenuPage
áá8 D
)
ááD E
;
ááE F
NavigationService
àà )
.
àà) *
RemoveBackEntry
àà* 9
(
àà9 :
)
àà: ;
;
àà; <
}
ââ 
else
ää 
{
ãã 
RefreshWindow
åå %
(
åå% &
)
åå& '
;
åå' (
dialogMessage
çç %
=
çç& '
new
çç( +&
ErrorMessageDialogWindow
çç, D
(
ççD E

Properties
ççE O
.
ççO P
	Resources
ççP Y
.
ççY Z
txbErrorTitle
ççZ g
,
ççg h

Properties
ççi s
.
ççs t
	Resources
ççt }
.
çç} ~"
lblWrongUpdateEmailçç~ ë
,ççë í
Applicationççì û
.ççû ü
Currentççü ¶
.çç¶ ß

MainWindowççß ±
)çç± ≤
;çç≤ ≥
}
éé 
useManagerProxy
èè #
.
èè# $
Close
èè$ )
(
èè) *
)
èè* +
;
èè+ ,
}
êê 
}
ëë 
catch
íí 
(
íí '
EndpointNotFoundException
íí ,
ex
íí- /
)
íí/ 0
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
îîk l!
lblEndPointNotFound
îîl 
)îî Ä
;îîÄ Å
}
ïï 
catch
ññ 
(
ññ 1
#CommunicationObjectFaultedException
ññ 6
ex
ññ7 9
)
ññ9 :
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
òòk l'
lblComunicationExceptionòòl Ñ
)òòÑ Ö
;òòÖ Ü
}
ôô 
catch
öö 
(
öö 
TimeoutException
öö #
ex
öö$ &
)
öö& '
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
úú8 9!
lblWrongUpdateEmail
úú9 L
+
úúM N
$str
úúO T
+
úúU V

Properties
úúW a
.
úúa b
	Resources
úúb k
.
úúk l
lblTimeException
úúl |
)
úú| }
;
úú} ~
}
ùù 
catch
ûû 
(
ûû $
CommunicationException
ûû )
ex
ûû* ,
)
ûû, -
{
üü 
HandleException
†† 
(
††  
ex
††  "
,
††" #

Properties
††$ .
.
††. /
	Resources
††/ 8
.
††8 9!
lblWrongUpdateEmail
††9 L
+
††M N
$str
††O T
+
††U V

Properties
††W a
.
††a b
	Resources
††b k
.
††k l!
lblWithoutConection
††l 
)†† Ä
;††Ä Å
}
°° 
catch
¢¢ 
(
¢¢ 
SocketException
¢¢ "
ex
¢¢# %
)
¢¢% &
{
££ 
HandleException
§§ 
(
§§  
ex
§§  "
,
§§" #

Properties
§§$ .
.
§§. /
	Resources
§§/ 8
.
§§8 9"
lblWrongUpdateAvatar
§§9 M
+
§§N O
$str
§§P U
+
§§V W

Properties
§§X b
.
§§b c
	Resources
§§c l
.
§§l m"
lblWithoutConection§§m Ä
)§§Ä Å
;§§Å Ç
}
•• 
}
¶¶ 	
private
ßß 
void
ßß 
ClickSaveNewName
ßß %
(
ßß% &
object
ßß& ,
sender
ßß- 3
,
ßß3 4"
MouseButtonEventArgs
ßß5 I
e
ßßJ K
)
ßßK L
{
®® 	
try
©© 
{
™™ 
UserManagerClient
´´ !
useManagerProxy
´´" 1
=
´´2 3
new
´´4 7
UserManagerClient
´´8 I
(
´´I J
)
´´J K
;
´´K L
String
¨¨ 

nameEdited
¨¨ !
=
¨¨" #
txbEditName
¨¨$ /
.
¨¨/ 0
Text
¨¨0 4
;
¨¨4 5
int
≠≠ 
idUser
≠≠ 
=
≠≠ 
UserSingleton
≠≠ *
.
≠≠* +
GetMainUser
≠≠+ 6
(
≠≠6 7
)
≠≠7 8
.
≠≠8 9
IdUser
≠≠9 ?
;
≠≠? @
if
ÆÆ 
(
ÆÆ 
string
ÆÆ 
.
ÆÆ 
IsNullOrEmpty
ÆÆ (
(
ÆÆ( )

nameEdited
ÆÆ) 3
)
ÆÆ3 4
)
ÆÆ4 5
{
ØØ 
LblWrongName
∞∞  
.
∞∞  !
Content
∞∞! (
=
∞∞) *

Properties
∞∞+ 5
.
∞∞5 6
	Resources
∞∞6 ?
.
∞∞? @
lblWrongName
∞∞@ L
;
∞∞L M
LblWrongName
±±  
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
±±@ A
return
≤≤ 
;
≤≤ 
}
≥≥ 
LblWrongName
¥¥ 
.
¥¥ 

Visibility
¥¥ '
=
¥¥( )

Visibility
¥¥* 4
.
¥¥4 5
	Collapsed
¥¥5 >
;
¥¥> ?
var
∂∂ 
result
∂∂ 
=
∂∂ 
useManagerProxy
∂∂ ,
.
∂∂, -#
UpdateUserInformation
∂∂- B
(
∂∂B C
idUser
∂∂C I
,
∂∂I J

nameEdited
∂∂K U
)
∂∂U V
;
∂∂V W
if
∑∑ 
(
∑∑ 
result
∑∑ 
!=
∑∑ 
null
∑∑ "
)
∑∑" #
{
∏∏ 
UserSingleton
ππ !
.
ππ! "
GetMainUser
ππ" -
(
ππ- .
)
ππ. /
.
ππ/ 0
UpdateNameData
ππ0 >
(
ππ> ?

nameEdited
ππ? I
)
ππI J
;
ππJ K
dialogMessage
∫∫ !
=
∫∫" #
new
∫∫$ ',
InformationMessageDialogWindow
∫∫( F
(
∫∫F G

Properties
∫∫G Q
.
∫∫Q R
	Resources
∫∫R [
.
∫∫[ \!
txbInformationTitle
∫∫\ o
,
∫∫o p

Properties
∫∫q {
.
∫∫{ |
	Resources∫∫| Ö
.∫∫Ö Ü
lblUpdateName∫∫Ü ì
,∫∫ì î
Application∫∫ï †
.∫∫† °
Current∫∫° ®
.∫∫® ©

MainWindow∫∫© ≥
)∫∫≥ ¥
;∫∫¥ µ
MainMenu
ªª 
mainMenuPage
ªª )
=
ªª* +
new
ªª, /
MainMenu
ªª0 8
(
ªª8 9
)
ªª9 :
;
ªª: ;
this
ºº 
.
ºº 
NavigationService
ºº *
.
ºº* +
Navigate
ºº+ 3
(
ºº3 4
mainMenuPage
ºº4 @
)
ºº@ A
;
ººA B
NavigationService
ΩΩ %
.
ΩΩ% &
RemoveBackEntry
ΩΩ& 5
(
ΩΩ5 6
)
ΩΩ6 7
;
ΩΩ7 8
}
ææ 
else
øø 
{
¿¿ 
dialogMessage
¡¡ !
=
¡¡" #
new
¡¡$ '&
ErrorMessageDialogWindow
¡¡( @
(
¡¡@ A

Properties
¡¡A K
.
¡¡K L
	Resources
¡¡L U
.
¡¡U V
txbErrorTitle
¡¡V c
,
¡¡c d

Properties
¡¡e o
.
¡¡o p
	Resources
¡¡p y
.
¡¡y z!
lblWrongUpdateName¡¡z å
,¡¡å ç
Application¡¡é ô
.¡¡ô ö
Current¡¡ö °
.¡¡° ¢

MainWindow¡¡¢ ¨
)¡¡¨ ≠
;¡¡≠ Æ
}
¬¬ 
useManagerProxy
√√ 
.
√√  
Close
√√  %
(
√√% &
)
√√& '
;
√√' (
}
ƒƒ 
catch
≈≈ 
(
≈≈ '
EndpointNotFoundException
≈≈ ,
ex
≈≈- /
)
≈≈/ 0
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
««j k!
lblEndPointNotFound
««k ~
)
««~ 
;«« Ä
}
»» 
catch
…… 
(
…… 1
#CommunicationObjectFaultedException
…… 6
ex
……7 9
)
……9 :
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
ÀÀj k'
lblComunicationExceptionÀÀk É
)ÀÀÉ Ñ
;ÀÀÑ Ö
}
ÃÃ 
catch
ÕÕ 
(
ÕÕ 
TimeoutException
ÕÕ #
ex
ÕÕ$ &
)
ÕÕ& '
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
œœ8 9 
lblWrongUpdateName
œœ9 K
+
œœL M
$str
œœN S
+
œœT U

Properties
œœV `
.
œœ` a
	Resources
œœa j
.
œœj k
lblTimeException
œœk {
)
œœ{ |
;
œœ| }
}
–– 
catch
—— 
(
—— $
CommunicationException
—— )
ex
——* ,
)
——, -
{
““ 
HandleException
”” 
(
””  
ex
””  "
,
””" #

Properties
””# -
.
””- .
	Resources
””. 7
.
””7 8 
lblWrongUpdateName
””8 J
+
””K L
$str
””M R
+
””S T

Properties
””U _
.
””_ `
	Resources
””` i
.
””i j!
lblWithoutConection
””j }
)
””} ~
;
””~ 
}
‘‘ 
catch
’’ 
(
’’ 
SocketException
’’ "
ex
’’# %
)
’’% &
{
÷÷ 
HandleException
◊◊ 
(
◊◊  
ex
◊◊  "
,
◊◊" #

Properties
◊◊$ .
.
◊◊. /
	Resources
◊◊/ 8
.
◊◊8 9"
lblWrongUpdateAvatar
◊◊9 M
+
◊◊N O
$str
◊◊P U
+
◊◊V W

Properties
◊◊X b
.
◊◊b c
	Resources
◊◊c l
.
◊◊l m"
lblWithoutConection◊◊m Ä
)◊◊Ä Å
;◊◊Å Ç
}
ÿÿ 
}
ŸŸ 	
private
⁄⁄ 
int
⁄⁄ %
CheckEmailAddressFormat
⁄⁄ +
(
⁄⁄+ ,
)
⁄⁄, -
{
€€ 	'
RegularExpressionsLibrary
‹‹ %
regexInstance
‹‹& 3
=
‹‹4 5
new
‹‹6 9'
RegularExpressionsLibrary
‹‹: S
(
‹‹S T
)
‹‹T U
;
‹‹U V
Regex
›› 
regexExpression
›› !
=
››" #
new
››$ '
Regex
››( -
(
››- .
regexInstance
››. ;
.
››; <!
GetEMAIL_RULES_CHAR
››< O
(
››O P
)
››P Q
)
››Q R
;
››R S
int
ﬁﬁ 
answer
ﬁﬁ 
;
ﬁﬁ 
String
ﬂﬂ 
email
ﬂﬂ 
=
ﬂﬂ 
txbEditEmail
ﬂﬂ '
.
ﬂﬂ' (
Text
ﬂﬂ( ,
.
ﬂﬂ, -
Trim
ﬂﬂ- 1
(
ﬂﬂ1 2
)
ﬂﬂ2 3
;
ﬂﬂ3 4
if
‡‡ 
(
‡‡ 
!
‡‡ 
regexExpression
‡‡  
.
‡‡  !
IsMatch
‡‡! (
(
‡‡( )
email
‡‡) .
)
‡‡. /
)
‡‡/ 0
{
·· 
lblEmailWarning
‚‚ 
.
‚‚  
Content
‚‚  '
=
‚‚( )

Properties
‚‚* 4
.
‚‚4 5
	Resources
‚‚5 >
.
‚‚> ?
lblInvalidEmail
‚‚? N
;
‚‚N O
lblEmailWarning
„„ 
.
„„  

Visibility
„„  *
=
„„+ ,

Visibility
„„- 7
.
„„7 8
Visible
„„8 ?
;
„„? @
answer
‰‰ 
=
‰‰ 
DISALLOWED_VALUES
‰‰ *
;
‰‰* +
}
ÂÂ 
else
ÊÊ 
{
ÁÁ 
lblEmailWarning
ËË 
.
ËË  
Content
ËË  '
=
ËË( )
string
ËË* 0
.
ËË0 1
Empty
ËË1 6
;
ËË6 7
lblEmailWarning
ÈÈ 
.
ÈÈ  

Visibility
ÈÈ  *
=
ÈÈ+ ,

Visibility
ÈÈ- 7
.
ÈÈ7 8
	Collapsed
ÈÈ8 A
;
ÈÈA B
answer
ÍÍ 
=
ÍÍ 
ALLOWED_VALUES
ÍÍ '
;
ÍÍ' (
}
ÎÎ 
return
ÏÏ 
answer
ÏÏ 
;
ÏÏ 
}
ÌÌ 	
private
ÓÓ 
int
ÓÓ !
CheckEmailExistence
ÓÓ '
(
ÓÓ' (
string
ÓÓ( .
email
ÓÓ/ 4
)
ÓÓ4 5
{
ÔÔ 	
try
 
{
ÒÒ )
ValidateUserExistanceClient
ÚÚ +
dataCheckerProxy
ÚÚ, <
=
ÚÚ= >
new
ÚÚ? B
(
ÚÚB C
)
ÚÚC D
;
ÚÚD E
GenericClassOfint
ÛÛ !
	userIsNew
ÛÛ" +
=
ÛÛ, -
dataCheckerProxy
ÛÛ. >
.
ÛÛ> ?
EmailAlreadyExist
ÛÛ? P
(
ÛÛP Q
email
ÛÛQ V
)
ÛÛV W
;
ÛÛW X
dataCheckerProxy
ÙÙ  
.
ÙÙ  !
Close
ÙÙ! &
(
ÙÙ& '
)
ÙÙ' (
;
ÙÙ( )
if
ıı 
(
ıı 
	userIsNew
ıı 
.
ıı 
	CodeEvent
ıı '
==
ıı( *!
ExceptionDictionary
ıı+ >
.
ıı> ?
SUCCESFULL_EVENT
ıı? O
||
ııP R
	userIsNew
ııS \
.
ıı\ ]
	CodeEvent
ıı] f
==
ııg i!
ExceptionDictionary
ııj }
.
ıı} ~!
UNSUCCESFULL_EVENTıı~ ê
)ııê ë
{
ˆˆ 
if
˜˜ 
(
˜˜ 
	userIsNew
˜˜ !
.
˜˜! "
ObjectSaved
˜˜" -
==
˜˜. 0
ALLOWED_VALUES
˜˜1 ?
)
˜˜? @
{
¯¯ 
return
˘˘ 
ALLOWED_VALUES
˘˘ -
;
˘˘- .
}
˙˙ 
else
˚˚ 
{
¸¸ 
if
˝˝ 
(
˝˝ 
	userIsNew
˝˝ %
.
˝˝% &
ObjectSaved
˝˝& 1
==
˝˝2 4!
ExceptionDictionary
˝˝5 H
.
˝˝H I!
EMAIL_ALREADY_EXIST
˝˝I \
)
˝˝\ ]
{
˛˛ 
dialogMessage
ˇˇ )
=
ˇˇ* +
new
ˇˇ, /&
ErrorMessageDialogWindow
ˇˇ0 H
(
ˇˇH I

Properties
ˇˇI S
.
ˇˇS T
	Resources
ˇˇT ]
.
ˇˇ] ^
txbErrorTitle
ˇˇ^ k
,
ˇˇk l

Properties
ˇˇm w
.
ˇˇw x
	Resourcesˇˇx Å
.ˇˇÅ Ç 
lblRepeatedEmailˇˇÇ í
,ˇˇí ì
Applicationˇˇî ü
.ˇˇü †
Currentˇˇ† ß
.ˇˇß ®

MainWindowˇˇ® ≤
)ˇˇ≤ ≥
;ˇˇ≥ ¥
}
ÄÄ 
else
ÅÅ 
if
ÅÅ 
(
ÅÅ  !
	userIsNew
ÅÅ! *
.
ÅÅ* +
ObjectSaved
ÅÅ+ 6
==
ÅÅ7 9!
ExceptionDictionary
ÅÅ: M
.
ÅÅM N$
USERNAME_ALREADY_EXIST
ÅÅN d
)
ÅÅd e
{
ÇÇ 
dialogMessage
ÉÉ )
=
ÉÉ* +
new
ÉÉ, /&
ErrorMessageDialogWindow
ÉÉ0 H
(
ÉÉH I

Properties
ÉÉI S
.
ÉÉS T
	Resources
ÉÉT ]
.
ÉÉ] ^
txbErrorTitle
ÉÉ^ k
,
ÉÉk l

Properties
ÉÉm w
.
ÉÉw x
	ResourcesÉÉx Å
.ÉÉÅ Ç#
lblRepeatedUserNameÉÉÇ ï
,ÉÉï ñ
ApplicationÉÉó ¢
.ÉÉ¢ £
CurrentÉÉ£ ™
.ÉÉ™ ´

MainWindowÉÉ´ µ
)ÉÉµ ∂
;ÉÉ∂ ∑
}
ÑÑ 
else
ÖÖ 
{
ÜÜ 
CloseWindow
áá '
(
áá' (
)
áá( )
;
áá) *
dialogMessage
àà )
=
àà* +
new
àà, /&
ErrorMessageDialogWindow
àà0 H
(
ààH I

Properties
ààI S
.
ààS T
	Resources
ààT ]
.
àà] ^
txbErrorTitle
àà^ k
,
ààk l

Properties
ààm w
.
ààw x
	Resourcesààx Å
.ààÅ Ç$
lblWrongEmailRepitedààÇ ñ
,ààñ ó
Applicationààò £
.àà£ §
Currentàà§ ´
.àà´ ¨

MainWindowàà¨ ∂
)àà∂ ∑
;àà∑ ∏
}
ââ 
return
ää 
DISALLOWED_VALUES
ää 0
;
ää0 1
}
ãã 
}
åå 
else
çç 
{
éé 
return
èè 
DISALLOWED_VALUES
èè ,
;
èè, -
}
êê 
}
ëë 
catch
íí 
(
íí '
EndpointNotFoundException
íí ,
)
íí, -
{
ìì 
throw
îî 
new
îî '
EndpointNotFoundException
îî 3
(
îî3 4
)
îî4 5
;
îî5 6
}
ïï 
catch
ññ 
(
ññ 1
#CommunicationObjectFaultedException
ññ 6
)
ññ6 7
{
óó 
throw
òò 
new
òò $
CommunicationException
òò 0
(
òò0 1
)
òò1 2
;
òò2 3
}
ôô 
catch
öö 
(
öö 
TimeoutException
öö #
)
öö# $
{
õõ 
throw
úú 
new
úú 
TimeoutException
úú *
(
úú* +
)
úú+ ,
;
úú, -
}
ùù 
catch
ûû 
(
ûû $
CommunicationException
ûû )
)
ûû) *
{
üü 
throw
†† 
new
†† $
CommunicationException
†† 0
(
††0 1
)
††1 2
;
††2 3
}
°° 
catch
¢¢ 
(
¢¢ 
SocketException
¢¢ "
ex
¢¢# %
)
¢¢% &
{
££ 
throw
§§ 
new
§§ 
SocketException
§§ )
(
§§) *
)
§§* +
;
§§+ ,
}
•• 
}
¶¶ 	
private
®® 
void
®® "
ClickBackToMaminMenu
®® )
(
®®) *
object
®®* 0
sender
®®1 7
,
®®7 8"
MouseButtonEventArgs
®®9 M
e
®®N O
)
®®O P
{
©© 	
CloseWindow
™™ 
(
™™ 
)
™™ 
;
™™ 
}
´´ 	
private
¨¨ 
void
¨¨ 
CloseWindow
¨¨  
(
¨¨  !
)
¨¨! "
{
≠≠ 	
MainMenu
ÆÆ 
mainMenuPage
ÆÆ !
=
ÆÆ" #
new
ÆÆ$ '
MainMenu
ÆÆ( 0
(
ÆÆ0 1
)
ÆÆ1 2
;
ÆÆ2 3
this
ØØ 
.
ØØ 
NavigationService
ØØ "
.
ØØ" #
Navigate
ØØ# +
(
ØØ+ ,
mainMenuPage
ØØ, 8
)
ØØ8 9
;
ØØ9 :
NavigationService
∞∞ 
.
∞∞ 
RemoveBackEntry
∞∞ -
(
∞∞- .
)
∞∞. /
;
∞∞/ 0
}
±± 	
private
≥≥ 
void
≥≥ 
RefreshWindow
≥≥ "
(
≥≥" #
)
≥≥# $
{
¥¥ 	
EditUserProfile
µµ !
editUserProfilePage
µµ /
=
µµ0 1
new
µµ2 5
EditUserProfile
µµ6 E
(
µµE F
)
µµF G
;
µµG H
this
∂∂ 
.
∂∂ 
NavigationService
∂∂ "
.
∂∂" #
Navigate
∂∂# +
(
∂∂+ ,!
editUserProfilePage
∂∂, ?
)
∂∂? @
;
∂∂@ A
NavigationService
∑∑ 
.
∑∑ 
RemoveBackEntry
∑∑ -
(
∑∑- .
)
∑∑. /
;
∑∑/ 0
}
∏∏ 	
private
∫∫ 
void
∫∫ 
HandleException
∫∫ $
(
∫∫$ %
	Exception
∫∫% .
ex
∫∫/ 1
,
∫∫1 2
string
∫∫3 9
errorMessage
∫∫: F
)
∫∫F G
{
ªª 	%
ExceptionHandlerForLogs
ºº #
.
ºº# $
LogException
ºº$ 0
(
ºº0 1
ex
ºº1 3
,
ºº3 4!
ExceptionDictionary
ºº5 H
.
ººH I
FATAL_EXCEPTION
ººI X
)
ººX Y
;
ººY Z
dialogMessage
ΩΩ 
=
ΩΩ 
new
ΩΩ &
ErrorMessageDialogWindow
ΩΩ  8
(
ΩΩ8 9

Properties
ΩΩ9 C
.
ΩΩC D
	Resources
ΩΩD M
.
ΩΩM N
txbErrorTitle
ΩΩN [
,
ΩΩ[ \
errorMessage
ΩΩ] i
,
ΩΩi j
Application
ΩΩk v
.
ΩΩv w
Current
ΩΩw ~
.
ΩΩ~ 

MainWindowΩΩ â
)ΩΩâ ä
;ΩΩä ã
CloseWindow
ææ 
(
ææ 
)
ææ 
;
ææ 
}
øø 	
private
¿¿ 
bool
¿¿ 
IsValidEmail
¿¿ !
(
¿¿! "
string
¿¿" (
email
¿¿) .
)
¿¿. /
{
¡¡ 	'
RegularExpressionsLibrary
¬¬ %
regexInstance
¬¬& 3
=
¬¬4 5
new
¬¬6 9'
RegularExpressionsLibrary
¬¬: S
(
¬¬S T
)
¬¬T U
;
¬¬U V
Regex
√√ 
regexExpression
√√ !
=
√√" #
new
√√$ '
Regex
√√( -
(
√√- .
regexInstance
√√. ;
.
√√; <!
GetEMAIL_RULES_CHAR
√√< O
(
√√O P
)
√√P Q
)
√√Q R
;
√√R S
return
ƒƒ 
regexExpression
ƒƒ "
.
ƒƒ" #
IsMatch
ƒƒ# *
(
ƒƒ* +
email
ƒƒ+ 0
)
ƒƒ0 1
;
ƒƒ1 2
}
≈≈ 	
}
«« 
}»» ‚∫
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
int%% #
ROOMCODE_DOES_NOT_EXIST%% 4
=%%5 6
$num%%7 8
;%%8 9
private&& 
readonly&& 
int&& 
	SUCCESFUL&& &
=&&' (
$num&&) *
;&&* +
public(( 
enterGameWithCode((  
(((  !
Window((! '
previousWindow((( 6
,((6 7
bool((8 <
isGuest((= D
)((D E
{)) 	
InitializeComponent** 
(**  
)**  !
;**! "
this++ 
.++ 
windowBehind++ 
=++ 
previousWindow++  .
;++. /
tbxCode,, 
.,, 
	MaxLength,, 
=,, 
$num,,  "
;,," #
if-- 
(-- 
!-- 
isGuest-- 
)-- 
{.. 
idUser// 
=// 
userSingleton// &
.//& '
IdUser//' -
;//- .
}00 
}11 	
private33 
void33 #
ClickEnterLobbyWithCode33 ,
(33, -
object33- 3
sender334 :
,33: ;
RoutedEventArgs33< K
e33L M
)33M N
{44 	
int55 
enteredCode55 
;55 
if66 
(66 
int66 
.66 
TryParse66 
(66 
tbxCode66 $
.66$ %
Text66% )
,66) *
out66+ .
enteredCode66/ :
)66: ;
)66; <
{77 
try88 
{99 )
LobbyCodeAuthenticationClient:: 1#
codeAuthenticationProxy::2 I
=::J K
new::L O)
LobbyCodeAuthenticationClient::P m
(::m n
)::n o
;::o p
GenericClassOfint;; %
isRoomActive;;& 2
=;;3 4#
codeAuthenticationProxy;;5 L
.;;L M
VerifyRoomCodeExist;;M `
(;;` a
enteredCode;;a l
,;;l m
idUser;;n t
);;t u
;;;u v
if<< 
(<< 
isRoomActive<< $
.<<$ %
	CodeEvent<<% .
==<</ 1
ExceptionDictionary<<2 E
.<<E F
SUCCESFULL_EVENT<<F V
||<<W Y
isRoomActive<<Z f
.<<f g
	CodeEvent<<g p
==<<q s 
ExceptionDictionary	<<t á
.
<<á à 
UNSUCCESFULL_EVENT
<<à ö
)
<<ö õ
{== 
if>> 
(>> 
isRoomActive>> '
.>>' (
ObjectSaved>>( 3
==>>4 6
	SUCCESFUL>>7 @
)>>@ A
{?? 
bool@@  
success@@! (
=@@) *
true@@+ /
;@@/ 0
ifAA 
(AA  
idUserAA  &
==AA' )
-AA* +
$numAA+ ,
)AA, -
{BB 
successCC  '
=CC( )'
GetPlayerAndUserInformationCC* E
(CCE F
enteredCodeCCF Q
)CCQ R
;CCR S
successDD  '
=DD( )$
SubscribeToLivingChannelDD* B
(DDB C
)DDC D
;DDD E
}EE 
ifFF 
(FF  
successFF  '
)FF' (
{GG 
GotoLobbyPageHH  -
(HH- .
enteredCodeHH. 9
)HH9 :
;HH: ;
}II 
}JJ 
elseKK 
ifKK 
(KK  
isRoomActiveKK  ,
.KK, -
ObjectSavedKK- 8
==KK9 ;
ROOMCODE_IS_FULLKK< L
)KKL M
{LL 
dialogMessageMM )
=MM* +
newMM, /$
ErrorMessageDialogWindowMM0 H
(MMH I

PropertiesMMI S
.MMS T
	ResourcesMMT ]
.MM] ^
txbErrorTitleMM^ k
,MMk l

PropertiesMMm w
.MMw x
	Resources	MMx Å
.
MMÅ Ç
LobbyIsFull
MMÇ ç
,
MMç é
Application
MMè ö
.
MMö õ
Current
MMõ ¢
.
MM¢ £

MainWindow
MM£ ≠
)
MM≠ Æ
;
MMÆ Ø
}NN 
elseOO 
ifOO 
(OO  
(OO  !
isRoomActiveOO! -
.OO- .
ObjectSavedOO. 9
==OO: <#
ROOMCODE_DOES_NOT_EXISTOO= T
)OOT U
)OOU V
{PP 
dialogMessageQQ )
=QQ* +
newQQ, /$
ErrorMessageDialogWindowQQ0 H
(QQH I

PropertiesQQI S
.QQS T
	ResourcesQQT ]
.QQ] ^
txbErrorTitleQQ^ k
,QQk l

PropertiesQQm w
.QQw x
	Resources	QQx Å
.
QQÅ Ç
LobbyNotExist
QQÇ è
,
QQè ê
Application
QQë ú
.
QQú ù
Current
QQù §
.
QQ§ •

MainWindow
QQ• Ø
)
QQØ ∞
;
QQ∞ ±
}RR 
}SS 
}TT 
catchUU 
(UU %
EndpointNotFoundExceptionUU 0
exUU1 3
)UU3 4
{VV 
HandleExceptionWW #
(WW# $
exWW$ &
,WW& '

PropertiesWW) 3
.WW3 4
	ResourcesWW4 =
.WW= >
lblEndPointNotFoundWW> Q
)WWQ R
;WWR S
WindowXX 
.XX 
	GetWindowXX $
(XX$ %
thisXX% )
)XX) *
.XX* +
CloseXX+ 0
(XX0 1
)XX1 2
;XX2 3
}YY 
catchZZ 
(ZZ /
#CommunicationObjectFaultedExceptionZZ :
exZZ; =
)ZZ= >
{[[ 
HandleException\\ #
(\\# $
ex\\$ &
,\\& '

Properties\\( 2
.\\2 3
	Resources\\3 <
.\\< =$
lblComunicationException\\= U
)\\U V
;\\V W
Window]] 
.]] 
	GetWindow]] $
(]]$ %
this]]% )
)]]) *
.]]* +
Close]]+ 0
(]]0 1
)]]1 2
;]]2 3
}^^ 
catch__ 
(__ 
TimeoutException__ '
ex__( *
)__* +
{`` 
HandleExceptionaa #
(aa# $
exaa$ &
,aa& '

Propertiesaa( 2
.aa2 3
	Resourcesaa3 <
.aa< =
lblTimeExceptionaa= M
)aaM N
;aaN O
Windowbb 
.bb 
	GetWindowbb $
(bb$ %
thisbb% )
)bb) *
.bb* +
Closebb+ 0
(bb0 1
)bb1 2
;bb2 3
}cc 
catchdd 
(dd "
CommunicationExceptiondd -
exdd. 0
)dd0 1
{ee 
HandleExceptionff #
(ff# $
exff$ &
,ff& '

Propertiesff( 2
.ff2 3
	Resourcesff3 <
.ff< =
lblWithoutConectionff= P
)ffP Q
;ffQ R
Windowgg 
.gg 
	GetWindowgg $
(gg$ %
thisgg% )
)gg) *
.gg* +
Closegg+ 0
(gg0 1
)gg1 2
;gg2 3
}hh 
catchii 
(ii 
SocketExceptionii &
exii' )
)ii) *
{jj 
HandleExceptionkk #
(kk# $
exkk$ &
,kk& '

Propertieskk( 2
.kk2 3
	Resourceskk3 <
.kk< =
lblWithoutConectionkk= P
)kkP Q
;kkQ R
Windowll 
.ll 
	GetWindowll $
(ll$ %
thisll% )
)ll) *
.ll* +
Closell+ 0
(ll0 1
)ll1 2
;ll2 3
}mm 
}nn 
elseoo 
{pp 
dialogMessageqq 
=qq 
newqq  #$
ErrorMessageDialogWindowqq$ <
(qq< =

Propertiesqq= G
.qqG H
	ResourcesqqH Q
.qqQ R
txbErrorTitleqqR _
,qq_ `

Propertiesqqa k
.qqk l
	Resourcesqql u
.qqu v
lblnvalidCode	qqv É
,
qqÉ Ñ
Application
qqÖ ê
.
qqê ë
Current
qqë ò
.
qqò ô

MainWindow
qqô £
)
qq£ §
;
qq§ •
}rr 
}ss 	
privateuu 
booluu '
GetPlayerAndUserInformationuu 0
(uu0 1
intuu1 4
enteredCodeuu5 @
)uu@ A
{vv 	
boolww 
isPlayerGuestActiveww $
=ww% &
falseww' ,
;ww, -
tryxx 
{yy $
GuestPlayerManagerClientzz (#
guestPlayerManagerProxyzz) @
=zzA B
newzzC F$
GuestPlayerManagerClientzzG _
(zz_ `
)zz` a
;zza b
var{{ 
	userGuest{{ 
={{ #
guestPlayerManagerProxy{{  7
.{{7 8
CreateUserForGuest{{8 J
({{J K
){{K L
;{{L M
if|| 
(|| 
	userGuest|| 
.|| 
	CodeEvent|| '
==||( *
ExceptionDictionary||+ >
.||> ?
SUCCESFULL_EVENT||? O
)||O P
{}} 
userForGuest~~  
=~~! "
	userGuest~~# ,
.~~, -
ObjectSaved~~- 8
;~~8 9(
ConsultUserInformationClient 0'
consultUserInformationProxy1 L
=M N
newO R
(R S
)S T
;T U
var
ÄÄ 
playerGuest
ÄÄ #
=
ÄÄ$ %)
consultUserInformationProxy
ÄÄ& A
.
ÄÄA B#
ConsultPlayerByIdUser
ÄÄB W
(
ÄÄW X
	userGuest
ÄÄX a
.
ÄÄa b
ObjectSaved
ÄÄb m
.
ÄÄm n
IdUser
ÄÄn t
)
ÄÄt u
;
ÄÄu v
if
ÅÅ 
(
ÅÅ 
playerGuest
ÅÅ #
.
ÅÅ# $
	CodeEvent
ÅÅ$ -
==
ÅÅ. 0!
ExceptionDictionary
ÅÅ1 D
.
ÅÅD E
SUCCESFULL_EVENT
ÅÅE U
)
ÅÅU V
{
ÇÇ 
UserSingleton
ÉÉ %
.
ÉÉ% &
CleanSingleton
ÉÉ& 4
(
ÉÉ4 5
)
ÉÉ5 6
;
ÉÉ6 7
UserSingleton
ÑÑ %
.
ÑÑ% &
GetMainUser
ÑÑ& 1
(
ÑÑ1 2
	userGuest
ÑÑ2 ;
.
ÑÑ; <
ObjectSaved
ÑÑ< G
,
ÑÑG H
playerGuest
ÑÑI T
.
ÑÑT U
ObjectSaved
ÑÑU `
)
ÑÑ` a
;
ÑÑa b!
isPlayerGuestActive
ÖÖ +
=
ÖÖ, -
true
ÖÖ. 2
;
ÖÖ2 3
}
ÜÜ 
}
çç 
else
éé 
{
èè 
dialogMessage
êê !
=
êê" #
new
êê$ '&
ErrorMessageDialogWindow
êê( @
(
êê@ A

Properties
êêA K
.
êêK L
	Resources
êêL U
.
êêU V
txbErrorTitle
êêV c
,
êêc d

Properties
êêe o
.
êêo p
	Resources
êêp y
.
êêy z'
lblFailToCreateGuestUserêêz í
,êêí ì
Applicationêêî ü
.êêü †
Currentêê† ß
.êêß ®

MainWindowêê® ≤
)êê≤ ≥
;êê≥ ¥
Window
ëë 
.
ëë 
	GetWindow
ëë $
(
ëë$ %
this
ëë% )
)
ëë) *
.
ëë* +
Close
ëë+ 0
(
ëë0 1
)
ëë1 2
;
ëë2 3
}
íí 
}
ìì 
catch
îî 
(
îî '
EndpointNotFoundException
îî ,
ex
îî- /
)
îî/ 0
{
ïï 
HandleException
ññ 
(
ññ  
ex
ññ  "
,
ññ" #

Properties
ññ$ .
.
ññ. /
	Resources
ññ/ 8
.
ññ8 9!
lblEndPointNotFound
ññ9 L
+
ññM N
$str
ññO T
+
ññU V

Properties
ññW a
.
ñña b
	Resources
ññb k
.
ññk l'
lblFailToCreateGuestUserññl Ñ
)ññÑ Ö
;ññÖ Ü
Window
óó 
.
óó 
	GetWindow
óó  
(
óó  !
this
óó! %
)
óó% &
.
óó& '
Close
óó' ,
(
óó, -
)
óó- .
;
óó. /
}
òò 
catch
ôô 
(
ôô 1
#CommunicationObjectFaultedException
ôô 6
ex
ôô7 9
)
ôô9 :
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
õõ8 9&
lblComunicationException
õõ9 Q
+
õõR S
$str
õõT Y
+
õõZ [

Properties
õõ\ f
.
õõf g
	Resources
õõg p
.
õõp q'
lblFailToCreateGuestUserõõq â
)õõâ ä
;õõä ã
Window
úú 
.
úú 
	GetWindow
úú  
(
úú  !
this
úú! %
)
úú% &
.
úú& '
Close
úú' ,
(
úú, -
)
úú- .
;
úú. /
}
ùù 
catch
ûû 
(
ûû 
TimeoutException
ûû #
ex
ûû$ &
)
ûû& '
{
üü 
HandleException
†† 
(
††  
ex
††  "
,
††" #

Properties
††$ .
.
††. /
	Resources
††/ 8
.
††8 9
lblTimeException
††9 I
+
††J K
$str
††L Q
+
††R S

Properties
††T ^
.
††^ _
	Resources
††_ h
.
††h i'
lblFailToCreateGuestUser††i Å
)††Å Ç
;††Ç É
Window
°° 
.
°° 
	GetWindow
°°  
(
°°  !
this
°°! %
)
°°% &
.
°°& '
Close
°°' ,
(
°°, -
)
°°- .
;
°°. /
}
¢¢ 
catch
££ 
(
££ $
CommunicationException
££ )
ex
££* ,
)
££, -
{
§§ 
HandleException
•• 
(
••  
ex
••  "
,
••" #

Properties
••$ .
.
••. /
	Resources
••/ 8
.
••8 9!
lblWithoutConection
••9 L
+
••M N
$str
••O T
+
••U V

Properties
••W a
.
••a b
	Resources
••b k
.
••k l'
lblFailToCreateGuestUser••l Ñ
)••Ñ Ö
;••Ö Ü
Window
¶¶ 
.
¶¶ 
	GetWindow
¶¶  
(
¶¶  !
this
¶¶! %
)
¶¶% &
.
¶¶& '
Close
¶¶' ,
(
¶¶, -
)
¶¶- .
;
¶¶. /
}
ßß 
catch
®® 
(
®® 
SocketException
®® "
ex
®®# %
)
®®% &
{
©© 
HandleException
™™ 
(
™™  
ex
™™  "
,
™™" #

Properties
™™$ .
.
™™. /
	Resources
™™/ 8
.
™™8 9!
lblWithoutConection
™™9 L
)
™™L M
;
™™M N
Window
´´ 
.
´´ 
	GetWindow
´´  
(
´´  !
this
´´! %
)
´´% &
.
´´& '
Close
´´' ,
(
´´, -
)
´´- .
;
´´. /
}
¨¨ 
return
≠≠ !
isPlayerGuestActive
≠≠ &
;
≠≠& '
}
ÆÆ 	
private
∞∞ 
bool
∞∞ &
SubscribeToLivingChannel
∞∞ -
(
∞∞- .
)
∞∞. /
{
±± 	
try
≤≤ 
{
≥≥ 
InstanceContext
¥¥ 
context
¥¥  '
=
¥¥( )
new
¥¥* -
(
¥¥- .
this
¥¥. 2
)
¥¥2 3
;
¥¥3 4#
CheckUserLivingClient
µµ %#
checkUserLivingClient
µµ& ;
=
µµ< =
new
µµ> A
(
µµA B
context
µµB I
)
µµI J
;
µµJ K
int
∂∂ 
success
∂∂ 
=
∂∂ #
checkUserLivingClient
∂∂ 3
.
∂∂3 4)
SubscribeToICheckUserLiving
∂∂4 O
(
∂∂O P
userForGuest
∂∂P \
)
∂∂\ ]
;
∂∂] ^
if
∑∑ 
(
∑∑ 
success
∑∑ 
==
∑∑ !
ExceptionDictionary
∑∑ 1
.
∑∑1 2
SUCCESFULL_EVENT
∑∑2 B
)
∑∑B C
{
∏∏ 
return
ππ 
true
ππ 
;
ππ  
}
∫∫ 
else
ªª 
{
ºº 
dialogMessage
ΩΩ !
=
ΩΩ" #
new
ΩΩ$ '&
ErrorMessageDialogWindow
ΩΩ( @
(
ΩΩ@ A

Properties
ΩΩA K
.
ΩΩK L
	Resources
ΩΩL U
.
ΩΩU V
txbErrorTitle
ΩΩV c
,
ΩΩc d

Properties
ΩΩe o
.
ΩΩo p
	Resources
ΩΩp y
.
ΩΩy z(
lblFailRegistryToCallBackΩΩz ì
,ΩΩì î
ApplicationΩΩï †
.ΩΩ† °
CurrentΩΩ° ®
.ΩΩ® ©

MainWindowΩΩ© ≥
)ΩΩ≥ ¥
;ΩΩ¥ µ
Window
ææ 
.
ææ 
	GetWindow
ææ $
(
ææ$ %
this
ææ% )
)
ææ) *
.
ææ* +
Close
ææ+ 0
(
ææ0 1
)
ææ1 2
;
ææ2 3
return
øø 
false
øø  
;
øø  !
}
¿¿ 
}
¡¡ 
catch
¬¬ 
(
¬¬ '
EndpointNotFoundException
¬¬ ,
ex
¬¬- /
)
¬¬/ 0
{
√√ 
HandleException
ƒƒ 
(
ƒƒ  
ex
ƒƒ  "
,
ƒƒ" #

Properties
ƒƒ$ .
.
ƒƒ. /
	Resources
ƒƒ/ 8
.
ƒƒ8 9!
lblEndPointNotFound
ƒƒ9 L
+
ƒƒM N
$str
ƒƒO T
+
ƒƒU V

Properties
ƒƒW a
.
ƒƒa b
	Resources
ƒƒb k
.
ƒƒk l(
lblFailRegistryToCallBackƒƒl Ö
)ƒƒÖ Ü
;ƒƒÜ á
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
HandleException
»» 
(
»»  
ex
»»  "
,
»»" #

Properties
»»$ .
.
»». /
	Resources
»»/ 8
.
»»8 9&
lblComunicationException
»»9 Q
+
»»R S
$str
»»T Y
+
»»Z [

Properties
»»\ f
.
»»f g
	Resources
»»g p
.
»»p q(
lblFailRegistryToCallBack»»q ä
)»»ä ã
;»»ã å
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
HandleException
ÃÃ 
(
ÃÃ  
ex
ÃÃ  "
,
ÃÃ" #

Properties
ÃÃ$ .
.
ÃÃ. /
	Resources
ÃÃ/ 8
.
ÃÃ8 9
lblTimeException
ÃÃ9 I
+
ÃÃJ K
$str
ÃÃL Q
+
ÃÃR S

Properties
ÃÃT ^
.
ÃÃ^ _
	Resources
ÃÃ_ h
.
ÃÃh i(
lblFailRegistryToCallBackÃÃi Ç
)ÃÃÇ É
;ÃÃÉ Ñ
}
ÕÕ 
catch
ŒŒ 
(
ŒŒ $
CommunicationException
ŒŒ )
ex
ŒŒ* ,
)
ŒŒ, -
{
œœ 
HandleException
–– 
(
––  
ex
––  "
,
––" #

Properties
––$ .
.
––. /
	Resources
––/ 8
.
––8 9!
lblWithoutConection
––9 L
+
––M N
$str
––O T
+
––U V

Properties
––W a
.
––a b
	Resources
––b k
.
––k l(
lblFailRegistryToCallBack––l Ö
)––Ö Ü
;––Ü á
}
—— 
catch
““ 
(
““ 
SocketException
““ "
ex
““# %
)
““% &
{
”” 
HandleException
‘‘ 
(
‘‘  
ex
‘‘  "
,
‘‘" #

Properties
‘‘$ .
.
‘‘. /
	Resources
‘‘/ 8
.
‘‘8 9!
lblWithoutConection
‘‘9 L
+
‘‘M N
$str
‘‘O T
+
‘‘U V

Properties
‘‘W a
.
‘‘a b
	Resources
‘‘b k
.
‘‘k l(
lblFailRegistryToCallBack‘‘l Ö
)‘‘Ö Ü
;‘‘Ü á
}
’’ 
return
÷÷ 
false
÷÷ 
;
÷÷ 
}
◊◊ 	
private
⁄⁄ 
void
⁄⁄ 
GotoLobbyPage
⁄⁄ "
(
⁄⁄" #
int
⁄⁄# &
enteredCode
⁄⁄' 2
)
⁄⁄2 3
{
€€ 	
Views
‹‹ 
.
‹‹ 
PrincipalWindow
‹‹ !

gameWindow
‹‹" ,
=
‹‹- .
new
‹‹/ 2
Views
‹‹3 8
.
‹‹8 9
PrincipalWindow
‹‹9 H
(
‹‹H I
)
‹‹I J
;
‹‹J K
	LobbyPage
›› 
	lobbyPage
›› 
=
››  !
new
››" %
	LobbyPage
››& /
(
››/ 0
enteredCode
››0 ;
)
››; <
;
››< =

gameWindow
ﬁﬁ 
.
ﬁﬁ 
Show
ﬁﬁ 
(
ﬁﬁ 
)
ﬁﬁ 
;
ﬁﬁ 

gameWindow
ﬂﬂ 
.
ﬂﬂ 
contentFrame
ﬂﬂ #
.
ﬂﬂ# $
Navigate
ﬂﬂ$ ,
(
ﬂﬂ, -
	lobbyPage
ﬂﬂ- 6
)
ﬂﬂ6 7
;
ﬂﬂ7 8
windowBehind
‡‡ 
.
‡‡ 
Close
‡‡ 
(
‡‡ 
)
‡‡  
;
‡‡  !
Window
·· 
.
·· 
	GetWindow
·· 
(
·· 
this
·· !
)
··! "
.
··" #
Close
··# (
(
··( )
)
··) *
;
··* +
}
‚‚ 	
private
‰‰ 
void
‰‰ 

ClickClose
‰‰ 
(
‰‰  
object
‰‰  &
sender
‰‰' -
,
‰‰- ."
MouseButtonEventArgs
‰‰/ C
e
‰‰D E
)
‰‰E F
{
ÂÂ 	
Window
ÊÊ 
.
ÊÊ 
	GetWindow
ÊÊ 
(
ÊÊ 
this
ÊÊ !
)
ÊÊ! "
.
ÊÊ" #
Close
ÊÊ# (
(
ÊÊ( )
)
ÊÊ) *
;
ÊÊ* +
}
ÁÁ 	
public
ÈÈ 
bool
ÈÈ 
IsClientActive
ÈÈ "
(
ÈÈ" #
)
ÈÈ# $
{
ÍÍ 	
return
ÎÎ 
(
ÎÎ 
(
ÎÎ &
ICheckUserLivingCallback
ÎÎ -
)
ÎÎ- .
userSingleton
ÎÎ. ;
)
ÎÎ; <
.
ÎÎ< =
IsClientActive
ÎÎ= K
(
ÎÎK L
)
ÎÎL M
;
ÎÎM N
}
ÏÏ 	
private
ÓÓ 
void
ÓÓ 
HandleException
ÓÓ $
(
ÓÓ$ %
	Exception
ÓÓ% .
ex
ÓÓ/ 1
,
ÓÓ1 2
string
ÓÓ3 9
errorMessage
ÓÓ: F
)
ÓÓF G
{
ÔÔ 	%
ExceptionHandlerForLogs
 #
.
# $
LogException
$ 0
(
0 1
ex
1 3
,
3 4!
ExceptionDictionary
5 H
.
H I
FATAL_EXCEPTION
I X
)
X Y
;
Y Z
dialogMessage
ÒÒ 
=
ÒÒ 
new
ÒÒ &
ErrorMessageDialogWindow
ÒÒ  8
(
ÒÒ8 9

Properties
ÒÒ9 C
.
ÒÒC D
	Resources
ÒÒD M
.
ÒÒM N
txbErrorTitle
ÒÒN [
,
ÒÒ[ \
errorMessage
ÒÒ] i
,
ÒÒi j
Application
ÒÒk v
.
ÒÒv w
Current
ÒÒw ~
.
ÒÒ~ 

MainWindowÒÒ â
)ÒÒâ ä
;ÒÒä ã
}
ÚÚ 	
}
ıı 
}ˆˆ ±–
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
;??M N
ClickBackToMenu@@ 
(@@  
imgGoBackToMenu@@  /
,@@/ 0
new@@1 4 
MouseButtonEventArgs@@5 I
(@@I J
Mouse@@J O
.@@O P
PrimaryDevice@@P ]
,@@] ^
$num@@_ `
,@@` a
MouseButton@@b m
.@@m n
Left@@n r
)@@r s
)@@s t
;@@t u
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
;DDM N
ClickBackToMenuEE 
(EE  
imgGoBackToMenuEE  /
,EE/ 0
newEE1 4 
MouseButtonEventArgsEE5 I
(EEI J
MouseEEJ O
.EEO P
PrimaryDeviceEEP ]
,EE] ^
$numEE_ `
,EE` a
MouseButtonEEb m
.EEm n
LeftEEn r
)EEr s
)EEs t
;EEt u
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
;IIR S
ClickBackToMenuJJ 
(JJ  
imgGoBackToMenuJJ  /
,JJ/ 0
newJJ1 4 
MouseButtonEventArgsJJ5 I
(JJI J
MouseJJJ O
.JJO P
PrimaryDeviceJJP ]
,JJ] ^
$numJJ_ `
,JJ` a
MouseButtonJJb m
.JJm n
LeftJJn r
)JJr s
)JJs t
;JJt u
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
;NNJ K
ClickBackToMenuOO 
(OO  
imgGoBackToMenuOO  /
,OO/ 0
newOO1 4 
MouseButtonEventArgsOO5 I
(OOI J
MouseOOJ O
.OOO P
PrimaryDeviceOOP ]
,OO] ^
$numOO_ `
,OO` a
MouseButtonOOb m
.OOm n
LeftOOn r
)OOr s
)OOs t
;OOt u
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
;SSR S
ClickBackToMenuTT 
(TT  
imgGoBackToMenuTT  /
,TT/ 0
newTT1 4 
MouseButtonEventArgsTT5 I
(TTI J
MouseTTJ O
.TTO P
PrimaryDeviceTTP ]
,TT] ^
$numTT_ `
,TT` a
MouseButtonTTb m
.TTm n
LeftTTn r
)TTr s
)TTs t
;TTt u
}UU 
}VV 	
privateYY 
voidYY 
GetAllTablesYY !
(YY! "
)YY" #
{ZZ 	
try[[ 
{\\ 
UserSingleton]] 
userSingleton]] +
=]], -
UserSingleton]]. ;
.]]; <
GetMainUser]]< G
(]]G H
)]]H I
;]]I J
if^^ 
(^^ 
userSingleton^^ !
!=^^" $
null^^% )
)^^) *
{__ 
UserPojo`` 
userConsulted`` *
=``+ ,
new``- 0
UserPojo``1 9
(``9 :
)``: ;
{aa 
IdUserbb 
=bb  
userSingletonbb! .
.bb. /
IdUserbb/ 5
,bb5 6
EmailAddresscc $
=cc% &
userSingletoncc' 4
.cc4 5
Emailcc5 :
,cc: ;
Namedd 
=dd 
userSingletondd ,
.dd, -
Namedd- 1
,dd1 2
Passwordee  
=ee! "
userSingletonee# 0
.ee0 1
Passwordee1 9
,ee9 :
UserNameff  
=ff! "
userSingletonff# 0
.ff0 1
Nameff1 5
,ff5 6
}gg 
;gg  
ConsultFriendsClienthh (
friendManagerProxyhh) ;
=hh< =
newhh> A 
ConsultFriendsClienthhB V
(hhV W
)hhW X
;hhX Y
varii 
friendsConsultedii (
=ii) *
friendManagerProxyii+ =
.ii= >
GetUserFriendsii> L
(iiL M
userConsultediiM Z
)iiZ [
;ii[ \
ifjj 
(jj 
friendsConsultedjj (
.jj( )
	CodeEventjj) 2
==jj3 5
ExceptionDictionaryjj6 I
.jjI J
SUCCESFULL_EVENTjjJ Z
)jjZ [
{kk 
varll #
friendRequestsConsultedll 3
=ll4 5
friendManagerProxyll6 H
.llH I!
GetUserFriendRequestsllI ^
(ll^ _
userConsultedll_ l
)lll m
;llm n
ifmm 
(mm #
friendRequestsConsultedmm 3
.mm3 4
	CodeEventmm4 =
==mm> @
ExceptionDictionarymmA T
.mmT U
SUCCESFULL_EVENTmmU e
)mme f
{nn 
varoo  
otherPeopleConsultedoo  4
=oo5 6
friendManagerProxyoo7 I
.ooI J
GetUsersNotFriendsooJ \
(oo\ ]
userConsultedoo] j
)ooj k
;ook l
ifpp 
(pp   
otherPeopleConsultedpp  4
.pp4 5
	CodeEventpp5 >
==pp? A
ExceptionDictionaryppB U
.ppU V
SUCCESFULL_EVENTppV f
)ppf g
{qq 
friendsrr  '
=rr( )
friendsConsultedrr* :
.rr: ;
ObjectSavedrr; F
.rrF G
ToListrrG M
(rrM N
)rrN O
;rrO P
friendRequestsss  .
=ss/ 0#
friendRequestsConsultedss1 H
.ssH I
ObjectSavedssI T
.ssT U
ToListssU [
(ss[ \
)ss\ ]
;ss] ^
otherPeoplett  +
=tt, - 
otherPeopleConsultedtt. B
.ttB C
ObjectSavedttC N
.ttN O
ToListttO U
(ttU V
)ttV W
;ttW X
}uu 
elsevv  
{ww 
dialogMessagexx  -
=xx. /
newxx0 3$
ErrorMessageDialogWindowxx4 L
(xxL M

PropertiesxxM W
.xxW X
	ResourcesxxX a
.xxa b
txbErrorTitlexxb o
,xxo p

Propertiesxxq {
.xx{ |
	Resources	xx| Ö
.
xxÖ Ü!
lblWithoutConection
xxÜ ô
,
xxô ö
Application
xxõ ¶
.
xx¶ ß
Current
xxß Æ
.
xxÆ Ø

MainWindow
xxØ π
)
xxπ ∫
;
xx∫ ª
ClickBackToMenuyy  /
(yy/ 0
imgGoBackToMenuyy0 ?
,yy? @
newyyA D 
MouseButtonEventArgsyyE Y
(yyY Z
MouseyyZ _
.yy_ `
PrimaryDeviceyy` m
,yym n
$numyyo p
,yyp q
MouseButtonyyr }
.yy} ~
Left	yy~ Ç
)
yyÇ É
)
yyÉ Ñ
;
yyÑ Ö
}zz 
}{{ 
else|| 
{}} 
dialogMessage~~ )
=~~* +
new~~, /$
ErrorMessageDialogWindow~~0 H
(~~H I

Properties~~I S
.~~S T
	Resources~~T ]
.~~] ^
txbErrorTitle~~^ k
,~~k l

Properties~~m w
.~~w x
	Resources	~~x Å
.
~~Å Ç!
lblWithoutConection
~~Ç ï
,
~~ï ñ
Application
~~ó ¢
.
~~¢ £
Current
~~£ ™
.
~~™ ´

MainWindow
~~´ µ
)
~~µ ∂
;
~~∂ ∑
ClickBackToMenu +
(+ ,
imgGoBackToMenu, ;
,; <
new= @ 
MouseButtonEventArgsA U
(U V
MouseV [
.[ \
PrimaryDevice\ i
,i j
$numk l
,l m
MouseButtonn y
.y z
Leftz ~
)~ 
)	 Ä
;
Ä Å
}
ÄÄ 
}
ÅÅ 
else
ÇÇ 
{
ÉÉ 
dialogMessage
ÑÑ %
=
ÑÑ& '
new
ÑÑ( +&
ErrorMessageDialogWindow
ÑÑ, D
(
ÑÑD E

Properties
ÑÑE O
.
ÑÑO P
	Resources
ÑÑP Y
.
ÑÑY Z
txbErrorTitle
ÑÑZ g
,
ÑÑg h

Properties
ÑÑi s
.
ÑÑs t
	Resources
ÑÑt }
.
ÑÑ} ~&
lblFailToRecoverFriendsÑÑ~ ï
,ÑÑï ñ
ApplicationÑÑó ¢
.ÑÑ¢ £
CurrentÑÑ£ ™
.ÑÑ™ ´

MainWindowÑÑ´ µ
)ÑÑµ ∂
;ÑÑ∂ ∑
ClickBackToMenu
ÖÖ '
(
ÖÖ' (
imgGoBackToMenu
ÖÖ( 7
,
ÖÖ7 8
new
ÖÖ9 <"
MouseButtonEventArgs
ÖÖ= Q
(
ÖÖQ R
Mouse
ÖÖR W
.
ÖÖW X
PrimaryDevice
ÖÖX e
,
ÖÖe f
$num
ÖÖg h
,
ÖÖh i
MouseButton
ÖÖj u
.
ÖÖu v
Left
ÖÖv z
)
ÖÖz {
)
ÖÖ{ |
;
ÖÖ| }
}
ÜÜ  
friendManagerProxy
áá &
.
áá& '
Close
áá' ,
(
áá, -
)
áá- .
;
áá. /
}
àà 
else
ââ 
{
ää 
dialogMessage
ãã !
=
ãã" #
new
ãã$ '&
ErrorMessageDialogWindow
ãã( @
(
ãã@ A

Properties
ããA K
.
ããK L
	Resources
ããL U
.
ããU V
txbErrorTitle
ããV c
,
ããc d

Properties
ããe o
.
ãão p
	Resources
ããp y
.
ããy z"
lblWithoutConectionããz ç
,ããç é
Applicationããè ö
.ããö õ
Currentããõ ¢
.ãã¢ £

MainWindowãã£ ≠
)ãã≠ Æ
;ããÆ Ø
ClickBackToMenu
åå #
(
åå# $
imgGoBackToMenu
åå$ 3
,
åå3 4
new
åå5 8"
MouseButtonEventArgs
åå9 M
(
ååM N
Mouse
ååN S
.
ååS T
PrimaryDevice
ååT a
,
ååa b
$num
ååc d
,
ååd e
MouseButton
ååf q
.
ååq r
Left
åår v
)
ååv w
)
ååw x
;
ååx y
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
ëëM N
ClickBackToMenu
íí 
(
íí  
imgGoBackToMenu
íí  /
,
íí/ 0
new
íí1 4"
MouseButtonEventArgs
íí5 I
(
ííI J
Mouse
ííJ O
.
ííO P
PrimaryDevice
ííP ]
,
íí] ^
$num
íí_ `
,
íí` a
MouseButton
ííb m
.
íím n
Left
íín r
)
íír s
)
íís t
;
íít u
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
HandleException
ññ 
(
ññ  
ex
ññ  "
,
ññ" #

Properties
ññ$ .
.
ññ. /
	Resources
ññ/ 8
.
ññ8 9&
lblComunicationException
ññ9 Q
)
ññQ R
;
ññR S
ClickBackToMenu
óó 
(
óó  
imgGoBackToMenu
óó  /
,
óó/ 0
new
óó1 4"
MouseButtonEventArgs
óó5 I
(
óóI J
Mouse
óóJ O
.
óóO P
PrimaryDevice
óóP ]
,
óó] ^
$num
óó_ `
,
óó` a
MouseButton
óób m
.
óóm n
Left
óón r
)
óór s
)
óós t
;
óót u
}
òò 
catch
ôô 
(
ôô 
TimeoutException
ôô #
ex
ôô$ &
)
ôô& '
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
õõ8 9
lblTimeException
õõ9 I
)
õõI J
;
õõJ K
ClickBackToMenu
úú 
(
úú  
imgGoBackToMenu
úú  /
,
úú/ 0
new
úú1 4"
MouseButtonEventArgs
úú5 I
(
úúI J
Mouse
úúJ O
.
úúO P
PrimaryDevice
úúP ]
,
úú] ^
$num
úú_ `
,
úú` a
MouseButton
úúb m
.
úúm n
Left
úún r
)
úúr s
)
úús t
;
úút u
}
ùù 
catch
ûû 
(
ûû $
CommunicationException
ûû )
ex
ûû* ,
)
ûû, -
{
üü 
HandleException
†† 
(
††  
ex
††  "
,
††" #

Properties
††$ .
.
††. /
	Resources
††/ 8
.
††8 9&
lblComunicationException
††9 Q
)
††Q R
;
††R S
ClickBackToMenu
°° 
(
°°  
imgGoBackToMenu
°°  /
,
°°/ 0
new
°°1 4"
MouseButtonEventArgs
°°5 I
(
°°I J
Mouse
°°J O
.
°°O P
PrimaryDevice
°°P ]
,
°°] ^
$num
°°_ `
,
°°` a
MouseButton
°°b m
.
°°m n
Left
°°n r
)
°°r s
)
°°s t
;
°°t u
}
¢¢ 
catch
££ 
(
££ 
SocketException
££ "
ex
££# %
)
££% &
{
§§ 
HandleException
•• 
(
••  
ex
••  "
,
••" #

Properties
••$ .
.
••. /
	Resources
••/ 8
.
••8 9&
lblComunicationException
••9 Q
)
••Q R
;
••R S
ClickBackToMenu
¶¶ 
(
¶¶  
imgGoBackToMenu
¶¶  /
,
¶¶/ 0
new
¶¶1 4"
MouseButtonEventArgs
¶¶5 I
(
¶¶I J
Mouse
¶¶J O
.
¶¶O P
PrimaryDevice
¶¶P ]
,
¶¶] ^
$num
¶¶_ `
,
¶¶` a
MouseButton
¶¶b m
.
¶¶m n
Left
¶¶n r
)
¶¶r s
)
¶¶s t
;
¶¶t u
}
ßß 
}
®® 	
private
™™ 
void
™™ 
SetCards
™™ 
(
™™ 
)
™™ 
{
´´ 	#
stpFrinedsManagerList
¨¨ !
.
¨¨! "
Children
¨¨" *
.
¨¨* +
Clear
¨¨+ 0
(
¨¨0 1
)
¨¨1 2
;
¨¨2 3
List
≠≠ 
<
≠≠ $
FriendBasicInformation
≠≠ '
>
≠≠' (
listOfUsers
≠≠) 4
;
≠≠4 5
switch
ÆÆ 
(
ÆÆ 
typeUserConsult
ÆÆ #
)
ÆÆ# $
{
ØØ 
case
∞∞ 

MY_FRIENDS
∞∞ 
:
∞∞  
listOfUsers
±± 
=
±±  !
new
±±" %
List
±±& *
<
±±* +$
FriendBasicInformation
±±+ A
>
±±A B
(
±±B C
friends
±±C J
)
±±J K
;
±±K L
break
≤≤ 
;
≤≤ 
case
≥≥ 
FRIENDS_REQUEST
≥≥ $
:
≥≥$ %
listOfUsers
¥¥ 
=
¥¥  !
new
¥¥" %
List
¥¥& *
<
¥¥* +$
FriendBasicInformation
¥¥+ A
>
¥¥A B
(
¥¥B C
friendRequests
¥¥C Q
)
¥¥Q R
;
¥¥R S
break
µµ 
;
µµ 
case
∂∂ 
OTHER_PEOPLE
∂∂ !
:
∂∂! "
listOfUsers
∑∑ 
=
∑∑  !
new
∑∑" %
List
∑∑& *
<
∑∑* +$
FriendBasicInformation
∑∑+ A
>
∑∑A B
(
∑∑B C
otherPeople
∑∑C N
)
∑∑N O
;
∑∑O P
break
∏∏ 
;
∏∏ 
default
ππ 
:
ππ 
listOfUsers
∫∫ 
=
∫∫  !
new
∫∫" %
List
∫∫& *
<
∫∫* +$
FriendBasicInformation
∫∫+ A
>
∫∫A B
(
∫∫B C
)
∫∫C D
;
∫∫D E
break
ªª 
;
ªª 
}
ºº 
foreach
ΩΩ 
(
ΩΩ 
var
ΩΩ 
item
ΩΩ 
in
ΩΩ  
listOfUsers
ΩΩ! ,
)
ΩΩ, -
{
ææ 
Border
øø 
brdCard
øø 
=
øø  
new
øø! $
Border
øø% +
(
øø+ ,
)
øø, -
;
øø- .(
FriendCardManagementWindow
¿¿ *"
friendCardManagement
¿¿+ ?
=
¿¿@ A
new
¿¿B E(
FriendCardManagementWindow
¿¿F `
(
¿¿` a
item
¿¿a e
.
¿¿e f
IdUser
¿¿f l
,
¿¿l m
item
¿¿n r
.
¿¿r s
UserName
¿¿s {
,
¿¿{ |
typeUserConsult¿¿} å
,¿¿å ç
textLeftButton¿¿é ú
,¿¿ú ù
textRightButton¿¿û ≠
,¿¿≠ Æ
this¿¿Ø ≥
)¿¿≥ ¥
;¿¿¥ µ
brdCard
¡¡ 
.
¡¡ 
Child
¡¡ 
=
¡¡ "
friendCardManagement
¡¡  4
;
¡¡4 5#
stpFrinedsManagerList
¬¬ %
.
¬¬% &
Children
¬¬& .
.
¬¬. /
Add
¬¬/ 2
(
¬¬2 3 
SetBorderCardStyle
¬¬3 E
(
¬¬E F
brdCard
¬¬F M
)
¬¬M N
)
¬¬N O
;
¬¬O P
}
√√ 
}
ƒƒ 	
private
«« 
Border
««  
SetBorderCardStyle
«« )
(
««) *
Border
««* 0
brdCard
««1 8
)
««8 9
{
»» 	
brdCard
…… 
.
…… 

Background
…… 
=
……  
new
……! $
SolidColorBrush
……% 4
(
……4 5
(
……5 6
Color
……6 ;
)
……; <
ColorConverter
……< J
.
……J K
ConvertFromString
……K \
(
……\ ]
$str
……] f
)
……f g
)
……g h
;
……h i
brdCard
   
.
   

Background
   
.
   
Opacity
   &
=
  ' (
$num
  ) -
;
  - .
brdCard
ÀÀ 
.
ÀÀ 
CornerRadius
ÀÀ  
=
ÀÀ! "
new
ÀÀ# &
CornerRadius
ÀÀ' 3
(
ÀÀ3 4
$num
ÀÀ4 6
)
ÀÀ6 7
;
ÀÀ7 8
brdCard
ÃÃ 
.
ÃÃ 
Margin
ÃÃ 
=
ÃÃ 
new
ÃÃ  
	Thickness
ÃÃ! *
(
ÃÃ* +
$num
ÃÃ+ -
,
ÃÃ- .
$num
ÃÃ/ 1
,
ÃÃ1 2
$num
ÃÃ3 4
,
ÃÃ4 5
$num
ÃÃ6 8
)
ÃÃ8 9
;
ÃÃ9 :
brdCard
ÕÕ 
.
ÕÕ 
Width
ÕÕ 
=
ÕÕ 
$num
ÕÕ  
;
ÕÕ  !
brdCard
ŒŒ 
.
ŒŒ 
MaxWidth
ŒŒ 
=
ŒŒ 
$num
ŒŒ #
;
ŒŒ# $
brdCard
œœ 
.
œœ 
Height
œœ 
=
œœ 
$num
œœ 
;
œœ  
brdCard
–– 
.
–– !
HorizontalAlignment
–– '
=
––( )!
HorizontalAlignment
––* =
.
––= >
Left
––> B
;
––B C
return
—— 
brdCard
—— 
;
—— 
}
““ 	
private
‘‘ 
void
‘‘ #
ClickConsultMyFriends
‘‘ *
(
‘‘* +
object
‘‘+ 1
sender
‘‘2 8
,
‘‘8 9"
MouseButtonEventArgs
‘‘: N
e
‘‘O P
)
‘‘P Q
{
’’ 	
typeUserConsult
÷÷ 
=
÷÷ 

MY_FRIENDS
÷÷ (
;
÷÷( )
textLeftButton
◊◊ 
=
◊◊ 

Properties
◊◊ '
.
◊◊' (
	Resources
◊◊( 1
.
◊◊1 2
	bttReport
◊◊2 ;
;
◊◊; <
textRightButton
ÿÿ 
=
ÿÿ 

Properties
ÿÿ (
.
ÿÿ( )
	Resources
ÿÿ) 2
.
ÿÿ2 3
bttEliminate
ÿÿ3 ?
;
ÿÿ? @
SelectLabel
ŸŸ 
(
ŸŸ 
lblMyFriends
ŸŸ $
)
ŸŸ$ %
;
ŸŸ% &
if
⁄⁄ 
(
⁄⁄ 
friends
⁄⁄ 
==
⁄⁄ 
null
⁄⁄ 
)
⁄⁄  
{
€€ 
GetAllTables
‹‹ 
(
‹‹ 
)
‹‹ 
;
‹‹ 
}
›› 
SetCards
ﬁﬁ 
(
ﬁﬁ 
)
ﬁﬁ 
;
ﬁﬁ 
}
ﬂﬂ 	
private
·· 
void
·· +
ClickConsultFriendSolicitudes
·· 2
(
··2 3
object
··3 9
sender
··: @
,
··@ A"
MouseButtonEventArgs
··B V
e
··W X
)
··X Y
{
‚‚ 	
typeUserConsult
„„ 
=
„„ 
FRIENDS_REQUEST
„„ -
;
„„- .
textLeftButton
‰‰ 
=
‰‰ 

Properties
‰‰ '
.
‰‰' (
	Resources
‰‰( 1
.
‰‰1 2$
bttAcceptFriendRequest
‰‰2 H
;
‰‰H I
textRightButton
ÂÂ 
=
ÂÂ 

Properties
ÂÂ (
.
ÂÂ( )
	Resources
ÂÂ) 2
.
ÂÂ2 3%
bttDeclineFriendRequest
ÂÂ3 J
;
ÂÂJ K
SelectLabel
ÊÊ 
(
ÊÊ 
lblRequests
ÊÊ #
)
ÊÊ# $
;
ÊÊ$ %
if
ÁÁ 
(
ÁÁ 
friendRequests
ÁÁ 
==
ÁÁ !
null
ÁÁ" &
)
ÁÁ& '
{
ËË 
GetAllTables
ÈÈ 
(
ÈÈ 
)
ÈÈ 
;
ÈÈ 
}
ÍÍ 
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
ÓÓ $
ClickConsultMorePeople
ÓÓ +
(
ÓÓ+ ,
object
ÓÓ, 2
sender
ÓÓ3 9
,
ÓÓ9 :"
MouseButtonEventArgs
ÓÓ; O
e
ÓÓP Q
)
ÓÓQ R
{
ÔÔ 	
typeUserConsult
 
=
 
OTHER_PEOPLE
 *
;
* +
textLeftButton
ÒÒ 
=
ÒÒ 

Properties
ÒÒ '
.
ÒÒ' (
	Resources
ÒÒ( 1
.
ÒÒ1 2
bttAddFriend
ÒÒ2 >
;
ÒÒ> ?
textRightButton
ÚÚ 
=
ÚÚ 

Properties
ÚÚ (
.
ÚÚ( )
	Resources
ÚÚ) 2
.
ÚÚ2 3
	bttReport
ÚÚ3 <
;
ÚÚ< =
SelectLabel
ÛÛ 
(
ÛÛ 
lblMorePeople
ÛÛ %
)
ÛÛ% &
;
ÛÛ& '
if
ÙÙ 
(
ÙÙ 
otherPeople
ÙÙ 
==
ÙÙ 
null
ÙÙ #
)
ÙÙ# $
{
ıı 
GetAllTables
ˆˆ 
(
ˆˆ 
)
ˆˆ 
;
ˆˆ 
}
˜˜ 
SetCards
¯¯ 
(
¯¯ 
)
¯¯ 
;
¯¯ 
}
˘˘ 	
private
˚˚ 
void
˚˚ 
SelectLabel
˚˚  
(
˚˚  !
Label
˚˚! &
selectedLabel
˚˚' 4
)
˚˚4 5
{
¸¸ 	
lblMyFriends
˝˝ 
.
˝˝ 
FontSize
˝˝ !
=
˝˝" #
$num
˝˝$ &
;
˝˝& '
lblMyFriends
˛˛ 
.
˛˛ 

Foreground
˛˛ #
=
˛˛$ %
new
˛˛& )
SolidColorBrush
˛˛* 9
(
˛˛9 :
Colors
˛˛: @
.
˛˛@ A
White
˛˛A F
)
˛˛F G
;
˛˛G H
lblRequests
ˇˇ 
.
ˇˇ 
FontSize
ˇˇ  
=
ˇˇ! "
$num
ˇˇ# %
;
ˇˇ% &
lblRequests
ÄÄ 
.
ÄÄ 

Foreground
ÄÄ "
=
ÄÄ# $
new
ÄÄ% (
SolidColorBrush
ÄÄ) 8
(
ÄÄ8 9
Colors
ÄÄ9 ?
.
ÄÄ? @
White
ÄÄ@ E
)
ÄÄE F
;
ÄÄF G
lblMorePeople
ÅÅ 
.
ÅÅ 
FontSize
ÅÅ "
=
ÅÅ# $
$num
ÅÅ% '
;
ÅÅ' (
lblMorePeople
ÇÇ 
.
ÇÇ 

Foreground
ÇÇ $
=
ÇÇ% &
new
ÇÇ' *
SolidColorBrush
ÇÇ+ :
(
ÇÇ: ;
Colors
ÇÇ; A
.
ÇÇA B
White
ÇÇB G
)
ÇÇG H
;
ÇÇH I
selectedLabel
ÉÉ 
.
ÉÉ 
FontSize
ÉÉ "
=
ÉÉ# $
$num
ÉÉ% '
;
ÉÉ' (
selectedLabel
ÑÑ 
.
ÑÑ 

Foreground
ÑÑ $
=
ÑÑ% &
new
ÑÑ' *
SolidColorBrush
ÑÑ+ :
(
ÑÑ: ;
Colors
ÑÑ; A
.
ÑÑA B
	LightGray
ÑÑB K
)
ÑÑK L
;
ÑÑL M
}
ÖÖ 	
public
áá 
void
áá 

ReportUser
áá 
(
áá 
int
áá "
idPlayer
áá# +
)
áá+ ,
{
àà 	
try
ââ 
{
ää (
FriendManagerActionsClient
ãã *(
friendActionsCallBackProxy
ãã+ E
=
ããF G
new
ããH K(
FriendManagerActionsClient
ããL f
(
ããf g
new
ããg j
InstanceContext
ããk z
(
ããz {
this
ãã{ 
)ãã Ä
)ããÄ Å
;ããÅ Ç(
friendActionsCallBackProxy
åå *
.
åå* +,
RenewFriendManagerUserCallBack
åå+ I
(
ååI J
userSingleton
ååJ W
.
ååW X
IdUser
ååX ^
)
åå^ _
;
åå_ `1
#FriendManagerActionOperationsClient
éé 3 
friendActionsProxy
éé4 F
=
ééG H
new
ééI L
(
ééL M
)
ééM N
;
ééN O
var
èè 
result
èè 
=
èè  
friendActionsProxy
èè /
.
èè/ 0
BanUser
èè0 7
(
èè7 8
idPlayer
èè8 @
,
èè@ A
userSingleton
èèB O
.
èèO P
IdUser
èèP V
)
èèV W
;
èèW X
if
êê 
(
êê 
result
êê 
.
êê 
	CodeEvent
êê $
==
êê% '!
ExceptionDictionary
êê( ;
.
êê; <
SUCCESFULL_EVENT
êê< L
)
êêL M
{
ëë 
dialogMessage
íí !
=
íí" #
new
íí$ ',
InformationMessageDialogWindow
íí( F
(
ííF G

Properties
ííG Q
.
ííQ R
	Resources
ííR [
.
íí[ \!
txbInformationTitle
íí\ o
,
íío p

Properties
ííq {
.
íí{ |
	Resourcesíí| Ö
.ííÖ Ü%
lblSuccesReportedUserííÜ õ
,ííõ ú
Applicationííù ®
.íí® ©
Currentíí© ∞
.íí∞ ±

MainWindowíí± ª
)ííª º
;ííº Ω
}
ìì 
else
îî 
{
ïï 
dialogMessage
ññ !
=
ññ" #
new
ññ$ '&
ErrorMessageDialogWindow
ññ( @
(
ññ@ A

Properties
ññA K
.
ññK L
	Resources
ññL U
.
ññU V
txbErrorTitle
ññV c
,
ññc d

Properties
ññe o
.
ñño p
	Resources
ññp y
.
ññy z#
lblFailToReportAUserññz é
,ññé è
Applicationññê õ
.ññõ ú
Currentññú £
.ññ£ §

MainWindowññ§ Æ
)ññÆ Ø
;ññØ ∞
}
óó 
}
òò 
catch
ôô 
(
ôô '
EndpointNotFoundException
ôô ,
ex
ôô- /
)
ôô/ 0
{
öö 
HandleException
õõ 
(
õõ  
ex
õõ  "
,
õõ" #

Properties
õõ$ .
.
õõ. /
	Resources
õõ/ 8
.
õõ8 9"
lblFailToReportAUser
õõ9 M
+
õõN O
$str
õõP U
+
õõV W

Properties
õõX b
.
õõb c
	Resources
õõc l
.
õõl m"
lblEndPointNotFoundõõm Ä
)õõÄ Å
;õõÅ Ç
}
úú 
catch
ùù 
(
ùù 1
#CommunicationObjectFaultedException
ùù 6
ex
ùù7 9
)
ùù9 :
{
ûû 
HandleException
üü 
(
üü  
ex
üü  "
,
üü" #

Properties
üü$ .
.
üü. /
	Resources
üü/ 8
.
üü8 9"
lblFailToReportAUser
üü9 M
+
üüN O
$str
üüP U
+
üüV W

Properties
üüX b
.
üüb c
	Resources
üüc l
.
üül m'
lblComunicationExceptionüüm Ö
)üüÖ Ü
;üüÜ á
}
†† 
catch
°° 
(
°° 
TimeoutException
°° #
ex
°°$ &
)
°°& '
{
¢¢ 
HandleException
££ 
(
££  
ex
££  "
,
££" #

Properties
££$ .
.
££. /
	Resources
££/ 8
.
££8 9"
lblFailToReportAUser
££9 M
+
££N O
$str
££P U
+
££V W

Properties
££X b
.
££b c
	Resources
££c l
.
££l m
lblTimeException
££m }
)
££} ~
;
££~ 
}
§§ 
catch
•• 
(
•• $
CommunicationException
•• )
ex
••* ,
)
••, -
{
¶¶ 
HandleException
ßß 
(
ßß  
ex
ßß  "
,
ßß" #

Properties
ßß$ .
.
ßß. /
	Resources
ßß/ 8
.
ßß8 9"
lblFailToReportAUser
ßß9 M
+
ßßN O
$str
ßßP U
+
ßßV W

Properties
ßßX b
.
ßßb c
	Resources
ßßc l
.
ßßl m'
lblComunicationExceptionßßm Ö
)ßßÖ Ü
;ßßÜ á
}
®® 
catch
©© 
(
©© 
SocketException
©© "
ex
©©# %
)
©©% &
{
™™ 
HandleException
´´ 
(
´´  
ex
´´  "
,
´´" #

Properties
´´$ .
.
´´. /
	Resources
´´/ 8
.
´´8 9"
lblFailToReportAUser
´´9 M
+
´´N O
$str
´´P U
+
´´V W

Properties
´´X b
.
´´b c
	Resources
´´c l
.
´´l m"
lblEndPointNotFound´´m Ä
)´´Ä Å
;´´Å Ç
}
¨¨ 
}
≠≠ 	
public
ØØ 
void
ØØ 
EliminateFriend
ØØ #
(
ØØ# $
int
ØØ$ '%
idUserFriendToEliminate
ØØ( ?
)
ØØ? @
{
∞∞ 	
try
±± 
{
≤≤ (
FriendManagerActionsClient
≥≥ *(
friendActionsCallBackProxy
≥≥+ E
=
≥≥F G
new
≥≥H K(
FriendManagerActionsClient
≥≥L f
(
≥≥f g
new
≥≥g j
InstanceContext
≥≥k z
(
≥≥z {
this
≥≥{ 
)≥≥ Ä
)≥≥Ä Å
;≥≥Å Ç(
friendActionsCallBackProxy
¥¥ *
.
¥¥* +,
RenewFriendManagerUserCallBack
¥¥+ I
(
¥¥I J
userSingleton
¥¥J W
.
¥¥W X
IdUser
¥¥X ^
)
¥¥^ _
;
¥¥_ `1
#FriendManagerActionOperationsClient
∂∂ 3 
friendActionsProxy
∂∂4 F
=
∂∂G H
new
∂∂I L
(
∂∂L M
)
∂∂M N
;
∂∂N O 
friendActionsProxy
∑∑ "
.
∑∑" #&
EliminateUserFromFriends
∑∑# ;
(
∑∑; <
userSingleton
∑∑< I
.
∑∑I J
IdPlayer
∑∑J R
,
∑∑R S%
idUserFriendToEliminate
∑∑T k
)
∑∑k l
;
∑∑l m
String
∏∏ 
userName
∏∏ 
=
∏∏  !
String
∏∏" (
.
∏∏( )
Empty
∏∏) .
;
∏∏. /
foreach
ππ 
(
ππ 
var
ππ 
item
ππ !
in
ππ" $
friends
ππ% ,
)
ππ, -
{
∫∫ 
if
ªª 
(
ªª 
item
ªª 
.
ªª 
IdUser
ªª #
==
ªª$ &%
idUserFriendToEliminate
ªª' >
)
ªª> ?
{
ºº 
friends
ΩΩ 
.
ΩΩ  
Remove
ΩΩ  &
(
ΩΩ& '
item
ΩΩ' +
)
ΩΩ+ ,
;
ΩΩ, -
userName
ææ  
=
ææ! "
item
ææ# '
.
ææ' (
UserName
ææ( 0
;
ææ0 1
break
øø 
;
øø 
}
¿¿ 
}
¡¡ 
if
¬¬ 
(
¬¬ 
!
¬¬ 
otherPeople
¬¬  
.
¬¬  !
Any
¬¬! $
(
¬¬$ %
pla
¬¬% (
=>
¬¬) +
pla
¬¬, /
.
¬¬/ 0
UserName
¬¬0 8
.
¬¬8 9
Equals
¬¬9 ?
(
¬¬? @
userName
¬¬@ H
)
¬¬H I
)
¬¬I J
)
¬¬J K
{
√√ $
FriendBasicInformation
ƒƒ *
	newFriend
ƒƒ+ 4
=
ƒƒ5 6
new
ƒƒ7 :$
FriendBasicInformation
ƒƒ; Q
(
ƒƒQ R
)
ƒƒR S
;
ƒƒS T
	newFriend
≈≈ 
.
≈≈ 
IdUser
≈≈ $
=
≈≈% &%
idUserFriendToEliminate
≈≈' >
;
≈≈> ?
	newFriend
∆∆ 
.
∆∆ 
UserName
∆∆ &
=
∆∆' (
userName
∆∆) 1
;
∆∆1 2
	newFriend
«« 
.
«« "
IdStatusAvailability
«« 2
=
««3 4

NOT_STATUS
««5 ?
;
««? @
otherPeople
»» 
.
»»  
Add
»»  #
(
»»# $
	newFriend
»»$ -
)
»»- .
;
»». /
}
…… 
SetCards
   
(
   
)
   
;
   
}
ÀÀ 
catch
ÃÃ 
(
ÃÃ '
EndpointNotFoundException
ÃÃ ,
ex
ÃÃ- /
)
ÃÃ/ 0
{
ÕÕ 
HandleException
ŒŒ 
(
ŒŒ  
ex
ŒŒ  "
,
ŒŒ" #

Properties
ŒŒ$ .
.
ŒŒ. /
	Resources
ŒŒ/ 8
.
ŒŒ8 9&
lblFailToEliminateFriend
ŒŒ9 Q
+
ŒŒR S
$str
ŒŒT Y
+
ŒŒZ [

Properties
ŒŒ\ f
.
ŒŒf g
	Resources
ŒŒg p
.
ŒŒp q"
lblEndPointNotFoundŒŒq Ñ
)ŒŒÑ Ö
;ŒŒÖ Ü
}
œœ 
catch
–– 
(
–– 1
#CommunicationObjectFaultedException
–– 6
ex
––7 9
)
––9 :
{
—— 
HandleException
““ 
(
““  
ex
““  "
,
““" #

Properties
““$ .
.
““. /
	Resources
““/ 8
.
““8 9&
lblFailToEliminateFriend
““9 Q
+
““R S
$str
““T Y
+
““Z [

Properties
““\ f
.
““f g
	Resources
““g p
.
““p q'
lblComunicationException““q â
)““â ä
;““ä ã
}
”” 
catch
‘‘ 
(
‘‘ 
TimeoutException
‘‘ #
ex
‘‘$ &
)
‘‘& '
{
’’ 
HandleException
÷÷ 
(
÷÷  
ex
÷÷  "
,
÷÷" #

Properties
÷÷$ .
.
÷÷. /
	Resources
÷÷/ 8
.
÷÷8 9&
lblFailToEliminateFriend
÷÷9 Q
+
÷÷R S
$str
÷÷T Y
+
÷÷Z [

Properties
÷÷\ f
.
÷÷f g
	Resources
÷÷g p
.
÷÷p q
lblTimeException÷÷q Å
)÷÷Å Ç
;÷÷Ç É
}
◊◊ 
catch
ÿÿ 
(
ÿÿ $
CommunicationException
ÿÿ )
ex
ÿÿ* ,
)
ÿÿ, -
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
⁄⁄8 9&
lblFailToEliminateFriend
⁄⁄9 Q
+
⁄⁄R S
$str
⁄⁄T Y
+
⁄⁄Z [

Properties
⁄⁄\ f
.
⁄⁄f g
	Resources
⁄⁄g p
.
⁄⁄p q'
lblComunicationException⁄⁄q â
)⁄⁄â ä
;⁄⁄ä ã
}
€€ 
catch
‹‹ 
(
‹‹ 
SocketException
‹‹ "
ex
‹‹# %
)
‹‹% &
{
›› 
HandleException
ﬁﬁ 
(
ﬁﬁ  
ex
ﬁﬁ  "
,
ﬁﬁ" #

Properties
ﬁﬁ$ .
.
ﬁﬁ. /
	Resources
ﬁﬁ/ 8
.
ﬁﬁ8 9"
lblFailToReportAUser
ﬁﬁ9 M
+
ﬁﬁN O
$str
ﬁﬁP U
+
ﬁﬁV W

Properties
ﬁﬁX b
.
ﬁﬁb c
	Resources
ﬁﬁc l
.
ﬁﬁl m"
lblEndPointNotFoundﬁﬁm Ä
)ﬁﬁÄ Å
;ﬁﬁÅ Ç
}
ﬂﬂ 
}
‡‡ 	
public
‚‚ 
void
‚‚ 
SentFriendRequest
‚‚ %
(
‚‚% &
int
‚‚& )
idUserRequested
‚‚* 9
)
‚‚9 :
{
„„ 	
try
‰‰ 
{
ÂÂ (
FriendManagerActionsClient
ÊÊ *(
friendActionsCallBackProxy
ÊÊ+ E
=
ÊÊF G
new
ÊÊH K(
FriendManagerActionsClient
ÊÊL f
(
ÊÊf g
new
ÊÊg j
InstanceContext
ÊÊk z
(
ÊÊz {
this
ÊÊ{ 
)ÊÊ Ä
)ÊÊÄ Å
;ÊÊÅ Ç(
friendActionsCallBackProxy
ÁÁ *
.
ÁÁ* +,
RenewFriendManagerUserCallBack
ÁÁ+ I
(
ÁÁI J
userSingleton
ÁÁJ W
.
ÁÁW X
IdUser
ÁÁX ^
)
ÁÁ^ _
;
ÁÁ_ `1
#FriendManagerActionOperationsClient
ÈÈ 3 
friendActionsProxy
ÈÈ4 F
=
ÈÈG H
new
ÈÈI L
(
ÈÈL M
)
ÈÈM N
;
ÈÈN O 
friendActionsProxy
ÍÍ "
.
ÍÍ" #
SendFriendRequest
ÍÍ# 4
(
ÍÍ4 5
userSingleton
ÍÍ5 B
.
ÍÍB C
IdPlayer
ÍÍC K
,
ÍÍK L
idUserRequested
ÍÍM \
)
ÍÍ\ ]
;
ÍÍ] ^$
FriendBasicInformation
ÎÎ &
item
ÎÎ' +
=
ÎÎ, -
otherPeople
ÎÎ. 9
.
ÎÎ9 :
FirstOrDefault
ÎÎ: H
(
ÎÎH I
pla
ÎÎI L
=>
ÎÎM O
pla
ÎÎP S
.
ÎÎS T
IdUser
ÎÎT Z
==
ÎÎ[ ]
idUserRequested
ÎÎ^ m
)
ÎÎm n
;
ÎÎn o
if
ÏÏ 
(
ÏÏ 
item
ÏÏ 
.
ÏÏ 
IdUser
ÏÏ 
==
ÏÏ  "
idUserRequested
ÏÏ# 2
)
ÏÏ2 3
{
ÌÌ 
otherPeople
ÓÓ 
.
ÓÓ  
Remove
ÓÓ  &
(
ÓÓ& '
item
ÓÓ' +
)
ÓÓ+ ,
;
ÓÓ, -
}
ÔÔ 
SetCards
 
(
 
)
 
;
 
}
ÒÒ 
catch
ÚÚ 
(
ÚÚ '
EndpointNotFoundException
ÚÚ ,
ex
ÚÚ- /
)
ÚÚ/ 0
{
ÛÛ 
HandleException
ÙÙ 
(
ÙÙ  
ex
ÙÙ  "
,
ÙÙ" #

Properties
ÙÙ$ .
.
ÙÙ. /
	Resources
ÙÙ/ 8
.
ÙÙ8 9+
lblFailToSentTheFriendRequest
ÙÙ9 V
+
ÙÙW X
$str
ÙÙY ^
+
ÙÙ_ `

Properties
ÙÙa k
.
ÙÙk l
	Resources
ÙÙl u
.
ÙÙu v"
lblEndPointNotFoundÙÙv â
)ÙÙâ ä
;ÙÙä ã
}
ıı 
catch
ˆˆ 
(
ˆˆ 1
#CommunicationObjectFaultedException
ˆˆ 6
ex
ˆˆ7 9
)
ˆˆ9 :
{
˜˜ 
HandleException
¯¯ 
(
¯¯  
ex
¯¯  "
,
¯¯" #

Properties
¯¯$ .
.
¯¯. /
	Resources
¯¯/ 8
.
¯¯8 9+
lblFailToSentTheFriendRequest
¯¯9 V
+
¯¯W X
$str
¯¯Y ^
+
¯¯_ `

Properties
¯¯a k
.
¯¯k l
	Resources
¯¯l u
.
¯¯u v'
lblComunicationException¯¯v é
)¯¯é è
;¯¯è ê
}
˘˘ 
catch
˙˙ 
(
˙˙ 
TimeoutException
˙˙ #
ex
˙˙$ &
)
˙˙& '
{
˚˚ 
HandleException
¸¸ 
(
¸¸  
ex
¸¸  "
,
¸¸" #

Properties
¸¸$ .
.
¸¸. /
	Resources
¸¸/ 8
.
¸¸8 9+
lblFailToSentTheFriendRequest
¸¸9 V
+
¸¸W X
$str
¸¸Y ^
+
¸¸_ `

Properties
¸¸a k
.
¸¸k l
	Resources
¸¸l u
.
¸¸u v
lblTimeException¸¸v Ü
)¸¸Ü á
;¸¸á à
}
˝˝ 
catch
˛˛ 
(
˛˛ $
CommunicationException
˛˛ )
ex
˛˛* ,
)
˛˛, -
{
ˇˇ 
HandleException
ÄÄ 
(
ÄÄ  
ex
ÄÄ  "
,
ÄÄ" #

Properties
ÄÄ$ .
.
ÄÄ. /
	Resources
ÄÄ/ 8
.
ÄÄ8 9+
lblFailToSentTheFriendRequest
ÄÄ9 V
+
ÄÄW X
$str
ÄÄY ^
+
ÄÄ_ `

Properties
ÄÄa k
.
ÄÄk l
	Resources
ÄÄl u
.
ÄÄu v'
lblComunicationExceptionÄÄv é
)ÄÄé è
;ÄÄè ê
}
ÅÅ 
catch
ÇÇ 
(
ÇÇ 
SocketException
ÇÇ "
ex
ÇÇ# %
)
ÇÇ% &
{
ÉÉ 
HandleException
ÑÑ 
(
ÑÑ  
ex
ÑÑ  "
,
ÑÑ" #

Properties
ÑÑ$ .
.
ÑÑ. /
	Resources
ÑÑ/ 8
.
ÑÑ8 9"
lblFailToReportAUser
ÑÑ9 M
+
ÑÑN O
$str
ÑÑP U
+
ÑÑV W

Properties
ÑÑX b
.
ÑÑb c
	Resources
ÑÑc l
.
ÑÑl m"
lblEndPointNotFoundÑÑm Ä
)ÑÑÄ Å
;ÑÑÅ Ç
}
ÖÖ 
}
ÜÜ 	
public
àà 
void
àà !
AcceptFriendRequest
àà '
(
àà' (
int
àà( +
idUserRequesting
àà, <
,
àà< =
String
àà> D
userName
ààE M
)
ààM N
{
ââ 	
try
ää 
{
ãã (
FriendManagerActionsClient
åå *(
friendActionsCallBackProxy
åå+ E
=
ååF G
new
ååH K(
FriendManagerActionsClient
ååL f
(
ååf g
new
ååg j
InstanceContext
ååk z
(
ååz {
this
åå{ 
)åå Ä
)ååÄ Å
;ååÅ Ç(
friendActionsCallBackProxy
çç *
.
çç* +,
RenewFriendManagerUserCallBack
çç+ I
(
ççI J
userSingleton
ççJ W
.
ççW X
IdUser
ççX ^
)
çç^ _
;
çç_ `1
#FriendManagerActionOperationsClient
èè 3 
friendActionsProxy
èè4 F
=
èèG H
new
èèI L
(
èèL M
)
èèM N
;
èèN O 
friendActionsProxy
êê "
.
êê" #!
AcceptFriendRequest
êê# 6
(
êê6 7
userSingleton
êê7 D
.
êêD E
IdPlayer
êêE M
,
êêM N
idUserRequesting
êêO _
)
êê_ `
;
êê` a
foreach
ëë 
(
ëë 
var
ëë 
item
ëë !
in
ëë" $
friendRequests
ëë% 3
)
ëë3 4
{
íí 
if
ìì 
(
ìì 
item
ìì 
.
ìì 
IdUser
ìì #
==
ìì$ &
idUserRequesting
ìì' 7
)
ìì7 8
{
îî 
friendRequests
ïï &
.
ïï& '
Remove
ïï' -
(
ïï- .
item
ïï. 2
)
ïï2 3
;
ïï3 4
break
ññ 
;
ññ 
}
óó 
}
òò 
if
ôô 
(
ôô 
!
ôô 
friends
ôô 
.
ôô 
Any
ôô  
(
ôô  !
pla
ôô! $
=>
ôô% '
pla
ôô( +
.
ôô+ ,
IdUser
ôô, 2
==
ôô3 5
idUserRequesting
ôô6 F
)
ôôF G
)
ôôG H
{
öö $
FriendBasicInformation
õõ *
	newFriend
õõ+ 4
=
õõ5 6
new
õõ7 :$
FriendBasicInformation
õõ; Q
(
õõQ R
)
õõR S
;
õõS T
	newFriend
úú 
.
úú 
IdUser
úú $
=
úú% &
idUserRequesting
úú' 7
;
úú7 8
	newFriend
ùù 
.
ùù 
UserName
ùù &
=
ùù' (
userName
ùù) 1
;
ùù1 2
	newFriend
ûû 
.
ûû "
IdStatusAvailability
ûû 2
=
ûû3 4

NOT_STATUS
ûû5 ?
;
ûû? @
friends
üü 
.
üü 
Add
üü 
(
üü  
	newFriend
üü  )
)
üü) *
;
üü* +
}
†† 
SetCards
°° 
(
°° 
)
°° 
;
°° 
}
¢¢ 
catch
££ 
(
££ '
EndpointNotFoundException
££ ,
ex
££- /
)
££/ 0
{
§§ 
HandleException
•• 
(
••  
ex
••  "
,
••" #

Properties
••$ .
.
••. /
	Resources
••/ 8
.
••8 9&
lblFailToAccepInvitation
••9 Q
+
••R S
$str
••T Y
+
••Z [

Properties
••\ f
.
••f g
	Resources
••g p
.
••p q"
lblEndPointNotFound••q Ñ
)••Ñ Ö
;••Ö Ü
}
¶¶ 
catch
ßß 
(
ßß 1
#CommunicationObjectFaultedException
ßß 6
ex
ßß7 9
)
ßß9 :
{
®® 
HandleException
©© 
(
©©  
ex
©©  "
,
©©" #

Properties
©©$ .
.
©©. /
	Resources
©©/ 8
.
©©8 9&
lblFailToAccepInvitation
©©9 Q
+
©©R S
$str
©©T Y
+
©©Z [

Properties
©©\ f
.
©©f g
	Resources
©©g p
.
©©p q'
lblComunicationException©©q â
)©©â ä
;©©ä ã
}
™™ 
catch
´´ 
(
´´ 
TimeoutException
´´ #
ex
´´$ &
)
´´& '
{
¨¨ 
HandleException
≠≠ 
(
≠≠  
ex
≠≠  "
,
≠≠" #

Properties
≠≠$ .
.
≠≠. /
	Resources
≠≠/ 8
.
≠≠8 9&
lblFailToAccepInvitation
≠≠9 Q
+
≠≠R S
$str
≠≠T Y
+
≠≠Z [

Properties
≠≠\ f
.
≠≠f g
	Resources
≠≠g p
.
≠≠p q
lblTimeException≠≠q Å
)≠≠Å Ç
;≠≠Ç É
}
ÆÆ 
catch
ØØ 
(
ØØ $
CommunicationException
ØØ )
ex
ØØ* ,
)
ØØ, -
{
∞∞ 
HandleException
±± 
(
±±  
ex
±±  "
,
±±" #

Properties
±±$ .
.
±±. /
	Resources
±±/ 8
.
±±8 9&
lblFailToAccepInvitation
±±9 Q
+
±±R S
$str
±±T Y
+
±±Z [

Properties
±±\ f
.
±±f g
	Resources
±±g p
.
±±p q'
lblComunicationException±±q â
)±±â ä
;±±ä ã
}
≤≤ 
catch
≥≥ 
(
≥≥ 
SocketException
≥≥ "
ex
≥≥# %
)
≥≥% &
{
¥¥ 
HandleException
µµ 
(
µµ  
ex
µµ  "
,
µµ" #

Properties
µµ$ .
.
µµ. /
	Resources
µµ/ 8
.
µµ8 9"
lblFailToReportAUser
µµ9 M
+
µµN O
$str
µµP U
+
µµV W

Properties
µµX b
.
µµb c
	Resources
µµc l
.
µµl m"
lblEndPointNotFoundµµm Ä
)µµÄ Å
;µµÅ Ç
}
∂∂ 
}
∑∑ 	
public
ππ 
void
ππ "
DeclineFriendRequest
ππ (
(
ππ( )
int
ππ) ,
idUserRequesting
ππ- =
,
ππ= >
String
ππ? E
userName
ππF N
)
ππN O
{
∫∫ 	
try
ªª 
{
ºº (
FriendManagerActionsClient
ΩΩ *(
friendActionsCallBackProxy
ΩΩ+ E
=
ΩΩF G
new
ΩΩH K(
FriendManagerActionsClient
ΩΩL f
(
ΩΩf g
new
ΩΩg j
InstanceContext
ΩΩk z
(
ΩΩz {
this
ΩΩ{ 
)ΩΩ Ä
)ΩΩÄ Å
;ΩΩÅ Ç(
friendActionsCallBackProxy
ææ *
.
ææ* +,
RenewFriendManagerUserCallBack
ææ+ I
(
ææI J
userSingleton
ææJ W
.
ææW X
IdUser
ææX ^
)
ææ^ _
;
ææ_ `1
#FriendManagerActionOperationsClient
¿¿ 3 
friendActionsProxy
¿¿4 F
=
¿¿G H
new
¿¿I L
(
¿¿L M
)
¿¿M N
;
¿¿N O 
friendActionsProxy
¡¡ "
.
¡¡" #"
DeclineFriendRequest
¡¡# 7
(
¡¡7 8
userSingleton
¡¡8 E
.
¡¡E F
IdPlayer
¡¡F N
,
¡¡N O
idUserRequesting
¡¡P `
)
¡¡` a
;
¡¡a b
foreach
¬¬ 
(
¬¬ 
var
¬¬ 
item
¬¬ !
in
¬¬" $
friendRequests
¬¬% 3
)
¬¬3 4
{
√√ 
if
ƒƒ 
(
ƒƒ 
item
ƒƒ 
.
ƒƒ 
IdUser
ƒƒ #
==
ƒƒ$ &
idUserRequesting
ƒƒ' 7
)
ƒƒ7 8
{
≈≈ 
friendRequests
∆∆ &
.
∆∆& '
Remove
∆∆' -
(
∆∆- .
item
∆∆. 2
)
∆∆2 3
;
∆∆3 4
break
«« 
;
«« 
}
»» 
}
…… 
if
   
(
   
!
   
otherPeople
    
.
    !
Any
  ! $
(
  $ %
pla
  % (
=>
  ) +
pla
  , /
.
  / 0
IdUser
  0 6
==
  7 9
idUserRequesting
  : J
)
  J K
)
  K L
{
ÀÀ $
FriendBasicInformation
ÃÃ *
	newFriend
ÃÃ+ 4
=
ÃÃ5 6
new
ÃÃ7 :$
FriendBasicInformation
ÃÃ; Q
(
ÃÃQ R
)
ÃÃR S
;
ÃÃS T
	newFriend
ÕÕ 
.
ÕÕ 
IdUser
ÕÕ $
=
ÕÕ% &
idUserRequesting
ÕÕ' 7
;
ÕÕ7 8
	newFriend
ŒŒ 
.
ŒŒ 
UserName
ŒŒ &
=
ŒŒ' (
userName
ŒŒ) 1
;
ŒŒ1 2
	newFriend
œœ 
.
œœ "
IdStatusAvailability
œœ 2
=
œœ3 4

NOT_STATUS
œœ5 ?
;
œœ? @
otherPeople
–– 
.
––  
Add
––  #
(
––# $
	newFriend
––$ -
)
––- .
;
––. /
}
—— 
SetCards
““ 
(
““ 
)
““ 
;
““ 
}
”” 
catch
‘‘ 
(
‘‘ '
EndpointNotFoundException
‘‘ ,
ex
‘‘- /
)
‘‘/ 0
{
’’ 
HandleException
÷÷ 
(
÷÷  
ex
÷÷  "
,
÷÷" #

Properties
÷÷$ .
.
÷÷. /
	Resources
÷÷/ 8
.
÷÷8 9%
lblFailToDeclineRequest
÷÷9 P
+
÷÷Q R
$str
÷÷S X
+
÷÷Y Z

Properties
÷÷[ e
.
÷÷e f
	Resources
÷÷f o
.
÷÷o p"
lblEndPointNotFound÷÷p É
)÷÷É Ñ
;÷÷Ñ Ö
}
◊◊ 
catch
ÿÿ 
(
ÿÿ 1
#CommunicationObjectFaultedException
ÿÿ 6
ex
ÿÿ7 9
)
ÿÿ9 :
{
ŸŸ 
HandleException
⁄⁄ 
(
⁄⁄  
ex
⁄⁄  "
,
⁄⁄" #

Properties
⁄⁄$ .
.
⁄⁄. /
	Resources
⁄⁄/ 8
.
⁄⁄8 9%
lblFailToDeclineRequest
⁄⁄9 P
+
⁄⁄Q R
$str
⁄⁄S X
+
⁄⁄Y Z

Properties
⁄⁄[ e
.
⁄⁄e f
	Resources
⁄⁄f o
.
⁄⁄o p'
lblComunicationException⁄⁄p à
)⁄⁄à â
;⁄⁄â ä
}
€€ 
catch
‹‹ 
(
‹‹ 
TimeoutException
‹‹ #
ex
‹‹$ &
)
‹‹& '
{
›› 
HandleException
ﬁﬁ 
(
ﬁﬁ  
ex
ﬁﬁ  "
,
ﬁﬁ" #

Properties
ﬁﬁ$ .
.
ﬁﬁ. /
	Resources
ﬁﬁ/ 8
.
ﬁﬁ8 9%
lblFailToDeclineRequest
ﬁﬁ9 P
+
ﬁﬁQ R
$str
ﬁﬁS X
+
ﬁﬁY Z

Properties
ﬁﬁ[ e
.
ﬁﬁe f
	Resources
ﬁﬁf o
.
ﬁﬁo p
lblTimeExceptionﬁﬁp Ä
)ﬁﬁÄ Å
;ﬁﬁÅ Ç
}
ﬂﬂ 
catch
‡‡ 
(
‡‡ $
CommunicationException
‡‡ )
ex
‡‡* ,
)
‡‡, -
{
·· 
HandleException
‚‚ 
(
‚‚  
ex
‚‚  "
,
‚‚" #

Properties
‚‚$ .
.
‚‚. /
	Resources
‚‚/ 8
.
‚‚8 9%
lblFailToDeclineRequest
‚‚9 P
+
‚‚Q R
$str
‚‚S X
+
‚‚Y Z

Properties
‚‚[ e
.
‚‚e f
	Resources
‚‚f o
.
‚‚o p'
lblComunicationException‚‚p à
)‚‚à â
;‚‚â ä
}
„„ 
catch
‰‰ 
(
‰‰ 
SocketException
‰‰ "
ex
‰‰# %
)
‰‰% &
{
ÂÂ 
HandleException
ÊÊ 
(
ÊÊ  
ex
ÊÊ  "
,
ÊÊ" #

Properties
ÊÊ$ .
.
ÊÊ. /
	Resources
ÊÊ/ 8
.
ÊÊ8 9"
lblFailToReportAUser
ÊÊ9 M
+
ÊÊN O
$str
ÊÊP U
+
ÊÊV W

Properties
ÊÊX b
.
ÊÊb c
	Resources
ÊÊc l
.
ÊÊl m"
lblEndPointNotFoundÊÊm Ä
)ÊÊÄ Å
;ÊÊÅ Ç
}
ÁÁ 
}
ËË 	
public
ÍÍ 
void
ÍÍ 
ResponseReported
ÍÍ $
(
ÍÍ$ %
int
ÍÍ% (

numReports
ÍÍ) 3
)
ÍÍ3 4
{
ÎÎ 	
dialogMessage
ÏÏ 
=
ÏÏ 
new
ÏÏ ,
InformationMessageDialogWindow
ÏÏ  >
(
ÏÏ> ?

Properties
ÏÏ? I
.
ÏÏI J
	Resources
ÏÏJ S
.
ÏÏS T
txbWarningTitle
ÏÏT c
,
ÏÏc d

Properties
ÏÏe o
.
ÏÏo p
	Resources
ÏÏp y
.
ÏÏy z
MessageReportedÏÏz â
+ÏÏä ã

numReportsÏÏå ñ
.ÏÏñ ó
ToStringÏÏó ü
(ÏÏü †
)ÏÏ† °
,ÏÏ° ¢
ApplicationÏÏ£ Æ
.ÏÏÆ Ø
CurrentÏÏØ ∂
.ÏÏ∂ ∑

MainWindowÏÏ∑ ¡
)ÏÏ¡ ¬
;ÏÏ¬ √
}
ÌÌ 	
public
ÔÔ 
void
ÔÔ #
ResponseRequestAction
ÔÔ )
(
ÔÔ) *
int
ÔÔ* -
idUser
ÔÔ. 4
,
ÔÔ4 5
int
ÔÔ6 9
requestStatus
ÔÔ: G
,
ÔÔG H
string
ÔÔI O
userName
ÔÔP X
)
ÔÔX Y
{
 	
switch
ÒÒ 
(
ÒÒ 
requestStatus
ÒÒ !
)
ÒÒ! "
{
ÚÚ 
case
ÛÛ 
DECLINED_REQUEST
ÛÛ %
:
ÛÛ% &
ManageResponse
ÙÙ "
(
ÙÙ" #
friendRequests
ÙÙ# 1
,
ÙÙ1 2
otherPeople
ÙÙ3 >
,
ÙÙ> ?
idUser
ÙÙ? E
,
ÙÙE F
userName
ÙÙF N
)
ÙÙN O
;
ÙÙO P&
lblDeclineRequestMessage
ıı ,
.
ıı, -
Content
ıı- 4
=
ıı5 6
userName
ıı7 ?
+
ıı@ A
$str
ııB E
+
ııF G

Properties
ııH R
.
ııR S
	Resources
ııS \
.
ıı\ ]%
MessageFriRequeDeclined
ıı] t
;
ııt u

StartTimer
ˆˆ 
(
ˆˆ 
)
ˆˆ  
;
ˆˆ  !
break
˜˜ 
;
˜˜ 
case
¯¯ 
SEND_REQUEST
¯¯ !
:
¯¯! "
ManageResponse
˘˘ "
(
˘˘" #
otherPeople
˘˘# .
,
˘˘. /
friendRequests
˘˘0 >
,
˘˘> ?
idUser
˘˘@ F
,
˘˘F G
userName
˘˘H P
)
˘˘P Q
;
˘˘Q R
break
˙˙ 
;
˙˙ 
case
˚˚ 
ACCEPT_REQUEST
˚˚ #
:
˚˚# $
ManageResponse
¸¸ "
(
¸¸" #
friendRequests
¸¸# 1
,
¸¸1 2
friends
¸¸3 :
,
¸¸: ;
idUser
¸¸< B
,
¸¸B C
userName
¸¸D L
)
¸¸L M
;
¸¸M N
break
˝˝ 
;
˝˝ 
}
˛˛ 
SetCards
ˇˇ 
(
ˇˇ 
)
ˇˇ 
;
ˇˇ 
}
ÄÄ 	
private
ÇÇ 
void
ÇÇ 
ManageResponse
ÇÇ #
(
ÇÇ# $
List
ÇÇ$ (
<
ÇÇ( )$
FriendBasicInformation
ÇÇ) ?
>
ÇÇ? @
deleteFromList
ÇÇA O
,
ÇÇO P
List
ÇÇQ U
<
ÇÇU V$
FriendBasicInformation
ÇÇV l
>
ÇÇl m
	addToList
ÇÇn w
,
ÇÇw x
int
ÇÇy |
idUserOperationÇÇ} å
,ÇÇå ç
stringÇÇé î
userNameÇÇï ù
)ÇÇù û
{
ÉÉ 	
foreach
ÑÑ 
(
ÑÑ 
var
ÑÑ 
item
ÑÑ 
in
ÑÑ  
deleteFromList
ÑÑ! /
)
ÑÑ/ 0
{
ÖÖ 
if
ÜÜ 
(
ÜÜ 
item
ÜÜ 
.
ÜÜ 
IdUser
ÜÜ 
==
ÜÜ  "
idUserOperation
ÜÜ# 2
)
ÜÜ2 3
{
áá 
deleteFromList
àà "
.
àà" #
Remove
àà# )
(
àà) *
item
àà* .
)
àà. /
;
àà/ 0
break
ââ 
;
ââ 
}
ää 
}
ãã 
if
åå 
(
åå 
!
åå 
	addToList
åå 
.
åå 
Any
åå 
(
åå 
pla
åå !
=>
åå" $
pla
åå% (
.
åå( )
IdUser
åå) /
==
åå0 2
idUserOperation
åå3 B
)
ååB C
)
ååC D
{
çç $
FriendBasicInformation
éé &
	newFriend
éé' 0
=
éé1 2
new
éé3 6$
FriendBasicInformation
éé7 M
(
ééM N
)
ééN O
;
ééO P
	newFriend
èè 
.
èè 
IdUser
èè  
=
èè! "
idUserOperation
èè# 2
;
èè2 3
	newFriend
êê 
.
êê 
UserName
êê "
=
êê# $
userName
êê% -
;
êê- .
	newFriend
ëë 
.
ëë "
IdStatusAvailability
ëë .
=
ëë/ 0

NOT_STATUS
ëë1 ;
;
ëë; <
	addToList
íí 
.
íí 
Add
íí 
(
íí 
	newFriend
íí '
)
íí' (
;
íí( )
}
ìì 
}
îî 	
public
ññ 
void
ññ ,
ResponseEliminationFromFriends
ññ 2
(
ññ2 3
int
ññ3 6&
idPlayerWhoEliminatedYou
ññ7 O
)
ññO P
{
óó 	
String
òò 
userName
òò 
=
òò 
String
òò $
.
òò$ %
Empty
òò% *
;
òò* +
foreach
ôô 
(
ôô 
var
ôô 
item
ôô 
in
ôô  
friends
ôô! (
)
ôô( )
{
öö 
if
õõ 
(
õõ 
item
õõ 
.
õõ 
IdUser
õõ 
==
õõ  "&
idPlayerWhoEliminatedYou
õõ# ;
)
õõ; <
{
úú 
friends
ùù 
.
ùù 
Remove
ùù "
(
ùù" #
item
ùù# '
)
ùù' (
;
ùù( )
userName
ûû 
=
ûû 
item
ûû #
.
ûû# $
UserName
ûû$ ,
;
ûû, -
break
üü 
;
üü 
}
†† 
}
°° 
if
¢¢ 
(
¢¢ 
!
¢¢ 
otherPeople
¢¢ 
.
¢¢ 
Any
¢¢  
(
¢¢  !
pla
¢¢! $
=>
¢¢% '
pla
¢¢( +
.
¢¢+ ,
IdUser
¢¢, 2
==
¢¢3 5&
idPlayerWhoEliminatedYou
¢¢6 N
)
¢¢N O
)
¢¢O P
{
££ $
FriendBasicInformation
§§ &
	newFriend
§§' 0
=
§§1 2
new
§§3 6$
FriendBasicInformation
§§7 M
(
§§M N
)
§§N O
;
§§O P
	newFriend
•• 
.
•• 
IdUser
••  
=
••! "&
idPlayerWhoEliminatedYou
••# ;
;
••; <
	newFriend
¶¶ 
.
¶¶ 
UserName
¶¶ "
=
¶¶# $
userName
¶¶% -
;
¶¶- .
	newFriend
ßß 
.
ßß "
IdStatusAvailability
ßß .
=
ßß/ 0

NOT_STATUS
ßß1 ;
;
ßß; <
otherPeople
®® 
.
®® 
Add
®® 
(
®®  
	newFriend
®®  )
)
®®) *
;
®®* +
}
©© 
SetCards
™™ 
(
™™ 
)
™™ 
;
™™ 
}
´´ 	
private
≠≠ 
void
≠≠ %
ClickSearchPlayerButton
≠≠ ,
(
≠≠, -
object
≠≠- 3
sender
≠≠4 :
,
≠≠: ;
RoutedEventArgs
≠≠< K
e
≠≠L M
)
≠≠M N
{
ÆÆ 	
String
ØØ 
userNameToSearch
ØØ #
=
ØØ$ %
txbUserToSearch
ØØ& 5
.
ØØ5 6
Text
ØØ6 :
;
ØØ: ;
if
∞∞ 
(
∞∞ 
!
∞∞ 
userNameToSearch
∞∞ !
.
∞∞! "
Equals
∞∞" (
(
∞∞( )

Properties
∞∞) 3
.
∞∞3 4
	Resources
∞∞4 =
.
∞∞= >
	bttSearch
∞∞> G
)
∞∞G H
)
∞∞H I
{
±± #
stpFrinedsManagerList
≤≤ %
.
≤≤% &
Children
≤≤& .
.
≤≤. /
Clear
≤≤/ 4
(
≤≤4 5
)
≤≤5 6
;
≤≤6 7
List
≥≥ 
<
≥≥ $
FriendBasicInformation
≥≥ +
>
≥≥+ ,
listOfUsers
≥≥- 8
;
≥≥8 9
switch
¥¥ 
(
¥¥ 
typeUserConsult
¥¥ '
)
¥¥' (
{
µµ 
case
∂∂ 

MY_FRIENDS
∂∂ #
:
∂∂# $
listOfUsers
∑∑ #
=
∑∑$ %
new
∑∑& )
List
∑∑* .
<
∑∑. /$
FriendBasicInformation
∑∑/ E
>
∑∑E F
(
∑∑F G
friends
∑∑G N
)
∑∑N O
;
∑∑O P
break
∏∏ 
;
∏∏ 
case
ππ 
FRIENDS_REQUEST
ππ (
:
ππ( )
listOfUsers
∫∫ #
=
∫∫$ %
new
∫∫& )
List
∫∫* .
<
∫∫. /$
FriendBasicInformation
∫∫/ E
>
∫∫E F
(
∫∫F G
friendRequests
∫∫G U
)
∫∫U V
;
∫∫V W
break
ªª 
;
ªª 
case
ºº 
OTHER_PEOPLE
ºº %
:
ºº% &
listOfUsers
ΩΩ #
=
ΩΩ$ %
new
ΩΩ& )
List
ΩΩ* .
<
ΩΩ. /$
FriendBasicInformation
ΩΩ/ E
>
ΩΩE F
(
ΩΩF G
otherPeople
ΩΩG R
)
ΩΩR S
;
ΩΩS T
break
ææ 
;
ææ 
default
øø 
:
øø 
listOfUsers
¿¿ #
=
¿¿$ %
new
¿¿& )
List
¿¿* .
<
¿¿. /$
FriendBasicInformation
¿¿/ E
>
¿¿E F
(
¿¿F G
)
¿¿G H
;
¿¿H I
break
¡¡ 
;
¡¡ 
}
¬¬ 
foreach
√√ 
(
√√ $
FriendBasicInformation
√√ /
item
√√0 4
in
√√5 7
listOfUsers
√√8 C
)
√√C D
{
ƒƒ 
if
≈≈ 
(
≈≈ 
item
≈≈ 
.
≈≈ 
UserName
≈≈ %
==
≈≈& (
userNameToSearch
≈≈) 9
)
≈≈9 :
{
∆∆ 
Border
«« 
brdCard
«« &
=
««' (
new
««) ,
Border
««- 3
(
««3 4
)
««4 5
;
««5 6(
FriendCardManagementWindow
»» 2"
friendCardManagement
»»3 G
=
»»H I
new
»»J M(
FriendCardManagementWindow
»»N h
(
»»h i
item
»»i m
.
»»m n
IdUser
»»n t
,
»»t u
item
»»v z
.
»»z {
UserName»»{ É
,»»É Ñ
typeUserConsult»»Ö î
,»»î ï
textLeftButton»»ñ §
,»»§ •
textRightButton»»¶ µ
,»»µ ∂
this»»∑ ª
)»»ª º
;»»º Ω
brdCard
…… 
.
……  
Child
……  %
=
……& '"
friendCardManagement
……( <
;
……< =#
stpFrinedsManagerList
   -
.
  - .
Children
  . 6
.
  6 7
Add
  7 :
(
  : ; 
SetBorderCardStyle
  ; M
(
  M N
brdCard
  N U
)
  U V
)
  V W
;
  W X
}
ÀÀ 
}
ÃÃ 
}
ÕÕ 
}
ŒŒ 	
private
–– 
void
–– 

StartTimer
–– 
(
––  
)
––  !
{
—— 	
leftTime
““ 
=
““ 
$num
““ 
;
““ 
timer
”” 
=
”” 
new
”” 
DispatcherTimer
”” '
(
””' (
)
””( )
;
””) *
timer
‘‘ 
.
‘‘ 
Interval
‘‘ 
=
‘‘ 
TimeSpan
‘‘ %
.
‘‘% &
FromSeconds
‘‘& 1
(
‘‘1 2
$num
‘‘2 3
)
‘‘3 4
;
‘‘4 5
timer
’’ 
.
’’ 
Tick
’’ 
+=
’’ 

Timer_Tick
’’ $
;
’’$ %
timer
÷÷ 
.
÷÷ 
Start
÷÷ 
(
÷÷ 
)
÷÷ 
;
÷÷ 
}
◊◊ 	
private
ŸŸ 
void
ŸŸ 

Timer_Tick
ŸŸ 
(
ŸŸ  
object
ŸŸ  &
sender
ŸŸ' -
,
ŸŸ- .
	EventArgs
ŸŸ/ 8
e
ŸŸ9 :
)
ŸŸ: ;
{
⁄⁄ 	
if
€€ 
(
€€ 
leftTime
€€ 
>
€€ 
$num
€€ 
)
€€ 
{
‹‹ 
leftTime
›› 
--
›› 
;
›› 
}
ﬁﬁ 
else
ﬂﬂ 
{
‡‡ &
lblDeclineRequestMessage
·· (
.
··( )
Content
··) 0
=
··1 2
string
··3 9
.
··9 :
Empty
··: ?
;
··? @
timer
‚‚ 
.
‚‚ 
Stop
‚‚ 
(
‚‚ 
)
‚‚ 
;
‚‚ 
}
„„ 
}
‰‰ 	
private
ÊÊ 
void
ÊÊ 
OverSearchBar
ÊÊ "
(
ÊÊ" #
object
ÊÊ# )
sender
ÊÊ* 0
,
ÊÊ0 1
MouseEventArgs
ÊÊ2 @
e
ÊÊA B
)
ÊÊB C
{
ÁÁ 	
txbUserToSearch
ËË 
.
ËË 
Text
ËË  
=
ËË! "
string
ËË# )
.
ËË) *
Empty
ËË* /
;
ËË/ 0
}
ÈÈ 	
private
ÎÎ 
void
ÎÎ 
HandleException
ÎÎ $
(
ÎÎ$ %
	Exception
ÎÎ% .
ex
ÎÎ/ 1
,
ÎÎ1 2
string
ÎÎ3 9
errorMessage
ÎÎ: F
)
ÎÎF G
{
ÏÏ 	%
ExceptionHandlerForLogs
ÌÌ #
.
ÌÌ# $
LogException
ÌÌ$ 0
(
ÌÌ0 1
ex
ÌÌ1 3
,
ÌÌ3 4!
ExceptionDictionary
ÌÌ5 H
.
ÌÌH I
FATAL_EXCEPTION
ÌÌI X
)
ÌÌX Y
;
ÌÌY Z
dialogMessage
ÓÓ 
=
ÓÓ 
new
ÓÓ &
ErrorMessageDialogWindow
ÓÓ  8
(
ÓÓ8 9

Properties
ÓÓ9 C
.
ÓÓC D
	Resources
ÓÓD M
.
ÓÓM N
txbErrorTitle
ÓÓN [
,
ÓÓ[ \
errorMessage
ÓÓ] i
,
ÓÓi j
Application
ÓÓk v
.
ÓÓv w
Current
ÓÓw ~
.
ÓÓ~ 

MainWindowÓÓ â
)ÓÓâ ä
;ÓÓä ã
}
ÔÔ 	
private
ÒÒ 
void
ÒÒ 
ClickBackToMenu
ÒÒ $
(
ÒÒ$ %
object
ÒÒ% +
sender
ÒÒ, 2
,
ÒÒ2 3"
MouseButtonEventArgs
ÒÒ4 H
e
ÒÒI J
)
ÒÒJ K
{
ÚÚ 	
UserSingleton
ÛÛ 
userSingleton
ÛÛ '
=
ÛÛ( )
UserSingleton
ÛÛ* 7
.
ÛÛ7 8
GetMainUser
ÛÛ8 C
(
ÛÛC D
)
ÛÛD E
;
ÛÛE F
try
ÙÙ 
{
ıı 1
#FriendManagerActionOperationsClient
ˆˆ 3 
friendActionsProxy
ˆˆ4 F
=
ˆˆG H
new
ˆˆI L
(
ˆˆL M
)
ˆˆM N
;
ˆˆN O 
friendActionsProxy
˜˜ "
.
˜˜" #)
UnregisterFriendManagerUser
˜˜# >
(
˜˜> ?
userSingleton
˜˜? L
.
˜˜L M
IdUser
˜˜M S
)
˜˜S T
;
˜˜T U
}
¯¯ 
catch
˘˘ 
(
˘˘ '
EndpointNotFoundException
˘˘ ,
ex
˘˘- /
)
˘˘/ 0
{
˙˙ %
ExceptionHandlerForLogs
˚˚ '
.
˚˚' (
LogException
˚˚( 4
(
˚˚4 5
ex
˚˚5 7
,
˚˚7 8!
ExceptionDictionary
˚˚9 L
.
˚˚L M
FATAL_EXCEPTION
˚˚M \
)
˚˚\ ]
;
˚˚] ^
}
¸¸ 
catch
˝˝ 
(
˝˝ 1
#CommunicationObjectFaultedException
˝˝ 6
ex
˝˝7 9
)
˝˝9 :
{
˛˛ %
ExceptionHandlerForLogs
ˇˇ '
.
ˇˇ' (
LogException
ˇˇ( 4
(
ˇˇ4 5
ex
ˇˇ5 7
,
ˇˇ7 8!
ExceptionDictionary
ˇˇ9 L
.
ˇˇL M
FATAL_EXCEPTION
ˇˇM \
)
ˇˇ\ ]
;
ˇˇ] ^
}
ÄÄ 
catch
ÅÅ 
(
ÅÅ 
TimeoutException
ÅÅ #
ex
ÅÅ$ &
)
ÅÅ& '
{
ÇÇ %
ExceptionHandlerForLogs
ÉÉ '
.
ÉÉ' (
LogException
ÉÉ( 4
(
ÉÉ4 5
ex
ÉÉ5 7
,
ÉÉ7 8!
ExceptionDictionary
ÉÉ9 L
.
ÉÉL M
FATAL_EXCEPTION
ÉÉM \
)
ÉÉ\ ]
;
ÉÉ] ^
}
ÑÑ 
catch
ÖÖ 
(
ÖÖ $
CommunicationException
ÖÖ )
ex
ÖÖ* ,
)
ÖÖ, -
{
ÜÜ %
ExceptionHandlerForLogs
áá '
.
áá' (
LogException
áá( 4
(
áá4 5
ex
áá5 7
,
áá7 8!
ExceptionDictionary
áá9 L
.
ááL M
FATAL_EXCEPTION
ááM \
)
áá\ ]
;
áá] ^
}
àà 
catch
ââ 
(
ââ 
SocketException
ââ "
ex
ââ# %
)
ââ% &
{
ää %
ExceptionHandlerForLogs
ãã '
.
ãã' (
LogException
ãã( 4
(
ãã4 5
ex
ãã5 7
,
ãã7 8!
ExceptionDictionary
ãã9 L
.
ããL M
FATAL_EXCEPTION
ããM \
)
ãã\ ]
;
ãã] ^
}
åå 
MainMenu
çç 
mainMenu
çç 
=
çç 
new
çç  #
MainMenu
çç$ ,
(
çç, -
)
çç- .
;
çç. /
this
éé 
.
éé 
NavigationService
éé "
.
éé" #
Navigate
éé# +
(
éé+ ,
mainMenu
éé, 4
)
éé4 5
;
éé5 6
NavigationService
èè 
.
èè 
RemoveBackEntry
èè -
(
èè- .
)
èè. /
;
èè/ 0
}
êê 	
public
íí 
void
íí &
ResponseNewPlayerJusJoin
íí ,
(
íí, -
int
íí- 0
idUser
íí1 7
,
íí7 8
string
íí9 ?
userName
íí@ H
)
ííH I
{
ìì 	
if
îî 
(
îî 
idUser
îî 
!=
îî 
$num
îî 
&&
îî 
!
îî 
string
îî %
.
îî% &
IsNullOrEmpty
îî& 3
(
îî3 4
userName
îî4 <
)
îî< =
)
îî= >
{
ïï 
if
ññ 
(
ññ 
!
ññ 
otherPeople
ññ 
.
ññ  
Any
ññ  #
(
ññ# $
pl
ññ$ &
=>
ññ' )
pl
ññ* ,
.
ññ, -
IdUser
ññ- 3
==
ññ4 6
idUser
ññ7 =
)
ññ= >
)
ññ> ?
{
óó 
otherPeople
òò 
.
òò  
Add
òò  #
(
òò# $
new
òò$ '$
FriendBasicInformation
òò( >
(
òò? @
)
òò@ A
{
òòA B
IdUser
òòB H
=
òòI J
idUser
òòK Q
,
òòQ R
EmailAddress
òòS _
=
òò` a
string
òòb h
.
òòh i
Empty
òòi n
,
òòn o
UserName
òòp x
=
òòy z
userNameòò{ É
,òòÉ Ñ$
IdStatusAvailabilityòòÖ ô
=òòö õ
$numòòú ù
}òòû ü
)òòü †
;òò† °
SetCards
ôô 
(
ôô 
)
ôô 
;
ôô 
}
öö 
}
õõ 
}
úú 	
}
ûû 
}üü û˘
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
private99 
static99 
TeamChat99 
teamChat99  (
;99( )
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
ââ #
BeginHostPresentation
ää %
(
ää% &
)
ää& '
;
ää' (
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
ééX Y
teamChat
èè 
=
èè 
new
èè 
TeamChat
èè '
(
èè' (
this
èè( ,
,
èè, -
playersInGame
èè. ;
.
èè; <
FirstOrDefault
èè< J
(
èèJ K
pla
èèK N
=>
èèO Q
pla
èèR U
.
èèU V
SideTeam
èèV ^
==
èè_ a
player
èèb h
.
èèh i
SideTeam
èèi q
&&
èèr t
pla
èèu x
.
èèx y
IdUser
èèy 
!=èèÄ Ç
userSingletonèèÉ ê
.èèê ë
IdUserèèë ó
)èèó ò
.èèò ô
IdUserèèô ü
)èèü †
;èè† °
}
êê 
PrepareRoundOne
ëë 
(
ëë 
)
ëë 
;
ëë 
}
íí 	
private
îî 
void
îî !
VerifyThereAreTeams
îî (
(
îî( )
)
îî) *
{
ïï 	
if
ññ 
(
ññ 
playersInGame
ññ 
.
ññ 
Any
ññ !
(
ññ! "
pla
ññ" %
=>
ññ& (
pla
ññ) ,
.
ññ, -
SideTeam
ññ- 5
==
ññ6 8
$num
ññ9 :
)
ññ: ;
)
ññ; <
{
óó 
itsTeamGame
òò 
=
òò 
true
òò "
;
òò" #
imgChatIcon
ôô 
.
ôô 

Visibility
ôô &
=
ôô' (

Visibility
ôô) 3
.
ôô3 4
Visible
ôô4 ;
;
ôô; <
}
öö 
else
õõ 
{
úú 
itsTeamGame
ùù 
=
ùù 
false
ùù #
;
ùù# $
}
ûû 
}
üü 	
private
°° 
void
°° 1
#PrepareListOfQuestionsAndCategories
°° 8
(
°°8 9
)
°°9 :
{
¢¢ 	
questionsRoundOne
££ 
=
££ 
currentQuestions
££  0
.
££0 1
Where
££1 6
(
££6 7
(
££7 8
currentQuestion
££8 G
)
££G H
=>
££I K
currentQuestion
££L [
.
££[ \
NumberOfRound
££\ i
==
££j l
	ROUND_ONE
££m v
)
££v w
.
££w x
ToList
££x ~
(
££~ 
)££ Ä
;££Ä Å
questionsRoundTwo
§§ 
=
§§ 
currentQuestions
§§  0
.
§§0 1
Where
§§1 6
(
§§6 7
(
§§7 8
currentQuestion
§§8 G
)
§§G H
=>
§§I K
currentQuestion
§§L [
.
§§[ \
NumberOfRound
§§\ i
==
§§j l
	ROUND_TWO
§§m v
)
§§v w
.
§§w x
ToList
§§x ~
(
§§~ 
)§§ Ä
;§§Ä Å
finalQuestion
•• 
=
•• 
currentQuestions
•• ,
.
••, -
Find
••- 1
(
••1 2
(
••2 3
currentQuestion
••3 B
)
••B C
=>
••D F
currentQuestion
••G V
.
••V W
NumberOfRound
••W d
==
••e g
ROUND_THREE
••h s
)
••s t
;
••t u
var
¶¶ 
categoriesRound1
¶¶  
=
¶¶! "
currentQuestions
¶¶# 3
.
¶¶3 4
Where
¶¶4 9
(
¶¶9 :
currentQuestion
¶¶: I
=>
¶¶J L
currentQuestion
¶¶M \
.
¶¶\ ]
NumberOfRound
¶¶] j
==
¶¶k m
	ROUND_ONE
¶¶n w
)
¶¶w x
.
¶¶x y
Select
¶¶y 
(¶¶ Ä
currentQuestion¶¶Ä è
=>¶¶ê í
currentQuestion¶¶ì ¢
.¶¶¢ £"
CategoryOfQuestion¶¶£ µ
)¶¶µ ∂
.¶¶∂ ∑
ToList¶¶∑ Ω
(¶¶Ω æ
)¶¶æ ø
;¶¶ø ¿!
GetUniqueCategories
ßß 
(
ßß  
categoriesRound1
ßß  0
,
ßß0 1$
categoriesOfGameRound1
ßß2 H
)
ßßH I
;
ßßI J
var
®® 
categoriesRound2
®®  
=
®®! "
currentQuestions
®®# 3
.
®®3 4
Where
®®4 9
(
®®9 :
currentQuestion
®®: I
=>
®®J L
currentQuestion
®®M \
.
®®\ ]
NumberOfRound
®®] j
==
®®k m
	ROUND_TWO
®®n w
)
®®w x
.
®®x y
Select
®®y 
(®® Ä
currentQuestion®®Ä è
=>®®ê í
currentQuestion®®ì ¢
.®®¢ £"
CategoryOfQuestion®®£ µ
)®®µ ∂
.®®∂ ∑
ToList®®∑ Ω
(®®Ω æ
)®®æ ø
;®®ø ¿!
GetUniqueCategories
©© 
(
©©  
categoriesRound2
©©  0
,
©©0 1$
categoriesOfGameRound2
©©2 H
)
©©H I
;
©©I J
}
™™ 	
private
¨¨ 
void
¨¨ !
GetUniqueCategories
¨¨ (
(
¨¨( )
List
¨¨) -
<
¨¨- .
CategoryPojo
¨¨. :
>
¨¨: ;$
categoriesRepeatedList
¨¨< R
,
¨¨R S
List
¨¨T X
<
¨¨X Y
CategoryPojo
¨¨Y e
>
¨¨e f 
uniqueCategoryList
¨¨g y
)
¨¨y z
{
≠≠ 	
foreach
ÆÆ 
(
ÆÆ 
var
ÆÆ 
categoryToProve
ÆÆ (
in
ÆÆ) +$
categoriesRepeatedList
ÆÆ, B
)
ÆÆB C
{
ØØ 
bool
∞∞ 
exist
∞∞ 
=
∞∞ 
false
∞∞ "
;
∞∞" #
foreach
±± 
(
±± 
var
±± 
CategorySaved
±± *
in
±±+ - 
uniqueCategoryList
±±. @
)
±±@ A
{
≤≤ 
if
¥¥ 
(
¥¥ 
categoryToProve
¥¥ '
.
¥¥' (

IdCategory
¥¥( 2
==
¥¥3 5
CategorySaved
¥¥6 C
.
¥¥C D

IdCategory
¥¥D N
)
¥¥N O
{
µµ 
exist
∂∂ 
=
∂∂ 
true
∂∂  $
;
∂∂$ %
break
∑∑ 
;
∑∑ 
}
∏∏ 
}
ππ 
if
∫∫ 
(
∫∫ 
!
∫∫ 
exist
∫∫ 
)
∫∫ 
{
ªª  
uniqueCategoryList
ºº &
.
ºº& '
Add
ºº' *
(
ºº* +
categoryToProve
ºº+ :
)
ºº: ;
;
ºº; <
}
ΩΩ 
}
ææ 
}
øø 	
private
¡¡ 
void
¡¡ '
CreatePlayersScoresBoards
¡¡ .
(
¡¡. /
)
¡¡/ 0
{
¬¬ 	

stpPlayers
√√ 
.
√√ 
Children
√√ 
.
√√  
Clear
√√  %
(
√√% &
)
√√& '
;
√√' (
if
ƒƒ 
(
ƒƒ 
itsTeamGame
ƒƒ 
)
ƒƒ 
{
≈≈ 
team1
∆∆ 
=
∆∆ 
playersInGame
∆∆ %
.
∆∆% &
Where
∆∆& +
(
∆∆+ ,
pla
∆∆, /
=>
∆∆0 2
pla
∆∆3 6
.
∆∆6 7
SideTeam
∆∆7 ?
==
∆∆@ B
$num
∆∆C D
)
∆∆D E
.
∆∆E F
ToList
∆∆F L
(
∆∆L M
)
∆∆M N
;
∆∆N O
team2
«« 
=
«« 
playersInGame
«« %
.
««% &
Where
««& +
(
««+ ,
pla
««, /
=>
««0 2
pla
««3 6
.
««6 7
SideTeam
««7 ?
==
««@ B
$num
««C D
)
««D E
.
««E F
ToList
««F L
(
««L M
)
««M N
;
««N O

stpPlayers
»» 
.
»» 
Children
»» #
.
»»# $
Add
»»$ '
(
»»' (
new
»»( +
GameTeamCard
»», 8
(
»»8 9
team1
»»9 >
[
»»> ?
$num
»»? @
]
»»@ A
,
»»A B
team1
»»C H
[
»»H I
$num
»»I J
]
»»J K
)
»»K L
)
»»L M
;
»»M N

stpPlayers
…… 
.
…… 
Children
…… #
.
……# $
Add
……$ '
(
……' (
new
……( +
GameTeamCard
……, 8
(
……8 9
team2
……9 >
[
……> ?
$num
……? @
]
……@ A
,
……A B
team2
……C H
[
……H I
$num
……I J
]
……J K
)
……K L
)
……L M
;
……M N
	team1Name
   
=
   
$str
   
+
    
team1
    %
[
  % &
$num
  & '
]
  ' (
.
  ( )
IdUser
  ) /
.
  / 0
ToString
  0 8
(
  8 9
)
  9 :
+
  : ;
team1
  < A
[
  A B
$num
  B C
]
  C D
.
  D E
IdUser
  E K
.
  K L
ToString
  L T
(
  T U
)
  U V
;
  V W
	team2Name
ÀÀ 
=
ÀÀ 
$str
ÀÀ 
+
ÀÀ  !
team2
ÀÀ" '
[
ÀÀ' (
$num
ÀÀ( )
]
ÀÀ) *
.
ÀÀ* +
IdUser
ÀÀ+ 1
.
ÀÀ1 2
ToString
ÀÀ2 :
(
ÀÀ: ;
)
ÀÀ; <
+
ÀÀ< =
team2
ÀÀ> C
[
ÀÀC D
$num
ÀÀD E
]
ÀÀE F
.
ÀÀF G
IdUser
ÀÀG M
.
ÀÀM N
ToString
ÀÀN V
(
ÀÀV W
)
ÀÀW X
;
ÀÀX Y
}
ÃÃ 
else
ÕÕ 
{
ŒŒ 
foreach
œœ 
(
œœ 
var
œœ 
item
œœ !
in
œœ" $
playersInGame
œœ% 2
)
œœ2 3
{
–– 
GamePlayerCard
—— "

playerCard
——# -
=
——. /
new
——0 3
GamePlayerCard
——4 B
(
——B C
item
——C G
)
——G H
;
——H I

stpPlayers
““ 
.
““ 
Children
““ '
.
““' (
Add
““( +
(
““+ ,

playerCard
““, 6
)
““6 7
;
““7 8
}
”” 
}
‘‘ 
}
’’ 	
private
◊◊ 
void
◊◊ 
PrepareRoundOne
◊◊ #
(
◊◊# $
)
◊◊$ %
{
ÿÿ 	#
SetInformationInCards
ŸŸ !
(
ŸŸ! "$
categoriesOfGameRound1
ŸŸ" 8
,
ŸŸ8 9
questionsRoundOne
ŸŸ: K
)
ŸŸK L
;
ŸŸL M
currentRound
⁄⁄ 
=
⁄⁄ 
	ROUND_ONE
⁄⁄ $
;
⁄⁄$ %
}
€€ 	
private
›› 
void
›› 
PrepareRoundTwo
›› $
(
››$ %
)
››% &
{
ﬁﬁ 	
wrpBoardOfCards
ﬂﬂ 
.
ﬂﬂ 
Children
ﬂﬂ $
.
ﬂﬂ$ %
Clear
ﬂﬂ% *
(
ﬂﬂ* +
)
ﬂﬂ+ ,
;
ﬂﬂ, -.
 BeginHostPresentationSecondRound
‡‡ ,
(
‡‡, -
)
‡‡- .
;
‡‡. /#
SetInformationInCards
·· !
(
··! "$
categoriesOfGameRound2
··" 8
,
··8 9
questionsRoundTwo
··: K
)
··K L
;
··L M
}
‚‚ 	
private
‰‰ 
void
‰‰ 
PrepareLastRound
‰‰ %
(
‰‰% &
)
‰‰& '
{
ÂÂ 	
wrpBoardOfCards
ÊÊ 
.
ÊÊ 
Children
ÊÊ $
.
ÊÊ$ %
Clear
ÊÊ% *
(
ÊÊ* +
)
ÊÊ+ ,
;
ÊÊ, -
wrpBoardOfCards
ÁÁ 
.
ÁÁ 

Visibility
ÁÁ &
=
ÁÁ' (

Visibility
ÁÁ) 3
.
ÁÁ3 4
	Collapsed
ÁÁ4 =
;
ÁÁ= >,
BeginHostPresentationLastRound
ËË *
(
ËË* +
)
ËË+ ,
;
ËË, -
}
ÈÈ 	
private
ÎÎ 
void
ÎÎ #
SetInformationInCards
ÎÎ *
(
ÎÎ* +
List
ÎÎ+ /
<
ÎÎ/ 0
CategoryPojo
ÎÎ0 <
>
ÎÎ< =
categoriesOfGame
ÎÎ> N
,
ÎÎN O
List
ÎÎP T
<
ÎÎT U%
QuestionCardInformation
ÎÎU l
>
ÎÎl m
questionsOfRound
ÎÎn ~
)
ÎÎ~ 
{
ÏÏ 	
foreach
ÌÌ 
(
ÌÌ 
var
ÌÌ 
category
ÌÌ !
in
ÌÌ" $
categoriesOfGame
ÌÌ% 5
)
ÌÌ5 6
{
ÓÓ 
GameCategoryCard
ÔÔ  
categoryCard
ÔÔ! -
=
ÔÔ. /
new
ÔÔ0 3
(
ÔÔ3 4!
GetSpecificResource
ÔÔ4 G
.
ÔÔG H,
GetEnglishOrSpanishDescription
ÔÔH f
(
ÔÔf g
category
ÔÔg o
.
ÔÔo p)
EnglishCategoryDescriptionÔÔp ä
,ÔÔä ã
categoryÔÔå î
.ÔÔî ï*
SpanishCategoryDescriptionÔÔï Ø
)ÔÔØ ∞
)ÔÔ∞ ±
;ÔÔ± ≤
wrpBoardOfCards
 
.
  
Children
  (
.
( )
Add
) ,
(
, -
categoryCard
- 9
)
9 :
;
: ;
var
ÒÒ !
questionsOfCategory
ÒÒ '
=
ÒÒ( )
questionsOfRound
ÒÒ* :
.
ÒÒ: ;
Where
ÒÒ; @
(
ÒÒ@ A
quest
ÒÒA F
=>
ÒÒG I
quest
ÒÒJ O
.
ÒÒO P%
SpecificQuestionDetails
ÒÒP g
.
ÒÒg h
IdCategoryBelong
ÒÒh x
==
ÒÒy {
categoryÒÒ| Ñ
.ÒÒÑ Ö

IdCategoryÒÒÖ è
)ÒÒè ê
.ÒÒê ë
ToListÒÒë ó
(ÒÒó ò
)ÒÒò ô
;ÒÒô ö
foreach
ÚÚ 
(
ÚÚ 
var
ÚÚ 
questionCard
ÚÚ )
in
ÚÚ* ,!
questionsOfCategory
ÚÚ- @
)
ÚÚ@ A
{
ÛÛ 
GamePointsCard
ÙÙ "

pointsCard
ÙÙ# -
=
ÙÙ. /
new
ÙÙ0 3
(
ÙÙ3 4
questionCard
ÙÙ4 @
,
ÙÙ@ A
this
ÙÙB F
)
ÙÙF G
;
ÙÙG H
wrpBoardOfCards
ıı #
.
ıı# $
Children
ıı$ ,
.
ıı, -
Add
ıı- 0
(
ıı0 1

pointsCard
ıı1 ;
)
ıı; <
;
ıı< =
}
ˆˆ 
}
˜˜ 
}
¯¯ 	
private
˙˙ 
async
˙˙ 
void
˙˙ #
BeginHostPresentation
˙˙ 0
(
˙˙0 1
)
˙˙1 2
{
˚˚ 	
wrpBoardOfCards
¸¸ 
.
¸¸ 

Visibility
¸¸ &
=
¸¸' (

Visibility
¸¸) 3
.
¸¸3 4
Hidden
¸¸4 :
;
¸¸: ;
stpTurnLigth
˝˝ 
.
˝˝ 

Visibility
˝˝ #
=
˝˝$ %

Visibility
˝˝& 0
.
˝˝0 1
Hidden
˝˝1 7
;
˝˝7 8
grdPresentation
˛˛ 
.
˛˛ 

Visibility
˛˛ &
=
˛˛' (

Visibility
˛˛) 3
.
˛˛3 4
Visible
˛˛4 ;
;
˛˛; <
string
ˇˇ 
hostPath
ˇˇ 
=
ˇˇ !
GetSpecificResource
ˇˇ 1
.
ˇˇ1 2
GetHosImage
ˇˇ2 =
(
ˇˇ= >
$num
ˇˇ> ?
)
ˇˇ? @
;
ˇˇ@ A
imgHostImage
ÄÄ 
.
ÄÄ 
Source
ÄÄ 
=
ÄÄ  !
new
ÄÄ" %
BitmapImage
ÄÄ& 1
(
ÄÄ1 2
new
ÄÄ2 5
Uri
ÄÄ6 9
(
ÄÄ9 :
hostPath
ÄÄ: B
,
ÄÄB C
UriKind
ÄÄD K
.
ÄÄK L
Absolute
ÄÄL T
)
ÄÄT U
)
ÄÄU V
;
ÄÄV W
string
ÅÅ 
hostName
ÅÅ 
=
ÅÅ 
System
ÅÅ $
.
ÅÅ$ %
IO
ÅÅ% '
.
ÅÅ' (
Path
ÅÅ( ,
.
ÅÅ, -)
GetFileNameWithoutExtension
ÅÅ- H
(
ÅÅH I
hostPath
ÅÅI Q
)
ÅÅQ R
;
ÅÅR S
txbHostMessage
ÇÇ 
.
ÇÇ 
Text
ÇÇ 
=
ÇÇ  !

Properties
ÇÇ" ,
.
ÇÇ, -
	Resources
ÇÇ- 6
.
ÇÇ6 7$
HostRound1Presentation
ÇÇ7 M
.
ÇÇM N
Replace
ÇÇN U
(
ÇÇU V
$str
ÇÇV Y
,
ÇÇY Z
hostName
ÇÇ[ c
)
ÇÇc d
;
ÇÇd e
await
ÉÉ 
Task
ÉÉ 
.
ÉÉ 
Delay
ÉÉ 
(
ÉÉ 
$num
ÉÉ !
)
ÉÉ! "
;
ÉÉ" #
string
ÑÑ $
categoriesPresentation
ÑÑ )
=
ÑÑ* +

Properties
ÑÑ, 6
.
ÑÑ6 7
	Resources
ÑÑ7 @
.
ÑÑ@ A(
HostCategoriesPresentation
ÑÑA [
;
ÑÑ[ \$
categoriesPresentation
ÖÖ "
=
ÖÖ# $$
categoriesPresentation
ÖÖ% ;
.
ÖÖ; <
Replace
ÖÖ< C
(
ÖÖC D
$str
ÖÖD G
,
ÖÖG H!
GetSpecificResource
ÖÖI \
.
ÖÖ\ ],
GetEnglishOrSpanishDescription
ÖÖ] {
(
ÖÖ{ |%
categoriesOfGameRound1ÖÖ| í
[ÖÖí ì
$numÖÖì î
]ÖÖî ï
.ÖÖï ñ*
EnglishCategoryDescriptionÖÖñ ∞
,ÖÖ∞ ±&
categoriesOfGameRound1ÖÖ≤ »
[ÖÖ» …
$numÖÖ…  
]ÖÖ  À
.ÖÖÀ Ã*
SpanishCategoryDescriptionÖÖÃ Ê
)ÖÖÊ Á
)ÖÖÁ Ë
;ÖÖË È$
categoriesPresentation
ÜÜ "
=
ÜÜ# $$
categoriesPresentation
ÜÜ% ;
.
ÜÜ; <
Replace
ÜÜ< C
(
ÜÜC D
$str
ÜÜD G
,
ÜÜG H!
GetSpecificResource
ÜÜI \
.
ÜÜ\ ],
GetEnglishOrSpanishDescription
ÜÜ] {
(
ÜÜ{ |%
categoriesOfGameRound1ÜÜ| í
[ÜÜí ì
$numÜÜì î
]ÜÜî ï
.ÜÜï ñ*
EnglishCategoryDescriptionÜÜñ ∞
,ÜÜ∞ ±&
categoriesOfGameRound1ÜÜ≤ »
[ÜÜ» …
$numÜÜ…  
]ÜÜ  À
.ÜÜÀ Ã*
SpanishCategoryDescriptionÜÜÃ Ê
)ÜÜÊ Á
)ÜÜÁ Ë
;ÜÜË È$
categoriesPresentation
áá "
=
áá# $$
categoriesPresentation
áá% ;
.
áá; <
Replace
áá< C
(
ááC D
$str
ááD G
,
ááG H!
GetSpecificResource
ááI \
.
áá\ ],
GetEnglishOrSpanishDescription
áá] {
(
áá{ |%
categoriesOfGameRound1áá| í
[ááí ì
$numááì î
]ááî ï
.ááï ñ*
EnglishCategoryDescriptionááñ ∞
,áá∞ ±&
categoriesOfGameRound1áá≤ »
[áá» …
$numáá…  
]áá  À
.ááÀ Ã*
SpanishCategoryDescriptionááÃ Ê
)ááÊ Á
)ááÁ Ë
;ááË È$
categoriesPresentation
àà "
=
àà# $$
categoriesPresentation
àà% ;
.
àà; <
Replace
àà< C
(
ààC D
$str
ààD I
,
ààI J
Environment
ààK V
.
ààV W
NewLine
ààW ^
)
àà^ _
;
àà_ `$
categoriesPresentation
ââ "
=
ââ# $$
categoriesPresentation
ââ% ;
.
ââ; <
Replace
ââ< C
(
ââC D
$str
ââD G
,
ââG H
	ROUND_ONE
ââI R
.
ââR S
ToString
ââS [
(
ââ[ \
)
ââ\ ]
)
ââ] ^
;
ââ^ _
txbHostMessage
ää 
.
ää 
Text
ää 
=
ää  !$
categoriesPresentation
ää" 8
;
ää8 9
await
ãã 
Task
ãã 
.
ãã 
Delay
ãã 
(
ãã 
$num
ãã !
)
ãã! "
;
ãã" #
wrpBoardOfCards
åå 
.
åå 

Visibility
åå &
=
åå' (

Visibility
åå) 3
.
åå3 4
Visible
åå4 ;
;
åå; <
stpTurnLigth
çç 
.
çç 

Visibility
çç #
=
çç$ %

Visibility
çç& 0
.
çç0 1
Visible
çç1 8
;
çç8 9
grdPresentation
éé 
.
éé 

Visibility
éé &
=
éé' (

Visibility
éé) 3
.
éé3 4
	Collapsed
éé4 =
;
éé= >
}
èè 	
private
ëë 
async
ëë 
void
ëë .
 BeginHostPresentationSecondRound
ëë ;
(
ëë; <
)
ëë< =
{
íí 	
grTimer
ìì 
.
ìì 

Visibility
ìì 
=
ìì  

Visibility
ìì! +
.
ìì+ ,
Hidden
ìì, 2
;
ìì2 3
wrpBoardOfCards
îî 
.
îî 

Visibility
îî &
=
îî' (

Visibility
îî) 3
.
îî3 4
Hidden
îî4 :
;
îî: ;
stpTurnLigth
ïï 
.
ïï 

Visibility
ïï #
=
ïï$ %

Visibility
ïï& 0
.
ïï0 1
Hidden
ïï1 7
;
ïï7 8
grdPresentation
ññ 
.
ññ 

Visibility
ññ &
=
ññ' (

Visibility
ññ) 3
.
ññ3 4
Visible
ññ4 ;
;
ññ; <
txbHostMessage
óó 
.
óó 
Text
óó 
=
óó  !

Properties
óó" ,
.
óó, -
	Resources
óó- 6
.
óó6 7#
HostRoun2Presentation
óó7 L
;
óóL M
await
òò 
Task
òò 
.
òò 
Delay
òò 
(
òò 
$num
òò !
)
òò! "
;
òò" #
string
ôô $
categoriesPresentation
ôô )
=
ôô* +

Properties
ôô, 6
.
ôô6 7
	Resources
ôô7 @
.
ôô@ A(
HostCategoriesPresentation
ôôA [
;
ôô[ \$
categoriesPresentation
öö "
=
öö# $$
categoriesPresentation
öö% ;
.
öö; <
Replace
öö< C
(
ööC D
$str
ööD G
,
ööG H!
GetSpecificResource
ööI \
.
öö\ ],
GetEnglishOrSpanishDescription
öö] {
(
öö{ |%
categoriesOfGameRound2öö| í
[ööí ì
$numööì î
]ööî ï
.ööï ñ*
EnglishCategoryDescriptionööñ ∞
,öö∞ ±&
categoriesOfGameRound2öö≤ »
[öö» …
$numöö…  
]öö  À
.ööÀ Ã*
SpanishCategoryDescriptionööÃ Ê
)ööÊ Á
)ööÁ Ë
;ööË È$
categoriesPresentation
õõ "
=
õõ# $$
categoriesPresentation
õõ% ;
.
õõ; <
Replace
õõ< C
(
õõC D
$str
õõD G
,
õõG H!
GetSpecificResource
õõI \
.
õõ\ ],
GetEnglishOrSpanishDescription
õõ] {
(
õõ{ |%
categoriesOfGameRound2õõ| í
[õõí ì
$numõõì î
]õõî ï
.õõï ñ*
EnglishCategoryDescriptionõõñ ∞
,õõ∞ ±&
categoriesOfGameRound2õõ≤ »
[õõ» …
$numõõ…  
]õõ  À
.õõÀ Ã*
SpanishCategoryDescriptionõõÃ Ê
)õõÊ Á
)õõÁ Ë
;õõË È$
categoriesPresentation
úú "
=
úú# $$
categoriesPresentation
úú% ;
.
úú; <
Replace
úú< C
(
úúC D
$str
úúD G
,
úúG H!
GetSpecificResource
úúI \
.
úú\ ],
GetEnglishOrSpanishDescription
úú] {
(
úú{ |%
categoriesOfGameRound2úú| í
[úúí ì
$numúúì î
]úúî ï
.úúï ñ*
EnglishCategoryDescriptionúúñ ∞
,úú∞ ±&
categoriesOfGameRound2úú≤ »
[úú» …
$numúú…  
]úú  À
.úúÀ Ã*
SpanishCategoryDescriptionúúÃ Ê
)úúÊ Á
)úúÁ Ë
;úúË È$
categoriesPresentation
ùù "
=
ùù# $$
categoriesPresentation
ùù% ;
.
ùù; <
Replace
ùù< C
(
ùùC D
$str
ùùD I
,
ùùI J
Environment
ùùK V
.
ùùV W
NewLine
ùùW ^
)
ùù^ _
;
ùù_ `$
categoriesPresentation
ûû "
=
ûû# $$
categoriesPresentation
ûû% ;
.
ûû; <
Replace
ûû< C
(
ûûC D
$str
ûûD G
,
ûûG H
	ROUND_TWO
ûûI R
.
ûûR S
ToString
ûûS [
(
ûû[ \
)
ûû\ ]
)
ûû] ^
;
ûû^ _
txbHostMessage
üü 
.
üü 
Text
üü 
=
üü  !$
categoriesPresentation
üü" 8
;
üü8 9
await
†† 
Task
†† 
.
†† 
Delay
†† 
(
†† 
$num
†† !
)
††! "
;
††" #
wrpBoardOfCards
°° 
.
°° 

Visibility
°° &
=
°°' (

Visibility
°°) 3
.
°°3 4
Visible
°°4 ;
;
°°; <
stpTurnLigth
¢¢ 
.
¢¢ 

Visibility
¢¢ #
=
¢¢$ %

Visibility
¢¢& 0
.
¢¢0 1
Visible
¢¢1 8
;
¢¢8 9
grdPresentation
££ 
.
££ 

Visibility
££ &
=
££' (

Visibility
££) 3
.
££3 4
	Collapsed
££4 =
;
££= >
}
§§ 	
private
¶¶ 
async
¶¶ 
void
¶¶ ,
BeginHostPresentationLastRound
¶¶ 9
(
¶¶9 :
)
¶¶: ;
{
ßß 	
grTimer
®® 
.
®® 

Visibility
®® 
=
®®  

Visibility
®®! +
.
®®+ ,
Hidden
®®, 2
;
®®2 3
wrpBoardOfCards
©© 
.
©© 

Visibility
©© &
=
©©' (

Visibility
©©) 3
.
©©3 4
Hidden
©©4 :
;
©©: ;
stpTurnLigth
™™ 
.
™™ 

Visibility
™™ #
=
™™$ %

Visibility
™™& 0
.
™™0 1
Hidden
™™1 7
;
™™7 8
grdPresentation
´´ 
.
´´ 

Visibility
´´ &
=
´´' (

Visibility
´´) 3
.
´´3 4
Visible
´´4 ;
;
´´; <
txbHostMessage
¨¨ 
.
¨¨ 
Text
¨¨ 
=
¨¨  !

Properties
¨¨" ,
.
¨¨, -
	Resources
¨¨- 6
.
¨¨6 7$
HostRound3Presentation
¨¨7 M
;
¨¨M N
await
≠≠ 
Task
≠≠ 
.
≠≠ 
Delay
≠≠ 
(
≠≠ 
$num
≠≠ !
)
≠≠! "
;
≠≠" #
grdBet
ÆÆ 
.
ÆÆ 

Visibility
ÆÆ 
=
ÆÆ 

Visibility
ÆÆ  *
.
ÆÆ* +
Visible
ÆÆ+ 2
;
ÆÆ2 3
grdPresentation
ØØ 
.
ØØ 

Visibility
ØØ &
=
ØØ' (

Visibility
ØØ) 3
.
ØØ3 4
	Collapsed
ØØ4 =
;
ØØ= >
List
∞∞ 
<
∞∞ 
Border
∞∞ 
>
∞∞ 
playersBorders
∞∞ '
=
∞∞( )

stpPlayers
∞∞* 4
.
∞∞4 5
Children
∞∞5 =
.
∞∞= >
OfType
∞∞> D
<
∞∞D E
Border
∞∞E K
>
∞∞K L
(
∞∞L M
)
∞∞M N
.
∞∞N O
ToList
∞∞O U
(
∞∞U V
)
∞∞V W
;
∞∞W X
if
±± 
(
±± 
itsTeamGame
±± 
)
±± 
{
≤≤ 
string
≥≥ 
nameOfBorder
≥≥ #
;
≥≥# $
if
¥¥ 
(
¥¥ 
playersInGame
¥¥ !
.
¥¥! "
FirstOrDefault
¥¥" 0
(
¥¥0 1
pl
¥¥1 3
=>
¥¥4 6
pl
¥¥7 9
.
¥¥9 :
IdUser
¥¥: @
==
¥¥A C
userSingleton
¥¥D Q
.
¥¥Q R
IdUser
¥¥R X
)
¥¥X Y
.
¥¥Y Z
SideTeam
¥¥Z b
==
¥¥c e
$num
¥¥f g
)
¥¥g h
{
µµ 
nameOfBorder
∂∂  
=
∂∂! "
	team1Name
∂∂# ,
;
∂∂, -
}
∑∑ 
else
∏∏ 
{
ππ 
nameOfBorder
∫∫  
=
∫∫! "
	team2Name
∫∫# ,
;
∫∫, -
}
ªª 
GameTeamCard
ºº #
currentPointsOfPlayer
ºº 2
=
ºº3 4
(
ºº5 6
GameTeamCard
ºº6 B
)
ººB C

stpPlayers
ººC M
.
ººM N
Children
ººN V
.
ººV W
OfType
ººW ]
<
ºº] ^
Border
ºº^ d
>
ººd e
(
ººe f
)
ººf g
.
ººg h
FirstOrDefault
ººh v
(
ººv w
pla
ººw z
=>
ºº{ }
plaºº~ Å
.ººÅ Ç
NameººÇ Ü
.ººÜ á
Equalsººá ç
(ººç é
nameOfBorderººé ö
)ººö õ
)ººõ ú
;ººú ù
if
ΩΩ 
(
ΩΩ #
currentPointsOfPlayer
ΩΩ )
.
ΩΩ) *
	GetPoints
ΩΩ* 3
(
ΩΩ3 4
)
ΩΩ4 5
<
ΩΩ6 7
$num
ΩΩ8 9
)
ΩΩ9 :
{
ææ 
txbPointsToBet
øø "
.
øø" #
Text
øø# '
=
øø( )
$str
øø* -
;
øø- .
txbPointsToBet
¿¿ "
.
¿¿" #
	IsEnabled
¿¿# ,
=
¿¿- .
false
¿¿/ 4
;
¿¿4 5
}
¡¡ 
}
¬¬ 
else
√√ 
{
ƒƒ 
GamePlayerCard
≈≈ #
currentPointsOfPlayer
≈≈ 4
=
≈≈5 6
(
≈≈7 8
GamePlayerCard
≈≈8 F
)
≈≈F G
playersBorders
≈≈G U
.
≈≈U V
Find
≈≈V Z
(
≈≈Z [
pl
≈≈[ ]
=>
≈≈^ `
pl
≈≈a c
.
≈≈c d
Name
≈≈d h
.
≈≈h i
Equals
≈≈i o
(
≈≈o p
$str
≈≈p s
+
≈≈t u
userSingleton≈≈v É
.≈≈É Ñ
IdUser≈≈Ñ ä
.≈≈ä ã
ToString≈≈ã ì
(≈≈ì î
)≈≈î ï
)≈≈ï ñ
)≈≈ñ ó
;≈≈ó ò
if
∆∆ 
(
∆∆ #
currentPointsOfPlayer
∆∆ )
.
∆∆) *
	GetPoints
∆∆* 3
(
∆∆3 4
)
∆∆4 5
<
∆∆6 7
$num
∆∆8 9
)
∆∆9 :
{
«« 
txbPointsToBet
»» "
.
»»" #
Text
»»# '
=
»»( )
$str
»»* -
;
»»- .
txbPointsToBet
…… "
.
……" #
	IsEnabled
……# ,
=
……- .
false
……/ 4
;
……4 5
}
   
}
ÀÀ 
}
ÃÃ 	
private
ŒŒ 
void
ŒŒ 
ClickConfirmBet
ŒŒ $
(
ŒŒ$ %
object
ŒŒ% +
sender
ŒŒ, 2
,
ŒŒ2 3
RoutedEventArgs
ŒŒ4 C
e
ŒŒD E
)
ŒŒE F
{
œœ 	
string
–– 
pointsToBets
–– 
=
––  !
txbPointsToBet
––" 0
.
––0 1
Text
––1 5
;
––5 6
if
—— 
(
—— 
!
—— 
string
—— 
.
—— 
IsNullOrEmpty
—— %
(
——% &
pointsToBets
——& 2
)
——2 3
)
——3 4
{
““ 
	pointsBet
”” 
=
”” 
int
”” 
.
””  
Parse
””  %
(
””% &
txbPointsToBet
””& 4
.
””4 5
Text
””5 9
)
””9 :
;
””: ;
List
‘‘ 
<
‘‘ 
Border
‘‘ 
>
‘‘ 
playersBorders
‘‘ +
=
‘‘, -

stpPlayers
‘‘. 8
.
‘‘8 9
Children
‘‘9 A
.
‘‘A B
OfType
‘‘B H
<
‘‘H I
Border
‘‘I O
>
‘‘O P
(
‘‘P Q
)
‘‘Q R
.
‘‘R S
ToList
‘‘S Y
(
‘‘Y Z
)
‘‘Z [
;
‘‘[ \
if
’’ 
(
’’ 
itsTeamGame
’’ 
)
’’  
{
÷÷ 
string
◊◊ 
nameOfBorder
◊◊ '
;
◊◊' (
if
ÿÿ 
(
ÿÿ 
playersInGame
ÿÿ %
.
ÿÿ% &
FirstOrDefault
ÿÿ& 4
(
ÿÿ4 5
pl
ÿÿ5 7
=>
ÿÿ8 :
pl
ÿÿ; =
.
ÿÿ= >
IdUser
ÿÿ> D
==
ÿÿE G
userSingleton
ÿÿH U
.
ÿÿU V
IdUser
ÿÿV \
)
ÿÿ\ ]
.
ÿÿ] ^
SideTeam
ÿÿ^ f
==
ÿÿg i
$num
ÿÿj k
)
ÿÿk l
{
ŸŸ 
nameOfBorder
⁄⁄ $
=
⁄⁄% &
	team1Name
⁄⁄' 0
;
⁄⁄0 1
}
€€ 
else
‹‹ 
{
›› 
nameOfBorder
ﬁﬁ $
=
ﬁﬁ% &
	team2Name
ﬁﬁ' 0
;
ﬁﬁ0 1
}
ﬂﬂ 
var
‡‡ #
currentPointsOfPlayer
‡‡ -
=
‡‡. /
playersBorders
‡‡0 >
.
‡‡> ?
FirstOrDefault
‡‡? M
(
‡‡M N
pla
‡‡N Q
=>
‡‡R T
pla
‡‡U X
.
‡‡X Y
Name
‡‡Y ]
.
‡‡] ^
Equals
‡‡^ d
(
‡‡d e
nameOfBorder
‡‡e q
)
‡‡q r
)
‡‡r s
;
‡‡s t
if
·· 
(
·· 
	pointsBet
·· !
<=
··" $
(
··% &
(
··& '
GameTeamCard
··' 3
)
··3 4#
currentPointsOfPlayer
··4 I
)
··I J
.
··J K
	GetPoints
··K T
(
··T U
)
··U V
||
··W Y
	pointsBet
··Z c
==
··d f
$num
··g h
)
··h i
{
‚‚ )
GameActionsOperationsClient
„„ 3$
gameActionsClientProxy
„„4 J
=
„„K L
new
„„M P
(
„„P Q
)
„„Q R
;
„„R S$
gameActionsClientProxy
‰‰ .
.
‰‰. /

ConfirmBet
‰‰/ 9
(
‰‰9 :
roomCode
‰‰: B
,
‰‰B C
userSingleton
‰‰D Q
.
‰‰Q R
IdUser
‰‰R X
)
‰‰X Y
;
‰‰Y Z
txbPointsToBet
ÂÂ &
.
ÂÂ& '
	IsEnabled
ÂÂ' 0
=
ÂÂ1 2
false
ÂÂ3 8
;
ÂÂ8 9
bttConfirmBet
ÊÊ %
.
ÊÊ% &
	IsEnabled
ÊÊ& /
=
ÊÊ0 1
false
ÊÊ2 7
;
ÊÊ7 8
}
ÁÁ 
}
ËË 
else
ÈÈ 
{
ÍÍ 
var
ÎÎ #
currentPointsOfPlayer
ÎÎ -
=
ÎÎ. /
playersBorders
ÎÎ0 >
.
ÎÎ> ?
Find
ÎÎ? C
(
ÎÎC D
pl
ÎÎD F
=>
ÎÎG I
pl
ÎÎJ L
.
ÎÎL M
Name
ÎÎM Q
.
ÎÎQ R
Equals
ÎÎR X
(
ÎÎX Y
$str
ÎÎY \
+
ÎÎ] ^
userSingleton
ÎÎ_ l
.
ÎÎl m
IdUser
ÎÎm s
.
ÎÎs t
ToString
ÎÎt |
(
ÎÎ| }
)
ÎÎ} ~
)
ÎÎ~ 
)ÎÎ Ä
;ÎÎÄ Å
if
ÏÏ 
(
ÏÏ 
	pointsBet
ÏÏ !
<=
ÏÏ" $
(
ÏÏ% &
(
ÏÏ& '
GamePlayerCard
ÏÏ' 5
)
ÏÏ5 6#
currentPointsOfPlayer
ÏÏ6 K
)
ÏÏK L
.
ÏÏL M
	GetPoints
ÏÏM V
(
ÏÏV W
)
ÏÏW X
||
ÏÏY [
	pointsBet
ÏÏ\ e
==
ÏÏf h
$num
ÏÏi j
)
ÏÏj k
{
ÌÌ 
try
ÓÓ 
{
ÔÔ 
GameActionsClient
 -,
gameActionsCallBackClientProxy
. L
=
M N
new
O R
GameActionsClient
S d
(
d e
new
e h
InstanceContext
i x
(
x y
this
y }
)
} ~
)
~ 
; Ä,
gameActionsCallBackClientProxy
ÒÒ :
.
ÒÒ: ;
RenewGameCallBack
ÒÒ; L
(
ÒÒL M
roomCode
ÒÒM U
,
ÒÒU V
userSingleton
ÒÒW d
.
ÒÒd e
IdUser
ÒÒe k
)
ÒÒk l
;
ÒÒl m)
GameActionsOperationsClient
ÛÛ 7$
gameActionsClientProxy
ÛÛ8 N
=
ÛÛO P
new
ÛÛQ T
(
ÛÛT U
)
ÛÛU V
;
ÛÛV W$
gameActionsClientProxy
ÙÙ 2
.
ÙÙ2 3

ConfirmBet
ÙÙ3 =
(
ÙÙ= >
roomCode
ÙÙ> F
,
ÙÙF G
userSingleton
ÙÙH U
.
ÙÙU V
IdUser
ÙÙV \
)
ÙÙ\ ]
;
ÙÙ] ^
txbPointsToBet
ıı *
.
ıı* +
	IsEnabled
ıı+ 4
=
ıı5 6
false
ıı7 <
;
ıı< =
bttConfirmBet
ˆˆ )
.
ˆˆ) *
	IsEnabled
ˆˆ* 3
=
ˆˆ4 5
false
ˆˆ6 ;
;
ˆˆ; <
}
˜˜ 
catch
¯¯ 
(
¯¯ '
EndpointNotFoundException
¯¯ 8
ex
¯¯9 ;
)
¯¯; <
{
˘˘ 
HandleException
˙˙ +
(
˙˙+ ,
ex
˙˙, .
,
˙˙. /

Properties
˙˙0 :
.
˙˙: ;
	Resources
˙˙; D
.
˙˙D E
lblFailToMakeBet
˙˙E U
+
˙˙V W
$str
˙˙X ]
+
˙˙^ _

Properties
˙˙` j
.
˙˙j k
	Resources
˙˙k t
.
˙˙t u"
lblEndPointNotFound˙˙u à
)˙˙à â
;˙˙â ä
}
˚˚ 
catch
¸¸ 
(
¸¸ 1
#CommunicationObjectFaultedException
¸¸ B
ex
¸¸C E
)
¸¸E F
{
˝˝ 
HandleException
˛˛ +
(
˛˛+ ,
ex
˛˛, .
,
˛˛. /

Properties
˛˛0 :
.
˛˛: ;
	Resources
˛˛; D
.
˛˛D E
lblFailToMakeBet
˛˛E U
+
˛˛V W
$str
˛˛X ]
+
˛˛^ _

Properties
˛˛` j
.
˛˛j k
	Resources
˛˛k t
.
˛˛t u'
lblComunicationException˛˛u ç
)˛˛ç é
;˛˛é è
}
ˇˇ 
catch
ÄÄ 
(
ÄÄ 
TimeoutException
ÄÄ /
ex
ÄÄ0 2
)
ÄÄ2 3
{
ÅÅ 
HandleException
ÇÇ +
(
ÇÇ+ ,
ex
ÇÇ, .
,
ÇÇ. /

Properties
ÇÇ0 :
.
ÇÇ: ;
	Resources
ÇÇ; D
.
ÇÇD E
lblFailToMakeBet
ÇÇE U
+
ÇÇV W
$str
ÇÇX ]
+
ÇÇ^ _

Properties
ÇÇ` j
.
ÇÇj k
	Resources
ÇÇk t
.
ÇÇt u
lblTimeExceptionÇÇu Ö
)ÇÇÖ Ü
;ÇÇÜ á
}
ÉÉ 
catch
ÑÑ 
(
ÑÑ $
CommunicationException
ÑÑ 5
ex
ÑÑ6 8
)
ÑÑ8 9
{
ÖÖ 
HandleException
ÜÜ +
(
ÜÜ+ ,
ex
ÜÜ, .
,
ÜÜ. /

Properties
ÜÜ0 :
.
ÜÜ: ;
	Resources
ÜÜ; D
.
ÜÜD E
lblFailToMakeBet
ÜÜE U
+
ÜÜV W
$str
ÜÜX ]
+
ÜÜ^ _

Properties
ÜÜ` j
.
ÜÜj k
	Resources
ÜÜk t
.
ÜÜt u"
lblWithoutConectionÜÜu à
)ÜÜà â
;ÜÜâ ä
}
áá 
catch
àà 
(
àà 
SocketException
àà .
ex
àà/ 1
)
àà1 2
{
ââ 
HandleException
ää +
(
ää+ ,
ex
ää, .
,
ää. /

Properties
ää0 :
.
ää: ;
	Resources
ää; D
.
ääD E 
lblFailToStartGame
ääE W
+
ääX Y
$str
ääZ _
+
ää` a

Properties
ääb l
.
ääl m
	Resources
ääm v
.
ääv w"
lblEndPointNotFoundääw ä
)äää ã
;ääã å
}
ãã 
}
åå 
}
çç 
}
éé 
}
èè 	
private
ëë 
void
ëë 
EntryBetPoints
ëë #
(
ëë# $
object
ëë$ *
sender
ëë+ 1
,
ëë1 2&
TextCompositionEventArgs
ëë3 K
e
ëëL M
)
ëëM N
{
íí 	
if
ìì 
(
ìì 
!
ìì 
int
ìì 
.
ìì 
TryParse
ìì 
(
ìì 
e
ìì 
.
ìì  
Text
ìì  $
,
ìì$ %
out
ìì& )
_
ìì* +
)
ìì+ ,
)
ìì, -
{
îî 
e
ïï 
.
ïï 
Handled
ïï 
=
ïï 
true
ïï  
;
ïï  !
}
ññ 
}
óó 	
public
ôô 
void
ôô &
ResponseShowLastQuestion
ôô ,
(
ôô, -
)
ôô- .
{
öö 	 
questionBeingAsked
õõ 
=
õõ  
finalQuestion
õõ! .
.
õõ. /%
SpecificQuestionDetails
õõ/ F
;
õõF G
grdAnswerChoices
úú 
.
úú 

Visibility
úú '
=
úú( )

Visibility
úú* 4
.
úú4 5
Visible
úú5 <
;
úú< =
grdBet
ùù 
.
ùù 

Visibility
ùù 
=
ùù 

Visibility
ùù  *
.
ùù* +
	Collapsed
ùù+ 4
;
ùù4 5
grTimer
ûû 
.
ûû 

Visibility
ûû 
=
ûû  

Visibility
ûû! +
.
ûû+ ,
Visible
ûû, 3
;
ûû3 4
txbQuestion
üü 
.
üü 
Text
üü 
=
üü !
GetSpecificResource
üü  3
.
üü3 4,
GetEnglishOrSpanishDescription
üü4 R
(
üüR S 
questionBeingAsked
üüS e
.
üüe f)
EnglishQuestionDescriptionüüf Ä
,üüÄ Å"
questionBeingAskedüüÇ î
.üüî ï*
SpanishQuestionDescriptionüüï Ø
)üüØ ∞
;üü∞ ±)
answersOfQuestionBeingAsked
†† '
=
††( )
new
††* -
List
††. 2
<
††2 3

AnswerPojo
††3 =
>
††= >
(
††> ?
)
††? @
{
††A B
finalQuestion
††C P
.
††P Q
RightAnswer
††Q \
,
††\ ]
finalQuestion
††^ k
.
††k l
WrongOptionOne
††l z
,
††z {
finalQuestion††| â
.††â ä
WrongOptionTwo††ä ò
,††ò ô
finalQuestion††ö ß
.††ß ® 
WrongOptionThree††® ∏
}††π ∫
.††∫ ª
OrderBy††ª ¬
(††¬ √
order††√ »
=>††… À
Guid††Ã –
.††– —
NewGuid††— ÿ
(††ÿ Ÿ
)††Ÿ ⁄
)††⁄ €
.††€ ‹
ToList††‹ ‚
(††‚ „
)††„ ‰
;††‰ Â%
answerToCurrentQuestion
°° #
=
°°$ %)
answersOfQuestionBeingAsked
°°& A
.
°°A B
Where
°°B G
(
°°G H
answer
°°H N
=>
°°O Q
answer
°°R X
.
°°X Y
IdAnswer
°°Y a
==
°°b d
finalQuestion
°°e r
.
°°r s&
SpecificQuestionDetails°°s ä
.°°ä ã"
IdAnswerOfQuestion°°ã ù
)°°ù û
.°°û ü
FirstOrDefault°°ü ≠
(°°≠ Æ
)°°Æ Ø
;°°Ø ∞
bttFirstAnswer
¢¢ 
.
¢¢ 
Content
¢¢ "
=
¢¢# $!
GetSpecificResource
¢¢% 8
.
¢¢8 9,
GetEnglishOrSpanishDescription
¢¢9 W
(
¢¢W X)
answersOfQuestionBeingAsked
¢¢X s
[
¢¢s t
$num
¢¢t u
]
¢¢u v
.
¢¢v w'
EnglishAnswerDescription¢¢w è
,¢¢è ê+
answersOfQuestionBeingAsked¢¢ë ¨
[¢¢¨ ≠
$num¢¢≠ Æ
]¢¢Æ Ø
.¢¢Ø ∞(
SpanishAnswerDescription¢¢∞ »
)¢¢» …
;¢¢…  
bttSecondAnswer
££ 
.
££ 
Content
££ #
=
££$ %!
GetSpecificResource
££& 9
.
££9 :,
GetEnglishOrSpanishDescription
££: X
(
££X Y)
answersOfQuestionBeingAsked
££Y t
[
££t u
$num
££u v
]
££v w
.
££w x'
EnglishAnswerDescription££x ê
,££ê ë+
answersOfQuestionBeingAsked££í ≠
[££≠ Æ
$num££Æ Ø
]££Ø ∞
.££∞ ±(
SpanishAnswerDescription££± …
)££…  
;££  À
bttThridAnswer
§§ 
.
§§ 
Content
§§ "
=
§§# $!
GetSpecificResource
§§% 8
.
§§8 9,
GetEnglishOrSpanishDescription
§§9 W
(
§§W X)
answersOfQuestionBeingAsked
§§X s
[
§§s t
$num
§§t u
]
§§u v
.
§§v w'
EnglishAnswerDescription§§w è
,§§è ê+
answersOfQuestionBeingAsked§§ë ¨
[§§¨ ≠
$num§§≠ Æ
]§§Æ Ø
.§§Ø ∞(
SpanishAnswerDescription§§∞ »
)§§» …
;§§…  
bttFourAnswer
•• 
.
•• 
Content
•• !
=
••" #!
GetSpecificResource
••$ 7
.
••7 8,
GetEnglishOrSpanishDescription
••8 V
(
••V W)
answersOfQuestionBeingAsked
••W r
[
••r s
$num
••s t
]
••t u
.
••u v'
EnglishAnswerDescription••v é
,••é è+
answersOfQuestionBeingAsked••ê ´
[••´ ¨
$num••¨ ≠
]••≠ Æ
.••Æ Ø(
SpanishAnswerDescription••Ø «
)••« »
;••» …+
CurrentQuestionToShowContract
¶¶ )#
currentQuestionToShow
¶¶* ?
=
¶¶@ A
new
¶¶B E+
CurrentQuestionToShowContract
¶¶F c
(
¶¶c d
)
¶¶d e
{
ßß 

IdQuestion
®® 
=
®®  
questionBeingAsked
®® /
.
®®/ 0

IdQuestion
®®0 :
,
®®: ;
IdFirstAnswer
©© 
=
©© )
answersOfQuestionBeingAsked
©©  ;
[
©©; <
$num
©©< =
]
©©= >
.
©©> ?
IdAnswer
©©? G
,
©©G H
IdSecondAnswer
™™ 
=
™™  )
answersOfQuestionBeingAsked
™™! <
[
™™< =
$num
™™= >
]
™™> ?
.
™™? @
IdAnswer
™™@ H
,
™™H I
IdThirdAnswer
´´ 
=
´´ )
answersOfQuestionBeingAsked
´´  ;
[
´´; <
$num
´´< =
]
´´= >
.
´´> ?
IdAnswer
´´? G
,
´´G H
IdFourthAnswer
¨¨ 
=
¨¨  )
answersOfQuestionBeingAsked
¨¨! <
[
¨¨< =
$num
¨¨= >
]
¨¨> ?
.
¨¨? @
IdAnswer
¨¨@ H
,
¨¨H I
}
≠≠ 
;
≠≠ 

StartTimer
ÆÆ 
(
ÆÆ 
)
ÆÆ 
;
ÆÆ 
}
ØØ 	
public
±± 
void
±± 
SelectQuestion
±± "
(
±±" #%
QuestionCardInformation
±±# :
question
±±; C
)
±±C D
{
≤≤ 	
if
≥≥ 
(
≥≥ 
yourTurn
≥≥ 
==
≥≥ 
currentTurn
≥≥ '
)
≥≥' (
{
¥¥ 
var
µµ #
answersQuestionsAsked
µµ )
=
µµ* +
new
µµ, /
List
µµ0 4
<
µµ4 5

AnswerPojo
µµ5 ?
>
µµ? @
(
µµ@ A
)
µµA B
{
µµC D
question
µµE M
.
µµM N
RightAnswer
µµN Y
,
µµY Z
question
µµ[ c
.
µµc d
WrongOptionOne
µµd r
,
µµr s
question
µµt |
.
µµ| }
WrongOptionTwoµµ} ã
,µµã å
questionµµç ï
.µµï ñ 
WrongOptionThreeµµñ ¶
}µµß ®
.µµ® ©
OrderByµµ© ∞
(µµ∞ ±
orderµµ± ∂
=>µµ∑ π
Guidµµ∫ æ
.µµæ ø
NewGuidµµø ∆
(µµ∆ «
)µµ« »
)µµ» …
.µµ…  
ToListµµ  –
(µµ– —
)µµ— “
;µµ“ ”+
CurrentQuestionToShowContract
∂∂ -#
currentQuestionToShow
∂∂. C
=
∂∂D E
new
∂∂F I+
CurrentQuestionToShowContract
∂∂J g
(
∂∂g h
)
∂∂h i
{
∑∑ 

IdQuestion
∏∏ 
=
∏∏  
question
∏∏! )
.
∏∏) *%
SpecificQuestionDetails
∏∏* A
.
∏∏A B

IdQuestion
∏∏B L
,
∏∏L M
IdFirstAnswer
ππ !
=
ππ" ##
answersQuestionsAsked
ππ$ 9
[
ππ9 :
$num
ππ: ;
]
ππ; <
.
ππ< =
IdAnswer
ππ= E
,
ππE F
IdSecondAnswer
∫∫ "
=
∫∫# $#
answersQuestionsAsked
∫∫% :
[
∫∫: ;
$num
∫∫; <
]
∫∫< =
.
∫∫= >
IdAnswer
∫∫> F
,
∫∫F G
IdThirdAnswer
ªª !
=
ªª" ##
answersQuestionsAsked
ªª$ 9
[
ªª9 :
$num
ªª: ;
]
ªª; <
.
ªª< =
IdAnswer
ªª= E
,
ªªE F
IdFourthAnswer
ºº "
=
ºº# $#
answersQuestionsAsked
ºº% :
[
ºº: ;
$num
ºº; <
]
ºº< =
.
ºº= >
IdAnswer
ºº> F
,
ººF G
}
ΩΩ 
;
ΩΩ 
try
ææ 
{
øø 
GameActionsClient
¿¿ %,
gameActionsCallBackClientProxy
¿¿& D
=
¿¿E F
new
¿¿G J
GameActionsClient
¿¿K \
(
¿¿\ ]
new
¿¿] `
InstanceContext
¿¿a p
(
¿¿p q
this
¿¿q u
)
¿¿u v
)
¿¿v w
;
¿¿w x,
gameActionsCallBackClientProxy
¡¡ 2
.
¡¡2 3
RenewGameCallBack
¡¡3 D
(
¡¡D E
roomCode
¡¡E M
,
¡¡M N
userSingleton
¡¡O \
.
¡¡\ ]
IdUser
¡¡] c
)
¡¡c d
;
¡¡d e)
GameActionsOperationsClient
√√ /$
gameActionsClientProxy
√√0 F
=
√√G H
new
√√I L
(
√√L M
)
√√M N
;
√√N O$
gameActionsClientProxy
ƒƒ *
.
ƒƒ* +#
ChooseQuestionOfBoard
ƒƒ+ @
(
ƒƒ@ A
roomCode
ƒƒA I
,
ƒƒI J
userSingleton
ƒƒK X
.
ƒƒX Y
IdUser
ƒƒY _
,
ƒƒ_ `
question
ƒƒa i
.
ƒƒi j
NumberOfRound
ƒƒj w
,
ƒƒw x$
currentQuestionToShowƒƒy é
)ƒƒé è
;ƒƒè ê
}
≈≈ 
catch
∆∆ 
(
∆∆ '
EndpointNotFoundException
∆∆ 0
ex
∆∆1 3
)
∆∆3 4
{
«« 
HandleException
»» #
(
»»# $
ex
»»$ &
,
»»& '

Properties
»»( 2
.
»»2 3
	Resources
»»3 <
.
»»< =$
lblFailToChoseQuestion
»»= S
+
»»T U
$str
»»V [
+
»»\ ]

Properties
»»^ h
.
»»h i
	Resources
»»i r
.
»»r s"
lblEndPointNotFound»»s Ü
)»»Ü á
;»»á à
}
…… 
catch
   
(
   1
#CommunicationObjectFaultedException
   :
ex
  ; =
)
  = >
{
ÀÀ 
HandleException
ÃÃ #
(
ÃÃ# $
ex
ÃÃ$ &
,
ÃÃ& '

Properties
ÃÃ( 2
.
ÃÃ2 3
	Resources
ÃÃ3 <
.
ÃÃ< =$
lblFailToChoseQuestion
ÃÃ= S
+
ÃÃT U
$str
ÃÃV [
+
ÃÃ\ ]

Properties
ÃÃ^ h
.
ÃÃh i
	Resources
ÃÃi r
.
ÃÃr s'
lblComunicationExceptionÃÃs ã
)ÃÃã å
;ÃÃå ç
}
ÕÕ 
catch
ŒŒ 
(
ŒŒ 
TimeoutException
ŒŒ '
ex
ŒŒ( *
)
ŒŒ* +
{
œœ 
HandleException
–– #
(
––# $
ex
––$ &
,
––& '

Properties
––( 2
.
––2 3
	Resources
––3 <
.
––< =$
lblFailToChoseQuestion
––= S
+
––T U
$str
––V [
+
––\ ]

Properties
––^ h
.
––h i
	Resources
––i r
.
––r s
lblTimeException––s É
)––É Ñ
;––Ñ Ö
}
—— 
catch
““ 
(
““ $
CommunicationException
““ -
ex
““. 0
)
““0 1
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
lblWithoutConection‘‘s Ü
)‘‘Ü á
;‘‘á à
}
’’ 
catch
÷÷ 
(
÷÷ 
SocketException
÷÷ &
ex
÷÷' )
)
÷÷) *
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
ÿÿ< = 
lblFailToStartGame
ÿÿ= O
+
ÿÿP Q
$str
ÿÿR W
+
ÿÿX Y

Properties
ÿÿZ d
.
ÿÿd e
	Resources
ÿÿe n
.
ÿÿn o"
lblEndPointNotFoundÿÿo Ç
)ÿÿÇ É
;ÿÿÉ Ñ
}
ŸŸ 
}
⁄⁄ 
}
€€ 	
public
›› 
void
›› ,
ResponseSomeOneSelectAQuestion
›› 2
(
››2 3+
CurrentQuestionToShowContract
››3 P
questionToShow
››Q _
,
››_ `
int
››a d
currentRound
››e q
,
››q r
int
››s v
idUser
››w }
)
››} ~
{
ﬁﬁ 	
this
ﬂﬂ 
.
ﬂﬂ 
currentRound
ﬂﬂ 
=
ﬂﬂ 
currentRound
ﬂﬂ  ,
;
ﬂﬂ, -%
QuestionCardInformation
‡‡ #
questionCard
‡‡$ 0
=
‡‡1 2
currentQuestions
‡‡3 C
.
‡‡C D
FirstOrDefault
‡‡D R
(
‡‡R S
quest
‡‡S X
=>
‡‡Y [
quest
‡‡\ a
.
‡‡a b%
SpecificQuestionDetails
‡‡b y
.
‡‡y z

IdQuestion‡‡z Ñ
==‡‡Ö á
questionToShow‡‡à ñ
.‡‡ñ ó

IdQuestion‡‡ó °
)‡‡° ¢
;‡‡¢ £ 
questionBeingAsked
·· 
=
··  
questionCard
··! -
.
··- .%
SpecificQuestionDetails
··. E
;
··E F
grdAnswerChoices
‚‚ 
.
‚‚ 

Visibility
‚‚ '
=
‚‚( )

Visibility
‚‚* 4
.
‚‚4 5
Visible
‚‚5 <
;
‚‚< =
grTimer
„„ 
.
„„ 

Visibility
„„ 
=
„„  

Visibility
„„! +
.
„„+ ,
Visible
„„, 3
;
„„3 4
txbQuestion
‰‰ 
.
‰‰ 
Text
‰‰ 
=
‰‰ !
GetSpecificResource
‰‰ 2
.
‰‰2 3,
GetEnglishOrSpanishDescription
‰‰3 Q
(
‰‰Q R
questionCard
‰‰R ^
.
‰‰^ _%
SpecificQuestionDetails
‰‰_ v
.
‰‰v w)
EnglishQuestionDescription‰‰w ë
,‰‰ë í
questionCard‰‰ì ü
.‰‰ü †'
SpecificQuestionDetails‰‰† ∑
.‰‰∑ ∏*
SpanishQuestionDescription‰‰∏ “
)‰‰“ ”
;‰‰” ‘
List
ÂÂ 
<
ÂÂ 

AnswerPojo
ÂÂ 
>
ÂÂ $
answersForThisQuestion
ÂÂ 3
=
ÂÂ4 5
new
ÂÂ6 9
List
ÂÂ: >
<
ÂÂ> ?

AnswerPojo
ÂÂ? I
>
ÂÂI J
(
ÂÂJ K
)
ÂÂK L
{
ÂÂM N
questionCard
ÂÂO [
.
ÂÂ[ \
RightAnswer
ÂÂ\ g
,
ÂÂg h
questionCard
ÂÂi u
.
ÂÂu v
WrongOptionOneÂÂv Ñ
,ÂÂÑ Ö
questionCardÂÂÜ í
.ÂÂí ì
WrongOptionTwoÂÂì °
,ÂÂ° ¢
questionCardÂÂ£ Ø
.ÂÂØ ∞ 
WrongOptionThreeÂÂ∞ ¿
}ÂÂ¡ ¬
;ÂÂ¬ √)
answersOfQuestionBeingAsked
ÊÊ '
=
ÊÊ( )$
answersForThisQuestion
ÊÊ* @
.
ÊÊ@ A
ToList
ÊÊA G
(
ÊÊG H
)
ÊÊH I
;
ÊÊI J%
answerToCurrentQuestion
ÁÁ #
=
ÁÁ$ %$
answersForThisQuestion
ÁÁ& <
.
ÁÁ< =
FirstOrDefault
ÁÁ= K
(
ÁÁK L
ans
ÁÁL O
=>
ÁÁP R
ans
ÁÁS V
.
ÁÁV W
IdAnswer
ÁÁW _
==
ÁÁ` b 
questionBeingAsked
ÁÁc u
.
ÁÁu v!
IdAnswerOfQuestionÁÁv à
)ÁÁà â
;ÁÁâ ä
var
ËË 

answerbtt1
ËË 
=
ËË $
answersForThisQuestion
ËË 3
.
ËË3 4
Find
ËË4 8
(
ËË8 9
answer
ËË9 ?
=>
ËË@ B
answer
ËËC I
.
ËËI J
IdAnswer
ËËJ R
==
ËËS U
questionToShow
ËËV d
.
ËËd e
IdFirstAnswer
ËËe r
)
ËËr s
;
ËËs t
bttFirstAnswer
ÈÈ 
.
ÈÈ 
Content
ÈÈ "
=
ÈÈ# $!
GetSpecificResource
ÈÈ% 8
.
ÈÈ8 9,
GetEnglishOrSpanishDescription
ÈÈ9 W
(
ÈÈW X

answerbtt1
ÈÈX b
.
ÈÈb c&
EnglishAnswerDescription
ÈÈc {
,
ÈÈ{ |

answerbtt1ÈÈ} á
.ÈÈá à(
SpanishAnswerDescriptionÈÈà †
)ÈÈ† °
;ÈÈ° ¢
var
ÍÍ 

answerbtt2
ÍÍ 
=
ÍÍ $
answersForThisQuestion
ÍÍ 3
.
ÍÍ3 4
Find
ÍÍ4 8
(
ÍÍ8 9
answer
ÍÍ9 ?
=>
ÍÍ@ B
answer
ÍÍC I
.
ÍÍI J
IdAnswer
ÍÍJ R
==
ÍÍS U
questionToShow
ÍÍV d
.
ÍÍd e
IdSecondAnswer
ÍÍe s
)
ÍÍs t
;
ÍÍt u
bttSecondAnswer
ÎÎ 
.
ÎÎ 
Content
ÎÎ #
=
ÎÎ$ %!
GetSpecificResource
ÎÎ& 9
.
ÎÎ9 :,
GetEnglishOrSpanishDescription
ÎÎ: X
(
ÎÎX Y

answerbtt2
ÎÎY c
.
ÎÎc d&
EnglishAnswerDescription
ÎÎd |
,
ÎÎ| }

answerbtt2ÎÎ~ à
.ÎÎà â(
SpanishAnswerDescriptionÎÎâ °
)ÎÎ° ¢
;ÎÎ¢ £
;ÎÎ§ •
var
ÏÏ 

answerbtt3
ÏÏ 
=
ÏÏ $
answersForThisQuestion
ÏÏ 3
.
ÏÏ3 4
Find
ÏÏ4 8
(
ÏÏ8 9
answer
ÏÏ9 ?
=>
ÏÏ@ B
answer
ÏÏC I
.
ÏÏI J
IdAnswer
ÏÏJ R
==
ÏÏS U
questionToShow
ÏÏV d
.
ÏÏd e
IdThirdAnswer
ÏÏe r
)
ÏÏr s
;
ÏÏs t
bttThridAnswer
ÌÌ 
.
ÌÌ 
Content
ÌÌ "
=
ÌÌ# $!
GetSpecificResource
ÌÌ% 8
.
ÌÌ8 9,
GetEnglishOrSpanishDescription
ÌÌ9 W
(
ÌÌW X

answerbtt3
ÌÌX b
.
ÌÌb c&
EnglishAnswerDescription
ÌÌc {
,
ÌÌ{ |

answerbtt3ÌÌ} á
.ÌÌá à(
SpanishAnswerDescriptionÌÌà †
)ÌÌ† °
;ÌÌ° ¢
;ÌÌ£ §
var
ÓÓ 

answerbtt4
ÓÓ 
=
ÓÓ $
answersForThisQuestion
ÓÓ 3
.
ÓÓ3 4
Find
ÓÓ4 8
(
ÓÓ8 9
answer
ÓÓ9 ?
=>
ÓÓ@ B
answer
ÓÓC I
.
ÓÓI J
IdAnswer
ÓÓJ R
==
ÓÓS U
questionToShow
ÓÓV d
.
ÓÓd e
IdFourthAnswer
ÓÓe s
)
ÓÓs t
;
ÓÓt u
bttFourAnswer
ÔÔ 
.
ÔÔ 
Content
ÔÔ !
=
ÔÔ" #!
GetSpecificResource
ÔÔ$ 7
.
ÔÔ7 8,
GetEnglishOrSpanishDescription
ÔÔ8 V
(
ÔÔV W

answerbtt4
ÔÔW a
.
ÔÔa b&
EnglishAnswerDescription
ÔÔb z
,
ÔÔz {

answerbtt4ÔÔ| Ü
.ÔÔÜ á(
SpanishAnswerDescriptionÔÔá ü
)ÔÔü †
;ÔÔ† °
;ÔÔ¢ £

StartTimer
 
(
 
)
 
;
 
}
ÒÒ 	
private
ÛÛ 
void
ÛÛ 
ClickSelectAnswer
ÛÛ &
(
ÛÛ& '
object
ÛÛ' -
sender
ÛÛ. 4
,
ÛÛ4 5
RoutedEventArgs
ÛÛ6 E
e
ÛÛF G
)
ÛÛG H
{
ÙÙ 	
if
ıı 
(
ıı 
yourTurn
ıı 
==
ıı 
currentTurn
ıı '
||
ıı( *
currentRound
ıı+ 7
==
ıı8 :
ROUND_THREE
ıı; F
)
ııF G
{
ˆˆ 
var
˜˜ 
answerCardChoose
˜˜ $
=
˜˜% &
(
˜˜' (
Button
˜˜( .
)
˜˜. /
sender
˜˜/ 5
;
˜˜5 6
try
¯¯ 
{
˘˘ 
GameActionsClient
˚˚ %,
gameActionsCallBackClientProxy
˚˚& D
=
˚˚E F
new
˚˚G J
GameActionsClient
˚˚K \
(
˚˚\ ]
new
˚˚] `
InstanceContext
˚˚a p
(
˚˚p q
this
˚˚q u
)
˚˚u v
)
˚˚v w
;
˚˚w x,
gameActionsCallBackClientProxy
¸¸ 2
.
¸¸2 3
RenewGameCallBack
¸¸3 D
(
¸¸D E
roomCode
¸¸E M
,
¸¸M N
userSingleton
¸¸O \
.
¸¸\ ]
IdUser
¸¸] c
)
¸¸c d
;
¸¸d e
if
˛˛ 
(
˛˛ 
currentRound
˛˛ $
!=
˛˛% '
ROUND_THREE
˛˛( 3
)
˛˛3 4
{
ˇˇ )
GameActionsOperationsClient
ÄÄ 3$
gameActionsClientProxy
ÄÄ4 J
=
ÄÄK L
new
ÄÄM P
(
ÄÄP Q
)
ÄÄQ R
;
ÄÄR S
int
ÅÅ 
idAnswerSelected
ÅÅ ,
=
ÅÅ- .)
answersOfQuestionBeingAsked
ÅÅ/ J
.
ÅÅJ K
FirstOrDefault
ÅÅK Y
(
ÅÅY Z
anw
ÅÅZ ]
=>
ÅÅ^ `!
GetSpecificResource
ÅÅa t
.
ÅÅt u-
GetEnglishOrSpanishDescriptionÅÅu ì
(ÅÅì î
anwÅÅî ó
.ÅÅó ò(
EnglishAnswerDescriptionÅÅò ∞
,ÅÅ∞ ±
anwÅÅ≤ µ
.ÅÅµ ∂(
SpanishAnswerDescriptionÅÅ∂ Œ
)ÅÅŒ œ
.ÅÅœ –
EqualsÅÅ– ÷
(ÅÅ÷ ◊ 
answerCardChooseÅÅ◊ Á
.ÅÅÁ Ë
ContentÅÅË Ô
)ÅÅÔ 
)ÅÅ Ò
.ÅÅÒ Ú
IdAnswerÅÅÚ ˙
;ÅÅ˙ ˚$
gameActionsClientProxy
ÇÇ .
.
ÇÇ. /
ChooseAnswer
ÇÇ/ ;
(
ÇÇ; <
roomCode
ÇÇ< D
,
ÇÇD E
userSingleton
ÇÇF S
.
ÇÇS T
IdUser
ÇÇT Z
,
ÇÇZ [
idAnswerSelected
ÇÇ\ l
,
ÇÇl m!
questionBeingAskedÇÇn Ä
.ÇÇÄ Å

ValueWorthÇÇÅ ã
,ÇÇã å
yourTurnÇÇç ï
)ÇÇï ñ
;ÇÇñ ó
}
ÉÉ 
else
ÑÑ 
{
ÖÖ 
bool
ÜÜ 
	isCorrect
ÜÜ &
;
ÜÜ& '
if
áá 
(
áá !
GetSpecificResource
áá /
.
áá/ 0,
GetEnglishOrSpanishDescription
áá0 N
(
ááN O%
answerToCurrentQuestion
ááO f
.
ááf g&
EnglishAnswerDescription
áág 
,áá Ä'
answerToCurrentQuestionááÅ ò
.ááò ô(
SpanishAnswerDescriptionááô ±
)áá± ≤
.áá≤ ≥
Equalsáá≥ π
(ááπ ∫ 
answerCardChooseáá∫  
.áá  À
ContentááÀ “
)áá“ ”
)áá” ‘
{
àà 
	isCorrect
ââ %
=
ââ& '
true
ââ( ,
;
ââ, -
}
ää 
else
ãã 
{
åå 
	isCorrect
çç %
=
çç& '
false
çç( -
;
çç- .
}
éé )
GameActionsOperationsClient
èè 3$
gameActionsClientProxy
èè4 J
=
èèK L
new
èèM P
(
èèP Q
)
èèQ R
;
èèR S
answerCardChoose
êê (
.
êê( )
BorderBrush
êê) 4
=
êê5 6
new
êê7 :
SolidColorBrush
êê; J
(
êêJ K
Colors
êêK Q
.
êêQ R
Blue
êêR V
)
êêV W
;
êêW X
bttFirstAnswer
ëë &
.
ëë& '
	IsEnabled
ëë' 0
=
ëë1 2
false
ëë3 8
;
ëë8 9
bttSecondAnswer
íí '
.
íí' (
	IsEnabled
íí( 1
=
íí2 3
false
íí4 9
;
íí9 :
bttThridAnswer
ìì &
.
ìì& '
	IsEnabled
ìì' 0
=
ìì1 2
false
ìì3 8
;
ìì8 9
bttFourAnswer
îî %
.
îî% &
	IsEnabled
îî& /
=
îî0 1
false
îî2 7
;
îî7 8
txbAdvicement
ïï %
.
ïï% &

Visibility
ïï& 0
=
ïï1 2

Visibility
ïï3 =
.
ïï= >
Visible
ïï> E
;
ïïE F
int
ññ 
idAnswerSelected
ññ ,
=
ññ- .)
answersOfQuestionBeingAsked
ññ/ J
.
ññJ K
FirstOrDefault
ññK Y
(
ññY Z
anw
ññZ ]
=>
ññ^ `!
GetSpecificResource
ñña t
.
ññt u-
GetEnglishOrSpanishDescriptionññu ì
(ññì î
anwññî ó
.ññó ò(
EnglishAnswerDescriptionññò ∞
,ññ∞ ±
anwññ≤ µ
.ññµ ∂(
SpanishAnswerDescriptionññ∂ Œ
)ññŒ œ
.ññœ –
Equalsññ– ÷
(ññ÷ ◊ 
answerCardChooseññ◊ Á
.ññÁ Ë
ContentññË Ô
)ññÔ 
)ññ Ò
.ññÒ Ú
IdAnswerññÚ ˙
;ññ˙ ˚$
gameActionsClientProxy
óó .
.
óó. /'
ConfirmLastQuestionAnswer
óó/ H
(
óóH I
roomCode
óóI Q
,
óóQ R
playersInGame
óóS `
.
óó` a
FirstOrDefault
óóa o
(
óóo p
pla
óóp s
=>
óót v
pla
óów z
.
óóz {
IdUseróó{ Å
==óóÇ Ñ
userSingletonóóÖ í
.óóí ì
IdUseróóì ô
)óóô ö
,óóö õ
	pointsBetóóú •
,óó• ¶
	isCorrectóóß ∞
)óó∞ ±
;óó± ≤
}
òò 
}
ôô 
catch
öö 
(
öö '
EndpointNotFoundException
öö 0
ex
öö1 3
)
öö3 4
{
õõ 
HandleException
úú #
(
úú# $
ex
úú$ &
,
úú& '

Properties
úú( 2
.
úú2 3
	Resources
úú3 <
.
úú< =#
lblFailToChooseAnswer
úú= R
+
úúS T
$str
úúU Z
+
úú[ \

Properties
úú] g
.
úúg h
	Resources
úúh q
.
úúq r"
lblEndPointNotFoundúúr Ö
)úúÖ Ü
;úúÜ á
}
ùù 
catch
ûû 
(
ûû 1
#CommunicationObjectFaultedException
ûû :
ex
ûû; =
)
ûû= >
{
üü 
HandleException
†† #
(
††# $
ex
††$ &
,
††& '

Properties
††( 2
.
††2 3
	Resources
††3 <
.
††< =#
lblFailToChooseAnswer
††= R
+
††S T
$str
††U Z
+
††[ \

Properties
††] g
.
††g h
	Resources
††h q
.
††q r'
lblComunicationException††r ä
)††ä ã
;††ã å
}
°° 
catch
¢¢ 
(
¢¢ 
TimeoutException
¢¢ '
ex
¢¢( *
)
¢¢* +
{
££ 
HandleException
§§ #
(
§§# $
ex
§§$ &
,
§§& '

Properties
§§( 2
.
§§2 3
	Resources
§§3 <
.
§§< =#
lblFailToChooseAnswer
§§= R
+
§§S T
$str
§§U Z
+
§§[ \

Properties
§§] g
.
§§g h
	Resources
§§h q
.
§§q r
lblTimeException§§r Ç
)§§Ç É
;§§É Ñ
}
•• 
catch
¶¶ 
(
¶¶ $
CommunicationException
¶¶ -
ex
¶¶. 0
)
¶¶0 1
{
ßß 
HandleException
®® #
(
®®# $
ex
®®$ &
,
®®& '

Properties
®®( 2
.
®®2 3
	Resources
®®3 <
.
®®< =#
lblFailToChooseAnswer
®®= R
+
®®S T
$str
®®U Z
+
®®[ \

Properties
®®] g
.
®®g h
	Resources
®®h q
.
®®q r"
lblWithoutConection®®r Ö
)®®Ö Ü
;®®Ü á
}
©© 
catch
™™ 
(
™™ 
SocketException
™™ &
ex
™™' )
)
™™) *
{
´´ 
HandleException
¨¨ #
(
¨¨# $
ex
¨¨$ &
,
¨¨& '

Properties
¨¨( 2
.
¨¨2 3
	Resources
¨¨3 <
.
¨¨< = 
lblFailToStartGame
¨¨= O
+
¨¨P Q
$str
¨¨R W
+
¨¨X Y

Properties
¨¨Z d
.
¨¨d e
	Resources
¨¨e n
.
¨¨n o"
lblEndPointNotFound¨¨o Ç
)¨¨Ç É
;¨¨É Ñ
}
≠≠ 
}
ÆÆ 
}
ØØ 	
public
±± 
void
±± +
ResponseSomeOneChooseAnAnswer
±± 1
(
±±1 2
int
±±2 5
idAnswerSelected
±±6 F
,
±±F G
int
±±H K
idUserAnswering
±±L [
,
±±[ \
int
±±] `
pointsWorth
±±a l
)
±±l m
{
≤≤ 	
timer
≥≥ 
.
≥≥ 
Stop
≥≥ 
(
≥≥ 
)
≥≥ 
;
≥≥ 
bool
¥¥ 
	isCorrect
¥¥ 
;
¥¥ 
string
µµ *
descriptionOfCurrentQuestion
µµ /
=
µµ0 1!
GetSpecificResource
µµ2 E
.
µµE F,
GetEnglishOrSpanishDescription
µµF d
(
µµd e%
answerToCurrentQuestion
µµe |
.
µµ| }'
EnglishAnswerDescriptionµµ} ï
,µµï ñ'
answerToCurrentQuestionµµó Æ
.µµÆ Ø(
SpanishAnswerDescriptionµµØ «
)µµ« »
;µµ» …
var
∂∂ 
answerSelected
∂∂ 
=
∂∂  )
answersOfQuestionBeingAsked
∂∂! <
.
∂∂< =
Find
∂∂= A
(
∂∂A B
ans
∂∂B E
=>
∂∂F H
ans
∂∂I L
.
∂∂L M
IdAnswer
∂∂M U
==
∂∂V X
idAnswerSelected
∂∂Y i
)
∂∂i j
;
∂∂j k
if
∑∑ 
(
∑∑ *
descriptionOfCurrentQuestion
∑∑ ,
.
∑∑, -
Equals
∑∑- 3
(
∑∑3 4!
GetSpecificResource
∑∑4 G
.
∑∑G H,
GetEnglishOrSpanishDescription
∑∑H f
(
∑∑f g
answerSelected
∑∑g u
.
∑∑u v'
EnglishAnswerDescription∑∑v é
,∑∑é è
answerSelected∑∑ê û
.∑∑û ü(
SpanishAnswerDescription∑∑ü ∑
)∑∑∑ ∏
)∑∑∏ π
)∑∑π ∫
{
∏∏ 
	isCorrect
ππ 
=
ππ 
true
ππ  
;
ππ  !
}
∫∫ 
else
ªª 
{
ºº 
	isCorrect
ΩΩ 
=
ΩΩ 
false
ΩΩ !
;
ΩΩ! "
}
ææ  
ShowResultOfAnswer
øø 
(
øø 
	isCorrect
øø (
,
øø( )
idAnswerSelected
øø* :
,
øø: ;
pointsWorth
øø< G
.
øøG H
ToString
øøH P
(
øøP Q
)
øøQ R
)
øøR S
;
øøS T
SumOrRestPoints
¿¿ 
(
¿¿ 
	isCorrect
¿¿ %
,
¿¿% &
pointsWorth
¿¿' 2
,
¿¿2 3
idUserAnswering
¿¿4 C
)
¿¿C D
;
¿¿D E
HideQuestion
¡¡ 
(
¡¡ 
)
¡¡ 
;
¡¡ %
AssureThereAreQuestions
¬¬ #
(
¬¬# $
)
¬¬$ %
;
¬¬% &
}
√√ 	
private
≈≈ 
async
≈≈ 
void
≈≈  
ShowResultOfAnswer
≈≈ -
(
≈≈- .
bool
≈≈. 2
	isCorrect
≈≈3 <
,
≈≈< =
int
≈≈> A
idAnswerSelected
≈≈B R
,
≈≈R S
string
≈≈T Z
points
≈≈[ a
)
≈≈a b
{
∆∆ 	
grdAnswerChoices
«« 
.
«« 

Visibility
«« '
=
««( )

Visibility
««* 4
.
««4 5
Hidden
««5 ;
;
««; <
cnvResultOfAwnser
»» 
.
»» 

Visibility
»» (
=
»») *

Visibility
»»+ 5
.
»»5 6
Visible
»»6 =
;
»»= >
txbQuestionResult
…… 
.
…… 
Text
…… "
=
……# $!
GetSpecificResource
……% 8
.
……8 9,
GetEnglishOrSpanishDescription
……9 W
(
……W X 
questionBeingAsked
……Y k
.
……k l)
EnglishQuestionDescription……l Ü
,……Ü á"
questionBeingAsked……à ö
.……ö õ*
SpanishQuestionDescription……õ µ
)……µ ∂
;……∂ ∑
var
   
answerSelected
   
=
    )
answersOfQuestionBeingAsked
  ! <
.
  < =
Find
  = A
(
  A B
ans
  B E
=>
  F H
ans
  I L
.
  L M
IdAnswer
  M U
==
  V X
idAnswerSelected
  Y i
)
  i j
;
  j k#
txbStringAnswerChoose
ÀÀ !
.
ÀÀ! "
Text
ÀÀ" &
=
ÀÀ' (!
GetSpecificResource
ÀÀ) <
.
ÀÀ< =,
GetEnglishOrSpanishDescription
ÀÀ= [
(
ÀÀ[ \
answerSelected
ÀÀ\ j
.
ÀÀj k'
EnglishAnswerDescriptionÀÀk É
,ÀÀÉ Ñ
answerSelectedÀÀÖ ì
.ÀÀì î(
SpanishAnswerDescriptionÀÀî ¨
)ÀÀ¨ ≠
;ÀÀ≠ Æ
if
ÃÃ 
(
ÃÃ 
	isCorrect
ÃÃ 
)
ÃÃ 
{
ÕÕ 
imgAnswerResult
ŒŒ 
.
ŒŒ  
Source
ŒŒ  &
=
ŒŒ' (
new
ŒŒ) ,
BitmapImage
ŒŒ- 8
(
ŒŒ8 9
new
ŒŒ9 <
Uri
ŒŒ= @
(
ŒŒ@ A
App
ŒŒA D
.
ŒŒD E
Current
ŒŒE L
.
ŒŒL M
	Resources
ŒŒM V
[
ŒŒV W
$str
ŒŒW h
]
ŒŒh i
.
ŒŒi j
ToString
ŒŒj r
(
ŒŒr s
)
ŒŒs t
,
ŒŒt u
UriKind
ŒŒv }
.
ŒŒ} ~
AbsoluteŒŒ~ Ü
)ŒŒÜ á
)ŒŒá à
;ŒŒà â#
txbPointsEarnedOrLost
œœ %
.
œœ% &
Text
œœ& *
=
œœ+ ,
$str
œœ- 1
+
œœ2 3
points
œœ4 :
;
œœ: ;
}
–– 
else
—— 
{
““ 
imgAnswerResult
”” 
.
””  
Source
””  &
=
””' (
new
””) ,
BitmapImage
””- 8
(
””8 9
new
””9 <
Uri
””= @
(
””@ A
App
””A D
.
””D E
Current
””E L
.
””L M
	Resources
””M V
[
””V W
$str
””W h
]
””h i
.
””i j
ToString
””j r
(
””r s
)
””s t
,
””t u
UriKind
””v }
.
””} ~
Absolute””~ Ü
)””Ü á
)””á à
;””à â#
txbPointsEarnedOrLost
‘‘ %
.
‘‘% &
Text
‘‘& *
=
‘‘+ ,
$str
‘‘- 1
+
‘‘2 3
points
‘‘4 :
;
‘‘: ;
}
’’ 
await
÷÷ 
Task
÷÷ 
.
÷÷ 
Delay
÷÷ 
(
÷÷ 
$num
÷÷ !
)
÷÷! "
;
÷÷" #
}
◊◊ 	
private
ŸŸ 
async
ŸŸ 
void
ŸŸ 
SumOrRestPoints
ŸŸ *
(
ŸŸ* +
bool
ŸŸ+ /
	isCorrect
ŸŸ0 9
,
ŸŸ9 :
int
ŸŸ; >
points
ŸŸ? E
,
ŸŸE F
int
ŸŸG J
idUser
ŸŸK Q
)
ŸŸQ R
{
⁄⁄ 	
var
€€ 
playerChoosing
€€ 
=
€€  
playersInGame
€€! .
.
€€. /
Find
€€/ 3
(
€€3 4
player
€€4 :
=>
€€; =
player
€€> D
.
€€D E
IdUser
€€E K
==
€€L N
idUser
€€O U
)
€€U V
;
€€V W
GameTeamCard
‹‹ 
specificTeam
‹‹ %
=
‹‹& '
null
‹‹( ,
;
‹‹, -
if
›› 
(
›› 
itsTeamGame
›› 
)
›› 
{
ﬁﬁ 
string
ﬂﬂ 
nameOfBorder
ﬂﬂ #
;
ﬂﬂ# $
if
‡‡ 
(
‡‡ 
playerChoosing
‡‡ "
.
‡‡" #
SideTeam
‡‡# +
==
‡‡, .
$num
‡‡/ 0
)
‡‡0 1
{
·· 
nameOfBorder
‚‚  
=
‚‚! "
	team1Name
‚‚# ,
;
‚‚, -
}
„„ 
else
‰‰ 
{
ÂÂ 
nameOfBorder
ÊÊ  
=
ÊÊ! "
	team2Name
ÊÊ# ,
;
ÊÊ, -
}
ÁÁ 
specificTeam
ËË 
=
ËË 
(
ËË  
GameTeamCard
ËË  ,
)
ËË, -

stpPlayers
ËË- 7
.
ËË7 8
Children
ËË8 @
.
ËË@ A
OfType
ËËA G
<
ËËG H
Border
ËËH N
>
ËËN O
(
ËËO P
)
ËËP Q
.
ËËQ R
FirstOrDefault
ËËR `
(
ËË` a
pla
ËËa d
=>
ËËe g
pla
ËËh k
.
ËËk l
Name
ËËl p
.
ËËp q
Equals
ËËq w
(
ËËw x
nameOfBorderËËx Ñ
)ËËÑ Ö
)ËËÖ Ü
;ËËÜ á
}
ÈÈ 
if
ÍÍ 
(
ÍÍ 
	isCorrect
ÍÍ 
)
ÍÍ 
{
ÎÎ 
playerChoosing
ÏÏ 
.
ÏÏ "
CurrentPointsOfRound
ÏÏ 3
+=
ÏÏ4 6
points
ÏÏ7 =
;
ÏÏ= >
if
ÌÌ 
(
ÌÌ 
itsTeamGame
ÌÌ 
)
ÌÌ  
{
ÓÓ 
int
ÔÔ 
sum
ÔÔ 
=
ÔÔ 
specificTeam
ÔÔ *
.
ÔÔ* +
	GetPoints
ÔÔ+ 4
(
ÔÔ4 5
)
ÔÔ5 6
;
ÔÔ6 7
specificTeam
  
.
  !
UpdatePoints
! -
(
- .
sum
. 1
+=
2 4
points
5 ;
)
; <
;
< =
playersInGame
ÒÒ !
.
ÒÒ! "
Where
ÒÒ" '
(
ÒÒ' (
pl
ÒÒ( *
=>
ÒÒ+ -
pl
ÒÒ. 0
.
ÒÒ0 1
SideTeam
ÒÒ1 9
==
ÒÒ: <
playerChoosing
ÒÒ= K
.
ÒÒK L
SideTeam
ÒÒL T
)
ÒÒT U
.
ÒÒU V
ToList
ÒÒV \
(
ÒÒ\ ]
)
ÒÒ] ^
.
ÒÒ^ _
ForEach
ÒÒ_ f
(
ÒÒf g
pl
ÒÒg i
=>
ÒÒj l
pl
ÒÒm o
.
ÒÒo p#
CurrentPointsOfRoundÒÒp Ñ
=ÒÒÖ Ü
specificTeamÒÒá ì
.ÒÒì î
	GetPointsÒÒî ù
(ÒÒù û
)ÒÒû ü
)ÒÒü †
;ÒÒ† °
}
ÚÚ 
}
ÛÛ 
else
ÙÙ 
{
ıı 
playerChoosing
ˆˆ 
.
ˆˆ "
CurrentPointsOfRound
ˆˆ 3
-=
ˆˆ4 6
points
ˆˆ7 =
;
ˆˆ= >
if
˜˜ 
(
˜˜ 
itsTeamGame
˜˜ 
)
˜˜  
{
¯¯ 
int
˘˘ 
sum
˘˘ 
=
˘˘ 
specificTeam
˘˘ *
.
˘˘* +
	GetPoints
˘˘+ 4
(
˘˘4 5
)
˘˘5 6
;
˘˘6 7
specificTeam
˙˙  
.
˙˙  !
UpdatePoints
˙˙! -
(
˙˙- .
sum
˙˙. 1
-=
˙˙2 4
points
˙˙5 ;
)
˙˙; <
;
˙˙< =
playersInGame
˚˚ !
.
˚˚! "
Where
˚˚" '
(
˚˚' (
pl
˚˚( *
=>
˚˚+ -
pl
˚˚. 0
.
˚˚0 1
SideTeam
˚˚1 9
==
˚˚: <
playerChoosing
˚˚= K
.
˚˚K L
SideTeam
˚˚L T
)
˚˚T U
.
˚˚U V
ToList
˚˚V \
(
˚˚\ ]
)
˚˚] ^
.
˚˚^ _
ForEach
˚˚_ f
(
˚˚f g
pl
˚˚g i
=>
˚˚j l
pl
˚˚m o
.
˚˚o p#
CurrentPointsOfRound˚˚p Ñ
=˚˚Ö Ü
specificTeam˚˚á ì
.˚˚ì î
	GetPoints˚˚î ù
(˚˚ù û
)˚˚û ü
)˚˚ü †
;˚˚† °
}
¸¸ 
}
˝˝ 
if
˛˛ 
(
˛˛ 
!
˛˛ 
itsTeamGame
˛˛ 
)
˛˛ 
{
ˇˇ 
GamePlayerCard
ÄÄ 
specificPlayer
ÄÄ -
=
ÄÄ. /
(
ÄÄ0 1
GamePlayerCard
ÄÄ1 ?
)
ÄÄ? @

stpPlayers
ÄÄ@ J
.
ÄÄJ K
Children
ÄÄK S
.
ÄÄS T
OfType
ÄÄT Z
<
ÄÄZ [
Border
ÄÄ[ a
>
ÄÄa b
(
ÄÄb c
)
ÄÄc d
.
ÄÄd e
FirstOrDefault
ÄÄe s
(
ÄÄs t
pla
ÄÄt w
=>
ÄÄx z
pla
ÄÄ{ ~
.
ÄÄ~ 
NameÄÄ É
.ÄÄÉ Ñ
EqualsÄÄÑ ä
(ÄÄä ã
$strÄÄã é
+ÄÄè ê
playerChoosingÄÄë ü
.ÄÄü †
IdUserÄÄ† ¶
.ÄÄ¶ ß
ToStringÄÄß Ø
(ÄÄØ ∞
)ÄÄ∞ ±
)ÄÄ± ≤
)ÄÄ≤ ≥
;ÄÄ≥ ¥
specificPlayer
ÅÅ 
.
ÅÅ 
UpdatePoints
ÅÅ +
(
ÅÅ+ ,
playerChoosing
ÅÅ, :
.
ÅÅ: ;"
CurrentPointsOfRound
ÅÅ; O
)
ÅÅO P
;
ÅÅP Q
}
ÇÇ 
await
ÉÉ 
Task
ÉÉ 
.
ÉÉ 
Delay
ÉÉ 
(
ÉÉ 
$num
ÉÉ !
)
ÉÉ! "
;
ÉÉ" #
cnvResultOfAwnser
ÑÑ 
.
ÑÑ 

Visibility
ÑÑ (
=
ÑÑ) *

Visibility
ÑÑ+ 5
.
ÑÑ5 6
Hidden
ÑÑ6 <
;
ÑÑ< =
grTimer
ÖÖ 
.
ÖÖ 

Visibility
ÖÖ 
=
ÖÖ  

Visibility
ÖÖ! +
.
ÖÖ+ ,
Hidden
ÖÖ, 2
;
ÖÖ2 3
}
ÜÜ 	
private
ââ 
void
ââ 
HideQuestion
ââ !
(
ââ! "
)
ââ" #
{
ää 	
wrpBoardOfCards
ãã 
.
ãã 
Children
ãã $
.
ãã$ %
OfType
ãã% +
<
ãã+ ,
Border
ãã, 2
>
ãã2 3
(
ãã3 4
)
ãã4 5
.
ãã5 6
FirstOrDefault
ãã6 D
(
ããD E
card
ããE I
=>
ããJ L
card
ããM Q
.
ããQ R
Name
ããR V
.
ããV W
Equals
ããW ]
(
ãã] ^
$str
ãã^ a
+
ããa b 
questionBeingAsked
ããb t
.
ããt u

IdQuestion
ããu 
.ãã Ä
ToStringããÄ à
(ããà â
)ããâ ä
)ããä ã
)ããã å
.ããå ç
	IsEnabledããç ñ
=ããó ò
falseããô û
;ããû ü
}
åå 	
private
éé 
async
éé 
void
éé %
AssureThereAreQuestions
éé 2
(
éé2 3
)
éé3 4
{
èè 	
await
êê 
Task
êê 
.
êê 
Delay
êê 
(
êê 
$num
êê !
)
êê! "
;
êê" #
int
ëë 
count
ëë 
=
ëë 
$num
ëë 
;
ëë 
if
íí 
(
íí 
currentTurn
íí 
==
íí 
yourTurn
íí '
)
íí' (
{
ìì 
foreach
îî 
(
îî 
Border
îî 
card
îî  $
in
îî% '
wrpBoardOfCards
îî( 7
.
îî7 8
Children
îî8 @
.
îî@ A
OfType
îîA G
<
îîG H
Border
îîH N
>
îîN O
(
îîO P
)
îîP Q
)
îîQ R
{
ïï 
if
ññ 
(
ññ 
card
ññ 
.
ññ 
	IsEnabled
ññ &
)
ññ& '
{
óó 
count
òò 
++
òò 
;
òò  
}
ôô 
if
öö 
(
öö 
count
öö 
==
öö  
$num
öö! "
)
öö" #
{
õõ 
break
úú 
;
úú 
}
ùù 
}
ûû 
if
üü 
(
üü 
count
üü 
<=
üü 
$num
üü 
)
üü 
{
†† 
try
°° 
{
¢¢ 
GameActionsClient
££ ),
gameActionsCallBackClientProxy
££* H
=
££I J
new
££K N
GameActionsClient
££O `
(
££` a
new
££a d
InstanceContext
££e t
(
££t u
this
££u y
)
££y z
)
££z {
;
££{ |,
gameActionsCallBackClientProxy
§§ 6
.
§§6 7
RenewGameCallBack
§§7 H
(
§§H I
roomCode
§§I Q
,
§§Q R
userSingleton
§§S `
.
§§` a
IdUser
§§a g
)
§§g h
;
§§h i)
GameActionsOperationsClient
¶¶ 3$
gameActionsClientProxy
¶¶4 J
=
¶¶K L
new
¶¶M P
(
¶¶P Q
)
¶¶Q R
;
¶¶R S$
gameActionsClientProxy
ßß .
.
ßß. /
FinishRound
ßß/ :
(
ßß: ;
roomCode
ßß; C
,
ßßC D
playersInGame
ßßE R
.
ßßR S
ToArray
ßßS Z
(
ßßZ [
)
ßß[ \
,
ßß\ ]
currentRound
ßß^ j
)
ßßj k
;
ßßk l
}
©© 
catch
™™ 
(
™™ '
EndpointNotFoundException
™™ 4
ex
™™5 7
)
™™7 8
{
´´ 
HandleException
¨¨ '
(
¨¨' (
ex
¨¨( *
,
¨¨* +

Properties
¨¨, 6
.
¨¨6 7
	Resources
¨¨7 @
.
¨¨@ A#
lblFailToChooseAnswer
¨¨A V
+
¨¨W X
$str
¨¨Y ^
+
¨¨_ `

Properties
¨¨a k
.
¨¨k l
	Resources
¨¨l u
.
¨¨u v"
lblEndPointNotFound¨¨v â
)¨¨â ä
;¨¨ä ã
}
≠≠ 
catch
ÆÆ 
(
ÆÆ 1
#CommunicationObjectFaultedException
ÆÆ >
ex
ÆÆ? A
)
ÆÆA B
{
ØØ 
HandleException
∞∞ '
(
∞∞' (
ex
∞∞( *
,
∞∞* +

Properties
∞∞, 6
.
∞∞6 7
	Resources
∞∞7 @
.
∞∞@ A#
lblFailToChooseAnswer
∞∞A V
+
∞∞W X
$str
∞∞Y ^
+
∞∞_ `

Properties
∞∞a k
.
∞∞k l
	Resources
∞∞l u
.
∞∞u v'
lblComunicationException∞∞v é
)∞∞é è
;∞∞è ê
}
±± 
catch
≤≤ 
(
≤≤ 
TimeoutException
≤≤ +
ex
≤≤, .
)
≤≤. /
{
≥≥ 
HandleException
¥¥ '
(
¥¥' (
ex
¥¥( *
,
¥¥* +

Properties
¥¥, 6
.
¥¥6 7
	Resources
¥¥7 @
.
¥¥@ A#
lblFailToChooseAnswer
¥¥A V
+
¥¥W X
$str
¥¥Y ^
+
¥¥_ `

Properties
¥¥a k
.
¥¥k l
	Resources
¥¥l u
.
¥¥u v
lblTimeException¥¥v Ü
)¥¥Ü á
;¥¥á à
}
µµ 
catch
∂∂ 
(
∂∂ $
CommunicationException
∂∂ 1
ex
∂∂2 4
)
∂∂4 5
{
∑∑ 
HandleException
∏∏ '
(
∏∏' (
ex
∏∏( *
,
∏∏* +

Properties
∏∏, 6
.
∏∏6 7
	Resources
∏∏7 @
.
∏∏@ A#
lblFailToChooseAnswer
∏∏A V
+
∏∏W X
$str
∏∏Y ^
+
∏∏_ `

Properties
∏∏a k
.
∏∏k l
	Resources
∏∏l u
.
∏∏u v"
lblWithoutConection∏∏v â
)∏∏â ä
;∏∏ä ã
}
ππ 
catch
∫∫ 
(
∫∫ 
SocketException
∫∫ *
ex
∫∫+ -
)
∫∫- .
{
ªª 
HandleException
ºº '
(
ºº' (
ex
ºº( *
,
ºº* +

Properties
ºº, 6
.
ºº6 7
	Resources
ºº7 @
.
ºº@ A 
lblFailToStartGame
ººA S
+
ººT U
$str
ººV [
+
ºº\ ]

Properties
ºº^ h
.
ººh i
	Resources
ººi r
.
ººr s"
lblEndPointNotFoundººs Ü
)ººÜ á
;ººá à
}
ΩΩ 
}
ææ 
}
øø 
}
¿¿ 	
public
¬¬ 
void
¬¬ *
ReceiveNotificationAboutTurn
¬¬ 0
(
¬¬0 1
int
¬¬1 4

isYourTurn
¬¬5 ?
)
¬¬? @
{
√√ 	
currentTurn
ƒƒ 
=
ƒƒ 

isYourTurn
ƒƒ $
;
ƒƒ$ %
ShowIfItsYourTurn
≈≈ 
(
≈≈ 
)
≈≈ 
;
≈≈  
}
∆∆ 	
private
»» 
void
»» 
ShowIfItsYourTurn
»» &
(
»»& '
)
»»' (
{
…… 	
var
   
userTurn
   
=
   
playersInGame
   (
.
  ( )
FirstOrDefault
  ) 7
(
  7 8
pla
  8 ;
=>
  < >
pla
  ? B
.
  B C
TurnOfPlayer
  C O
==
  P R
currentTurn
  S ^
)
  ^ _
;
  _ `
List
ÀÀ 
<
ÀÀ 
Border
ÀÀ 
>
ÀÀ 
specificPlayer
ÀÀ '
=
ÀÀ( )

stpPlayers
ÀÀ* 4
.
ÀÀ4 5
Children
ÀÀ5 =
.
ÀÀ= >
OfType
ÀÀ> D
<
ÀÀD E
Border
ÀÀE K
>
ÀÀK L
(
ÀÀL M
)
ÀÀM N
.
ÀÀN O
ToList
ÀÀO U
(
ÀÀU V
)
ÀÀV W
;
ÀÀW X
if
ÃÃ 
(
ÃÃ 
itsTeamGame
ÃÃ 
)
ÃÃ 
{
ÕÕ 
string
ŒŒ 
nameOfBorder
ŒŒ #
;
ŒŒ# $
if
œœ 
(
œœ 
userTurn
œœ 
.
œœ 
SideTeam
œœ %
==
œœ& (
$num
œœ) *
)
œœ* +
{
–– 
nameOfBorder
——  
=
——! "
	team1Name
——# ,
;
——, -
}
““ 
else
”” 
{
‘‘ 
nameOfBorder
’’  
=
’’! "
	team2Name
’’# ,
;
’’, -
}
÷÷ 
foreach
◊◊ 
(
◊◊ 
Border
◊◊ 
card
◊◊  $
in
◊◊% '
specificPlayer
◊◊( 6
)
◊◊6 7
{
ÿÿ 
GameTeamCard
ŸŸ  

playerCard
ŸŸ! +
=
ŸŸ, -
card
ŸŸ. 2
as
ŸŸ3 5
GameTeamCard
ŸŸ6 B
;
ŸŸB C
if
⁄⁄ 
(
⁄⁄ 

playerCard
⁄⁄ "
.
⁄⁄" #
Name
⁄⁄# '
.
⁄⁄' (
Equals
⁄⁄( .
(
⁄⁄. /
nameOfBorder
⁄⁄/ ;
)
⁄⁄; <
)
⁄⁄< =
{
€€ 

playerCard
‹‹ "
.
‹‹" #
MakeBorderSpecial
‹‹# 4
(
‹‹4 5
)
‹‹5 6
;
‹‹6 7
}
›› 
else
ﬁﬁ 
{
ﬂﬂ 

playerCard
‡‡ "
.
‡‡" #
MakeBoredNormal
‡‡# 2
(
‡‡2 3
)
‡‡3 4
;
‡‡4 5
}
·· 
}
‚‚ 
}
„„ 
else
‰‰ 
{
ÂÂ 
foreach
ÊÊ 
(
ÊÊ 
Border
ÊÊ 
card
ÊÊ  $
in
ÊÊ% '
specificPlayer
ÊÊ( 6
)
ÊÊ6 7
{
ÁÁ 
GamePlayerCard
ËË "

playerCard
ËË# -
=
ËË. /
card
ËË0 4
as
ËË5 7
GamePlayerCard
ËË8 F
;
ËËF G
if
ÈÈ 
(
ÈÈ 

playerCard
ÈÈ "
.
ÈÈ" #
Name
ÈÈ# '
.
ÈÈ' (
Equals
ÈÈ( .
(
ÈÈ. /
$str
ÈÈ/ 2
+
ÈÈ3 4
userTurn
ÈÈ5 =
.
ÈÈ= >
IdUser
ÈÈ> D
)
ÈÈD E
)
ÈÈE F
{
ÍÍ 

playerCard
ÎÎ "
.
ÎÎ" #
MakeBorderSpecial
ÎÎ# 4
(
ÎÎ4 5
)
ÎÎ5 6
;
ÎÎ6 7
}
ÏÏ 
else
ÌÌ 
{
ÓÓ 

playerCard
ÔÔ "
.
ÔÔ" #
MakeBoredNormal
ÔÔ# 2
(
ÔÔ2 3
)
ÔÔ3 4
;
ÔÔ4 5
}
 
}
ÒÒ 
}
ÚÚ 
if
ÛÛ 
(
ÛÛ 
yourTurn
ÛÛ 
==
ÛÛ 
currentTurn
ÛÛ '
)
ÛÛ' (
{
ÙÙ 
ellYourTurn
ıı 
.
ıı 
Fill
ıı  
=
ıı! "
Brushes
ıı# *
.
ıı* +
Green
ıı+ 0
;
ıı0 1
}
ˆˆ 
else
˜˜ 
{
¯¯ 
ellYourTurn
˘˘ 
.
˘˘ 
Fill
˘˘  
=
˘˘! "
Brushes
˘˘# *
.
˘˘* +
Gray
˘˘+ /
;
˘˘/ 0
}
˙˙ 
}
˚˚ 	
public
˝˝ 
void
˝˝  
ResponseBeginRound
˝˝ &
(
˝˝& '
int
˝˝' *

isYourTurn
˝˝+ 5
,
˝˝5 6
int
˝˝7 :
roundToStart
˝˝; G
,
˝˝G H&
PlayerInGameDataContract
˝˝I a
[
˝˝a b
]
˝˝b c
playerInGam
˝˝d o
)
˝˝o p
{
˛˛ 	
playersInGame
ˇˇ 
=
ˇˇ 
playersInGame
ˇˇ )
.
ˇˇ) *
ToList
ˇˇ* 0
(
ˇˇ0 1
)
ˇˇ1 2
;
ˇˇ2 3
switch
ÄÄ 
(
ÄÄ 
roundToStart
ÄÄ  
)
ÄÄ  !
{
ÅÅ 
case
ÇÇ 
$num
ÇÇ 
:
ÇÇ 
currentRound
ÉÉ  
=
ÉÉ! "
roundToStart
ÉÉ# /
;
ÉÉ/ 0
PrepareRoundTwo
ÑÑ #
(
ÑÑ# $
)
ÑÑ$ %
;
ÑÑ% &
break
ÖÖ 
;
ÖÖ 
case
ÜÜ 
$num
ÜÜ 
:
ÜÜ 
currentRound
áá  
=
áá! "
roundToStart
áá# /
;
áá/ 0
PrepareLastRound
àà $
(
àà$ %
)
àà% &
;
àà& '
break
ââ 
;
ââ 
}
ää 
}
ãã 	
public
çç 
void
çç  
ResponseShowWinner
çç &
(
çç& '&
PlayerInGameDataContract
çç' ?
[
çç? @
]
çç@ A
playerInGame
ççB N
,
ççN O
int
ççP S
arePointsSaved
ççT b
)
ççb c
{
éé 	
currentRound
èè 
=
èè 
$num
èè 
;
èè 
playersInGame
êê 
=
êê 
playerInGame
êê (
.
êê( )
ToList
êê) /
(
êê/ 0
)
êê0 1
;
êê1 2'
CreatePlayersScoresBoards
ëë %
(
ëë% &
)
ëë& '
;
ëë' (
playerInGame
íí 
.
íí 
OrderByDescending
íí *
(
íí* +
pl
íí+ -
=>
íí. 0
pl
íí1 3
.
íí3 4"
CurrentPointsOfRound
íí4 H
)
ííH I
;
ííI J
grdAnswerChoices
ìì 
.
ìì 

Visibility
ìì '
=
ìì( )

Visibility
ìì* 4
.
ìì4 5
Hidden
ìì5 ;
;
ìì; <
grTimer
îî 
.
îî 

Visibility
îî 
=
îî  

Visibility
îî! +
.
îî+ ,
Hidden
îî, 2
;
îî2 3
grWinnerPanel
ïï 
.
ïï 

Visibility
ïï $
=
ïï% &

Visibility
ïï' 1
.
ïï1 2
Visible
ïï2 9
;
ïï9 :
List
ññ 
<
ññ 
Border
ññ 
>
ññ 
playersBorders
ññ '
=
ññ( )

stpPlayers
ññ* 4
.
ññ4 5
Children
ññ5 =
.
ññ= >
OfType
ññ> D
<
ññD E
Border
ññE K
>
ññK L
(
ññL M
)
ññM N
.
ññN O
ToList
ññO U
(
ññU V
)
ññV W
;
ññW X&
SetPlayerInPositionSpots
óó $
(
óó$ %
playersBorders
óó% 3
,
óó3 4
playerInGame
óó5 A
)
óóA B
;
óóB C
if
òò 
(
òò 
userSingleton
òò 
.
òò 
IdState
òò $
!=
òò% '
$num
òò( )
)
òò) *
{
ôô 
if
öö 
(
öö 
arePointsSaved
öö "
==
öö# %!
ExceptionDictionary
öö& 9
.
öö9 :
SUCCESFULL_EVENT
öö: J
)
ööJ K
{
õõ 
dialogMessage
úú !
=
úú" #
new
úú$ ',
InformationMessageDialogWindow
úú( F
(
úúF G

Properties
úúG Q
.
úúQ R
	Resources
úúR [
.
úú[ \
txbGameFinish
úú\ i
,
úúi j

Properties
úúk u
.
úúu v
	Resources
úúv 
.úú Ä
GameFinishedúúÄ å
,úúå ç
Windowúúé î
.úúî ï
	GetWindowúúï û
(úúû ü
thisúúü £
)úú£ §
)úú§ •
;úú• ¶
}
ùù 
else
ûû 
{
üü 
dialogMessage
†† !
=
††" #
new
††$ ',
InformationMessageDialogWindow
††( F
(
††F G

Properties
††G Q
.
††Q R
	Resources
††R [
.
††[ \
txbErrorTitle
††\ i
,
††i j

Properties
††k u
.
††u v
	Resources
††v 
.†† Ä,
lblFailToSavePoinstAfterGame††Ä ú
,††ú ù
Window††û §
.††§ •
	GetWindow††• Æ
(††Æ Ø
this††Ø ≥
)††≥ ¥
)††¥ µ
;††µ ∂
}
°° 
}
¢¢ 
else
££ 
{
§§ 
dialogMessage
•• 
=
•• 
new
••  #,
InformationMessageDialogWindow
••$ B
(
••B C

Properties
••C M
.
••M N
	Resources
••N W
.
••W X
txbErrorTitle
••X e
,
••e f

Properties
••g q
.
••q r
	Resources
••r {
.
••{ | 
lblGuestEndOfGame••| ç
,••ç é
Window••è ï
.••ï ñ
	GetWindow••ñ ü
(••ü †
this••† §
)••§ •
)••• ¶
;••¶ ß
}
¶¶ 
}
ßß 	
private
©© 
void
©© &
SetPlayerInPositionSpots
©© .
(
©©. /
List
©©/ 3
<
©©3 4
Border
©©4 :
>
©©: ;
playerBorder
©©< H
,
©©H I&
PlayerInGameDataContract
©©J b
[
©©b c
]
©©c d
playerInGame
©©e q
)
©©q r
{
™™ 	
List
´´ 
<
´´ 
Border
´´ 
>
´´ 
pillarRectangles
´´ )
=
´´* +
new
´´, /
List
´´0 4
<
´´4 5
Border
´´5 ;
>
´´; <
(
´´< =
)
´´= >
{
´´? @
brdFirstPlaceSpot
´´A R
,
´´R S 
brdSecondPlaceSpot
´´T f
,
´´f g 
brdtThirdPlaceSpot
´´h z
,
´´z {%
brdForthPlacePlaceSpot´´| í
}´´í ì
;´´ì î
List
¨¨ 
<
¨¨ 
Border
¨¨ 
>
¨¨ 
borderPositions
¨¨ (
=
¨¨) *
new
¨¨+ .
List
¨¨/ 3
<
¨¨3 4
Border
¨¨4 :
>
¨¨: ;
(
¨¨; <
)
¨¨< =
{
¨¨> ?
brdFirstPlace
¨¨@ M
,
¨¨M N
brdSecondPlace
¨¨O ]
,
¨¨] ^
brdThirdPlace
¨¨_ l
,
¨¨l m
brdForthPlace
¨¨n {
}
¨¨{ |
;
¨¨| }
if
≠≠ 
(
≠≠ 
itsTeamGame
≠≠ 
)
≠≠ 
{
ÆÆ 
var
ØØ 
borderTeam1
ØØ 
=
ØØ  !
playerBorder
ØØ" .
.
ØØ. /
FirstOrDefault
ØØ/ =
(
ØØ= >
pla
ØØ> A
=>
ØØB D
pla
ØØE H
.
ØØH I
Name
ØØI M
.
ØØM N
Equals
ØØN T
(
ØØT U
	team1Name
ØØU ^
)
ØØ^ _
)
ØØ_ `
;
ØØ` a
var
∞∞ 
borderTeam2
∞∞ 
=
∞∞  !
playerBorder
∞∞" .
.
∞∞. /
FirstOrDefault
∞∞/ =
(
∞∞= >
pla
∞∞> A
=>
∞∞B D
pla
∞∞E H
.
∞∞H I
Name
∞∞I M
.
∞∞M N
Equals
∞∞N T
(
∞∞T U
	team2Name
∞∞U ^
)
∞∞^ _
)
∞∞_ `
;
∞∞` a
if
±± 
(
±± 
playerInGame
±±  
.
±±  !
FirstOrDefault
±±! /
(
±±/ 0
pl
±±0 2
=>
±±3 5
pl
±±6 8
.
±±8 9
SideTeam
±±9 A
==
±±B D
$num
±±E F
)
±±F G
.
±±G H"
CurrentPointsOfRound
±±H \
>=
±±] _
playerInGame
±±` l
.
±±l m
FirstOrDefault
±±m {
(
±±{ |
pl
±±| ~
=>±± Å
pl±±Ç Ñ
.±±Ñ Ö
SideTeam±±Ö ç
==±±é ê
$num±±ë í
)±±í ì
.±±ì î$
CurrentPointsOfRound±±î ®
)±±® ©
{
≤≤ 
borderTeam1
≥≥ 
.
≥≥  
Margin
≥≥  &
=
≥≥' (
borderPositions
≥≥) 8
[
≥≥8 9
$num
≥≥9 :
]
≥≥: ;
.
≥≥; <
Margin
≥≥< B
;
≥≥B C
borderTeam2
¥¥ 
.
¥¥  
Margin
¥¥  &
=
¥¥' (
borderPositions
¥¥) 8
[
¥¥8 9
$num
¥¥9 :
]
¥¥: ;
.
¥¥; <
Margin
¥¥< B
;
¥¥B C
pillarRectangles
µµ $
[
µµ$ %
$num
µµ% &
]
µµ& '
.
µµ' (

Background
µµ( 2
=
µµ3 4
borderTeam1
µµ5 @
.
µµ@ A

Background
µµA K
;
µµK L
pillarRectangles
∂∂ $
[
∂∂$ %
$num
∂∂% &
]
∂∂& '
.
∂∂' (

Background
∂∂( 2
=
∂∂3 4
borderTeam2
∂∂5 @
.
∂∂@ A

Background
∂∂A K
;
∂∂K L
}
∑∑ 
else
∏∏ 
{
ππ 
borderTeam1
∫∫ 
.
∫∫  
Margin
∫∫  &
=
∫∫' (
borderPositions
∫∫) 8
[
∫∫8 9
$num
∫∫9 :
]
∫∫: ;
.
∫∫; <
Margin
∫∫< B
;
∫∫B C
borderTeam2
ªª 
.
ªª  
Margin
ªª  &
=
ªª' (
borderPositions
ªª) 8
[
ªª8 9
$num
ªª9 :
]
ªª: ;
.
ªª; <
Margin
ªª< B
;
ªªB C
pillarRectangles
ºº $
[
ºº$ %
$num
ºº% &
]
ºº& '
.
ºº' (

Background
ºº( 2
=
ºº3 4
borderTeam1
ºº5 @
.
ºº@ A

Background
ººA K
;
ººK L
pillarRectangles
ΩΩ $
[
ΩΩ$ %
$num
ΩΩ% &
]
ΩΩ& '
.
ΩΩ' (

Background
ΩΩ( 2
=
ΩΩ3 4
borderTeam2
ΩΩ5 @
.
ΩΩ@ A

Background
ΩΩA K
;
ΩΩK L
}
ææ 
borderTeam1
øø 
.
øø 
Width
øø !
=
øø" #
double
øø$ *
.
øø* +
NaN
øø+ .
;
øø. /
borderTeam1
¿¿ 
.
¿¿ 
Height
¿¿ "
=
¿¿# $
double
¿¿% +
.
¿¿+ ,
NaN
¿¿, /
;
¿¿/ 0
borderTeam2
¡¡ 
.
¡¡ 
Width
¡¡ !
=
¡¡" #
double
¡¡$ *
.
¡¡* +
NaN
¡¡+ .
;
¡¡. /
borderTeam2
¬¬ 
.
¬¬ 
Height
¬¬ "
=
¬¬# $
double
¬¬% +
.
¬¬+ ,
NaN
¬¬, /
;
¬¬/ 0

stpPlayers
√√ 
.
√√ 
Children
√√ #
.
√√# $
Clear
√√$ )
(
√√) *
)
√√* +
;
√√+ ,
int
ƒƒ 
indexBorder0
ƒƒ  
=
ƒƒ! "
grWinnerPanel
ƒƒ# 0
.
ƒƒ0 1
Children
ƒƒ1 9
.
ƒƒ9 :
IndexOf
ƒƒ: A
(
ƒƒA B
borderPositions
ƒƒB Q
[
ƒƒQ R
$num
ƒƒR S
]
ƒƒS T
)
ƒƒT U
;
ƒƒU V
int
≈≈ 
indexBorder1
≈≈  
=
≈≈! "
grWinnerPanel
≈≈# 0
.
≈≈0 1
Children
≈≈1 9
.
≈≈9 :
IndexOf
≈≈: A
(
≈≈A B
borderPositions
≈≈B Q
[
≈≈Q R
$num
≈≈R S
]
≈≈S T
)
≈≈T U
;
≈≈U V
grWinnerPanel
∆∆ 
.
∆∆ 
Children
∆∆ &
.
∆∆& '
RemoveAt
∆∆' /
(
∆∆/ 0
indexBorder0
∆∆0 <
)
∆∆< =
;
∆∆= >
grWinnerPanel
«« 
.
«« 
Children
«« &
.
««& '
RemoveAt
««' /
(
««/ 0
indexBorder1
««0 <
)
««< =
;
««= >
grWinnerPanel
»» 
.
»» 
Children
»» &
.
»»& '
Insert
»»' -
(
»»- .
indexBorder0
»». :
,
»»: ;
borderTeam1
»»< G
)
»»G H
;
»»H I
grWinnerPanel
…… 
.
…… 
Children
…… &
.
……& '
Insert
……' -
(
……- .
indexBorder1
……. :
,
……: ;
borderTeam2
……< G
)
……G H
;
……H I
}
   
else
ÀÀ 
{
ÃÃ 
for
ÕÕ 
(
ÕÕ 
int
ÕÕ 
i
ÕÕ 
=
ÕÕ 
playerInGame
ÕÕ )
.
ÕÕ) *
Count
ÕÕ* /
(
ÕÕ/ 0
)
ÕÕ0 1
-
ÕÕ2 3
$num
ÕÕ4 5
;
ÕÕ5 6
i
ÕÕ7 8
>=
ÕÕ9 ;
$num
ÕÕ< =
;
ÕÕ= >
i
ÕÕ? @
--
ÕÕ@ B
)
ÕÕB C
{
ŒŒ 
pillarRectangles
œœ $
[
œœ$ %
i
œœ% &
]
œœ& '
.
œœ' (

Visibility
œœ( 2
=
œœ3 4

Visibility
œœ5 ?
.
œœ? @
Visible
œœ@ G
;
œœG H
int
–– 
index
–– 
=
–– 
grWinnerPanel
––  -
.
––- .
Children
––. 6
.
––6 7
IndexOf
––7 >
(
––> ?
borderPositions
––? N
[
––N O
i
––O P
]
––P Q
)
––Q R
;
––R S
Border
—— 

borderCopy
—— %
;
——% &

borderCopy
““ 
=
““  
playerBorder
““! -
.
““- .
FirstOrDefault
““. <
(
““< =
pla
““= @
=>
““A C
pla
““D G
.
““G H
Name
““H L
.
““L M
Equals
““M S
(
““S T
$str
““T W
+
““X Y
playerInGame
““Z f
[
““f g
i
““g h
]
““h i
.
““i j
IdUser
““j p
.
““p q
ToString
““q y
(
““y z
)
““z {
)
““{ |
)
““| }
;
““} ~

stpPlayers
”” 
.
”” 
Children
”” '
.
””' (
Remove
””( .
(
””. /

borderCopy
””/ 9
)
””9 :
;
””: ;

borderCopy
‘‘ 
.
‘‘ 
Margin
‘‘ %
=
‘‘& '
borderPositions
‘‘( 7
[
‘‘7 8
i
‘‘8 9
]
‘‘9 :
.
‘‘: ;
Margin
‘‘; A
;
‘‘A B
grWinnerPanel
’’ !
.
’’! "
Children
’’" *
.
’’* +
RemoveAt
’’+ 3
(
’’3 4
index
’’4 9
)
’’9 :
;
’’: ;
grWinnerPanel
÷÷ !
.
÷÷! "
Children
÷÷" *
.
÷÷* +
Insert
÷÷+ 1
(
÷÷1 2
index
÷÷2 7
,
÷÷7 8

borderCopy
÷÷9 C
)
÷÷C D
;
÷÷D E
pillarRectangles
◊◊ $
[
◊◊$ %
i
◊◊% &
]
◊◊& '
.
◊◊' (

Background
◊◊( 2
=
◊◊3 4

borderCopy
◊◊5 ?
.
◊◊? @

Background
◊◊@ J
;
◊◊J K
}
ÿÿ 
}
ŸŸ 
}
⁄⁄ 	
private
‹‹ 
void
‹‹ 

StartTimer
‹‹ 
(
‹‹  
)
‹‹  !
{
›› 	
txbTimer
ﬁﬁ 
.
ﬁﬁ 
Text
ﬁﬁ 
=
ﬁﬁ 
timeLeft
ﬁﬁ $
.
ﬁﬁ$ %
ToString
ﬁﬁ% -
(
ﬁﬁ- .
)
ﬁﬁ. /
+
ﬁﬁ0 1!
secondsAbbreviation
ﬁﬁ2 E
;
ﬁﬁE F
if
ﬂﬂ 
(
ﬂﬂ 
currentRound
ﬂﬂ 
==
ﬂﬂ 
	ROUND_ONE
ﬂﬂ (
)
ﬂﬂ( )
{
‡‡ 
timeLeft
·· 
=
·· 
$num
·· 
;
·· 
}
‚‚ 
else
„„ 
{
‰‰ 
timeLeft
ÂÂ 
=
ÂÂ 
$num
ÂÂ 
;
ÂÂ 
}
ÊÊ 
timer
ÁÁ 
=
ÁÁ 
new
ÁÁ 
DispatcherTimer
ÁÁ '
(
ÁÁ' (
)
ÁÁ( )
;
ÁÁ) *
timer
ËË 
.
ËË 
Interval
ËË 
=
ËË 
TimeSpan
ËË %
.
ËË% &
FromSeconds
ËË& 1
(
ËË1 2
$num
ËË2 3
)
ËË3 4
;
ËË4 5
timer
ÈÈ 
.
ÈÈ 
Tick
ÈÈ 
+=
ÈÈ 

Timer_Tick
ÈÈ $
;
ÈÈ$ %
timer
ÍÍ 
.
ÍÍ 
Start
ÍÍ 
(
ÍÍ 
)
ÍÍ 
;
ÍÍ 
}
ÎÎ 	
private
ÌÌ 
void
ÌÌ 

Timer_Tick
ÌÌ 
(
ÌÌ  
object
ÌÌ  &
sender
ÌÌ' -
,
ÌÌ- .
	EventArgs
ÌÌ/ 8
e
ÌÌ9 :
)
ÌÌ: ;
{
ÓÓ 	
txbTimer
ÔÔ 
.
ÔÔ 
Text
ÔÔ 
=
ÔÔ 
timeLeft
ÔÔ $
.
ÔÔ$ %
ToString
ÔÔ% -
(
ÔÔ- .
)
ÔÔ. /
+
ÔÔ0 1!
secondsAbbreviation
ÔÔ2 E
;
ÔÔE F
if
 
(
 
timeLeft
 
<=
 
$num
 
)
 
{
ÒÒ 
if
ÚÚ 
(
ÚÚ 
currentRound
ÚÚ  
!=
ÚÚ! #
ROUND_THREE
ÚÚ$ /
)
ÚÚ/ 0
{
ÛÛ 
if
ÙÙ 
(
ÙÙ 
grdAnswerChoices
ÙÙ (
.
ÙÙ( )
	IsVisible
ÙÙ) 2
)
ÙÙ2 3
{
ıı 
ChooseWrongAnswer
ˆˆ )
(
ˆˆ) *
)
ˆˆ* +
;
ˆˆ+ ,
}
˜˜ 
}
¯¯ 
}
˘˘ 
else
˙˙ 
{
˚˚ 
timeLeft
¸¸ 
--
¸¸ 
;
¸¸ 
}
˝˝ 
}
˛˛ 	
private
ÄÄ 
void
ÄÄ 
ChooseWrongAnswer
ÄÄ &
(
ÄÄ& '
)
ÄÄ' (
{
ÅÅ 	
if
ÇÇ 
(
ÇÇ 
currentTurn
ÇÇ 
==
ÇÇ 
yourTurn
ÇÇ '
)
ÇÇ' (
{
ÉÉ 
string
ÑÑ )
descriptionAnswerToQuestion
ÑÑ 2
=
ÑÑ3 4!
GetSpecificResource
ÑÑ5 H
.
ÑÑH I,
GetEnglishOrSpanishDescription
ÑÑI g
(
ÑÑg h%
answerToCurrentQuestion
ÑÑh 
.ÑÑ Ä(
EnglishAnswerDescriptionÑÑÄ ò
,ÑÑò ô'
answerToCurrentQuestionÑÑö ±
.ÑÑ± ≤(
SpanishAnswerDescriptionÑÑ≤  
)ÑÑ  À
;ÑÑÀ Ã
Button
ÖÖ 
answerButton
ÖÖ #
=
ÖÖ$ %
grdAnswerChoices
ÖÖ& 6
.
ÖÖ6 7
Children
ÖÖ7 ?
.
ÖÖ? @
OfType
ÖÖ@ F
<
ÖÖF G
Button
ÖÖG M
>
ÖÖM N
(
ÖÖN O
)
ÖÖO P
.
ÖÖP Q
FirstOrDefault
ÖÖQ _
(
ÖÖ_ `
btt
ÖÖ` c
=>
ÖÖd f
!
ÖÖg h
btt
ÖÖh k
.
ÖÖk l
Content
ÖÖl s
.
ÖÖs t
Equals
ÖÖt z
(
ÖÖz {*
descriptionAnswerToQuestionÖÖ{ ñ
)ÖÖñ ó
)ÖÖó ò
;ÖÖò ô
try
ÜÜ 
{
áá 
GameActionsClient
àà %,
gameActionsCallBackClientProxy
àà& D
=
ààE F
new
ààG J
GameActionsClient
ààK \
(
àà\ ]
new
àà] `
InstanceContext
ààa p
(
ààp q
this
ààq u
)
ààu v
)
ààv w
;
ààw x,
gameActionsCallBackClientProxy
ââ 2
.
ââ2 3
RenewGameCallBack
ââ3 D
(
ââD E
roomCode
ââE M
,
ââM N
userSingleton
ââO \
.
ââ\ ]
IdUser
ââ] c
)
ââc d
;
ââd e
if
ãã 
(
ãã 
currentRound
ãã $
!=
ãã% '
ROUND_THREE
ãã( 3
)
ãã3 4
{
åå )
GameActionsOperationsClient
çç 3$
gameActionsClientProxy
çç4 J
=
ççK L
new
ççM P
(
ççP Q
)
ççQ R
;
ççR S
int
éé 
idAnswerSelected
éé ,
=
éé- .)
answersOfQuestionBeingAsked
éé/ J
.
ééJ K
FirstOrDefault
ééK Y
(
ééY Z
anw
ééZ ]
=>
éé^ `!
GetSpecificResource
ééa t
.
éét u-
GetEnglishOrSpanishDescriptionééu ì
(ééì î
anwééî ó
.ééó ò(
EnglishAnswerDescriptionééò ∞
,éé∞ ±
anwéé≤ µ
.ééµ ∂(
SpanishAnswerDescriptionéé∂ Œ
)ééŒ œ
.ééœ –
Equalséé– ÷
(éé÷ ◊
answerButtonéé◊ „
.éé„ ‰
Contentéé‰ Î
)ééÎ Ï
)ééÏ Ì
.ééÌ Ó
IdAnswerééÓ ˆ
;ééˆ ˜$
gameActionsClientProxy
èè .
.
èè. /
ChooseAnswer
èè/ ;
(
èè; <
roomCode
èè< D
,
èèD E
userSingleton
èèF S
.
èèS T
IdUser
èèT Z
,
èèZ [
idAnswerSelected
èè\ l
,
èèl m!
questionBeingAskedèèn Ä
.èèÄ Å

ValueWorthèèÅ ã
,èèã å
yourTurnèèç ï
)èèï ñ
;èèñ ó
}
êê 
else
ëë 
{
íí )
GameActionsOperationsClient
ìì 3$
gameActionsClientProxy
ìì4 J
=
ììK L
new
ììM P
(
ììP Q
)
ììQ R
;
ììR S
bool
îî 
	isCorrect
îî &
=
îî' (
false
îî) .
;
îî. /
answerButton
ïï $
.
ïï$ %
BorderBrush
ïï% 0
=
ïï1 2
new
ïï3 6
SolidColorBrush
ïï7 F
(
ïïF G
Colors
ïïG M
.
ïïM N
Blue
ïïN R
)
ïïR S
;
ïïS T
bttFirstAnswer
ññ &
.
ññ& '
	IsEnabled
ññ' 0
=
ññ1 2
false
ññ3 8
;
ññ8 9
bttSecondAnswer
óó '
.
óó' (
	IsEnabled
óó( 1
=
óó2 3
false
óó4 9
;
óó9 :
bttThridAnswer
òò &
.
òò& '
	IsEnabled
òò' 0
=
òò1 2
false
òò3 8
;
òò8 9
bttFourAnswer
ôô %
.
ôô% &
	IsEnabled
ôô& /
=
ôô0 1
false
ôô2 7
;
ôô7 8
txbAdvicement
öö %
.
öö% &

Visibility
öö& 0
=
öö1 2

Visibility
öö3 =
.
öö= >
Visible
öö> E
;
ööE F
int
õõ 
idAnswerSelected
õõ ,
=
õõ- .)
answersOfQuestionBeingAsked
õõ/ J
.
õõJ K
FirstOrDefault
õõK Y
(
õõY Z
anw
õõZ ]
=>
õõ^ `!
GetSpecificResource
õõa t
.
õõt u-
GetEnglishOrSpanishDescriptionõõu ì
(õõì î
anwõõî ó
.õõó ò(
EnglishAnswerDescriptionõõò ∞
,õõ∞ ±
anwõõ≤ µ
.õõµ ∂(
SpanishAnswerDescriptionõõ∂ Œ
)õõŒ œ
.õõœ –
Equalsõõ– ÷
(õõ÷ ◊
answerButtonõõ◊ „
.õõ„ ‰
Contentõõ‰ Î
)õõÎ Ï
)õõÏ Ì
.õõÌ Ó
IdAnswerõõÓ ˆ
;õõˆ ˜$
gameActionsClientProxy
úú .
.
úú. /'
ConfirmLastQuestionAnswer
úú/ H
(
úúH I
roomCode
úúI Q
,
úúQ R
playersInGame
úúS `
.
úú` a
FirstOrDefault
úúa o
(
úúo p
pla
úúp s
=>
úút v
pla
úúw z
.
úúz {
IdUserúú{ Å
==úúÇ Ñ
userSingletonúúÖ í
.úúí ì
IdUserúúì ô
)úúô ö
,úúö õ
	pointsBetúúú •
,úú• ¶
	isCorrectúúß ∞
)úú∞ ±
;úú± ≤
}
ùù 
}
ûû 
catch
üü 
(
üü '
EndpointNotFoundException
üü 0
ex
üü1 3
)
üü3 4
{
†† 
HandleException
°° #
(
°°# $
ex
°°$ &
,
°°& '

Properties
°°( 2
.
°°2 3
	Resources
°°3 <
.
°°< =#
lblFailToChooseAnswer
°°= R
+
°°S T
$str
°°U Z
+
°°[ \

Properties
°°] g
.
°°g h
	Resources
°°h q
.
°°q r"
lblEndPointNotFound°°r Ö
)°°Ö Ü
;°°Ü á
}
¢¢ 
catch
££ 
(
££ 1
#CommunicationObjectFaultedException
££ :
ex
££; =
)
££= >
{
§§ 
HandleException
•• #
(
••# $
ex
••$ &
,
••& '

Properties
••( 2
.
••2 3
	Resources
••3 <
.
••< =#
lblFailToChooseAnswer
••= R
+
••S T
$str
••U Z
+
••[ \

Properties
••] g
.
••g h
	Resources
••h q
.
••q r'
lblComunicationException••r ä
)••ä ã
;••ã å
}
¶¶ 
catch
ßß 
(
ßß 
TimeoutException
ßß '
ex
ßß( *
)
ßß* +
{
®® 
HandleException
©© #
(
©©# $
ex
©©$ &
,
©©& '

Properties
©©( 2
.
©©2 3
	Resources
©©3 <
.
©©< =#
lblFailToChooseAnswer
©©= R
+
©©S T
$str
©©U Z
+
©©[ \

Properties
©©] g
.
©©g h
	Resources
©©h q
.
©©q r
lblTimeException©©r Ç
)©©Ç É
;©©É Ñ
}
™™ 
catch
´´ 
(
´´ $
CommunicationException
´´ -
ex
´´. 0
)
´´0 1
{
¨¨ 
HandleException
≠≠ #
(
≠≠# $
ex
≠≠$ &
,
≠≠& '

Properties
≠≠( 2
.
≠≠2 3
	Resources
≠≠3 <
.
≠≠< =#
lblFailToChooseAnswer
≠≠= R
+
≠≠S T
$str
≠≠U Z
+
≠≠[ \

Properties
≠≠] g
.
≠≠g h
	Resources
≠≠h q
.
≠≠q r"
lblWithoutConection≠≠r Ö
)≠≠Ö Ü
;≠≠Ü á
}
ÆÆ 
catch
ØØ 
(
ØØ 
SocketException
ØØ &
ex
ØØ' )
)
ØØ) *
{
∞∞ 
HandleException
±± #
(
±±# $
ex
±±$ &
,
±±& '

Properties
±±( 2
.
±±2 3
	Resources
±±3 <
.
±±< = 
lblFailToStartGame
±±= O
+
±±P Q
$str
±±R W
+
±±X Y

Properties
±±Z d
.
±±d e
	Resources
±±e n
.
±±n o"
lblEndPointNotFound±±o Ç
)±±Ç É
;±±É Ñ
}
≤≤ 
}
≥≥ 
}
¥¥ 	
private
∂∂ 
void
∂∂ 
ClickLeaveGame
∂∂ #
(
∂∂# $
object
∂∂$ *
sender
∂∂+ 1
,
∂∂1 2"
MouseButtonEventArgs
∂∂3 G
e
∂∂H I
)
∂∂I J
{
∑∑ 	
if
∏∏ 
(
∏∏ 
currentRound
∏∏ 
==
∏∏ 
$num
∏∏  
)
∏∏  !
{
ππ 
CloseWindow
∫∫ 
(
∫∫ 
)
∫∫ 
;
∫∫ 
}
ªª 
else
ºº 
if
ºº 
(
ºº 
new
ºº &
ConfirmationDialogWindow
ºº 0
(
ºº0 1

Properties
ºº1 ;
.
ºº; <
	Resources
ºº< E
.
ººE F
txbWarningTitle
ººF U
,
ººU V

Properties
ººW a
.
ººa b
	Resources
ººb k
.
ººk l$
LeaveGameConfirmationººl Å
,ººÅ Ç
WindowººÉ â
.ººâ ä
	GetWindowººä ì
(ººì î
thisººî ò
)ººò ô
)ººô ö
.ººö õ
CloseWindowººõ ¶
)ºº¶ ß
{
ΩΩ 
NotifyLeavingGame
ææ !
(
ææ! "
)
ææ" #
;
ææ# $
CloseWindow
øø 
(
øø 
)
øø 
;
øø 
}
¿¿ 
}
¬¬ 	
private
√√ 
void
√√ 
CloseWindow
√√  
(
√√  !
)
√√! "
{
ƒƒ 	
if
≈≈ 
(
≈≈ 
timer
≈≈ 
!=
≈≈ 
null
≈≈ 
)
≈≈ 
{
∆∆ 
timer
«« 
.
«« 
Stop
«« 
(
«« 
)
«« 
;
«« 
}
»» 
if
…… 
(
…… 
userSingleton
…… 
.
…… 
IdState
…… %
!=
……& (
$num
……) *
)
……* +
{
   
MainMenu
ÀÀ 
mainMenu
ÀÀ !
=
ÀÀ" #
new
ÀÀ$ '
MainMenu
ÀÀ( 0
(
ÀÀ0 1
)
ÀÀ1 2
;
ÀÀ2 3
this
ÃÃ 
.
ÃÃ 
NavigationService
ÃÃ &
.
ÃÃ& '
Navigate
ÃÃ' /
(
ÃÃ/ 0
mainMenu
ÃÃ0 8
)
ÃÃ8 9
;
ÃÃ9 :
NavigationService
ÕÕ !
.
ÕÕ! "
RemoveBackEntry
ÕÕ" 1
(
ÕÕ1 2
)
ÕÕ2 3
;
ÕÕ3 4
}
ŒŒ 
else
œœ 
{
–– 
DeleteSingleton
—— 
(
——  
)
——  !
;
——! "
PrincipalPage
““ 
principalPage
““ +
=
““, -
new
““. 1
PrincipalPage
““2 ?
(
““? @
)
““@ A
;
““A B
this
”” 
.
”” 
NavigationService
”” &
.
””& '
Navigate
””' /
(
””/ 0
principalPage
””0 =
)
””= >
;
””> ?
NavigationService
‘‘ !
.
‘‘! "
RemoveBackEntry
‘‘" 1
(
‘‘1 2
)
‘‘2 3
;
‘‘3 4
}
’’ 
}
÷÷ 	
private
ŸŸ 
void
ŸŸ 
NotifyLeavingGame
ŸŸ &
(
ŸŸ& '
)
ŸŸ' (
{
⁄⁄ 	
try
€€ 
{
‹‹ )
GameActionsOperationsClient
›› +$
gameActionsClientProxy
››, B
=
››C D
new
››E H
(
››H I
)
››I J
;
››J K$
gameActionsClientProxy
ﬁﬁ &
.
ﬁﬁ& ')
UnSubscribeFromGameCallBack
ﬁﬁ' B
(
ﬁﬁB C
roomCode
ﬁﬁC K
,
ﬁﬁK L
userSingleton
ﬁﬁM Z
.
ﬁﬁZ [
IdUser
ﬁﬁ[ a
)
ﬁﬁa b
;
ﬁﬁb c
}
ﬂﬂ 
catch
‡‡ 
(
‡‡ '
EndpointNotFoundException
‡‡ ,
ex
‡‡- /
)
‡‡/ 0
{
·· %
ExceptionHandlerForLogs
‚‚ '
.
‚‚' (
LogException
‚‚( 4
(
‚‚4 5
ex
‚‚5 7
,
‚‚7 8!
ExceptionDictionary
‚‚9 L
.
‚‚L M
FATAL_EXCEPTION
‚‚M \
)
‚‚\ ]
;
‚‚] ^
}
„„ 
catch
‰‰ 
(
‰‰ 1
#CommunicationObjectFaultedException
‰‰ 6
ex
‰‰7 9
)
‰‰9 :
{
ÂÂ %
ExceptionHandlerForLogs
ÊÊ '
.
ÊÊ' (
LogException
ÊÊ( 4
(
ÊÊ4 5
ex
ÊÊ5 7
,
ÊÊ7 8!
ExceptionDictionary
ÊÊ9 L
.
ÊÊL M
FATAL_EXCEPTION
ÊÊM \
)
ÊÊ\ ]
;
ÊÊ] ^
}
ÁÁ 
catch
ËË 
(
ËË 
TimeoutException
ËË #
ex
ËË$ &
)
ËË& '
{
ÈÈ %
ExceptionHandlerForLogs
ÍÍ '
.
ÍÍ' (
LogException
ÍÍ( 4
(
ÍÍ4 5
ex
ÍÍ5 7
,
ÍÍ7 8!
ExceptionDictionary
ÍÍ9 L
.
ÍÍL M
FATAL_EXCEPTION
ÍÍM \
)
ÍÍ\ ]
;
ÍÍ] ^
}
ÎÎ 
catch
ÏÏ 
(
ÏÏ $
CommunicationException
ÏÏ )
ex
ÏÏ* ,
)
ÏÏ, -
{
ÌÌ %
ExceptionHandlerForLogs
ÓÓ '
.
ÓÓ' (
LogException
ÓÓ( 4
(
ÓÓ4 5
ex
ÓÓ5 7
,
ÓÓ7 8!
ExceptionDictionary
ÓÓ9 L
.
ÓÓL M
FATAL_EXCEPTION
ÓÓM \
)
ÓÓ\ ]
;
ÓÓ] ^
}
ÔÔ 
catch
 
(
 
SocketException
 "
ex
# %
)
% &
{
ÒÒ %
ExceptionHandlerForLogs
ÚÚ '
.
ÚÚ' (
LogException
ÚÚ( 4
(
ÚÚ4 5
ex
ÚÚ5 7
,
ÚÚ7 8!
ExceptionDictionary
ÚÚ9 L
.
ÚÚL M
FATAL_EXCEPTION
ÚÚM \
)
ÚÚ\ ]
;
ÚÚ] ^
}
ÛÛ 
}
ÙÙ 	
public
ˆˆ 
void
ˆˆ ,
ReceiveNotificationSomeOneLeft
ˆˆ 2
(
ˆˆ2 3
int
ˆˆ3 6

isYourTurn
ˆˆ7 A
,
ˆˆA B&
PlayerInGameDataContract
ˆˆC [
[
ˆˆ[ \
]
ˆˆ\ ]
playerInGame
ˆˆ^ j
)
ˆˆj k
{
˜˜ 	
try
¯¯ 
{
˘˘ 
if
˙˙ 
(
˙˙ 
playerInGame
˙˙  
.
˙˙  !
Count
˙˙! &
(
˙˙& '
)
˙˙' (
==
˙˙) +
$num
˙˙, -
||
˙˙. 0
itsTeamGame
˙˙1 <
)
˙˙< =
{
˚˚ 
if
¸¸ 
(
¸¸ 
itsTeamGame
¸¸ #
)
¸¸# $
{
˝˝ 
dialogMessage
˛˛ %
=
˛˛& '
new
˛˛( +,
InformationMessageDialogWindow
˛˛, J
(
˛˛J K

Properties
˛˛K U
.
˛˛U V
	Resources
˛˛V _
.
˛˛_ `#
txbInformationMessage
˛˛` u
,
˛˛u v

Properties˛˛w Å
.˛˛Å Ç
	Resources˛˛Ç ã
.˛˛ã å.
lblFinishGameBecauseOfTeamLeft˛˛å ™
,˛˛™ ´
Window˛˛¨ ≤
.˛˛≤ ≥
	GetWindow˛˛≥ º
(˛˛º Ω
this˛˛Ω ¡
)˛˛¡ ¬
)˛˛¬ √
;˛˛√ ƒ
}
ˇˇ 
else
ÄÄ 
{
ÅÅ 
dialogMessage
ÇÇ %
=
ÇÇ& '
new
ÇÇ( +,
InformationMessageDialogWindow
ÇÇ, J
(
ÇÇJ K

Properties
ÇÇK U
.
ÇÇU V
	Resources
ÇÇV _
.
ÇÇ_ `#
txbInformationMessage
ÇÇ` u
,
ÇÇu v

PropertiesÇÇw Å
.ÇÇÅ Ç
	ResourcesÇÇÇ ã
.ÇÇã å1
!lblFinishGameBecauseJustOnePlayerÇÇå ≠
,ÇÇ≠ Æ
WindowÇÇØ µ
.ÇÇµ ∂
	GetWindowÇÇ∂ ø
(ÇÇø ¿
thisÇÇ¿ ƒ
)ÇÇƒ ≈
)ÇÇ≈ ∆
;ÇÇ∆ «
}
ÉÉ 
CloseWindow
ÑÑ 
(
ÑÑ  
)
ÑÑ  !
;
ÑÑ! "
return
ÖÖ 
;
ÖÖ 
}
ÜÜ 
if
áá 
(
áá 
currentTurn
áá 
==
áá  "
playerInGame
áá# /
.
áá/ 0
Count
áá0 5
(
áá5 6
)
áá6 7
)
áá7 8
{
àà 
currentTurn
ââ 
=
ââ  !
$num
ââ" #
;
ââ# $
}
ää 
grdAnswerChoices
ãã  
.
ãã  !

Visibility
ãã! +
=
ãã, -

Visibility
ãã. 8
.
ãã8 9
Hidden
ãã9 ?
;
ãã? @
yourTurn
åå 
=
åå 

isYourTurn
åå %
;
åå% &
playersInGame
çç 
=
çç 
playerInGame
çç  ,
.
çç, -
ToList
çç- 3
(
çç3 4
)
çç4 5
;
çç5 6
ShowIfItsYourTurn
éé !
(
éé! "
)
éé" #
;
éé# $
}
èè 
catch
êê 
(
êê '
EndpointNotFoundException
êê ,
ex
êê- /
)
êê/ 0
{
ëë 
HandleException
íí 
(
íí  
ex
íí  "
,
íí" #

Properties
íí$ .
.
íí. /
	Resources
íí/ 8
.
íí8 9!
lblEndPointNotFound
íí9 L
)
ííL M
;
ííM N
}
ìì 
catch
îî 
(
îî 1
#CommunicationObjectFaultedException
îî 6
ex
îî7 9
)
îî9 :
{
ïï 
HandleException
ññ 
(
ññ  
ex
ññ  "
,
ññ" #

Properties
ññ$ .
.
ññ. /
	Resources
ññ/ 8
.
ññ8 9&
lblComunicationException
ññ9 Q
)
ññQ R
;
ññR S
}
óó 
catch
òò 
(
òò 
TimeoutException
òò #
ex
òò$ &
)
òò& '
{
ôô 
HandleException
öö 
(
öö  
ex
öö  "
,
öö" #

Properties
öö$ .
.
öö. /
	Resources
öö/ 8
.
öö8 9
lblTimeException
öö9 I
)
ööI J
;
ööJ K
}
õõ 
catch
úú 
(
úú $
CommunicationException
úú )
ex
úú* ,
)
úú, -
{
ùù 
HandleException
ûû 
(
ûû  
ex
ûû  "
,
ûû" #

Properties
ûû$ .
.
ûû. /
	Resources
ûû/ 8
.
ûû8 9!
lblWithoutConection
ûû9 L
)
ûûL M
;
ûûM N
}
üü 
catch
†† 
(
†† 
SocketException
†† "
ex
††# %
)
††% &
{
°° 
HandleException
¢¢ 
(
¢¢  
ex
¢¢  "
,
¢¢" #

Properties
¢¢$ .
.
¢¢. /
	Resources
¢¢/ 8
.
¢¢8 9!
lblEndPointNotFound
¢¢9 L
)
¢¢L M
;
¢¢M N
}
££ 
}
§§ 	
private
ßß 
void
ßß 
DeleteSingleton
ßß $
(
ßß$ %
)
ßß% &
{
®® 	
try
©© 
{
™™ &
GuestPlayerManagerClient
´´ (%
guestPlayerManagerProxy
´´) @
=
´´A B
new
´´C F
(
´´F G
)
´´G H
;
´´H I%
guestPlayerManagerProxy
¨¨ '
.
¨¨' (
DeleteGuest
¨¨( 3
(
¨¨3 4
userSingleton
¨¨4 A
.
¨¨A B
IdUser
¨¨B H
)
¨¨H I
;
¨¨I J
}
≠≠ 
catch
ÆÆ 
(
ÆÆ '
EndpointNotFoundException
ÆÆ ,
ex
ÆÆ- /
)
ÆÆ/ 0
{
ØØ %
ExceptionHandlerForLogs
∞∞ '
.
∞∞' (
LogException
∞∞( 4
(
∞∞4 5
ex
∞∞5 7
,
∞∞7 8!
ExceptionDictionary
∞∞9 L
.
∞∞L M
FATAL_EXCEPTION
∞∞M \
)
∞∞\ ]
;
∞∞] ^
}
±± 
catch
≤≤ 
(
≤≤ 1
#CommunicationObjectFaultedException
≤≤ 6
ex
≤≤7 9
)
≤≤9 :
{
≥≥ %
ExceptionHandlerForLogs
¥¥ '
.
¥¥' (
LogException
¥¥( 4
(
¥¥4 5
ex
¥¥5 7
,
¥¥7 8!
ExceptionDictionary
¥¥9 L
.
¥¥L M
FATAL_EXCEPTION
¥¥M \
)
¥¥\ ]
;
¥¥] ^
}
µµ 
catch
∂∂ 
(
∂∂ 
TimeoutException
∂∂ #
ex
∂∂$ &
)
∂∂& '
{
∑∑ %
ExceptionHandlerForLogs
∏∏ '
.
∏∏' (
LogException
∏∏( 4
(
∏∏4 5
ex
∏∏5 7
,
∏∏7 8!
ExceptionDictionary
∏∏9 L
.
∏∏L M
FATAL_EXCEPTION
∏∏M \
)
∏∏\ ]
;
∏∏] ^
}
ππ 
catch
∫∫ 
(
∫∫ $
CommunicationException
∫∫ )
ex
∫∫* ,
)
∫∫, -
{
ªª 
HandleException
ºº 
(
ºº  
ex
ºº  "
,
ºº" #

Properties
ºº$ .
.
ºº. /
	Resources
ºº/ 8
.
ºº8 9!
lblWithoutConection
ºº9 L
)
ººL M
;
ººM N
}
ΩΩ 
catch
ææ 
(
ææ 
SocketException
ææ "
ex
ææ# %
)
ææ% &
{
øø 
HandleException
¿¿ 
(
¿¿  
ex
¿¿  "
,
¿¿" #

Properties
¿¿$ .
.
¿¿. /
	Resources
¿¿/ 8
.
¿¿8 9!
lblEndPointNotFound
¿¿9 L
)
¿¿L M
;
¿¿M N
}
¡¡ 
UserSingleton
¬¬ 
.
¬¬ 
CleanSingleton
¬¬ (
(
¬¬( )
)
¬¬) *
;
¬¬* +
}
√√ 	
private
∆∆ 
void
∆∆ 
ClickOpenChat
∆∆ "
(
∆∆" #
object
∆∆# )
sender
∆∆* 0
,
∆∆0 1"
MouseButtonEventArgs
∆∆2 F
e
∆∆G H
)
∆∆H I
{
«« 	
teamChat
»» 
.
»» "
RenewCallBackChannel
»» )
(
»») *
)
»»* +
;
»»+ ,
grdChat
…… 
.
…… 

Visibility
…… 
=
……  

Visibility
……! +
.
……+ ,
Visible
……, 3
;
……3 4
frmChat
   
.
   
Content
   
=
   
teamChat
   &
;
  & '
}
ÀÀ 	
public
ÕÕ 
void
ÕÕ 
CloseLiveChat
ÕÕ !
(
ÕÕ! "
)
ÕÕ" #
{
ŒŒ 	
grdChat
œœ 
.
œœ 

Visibility
œœ 
=
œœ  

Visibility
œœ! +
.
œœ+ ,
	Collapsed
œœ, 5
;
œœ5 6
}
–– 	
public
““ 
void
““ $
ReceiveMessageTeamChat
““ *
(
““* +/
!GenericClassOfMessageChatxY0a3WX4
““+ L
message
““M T
)
““T U
{
”” 	
(
‘‘ 
(
‘‘ #
IChatForTeamsCallback
‘‘ #
)
‘‘# $
teamChat
‘‘$ ,
)
‘‘, -
.
‘‘- .$
ReceiveMessageTeamChat
‘‘. D
(
‘‘D E
message
‘‘E L
)
‘‘L M
;
‘‘M N
}
’’ 	
private
◊◊ 
void
◊◊ 
HandleException
◊◊ $
(
◊◊$ %
	Exception
◊◊% .
ex
◊◊/ 1
,
◊◊1 2
string
◊◊3 9
errorMessage
◊◊: F
)
◊◊F G
{
ÿÿ 	%
ExceptionHandlerForLogs
ŸŸ #
.
ŸŸ# $
LogException
ŸŸ$ 0
(
ŸŸ0 1
ex
ŸŸ1 3
,
ŸŸ3 4!
ExceptionDictionary
ŸŸ5 H
.
ŸŸH I
FATAL_EXCEPTION
ŸŸI X
)
ŸŸX Y
;
ŸŸY Z
dialogMessage
⁄⁄ 
=
⁄⁄ 
new
⁄⁄ &
ErrorMessageDialogWindow
⁄⁄  8
(
⁄⁄8 9

Properties
⁄⁄9 C
.
⁄⁄C D
	Resources
⁄⁄D M
.
⁄⁄M N
txbErrorTitle
⁄⁄N [
,
⁄⁄[ \
errorMessage
⁄⁄] i
,
⁄⁄i j
Application
⁄⁄k v
.
⁄⁄v w
Current
⁄⁄w ~
.
⁄⁄~ 

MainWindow⁄⁄ â
)⁄⁄â ä
;⁄⁄ä ã
NotifyLeavingGame
€€ 
(
€€ 
)
€€ 
;
€€  

ReturnPage
‹‹ 
(
‹‹ 
)
‹‹ 
;
‹‹ 
}
›› 	
private
‡‡ 
void
‡‡ 

ReturnPage
‡‡ 
(
‡‡  
)
‡‡  !
{
·· 	
UserSingleton
‚‚ 
.
‚‚ 
CleanSingleton
‚‚ (
(
‚‚( )
)
‚‚) *
;
‚‚* +
	LogInUser
„„ 
logInUserPage
„„ #
=
„„$ %
new
„„& )
	LogInUser
„„* 3
(
„„3 4
)
„„4 5
;
„„5 6
this
‰‰ 
.
‰‰ 
NavigationService
‰‰ "
.
‰‰" #
Navigate
‰‰# +
(
‰‰+ ,
logInUserPage
‰‰, 9
)
‰‰9 :
;
‰‰: ;
NavigationService
ÂÂ 
.
ÂÂ 
RemoveBackEntry
ÂÂ -
(
ÂÂ- .
)
ÂÂ. /
;
ÂÂ/ 0
}
ÊÊ 	
}
ËË 
}ÈÈ ˆ–
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
êê 
CloseLiveChat
êê #
(
êê# $
)
êê$ %
;
êê% &
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
}ÌÌ ¢Œ
hC:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameClient\Pages\LobbyPage.xaml.cs
	namespace 	
JeopardyGame
 
. 
Pages 
{ 
public 

partial 
class 
	LobbyPage "
:# $
Page% )
,) *!
ILobbyActionsCallback+ @
,@ A
ILiveChatCallbackB S
,S T+
INotifyUserAvailabilityCallbackU t
{ 
private 
ActiveFriends 
activeUsersInstance 1
=2 3
null4 8
;8 9
private 
LiveChat 
liveChatInstance )
=* +
null, 0
;0 1
private 
const 
int 
NULL_INT_VALUE (
=) *
$num+ ,
;, -
private 
const 
int 
TEAM_LEFT_SIDE (
=) *
$num+ ,
;, -
private   
const   
int   
TEMA_RIGHT_SIDE   )
=  * +
$num  , -
;  - .
private!! 
Random!! 
generateAleatory!! '
;!!' (
private"" 
int"" 
roomCode"" 
;"" 
private## 
bool## 
isAdminOfLobby## #
;### $
private$$ 
List$$ 
<$$ 
PlayerInLobby$$ "
>$$" # 
currentPlayerInLobby$$$ 8
=$$9 :
new$$; >
List$$? C
<$$C D
PlayerInLobby$$D Q
>$$Q R
($$R S
)$$S T
;$$T U
private%% 
UserSingleton%% 
userSingleton%% +
;%%+ ,
private&& 
Window&& 
dialogMessage&& $
;&&$ %
private'' 
const'' 
int'' 
DISALLOWED_VALUES'' +
='', -
$num''. /
;''/ 0
private(( 
const(( 
int(( 
ALLOWED_VALUES(( (
=(() *
$num((+ ,
;((, -
public** 
	LobbyPage** 
(** 
)** 
{++ 	
InitializeComponent,, 
(,,  
),,  !
;,,! "
isAdminOfLobby-- 
=-- 
true-- !
;--! "
Loaded.. 
+=.. $
LoadedPrepareWindowAdmin.. .
;... /
}// 	
private11 
void11 $
LoadedPrepareWindowAdmin11 -
(11- .
object11. 4
sender115 ;
,11; <
RoutedEventArgs11= L
e11M N
)11N O
{22 	
PrepareWindow33 
(33 
)33 
;33 '
LobbyActionsOperationClient44 '
lobbyActionsProxy44( 9
=44: ;
new44< ?
(44? @
)44@ A
;44A B
lobbyActionsProxy55 
.55 '
SelectQuestionsForGameAsync55 9
(559 :
roomCode55: B
)55B C
;55C D
}66 	
public88 
	LobbyPage88 
(88 
int88 
roomCode88 %
)88% &
{99 	
InitializeComponent:: 
(::  
)::  !
;::! "
this;; 
.;; 
roomCode;; 
=;; 
roomCode;; $
;;;$ %
isAdminOfLobby<< 
=<< 
false<< "
;<<" #
Loaded== 
+=== %
LoadedPrepareWindowPlayer== /
;==/ 0
}>> 	
privateAA 
voidAA %
LoadedPrepareWindowPlayerAA .
(AA. /
objectAA/ 5
senderAA6 <
,AA< =
RoutedEventArgsAA> M
eAAN O
)AAO P
{BB 	
PrepareWindowCC 
(CC 
)CC 
;CC 
}DD 	
privateFF 
voidFF 
PrepareWindowFF "
(FF" #
)FF# $
{GG 	
userSingletonHH 
=HH 
UserSingletonHH )
.HH) *
GetMainUserHH* 5
(HH5 6
)HH6 7
;HH7 8
tryII 
{JJ 
InstanceContextKK 
contextKK  '
=KK( )
newKK* -
InstanceContextKK. =
(KK= >
thisKK> B
)KKB C
;KKC D
LobbyActionsClientMM "
lobbyActionsProxyMM# 4
=MM5 6
newMM7 :
LobbyActionsClientMM; M
(MMM N
contextMMN U
)MMU V
;MMV W
ifOO 
(OO 
isAdminOfLobbyOO "
)OO" #
{PP 
CreateNewlobbyQQ "
(QQ" #
lobbyActionsProxyQQ# 4
)QQ4 5
;QQ5 6
}RR 
elseSS 
{TT 
	JoinLobbyUU 
(UU 
lobbyActionsProxyUU /
)UU/ 0
;UU0 1
}VV 

GetPlayersWW 
(WW 
)WW 
;WW !
PrepareChatAndFriendsXX %
(XX% &
)XX& '
;XX' (
lblAleatoryCodeYY 
.YY  
ContentYY  '
=YY( )
roomCodeYY* 2
;YY2 3
SetPlayerInLabelsZZ !
(ZZ! "
)ZZ" #
;ZZ# $#
NotifyFriendsIamPlaying[[ '
([[' (
)[[( )
;[[) *
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
.__8 9#
lblFailtToEnterTheLobby__9 P
+__Q R
$str__S X
+__Y Z

Properties__[ e
.__e f
	Resources__f o
.__o p 
lblEndPointNotFound	__p É
)
__É Ñ
;
__Ñ Ö
}`` 
catchaa 
(aa %
EndpointNotFoundExceptionaa ,
exaa- /
)aa/ 0
{bb 
HandleExceptioncc 
(cc  
excc  "
,cc" #

Propertiescc$ .
.cc. /
	Resourcescc/ 8
.cc8 9#
lblFailtToEnterTheLobbycc9 P
+ccQ R
$strccS X
+ccY Z

Propertiescc[ e
.cce f
	Resourcesccf o
.cco p 
lblEndPointNotFound	ccp É
)
ccÉ Ñ
;
ccÑ Ö
}dd 
catchee 
(ee /
#CommunicationObjectFaultedExceptionee 6
exee7 9
)ee9 :
{ff 
HandleExceptiongg 
(gg  
exgg  "
,gg" #

Propertiesgg$ .
.gg. /
	Resourcesgg/ 8
.gg8 9#
lblFailtToEnterTheLobbygg9 P
+ggQ R
$strggS X
+ggY Z

Propertiesgg[ e
.gge f
	Resourcesggf o
.ggo p%
lblComunicationException	ggp à
)
ggà â
;
ggâ ä
}hh 
catchii 
(ii 
TimeoutExceptionii #
exii$ &
)ii& '
{jj 
HandleExceptionkk 
(kk  
exkk  "
,kk" #

Propertieskk$ .
.kk. /
	Resourceskk/ 8
.kk8 9#
lblFailtToEnterTheLobbykk9 P
+kkQ R
$strkkS X
+kkY Z

Propertieskk[ e
.kke f
	Resourceskkf o
.kko p
lblTimeException	kkp Ä
)
kkÄ Å
;
kkÅ Ç
}ll 
catchmm 
(mm "
CommunicationExceptionmm )
exmm* ,
)mm, -
{nn 
HandleExceptionoo 
(oo  
exoo  "
,oo" #

Propertiesoo$ .
.oo. /
	Resourcesoo/ 8
.oo8 9#
lblFailtToEnterTheLobbyoo9 P
+ooQ R
$strooS X
+ooY Z

Propertiesoo[ e
.ooe f
	Resourcesoof o
.ooo p 
lblWithoutConection	oop É
)
ooÉ Ñ
;
ooÑ Ö
}pp 
}rr 	
privatett 
voidtt !
PrepareChatAndFriendstt *
(tt* +
)tt+ ,
{uu 	
ifvv 
(vv 
liveChatInstancevv  
==vv! #
nullvv$ (
)vv( )
{ww 
liveChatInstancexx  
=xx! "
newxx# &
LiveChatxx' /
(xx/ 0
)xx0 1
;xx1 2
liveChatInstanceyy  
.yy  !
	StartPageyy! *
(yy* +
isAdminOfLobbyyy+ 9
,yy9 :
roomCodeyy; C
,yyC D
thisyyE I
)yyI J
;yyJ K
}zz 
if{{ 
({{ 
activeUsersInstance{{ #
=={{$ &
null{{' +
){{+ ,
{|| 
activeUsersInstance}} #
=}}$ %
new}}& )
ActiveFriends}}* 7
(}}7 8
userSingleton}}8 E
.}}E F
IdUser}}F L
)}}L M
;}}M N
activeUsersInstance~~ #
.~~# $
	StartPage~~$ -
(~~- .
this~~. 2
)~~2 3
;~~3 4
} 
}
ÄÄ 	
private
ÇÇ 
void
ÇÇ 
CreateNewlobby
ÇÇ #
(
ÇÇ# $ 
LobbyActionsClient
ÇÇ$ 6
lobbyActionsProxy
ÇÇ7 H
)
ÇÇH I
{
ÉÉ 	
try
ÑÑ 
{
ÖÖ 
generateAleatory
ÜÜ  
=
ÜÜ! "
new
ÜÜ# &
Random
ÜÜ' -
(
ÜÜ- .
)
ÜÜ. /
;
ÜÜ/ 0
int
áá 
aleatoryNumber
áá "
=
áá# $
generateAleatory
áá% 5
.
áá5 6
Next
áá6 :
(
áá: ;
$num
áá; @
,
áá@ A
$num
ááB G
)
ááG H
;
ááH I
roomCode
àà 
=
àà 
aleatoryNumber
àà )
;
àà) *
var
ââ 
newLobby
ââ 
=
ââ 
lobbyActionsProxy
ââ 0
.
ââ0 1
CreateNewLobby
ââ1 ?
(
ââ? @
roomCode
ââ@ H
,
ââH I
userSingleton
ââJ W
.
ââW X
IdUser
ââX ^
)
ââ^ _
;
ââ_ `
GameCodeContainer
ãã !
.
ãã! "
RoomCode
ãã" *
=
ãã+ ,
roomCode
ãã- 5
;
ãã5 6
}
åå 
catch
çç 
(
çç '
EndpointNotFoundException
çç ,
)
çç, -
{
éé 
throw
èè 
new
èè '
EndpointNotFoundException
èè 3
(
èè3 4
)
èè4 5
;
èè5 6
}
êê 
catch
ëë 
(
ëë 1
#CommunicationObjectFaultedException
ëë 6
)
ëë6 7
{
íí 
throw
ìì 
new
ìì 1
#CommunicationObjectFaultedException
ìì =
(
ìì= >
)
ìì> ?
;
ìì? @
}
îî 
catch
ïï 
(
ïï 
TimeoutException
ïï #
)
ïï# $
{
ññ 
throw
óó 
new
óó 
TimeoutException
óó *
(
óó* +
)
óó+ ,
;
óó, -
}
òò 
catch
ôô 
(
ôô $
CommunicationException
ôô )
)
ôô) *
{
öö 
throw
õõ 
new
õõ $
CommunicationException
õõ 0
(
õõ0 1
)
õõ1 2
;
õõ2 3
}
úú 
}
ùù 	
private
üü 
void
üü 
	JoinLobby
üü 
(
üü  
LobbyActionsClient
üü 1
lobbyActionsProxy
üü2 C
)
üüC D
{
†† 	
try
°° 
{
¢¢ 
GenericClassOfint
££ !

successful
££" ,
=
££- .
lobbyActionsProxy
££/ @
.
££@ A
JoinIntoLobby
££A N
(
££N O
roomCode
££O W
,
££W X
userSingleton
££Y f
.
££f g
IdUser
££g m
)
££m n
;
££n o
if
§§ 
(
§§ 

successful
§§ 
.
§§ 
	CodeEvent
§§ (
==
§§) +!
ExceptionDictionary
§§, ?
.
§§? @
SUCCESFULL_EVENT
§§@ P
)
§§P Q
{
•• )
LobbyActionsOperationClient
¶¶ /(
lobbyActionsOperationProxy
¶¶0 J
=
¶¶K L
new
¶¶M P
(
¶¶P Q
)
¶¶Q R
;
¶¶R S(
lobbyActionsOperationProxy
ßß .
.
ßß. /!
NotifyPlayerInLobby
ßß/ B
(
ßßB C
roomCode
ßßC K
,
ßßK L
userSingleton
ßßM Z
.
ßßZ [
IdUser
ßß[ a
)
ßßa b
;
ßßb c
}
®® 
	chbTeamUp
©© 
.
©© 
	IsEnabled
©© #
=
©©$ %
false
©©& +
;
©©+ ,
}
™™ 
catch
´´ 
(
´´ '
EndpointNotFoundException
´´ ,
)
´´, -
{
¨¨ 
throw
≠≠ 
new
≠≠ '
EndpointNotFoundException
≠≠ 3
(
≠≠3 4
)
≠≠4 5
;
≠≠5 6
}
ÆÆ 
catch
ØØ 
(
ØØ 1
#CommunicationObjectFaultedException
ØØ 6
)
ØØ6 7
{
∞∞ 
throw
±± 
new
±± 1
#CommunicationObjectFaultedException
±± =
(
±±= >
)
±±> ?
;
±±? @
}
≤≤ 
catch
≥≥ 
(
≥≥ 
TimeoutException
≥≥ #
)
≥≥# $
{
¥¥ 
throw
µµ 
new
µµ 
TimeoutException
µµ *
(
µµ* +
)
µµ+ ,
;
µµ, -
}
∂∂ 
catch
∑∑ 
(
∑∑ $
CommunicationException
∑∑ )
)
∑∑) *
{
∏∏ 
throw
ππ 
new
ππ $
CommunicationException
ππ 0
(
ππ0 1
)
ππ1 2
;
ππ2 3
}
∫∫ 
}
ªª 	
private
ΩΩ 
void
ΩΩ 

GetPlayers
ΩΩ 
(
ΩΩ  
)
ΩΩ  !
{
ææ 	
try
øø 
{
¿¿ )
LobbyActionsOperationClient
¡¡ +
lobbyActionsProxy
¡¡, =
=
¡¡> ?
new
¡¡@ C
(
¡¡C D
)
¡¡D E
;
¡¡E F
var
¬¬ 
playersInLobby
¬¬ "
=
¬¬# $
lobbyActionsProxy
¬¬% 6
.
¬¬6 7(
GetAllCurrentPlayerInLobby
¬¬7 Q
(
¬¬Q R
roomCode
¬¬R Z
,
¬¬Z [
userSingleton
¬¬\ i
.
¬¬i j
IdUser
¬¬j p
)
¬¬p q
;
¬¬q r
if
√√ 
(
√√ 
playersInLobby
√√ "
.
√√" #
	CodeEvent
√√# ,
==
√√- /!
ExceptionDictionary
√√0 C
.
√√C D
SUCCESFULL_EVENT
√√D T
)
√√T U
{
ƒƒ "
currentPlayerInLobby
≈≈ (
=
≈≈) *
playersInLobby
≈≈+ 9
.
≈≈9 :
ObjectSaved
≈≈: E
.
≈≈E F
ToList
≈≈F L
(
≈≈L M
)
≈≈M N
;
≈≈N O
}
∆∆ 
}
»» 
catch
…… 
(
…… '
EndpointNotFoundException
…… ,
)
……, -
{
   
throw
ÀÀ 
new
ÀÀ '
EndpointNotFoundException
ÀÀ 3
(
ÀÀ3 4
)
ÀÀ4 5
;
ÀÀ5 6
}
ÃÃ 
catch
ÕÕ 
(
ÕÕ 1
#CommunicationObjectFaultedException
ÕÕ 6
)
ÕÕ6 7
{
ŒŒ 
throw
œœ 
new
œœ 1
#CommunicationObjectFaultedException
œœ =
(
œœ= >
)
œœ> ?
;
œœ? @
}
–– 
catch
—— 
(
—— 
TimeoutException
—— #
)
——# $
{
““ 
throw
”” 
new
”” 
TimeoutException
”” *
(
””* +
)
””+ ,
;
””, -
}
‘‘ 
catch
’’ 
(
’’ $
CommunicationException
’’ )
)
’’) *
{
÷÷ 
throw
◊◊ 
new
◊◊ $
CommunicationException
◊◊ 0
(
◊◊0 1
)
◊◊1 2
;
◊◊2 3
}
ÿÿ 
}
ŸŸ 	
private
€€ 
void
€€ 
SetPlayerInLabels
€€ &
(
€€& '
)
€€' (
{
‹‹ 	
CleanAllLabels
›› 
(
›› 
)
›› 
;
›› 
if
ﬁﬁ 
(
ﬁﬁ "
currentPlayerInLobby
ﬁﬁ $
!=
ﬁﬁ% '
null
ﬁﬁ( ,
)
ﬁﬁ, -
{
ﬂﬂ 
foreach
‡‡ 
(
‡‡ 
var
‡‡ 
item
‡‡ !
in
‡‡" $"
currentPlayerInLobby
‡‡% 9
)
‡‡9 :
{
·· 
switch
‚‚ 
(
‚‚ 
item
‚‚  
.
‚‚  !#
NumberOfPlayerInLobby
‚‚! 6
)
‚‚6 7
{
„„ 
case
‰‰ 
$num
‰‰ 
:
‰‰ 

ShowPlayer
ÂÂ &
(
ÂÂ& '
lblLeaderBlue
ÂÂ' 4
,
ÂÂ4 5
lblLeaderRed
ÂÂ6 B
,
ÂÂB C
brdLeaderBlue
ÂÂD Q
,
ÂÂQ R
brdLeaderRed
ÂÂS _
,
ÂÂ_ `
item
ÂÂa e
.
ÂÂe f
UserName
ÂÂf n
,
ÂÂn o
item
ÂÂp t
.
ÂÂt u

SideOfTeam
ÂÂu 
)ÂÂ Ä
;ÂÂÄ Å
break
ÊÊ !
;
ÊÊ! "
case
ÁÁ 
$num
ÁÁ 
:
ÁÁ 

ShowPlayer
ËË &
(
ËË& '
lblPlayer2Blue
ËË' 5
,
ËË5 6
lblPlayer2Red
ËË7 D
,
ËËD E
brdPlayer2Blue
ËËF T
,
ËËT U
brdPlayer2Red
ËËV c
,
ËËc d
item
ËËe i
.
ËËi j
UserName
ËËj r
,
ËËr s
item
ËËt x
.
ËËx y

SideOfTeamËËy É
)ËËÉ Ñ
;ËËÑ Ö
break
ÈÈ !
;
ÈÈ! "
case
ÍÍ 
$num
ÍÍ 
:
ÍÍ 

ShowPlayer
ÎÎ &
(
ÎÎ& '
lblPlayer3Blue
ÎÎ' 5
,
ÎÎ5 6
lblPlayer3Red
ÎÎ7 D
,
ÎÎD E
brdPlayer3Blue
ÎÎF T
,
ÎÎT U
brdPlayer3Red
ÎÎV c
,
ÎÎc d
item
ÎÎe i
.
ÎÎi j
UserName
ÎÎj r
,
ÎÎr s
item
ÎÎt x
.
ÎÎx y

SideOfTeamÎÎy É
)ÎÎÉ Ñ
;ÎÎÑ Ö
break
ÏÏ !
;
ÏÏ! "
case
ÌÌ 
$num
ÌÌ 
:
ÌÌ 

ShowPlayer
ÓÓ &
(
ÓÓ& '
lblPlayer4Blue
ÓÓ' 5
,
ÓÓ5 6
lblPlayer4Red
ÓÓ7 D
,
ÓÓD E
brdPlayer4Blue
ÓÓF T
,
ÓÓT U
brdPlayer4Red
ÓÓV c
,
ÓÓc d
item
ÓÓe i
.
ÓÓi j
UserName
ÓÓj r
,
ÓÓr s
item
ÓÓt x
.
ÓÓx y

SideOfTeamÓÓy É
)ÓÓÉ Ñ
;ÓÓÑ Ö
break
ÔÔ !
;
ÔÔ! "
}
 
}
ÒÒ 
}
ÚÚ 
}
ÛÛ 	
private
ıı 
void
ıı 
CleanAllLabels
ıı #
(
ıı# $
)
ıı$ %
{
ˆˆ 	
brdLeaderBlue
˜˜ 
.
˜˜ 

Visibility
˜˜ $
=
˜˜% &

Visibility
˜˜' 1
.
˜˜1 2
Hidden
˜˜2 8
;
˜˜8 9
brdLeaderRed
¯¯ 
.
¯¯ 

Visibility
¯¯ #
=
¯¯$ %

Visibility
¯¯& 0
.
¯¯0 1
Hidden
¯¯1 7
;
¯¯7 8
brdPlayer2Blue
˘˘ 
.
˘˘ 

Visibility
˘˘ %
=
˘˘& '

Visibility
˘˘( 2
.
˘˘2 3
Hidden
˘˘3 9
;
˘˘9 :
brdPlayer2Red
˙˙ 
.
˙˙ 

Visibility
˙˙ $
=
˙˙% &

Visibility
˙˙' 1
.
˙˙1 2
Hidden
˙˙2 8
;
˙˙8 9
brdPlayer3Blue
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
brdPlayer3Red
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
brdPlayer4Blue
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
brdPlayer4Red
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
˛˛8 9
lblLeaderBlue
ˇˇ 
.
ˇˇ 
Content
ˇˇ !
=
ˇˇ" #
string
ˇˇ$ *
.
ˇˇ* +
Empty
ˇˇ+ 0
;
ˇˇ0 1
lblLeaderRed
ÄÄ 
.
ÄÄ 
Content
ÄÄ  
=
ÄÄ! "
string
ÄÄ# )
.
ÄÄ) *
Empty
ÄÄ* /
;
ÄÄ/ 0
lblPlayer2Blue
ÅÅ 
.
ÅÅ 
Content
ÅÅ "
=
ÅÅ# $
string
ÅÅ% +
.
ÅÅ+ ,
Empty
ÅÅ, 1
;
ÅÅ1 2
lblPlayer2Red
ÇÇ 
.
ÇÇ 
Content
ÇÇ !
=
ÇÇ" #
string
ÇÇ$ *
.
ÇÇ* +
Empty
ÇÇ+ 0
;
ÇÇ0 1
lblPlayer3Blue
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
lblPlayer3Red
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
lblPlayer4Blue
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
lblPlayer4Red
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
ÜÜ0 1
}
áá 	
private
ââ 
void
ââ 

ShowPlayer
ââ 
(
ââ  
Label
ââ  %
	labelBlue
ââ& /
,
ââ/ 0
Label
ââ1 6
labelRed
ââ7 ?
,
ââ? @
Border
ââA G

borderBlue
ââH R
,
ââR S
Border
ââT Z
	borderRed
ââ[ d
,
ââd e
String
ââf l
userName
ââm u
,
ââu v
int
ââw z
side
ââ{ 
)ââ Ä
{
ää 	
if
ãã 
(
ãã 
side
ãã 
==
ãã 
TEAM_LEFT_SIDE
ãã &
)
ãã& '
{
åå 
	labelBlue
çç 
.
çç 
Content
çç !
=
çç" #
userName
çç$ ,
;
çç, -

borderBlue
éé 
.
éé 

Visibility
éé %
=
éé& '

Visibility
éé( 2
.
éé2 3
Visible
éé3 :
;
éé: ;
	borderRed
èè 
.
èè 

Visibility
èè $
=
èè% &

Visibility
èè' 1
.
èè1 2
Hidden
èè2 8
;
èè8 9
}
êê 
else
ëë 
{
íí 
labelRed
ìì 
.
ìì 
Content
ìì  
=
ìì! "
userName
ìì# +
;
ìì+ ,

borderBlue
îî 
.
îî 

Visibility
îî %
=
îî& '

Visibility
îî( 2
.
îî2 3
Hidden
îî3 9
;
îî9 :
	borderRed
ïï 
.
ïï 

Visibility
ïï $
=
ïï% &

Visibility
ïï' 1
.
ïï1 2
Visible
ïï2 9
;
ïï9 :
}
ññ 
}
óó 	
public
ôô 
void
ôô (
UpdateJoinedPlayerResponse
ôô .
(
ôô. /8
*GenericClassOfArrayOfPlayerInLobbyxY0a3WX4
ôô/ Y
playersInTheLobby
ôôZ k
)
ôôk l
{
öö 	
try
õõ 
{
úú 
if
ùù 
(
ùù 
playersInTheLobby
ùù %
.
ùù% &
	CodeEvent
ùù& /
==
ùù0 2!
ExceptionDictionary
ùù3 F
.
ùùF G
SUCCESFULL_EVENT
ùùG W
)
ùùW X
{
ûû "
currentPlayerInLobby
üü (
=
üü) *
playersInTheLobby
üü+ <
.
üü< =
ObjectSaved
üü= H
.
üüH I
ToList
üüI O
(
üüO P
)
üüP Q
;
üüQ R
if
†† 
(
†† "
currentPlayerInLobby
†† ,
.
††, -
Any
††- 0
(
††0 1
pla
††1 4
=>
††5 7
pla
††8 ;
.
††; <
IdPlayer
††< D
==
††E G
userSingleton
††H U
.
††U V
IdPlayer
††V ^
)
††^ _
)
††_ `
{
°° 
SetPlayerInLabels
¢¢ )
(
¢¢) *
)
¢¢* +
;
¢¢+ ,
if
££ 
(
££ 
(
££ 
bool
££ !
)
££! "
	chbTeamUp
££" +
.
££+ ,
	IsChecked
££, 5
)
££5 6
{
§§ 
	chbTeamUp
•• %
.
••% &
	IsChecked
••& /
=
••0 1
false
••2 7
;
••7 8
}
¶¶ 
}
ßß 
else
®® 
{
©© 
new
™™ ,
InformationMessageDialogWindow
™™ :
(
™™: ;

Properties
™™; E
.
™™E F
	Resources
™™F O
.
™™O P
txbWarningTitle
™™P _
,
™™_ `

Properties
™™a k
.
™™k l
	Resources
™™l u
.
™™u v$
lblEliminateFromLobby™™v ã
,™™ã å
Window™™ç ì
.™™ì î
	GetWindow™™î ù
(™™ù û
this™™û ¢
)™™¢ £
)™™£ §
;™™§ •
CloseWindow
´´ #
(
´´# $
)
´´$ %
;
´´% &
}
¨¨ 
}
≠≠ 
else
ÆÆ 
{
ØØ 
dialogMessage
∞∞ !
=
∞∞" #
new
∞∞$ ',
InformationMessageDialogWindow
∞∞( F
(
∞∞F G

Properties
∞∞G Q
.
∞∞Q R
	Resources
∞∞R [
.
∞∞[ \
txbWarningTitle
∞∞\ k
,
∞∞k l

Properties
∞∞m w
.
∞∞w x
	Resources∞∞x Å
.∞∞Å Ç
KickedFromLobby∞∞Ç ë
,∞∞ë í
Window∞∞ì ô
.∞∞ô ö
	GetWindow∞∞ö £
(∞∞£ §
this∞∞§ ®
)∞∞® ©
)∞∞© ™
;∞∞™ ´
CloseWindow
±± 
(
±±  
)
±±  !
;
±±! "
}
≤≤ 
}
≥≥ 
catch
¥¥ 
(
¥¥ '
EndpointNotFoundException
¥¥ ,
ex
¥¥- /
)
¥¥/ 0
{
µµ 
HandleException
∂∂ 
(
∂∂  
ex
∂∂  "
,
∂∂" #

Properties
∂∂$ .
.
∂∂. /
	Resources
∂∂/ 8
.
∂∂8 9!
lblEndPointNotFound
∂∂9 L
)
∂∂L M
;
∂∂M N
}
∑∑ 
catch
∏∏ 
(
∏∏ 1
#CommunicationObjectFaultedException
∏∏ 6
ex
∏∏7 9
)
∏∏9 :
{
ππ 
HandleException
∫∫ 
(
∫∫  
ex
∫∫  "
,
∫∫" #

Properties
∫∫$ .
.
∫∫. /
	Resources
∫∫/ 8
.
∫∫8 9&
lblComunicationException
∫∫9 Q
)
∫∫Q R
;
∫∫R S
}
ªª 
catch
ºº 
(
ºº 
TimeoutException
ºº #
ex
ºº$ &
)
ºº& '
{
ΩΩ 
HandleException
ææ 
(
ææ  
ex
ææ  "
,
ææ" #

Properties
ææ$ .
.
ææ. /
	Resources
ææ/ 8
.
ææ8 9
lblTimeException
ææ9 I
)
ææI J
;
ææJ K
}
øø 
catch
¿¿ 
(
¿¿ $
CommunicationException
¿¿ )
ex
¿¿* ,
)
¿¿, -
{
¡¡ 
HandleException
¬¬ 
(
¬¬  
ex
¬¬  "
,
¬¬" #

Properties
¬¬$ .
.
¬¬. /
	Resources
¬¬/ 8
.
¬¬8 9!
lblWithoutConection
¬¬9 L
)
¬¬L M
;
¬¬M N
}
√√ 
}
ƒƒ 	
private
∆∆ 
void
∆∆ +
ClickEliminatePlayerFromLobby
∆∆ 2
(
∆∆2 3
object
∆∆3 9
sender
∆∆: @
,
∆∆@ A"
MouseButtonEventArgs
∆∆B V
e
∆∆W X
)
∆∆X Y
{
«« 	
if
»» 
(
»» 
isAdminOfLobby
»» 
)
»» 
{
…… 
string
   
userName
   
=
    !)
GetUserNameFromLabelByImage
  " =
(
  = >
sender
  > D
)
  D E
;
  E F
if
ÀÀ 
(
ÀÀ 
userName
ÀÀ 
!=
ÀÀ 
null
ÀÀ  $
)
ÀÀ$ %
{
ÃÃ 
var
ÕÕ 
userChanged
ÕÕ #
=
ÕÕ$ %$
EliminateUserFromLobby
ÕÕ& <
(
ÕÕ< =
userName
ÕÕ= E
)
ÕÕE F
;
ÕÕF G
if
ŒŒ 
(
ŒŒ 
userChanged
ŒŒ #
.
ŒŒ# $
IdUser
ŒŒ$ *
!=
ŒŒ+ -
NULL_INT_VALUE
ŒŒ. <
)
ŒŒ< =
{
œœ 
try
–– 
{
——  
LobbyActionsClient
““ .'
lobbyActionsCallBackProxy
““/ H
=
““I J
new
““K N 
LobbyActionsClient
““O a
(
““a b
new
““b e
InstanceContext
““f u
(
““u v
this
““v z
)
““z {
)
““{ |
;
““| }'
lobbyActionsCallBackProxy
”” 5
.
””5 6 
RenewLobbyCallBack
””6 H
(
””H I
roomCode
””I Q
,
””Q R
userSingleton
””S `
.
””` a
IdUser
””a g
)
””g h
;
””h i)
LobbyActionsOperationClient
’’ 7
lobbyActionsProxy
’’8 I
=
’’J K
new
’’L O
(
’’O P
)
’’P Q
;
’’Q R
lobbyActionsProxy
÷÷ -
.
÷÷- .&
EliminatePlayerFromMatch
÷÷. F
(
÷÷F G
roomCode
÷÷G O
,
÷÷O P
userChanged
÷÷Q \
.
÷÷\ ]
IdUser
÷÷] c
)
÷÷c d
;
÷÷d e
}
◊◊ 
catch
ÿÿ 
(
ÿÿ '
EndpointNotFoundException
ÿÿ 8
ex
ÿÿ9 ;
)
ÿÿ; <
{
ŸŸ 
HandleException
⁄⁄ +
(
⁄⁄+ ,
ex
⁄⁄, .
,
⁄⁄. /

Properties
⁄⁄0 :
.
⁄⁄: ;
	Resources
⁄⁄; D
.
⁄⁄D E/
!lblFailToEliminatePlayerFromLobby
⁄⁄E f
+
⁄⁄g h
$str
⁄⁄i n
+
⁄⁄o p

Properties
⁄⁄q {
.
⁄⁄{ |
	Resources⁄⁄| Ö
.⁄⁄Ö Ü#
lblEndPointNotFound⁄⁄Ü ô
)⁄⁄ô ö
;⁄⁄ö õ
}
€€ 
catch
‹‹ 
(
‹‹ 1
#CommunicationObjectFaultedException
‹‹ B
ex
‹‹C E
)
‹‹E F
{
›› 
HandleException
ﬁﬁ +
(
ﬁﬁ+ ,
ex
ﬁﬁ, .
,
ﬁﬁ. /

Properties
ﬁﬁ0 :
.
ﬁﬁ: ;
	Resources
ﬁﬁ; D
.
ﬁﬁD E/
!lblFailToEliminatePlayerFromLobby
ﬁﬁE f
+
ﬁﬁg h
$str
ﬁﬁi n
+
ﬁﬁo p

Properties
ﬁﬁq {
.
ﬁﬁ{ |
	Resourcesﬁﬁ| Ö
.ﬁﬁÖ Ü(
lblComunicationExceptionﬁﬁÜ û
)ﬁﬁû ü
;ﬁﬁü †
}
ﬂﬂ 
catch
‡‡ 
(
‡‡ 
TimeoutException
‡‡ /
ex
‡‡0 2
)
‡‡2 3
{
·· 
HandleException
‚‚ +
(
‚‚+ ,
ex
‚‚, .
,
‚‚. /

Properties
‚‚0 :
.
‚‚: ;
	Resources
‚‚; D
.
‚‚D E/
!lblFailToEliminatePlayerFromLobby
‚‚E f
+
‚‚g h
$str
‚‚i n
+
‚‚o p

Properties
‚‚q {
.
‚‚{ |
	Resources‚‚| Ö
.‚‚Ö Ü 
lblTimeException‚‚Ü ñ
)‚‚ñ ó
;‚‚ó ò
}
„„ 
catch
‰‰ 
(
‰‰ $
CommunicationException
‰‰ 5
ex
‰‰6 8
)
‰‰8 9
{
ÂÂ 
HandleException
ÊÊ +
(
ÊÊ+ ,
ex
ÊÊ, .
,
ÊÊ. /

Properties
ÊÊ0 :
.
ÊÊ: ;
	Resources
ÊÊ; D
.
ÊÊD E/
!lblFailToEliminatePlayerFromLobby
ÊÊE f
+
ÊÊg h
$str
ÊÊi n
+
ÊÊo p

Properties
ÊÊq {
.
ÊÊ{ |
	ResourcesÊÊ| Ö
.ÊÊÖ Ü#
lblWithoutConectionÊÊÜ ô
)ÊÊô ö
;ÊÊö õ
}
ÁÁ 
}
ËË 
}
ÈÈ 
}
ÍÍ 
}
ÎÎ 	
private
ÓÓ 
PlayerInLobby
ÓÓ $
EliminateUserFromLobby
ÓÓ 4
(
ÓÓ4 5
String
ÓÓ5 ;
userName
ÓÓ< D
)
ÓÓD E
{
ÔÔ 	
PlayerInLobby
 
playerInLobby
 '
=
( )
new
* -
PlayerInLobby
. ;
(
; <
)
< =
;
= >
playerInLobby
ÒÒ 
.
ÒÒ 
IdUser
ÒÒ  
=
ÒÒ! "
NULL_INT_VALUE
ÒÒ# 1
;
ÒÒ1 2
foreach
ÚÚ 
(
ÚÚ 
var
ÚÚ 
item
ÚÚ 
in
ÚÚ  
from
ÚÚ! %
item
ÚÚ& *
in
ÚÚ+ -"
currentPlayerInLobby
ÚÚ. B
where
ÚÚC H
item
ÚÚI M
.
ÚÚM N
UserName
ÚÚN V
.
ÚÚV W
Equals
ÚÚW ]
(
ÚÚ] ^
userName
ÚÚ^ f
)
ÚÚf g
select
ÚÚh n
item
ÚÚo s
)
ÚÚs t
{
ÛÛ "
currentPlayerInLobby
ÙÙ $
.
ÙÙ$ %
Remove
ÙÙ% +
(
ÙÙ+ ,
item
ÙÙ, 0
)
ÙÙ0 1
;
ÙÙ1 2
playerInLobby
ıı 
=
ıı 
item
ıı  $
;
ıı$ %
break
ˆˆ 
;
ˆˆ 
}
˜˜ 
return
¯¯ 
playerInLobby
¯¯  
;
¯¯  !
}
˘˘ 	
private
˚˚ 
String
˚˚ )
GetUserNameFromLabelByImage
˚˚ 2
(
˚˚2 3
object
˚˚3 9
sender
˚˚: @
)
˚˚@ A
{
¸¸ 	
String
˝˝ 
userName
˝˝ 
=
˝˝ 
null
˝˝ "
;
˝˝" #
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
ˇˇi j
foreach
ÄÄ 
(
ÄÄ 
var
ÄÄ 
item
ÄÄ 
in
ÄÄ  
	stcChosen
ÄÄ! *
.
ÄÄ* +
Children
ÄÄ+ 3
)
ÄÄ3 4
{
ÅÅ 
if
ÇÇ 
(
ÇÇ 
item
ÇÇ 
is
ÇÇ 
Label
ÇÇ !
)
ÇÇ! "
{
ÉÉ 
Label
ÑÑ 
label
ÑÑ 
=
ÑÑ  !
item
ÑÑ" &
as
ÑÑ' )
Label
ÑÑ* /
;
ÑÑ/ 0
userName
ÖÖ 
=
ÖÖ 
label
ÖÖ $
.
ÖÖ$ %
Content
ÖÖ% ,
.
ÖÖ, -
ToString
ÖÖ- 5
(
ÖÖ5 6
)
ÖÖ6 7
;
ÖÖ7 8
}
ÜÜ 
}
áá 
return
àà 
userName
àà 
;
àà 
}
ââ 	
private
åå 
void
åå 
ClickTeamUp
åå  
(
åå  !
object
åå! '
sender
åå( .
,
åå. /
RoutedEventArgs
åå0 ?
e
åå@ A
)
ååA B
{
çç 	
if
éé 
(
éé 
isAdminOfLobby
éé 
)
éé 
{
èè 
try
êê 
{
ëë  
LobbyActionsClient
íí &'
lobbyActionsCallBackProxy
íí' @
=
ííA B
new
ííC F 
LobbyActionsClient
ííG Y
(
ííY Z
new
ííZ ]
InstanceContext
íí^ m
(
íím n
this
íín r
)
íír s
)
íís t
;
íít u'
lobbyActionsCallBackProxy
ìì -
.
ìì- . 
RenewLobbyCallBack
ìì. @
(
ìì@ A
roomCode
ììA I
,
ììI J
userSingleton
ììK X
.
ììX Y
IdUser
ììY _
)
ìì_ `
;
ìì` a
if
ïï 
(
ïï "
currentPlayerInLobby
ïï ,
.
ïï, -
Count
ïï- 2
==
ïï3 5
$num
ïï6 7
)
ïï7 8
{
ññ 
DoOrUndoTeams
óó %
(
óó% &
true
óó& *
)
óó* +
;
óó+ ,
SetPlayerInLabels
òò )
(
òò) *
)
òò* +
;
òò+ ,)
LobbyActionsOperationClient
ôô 3
lobbyActionsProxy
ôô4 E
=
ôôF G
new
ôôH K
(
ôôK L
)
ôôL M
;
ôôM N
lobbyActionsProxy
öö )
.
öö) *
	MakeTeams
öö* 3
(
öö3 4
roomCode
öö4 <
,
öö< =
userSingleton
öö> K
.
ööK L
IdUser
ööL R
,
ööR S
true
ööT X
)
ööX Y
;
ööY Z
}
õõ 
else
úú 
{
ùù 
	chbTeamUp
ûû !
.
ûû! "
	IsChecked
ûû" +
=
ûû, -
false
ûû. 3
;
ûû3 4
dialogMessage
üü %
=
üü& '
new
üü( +,
InformationMessageDialogWindow
üü, J
(
üüJ K

Properties
üüK U
.
üüU V
	Resources
üüV _
.
üü_ `!
txbInformationTitle
üü` s
,
üüs t

Properties
üüu 
.üü Ä
	ResourcesüüÄ â
.üüâ ä
MustBe4Playersüüä ò
,üüò ô
Windowüüö †
.üü† °
	GetWindowüü° ™
(üü™ ´
thisüü´ Ø
)üüØ ∞
)üü∞ ±
;üü± ≤
}
†† 
}
°° 
catch
¢¢ 
(
¢¢ '
EndpointNotFoundException
¢¢ 0
ex
¢¢1 3
)
¢¢3 4
{
££ 

Exceptions
§§ 
.
§§ %
ExceptionHandlerForLogs
§§ 6
.
§§6 7
LogException
§§7 C
(
§§C D
ex
§§D F
,
§§F G

Exceptions
§§H R
.
§§R S!
ExceptionDictionary
§§S f
.
§§f g
ERROR
§§g l
)
§§l m
;
§§m n
dialogMessage
•• !
=
••" #
new
••$ '&
ErrorMessageDialogWindow
••( @
(
••@ A

Properties
••A K
.
••K L
	Resources
••L U
.
••U V
txbErrorTitle
••V c
,
••c d

Properties
••e o
.
••o p
	Resources
••p y
.
••y z#
lblFailToManageTeams••z é
+••è ê
$str••ë ñ
+••ó ò

Properties••ô £
.••£ §
	Resources••§ ≠
.••≠ Æ#
lblEndPointNotFound••Æ ¡
,••¡ ¬
Window••√ …
.••…  
	GetWindow••  ”
(••” ‘
this••‘ ÿ
)••ÿ Ÿ
)••Ÿ ⁄
;••⁄ €
	chbTeamUp
¶¶ 
.
¶¶ 
	IsChecked
¶¶ '
=
¶¶( )
false
¶¶* /
;
¶¶/ 0
}
ßß 
catch
®® 
(
®® 1
#CommunicationObjectFaultedException
®® :
ex
®®; =
)
®®= >
{
©© 

Exceptions
™™ 
.
™™ %
ExceptionHandlerForLogs
™™ 6
.
™™6 7
LogException
™™7 C
(
™™C D
ex
™™D F
,
™™F G

Exceptions
™™H R
.
™™R S!
ExceptionDictionary
™™S f
.
™™f g
ERROR
™™g l
)
™™l m
;
™™m n
dialogMessage
´´ !
=
´´" #
new
´´$ '&
ErrorMessageDialogWindow
´´( @
(
´´@ A

Properties
´´A K
.
´´K L
	Resources
´´L U
.
´´U V
txbErrorTitle
´´V c
,
´´c d

Properties
´´e o
.
´´o p
	Resources
´´p y
.
´´y z#
lblFailToManageTeams´´z é
+´´è ê
$str´´ë ñ
+´´ó ò

Properties´´ô £
.´´£ §
	Resources´´§ ≠
.´´≠ Æ(
lblComunicationException´´Æ ∆
,´´∆ «
Window´´» Œ
.´´Œ œ
	GetWindow´´œ ÿ
(´´ÿ Ÿ
this´´Ÿ ›
)´´› ﬁ
)´´ﬁ ﬂ
;´´ﬂ ‡
	chbTeamUp
¨¨ 
.
¨¨ 
	IsChecked
¨¨ '
=
¨¨( )
false
¨¨* /
;
¨¨/ 0
}
≠≠ 
catch
ÆÆ 
(
ÆÆ 
TimeoutException
ÆÆ '
ex
ÆÆ( *
)
ÆÆ* +
{
ØØ 

Exceptions
∞∞ 
.
∞∞ %
ExceptionHandlerForLogs
∞∞ 6
.
∞∞6 7
LogException
∞∞7 C
(
∞∞C D
ex
∞∞D F
,
∞∞F G

Exceptions
∞∞H R
.
∞∞R S!
ExceptionDictionary
∞∞S f
.
∞∞f g
ERROR
∞∞g l
)
∞∞l m
;
∞∞m n
dialogMessage
±± !
=
±±" #
new
±±$ '&
ErrorMessageDialogWindow
±±( @
(
±±@ A

Properties
±±A K
.
±±K L
	Resources
±±L U
.
±±U V
txbErrorTitle
±±V c
,
±±c d

Properties
±±e o
.
±±o p
	Resources
±±p y
.
±±y z#
lblFailToManageTeams±±z é
+±±è ê
$str±±ë ñ
+±±ó ò

Properties±±ô £
.±±£ §
	Resources±±§ ≠
.±±≠ Æ 
lblTimeException±±Æ æ
,±±æ ø
Window±±¿ ∆
.±±∆ «
	GetWindow±±« –
(±±– —
this±±— ’
)±±’ ÷
)±±÷ ◊
;±±◊ ÿ
	chbTeamUp
≤≤ 
.
≤≤ 
	IsChecked
≤≤ '
=
≤≤( )
false
≤≤* /
;
≤≤/ 0
}
≥≥ 
catch
¥¥ 
(
¥¥ $
CommunicationException
¥¥ -
ex
¥¥. 0
)
¥¥0 1
{
µµ 

Exceptions
∂∂ 
.
∂∂ %
ExceptionHandlerForLogs
∂∂ 6
.
∂∂6 7
LogException
∂∂7 C
(
∂∂C D
ex
∂∂D F
,
∂∂F G

Exceptions
∂∂H R
.
∂∂R S!
ExceptionDictionary
∂∂S f
.
∂∂f g
ERROR
∂∂g l
)
∂∂l m
;
∂∂m n
dialogMessage
∑∑ !
=
∑∑" #
new
∑∑$ '&
ErrorMessageDialogWindow
∑∑( @
(
∑∑@ A

Properties
∑∑A K
.
∑∑K L
	Resources
∑∑L U
.
∑∑U V
txbErrorTitle
∑∑V c
,
∑∑c d

Properties
∑∑e o
.
∑∑o p
	Resources
∑∑p y
.
∑∑y z#
lblFailToManageTeams∑∑z é
+∑∑è ê
$str∑∑ë ñ
+∑∑ó ò

Properties∑∑ô £
.∑∑£ §
	Resources∑∑§ ≠
.∑∑≠ Æ#
lblWithoutConection∑∑Æ ¡
,∑∑¡ ¬
Window∑∑√ …
.∑∑…  
	GetWindow∑∑  ”
(∑∑” ‘
this∑∑‘ ÿ
)∑∑ÿ Ÿ
)∑∑Ÿ ⁄
;∑∑⁄ €
	chbTeamUp
∏∏ 
.
∏∏ 
	IsChecked
∏∏ '
=
∏∏( )
false
∏∏* /
;
∏∏/ 0
}
ππ 
}
∫∫ 
}
ªª 	
private
ΩΩ 
void
ΩΩ 
ClickNoTeamUp
ΩΩ "
(
ΩΩ" #
object
ΩΩ# )
sender
ΩΩ* 0
,
ΩΩ0 1
RoutedEventArgs
ΩΩ2 A
e
ΩΩB C
)
ΩΩC D
{
ææ 	
if
øø 
(
øø 
isAdminOfLobby
øø 
)
øø 
{
¿¿ 
try
¡¡ 
{
¬¬  
LobbyActionsClient
√√ &'
lobbyActionsCallBackProxy
√√' @
=
√√A B
new
√√C F 
LobbyActionsClient
√√G Y
(
√√Y Z
new
√√Z ]
InstanceContext
√√^ m
(
√√m n
this
√√n r
)
√√r s
)
√√s t
;
√√t u'
lobbyActionsCallBackProxy
ƒƒ -
.
ƒƒ- . 
RenewLobbyCallBack
ƒƒ. @
(
ƒƒ@ A
roomCode
ƒƒA I
,
ƒƒI J
userSingleton
ƒƒK X
.
ƒƒX Y
IdUser
ƒƒY _
)
ƒƒ_ `
;
ƒƒ` a
DoOrUndoTeams
∆∆ !
(
∆∆! "
false
∆∆" '
)
∆∆' (
;
∆∆( )
SetPlayerInLabels
«« %
(
««% &
)
««& '
;
««' ()
LobbyActionsOperationClient
»» /
lobbyActionsProxy
»»0 A
=
»»B C
new
»»D G
(
»»G H
)
»»H I
;
»»I J
lobbyActionsProxy
…… %
.
……% &
	MakeTeams
……& /
(
……/ 0
roomCode
……0 8
,
……8 9
userSingleton
……: G
.
……G H
IdUser
……H N
,
……N O
false
……P U
)
……U V
;
……V W
}
   
catch
ÀÀ 
(
ÀÀ '
EndpointNotFoundException
ÀÀ 0
ex
ÀÀ1 3
)
ÀÀ3 4
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
.ŒŒ≠ Æ#
lblEndPointNotFoundŒŒÆ ¡
,ŒŒ¡ ¬
WindowŒŒ√ …
.ŒŒ…  
	GetWindowŒŒ  ”
(ŒŒ” ‘
thisŒŒ‘ ÿ
)ŒŒÿ Ÿ
)ŒŒŸ ⁄
;ŒŒ⁄ €
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
““ 1
#CommunicationObjectFaultedException
““ :
ex
““; =
)
““= >
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
.’’≠ Æ(
lblComunicationException’’Æ ∆
,’’∆ «
Window’’» Œ
.’’Œ œ
	GetWindow’’œ ÿ
(’’ÿ Ÿ
this’’Ÿ ›
)’’› ﬁ
)’’ﬁ ﬂ
;’’ﬂ ‡
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
ŸŸ 
TimeoutException
ŸŸ '
ex
ŸŸ( *
)
ŸŸ* +
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
.‹‹≠ Æ 
lblTimeException‹‹Æ æ
,‹‹æ ø
Window‹‹¿ ∆
.‹‹∆ «
	GetWindow‹‹« –
(‹‹– —
this‹‹— ’
)‹‹’ ÷
)‹‹÷ ◊
;‹‹◊ ÿ
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
ﬂﬂ 
catch
‡‡ 
(
‡‡ $
CommunicationException
‡‡ -
ex
‡‡. 0
)
‡‡0 1
{
·· 

Exceptions
‚‚ 
.
‚‚ %
ExceptionHandlerForLogs
‚‚ 6
.
‚‚6 7
LogException
‚‚7 C
(
‚‚C D
ex
‚‚D F
,
‚‚F G

Exceptions
‚‚H R
.
‚‚R S!
ExceptionDictionary
‚‚S f
.
‚‚f g
ERROR
‚‚g l
)
‚‚l m
;
‚‚m n
dialogMessage
„„ !
=
„„" #
new
„„$ '&
ErrorMessageDialogWindow
„„( @
(
„„@ A

Properties
„„A K
.
„„K L
	Resources
„„L U
.
„„U V
txbErrorTitle
„„V c
,
„„c d

Properties
„„e o
.
„„o p
	Resources
„„p y
.
„„y z#
lblFailToManageTeams„„z é
+„„è ê
$str„„ë ñ
+„„ó ò

Properties„„ô £
.„„£ §
	Resources„„§ ≠
.„„≠ Æ#
lblWithoutConection„„Æ ¡
,„„¡ ¬
Window„„√ …
.„„…  
	GetWindow„„  ”
(„„” ‘
this„„‘ ÿ
)„„ÿ Ÿ
)„„Ÿ ⁄
;„„⁄ €
DoOrUndoTeams
‰‰ !
(
‰‰! "
true
‰‰" &
)
‰‰& '
;
‰‰' (
SetPlayerInLabels
ÂÂ %
(
ÂÂ% &
)
ÂÂ& '
;
ÂÂ' (
}
ÊÊ 
}
ÁÁ 
}
ËË 	
public
ÍÍ 
void
ÍÍ 
MakeTeamsResponse
ÍÍ %
(
ÍÍ% &
bool
ÍÍ& *
teamUp
ÍÍ+ 1
)
ÍÍ1 2
{
ÎÎ 	
DoOrUndoTeams
ÏÏ 
(
ÏÏ 
teamUp
ÏÏ  
)
ÏÏ  !
;
ÏÏ! "
SetPlayerInLabels
ÌÌ 
(
ÌÌ 
)
ÌÌ 
;
ÌÌ  
}
ÓÓ 	
private
 
void
 
DoOrUndoTeams
 "
(
" #
bool
# '
teamUp
( .
)
. /
{
ÒÒ 	
if
ÚÚ 
(
ÚÚ 
teamUp
ÚÚ 
)
ÚÚ 
{
ÛÛ "
currentPlayerInLobby
ÙÙ $
=
ÙÙ% &"
currentPlayerInLobby
ÙÙ' ;
.
ÙÙ; <
Select
ÙÙ< B
(
ÙÙB C
pla
ÙÙC F
=>
ÙÙG I
{
ıı 
if
ˆˆ 
(
ˆˆ 
pla
ˆˆ 
.
ˆˆ #
NumberOfPlayerInLobby
ˆˆ 1
<=
ˆˆ2 4
TEMA_RIGHT_SIDE
ˆˆ5 D
)
ˆˆD E
{
˜˜ 
pla
¯¯ 
.
¯¯ 

SideOfTeam
¯¯ &
=
¯¯' (
TEAM_LEFT_SIDE
¯¯) 7
;
¯¯7 8
}
˘˘ 
else
˙˙ 
{
˚˚ 
pla
¸¸ 
.
¸¸ 

SideOfTeam
¸¸ &
=
¸¸' (
TEMA_RIGHT_SIDE
¸¸) 8
;
¸¸8 9
}
˝˝ 
return
˛˛ 
pla
˛˛ 
;
˛˛ 
}
ˇˇ 
)
ˇˇ 
.
ˇˇ 
ToList
ˇˇ 
(
ˇˇ 
)
ˇˇ 
;
ˇˇ 
}
ÄÄ 
else
ÅÅ 
{
ÇÇ "
currentPlayerInLobby
ÉÉ $
=
ÉÉ% &"
currentPlayerInLobby
ÉÉ' ;
.
ÉÉ; <
Select
ÉÉ< B
(
ÉÉB C
pla
ÉÉC F
=>
ÉÉG I
{
ÑÑ 
pla
ÖÖ 
.
ÖÖ 

SideOfTeam
ÖÖ "
=
ÖÖ# $
TEAM_LEFT_SIDE
ÖÖ% 3
;
ÖÖ3 4
return
ÜÜ 
pla
ÜÜ 
;
ÜÜ 
}
áá 
)
áá 
.
áá 
ToList
áá 
(
áá 
)
áá 
;
áá 
}
àà 
if
ââ 
(
ââ 
!
ââ 
isAdminOfLobby
ââ 
)
ââ  
{
ää 
	chbTeamUp
ãã 
.
ãã 
	IsChecked
ãã #
=
ãã$ %
teamUp
ãã& ,
;
ãã, -
}
åå 
}
çç 	
private
êê 
void
êê !
ClickChangeTeamSide
êê (
(
êê( )
object
êê) /
sender
êê0 6
,
êê6 7"
MouseButtonEventArgs
êê8 L
e
êêM N
)
êêN O
{
ëë 	
if
íí 
(
íí 
isAdminOfLobby
íí 
&&
íí !"
currentPlayerInLobby
íí" 6
.
íí6 7
Count
íí7 <
==
íí= ?
$num
íí@ A
&&
ííB D
(
ííE F
bool
ííF J
)
ííJ K
	chbTeamUp
ííK T
.
ííT U
	IsChecked
ííU ^
)
íí^ _
{
ìì 
string
îî 
userName
îî 
=
îî  !*
GetUserNameFromLabelByBorder
îî" >
(
îî> ?
sender
îî? E
)
îîE F
;
îîF G
if
ïï 
(
ïï 
userName
ïï 
!=
ïï 
null
ïï  $
)
ïï$ %
{
ññ 
PlayerInLobby
óó !
userChanged
óó" -
=
óó. / 
ChangeSideOfPlayer
óó0 B
(
óóB C
userName
óóC K
)
óóK L
;
óóL M
if
òò 
(
òò 
userChanged
òò #
.
òò# $
IdUser
òò$ *
!=
òò+ -
NULL_INT_VALUE
òò. <
)
òò< =
{
ôô 
try
öö 
{
õõ  
LobbyActionsClient
úú .'
lobbyActionsCallBackProxy
úú/ H
=
úúI J
new
úúK N 
LobbyActionsClient
úúO a
(
úúa b
new
úúb e
InstanceContext
úúf u
(
úúu v
this
úúv z
)
úúz {
)
úú{ |
;
úú| }'
lobbyActionsCallBackProxy
ùù 5
.
ùù5 6 
RenewLobbyCallBack
ùù6 H
(
ùùH I
roomCode
ùùI Q
,
ùùQ R
userSingleton
ùùS `
.
ùù` a
IdUser
ùùa g
)
ùùg h
;
ùùh i)
LobbyActionsOperationClient
üü 7
lobbyActionsProxy
üü8 I
=
üüJ K
new
üüL O
(
üüO P
)
üüP Q
;
üüQ R
lobbyActionsProxy
†† -
.
††- .
ChangePlayerSide
††. >
(
††> ?
roomCode
††? G
,
††G H
userChanged
††I T
.
††T U
IdUser
††U [
,
††[ \
userChanged
††] h
.
††h i

SideOfTeam
††i s
)
††s t
;
††t u
}
°° 
catch
¢¢ 
(
¢¢ '
EndpointNotFoundException
¢¢ 8
ex
¢¢9 ;
)
¢¢; <
{
££ 

Exceptions
§§ &
.
§§& '%
ExceptionHandlerForLogs
§§' >
.
§§> ?
LogException
§§? K
(
§§K L
ex
§§L N
,
§§N O

Exceptions
§§P Z
.
§§Z [!
ExceptionDictionary
§§[ n
.
§§n o
ERROR
§§o t
)
§§t u
;
§§u v
dialogMessage
•• )
=
••* +
new
••, /&
ErrorMessageDialogWindow
••0 H
(
••H I

Properties
••I S
.
••S T
	Resources
••T ]
.
••] ^
txbErrorTitle
••^ k
,
••k l

Properties
••m w
.
••w x
	Resources••x Å
.••Å Ç$
lblFailToManageTeams••Ç ñ
+••ó ò
$str••ô û
+••ü †

Properties••° ´
.••´ ¨
	Resources••¨ µ
.••µ ∂#
lblEndPointNotFound••∂ …
,••…  
Window••À —
.••— “
	GetWindow••“ €
(••€ ‹
this••‹ ‡
)••‡ ·
)••· ‚
;••‚ „ 
ChangeSideOfPlayer
¶¶ .
(
¶¶. /
userName
¶¶/ 7
)
¶¶7 8
;
¶¶8 9
}
ßß 
catch
®® 
(
®® 1
#CommunicationObjectFaultedException
®® B
ex
®®C E
)
®®E F
{
©© 

Exceptions
™™ &
.
™™& '%
ExceptionHandlerForLogs
™™' >
.
™™> ?
LogException
™™? K
(
™™K L
ex
™™L N
,
™™N O

Exceptions
™™P Z
.
™™Z [!
ExceptionDictionary
™™[ n
.
™™n o
ERROR
™™o t
)
™™t u
;
™™u v
dialogMessage
´´ )
=
´´* +
new
´´, /&
ErrorMessageDialogWindow
´´0 H
(
´´H I

Properties
´´I S
.
´´S T
	Resources
´´T ]
.
´´] ^
txbErrorTitle
´´^ k
,
´´k l

Properties
´´m w
.
´´w x
	Resources´´x Å
.´´Å Ç$
lblFailToManageTeams´´Ç ñ
+´´ó ò
$str´´ô û
+´´ü †

Properties´´° ´
.´´´ ¨
	Resources´´¨ µ
.´´µ ∂(
lblComunicationException´´∂ Œ
,´´Œ œ
Window´´– ÷
.´´÷ ◊
	GetWindow´´◊ ‡
(´´‡ ·
this´´· Â
)´´Â Ê
)´´Ê Á
;´´Á Ë 
ChangeSideOfPlayer
¨¨ .
(
¨¨. /
userName
¨¨/ 7
)
¨¨7 8
;
¨¨8 9
}
≠≠ 
catch
ÆÆ 
(
ÆÆ 
TimeoutException
ÆÆ /
ex
ÆÆ0 2
)
ÆÆ2 3
{
ØØ 

Exceptions
∞∞ &
.
∞∞& '%
ExceptionHandlerForLogs
∞∞' >
.
∞∞> ?
LogException
∞∞? K
(
∞∞K L
ex
∞∞L N
,
∞∞N O

Exceptions
∞∞P Z
.
∞∞Z [!
ExceptionDictionary
∞∞[ n
.
∞∞n o
ERROR
∞∞o t
)
∞∞t u
;
∞∞u v
dialogMessage
±± )
=
±±* +
new
±±, /&
ErrorMessageDialogWindow
±±0 H
(
±±H I

Properties
±±I S
.
±±S T
	Resources
±±T ]
.
±±] ^
txbErrorTitle
±±^ k
,
±±k l

Properties
±±m w
.
±±w x
	Resources±±x Å
.±±Å Ç$
lblFailToManageTeams±±Ç ñ
+±±ó ò
$str±±ô û
+±±ü †

Properties±±° ´
.±±´ ¨
	Resources±±¨ µ
.±±µ ∂ 
lblTimeException±±∂ ∆
,±±∆ «
Window±±» Œ
.±±Œ œ
	GetWindow±±œ ÿ
(±±ÿ Ÿ
this±±Ÿ ›
)±±› ﬁ
)±±ﬁ ﬂ
;±±ﬂ ‡ 
ChangeSideOfPlayer
≤≤ .
(
≤≤. /
userName
≤≤/ 7
)
≤≤7 8
;
≤≤8 9
}
≥≥ 
catch
¥¥ 
(
¥¥ $
CommunicationException
¥¥ 5
ex
¥¥6 8
)
¥¥8 9
{
µµ 

Exceptions
∂∂ &
.
∂∂& '%
ExceptionHandlerForLogs
∂∂' >
.
∂∂> ?
LogException
∂∂? K
(
∂∂K L
ex
∂∂L N
,
∂∂N O

Exceptions
∂∂P Z
.
∂∂Z [!
ExceptionDictionary
∂∂[ n
.
∂∂n o
ERROR
∂∂o t
)
∂∂t u
;
∂∂u v
dialogMessage
∑∑ )
=
∑∑* +
new
∑∑, /&
ErrorMessageDialogWindow
∑∑0 H
(
∑∑H I

Properties
∑∑I S
.
∑∑S T
	Resources
∑∑T ]
.
∑∑] ^
txbErrorTitle
∑∑^ k
,
∑∑k l

Properties
∑∑m w
.
∑∑w x
	Resources∑∑x Å
.∑∑Å Ç$
lblFailToManageTeams∑∑Ç ñ
+∑∑ó ò
$str∑∑ô û
+∑∑ü †

Properties∑∑° ´
.∑∑´ ¨
	Resources∑∑¨ µ
.∑∑µ ∂#
lblWithoutConection∑∑∂ …
,∑∑…  
Window∑∑À —
.∑∑— “
	GetWindow∑∑“ €
(∑∑€ ‹
this∑∑‹ ‡
)∑∑‡ ·
)∑∑· ‚
;∑∑‚ „ 
ChangeSideOfPlayer
∏∏ .
(
∏∏. /
userName
∏∏/ 7
)
∏∏7 8
;
∏∏8 9
}
ππ 
SetPlayerInLabels
∫∫ )
(
∫∫) *
)
∫∫* +
;
∫∫+ ,
}
ªª 
}
ºº 
}
ΩΩ 
}
ææ 	
private
¿¿ 
PlayerInLobby
¿¿  
ChangeSideOfPlayer
¿¿ 0
(
¿¿0 1
String
¿¿1 7
userName
¿¿8 @
)
¿¿@ A
{
¡¡ 	"
currentPlayerInLobby
¬¬  
=
¬¬! ""
currentPlayerInLobby
¬¬# 7
.
¬¬7 8
Select
¬¬8 >
(
¬¬> ?
pla
¬¬? B
=>
¬¬C E
{
√√ 
if
ƒƒ 
(
ƒƒ 
pla
ƒƒ 
.
ƒƒ 
UserName
ƒƒ  
.
ƒƒ  !
Equals
ƒƒ! '
(
ƒƒ' (
userName
ƒƒ( 0
)
ƒƒ0 1
)
ƒƒ1 2
{
≈≈ 
if
∆∆ 
(
∆∆ 
pla
∆∆ 
.
∆∆ 

SideOfTeam
∆∆ &
==
∆∆' )
TEAM_LEFT_SIDE
∆∆* 8
)
∆∆8 9
{
«« 
pla
»» 
.
»» 

SideOfTeam
»» &
=
»»' (
TEMA_RIGHT_SIDE
»») 8
;
»»8 9
}
…… 
else
   
{
ÀÀ 
pla
ÃÃ 
.
ÃÃ 

SideOfTeam
ÃÃ &
=
ÃÃ' (
TEAM_LEFT_SIDE
ÃÃ) 7
;
ÃÃ7 8
}
ÕÕ 
}
ŒŒ 
return
œœ 
pla
œœ 
;
œœ 
}
–– 
)
–– 
.
–– 
ToList
–– 
(
–– 
)
–– 
;
–– 
PlayerInLobby
—— 
player
——  
=
——! ""
currentPlayerInLobby
——# 7
.
——7 8
Find
——8 <
(
——< =
x
——= >
=>
——? A
x
——B C
.
——C D
UserName
——D L
.
——L M
Equals
——M S
(
——S T
userName
——T \
)
——\ ]
)
——] ^
;
——^ _
return
““ 
player
““ 
;
““ 
}
”” 	
private
’’ 
String
’’ *
GetUserNameFromLabelByBorder
’’ 3
(
’’3 4
object
’’4 :
sender
’’; A
)
’’A B
{
÷÷ 	
String
◊◊ 
userName
◊◊ 
=
◊◊ 
null
◊◊ "
;
◊◊" #
Border
ÿÿ 
	brdChosen
ÿÿ 
=
ÿÿ 
(
ÿÿ  
Border
ÿÿ  &
)
ÿÿ& '
sender
ÿÿ' -
;
ÿÿ- .

StackPanel
ŸŸ 
	stcChosen
ŸŸ  
=
ŸŸ! "
(
ŸŸ# $

StackPanel
ŸŸ$ .
)
ŸŸ. /
	brdChosen
ŸŸ/ 8
.
ŸŸ8 9
Child
ŸŸ9 >
;
ŸŸ> ?
foreach
⁄⁄ 
(
⁄⁄ 
var
⁄⁄ 
item
⁄⁄ 
in
⁄⁄  
	stcChosen
⁄⁄! *
.
⁄⁄* +
Children
⁄⁄+ 3
)
⁄⁄3 4
{
€€ 
if
‹‹ 
(
‹‹ 
item
‹‹ 
is
‹‹ 
Label
‹‹ !
)
‹‹! "
{
›› 
Label
ﬁﬁ 
label
ﬁﬁ 
=
ﬁﬁ  !
item
ﬁﬁ" &
as
ﬁﬁ' )
Label
ﬁﬁ* /
;
ﬁﬁ/ 0
userName
ﬂﬂ 
=
ﬂﬂ 
label
ﬂﬂ $
.
ﬂﬂ$ %
Content
ﬂﬂ% ,
.
ﬂﬂ, -
ToString
ﬂﬂ- 5
(
ﬂﬂ5 6
)
ﬂﬂ6 7
;
ﬂﬂ7 8
}
‡‡ 
}
·· 
return
‚‚ 
userName
‚‚ 
;
‚‚ 
}
„„ 	
public
ÂÂ 
void
ÂÂ 
UpdateTeamSide
ÂÂ "
(
ÂÂ" #8
*GenericClassOfArrayOfPlayerInLobbyxY0a3WX4
ÂÂ# M
playersInTheLobby
ÂÂN _
)
ÂÂ_ `
{
ÊÊ 	
if
ÁÁ 
(
ÁÁ 
playersInTheLobby
ÁÁ !
.
ÁÁ! "
	CodeEvent
ÁÁ" +
==
ÁÁ, .!
ExceptionDictionary
ÁÁ/ B
.
ÁÁB C
SUCCESFULL_EVENT
ÁÁC S
)
ÁÁS T
{
ËË "
currentPlayerInLobby
ÈÈ $
=
ÈÈ% &
playersInTheLobby
ÈÈ' 8
.
ÈÈ8 9
ObjectSaved
ÈÈ9 D
.
ÈÈD E
ToList
ÈÈE K
(
ÈÈK L
)
ÈÈL M
;
ÈÈM N
SetPlayerInLabels
ÍÍ !
(
ÍÍ! "
)
ÍÍ" #
;
ÍÍ# $
}
ÎÎ 
}
ÏÏ 	
private
ÓÓ 
void
ÓÓ "
CLicButtonCancelGame
ÓÓ )
(
ÓÓ) *
object
ÓÓ* 0
sender
ÓÓ1 7
,
ÓÓ7 8
RoutedEventArgs
ÓÓ9 H
e
ÓÓI J
)
ÓÓJ K
{
ÔÔ 	
if
 
(
 
new
 &
ConfirmationDialogWindow
 ,
(
, -

Properties
- 7
.
7 8
	Resources
8 A
.
A B
txbWarningTitle
B Q
,
Q R

Properties
S ]
.
] ^
	Resources
^ g
.
g h
	txbCancel
h q
,
q r
Window
s y
.
y z
	GetWindowz É
(É Ñ
thisÑ à
)à â
)â ä
.ä ã
CloseWindowã ñ
)ñ ó
{
ÒÒ 
try
ÚÚ 
{
ÛÛ )
LobbyActionsOperationClient
ÙÙ /
lobbyActionsProxy
ÙÙ0 A
=
ÙÙB C
new
ÙÙD G
(
ÙÙG H
)
ÙÙH I
;
ÙÙI J
if
ıı 
(
ıı 
isAdminOfLobby
ıı &
)
ıı& '
{
ˆˆ 
lobbyActionsProxy
˜˜ )
.
˜˜) *
DissolveLobby
˜˜* 7
(
˜˜7 8
roomCode
˜˜8 @
,
˜˜@ A
userSingleton
˜˜B O
.
˜˜O P
IdUser
˜˜P V
)
˜˜V W
;
˜˜W X
}
¯¯ 
else
˘˘ 
{
˙˙ 
lobbyActionsProxy
˚˚ )
.
˚˚) *

LeaveLobby
˚˚* 4
(
˚˚4 5
roomCode
˚˚5 =
,
˚˚= >
userSingleton
˚˚? L
.
˚˚L M
IdUser
˚˚M S
)
˚˚S T
;
˚˚T U
}
¸¸ 
}
˝˝ 
catch
˛˛ 
(
˛˛ '
EndpointNotFoundException
˛˛ 0
ex
˛˛1 3
)
˛˛3 4
{
ˇˇ 

Exceptions
ÄÄ 
.
ÄÄ %
ExceptionHandlerForLogs
ÄÄ 6
.
ÄÄ6 7
LogException
ÄÄ7 C
(
ÄÄC D
ex
ÄÄD F
,
ÄÄF G

Exceptions
ÄÄH R
.
ÄÄR S!
ExceptionDictionary
ÄÄS f
.
ÄÄf g
ERROR
ÄÄg l
)
ÄÄl m
;
ÄÄm n
}
ÅÅ 
catch
ÇÇ 
(
ÇÇ 1
#CommunicationObjectFaultedException
ÇÇ :
ex
ÇÇ; =
)
ÇÇ= >
{
ÉÉ 

Exceptions
ÑÑ 
.
ÑÑ %
ExceptionHandlerForLogs
ÑÑ 6
.
ÑÑ6 7
LogException
ÑÑ7 C
(
ÑÑC D
ex
ÑÑD F
,
ÑÑF G

Exceptions
ÑÑH R
.
ÑÑR S!
ExceptionDictionary
ÑÑS f
.
ÑÑf g
ERROR
ÑÑg l
)
ÑÑl m
;
ÑÑm n
}
ÖÖ 
catch
ÜÜ 
(
ÜÜ 
TimeoutException
ÜÜ '
ex
ÜÜ( *
)
ÜÜ* +
{
áá 

Exceptions
àà 
.
àà %
ExceptionHandlerForLogs
àà 6
.
àà6 7
LogException
àà7 C
(
ààC D
ex
ààD F
,
ààF G

Exceptions
ààH R
.
ààR S!
ExceptionDictionary
ààS f
.
ààf g
ERROR
ààg l
)
ààl m
;
ààm n
}
ââ 
catch
ää 
(
ää $
CommunicationException
ää -
ex
ää. 0
)
ää0 1
{
ãã 

Exceptions
åå 
.
åå %
ExceptionHandlerForLogs
åå 6
.
åå6 7
LogException
åå7 C
(
ååC D
ex
ååD F
,
ååF G

Exceptions
ååH R
.
ååR S!
ExceptionDictionary
ååS f
.
ååf g
ERROR
ååg l
)
åål m
;
ååm n
}
çç 
CloseWindow
éé 
(
éé 
)
éé 
;
éé 
}
èè 
}
êê 	
private
ëë 
void
ëë 
CloseWindow
ëë  
(
ëë  !
)
ëë! "
{
íí 	
if
ìì 
(
ìì 
userSingleton
ìì 
.
ìì 
IdState
ìì %
!=
ìì& (
$num
ìì) *
)
ìì* +
{
îî 
MainMenu
ïï 
mainMenu
ïï !
=
ïï" #
new
ïï$ '
MainMenu
ïï( 0
(
ïï0 1
)
ïï1 2
;
ïï2 3
this
ññ 
.
ññ 
NavigationService
ññ &
.
ññ& '
Navigate
ññ' /
(
ññ/ 0
mainMenu
ññ0 8
)
ññ8 9
;
ññ9 :
NavigationService
óó !
.
óó! "
RemoveBackEntry
óó" 1
(
óó1 2
)
óó2 3
;
óó3 4
}
òò 
else
ôô 
{
öö 
DeleteSingleton
õõ 
(
õõ  
)
õõ  !
;
õõ! "
PrincipalPage
úú 
principalPage
úú +
=
úú, -
new
úú. 1
PrincipalPage
úú2 ?
(
úú? @
)
úú@ A
;
úúA B
this
ùù 
.
ùù 
NavigationService
ùù &
.
ùù& '
Navigate
ùù' /
(
ùù/ 0
principalPage
ùù0 =
)
ùù= >
;
ùù> ?
NavigationService
ûû !
.
ûû! "
RemoveBackEntry
ûû" 1
(
ûû1 2
)
ûû2 3
;
ûû3 4
}
üü 
}
†† 	
public
¢¢ 
void
¢¢ 
DissolvingLobby
¢¢ #
(
¢¢# $
)
¢¢$ %
{
££ 	
dialogMessage
§§ 
=
§§ 
new
§§ ,
InformationMessageDialogWindow
§§  >
(
§§> ?

Properties
§§? I
.
§§I J
	Resources
§§J S
.
§§S T
txbWarningTitle
§§T c
,
§§c d

Properties
§§e o
.
§§o p
	Resources
§§p y
.
§§y z
GameCancelled§§z á
,§§á à
Window§§â è
.§§è ê
	GetWindow§§ê ô
(§§ô ö
this§§ö û
)§§û ü
)§§ü †
;§§† °
CloseWindow
•• 
(
•• 
)
•• 
;
•• 
}
¶¶ 	
private
®® 
void
®® 
DeleteSingleton
®® $
(
®®$ %
)
®®% &
{
©© 	
try
™™ 
{
´´ &
GuestPlayerManagerClient
¨¨ (%
guestPlayerManagerProxy
¨¨) @
=
¨¨A B
new
¨¨C F
(
¨¨F G
)
¨¨G H
;
¨¨H I%
guestPlayerManagerProxy
≠≠ '
.
≠≠' (
DeleteGuest
≠≠( 3
(
≠≠3 4
userSingleton
≠≠4 A
.
≠≠A B
IdUser
≠≠B H
)
≠≠H I
;
≠≠I J
}
ÆÆ 
catch
ØØ 
(
ØØ '
EndpointNotFoundException
ØØ ,
ex
ØØ- /
)
ØØ/ 0
{
∞∞ %
ExceptionHandlerForLogs
±± '
.
±±' (
LogException
±±( 4
(
±±4 5
ex
±±5 7
,
±±7 8!
ExceptionDictionary
±±9 L
.
±±L M
FATAL_EXCEPTION
±±M \
)
±±\ ]
;
±±] ^
}
≤≤ 
catch
≥≥ 
(
≥≥ 1
#CommunicationObjectFaultedException
≥≥ 6
ex
≥≥7 9
)
≥≥9 :
{
¥¥ %
ExceptionHandlerForLogs
µµ '
.
µµ' (
LogException
µµ( 4
(
µµ4 5
ex
µµ5 7
,
µµ7 8!
ExceptionDictionary
µµ9 L
.
µµL M
FATAL_EXCEPTION
µµM \
)
µµ\ ]
;
µµ] ^
}
∂∂ 
catch
∑∑ 
(
∑∑ 
TimeoutException
∑∑ #
ex
∑∑$ &
)
∑∑& '
{
∏∏ %
ExceptionHandlerForLogs
ππ '
.
ππ' (
LogException
ππ( 4
(
ππ4 5
ex
ππ5 7
,
ππ7 8!
ExceptionDictionary
ππ9 L
.
ππL M
FATAL_EXCEPTION
ππM \
)
ππ\ ]
;
ππ] ^
}
∫∫ 
catch
ªª 
(
ªª $
CommunicationException
ªª )
ex
ªª* ,
)
ªª, -
{
ºº 
HandleException
ΩΩ 
(
ΩΩ  
ex
ΩΩ  "
,
ΩΩ" #

Properties
ΩΩ$ .
.
ΩΩ. /
	Resources
ΩΩ/ 8
.
ΩΩ8 9!
lblWithoutConection
ΩΩ9 L
)
ΩΩL M
;
ΩΩM N
}
ææ 
UserSingleton
øø 
.
øø 
CleanSingleton
øø (
(
øø( )
)
øø) *
;
øø* +
}
¿¿ 	
private
¬¬ 
void
¬¬ 
ClickOpenChat
¬¬ "
(
¬¬" #
object
¬¬# )
sender
¬¬* 0
,
¬¬0 1"
MouseButtonEventArgs
¬¬2 F
e
¬¬G H
)
¬¬H I
{
√√ 	
if
ƒƒ 
(
ƒƒ 
liveChatInstance
ƒƒ  
==
ƒƒ! #
null
ƒƒ$ (
)
ƒƒ( )
{
≈≈ 
liveChatInstance
∆∆  
=
∆∆! "
new
∆∆# &
LiveChat
∆∆' /
(
∆∆/ 0
)
∆∆0 1
;
∆∆1 2
liveChatInstance
««  
.
««  !
	StartPage
««! *
(
««* +
isAdminOfLobby
««+ 9
,
««9 :
roomCode
««; C
,
««C D
this
««E I
)
««I J
;
««J K
}
»» 
liveChatInstance
…… 
.
…… #
RenewLiveChatCallBack
…… 2
(
……2 3
)
……3 4
;
……4 5%
frmActiveFriendsAndChat
   #
.
  # $
Content
  $ +
=
  , -
liveChatInstance
  . >
;
  > ?
grdActiveUser
ÀÀ 
.
ÀÀ 

Visibility
ÀÀ $
=
ÀÀ% &

Visibility
ÀÀ' 1
.
ÀÀ1 2
Visible
ÀÀ2 9
;
ÀÀ9 :
}
ÃÃ 	
public
ÕÕ 
void
ÕÕ 
CloseLiveChat
ÕÕ !
(
ÕÕ! "
)
ÕÕ" #
{
ŒŒ 	%
frmActiveFriendsAndChat
œœ #
.
œœ# $
Content
œœ$ +
=
œœ, -
null
œœ. 2
;
œœ2 3
grdActiveUser
–– 
.
–– 

Visibility
–– $
=
––% &

Visibility
––' 1
.
––1 2
Hidden
––2 8
;
––8 9
}
—— 	
public
““ 
void
““ 
ReceiveMessage
““ "
(
““" #/
!GenericClassOfMessageChatxY0a3WX4
““# D
message
““E L
)
““L M
{
”” 	
(
‘‘ 
(
‘‘ 
ILiveChatCallback
‘‘ 
)
‘‘  
liveChatInstance
‘‘  0
)
‘‘0 1
.
‘‘1 2
ReceiveMessage
‘‘2 @
(
‘‘@ A
message
‘‘A H
)
‘‘H I
;
‘‘I J
}
’’ 	
private
÷÷ 
void
÷÷ 
ClickListFriends
÷÷ %
(
÷÷% &
object
÷÷& ,
sender
÷÷- 3
,
÷÷3 4"
MouseButtonEventArgs
÷÷5 I
e
÷÷J K
)
÷÷K L
{
◊◊ 	
if
ÿÿ 
(
ÿÿ !
activeUsersInstance
ÿÿ #
==
ÿÿ$ &
null
ÿÿ' +
)
ÿÿ+ ,
{
ŸŸ !
activeUsersInstance
⁄⁄ #
=
⁄⁄$ %
new
⁄⁄& )
ActiveFriends
⁄⁄* 7
(
⁄⁄7 8
userSingleton
⁄⁄8 E
.
⁄⁄E F
IdUser
⁄⁄F L
)
⁄⁄L M
;
⁄⁄M N!
activeUsersInstance
€€ #
.
€€# $
	StartPage
€€$ -
(
€€- .
this
€€. 2
)
€€2 3
;
€€3 4
}
‹‹ !
activeUsersInstance
›› 
.
››  (
RenewFriendCallBackChannel
››  :
(
››: ;
userSingleton
››; H
.
››H I
IdUser
››I O
)
››O P
;
››P Q%
frmActiveFriendsAndChat
ﬁﬁ #
.
ﬁﬁ# $
Content
ﬁﬁ$ +
=
ﬁﬁ, -!
activeUsersInstance
ﬁﬁ. A
;
ﬁﬁA B
grdActiveUser
ﬂﬂ 
.
ﬂﬂ 

Visibility
ﬂﬂ $
=
ﬂﬂ% &

Visibility
ﬂﬂ' 1
.
ﬂﬂ1 2
Visible
ﬂﬂ2 9
;
ﬂﬂ9 :
}
‡‡ 	
private
‚‚ 
void
‚‚ %
NotifyFriendsIamPlaying
‚‚ ,
(
‚‚, -
)
‚‚- .
{
„„ 	
try
‰‰ 
{
ÂÂ -
AvailabilityUserManagmentClient
ÊÊ /#
availabilityUserProxy
ÊÊ0 E
=
ÊÊF G
new
ÊÊH K
(
ÊÊK L
)
ÊÊL M
;
ÊÊM N#
availabilityUserProxy
ÁÁ %
.
ÁÁ% &
PlayerIsPlaying
ÁÁ& 5
(
ÁÁ5 6
userSingleton
ÁÁ6 C
.
ÁÁC D
IdUser
ÁÁD J
)
ÁÁJ K
;
ÁÁK L
}
ËË 
catch
ÈÈ 
(
ÈÈ '
EndpointNotFoundException
ÈÈ ,
ex
ÈÈ- /
)
ÈÈ/ 0
{
ÍÍ %
ExceptionHandlerForLogs
ÎÎ '
.
ÎÎ' (
LogException
ÎÎ( 4
(
ÎÎ4 5
ex
ÎÎ5 7
,
ÎÎ7 8!
ExceptionDictionary
ÎÎ9 L
.
ÎÎL M
FATAL_EXCEPTION
ÎÎM \
)
ÎÎ\ ]
;
ÎÎ] ^
dialogMessage
ÏÏ 
=
ÏÏ 
new
ÏÏ  #,
InformationMessageDialogWindow
ÏÏ$ B
(
ÏÏB C

Properties
ÏÏC M
.
ÏÏM N
	Resources
ÏÏN W
.
ÏÏW X
txbErrorTitle
ÏÏX e
,
ÏÏe f

Properties
ÏÏg q
.
ÏÏq r
	Resources
ÏÏr {
.
ÏÏ{ |)
lblFailToNotifyYourFriendsÏÏ| ñ
+ÏÏó ò
$strÏÏô û
+ÏÏü †

PropertiesÏÏ° ´
.ÏÏ´ ¨
	ResourcesÏÏ¨ µ
.ÏÏµ ∂#
lblEndPointNotFoundÏÏ∂ …
,ÏÏ…  
WindowÏÏÀ —
.ÏÏ— “
	GetWindowÏÏ“ €
(ÏÏ€ ‹
thisÏÏ‹ ‡
)ÏÏ‡ ·
)ÏÏ· ‚
;ÏÏ‚ „
}
ÌÌ 
catch
ÓÓ 
(
ÓÓ 1
#CommunicationObjectFaultedException
ÓÓ 6
ex
ÓÓ7 9
)
ÓÓ9 :
{
ÔÔ %
ExceptionHandlerForLogs
 '
.
' (
LogException
( 4
(
4 5
ex
5 7
,
7 8!
ExceptionDictionary
9 L
.
L M
FATAL_EXCEPTION
M \
)
\ ]
;
] ^
dialogMessage
ÒÒ 
=
ÒÒ 
new
ÒÒ  #,
InformationMessageDialogWindow
ÒÒ$ B
(
ÒÒB C

Properties
ÒÒC M
.
ÒÒM N
	Resources
ÒÒN W
.
ÒÒW X
txbErrorTitle
ÒÒX e
,
ÒÒe f

Properties
ÒÒg q
.
ÒÒq r
	Resources
ÒÒr {
.
ÒÒ{ |)
lblFailToNotifyYourFriendsÒÒ| ñ
+ÒÒó ò
$strÒÒô û
+ÒÒü †

PropertiesÒÒ° ´
.ÒÒ´ ¨
	ResourcesÒÒ¨ µ
.ÒÒµ ∂#
lblEndPointNotFoundÒÒ∂ …
,ÒÒ…  
WindowÒÒÀ —
.ÒÒ— “
	GetWindowÒÒ“ €
(ÒÒ€ ‹
thisÒÒ‹ ‡
)ÒÒ‡ ·
)ÒÒ· ‚
;ÒÒ‚ „
}
ÚÚ 
catch
ÛÛ 
(
ÛÛ 
TimeoutException
ÛÛ #
ex
ÛÛ$ &
)
ÛÛ& '
{
ÙÙ %
ExceptionHandlerForLogs
ıı '
.
ıı' (
LogException
ıı( 4
(
ıı4 5
ex
ıı5 7
,
ıı7 8!
ExceptionDictionary
ıı9 L
.
ııL M
FATAL_EXCEPTION
ııM \
)
ıı\ ]
;
ıı] ^
dialogMessage
ˆˆ 
=
ˆˆ 
new
ˆˆ  #,
InformationMessageDialogWindow
ˆˆ$ B
(
ˆˆB C

Properties
ˆˆC M
.
ˆˆM N
	Resources
ˆˆN W
.
ˆˆW X
txbErrorTitle
ˆˆX e
,
ˆˆe f

Properties
ˆˆg q
.
ˆˆq r
	Resources
ˆˆr {
.
ˆˆ{ |)
lblFailToNotifyYourFriendsˆˆ| ñ
+ˆˆó ò
$strˆˆô û
+ˆˆü †

Propertiesˆˆ° ´
.ˆˆ´ ¨
	Resourcesˆˆ¨ µ
.ˆˆµ ∂#
lblEndPointNotFoundˆˆ∂ …
,ˆˆ…  
WindowˆˆÀ —
.ˆˆ— “
	GetWindowˆˆ“ €
(ˆˆ€ ‹
thisˆˆ‹ ‡
)ˆˆ‡ ·
)ˆˆ· ‚
;ˆˆ‚ „
}
˜˜ 
catch
¯¯ 
(
¯¯ $
CommunicationException
¯¯ )
ex
¯¯* ,
)
¯¯, -
{
˘˘ %
ExceptionHandlerForLogs
˙˙ '
.
˙˙' (
LogException
˙˙( 4
(
˙˙4 5
ex
˙˙5 7
,
˙˙7 8!
ExceptionDictionary
˙˙9 L
.
˙˙L M
FATAL_EXCEPTION
˙˙M \
)
˙˙\ ]
;
˙˙] ^
dialogMessage
˚˚ 
=
˚˚ 
new
˚˚  #,
InformationMessageDialogWindow
˚˚$ B
(
˚˚B C

Properties
˚˚C M
.
˚˚M N
	Resources
˚˚N W
.
˚˚W X
txbErrorTitle
˚˚X e
,
˚˚e f

Properties
˚˚g q
.
˚˚q r
	Resources
˚˚r {
.
˚˚{ |)
lblFailToNotifyYourFriends˚˚| ñ
+˚˚ó ò
$str˚˚ô û
+˚˚ü †

Properties˚˚° ´
.˚˚´ ¨
	Resources˚˚¨ µ
.˚˚µ ∂#
lblEndPointNotFound˚˚∂ …
,˚˚…  
Window˚˚À —
.˚˚— “
	GetWindow˚˚“ €
(˚˚€ ‹
this˚˚‹ ‡
)˚˚‡ ·
)˚˚· ‚
;˚˚‚ „
}
¸¸ 
}
˝˝ 	
public
ˇˇ 
void
ˇˇ 
CloseFriendList
ˇˇ #
(
ˇˇ# $
)
ˇˇ$ %
{
ÄÄ 	%
frmActiveFriendsAndChat
ÅÅ #
.
ÅÅ# $
Content
ÅÅ$ +
=
ÅÅ, -
null
ÅÅ. 2
;
ÅÅ2 3
grdActiveUser
ÇÇ 
.
ÇÇ 

Visibility
ÇÇ $
=
ÇÇ% &

Visibility
ÇÇ' 1
.
ÇÇ1 2
Hidden
ÇÇ2 8
;
ÇÇ8 9
}
ÉÉ 	
public
ÑÑ 
void
ÑÑ *
ResponseOfPlayerAvailability
ÑÑ 0
(
ÑÑ0 1
int
ÑÑ1 4
status
ÑÑ5 ;
,
ÑÑ; <
int
ÑÑ= @
idFriend
ÑÑA I
)
ÑÑI J
{
ÖÖ 	
(
ÜÜ 
(
ÜÜ -
INotifyUserAvailabilityCallback
ÜÜ -
)
ÜÜ- .!
activeUsersInstance
ÜÜ. A
)
ÜÜA B
.
ÜÜB C*
ResponseOfPlayerAvailability
ÜÜC _
(
ÜÜ_ `
status
ÜÜ` f
,
ÜÜf g
idFriend
ÜÜh p
)
ÜÜp q
;
ÜÜq r
}
áá 	
public
ää 
void
ää %
NotifyQuestionsAreReady
ää +
(
ää+ ,
int
ää, /
	codeEvent
ää0 9
)
ää9 :
{
ãã 	
if
åå 
(
åå 
	codeEvent
åå 
==
åå !
ExceptionDictionary
åå 0
.
åå0 1
SUCCESFULL_EVENT
åå1 A
)
ååA B
{
çç 
bttStartGame
éé 
.
éé 
	IsEnabled
éé &
=
éé' (
true
éé) -
;
éé- .
}
èè 
else
êê 
{
ëë 
dialogMessage
íí 
=
íí 
new
íí  #&
ErrorMessageDialogWindow
íí$ <
(
íí< =

Properties
íí= G
.
ííG H
	Resources
ííH Q
.
ííQ R
txbErrorTitle
ííR _
,
íí_ `

Properties
íía k
.
íík l
	Resources
ííl u
.
ííu v

lblNotGameíív Ä
,ííÄ Å
WindowííÇ à
.ííà â
	GetWindowííâ í
(ííí ì
thisííì ó
)ííó ò
)ííò ô
;ííô ö
}
ìì 
}
îî 	
private
óó 
void
óó 
ClickStartGame
óó #
(
óó# $
object
óó$ *
sender
óó+ 1
,
óó1 2
RoutedEventArgs
óó3 B
e
óóC D
)
óóD E
{
òò 	
if
ôô 
(
ôô 
(
ôô 
bool
ôô 
)
ôô 
	chbTeamUp
ôô 
.
ôô  
	IsChecked
ôô  )
)
ôô) *
{
öö 
if
õõ 
(
õõ "
currentPlayerInLobby
õõ (
.
õõ( )
Where
õõ) .
(
õõ. /
pl
õõ/ 1
=>
õõ2 4
pl
õõ5 7
.
õõ7 8

SideOfTeam
õõ8 B
==
õõC E
TEAM_LEFT_SIDE
õõF T
)
õõT U
.
õõU V
ToList
õõV \
(
õõ\ ]
)
õõ] ^
.
õõ^ _
Count
õõ_ d
==
õõe g"
currentPlayerInLobby
õõh |
.
õõ| }
Whereõõ} Ç
(õõÇ É
plõõÉ Ö
=>õõÜ à
plõõâ ã
.õõã å

SideOfTeamõõå ñ
==õõó ô
TEMA_RIGHT_SIDEõõö ©
)õõ© ™
.õõ™ ´
ToListõõ´ ±
(õõ± ≤
)õõ≤ ≥
.õõ≥ ¥
Countõõ¥ π
)õõπ ∫
{
úú #
CallMethodToStartGame
ùù )
(
ùù) *
)
ùù* +
;
ùù+ ,
}
ûû 
else
üü 
{
†† 
dialogMessage
°° !
=
°°" #
new
°°$ '&
ErrorMessageDialogWindow
°°( @
(
°°@ A

Properties
°°A K
.
°°K L
	Resources
°°L U
.
°°U V
txbErrorTitle
°°V c
,
°°c d

Properties
°°e o
.
°°o p
	Resources
°°p y
.
°°y z
_2PlayerByTeam°°z à
,°°à â
Window°°ä ê
.°°ê ë
	GetWindow°°ë ö
(°°ö õ
this°°õ ü
)°°ü †
)°°† °
;°°° ¢
}
¢¢ 
}
££ 
else
§§ 
if
§§ 
(
§§ "
currentPlayerInLobby
§§ )
.
§§) *
Count
§§* /
>
§§0 1
$num
§§2 3
)
§§3 4
{
•• #
CallMethodToStartGame
¶¶ %
(
¶¶% &
)
¶¶& '
;
¶¶' (
}
ßß 
else
®® 
{
©© 
dialogMessage
™™ 
=
™™ 
new
™™  #&
ErrorMessageDialogWindow
™™$ <
(
™™< =

Properties
™™= G
.
™™G H
	Resources
™™H Q
.
™™Q R
txbErrorTitle
™™R _
,
™™_ `

Properties
™™a k
.
™™k l
	Resources
™™l u
.
™™u v
MoreThan1Player™™v Ö
,™™Ö Ü
Window™™á ç
.™™ç é
	GetWindow™™é ó
(™™ó ò
this™™ò ú
)™™ú ù
)™™ù û
;™™û ü
}
´´ 
}
¨¨ 	
private
ÆÆ 
void
ÆÆ #
CallMethodToStartGame
ÆÆ *
(
ÆÆ* +
)
ÆÆ+ ,
{
ØØ 	
try
∞∞ 
{
±± )
LobbyActionsOperationClient
≤≤ +
lobbyActionsProxy
≤≤, =
=
≤≤> ?
new
≤≤@ C
(
≤≤C D
)
≤≤D E
;
≤≤E F
lobbyActionsProxy
≥≥ !
.
≥≥! "
	StartGame
≥≥" +
(
≥≥+ ,
roomCode
≥≥, 4
)
≥≥4 5
;
≥≥5 6
}
¥¥ 
catch
µµ 
(
µµ '
EndpointNotFoundException
µµ ,
ex
µµ- /
)
µµ/ 0
{
∂∂ 
HandleException
∑∑ 
(
∑∑  
ex
∑∑  "
,
∑∑" #

Properties
∑∑$ .
.
∑∑. /
	Resources
∑∑/ 8
.
∑∑8 9 
lblFailToStartGame
∑∑9 K
+
∑∑L M
$str
∑∑N S
+
∑∑T U

Properties
∑∑V `
.
∑∑` a
	Resources
∑∑a j
.
∑∑j k!
lblEndPointNotFound
∑∑k ~
)
∑∑~ 
;∑∑ Ä
}
∏∏ 
catch
ππ 
(
ππ 1
#CommunicationObjectFaultedException
ππ 6
ex
ππ7 9
)
ππ9 :
{
∫∫ 
HandleException
ªª 
(
ªª  
ex
ªª  "
,
ªª" #

Properties
ªª$ .
.
ªª. /
	Resources
ªª/ 8
.
ªª8 9 
lblFailToStartGame
ªª9 K
+
ªªL M
$str
ªªN S
+
ªªT U

Properties
ªªV `
.
ªª` a
	Resources
ªªa j
.
ªªj k'
lblComunicationExceptionªªk É
)ªªÉ Ñ
;ªªÑ Ö
}
ºº 
catch
ΩΩ 
(
ΩΩ 
TimeoutException
ΩΩ #
ex
ΩΩ$ &
)
ΩΩ& '
{
ææ 
HandleException
øø 
(
øø  
ex
øø  "
,
øø" #

Properties
øø$ .
.
øø. /
	Resources
øø/ 8
.
øø8 9 
lblFailToStartGame
øø9 K
+
øøL M
$str
øøN S
+
øøT U

Properties
øøV `
.
øø` a
	Resources
øøa j
.
øøj k
lblTimeException
øøk {
)
øø{ |
;
øø| }
}
¿¿ 
catch
¡¡ 
(
¡¡ $
CommunicationException
¡¡ )
ex
¡¡* ,
)
¡¡, -
{
¬¬ 
HandleException
√√ 
(
√√  
ex
√√  "
,
√√" #

Properties
√√$ .
.
√√. /
	Resources
√√/ 8
.
√√8 9 
lblFailToStartGame
√√9 K
+
√√L M
$str
√√N S
+
√√T U

Properties
√√V `
.
√√` a
	Resources
√√a j
.
√√j k!
lblWithoutConection
√√k ~
)
√√~ 
;√√ Ä
}
ƒƒ 
}
≈≈ 	
public
«« 
void
«« !
NotifyGameWillStart
«« '
(
««' (%
QuestionCardInformation
««( ?
[
««? @
]
««@ A
questionsForGame
««B R
)
««R S
{
»» 	
	GameBoard
…… 
game
…… 
=
…… 
new
……  
	GameBoard
……! *
(
……* +
questionsForGame
……+ ;
.
……; <
ToList
……< B
(
……B C
)
……C D
,
……D E
roomCode
……F N
)
……N O
;
……O P
this
   
.
   
NavigationService
   "
.
  " #
Navigate
  # +
(
  + ,
game
  , 0
)
  0 1
;
  1 2
NavigationService
ÀÀ 
.
ÀÀ 
RemoveBackEntry
ÀÀ -
(
ÀÀ- .
)
ÀÀ. /
;
ÀÀ/ 0
}
ÃÃ 	
public
ŒŒ 
static
ŒŒ 
class
ŒŒ 
GameCodeContainer
ŒŒ -
{
œœ 	
public
–– 
static
–– 
int
–– 
RoomCode
–– &
{
––' (
get
––) ,
;
––, -
set
––. 1
;
––1 2
}
––3 4
}
—— 	
private
““ 
void
““ 
HandleException
““ $
(
““$ %
	Exception
““% .
ex
““/ 1
,
““1 2
string
““3 9
errorMessage
““: F
)
““F G
{
”” 	%
ExceptionHandlerForLogs
‘‘ #
.
‘‘# $
LogException
‘‘$ 0
(
‘‘0 1
ex
‘‘1 3
,
‘‘3 4!
ExceptionDictionary
‘‘5 H
.
‘‘H I
FATAL_EXCEPTION
‘‘I X
)
‘‘X Y
;
‘‘Y Z
dialogMessage
’’ 
=
’’ 
new
’’ &
ErrorMessageDialogWindow
’’  8
(
’’8 9

Properties
’’9 C
.
’’C D
	Resources
’’D M
.
’’M N
txbErrorTitle
’’N [
,
’’[ \
errorMessage
’’] i
,
’’i j
Application
’’k v
.
’’v w
Current
’’w ~
.
’’~ 

MainWindow’’ â
)’’â ä
;’’ä ã
ReturnToLogin
÷÷ 
(
÷÷ 
)
÷÷ 
;
÷÷ 
}
◊◊ 	
private
ŸŸ 
void
ŸŸ 
ReturnToLogin
ŸŸ "
(
ŸŸ" #
)
ŸŸ# $
{
⁄⁄ 	
UserSingleton
€€ 
.
€€ 
CleanSingleton
€€ (
(
€€( )
)
€€) *
;
€€* +
	LogInUser
‹‹ 
logInUserPage
‹‹ #
=
‹‹$ %
new
‹‹& )
	LogInUser
‹‹* 3
(
‹‹3 4
)
‹‹4 5
;
‹‹5 6
this
›› 
.
›› 
NavigationService
›› "
.
››" #
Navigate
››# +
(
››+ ,
logInUserPage
››, 9
)
››9 :
;
››: ;
NavigationService
ﬁﬁ 
.
ﬁﬁ 
RemoveBackEntry
ﬁﬁ -
(
ﬁﬁ- .
)
ﬁﬁ. /
;
ﬁﬁ/ 0
}
‡‡ 	
}
‚‚ 
}„„ ’Ú
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
{== (
ConsultUserInformationClient>> 8#
consultInformationProxy>>9 P
=>>Q R
new>>S V(
ConsultUserInformationClient>>W s
(>>s t
)>>t u
;>>u v
var?? 
userConsulted??  -
=??. /#
consultInformationProxy??0 G
.??G H!
ConsultUserByUserName??H ]
(??] ^
userValidate??^ j
.??j k
UserName??k s
)??s t
;??t u
var@@ 
isAlreadyConnected@@  2
=@@3 4"
logInVerificationProxy@@5 K
.@@K L0
$ValidateThereIsOnlyOneAActiveAccount@@L p
(@@p q
userConsulted@@q ~
.@@~ 
ObjectSaved	@@ ä
.
@@ä ã
UserName
@@ã ì
)
@@ì î
;
@@î ï"
logInVerificationProxyAA 2
.AA2 3
CloseAA3 8
(AA8 9
)AA9 :
;AA: ;
ifBB 
(BB  
isAlreadyConnectedBB  2
==BB3 5
ExceptionDictionaryBB6 I
.BBI J
SUCCESFULL_EVENTBBJ Z
)BBZ [
{CC 
DoLoginDD  '
(DD' (
userValidateDD( 4
.DD4 5
UserNameDD5 =
)DD= >
;DD> ?
}EE 
elseFF  
ifFF! #
(FF$ %
isAlreadyConnectedFF% 7
!=FF8 :
ExceptionDictionaryFF; N
.FFN O
SUCCESFULL_EVENTFFO _
)FF_ `
{GG 
dialogMessageHH  -
=HH. /
newHH0 3$
ErrorMessageDialogWindowHH4 L
(HHL M

PropertiesHHM W
.HHW X
	ResourcesHHX a
.HHa b
txbErrorTitleHHb o
,HHo p

PropertiesHHq {
.HH{ |
	Resources	HH| Ö
.
HHÖ Ü
lblLogInExist
HHÜ ì
,
HHì î
Application
HHï †
.
HH† °
Current
HH° ®
.
HH® ©

MainWindow
HH© ≥
)
HH≥ ¥
;
HH¥ µ
}II 
}JJ 
elseKK 
ifKK 
(KK  !
resultKK! '
.KK' (
ObjectSavedKK( 3
==KK4 6
WRONG_CREDENTIALSKK7 H
)KKH I
{LL 
dialogMessageMM )
=MM* +
newMM, /$
ErrorMessageDialogWindowMM0 H
(MMH I

PropertiesMMI S
.MMS T
	ResourcesMMT ]
.MM] ^
txbErrorTitleMM^ k
,MMk l

PropertiesMMm w
.MMw x
	Resources	MMx Å
.
MMÅ Ç#
lblinvalidCredentials
MMÇ ó
,
MMó ò
Application
MMô §
.
MM§ •
Current
MM• ¨
.
MM¨ ≠

MainWindow
MM≠ ∑
)
MM∑ ∏
;
MM∏ π
}NN 
}OO 
elsePP 
ifPP 
(PP 
resultPP "
.PP" #
ObjectSavedPP# .
==PP/ 1
WRONG_CREDENTIALSPP2 C
)PPC D
{QQ 
dialogMessageRR %
=RR& '
newRR( +$
ErrorMessageDialogWindowRR, D
(RRD E

PropertiesRRE O
.RRO P
	ResourcesRRP Y
.RRY Z
txbErrorTitleRRZ g
,RRg h

PropertiesRRi s
.RRs t
	ResourcesRRt }
.RR} ~ 
MessageSQLException	RR~ ë
,
RRë í
Application
RRì û
.
RRû ü
Current
RRü ¶
.
RR¶ ß

MainWindow
RRß ±
)
RR± ≤
;
RR≤ ≥
}TT 
}UU 
catchVV 
(VV %
EndpointNotFoundExceptionVV 0
exVV1 3
)VV3 4
{WW 
HandleExceptionXX #
(XX# $
exXX$ &
,XX& '

PropertiesXX( 2
.XX2 3
	ResourcesXX3 <
.XX< =
lblEndPointNotFoundXX= P
)XXP Q
;XXQ R
}YY 
catchZZ 
(ZZ /
#CommunicationObjectFaultedExceptionZZ :
exZZ; =
)ZZ= >
{[[ 
HandleException\\ #
(\\# $
ex\\$ &
,\\& '

Properties\\( 2
.\\2 3
	Resources\\3 <
.\\< =$
lblComunicationException\\= U
)\\U V
;\\V W
}]] 
catch^^ 
(^^ 
TimeoutException^^ '
ex^^( *
)^^* +
{__ 
HandleException`` #
(``# $
ex``$ &
,``& '

Properties``( 2
.``2 3
	Resources``3 <
.``< =
lblTimeException``= M
)``M N
;``N O
}aa 
catchbb 
(bb "
CommunicationExceptionbb -
exbb. 0
)bb0 1
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
;ddQ R
}ee 
catchff 
(ff 
SocketExceptionff &
exff' )
)ff) *
{gg 
HandleExceptionhh #
(hh# $
exhh$ &
,hh& '

Propertieshh( 2
.hh2 3
	Resourceshh3 <
.hh< =
lblEndPointNotFoundhh= P
)hhP Q
;hhQ R
}ii 
}jj 
}kk 	
privatemm 
boolmm 
CheckEmptyFieldsmm %
(mm% &
)mm& '
{nn 	
booloo 
answeroo 
=oo 
trueoo 
;oo 
ifpp 
(pp 
stringpp 
.pp 
IsNullOrEmptypp $
(pp$ %
txbUserNameLogInpp% 5
.pp5 6
Textpp6 :
)pp: ;
)pp; <
{qq 
LblWrongUserNamerr  
.rr  !
Contentrr! (
=rr) *

Propertiesrr+ 5
.rr5 6
	Resourcesrr6 ?
.rr? @
LblWrongUserNamerr@ P
;rrP Q
LblWrongUserNamess  
.ss  !

Visibilityss! +
=ss, -

Visibilityss. 8
.ss8 9
Visibless9 @
;ss@ A
answertt 
=tt 
falsett 
;tt 
}uu 
elsevv 
{ww 
LblWrongUserNamexx  
.xx  !

Visibilityxx! +
=xx, -

Visibilityxx. 8
.xx8 9
	Collapsedxx9 B
;xxB C
}yy 
if{{ 
({{ 
string{{ 
.{{ 
IsNullOrEmpty{{ $
({{$ %
pssPasswordLogIn{{% 5
.{{5 6
Password{{6 >
){{> ?
){{? @
{|| 
lblPasswordWrong}}  
.}}  !
Content}}! (
=}}) *

Properties}}+ 5
.}}5 6
	Resources}}6 ?
.}}? @
lblPasswordWrong}}@ P
;}}P Q
lblPasswordWrong~~  
.~~  !

Visibility~~! +
=~~, -

Visibility~~. 8
.~~8 9
Visible~~9 @
;~~@ A
answer 
= 
false 
; 
}
ÄÄ 
else
ÅÅ 
{
ÇÇ 
lblPasswordWrong
ÉÉ  
.
ÉÉ  !

Visibility
ÉÉ! +
=
ÉÉ, -

Visibility
ÉÉ. 8
.
ÉÉ8 9
	Collapsed
ÉÉ9 B
;
ÉÉB C
}
ÑÑ 
return
ÖÖ 
answer
ÖÖ 
;
ÖÖ 
}
ÜÜ 	
private
àà 
void
àà 
DoLogin
àà 
(
àà 
String
àà #
userName
àà$ ,
)
àà, -
{
ââ 	
try
ää 
{
ãã *
ConsultUserInformationClient
åå ,%
consultInformationProxy
åå- D
=
ååE F
new
ååG J*
ConsultUserInformationClient
ååK g
(
ååg h
)
ååh i
;
ååi j
var
çç 
currentUser
çç 
=
çç  !%
consultInformationProxy
çç" 9
.
çç9 :#
ConsultUserByUserName
çç: O
(
ççO P
userName
ççP X
)
ççX Y
;
ççY Z
if
éé 
(
éé 
currentUser
éé 
.
éé  
	CodeEvent
éé  )
==
éé* ,!
ExceptionDictionary
éé- @
.
éé@ A
SUCCESFULL_EVENT
ééA Q
)
ééQ R
{
èè 
var
êê 
currentPlayer
êê %
=
êê& '%
consultInformationProxy
êê( ?
.
êê? @#
ConsultPlayerByIdUser
êê@ U
(
êêU V
currentUser
êêV a
.
êêa b
ObjectSaved
êêb m
.
êêm n
IdUser
êên t
)
êêt u
;
êêu v
if
ëë 
(
ëë 
currentPlayer
ëë %
.
ëë% &
	CodeEvent
ëë& /
==
ëë0 2!
ExceptionDictionary
ëë3 F
.
ëëF G
SUCCESFULL_EVENT
ëëG W
)
ëëW X
{
íí 
if
îî 
(
îî 
currentPlayer
îî )
.
îî) *
ObjectSaved
îî* 5
.
îî5 6
	NoReports
îî6 ?
>=
îî@ B
$num
îîC D
)
îîD E
{
ïï 
dialogMessage
ññ )
=
ññ* +
new
ññ, /&
ErrorMessageDialogWindow
ññ0 H
(
ññH I

Properties
ññI S
.
ññS T
	Resources
ññT ]
.
ññ] ^
txbErrorTitle
ññ^ k
,
ññk l

Properties
ññm w
.
ññw x
	Resourcesññx Å
.ññÅ Ç
lblUserBannerññÇ è
,ññè ê
Applicationññë ú
.ññú ù
Currentññù §
.ññ§ •

MainWindowññ• Ø
)ññØ ∞
;ññ∞ ±
UserSingleton
óó )
.
óó) *
CleanSingleton
óó* 8
(
óó8 9
)
óó9 :
;
óó: ;
return
òò "
;
òò" #
}
ôô 
InstanceSingleton
öö )
(
öö) *
currentUser
öö* 5
.
öö5 6
ObjectSaved
öö6 A
,
ööA B
currentPlayer
ööC P
.
ööP Q
ObjectSaved
ööQ \
)
öö\ ]
;
öö] ^
if
õõ 
(
õõ &
SubscribeToLivingChannel
õõ 4
(
õõ4 5
currentUser
õõ5 @
.
õõ@ A
ObjectSaved
õõA L
)
õõL M
==
õõN P!
ExceptionDictionary
õõQ d
.
õõd e
SUCCESFULL_EVENT
õõe u
)
õõu v
{
úú 
GoToMainMenu
ùù (
(
ùù( )
)
ùù) *
;
ùù* +
}
ûû 
else
üü 
{
†† 
dialogMessage
°° )
=
°°* +
new
°°, /&
ErrorMessageDialogWindow
°°0 H
(
°°H I

Properties
°°I S
.
°°S T
	Resources
°°T ]
.
°°] ^
txbErrorTitle
°°^ k
,
°°k l

Properties
°°m w
.
°°w x
	Resources°°x Å
.°°Å Ç)
lblFailRegistryToCallBack°°Ç õ
,°°õ ú
Application°°ù ®
.°°® ©
Current°°© ∞
.°°∞ ±

MainWindow°°± ª
)°°ª º
;°°º Ω
UserSingleton
¢¢ )
.
¢¢) *
CleanSingleton
¢¢* 8
(
¢¢8 9
)
¢¢9 :
;
¢¢: ;
return
££ "
;
££" #
}
§§ 
}
•• 
else
¶¶ 
{
ßß 
dialogMessage
®® %
=
®®& '
new
®®( +&
ErrorMessageDialogWindow
®®, D
(
®®D E

Properties
®®E O
.
®®O P
	Resources
®®P Y
.
®®Y Z
txbErrorTitle
®®Z g
,
®®g h

Properties
®®i s
.
®®s t
	Resources
®®t }
.
®®} ~"
MessageSQLException®®~ ë
,®®ë í
Application®®ì û
.®®û ü
Current®®ü ¶
.®®¶ ß

MainWindow®®ß ±
)®®± ≤
;®®≤ ≥
}
©© 
}
™™ 
else
´´ 
{
¨¨ 
dialogMessage
≠≠ !
=
≠≠" #
new
≠≠$ '&
ErrorMessageDialogWindow
≠≠( @
(
≠≠@ A

Properties
≠≠A K
.
≠≠K L
	Resources
≠≠L U
.
≠≠U V
txbErrorTitle
≠≠V c
,
≠≠c d

Properties
≠≠e o
.
≠≠o p
	Resources
≠≠p y
.
≠≠y z"
MessageSQLException≠≠z ç
,≠≠ç é
Application≠≠è ö
.≠≠ö õ
Current≠≠õ ¢
.≠≠¢ £

MainWindow≠≠£ ≠
)≠≠≠ Æ
;≠≠Æ Ø
}
ÆÆ 
}
ØØ 
catch
∞∞ 
(
∞∞ '
EndpointNotFoundException
∞∞ ,
ex
∞∞- /
)
∞∞/ 0
{
±± 
HandleException
≤≤ 
(
≤≤  
ex
≤≤  "
,
≤≤" #

Properties
≤≤$ .
.
≤≤. /
	Resources
≤≤/ 8
.
≤≤8 9!
lblEndPointNotFound
≤≤9 L
)
≤≤L M
;
≤≤M N
}
≥≥ 
catch
¥¥ 
(
¥¥ 1
#CommunicationObjectFaultedException
¥¥ 6
ex
¥¥7 9
)
¥¥9 :
{
µµ 
HandleException
∂∂ 
(
∂∂  
ex
∂∂  "
,
∂∂" #

Properties
∂∂$ .
.
∂∂. /
	Resources
∂∂/ 8
.
∂∂8 9&
lblComunicationException
∂∂9 Q
)
∂∂Q R
;
∂∂R S
}
∑∑ 
catch
∏∏ 
(
∏∏ 
TimeoutException
∏∏ #
ex
∏∏$ &
)
∏∏& '
{
ππ 
HandleException
∫∫ 
(
∫∫  
ex
∫∫  "
,
∫∫" #

Properties
∫∫$ .
.
∫∫. /
	Resources
∫∫/ 8
.
∫∫8 9
lblTimeException
∫∫9 I
)
∫∫I J
;
∫∫J K
}
ªª 
catch
ºº 
(
ºº $
CommunicationException
ºº )
ex
ºº* ,
)
ºº, -
{
ΩΩ 
HandleException
ææ 
(
ææ  
ex
ææ  "
,
ææ" #

Properties
ææ$ .
.
ææ. /
	Resources
ææ/ 8
.
ææ8 9!
lblWithoutConection
ææ9 L
)
ææL M
;
ææM N
}
øø 
catch
¿¿ 
(
¿¿ 
SocketException
¿¿ "
ex
¿¿# %
)
¿¿% &
{
¡¡ 
HandleException
¬¬ 
(
¬¬  
ex
¬¬  "
,
¬¬" #

Properties
¬¬$ .
.
¬¬. /
	Resources
¬¬/ 8
.
¬¬8 9!
lblEndPointNotFound
¬¬9 L
)
¬¬L M
;
¬¬M N
}
√√ 
}
ƒƒ 	
private
∆∆ 
int
∆∆ &
SubscribeToLivingChannel
∆∆ ,
(
∆∆, -
UserPojo
∆∆- 5
user
∆∆6 :
)
∆∆: ;
{
«« 	
try
»» 
{
…… 
InstanceContext
   
context
    '
=
  ( )
new
  * -
(
  - .
this
  . 2
)
  2 3
;
  3 4#
CheckUserLivingClient
ÀÀ %#
checkUserLivingClient
ÀÀ& ;
=
ÀÀ< =
new
ÀÀ> A
(
ÀÀA B
context
ÀÀB I
)
ÀÀI J
;
ÀÀJ K
return
ÃÃ #
checkUserLivingClient
ÃÃ ,
.
ÃÃ, -)
SubscribeToICheckUserLiving
ÃÃ- H
(
ÃÃH I
user
ÃÃI M
)
ÃÃM N
;
ÃÃN O
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
œœ 
throw
–– 
ex
–– 
;
–– 
}
—— 
catch
““ 
(
““ 1
#CommunicationObjectFaultedException
““ 6
ex
““7 9
)
““9 :
{
”” 
throw
‘‘ 
ex
‘‘ 
;
‘‘ 
}
’’ 
catch
÷÷ 
(
÷÷ 
TimeoutException
÷÷ #
ex
÷÷$ &
)
÷÷& '
{
◊◊ 
throw
ÿÿ 
ex
ÿÿ 
;
ÿÿ 
}
ŸŸ 
}
⁄⁄ 	
private
‹‹ 
void
‹‹ &
UpdateInterfaceResources
‹‹ -
(
‹‹- .
string
‹‹. 4
selectedLanguage
‹‹5 E
)
‹‹E F
{
›› 	
switch
ﬁﬁ 
(
ﬁﬁ 
selectedLanguage
ﬁﬁ $
)
ﬁﬁ$ %
{
ﬂﬂ 
case
‡‡ 
$str
‡‡ 
:
‡‡ 
if
·· 
(
·· 
lblUserNameLogIn
·· (
!=
··) +
null
··, 0
)
··0 1
lblUserNameLogIn
‚‚ (
.
‚‚( )
Content
‚‚) 0
=
‚‚1 2

Properties
‚‚3 =
.
‚‚= >
	Resources
‚‚> G
.
‚‚G H
lblUserNameLogIn
‚‚H X
;
‚‚X Y
if
‰‰ 
(
‰‰ 
lblPasswordLogIn
‰‰ (
!=
‰‰) +
null
‰‰, 0
)
‰‰0 1
lblPasswordLogIn
ÂÂ (
.
ÂÂ( )
Content
ÂÂ) 0
=
ÂÂ1 2

Properties
ÂÂ3 =
.
ÂÂ= >
	Resources
ÂÂ> G
.
ÂÂG H
lblPasswordLogIn
ÂÂH X
;
ÂÂX Y
if
ÁÁ 
(
ÁÁ 
btnEnter
ÁÁ  
!=
ÁÁ! #
null
ÁÁ$ (
)
ÁÁ( )
btnEnter
ËË  
.
ËË  !
Content
ËË! (
=
ËË) *

Properties
ËË+ 5
.
ËË5 6
	Resources
ËË6 ?
.
ËË? @
btnEnter
ËË@ H
;
ËËH I
if
ÍÍ 
(
ÍÍ 
btnRegistrer
ÍÍ $
!=
ÍÍ% '
null
ÍÍ( ,
)
ÍÍ, -
btnRegistrer
ÎÎ $
.
ÎÎ$ %
Content
ÎÎ% ,
=
ÎÎ- .

Properties
ÎÎ/ 9
.
ÎÎ9 :
	Resources
ÎÎ: C
.
ÎÎC D
btnRegistrer
ÎÎD P
;
ÎÎP Q
break
ÏÏ 
;
ÏÏ 
case
ÓÓ 
$str
ÓÓ 
:
ÓÓ 
default
ÔÔ 
:
ÔÔ 
if
 
(
 
lblUserNameLogIn
 (
!=
) +
null
, 0
)
0 1
lblUserNameLogIn
ÒÒ (
.
ÒÒ( )
Content
ÒÒ) 0
=
ÒÒ1 2

Properties
ÒÒ3 =
.
ÒÒ= >
	Resources
ÒÒ> G
.
ÒÒG H
lblUserNameLogIn
ÒÒH X
;
ÒÒX Y
if
ÛÛ 
(
ÛÛ 
lblPasswordLogIn
ÛÛ (
!=
ÛÛ) +
null
ÛÛ, 0
)
ÛÛ0 1
lblPasswordLogIn
ÙÙ (
.
ÙÙ( )
Content
ÙÙ) 0
=
ÙÙ1 2

Properties
ÙÙ3 =
.
ÙÙ= >
	Resources
ÙÙ> G
.
ÙÙG H
lblPasswordLogIn
ÙÙH X
;
ÙÙX Y
if
ˆˆ 
(
ˆˆ 
btnEnter
ˆˆ  
!=
ˆˆ! #
null
ˆˆ$ (
)
ˆˆ( )
btnEnter
˜˜  
.
˜˜  !
Content
˜˜! (
=
˜˜) *

Properties
˜˜+ 5
.
˜˜5 6
	Resources
˜˜6 ?
.
˜˜? @
btnEnter
˜˜@ H
;
˜˜H I
if
˘˘ 
(
˘˘ 
btnRegistrer
˘˘ $
!=
˘˘% '
null
˘˘( ,
)
˘˘, -
btnRegistrer
˙˙ $
.
˙˙$ %
Content
˙˙% ,
=
˙˙- .

Properties
˙˙/ 9
.
˙˙9 :
	Resources
˙˙: C
.
˙˙C D
btnRegistrer
˙˙D P
;
˙˙P Q
break
˚˚ 
;
˚˚ 
}
¸¸ 
}
˝˝ 	
private
ˇˇ 
void
ˇˇ 
InstanceSingleton
ˇˇ &
(
ˇˇ& '
UserPojo
ˇˇ' /
currentUser
ˇˇ0 ;
,
ˇˇ; <

PlayerPojo
ˇˇ= G
currenPlayer
ˇˇH T
)
ˇˇT U
{
ÄÄ 	
userSingleton
ÅÅ 
=
ÅÅ 
UserSingleton
ÅÅ )
.
ÅÅ) *
GetMainUser
ÅÅ* 5
(
ÅÅ5 6
currentUser
ÅÅ6 A
,
ÅÅA B
currenPlayer
ÅÅC O
)
ÅÅO P
;
ÅÅP Q
}
ÇÇ 	
private
ÑÑ 
void
ÑÑ 
GoToMainMenu
ÑÑ !
(
ÑÑ! "
)
ÑÑ" #
{
ÖÖ 	
MainMenu
ÜÜ 
mainMenuPage
ÜÜ !
=
ÜÜ" #
new
ÜÜ$ '
MainMenu
ÜÜ( 0
(
ÜÜ0 1
)
ÜÜ1 2
;
ÜÜ2 3
this
áá 
.
áá 
NavigationService
áá "
.
áá" #
Navigate
áá# +
(
áá+ ,
mainMenuPage
áá, 8
)
áá8 9
;
áá9 :
NavigationService
àà 
.
àà 
RemoveBackEntry
àà -
(
àà- .
)
àà. /
;
àà/ 0
}
ââ 	
private
ãã 
void
ãã !
CLickButtonRegister
ãã (
(
ãã( )
object
ãã) /
sender
ãã0 6
,
ãã6 7
RoutedEventArgs
ãã8 G
e
ããH I
)
ããI J
{
åå 	
UserRegister
çç 
userRegistryPage
çç )
=
çç* +
new
çç, /
UserRegister
çç0 <
(
çç< =
)
çç= >
;
çç> ?
this
éé 
.
éé 
NavigationService
éé "
.
éé" #
Navigate
éé# +
(
éé+ ,
userRegistryPage
éé, <
)
éé< =
;
éé= >
NavigationService
èè 
.
èè 
RemoveBackEntry
èè -
(
èè- .
)
èè. /
;
èè/ 0
}
êê 	
private
íí 
void
íí 
ClickSingOut
íí !
(
íí! "
object
íí" (
sender
íí) /
,
íí/ 0"
MouseButtonEventArgs
íí1 E
e
ííF G
)
ííG H
{
ìì 	
PrincipalPage
îî 
principalPage
îî '
=
îî( )
new
îî* -
PrincipalPage
îî. ;
(
îî; <
)
îî< =
;
îî= >
this
ïï 
.
ïï 
NavigationService
ïï "
.
ïï" #
Navigate
ïï# +
(
ïï+ ,
principalPage
ïï, 9
)
ïï9 :
;
ïï: ;
NavigationService
ññ 
.
ññ 
RemoveBackEntry
ññ -
(
ññ- .
)
ññ. /
;
ññ/ 0
}
óó 	
private
ôô 
void
ôô 
ClickSeePassword
ôô %
(
ôô% &
object
ôô& ,
sender
ôô- 3
,
ôô3 4"
MouseButtonEventArgs
ôô5 I
e
ôôJ K
)
ôôK L
{
öö 	
lblViewPassword
õõ 
.
õõ 
Content
õõ #
=
õõ$ %
pssPasswordLogIn
õõ& 6
.
õõ6 7
Password
õõ7 ?
.
õõ? @
ToString
õõ@ H
(
õõH I
)
õõI J
;
õõJ K
pssPasswordLogIn
úú 
.
úú 

Visibility
úú '
=
úú( )

Visibility
úú* 4
.
úú4 5
	Collapsed
úú5 >
;
úú> ?
lblViewPassword
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
ùù; <
}
ûû 	
private
†† 
void
†† #
OverLeaveHidePassword
†† *
(
††* +
object
††+ 1
sender
††2 8
,
††8 9
MouseEventArgs
††: H
e
††I J
)
††J K
{
°° 	
if
¢¢ 
(
¢¢ 
lblViewPassword
¢¢ 
.
¢¢  
	IsVisible
¢¢  )
)
¢¢) *
{
££ 
pssPasswordLogIn
§§  
.
§§  !

Visibility
§§! +
=
§§, -

Visibility
§§. 8
.
§§8 9
Visible
§§9 @
;
§§@ A
pssPasswordLogIn
••  
.
••  !
PasswordChar
••! -
=
••. /
$char
••0 3
;
••3 4
pssPasswordLogIn
¶¶  
.
¶¶  !
Password
¶¶! )
=
¶¶* +
(
¶¶, -
string
¶¶- 3
)
¶¶3 4
lblViewPassword
¶¶4 C
.
¶¶C D
Content
¶¶D K
;
¶¶K L
lblViewPassword
ßß 
.
ßß  

Visibility
ßß  *
=
ßß+ ,

Visibility
ßß- 7
.
ßß7 8
	Collapsed
ßß8 A
;
ßßA B
}
®® 
}
©© 	
public
≠≠ 
bool
≠≠ 
IsClientActive
≠≠ "
(
≠≠" #
)
≠≠# $
{
ÆÆ 	
return
ØØ 
(
ØØ 
(
ØØ &
ICheckUserLivingCallback
ØØ -
)
ØØ- .
userSingleton
ØØ. ;
)
ØØ; <
.
ØØ< =
IsClientActive
ØØ= K
(
ØØK L
)
ØØL M
;
ØØM N
}
∞∞ 	
private
≤≤ 
void
≤≤ 
HandleException
≤≤ $
(
≤≤$ %
	Exception
≤≤% .
ex
≤≤/ 1
,
≤≤1 2
string
≤≤3 9
errorMessage
≤≤: F
)
≤≤F G
{
≥≥ 	%
ExceptionHandlerForLogs
¥¥ #
.
¥¥# $
LogException
¥¥$ 0
(
¥¥0 1
ex
¥¥1 3
,
¥¥3 4!
ExceptionDictionary
¥¥5 H
.
¥¥H I
FATAL_EXCEPTION
¥¥I X
)
¥¥X Y
;
¥¥Y Z
dialogMessage
µµ 
=
µµ 
new
µµ &
ErrorMessageDialogWindow
µµ  8
(
µµ8 9

Properties
µµ9 C
.
µµC D
	Resources
µµD M
.
µµM N
txbErrorTitle
µµN [
,
µµ[ \
errorMessage
µµ] i
,
µµi j
Application
µµk v
.
µµv w
Current
µµw ~
.
µµ~ 

MainWindowµµ â
)µµâ ä
;µµä ã
}
∂∂ 	
private
∏∏ 
void
∏∏ !
LanguageButtonClick
∏∏ (
(
∏∏( )
object
∏∏) /
sender
∏∏0 6
,
∏∏6 7
RoutedEventArgs
∏∏8 G
e
∏∏H I
)
∏∏I J
{
ππ 	
if
∫∫ 
(
∫∫ 
LanguageOptions
∫∫ 
.
∫∫  

Visibility
∫∫  *
==
∫∫+ -

Visibility
∫∫. 8
.
∫∫8 9
Visible
∫∫9 @
)
∫∫@ A
{
ªª 
LanguageOptions
ºº 
.
ºº  

Visibility
ºº  *
=
ºº+ ,

Visibility
ºº- 7
.
ºº7 8
Visible
ºº8 ?
;
ºº? @
}
ΩΩ 
else
ææ 
{
øø 
LanguageOptions
¿¿ 
.
¿¿  

Visibility
¿¿  *
=
¿¿+ ,

Visibility
¿¿- 7
.
¿¿7 8
Visible
¿¿8 ?
;
¿¿? @
}
¡¡ 
}
¬¬ 	
private
ƒƒ 
void
ƒƒ 
SelectLanguage
ƒƒ #
(
ƒƒ# $
object
ƒƒ$ *
sender
ƒƒ+ 1
,
ƒƒ1 2
RoutedEventArgs
ƒƒ3 B
e
ƒƒC D
)
ƒƒD E
{
≈≈ 	
System
∆∆ 
.
∆∆ 
Windows
∆∆ 
.
∆∆ 
Controls
∆∆ #
.
∆∆# $
Button
∆∆$ *
selectedButton
∆∆+ 9
=
∆∆: ;
sender
∆∆< B
as
∆∆C E
Button
∆∆F L
;
∆∆L M
string
«« 
selectedLanguage
«« #
=
««$ %
selectedButton
««& 4
.
««4 5
Tag
««5 8
.
««8 9
ToString
««9 A
(
««A B
)
««B C
;
««C D
App
…… 
.
…… 
ChangeLanguage
…… 
(
…… 
selectedLanguage
…… /
)
……/ 0
;
……0 1
RegistryKey
   
key
   
=
   
Registry
   &
.
  & '
CurrentUser
  ' 2
.
  2 3
CreateSubKey
  3 ?
(
  ? @
$str
  @ X
)
  X Y
;
  Y Z
key
ÀÀ 
.
ÀÀ 
SetValue
ÀÀ 
(
ÀÀ 
$str
ÀÀ +
,
ÀÀ+ ,
selectedLanguage
ÀÀ- =
)
ÀÀ= >
;
ÀÀ> ?
key
ÃÃ 
.
ÃÃ 
Close
ÃÃ 
(
ÃÃ 
)
ÃÃ 
;
ÃÃ &
UpdateInterfaceResources
ÕÕ $
(
ÕÕ$ %
selectedLanguage
ÕÕ% 5
)
ÕÕ5 6
;
ÕÕ6 7
LanguageButton
œœ 
.
œœ 
Content
œœ "
=
œœ# $
selectedButton
œœ% 3
.
œœ3 4
Content
œœ4 ;
;
œœ; <
LanguageOptions
—— 
.
—— 

Visibility
—— &
=
——' (

Visibility
——) 3
.
——3 4
	Collapsed
——4 =
;
——= >
}
““ 	
}
‘‘ 
}’’ ≠√
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
;||` a

codeWindow}} 
.}} 
Show}} 
(}} 
)}} 
;}} 
enterGameWithCode~~ 
codePage~~ &
=~~' (
new~~) ,
enterGameWithCode~~- >
(~~> ?
Window~~? E
.~~E F
	GetWindow~~F O
(~~O P
this~~P T
)~~T U
,~~U V
false~~W \
)~~\ ]
;~~] ^

codeWindow 
. 
contentFrame #
.# $
NavigationService$ 5
.5 6
Navigate6 >
(> ?
codePage? G
)G H
;H I
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
ªª 	
if
ºº 
(
ºº 
LanguageOptions
ºº 
.
ºº  

Visibility
ºº  *
==
ºº+ -

Visibility
ºº. 8
.
ºº8 9
Visible
ºº9 @
)
ºº@ A
{
ΩΩ 
LanguageOptions
ææ 
.
ææ  

Visibility
ææ  *
=
ææ+ ,

Visibility
ææ- 7
.
ææ7 8
Visible
ææ8 ?
;
ææ? @
}
øø 
else
¿¿ 
{
¡¡ 
LanguageOptions
¬¬ 
.
¬¬  

Visibility
¬¬  *
=
¬¬+ ,

Visibility
¬¬- 7
.
¬¬7 8
Visible
¬¬8 ?
;
¬¬? @
}
√√ 
}
ƒƒ 	
private
∆∆ 
void
∆∆ 
SelectLanguage
∆∆ #
(
∆∆# $
object
∆∆$ *
sender
∆∆+ 1
,
∆∆1 2
RoutedEventArgs
∆∆3 B
e
∆∆C D
)
∆∆D E
{
«« 	
Button
»» 
selectedButton
»» !
=
»»" #
sender
»»$ *
as
»»+ -
Button
»». 4
;
»»4 5
string
…… 
selectedLanguage
…… #
=
……$ %
selectedButton
……& 4
.
……4 5
Tag
……5 8
.
……8 9
ToString
……9 A
(
……A B
)
……B C
;
……C D
App
ÀÀ 
.
ÀÀ 
ChangeLanguage
ÀÀ 
(
ÀÀ 
selectedLanguage
ÀÀ /
)
ÀÀ/ 0
;
ÀÀ0 1
RegistryKey
ÃÃ 
key
ÃÃ 
=
ÃÃ 
Registry
ÃÃ &
.
ÃÃ& '
CurrentUser
ÃÃ' 2
.
ÃÃ2 3
CreateSubKey
ÃÃ3 ?
(
ÃÃ? @
$str
ÃÃ@ X
)
ÃÃX Y
;
ÃÃY Z
key
ÕÕ 
.
ÕÕ 
SetValue
ÕÕ 
(
ÕÕ 
$str
ÕÕ +
,
ÕÕ+ ,
selectedLanguage
ÕÕ- =
)
ÕÕ= >
;
ÕÕ> ?
key
ŒŒ 
.
ŒŒ 
Close
ŒŒ 
(
ŒŒ 
)
ŒŒ 
;
ŒŒ &
UpdateInterfaceResources
œœ $
(
œœ$ %
selectedLanguage
œœ% 5
)
œœ5 6
;
œœ6 7
LanguageButton
—— 
.
—— 
Content
—— "
=
——# $
selectedButton
——% 3
.
——3 4
Content
——4 ;
;
——; <
LanguageOptions
”” 
.
”” 

Visibility
”” &
=
””' (

Visibility
””) 3
.
””3 4
	Collapsed
””4 =
;
””= >
}
‘‘ 	
private
÷÷ 
void
÷÷ &
UpdateInterfaceResources
÷÷ -
(
÷÷- .
string
÷÷. 4
selectedLanguage
÷÷5 E
)
÷÷E F
{
◊◊ 	
switch
ÿÿ 
(
ÿÿ 
selectedLanguage
ÿÿ $
)
ÿÿ$ %
{
ŸŸ 
case
⁄⁄ 
$str
⁄⁄ 
:
⁄⁄ 
if
€€ 
(
€€ 
bttEnterGame
€€ $
!=
€€% '
null
€€( ,
)
€€, -
bttEnterGame
‹‹ $
.
‹‹$ %
Content
‹‹% ,
=
‹‹- .

Properties
‹‹/ 9
.
‹‹9 :
	Resources
‹‹: C
.
‹‹C D
bttEnterGame
‹‹D P
;
‹‹P Q
if
ﬁﬁ 
(
ﬁﬁ 

bttFriends
ﬁﬁ "
!=
ﬁﬁ# %
null
ﬁﬁ& *
)
ﬁﬁ* +

bttFriends
ﬂﬂ "
.
ﬂﬂ" #
Content
ﬂﬂ# *
=
ﬂﬂ+ ,

Properties
ﬂﬂ- 7
.
ﬂﬂ7 8
	Resources
ﬂﬂ8 A
.
ﬂﬂA B

bttFriends
ﬂﬂB L
;
ﬂﬂL M
if
·· 
(
·· 

bttNewGame
·· "
!=
··# %
null
··& *
)
··* +

bttNewGame
‚‚ "
.
‚‚" #
Content
‚‚# *
=
‚‚+ ,

Properties
‚‚- 7
.
‚‚7 8
	Resources
‚‚8 A
.
‚‚A B

bttNewGame
‚‚B L
;
‚‚L M
if
‰‰ 
(
‰‰ #
lblProfileInformation
‰‰ -
!=
‰‰. 0
null
‰‰1 5
)
‰‰5 6#
lblProfileInformation
ÂÂ -
.
ÂÂ- .
Content
ÂÂ. 5
=
ÂÂ6 7

Properties
ÂÂ8 B
.
ÂÂB C
	Resources
ÂÂC L
.
ÂÂL M#
lblProfileInformation
ÂÂM b
;
ÂÂb c
break
ÊÊ 
;
ÊÊ 
case
ËË 
$str
ËË 
:
ËË 
default
ÈÈ 
:
ÈÈ 
if
ÍÍ 
(
ÍÍ 
bttEnterGame
ÍÍ #
!=
ÍÍ$ &
null
ÍÍ' +
)
ÍÍ+ ,
bttEnterGame
ÎÎ %
.
ÎÎ% &
Content
ÎÎ& -
=
ÎÎ. /

Properties
ÎÎ0 :
.
ÎÎ: ;
	Resources
ÎÎ; D
.
ÎÎD E
bttEnterGame
ÎÎE Q
;
ÎÎQ R
if
ÌÌ 
(
ÌÌ 

bttFriends
ÌÌ "
!=
ÌÌ# %
null
ÌÌ& *
)
ÌÌ* +

bttFriends
ÓÓ "
.
ÓÓ" #
Content
ÓÓ# *
=
ÓÓ+ ,

Properties
ÓÓ- 7
.
ÓÓ7 8
	Resources
ÓÓ8 A
.
ÓÓA B

bttFriends
ÓÓB L
;
ÓÓL M
if
 
(
 

bttNewGame
 "
!=
# %
null
& *
)
* +

bttNewGame
ÒÒ "
.
ÒÒ" #
Content
ÒÒ# *
=
ÒÒ+ ,

Properties
ÒÒ- 7
.
ÒÒ7 8
	Resources
ÒÒ8 A
.
ÒÒA B

bttNewGame
ÒÒB L
;
ÒÒL M
if
ÛÛ 
(
ÛÛ #
lblProfileInformation
ÛÛ -
!=
ÛÛ. 0
null
ÛÛ1 5
)
ÛÛ5 6#
lblProfileInformation
ÙÙ -
.
ÙÙ- .
Content
ÙÙ. 5
=
ÙÙ6 7

Properties
ÙÙ8 B
.
ÙÙB C
	Resources
ÙÙC L
.
ÙÙL M#
lblProfileInformation
ÙÙM b
;
ÙÙb c
break
ıı 
;
ıı 
}
ˆˆ 
}
˜˜ 	
private
˘˘ 
void
˘˘ 

ReturnPage
˘˘ 
(
˘˘  
)
˘˘  !
{
˙˙ 	%
NotifyFriendsIamLeaving
˚˚ #
(
˚˚# $
)
˚˚$ %
;
˚˚% &#
CleanGlobalParameters
¸¸ !
(
¸¸! "
)
¸¸" #
;
¸¸# $
	LogInUser
˝˝ 
	logInPage
˝˝ 
=
˝˝  !
new
˝˝" %
	LogInUser
˝˝& /
(
˝˝/ 0
)
˝˝0 1
;
˝˝1 2
this
˛˛ 
.
˛˛ 
NavigationService
˛˛ "
.
˛˛" #
Navigate
˛˛# +
(
˛˛+ ,
	logInPage
˛˛, 5
)
˛˛5 6
;
˛˛6 7
NavigationService
ˇˇ 
.
ˇˇ 
RemoveBackEntry
ˇˇ -
(
ˇˇ- .
)
ˇˇ. /
;
ˇˇ/ 0
}
ÄÄ 	
private
ÇÇ 
void
ÇÇ %
NotifyFriendsIamLeaving
ÇÇ ,
(
ÇÇ, -
)
ÇÇ- .
{
ÉÉ 	
try
ÑÑ 
{
ÖÖ .
 CheckUserLivingUnsubscribeClient
ÜÜ 0#
checkUserLivingClient
ÜÜ1 F
=
ÜÜG H
new
ÜÜI L
(
ÜÜL M
)
ÜÜM N
;
ÜÜN O#
checkUserLivingClient
áá %
.
áá% &-
UnsubscribeFromICheckUserLiving
áá& E
(
ááE F
UserSingleton
ááF S
.
ááS T"
GetUserPojoSingelton
ááT h
(
ááh i
)
áái j
)
ááj k
;
áák l
}
àà 
catch
ââ 
(
ââ '
EndpointNotFoundException
ââ ,
ex
ââ- /
)
ââ/ 0
{
ää %
ExceptionHandlerForLogs
ãã '
.
ãã' (
LogException
ãã( 4
(
ãã4 5
ex
ãã5 7
,
ãã7 8!
ExceptionDictionary
ãã9 L
.
ããL M
FATAL_EXCEPTION
ããM \
)
ãã\ ]
;
ãã] ^
}
åå 
catch
çç 
(
çç 1
#CommunicationObjectFaultedException
çç 6
ex
çç7 9
)
çç9 :
{
éé %
ExceptionHandlerForLogs
èè '
.
èè' (
LogException
èè( 4
(
èè4 5
ex
èè5 7
,
èè7 8!
ExceptionDictionary
èè9 L
.
èèL M
FATAL_EXCEPTION
èèM \
)
èè\ ]
;
èè] ^
}
êê 
catch
ëë 
(
ëë 
TimeoutException
ëë #
ex
ëë$ &
)
ëë& '
{
íí %
ExceptionHandlerForLogs
ìì '
.
ìì' (
LogException
ìì( 4
(
ìì4 5
ex
ìì5 7
,
ìì7 8!
ExceptionDictionary
ìì9 L
.
ììL M
FATAL_EXCEPTION
ììM \
)
ìì\ ]
;
ìì] ^
}
îî 
catch
ïï 
(
ïï $
CommunicationException
ïï )
ex
ïï* ,
)
ïï, -
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
ôô 
SocketException
ôô "
ex
ôô# %
)
ôô% &
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
úú 
}
ùù 	
}
†† 
}°° §
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
}## –ú
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
;// 
txbUserName00 
.00 
	MaxLength00 !
=00" #
$num00$ &
;00& '
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
;AA; <
txbUserNameBB 
.BB 
PreviewTextInputBB (
+=BB) +&
EntryTextBoxCharValidationBB, F
;BBF G
txbUserNameCC 
.CC 
PreviewKeyDownCC &
+=CC' )
EntryTextBoxPasteCC* ;
;CC; <
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
;IIa b
ifJJ 
(JJ 
(JJ %
regularExpressionsLibraryJJ *
.JJ* +$
ValidationTextBoxRegexesJJ+ C
.JJC D
TryGetValueJJD O
(JJO P
currentTextBoxJJP ^
.JJ^ _
NameJJ_ c
,JJc d
outJJe h
RegexJJi n
regexJJo t
)JJt u
)JJu v
&&JJw y
(JJz {
!JJ{ |
regex	JJ| Å
.
JJÅ Ç
IsMatch
JJÇ â
(
JJâ ä
currentTextBox
JJä ò
.
JJò ô
Text
JJô ù
+
JJû ü
e
JJ† °
.
JJ° ¢
Text
JJ¢ ¶
)
JJ¶ ß
)
JJß ®
)
JJ® ©
{KK 
eLL 
.LL 
HandledLL 
=LL 
trueLL  
;LL  !
}MM 
}NN 	
privateOO 
voidOO 
EntryTextBoxPasteOO &
(OO& '
objectOO' -
senderOO. 4
,OO4 5
KeyEventArgsOO6 B
eOOC D
)OOD E
{PP 	
ifQQ 
(QQ 
(QQ 
KeyboardQQ 
.QQ 
	ModifiersQQ #
&QQ$ %
ModifierKeysQQ& 2
.QQ2 3
ControlQQ3 :
)QQ: ;
==QQ< >
ModifierKeysQQ? K
.QQK L
ControlQQL S
&&QQT V
(QQW X
eQQX Y
.QQY Z
KeyQQZ ]
==QQ^ `
KeyQQa d
.QQd e
VQQe f
)QQf g
)QQg h
{RR 
eSS 
.SS 
HandledSS 
=SS 
trueSS  
;SS  !
}TT 
}UU 	
privateWW 
voidWW 
CreateRuleLabelsWW %
(WW% &
)WW& '
{XX 	
LabelYY !
lblPasswordLengthRuleYY '
=YY( )
newYY* -
LabelYY. 3
(YY3 4
)YY4 5
;YY5 6!
lblPasswordLengthRuleZZ !
.ZZ! "
ContentZZ" )
=ZZ* +

PropertiesZZ, 6
.ZZ6 7
	ResourcesZZ7 @
.ZZ@ A!
lblPassLengthRuleDescZZA V
;ZZV W!
lblPasswordLengthRule[[ !
.[[! "

Foreground[[" ,
=[[- .
Brushes[[/ 6
.[[6 7
White[[7 <
;[[< =!
lblPasswordLengthRule\\ !
.\\! "
FontSize\\" *
=\\+ ,
$num\\- /
;\\/ 0
Label]] "
lblPasswordNumbersRule]] (
=]]) *
new]]+ .
Label]]/ 4
(]]4 5
)]]5 6
;]]6 7"
lblPasswordNumbersRule^^ "
.^^" #
Content^^# *
=^^+ ,

Properties^^- 7
.^^7 8
	Resources^^8 A
.^^A B!
lblPassNumberRuleDesc^^B W
;^^W X"
lblPasswordNumbersRule__ "
.__" #

Foreground__# -
=__. /
Brushes__0 7
.__7 8
White__8 =
;__= >"
lblPasswordNumbersRule`` "
.``" #
FontSize``# +
=``, -
$num``. 0
;``0 1
Labelaa #
lblPasswordCapitalsRuleaa )
=aa* +
newaa, /
Labelaa0 5
(aa5 6
)aa6 7
;aa7 8#
lblPasswordCapitalsRulebb #
.bb# $
Contentbb$ +
=bb, -

Propertiesbb. 8
.bb8 9
	Resourcesbb9 B
.bbB C"
lblPassCapitalRuleDescbbC Y
;bbY Z#
lblPasswordCapitalsRulecc #
.cc# $

Foregroundcc$ .
=cc/ 0
Brushescc1 8
.cc8 9
Whitecc9 >
;cc> ?#
lblPasswordCapitalsRuledd #
.dd# $
FontSizedd$ ,
=dd- .
$numdd/ 1
;dd1 2
Labelee "
lblPasswordSpeCharRuleee (
=ee) *
newee+ .
Labelee/ 4
(ee4 5
)ee5 6
;ee6 7"
lblPasswordSpeCharRuleff "
.ff" #
Contentff# *
=ff+ ,

Propertiesff- 7
.ff7 8
	Resourcesff8 A
.ffA B"
lblPassSpeCharRuleDescffB X
;ffX Y"
lblPasswordSpeCharRulegg "
.gg" #

Foregroundgg# -
=gg. /
Brushesgg0 7
.gg7 8
Whitegg8 =
;gg= >"
lblPasswordSpeCharRulehh "
.hh" #
FontSizehh# +
=hh, -
$numhh. 0
;hh0 1
Labelii &
lblPasswordPunctuationRuleii ,
=ii- .
newii/ 2
Labelii3 8
(ii8 9
)ii9 :
;ii: ;&
lblPasswordPunctuationRulejj &
.jj& '
Contentjj' .
=jj/ 0

Propertiesjj1 ;
.jj; <
	Resourcesjj< E
.jjE F"
lblPassPuntSigRuleDescjjF \
;jj\ ]&
lblPasswordPunctuationRulekk &
.kk& '

Foregroundkk' 1
=kk2 3
Brusheskk4 ;
.kk; <
Whitekk< A
;kkA B&
lblPasswordPunctuationRulell &
.ll& '
FontSizell' /
=ll0 1
$numll2 4
;ll4 5
Labelmm $
lblPasswordSameEmailRulemm *
=mm+ ,
newmm- 0
Labelmm1 6
(mm6 7
)mm7 8
;mm8 9$
lblPasswordSameEmailRulenn $
.nn$ %
Contentnn% ,
=nn- .

Propertiesnn/ 9
.nn9 :
	Resourcesnn: C
.nnC D&
lblPassEqualsEmailRuleDescnnD ^
;nn^ _$
lblPasswordSameEmailRuleoo $
.oo$ %

Foregroundoo% /
=oo0 1
Brushesoo2 9
.oo9 :
Whiteoo: ?
;oo? @$
lblPasswordSameEmailRulepp $
.pp$ %
FontSizepp% -
=pp. /
$numpp0 2
;pp2 3
ListBoxRulesqq 
.qq 
Addqq 
(qq !
lblPasswordLengthRuleqq 2
)qq2 3
;qq3 4
ListBoxRulesrr 
.rr 
Addrr 
(rr "
lblPasswordNumbersRulerr 3
)rr3 4
;rr4 5
ListBoxRulesss 
.ss 
Addss 
(ss #
lblPasswordCapitalsRuless 4
)ss4 5
;ss5 6
ListBoxRulestt 
.tt 
Addtt 
(tt "
lblPasswordSpeCharRulett 3
)tt3 4
;tt4 5
ListBoxRulesuu 
.uu 
Adduu 
(uu &
lblPasswordPunctuationRuleuu 7
)uu7 8
;uu8 9
ListBoxRulesvv 
.vv 
Addvv 
(vv $
lblPasswordSameEmailRulevv 5
)vv5 6
;vv6 7
}ww 	
privatezz 
intzz 
CheckEmptyFieldszz $
(zz$ %
Labelzz% *
warningLabelzz+ 7
,zz7 8
TextBoxzz9 @

txbToCheckzzA K
)zzK L
{{{ 	
int|| 
answer|| 
=|| 
ALLOWED_VALUES|| '
;||' (
if}} 
(}} 
string}} 
.}} 
IsNullOrEmpty}} $
(}}$ %

txbToCheck}}% /
.}}/ 0
Text}}0 4
.}}4 5
Trim}}5 9
(}}9 :
)}}: ;
)}}; <
)}}< =
{~~ 
warningLabel 
. 

Visibility '
=( )

Visibility* 4
.4 5
Visible5 <
;< =
answer
ÄÄ 
=
ÄÄ 
DISALLOWED_VALUES
ÄÄ *
;
ÄÄ* +
}
ÅÅ 
else
ÇÇ 
{
ÉÉ 
warningLabel
ÑÑ 
.
ÑÑ 

Visibility
ÑÑ '
=
ÑÑ( )

Visibility
ÑÑ* 4
.
ÑÑ4 5
	Collapsed
ÑÑ5 >
;
ÑÑ> ?
}
ÖÖ 
return
ÜÜ 
answer
ÜÜ 
;
ÜÜ 
}
áá 	
private
ââ 
void
ââ "
ClickConfirmUserName
ââ )
(
ââ) *
object
ââ* 0
sender
ââ1 7
,
ââ7 8
RoutedEventArgs
ââ9 H
e
ââI J
)
ââJ K
{
ää 	
if
ãã 
(
ãã 
CheckEmptyFields
ãã 
(
ãã  
lblUserNamWarning
ãã  1
,
ãã1 2
txbUserName
ãã3 >
)
ãã> ?
==
ãã@ B
ALLOWED_VALUES
ããC Q
)
ããQ R
{
åå 
try
çç 
{
éé #
RecoverPasswordClient
èè )"
recoverPasswordProxy
èè* >
=
èè? @
new
èèA D#
RecoverPasswordClient
èèE Z
(
èèZ [
)
èè[ \
;
èè\ ]
int
êê 
succes
êê 
=
êê  "
recoverPasswordProxy
êê! 5
.
êê5 6)
CreateCodeToRecoverPassWord
êê6 Q
(
êêQ R
txbUserName
êêR ]
.
êê] ^
Text
êê^ b
,
êêb c

Properties
êêd n
.
êên o
	Resources
êêo x
.
êêx y
EmailSubjectCodeêêy â
,êêâ ä

Propertiesêêã ï
.êêï ñ
	Resourcesêêñ ü
.êêü †&
RecoverPasswordMessageêê† ∂
)êê∂ ∑
;êê∑ ∏
if
ëë 
(
ëë 
succes
ëë 
==
ëë  !
ExceptionDictionary
ëë! 4
.
ëë4 5
SUCCESFULL_EVENT
ëë5 E
||
ëëF H!
ExceptionDictionary
ëëI \
.
ëë\ ]$
USERNAME_ALREADY_EXIST
ëë] s
==
ëët v
succes
ëëw }
)
ëë} ~
{
íí 
currentUserName
ìì '
=
ìì( )
txbUserName
ìì* 5
.
ìì5 6
Text
ìì6 :
.
ìì: ;
Trim
ìì; ?
(
ìì? @
)
ìì@ A
;
ììA B
bttConfirmCode
îî &
.
îî& '
	IsEnabled
îî' 0
=
îî1 2
true
îî3 7
;
îî7 8 
bttConfirmUserName
ïï *
.
ïï* +
	IsEnabled
ïï+ 4
=
ïï5 6
false
ïï7 <
;
ïï< =
txbUserName
ññ #
.
ññ# $
	IsEnabled
ññ$ -
=
ññ. /
false
ññ0 5
;
ññ5 6
bttSaveUser
óó #
.
óó# $
	IsEnabled
óó$ -
=
óó. /
false
óó0 5
;
óó5 6

StartTimer
òò "
(
òò" #
)
òò# $
;
òò$ %
if
ôô 
(
ôô 
succes
ôô "
==
ôô# %!
ExceptionDictionary
ôô& 9
.
ôô9 :$
USERNAME_ALREADY_EXIST
ôô: P
)
ôôP Q
{
öö 
dialogMessage
õõ )
=
õõ* +
new
õõ, /&
ErrorMessageDialogWindow
õõ0 H
(
õõH I

Properties
õõI S
.
õõS T
	Resources
õõT ]
.
õõ] ^
txbErrorTitle
õõ^ k
,
õõk l

Properties
õõm w
.
õõw x
	Resourcesõõx Å
.õõÅ Ç4
$lblAlreadyExistACodeToChangePasswordõõÇ ¶
,õõ¶ ß
Windowõõ® Æ
.õõÆ Ø
	GetWindowõõØ ∏
(õõ∏ π
thisõõπ Ω
)õõΩ æ
)õõæ ø
;õõø ¿
}
úú 
else
ùù 
{
ûû 
dialogMessage
üü )
=
üü* +
new
üü, /,
InformationMessageDialogWindow
üü0 N
(
üüN O

Properties
üüO Y
.
üüY Z
	Resources
üüZ c
.
üüc d!
txbInformationTitle
üüd w
,
üüw x

Propertiesüüy É
.üüÉ Ñ
	ResourcesüüÑ ç
.üüç é3
#lblEmailCodePassWordSendSuccesfullyüüé ±
,üü± ≤
Windowüü≥ π
.üüπ ∫
	GetWindowüü∫ √
(üü√ ƒ
thisüüƒ »
)üü» …
)üü…  
;üü  À
}
†† 
}
°° 
else
¢¢ 
if
¢¢ 
(
¢¢ 
succes
¢¢ "
==
¢¢# %!
ExceptionDictionary
¢¢& 9
.
¢¢9 :
NULL_PARAEMETER
¢¢: I
)
¢¢I J
{
££ 
dialogMessage
§§ %
=
§§& '
new
§§( +&
ErrorMessageDialogWindow
§§, D
(
§§D E

Properties
§§E O
.
§§O P
	Resources
§§P Y
.
§§Y Z
txbErrorTitle
§§Z g
,
§§g h

Properties
§§i s
.
§§s t
	Resources
§§t }
.
§§} ~&
lblUserNameDoesNotExist§§~ ï
,§§ï ñ
Window§§ó ù
.§§ù û
	GetWindow§§û ß
(§§ß ®
this§§® ¨
)§§¨ ≠
)§§≠ Æ
;§§Æ Ø
}
•• 
else
¶¶ 
{
ßß 
dialogMessage
®® %
=
®®& '
new
®®( +&
ErrorMessageDialogWindow
®®, D
(
®®D E

Properties
®®E O
.
®®O P
	Resources
®®P Y
.
®®Y Z
txbErrorTitle
®®Z g
,
®®g h

Properties
®®i s
.
®®s t
	Resources
®®t }
.
®®} ~ 
GenericEmailIssue®®~ è
,®®è ê
Window®®ë ó
.®®ó ò
	GetWindow®®ò °
(®®° ¢
this®®¢ ¶
)®®¶ ß
)®®ß ®
;®®® ©
}
©© 
}
™™ 
catch
´´ 
(
´´ '
EndpointNotFoundException
´´ 0
ex
´´1 3
)
´´3 4
{
¨¨ 
HandleException
≠≠ #
(
≠≠# $
ex
≠≠$ &
,
≠≠& '

Properties
≠≠( 2
.
≠≠2 3
	Resources
≠≠3 <
.
≠≠< =
GenericEmailIssue
≠≠= N
+
≠≠O P
$str
≠≠Q T
+
≠≠U V

Properties
≠≠W a
.
≠≠a b
	Resources
≠≠b k
.
≠≠k l!
lblEndPointNotFound
≠≠l 
)≠≠ Ä
;≠≠Ä Å
}
ØØ 
catch
∞∞ 
(
∞∞ 1
#CommunicationObjectFaultedException
∞∞ :
ex
∞∞; =
)
∞∞= >
{
±± 
HandleException
≤≤ #
(
≤≤# $
ex
≤≤$ &
,
≤≤& '

Properties
≤≤( 2
.
≤≤2 3
	Resources
≤≤3 <
.
≤≤< =
GenericEmailIssue
≤≤= N
+
≤≤O P
$str
≤≤Q T
+
≤≤U V

Properties
≤≤W a
.
≤≤a b
	Resources
≤≤b k
.
≤≤k l'
lblComunicationException≤≤l Ñ
)≤≤Ñ Ö
;≤≤Ö Ü
}
≥≥ 
catch
¥¥ 
(
¥¥ 
TimeoutException
¥¥ '
ex
¥¥( *
)
¥¥* +
{
µµ 
HandleException
∂∂ #
(
∂∂# $
ex
∂∂$ &
,
∂∂& '

Properties
∂∂( 2
.
∂∂2 3
	Resources
∂∂3 <
.
∂∂< =
GenericEmailIssue
∂∂= N
+
∂∂O P
$str
∂∂Q T
+
∂∂U V

Properties
∂∂W a
.
∂∂a b
	Resources
∂∂b k
.
∂∂k l
lblTimeException
∂∂l |
)
∂∂| }
;
∂∂} ~
}
∑∑ 
catch
∏∏ 
(
∏∏ $
CommunicationException
∏∏ -
ex
∏∏. 0
)
∏∏0 1
{
ππ 
HandleException
∫∫ #
(
∫∫# $
ex
∫∫$ &
,
∫∫& '

Properties
∫∫( 2
.
∫∫2 3
	Resources
∫∫3 <
.
∫∫< =
GenericEmailIssue
∫∫= N
+
∫∫O P
$str
∫∫Q T
+
∫∫U V

Properties
∫∫W a
.
∫∫a b
	Resources
∫∫b k
.
∫∫k l!
lblWithoutConection
∫∫l 
)∫∫ Ä
;∫∫Ä Å
}
ªª 
catch
ºº 
(
ºº 
SocketException
ºº &
ex
ºº' )
)
ºº) *
{
ΩΩ 
HandleException
ææ #
(
ææ# $
ex
ææ$ &
,
ææ& '

Properties
ææ( 2
.
ææ2 3
	Resources
ææ3 <
.
ææ< =
GenericEmailIssue
ææ= N
+
ææO P
$str
ææQ T
+
ææU V

Properties
ææW a
.
ææa b
	Resources
ææb k
.
ææk l!
lblEndPointNotFound
ææl 
)ææ Ä
;ææÄ Å
}
øø 
}
¿¿ 
}
¡¡ 	
private
√√ 
void
√√ 
CLickConfirmCode
√√ %
(
√√% &
object
√√& ,
sender
√√- 3
,
√√3 4
RoutedEventArgs
√√5 D
e
√√E F
)
√√F G
{
ƒƒ 	
if
≈≈ 
(
≈≈ 
CheckEmptyFields
≈≈  
(
≈≈  !
lblCodeNamWarning
≈≈! 2
,
≈≈2 3
txbCode
≈≈4 ;
)
≈≈; <
==
≈≈= ?
ALLOWED_VALUES
≈≈@ N
)
≈≈N O
{
∆∆ 
try
«« 
{
»» #
RecoverPasswordClient
…… )"
recoverPasswordProxy
……* >
=
……? @
new
……A D#
RecoverPasswordClient
……E Z
(
……Z [
)
……[ \
;
……\ ]
int
   
succes
   
=
    "
recoverPasswordProxy
  ! 5
.
  5 6)
VerifyCodeToRecoverPassword
  6 Q
(
  Q R
currentUserName
  R a
,
  a b
txbCode
  c j
.
  j k
Text
  k o
.
  o p
Trim
  p t
(
  t u
)
  u v
)
  v w
;
  w x
if
ÀÀ 
(
ÀÀ 
succes
ÀÀ 
==
ÀÀ !!
ExceptionDictionary
ÀÀ" 5
.
ÀÀ5 6
SUCCESFULL_EVENT
ÀÀ6 F
)
ÀÀF G
{
ÃÃ 
bttConfirmCode
ÕÕ &
.
ÕÕ& '
	IsEnabled
ÕÕ' 0
=
ÕÕ1 2
false
ÕÕ3 8
;
ÕÕ8 9 
bttConfirmUserName
ŒŒ *
.
ŒŒ* +
	IsEnabled
ŒŒ+ 4
=
ŒŒ5 6
false
ŒŒ7 <
;
ŒŒ< =
txbUserName
œœ #
.
œœ# $
	IsEnabled
œœ$ -
=
œœ. /
false
œœ0 5
;
œœ5 6
txbCode
–– 
.
––  
	IsEnabled
––  )
=
––* +
false
––, 1
;
––1 2
bttSaveUser
—— #
.
——# $
	IsEnabled
——$ -
=
——. /
true
——0 4
;
——4 5
dialogMessage
““ %
=
““& '
new
““( +,
InformationMessageDialogWindow
““, J
(
““J K

Properties
““K U
.
““U V
	Resources
““V _
.
““_ `!
txbInformationTitle
““` s
,
““s t

Properties
““u 
.““ Ä
	Resources““Ä â
.““â ä$
lblRigthCodePassword““ä û
,““û ü
Window““† ¶
.““¶ ß
	GetWindow““ß ∞
(““∞ ±
this““± µ
)““µ ∂
)““∂ ∑
;““∑ ∏
}
‘‘ 
else
’’ 
if
’’ 
(
’’ 
succes
’’ #
==
’’$ &!
ExceptionDictionary
’’' :
.
’’: ;
NULL_PARAEMETER
’’; J
)
’’J K
{
÷÷ 
dialogMessage
◊◊ %
=
◊◊& '
new
◊◊( +&
ErrorMessageDialogWindow
◊◊, D
(
◊◊D E

Properties
◊◊E O
.
◊◊O P
	Resources
◊◊P Y
.
◊◊Y Z
txbErrorTitle
◊◊Z g
,
◊◊g h

Properties
◊◊i s
.
◊◊s t
	Resources
◊◊t }
.
◊◊} ~&
lblUserNameDoesNotExist◊◊~ ï
,◊◊ï ñ
Window◊◊ó ù
.◊◊ù û
	GetWindow◊◊û ß
(◊◊ß ®
this◊◊® ¨
)◊◊¨ ≠
)◊◊≠ Æ
;◊◊Æ Ø
}
ÿÿ 
else
ŸŸ 
if
ŸŸ 
(
ŸŸ 
succes
ŸŸ #
==
ŸŸ$ &!
ExceptionDictionary
ŸŸ' :
.
ŸŸ: ;
ARGUMENT_NULL
ŸŸ; H
)
ŸŸH I
{
⁄⁄ 
dialogMessage
€€ %
=
€€& '
new
€€( +&
ErrorMessageDialogWindow
€€, D
(
€€D E

Properties
€€E O
.
€€O P
	Resources
€€P Y
.
€€Y Z
txbErrorTitle
€€Z g
,
€€g h

Properties
€€i s
.
€€s t
	Resources
€€t }
.
€€} ~)
lblThereIsnoCodeFoThisUser€€~ ò
,€€ò ô
Window€€ö †
.€€† °
	GetWindow€€° ™
(€€™ ´
this€€´ Ø
)€€Ø ∞
)€€∞ ±
;€€± ≤
}
‹‹ 
else
›› 
if
›› 
(
›› 
succes
›› #
==
››$ &!
ExceptionDictionary
››' :
.
››: ;
INVALID_OPERATION
››; L
)
››L M
{
ﬁﬁ 
dialogMessage
ﬂﬂ %
=
ﬂﬂ& '
new
ﬂﬂ( +&
ErrorMessageDialogWindow
ﬂﬂ, D
(
ﬂﬂD E

Properties
ﬂﬂE O
.
ﬂﬂO P
	Resources
ﬂﬂP Y
.
ﬂﬂY Z
txbErrorTitle
ﬂﬂZ g
,
ﬂﬂg h

Properties
ﬂﬂi s
.
ﬂﬂs t
	Resources
ﬂﬂt }
.
ﬂﬂ} ~"
lblWrongCodeEnteredﬂﬂ~ ë
,ﬂﬂë í
Windowﬂﬂì ô
.ﬂﬂô ö
	GetWindowﬂﬂö £
(ﬂﬂ£ §
thisﬂﬂ§ ®
)ﬂﬂ® ©
)ﬂﬂ© ™
;ﬂﬂ™ ´
}
‡‡ 
else
·· 
{
‚‚ 
dialogMessage
„„ %
=
„„& '
new
„„( +&
ErrorMessageDialogWindow
„„, D
(
„„D E

Properties
„„E O
.
„„O P
	Resources
„„P Y
.
„„Y Z
txbErrorTitle
„„Z g
,
„„g h

Properties
„„i s
.
„„s t
	Resources
„„t }
.
„„} ~%
lblFailToVerifyTheCode„„~ î
,„„î ï
Window„„ñ ú
.„„ú ù
	GetWindow„„ù ¶
(„„¶ ß
this„„ß ´
)„„´ ¨
)„„¨ ≠
;„„≠ Æ
}
‰‰ 
}
ÂÂ 
catch
ÊÊ 
(
ÊÊ '
EndpointNotFoundException
ÊÊ 0
ex
ÊÊ1 3
)
ÊÊ3 4
{
ÁÁ 
HandleException
ËË #
(
ËË# $
ex
ËË$ &
,
ËË& '

Properties
ËË( 2
.
ËË2 3
	Resources
ËË3 <
.
ËË< =$
lblFailToVerifyTheCode
ËË= S
+
ËËT U
$str
ËËV Y
+
ËËZ [

Properties
ËË\ f
.
ËËf g
	Resources
ËËg p
.
ËËp q"
lblEndPointNotFoundËËq Ñ
)ËËÑ Ö
;ËËÖ Ü
}
ÍÍ 
catch
ÎÎ 
(
ÎÎ 1
#CommunicationObjectFaultedException
ÎÎ :
ex
ÎÎ; =
)
ÎÎ= >
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
ÌÌ< =$
lblFailToVerifyTheCode
ÌÌ= S
+
ÌÌT U
$str
ÌÌV Y
+
ÌÌZ [

Properties
ÌÌ\ f
.
ÌÌf g
	Resources
ÌÌg p
.
ÌÌp q'
lblComunicationExceptionÌÌq â
)ÌÌâ ä
;ÌÌä ã
}
ÓÓ 
catch
ÔÔ 
(
ÔÔ 
TimeoutException
ÔÔ '
ex
ÔÔ( *
)
ÔÔ* +
{
 
HandleException
ÒÒ #
(
ÒÒ# $
ex
ÒÒ$ &
,
ÒÒ& '

Properties
ÒÒ( 2
.
ÒÒ2 3
	Resources
ÒÒ3 <
.
ÒÒ< =$
lblFailToVerifyTheCode
ÒÒ= S
+
ÒÒT U
$str
ÒÒV Y
+
ÒÒZ [

Properties
ÒÒ\ f
.
ÒÒf g
	Resources
ÒÒg p
.
ÒÒp q
lblTimeExceptionÒÒq Å
)ÒÒÅ Ç
;ÒÒÇ É
}
ÚÚ 
catch
ÛÛ 
(
ÛÛ $
CommunicationException
ÛÛ -
ex
ÛÛ. 0
)
ÛÛ0 1
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
ııp q"
lblWithoutConectionııq Ñ
)ııÑ Ö
;ııÖ Ü
}
ˆˆ 
catch
˜˜ 
(
˜˜ 
SocketException
˜˜ &
ex
˜˜' )
)
˜˜) *
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
˘˘< =
GenericEmailIssue
˘˘= N
+
˘˘O P
$str
˘˘Q T
+
˘˘U V

Properties
˘˘W a
.
˘˘a b
	Resources
˘˘b k
.
˘˘k l!
lblEndPointNotFound
˘˘l 
)˘˘ Ä
;˘˘Ä Å
}
˙˙ 
}
˚˚ 
}
¸¸ 	
private
˛˛ 
void
˛˛ +
ClickButtonConfirmNewPassword
˛˛ 2
(
˛˛2 3
object
˛˛3 9
sender
˛˛: @
,
˛˛@ A
RoutedEventArgs
˛˛B Q
e
˛˛R S
)
˛˛S T
{
ˇˇ 	
try
ÄÄ 
{
ÄÄ *
ConsultUserInformationClient
ÅÅ ,%
consultInformationProxy
ÅÅ- D
=
ÅÅE F
new
ÅÅG J*
ConsultUserInformationClient
ÅÅK g
(
ÅÅg h
)
ÅÅh i
;
ÅÅi j
var
ÇÇ 
userCosulted
ÇÇ  
=
ÇÇ! "%
consultInformationProxy
ÇÇ# :
.
ÇÇ: ;#
ConsultUserByUserName
ÇÇ; P
(
ÇÇP Q
currentUserName
ÇÇQ `
)
ÇÇ` a
;
ÇÇa b
if
ÉÉ 
(
ÉÉ 
userCosulted
ÉÉ  
.
ÉÉ  !
	CodeEvent
ÉÉ! *
==
ÉÉ+ -!
ExceptionDictionary
ÉÉ. A
.
ÉÉA B
SUCCESFULL_EVENT
ÉÉB R
)
ÉÉR S
{
ÑÑ 
if
ÖÖ 
(
ÖÖ 
ALLOWED_VALUES
ÖÖ &
==
ÖÖ' )
CheckPassword
ÖÖ* 7
(
ÖÖ7 8
userCosulted
ÖÖ8 D
.
ÖÖD E
ObjectSaved
ÖÖE P
.
ÖÖP Q
EmailAddress
ÖÖQ ]
)
ÖÖ] ^
)
ÖÖ^ _
{
ÜÜ 
UserManagerClient
áá )
userManagerClient
áá* ;
=
áá< =
new
áá> A
UserManagerClient
ááB S
(
ááS T
)
ááT U
;
ááU V
var
àà 
succes
àà "
=
àà# $
userManagerClient
àà% 6
.
àà6 7 
UpdatePasswordUser
àà7 I
(
ààI J
currentUserName
ààJ Y
,
ààY Z
EncryptionClass
ààZ i
.
àài j
EncryptPassword
ààj y
(
àày z
psbPasswordààz Ö
.ààÖ Ü
PasswordààÜ é
.ààé è
ToStringààè ó
(ààó ò
)ààò ô
.ààô ö
Trimààö û
(ààû ü
)ààü †
)àà† °
)àà° ¢
;àà¢ £
if
ââ 
(
ââ 
succes
ââ "
.
ââ" #
	CodeEvent
ââ# ,
==
ââ- /!
ExceptionDictionary
ââ0 C
.
ââC D
SUCCESFULL_EVENT
ââD T
)
ââT U
{
ää 
dialogMessage
ãã )
=
ãã* +
new
ãã, /&
ErrorMessageDialogWindow
ãã0 H
(
ããH I

Properties
ããI S
.
ããS T
	Resources
ããT ]
.
ãã] ^!
txbInformationTitle
ãã^ q
,
ããq r

Properties
ããs }
.
ãã} ~
	Resourcesãã~ á
.ããá à+
lblPassWordUpdatedCorrectlyããà £
,ãã£ §
Windowãã• ´
.ãã´ ¨
	GetWindowãã¨ µ
(ããµ ∂
thisãã∂ ∫
)ãã∫ ª
)ããª º
;ããº Ω!
GoToPrincipalWindow
åå /
(
åå/ 0
)
åå0 1
;
åå1 2
}
çç 
else
éé 
{
èè 
dialogMessage
êê )
=
êê* +
new
êê, /&
ErrorMessageDialogWindow
êê0 H
(
êêH I

Properties
êêI S
.
êêS T
	Resources
êêT ]
.
êê] ^
txbErrorTitle
êê^ k
,
êêk l

Properties
êêm w
.
êêw x
	Resourcesêêx Å
.êêÅ Ç'
lblFailToUpdatePasswordêêÇ ô
+êêö õ
$strêêú ü
+êê† °

Propertiesêê¢ ¨
.êê¨ ≠
	Resourcesêê≠ ∂
.êê∂ ∑"
lblFailToConenctBDêê∑ …
,êê…  
WindowêêÀ —
.êê— “
	GetWindowêê“ €
(êê€ ‹
thisêê‹ ‡
)êê‡ ·
)êê· ‚
;êê‚ „
}
ëë 
}
íí 
else
ìì 
{
îî 
if
ïï 
(
ïï "
imgViewPasswordRules
ïï 0
.
ïï0 1

Visibility
ïï1 ;
==
ïï< >

Visibility
ïï? I
.
ïïI J
Visible
ïïJ Q
)
ïïQ R
{
ññ 
brdPasswordRules
óó ,
.
óó, -

Visibility
óó- 7
=
óó8 9

Visibility
óó: D
.
óóD E
Visible
óóE L
;
óóL M"
imgViewPasswordRules
òò 0
.
òò0 1

Visibility
òò1 ;
=
òò< =

Visibility
òò> H
.
òòH I
Hidden
òòI O
;
òòO P
}
ôô 
}
öö 
}
õõ 
else
úú 
{
ùù 
dialogMessage
ûû !
=
ûû" #
new
ûû$ '&
ErrorMessageDialogWindow
ûû( @
(
ûû@ A

Properties
ûûA K
.
ûûK L
	Resources
ûûL U
.
ûûU V
txbErrorTitle
ûûV c
,
ûûc d

Properties
ûûe o
.
ûûo p
	Resources
ûûp y
.
ûûy z&
lblFailToUpdatePasswordûûz ë
+ûûí ì
$strûûî ó
+ûûò ô

Propertiesûûö §
.ûû§ •
	Resourcesûû• Æ
.ûûÆ Ø"
lblFailToConenctBDûûØ ¡
,ûû¡ ¬
Windowûû√ …
.ûû…  
	GetWindowûû  ”
(ûû” ‘
thisûû‘ ÿ
)ûûÿ Ÿ
)ûûŸ ⁄
;ûû⁄ €
}
üü 
}
†† 
catch
°° 
(
°° '
EndpointNotFoundException
°° ,
ex
°°- /
)
°°/ 0
{
¢¢ 
HandleException
££ 
(
££  
ex
££  "
,
££" #

Properties
££$ .
.
££. /
	Resources
££/ 8
.
££8 9%
lblFailToUpdatePassword
££9 P
+
££Q R
$str
££S V
+
££X Y

Properties
££Z d
.
££d e
	Resources
££e n
.
££n o"
lblEndPointNotFound££o Ç
)££Ç É
;££É Ñ
}
•• 
catch
¶¶ 
(
¶¶ 1
#CommunicationObjectFaultedException
¶¶ 6
ex
¶¶7 9
)
¶¶9 :
{
ßß 
HandleException
®® 
(
®®  
ex
®®  "
,
®®" #

Properties
®®$ .
.
®®. /
	Resources
®®/ 8
.
®®8 9%
lblFailToUpdatePassword
®®9 P
+
®®Q R
$str
®®S V
+
®®V W

Properties
®®X b
.
®®b c
	Resources
®®c l
.
®®l m'
lblComunicationException®®m Ö
)®®Ö Ü
;®®Ü á
}
©© 
catch
™™ 
(
™™ 
TimeoutException
™™ #
ex
™™$ &
)
™™& '
{
´´ 
HandleException
¨¨ 
(
¨¨  
ex
¨¨  "
,
¨¨" #

Properties
¨¨$ .
.
¨¨. /
	Resources
¨¨/ 8
.
¨¨8 9%
lblFailToUpdatePassword
¨¨9 P
+
¨¨Q R
$str
¨¨S V
+
¨¨W X

Properties
¨¨Y c
.
¨¨c d
	Resources
¨¨d m
.
¨¨m n
lblTimeException
¨¨n ~
)
¨¨~ 
;¨¨ Ä
}
≠≠ 
catch
ÆÆ 
(
ÆÆ $
CommunicationException
ÆÆ )
ex
ÆÆ* ,
)
ÆÆ, -
{
ØØ 
HandleException
∞∞ 
(
∞∞  
ex
∞∞  "
,
∞∞" #

Properties
∞∞$ .
.
∞∞. /
	Resources
∞∞/ 8
.
∞∞8 9%
lblFailToUpdatePassword
∞∞9 P
+
∞∞Q R
$str
∞∞S V
+
∞∞W X

Properties
∞∞Y c
.
∞∞c d
	Resources
∞∞d m
.
∞∞m n"
lblWithoutConection∞∞n Å
)∞∞Å Ç
;∞∞Ç É
}
±± 
catch
≤≤ 
(
≤≤ 
SocketException
≤≤ "
ex
≤≤# %
)
≤≤% &
{
≥≥ 
HandleException
¥¥ 
(
¥¥  
ex
¥¥  "
,
¥¥" #

Properties
¥¥$ .
.
¥¥. /
	Resources
¥¥/ 8
.
¥¥8 9
GenericEmailIssue
¥¥9 J
+
¥¥K L
$str
¥¥M P
+
¥¥Q R

Properties
¥¥S ]
.
¥¥] ^
	Resources
¥¥^ g
.
¥¥g h!
lblEndPointNotFound
¥¥h {
)
¥¥{ |
;
¥¥| }
}
µµ 
}
∂∂ 	
private
∏∏ 
int
∏∏ 
CheckPassword
∏∏ !
(
∏∏! "
string
∏∏" (
email
∏∏) .
)
∏∏. /
{
ππ 	
int
∫∫ 
answer
∫∫ 
=
∫∫ 
ALLOWED_VALUES
∫∫ '
;
∫∫' ('
RegularExpressionsLibrary
ªª %
regexInstance
ªª& 3
=
ªª4 5
new
ªª6 9'
RegularExpressionsLibrary
ªª: S
(
ªªS T
)
ªªT U
;
ªªU V
Regex
ºº 
regexExpression
ºº !
;
ºº! "
String
ΩΩ 
passwordChecked
ΩΩ "
=
ΩΩ# $
psbPassword
ΩΩ% 0
.
ΩΩ0 1
Password
ΩΩ1 9
.
ΩΩ9 :
ToString
ΩΩ: B
(
ΩΩB C
)
ΩΩC D
.
ΩΩD E
Trim
ΩΩE I
(
ΩΩI J
)
ΩΩJ K
;
ΩΩK L
if
ææ 
(
ææ 
passwordChecked
ææ 
.
ææ  
Length
ææ  &
<
ææ' (%
MINIMUN_PASSWORD_LENGTH
ææ) @
||
ææA C
passwordChecked
ææD S
.
ææS T
Length
ææT Z
>
ææ[ \%
MAXIMUM_PASSWORD_LENGTH
ææ] t
)
ææt u
{
øø !
HighLightBrokenRule
¿¿ #
(
¿¿# $
ListBoxRules
¿¿$ 0
[
¿¿0 1
$num
¿¿1 2
]
¿¿2 3
)
¿¿3 4
;
¿¿4 5
answer
¡¡ 
=
¡¡ 
DISALLOWED_VALUES
¡¡ *
;
¡¡* +
}
¬¬ 
else
√√ 
{
ƒƒ 
ClearBrokenRule
≈≈ 
(
≈≈  
ListBoxRules
≈≈  ,
[
≈≈, -
$num
≈≈- .
]
≈≈. /
)
≈≈/ 0
;
≈≈0 1
}
∆∆ 
regexExpression
«« 
=
«« 
new
«« !
Regex
««" '
(
««' (
regexInstance
««( 5
.
««5 6$
GetAt_LEAST_TWO_NUMBER
««6 L
(
««L M
)
««M N
)
««N O
;
««O P
if
»» 
(
»» 
!
»» 
regexExpression
»»  
.
»»  !
IsMatch
»»! (
(
»»( )
passwordChecked
»») 8
)
»»8 9
)
»»9 :
{
…… !
HighLightBrokenRule
   #
(
  # $
ListBoxRules
  $ 0
[
  0 1
$num
  1 2
]
  2 3
)
  3 4
;
  4 5
answer
ÀÀ 
=
ÀÀ 
DISALLOWED_VALUES
ÀÀ *
;
ÀÀ* +
}
ÃÃ 
else
ÕÕ 
{
ŒŒ 
ClearBrokenRule
œœ 
(
œœ  
ListBoxRules
œœ  ,
[
œœ, -
$num
œœ- .
]
œœ. /
)
œœ/ 0
;
œœ0 1
}
–– 
regexExpression
—— 
=
—— 
new
—— !
Regex
——" '
(
——' (
regexInstance
——( 5
.
——5 6,
GetAt_LEAST_TWO_CAPITAL_LETTER
——6 T
(
——T U
)
——U V
)
——V W
;
——W X
if
““ 
(
““ 
!
““ 
regexExpression
““  
.
““  !
IsMatch
““! (
(
““( )
passwordChecked
““) 8
)
““8 9
)
““9 :
{
”” !
HighLightBrokenRule
‘‘ #
(
‘‘# $
ListBoxRules
‘‘$ 0
[
‘‘0 1
$num
‘‘1 2
]
‘‘2 3
)
‘‘3 4
;
‘‘4 5
answer
’’ 
=
’’ 
DISALLOWED_VALUES
’’ *
;
’’* +
}
÷÷ 
else
◊◊ 
{
ÿÿ 
ClearBrokenRule
ŸŸ 
(
ŸŸ  
ListBoxRules
ŸŸ  ,
[
ŸŸ, -
$num
ŸŸ- .
]
ŸŸ. /
)
ŸŸ/ 0
;
ŸŸ0 1
}
⁄⁄ 
regexExpression
€€ 
=
€€ 
new
€€ !
Regex
€€" '
(
€€' (
regexInstance
€€( 5
.
€€5 6/
!GetAt_LEAST_ONE_SPECIAL_CHARACTER
€€6 W
(
€€W X
)
€€X Y
)
€€Y Z
;
€€Z [
if
‹‹ 
(
‹‹ 
!
‹‹ 
regexExpression
‹‹  
.
‹‹  !
IsMatch
‹‹! (
(
‹‹( )
passwordChecked
‹‹) 8
)
‹‹8 9
)
‹‹9 :
{
›› !
HighLightBrokenRule
ﬁﬁ #
(
ﬁﬁ# $
ListBoxRules
ﬁﬁ$ 0
[
ﬁﬁ0 1
$num
ﬁﬁ1 2
]
ﬁﬁ2 3
)
ﬁﬁ3 4
;
ﬁﬁ4 5
answer
ﬂﬂ 
=
ﬂﬂ 
DISALLOWED_VALUES
ﬂﬂ *
;
ﬂﬂ* +
}
‡‡ 
else
·· 
{
‚‚ 
ClearBrokenRule
„„ 
(
„„  
ListBoxRules
„„  ,
[
„„, -
$num
„„- .
]
„„. /
)
„„/ 0
;
„„0 1
}
‰‰ 
regexExpression
ÂÂ 
=
ÂÂ 
new
ÂÂ !
Regex
ÂÂ" '
(
ÂÂ' (
regexInstance
ÂÂ( 5
.
ÂÂ5 6,
GetAt_LEAST_ONE_PUTUATION_MARK
ÂÂ6 T
(
ÂÂT U
)
ÂÂU V
)
ÂÂV W
;
ÂÂW X
if
ÊÊ 
(
ÊÊ 
!
ÊÊ 
regexExpression
ÊÊ  
.
ÊÊ  !
IsMatch
ÊÊ! (
(
ÊÊ( )
passwordChecked
ÊÊ) 8
)
ÊÊ8 9
)
ÊÊ9 :
{
ÁÁ !
HighLightBrokenRule
ËË #
(
ËË# $
ListBoxRules
ËË$ 0
[
ËË0 1
$num
ËË1 2
]
ËË2 3
)
ËË3 4
;
ËË4 5
answer
ÈÈ 
=
ÈÈ 
DISALLOWED_VALUES
ÈÈ *
;
ÈÈ* +
}
ÍÍ 
else
ÎÎ 
{
ÏÏ 
ClearBrokenRule
ÌÌ 
(
ÌÌ  
ListBoxRules
ÌÌ  ,
[
ÌÌ, -
$num
ÌÌ- .
]
ÌÌ. /
)
ÌÌ/ 0
;
ÌÌ0 1
}
ÓÓ 
int
ÔÔ 
arrobaIndex
ÔÔ 
=
ÔÔ 
(
ÔÔ 
email
ÔÔ $
.
ÔÔ$ %
IndexOf
ÔÔ% ,
(
ÔÔ, -
$char
ÔÔ- 0
)
ÔÔ0 1
!=
ÔÔ2 4
-
ÔÔ5 6
$num
ÔÔ6 7
)
ÔÔ7 8
?
ÔÔ9 :
email
ÔÔ; @
.
ÔÔ@ A
IndexOf
ÔÔA H
(
ÔÔH I
$char
ÔÔI L
)
ÔÔL M
:
ÔÔN O
$num
ÔÔP Q
;
ÔÔQ R
if
 
(
 
email
 
.
 
Trim
 
(
 
)
 
.
 
	Substring
 &
(
& '
$num
' (
,
( )
arrobaIndex
* 5
)
5 6
.
6 7
Equals
7 =
(
= >
passwordChecked
> M
)
M N
)
N O
{
ÒÒ !
HighLightBrokenRule
ÚÚ #
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
ÚÚ4 5
answer
ÛÛ 
=
ÛÛ 
DISALLOWED_VALUES
ÛÛ *
;
ÛÛ* +
}
ÙÙ 
else
ıı 
{
ˆˆ 
ClearBrokenRule
˜˜ 
(
˜˜  
ListBoxRules
˜˜  ,
[
˜˜, -
$num
˜˜- .
]
˜˜. /
)
˜˜/ 0
;
˜˜0 1
}
¯¯ 
return
˘˘ 
answer
˘˘ 
;
˘˘ 
}
˙˙ 	
private
¸¸ 
void
¸¸ !
HighLightBrokenRule
¸¸ (
(
¸¸( )
Label
¸¸) .
missingRule
¸¸/ :
)
¸¸: ;
{
˝˝ 	
missingRule
˛˛ 
.
˛˛ 

Foreground
˛˛ "
=
˛˛# $
Brushes
˛˛% ,
.
˛˛, -
Red
˛˛- 0
;
˛˛0 1
}
ˇˇ 	
private
ÄÄ 
void
ÄÄ 
ClearBrokenRule
ÄÄ $
(
ÄÄ$ %
Label
ÄÄ% *
missingRule
ÄÄ+ 6
)
ÄÄ6 7
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
ÇÇ, -
White
ÇÇ- 2
;
ÇÇ2 3
}
ÉÉ 	
private
ÖÖ 
void
ÖÖ $
ClickViewPasswordRules
ÖÖ +
(
ÖÖ+ ,
object
ÖÖ, 2
sender
ÖÖ3 9
,
ÖÖ9 :"
MouseButtonEventArgs
ÖÖ; O
e
ÖÖP Q
)
ÖÖQ R
{
ÜÜ 	
brdPasswordRules
áá 
.
áá 

Visibility
áá '
=
áá( )

Visibility
áá* 4
.
áá4 5
Visible
áá5 <
;
áá< ="
imgViewPasswordRules
àà  
.
àà  !

Visibility
àà! +
=
àà, -

Visibility
àà. 8
.
àà8 9
Hidden
àà9 ?
;
àà? @
}
ää 	
private
ãã 
void
ãã %
ClickClosePasswordRules
ãã ,
(
ãã, -
object
ãã- 3
sender
ãã4 :
,
ãã: ;"
MouseButtonEventArgs
ãã< P
e
ããQ R
)
ããR S
{
åå 	
brdPasswordRules
çç 
.
çç 

Visibility
çç '
=
çç( )

Visibility
çç* 4
.
çç4 5
Hidden
çç5 ;
;
çç; <"
imgViewPasswordRules
éé  
.
éé  !

Visibility
éé! +
=
éé, -

Visibility
éé. 8
.
éé8 9
Visible
éé9 @
;
éé@ A
}
èè 	
private
ëë 
void
ëë 
ClickSeePassword
ëë %
(
ëë% &
object
ëë& ,
sender
ëë- 3
,
ëë3 4"
MouseButtonEventArgs
ëë5 I
e
ëëJ K
)
ëëK L
{
íí 	
lblViewPassword
ìì 
.
ìì 
Content
ìì #
=
ìì$ %
psbPassword
ìì& 1
.
ìì1 2
Password
ìì2 :
.
ìì: ;
ToString
ìì; C
(
ììC D
)
ììD E
;
ììE F
psbPassword
îî 
.
îî 

Visibility
îî "
=
îî# $

Visibility
îî% /
.
îî/ 0
	Collapsed
îî0 9
;
îî9 :
lblViewPassword
ïï 
.
ïï 

Visibility
ïï &
=
ïï' (

Visibility
ïï) 3
.
ïï3 4
Visible
ïï4 ;
;
ïï; <
}
ññ 	
private
òò 
void
òò #
OverLeaveHidePassword
òò *
(
òò* +
object
òò+ 1
sender
òò2 8
,
òò8 9
MouseEventArgs
òò: H
e
òòI J
)
òòJ K
{
ôô 	
if
öö 
(
öö 
lblViewPassword
öö 
.
öö  
	IsVisible
öö  )
)
öö) *
{
õõ 
psbPassword
úú 
.
úú 

Visibility
úú &
=
úú' (

Visibility
úú) 3
.
úú3 4
Visible
úú4 ;
;
úú; <
psbPassword
ùù 
.
ùù 
PasswordChar
ùù (
=
ùù) *
$char
ùù+ .
;
ùù. /
psbPassword
ûû 
.
ûû 
Password
ûû $
=
ûû% &
(
ûû' (
string
ûû( .
)
ûû. /
lblViewPassword
ûû/ >
.
ûû> ?
Content
ûû? F
;
ûûF G
lblViewPassword
üü 
.
üü  

Visibility
üü  *
=
üü+ ,

Visibility
üü- 7
.
üü7 8
	Collapsed
üü8 A
;
üüA B
}
†† 
}
°° 	
private
§§ 
void
§§ 

StartTimer
§§ 
(
§§  
)
§§  !
{
•• 	
leftTime
¶¶ 
=
¶¶ 
$num
¶¶ 
;
¶¶ 
timer
ßß 
=
ßß 
new
ßß 
DispatcherTimer
ßß '
(
ßß' (
)
ßß( )
;
ßß) *
timer
®® 
.
®® 
Interval
®® 
=
®® 
TimeSpan
®® %
.
®®% &
FromSeconds
®®& 1
(
®®1 2
$num
®®2 3
)
®®3 4
;
®®4 5
timer
©© 
.
©© 
Tick
©© 
+=
©© !
TickTimerResendCode
©© -
;
©©- .
timer
™™ 
.
™™ 
Start
™™ 
(
™™ 
)
™™ 
;
™™ 
}
´´ 	
private
≠≠ 
void
≠≠ !
TickTimerResendCode
≠≠ (
(
≠≠( )
object
≠≠) /
sender
≠≠0 6
,
≠≠6 7
	EventArgs
≠≠8 A
e
≠≠B C
)
≠≠C D
{
ÆÆ 	
if
ØØ 
(
ØØ 
leftTime
ØØ 
>
ØØ 
$num
ØØ 
)
ØØ 
{
∞∞ 
leftTime
±± 
--
±± 
;
±± 
lblResendCode
≤≤ 
.
≤≤ 

Foreground
≤≤ (
=
≤≤) *
new
≤≤+ .
SolidColorBrush
≤≤/ >
(
≤≤> ?
Colors
≤≤? E
.
≤≤E F
	IndianRed
≤≤F O
)
≤≤O P
;
≤≤P Q
lblResendCode
≥≥ 
.
≥≥ 
Content
≥≥ %
=
≥≥& '

Properties
≥≥( 2
.
≥≥2 3
	Resources
≥≥3 <
.
≥≥< =
lblResentCode
≥≥= J
+
≥≥K L
$str
≥≥M P
+
≥≥Q R
leftTime
≥≥S [
;
≥≥[ \
}
¥¥ 
else
µµ 
{
∂∂ 
lblResendCode
∑∑ 
.
∑∑ 

Foreground
∑∑ (
=
∑∑) *
new
∑∑+ .
SolidColorBrush
∑∑/ >
(
∑∑> ?
Colors
∑∑? E
.
∑∑E F
ForestGreen
∑∑F Q
)
∑∑Q R
;
∑∑R S
lblResendCode
∏∏ 
.
∏∏ 
Content
∏∏ %
=
∏∏& '

Properties
∏∏( 2
.
∏∏2 3
	Resources
∏∏3 <
.
∏∏< =
lblResentCode
∏∏= J
+
∏∏K L
$str
∏∏M P
+
∏∏Q R
leftTime
∏∏S [
;
∏∏[ \
SetDefaultBotons
ππ  
(
ππ  !
)
ππ! "
;
ππ" #
timer
∫∫ 
.
∫∫ 
Stop
∫∫ 
(
∫∫ 
)
∫∫ 
;
∫∫ 
}
ªª 
}
ºº 	
private
ææ 
void
ææ 
SetDefaultBotons
ææ %
(
ææ% &
)
ææ& '
{
øø 	 
bttConfirmUserName
¿¿ 
.
¿¿ 
	IsEnabled
¿¿ (
=
¿¿) *
true
¿¿+ /
;
¿¿/ 0
txbUserName
¡¡ 
.
¡¡ 
	IsEnabled
¡¡ !
=
¡¡" #
true
¡¡$ (
;
¡¡( )
}
¬¬ 	
private
≈≈ 
void
≈≈ %
ClickButtonCancelSaving
≈≈ ,
(
≈≈, -
object
≈≈- 3
sender
≈≈4 :
,
≈≈: ;
RoutedEventArgs
≈≈< K
e
≈≈L M
)
≈≈M N
{
∆∆ 	
if
«« 
(
«« 
new
«« &
ConfirmationDialogWindow
«« ,
(
««, -

Properties
««- 7
.
««7 8
	Resources
««8 A
.
««A B
txbWarningTitle
««B Q
,
««Q R

Properties
««S ]
.
««] ^
	Resources
««^ g
.
««g h,
txbConfirmationCancelSaveUser««h Ö
,««Ö Ü
Application««á í
.««í ì
Current««ì ö
.««ö õ

MainWindow««õ •
)««• ¶
.««¶ ß
CloseWindow««ß ≤
)««≤ ≥
{
»» !
GoToPrincipalWindow
…… #
(
……# $
)
……$ %
;
……% &
}
   
}
ÀÀ 	
private
ÕÕ 
void
ÕÕ !
GoToPrincipalWindow
ÕÕ (
(
ÕÕ( )
)
ÕÕ) *
{
ŒŒ 	
if
œœ 
(
œœ 
timer
œœ 
!=
œœ 
null
œœ 
)
œœ 
{
–– 
timer
““ 
.
““ 
Stop
““ 
(
““ 
)
““ 
;
““ 
}
”” 
PrincipalPage
‘‘ 
principalPage
‘‘ '
=
‘‘( )
new
‘‘* -
(
‘‘- .
)
‘‘. /
;
‘‘/ 0
this
’’ 
.
’’ 
NavigationService
’’ "
.
’’" #
Navigate
’’# +
(
’’+ ,
principalPage
’’, 9
)
’’9 :
;
’’: ;
NavigationService
÷÷ 
.
÷÷ 
RemoveBackEntry
÷÷ -
(
÷÷- .
)
÷÷. /
;
÷÷/ 0
}
◊◊ 	
private
ŸŸ 
void
ŸŸ 
HandleException
ŸŸ $
(
ŸŸ$ %
	Exception
ŸŸ% .
ex
ŸŸ/ 1
,
ŸŸ1 2
string
ŸŸ3 9
errorMessage
ŸŸ: F
)
ŸŸF G
{
⁄⁄ 	%
ExceptionHandlerForLogs
€€ #
.
€€# $
LogException
€€$ 0
(
€€0 1
ex
€€1 3
,
€€3 4!
ExceptionDictionary
€€5 H
.
€€H I
FATAL_EXCEPTION
€€I X
)
€€X Y
;
€€Y Z
dialogMessage
‹‹ 
=
‹‹ 
new
‹‹ &
ErrorMessageDialogWindow
‹‹  8
(
‹‹8 9

Properties
‹‹9 C
.
‹‹C D
	Resources
‹‹D M
.
‹‹M N
txbErrorTitle
‹‹N [
,
‹‹[ \
errorMessage
‹‹] i
,
‹‹i j
Application
‹‹k v
.
‹‹v w
Current
‹‹w ~
.
‹‹~ 

MainWindow‹‹ â
)‹‹â ä
;‹‹ä ã
}
›› 	
}
‡‡ 
}·· ôC
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
;))` a

codeWindow** 
.** 
Show** 
(** 
)** 
;** 
enterGameWithCode++ 
codePage++ &
=++' (
new++) ,
enterGameWithCode++- >
(++> ?
Window++? E
.++E F
	GetWindow++F O
(++O P
this++P T
)++T U
,++U V
true++W [
)++[ \
;++\ ]

codeWindow,, 
.,, 
contentFrame,, #
.,,# $
NavigationService,,$ 5
.,,5 6
Navigate,,6 >
(,,> ?
codePage,,? G
),,G H
;,,H I
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
{<< 	
if== 
(== 
LanguageOptions== 
.==  

Visibility==  *
====+ -

Visibility==. 8
.==8 9
Visible==9 @
)==@ A
{>> 
LanguageOptions?? 
.??  

Visibility??  *
=??+ ,

Visibility??- 7
.??7 8
Visible??8 ?
;??? @
}@@ 
elseAA 
{BB 
LanguageOptionsCC 
.CC  

VisibilityCC  *
=CC+ ,

VisibilityCC- 7
.CC7 8
VisibleCC8 ?
;CC? @
}DD 
}EE 	
privateFF 
voidFF $
UpdateInterfaceResourcesFF -
(FF- .
stringFF. 4
selectedLanguageFF5 E
)FFE F
{GG 	
switchHH 
(HH 
selectedLanguageHH $
)HH$ %
{II 
caseJJ 
$strJJ 
:JJ 
ifKK 
(KK 
	bttPlayerKK !
!=KK" $
nullKK% )
)KK) *
	bttPlayerLL !
.LL! "
ContentLL" )
=LL* +

PropertiesLL, 6
.LL6 7
	ResourcesLL7 @
.LL@ A
	bttPlayerLLA J
;LLJ K
ifNN 
(NN 
bttGuestNN  
!=NN! #
nullNN$ (
)NN( )
bttGuestOO  
.OO  !
ContentOO! (
=OO) *

PropertiesOO+ 5
.OO5 6
	ResourcesOO6 ?
.OO? @
	btnInviteOO@ I
;OOI J
ifQQ 
(QQ 
lblRecoverPasswordQQ *
!=QQ+ -
nullQQ. 2
)QQ2 3
lblRecoverPasswordRR *
.RR* +
ContentRR+ 2
=RR3 4

PropertiesRR5 ?
.RR? @
	ResourcesRR@ I
.RRI J
lblRecoverPasswordRRJ \
;RR\ ]
breakTT 
;TT 
caseVV 
$strVV 
:VV 
defaultWW 
:WW 
ifXX 
(XX 
	bttPlayerXX !
!=XX" $
nullXX% )
)XX) *
	bttPlayerYY !
.YY! "
ContentYY" )
=YY* +

PropertiesYY, 6
.YY6 7
	ResourcesYY7 @
.YY@ A
	bttPlayerYYA J
;YYJ K
if[[ 
([[ 
bttGuest[[  
!=[[! #
null[[$ (
)[[( )
bttGuest\\  
.\\  !
Content\\! (
=\\) *

Properties\\+ 5
.\\5 6
	Resources\\6 ?
.\\? @
	btnInvite\\@ I
;\\I J
if^^ 
(^^ 
lblRecoverPassword^^ *
!=^^+ -
null^^. 2
)^^2 3
lblRecoverPassword__ *
.__* +
Content__+ 2
=__3 4

Properties__5 ?
.__? @
	Resources__@ I
.__I J
lblRecoverPassword__J \
;__\ ]
break`` 
;`` 
}aa 
}bb 	
privatecc 
voidcc 
SelectLanguagecc #
(cc# $
objectcc$ *
sendercc+ 1
,cc1 2
RoutedEventArgscc3 B
eccC D
)ccD E
{dd 	
Systemee 
.ee 
Windowsee 
.ee 
Controlsee #
.ee# $
Buttonee$ *
selectedButtonee+ 9
=ee: ;
senderee< B
aseeC E
ButtoneeF L
;eeL M
stringff 
selectedLanguageff #
=ff$ %
selectedButtonff& 4
.ff4 5
Tagff5 8
.ff8 9
ToStringff9 A
(ffA B
)ffB C
;ffC D
Apphh 
.hh 
ChangeLanguagehh 
(hh 
selectedLanguagehh /
)hh/ 0
;hh0 1
RegistryKeyii 
keyii 
=ii 
Registryii &
.ii& '
CurrentUserii' 2
.ii2 3
CreateSubKeyii3 ?
(ii? @
$strii@ X
)iiX Y
;iiY Z
keyjj 
.jj 
SetValuejj 
(jj 
$strjj +
,jj+ ,
selectedLanguagejj- =
)jj= >
;jj> ?
keykk 
.kk 
Closekk 
(kk 
)kk 
;kk $
UpdateInterfaceResourcesll $
(ll$ %
selectedLanguagell% 5
)ll5 6
;ll6 7
LanguageButtonnn 
.nn 
Contentnn "
=nn# $
selectedButtonnn% 3
.nn3 4
Contentnn4 ;
;nn; <
LanguageOptionspp 
.pp 

Visibilitypp &
=pp' (

Visibilitypp) 3
.pp3 4
	Collapsedpp4 =
;pp= >
}qq 	
}rr 
}ss Î®
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
;2 3
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
;((Q R
userSingleton)) 
=)) 
UserSingleton)) )
.))) *
GetMainUser))* 5
())5 6
)))6 7
;))7 8
RegisterForCallBack** 
(**  
chatForTeamProxy**  0
)**0 1
;**1 2
}++ 	
public-- 
void--  
RenewCallBackChannel-- (
(--( )
)--) *
{.. 	
try// 
{00 
InstanceContext11 
context11  '
=11( )
new11* -
InstanceContext11. =
(11= >
this11> B
)11B C
;11C D
ChatForTeamsClient22 "
chatForTeamProxy22# 3
=224 5
new226 9
ChatForTeamsClient22: L
(22L M
context22M T
)22T U
;22U V
chatForTeamProxy33  
.33  !!
RenewTeamChatCallBack33! 6
(336 7
userSingleton337 D
.33D E
IdUser33E K
)33K L
;33L M
}44 
catch55 
(55 %
EndpointNotFoundException55 ,
ex55- /
)55/ 0
{66 
HandleException77 
(77  
ex77  "
,77" #

Properties77$ .
.77. /
	Resources77/ 8
.778 9%
lblFailRegistryToCallBack779 R
+77S T
$str77U Z
+77[ \

Properties77] g
.77g h
	Resources77h q
.77q r 
lblEndPointNotFound	77r Ö
)
77Ö Ü
;
77Ü á
}88 
catch99 
(99 /
#CommunicationObjectFaultedException99 6
ex997 9
)999 :
{:: 
HandleException;; 
(;;  
ex;;  "
,;;" #

Properties;;$ .
.;;. /
	Resources;;/ 8
.;;8 9%
lblFailRegistryToCallBack;;9 R
+;;S T
$str;;U Z
+;;[ \

Properties;;] g
.;;g h
	Resources;;h q
.;;q r%
lblComunicationException	;;r ä
)
;;ä ã
;
;;ã å
}<< 
catch== 
(== 
TimeoutException== #
ex==$ &
)==& '
{>> 
HandleException?? 
(??  
ex??  "
,??" #

Properties??$ .
.??. /
	Resources??/ 8
.??8 9%
lblFailRegistryToCallBack??9 R
+??S T
$str??U Z
+??[ \

Properties??] g
.??g h
	Resources??h q
.??q r
lblTimeException	??r Ç
)
??Ç É
;
??É Ñ
}@@ 
catchAA 
(AA "
CommunicationExceptionAA )
exAA* ,
)AA, -
{BB 
HandleExceptionCC 
(CC  
exCC  "
,CC" #

PropertiesCC$ .
.CC. /
	ResourcesCC/ 8
.CC8 9%
lblFailRegistryToCallBackCC9 R
+CCS T
$strCCU Z
+CC[ \

PropertiesCC] g
.CCg h
	ResourcesCCh q
.CCq r 
lblWithoutConection	CCr Ö
)
CCÖ Ü
;
CCÜ á
}DD 
catchEE 
(EE 
SocketExceptionEE "
exEE# %
)EE% &
{FF 
HandleExceptionGG 
(GG  
exGG  "
,GG" #

PropertiesGG$ .
.GG. /
	ResourcesGG/ 8
.GG8 9
GenericEmailIssueGG9 J
+GGK L
$strGGM P
+GGQ R

PropertiesGGS ]
.GG] ^
	ResourcesGG^ g
.GGg h
lblEndPointNotFoundGGh {
)GG{ |
;GG| }
}HH 
}II 	
privateKK 
voidKK 
RegisterForCallBackKK (
(KK( )
ChatForTeamsClientKK) ;
chatForTeamProxyKK< L
)KKL M
{LL 	
tryMM 
{NN 
chatForTeamProxyOO  
.OO  !
RegisterForTeamChatOO! 4
(OO4 5
userSingletonOO5 B
.OOB C
IdUserOOC I
)OOI J
;OOJ K
}PP 
catchQQ 
(QQ %
EndpointNotFoundExceptionQQ ,
exQQ- /
)QQ/ 0
{RR 
HandleExceptionSS 
(SS  
exSS  "
,SS" #

PropertiesSS$ .
.SS. /
	ResourcesSS/ 8
.SS8 9%
lblFailRegistryToCallBackSS9 R
+SSS T
$strSSU Z
+SS[ \

PropertiesSS] g
.SSg h
	ResourcesSSh q
.SSq r 
lblEndPointNotFound	SSr Ö
)
SSÖ Ü
;
SSÜ á
}TT 
catchUU 
(UU /
#CommunicationObjectFaultedExceptionUU 6
exUU7 9
)UU9 :
{VV 
HandleExceptionWW 
(WW  
exWW  "
,WW" #

PropertiesWW$ .
.WW. /
	ResourcesWW/ 8
.WW8 9%
lblFailRegistryToCallBackWW9 R
+WWS T
$strWWU Z
+WW[ \

PropertiesWW] g
.WWg h
	ResourcesWWh q
.WWq r%
lblComunicationException	WWr ä
)
WWä ã
;
WWã å
}XX 
catchYY 
(YY 
TimeoutExceptionYY #
exYY$ &
)YY& '
{ZZ 
HandleException[[ 
([[  
ex[[  "
,[[" #

Properties[[$ .
.[[. /
	Resources[[/ 8
.[[8 9%
lblFailRegistryToCallBack[[9 R
+[[S T
$str[[U Z
+[[[ \

Properties[[] g
.[[g h
	Resources[[h q
.[[q r
lblTimeException	[[r Ç
)
[[Ç É
;
[[É Ñ
}\\ 
catch]] 
(]] "
CommunicationException]] )
ex]]* ,
)]], -
{^^ 
HandleException__ 
(__  
ex__  "
,__" #

Properties__$ .
.__. /
	Resources__/ 8
.__8 9%
lblFailRegistryToCallBack__9 R
+__S T
$str__U Z
+__[ \

Properties__] g
.__g h
	Resources__h q
.__q r 
lblWithoutConection	__r Ö
)
__Ö Ü
;
__Ü á
}`` 
catchaa 
(aa 
SocketExceptionaa "
exaa# %
)aa% &
{bb 
HandleExceptioncc 
(cc  
excc  "
,cc" #

Propertiescc$ .
.cc. /
	Resourcescc/ 8
.cc8 9
GenericEmailIssuecc9 J
+ccK L
$strccM P
+ccQ R

PropertiesccS ]
.cc] ^
	Resourcescc^ g
.ccg h
lblEndPointNotFoundcch {
)cc{ |
;cc| }
}dd 
}ee 	
privategg 
voidgg 
ClickCloseChatgg #
(gg# $
objectgg$ *
sendergg+ 1
,gg1 2 
MouseButtonEventArgsgg3 G
eggH I
)ggI J
{hh 	
	gameBoardii 
.ii 
CloseLiveChatii #
(ii# $
)ii$ %
;ii% &
}jj 	
privatell 
voidll 
ClickSendMessagell %
(ll% &
objectll& ,
senderll- 3
,ll3 4 
MouseButtonEventArgsll5 I
ellJ K
)llK L
{mm 	
trynn 
{oo 
stringpp 
messagepp 
=pp  
txbMessageToSendpp! 1
.pp1 2
Textpp2 6
;pp6 7
ifqq 
(qq 
!qq 
stringqq 
.qq 
IsNullOrEmptyqq )
(qq) *
messageqq* 1
)qq1 2
)qq2 3
{rr (
ChatForTeamsOperationsClientss 0
chatForTeamProxyss1 A
=ssB C
newssD G
(ssG H
)ssH I
;ssI J
chatForTeamProxytt $
.tt$ %
SendMessageTeamtt% 4
(tt4 5
userSingletontt5 B
.ttB C
IdUserttC I
,ttI J

idTeamMatettK U
,ttU V
userSingletonttW d
.ttd e
UserNamette m
,ttm n
messagetto v
)ttv w
;ttw x
ChatMessageCarduu #
chatMessageCarduu$ 3
=uu4 5
newuu6 9
ChatMessageCarduu: I
(uuI J
userSingletonuuJ W
.uuW X
UserNameuuX `
,uu` a
messageuub i
)uui j
;uuj k
chatMessageCardvv #
.vv# $
HorizontalAlignmentvv$ 7
=vv8 9
HorizontalAlignmentvv: M
.vvM N
RightvvN S
;vvS T
stpChatww 
.ww 
Childrenww $
.ww$ %
Addww% (
(ww( )
chatMessageCardww) 8
)ww8 9
;ww9 :
txbMessageToSendxx $
.xx$ %
Textxx% )
=xx* +
stringxx, 2
.xx2 3
Emptyxx3 8
;xx8 9
}yy 
}zz 
catch{{ 
({{ %
EndpointNotFoundException{{ ,
ex{{- /
){{/ 0
{|| #
ExceptionHandlerForLogs}} '
.}}' (
LogException}}( 4
(}}4 5
ex}}5 7
,}}7 8
ExceptionDictionary}}9 L
.}}L M
FATAL_EXCEPTION}}M \
)}}\ ]
;}}] ^
stpChat~~ 
.~~ 
Children~~  
.~~  !
Add~~! $
(~~$ %
new~~% (
ChatMessageCard~~) 8
(~~8 9

Properties~~9 C
.~~C D
	Resources~~D M
.~~M N
txbErrorTitle~~N [
,~~[ \

Properties~~] g
.~~g h
	Resources~~h q
.~~q r*
txbFailToSendOrReciveAMessage	~~r è
)
~~è ê
)
~~ê ë
;
~~ë í
} 
catch
ÄÄ 
(
ÄÄ 1
#CommunicationObjectFaultedException
ÄÄ 6
ex
ÄÄ7 9
)
ÄÄ9 :
{
ÅÅ %
ExceptionHandlerForLogs
ÇÇ '
.
ÇÇ' (
LogException
ÇÇ( 4
(
ÇÇ4 5
ex
ÇÇ5 7
,
ÇÇ7 8!
ExceptionDictionary
ÇÇ9 L
.
ÇÇL M
FATAL_EXCEPTION
ÇÇM \
)
ÇÇ\ ]
;
ÇÇ] ^
stpChat
ÉÉ 
.
ÉÉ 
Children
ÉÉ  
.
ÉÉ  !
Add
ÉÉ! $
(
ÉÉ$ %
new
ÉÉ% (
ChatMessageCard
ÉÉ) 8
(
ÉÉ8 9

Properties
ÉÉ9 C
.
ÉÉC D
	Resources
ÉÉD M
.
ÉÉM N
txbErrorTitle
ÉÉN [
,
ÉÉ[ \

Properties
ÉÉ] g
.
ÉÉg h
	Resources
ÉÉh q
.
ÉÉq r,
txbFailToSendOrReciveAMessageÉÉr è
)ÉÉè ê
)ÉÉê ë
;ÉÉë í
}
ÑÑ 
catch
ÖÖ 
(
ÖÖ 
TimeoutException
ÖÖ #
ex
ÖÖ$ &
)
ÖÖ& '
{
ÜÜ %
ExceptionHandlerForLogs
áá '
.
áá' (
LogException
áá( 4
(
áá4 5
ex
áá5 7
,
áá7 8!
ExceptionDictionary
áá9 L
.
ááL M
FATAL_EXCEPTION
ááM \
)
áá\ ]
;
áá] ^
stpChat
àà 
.
àà 
Children
àà  
.
àà  !
Add
àà! $
(
àà$ %
new
àà% (
ChatMessageCard
àà) 8
(
àà8 9

Properties
àà9 C
.
ààC D
	Resources
ààD M
.
ààM N
txbErrorTitle
ààN [
,
àà[ \

Properties
àà] g
.
ààg h
	Resources
ààh q
.
ààq r,
txbFailToSendOrReciveAMessageààr è
)ààè ê
)ààê ë
;ààë í
}
ââ 
catch
ää 
(
ää $
CommunicationException
ää )
ex
ää* ,
)
ää, -
{
ãã %
ExceptionHandlerForLogs
åå '
.
åå' (
LogException
åå( 4
(
åå4 5
ex
åå5 7
,
åå7 8!
ExceptionDictionary
åå9 L
.
ååL M
FATAL_EXCEPTION
ååM \
)
åå\ ]
;
åå] ^
stpChat
çç 
.
çç 
Children
çç  
.
çç  !
Add
çç! $
(
çç$ %
new
çç% (
ChatMessageCard
çç) 8
(
çç8 9

Properties
çç9 C
.
ççC D
	Resources
ççD M
.
ççM N
txbErrorTitle
ççN [
,
çç[ \

Properties
çç] g
.
ççg h
	Resources
ççh q
.
ççq r,
txbFailToSendOrReciveAMessageççr è
)ççè ê
)ççê ë
;ççë í
}
éé 
catch
èè 
(
èè 
SocketException
èè "
ex
èè# %
)
èè% &
{
êê %
ExceptionHandlerForLogs
ëë '
.
ëë' (
LogException
ëë( 4
(
ëë4 5
ex
ëë5 7
,
ëë7 8!
ExceptionDictionary
ëë9 L
.
ëëL M
FATAL_EXCEPTION
ëëM \
)
ëë\ ]
;
ëë] ^
stpChat
íí 
.
íí 
Children
íí  
.
íí  !
Add
íí! $
(
íí$ %
new
íí% (
ChatMessageCard
íí) 8
(
íí8 9

Properties
íí9 C
.
ííC D
	Resources
ííD M
.
ííM N
txbErrorTitle
ííN [
,
íí[ \

Properties
íí] g
.
ííg h
	Resources
ííh q
.
ííq r,
txbFailToSendOrReciveAMessageíír è
)ííè ê
)ííê ë
;ííë í
}
ìì 
}
îî 	
public
ññ 
void
ññ $
ReceiveMessageTeamChat
ññ *
(
ññ* +/
!GenericClassOfMessageChatxY0a3WX4
ññ+ L
message
ññM T
)
ññT U
{
óó 	
try
òò 
{
ôô 
if
öö 
(
öö 
message
öö 
.
öö 
	CodeEvent
öö %
==
öö& (

Exceptions
öö) 3
.
öö3 4!
ExceptionDictionary
öö4 G
.
ööG H
SUCCESFULL_EVENT
ööH X
)
ööX Y
{
õõ 
ChatMessageCard
úú #
chatMessageCard
úú$ 3
=
úú4 5
new
úú6 9
ChatMessageCard
úú: I
(
úúI J
message
úúJ Q
.
úúQ R
ObjectSaved
úúR ]
.
úú] ^
UserName
úú^ f
,
úúf g
message
úúh o
.
úúo p
ObjectSaved
úúp {
.
úú{ |
MessageToSendúú| â
)úúâ ä
;úúä ã
chatMessageCard
ùù #
.
ùù# $!
HorizontalAlignment
ùù$ 7
=
ùù8 9!
HorizontalAlignment
ùù: M
.
ùùM N
Right
ùùN S
;
ùùS T
stpChat
ûû 
.
ûû 
Children
ûû $
.
ûû$ %
Add
ûû% (
(
ûû( )
chatMessageCard
ûû) 8
)
ûû8 9
;
ûû9 :
}
üü 
}
†† 
catch
°° 
(
°° '
EndpointNotFoundException
°° ,
ex
°°- /
)
°°/ 0
{
¢¢ %
ExceptionHandlerForLogs
££ '
.
££' (
LogException
££( 4
(
££4 5
ex
££5 7
,
££7 8!
ExceptionDictionary
££9 L
.
££L M
FATAL_EXCEPTION
££M \
)
££\ ]
;
££] ^
stpChat
§§ 
.
§§ 
Children
§§  
.
§§  !
Add
§§! $
(
§§$ %
new
§§% (
ChatMessageCard
§§) 8
(
§§8 9

Properties
§§9 C
.
§§C D
	Resources
§§D M
.
§§M N
txbErrorTitle
§§N [
,
§§[ \

Properties
§§] g
.
§§g h
	Resources
§§h q
.
§§q r,
txbFailToSendOrReciveAMessage§§r è
)§§è ê
)§§ê ë
;§§ë í
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
ßß %
ExceptionHandlerForLogs
®® '
.
®®' (
LogException
®®( 4
(
®®4 5
ex
®®5 7
,
®®7 8!
ExceptionDictionary
®®9 L
.
®®L M
FATAL_EXCEPTION
®®M \
)
®®\ ]
;
®®] ^
stpChat
©© 
.
©© 
Children
©©  
.
©©  !
Add
©©! $
(
©©$ %
new
©©% (
ChatMessageCard
©©) 8
(
©©8 9

Properties
©©9 C
.
©©C D
	Resources
©©D M
.
©©M N
txbErrorTitle
©©N [
,
©©[ \

Properties
©©] g
.
©©g h
	Resources
©©h q
.
©©q r,
txbFailToSendOrReciveAMessage©©r è
)©©è ê
)©©ê ë
;©©ë í
}
™™ 
catch
´´ 
(
´´ 
TimeoutException
´´ #
ex
´´$ &
)
´´& '
{
¨¨ %
ExceptionHandlerForLogs
≠≠ '
.
≠≠' (
LogException
≠≠( 4
(
≠≠4 5
ex
≠≠5 7
,
≠≠7 8!
ExceptionDictionary
≠≠9 L
.
≠≠L M
FATAL_EXCEPTION
≠≠M \
)
≠≠\ ]
;
≠≠] ^
stpChat
ÆÆ 
.
ÆÆ 
Children
ÆÆ  
.
ÆÆ  !
Add
ÆÆ! $
(
ÆÆ$ %
new
ÆÆ% (
ChatMessageCard
ÆÆ) 8
(
ÆÆ8 9

Properties
ÆÆ9 C
.
ÆÆC D
	Resources
ÆÆD M
.
ÆÆM N
txbErrorTitle
ÆÆN [
,
ÆÆ[ \

Properties
ÆÆ] g
.
ÆÆg h
	Resources
ÆÆh q
.
ÆÆq r,
txbFailToSendOrReciveAMessageÆÆr è
)ÆÆè ê
)ÆÆê ë
;ÆÆë í
}
ØØ 
catch
∞∞ 
(
∞∞ $
CommunicationException
∞∞ )
ex
∞∞* ,
)
∞∞, -
{
±± %
ExceptionHandlerForLogs
≤≤ '
.
≤≤' (
LogException
≤≤( 4
(
≤≤4 5
ex
≤≤5 7
,
≤≤7 8!
ExceptionDictionary
≤≤9 L
.
≤≤L M
FATAL_EXCEPTION
≤≤M \
)
≤≤\ ]
;
≤≤] ^
stpChat
≥≥ 
.
≥≥ 
Children
≥≥  
.
≥≥  !
Add
≥≥! $
(
≥≥$ %
new
≥≥% (
ChatMessageCard
≥≥) 8
(
≥≥8 9

Properties
≥≥9 C
.
≥≥C D
	Resources
≥≥D M
.
≥≥M N
txbErrorTitle
≥≥N [
,
≥≥[ \

Properties
≥≥] g
.
≥≥g h
	Resources
≥≥h q
.
≥≥q r,
txbFailToSendOrReciveAMessage≥≥r è
)≥≥è ê
)≥≥ê ë
;≥≥ë í
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
∑∑] ^
stpChat
∏∏ 
.
∏∏ 
Children
∏∏  
.
∏∏  !
Add
∏∏! $
(
∏∏$ %
new
∏∏% (
ChatMessageCard
∏∏) 8
(
∏∏8 9

Properties
∏∏9 C
.
∏∏C D
	Resources
∏∏D M
.
∏∏M N
txbErrorTitle
∏∏N [
,
∏∏[ \

Properties
∏∏] g
.
∏∏g h
	Resources
∏∏h q
.
∏∏q r,
txbFailToSendOrReciveAMessage∏∏r è
)∏∏è ê
)∏∏ê ë
;∏∏ë í
}
ππ 
}
∫∫ 	
private
ºº 
void
ºº 
HandleException
ºº $
(
ºº$ %
	Exception
ºº% .
ex
ºº/ 1
,
ºº1 2
string
ºº3 9
errorMessage
ºº: F
)
ººF G
{
ΩΩ 	%
ExceptionHandlerForLogs
ææ #
.
ææ# $
LogException
ææ$ 0
(
ææ0 1
ex
ææ1 3
,
ææ3 4!
ExceptionDictionary
ææ5 H
.
ææH I
FATAL_EXCEPTION
ææI X
)
ææX Y
;
ææY Z
dialogMessage
øø 
=
øø 
new
øø &
ErrorMessageDialogWindow
øø  8
(
øø8 9

Properties
øø9 C
.
øøC D
	Resources
øøD M
.
øøM N
txbErrorTitle
øøN [
,
øø[ \
errorMessage
øø] i
,
øøi j
Application
øøk v
.
øøv w
Current
øøw ~
.
øø~ 

MainWindowøø â
)øøâ ä
;øøä ã
}
¿¿ 	
}
¬¬ 
}√√ Ã"
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
  &(
_AT_LEAST_TWO_CAPITAL_LETTER

' C
=

D E
$str	

F É
;


É Ñ
private 
static 
readonly 
String  &+
_AT_LEAST_ONE_SPECIAL_CHARACTER' F
=G H
$strI Z
;Z [
private 
static 
readonly 
String  &)
_AT_LEAST_ONE_PUNTUATION_MARK' D
=E F
$strG P
;P Q
private 
static 
readonly 
string  &
_NAME_RULES_CHAR' 7
=8 9
$str: [
;[ \
private 
static 
readonly 
string  & 
_USERNAME_RULES_CHAR' ;
=< =
$str> ^
;^ _
private 
static 
readonly 
string  &
_EMAIL_RULES_CHAR' 8
=9 :
$str; z
;z {
private 
static 
readonly 
string  &
_EMAIL_ALLOW_CHAR' 8
=9 :
$str; U
;U V
private 

Dictionary 
< 
string !
,! "
Regex# (
>( )$
validationTextBoxRegexes* B
=C D
newE H

DictionaryI S
<S T
stringT Z
,Z [
Regex\ a
>a b
{ 	
{ 
$str  
,  !
new" %
Regex& +
(+ ,
_NAME_RULES_CHAR, <
)< =
}> ?
,? @
{ 
$str $
,$ %
new& )
Regex* /
(/ 0 
_USERNAME_RULES_CHAR0 D
)D E
}F G
,G H
{ 
$str  
,  !
new" %
Regex& +
(+ ,
_EMAIL_ALLOW_CHAR, =
)= >
}? @
} 	
;	 

public 

Dictionary 
< 
string  
,  !
Regex" '
>' ($
ValidationTextBoxRegexes) A
{B C
getD G
=>H J$
validationTextBoxRegexesK c
;c d
sete h
=>i k%
validationTextBoxRegexes	l Ñ
=
Ö Ü
value
á å
;
å ç
}
é è
public 
String "
GetAt_LEAST_TWO_NUMBER ,
(, -
)- .
{ 	
return !
_AT_LEAST_TWO_NUMBERS (
;( )
} 	
public!! 
String!! *
GetAt_LEAST_TWO_CAPITAL_LETTER!! 4
(!!4 5
)!!5 6
{"" 	
return## (
_AT_LEAST_TWO_CAPITAL_LETTER## /
;##/ 0
}$$ 	
public&& 
String&& -
!GetAt_LEAST_ONE_SPECIAL_CHARACTER&& 7
(&&7 8
)&&8 9
{'' 	
return(( +
_AT_LEAST_ONE_SPECIAL_CHARACTER(( 2
;((2 3
})) 	
public++ 
String++ *
GetAt_LEAST_ONE_PUTUATION_MARK++ 4
(++4 5
)++5 6
{,, 	
return-- )
_AT_LEAST_ONE_PUNTUATION_MARK-- 0
;--0 1
}.. 	
public00 
String00 
GetNAME_RULES_CHAR00 (
(00( )
)00) *
{11 	
return22 
_NAME_RULES_CHAR22 #
;22# $
}33 	
public55 
String55 "
GetUSERNAME_RULES_CHAR55 ,
(55, -
)55- .
{66 	
return77  
_USERNAME_RULES_CHAR77 '
;77' (
}88 	
public:: 
String:: 
GetEMAIL_RULES_CHAR:: )
(::) *
)::* +
{;; 	
return<< 
_EMAIL_RULES_CHAR<< $
;<<$ %
}== 	
}?? 
}AA ıà
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
private## 
Window## 
dialogMessage## $
;##$ %
private%% 
UserSingleton%% 
(%% 
)%% 
{%%  !
}%%" #
private&& 
UserSingleton&& 
(&& 
UserPojo&& &
userSingleton&&' 4
,&&4 5

PlayerPojo&&6 @
playerSingleton&&A P
)&&P Q
{'' 	
IdUser(( 
=(( 
userSingleton(( "
.((" #
IdUser((# )
;(() *
Name)) 
=)) 
userSingleton))  
.))  !
Name))! %
;))% &
UserName** 
=** 
userSingleton** $
.**$ %
UserName**% -
;**- .
Email++ 
=++ 
userSingleton++ !
.++! "
EmailAddress++" .
;++. /
Password,, 
=,, 
userSingleton,, $
.,,$ %
Password,,% -
;,,- .
IdPlayer-- 
=-- 
playerSingleton-- &
.--& '
IdPlayer--' /
;--/ 0
GeneralPoints.. 
=.. 
playerSingleton.. +
...+ ,
GeneralPoints.., 9
;..9 :
	NoReports// 
=// 
playerSingleton// '
.//' (
	NoReports//( 1
;//1 2
IdCurrentAvatar00 
=00 
playerSingleton00 -
.00- .
IdActualAvatar00. <
;00< =
IdState11 
=11 
playerSingleton11 %
.11% &
IdState11& -
;11- .
}22 	
public44 
static44 
UserPojo44  
GetUserPojoSingelton44 3
(443 4
)444 5
{55 	
if66 
(66 #
instanceOfUserSingleton66 &
!=66' )
null66* .
)66. /
{77 
UserPojo88 
userPOJO88 !
=88" #
new88$ '
UserPojo88( 0
(880 1
)881 2
{99 
IdUser:: 
=:: #
instanceOfUserSingleton:: 4
.::4 5
IdUser::5 ;
,::; <
Name;; 
=;; #
instanceOfUserSingleton;; 2
.;;2 3
Name;;3 7
,;;7 8
UserName<< 
=<< #
instanceOfUserSingleton<< 6
.<<6 7
UserName<<7 ?
,<<? @
EmailAddress==  
===! "#
instanceOfUserSingleton==# :
.==: ;
Email==; @
,==@ A
Password>> 
=>> #
instanceOfUserSingleton>> 6
.>>6 7
Password>>7 ?
}?? 
;?? 
return@@ 
userPOJO@@ 
;@@  
}AA 
returnBB 
nullBB 
;BB 
}CC 	
publicEE 
staticEE 
UserSingletonEE #
GetMainUserEE$ /
(EE/ 0
)EE0 1
{FF 	
isActiveGG 
=GG 
trueGG 
;GG 
ifHH 
(HH #
instanceOfUserSingletonHH '
==HH( *
nullHH+ /
)HH/ 0
{II #
instanceOfUserSingletonJJ '
=JJ( )
newJJ* -
UserSingletonJJ. ;
(JJ; <
)JJ< =
;JJ= >
BeginHeartBeatKK 
(KK 
)KK  
;KK  !
}LL 
returnMM #
instanceOfUserSingletonMM *
;MM* +
}NN 	
publicPP 
staticPP 
UserSingletonPP #
GetMainUserPP$ /
(PP/ 0
UserPojoPP0 8
userSingletonPP9 F
,PPF G

PlayerPojoPPH R
playerSingletonPPS b
)PPb c
{QQ 	
isActiveRR 
=RR 
trueRR 
;RR 
ifSS 
(SS #
instanceOfUserSingletonSS '
==SS( *
nullSS+ /
)SS/ 0
{TT #
instanceOfUserSingletonUU '
=UU( )
newUU* -
UserSingletonUU. ;
(UU; <
userSingletonUU< I
,UUI J
playerSingletonUUK Z
)UUZ [
;UU[ \
BeginHeartBeatVV 
(VV 
)VV  
;VV  !
}WW 
returnXX #
instanceOfUserSingletonXX *
;XX* +
}YY 	
public[[ 
static[[ 
void[[ 
CleanSingleton[[ )
([[) *
)[[* +
{\\ 	#
instanceOfUserSingleton]] #
=]]$ %
null]]& *
;]]* +
isActive^^ 
=^^ 
false^^ 
;^^ 
StopHeartBeat__ 
(__ 
)__ 
;__ 
}`` 	
publicaa 
voidaa 
UpdateNameDataaa "
(aa" #
stringaa# )
newNameaa* 1
)aa1 2
{bb 	
thiscc 
.cc 
Namecc 
=cc 
newNamecc 
;cc  
}dd 	
publicee 
voidee 
UpdateAvatarDataee $
(ee% &
intee& )
newPhotoee* 2
)ee2 3
{ff 	
thisgg 
.gg 
IdCurrentAvatargg  
=gg! "
newPhotogg# +
;gg+ ,
}hh 	
publicii 
voidii 
UpdateEmailDataii #
(ii# $
stringii$ *
newEmailii+ 3
)ii3 4
{jj 	
thiskk 
.kk 
Emailkk 
=kk 
newEmailkk !
;kk! "
}ll 	
publicnn 
boolnn 
IsClientActivenn "
(nn" #
)nn# $
{oo 	
returnpp 
isActivepp 
;pp 
}qq 	
privatess 
staticss 
voidss 
BeginHeartBeatss *
(ss* +
)ss+ ,
{tt 	
tryvv 
{ww 
varxx 
heartbeatClientxx #
=xx$ %
newxx& )
HeartBeatClientxx* 9
(xx9 :
)xx: ;
;xx; <
heartbeatTimeryy 
=yy  
newyy! $
Systemyy% +
.yy+ ,
	Threadingyy, 5
.yy5 6
Timeryy6 ;
(yy; <
stateyy< A
=>yyB D
{yyE F
tryzz 
{{{ 
heartbeatClient|| '
.||' (
	Heartbeat||( 1
(||1 2
)||2 3
;||3 4
}}} 
catch~~ 
(~~ (
SecurityNegotiationException~~ 7
ex~~8 :
)~~: ;
{ %
ExceptionHandlerForLogs
ÄÄ /
.
ÄÄ/ 0
LogException
ÄÄ0 <
(
ÄÄ< =
ex
ÄÄ= ?
,
ÄÄ? @!
ExceptionDictionary
ÄÄA T
.
ÄÄT U
FATAL_EXCEPTION
ÄÄU d
)
ÄÄd e
;
ÄÄe f
}
ÇÇ 
catch
ÑÑ 
(
ÑÑ *
AddressAccessDeniedException
ÑÑ 7
ex
ÑÑ8 :
)
ÑÑ: ;
{
ÖÖ %
ExceptionHandlerForLogs
ÜÜ /
.
ÜÜ/ 0
LogException
ÜÜ0 <
(
ÜÜ< =
ex
ÜÜ= ?
,
ÜÜ? @!
ExceptionDictionary
ÜÜA T
.
ÜÜT U
FATAL_EXCEPTION
ÜÜU d
)
ÜÜd e
;
ÜÜe f
}
àà 
catch
ââ 
(
ââ 
ProtocolException
ââ ,
ex
ââ- /
)
ââ/ 0
{
ää %
ExceptionHandlerForLogs
ãã /
.
ãã/ 0
LogException
ãã0 <
(
ãã< =
ex
ãã= ?
,
ãã? @!
ExceptionDictionary
ããA T
.
ããT U
FATAL_EXCEPTION
ããU d
)
ããd e
;
ããe f
}
çç 
catch
éé 
(
éé 
SocketException
éé *
ex
éé+ -
)
éé- .
{
èè %
ExceptionHandlerForLogs
êê /
.
êê/ 0
LogException
êê0 <
(
êê< =
ex
êê= ?
,
êê? @!
ExceptionDictionary
êêA T
.
êêT U
FATAL_EXCEPTION
êêU d
)
êêd e
;
êêe f
}
íí 
catch
ìì 
(
ìì '
EndpointNotFoundException
ìì 4
ex
ìì5 7
)
ìì7 8
{
îî %
ExceptionHandlerForLogs
ïï /
.
ïï/ 0
LogException
ïï0 <
(
ïï< =
ex
ïï= ?
,
ïï? @!
ExceptionDictionary
ïïA T
.
ïïT U
FATAL_EXCEPTION
ïïU d
)
ïïd e
;
ïïe f
}
óó 
catch
òò 
(
òò 1
#CommunicationObjectFaultedException
òò >
ex
òò? A
)
òòA B
{
ôô %
ExceptionHandlerForLogs
öö /
.
öö/ 0
LogException
öö0 <
(
öö< =
ex
öö= ?
,
öö? @!
ExceptionDictionary
ööA T
.
ööT U
FATAL_EXCEPTION
ööU d
)
ööd e
;
ööe f
}
õõ 
catch
úú 
(
úú 
TimeoutException
úú +
ex
úú, .
)
úú. /
{
ùù %
ExceptionHandlerForLogs
ûû /
.
ûû/ 0
LogException
ûû0 <
(
ûû< =
ex
ûû= ?
,
ûû? @!
ExceptionDictionary
ûûA T
.
ûûT U
FATAL_EXCEPTION
ûûU d
)
ûûd e
;
ûûe f
}
üü 
catch
†† 
(
†† $
CommunicationException
†† 1
ex
††2 4
)
††4 5
{
°° %
ExceptionHandlerForLogs
¢¢ /
.
¢¢/ 0
LogException
¢¢0 <
(
¢¢< =
ex
¢¢= ?
,
¢¢? @!
ExceptionDictionary
¢¢A T
.
¢¢T U
FATAL_EXCEPTION
¢¢U d
)
¢¢d e
;
¢¢e f
if
££ 
(
££ 
ex
££ 
.
££ 
InnerException
££ -
is
££. 0
SocketException
££1 @
socketException
££A P
)
££P Q
{
§§ %
ExceptionHandlerForLogs
•• 3
.
••3 4
LogException
••4 @
(
••@ A
ex
••A C
,
••C D!
ExceptionDictionary
••E X
.
••X Y
FATAL_EXCEPTION
••Y h
)
••h i
;
••i j
}
¶¶ 
}
ßß 
}
®® 
,
®® 
null
®® 
,
®® 
TimeSpan
®® %
.
®®% &
Zero
®®& *
,
®®* +
TimeSpan
®®, 4
.
®®4 5
FromSeconds
®®5 @
(
®®@ A
$num
®®A C
)
®®C D
)
®®D E
;
®®E F
}
©© 
catch
™™ 
(
™™ *
SecurityNegotiationException
™™ /
ex
™™0 2
)
™™2 3
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
¨¨] ^
}
≠≠ 
catch
ÆÆ 
(
ÆÆ *
AddressAccessDeniedException
ÆÆ /
ex
ÆÆ0 2
)
ÆÆ2 3
{
ØØ %
ExceptionHandlerForLogs
∞∞ '
.
∞∞' (
LogException
∞∞( 4
(
∞∞4 5
ex
∞∞5 7
,
∞∞7 8!
ExceptionDictionary
∞∞9 L
.
∞∞L M
FATAL_EXCEPTION
∞∞M \
)
∞∞\ ]
;
∞∞] ^
}
±± 
catch
≤≤ 
(
≤≤ 
ProtocolException
≤≤ $
ex
≤≤% '
)
≤≤' (
{
≥≥ %
ExceptionHandlerForLogs
¥¥ '
.
¥¥' (
LogException
¥¥( 4
(
¥¥4 5
ex
¥¥5 7
,
¥¥7 8!
ExceptionDictionary
¥¥9 L
.
¥¥L M
FATAL_EXCEPTION
¥¥M \
)
¥¥\ ]
;
¥¥] ^
}
µµ 
catch
∂∂ 
(
∂∂ 
SocketException
∂∂ "
ex
∂∂# %
)
∂∂% &
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
∏∏] ^
}
ππ 
catch
∫∫ 
(
∫∫ '
EndpointNotFoundException
∫∫ ,
ex
∫∫- /
)
∫∫/ 0
{
ªª %
ExceptionHandlerForLogs
ºº '
.
ºº' (
LogException
ºº( 4
(
ºº4 5
ex
ºº5 7
,
ºº7 8!
ExceptionDictionary
ºº9 L
.
ººL M
FATAL_EXCEPTION
ººM \
)
ºº\ ]
;
ºº] ^
}
ΩΩ 
catch
ææ 
(
ææ 1
#CommunicationObjectFaultedException
ææ 6
ex
ææ7 9
)
ææ9 :
{
øø %
ExceptionHandlerForLogs
¿¿ '
.
¿¿' (
LogException
¿¿( 4
(
¿¿4 5
ex
¿¿5 7
,
¿¿7 8!
ExceptionDictionary
¿¿9 L
.
¿¿L M
FATAL_EXCEPTION
¿¿M \
)
¿¿\ ]
;
¿¿] ^
}
¡¡ 
catch
¬¬ 
(
¬¬ 
TimeoutException
¬¬ #
ex
¬¬$ &
)
¬¬& '
{
√√ %
ExceptionHandlerForLogs
ƒƒ '
.
ƒƒ' (
LogException
ƒƒ( 4
(
ƒƒ4 5
ex
ƒƒ5 7
,
ƒƒ7 8!
ExceptionDictionary
ƒƒ9 L
.
ƒƒL M
FATAL_EXCEPTION
ƒƒM \
)
ƒƒ\ ]
;
ƒƒ] ^
}
≈≈ 
catch
∆∆ 
(
∆∆ $
CommunicationException
∆∆ )
ex
∆∆* ,
)
∆∆, -
{
«« %
ExceptionHandlerForLogs
»» '
.
»»' (
LogException
»»( 4
(
»»4 5
ex
»»5 7
,
»»7 8!
ExceptionDictionary
»»9 L
.
»»L M
FATAL_EXCEPTION
»»M \
)
»»\ ]
;
»»] ^
if
…… 
(
…… 
ex
…… 
.
…… 
InnerException
…… $
is
……% '
SocketException
……( 7
socketException
……8 G
)
……G H
{
   %
ExceptionHandlerForLogs
ÀÀ +
.
ÀÀ+ ,
LogException
ÀÀ, 8
(
ÀÀ8 9
ex
ÀÀ9 ;
,
ÀÀ; <!
ExceptionDictionary
ÀÀ= P
.
ÀÀP Q
FATAL_EXCEPTION
ÀÀQ `
)
ÀÀ` a
;
ÀÀa b
}
ÃÃ 
}
ÕÕ 
}
ŒŒ 	
private
–– 
static
–– 
void
–– 
StopHeartBeat
–– )
(
––) *
)
––* +
{
—— 	
try
““ 
{
”” 
if
‘‘ 
(
‘‘ 
heartbeatTimer
‘‘ "
!=
‘‘# %
null
‘‘& *
)
‘‘* +
{
’’ 
heartbeatTimer
÷÷ "
?
÷÷" #
.
÷÷# $
Change
÷÷$ *
(
÷÷* +
Timeout
÷÷+ 2
.
÷÷2 3
Infinite
÷÷3 ;
,
÷÷; <
Timeout
÷÷= D
.
÷÷D E
Infinite
÷÷E M
)
÷÷M N
;
÷÷N O
heartbeatTimer
◊◊ "
?
◊◊" #
.
◊◊# $
Dispose
◊◊$ +
(
◊◊+ ,
)
◊◊, -
;
◊◊- .
}
ŸŸ 
}
⁄⁄ 
catch
⁄⁄ 
(
⁄⁄ %
ObjectDisposedException
⁄⁄ *
ex
⁄⁄+ -
)
⁄⁄- .
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
‹‹] ^
}
›› 
}
ﬁﬁ 	
}
‚‚ 
}„„ ß
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
} ¥
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
{ 
private 
static 
bool 
	isEnglish %
=& '
true( ,
;, -
public		 
static		 
bool		 
	IsEnglish		 $
{		% &
get		' *
=>		+ -
	isEnglish		. 7
;		7 8
set		9 <
=>		= ?
	isEnglish		@ I
=		J K
value		L Q
;		Q R
}		S T
	protected 
override 
void 
	OnStartup  )
() *
StartupEventArgs* :
e; <
)< =
{ 	
base 
. 
	OnStartup 
( 
e 
) 
; 
Views 
. 
PrincipalWindow !

mainWindow" ,
=- .
new/ 2
Views3 8
.8 9
PrincipalWindow9 H
(H I
)I J
;J K

mainWindow 
. !
WindowStartupLocation ,
=- .
System/ 5
.5 6
Windows6 =
.= >!
WindowStartupLocation> S
.S T
CenterScreenT `
;` a
this 
. 

MainWindow 
= 

mainWindow (
;( )

mainWindow 
. 
Show 
( 
) 
; 
} 	
App 
( 
) 
{ 	
System 
. 
	Threading 
. 
Thread #
.# $
CurrentThread$ 1
.1 2
CurrentUICulture2 B
=C D
newE H
SystemI O
.O P
GlobalizationP ]
.] ^
CultureInfo^ i
(i j
$strj q
)q r
;r s
} 	
public 
static 
void 
ChangeLanguage )
(* +
string+ 1
language2 :
): ;
{ 	
if 
( 
language 
. 
Equals 
(  
$str  '
)' (
)( )
{ 
	IsEnglish 
= 
true  
;  !
} 
else 
{   
	IsEnglish!! 
=!! 
false!! !
;!!! "
}"" 
System## 
.## 
	Threading## 
.## 
Thread## #
.### $
CurrentThread##$ 1
.##1 2
CurrentUICulture##2 B
=##C D
new##E H
System##I O
.##O P
Globalization##P ]
.##] ^
CultureInfo##^ i
(##i j
language##j r
)##r s
;##s t
}$$ 	
}&& 
}'' §
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
} ÛV
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
varNN 

playerInfoNN 
=NN  #
consultInformationProxyNN! 8
.NN8 9
ConsultPlayerByIdNN9 J
(NNJ K
idPlayerNNK S
)NNS T
;NNT U#
consultInformationProxyOO '
.OO' (
CloseOO( -
(OO- .
)OO. /
;OO/ 0
ifQQ 
(QQ 

playerInfoQQ 
!=QQ !
nullQQ" &
&&QQ' )

playerInfoQQ* 4
.QQ4 5
	CodeEventQQ5 >
==QQ? A

ExceptionsQQB L
.QQL M
ExceptionDictionaryQQM `
.QQ` a
SUCCESFULL_EVENTQQa q
)QQq r
{RR 
varSS 
playerWrapperSS %
=SS& '

playerInfoSS( 2
.SS2 3
ObjectSavedSS3 >
;SS> ?
ifUU 
(UU 
playerWrapperUU %
!=UU& (
nullUU) -
&&UU. 0
playerWrapperUU1 >
isUU? A

PlayerPojoUUB L
)UUL M
{VV 
varWW 
playerWW "
=WW# $
(WW% &

PlayerPojoWW& 0
)WW0 1
playerWrapperWW1 >
;WW> ?
intYY 
imageIdYY #
=YY$ %
playerYY& ,
.YY, -
IdActualAvatarYY- ;
;YY; <
string[[ 
	imageName[[ (
=[[) *
imageIdMappings[[+ :
.[[: ;
FirstOrDefault[[; I
([[I J
x[[J K
=>[[L N
x[[O P
.[[P Q
Value[[Q V
==[[W Y
imageId[[Z a
)[[a b
.[[b c
Key[[c f
;[[f g
if]] 
(]] 
!]] 
string]] #
.]]# $
IsNullOrEmpty]]$ 1
(]]1 2
	imageName]]2 ;
)]]; <
)]]< =
{^^ 
Bitmap__ "
bmp__# &
=__' (
(__) *
Bitmap__* 0
)__0 1

Properties__1 ;
.__; <
ResourcesImage__< J
.__J K
ResourceManager__K Z
.__Z [
	GetObject__[ d
(__d e
	imageName__e n
)__n o
;__o p
BitmapSourceaa (
bmpImageaa) 1
=aa2 3
Imagingaa4 ;
.aa; <)
CreateBitmapSourceFromHBitmapaa< Y
(aaY Z
bmpbb  #
.bb# $

GetHbitmapbb$ .
(bb. /
)bb/ 0
,bb0 1
IntPtrcc  &
.cc& '
Zerocc' +
,cc+ ,
	Int32Rectdd  )
.dd) *
Emptydd* /
,dd/ 0
BitmapSizeOptionsee  1
.ee1 2
FromEmptyOptionsee2 B
(eeB C
)eeC D
)ff 
;ff 
imageProfilehh (
.hh( )
Sourcehh) /
=hh0 1
bmpImagehh2 :
;hh: ;
}ii 
}jj 
}kk 
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
lblEndPointNotFoundoo9 L
)ooL M
;ooM N
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
.ss8 9$
lblComunicationExceptionss9 Q
)ssQ R
;ssR S
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
lblTimeExceptionww9 I
)wwI J
;wwJ K
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
lblWithoutConection{{9 L
){{L M
;{{M N
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
GenericEmailIssue9 J
)J K
;K L
}
ÄÄ 
}
ÅÅ 	
private
ÇÇ 
void
ÇÇ 
HandleException
ÇÇ $
(
ÇÇ$ %
	Exception
ÇÇ% .
ex
ÇÇ/ 1
,
ÇÇ1 2
string
ÇÇ3 9
errorMessage
ÇÇ: F
)
ÇÇF G
{
ÉÉ 	%
ExceptionHandlerForLogs
ÑÑ #
.
ÑÑ# $
LogException
ÑÑ$ 0
(
ÑÑ0 1
ex
ÑÑ1 3
,
ÑÑ3 4!
ExceptionDictionary
ÑÑ5 H
.
ÑÑH I
FATAL_EXCEPTION
ÑÑI X
)
ÑÑX Y
;
ÑÑY Z
dialogMessage
ÜÜ 
=
ÜÜ 
new
ÜÜ &
ErrorMessageDialogWindow
ÜÜ  8
(
ÜÜ8 9

Properties
ÜÜ9 C
.
ÜÜC D
	Resources
ÜÜD M
.
ÜÜM N
txbErrorTitle
ÜÜN [
,
ÜÜ[ \
errorMessage
ÜÜ] i
,
ÜÜi j
Application
ÜÜk v
.
ÜÜv w
Current
ÜÜw ~
.
ÜÜ~ 

MainWindowÜÜ â
)ÜÜâ ä
;ÜÜä ã
}
áá 	
private
àà 
void
àà 
RefreshWindow
àà "
(
àà" #
)
àà# $
{
ââ 	
	LogInUser
ää 
logInUserPage
ää #
=
ää$ %
new
ää& )
	LogInUser
ää* 3
(
ää3 4
)
ää4 5
;
ää5 6
this
ãã 
.
ãã 
NavigationService
ãã "
.
ãã" #
Navigate
ãã# +
(
ãã+ ,
logInUserPage
ãã, 9
)
ãã9 :
;
ãã: ;
NavigationService
åå 
.
åå 
RemoveBackEntry
åå -
(
åå- .
)
åå. /
;
åå/ 0
}
çç 	
}
éé 
}èè ï»
kC:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameClient\Pages\UserRegister.xaml.cs
	namespace 	
JeopardyGame
 
. 
Pages 
{ 
public 

partial 
class 
UserRegister %
:& '
Page( ,
{ 
private 
List 
< 
Label 
> 
ListBoxRules (
=) *
new+ .
List/ 3
<3 4
Label4 9
>9 :
(: ;
); <
;< =
private 
const 
int 
DISALLOWED_VALUES +
=, -
$num. /
;/ 0
private 
const 
int 
ALLOWED_VALUES (
=) *
$num+ ,
;, -
private 
const 
int #
MINIMUN_PASSWORD_LENGTH 1
=2 3
$num4 6
;6 7
private 
const 
int #
MAXIMUM_PASSWORD_LENGTH 1
=2 3
$num4 6
;6 7
private 
Window 
dialogMessage $
;$ %
public"" 
UserRegister"" 
("" 
)"" 
{## 	
InitializeComponent$$ 
($$  
)$$  !
;$$! "
PrepareWindow%% 
(%% 
)%% 
;%%  
txbNameCreateAccount&&  
.&&  !
	MaxLength&&! *
=&&+ ,
$num&&- /
;&&/ 0$
txbUserNameCreateAccount'' $
.''$ %
	MaxLength''% .
=''/ 0
$num''1 3
;''3 4!
txbEmailCreateAccount(( !
.((! "
	MaxLength((" +
=((, -
$num((. 0
;((0 1$
psbPasswordCreateAccount)) $
.))$ %
	MaxLength))% .
=))/ 0
$num))1 3
;))3 4
}** 	
public,, 
void,, 

LoadFields,, 
(,, 
UserPojo,, '
user,,( ,
),,, -
{-- 	
ListBoxRules.. 
... 
Clear.. 
(.. 
)..  
;..  !
PrepareWindow// 
(// 
)// 
;//  
txbNameCreateAccount00  
.00  !
Text00! %
=00& '
user00( ,
.00, -
Name00- 1
;001 2$
txbUserNameCreateAccount11 $
.11$ %
Text11% )
=11* +
user11, 0
.110 1
UserName111 9
;119 :!
txbEmailCreateAccount22 !
.22! "
Text22" &
=22' (
user22) -
.22- .
EmailAddress22. :
;22: ;$
psbPasswordCreateAccount33 $
.33$ %
Password33% -
=33. /
user330 4
.334 5
Password335 =
;33= >
}44 	
private66 
void66 
PrepareWindow66 "
(66" #
)66# $
{77 	
InitializeListeners88 
(88  
)88  !
;88! "
CreateRuleLabels99 
(99 
)99 
;99 
foreach:: 
(:: 
var:: 
rule:: 
in::  
ListBoxRules::! -
)::- .
{;; 
lsbPasswordRules<<  
.<<  !
Items<<! &
.<<& '
Add<<' *
(<<* +
rule<<+ /
)<</ 0
;<<0 1
}== 
}>> 	
private@@ 
void@@ 
InitializeListeners@@ (
(@@( )
)@@) *
{AA 	$
psbPasswordCreateAccountBB $
.BB$ %
PasswordChangedBB% 4
+=BB5 7
EntryPasswordCharBB8 I
;BBI J$
psbPasswordCreateAccountCC $
.CC$ %
PreviewKeyDownCC% 3
+=CC4 6
EntryTextBoxPasteCC7 H
;CCH I 
txbNameCreateAccountEE  
.EE  !
PreviewTextInputEE! 1
+=EE2 4&
EntryTextBoxCharValidationEE5 O
;EEO P$
txbUserNameCreateAccountFF $
.FF$ %
PreviewTextInputFF% 5
+=FF6 8&
EntryTextBoxCharValidationFF9 S
;FFS T 
txbNameCreateAccountHH  
.HH  !
PreviewKeyDownHH! /
+=HH0 2
EntryTextBoxPasteHH3 D
;HHD E$
txbUserNameCreateAccountII $
.II$ %
PreviewKeyDownII% 3
+=II4 6
EntryTextBoxPasteII7 H
;IIH I!
txbEmailCreateAccountJJ !
.JJ! "
PreviewTextInputJJ" 2
+=JJ3 5&
EntryTextBoxCharValidationJJ6 P
;JJP Q!
txbEmailCreateAccountKK !
.KK! "
PreviewKeyDownKK" 0
+=KK1 3
EntryTextBoxPasteKK4 E
;KKE F
}LL 	
privateNN 
voidNN 
EntryPasswordCharNN &
(NN& '
objectNN' -
senderNN. 4
,NN4 5
RoutedEventArgsNN6 E
eNNF G
)NNG H
{OO 	
intPP (
changeButtonStateForPasswordPP ,
=PP- .
CheckPasswordPP/ <
(PP< =
)PP= >
;PP> ?
ifQQ 
(QQ (
changeButtonStateForPasswordQQ ,
==QQ- /
ALLOWED_VALUESQQ0 >
)QQ> ?
{RR 
bttSaveUserSS 
.SS 
	IsEnabledSS %
=SS& '
trueSS( ,
;SS, -
}TT 
elseUU 
{VV 
bttSaveUserWW 
.WW 
	IsEnabledWW %
=WW& '
falseWW( -
;WW- .
}XX 
}YY 	
private[[ 
void[[ &
EntryTextBoxCharValidation[[ /
([[/ 0
object[[0 6
sender[[7 =
,[[= >$
TextCompositionEventArgs[[? W
e[[X Y
)[[Y Z
{\\ 	
TextBox]] 
currentTextBox]] "
=]]# $
sender]]% +
as]], .
TextBox]]/ 6
;]]6 7%
RegularExpressionsLibrary^^ %%
regularExpressionsLibrary^^& ?
=^^@ A
new^^B E%
RegularExpressionsLibrary^^F _
(^^_ `
)^^` a
;^^a b
if__ 
(__ 
(__ %
regularExpressionsLibrary__ *
.__* +$
ValidationTextBoxRegexes__+ C
.__C D
TryGetValue__D O
(__O P
currentTextBox__P ^
.__^ _
Name___ c
,__c d
out__e h
Regex__i n
regex__o t
)__t u
)__u v
&&__w y
(__z {
!__{ |
regex	__| Å
.
__Å Ç
IsMatch
__Ç â
(
__â ä
currentTextBox
__ä ò
.
__ò ô
Text
__ô ù
+
__û ü
e
__† °
.
__° ¢
Text
__¢ ¶
)
__¶ ß
)
__ß ®
)
__® ©
{`` 
eaa 
.aa 
Handledaa 
=aa 
trueaa  
;aa  !
}bb 
}cc 	
privatedd 
voiddd 
EntryTextBoxPastedd &
(dd& '
objectdd' -
senderdd. 4
,dd4 5
KeyEventArgsdd6 B
eddC D
)ddD E
{ee 	
ifff 
(ff 
(ff 
Keyboardff 
.ff 
	Modifiersff #
&ff$ %
ModifierKeysff& 2
.ff2 3
Controlff3 :
)ff: ;
==ff< >
ModifierKeysff? K
.ffK L
ControlffL S
&&ffT V
(ffW X
effX Y
.ffY Z
KeyffZ ]
==ff^ `
Keyffa d
.ffd e
Vffe f
)fff g
)ffg h
{gg 
ehh 
.hh 
Handledhh 
=hh 
truehh  $
;hh$ %
}ii 
}jj 	
privatell 
voidll 
CreateRuleLabelsll %
(ll% &
)ll& '
{mm 	
Labelnn 
PasswordLengthRulenn $
=nn% &
newnn' *
Labelnn+ 0
(nn0 1
)nn1 2
;nn2 3
PasswordLengthRuleoo 
.oo 
Contentoo &
=oo' (

Propertiesoo) 3
.oo3 4
	Resourcesoo4 =
.oo= >!
lblPassLengthRuleDescoo> S
;ooS T
PasswordLengthRulepp 
.pp 

Foregroundpp )
=pp* +
Brushespp, 3
.pp3 4
Whitepp4 9
;pp9 :
PasswordLengthRuleqq 
.qq 
FontSizeqq '
=qq( )
$numqq* ,
;qq, -
Labelrr 
PasswordNumbersRulerr %
=rr& '
newrr( +
Labelrr, 1
(rr1 2
)rr2 3
;rr3 4
PasswordNumbersRuless 
.ss  
Contentss  '
=ss( )

Propertiesss* 4
.ss4 5
	Resourcesss5 >
.ss> ?!
lblPassNumberRuleDescss? T
;ssT U
PasswordNumbersRulett 
.tt  

Foregroundtt  *
=tt+ ,
Brushestt- 4
.tt4 5
Whitett5 :
;tt: ;
PasswordNumbersRuleuu 
.uu  
FontSizeuu  (
=uu) *
$numuu+ -
;uu- .
Labelvv  
PasswordCapitalsRulevv &
=vv' (
newvv) ,
Labelvv- 2
(vv2 3
)vv3 4
;vv4 5 
PasswordCapitalsRuleww  
.ww  !
Contentww! (
=ww) *

Propertiesww+ 5
.ww5 6
	Resourcesww6 ?
.ww? @"
lblPassCapitalRuleDescww@ V
;wwV W 
PasswordCapitalsRulexx  
.xx  !

Foregroundxx! +
=xx, -
Brushesxx. 5
.xx5 6
Whitexx6 ;
;xx; < 
PasswordCapitalsRuleyy  
.yy  !
FontSizeyy! )
=yy* +
$numyy, .
;yy. /
Labelzz 
PasswordSpeCharRulezz %
=zz& '
newzz( +
Labelzz, 1
(zz1 2
)zz2 3
;zz3 4
PasswordSpeCharRule{{ 
.{{  
Content{{  '
={{( )

Properties{{* 4
.{{4 5
	Resources{{5 >
.{{> ?"
lblPassSpeCharRuleDesc{{? U
;{{U V
PasswordSpeCharRule|| 
.||  

Foreground||  *
=||+ ,
Brushes||- 4
.||4 5
White||5 :
;||: ;
PasswordSpeCharRule}} 
.}}  
FontSize}}  (
=}}) *
$num}}+ -
;}}- .
Label~~ #
PasswordPunctuationRule~~ )
=~~* +
new~~, /
Label~~0 5
(~~5 6
)~~6 7
;~~7 8#
PasswordPunctuationRule #
.# $
Content$ +
=, -

Properties/ 9
.9 :
	Resources: C
.C D"
lblPassPuntSigRuleDescD Z
;Z [%
PasswordPunctuationRule
ÄÄ #
.
ÄÄ# $

Foreground
ÄÄ$ .
=
ÄÄ/ 0
Brushes
ÄÄ1 8
.
ÄÄ8 9
White
ÄÄ9 >
;
ÄÄ> ?%
PasswordPunctuationRule
ÅÅ #
.
ÅÅ# $
FontSize
ÅÅ$ ,
=
ÅÅ- .
$num
ÅÅ/ 1
;
ÅÅ1 2
Label
ÇÇ #
PasswordSameEmailRule
ÇÇ '
=
ÇÇ( )
new
ÇÇ* -
Label
ÇÇ. 3
(
ÇÇ3 4
)
ÇÇ4 5
;
ÇÇ5 6#
PasswordSameEmailRule
ÉÉ !
.
ÉÉ! "
Content
ÉÉ" )
=
ÉÉ* +

Properties
ÉÉ, 6
.
ÉÉ6 7
	Resources
ÉÉ7 @
.
ÉÉ@ A(
lblPassEqualsEmailRuleDesc
ÉÉA [
;
ÉÉ[ \#
PasswordSameEmailRule
ÑÑ !
.
ÑÑ! "

Foreground
ÑÑ" ,
=
ÑÑ- .
Brushes
ÑÑ/ 6
.
ÑÑ6 7
White
ÑÑ7 <
;
ÑÑ< =#
PasswordSameEmailRule
ÖÖ !
.
ÖÖ! "
FontSize
ÖÖ" *
=
ÖÖ+ ,
$num
ÖÖ- /
;
ÖÖ/ 0
ListBoxRules
ÜÜ 
.
ÜÜ 
Add
ÜÜ 
(
ÜÜ  
PasswordLengthRule
ÜÜ /
)
ÜÜ/ 0
;
ÜÜ0 1
ListBoxRules
áá 
.
áá 
Add
áá 
(
áá !
PasswordNumbersRule
áá 0
)
áá0 1
;
áá1 2
ListBoxRules
àà 
.
àà 
Add
àà 
(
àà "
PasswordCapitalsRule
àà 1
)
àà1 2
;
àà2 3
ListBoxRules
ââ 
.
ââ 
Add
ââ 
(
ââ !
PasswordSpeCharRule
ââ 0
)
ââ0 1
;
ââ1 2
ListBoxRules
ää 
.
ää 
Add
ää 
(
ää %
PasswordPunctuationRule
ää 4
)
ää4 5
;
ää5 6
ListBoxRules
ãã 
.
ãã 
Add
ãã 
(
ãã #
PasswordSameEmailRule
ãã 2
)
ãã2 3
;
ãã3 4
}
åå 	
private
èè 
void
èè !
ClickButtonSaveUser
èè (
(
èè( )
object
èè) /
sender
èè0 6
,
èè6 7
RoutedEventArgs
èè8 G
e
èèH I
)
èèI J
{
êê 	
UserPojo
ëë 

userToSave
ëë 
=
ëë  !
new
ëë" %
UserPojo
ëë& .
(
ëë. /
)
ëë/ 0
;
ëë0 1

userToSave
íí 
.
íí 
Name
íí 
=
íí "
txbNameCreateAccount
íí 2
.
íí2 3
Text
íí3 7
.
íí7 8
Trim
íí8 <
(
íí< =
)
íí= >
;
íí> ?

userToSave
ìì 
.
ìì 
UserName
ìì 
=
ìì  !&
txbUserNameCreateAccount
ìì" :
.
ìì: ;
Text
ìì; ?
.
ìì? @
Trim
ìì@ D
(
ììD E
)
ììE F
;
ììF G

userToSave
îî 
.
îî 
EmailAddress
îî #
=
îî$ %#
txbEmailCreateAccount
îî& ;
.
îî; <
Text
îî< @
.
îî@ A
Trim
îîA E
(
îîE F
)
îîF G
;
îîG H

userToSave
ïï 
.
ïï 
Password
ïï 
=
ïï  !&
psbPasswordCreateAccount
ïï" :
.
ïï: ;
Password
ïï; C
.
ïïC D
Trim
ïïD H
(
ïïH I
)
ïïI J
;
ïïJ K
if
ññ 
(
ññ 
CheckEmptyFields
ññ  
(
ññ  !
)
ññ! "
==
ññ# %
ALLOWED_VALUES
ññ& 4
&&
ññ5 7%
CheckEmailAddressFormat
óó '
(
óó' (
)
óó( )
==
óó* ,
ALLOWED_VALUES
óó- ;
&&
óó< >,
CheckUserNameAndEmailExistence
òò .
(
òò. /

userToSave
òò/ 9
)
òò9 :
==
òò; =
ALLOWED_VALUES
òò> L
)
òòL M
{
ôô (
GoToCodeConfirmationWindow
öö *
(
öö* +

userToSave
öö+ 5
)
öö5 6
;
öö6 7
}
õõ 
}
úú 	
private
ûû 
int
ûû 
CheckEmptyFields
ûû $
(
ûû$ %
)
ûû% &
{
üü 	
int
†† 
answer
†† 
=
†† 
ALLOWED_VALUES
†† '
;
††' (
if
°° 
(
°° 
string
°° 
.
°° 
IsNullOrEmpty
°° $
(
°°$ %"
txbNameCreateAccount
°°% 9
.
°°9 :
Text
°°: >
.
°°> ?
Trim
°°? C
(
°°C D
)
°°D E
)
°°E F
)
°°F G
{
¢¢ 
lblNameWarning
££ 
.
££ 

Visibility
££ )
=
££* +

Visibility
££, 6
.
££6 7
Visible
££7 >
;
££> ?
answer
§§ 
=
§§ 
DISALLOWED_VALUES
§§ *
;
§§* +
}
•• 
else
¶¶ 
{
ßß 
lblNameWarning
®® 
.
®® 

Visibility
®® )
=
®®* +

Visibility
®®, 6
.
®®6 7
	Collapsed
®®7 @
;
®®@ A
}
©© 
if
™™ 
(
™™ 
string
™™ 
.
™™ 
IsNullOrEmpty
™™ $
(
™™$ %&
txbUserNameCreateAccount
™™% =
.
™™= >
Text
™™> B
.
™™B C
Trim
™™C G
(
™™G H
)
™™H I
)
™™I J
)
™™J K
{
´´  
lblUserNameWarning
¨¨ "
.
¨¨" #

Visibility
¨¨# -
=
¨¨. /

Visibility
¨¨0 :
.
¨¨: ;
Visible
¨¨; B
;
¨¨B C
answer
≠≠ 
=
≠≠ 
DISALLOWED_VALUES
≠≠ *
;
≠≠* +
}
ÆÆ 
else
ØØ 
{
∞∞  
lblUserNameWarning
±± "
.
±±" #

Visibility
±±# -
=
±±. /

Visibility
±±0 :
.
±±: ;
	Collapsed
±±; D
;
±±D E
}
≤≤ 
if
≥≥ 
(
≥≥ 
string
≥≥ 
.
≥≥ 
IsNullOrEmpty
≥≥ $
(
≥≥$ %#
txbEmailCreateAccount
≥≥% :
.
≥≥: ;
Text
≥≥; ?
.
≥≥? @
Trim
≥≥@ D
(
≥≥D E
)
≥≥E F
)
≥≥F G
)
≥≥G H
{
¥¥ 
lblEmailWarning
µµ 
.
µµ  
Content
µµ  '
=
µµ( )

Properties
µµ* 4
.
µµ4 5
	Resources
µµ5 >
.
µµ> ?
lblEmptyField
µµ? L
;
µµL M
lblEmailWarning
∂∂ 
.
∂∂  

Visibility
∂∂  *
=
∂∂+ ,

Visibility
∂∂- 7
.
∂∂7 8
Visible
∂∂8 ?
;
∂∂? @
answer
∑∑ 
=
∑∑ 
DISALLOWED_VALUES
∑∑ *
;
∑∑* +
}
∏∏ 
else
ππ 
{
∫∫ 
lblEmailWarning
ªª 
.
ªª  
Content
ªª  '
=
ªª( )
string
ªª* 0
.
ªª0 1
Empty
ªª1 6
;
ªª6 7
lblEmailWarning
ºº 
.
ºº  

Visibility
ºº  *
=
ºº+ ,

Visibility
ºº- 7
.
ºº7 8
	Collapsed
ºº8 A
;
ººA B
}
ΩΩ 
if
ææ 
(
ææ 
string
ææ 
.
ææ 
IsNullOrEmpty
ææ $
(
ææ$ %&
psbPasswordCreateAccount
ææ% =
.
ææ= >
Password
ææ> F
.
ææF G
Trim
ææG K
(
ææK L
)
ææL M
)
ææM N
)
ææN O
{
øø  
lblPasswordWarning
¿¿ "
.
¿¿" #

Visibility
¿¿# -
=
¿¿. /

Visibility
¿¿0 :
.
¿¿: ;
Visible
¿¿; B
;
¿¿B C
answer
¡¡ 
=
¡¡ 
DISALLOWED_VALUES
¡¡ *
;
¡¡* +
}
¬¬ 
else
√√ 
{
ƒƒ  
lblPasswordWarning
≈≈ "
.
≈≈" #

Visibility
≈≈# -
=
≈≈. /

Visibility
≈≈0 :
.
≈≈: ;
	Collapsed
≈≈; D
;
≈≈D E
}
∆∆ 
return
«« 
answer
«« 
;
«« 
}
»» 	
private
   
int
   %
CheckEmailAddressFormat
   +
(
  + ,
)
  , -
{
ÀÀ 	'
RegularExpressionsLibrary
ÃÃ %
regexInstance
ÃÃ& 3
=
ÃÃ4 5
new
ÃÃ6 9'
RegularExpressionsLibrary
ÃÃ: S
(
ÃÃS T
)
ÃÃT U
;
ÃÃU V
Regex
ÕÕ 
regexExpression
ÕÕ !
=
ÕÕ" #
new
ÕÕ$ '
Regex
ÕÕ( -
(
ÕÕ- .
regexInstance
ÕÕ. ;
.
ÕÕ; <!
GetEMAIL_RULES_CHAR
ÕÕ< O
(
ÕÕO P
)
ÕÕP Q
)
ÕÕQ R
;
ÕÕR S
int
ŒŒ 
answer
ŒŒ 
;
ŒŒ 
String
œœ 
email
œœ 
=
œœ #
txbEmailCreateAccount
œœ 0
.
œœ0 1
Text
œœ1 5
.
œœ5 6
Trim
œœ6 :
(
œœ: ;
)
œœ; <
;
œœ< =
if
–– 
(
–– 
!
–– 
regexExpression
––  
.
––  !
IsMatch
––! (
(
––( )
email
––) .
)
––. /
)
––/ 0
{
—— 
lblEmailWarning
““ 
.
““  
Content
““  '
=
““( )

Properties
““* 4
.
““4 5
	Resources
““5 >
.
““> ?
lblInvalidEmail
““? N
;
““N O
lblEmailWarning
”” 
.
””  

Visibility
””  *
=
””+ ,

Visibility
””- 7
.
””7 8
Visible
””8 ?
;
””? @
answer
‘‘ 
=
‘‘ 
DISALLOWED_VALUES
‘‘ *
;
‘‘* +
}
’’ 
else
÷÷ 
{
◊◊ 
lblEmailWarning
ÿÿ 
.
ÿÿ  
Content
ÿÿ  '
=
ÿÿ( )
string
ÿÿ* 0
.
ÿÿ0 1
Empty
ÿÿ1 6
;
ÿÿ6 7
lblEmailWarning
ŸŸ 
.
ŸŸ  

Visibility
ŸŸ  *
=
ŸŸ+ ,

Visibility
ŸŸ- 7
.
ŸŸ7 8
	Collapsed
ŸŸ8 A
;
ŸŸA B
answer
⁄⁄ 
=
⁄⁄ 
CheckPassword
⁄⁄ &
(
⁄⁄& '
)
⁄⁄' (
;
⁄⁄( )
}
€€ 
return
‹‹ 
answer
‹‹ 
;
‹‹ 
}
›› 	
private
ﬂﬂ 
int
ﬂﬂ 
CheckPassword
ﬂﬂ !
(
ﬂﬂ! "
)
ﬂﬂ" #
{
‡‡ 	
int
·· 
answer
·· 
=
·· 
ALLOWED_VALUES
·· '
;
··' ('
RegularExpressionsLibrary
‚‚ %
regexInstance
‚‚& 3
=
‚‚4 5
new
‚‚6 9'
RegularExpressionsLibrary
‚‚: S
(
‚‚S T
)
‚‚T U
;
‚‚U V
Regex
„„ 
regexExpression
„„ !
;
„„! "
String
‰‰ 
passwordChecked
‰‰ "
=
‰‰# $&
psbPasswordCreateAccount
‰‰% =
.
‰‰= >
Password
‰‰> F
.
‰‰F G
ToString
‰‰G O
(
‰‰O P
)
‰‰P Q
.
‰‰Q R
Trim
‰‰R V
(
‰‰V W
)
‰‰W X
;
‰‰X Y
if
ÂÂ 
(
ÂÂ 
passwordChecked
ÂÂ 
.
ÂÂ  
Length
ÂÂ  &
<
ÂÂ' (%
MINIMUN_PASSWORD_LENGTH
ÂÂ) @
||
ÂÂA C
passwordChecked
ÂÂD S
.
ÂÂS T
Length
ÂÂT Z
>
ÂÂ[ \%
MAXIMUM_PASSWORD_LENGTH
ÂÂ] t
)
ÂÂt u
{
ÊÊ !
HighLightBrokenRule
ÁÁ #
(
ÁÁ# $
ListBoxRules
ÁÁ$ 0
[
ÁÁ0 1
$num
ÁÁ1 2
]
ÁÁ2 3
)
ÁÁ3 4
;
ÁÁ4 5
answer
ËË 
=
ËË 
DISALLOWED_VALUES
ËË *
;
ËË* +
}
ÈÈ 
else
ÍÍ 
{
ÎÎ 
ClearBrokenRule
ÏÏ 
(
ÏÏ  
ListBoxRules
ÏÏ  ,
[
ÏÏ, -
$num
ÏÏ- .
]
ÏÏ. /
)
ÏÏ/ 0
;
ÏÏ0 1
}
ÌÌ 
regexExpression
ÓÓ 
=
ÓÓ 
new
ÓÓ !
Regex
ÓÓ" '
(
ÓÓ' (
regexInstance
ÓÓ( 5
.
ÓÓ5 6$
GetAt_LEAST_TWO_NUMBER
ÓÓ6 L
(
ÓÓL M
)
ÓÓM N
)
ÓÓN O
;
ÓÓO P
if
ÔÔ 
(
ÔÔ 
!
ÔÔ 
regexExpression
ÔÔ  
.
ÔÔ  !
IsMatch
ÔÔ! (
(
ÔÔ( )
passwordChecked
ÔÔ) 8
)
ÔÔ8 9
)
ÔÔ9 :
{
 !
HighLightBrokenRule
ÒÒ #
(
ÒÒ# $
ListBoxRules
ÒÒ$ 0
[
ÒÒ0 1
$num
ÒÒ1 2
]
ÒÒ2 3
)
ÒÒ3 4
;
ÒÒ4 5
answer
ÚÚ 
=
ÚÚ 
DISALLOWED_VALUES
ÚÚ *
;
ÚÚ* +
}
ÛÛ 
else
ÙÙ 
{
ıı 
ClearBrokenRule
ˆˆ 
(
ˆˆ  
ListBoxRules
ˆˆ  ,
[
ˆˆ, -
$num
ˆˆ- .
]
ˆˆ. /
)
ˆˆ/ 0
;
ˆˆ0 1
}
˜˜ 
regexExpression
¯¯ 
=
¯¯ 
new
¯¯ !
Regex
¯¯" '
(
¯¯' (
regexInstance
¯¯( 5
.
¯¯5 6,
GetAt_LEAST_TWO_CAPITAL_LETTER
¯¯6 T
(
¯¯T U
)
¯¯U V
)
¯¯V W
;
¯¯W X
if
˘˘ 
(
˘˘ 
!
˘˘ 
regexExpression
˘˘  
.
˘˘  !
IsMatch
˘˘! (
(
˘˘( )
passwordChecked
˘˘) 8
)
˘˘8 9
)
˘˘9 :
{
˙˙ !
HighLightBrokenRule
˚˚ #
(
˚˚# $
ListBoxRules
˚˚$ 0
[
˚˚0 1
$num
˚˚1 2
]
˚˚2 3
)
˚˚3 4
;
˚˚4 5
answer
¸¸ 
=
¸¸ 
DISALLOWED_VALUES
¸¸ *
;
¸¸* +
}
˝˝ 
else
˛˛ 
{
ˇˇ 
ClearBrokenRule
ÄÄ 
(
ÄÄ  
ListBoxRules
ÄÄ  ,
[
ÄÄ, -
$num
ÄÄ- .
]
ÄÄ. /
)
ÄÄ/ 0
;
ÄÄ0 1
}
ÅÅ 
regexExpression
ÇÇ 
=
ÇÇ 
new
ÇÇ !
Regex
ÇÇ" '
(
ÇÇ' (
regexInstance
ÇÇ( 5
.
ÇÇ5 6/
!GetAt_LEAST_ONE_SPECIAL_CHARACTER
ÇÇ6 W
(
ÇÇW X
)
ÇÇX Y
)
ÇÇY Z
;
ÇÇZ [
if
ÉÉ 
(
ÉÉ 
!
ÉÉ 
regexExpression
ÉÉ  
.
ÉÉ  !
IsMatch
ÉÉ! (
(
ÉÉ( )
passwordChecked
ÉÉ) 8
)
ÉÉ8 9
)
ÉÉ9 :
{
ÑÑ !
HighLightBrokenRule
ÖÖ #
(
ÖÖ# $
ListBoxRules
ÖÖ$ 0
[
ÖÖ0 1
$num
ÖÖ1 2
]
ÖÖ2 3
)
ÖÖ3 4
;
ÖÖ4 5
answer
ÜÜ 
=
ÜÜ 
DISALLOWED_VALUES
ÜÜ *
;
ÜÜ* +
}
áá 
else
àà 
{
ââ 
ClearBrokenRule
ää 
(
ää  
ListBoxRules
ää  ,
[
ää, -
$num
ää- .
]
ää. /
)
ää/ 0
;
ää0 1
}
ãã 
regexExpression
åå 
=
åå 
new
åå !
Regex
åå" '
(
åå' (
regexInstance
åå( 5
.
åå5 6,
GetAt_LEAST_ONE_PUTUATION_MARK
åå6 T
(
ååT U
)
ååU V
)
ååV W
;
ååW X
if
çç 
(
çç 
!
çç 
regexExpression
çç  
.
çç  !
IsMatch
çç! (
(
çç( )
passwordChecked
çç) 8
)
çç8 9
)
çç9 :
{
éé !
HighLightBrokenRule
èè #
(
èè# $
ListBoxRules
èè$ 0
[
èè0 1
$num
èè1 2
]
èè2 3
)
èè3 4
;
èè4 5
answer
êê 
=
êê 
DISALLOWED_VALUES
êê *
;
êê* +
}
ëë 
else
íí 
{
ìì 
ClearBrokenRule
îî 
(
îî  
ListBoxRules
îî  ,
[
îî, -
$num
îî- .
]
îî. /
)
îî/ 0
;
îî0 1
}
ïï 
int
ññ 
arrobaIndex
ññ 
=
ññ 
(
ññ #
txbEmailCreateAccount
ññ 4
.
ññ4 5
Text
ññ5 9
.
ññ9 :
IndexOf
ññ: A
(
ññA B
$char
ññB E
)
ññE F
!=
ññG I
-
ññJ K
$num
ññK L
)
ññL M
?
ññN O#
txbEmailCreateAccount
ññP e
.
ññe f
Text
ññf j
.
ññj k
IndexOf
ññk r
(
ññr s
$char
ññs v
)
ññv w
:
ññx y
$num
ññz {
;
ññ{ |
if
óó 
(
óó #
txbEmailCreateAccount
óó %
.
óó% &
Text
óó& *
.
óó* +
Trim
óó+ /
(
óó/ 0
)
óó0 1
.
óó1 2
	Substring
óó2 ;
(
óó; <
$num
óó< =
,
óó= >
arrobaIndex
óó? J
)
óóJ K
.
óóK L
Equals
óóL R
(
óóR S
passwordChecked
óóS b
)
óób c
)
óóc d
{
òò !
HighLightBrokenRule
ôô #
(
ôô# $
ListBoxRules
ôô$ 0
[
ôô0 1
$num
ôô1 2
]
ôô2 3
)
ôô3 4
;
ôô4 5
answer
öö 
=
öö 
DISALLOWED_VALUES
öö *
;
öö* +
}
õõ 
else
úú 
{
ùù 
ClearBrokenRule
ûû 
(
ûû  
ListBoxRules
ûû  ,
[
ûû, -
$num
ûû- .
]
ûû. /
)
ûû/ 0
;
ûû0 1
}
üü 
return
†† 
answer
†† 
;
†† 
}
°° 	
private
££ 
int
££ ,
CheckUserNameAndEmailExistence
££ 2
(
££2 3
UserPojo
££3 ;
userToVerify
££< H
)
££H I
{
§§ 	
try
•• 
{
¶¶ )
ValidateUserExistanceClient
ßß +
dataCheckerProxy
ßß, <
=
ßß= >
new
ßß? B
(
ßßC D
)
ßßD E
;
ßßE F
GenericClassOfint
®® !
	userIsNew
®®" +
=
®®, -
dataCheckerProxy
®®. >
.
®®> ?
UserAlreadyExist
®®? O
(
®®O P
userToVerify
®®P \
)
®®\ ]
;
®®] ^
dataCheckerProxy
©©  
.
©©  !
Close
©©! &
(
©©& '
)
©©' (
;
©©( )
if
™™ 
(
™™ 
	userIsNew
™™ 
.
™™ 
	CodeEvent
™™ '
==
™™( *!
ExceptionDictionary
™™+ >
.
™™> ?
SUCCESFULL_EVENT
™™? O
||
™™P R
	userIsNew
™™S \
.
™™\ ]
	CodeEvent
™™] f
==
™™g i!
ExceptionDictionary
™™j }
.
™™} ~!
UNSUCCESFULL_EVENT™™~ ê
)™™ê ë
{
´´ 
if
¨¨ 
(
¨¨ 
	userIsNew
¨¨ !
.
¨¨! "
ObjectSaved
¨¨" -
==
¨¨. 0
ALLOWED_VALUES
¨¨1 ?
)
¨¨? @
{
≠≠ 
return
ÆÆ 
ALLOWED_VALUES
ÆÆ -
;
ÆÆ- .
}
ØØ 
else
∞∞ 
{
±± 
if
≤≤ 
(
≤≤ 
	userIsNew
≤≤ %
.
≤≤% &
ObjectSaved
≤≤& 1
==
≤≤2 4!
ExceptionDictionary
≤≤5 H
.
≤≤H I!
EMAIL_ALREADY_EXIST
≤≤I \
)
≤≤\ ]
{
≥≥ 
dialogMessage
¥¥ )
=
¥¥* +
new
¥¥, /&
ErrorMessageDialogWindow
¥¥0 H
(
¥¥H I

Properties
¥¥I S
.
¥¥S T
	Resources
¥¥T ]
.
¥¥] ^
txbErrorTitle
¥¥^ k
,
¥¥k l

Properties
¥¥m w
.
¥¥w x
	Resources¥¥x Å
.¥¥Å Ç 
lblRepeatedEmail¥¥Ç í
,¥¥í ì
Application¥¥î ü
.¥¥ü †
Current¥¥† ß
.¥¥ß ®

MainWindow¥¥® ≤
)¥¥≤ ≥
;¥¥≥ ¥
}
µµ 
else
∂∂ 
if
∂∂ 
(
∂∂  !
	userIsNew
∂∂! *
.
∂∂* +
ObjectSaved
∂∂+ 6
==
∂∂7 9!
ExceptionDictionary
∂∂: M
.
∂∂M N$
USERNAME_ALREADY_EXIST
∂∂N d
)
∂∂d e
{
∑∑ 
dialogMessage
∏∏ )
=
∏∏* +
new
∏∏, /&
ErrorMessageDialogWindow
∏∏0 H
(
∏∏H I

Properties
∏∏I S
.
∏∏S T
	Resources
∏∏T ]
.
∏∏] ^
txbErrorTitle
∏∏^ k
,
∏∏k l

Properties
∏∏m w
.
∏∏w x
	Resources∏∏x Å
.∏∏Å Ç#
lblRepeatedUserName∏∏Ç ï
,∏∏ï ñ
Application∏∏ó ¢
.∏∏¢ £
Current∏∏£ ™
.∏∏™ ´

MainWindow∏∏´ µ
)∏∏µ ∂
;∏∏∂ ∑
}
ππ 
else
∫∫ 
{
ªª 
dialogMessage
ºº )
=
ºº* +
new
ºº, /&
ErrorMessageDialogWindow
ºº0 H
(
ººH I

Properties
ººI S
.
ººS T
	Resources
ººT ]
.
ºº] ^
txbErrorTitle
ºº^ k
,
ººk l

Properties
ººm w
.
ººw x
	Resourcesººx Å
.ººÅ Ç%
lblFailToRegisterUserººÇ ó
,ººó ò
Applicationººô §
.ºº§ •
Currentºº• ¨
.ºº¨ ≠

MainWindowºº≠ ∑
)ºº∑ ∏
;ºº∏ π
}
ΩΩ 
return
ææ 
DISALLOWED_VALUES
ææ 0
;
ææ0 1
}
øø 
}
¿¿ 
else
¡¡ 
{
¬¬ 
dialogMessage
√√ !
=
√√" #
new
√√$ '&
ErrorMessageDialogWindow
√√( @
(
√√@ A

Properties
√√A K
.
√√K L
	Resources
√√L U
.
√√U V
txbErrorTitle
√√V c
,
√√c d

Properties
√√e o
.
√√o p
	Resources
√√p y
.
√√y z"
MessageSQLException√√z ç
,√√ç é
Application√√è ö
.√√ö õ
Current√√õ ¢
.√√¢ £

MainWindow√√£ ≠
)√√≠ Æ
;√√Æ Ø
return
ƒƒ 
DISALLOWED_VALUES
ƒƒ ,
;
ƒƒ, -
}
≈≈ 
}
∆∆ 
catch
«« 
(
«« '
EndpointNotFoundException
«« ,
ex
««- /
)
««/ 0
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
……8 9!
lblEndPointNotFound
……9 L
)
……L M
;
……M N
}
ÀÀ 
catch
ÃÃ 
(
ÃÃ 1
#CommunicationObjectFaultedException
ÃÃ 6
ex
ÃÃ7 9
)
ÃÃ9 :
{
ÕÕ 
HandleException
ŒŒ 
(
ŒŒ  
ex
ŒŒ  "
,
ŒŒ" #

Properties
ŒŒ$ .
.
ŒŒ. /
	Resources
ŒŒ/ 8
.
ŒŒ8 9&
lblComunicationException
ŒŒ9 Q
)
ŒŒQ R
;
ŒŒR S
}
œœ 
catch
–– 
(
–– 
TimeoutException
–– #
ex
––$ &
)
––& '
{
—— 
HandleException
““ 
(
““  
ex
““  "
,
““" #

Properties
““$ .
.
““. /
	Resources
““/ 8
.
““8 9
lblTimeException
““9 I
)
““I J
;
““J K
}
”” 
catch
‘‘ 
(
‘‘ $
CommunicationException
‘‘ )
ex
‘‘* ,
)
‘‘, -
{
’’ 
HandleException
÷÷ 
(
÷÷  
ex
÷÷  "
,
÷÷" #

Properties
÷÷$ .
.
÷÷. /
	Resources
÷÷/ 8
.
÷÷8 9!
lblWithoutConection
÷÷9 L
)
÷÷L M
;
÷÷M N
}
◊◊ 
catch
ÿÿ 
(
ÿÿ 
SocketException
ÿÿ "
ex
ÿÿ# %
)
ÿÿ% &
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
€€ 
return
‹‹ 
DISALLOWED_VALUES
‹‹ $
;
‹‹$ %
}
›› 	
private
ﬂﬂ 
void
ﬂﬂ !
HighLightBrokenRule
ﬂﬂ (
(
ﬂﬂ( )
Label
ﬂﬂ) .
missingRule
ﬂﬂ/ :
)
ﬂﬂ: ;
{
‡‡ 	
missingRule
·· 
.
·· 

Foreground
·· "
=
··# $
Brushes
··% ,
.
··, -
Red
··- 0
;
··0 1
}
‚‚ 	
private
„„ 
void
„„ 
ClearBrokenRule
„„ $
(
„„$ %
Label
„„% *
missingRule
„„+ 6
)
„„6 7
{
‰‰ 	
missingRule
ÂÂ 
.
ÂÂ 

Foreground
ÂÂ "
=
ÂÂ# $
Brushes
ÂÂ% ,
.
ÂÂ, -
White
ÂÂ- 2
;
ÂÂ2 3
}
ÊÊ 	
private
ËË 
void
ËË $
ClickViewPasswordRules
ËË +
(
ËË+ ,
object
ËË, 2
sender
ËË3 9
,
ËË9 :"
MouseButtonEventArgs
ËË; O
e
ËËP Q
)
ËËQ R
{
ÈÈ 	
brdPasswordRules
ÍÍ 
.
ÍÍ 

Visibility
ÍÍ '
=
ÍÍ( )

Visibility
ÍÍ* 4
.
ÍÍ4 5
Visible
ÍÍ5 <
;
ÍÍ< ="
imgViewPasswordRules
ÎÎ  
.
ÎÎ  !

Visibility
ÎÎ! +
=
ÎÎ, -

Visibility
ÎÎ. 8
.
ÎÎ8 9
Hidden
ÎÎ9 ?
;
ÎÎ? @
}
ÌÌ 	
private
ÓÓ 
void
ÓÓ %
ClickClosePasswordRules
ÓÓ ,
(
ÓÓ, -
object
ÓÓ- 3
sender
ÓÓ4 :
,
ÓÓ: ;"
MouseButtonEventArgs
ÓÓ< P
e
ÓÓQ R
)
ÓÓR S
{
ÔÔ 	
brdPasswordRules
 
.
 

Visibility
 '
=
( )

Visibility
* 4
.
4 5
Hidden
5 ;
;
; <"
imgViewPasswordRules
ÒÒ  
.
ÒÒ  !

Visibility
ÒÒ! +
=
ÒÒ, -

Visibility
ÒÒ. 8
.
ÒÒ8 9
Visible
ÒÒ9 @
;
ÒÒ@ A
}
ÚÚ 	
private
ÙÙ 
void
ÙÙ 
ClickSeePassword
ÙÙ %
(
ÙÙ% &
object
ÙÙ& ,
sender
ÙÙ- 3
,
ÙÙ3 4"
MouseButtonEventArgs
ÙÙ5 I
e
ÙÙJ K
)
ÙÙK L
{
ıı 	
lblViewPassword
ˆˆ 
.
ˆˆ 
Content
ˆˆ #
=
ˆˆ$ %&
psbPasswordCreateAccount
ˆˆ& >
.
ˆˆ> ?
Password
ˆˆ? G
.
ˆˆG H
ToString
ˆˆH P
(
ˆˆP Q
)
ˆˆQ R
;
ˆˆR S&
psbPasswordCreateAccount
˜˜ $
.
˜˜$ %

Visibility
˜˜% /
=
˜˜0 1

Visibility
˜˜2 <
.
˜˜< =
	Collapsed
˜˜= F
;
˜˜F G
lblViewPassword
¯¯ 
.
¯¯ 

Visibility
¯¯ &
=
¯¯' (

Visibility
¯¯) 3
.
¯¯3 4
Visible
¯¯4 ;
;
¯¯; <
}
˘˘ 	
private
˚˚ 
void
˚˚ #
OverLeaveHidePassword
˚˚ *
(
˚˚* +
object
˚˚+ 1
sender
˚˚2 8
,
˚˚8 9
MouseEventArgs
˚˚: H
e
˚˚I J
)
˚˚J K
{
¸¸ 	
if
˝˝ 
(
˝˝ 
lblViewPassword
˝˝ 
.
˝˝  
	IsVisible
˝˝  )
)
˝˝) *
{
˛˛ &
psbPasswordCreateAccount
ˇˇ (
.
ˇˇ( )

Visibility
ˇˇ) 3
=
ˇˇ4 5

Visibility
ˇˇ6 @
.
ˇˇ@ A
Visible
ˇˇA H
;
ˇˇH I&
psbPasswordCreateAccount
ÄÄ (
.
ÄÄ( )
PasswordChar
ÄÄ) 5
=
ÄÄ6 7
$char
ÄÄ8 ;
;
ÄÄ; <&
psbPasswordCreateAccount
ÅÅ (
.
ÅÅ( )
Password
ÅÅ) 1
=
ÅÅ2 3
(
ÅÅ4 5
string
ÅÅ5 ;
)
ÅÅ; <
lblViewPassword
ÅÅ< K
.
ÅÅK L
Content
ÅÅL S
;
ÅÅS T
lblViewPassword
ÇÇ 
.
ÇÇ  

Visibility
ÇÇ  *
=
ÇÇ+ ,

Visibility
ÇÇ- 7
.
ÇÇ7 8
	Collapsed
ÇÇ8 A
;
ÇÇA B
}
ÉÉ 
}
ÑÑ 	
private
ÜÜ 
void
ÜÜ %
ClickButtonCancelSaving
ÜÜ ,
(
ÜÜ, -
object
ÜÜ- 3
sender
ÜÜ4 :
,
ÜÜ: ;
RoutedEventArgs
ÜÜ< K
e
ÜÜL M
)
ÜÜM N
{
áá 	
if
àà 
(
àà 
new
àà &
ConfirmationDialogWindow
àà +
(
àà+ ,

Properties
àà, 6
.
àà6 7
	Resources
àà7 @
.
àà@ A
txbWarningTitle
ààA P
,
ààP Q

Properties
ààR \
.
àà\ ]
	Resources
àà] f
.
ààf g,
txbConfirmationCancelSaveUserààg Ñ
,ààÑ Ö
ApplicationààÜ ë
.ààë í
Currentààí ô
.ààô ö

MainWindowààö §
)àà§ •
.àà• ¶
CloseWindowàà¶ ±
)àà± ≤
{
ââ 
GoToLogInWindow
ää 
(
ää  
)
ää  !
;
ää! "
}
ãã 
}
åå 	
private
éé 
void
éé 
GoToLogInWindow
éé $
(
éé$ %
)
éé% &
{
èè 	
	LogInUser
êê 
	logInPage
êê 
=
êê  !
new
êê" %
	LogInUser
êê& /
(
êê/ 0
)
êê0 1
;
êê1 2
this
ëë 
.
ëë 
NavigationService
ëë "
.
ëë" #
Navigate
ëë# +
(
ëë+ ,
	logInPage
ëë, 5
)
ëë5 6
;
ëë6 7
NavigationService
íí 
.
íí 
RemoveBackEntry
íí -
(
íí- .
)
íí. /
;
íí/ 0
}
ìì 	
private
ïï 
void
ïï (
GoToCodeConfirmationWindow
ïï /
(
ïï/ 0
UserPojo
ïï0 8

userToSave
ïï9 C
)
ïïC D
{
ññ 	
CodeConfirmation
óó 
codeConfirmation
óó -
=
óó. /
new
óó0 3
CodeConfirmation
óó4 D
(
óóD E

userToSave
óóF P
)
óóP Q
;
óóQ R
this
òò 
.
òò 
NavigationService
òò "
.
òò" #
Navigate
òò# +
(
òò+ ,
codeConfirmation
òò, <
)
òò< =
;
òò= >
NavigationService
ôô 
.
ôô 
RemoveBackEntry
ôô -
(
ôô- .
)
ôô. /
;
ôô/ 0
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
†† 	
}
¢¢ 
}££ ≤
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