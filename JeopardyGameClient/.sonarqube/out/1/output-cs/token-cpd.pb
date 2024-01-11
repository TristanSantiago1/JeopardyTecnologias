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
}îî Â
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
;% &
private' .
set/ 2
;2 3
}4 5
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
;  
} 	
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
CloseWindow 
= 
true 
; 
this 
. 
Close 
( 
) 
; 
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
{   	
CloseWindow!! 
=!! 
false!! 
;!!  
this"" 
."" 
Close"" 
("" 
)"" 
;"" 
}## 	
}$$ 
}%% ™:
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
}PP É&
vC:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameClient\DialogWindows\DialogWindowsManager.cs
	namespace		 	
JeopardyGame		
 
.		 
DialogWindows		 $
{

 
public 

static 
class 
DialogWindowManager +
{ 
private 
const 
int 
_ERROR !
=" #
$num$ %
;% &
private 
const 
int 
_INFORMATION &
=' (
$num) *
;* +
private 
const 
int 
_CONFIRMATION '
=( )
$num* +
;+ ,
public 
static 
int 
ERROR 
=>  "
_ERROR# )
;) *
public 
static 
int 
INFORMATION %
=>& (
_INFORMATION) 5
;5 6
public 
static 
int 
CONFIRMATION &
=>' )
_CONFIRMATION* 7
;7 8
public 
static 
void !
ShowInfoOrErrorWindow 0
(0 1
string1 7
title8 =
,= >
string? E
messageF M
,M N
WindowO U
windowToShowOverV f
,f g
inth k
	typeDilogl u
)u v
{ 	
if 
( 
windowToShowOver  
!=! #
null$ (
)( )
{ 
Window 
window 
; 
if 
( 
	typeDilog 
==  
ERROR! &
)& '
{ 
window 
= 
new $
ErrorMessageDialogWindow  8
(8 9
title9 >
,> ?
message@ G
,G H
windowToShowOverI Y
)Y Z
;Z [
} 
else   
{!! 
window"" 
="" 
new""  *
InformationMessageDialogWindow""! ?
(""? @
title""@ E
,""E F
message""G N
,""N O
windowToShowOver""P `
)""` a
;""a b
}## 

ShowWindow$$ 
($$ 
windowToShowOver$$ +
,$$+ ,
window$$- 3
)$$3 4
;$$4 5
}%% 
}&& 	
public)) 
static)) 
bool)) "
ShowWindowConfirmation)) 1
())1 2
string))2 8
title))9 >
,))> ?
string))@ F
message))G N
,))N O
Window))P V
windowToShowOver))W g
)))g h
{** 	$
ConfirmationDialogWindow++ $
window++% +
=++, -
new++. 1$
ConfirmationDialogWindow++2 J
(++J K
title++K P
,++P Q
message++R Y
,++Y Z
windowToShowOver++[ k
)++k l
;++l m

ShowWindow,, 
(,, 
windowToShowOver,, '
,,,' (
window,,) /
),,/ 0
;,,0 1
return-- 
window-- 
.-- 
CloseWindow-- %
;--% &
}.. 	
private00 
static00 
void00 

ShowWindow00 '
(00' (
Window00( .

mainWindow00/ 9
,009 :
Window00; A
dialogWindow00B N
)00N O
{11 	
if22 
(22 

mainWindow22 
!=22 
null22 "
)22" #
{33 
double44 
left44 
=44 

mainWindow44 (
.44( )
Left44) -
+44. /
(440 1

mainWindow441 ;
.44; <
Width44< A
-44B C
dialogWindow44D P
.44P Q
Width44Q V
)44V W
/44X Y
$num44Z [
;44[ \
double55 
top55 
=55 

mainWindow55 '
.55' (
Top55( +
+55, -
(55. /

mainWindow55/ 9
.559 :
Height55: @
-55A B
dialogWindow55C O
.55O P
Height55P V
)55V W
/55X Y
$num55Z [
;55[ \
dialogWindow66 
.66 
Left66 !
=66" #
left66$ (
;66( )
dialogWindow77 
.77 
Top77  
=77! "
top77# &
;77& '
dialogWindow88 
.88 
VerticalAlignment88 .
=88/ 0
VerticalAlignment881 B
.88B C
Center88C I
;88I J
dialogWindow99 
.99 

ShowDialog99 '
(99' (
)99( )
;99) *
}:: 
};; 	
}== 
}>> ˇ4
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
}11 ‰@
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
{ 
private 
static 
readonly 
ThreadLocal  +
<+ ,
Random, 2
>2 3
generateAleatory4 D
=E F
newG J
ThreadLocalK V
<V W
RandomW ]
>] ^
(^ _
(_ `
)` a
=>b d
newe h
Randomi o
(o p
)p q
)q r
;r s
public 
static 
string 
GetHosImage (
(( )
int) ,
idHost- 3
)3 4
{ 	
return 
idHost 
switch  
{ 
$num 
=> 
App 
. 
Current  
.  !
	Resources! *
[* +
$str+ 6
]6 7
.7 8
ToString8 @
(@ A
)A B
,B C
$num 
=> 
App 
. 
Current  
.  !
	Resources! *
[* +
$str+ 4
]4 5
.5 6
ToString6 >
(> ?
)? @
,@ A
$num 
=> 
App 
. 
Current  
.  !
	Resources! *
[* +
$str+ 5
]5 6
.6 7
ToString7 ?
(? @
)@ A
,A B
_ 
=> 
App 
. 
Current  
.  !
	Resources! *
[* +
$str+ 5
]5 6
.6 7
ToString7 ?
(? @
)@ A
,A B
} 
; 
} 	
public 
static 
string 
GetAvatarImage +
(+ ,
int, /
idAvatar0 8
)8 9
{   	
return!! 
idAvatar!! 
switch!! "
{"" 
$num## 
=>## 
App## 
.## 
Current##  
.##  !
	Resources##! *
[##* +
$str##+ ;
]##; <
.##< =
ToString##= E
(##E F
)##F G
,##G H
$num$$ 
=>$$ 
App$$ 
.$$ 
Current$$  
.$$  !
	Resources$$! *
[$$* +
$str$$+ 6
]$$6 7
.$$7 8
ToString$$8 @
($$@ A
)$$A B
,$$B C
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
$str&&+ 8
]&&8 9
.&&9 :
ToString&&: B
(&&B C
)&&C D
,&&D E
$num'' 
=>'' 
App'' 
.'' 
Current''  
.''  !
	Resources''! *
[''* +
$str''+ :
]'': ;
.''; <
ToString''< D
(''D E
)''E F
,''F G
$num(( 
=>(( 
App(( 
.(( 
Current((  
.((  !
	Resources((! *
[((* +
$str((+ 9
]((9 :
.((: ;
ToString((; C
(((C D
)((D E
,((E F
$num)) 
=>)) 
App)) 
.)) 
Current))  
.))  !
	Resources))! *
[))* +
$str))+ <
]))< =
.))= >
ToString))> F
())F G
)))G H
,))H I
_** 
=>** 
App** 
.** 
Current**  
.**  !
	Resources**! *
[*** +
$str**+ 6
]**6 7
.**7 8
ToString**8 @
(**@ A
)**A B
,**B C
}++ 
;++ 
},, 	
public00 
static00 
int00 

GetGuestId00 $
(00$ %
)00% &
{11 	
return22 
generateAleatory22 #
.22# $
Value22$ )
.22) *
Next22* .
(22. /
$num22/ 5
,225 6
$num227 >
)22> ?
;22? @
}33 	
public55 
static55 
string55 *
GetEnglishOrSpanishDescription55 ;
(55; <
string55< B
englisDescription55C T
,55T U
string55V \
spanishDescription55] o
)55o p
{66 	
if77 
(77 
spanishDescription77 "
is77# %
null77& *
)77* +
{88 
return99 
englisDescription99 (
;99( )
}:: 
if;; 
(;; 
englisDescription;; !
is;;" $
null;;% )
);;) *
{<< 
return== 
spanishDescription== )
;==) *
}>> 
bool?? 
	isEnglish?? 
=?? 
App??  
.??  !
	IsEnglish??! *
;??* +
if@@ 
(@@ 
	isEnglish@@ 
)@@ 
{AA 
returnBB 
englisDescriptionBB (
;BB( )
}CC 
elseDD 
{EE 
returnFF 
spanishDescriptionFF )
;FF) *
}GG 
}HH 	
publicKK 
staticKK 
boolKK 1
%HasAtLeastTwoSeparateUppercaseLettersKK @
(KK@ A
stringKKA G
passwordKKH P
)KKP Q
{LL 	
intMM 
uppercaseCountMM 
=MM  
$numMM! "
;MM" #
boolNN 
isPreviousUppercaseNN $
=NN% &
falseNN' ,
;NN, -
foreachPP 
(PP 
charPP 
cPP 
inPP 
passwordPP '
)PP' (
{QQ 
ifRR 
(RR 
charRR 
.RR 
IsUpperRR  
(RR  !
cRR! "
)RR" #
)RR# $
{SS 
uppercaseCountTT "
++TT" $
;TT$ %
ifVV 
(VV 
isPreviousUppercaseVV +
)VV+ ,
{WW 
returnXX 
falseXX $
;XX$ %
}YY 
isPreviousUppercase[[ '
=[[( )
true[[* .
;[[. /
}\\ 
else]] 
{^^ 
isPreviousUppercase__ '
=__( )
false__* /
;__/ 0
}`` 
}aa 
returncc 
uppercaseCountcc !
>=cc" $
$numcc% &
;cc& '
}dd 	
}ff 
publicjj 

staticjj 
classjj 0
$GetParentOfGraphicInterfaceComponentjj <
{kk 
publicll 
staticll 
Tll 

FindParentll "
<ll" #
Tll# $
>ll$ %
(ll% &
DependencyObjectll& 6
childll7 <
)ll< =
wherell> C
TllD E
:llF G
DependencyObjectllH X
{mm 	
DependencyObjectnn 
parentnn #
=nn$ %
VisualTreeHelpernn& 6
.nn6 7
	GetParentnn7 @
(nn@ A
childnnA F
)nnF G
;nnG H
whileoo 
(oo 
parentoo 
!=oo 
nulloo !
&&oo" $
!oo% &
(oo& '
parentoo' -
isoo. 0
Too1 2
)oo2 3
)oo3 4
{pp 
parentqq 
=qq 
VisualTreeHelperqq )
.qq) *
	GetParentqq* 3
(qq3 4
parentqq4 :
)qq: ;
;qq; <
}rr 
returnss 
(ss 
Tss 
)ss 
parentss 
;ss 
}tt 	
}vv 
}xx ü
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
private$$ 
const$$ 
int$$ 
DISALLOWED_VALUES$$ +
=$$, -
$num$$. /
;$$/ 0
private%% 
const%% 
int%% 
ALLOWED_VALUES%% (
=%%) *
$num%%+ ,
;%%, -
public'' 
ActiveFriends'' 
('' 
int''  
idUser''! '
)''' (
{(( 	
try)) 
{** 
InitializeComponent++ #
(++# $
)++$ %
;++% &
InstanceContext,, 
context,,  '
=,,( )
new,,* -
InstanceContext,,. =
(,,= >
this,,> B
),,B C
;,,C D(
NotifyUserAvailabilityClient-- ,!
userAvailabilityProxy--- B
=--C D
new--E H
(--H I
context--I P
)--P Q
;--Q R!
userAvailabilityProxy.. %
...% &0
$SubscribeToAvailabityCallBackChannel..& J
(..J K
idUser..K Q
)..Q R
;..R S
txbSendEmail// 
.// 
	MaxLength// &
=//' (
$num//) +
;//+ ,
}00 
catch11 
(11 %
EndpointNotFoundException11 ,
ex11- /
)11/ 0
{22 
HandleException33 
(33  
ex33  "
,33" #

Properties33$ .
.33. /
	Resources33/ 8
.338 9
lblEndPointNotFound339 L
)33L M
;33M N
}44 
catch55 
(55 /
#CommunicationObjectFaultedException55 6
ex557 9
)559 :
{66 
HandleException77 
(77  
ex77  "
,77" #

Properties77$ .
.77. /
	Resources77/ 8
.778 9$
lblComunicationException779 Q
)77Q R
;77R S
}88 
catch99 
(99 
TimeoutException99 #
ex99$ &
)99& '
{:: 
HandleException;; 
(;;  
ex;;  "
,;;" #

Properties;;$ .
.;;. /
	Resources;;/ 8
.;;8 9
lblTimeException;;9 I
);;I J
;;;J K
}<< 
catch== 
(== "
CommunicationException== )
ex==* ,
)==, -
{>> 
HandleException?? 
(??  
ex??  "
,??" #

Properties??$ .
.??. /
	Resources??/ 8
.??8 9
lblWithoutConection??9 L
)??L M
;??M N
}@@ 
catchAA 
(AA 
SocketExceptionAA "
exAA# %
)AA% &
{BB 
HandleExceptionCC 
(CC  
exCC  "
,CC" #

PropertiesCC$ .
.CC. /
	ResourcesCC/ 8
.CC8 9#
lblFailtToEnterTheLobbyCC9 P
)CCP Q
;CCQ R
}DD 
}EE 	
publicGG 
voidGG 
	StartPageGG 
(GG 
	LobbyPageGG '
lobbyGG( -
)GG- .
{HH 	
	lobbyPageII 
=II 
lobbyII 
;II 
	GetFriendJJ 
(JJ 
)JJ 
;JJ 
	SetFriendKK 
(KK 
)KK 
;KK 
}LL 	
publicNN 
voidNN &
RenewFriendCallBackChannelNN .
(NN. /
intNN/ 2
idUserNN3 9
)NN9 :
{OO 	
tryPP 
{QQ 
InstanceContextRR 
contextRR  '
=RR( )
newRR* -
InstanceContextRR. =
(RR= >
thisRR> B
)RRB C
;RRC D(
NotifyUserAvailabilityClientSS ,!
userAvailabilityProxySS- B
=SSC D
newSSE H
(SSH I
contextSSI P
)SSP Q
;SSQ R!
userAvailabilityProxyTT %
.TT% &)
RenewNotifyAvailabityCallBackTT& C
(TTC D
idUserTTD J
)TTJ K
;TTK L
}UU 
catchVV 
(VV %
EndpointNotFoundExceptionVV ,
exVV- /
)VV/ 0
{WW 
HandleExceptionXX 
(XX  
exXX  "
,XX" #

PropertiesXX$ .
.XX. /
	ResourcesXX/ 8
.XX8 9
lblEndPointNotFoundXX9 L
)XXL M
;XXM N
}YY 
catchZZ 
(ZZ /
#CommunicationObjectFaultedExceptionZZ 6
exZZ7 9
)ZZ9 :
{[[ 
HandleException\\ 
(\\  
ex\\  "
,\\" #

Properties\\$ .
.\\. /
	Resources\\/ 8
.\\8 9$
lblComunicationException\\9 Q
)\\Q R
;\\R S
}]] 
catch^^ 
(^^ 
TimeoutException^^ #
ex^^$ &
)^^& '
{__ 
HandleException`` 
(``  
ex``  "
,``" #

Properties``$ .
.``. /
	Resources``/ 8
.``8 9
lblTimeException``9 I
)``I J
;``J K
}aa 
catchbb 
(bb "
CommunicationExceptionbb )
exbb* ,
)bb, -
{cc 
HandleExceptiondd 
(dd  
exdd  "
,dd" #

Propertiesdd$ .
.dd. /
	Resourcesdd/ 8
.dd8 9
lblWithoutConectiondd9 L
)ddL M
;ddM N
}ee 
catchff 
(ff 
SocketExceptionff "
exff# %
)ff% &
{gg 
HandleExceptionhh 
(hh  
exhh  "
,hh" #

Propertieshh$ .
.hh. /
	Resourceshh/ 8
.hh8 9#
lblFailtToEnterTheLobbyhh9 P
+hhQ R
$strhhS X
+hhY Z

Propertieshh[ e
.hhe f
	Resourceshhf o
.hho p 
lblEndPointNotFound	hhp É
)
hhÉ Ñ
;
hhÑ Ö
}ii 
}jj 	
privatell 
voidll !
ClickCloseListFriendsll *
(ll* +
objectll+ 1
senderll2 8
,ll8 9 
MouseButtonEventArgsll: N
ellO P
)llP Q
{mm 	
	lobbyPagenn 
.nn )
CloseSubFrameOfChatAndFriendsnn 3
(nn3 4
)nn4 5
;nn5 6
}oo 	
privateqq 
voidqq 
	GetFriendqq 
(qq 
)qq  
{rr 	
tryss 
{ss 
UserSingletontt 
mainCurrentUsertt -
=tt. /
UserSingletontt0 =
.tt= >
GetMainUsertt> I
(ttI J
)ttJ K
;ttK L(
ConsultUserInformationClientuu ,#
consultInformationProxyuu- D
=uuE F
newuuG J(
ConsultUserInformationClientuuK g
(uug h
)uuh i
;uui j
varvv 
uservv 
=vv #
consultInformationProxyvv 2
.vv2 3
ConsultUserByIdvv3 B
(vvB C
mainCurrentUservvC R
.vvR S
IdUservvS Y
)vvY Z
;vvZ [ 
ConsultFriendsClientww $
friendManagerProxyww% 7
=ww8 9
newww: = 
ConsultFriendsClientww> R
(wwR S
)wwS T
;wwT U
varxx 
friendsxx 
=xx 
friendManagerProxyxx 0
.xx0 1
GetUserFriendsxx1 ?
(xx? @
userxx@ D
.xxD E
ObjectSavedxxE P
)xxP Q
;xxQ R
ifyy 
(yy 
friendsyy 
.yy 
	CodeEventyy %
==yy& (
ExceptionDictionaryyy) <
.yy< =
SUCCESFULL_EVENTyy= M
)yyM N
{zz 
foreach{{ 
({{ 
var{{  
item{{! %
in{{& (
friends{{) 0
.{{0 1
ObjectSaved{{1 <
){{< =
{|| )
FriendAvailabilityInformation}} 5
activeFriendProxy}}6 G
=}}H I
new}}J M)
FriendAvailabilityInformation}}N k
(}}k l
)}}l m
;}}m n
activeFriendProxy~~ )
.~~) *
IdUser~~* 0
=~~1 2
item~~3 7
.~~7 8
IdUser~~8 >
;~~> ?
activeFriendProxy )
.) *
Name* .
=/ 0
item1 5
.5 6
UserName6 >
;> ?
activeFriendProxy
ÄÄ )
.
ÄÄ) *
EmailAddress
ÄÄ* 6
=
ÄÄ7 8
item
ÄÄ9 =
.
ÄÄ= >
EmailAddress
ÄÄ> J
;
ÄÄJ K
activeFriendProxy
ÅÅ )
.
ÅÅ) *$
IdStatusOfAvailability
ÅÅ* @
=
ÅÅA B
item
ÅÅC G
.
ÅÅG H"
IdStatusAvailability
ÅÅH \
;
ÅÅ\ ]

FriendList
ÇÇ "
.
ÇÇ" #+
RegisterNewFriendInDictionary
ÇÇ# @
(
ÇÇ@ A
item
ÇÇA E
.
ÇÇE F
IdUser
ÇÇF L
,
ÇÇL M
activeFriendProxy
ÇÇN _
)
ÇÇ_ `
;
ÇÇ` a
}
ÉÉ 
}
ÑÑ 
else
ÖÖ 
{
ÜÜ !
DialogWindowManager
áá '
.
áá' (#
ShowInfoOrErrorWindow
áá( =
(
áá= >

Properties
áá> H
.
ááH I
	Resources
ááI R
.
ááR S
txbWarningTitle
ááS b
,
ááb c

Properties
áád n
.
áán o
	Resources
ááo x
.
ááx y 
lblWithoutFriendsááy ä
,ááä ã
Applicationááå ó
.ááó ò
Currentááò ü
.ááü †

MainWindowáá† ™
,áá™ ´#
DialogWindowManageráá¨ ø
.ááø ¿
ERRORáá¿ ≈
)áá≈ ∆
;áá∆ «
}
àà  
friendManagerProxy
ââ "
.
ââ" #
Close
ââ# (
(
ââ( )
)
ââ) *
;
ââ* +%
consultInformationProxy
ää '
.
ää' (
Close
ää( -
(
ää- .
)
ää. /
;
ää/ 0
}
ãã 
catch
åå 
(
åå '
EndpointNotFoundException
åå ,
ex
åå- /
)
åå/ 0
{
çç 
HandleException
éé 
(
éé  
ex
éé  "
,
éé" #

Properties
éé$ .
.
éé. /
	Resources
éé/ 8
.
éé8 9!
lblEndPointNotFound
éé9 L
)
ééL M
;
ééM N
}
èè 
catch
êê 
(
êê 1
#CommunicationObjectFaultedException
êê 6
ex
êê7 9
)
êê9 :
{
ëë 
HandleException
íí 
(
íí  
ex
íí  "
,
íí" #

Properties
íí$ .
.
íí. /
	Resources
íí/ 8
.
íí8 9&
lblComunicationException
íí9 Q
)
ííQ R
;
ííR S
}
ìì 
catch
îî 
(
îî 
TimeoutException
îî #
ex
îî$ &
)
îî& '
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
ññ8 9
lblTimeException
ññ9 I
)
ññI J
;
ññJ K
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
öö8 9!
lblWithoutConection
öö9 L
)
ööL M
;
ööM N
}
õõ 
catch
úú 
(
úú 
SocketException
úú "
ex
úú# %
)
úú% &
{
ùù 
HandleException
ûû 
(
ûû  
ex
ûû  "
,
ûû" #

Properties
ûû$ .
.
ûû. /
	Resources
ûû/ 8
.
ûû8 9%
lblFailtToEnterTheLobby
ûû9 P
)
ûûP Q
;
ûûQ R
}
üü 
}
†† 	
private
¢¢ 
void
¢¢ 
	SetFriend
¢¢ 
(
¢¢ 
)
¢¢  
{
££ 	
stcFriendList
§§ 
.
§§ 
Children
§§ "
.
§§" #
Clear
§§# (
(
§§( )
)
§§) *
;
§§* +
stcFriendList
•• 
.
•• 
Orientation
•• %
=
••& '
Orientation
••( 3
.
••3 4
Vertical
••4 <
;
••< =

Dictionary
¶¶ 
<
¶¶ 
int
¶¶ 
,
¶¶ +
FriendAvailabilityInformation
¶¶ 9
>
¶¶9 :

friendList
¶¶; E
=
¶¶F G

FriendList
¶¶H R
.
¶¶R S"
GetActiveFriendsList
¶¶S g
(
¶¶g h
)
¶¶h i
;
¶¶i j
if
ßß 
(
ßß 

friendList
ßß 
!=
ßß 
null
ßß "
)
ßß" #
{
®® 
foreach
©© 
(
©© 
var
©© 

friendItem
©© '
in
©©( *

friendList
©©+ 5
.
©©5 6
Select
©©6 <
(
©©< =
item
©©= A
=>
©©B D
item
©©E I
.
©©I J
Value
©©J O
)
©©O P
)
©©P Q
{
™™ 

FriendCard
´´ 

friendCard
´´ )
=
´´* +
CreateFriendCard
´´, <
(
´´< =

friendItem
´´= G
)
´´G H
;
´´H I
stcFriendList
¨¨ !
.
¨¨! "
Children
¨¨" *
.
¨¨* +
Add
¨¨+ .
(
¨¨. /

friendCard
¨¨/ 9
)
¨¨9 :
;
¨¨: ;
}
≠≠ 
}
ÆÆ 
}
ØØ 	
private
±± 

FriendCard
±± 
CreateFriendCard
±± +
(
±±+ ,+
FriendAvailabilityInformation
±±, I
friend
±±J P
)
±±P Q
{
≤≤ 	
int
≥≥ 
roomCode
≥≥ 
=
≥≥ 
GameCodeContainer
≥≥ ,
.
≥≥, -
RoomCode
≥≥- 5
;
≥≥5 6

FriendCard
¥¥ 

friendCard
¥¥ !
=
¥¥" #
new
¥¥$ '

FriendCard
¥¥( 2
(
¥¥2 3
friend
¥¥3 9
.
¥¥9 :
Name
¥¥: >
,
¥¥> ?
friend
¥¥@ F
.
¥¥F G$
IdStatusOfAvailability
¥¥G ]
,
¥¥] ^

Properties
¥¥_ i
.
¥¥i j
	Resources
¥¥j s
.
¥¥s t
	bttInvite
¥¥t }
)
¥¥} ~
;
¥¥~ 

friendCard
µµ 
.
µµ !
InviteButtonClicked
µµ *
+=
µµ+ -
(
µµ. /
sender
µµ/ 5
,
µµ5 6
e
µµ7 8
)
µµ8 9
=>
µµ: <
{
∂∂ 
string
∑∑ 
friendEmail
∑∑ "
=
∑∑# $
friend
∑∑% +
.
∑∑+ ,
EmailAddress
∑∑, 8
;
∑∑8 9
string
∏∏ 
subject
∏∏ 
=
∏∏  

Properties
∏∏! +
.
∏∏+ ,
	Resources
∏∏, 5
.
∏∏5 6%
txbTitleEmailInvitation
∏∏6 M
;
∏∏M N
string
ππ 
body
ππ 
=
ππ 

Properties
ππ (
.
ππ( )
	Resources
ππ) 2
.
ππ2 3
tbxBodyInvitation
ππ3 D
+
ππE F
$str
ππG J
+
ππK L
$"
ππM O
{
ππO P
roomCode
ππP X
}
ππX Y
"
ππY Z
;
ππZ [*
SendEmailForInvitationToGame
∫∫ ,
(
∫∫, -
friendEmail
∫∫- 8
,
∫∫8 9
subject
∫∫: A
,
∫∫A B
body
∫∫C G
)
∫∫G H
;
∫∫H I!
DialogWindowManager
ªª #
.
ªª# $#
ShowInfoOrErrorWindow
ªª$ 9
(
ªª9 :

Properties
ªª: D
.
ªªD E
	Resources
ªªE N
.
ªªN O
tbxEmailSend
ªªO [
,
ªª[ \

Properties
ªª] g
.
ªªg h
	Resources
ªªh q
.
ªªq r
txbInfoEmailSendªªr Ç
,ªªÇ É
ApplicationªªÑ è
.ªªè ê
Currentªªê ó
.ªªó ò

MainWindowªªò ¢
,ªª¢ £#
DialogWindowManagerªª§ ∑
.ªª∑ ∏
INFORMATIONªª∏ √
)ªª√ ƒ
;ªªƒ ≈
}
ºº 
;
ºº 
return
ΩΩ 

friendCard
ΩΩ 
;
ΩΩ 
}
ææ 	
public
¡¡ 
void
¡¡ *
ResponseOfPlayerAvailability
¡¡ 0
(
¡¡0 1
int
¡¡1 4
status
¡¡5 ;
,
¡¡; <
int
¡¡= @
idFriend
¡¡A I
)
¡¡I J
{
¬¬ 	

Dictionary
√√ 
<
√√ 
int
√√ 
,
√√ +
FriendAvailabilityInformation
√√ 9
>
√√9 :

friendList
√√; E
=
√√F G

FriendList
√√H R
.
√√R S"
GetActiveFriendsList
√√S g
(
√√g h
)
√√h i
;
√√i j
if
ƒƒ 
(
ƒƒ 

friendList
ƒƒ 
.
ƒƒ 
ContainsKey
ƒƒ &
(
ƒƒ& '
idFriend
ƒƒ' /
)
ƒƒ/ 0
)
ƒƒ0 1
{
≈≈ 

FriendList
∆∆ 
.
∆∆ "
ChangeStatusOfFriend
∆∆ /
(
∆∆/ 0
idFriend
∆∆0 8
,
∆∆8 9
status
∆∆: @
)
∆∆@ A
;
∆∆A B
}
«« 
if
»» 
(
»» 

Dispatcher
»» 
.
»» 
CheckAccess
»» &
(
»»& '
)
»»' (
)
»»( )
{
…… 
	SetFriend
   
(
   
)
   
;
   
}
ÀÀ 
else
ÃÃ 
{
ÕÕ 

Dispatcher
ŒŒ 
.
ŒŒ 
Invoke
ŒŒ !
(
ŒŒ! "
(
ŒŒ" #
)
ŒŒ# $
=>
ŒŒ% '
	SetFriend
ŒŒ( 1
(
ŒŒ1 2
)
ŒŒ2 3
)
ŒŒ3 4
;
ŒŒ4 5
}
œœ 
}
–– 	
private
““ 
void
““ *
SendEmailForInvitationToGame
““ 1
(
““1 2
string
““2 8
email
““9 >
,
““> ?
string
““@ F
subject
““G N
,
““N O
string
““P V
body
““W [
)
““[ \
{
”” 	&
EmailSenderManagerClient
‘‘ $
emailSenderProxy
‘‘% 5
=
‘‘6 7
new
‘‘8 ;&
EmailSenderManagerClient
‘‘< T
(
‘‘T U
)
‘‘U V
;
‘‘V W
UserSingleton
’’ 
userSingleton
’’ '
=
’’( )
UserSingleton
’’* 7
.
’’7 8
GetMainUser
’’8 C
(
’’C D
)
’’D E
;
’’E F
UserPojo
÷÷ 
user
÷÷ 
=
÷÷ 
new
÷÷ 
UserPojo
÷÷  (
(
÷÷( )
)
÷÷) *
{
◊◊ 
IdUser
ÿÿ 
=
ÿÿ 
userSingleton
ÿÿ &
.
ÿÿ& '
IdUser
ÿÿ' -
,
ÿÿ- .
UserName
ŸŸ 
=
ŸŸ 
userSingleton
ŸŸ (
.
ŸŸ( )
UserName
ŸŸ) 1
,
ŸŸ1 2
EmailAddress
⁄⁄ 
=
⁄⁄ 
email
⁄⁄ $
,
⁄⁄$ %
}
€€ 
;
€€ 
try
‹‹ 
{
›› 
GenericClassOfint
ﬁﬁ !
sentEmailResult
ﬁﬁ" 1
=
ﬁﬁ2 3
emailSenderProxy
ﬁﬁ4 D
.
ﬁﬁD E%
SentEmailInvitingToGame
ﬁﬁE \
(
ﬁﬁ\ ]
user
ﬁﬁ] a
,
ﬁﬁa b
subject
ﬁﬁc j
,
ﬁﬁj k
body
ﬁﬁl p
)
ﬁﬁp q
;
ﬁﬁq r
if
ﬂﬂ 
(
ﬂﬂ 
sentEmailResult
ﬂﬂ #
.
ﬂﬂ# $
	CodeEvent
ﬂﬂ$ -
==
ﬂﬂ. 0!
ExceptionDictionary
ﬂﬂ1 D
.
ﬂﬂD E
SUCCESFULL_EVENT
ﬂﬂE U
)
ﬂﬂU V
{
‡‡ !
DialogWindowManager
·· '
.
··' (#
ShowInfoOrErrorWindow
··( =
(
··= >

Properties
··> H
.
··H I
	Resources
··I R
.
··R S
tbxEmailSend
··S _
,
··_ `

Properties
··a k
.
··k l
	Resources
··l u
.
··u v
txbInfoEmailSend··v Ü
,··Ü á
Application··à ì
.··ì î
Current··î õ
.··õ ú

MainWindow··ú ¶
,··¶ ß#
DialogWindowManager··® ª
.··ª º
INFORMATION··º «
)··« »
;··» …
}
‚‚ 
else
„„ 
{
‰‰ 
if
ÂÂ 
(
ÂÂ 
sentEmailResult
ÂÂ '
.
ÂÂ' (
ObjectSaved
ÂÂ( 3
==
ÂÂ4 6
NULL_INT_VALUE
ÂÂ7 E
)
ÂÂE F
{
ÊÊ !
DialogWindowManager
ÁÁ +
.
ÁÁ+ ,#
ShowInfoOrErrorWindow
ÁÁ, A
(
ÁÁA B

Properties
ÁÁB L
.
ÁÁL M
	Resources
ÁÁM V
.
ÁÁV W
txbErrorTitle
ÁÁW d
,
ÁÁd e

Properties
ÁÁf p
.
ÁÁp q
	Resources
ÁÁq z
.
ÁÁz {
SentEmailIssueÁÁ{ â
,ÁÁâ ä
ApplicationÁÁã ñ
.ÁÁñ ó
CurrentÁÁó û
.ÁÁû ü

MainWindowÁÁü ©
,ÁÁ© ™#
DialogWindowManagerÁÁ´ æ
.ÁÁæ ø
ERRORÁÁø ƒ
)ÁÁƒ ≈
;ÁÁ≈ ∆
}
ÈÈ 
}
ÍÍ 
}
ÏÏ 
catch
ÌÌ 
(
ÌÌ '
EndpointNotFoundException
ÌÌ ,
ex
ÌÌ- /
)
ÌÌ/ 0
{
ÓÓ 
HandleException
ÔÔ 
(
ÔÔ  
ex
ÔÔ  "
,
ÔÔ" #

Properties
ÔÔ$ .
.
ÔÔ. /
	Resources
ÔÔ/ 8
.
ÔÔ8 9!
lblEndPointNotFound
ÔÔ9 L
)
ÔÔL M
;
ÔÔM N
}
 
catch
ÒÒ 
(
ÒÒ 1
#CommunicationObjectFaultedException
ÒÒ 6
ex
ÒÒ7 9
)
ÒÒ9 :
{
ÚÚ 
HandleException
ÛÛ 
(
ÛÛ  
ex
ÛÛ  "
,
ÛÛ" #

Properties
ÛÛ$ .
.
ÛÛ. /
	Resources
ÛÛ/ 8
.
ÛÛ8 9&
lblComunicationException
ÛÛ9 Q
)
ÛÛQ R
;
ÛÛR S
}
ÙÙ 
catch
ıı 
(
ıı 
TimeoutException
ıı #
ex
ıı$ &
)
ıı& '
{
ˆˆ 
HandleException
˜˜ 
(
˜˜  
ex
˜˜  "
,
˜˜" #

Properties
˜˜$ .
.
˜˜. /
	Resources
˜˜/ 8
.
˜˜8 9
lblTimeException
˜˜9 I
)
˜˜I J
;
˜˜J K
}
¯¯ 
catch
˘˘ 
(
˘˘ $
CommunicationException
˘˘ )
ex
˘˘* ,
)
˘˘, -
{
˙˙ 
HandleException
˚˚ 
(
˚˚  
ex
˚˚  "
,
˚˚" #

Properties
˚˚$ .
.
˚˚. /
	Resources
˚˚/ 8
.
˚˚8 9!
lblWithoutConection
˚˚9 L
)
˚˚L M
;
˚˚M N
}
¸¸ 
catch
˝˝ 
(
˝˝ 
SocketException
˝˝ "
ex
˝˝# %
)
˝˝% &
{
˛˛ 
HandleException
ˇˇ 
(
ˇˇ  
ex
ˇˇ  "
,
ˇˇ" #

Properties
ˇˇ$ .
.
ˇˇ. /
	Resources
ˇˇ/ 8
.
ˇˇ8 9%
lblFailtToEnterTheLobby
ˇˇ9 P
)
ˇˇP Q
;
ˇˇQ R
}
ÄÄ 
}
ÅÅ 	
private
ÉÉ 
void
ÉÉ 
HandleException
ÉÉ $
(
ÉÉ$ %
	Exception
ÉÉ% .
ex
ÉÉ/ 1
,
ÉÉ1 2
string
ÉÉ3 9
errorMessage
ÉÉ: F
)
ÉÉF G
{
ÑÑ 	%
ExceptionHandlerForLogs
ÖÖ #
.
ÖÖ# $
LogException
ÖÖ$ 0
(
ÖÖ0 1
ex
ÖÖ1 3
,
ÖÖ3 4!
ExceptionDictionary
ÖÖ5 H
.
ÖÖH I
FATAL_EXCEPTION
ÖÖI X
)
ÖÖX Y
;
ÖÖY Z!
DialogWindowManager
ÜÜ 
.
ÜÜ  #
ShowInfoOrErrorWindow
ÜÜ  5
(
ÜÜ5 6

Properties
ÜÜ6 @
.
ÜÜ@ A
	Resources
ÜÜA J
.
ÜÜJ K
txbErrorTitle
ÜÜK X
,
ÜÜX Y
errorMessage
ÜÜZ f
,
ÜÜf g
Application
ÜÜh s
.
ÜÜs t
Current
ÜÜt {
.
ÜÜ{ |

MainWindowÜÜ| Ü
,ÜÜÜ á#
DialogWindowManagerÜÜà õ
.ÜÜõ ú
ERRORÜÜú °
)ÜÜ° ¢
;ÜÜ¢ £
}
áá 	
private
ââ 
void
ââ )
ClickSendEmailForInvitation
ââ 0
(
ââ0 1
object
ââ1 7
sender
ââ8 >
,
ââ> ?"
MouseButtonEventArgs
ââ@ T
e
ââU V
)
ââV W
{
ää 	
string
ãã 
email
ãã 
=
ãã 
txbSendEmail
ãã '
.
ãã' (
Text
ãã( ,
;
ãã, -
int
åå 
roomCode
åå 
=
åå 
GameCodeContainer
åå ,
.
åå, -
RoomCode
åå- 5
;
åå5 6
string
çç 
subject
çç 
=
çç 

Properties
çç '
.
çç' (
	Resources
çç( 1
.
çç1 2%
txbTitleEmailInvitation
çç2 I
;
ççI J
string
éé 
bodyWithCode
éé 
=
éé  !

Properties
éé" ,
.
éé, -
	Resources
éé- 6
.
éé6 7
tbxBodyInvitation
éé7 H
+
ééI J
$str
ééK N
+
ééO P
$"
ééQ S
{
ééS T
roomCode
ééT \
}
éé\ ]
"
éé] ^
;
éé^ _
txbSendEmail
èè 
.
èè 
Text
èè 
=
èè 
string
èè  &
.
èè& '
Empty
èè' ,
;
èè, -
if
ëë 
(
ëë 
string
ëë 
.
ëë 
IsNullOrEmpty
ëë $
(
ëë$ %
email
ëë% *
)
ëë* +
)
ëë+ ,
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
ìì< =
lblWrongEmail
ìì= J
;
ììJ K
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
óó 
(
óó 
!
óó 
IsValidEmail
óó 
(
óó 
email
óó #
)
óó# $
)
óó$ %
{
òò 
LblWrongEmail
ôô 
.
ôô 
Content
ôô %
=
ôô& '

Properties
ôô( 2
.
ôô2 3
	Resources
ôô3 <
.
ôô< =
lblWrongFormat
ôô= K
;
ôôK L
LblWrongEmail
öö 
.
öö 

Visibility
öö (
=
öö) *

Visibility
öö+ 5
.
öö5 6
Visible
öö6 =
;
öö= >
return
õõ 
;
õõ 
}
úú 
if
ûû 
(
ûû !
CheckEmailExistence
ûû #
(
ûû# $
email
ûû$ )
)
ûû) *
==
ûû+ -
DISALLOWED_VALUES
ûû. ?
)
ûû? @
{
üü 
LblWrongEmail
†† 
.
†† 
Content
†† %
=
††& '

Properties
††( 2
.
††2 3
	Resources
††3 <
.
††< =
lblEmailExistInBD
††= N
;
††N O
LblWrongEmail
°° 
.
°° 

Visibility
°° (
=
°°) *

Visibility
°°+ 5
.
°°5 6
Visible
°°6 =
;
°°= >
return
¢¢ 
;
¢¢ 
}
££ 
LblWrongEmail
§§ 
.
§§ 

Visibility
§§ $
=
§§% &

Visibility
§§' 1
.
§§1 2
	Collapsed
§§2 ;
;
§§; <&
EmailSenderManagerClient
¶¶ $
emailSenderProxy
¶¶% 5
=
¶¶6 7
new
¶¶8 ;&
EmailSenderManagerClient
¶¶< T
(
¶¶T U
)
¶¶U V
;
¶¶V W
try
®® 
{
©© 
GenericClassOfint
´´ !
sentEmailResult
´´" 1
=
´´2 3
emailSenderProxy
´´4 D
.
´´D E$
SentEmailForInvitation
´´E [
(
´´[ \
email
´´\ a
,
´´a b
subject
´´c j
,
´´j k
bodyWithCode
´´l x
)
´´x y
;
´´y z
if
≠≠ 
(
≠≠ 
sentEmailResult
≠≠ #
.
≠≠# $
	CodeEvent
≠≠$ -
==
≠≠. 0!
ExceptionDictionary
≠≠1 D
.
≠≠D E
SUCCESFULL_EVENT
≠≠E U
)
≠≠U V
{
ÆÆ !
DialogWindowManager
ØØ '
.
ØØ' (#
ShowInfoOrErrorWindow
ØØ( =
(
ØØ= >

Properties
ØØ> H
.
ØØH I
	Resources
ØØI R
.
ØØR S
tbxEmailSend
ØØS _
,
ØØ_ `

Properties
ØØa k
.
ØØk l
	Resources
ØØl u
.
ØØu v
txbInfoEmailSendØØv Ü
,ØØÜ á
ApplicationØØà ì
.ØØì î
CurrentØØî õ
.ØØõ ú

MainWindowØØú ¶
,ØØ¶ ß#
DialogWindowManagerØØ® ª
.ØØª º
INFORMATIONØØº «
)ØØ« »
;ØØ» …
}
∞∞ 
else
±± 
{
≤≤ 
if
≥≥ 
(
≥≥ 
sentEmailResult
≥≥ '
.
≥≥' (
ObjectSaved
≥≥( 3
==
≥≥4 6
NULL_INT_VALUE
≥≥7 E
)
≥≥E F
{
¥¥ !
DialogWindowManager
µµ +
.
µµ+ ,#
ShowInfoOrErrorWindow
µµ, A
(
µµA B

Properties
µµB L
.
µµL M
	Resources
µµM V
.
µµV W
txbErrorTitle
µµW d
,
µµd e

Properties
µµf p
.
µµp q
	Resources
µµq z
.
µµz {
SentEmailIssueµµ{ â
,µµâ ä
Applicationµµã ñ
.µµñ ó
Currentµµó û
.µµû ü

MainWindowµµü ©
,µµ© ™#
DialogWindowManagerµµ´ æ
.µµæ ø
ERRORµµø ƒ
)µµƒ ≈
;µµ≈ ∆
}
∂∂ 
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
ªª8 9!
lblEndPointNotFound
ªª9 L
)
ªªL M
;
ªªM N
}
ºº 
catch
ΩΩ 
(
ΩΩ 1
#CommunicationObjectFaultedException
ΩΩ 6
ex
ΩΩ7 9
)
ΩΩ9 :
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
øø8 9&
lblComunicationException
øø9 Q
)
øøQ R
;
øøR S
}
¿¿ 
catch
¡¡ 
(
¡¡ 
TimeoutException
¡¡ #
ex
¡¡$ &
)
¡¡& '
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
lblTimeException
√√9 I
)
√√I J
;
√√J K
}
ƒƒ 
catch
≈≈ 
(
≈≈ $
CommunicationException
≈≈ )
ex
≈≈* ,
)
≈≈, -
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
««8 9!
lblWithoutConection
««9 L
)
««L M
;
««M N
}
»» 
catch
…… 
(
…… 
SocketException
…… "
ex
……# %
)
……% &
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
ÀÀ8 9%
lblFailtToEnterTheLobby
ÀÀ9 P
)
ÀÀP Q
;
ÀÀQ R
}
ÃÃ 
}
ÕÕ 	
private
ŒŒ 
bool
ŒŒ 
IsValidEmail
ŒŒ !
(
ŒŒ! "
string
ŒŒ" (
email
ŒŒ) .
)
ŒŒ. /
{
œœ 	
try
–– 
{
—— '
RegularExpressionsLibrary
““ )
regexInstance
““* 7
=
““8 9
new
““: ='
RegularExpressionsLibrary
““> W
(
““W X
)
““X Y
;
““Y Z
string
”” 
regexExpression
”” &
=
””' (
regexInstance
””) 6
.
””6 7!
GetEMAIL_RULES_CHAR
””7 J
(
””J K
)
””K L
;
””L M
return
‘‘ 
Regex
‘‘ 
.
‘‘ 
IsMatch
‘‘ $
(
‘‘$ %
email
‘‘% *
,
‘‘* +
regexExpression
‘‘, ;
,
‘‘; <
RegexOptions
‘‘= I
.
‘‘I J

IgnoreCase
‘‘J T
,
‘‘T U
TimeSpan
‘‘V ^
.
‘‘^ _
FromMilliseconds
‘‘_ o
(
‘‘o p
$num
‘‘p s
)
‘‘s t
)
‘‘t u
;
‘‘u v
}
’’ 
catch
÷÷ 
(
÷÷ (
RegexMatchTimeoutException
÷÷ -
ex
÷÷. 0
)
÷÷0 1
{
◊◊ %
ExceptionHandlerForLogs
ÿÿ '
.
ÿÿ' (
LogException
ÿÿ( 4
(
ÿÿ4 5
ex
ÿÿ5 7
,
ÿÿ7 8!
ExceptionDictionary
ÿÿ9 L
.
ÿÿL M
ERROR
ÿÿM R
)
ÿÿR S
;
ÿÿS T
return
ŸŸ 
false
ŸŸ 
;
ŸŸ 
}
⁄⁄ 
}
€€ 	
private
‹‹ 
int
‹‹ !
CheckEmailExistence
‹‹ '
(
‹‹' (
string
‹‹( .
email
‹‹/ 4
)
‹‹4 5
{
›› 	
try
ﬁﬁ 
{
ﬂﬂ )
ValidateUserExistanceClient
‡‡ +
dataCheckerProxy
‡‡, <
=
‡‡= >
new
‡‡? B
(
‡‡B C
)
‡‡C D
;
‡‡D E
GenericClassOfint
·· !
	userIsNew
··" +
=
··, -
dataCheckerProxy
··. >
.
··> ?
EmailAlreadyExist
··? P
(
··P Q
email
··Q V
)
··V W
;
··W X
dataCheckerProxy
‚‚  
.
‚‚  !
Close
‚‚! &
(
‚‚& '
)
‚‚' (
;
‚‚( )
if
„„ 
(
„„ 
	userIsNew
„„ 
.
„„ 
	CodeEvent
„„ '
==
„„( *!
ExceptionDictionary
„„+ >
.
„„> ?
SUCCESFULL_EVENT
„„? O
||
„„P R
	userIsNew
„„S \
.
„„\ ]
	CodeEvent
„„] f
==
„„g i!
ExceptionDictionary
„„j }
.
„„} ~!
UNSUCCESFULL_EVENT„„~ ê
)„„ê ë
{
‰‰ 
if
ÂÂ 
(
ÂÂ 
	userIsNew
ÂÂ !
.
ÂÂ! "
ObjectSaved
ÂÂ" -
==
ÂÂ. 0
ALLOWED_VALUES
ÂÂ1 ?
)
ÂÂ? @
{
ÊÊ 
return
ÁÁ 
ALLOWED_VALUES
ÁÁ -
;
ÁÁ- .
}
ËË 
else
ÈÈ 
{
ÍÍ 
return
ÎÎ 
DISALLOWED_VALUES
ÎÎ 0
;
ÎÎ0 1
}
ÏÏ 
}
ÌÌ 
else
ÓÓ 
{
ÔÔ 
return
 
DISALLOWED_VALUES
 ,
;
, -
}
ÒÒ 
}
ÚÚ 
catch
ÛÛ 
(
ÛÛ '
EndpointNotFoundException
ÛÛ ,
)
ÛÛ, -
{
ÙÙ 
throw
ıı 
new
ıı '
EndpointNotFoundException
ıı 3
(
ıı3 4
)
ıı4 5
;
ıı5 6
}
ˆˆ 
catch
˜˜ 
(
˜˜ 1
#CommunicationObjectFaultedException
˜˜ 6
)
˜˜6 7
{
¯¯ 
throw
˘˘ 
new
˘˘ $
CommunicationException
˘˘ 0
(
˘˘0 1
)
˘˘1 2
;
˘˘2 3
}
˙˙ 
catch
˚˚ 
(
˚˚ 
TimeoutException
˚˚ #
)
˚˚# $
{
¸¸ 
throw
˝˝ 
new
˝˝ 
TimeoutException
˝˝ *
(
˝˝* +
)
˝˝+ ,
;
˝˝, -
}
˛˛ 
catch
ˇˇ 
(
ˇˇ $
CommunicationException
ˇˇ )
)
ˇˇ) *
{
ÄÄ 
throw
ÅÅ 
new
ÅÅ $
CommunicationException
ÅÅ 0
(
ÅÅ0 1
)
ÅÅ1 2
;
ÅÅ2 3
}
ÇÇ 
catch
ÉÉ 
(
ÉÉ 
SocketException
ÉÉ "
)
ÉÉ" #
{
ÑÑ 
throw
ÖÖ 
new
ÖÖ 
SocketException
ÖÖ )
(
ÖÖ) *
)
ÖÖ* +
;
ÖÖ+ ,
}
ÜÜ 
}
áá 	
}
ââ 
}ãã Ü—
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
private&& 
bool&& 
isTimerExpired&& #
=&&$ %
false&&& +
;&&+ ,
public(( 
CodeConfirmation(( 
(((  
UserPojo((  (
user(() -
)((- .
{)) 	
InitializeComponent++ 
(++  
)++  !
;++! "
this,, 
.,, 

userToSave,, 
=,, 
user,, "
;,," #
password-- 
=-- 
user-- 
.-- 
Password-- $
;--$ %
txbCodeCreateAcc.. 
... 
	MaxLength.. &
=..' (
$num..) *
;..* +
Loaded// 
+=// 
LoadedPrepareWindow// )
;//) *
}00 	
private22 
void22 
LoadedPrepareWindow22 (
(22( )
object22) /
sender220 6
,226 7
RoutedEventArgs228 G
e22H I
)22I J
{33 	%
RegistryWithTheDictionary44 %
(44% &
)44& '
;44' (
	SentEmail55 
(55 
)55 
;55 

StartTimer66 
(66 
)66 
;66 
}77 	
private99 
void99 %
RegistryWithTheDictionary99 .
(99. /
)99/ 0
{:: 	
try;; 
{<< '
UserCreateAccountCodeClient== +
userCreateAccount==, =
===> ?
new==@ C
(==C D
)==D E
;==E F
userCreateAccount>> !
.>>! "+
AddUserToConfirmationDictionary>>" A
(>>A B

userToSave>>B L
)>>L M
;>>M N
InstanceContext?? 
instanceContext??  /
=??0 1
new??2 5
InstanceContext??6 E
(??E F
this??F J
)??J K
;??K L!
CheckUserLivingClient@@ %!
checkUserLivingClient@@& ;
=@@< =
new@@> A
(@@A B
instanceContext@@B Q
)@@Q R
;@@R S
varAA 
successAA 
=AA !
checkUserLivingClientAA 3
.AA3 4'
SubscribeToICheckUserLivingAA4 O
(AAO P

userToSaveAAP Z
)AAZ [
;AA[ \
ifBB 
(BB 
successBB 
!=BB 
ExceptionDictionaryBB 2
.BB2 3
SUCCESFULL_EVENTBB3 C
)BBC D
{CC 
DialogWindowManagerDD '
.DD' (!
ShowInfoOrErrorWindowDD( =
(DD= >

PropertiesDD> H
.DDH I
	ResourcesDDI R
.DDR S
txbErrorTitleDDS `
,DD` a

PropertiesDDb l
.DDl m
	ResourcesDDm v
.DDv w&
lblFailRegistryToCallBack	DDw ê
,
DDê ë
Application
DDí ù
.
DDù û
Current
DDû •
.
DD• ¶

MainWindow
DD¶ ∞
,
DD∞ ±!
DialogWindowManager
DD≤ ≈
.
DD≈ ∆
ERROR
DD∆ À
)
DDÀ Ã
;
DDÃ Õ#
ClickButtonCancelSavingEE +
(EE+ ,
bttCancellActionEE, <
,EE< =
newEE> A
RoutedEventArgsEEB Q
(EEQ R
)EER S
)EES T
;EET U
}FF 
}GG 
catchHH 
(HH %
EndpointNotFoundExceptionHH ,
exHH- /
)HH/ 0
{II 
HandleExceptionJJ 
(JJ  
exJJ  "
,JJ" #

PropertiesJJ$ .
.JJ. /
	ResourcesJJ/ 8
.JJ8 9
lblEndPointNotFoundJJ9 L
)JJL M
;JJM N#
ClickButtonCancelSavingKK '
(KK' (
bttCancellActionKK( 8
,KK8 9
newKK: =
RoutedEventArgsKK> M
(KKM N
)KKN O
)KKO P
;KKP Q
}LL 
catchMM 
(MM /
#CommunicationObjectFaultedExceptionMM 6
exMM7 9
)MM9 :
{NN 
HandleExceptionOO 
(OO  
exOO  "
,OO" #

PropertiesOO$ .
.OO. /
	ResourcesOO/ 8
.OO8 9$
lblComunicationExceptionOO9 Q
)OOQ R
;OOR S#
ClickButtonCancelSavingPP '
(PP' (
bttCancellActionPP( 8
,PP8 9
newPP: =
RoutedEventArgsPP> M
(PPM N
)PPN O
)PPO P
;PPP Q
}QQ 
catchRR 
(RR 
TimeoutExceptionRR #
exRR$ &
)RR& '
{SS 
HandleExceptionTT 
(TT  
exTT  "
,TT" #

PropertiesTT$ .
.TT. /
	ResourcesTT/ 8
.TT8 9
lblTimeExceptionTT9 I
)TTI J
;TTJ K#
ClickButtonCancelSavingUU '
(UU' (
bttCancellActionUU( 8
,UU8 9
newUU: =
RoutedEventArgsUU> M
(UUM N
)UUN O
)UUO P
;UUP Q
}VV 
catchWW 
(WW "
CommunicationExceptionWW )
exWW* ,
)WW, -
{XX 
HandleExceptionYY 
(YY  
exYY  "
,YY" #

PropertiesYY$ .
.YY. /
	ResourcesYY/ 8
.YY8 9
lblWithoutConectionYY9 L
)YYL M
;YYM N#
ClickButtonCancelSavingZZ '
(ZZ' (
bttCancellActionZZ( 8
,ZZ8 9
newZZ: =
RoutedEventArgsZZ> M
(ZZM N
)ZZN O
)ZZO P
;ZZP Q
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
)^^P Q
;^^Q R#
ClickButtonCancelSaving__ '
(__' (
bttCancellAction__( 8
,__8 9
new__: =
RoutedEventArgs__> M
(__M N
)__N O
)__O P
;__P Q
}`` 
}aa 	
privatecc 
voidcc 

StartTimercc 
(cc  
)cc  !
{dd 	
leftTimeee 
=ee 
$numee 
;ee 
timerff 
=ff 
newff 
DispatcherTimerff '
(ff' (
)ff( )
;ff) *
timergg 
.gg 
Intervalgg 
=gg 
TimeSpangg %
.gg% &
FromSecondsgg& 1
(gg1 2
$numgg2 3
)gg3 4
;gg4 5
timerhh 
.hh 
Tickhh 
+=hh 
TickTimerResendCodehh -
;hh- .
bttResendCodeii 
.ii 
	IsEnabledii #
=ii$ %
falseii& +
;ii+ ,
timerjj 
.jj 
Startjj 
(jj 
)jj 
;jj 
}kk 	
privatemm 
voidmm 
TickTimerResendCodemm (
(mm( )
objectmm) /
sendermm0 6
,mm6 7
	EventArgsmm8 A
emmB C
)mmC D
{nn 	
ifoo 
(oo 
leftTimeoo 
>oo 
NULL_INT_VALUEoo )
)oo) *
{pp 
leftTimeqq 
--qq 
;qq 
lblResentCoderr 
.rr 
Contentrr %
=rr& '

Propertiesrr( 2
.rr2 3
	Resourcesrr3 <
.rr< =
lblResentCoderr= J
+rrK L
$strrrM P
+rrQ R
leftTimerrS [
;rr[ \
lblResentCodess 
.ss 

Foregroundss (
=ss) *
newss+ .
SolidColorBrushss/ >
(ss> ?
Colorsss? E
.ssE F
	IndianRedssF O
)ssO P
;ssP Q
}tt 
elseuu 
{vv 
lblResentCodeww 
.ww 
Contentww %
=ww& '

Propertiesww( 2
.ww2 3
	Resourcesww3 <
.ww< =
lblResentCodeww= J
+wwK L
$strwwM P
+wwQ R
leftTimewwS [
;ww[ \
lblResentCodexx 
.xx 

Foregroundxx (
=xx) *
newxx+ .
SolidColorBrushxx/ >
(xx> ?
Colorsxx? E
.xxE F
ForestGreenxxF Q
)xxQ R
;xxR S
bttResendCodeyy 
.yy 
	IsEnabledyy '
=yy( )
trueyy* .
;yy. /
timerzz 
.zz 
Stopzz 
(zz 
)zz 
;zz 
isTimerExpired{{ 
={{  
true{{! %
;{{% &
UpdateLabelStyle||  
(||  !
)||! "
;||" #
}}} 
}~~ 	
private
ÄÄ 
void
ÄÄ 
	SentEmail
ÄÄ 
(
ÄÄ 
)
ÄÄ  
{
ÅÅ 	
try
ÇÇ 
{
ÉÉ &
EmailSenderManagerClient
ÑÑ (
emailSender
ÑÑ) 4
=
ÑÑ5 6
new
ÑÑ7 :&
EmailSenderManagerClient
ÑÑ; S
(
ÑÑS T
)
ÑÑT U
;
ÑÑU V
GenericClassOfint
ÖÖ !
sentEmailSucc
ÖÖ" /
=
ÖÖ0 1
emailSender
ÖÖ2 =
.
ÖÖ= >2
$SentEmailConfirmationToCreateAccount
ÖÖ> b
(
ÖÖb c

userToSave
ÜÜ" ,
,
ÜÜ, -

Properties
ÜÜ. 8
.
ÜÜ8 9
	Resources
ÜÜ9 B
.
ÜÜB C
EmailSubjectCode
ÜÜC S
,
ÜÜS T

Properties
ÜÜU _
.
ÜÜ_ `
	Resources
ÜÜ` i
.
ÜÜi j
EmailCodeDescrip
ÜÜj z
)
ÜÜz {
;
ÜÜ{ |
if
áá 
(
áá 
sentEmailSucc
áá !
.
áá! "
	CodeEvent
áá" +
!=
áá, .!
ExceptionDictionary
áá/ B
.
ááB C
SUCCESFULL_EVENT
ááC S
)
ááS T
{
àà !
DialogWindowManager
ââ '
.
ââ' (#
ShowInfoOrErrorWindow
ââ( =
(
ââ= >

Properties
ââ> H
.
ââH I
	Resources
ââI R
.
ââR S
txbErrorTitle
ââS `
,
ââ` a

Properties
ââb l
.
ââl m
	Resources
ââm v
.
ââv w
SentEmailIssueââw Ö
,ââÖ Ü
Applicationââá í
.ââí ì
Currentââì ö
.ââö õ

MainWindowââõ •
,ââ• ¶#
DialogWindowManagerââß ∫
.ââ∫ ª
ERRORââª ¿
)ââ¿ ¡
;ââ¡ ¬
}
ää 
if
ãã 
(
ãã 
sentEmailSucc
ãã !
.
ãã! "
ObjectSaved
ãã" -
==
ãã. 0
NULL_INT_VALUE
ãã1 ?
)
ãã? @
{
åå !
DialogWindowManager
çç '
.
çç' (#
ShowInfoOrErrorWindow
çç( =
(
çç= >

Properties
çç> H
.
ççH I
	Resources
ççI R
.
ççR S
txbErrorTitle
ççS `
,
çç` a

Properties
ççb l
.
ççl m
	Resources
ççm v
.
ççv w
SentEmailIssueççw Ö
,ççÖ Ü
Applicationççá í
.ççí ì
Currentççì ö
.ççö õ

MainWindowççõ •
,çç• ¶#
DialogWindowManagerççß ∫
.çç∫ ª
ERRORççª ¿
)çç¿ ¡
;çç¡ ¬
}
éé 
}
èè 
catch
êê 
(
êê '
EndpointNotFoundException
êê ,
ex
êê- /
)
êê/ 0
{
ëë 
HandleException
íí 
(
íí  
ex
íí  "
,
íí" #

Properties
íí$ .
.
íí. /
	Resources
íí/ 8
.
íí8 9!
lblEndPointNotFound
íí9 L
)
ííL M
;
ííM N
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
ññR S
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
ööJ K
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
HandleException
ûû 
(
ûû  
ex
ûû  "
,
ûû" #

Properties
ûû$ .
.
ûû. /
	Resources
ûû/ 8
.
ûû8 9!
lblWithoutConection
ûû9 L
)
ûûL M
;
ûûM N
}
üü 
catch
†† 
(
†† 
SocketException
†† "
ex
††# %
)
††% &
{
°° 
HandleException
¢¢ 
(
¢¢  
ex
¢¢  "
,
¢¢" #

Properties
¢¢$ .
.
¢¢. /
	Resources
¢¢/ 8
.
¢¢8 9%
lblFailtToEnterTheLobby
¢¢9 P
)
¢¢P Q
;
¢¢Q R
}
££ 
}
§§ 	
private
¶¶ 
void
¶¶ !
ClickButtonSaveUser
¶¶ (
(
¶¶( )
object
¶¶) /
sender
¶¶0 6
,
¶¶6 7
RoutedEventArgs
¶¶8 G
e
¶¶H I
)
¶¶I J
{
ßß 	
try
®® 
{
©© )
UserCreateAccountCodeClient
™™ +
userCreateAccount
™™, =
=
™™> ?
new
™™@ C
(
™™C D
)
™™D E
;
™™E F
if
´´ 
(
´´ 
userCreateAccount
´´ %
.
´´% &
CheckCodeEntered
´´& 6
(
´´6 7

userToSave
´´7 A
,
´´A B
txbCodeCreateAcc
´´C S
.
´´S T
Text
´´T X
.
´´X Y
ToString
´´Y a
(
´´a b
)
´´b c
.
´´c d
Trim
´´d h
(
´´h i
)
´´i j
)
´´j k
==
´´l n"
ExceptionDictionary´´o Ç
.´´Ç É 
SUCCESFULL_EVENT´´É ì
)´´ì î
{
¨¨ "
PrepareUserToBeSaved
≠≠ (
(
≠≠( )
)
≠≠) *
;
≠≠* +
UserManagerClient
ÆÆ %
userManagerProxy
ÆÆ& 6
=
ÆÆ7 8
new
ÆÆ9 <
UserManagerClient
ÆÆ= N
(
ÆÆN O
)
ÆÆO P
;
ÆÆP Q
GenericClassOfint
ØØ %
	userSaved
ØØ& /
=
ØØ0 1
userManagerProxy
ØØ2 B
.
ØØB C
SaveUser
ØØC K
(
ØØK L

userToSave
ØØL V
,
ØØV W
txbCodeCreateAcc
ØØX h
.
ØØh i
Text
ØØi m
.
ØØm n
ToString
ØØn v
(
ØØv w
)
ØØw x
.
ØØx y
Trim
ØØy }
(
ØØ} ~
)
ØØ~ 
)ØØ Ä
;ØØÄ Å
if
∞∞ 
(
∞∞ 
	userSaved
∞∞ !
.
∞∞! "
	CodeEvent
∞∞" +
==
∞∞, .!
ExceptionDictionary
∞∞/ B
.
∞∞B C
SUCCESFULL_EVENT
∞∞C S
)
∞∞S T
{
±± 
SetSingleton
≤≤ $
(
≤≤$ %
)
≤≤% &
;
≤≤& '&
NotifyUserABoutNewPlayer
≥≥ 0
(
≥≥0 1
)
≥≥1 2
;
≥≥2 3!
DialogWindowManager
¥¥ +
.
¥¥+ ,#
ShowInfoOrErrorWindow
¥¥, A
(
¥¥A B

Properties
¥¥B L
.
¥¥L M
	Resources
¥¥M V
.
¥¥V W!
txbInformationTitle
¥¥W j
,
¥¥j k

Properties
¥¥l v
.
¥¥v w
	Resources¥¥w Ä
.¥¥Ä Å'
txbInfoMessgSuccRegUser¥¥Å ò
,¥¥ò ô
Application¥¥ö •
.¥¥• ¶
Current¥¥¶ ≠
.¥¥≠ Æ

MainWindow¥¥Æ ∏
,¥¥∏ π#
DialogWindowManager¥¥∫ Õ
.¥¥Õ Œ
INFORMATION¥¥Œ Ÿ
)¥¥Ÿ ⁄
;¥¥⁄ €
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
ªª; <!
DialogWindowManager
ºº +
.
ºº+ ,#
ShowInfoOrErrorWindow
ºº, A
(
ººA B

Properties
ººB L
.
ººL M
	Resources
ººM V
.
ººV W
txbErrorTitle
ººW d
,
ººd e

Properties
ººf p
.
ººp q
	Resources
ººq z
.
ººz {*
txbErrorMessageRegisterUserºº{ ñ
,ººñ ó
Applicationººò £
.ºº£ §
Currentºº§ ´
.ºº´ ¨

MainWindowºº¨ ∂
,ºº∂ ∑#
DialogWindowManagerºº∏ À
.ººÀ Ã
ERRORººÃ —
)ºº— “
;ºº“ ”
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
ÁÁ !
DialogWindowManager
ËË +
.
ËË+ ,#
ShowInfoOrErrorWindow
ËË, A
(
ËËA B

Properties
ËËB L
.
ËËL M
	Resources
ËËM V
.
ËËV W
txbErrorTitle
ËËW d
,
ËËd e

Properties
ËËf p
.
ËËp q
	Resources
ËËq z
.
ËËz {(
lblFailRegistryToCallBackËË{ î
,ËËî ï
ApplicationËËñ °
.ËË° ¢
CurrentËË¢ ©
.ËË© ™

MainWindowËË™ ¥
,ËË¥ µ#
DialogWindowManagerËË∂ …
.ËË…  
ERRORËË  œ
)ËËœ –
;ËË– —
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
ÛÛ !
DialogWindowManager
ÙÙ +
.
ÙÙ+ ,#
ShowInfoOrErrorWindow
ÙÙ, A
(
ÙÙA B

Properties
ÙÙB L
.
ÙÙL M
	Resources
ÙÙM V
.
ÙÙV W
txbErrorTitle
ÙÙW d
,
ÙÙd e

Properties
ÙÙf p
.
ÙÙp q
	Resources
ÙÙq z
.
ÙÙz {%
lblFailConsultingTheBDÙÙ{ ë
,ÙÙë í
ApplicationÙÙì û
.ÙÙû ü
CurrentÙÙü ¶
.ÙÙ¶ ß

MainWindowÙÙß ±
,ÙÙ± ≤#
DialogWindowManagerÙÙ≥ ∆
.ÙÙ∆ «
ERRORÙÙ« Ã
)ÙÙÃ Õ
;ÙÙÕ Œ
}
ıı 
}
ˆˆ 
else
˜˜ 
{
¯¯ !
DialogWindowManager
˘˘ '
.
˘˘' (#
ShowInfoOrErrorWindow
˘˘( =
(
˘˘= >

Properties
˘˘> H
.
˘˘H I
	Resources
˘˘I R
.
˘˘R S
txbErrorTitle
˘˘S `
,
˘˘` a

Properties
˘˘b l
.
˘˘l m
	Resources
˘˘m v
.
˘˘v w%
lblFailConsultingTheBD˘˘w ç
,˘˘ç é
Application˘˘è ö
.˘˘ö õ
Current˘˘õ ¢
.˘˘¢ £

MainWindow˘˘£ ≠
,˘˘≠ Æ#
DialogWindowManager˘˘Ø ¬
.˘˘¬ √
ERROR˘˘√ »
)˘˘» …
;˘˘…  
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
ûûY Z!
DialogWindowManager
üü 
.
üü  #
ShowInfoOrErrorWindow
üü  5
(
üü5 6

Properties
üü6 @
.
üü@ A
	Resources
üüA J
.
üüJ K
txbErrorTitle
üüK X
,
üüX Y
errorMessage
üüZ f
,
üüf g
Application
üüh s
.
üüs t
Current
üüt {
.
üü{ |

MainWindowüü| Ü
,üüÜ á#
DialogWindowManagerüüà õ
.üüõ ú
ERRORüüú °
)üü° ¢
;üü¢ £
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
}∞∞ ÁÒ
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
{"" 
String## 
imageResource## 
=## 
$str## !
;##! "
private$$ 

Dictionary$$ 
<$$ 
string$$ !
,$$! "
int$$# &
>$$& '
imageIdMappings$$( 7
;$$7 8
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
public(( 
EditUserProfile(( 
((( 
)((  
{)) 	
InitializeComponent** 
(**  
)**  !
;**! "
Loaded++ 
+=++  
LoadedPreparedWindow++ *
;++* +
},, 	
private.. 
void..  
LoadedPreparedWindow.. )
(..) *
object..* 0
sender..1 7
,..7 8
RoutedEventArgs..9 H
e..I J
)..J K
{// 	#
InitializeImageMappings00 #
(00# $
)00$ %
;00% & 
ImagenInitialization11  
(11  !
)11! "
;11" #
ReadResource22 
(22 
)22 
;22 
DisplayUserInfo33 
(33 
)33 
;33 
}55 	
public77 
void77 
DisplayUserInfo77 #
(77# $
)77$ %
{88 	
txbEditUserName99 
.99 

IsReadOnly99 &
=99' (
true99) -
;99- .
UserSingleton:: 
userSingleton:: '
=::( )
UserSingleton::* 7
.::7 8
GetMainUser::8 C
(::C D
)::D E
;::E F
txbEditName;; 
.;; 
Text;; 
=;; 
userSingleton;; ,
.;;, -
Name;;- 1
;;;1 2
txbEditUserName<< 
.<< 
Text<<  
=<<! "
userSingleton<<# 0
.<<0 1
UserName<<1 9
;<<9 :
txbEditEmail== 
.== 
Text== 
=== 
userSingleton==  -
.==- .
Email==. 3
;==3 4
}>> 	
private@@ 
void@@ (
CLickButtonSaveAvatarChanges@@ 1
(@@1 2
object@@2 8
sender@@9 ?
,@@? @
RoutedEventArgs@@A P
e@@Q R
)@@R S
{AA 	
tryBB 
{CC 
UserManagerClientDD !
useManagerProxyDD" 1
=DD2 3
newDD4 7
UserManagerClientDD8 I
(DDI J
)DDJ K
;DDK L
intEE 
idPlayerEE 
=EE 
UserSingletonEE ,
.EE, -
GetMainUserEE- 8
(EE8 9
)EE9 :
.EE: ;
IdPlayerEE; C
;EEC D
imageIdMappingsFF 
.FF  
TryGetValueFF  +
(FF+ ,
imageResourceFF, 9
,FF9 :
outFF; >
intFF? B
imageIdFFC J
)FFJ K
;FFK L
varGG 
resultPhotoGG 
=GG  !
useManagerProxyGG" 1
.GG1 2
UpdatePlayerPhotoGG2 C
(GGC D
idPlayerGGD L
,GGL M
imageIdGGN U
)GGU V
;GGV W
ifII 
(II 
resultPhotoII 
!=II  "
nullII# '
)II' (
{JJ 
UserSingletonKK !
.KK! "
GetMainUserKK" -
(KK- .
)KK. /
.KK/ 0
UpdateAvatarDataKK0 @
(KK@ A
imageIdKKA H
)KKH I
;KKI J
DialogWindowManagerLL '
.LL' (!
ShowInfoOrErrorWindowLL( =
(LL= >

PropertiesLL> H
.LLH I
	ResourcesLLI R
.LLR S
txbInformationTitleLLS f
,LLf g

PropertiesLLh r
.LLr s
	ResourcesLLs |
.LL| }
lblUpdateAvatar	LL} å
,
LLå ç
Application
LLé ô
.
LLô ö
Current
LLö °
.
LL° ¢

MainWindow
LL¢ ¨
,
LL¨ ≠!
DialogWindowManager
LLÆ ¡
.
LL¡ ¬
INFORMATION
LL¬ Õ
)
LLÕ Œ
;
LLŒ œ
MainMenuMM 
mainMenuPageMM )
=MM* +
newMM, /
MainMenuMM0 8
(MM8 9
)MM9 :
;MM: ;
thisNN 
.NN 
NavigationServiceNN *
.NN* +
NavigateNN+ 3
(NN3 4
mainMenuPageNN4 @
)NN@ A
;NNA B
NavigationServiceOO %
.OO% &
RemoveBackEntryOO& 5
(OO5 6
)OO6 7
;OO7 8
}PP 
elseQQ 
{RR 
DialogWindowManagerSS '
.SS' (!
ShowInfoOrErrorWindowSS( =
(SS= >

PropertiesSS> H
.SSH I
	ResourcesSSI R
.SSR S
txbErrorTitleSSS `
,SS` a

PropertiesSSb l
.SSl m
	ResourcesSSm v
.SSv w!
lblWrongUpdateAvatar	SSw ã
,
SSã å
Application
SSç ò
.
SSò ô
Current
SSô †
.
SS† °

MainWindow
SS° ´
,
SS´ ¨!
DialogWindowManager
SS≠ ¿
.
SS¿ ¡
ERROR
SS¡ ∆
)
SS∆ «
;
SS« »
RefreshWindowTT !
(TT! "
)TT" #
;TT# $
}UU 
useManagerProxyVV 
.VV  
CloseVV  %
(VV% &
)VV& '
;VV' (
}WW 
catchXX 
(XX %
EndpointNotFoundExceptionXX ,
exXX- /
)XX/ 0
{YY 
HandleExceptionZZ 
(ZZ  
exZZ  "
,ZZ" #

PropertiesZZ$ .
.ZZ. /
	ResourcesZZ/ 8
.ZZ8 9 
lblWrongUpdateAvatarZZ9 M
+ZZN O
$strZZP U
+ZZV W

PropertiesZZX b
.ZZb c
	ResourcesZZc l
.ZZl m 
lblEndPointNotFound	ZZm Ä
)
ZZÄ Å
;
ZZÅ Ç
}[[ 
catch\\ 
(\\ /
#CommunicationObjectFaultedException\\ 6
ex\\7 9
)\\9 :
{]] 
HandleException^^ 
(^^  
ex^^  "
,^^" #

Properties^^$ .
.^^. /
	Resources^^/ 8
.^^8 9 
lblWrongUpdateAvatar^^9 M
+^^N O
$str^^P U
+^^V W

Properties^^X b
.^^b c
	Resources^^c l
.^^l m%
lblComunicationException	^^m Ö
)
^^Ö Ü
;
^^Ü á
}__ 
catch`` 
(`` 
TimeoutException`` #
ex``$ &
)``& '
{aa 
HandleExceptionbb 
(bb  
exbb  "
,bb" #

Propertiesbb$ .
.bb. /
	Resourcesbb/ 8
.bb8 9 
lblWrongUpdateAvatarbb9 M
+bbN O
$strbbP U
+bbV W

PropertiesbbX b
.bbb c
	Resourcesbbc l
.bbl m
lblTimeExceptionbbm }
)bb} ~
;bb~ 
}cc 
catchdd 
(dd "
CommunicationExceptiondd )
exdd* ,
)dd, -
{ee 
HandleExceptionff 
(ff  
exff  "
,ff" #

Propertiesff$ .
.ff. /
	Resourcesff/ 8
.ff8 9 
lblWrongUpdateAvatarff9 M
+ffN O
$strffP U
+ffV W

PropertiesffX b
.ffb c
	Resourcesffc l
.ffl m 
lblWithoutConection	ffm Ä
)
ffÄ Å
;
ffÅ Ç
}gg 
catchhh 
(hh 
SocketExceptionhh "
exhh# %
)hh% &
{ii 
HandleExceptionjj 
(jj  
exjj  "
,jj" #

Propertiesjj$ .
.jj. /
	Resourcesjj/ 8
.jj8 9 
lblWrongUpdateAvatarjj9 M
+jjN O
$strjjP U
+jjV W

PropertiesjjX b
.jjb c
	Resourcesjjc l
.jjl m 
lblWithoutConection	jjm Ä
)
jjÄ Å
;
jjÅ Ç
}kk 
}ll 	
privatenn 
voidnn 
SelectImagenn  
(nn  !
objectnn! '
sendernn( .
,nn. /%
SelectionChangedEventArgsnn0 I
ennJ K
)nnK L
{oo 	
ifpp 
(pp 
lxtImageSelectorpp  
.pp  !
SelectedItempp! -
!=pp. 0
nullpp1 5
)pp5 6
{qq 
Bitmapss 
bmpss 
=ss 
(ss 
Bitmapss $
)ss$ %

Propertiesss% /
.ss/ 0
ResourcesImagess0 >
.ss> ?
ResourceManagerss? N
.ssN O
	GetObjectssO X
(ssX Y
lxtImageSelectorssY i
.ssi j
SelectedItemssj v
.ssv w
ToStringssw 
(	ss Ä
)
ssÄ Å
)
ssÅ Ç
;
ssÇ É
BitmapSourceuu 
bmpImageuu %
=uu& '
Imaginguu( /
.uu/ 0)
CreateBitmapSourceFromHBitmapuu0 M
(uuM N
bmpvv 
.vv 

GetHbitmapvv "
(vv" #
)vv# $
,vv$ %
IntPtrww 
.ww 
Zeroww 
,ww  
	Int32Rectxx 
.xx 
Emptyxx #
,xx# $
BitmapSizeOptionsyy %
.yy% &
FromEmptyOptionsyy& 6
(yy6 7
)yy7 8
)zz 
;zz 
imageProfile|| 
.|| 
Source|| #
=||$ %
bmpImage||& .
;||. /
imageResource}} 
=}} 
lxtImageSelector}}  0
.}}0 1
SelectedItem}}1 =
.}}= >
ToString}}> F
(}}F G
)}}G H
;}}H I
}~~ 
} 	
private
ÅÅ 
void
ÅÅ 
ReadResource
ÅÅ !
(
ÅÅ! "
)
ÅÅ" #
{
ÇÇ 	
lxtImageSelector
ÉÉ 
.
ÉÉ 
Items
ÉÉ "
.
ÉÉ" #
Add
ÉÉ# &
(
ÉÉ& '
$str
ÉÉ' 0
)
ÉÉ0 1
;
ÉÉ1 2
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
ÑÑ' 4
)
ÑÑ4 5
;
ÑÑ5 6
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
ÖÖ' /
)
ÖÖ/ 0
;
ÖÖ0 1
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
ÜÜ' 0
)
ÜÜ0 1
;
ÜÜ1 2
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
àà' 3
)
àà3 4
;
àà4 5
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
ââ' 2
)
ââ2 3
;
ââ3 4
}
ää 	
private
åå 
void
åå "
ImagenInitialization
åå )
(
åå) *
)
åå* +
{
çç 	
try
éé 
{
èè 
int
êê 
idPlayer
êê 
=
êê 
UserSingleton
êê ,
.
êê, -
GetMainUser
êê- 8
(
êê8 9
)
êê9 :
.
êê: ;
IdPlayer
êê; C
;
êêC D*
ConsultUserInformationClient
ëë ,%
consultInformationProxy
ëë- D
=
ëëE F
new
ëëG J*
ConsultUserInformationClient
ëëK g
(
ëëg h
)
ëëh i
;
ëëi j
var
ìì 

playerInfo
ìì 
=
ìì  %
consultInformationProxy
ìì! 8
.
ìì8 9
ConsultPlayerById
ìì9 J
(
ììJ K
idPlayer
ììK S
)
ììS T
;
ììT U%
consultInformationProxy
îî '
.
îî' (
Close
îî( -
(
îî- .
)
îî. /
;
îî/ 0
if
ññ 
(
ññ 

playerInfo
ññ 
.
ññ 
	CodeEvent
ññ (
==
ññ) +!
ExceptionDictionary
ññ, ?
.
ññ? @
SUCCESFULL_EVENT
ññ@ P
&&
ññQ S

playerInfo
ññT ^
.
ññ^ _
ObjectSaved
ññ_ j
!=
ññk m
null
ññn r
)
ññr s
{
óó 
int
òò 
imageId
òò 
=
òò  !

playerInfo
òò" ,
.
òò, -
ObjectSaved
òò- 8
.
òò8 9
IdActualAvatar
òò9 G
;
òòG H
string
ôô 
	imageName
ôô $
=
ôô% &
imageIdMappings
ôô' 6
.
ôô6 7
FirstOrDefault
ôô7 E
(
ôôE F
x
ôôF G
=>
ôôH J
x
ôôK L
.
ôôL M
Value
ôôM R
==
ôôS U
imageId
ôôV ]
)
ôô] ^
.
ôô^ _
Key
ôô_ b
;
ôôb c
if
öö 
(
öö 
!
öö 
string
öö 
.
öö  
IsNullOrEmpty
öö  -
(
öö- .
	imageName
öö. 7
)
öö7 8
)
öö8 9
{
õõ 
Bitmap
úú 
bmp
úú "
=
úú# $
(
úú% &
Bitmap
úú& ,
)
úú, -

Properties
úú- 7
.
úú7 8
ResourcesImage
úú8 F
.
úúF G
ResourceManager
úúG V
.
úúV W
	GetObject
úúW `
(
úú` a
	imageName
úúa j
)
úúj k
;
úúk l
BitmapSource
ûû $
bmpImage
ûû% -
=
ûû. /
Imaging
ûû0 7
.
ûû7 8+
CreateBitmapSourceFromHBitmap
ûû8 U
(
ûûU V
bmp
üü 
.
üü  

GetHbitmap
üü  *
(
üü* +
)
üü+ ,
,
üü, -
IntPtr
†† "
.
††" #
Zero
††# '
,
††' (
	Int32Rect
°° %
.
°°% &
Empty
°°& +
,
°°+ ,
BitmapSizeOptions
¢¢ -
.
¢¢- .
FromEmptyOptions
¢¢. >
(
¢¢> ?
)
¢¢? @
)
££ 
;
££ 
imageProfile
•• $
.
••$ %
Source
••% +
=
••, -
bmpImage
••. 6
;
••6 7
}
¶¶ 
}
ßß 
}
®® 
catch
©© 
(
©© '
EndpointNotFoundException
©© ,
ex
©©- /
)
©©/ 0
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
lblEndPointNotFound
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
≠≠ 1
#CommunicationObjectFaultedException
≠≠ 6
ex
≠≠7 9
)
≠≠9 :
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
ØØ8 9&
lblComunicationException
ØØ9 Q
)
ØØQ R
;
ØØR S
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
≤≤ 
HandleException
≥≥ 
(
≥≥  
ex
≥≥  "
,
≥≥" #

Properties
≥≥$ .
.
≥≥. /
	Resources
≥≥/ 8
.
≥≥8 9
lblTimeException
≥≥9 I
)
≥≥I J
;
≥≥J K
}
¥¥ 
catch
µµ 
(
µµ $
CommunicationException
µµ )
ex
µµ* ,
)
µµ, -
{
∂∂ 
HandleException
∑∑ 
(
∑∑  
ex
∑∑  "
,
∑∑" #

Properties
∑∑$ .
.
∑∑. /
	Resources
∑∑/ 8
.
∑∑8 9!
lblWithoutConection
∑∑9 L
)
∑∑L M
;
∑∑M N
}
∏∏ 
catch
ππ 
(
ππ 
SocketException
ππ "
ex
ππ# %
)
ππ% &
{
∫∫ 
HandleException
ªª 
(
ªª  
ex
ªª  "
,
ªª" #

Properties
ªª$ .
.
ªª. /
	Resources
ªª/ 8
.
ªª8 9"
lblWrongUpdateAvatar
ªª9 M
)
ªªM N
;
ªªN O
}
ºº 
}
ΩΩ 	
private
ææ 
void
ææ %
InitializeImageMappings
ææ ,
(
ææ, -
)
ææ- .
{
øø 	
imageIdMappings
¿¿ 
=
¿¿ 
new
¿¿ !

Dictionary
¿¿" ,
<
¿¿, -
string
¿¿- 3
,
¿¿3 4
int
¿¿5 8
>
¿¿8 9
{
¡¡ 
{
¬¬ 
$str
¬¬ 
,
¬¬ 
$num
¬¬ 
}
¬¬  
,
¬¬  !
{
√√ 
$str
√√ 
,
√√  
$num
√√! "
}
√√# $
,
√√$ %
{
ƒƒ 
$str
ƒƒ 
,
ƒƒ 
$num
ƒƒ 
}
ƒƒ 
,
ƒƒ  
{
≈≈ 
$str
≈≈ 
,
≈≈ 
$num
≈≈ 
}
≈≈ 
,
≈≈ 
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
«« 
,
«« 
$num
«« 
}
««  !
,
««! "
{
»» 
$str
»» 
,
»» 
$num
»» 
}
»»  
}
…… 
;
…… 
}
   	
private
ÃÃ 
void
ÃÃ !
ClickViewAvatarList
ÃÃ (
(
ÃÃ( )
object
ÃÃ) /
sender
ÃÃ0 6
,
ÃÃ6 7"
MouseButtonEventArgs
ÃÃ8 L
e
ÃÃM N
)
ÃÃN O
{
ÕÕ 	
brdAvatarList
ŒŒ 
.
ŒŒ 

Visibility
ŒŒ $
=
ŒŒ% &

Visibility
ŒŒ' 1
.
ŒŒ1 2
Visible
ŒŒ2 9
;
ŒŒ9 : 
imgViewAvartarList
œœ 
.
œœ 

Visibility
œœ )
=
œœ* +

Visibility
œœ, 6
.
œœ6 7
Hidden
œœ7 =
;
œœ= >
}
–– 	
private
““ 
void
““ "
ClickCloseAvatarList
““ )
(
““) *
object
““* 0
sender
““1 7
,
““7 8"
MouseButtonEventArgs
““9 M
e
““N O
)
““O P
{
”” 	
brdAvatarList
‘‘ 
.
‘‘ 

Visibility
‘‘ $
=
‘‘% &

Visibility
‘‘' 1
.
‘‘1 2
Hidden
‘‘2 8
;
‘‘8 9 
imgViewAvartarList
’’ 
.
’’ 

Visibility
’’ )
=
’’* +

Visibility
’’, 6
.
’’6 7
Visible
’’7 >
;
’’> ?
}
÷÷ 	
private
ÿÿ 
void
ÿÿ 
ClickSaveNewEmail
ÿÿ &
(
ÿÿ& '
object
ÿÿ' -
sender
ÿÿ. 4
,
ÿÿ4 5"
MouseButtonEventArgs
ÿÿ6 J
e
ÿÿK L
)
ÿÿL M
{
ŸŸ 	
try
⁄⁄ 
{
€€ 
UserManagerClient
‹‹ !
useManagerProxy
‹‹" 1
=
‹‹2 3
new
‹‹4 7
UserManagerClient
‹‹8 I
(
‹‹I J
)
‹‹J K
;
‹‹K L
int
›› 
idUser
›› 
=
›› 
UserSingleton
›› *
.
››* +
GetMainUser
››+ 6
(
››6 7
)
››7 8
.
››8 9
IdUser
››9 ?
;
››? @
string
ﬁﬁ 
email
ﬁﬁ 
=
ﬁﬁ 
txbEditEmail
ﬁﬁ +
.
ﬁﬁ+ ,
Text
ﬁﬁ, 0
.
ﬁﬁ0 1
Trim
ﬁﬁ1 5
(
ﬁﬁ5 6
)
ﬁﬁ6 7
;
ﬁﬁ7 8
if
‡‡ 
(
‡‡ 
string
‡‡ 
.
‡‡ 
IsNullOrEmpty
‡‡ (
(
‡‡( )
email
‡‡) .
)
‡‡. /
)
‡‡/ 0
{
·· 
LblWrongEmail
‚‚ !
.
‚‚! "
Content
‚‚" )
=
‚‚* +

Properties
‚‚, 6
.
‚‚6 7
	Resources
‚‚7 @
.
‚‚@ A
lblWrongEmail
‚‚A N
;
‚‚N O
LblWrongEmail
„„ !
.
„„! "

Visibility
„„" ,
=
„„- .

Visibility
„„/ 9
.
„„9 :
Visible
„„: A
;
„„A B
return
‰‰ 
;
‰‰ 
}
ÂÂ 
if
ÊÊ 
(
ÊÊ 
!
ÊÊ 
IsValidEmail
ÊÊ !
(
ÊÊ! "
email
ÊÊ" '
)
ÊÊ' (
)
ÊÊ( )
{
ÁÁ 
LblWrongEmail
ËË !
.
ËË! "
Content
ËË" )
=
ËË* +

Properties
ËË, 6
.
ËË6 7
	Resources
ËË7 @
.
ËË@ A
lblWrongFormat
ËËA O
;
ËËO P
LblWrongEmail
ÈÈ !
.
ÈÈ! "

Visibility
ÈÈ" ,
=
ÈÈ- .

Visibility
ÈÈ/ 9
.
ÈÈ9 :
Visible
ÈÈ: A
;
ÈÈA B
return
ÍÍ 
;
ÍÍ 
}
ÎÎ 
if
ÏÏ 
(
ÏÏ !
CheckEmailExistence
ÏÏ '
(
ÏÏ' (
email
ÏÏ( -
)
ÏÏ- .
==
ÏÏ/ 1
DISALLOWED_VALUES
ÏÏ2 C
)
ÏÏC D
{
ÌÌ 
LblWrongEmail
ÓÓ !
.
ÓÓ! "
Content
ÓÓ" )
=
ÓÓ* +

Properties
ÓÓ, 6
.
ÓÓ6 7
	Resources
ÓÓ7 @
.
ÓÓ@ A
lblEmailExistInBD
ÓÓA R
;
ÓÓR S
LblWrongEmail
ÔÔ !
.
ÔÔ! "

Visibility
ÔÔ" ,
=
ÔÔ- .

Visibility
ÔÔ/ 9
.
ÔÔ9 :
Visible
ÔÔ: A
;
ÔÔA B
return
 
;
 
}
ÒÒ 
LblWrongEmail
ÛÛ 
.
ÛÛ 

Visibility
ÛÛ (
=
ÛÛ) *

Visibility
ÛÛ+ 5
.
ÛÛ5 6
	Collapsed
ÛÛ6 ?
;
ÛÛ? @
if
ıı 
(
ıı %
CheckEmailAddressFormat
ıı +
(
ıı+ ,
)
ıı, -
==
ıı. 0
ALLOWED_VALUES
ıı1 ?
&&
ıı@ B!
CheckEmailExistence
ˆˆ '
(
ˆˆ' (
email
ˆˆ( -
)
ˆˆ- .
==
ˆˆ/ 1
ALLOWED_VALUES
ˆˆ2 @
)
ˆˆ@ A
{
˜˜ 
var
¯¯ 
result
¯¯ 
=
¯¯  
useManagerProxy
¯¯! 0
.
¯¯0 1
UpdateEmailUser
¯¯1 @
(
¯¯@ A
idUser
¯¯A G
,
¯¯G H
email
¯¯I N
)
¯¯N O
;
¯¯O P
if
˘˘ 
(
˘˘ 
result
˘˘ 
!=
˘˘ !
null
˘˘" &
)
˘˘& '
{
˙˙ 
UserSingleton
˚˚ %
.
˚˚% &
GetMainUser
˚˚& 1
(
˚˚1 2
)
˚˚2 3
.
˚˚3 4
UpdateEmailData
˚˚4 C
(
˚˚C D
email
˚˚D I
)
˚˚I J
;
˚˚J K!
DialogWindowManager
¸¸ +
.
¸¸+ ,#
ShowInfoOrErrorWindow
¸¸, A
(
¸¸A B

Properties
¸¸B L
.
¸¸L M
	Resources
¸¸M V
.
¸¸V W!
txbInformationTitle
¸¸W j
,
¸¸j k

Properties
¸¸l v
.
¸¸v w
	Resources¸¸w Ä
.¸¸Ä Å
lblUpdateEmail¸¸Å è
,¸¸è ê
Application¸¸ë ú
.¸¸ú ù
Current¸¸ù §
.¸¸§ •

MainWindow¸¸• Ø
,¸¸Ø ∞#
DialogWindowManager¸¸± ƒ
.¸¸ƒ ≈
INFORMATION¸¸≈ –
)¸¸– —
;¸¸— “
MainMenu
˝˝  
mainMenuPage
˝˝! -
=
˝˝. /
new
˝˝0 3
MainMenu
˝˝4 <
(
˝˝< =
)
˝˝= >
;
˝˝> ?
this
˛˛ 
.
˛˛ 
NavigationService
˛˛ .
.
˛˛. /
Navigate
˛˛/ 7
(
˛˛7 8
mainMenuPage
˛˛8 D
)
˛˛D E
;
˛˛E F
NavigationService
ˇˇ )
.
ˇˇ) *
RemoveBackEntry
ˇˇ* 9
(
ˇˇ9 :
)
ˇˇ: ;
;
ˇˇ; <
}
ÄÄ 
else
ÅÅ 
{
ÇÇ 
RefreshWindow
ÉÉ %
(
ÉÉ% &
)
ÉÉ& '
;
ÉÉ' (!
DialogWindowManager
ÑÑ +
.
ÑÑ+ ,#
ShowInfoOrErrorWindow
ÑÑ, A
(
ÑÑA B

Properties
ÑÑB L
.
ÑÑL M
	Resources
ÑÑM V
.
ÑÑV W
txbErrorTitle
ÑÑW d
,
ÑÑd e

Properties
ÑÑf p
.
ÑÑp q
	Resources
ÑÑq z
.
ÑÑz {"
lblWrongUpdateEmailÑÑ{ é
,ÑÑé è
ApplicationÑÑê õ
.ÑÑõ ú
CurrentÑÑú £
.ÑÑ£ §

MainWindowÑÑ§ Æ
,ÑÑÆ Ø#
DialogWindowManagerÑÑ∞ √
.ÑÑ√ ƒ
ERRORÑÑƒ …
)ÑÑ…  
;ÑÑ  À
}
ÖÖ 
useManagerProxy
ÜÜ #
.
ÜÜ# $
Close
ÜÜ$ )
(
ÜÜ) *
)
ÜÜ* +
;
ÜÜ+ ,
}
áá 
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
ää 
HandleException
ãã 
(
ãã  
ex
ãã  "
,
ãã" #

Properties
ãã$ .
.
ãã. /
	Resources
ãã/ 8
.
ãã8 9!
lblWrongUpdateEmail
ãã9 L
+
ããM N
$str
ããO T
+
ããU V

Properties
ããW a
.
ããa b
	Resources
ããb k
.
ããk l!
lblEndPointNotFound
ããl 
)ãã Ä
;ããÄ Å
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
éé 
HandleException
èè 
(
èè  
ex
èè  "
,
èè" #

Properties
èè$ .
.
èè. /
	Resources
èè/ 8
.
èè8 9!
lblWrongUpdateEmail
èè9 L
+
èèM N
$str
èèO T
+
èèU V

Properties
èèW a
.
èèa b
	Resources
èèb k
.
èèk l'
lblComunicationExceptionèèl Ñ
)èèÑ Ö
;èèÖ Ü
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
íí 
HandleException
ìì 
(
ìì  
ex
ìì  "
,
ìì" #

Properties
ìì$ .
.
ìì. /
	Resources
ìì/ 8
.
ìì8 9!
lblWrongUpdateEmail
ìì9 L
+
ììM N
$str
ììO T
+
ììU V

Properties
ììW a
.
ììa b
	Resources
ììb k
.
ììk l
lblTimeException
ììl |
)
ìì| }
;
ìì} ~
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
ññ 
HandleException
óó 
(
óó  
ex
óó  "
,
óó" #

Properties
óó$ .
.
óó. /
	Resources
óó/ 8
.
óó8 9!
lblWrongUpdateEmail
óó9 L
+
óóM N
$str
óóO T
+
óóU V

Properties
óóW a
.
óóa b
	Resources
óób k
.
óók l!
lblWithoutConection
óól 
)óó Ä
;óóÄ Å
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
lblWrongUpdateAvatar
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
lblWithoutConectionõõm Ä
)õõÄ Å
;õõÅ Ç
}
úú 
}
ùù 	
private
ûû 
void
ûû 
ClickSaveNewName
ûû %
(
ûû% &
object
ûû& ,
sender
ûû- 3
,
ûû3 4"
MouseButtonEventArgs
ûû5 I
e
ûûJ K
)
ûûK L
{
üü 	
try
†† 
{
°° 
UserManagerClient
¢¢ !
useManagerProxy
¢¢" 1
=
¢¢2 3
new
¢¢4 7
UserManagerClient
¢¢8 I
(
¢¢I J
)
¢¢J K
;
¢¢K L
String
££ 

nameEdited
££ !
=
££" #
txbEditName
££$ /
.
££/ 0
Text
££0 4
;
££4 5
int
§§ 
idUser
§§ 
=
§§ 
UserSingleton
§§ *
.
§§* +
GetMainUser
§§+ 6
(
§§6 7
)
§§7 8
.
§§8 9
IdUser
§§9 ?
;
§§? @
if
•• 
(
•• 
string
•• 
.
•• 
IsNullOrEmpty
•• (
(
••( )

nameEdited
••) 3
)
••3 4
)
••4 5
{
¶¶ 
LblWrongName
ßß  
.
ßß  !
Content
ßß! (
=
ßß) *

Properties
ßß+ 5
.
ßß5 6
	Resources
ßß6 ?
.
ßß? @
lblWrongName
ßß@ L
;
ßßL M
LblWrongName
®®  
.
®®  !

Visibility
®®! +
=
®®, -

Visibility
®®. 8
.
®®8 9
Visible
®®9 @
;
®®@ A
return
©© 
;
©© 
}
™™ 
LblWrongName
´´ 
.
´´ 

Visibility
´´ '
=
´´( )

Visibility
´´* 4
.
´´4 5
	Collapsed
´´5 >
;
´´> ?
var
≠≠ 
result
≠≠ 
=
≠≠ 
useManagerProxy
≠≠ ,
.
≠≠, -#
UpdateUserInformation
≠≠- B
(
≠≠B C
idUser
≠≠C I
,
≠≠I J

nameEdited
≠≠K U
)
≠≠U V
;
≠≠V W
if
ÆÆ 
(
ÆÆ 
result
ÆÆ 
!=
ÆÆ 
null
ÆÆ "
)
ÆÆ" #
{
ØØ 
UserSingleton
∞∞ !
.
∞∞! "
GetMainUser
∞∞" -
(
∞∞- .
)
∞∞. /
.
∞∞/ 0
UpdateNameData
∞∞0 >
(
∞∞> ?

nameEdited
∞∞? I
)
∞∞I J
;
∞∞J K!
DialogWindowManager
±± '
.
±±' (#
ShowInfoOrErrorWindow
±±( =
(
±±= >

Properties
±±> H
.
±±H I
	Resources
±±I R
.
±±R S!
txbInformationTitle
±±S f
,
±±f g

Properties
±±h r
.
±±r s
	Resources
±±s |
.
±±| }
lblUpdateName±±} ä
,±±ä ã
Application±±å ó
.±±ó ò
Current±±ò ü
.±±ü †

MainWindow±±† ™
,±±™ ´#
DialogWindowManager±±¨ ø
.±±ø ¿
INFORMATION±±¿ À
)±±À Ã
;±±Ã Õ
MainMenu
≤≤ 
mainMenuPage
≤≤ )
=
≤≤* +
new
≤≤, /
MainMenu
≤≤0 8
(
≤≤8 9
)
≤≤9 :
;
≤≤: ;
this
≥≥ 
.
≥≥ 
NavigationService
≥≥ *
.
≥≥* +
Navigate
≥≥+ 3
(
≥≥3 4
mainMenuPage
≥≥4 @
)
≥≥@ A
;
≥≥A B
NavigationService
¥¥ %
.
¥¥% &
RemoveBackEntry
¥¥& 5
(
¥¥5 6
)
¥¥6 7
;
¥¥7 8
}
µµ 
else
∂∂ 
{
∑∑ !
DialogWindowManager
∏∏ '
.
∏∏' (#
ShowInfoOrErrorWindow
∏∏( =
(
∏∏= >

Properties
∏∏> H
.
∏∏H I
	Resources
∏∏I R
.
∏∏R S
txbErrorTitle
∏∏S `
,
∏∏` a

Properties
∏∏b l
.
∏∏l m
	Resources
∏∏m v
.
∏∏v w!
lblWrongUpdateName∏∏w â
,∏∏â ä
Application∏∏ã ñ
.∏∏ñ ó
Current∏∏ó û
.∏∏û ü

MainWindow∏∏ü ©
,∏∏© ™#
DialogWindowManager∏∏´ æ
.∏∏æ ø
ERROR∏∏ø ƒ
)∏∏ƒ ≈
;∏∏≈ ∆
}
ππ 
useManagerProxy
∫∫ 
.
∫∫  
Close
∫∫  %
(
∫∫% &
)
∫∫& '
;
∫∫' (
}
ªª 
catch
ºº 
(
ºº '
EndpointNotFoundException
ºº ,
ex
ºº- /
)
ºº/ 0
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
lblWrongUpdateName
ææ9 K
+
ææL M
$str
ææN S
+
ææT U

Properties
ææV `
.
ææ` a
	Resources
ææa j
.
ææj k!
lblEndPointNotFound
ææk ~
)
ææ~ 
;ææ Ä
}
øø 
catch
¿¿ 
(
¿¿ 1
#CommunicationObjectFaultedException
¿¿ 6
ex
¿¿7 9
)
¿¿9 :
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
¬¬8 9 
lblWrongUpdateName
¬¬9 K
+
¬¬L M
$str
¬¬N S
+
¬¬T U

Properties
¬¬V `
.
¬¬` a
	Resources
¬¬a j
.
¬¬j k'
lblComunicationException¬¬k É
)¬¬É Ñ
;¬¬Ñ Ö
}
√√ 
catch
ƒƒ 
(
ƒƒ 
TimeoutException
ƒƒ #
ex
ƒƒ$ &
)
ƒƒ& '
{
≈≈ 
HandleException
∆∆ 
(
∆∆  
ex
∆∆  "
,
∆∆" #

Properties
∆∆$ .
.
∆∆. /
	Resources
∆∆/ 8
.
∆∆8 9 
lblWrongUpdateName
∆∆9 K
+
∆∆L M
$str
∆∆N S
+
∆∆T U

Properties
∆∆V `
.
∆∆` a
	Resources
∆∆a j
.
∆∆j k
lblTimeException
∆∆k {
)
∆∆{ |
;
∆∆| }
}
«« 
catch
»» 
(
»» $
CommunicationException
»» )
ex
»»* ,
)
»», -
{
…… 
HandleException
   
(
    
ex
    "
,
  " #

Properties
  $ .
.
  . /
	Resources
  / 8
.
  8 9 
lblWrongUpdateName
  9 K
+
  L M
$str
  N S
+
  T U

Properties
  V `
.
  ` a
	Resources
  a j
.
  j k!
lblWithoutConection
  k ~
)
  ~ 
;   Ä
}
ÀÀ 
catch
ÃÃ 
(
ÃÃ 
SocketException
ÃÃ "
ex
ÃÃ# %
)
ÃÃ% &
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
ŒŒ8 9"
lblWrongUpdateAvatar
ŒŒ9 M
+
ŒŒN O
$str
ŒŒP U
+
ŒŒV W

Properties
ŒŒX b
.
ŒŒb c
	Resources
ŒŒc l
.
ŒŒl m"
lblWithoutConectionŒŒm Ä
)ŒŒÄ Å
;ŒŒÅ Ç
}
œœ 
}
–– 	
private
—— 
int
—— %
CheckEmailAddressFormat
—— +
(
——+ ,
)
——, -
{
““ 	
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
=
÷÷' (
regexInstance
÷÷) 6
.
÷÷6 7!
GetEMAIL_RULES_CHAR
÷÷7 J
(
÷÷J K
)
÷÷K L
;
÷÷L M
int
◊◊ 
answer
◊◊ 
;
◊◊ 
String
ÿÿ 
email
ÿÿ 
=
ÿÿ 
txbEditEmail
ÿÿ +
.
ÿÿ+ ,
Text
ÿÿ, 0
.
ÿÿ0 1
Trim
ÿÿ1 5
(
ÿÿ5 6
)
ÿÿ6 7
;
ÿÿ7 8
if
ŸŸ 
(
ŸŸ 
!
ŸŸ 
Regex
ŸŸ 
.
ŸŸ 
IsMatch
ŸŸ "
(
ŸŸ" #
email
ŸŸ# (
,
ŸŸ( )
regexExpression
ŸŸ* 9
,
ŸŸ9 :
RegexOptions
ŸŸ; G
.
ŸŸG H

IgnoreCase
ŸŸH R
,
ŸŸR S
TimeSpan
ŸŸT \
.
ŸŸ\ ]
FromMilliseconds
ŸŸ] m
(
ŸŸm n
$num
ŸŸn q
)
ŸŸq r
)
ŸŸr s
)
ŸŸs t
{
⁄⁄ 
lblEmailWarning
€€ #
.
€€# $
Content
€€$ +
=
€€, -

Properties
€€. 8
.
€€8 9
	Resources
€€9 B
.
€€B C
lblInvalidEmail
€€C R
;
€€R S
lblEmailWarning
‹‹ #
.
‹‹# $

Visibility
‹‹$ .
=
‹‹/ 0

Visibility
‹‹1 ;
.
‹‹; <
Visible
‹‹< C
;
‹‹C D
answer
›› 
=
›› 
DISALLOWED_VALUES
›› .
;
››. /
}
ﬁﬁ 
else
ﬂﬂ 
{
‡‡ 
lblEmailWarning
·· #
.
··# $
Content
··$ +
=
··, -
string
··. 4
.
··4 5
Empty
··5 :
;
··: ;
lblEmailWarning
‚‚ #
.
‚‚# $

Visibility
‚‚$ .
=
‚‚/ 0

Visibility
‚‚1 ;
.
‚‚; <
	Collapsed
‚‚< E
;
‚‚E F
answer
„„ 
=
„„ 
ALLOWED_VALUES
„„ +
;
„„+ ,
}
‰‰ 
return
ÂÂ 
answer
ÂÂ 
;
ÂÂ 
}
ÊÊ 
catch
ÁÁ 
(
ÁÁ (
RegexMatchTimeoutException
ÁÁ -
ex
ÁÁ. 0
)
ÁÁ0 1
{
ËË %
ExceptionHandlerForLogs
ÈÈ '
.
ÈÈ' (
LogException
ÈÈ( 4
(
ÈÈ4 5
ex
ÈÈ5 7
,
ÈÈ7 8!
ExceptionDictionary
ÈÈ9 L
.
ÈÈL M
ERROR
ÈÈM R
)
ÈÈR S
;
ÈÈS T
return
ÍÍ 
DISALLOWED_VALUES
ÍÍ (
;
ÍÍ( )
}
ÎÎ 
}
ÌÌ 	
private
ÔÔ 
int
ÔÔ !
CheckEmailExistence
ÔÔ '
(
ÔÔ' (
string
ÔÔ( .
email
ÔÔ/ 4
)
ÔÔ4 5
{
 	
try
ÒÒ 
{
ÚÚ )
ValidateUserExistanceClient
ÛÛ +
dataCheckerProxy
ÛÛ, <
=
ÛÛ= >
new
ÛÛ? B
(
ÛÛB C
)
ÛÛC D
;
ÛÛD E
GenericClassOfint
ÙÙ !
	userIsNew
ÙÙ" +
=
ÙÙ, -
dataCheckerProxy
ÙÙ. >
.
ÙÙ> ?
EmailAlreadyExist
ÙÙ? P
(
ÙÙP Q
email
ÙÙQ V
)
ÙÙV W
;
ÙÙW X
dataCheckerProxy
ıı  
.
ıı  !
Close
ıı! &
(
ıı& '
)
ıı' (
;
ıı( )
if
ˆˆ 
(
ˆˆ 
	userIsNew
ˆˆ 
.
ˆˆ 
	CodeEvent
ˆˆ '
==
ˆˆ( *!
ExceptionDictionary
ˆˆ+ >
.
ˆˆ> ?
SUCCESFULL_EVENT
ˆˆ? O
||
ˆˆP R
	userIsNew
ˆˆS \
.
ˆˆ\ ]
	CodeEvent
ˆˆ] f
==
ˆˆg i!
ExceptionDictionary
ˆˆj }
.
ˆˆ} ~!
UNSUCCESFULL_EVENTˆˆ~ ê
||ˆˆë ì
	userIsNewˆˆî ù
.ˆˆù û
ObjectSavedˆˆû ©
==ˆˆ™ ¨
ALLOWED_VALUESˆˆ≠ ª
)ˆˆª º
{
˜˜ 
return
¯¯ 
ALLOWED_VALUES
¯¯ )
;
¯¯) *
}
˘˘ 
else
˙˙ 
{
˚˚ 
if
¸¸ 
(
¸¸ 
	userIsNew
¸¸ !
.
¸¸! "
ObjectSaved
¸¸" -
==
¸¸. 0!
ExceptionDictionary
¸¸1 D
.
¸¸D E!
EMAIL_ALREADY_EXIST
¸¸E X
)
¸¸X Y
{
˝˝ !
DialogWindowManager
˛˛ +
.
˛˛+ ,#
ShowInfoOrErrorWindow
˛˛, A
(
˛˛A B

Properties
˛˛B L
.
˛˛L M
	Resources
˛˛M V
.
˛˛V W
txbErrorTitle
˛˛W d
,
˛˛d e

Properties
˛˛f p
.
˛˛p q
	Resources
˛˛q z
.
˛˛z {
lblRepeatedEmail˛˛{ ã
,˛˛ã å
Application˛˛ç ò
.˛˛ò ô
Current˛˛ô †
.˛˛† °

MainWindow˛˛° ´
,˛˛´ ¨#
DialogWindowManager˛˛≠ ¿
.˛˛¿ ¡
ERROR˛˛¡ ∆
)˛˛∆ «
;˛˛« »
}
ˇˇ 
else
ÄÄ 
if
ÄÄ 
(
ÄÄ 
	userIsNew
ÄÄ &
.
ÄÄ& '
ObjectSaved
ÄÄ' 2
==
ÄÄ3 5!
ExceptionDictionary
ÄÄ6 I
.
ÄÄI J$
USERNAME_ALREADY_EXIST
ÄÄJ `
)
ÄÄ` a
{
ÅÅ !
DialogWindowManager
ÇÇ +
.
ÇÇ+ ,#
ShowInfoOrErrorWindow
ÇÇ, A
(
ÇÇA B

Properties
ÇÇB L
.
ÇÇL M
	Resources
ÇÇM V
.
ÇÇV W
txbErrorTitle
ÇÇW d
,
ÇÇd e

Properties
ÇÇf p
.
ÇÇp q
	Resources
ÇÇq z
.
ÇÇz {"
lblRepeatedUserNameÇÇ{ é
,ÇÇé è
ApplicationÇÇê õ
.ÇÇõ ú
CurrentÇÇú £
.ÇÇ£ §

MainWindowÇÇ§ Æ
,ÇÇÆ Ø#
DialogWindowManagerÇÇ∞ √
.ÇÇ√ ƒ
ERRORÇÇƒ …
)ÇÇ…  
;ÇÇ  À
}
ÉÉ 
else
ÑÑ 
{
ÖÖ !
DialogWindowManager
ÜÜ +
.
ÜÜ+ ,#
ShowInfoOrErrorWindow
ÜÜ, A
(
ÜÜA B

Properties
ÜÜB L
.
ÜÜL M
	Resources
ÜÜM V
.
ÜÜV W
txbErrorTitle
ÜÜW d
,
ÜÜd e

Properties
ÜÜf p
.
ÜÜp q
	Resources
ÜÜq z
.
ÜÜz {#
lblWrongEmailRepitedÜÜ{ è
,ÜÜè ê
ApplicationÜÜë ú
.ÜÜú ù
CurrentÜÜù §
.ÜÜ§ •

MainWindowÜÜ• Ø
,ÜÜØ ∞#
DialogWindowManagerÜÜ± ƒ
.ÜÜƒ ≈
ERRORÜÜ≈  
)ÜÜ  À
;ÜÜÀ Ã
CloseWindow
áá #
(
áá# $
)
áá$ %
;
áá% &
}
àà 
return
ââ 
DISALLOWED_VALUES
ââ ,
;
ââ, -
}
ää 
}
ãã 
catch
åå 
(
åå '
EndpointNotFoundException
åå ,
)
åå, -
{
çç 
throw
éé 
new
éé '
EndpointNotFoundException
éé 3
(
éé3 4
)
éé4 5
;
éé5 6
}
èè 
catch
êê 
(
êê 1
#CommunicationObjectFaultedException
êê 6
)
êê6 7
{
ëë 
throw
íí 
new
íí $
CommunicationException
íí 0
(
íí0 1
)
íí1 2
;
íí2 3
}
ìì 
catch
îî 
(
îî 
TimeoutException
îî #
)
îî# $
{
ïï 
throw
ññ 
new
ññ 
TimeoutException
ññ *
(
ññ* +
)
ññ+ ,
;
ññ, -
}
óó 
catch
òò 
(
òò $
CommunicationException
òò )
)
òò) *
{
ôô 
throw
öö 
new
öö $
CommunicationException
öö 0
(
öö0 1
)
öö1 2
;
öö2 3
}
õõ 
catch
úú 
(
úú 
SocketException
úú "
)
úú" #
{
ùù 
throw
ûû 
new
ûû 
SocketException
ûû )
(
ûû) *
)
ûû* +
;
ûû+ ,
}
üü 
}
†† 	
private
¢¢ 
void
¢¢ "
ClickBackToMaminMenu
¢¢ )
(
¢¢) *
object
¢¢* 0
sender
¢¢1 7
,
¢¢7 8"
MouseButtonEventArgs
¢¢9 M
e
¢¢N O
)
¢¢O P
{
££ 	
CloseWindow
§§ 
(
§§ 
)
§§ 
;
§§ 
}
•• 	
private
¶¶ 
void
¶¶ 
CloseWindow
¶¶  
(
¶¶  !
)
¶¶! "
{
ßß 	
MainMenu
®® 
mainMenuPage
®® !
=
®®" #
new
®®$ '
MainMenu
®®( 0
(
®®0 1
)
®®1 2
;
®®2 3
this
©© 
.
©© 
NavigationService
©© "
.
©©" #
Navigate
©©# +
(
©©+ ,
mainMenuPage
©©, 8
)
©©8 9
;
©©9 :
NavigationService
™™ 
.
™™ 
RemoveBackEntry
™™ -
(
™™- .
)
™™. /
;
™™/ 0
}
´´ 	
private
≠≠ 
void
≠≠ 
RefreshWindow
≠≠ "
(
≠≠" #
)
≠≠# $
{
ÆÆ 	
EditUserProfile
ØØ !
editUserProfilePage
ØØ /
=
ØØ0 1
new
ØØ2 5
EditUserProfile
ØØ6 E
(
ØØE F
)
ØØF G
;
ØØG H
this
∞∞ 
.
∞∞ 
NavigationService
∞∞ "
.
∞∞" #
Navigate
∞∞# +
(
∞∞+ ,!
editUserProfilePage
∞∞, ?
)
∞∞? @
;
∞∞@ A
NavigationService
±± 
.
±± 
RemoveBackEntry
±± -
(
±±- .
)
±±. /
;
±±/ 0
}
≤≤ 	
private
¥¥ 
void
¥¥ 
HandleException
¥¥ $
(
¥¥$ %
	Exception
¥¥% .
ex
¥¥/ 1
,
¥¥1 2
string
¥¥3 9
errorMessage
¥¥: F
)
¥¥F G
{
µµ 	%
ExceptionHandlerForLogs
∂∂ #
.
∂∂# $
LogException
∂∂$ 0
(
∂∂0 1
ex
∂∂1 3
,
∂∂3 4!
ExceptionDictionary
∂∂5 H
.
∂∂H I
FATAL_EXCEPTION
∂∂I X
)
∂∂X Y
;
∂∂Y Z!
DialogWindowManager
∑∑ 
.
∑∑  #
ShowInfoOrErrorWindow
∑∑  5
(
∑∑5 6

Properties
∑∑6 @
.
∑∑@ A
	Resources
∑∑A J
.
∑∑J K
txbErrorTitle
∑∑K X
,
∑∑X Y
errorMessage
∑∑Z f
,
∑∑f g
Application
∑∑h s
.
∑∑s t
Current
∑∑t {
.
∑∑{ |

MainWindow∑∑| Ü
,∑∑Ü á#
DialogWindowManager∑∑à õ
.∑∑õ ú
ERROR∑∑ú °
)∑∑° ¢
;∑∑¢ £
CloseWindow
∏∏ 
(
∏∏ 
)
∏∏ 
;
∏∏ 
}
ππ 	
private
∫∫ 
bool
∫∫ 
IsValidEmail
∫∫ !
(
∫∫! "
string
∫∫" (
email
∫∫) .
)
∫∫. /
{
ªª 	
try
ºº 
{
ΩΩ '
RegularExpressionsLibrary
ææ )
regexInstance
ææ* 7
=
ææ8 9
new
ææ: ='
RegularExpressionsLibrary
ææ> W
(
ææW X
)
ææX Y
;
ææY Z
string
øø 
regexExpression
øø &
=
øø' (
regexInstance
øø) 6
.
øø6 7!
GetEMAIL_RULES_CHAR
øø7 J
(
øøJ K
)
øøK L
;
øøL M
return
¿¿ 
Regex
¿¿ 
.
¿¿ 
IsMatch
¿¿ $
(
¿¿$ %
email
¿¿% *
,
¿¿* +
regexExpression
¿¿, ;
,
¿¿; <
RegexOptions
¿¿= I
.
¿¿I J

IgnoreCase
¿¿J T
,
¿¿T U
TimeSpan
¿¿V ^
.
¿¿^ _
FromMilliseconds
¿¿_ o
(
¿¿o p
$num
¿¿p s
)
¿¿s t
)
¿¿t u
;
¿¿u v
}
¡¡ 
catch
¬¬ 
(
¬¬ (
RegexMatchTimeoutException
¬¬ -
ex
¬¬. 0
)
¬¬0 1
{
√√ %
ExceptionHandlerForLogs
ƒƒ '
.
ƒƒ' (
LogException
ƒƒ( 4
(
ƒƒ4 5
ex
ƒƒ5 7
,
ƒƒ7 8!
ExceptionDictionary
ƒƒ9 L
.
ƒƒL M
ERROR
ƒƒM R
)
ƒƒR S
;
ƒƒS T
return
≈≈ 
false
≈≈ 
;
≈≈ 
}
∆∆ 
}
»» 	
}
…… 
}   ﬁΩ
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
;# $
UserSingleton   
userSingleton   #
=  $ %
UserSingleton  & 3
.  3 4
GetMainUser  4 ?
(  ? @
)  @ A
;  A B
private!! 
UserPojo!! 
userForGuest!! %
;!!% &
int"" 
idUser"" 
="" 
-"" 
$num"" 
;"" 
private## 
readonly## 
int## 
ROOMCODE_IS_FULL## -
=##. /
-##0 1
$num##1 2
;##2 3
private$$ 
readonly$$ 
int$$ 
	SUCCESFUL$$ &
=$$' (
$num$$) *
;$$* +
public&& 
enterGameWithCode&&  
(&&  !
Window&&! '
previousWindow&&( 6
,&&6 7
bool&&8 <
isGuest&&= D
)&&D E
{'' 	
InitializeComponent(( 
(((  
)((  !
;((! "
this)) 
.)) 
windowBehind)) 
=)) 
previousWindow))  .
;)). /
tbxCode** 
.** 
	MaxLength** 
=** 
$num**  "
;**" #
if++ 
(++ 
!++ 
isGuest++ 
)++ 
{,, 
idUser-- 
=-- 
userSingleton-- &
.--& '
IdUser--' -
;--- .
}.. 
}// 	
private11 
void11 #
ClickEnterLobbyWithCode11 ,
(11, -
object11- 3
sender114 :
,11: ;
RoutedEventArgs11< K
e11L M
)11M N
{22 	
int33 
enteredCode33 
;33 
if44 
(44 
int44 
.44 
TryParse44 
(44 
tbxCode44 $
.44$ %
Text44% )
,44) *
out44+ .
enteredCode44/ :
)44: ;
)44; <
{55 
try66 
{77 )
LobbyCodeAuthenticationClient88 1#
codeAuthenticationProxy882 I
=88J K
new88L O)
LobbyCodeAuthenticationClient88P m
(88m n
)88n o
;88o p
GenericClassOfint99 %
isRoomActive99& 2
=993 4#
codeAuthenticationProxy995 L
.99L M
VerifyRoomCodeExist99M `
(99` a
enteredCode99a l
,99l m
idUser99n t
)99t u
;99u v
if:: 
(:: 
isRoomActive:: $
.::$ %
	CodeEvent::% .
==::/ 1
ExceptionDictionary::2 E
.::E F
SUCCESFULL_EVENT::F V
||::W Y
isRoomActive::Z f
.::f g
	CodeEvent::g p
==::q s 
ExceptionDictionary	::t á
.
::á à 
UNSUCCESFULL_EVENT
::à ö
)
::ö õ
{;; 
if<< 
(<< 
isRoomActive<< '
.<<' (
ObjectSaved<<( 3
==<<4 6
	SUCCESFUL<<7 @
)<<@ A
{== 
if>> 
(>>  
AssurePlayer>>  ,
(>>, -
)>>- .
)>>. /
{?? 
GotoLobbyPage@@  -
(@@- .
enteredCode@@. 9
)@@9 :
;@@: ;
}AA 
}BB 
elseCC 
ifCC 
(CC  
isRoomActiveCC  ,
.CC, -
ObjectSavedCC- 8
==CC9 ;
ROOMCODE_IS_FULLCC< L
)CCL M
{DD 
DialogWindowManagerEE /
.EE/ 0!
ShowInfoOrErrorWindowEE0 E
(EEE F

PropertiesEEF P
.EEP Q
	ResourcesEEQ Z
.EEZ [
txbErrorTitleEE[ h
,EEh i

PropertiesEEj t
.EEt u
	ResourcesEEu ~
.EE~ 
LobbyIsFull	EE ä
,
EEä ã
Application
EEå ó
.
EEó ò
Current
EEò ü
.
EEü †

MainWindow
EE† ™
,
EE™ ´!
DialogWindowManager
EE¨ ø
.
EEø ¿
INFORMATION
EE¿ À
)
EEÀ Ã
;
EEÃ Õ
}FF 
elseGG 
{HH 
DialogWindowManagerII /
.II/ 0!
ShowInfoOrErrorWindowII0 E
(IIE F

PropertiesIIF P
.IIP Q
	ResourcesIIQ Z
.IIZ [
txbErrorTitleII[ h
,IIh i

PropertiesIIj t
.IIt u
	ResourcesIIu ~
.II~ 
LobbyNotExist	II å
,
IIå ç
Application
IIé ô
.
IIô ö
Current
IIö °
.
II° ¢

MainWindow
II¢ ¨
,
II¨ ≠!
DialogWindowManager
IIÆ ¡
.
II¡ ¬
INFORMATION
II¬ Õ
)
IIÕ Œ
;
IIŒ œ
}JJ 
}KK 
}LL 
catchMM 
(MM %
EndpointNotFoundExceptionMM 0
exMM1 3
)MM3 4
{NN 
HandleExceptionOO #
(OO# $
exOO$ &
,OO& '

PropertiesOO) 3
.OO3 4
	ResourcesOO4 =
.OO= >
lblEndPointNotFoundOO> Q
)OOQ R
;OOR S
WindowPP 
.PP 
	GetWindowPP $
(PP$ %
thisPP% )
)PP) *
.PP* +
ClosePP+ 0
(PP0 1
)PP1 2
;PP2 3
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
;TTV W
WindowUU 
.UU 
	GetWindowUU $
(UU$ %
thisUU% )
)UU) *
.UU* +
CloseUU+ 0
(UU0 1
)UU1 2
;UU2 3
}VV 
catchWW 
(WW 
TimeoutExceptionWW '
exWW( *
)WW* +
{XX 
HandleExceptionYY #
(YY# $
exYY$ &
,YY& '

PropertiesYY( 2
.YY2 3
	ResourcesYY3 <
.YY< =
lblTimeExceptionYY= M
)YYM N
;YYN O
WindowZZ 
.ZZ 
	GetWindowZZ $
(ZZ$ %
thisZZ% )
)ZZ) *
.ZZ* +
CloseZZ+ 0
(ZZ0 1
)ZZ1 2
;ZZ2 3
}[[ 
catch\\ 
(\\ "
CommunicationException\\ -
ex\\. 0
)\\0 1
{]] 
HandleException^^ #
(^^# $
ex^^$ &
,^^& '

Properties^^( 2
.^^2 3
	Resources^^3 <
.^^< =
lblWithoutConection^^= P
)^^P Q
;^^Q R
Window__ 
.__ 
	GetWindow__ $
(__$ %
this__% )
)__) *
.__* +
Close__+ 0
(__0 1
)__1 2
;__2 3
}`` 
catchaa 
(aa 
SocketExceptionaa &
exaa' )
)aa) *
{bb 
HandleExceptioncc #
(cc# $
excc$ &
,cc& '

Propertiescc( 2
.cc2 3
	Resourcescc3 <
.cc< =
lblWithoutConectioncc= P
)ccP Q
;ccQ R
Windowdd 
.dd 
	GetWindowdd $
(dd$ %
thisdd% )
)dd) *
.dd* +
Closedd+ 0
(dd0 1
)dd1 2
;dd2 3
}ee 
}ff 
elsegg 
{hh 
DialogWindowManagerii #
.ii# $!
ShowInfoOrErrorWindowii$ 9
(ii9 :

Propertiesii: D
.iiD E
	ResourcesiiE N
.iiN O
txbErrorTitleiiO \
,ii\ ]

Propertiesii^ h
.iih i
	Resourcesiii r
.iir s
lblnvalidCode	iis Ä
,
iiÄ Å
Application
iiÇ ç
.
iiç é
Current
iié ï
.
iiï ñ

MainWindow
iiñ †
,
ii† °!
DialogWindowManager
ii¢ µ
.
iiµ ∂
ERROR
ii∂ ª
)
iiª º
;
iiº Ω
}jj 
}kk 	
privatemm 
boolmm 
AssurePlayermm !
(mm! "
)mm" #
{nn 	
booloo 
successoo 
=oo 
trueoo 
;oo  
ifpp 
(pp 
idUserpp 
==pp 
-pp 
$numpp 
)pp 
{qq 
ifrr 
(rr 
!rr '
GetPlayerAndUserInformationrr 0
(rr0 1
)rr1 2
)rr2 3
{ss 
returntt 
falsett  
;tt  !
}uu 
successvv 
=vv $
SubscribeToLivingChannelvv 2
(vv2 3
)vv3 4
;vv4 5
}ww 
returnxx 
successxx 
;xx 
}yy 	
private{{ 
bool{{ '
GetPlayerAndUserInformation{{ 0
({{0 1
){{1 2
{|| 	
bool}} 
isPlayerGuestActive}} $
=}}% &
false}}' ,
;}}, -
try~~ 
{ &
GuestPlayerManagerClient
ÄÄ (%
guestPlayerManagerProxy
ÄÄ) @
=
ÄÄA B
new
ÄÄC F&
GuestPlayerManagerClient
ÄÄG _
(
ÄÄ_ `
)
ÄÄ` a
;
ÄÄa b
var
ÅÅ 
	userGuest
ÅÅ 
=
ÅÅ %
guestPlayerManagerProxy
ÅÅ  7
.
ÅÅ7 8 
CreateUserForGuest
ÅÅ8 J
(
ÅÅJ K
)
ÅÅK L
;
ÅÅL M
if
ÇÇ 
(
ÇÇ 
	userGuest
ÇÇ 
.
ÇÇ 
	CodeEvent
ÇÇ '
==
ÇÇ( *!
ExceptionDictionary
ÇÇ+ >
.
ÇÇ> ?
SUCCESFULL_EVENT
ÇÇ? O
)
ÇÇO P
{
ÉÉ 
userForGuest
ÑÑ  
=
ÑÑ! "
	userGuest
ÑÑ# ,
.
ÑÑ, -
ObjectSaved
ÑÑ- 8
;
ÑÑ8 9*
ConsultUserInformationClient
ÖÖ 0)
consultUserInformationProxy
ÖÖ1 L
=
ÖÖM N
new
ÖÖO R
(
ÖÖR S
)
ÖÖS T
;
ÖÖT U
var
ÜÜ 
playerGuest
ÜÜ #
=
ÜÜ$ %)
consultUserInformationProxy
ÜÜ& A
.
ÜÜA B#
ConsultPlayerByIdUser
ÜÜB W
(
ÜÜW X
	userGuest
ÜÜX a
.
ÜÜa b
ObjectSaved
ÜÜb m
.
ÜÜm n
IdUser
ÜÜn t
)
ÜÜt u
;
ÜÜu v
if
áá 
(
áá 
playerGuest
áá #
.
áá# $
	CodeEvent
áá$ -
==
áá. 0!
ExceptionDictionary
áá1 D
.
ááD E
SUCCESFULL_EVENT
ááE U
)
ááU V
{
àà 
UserSingleton
ââ %
.
ââ% &
CleanSingleton
ââ& 4
(
ââ4 5
)
ââ5 6
;
ââ6 7
UserSingleton
ää %
.
ää% &
GetMainUser
ää& 1
(
ää1 2
	userGuest
ää2 ;
.
ää; <
ObjectSaved
ää< G
,
ääG H
playerGuest
ääI T
.
ääT U
ObjectSaved
ääU `
)
ää` a
;
ääa b!
isPlayerGuestActive
ãã +
=
ãã, -
true
ãã. 2
;
ãã2 3
}
åå 
}
çç 
else
éé 
{
èè !
DialogWindowManager
êê '
.
êê' (#
ShowInfoOrErrorWindow
êê( =
(
êê= >

Properties
êê> H
.
êêH I
	Resources
êêI R
.
êêR S
txbErrorTitle
êêS `
,
êê` a

Properties
êêb l
.
êêl m
	Resources
êêm v
.
êêv w'
lblFailToCreateGuestUserêêw è
,êêè ê
Applicationêêë ú
.êêú ù
Currentêêù §
.êê§ •

MainWindowêê• Ø
,êêØ ∞#
DialogWindowManagerêê± ƒ
.êêƒ ≈
ERRORêê≈  
)êê  À
;êêÀ Ã
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
ºº !
DialogWindowManager
ΩΩ '
.
ΩΩ' (#
ShowInfoOrErrorWindow
ΩΩ( =
(
ΩΩ= >

Properties
ΩΩ> H
.
ΩΩH I
	Resources
ΩΩI R
.
ΩΩR S
txbErrorTitle
ΩΩS `
,
ΩΩ` a

Properties
ΩΩb l
.
ΩΩl m
	Resources
ΩΩm v
.
ΩΩv w(
lblFailRegistryToCallBackΩΩw ê
,ΩΩê ë
ApplicationΩΩí ù
.ΩΩù û
CurrentΩΩû •
.ΩΩ• ¶

MainWindowΩΩ¶ ∞
,ΩΩ∞ ±#
DialogWindowManagerΩΩ≤ ≈
.ΩΩ≈ ∆
ERRORΩΩ∆ À
)ΩΩÀ Ã
;ΩΩÃ Õ
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
Y Z!
DialogWindowManager
ÒÒ 
.
ÒÒ  #
ShowInfoOrErrorWindow
ÒÒ  5
(
ÒÒ5 6

Properties
ÒÒ6 @
.
ÒÒ@ A
	Resources
ÒÒA J
.
ÒÒJ K
txbErrorTitle
ÒÒK X
,
ÒÒX Y
errorMessage
ÒÒZ f
,
ÒÒf g
Application
ÒÒh s
.
ÒÒs t
Current
ÒÒt {
.
ÒÒ{ |

MainWindowÒÒ| Ü
,ÒÒÜ á#
DialogWindowManagerÒÒà õ
.ÒÒõ ú
ERRORÒÒú °
)ÒÒ° ¢
;ÒÒ¢ £
}
ÚÚ 	
}
ıı 
}ˆˆ ›÷
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
private** 
UserSingleton** 
userSingleton** +
;**+ ,
public,, 
FriendManager,, 
(,, 
),, 
{-- 	
InitializeComponent.. 
(..  
)..  !
;..! "
Loaded// 
+=// 
LoadedPrepareWindow// )
;//) *
}00 	
private22 
void22 
LoadedPrepareWindow22 (
(22( )
object22) /
sender220 6
,226 7
RoutedEventArgs228 G
e22H I
)22I J
{33 	
userSingleton44 
=44 
UserSingleton44 )
.44) *
GetMainUser44* 5
(445 6
)446 7
;447 8
try55 
{66 
InstanceContext77 
context77  '
=77( )
new77* -
InstanceContext77. =
(77= >
this77> B
)77B C
;77C D&
FriendManagerActionsClient88 *
friendActionsProxy88+ =
=88> ?
new88@ C&
FriendManagerActionsClient88D ^
(88^ _
context88_ f
)88f g
;88g h
friendActionsProxy99 "
.99" #%
RegisterFriendManagerUser99# <
(99< =
userSingleton99= J
.99J K
IdUser99K Q
)99Q R
;99R S
GetAllTables:: 
(:: 
):: 
;:: 
};; 
catch<< 
(<< 
SocketException<< "
ex<<# %
)<<% &
{== 
HandleException>> 
(>>  
ex>>  "
,>>" #

Properties>>$ .
.>>. /
	Resources>>/ 8
.>>8 9
lblEndPointNotFound>>9 L
)>>L M
;>>M N
GotoMenu?? 
(?? 
)?? 
;?? 
}@@ 
catchAA 
(AA %
EndpointNotFoundExceptionAA ,
exAA- /
)AA/ 0
{BB 
HandleExceptionCC 
(CC  
exCC  "
,CC" #

PropertiesCC$ .
.CC. /
	ResourcesCC/ 8
.CC8 9
lblEndPointNotFoundCC9 L
)CCL M
;CCM N
GotoMenuDD 
(DD 
)DD 
;DD 
}EE 
catchFF 
(FF /
#CommunicationObjectFaultedExceptionFF 6
exFF7 9
)FF9 :
{GG 
HandleExceptionHH 
(HH  
exHH  "
,HH" #

PropertiesHH$ .
.HH. /
	ResourcesHH/ 8
.HH8 9$
lblComunicationExceptionHH9 Q
)HHQ R
;HHR S
GotoMenuII 
(II 
)II 
;II 
}JJ 
catchKK 
(KK 
TimeoutExceptionKK #
exKK$ &
)KK& '
{LL 
HandleExceptionMM 
(MM  
exMM  "
,MM" #

PropertiesMM$ .
.MM. /
	ResourcesMM/ 8
.MM8 9
lblTimeExceptionMM9 I
)MMI J
;MMJ K
GotoMenuNN 
(NN 
)NN 
;NN 
}OO 
catchPP 
(PP "
CommunicationExceptionPP )
exPP* ,
)PP, -
{QQ 
HandleExceptionRR 
(RR  
exRR  "
,RR" #

PropertiesRR$ .
.RR. /
	ResourcesRR/ 8
.RR8 9$
lblComunicationExceptionRR9 Q
)RRQ R
;RRR S
GotoMenuSS 
(SS 
)SS 
;SS 
}TT 
}UU 	
privateXX 
voidXX 
GetAllTablesXX !
(XX! "
)XX" #
{YY 	
tryZZ 
{[[ 
if\\ 
(\\ 
userSingleton\\ !
!=\\" $
null\\% )
)\\) *
{]] 
UserPojo^^ 
userConsulted^^ *
=^^+ ,
new^^- 0
UserPojo^^1 9
(^^9 :
)^^: ;
{__ 
IdUser`` 
=``  
userSingleton``! .
.``. /
IdUser``/ 5
,``5 6
EmailAddressaa $
=aa% &
userSingletonaa' 4
.aa4 5
Emailaa5 :
,aa: ;
Namebb 
=bb 
userSingletonbb ,
.bb, -
Namebb- 1
,bb1 2
Passwordcc  
=cc! "
userSingletoncc# 0
.cc0 1
Passwordcc1 9
,cc9 :
UserNamedd  
=dd! "
userSingletondd# 0
.dd0 1
Namedd1 5
,dd5 6
}ee 
;ee 
ifff 
(ff 
!ff 

GetFriendsff "
(ff" #
userConsultedff# 0
)ff0 1
||ff2 4
!ff5 6
GetFriendRequestsff6 G
(ffG H
userConsultedffH U
)ffU V
||ffW Y
!ffZ [
GetNotFriendsff[ h
(ffh i
userConsultedffi v
)ffv w
)ffw x
{gg 
DialogWindowManagerhh +
.hh+ ,!
ShowInfoOrErrorWindowhh, A
(hhA B

PropertieshhB L
.hhL M
	ResourceshhM V
.hhV W
txbErrorTitlehhW d
,hhd e

Propertieshhf p
.hhp q
	Resourceshhq z
.hhz {$
lblFailToRecoverFriends	hh{ í
,
hhí ì
Application
hhî ü
.
hhü †
Current
hh† ß
.
hhß ®

MainWindow
hh® ≤
,
hh≤ ≥!
DialogWindowManager
hh¥ «
.
hh« »
ERROR
hh» Õ
)
hhÕ Œ
;
hhŒ œ
GotoMenuii  
(ii  !
)ii! "
;ii" #
}jj 
elsekk 
{ll 
SetCardsmm  
(mm  !
)mm! "
;mm" #
}nn 
}oo 
}pp 
catchqq 
(qq %
EndpointNotFoundExceptionqq ,
exqq- /
)qq/ 0
{rr 
HandleExceptionss 
(ss  
exss  "
,ss" #

Propertiesss$ .
.ss. /
	Resourcesss/ 8
.ss8 9
lblEndPointNotFoundss9 L
)ssL M
;ssM N
GotoMenutt 
(tt 
)tt 
;tt 
}uu 
catchvv 
(vv /
#CommunicationObjectFaultedExceptionvv 6
exvv7 9
)vv9 :
{ww 
HandleExceptionxx 
(xx  
exxx  "
,xx" #

Propertiesxx$ .
.xx. /
	Resourcesxx/ 8
.xx8 9$
lblComunicationExceptionxx9 Q
)xxQ R
;xxR S
GotoMenuyy 
(yy 
)yy 
;yy 
}zz 
catch{{ 
({{ 
TimeoutException{{ #
ex{{$ &
){{& '
{|| 
HandleException}} 
(}}  
ex}}  "
,}}" #

Properties}}$ .
.}}. /
	Resources}}/ 8
.}}8 9
lblTimeException}}9 I
)}}I J
;}}J K
GotoMenu~~ 
(~~ 
)~~ 
;~~ 
} 
catch
ÄÄ 
(
ÄÄ $
CommunicationException
ÄÄ )
ex
ÄÄ* ,
)
ÄÄ, -
{
ÅÅ 
HandleException
ÇÇ 
(
ÇÇ  
ex
ÇÇ  "
,
ÇÇ" #

Properties
ÇÇ$ .
.
ÇÇ. /
	Resources
ÇÇ/ 8
.
ÇÇ8 9&
lblComunicationException
ÇÇ9 Q
)
ÇÇQ R
;
ÇÇR S
GotoMenu
ÉÉ 
(
ÉÉ 
)
ÉÉ 
;
ÉÉ 
}
ÑÑ 
catch
ÖÖ 
(
ÖÖ 
SocketException
ÖÖ "
ex
ÖÖ# %
)
ÖÖ% &
{
ÜÜ 
HandleException
áá 
(
áá  
ex
áá  "
,
áá" #

Properties
áá$ .
.
áá. /
	Resources
áá/ 8
.
áá8 9&
lblComunicationException
áá9 Q
)
ááQ R
;
ááR S
GotoMenu
àà 
(
àà 
)
àà 
;
àà 
}
ââ 
}
ää 	
private
åå 
bool
åå 

GetFriends
åå 
(
åå  
UserPojo
åå  (
userConsulted
åå) 6
)
åå6 7
{
çç 	
try
éé 
{
èè "
ConsultFriendsClient
êê $ 
friendManagerProxy
êê% 7
=
êê8 9
new
êê: ="
ConsultFriendsClient
êê> R
(
êêR S
)
êêS T
;
êêT U
var
ëë 
friendsConsulted
ëë $
=
ëë% & 
friendManagerProxy
ëë' 9
.
ëë9 :
GetUserFriends
ëë: H
(
ëëH I
userConsulted
ëëI V
)
ëëV W
;
ëëW X
if
íí 
(
íí 
friendsConsulted
íí $
.
íí$ %
	CodeEvent
íí% .
==
íí/ 1!
ExceptionDictionary
íí2 E
.
ííE F
SUCCESFULL_EVENT
ííF V
)
ííV W
{
ìì 
friends
îî 
=
îî 
friendsConsulted
îî .
.
îî. /
ObjectSaved
îî/ :
.
îî: ;
ToList
îî; A
(
îîA B
)
îîB C
;
îîC D
return
ïï 
true
ïï 
;
ïï  
}
ññ 
}
óó 
catch
òò 
(
òò '
EndpointNotFoundException
òò ,
ex
òò- /
)
òò/ 0
{
ôô 
throw
öö 
new
öö '
EndpointNotFoundException
öö 3
(
öö3 4

Properties
öö4 >
.
öö> ?
	Resources
öö? H
.
ööH I%
lblFailToRecoverFriends
ööI `
,
öö` a
ex
ööb d
)
ööd e
;
ööe f
}
õõ 
catch
úú 
(
úú 1
#CommunicationObjectFaultedException
úú 6
ex
úú7 9
)
úú9 :
{
ùù 
throw
ûû 
new
ûû 1
#CommunicationObjectFaultedException
ûû =
(
ûû= >

Properties
ûû> H
.
ûûH I
	Resources
ûûI R
.
ûûR S%
lblFailToRecoverFriends
ûûS j
,
ûûj k
ex
ûûl n
)
ûûn o
;
ûûo p
}
üü 
catch
†† 
(
†† 
TimeoutException
†† #
ex
††$ &
)
††& '
{
°° 
throw
¢¢ 
new
¢¢ 
TimeoutException
¢¢ *
(
¢¢* +

Properties
¢¢+ 5
.
¢¢5 6
	Resources
¢¢6 ?
.
¢¢? @%
lblFailToRecoverFriends
¢¢@ W
,
¢¢W X
ex
¢¢Y [
)
¢¢[ \
;
¢¢\ ]
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
•• 
throw
¶¶ 
new
¶¶ $
CommunicationException
¶¶ 0
(
¶¶0 1

Properties
¶¶1 ;
.
¶¶; <
	Resources
¶¶< E
.
¶¶E F%
lblFailToRecoverFriends
¶¶F ]
,
¶¶] ^
ex
¶¶_ a
)
¶¶a b
;
¶¶b c
}
ßß 
catch
®® 
(
®® 
SocketException
®® "
)
®®" #
{
©© 
throw
™™ 
new
™™ 
SocketException
™™ )
(
™™) *
)
™™* +
;
™™+ ,
}
´´ 
return
¨¨ 
false
¨¨ 
;
¨¨ 
}
≠≠ 	
private
ØØ 
bool
ØØ 
GetFriendRequests
ØØ &
(
ØØ& '
UserPojo
ØØ' /
userConsulted
ØØ0 =
)
ØØ= >
{
∞∞ 	
try
±± 
{
≤≤ "
ConsultFriendsClient
≥≥ $ 
friendManagerProxy
≥≥% 7
=
≥≥8 9
new
≥≥: ="
ConsultFriendsClient
≥≥> R
(
≥≥R S
)
≥≥S T
;
≥≥T U
var
¥¥ %
friendRequestsConsulted
¥¥ +
=
¥¥, - 
friendManagerProxy
¥¥. @
.
¥¥@ A#
GetUserFriendRequests
¥¥A V
(
¥¥V W
userConsulted
¥¥W d
)
¥¥d e
;
¥¥e f
if
µµ 
(
µµ %
friendRequestsConsulted
µµ +
.
µµ+ ,
	CodeEvent
µµ, 5
==
µµ6 8!
ExceptionDictionary
µµ9 L
.
µµL M
SUCCESFULL_EVENT
µµM ]
)
µµ] ^
{
∂∂ 
friendRequests
∑∑ "
=
∑∑# $%
friendRequestsConsulted
∑∑% <
.
∑∑< =
ObjectSaved
∑∑= H
.
∑∑H I
ToList
∑∑I O
(
∑∑O P
)
∑∑P Q
;
∑∑Q R
return
∏∏ 
true
∏∏ 
;
∏∏  
}
ππ 
}
∫∫ 
catch
ªª 
(
ªª '
EndpointNotFoundException
ªª ,
ex
ªª- /
)
ªª/ 0
{
ºº 
throw
ΩΩ 
new
ΩΩ '
EndpointNotFoundException
ΩΩ 3
(
ΩΩ3 4

Properties
ΩΩ4 >
.
ΩΩ> ?
	Resources
ΩΩ? H
.
ΩΩH I%
lblFailToRecoverFriends
ΩΩI `
,
ΩΩ` a
ex
ΩΩb d
)
ΩΩd e
;
ΩΩe f
}
ææ 
catch
øø 
(
øø 1
#CommunicationObjectFaultedException
øø 6
ex
øø7 9
)
øø9 :
{
¿¿ 
throw
¡¡ 
new
¡¡ 1
#CommunicationObjectFaultedException
¡¡ =
(
¡¡= >

Properties
¡¡> H
.
¡¡H I
	Resources
¡¡I R
.
¡¡R S%
lblFailToRecoverFriends
¡¡S j
,
¡¡j k
ex
¡¡l n
)
¡¡n o
;
¡¡o p
}¬¬ 
catch
√√ 
(
√√ 
TimeoutException
√√ #
ex
√√$ &
)
√√& '
{
ƒƒ 
throw
≈≈ 
new
≈≈ 
TimeoutException
≈≈ *
(
≈≈* +

Properties
≈≈+ 5
.
≈≈5 6
	Resources
≈≈6 ?
.
≈≈? @%
lblFailToRecoverFriends
≈≈@ W
,
≈≈W X
ex
≈≈Y [
)
≈≈[ \
;
≈≈\ ]
}
∆∆ 
catch
«« 
(
«« $
CommunicationException
«« )
ex
««* ,
)
««, -
{
»» 
throw
…… 
new
…… $
CommunicationException
…… 0
(
……0 1

Properties
……1 ;
.
……; <
	Resources
……< E
.
……E F%
lblFailToRecoverFriends
……F ]
,
……] ^
ex
……_ a
)
……a b
;
……b c
}
   
catch
ÀÀ 
(
ÀÀ 
SocketException
ÀÀ "
)
ÀÀ" #
{
ÃÃ 
throw
ÕÕ 
new
ÕÕ 
SocketException
ÕÕ )
(
ÕÕ) *
)
ÕÕ* +
;
ÕÕ+ ,
}
ŒŒ 
return
œœ 
false
œœ 
;
œœ 
}
–– 	
private
““ 
bool
““ 
GetNotFriends
““ "
(
““" #
UserPojo
““# +
userConsulted
““, 9
)
““9 :
{
”” 	
try
‘‘ 
{
‘‘ "
ConsultFriendsClient
’’ $ 
friendManagerProxy
’’% 7
=
’’8 9
new
’’: ="
ConsultFriendsClient
’’> R
(
’’R S
)
’’S T
;
’’T U
var
÷÷ "
otherPeopleConsulted
÷÷ (
=
÷÷) * 
friendManagerProxy
÷÷+ =
.
÷÷= > 
GetUsersNotFriends
÷÷> P
(
÷÷P Q
userConsulted
÷÷Q ^
)
÷÷^ _
;
÷÷_ `
if
◊◊ 
(
◊◊ "
otherPeopleConsulted
◊◊ (
.
◊◊( )
	CodeEvent
◊◊) 2
==
◊◊3 5!
ExceptionDictionary
◊◊6 I
.
◊◊I J
SUCCESFULL_EVENT
◊◊J Z
)
◊◊Z [
{
ÿÿ 
otherPeople
ŸŸ 
=
ŸŸ  !"
otherPeopleConsulted
ŸŸ" 6
.
ŸŸ6 7
ObjectSaved
ŸŸ7 B
.
ŸŸB C
ToList
ŸŸC I
(
ŸŸI J
)
ŸŸJ K
;
ŸŸK L
return
⁄⁄ 
true
⁄⁄ 
;
⁄⁄  
}
€€ 
}
‹‹ 
catch
›› 
(
›› '
EndpointNotFoundException
›› ,
ex
››- /
)
››/ 0
{
ﬁﬁ 
throw
ﬂﬂ 
new
ﬂﬂ '
EndpointNotFoundException
ﬂﬂ 3
(
ﬂﬂ3 4

Properties
ﬂﬂ4 >
.
ﬂﬂ> ?
	Resources
ﬂﬂ? H
.
ﬂﬂH I%
lblFailToRecoverFriends
ﬂﬂI `
,
ﬂﬂ` a
ex
ﬂﬂb d
)
ﬂﬂd e
;
ﬂﬂe f
}
‡‡ 
catch
·· 
(
·· 1
#CommunicationObjectFaultedException
·· 6
ex
··7 9
)
··9 :
{
‚‚ 
throw
„„ 
new
„„ 1
#CommunicationObjectFaultedException
„„ =
(
„„= >

Properties
„„> H
.
„„H I
	Resources
„„I R
.
„„R S%
lblFailToRecoverFriends
„„S j
,
„„j k
ex
„„l n
)
„„n o
;
„„o p
}
‰‰ 
catch
ÂÂ 
(
ÂÂ 
TimeoutException
ÂÂ #
ex
ÂÂ$ &
)
ÂÂ& '
{
ÊÊ 
throw
ÁÁ 
new
ÁÁ 
TimeoutException
ÁÁ *
(
ÁÁ* +

Properties
ÁÁ+ 5
.
ÁÁ5 6
	Resources
ÁÁ6 ?
.
ÁÁ? @%
lblFailToRecoverFriends
ÁÁ@ W
,
ÁÁW X
ex
ÁÁY [
)
ÁÁ[ \
;
ÁÁ\ ]
}
ËË 
catch
ÈÈ 
(
ÈÈ $
CommunicationException
ÈÈ )
ex
ÈÈ* ,
)
ÈÈ, -
{
ÍÍ 
throw
ÎÎ 
new
ÎÎ $
CommunicationException
ÎÎ 0
(
ÎÎ0 1

Properties
ÎÎ1 ;
.
ÎÎ; <
	Resources
ÎÎ< E
.
ÎÎE F%
lblFailToRecoverFriends
ÎÎF ]
,
ÎÎ] ^
ex
ÎÎ_ a
)
ÎÎa b
;
ÎÎb c
}
ÏÏ 
catch
ÌÌ 
(
ÌÌ 
SocketException
ÌÌ "
)
ÌÌ" #
{
ÓÓ 
throw
ÔÔ 
new
ÔÔ 
SocketException
ÔÔ )
(
ÔÔ) *
)
ÔÔ* +
;
ÔÔ+ ,
}
 
return
ÒÒ 
false
ÒÒ 
;
ÒÒ 
}
ÚÚ 	
private
ˆˆ 
void
ˆˆ 
SetCards
ˆˆ 
(
ˆˆ 
)
ˆˆ 
{
˜˜ 	#
stpFrinedsManagerList
¯¯ !
.
¯¯! "
Children
¯¯" *
.
¯¯* +
Clear
¯¯+ 0
(
¯¯0 1
)
¯¯1 2
;
¯¯2 3
List
˘˘ 
<
˘˘ $
FriendBasicInformation
˘˘ '
>
˘˘' (
listOfUsers
˘˘) 4
;
˘˘4 5
switch
˙˙ 
(
˙˙ 
typeUserConsult
˙˙ #
)
˙˙# $
{
˚˚ 
case
¸¸ 

MY_FRIENDS
¸¸ 
:
¸¸  
listOfUsers
˝˝ 
=
˝˝  !
new
˝˝" %
List
˝˝& *
<
˝˝* +$
FriendBasicInformation
˝˝+ A
>
˝˝A B
(
˝˝B C
friends
˝˝C J
)
˝˝J K
;
˝˝K L
break
˛˛ 
;
˛˛ 
case
ˇˇ 
FRIENDS_REQUEST
ˇˇ $
:
ˇˇ$ %
listOfUsers
ÄÄ 
=
ÄÄ  !
new
ÄÄ" %
List
ÄÄ& *
<
ÄÄ* +$
FriendBasicInformation
ÄÄ+ A
>
ÄÄA B
(
ÄÄB C
friendRequests
ÄÄC Q
)
ÄÄQ R
;
ÄÄR S
break
ÅÅ 
;
ÅÅ 
case
ÇÇ 
OTHER_PEOPLE
ÇÇ !
:
ÇÇ! "
listOfUsers
ÉÉ 
=
ÉÉ  !
new
ÉÉ" %
List
ÉÉ& *
<
ÉÉ* +$
FriendBasicInformation
ÉÉ+ A
>
ÉÉA B
(
ÉÉB C
otherPeople
ÉÉC N
)
ÉÉN O
;
ÉÉO P
break
ÑÑ 
;
ÑÑ 
default
ÖÖ 
:
ÖÖ 
listOfUsers
ÜÜ 
=
ÜÜ  !
new
ÜÜ" %
List
ÜÜ& *
<
ÜÜ* +$
FriendBasicInformation
ÜÜ+ A
>
ÜÜA B
(
ÜÜB C
)
ÜÜC D
;
ÜÜD E
break
áá 
;
áá 
}
àà 
foreach
ââ 
(
ââ 
var
ââ 
item
ââ 
in
ââ  
listOfUsers
ââ! ,
)
ââ, -
{
ää 
Border
ãã 
brdCard
ãã 
=
ãã  
new
ãã! $
Border
ãã% +
(
ãã+ ,
)
ãã, -
;
ãã- .(
FriendCardManagementWindow
åå *"
friendCardManagement
åå+ ?
=
åå@ A
new
ååB E(
FriendCardManagementWindow
ååF `
(
åå` a
item
ååa e
.
ååe f
IdUser
ååf l
,
åål m
item
åån r
.
åår s
UserName
åås {
,
åå{ |
typeUserConsultåå} å
,ååå ç
textLeftButtonååé ú
,ååú ù
textRightButtonååû ≠
,åå≠ Æ
thisååØ ≥
)åå≥ ¥
;åå¥ µ
brdCard
çç 
.
çç 
Child
çç 
=
çç "
friendCardManagement
çç  4
;
çç4 5#
stpFrinedsManagerList
éé %
.
éé% &
Children
éé& .
.
éé. /
Add
éé/ 2
(
éé2 3 
SetBorderCardStyle
éé3 E
(
ééE F
brdCard
ééF M
)
ééM N
)
ééN O
;
ééO P
}
èè 
}
êê 	
private
ìì 
Border
ìì  
SetBorderCardStyle
ìì )
(
ìì) *
Border
ìì* 0
brdCard
ìì1 8
)
ìì8 9
{
îî 	
brdCard
ïï 
.
ïï 

Background
ïï 
=
ïï  
new
ïï! $
SolidColorBrush
ïï% 4
(
ïï4 5
(
ïï5 6
Color
ïï6 ;
)
ïï; <
ColorConverter
ïï< J
.
ïïJ K
ConvertFromString
ïïK \
(
ïï\ ]
$str
ïï] f
)
ïïf g
)
ïïg h
;
ïïh i
brdCard
ññ 
.
ññ 

Background
ññ 
.
ññ 
Opacity
ññ &
=
ññ' (
$num
ññ) -
;
ññ- .
brdCard
óó 
.
óó 
CornerRadius
óó  
=
óó! "
new
óó# &
CornerRadius
óó' 3
(
óó3 4
$num
óó4 6
)
óó6 7
;
óó7 8
brdCard
òò 
.
òò 
Margin
òò 
=
òò 
new
òò  
	Thickness
òò! *
(
òò* +
$num
òò+ -
,
òò- .
$num
òò/ 1
,
òò1 2
$num
òò3 4
,
òò4 5
$num
òò6 8
)
òò8 9
;
òò9 :
brdCard
ôô 
.
ôô 
Width
ôô 
=
ôô 
$num
ôô  
;
ôô  !
brdCard
öö 
.
öö 
MaxWidth
öö 
=
öö 
$num
öö #
;
öö# $
brdCard
õõ 
.
õõ 
Height
õõ 
=
õõ 
$num
õõ 
;
õõ  
brdCard
úú 
.
úú !
HorizontalAlignment
úú '
=
úú( )!
HorizontalAlignment
úú* =
.
úú= >
Left
úú> B
;
úúB C
return
ùù 
brdCard
ùù 
;
ùù 
}
ûû 	
private
†† 
void
†† #
ClickConsultMyFriends
†† *
(
††* +
object
††+ 1
sender
††2 8
,
††8 9"
MouseButtonEventArgs
††: N
e
††O P
)
††P Q
{
°° 	
typeUserConsult
¢¢ 
=
¢¢ 

MY_FRIENDS
¢¢ (
;
¢¢( )
textLeftButton
££ 
=
££ 

Properties
££ '
.
££' (
	Resources
££( 1
.
££1 2
	bttReport
££2 ;
;
££; <
textRightButton
§§ 
=
§§ 

Properties
§§ (
.
§§( )
	Resources
§§) 2
.
§§2 3
bttEliminate
§§3 ?
;
§§? @
SelectLabel
•• 
(
•• 
lblMyFriends
•• $
)
••$ %
;
••% &
SetCards
¶¶ 
(
¶¶ 
)
¶¶ 
;
¶¶ 
}
ßß 	
private
©© 
void
©© +
ClickConsultFriendSolicitudes
©© 2
(
©©2 3
object
©©3 9
sender
©©: @
,
©©@ A"
MouseButtonEventArgs
©©B V
e
©©W X
)
©©X Y
{
™™ 	
typeUserConsult
´´ 
=
´´ 
FRIENDS_REQUEST
´´ -
;
´´- .
textLeftButton
¨¨ 
=
¨¨ 

Properties
¨¨ '
.
¨¨' (
	Resources
¨¨( 1
.
¨¨1 2$
bttAcceptFriendRequest
¨¨2 H
;
¨¨H I
textRightButton
≠≠ 
=
≠≠ 

Properties
≠≠ (
.
≠≠( )
	Resources
≠≠) 2
.
≠≠2 3%
bttDeclineFriendRequest
≠≠3 J
;
≠≠J K
SelectLabel
ÆÆ 
(
ÆÆ 
lblRequests
ÆÆ #
)
ÆÆ# $
;
ÆÆ$ %
SetCards
ØØ 
(
ØØ 
)
ØØ 
;
ØØ 
}
∞∞ 	
private
≤≤ 
void
≤≤ $
ClickConsultMorePeople
≤≤ +
(
≤≤+ ,
object
≤≤, 2
sender
≤≤3 9
,
≤≤9 :"
MouseButtonEventArgs
≤≤; O
e
≤≤P Q
)
≤≤Q R
{
≥≥ 	
typeUserConsult
¥¥ 
=
¥¥ 
OTHER_PEOPLE
¥¥ *
;
¥¥* +
textLeftButton
µµ 
=
µµ 

Properties
µµ '
.
µµ' (
	Resources
µµ( 1
.
µµ1 2
bttAddFriend
µµ2 >
;
µµ> ?
textRightButton
∂∂ 
=
∂∂ 

Properties
∂∂ (
.
∂∂( )
	Resources
∂∂) 2
.
∂∂2 3
	bttReport
∂∂3 <
;
∂∂< =
SelectLabel
∑∑ 
(
∑∑ 
lblMorePeople
∑∑ %
)
∑∑% &
;
∑∑& '
SetCards
∏∏ 
(
∏∏ 
)
∏∏ 
;
∏∏ 
}
ππ 	
private
ªª 
void
ªª 
SelectLabel
ªª  
(
ªª  !
Label
ªª! &
selectedLabel
ªª' 4
)
ªª4 5
{
ºº 	
lblMyFriends
ΩΩ 
.
ΩΩ 
FontSize
ΩΩ !
=
ΩΩ" #
$num
ΩΩ$ &
;
ΩΩ& '
lblMyFriends
ææ 
.
ææ 

Foreground
ææ #
=
ææ$ %
new
ææ& )
SolidColorBrush
ææ* 9
(
ææ9 :
Colors
ææ: @
.
ææ@ A
White
ææA F
)
ææF G
;
ææG H
lblRequests
øø 
.
øø 
FontSize
øø  
=
øø! "
$num
øø# %
;
øø% &
lblRequests
¿¿ 
.
¿¿ 

Foreground
¿¿ "
=
¿¿# $
new
¿¿% (
SolidColorBrush
¿¿) 8
(
¿¿8 9
Colors
¿¿9 ?
.
¿¿? @
White
¿¿@ E
)
¿¿E F
;
¿¿F G
lblMorePeople
¡¡ 
.
¡¡ 
FontSize
¡¡ "
=
¡¡# $
$num
¡¡% '
;
¡¡' (
lblMorePeople
¬¬ 
.
¬¬ 

Foreground
¬¬ $
=
¬¬% &
new
¬¬' *
SolidColorBrush
¬¬+ :
(
¬¬: ;
Colors
¬¬; A
.
¬¬A B
White
¬¬B G
)
¬¬G H
;
¬¬H I
selectedLabel
√√ 
.
√√ 
FontSize
√√ "
=
√√# $
$num
√√% '
;
√√' (
selectedLabel
ƒƒ 
.
ƒƒ 

Foreground
ƒƒ $
=
ƒƒ% &
new
ƒƒ' *
SolidColorBrush
ƒƒ+ :
(
ƒƒ: ;
Colors
ƒƒ; A
.
ƒƒA B
	LightGray
ƒƒB K
)
ƒƒK L
;
ƒƒL M
}
≈≈ 	
public
«« 
void
«« 

ReportUser
«« 
(
«« 
int
«« "
idPlayer
««# +
)
««+ ,
{
»» 	
try
…… 
{
   (
FriendManagerActionsClient
ÀÀ *(
friendActionsCallBackProxy
ÀÀ+ E
=
ÀÀF G
new
ÀÀH K(
FriendManagerActionsClient
ÀÀL f
(
ÀÀf g
new
ÀÀg j
InstanceContext
ÀÀk z
(
ÀÀz {
this
ÀÀ{ 
)ÀÀ Ä
)ÀÀÄ Å
;ÀÀÅ Ç(
friendActionsCallBackProxy
ÃÃ *
.
ÃÃ* +,
RenewFriendManagerUserCallBack
ÃÃ+ I
(
ÃÃI J
userSingleton
ÃÃJ W
.
ÃÃW X
IdUser
ÃÃX ^
)
ÃÃ^ _
;
ÃÃ_ `1
#FriendManagerActionOperationsClient
ŒŒ 3 
friendActionsProxy
ŒŒ4 F
=
ŒŒG H
new
ŒŒI L
(
ŒŒL M
)
ŒŒM N
;
ŒŒN O
var
œœ 
result
œœ 
=
œœ  
friendActionsProxy
œœ /
.
œœ/ 0
BanUser
œœ0 7
(
œœ7 8
idPlayer
œœ8 @
,
œœ@ A
userSingleton
œœB O
.
œœO P
IdUser
œœP V
)
œœV W
;
œœW X
if
–– 
(
–– 
result
–– 
.
–– 
	CodeEvent
–– $
==
––% '!
ExceptionDictionary
––( ;
.
––; <
SUCCESFULL_EVENT
––< L
)
––L M
{
—— !
DialogWindowManager
““ '
.
““' (#
ShowInfoOrErrorWindow
““( =
(
““= >

Properties
““> H
.
““H I
	Resources
““I R
.
““R S!
txbInformationTitle
““S f
,
““f g

Properties
““h r
.
““r s
	Resources
““s |
.
““| }$
lblSuccesReportedUser““} í
,““í ì
Application““î ü
.““ü †
Current““† ß
.““ß ®

MainWindow““® ≤
,““≤ ≥#
DialogWindowManager““¥ «
.““« »
INFORMATION““» ”
)““” ‘
;““‘ ’
}
”” 
else
‘‘ 
{
’’ !
DialogWindowManager
÷÷ '
.
÷÷' (#
ShowInfoOrErrorWindow
÷÷( =
(
÷÷= >

Properties
÷÷> H
.
÷÷H I
	Resources
÷÷I R
.
÷÷R S
txbErrorTitle
÷÷S `
,
÷÷` a

Properties
÷÷b l
.
÷÷l m
	Resources
÷÷m v
.
÷÷v w#
lblFailToReportAUser÷÷w ã
,÷÷ã å
Application÷÷ç ò
.÷÷ò ô
Current÷÷ô †
.÷÷† °

MainWindow÷÷° ´
,÷÷´ ¨#
DialogWindowManager÷÷≠ ¿
.÷÷¿ ¡
ERROR÷÷¡ ∆
)÷÷∆ «
;÷÷« »
}
◊◊ 
}
ÿÿ 
catch
ŸŸ 
(
ŸŸ '
EndpointNotFoundException
ŸŸ ,
ex
ŸŸ- /
)
ŸŸ/ 0
{
⁄⁄ 
HandleException
€€ 
(
€€  
ex
€€  "
,
€€" #

Properties
€€$ .
.
€€. /
	Resources
€€/ 8
.
€€8 9"
lblFailToReportAUser
€€9 M
+
€€N O
$str
€€P U
+
€€V W

Properties
€€X b
.
€€b c
	Resources
€€c l
.
€€l m"
lblEndPointNotFound€€m Ä
)€€Ä Å
;€€Å Ç
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
ﬂﬂ8 9"
lblFailToReportAUser
ﬂﬂ9 M
+
ﬂﬂN O
$str
ﬂﬂP U
+
ﬂﬂV W

Properties
ﬂﬂX b
.
ﬂﬂb c
	Resources
ﬂﬂc l
.
ﬂﬂl m'
lblComunicationExceptionﬂﬂm Ö
)ﬂﬂÖ Ü
;ﬂﬂÜ á
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
„„8 9"
lblFailToReportAUser
„„9 M
+
„„N O
$str
„„P U
+
„„V W

Properties
„„X b
.
„„b c
	Resources
„„c l
.
„„l m
lblTimeException
„„m }
)
„„} ~
;
„„~ 
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
ÁÁ8 9"
lblFailToReportAUser
ÁÁ9 M
+
ÁÁN O
$str
ÁÁP U
+
ÁÁV W

Properties
ÁÁX b
.
ÁÁb c
	Resources
ÁÁc l
.
ÁÁl m'
lblComunicationExceptionÁÁm Ö
)ÁÁÖ Ü
;ÁÁÜ á
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
ÎÎ8 9"
lblFailToReportAUser
ÎÎ9 M
+
ÎÎN O
$str
ÎÎP U
+
ÎÎV W

Properties
ÎÎX b
.
ÎÎb c
	Resources
ÎÎc l
.
ÎÎl m"
lblEndPointNotFoundÎÎm Ä
)ÎÎÄ Å
;ÎÎÅ Ç
}
ÏÏ 
}
ÌÌ 	
public
ÔÔ 
void
ÔÔ 
EliminateFriend
ÔÔ #
(
ÔÔ# $
int
ÔÔ$ '%
idUserFriendToEliminate
ÔÔ( ?
)
ÔÔ? @
{
 	
try
ÒÒ 
{
ÚÚ (
FriendManagerActionsClient
ÛÛ *(
friendActionsCallBackProxy
ÛÛ+ E
=
ÛÛF G
new
ÛÛH K(
FriendManagerActionsClient
ÛÛL f
(
ÛÛf g
new
ÛÛg j
InstanceContext
ÛÛk z
(
ÛÛz {
this
ÛÛ{ 
)ÛÛ Ä
)ÛÛÄ Å
;ÛÛÅ Ç(
friendActionsCallBackProxy
ÙÙ *
.
ÙÙ* +,
RenewFriendManagerUserCallBack
ÙÙ+ I
(
ÙÙI J
userSingleton
ÙÙJ W
.
ÙÙW X
IdUser
ÙÙX ^
)
ÙÙ^ _
;
ÙÙ_ `1
#FriendManagerActionOperationsClient
ıı 3 
friendActionsProxy
ıı4 F
=
ııG H
new
ııI L
(
ııL M
)
ııM N
;
ııN O 
friendActionsProxy
ˆˆ "
.
ˆˆ" #&
EliminateUserFromFriends
ˆˆ# ;
(
ˆˆ; <
userSingleton
ˆˆ< I
.
ˆˆI J
IdPlayer
ˆˆJ R
,
ˆˆR S%
idUserFriendToEliminate
ˆˆT k
)
ˆˆk l
;
ˆˆl m
String
˜˜ 
userName
˜˜ 
=
˜˜  !
String
˜˜" (
.
˜˜( )
Empty
˜˜) .
;
˜˜. /
foreach
¯¯ 
(
¯¯ 
var
¯¯ 
item
¯¯ !
in
¯¯" $
friends
¯¯% ,
)
¯¯, -
{
˘˘ 
if
˙˙ 
(
˙˙ 
item
˙˙ 
.
˙˙ 
IdUser
˙˙ #
==
˙˙$ &%
idUserFriendToEliminate
˙˙' >
)
˙˙> ?
{
˚˚ 
friends
¸¸ 
.
¸¸  
Remove
¸¸  &
(
¸¸& '
item
¸¸' +
)
¸¸+ ,
;
¸¸, -
userName
˝˝  
=
˝˝! "
item
˝˝# '
.
˝˝' (
UserName
˝˝( 0
;
˝˝0 1
break
˛˛ 
;
˛˛ 
}
ˇˇ 
}
ÄÄ 
if
ÅÅ 
(
ÅÅ 
!
ÅÅ 
otherPeople
ÅÅ  
.
ÅÅ  !
Exists
ÅÅ! '
(
ÅÅ' (
pla
ÅÅ( +
=>
ÅÅ, .
pla
ÅÅ/ 2
.
ÅÅ2 3
UserName
ÅÅ3 ;
.
ÅÅ; <
Equals
ÅÅ< B
(
ÅÅB C
userName
ÅÅC K
)
ÅÅK L
)
ÅÅL M
)
ÅÅM N
{
ÇÇ $
FriendBasicInformation
ÉÉ *
	newFriend
ÉÉ+ 4
=
ÉÉ5 6
new
ÉÉ7 :$
FriendBasicInformation
ÉÉ; Q
(
ÉÉQ R
)
ÉÉR S
;
ÉÉS T
	newFriend
ÑÑ 
.
ÑÑ 
IdUser
ÑÑ $
=
ÑÑ% &%
idUserFriendToEliminate
ÑÑ' >
;
ÑÑ> ?
	newFriend
ÖÖ 
.
ÖÖ 
UserName
ÖÖ &
=
ÖÖ' (
userName
ÖÖ) 1
;
ÖÖ1 2
	newFriend
ÜÜ 
.
ÜÜ "
IdStatusAvailability
ÜÜ 2
=
ÜÜ3 4

NOT_STATUS
ÜÜ5 ?
;
ÜÜ? @
otherPeople
áá 
.
áá  
Add
áá  #
(
áá# $
	newFriend
áá$ -
)
áá- .
;
áá. /
}
àà 
SetCards
ââ 
(
ââ 
)
ââ 
;
ââ 
}
ää 
catch
ãã 
(
ãã '
EndpointNotFoundException
ãã ,
ex
ãã- /
)
ãã/ 0
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
çç8 9&
lblFailToEliminateFriend
çç9 Q
+
ççR S
$str
ççT Y
+
ççZ [

Properties
çç\ f
.
ççf g
	Resources
ççg p
.
ççp q"
lblEndPointNotFoundççq Ñ
)ççÑ Ö
;ççÖ Ü
}
éé 
catch
èè 
(
èè 1
#CommunicationObjectFaultedException
èè 6
ex
èè7 9
)
èè9 :
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
ëë8 9&
lblFailToEliminateFriend
ëë9 Q
+
ëëR S
$str
ëëT Y
+
ëëZ [

Properties
ëë\ f
.
ëëf g
	Resources
ëëg p
.
ëëp q'
lblComunicationExceptionëëq â
)ëëâ ä
;ëëä ã
}
íí 
catch
ìì 
(
ìì 
TimeoutException
ìì #
ex
ìì$ &
)
ìì& '
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
ïï8 9&
lblFailToEliminateFriend
ïï9 Q
+
ïïR S
$str
ïïT Y
+
ïïZ [

Properties
ïï\ f
.
ïïf g
	Resources
ïïg p
.
ïïp q
lblTimeExceptionïïq Å
)ïïÅ Ç
;ïïÇ É
}
ññ 
catch
óó 
(
óó $
CommunicationException
óó )
ex
óó* ,
)
óó, -
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
ôô8 9&
lblFailToEliminateFriend
ôô9 Q
+
ôôR S
$str
ôôT Y
+
ôôZ [

Properties
ôô\ f
.
ôôf g
	Resources
ôôg p
.
ôôp q'
lblComunicationExceptionôôq â
)ôôâ ä
;ôôä ã
}
öö 
catch
õõ 
(
õõ 
SocketException
õõ "
ex
õõ# %
)
õõ% &
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
ùù8 9"
lblFailToReportAUser
ùù9 M
+
ùùN O
$str
ùùP U
+
ùùV W

Properties
ùùX b
.
ùùb c
	Resources
ùùc l
.
ùùl m"
lblEndPointNotFoundùùm Ä
)ùùÄ Å
;ùùÅ Ç
}
ûû 
}
üü 	
public
°° 
void
°° 
SentFriendRequest
°° %
(
°°% &
int
°°& )
idUserRequested
°°* 9
)
°°9 :
{
¢¢ 	
try
££ 
{
§§ (
FriendManagerActionsClient
•• *(
friendActionsCallBackProxy
••+ E
=
••F G
new
••H K(
FriendManagerActionsClient
••L f
(
••f g
new
••g j
InstanceContext
••k z
(
••z {
this
••{ 
)•• Ä
)••Ä Å
;••Å Ç(
friendActionsCallBackProxy
¶¶ *
.
¶¶* +,
RenewFriendManagerUserCallBack
¶¶+ I
(
¶¶I J
userSingleton
¶¶J W
.
¶¶W X
IdUser
¶¶X ^
)
¶¶^ _
;
¶¶_ `1
#FriendManagerActionOperationsClient
®® 3 
friendActionsProxy
®®4 F
=
®®G H
new
®®I L
(
®®L M
)
®®M N
;
®®N O 
friendActionsProxy
©© "
.
©©" #
SendFriendRequest
©©# 4
(
©©4 5
userSingleton
©©5 B
.
©©B C
IdPlayer
©©C K
,
©©K L
idUserRequested
©©M \
)
©©\ ]
;
©©] ^$
FriendBasicInformation
™™ &
item
™™' +
=
™™, -
otherPeople
™™. 9
.
™™9 :
Find
™™: >
(
™™> ?
pla
™™? B
=>
™™C E
pla
™™F I
.
™™I J
IdUser
™™J P
==
™™Q S
idUserRequested
™™T c
)
™™c d
;
™™d e
if
´´ 
(
´´ 
item
´´ 
.
´´ 
IdUser
´´ 
==
´´  "
idUserRequested
´´# 2
)
´´2 3
{
¨¨ 
otherPeople
≠≠ 
.
≠≠  
Remove
≠≠  &
(
≠≠& '
item
≠≠' +
)
≠≠+ ,
;
≠≠, -
}
ÆÆ 
SetCards
ØØ 
(
ØØ 
)
ØØ 
;
ØØ 
}
∞∞ 
catch
±± 
(
±± '
EndpointNotFoundException
±± ,
ex
±±- /
)
±±/ 0
{
≤≤ 
HandleException
≥≥ 
(
≥≥  
ex
≥≥  "
,
≥≥" #

Properties
≥≥$ .
.
≥≥. /
	Resources
≥≥/ 8
.
≥≥8 9+
lblFailToSentTheFriendRequest
≥≥9 V
+
≥≥W X
$str
≥≥Y ^
+
≥≥_ `

Properties
≥≥a k
.
≥≥k l
	Resources
≥≥l u
.
≥≥u v"
lblEndPointNotFound≥≥v â
)≥≥â ä
;≥≥ä ã
}
¥¥ 
catch
µµ 
(
µµ 1
#CommunicationObjectFaultedException
µµ 6
ex
µµ7 9
)
µµ9 :
{
∂∂ 
HandleException
∑∑ 
(
∑∑  
ex
∑∑  "
,
∑∑" #

Properties
∑∑$ .
.
∑∑. /
	Resources
∑∑/ 8
.
∑∑8 9+
lblFailToSentTheFriendRequest
∑∑9 V
+
∑∑W X
$str
∑∑Y ^
+
∑∑_ `

Properties
∑∑a k
.
∑∑k l
	Resources
∑∑l u
.
∑∑u v'
lblComunicationException∑∑v é
)∑∑é è
;∑∑è ê
}
∏∏ 
catch
ππ 
(
ππ 
TimeoutException
ππ #
ex
ππ$ &
)
ππ& '
{
∫∫ 
HandleException
ªª 
(
ªª  
ex
ªª  "
,
ªª" #

Properties
ªª$ .
.
ªª. /
	Resources
ªª/ 8
.
ªª8 9+
lblFailToSentTheFriendRequest
ªª9 V
+
ªªW X
$str
ªªY ^
+
ªª_ `

Properties
ªªa k
.
ªªk l
	Resources
ªªl u
.
ªªu v
lblTimeExceptionªªv Ü
)ªªÜ á
;ªªá à
}
ºº 
catch
ΩΩ 
(
ΩΩ $
CommunicationException
ΩΩ )
ex
ΩΩ* ,
)
ΩΩ, -
{
ææ 
HandleException
øø 
(
øø  
ex
øø  "
,
øø" #

Properties
øø$ .
.
øø. /
	Resources
øø/ 8
.
øø8 9+
lblFailToSentTheFriendRequest
øø9 V
+
øøW X
$str
øøY ^
+
øø_ `

Properties
øøa k
.
øøk l
	Resources
øøl u
.
øøu v'
lblComunicationExceptionøøv é
)øøé è
;øøè ê
}
¿¿ 
catch
¡¡ 
(
¡¡ 
SocketException
¡¡ "
ex
¡¡# %
)
¡¡% &
{
¬¬ 
HandleException
√√ 
(
√√  
ex
√√  "
,
√√" #

Properties
√√$ .
.
√√. /
	Resources
√√/ 8
.
√√8 9"
lblFailToReportAUser
√√9 M
+
√√N O
$str
√√P U
+
√√V W

Properties
√√X b
.
√√b c
	Resources
√√c l
.
√√l m"
lblEndPointNotFound√√m Ä
)√√Ä Å
;√√Å Ç
}
ƒƒ 
}
≈≈ 	
public
«« 
void
«« !
AcceptFriendRequest
«« '
(
««' (
int
««( +
idUserRequesting
««, <
,
««< =
String
««> D
userName
««E M
)
««M N
{
»» 	
try
…… 
{
   (
FriendManagerActionsClient
ÀÀ *(
friendActionsCallBackProxy
ÀÀ+ E
=
ÀÀF G
new
ÀÀH K(
FriendManagerActionsClient
ÀÀL f
(
ÀÀf g
new
ÀÀg j
InstanceContext
ÀÀk z
(
ÀÀz {
this
ÀÀ{ 
)ÀÀ Ä
)ÀÀÄ Å
;ÀÀÅ Ç(
friendActionsCallBackProxy
ÃÃ *
.
ÃÃ* +,
RenewFriendManagerUserCallBack
ÃÃ+ I
(
ÃÃI J
userSingleton
ÃÃJ W
.
ÃÃW X
IdUser
ÃÃX ^
)
ÃÃ^ _
;
ÃÃ_ `1
#FriendManagerActionOperationsClient
ŒŒ 3 
friendActionsProxy
ŒŒ4 F
=
ŒŒG H
new
ŒŒI L
(
ŒŒL M
)
ŒŒM N
;
ŒŒN O 
friendActionsProxy
œœ "
.
œœ" #!
AcceptFriendRequest
œœ# 6
(
œœ6 7
userSingleton
œœ7 D
.
œœD E
IdPlayer
œœE M
,
œœM N
idUserRequesting
œœO _
)
œœ_ `
;
œœ` a
foreach
–– 
(
–– 
var
–– 
item
–– !
in
––" $
friendRequests
––% 3
)
––3 4
{
—— 
if
““ 
(
““ 
item
““ 
.
““ 
IdUser
““ #
==
““$ &
idUserRequesting
““' 7
)
““7 8
{
”” 
friendRequests
‘‘ &
.
‘‘& '
Remove
‘‘' -
(
‘‘- .
item
‘‘. 2
)
‘‘2 3
;
‘‘3 4
break
’’ 
;
’’ 
}
÷÷ 
}
◊◊ 
if
ÿÿ 
(
ÿÿ 
!
ÿÿ 
friends
ÿÿ 
.
ÿÿ 
Exists
ÿÿ #
(
ÿÿ# $
pla
ÿÿ$ '
=>
ÿÿ( *
pla
ÿÿ+ .
.
ÿÿ. /
IdUser
ÿÿ/ 5
==
ÿÿ6 8
idUserRequesting
ÿÿ9 I
)
ÿÿI J
)
ÿÿJ K
{
ŸŸ $
FriendBasicInformation
⁄⁄ *
	newFriend
⁄⁄+ 4
=
⁄⁄5 6
new
⁄⁄7 :$
FriendBasicInformation
⁄⁄; Q
(
⁄⁄Q R
)
⁄⁄R S
;
⁄⁄S T
	newFriend
€€ 
.
€€ 
IdUser
€€ $
=
€€% &
idUserRequesting
€€' 7
;
€€7 8
	newFriend
‹‹ 
.
‹‹ 
UserName
‹‹ &
=
‹‹' (
userName
‹‹) 1
;
‹‹1 2
	newFriend
›› 
.
›› "
IdStatusAvailability
›› 2
=
››3 4

NOT_STATUS
››5 ?
;
››? @
friends
ﬁﬁ 
.
ﬁﬁ 
Add
ﬁﬁ 
(
ﬁﬁ  
	newFriend
ﬁﬁ  )
)
ﬁﬁ) *
;
ﬁﬁ* +
}
ﬂﬂ 
SetCards
‡‡ 
(
‡‡ 
)
‡‡ 
;
‡‡ 
}
·· 
catch
‚‚ 
(
‚‚ '
EndpointNotFoundException
‚‚ ,
ex
‚‚- /
)
‚‚/ 0
{
„„ 
HandleException
‰‰ 
(
‰‰  
ex
‰‰  "
,
‰‰" #

Properties
‰‰$ .
.
‰‰. /
	Resources
‰‰/ 8
.
‰‰8 9&
lblFailToAccepInvitation
‰‰9 Q
+
‰‰R S
$str
‰‰T Y
+
‰‰Z [

Properties
‰‰\ f
.
‰‰f g
	Resources
‰‰g p
.
‰‰p q"
lblEndPointNotFound‰‰q Ñ
)‰‰Ñ Ö
;‰‰Ö Ü
}
ÂÂ 
catch
ÊÊ 
(
ÊÊ 1
#CommunicationObjectFaultedException
ÊÊ 6
ex
ÊÊ7 9
)
ÊÊ9 :
{
ÁÁ 
HandleException
ËË 
(
ËË  
ex
ËË  "
,
ËË" #

Properties
ËË$ .
.
ËË. /
	Resources
ËË/ 8
.
ËË8 9&
lblFailToAccepInvitation
ËË9 Q
+
ËËR S
$str
ËËT Y
+
ËËZ [

Properties
ËË\ f
.
ËËf g
	Resources
ËËg p
.
ËËp q'
lblComunicationExceptionËËq â
)ËËâ ä
;ËËä ã
}
ÈÈ 
catch
ÍÍ 
(
ÍÍ 
TimeoutException
ÍÍ #
ex
ÍÍ$ &
)
ÍÍ& '
{
ÎÎ 
HandleException
ÏÏ 
(
ÏÏ  
ex
ÏÏ  "
,
ÏÏ" #

Properties
ÏÏ$ .
.
ÏÏ. /
	Resources
ÏÏ/ 8
.
ÏÏ8 9&
lblFailToAccepInvitation
ÏÏ9 Q
+
ÏÏR S
$str
ÏÏT Y
+
ÏÏZ [

Properties
ÏÏ\ f
.
ÏÏf g
	Resources
ÏÏg p
.
ÏÏp q
lblTimeExceptionÏÏq Å
)ÏÏÅ Ç
;ÏÏÇ É
}
ÌÌ 
catch
ÓÓ 
(
ÓÓ $
CommunicationException
ÓÓ )
ex
ÓÓ* ,
)
ÓÓ, -
{
ÔÔ 
HandleException
 
(
  
ex
  "
,
" #

Properties
$ .
.
. /
	Resources
/ 8
.
8 9&
lblFailToAccepInvitation
9 Q
+
R S
$str
T Y
+
Z [

Properties
\ f
.
f g
	Resources
g p
.
p q'
lblComunicationExceptionq â
)â ä
;ä ã
}
ÒÒ 
catch
ÚÚ 
(
ÚÚ 
SocketException
ÚÚ "
ex
ÚÚ# %
)
ÚÚ% &
{
ÛÛ 
HandleException
ÙÙ 
(
ÙÙ  
ex
ÙÙ  "
,
ÙÙ" #

Properties
ÙÙ$ .
.
ÙÙ. /
	Resources
ÙÙ/ 8
.
ÙÙ8 9"
lblFailToReportAUser
ÙÙ9 M
+
ÙÙN O
$str
ÙÙP U
+
ÙÙV W

Properties
ÙÙX b
.
ÙÙb c
	Resources
ÙÙc l
.
ÙÙl m"
lblEndPointNotFoundÙÙm Ä
)ÙÙÄ Å
;ÙÙÅ Ç
}
ıı 
}
ˆˆ 	
public
¯¯ 
void
¯¯ "
DeclineFriendRequest
¯¯ (
(
¯¯( )
int
¯¯) ,
idUserRequesting
¯¯- =
,
¯¯= >
String
¯¯? E
userName
¯¯F N
)
¯¯N O
{
˘˘ 	
try
˙˙ 
{
˚˚ (
FriendManagerActionsClient
¸¸ *(
friendActionsCallBackProxy
¸¸+ E
=
¸¸F G
new
¸¸H K(
FriendManagerActionsClient
¸¸L f
(
¸¸f g
new
¸¸g j
InstanceContext
¸¸k z
(
¸¸z {
this
¸¸{ 
)¸¸ Ä
)¸¸Ä Å
;¸¸Å Ç(
friendActionsCallBackProxy
˝˝ *
.
˝˝* +,
RenewFriendManagerUserCallBack
˝˝+ I
(
˝˝I J
userSingleton
˝˝J W
.
˝˝W X
IdUser
˝˝X ^
)
˝˝^ _
;
˝˝_ `1
#FriendManagerActionOperationsClient
ˇˇ 3 
friendActionsProxy
ˇˇ4 F
=
ˇˇG H
new
ˇˇI L
(
ˇˇL M
)
ˇˇM N
;
ˇˇN O 
friendActionsProxy
ÄÄ "
.
ÄÄ" #"
DeclineFriendRequest
ÄÄ# 7
(
ÄÄ7 8
userSingleton
ÄÄ8 E
.
ÄÄE F
IdPlayer
ÄÄF N
,
ÄÄN O
idUserRequesting
ÄÄP `
)
ÄÄ` a
;
ÄÄa b
foreach
ÅÅ 
(
ÅÅ 
var
ÅÅ 
item
ÅÅ !
in
ÅÅ" $
friendRequests
ÅÅ% 3
)
ÅÅ3 4
{
ÇÇ 
if
ÉÉ 
(
ÉÉ 
item
ÉÉ 
.
ÉÉ 
IdUser
ÉÉ #
==
ÉÉ$ &
idUserRequesting
ÉÉ' 7
)
ÉÉ7 8
{
ÑÑ 
friendRequests
ÖÖ &
.
ÖÖ& '
Remove
ÖÖ' -
(
ÖÖ- .
item
ÖÖ. 2
)
ÖÖ2 3
;
ÖÖ3 4
break
ÜÜ 
;
ÜÜ 
}
áá 
}
àà 
if
ââ 
(
ââ 
!
ââ 
otherPeople
ââ  
.
ââ  !
Exists
ââ! '
(
ââ' (
pla
ââ( +
=>
ââ, .
pla
ââ/ 2
.
ââ2 3
IdUser
ââ3 9
==
ââ: <
idUserRequesting
ââ= M
)
ââM N
)
ââN O
{
ää $
FriendBasicInformation
ãã *
	newFriend
ãã+ 4
=
ãã5 6
new
ãã7 :$
FriendBasicInformation
ãã; Q
(
ããQ R
)
ããR S
;
ããS T
	newFriend
åå 
.
åå 
IdUser
åå $
=
åå% &
idUserRequesting
åå' 7
;
åå7 8
	newFriend
çç 
.
çç 
UserName
çç &
=
çç' (
userName
çç) 1
;
çç1 2
	newFriend
éé 
.
éé "
IdStatusAvailability
éé 2
=
éé3 4

NOT_STATUS
éé5 ?
;
éé? @
otherPeople
èè 
.
èè  
Add
èè  #
(
èè# $
	newFriend
èè$ -
)
èè- .
;
èè. /
}
êê 
SetCards
ëë 
(
ëë 
)
ëë 
;
ëë 
}
íí 
catch
ìì 
(
ìì '
EndpointNotFoundException
ìì ,
ex
ìì- /
)
ìì/ 0
{
îî 
HandleException
ïï 
(
ïï  
ex
ïï  "
,
ïï" #

Properties
ïï$ .
.
ïï. /
	Resources
ïï/ 8
.
ïï8 9%
lblFailToDeclineRequest
ïï9 P
+
ïïQ R
$str
ïïS X
+
ïïY Z

Properties
ïï[ e
.
ïïe f
	Resources
ïïf o
.
ïïo p"
lblEndPointNotFoundïïp É
)ïïÉ Ñ
;ïïÑ Ö
}
ññ 
catch
óó 
(
óó 1
#CommunicationObjectFaultedException
óó 6
ex
óó7 9
)
óó9 :
{
òò 
HandleException
ôô 
(
ôô  
ex
ôô  "
,
ôô" #

Properties
ôô$ .
.
ôô. /
	Resources
ôô/ 8
.
ôô8 9%
lblFailToDeclineRequest
ôô9 P
+
ôôQ R
$str
ôôS X
+
ôôY Z

Properties
ôô[ e
.
ôôe f
	Resources
ôôf o
.
ôôo p'
lblComunicationExceptionôôp à
)ôôà â
;ôôâ ä
}
öö 
catch
õõ 
(
õõ 
TimeoutException
õõ #
ex
õõ$ &
)
õõ& '
{
úú 
HandleException
ùù 
(
ùù  
ex
ùù  "
,
ùù" #

Properties
ùù$ .
.
ùù. /
	Resources
ùù/ 8
.
ùù8 9%
lblFailToDeclineRequest
ùù9 P
+
ùùQ R
$str
ùùS X
+
ùùY Z

Properties
ùù[ e
.
ùùe f
	Resources
ùùf o
.
ùùo p
lblTimeExceptionùùp Ä
)ùùÄ Å
;ùùÅ Ç
}
ûû 
catch
üü 
(
üü $
CommunicationException
üü )
ex
üü* ,
)
üü, -
{
†† 
HandleException
°° 
(
°°  
ex
°°  "
,
°°" #

Properties
°°$ .
.
°°. /
	Resources
°°/ 8
.
°°8 9%
lblFailToDeclineRequest
°°9 P
+
°°Q R
$str
°°S X
+
°°Y Z

Properties
°°[ e
.
°°e f
	Resources
°°f o
.
°°o p'
lblComunicationException°°p à
)°°à â
;°°â ä
}
¢¢ 
catch
££ 
(
££ 
SocketException
££ "
ex
££# %
)
££% &
{
§§ 
HandleException
•• 
(
••  
ex
••  "
,
••" #

Properties
••$ .
.
••. /
	Resources
••/ 8
.
••8 9"
lblFailToReportAUser
••9 M
+
••N O
$str
••P U
+
••V W

Properties
••X b
.
••b c
	Resources
••c l
.
••l m"
lblEndPointNotFound••m Ä
)••Ä Å
;••Å Ç
}
¶¶ 
}
ßß 	
public
©© 
void
©© 
ResponseReported
©© $
(
©©$ %
int
©©% (

numReports
©©) 3
)
©©3 4
{
™™ 	!
DialogWindowManager
´´ 
.
´´  #
ShowInfoOrErrorWindow
´´  5
(
´´5 6

Properties
´´6 @
.
´´@ A
	Resources
´´A J
.
´´J K
txbWarningTitle
´´K Z
,
´´Z [

Properties
´´\ f
.
´´f g
	Resources
´´g p
.
´´p q
MessageReported´´q Ä
+´´Å Ç

numReports´´É ç
.´´ç é
ToString´´é ñ
(´´ñ ó
)´´ó ò
,´´ò ô
Application´´ö •
.´´• ¶
Current´´¶ ≠
.´´≠ Æ

MainWindow´´Æ ∏
,´´∏ π#
DialogWindowManager´´∫ Õ
.´´Õ Œ
INFORMATION´´Œ Ÿ
)´´Ÿ ⁄
;´´⁄ €
}
¨¨ 	
public
ÆÆ 
void
ÆÆ #
ResponseRequestAction
ÆÆ )
(
ÆÆ) *
int
ÆÆ* -
idUser
ÆÆ. 4
,
ÆÆ4 5
int
ÆÆ6 9
requestStatus
ÆÆ: G
,
ÆÆG H
string
ÆÆI O
userName
ÆÆP X
)
ÆÆX Y
{
ØØ 	
switch
∞∞ 
(
∞∞ 
requestStatus
∞∞ !
)
∞∞! "
{
±± 
case
≤≤ 
DECLINED_REQUEST
≤≤ %
:
≤≤% &
ManageResponse
≥≥ "
(
≥≥" #
friendRequests
≥≥# 1
,
≥≥1 2
otherPeople
≥≥3 >
,
≥≥> ?
idUser
≥≥? E
,
≥≥E F
userName
≥≥F N
)
≥≥N O
;
≥≥O P&
lblDeclineRequestMessage
¥¥ ,
.
¥¥, -
Content
¥¥- 4
=
¥¥5 6
userName
¥¥7 ?
+
¥¥@ A
$str
¥¥B E
+
¥¥F G

Properties
¥¥H R
.
¥¥R S
	Resources
¥¥S \
.
¥¥\ ]%
MessageFriRequeDeclined
¥¥] t
;
¥¥t u

StartTimer
µµ 
(
µµ 
)
µµ  
;
µµ  !
break
∂∂ 
;
∂∂ 
case
∑∑ 
SEND_REQUEST
∑∑ !
:
∑∑! "
ManageResponse
∏∏ "
(
∏∏" #
otherPeople
∏∏# .
,
∏∏. /
friendRequests
∏∏0 >
,
∏∏> ?
idUser
∏∏@ F
,
∏∏F G
userName
∏∏H P
)
∏∏P Q
;
∏∏Q R
break
ππ 
;
ππ 
case
∫∫ 
ACCEPT_REQUEST
∫∫ #
:
∫∫# $
ManageResponse
ªª "
(
ªª" #
friendRequests
ªª# 1
,
ªª1 2
friends
ªª3 :
,
ªª: ;
idUser
ªª< B
,
ªªB C
userName
ªªD L
)
ªªL M
;
ªªM N
break
ºº 
;
ºº 
}
ΩΩ 
SetCards
ææ 
(
ææ 
)
ææ 
;
ææ 
}
øø 	
private
¡¡ 
void
¡¡ 
ManageResponse
¡¡ #
(
¡¡# $
List
¡¡$ (
<
¡¡( )$
FriendBasicInformation
¡¡) ?
>
¡¡? @
deleteFromList
¡¡A O
,
¡¡O P
List
¡¡Q U
<
¡¡U V$
FriendBasicInformation
¡¡V l
>
¡¡l m
	addToList
¡¡n w
,
¡¡w x
int
¡¡y |
idUserOperation¡¡} å
,¡¡å ç
string¡¡é î
userName¡¡ï ù
)¡¡ù û
{
¬¬ 	
foreach
√√ 
(
√√ 
var
√√ 
item
√√ 
in
√√  
deleteFromList
√√! /
)
√√/ 0
{
ƒƒ 
if
≈≈ 
(
≈≈ 
item
≈≈ 
.
≈≈ 
IdUser
≈≈ 
==
≈≈  "
idUserOperation
≈≈# 2
)
≈≈2 3
{
∆∆ 
deleteFromList
«« "
.
««" #
Remove
««# )
(
««) *
item
««* .
)
««. /
;
««/ 0
break
»» 
;
»» 
}
…… 
}
   
if
ÀÀ 
(
ÀÀ 
!
ÀÀ 
	addToList
ÀÀ 
.
ÀÀ 
Exists
ÀÀ  
(
ÀÀ  !
pla
ÀÀ! $
=>
ÀÀ% '
pla
ÀÀ( +
.
ÀÀ+ ,
IdUser
ÀÀ, 2
==
ÀÀ3 5
idUserOperation
ÀÀ6 E
)
ÀÀE F
)
ÀÀF G
{
ÃÃ $
FriendBasicInformation
ÕÕ &
	newFriend
ÕÕ' 0
=
ÕÕ1 2
new
ÕÕ3 6$
FriendBasicInformation
ÕÕ7 M
(
ÕÕM N
)
ÕÕN O
;
ÕÕO P
	newFriend
ŒŒ 
.
ŒŒ 
IdUser
ŒŒ  
=
ŒŒ! "
idUserOperation
ŒŒ# 2
;
ŒŒ2 3
	newFriend
œœ 
.
œœ 
UserName
œœ "
=
œœ# $
userName
œœ% -
;
œœ- .
	newFriend
–– 
.
–– "
IdStatusAvailability
–– .
=
––/ 0

NOT_STATUS
––1 ;
;
––; <
	addToList
—— 
.
—— 
Add
—— 
(
—— 
	newFriend
—— '
)
——' (
;
——( )
}
““ 
}
”” 	
public
’’ 
void
’’ ,
ResponseEliminationFromFriends
’’ 2
(
’’2 3
int
’’3 6
idUser
’’7 =
)
’’= >
{
÷÷ 	
String
◊◊ 
userName
◊◊ 
=
◊◊ 
String
◊◊ $
.
◊◊$ %
Empty
◊◊% *
;
◊◊* +
foreach
ÿÿ 
(
ÿÿ 
var
ÿÿ 
item
ÿÿ 
in
ÿÿ  
friends
ÿÿ! (
)
ÿÿ( )
{
ŸŸ 
if
⁄⁄ 
(
⁄⁄ 
item
⁄⁄ 
.
⁄⁄ 
IdUser
⁄⁄ 
==
⁄⁄  "
idUser
⁄⁄# )
)
⁄⁄) *
{
€€ 
friends
‹‹ 
.
‹‹ 
Remove
‹‹ "
(
‹‹" #
item
‹‹# '
)
‹‹' (
;
‹‹( )
userName
›› 
=
›› 
item
›› #
.
››# $
UserName
››$ ,
;
››, -
break
ﬁﬁ 
;
ﬁﬁ 
}
ﬂﬂ 
}
‡‡ 
if
·· 
(
·· 
!
·· 
otherPeople
·· 
.
·· 
Exists
·· #
(
··# $
pla
··$ '
=>
··( *
pla
··+ .
.
··. /
IdUser
··/ 5
==
··6 8
idUser
··9 ?
)
··? @
)
··@ A
{
‚‚ $
FriendBasicInformation
„„ &
	newFriend
„„' 0
=
„„1 2
new
„„3 6$
FriendBasicInformation
„„7 M
(
„„M N
)
„„N O
;
„„O P
	newFriend
‰‰ 
.
‰‰ 
IdUser
‰‰  
=
‰‰! "
idUser
‰‰# )
;
‰‰) *
	newFriend
ÂÂ 
.
ÂÂ 
UserName
ÂÂ "
=
ÂÂ# $
userName
ÂÂ% -
;
ÂÂ- .
	newFriend
ÊÊ 
.
ÊÊ "
IdStatusAvailability
ÊÊ .
=
ÊÊ/ 0

NOT_STATUS
ÊÊ1 ;
;
ÊÊ; <
otherPeople
ÁÁ 
.
ÁÁ 
Add
ÁÁ 
(
ÁÁ  
	newFriend
ÁÁ  )
)
ÁÁ) *
;
ÁÁ* +
}
ËË 
SetCards
ÈÈ 
(
ÈÈ 
)
ÈÈ 
;
ÈÈ 
}
ÍÍ 	
private
ÏÏ 
void
ÏÏ %
ClickSearchPlayerButton
ÏÏ ,
(
ÏÏ, -
object
ÏÏ- 3
sender
ÏÏ4 :
,
ÏÏ: ;
RoutedEventArgs
ÏÏ< K
e
ÏÏL M
)
ÏÏM N
{
ÌÌ 	
String
ÓÓ 
userNameToSearch
ÓÓ #
=
ÓÓ$ %
txbUserToSearch
ÓÓ& 5
.
ÓÓ5 6
Text
ÓÓ6 :
;
ÓÓ: ;
if
ÔÔ 
(
ÔÔ 
!
ÔÔ 
userNameToSearch
ÔÔ !
.
ÔÔ! "
Equals
ÔÔ" (
(
ÔÔ( )

Properties
ÔÔ) 3
.
ÔÔ3 4
	Resources
ÔÔ4 =
.
ÔÔ= >
	bttSearch
ÔÔ> G
)
ÔÔG H
)
ÔÔH I
{
 #
stpFrinedsManagerList
ÒÒ %
.
ÒÒ% &
Children
ÒÒ& .
.
ÒÒ. /
Clear
ÒÒ/ 4
(
ÒÒ4 5
)
ÒÒ5 6
;
ÒÒ6 7
List
ÚÚ 
<
ÚÚ $
FriendBasicInformation
ÚÚ +
>
ÚÚ+ ,
listOfUsers
ÚÚ- 8
;
ÚÚ8 9
switch
ÛÛ 
(
ÛÛ 
typeUserConsult
ÛÛ '
)
ÛÛ' (
{
ÙÙ 
case
ıı 

MY_FRIENDS
ıı #
:
ıı# $
listOfUsers
ˆˆ #
=
ˆˆ$ %
new
ˆˆ& )
List
ˆˆ* .
<
ˆˆ. /$
FriendBasicInformation
ˆˆ/ E
>
ˆˆE F
(
ˆˆF G
friends
ˆˆG N
)
ˆˆN O
;
ˆˆO P
break
˜˜ 
;
˜˜ 
case
¯¯ 
FRIENDS_REQUEST
¯¯ (
:
¯¯( )
listOfUsers
˘˘ #
=
˘˘$ %
new
˘˘& )
List
˘˘* .
<
˘˘. /$
FriendBasicInformation
˘˘/ E
>
˘˘E F
(
˘˘F G
friendRequests
˘˘G U
)
˘˘U V
;
˘˘V W
break
˙˙ 
;
˙˙ 
case
˚˚ 
OTHER_PEOPLE
˚˚ %
:
˚˚% &
listOfUsers
¸¸ #
=
¸¸$ %
new
¸¸& )
List
¸¸* .
<
¸¸. /$
FriendBasicInformation
¸¸/ E
>
¸¸E F
(
¸¸F G
otherPeople
¸¸G R
)
¸¸R S
;
¸¸S T
break
˝˝ 
;
˝˝ 
default
˛˛ 
:
˛˛ 
listOfUsers
ˇˇ #
=
ˇˇ$ %
new
ˇˇ& )
List
ˇˇ* .
<
ˇˇ. /$
FriendBasicInformation
ˇˇ/ E
>
ˇˇE F
(
ˇˇF G
)
ˇˇG H
;
ˇˇH I
break
ÄÄ 
;
ÄÄ 
}
ÅÅ 
foreach
ÇÇ 
(
ÇÇ $
FriendBasicInformation
ÇÇ /
item
ÇÇ0 4
in
ÇÇ5 7
listOfUsers
ÇÇ8 C
)
ÇÇC D
{
ÉÉ 
if
ÑÑ 
(
ÑÑ 
item
ÑÑ 
.
ÑÑ 
UserName
ÑÑ %
==
ÑÑ& (
userNameToSearch
ÑÑ) 9
)
ÑÑ9 :
{
ÖÖ 
Border
ÜÜ 
brdCard
ÜÜ &
=
ÜÜ' (
new
ÜÜ) ,
Border
ÜÜ- 3
(
ÜÜ3 4
)
ÜÜ4 5
;
ÜÜ5 6(
FriendCardManagementWindow
áá 2"
friendCardManagement
áá3 G
=
ááH I
new
ááJ M(
FriendCardManagementWindow
ááN h
(
ááh i
item
áái m
.
áám n
IdUser
áán t
,
áát u
item
ááv z
.
ááz {
UserNameáá{ É
,ááÉ Ñ
typeUserConsultááÖ î
,ááî ï
textLeftButtonááñ §
,áá§ •
textRightButtonáá¶ µ
,ááµ ∂
thisáá∑ ª
)ááª º
;ááº Ω
brdCard
àà 
.
àà  
Child
àà  %
=
àà& '"
friendCardManagement
àà( <
;
àà< =#
stpFrinedsManagerList
ââ -
.
ââ- .
Children
ââ. 6
.
ââ6 7
Add
ââ7 :
(
ââ: ; 
SetBorderCardStyle
ââ; M
(
ââM N
brdCard
ââN U
)
ââU V
)
ââV W
;
ââW X
}
ää 
}
ãã 
}
åå 
}
çç 	
private
èè 
void
èè 

StartTimer
èè 
(
èè  
)
èè  !
{
êê 	
leftTime
ëë 
=
ëë 
$num
ëë 
;
ëë 
timer
íí 
=
íí 
new
íí 
DispatcherTimer
íí '
(
íí' (
)
íí( )
;
íí) *
timer
ìì 
.
ìì 
Interval
ìì 
=
ìì 
TimeSpan
ìì %
.
ìì% &
FromSeconds
ìì& 1
(
ìì1 2
$num
ìì2 3
)
ìì3 4
;
ìì4 5
timer
îî 
.
îî 
Tick
îî 
+=
îî 

Timer_Tick
îî $
;
îî$ %
timer
ïï 
.
ïï 
Start
ïï 
(
ïï 
)
ïï 
;
ïï 
}
ññ 	
private
òò 
void
òò 

Timer_Tick
òò 
(
òò  
object
òò  &
sender
òò' -
,
òò- .
	EventArgs
òò/ 8
e
òò9 :
)
òò: ;
{
ôô 	
if
öö 
(
öö 
leftTime
öö 
>
öö 
$num
öö 
)
öö 
{
õõ 
leftTime
úú 
--
úú 
;
úú 
}
ùù 
else
ûû 
{
üü &
lblDeclineRequestMessage
†† (
.
††( )
Content
††) 0
=
††1 2
string
††3 9
.
††9 :
Empty
††: ?
;
††? @
timer
°° 
.
°° 
Stop
°° 
(
°° 
)
°° 
;
°° 
}
¢¢ 
}
££ 	
private
•• 
void
•• 
OverSearchBar
•• "
(
••" #
object
••# )
sender
••* 0
,
••0 1
MouseEventArgs
••2 @
e
••A B
)
••B C
{
¶¶ 	
txbUserToSearch
ßß 
.
ßß 
Text
ßß  
=
ßß! "
string
ßß# )
.
ßß) *
Empty
ßß* /
;
ßß/ 0
}
®® 	
private
™™ 
void
™™ 
HandleException
™™ $
(
™™$ %
	Exception
™™% .
ex
™™/ 1
,
™™1 2
string
™™3 9
errorMessage
™™: F
)
™™F G
{
´´ 	%
ExceptionHandlerForLogs
¨¨ #
.
¨¨# $
LogException
¨¨$ 0
(
¨¨0 1
ex
¨¨1 3
,
¨¨3 4!
ExceptionDictionary
¨¨5 H
.
¨¨H I
FATAL_EXCEPTION
¨¨I X
)
¨¨X Y
;
¨¨Y Z!
DialogWindowManager
≠≠ 
.
≠≠  #
ShowInfoOrErrorWindow
≠≠  5
(
≠≠5 6

Properties
≠≠6 @
.
≠≠@ A
	Resources
≠≠A J
.
≠≠J K
txbErrorTitle
≠≠K X
,
≠≠X Y
errorMessage
≠≠Z f
,
≠≠f g
Application
≠≠h s
.
≠≠s t
Current
≠≠t {
.
≠≠{ |

MainWindow≠≠| Ü
,≠≠Ü á#
DialogWindowManager≠≠à õ
.≠≠õ ú
ERROR≠≠ú °
)≠≠° ¢
;≠≠¢ £
}
ÆÆ 	
private
∞∞ 
void
∞∞ 
ClickBackToMenu
∞∞ $
(
∞∞$ %
object
∞∞% +
sender
∞∞, 2
,
∞∞2 3"
MouseButtonEventArgs
∞∞4 H
e
∞∞I J
)
∞∞J K
{
±± 	
GotoMenu
≤≤ 
(
≤≤ 
)
≤≤ 
;
≤≤ 
}
≥≥ 	
private
µµ 
void
µµ 
GotoMenu
µµ 
(
µµ 
)
µµ 
{
∂∂ 	
try
∑∑ 
{
∏∏ 1
#FriendManagerActionOperationsClient
ππ 3 
friendActionsProxy
ππ4 F
=
ππG H
new
ππI L
(
ππL M
)
ππM N
;
ππN O 
friendActionsProxy
∫∫ "
.
∫∫" #)
UnregisterFriendManagerUser
∫∫# >
(
∫∫> ?
userSingleton
∫∫? L
.
∫∫L M
IdUser
∫∫M S
)
∫∫S T
;
∫∫T U
}
ªª 
catch
ºº 
(
ºº '
EndpointNotFoundException
ºº ,
ex
ºº- /
)
ºº/ 0
{
ΩΩ %
ExceptionHandlerForLogs
ææ '
.
ææ' (
LogException
ææ( 4
(
ææ4 5
ex
ææ5 7
,
ææ7 8!
ExceptionDictionary
ææ9 L
.
ææL M
FATAL_EXCEPTION
ææM \
)
ææ\ ]
;
ææ] ^
}
øø 
catch
¿¿ 
(
¿¿ 1
#CommunicationObjectFaultedException
¿¿ 6
ex
¿¿7 9
)
¿¿9 :
{
¡¡ %
ExceptionHandlerForLogs
¬¬ '
.
¬¬' (
LogException
¬¬( 4
(
¬¬4 5
ex
¬¬5 7
,
¬¬7 8!
ExceptionDictionary
¬¬9 L
.
¬¬L M
FATAL_EXCEPTION
¬¬M \
)
¬¬\ ]
;
¬¬] ^
}
√√ 
catch
ƒƒ 
(
ƒƒ 
TimeoutException
ƒƒ #
ex
ƒƒ$ &
)
ƒƒ& '
{
≈≈ %
ExceptionHandlerForLogs
∆∆ '
.
∆∆' (
LogException
∆∆( 4
(
∆∆4 5
ex
∆∆5 7
,
∆∆7 8!
ExceptionDictionary
∆∆9 L
.
∆∆L M
FATAL_EXCEPTION
∆∆M \
)
∆∆\ ]
;
∆∆] ^
}
«« 
catch
»» 
(
»» $
CommunicationException
»» )
ex
»»* ,
)
»», -
{
…… %
ExceptionHandlerForLogs
   '
.
  ' (
LogException
  ( 4
(
  4 5
ex
  5 7
,
  7 8!
ExceptionDictionary
  9 L
.
  L M
FATAL_EXCEPTION
  M \
)
  \ ]
;
  ] ^
}
ÀÀ 
catch
ÃÃ 
(
ÃÃ 
SocketException
ÃÃ "
ex
ÃÃ# %
)
ÃÃ% &
{
ÕÕ %
ExceptionHandlerForLogs
ŒŒ '
.
ŒŒ' (
LogException
ŒŒ( 4
(
ŒŒ4 5
ex
ŒŒ5 7
,
ŒŒ7 8!
ExceptionDictionary
ŒŒ9 L
.
ŒŒL M
FATAL_EXCEPTION
ŒŒM \
)
ŒŒ\ ]
;
ŒŒ] ^
}
œœ 
MainMenu
–– 
mainMenu
–– 
=
–– 
new
––  #
MainMenu
––$ ,
(
––, -
)
––- .
;
––. /
this
—— 
.
—— 
NavigationService
—— "
.
——" #
Navigate
——# +
(
——+ ,
mainMenu
——, 4
)
——4 5
;
——5 6
NavigationService
““ 
.
““ 
RemoveBackEntry
““ -
(
““- .
)
““. /
;
““/ 0
}
”” 	
public
’’ 
void
’’ &
ResponseNewPlayerJusJoin
’’ ,
(
’’, -
int
’’- 0
idUser
’’1 7
,
’’7 8
string
’’9 ?
userName
’’@ H
)
’’H I
{
÷÷ 	
if
◊◊ 
(
◊◊ 
idUser
◊◊ 
!=
◊◊ 
$num
◊◊ 
&&
◊◊ 
!
◊◊ 
string
◊◊ %
.
◊◊% &
IsNullOrEmpty
◊◊& 3
(
◊◊3 4
userName
◊◊4 <
)
◊◊< =
&&
◊◊> @
!
◊◊A B
otherPeople
◊◊B M
.
◊◊M N
Exists
◊◊N T
(
◊◊T U
pl
◊◊U W
=>
◊◊X Z
pl
◊◊[ ]
.
◊◊] ^
IdUser
◊◊^ d
==
◊◊e g
idUser
◊◊h n
)
◊◊n o
)
◊◊o p
{
ÿÿ 
otherPeople
ŸŸ 
.
ŸŸ 
Add
ŸŸ 
(
ŸŸ  
new
ŸŸ  #$
FriendBasicInformation
ŸŸ$ :
(
ŸŸ; <
)
ŸŸ< =
{
ŸŸ= >
IdUser
ŸŸ> D
=
ŸŸE F
idUser
ŸŸG M
,
ŸŸM N
EmailAddress
ŸŸO [
=
ŸŸ\ ]
string
ŸŸ^ d
.
ŸŸd e
Empty
ŸŸe j
,
ŸŸj k
UserName
ŸŸl t
=
ŸŸu v
userName
ŸŸw 
,ŸŸ Ä$
IdStatusAvailabilityŸŸÅ ï
=ŸŸñ ó
$numŸŸò ô
}ŸŸö õ
)ŸŸõ ú
;ŸŸú ù
SetCards
⁄⁄ 
(
⁄⁄ 
)
⁄⁄ 
;
⁄⁄ 
}
€€ 
}
‹‹ 	
}
ﬁﬁ 
}ﬂﬂ ü„	
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
private88 
TeamChat88 
teamChat88 !
;88! "
public;; 
	GameBoard;; 
(;; 
List;; 
<;; #
QuestionCardInformation;; 5
>;;5 6
	questions;;7 @
,;;@ A
int;;B E
roomCode;;F N
);;N O
{<< 	
InitializeComponent== 
(==  
)==  !
;==! "
currentQuestions>> 
=>> 
	questions>> (
;>>( )
this?? 
.?? 
roomCode?? 
=?? 
roomCode?? $
;??$ %
Loaded@@ 
+=@@ *
LoadedSubscribeCallBackChannel@@ 4
;@@4 5
}AA 	
privateDD 
voidDD *
LoadedSubscribeCallBackChannelDD 3
(DD3 4
objectDD4 :
senderDD; A
,DDA B
RoutedEventArgsDDC R
eDDS T
)DDT U
{EE 	
tryFF 
{GG 
InstanceContextHH 
contextHH  '
=HH( )
newHH* -
InstanceContextHH. =
(HH= >
thisHH> B
)HHB C
;HHC D
GameActionsClientII !"
gameActionsClientProxyII" 8
=II9 :
newII; >
GameActionsClientII? P
(IIP Q
contextIIQ X
)IIX Y
;IIY Z"
gameActionsClientProxyJJ &
.JJ& '#
SubscribeToGameCallBackJJ' >
(JJ> ?
roomCodeJJ? G
,JJG H
userSingletonJJI V
.JJV W
IdUserJJW ]
,JJ] ^
userSingletonJJ_ l
.JJl m
IdCurrentAvatarJJm |
)JJ| }
;JJ} ~
}KK 
catchLL 
(LL %
EndpointNotFoundExceptionLL ,
exLL- /
)LL/ 0
{MM 
HandleExceptionNN 
(NN  
exNN  "
,NN" #

PropertiesNN$ .
.NN. /
	ResourcesNN/ 8
.NN8 9
lblFailToStartGameNN9 K
+NNL M
$strNNN S
+NNT U

PropertiesNNV `
.NN` a
	ResourcesNNa j
.NNj k
lblEndPointNotFoundNNk ~
)NN~ 
;	NN Ä
}OO 
catchPP 
(PP /
#CommunicationObjectFaultedExceptionPP 6
exPP7 9
)PP9 :
{QQ 
HandleExceptionRR 
(RR  
exRR  "
,RR" #

PropertiesRR$ .
.RR. /
	ResourcesRR/ 8
.RR8 9
lblFailToStartGameRR9 K
+RRL M
$strRRN S
+RRT U

PropertiesRRV `
.RR` a
	ResourcesRRa j
.RRj k%
lblComunicationException	RRk É
)
RRÉ Ñ
;
RRÑ Ö
}SS 
catchTT 
(TT 
TimeoutExceptionTT #
exTT$ &
)TT& '
{UU 
HandleExceptionVV 
(VV  
exVV  "
,VV" #

PropertiesVV$ .
.VV. /
	ResourcesVV/ 8
.VV8 9
lblFailToStartGameVV9 K
+VVL M
$strVVN S
+VVT U

PropertiesVVV `
.VV` a
	ResourcesVVa j
.VVj k
lblTimeExceptionVVk {
)VV{ |
;VV| }
}WW 
catchXX 
(XX "
CommunicationExceptionXX )
exXX* ,
)XX, -
{YY 
HandleExceptionZZ 
(ZZ  
exZZ  "
,ZZ" #

PropertiesZZ$ .
.ZZ. /
	ResourcesZZ/ 8
.ZZ8 9
lblFailToStartGameZZ9 K
+ZZL M
$strZZN S
+ZZT U

PropertiesZZV `
.ZZ` a
	ResourcesZZa j
.ZZj k
lblWithoutConectionZZk ~
)ZZ~ 
;	ZZ Ä
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
.^^8 9
lblFailToStartGame^^9 K
+^^L M
$str^^N S
+^^T U

Properties^^V `
.^^` a
	Resources^^a j
.^^j k
lblEndPointNotFound^^k ~
)^^~ 
;	^^ Ä
}__ 
}`` 	
publicbb 
asyncbb 
voidbb 1
%ReceiveNotificationEverybodyIsPlayingbb ?
(bb? @
boolbb@ D
isEveryBodyPlayingbbE W
,bbW X
intbbY \

isYourTurnbb] g
,bbg h%
PlayerInGameDataContract	bbi Å
[
bbÅ Ç
]
bbÇ É
playerInGame
bbÑ ê
)
bbê ë
{cc 	
trydd 
{ee 
currentTurnff 
=ff 
$numff 
;ff  
yourTurngg 
=gg 

isYourTurngg %
;gg% &
playersInGamehh 
=hh 
playerInGamehh  ,
.hh, -
ToListhh- 3
(hh3 4
)hh4 5
;hh5 6
awaitii 
PrepareWindowAsyncii )
(ii) *
)ii* +
;ii+ ,
ShowIfItsYourTurnjj !
(jj! "
)jj" #
;jj# $
}kk 
catchll 
(ll %
EndpointNotFoundExceptionll ,
exll- /
)ll/ 0
{mm 
HandleExceptionnn 
(nn  
exnn  "
,nn" #

Propertiesnn$ .
.nn. /
	Resourcesnn/ 8
.nn8 9
lblFailToStartGamenn9 K
+nnL M
$strnnN S
+nnT U

PropertiesnnV `
.nn` a
	Resourcesnna j
.nnj k
lblEndPointNotFoundnnk ~
)nn~ 
;	nn Ä
}oo 
catchpp 
(pp /
#CommunicationObjectFaultedExceptionpp 6
expp7 9
)pp9 :
{qq 
HandleExceptionrr 
(rr  
exrr  "
,rr" #

Propertiesrr$ .
.rr. /
	Resourcesrr/ 8
.rr8 9
lblFailToStartGamerr9 K
+rrL M
$strrrN S
+rrT U

PropertiesrrV `
.rr` a
	Resourcesrra j
.rrj k%
lblComunicationException	rrk É
)
rrÉ Ñ
;
rrÑ Ö
}ss 
catchtt 
(tt 
TimeoutExceptiontt #
extt$ &
)tt& '
{uu 
HandleExceptionvv 
(vv  
exvv  "
,vv" #

Propertiesvv$ .
.vv. /
	Resourcesvv/ 8
.vv8 9
lblFailToStartGamevv9 K
+vvL M
$strvvN S
+vvT U

PropertiesvvV `
.vv` a
	Resourcesvva j
.vvj k
lblTimeExceptionvvk {
)vv{ |
;vv| }
}ww 
catchxx 
(xx "
CommunicationExceptionxx )
exxx* ,
)xx, -
{yy 
HandleExceptionzz 
(zz  
exzz  "
,zz" #

Propertieszz$ .
.zz. /
	Resourceszz/ 8
.zz8 9
lblFailToStartGamezz9 K
+zzL M
$strzzN S
+zzT U

PropertieszzV `
.zz` a
	Resourceszza j
.zzj k
lblWithoutConectionzzk ~
)zz~ 
;	zz Ä
}{{ 
catch|| 
(|| 
SocketException|| "
ex||# %
)||% &
{}} 
HandleException~~ 
(~~  
ex~~  "
,~~" #

Properties~~$ .
.~~. /
	Resources~~/ 8
.~~8 9
lblFailToStartGame~~9 K
+~~L M
$str~~N S
+~~T U

Properties~~V `
.~~` a
	Resources~~a j
.~~j k
lblEndPointNotFound~~k ~
)~~~ 
;	~~ Ä
} 
}
ÄÄ 	
private
ÇÇ 
async
ÇÇ 
Task
ÇÇ  
PrepareWindowAsync
ÇÇ -
(
ÇÇ- .
)
ÇÇ. /
{
ÉÉ 	!
VerifyThereAreTeams
ÑÑ 
(
ÑÑ  
)
ÑÑ  !
;
ÑÑ! "1
#PrepareListOfQuestionsAndCategories
ÖÖ /
(
ÖÖ/ 0
)
ÖÖ0 1
;
ÖÖ1 2'
CreatePlayersScoresBoards
ÜÜ %
(
ÜÜ% &
)
ÜÜ& '
;
ÜÜ' (
if
áá 
(
áá 
IsLoaded
áá 
)
áá 
{
àà 
await
ââ (
BeginHostPresentationAsync
ââ 0
(
ââ0 1
)
ââ1 2
;
ââ2 3
}
ää 
if
ãã 
(
ãã 
itsTeamGame
ãã 
)
ãã 
{
åå 
var
çç 
player
çç 
=
çç 
playersInGame
çç *
.
çç* +
Find
çç+ /
(
çç/ 0
pl
çç0 2
=>
çç3 5
pl
çç6 8
.
çç8 9
IdUser
çç9 ?
==
çç@ B
userSingleton
ççC P
.
ççP Q
IdUser
ççQ W
)
ççW X
;
ççX Y
var
éé 

playerTeam
éé 
=
éé  
playersInGame
éé! .
.
éé. /
Find
éé/ 3
(
éé3 4
pla
éé4 7
=>
éé8 :
pla
éé; >
.
éé> ?
SideTeam
éé? G
==
ééH J
player
ééK Q
.
ééQ R
SideTeam
ééR Z
&&
éé[ ]
pla
éé^ a
.
ééa b
IdUser
ééb h
!=
ééi k
userSingleton
éél y
.
ééy z
IdUserééz Ä
)ééÄ Å
;ééÅ Ç
if
èè 
(
èè 

playerTeam
èè 
!=
èè !
null
èè" &
)
èè& '
{
èè( )
teamChat
êê 
=
êê 
new
êê "
TeamChat
êê# +
(
êê+ ,
this
êê, 0
,
êê0 1

playerTeam
êê2 <
.
êê< =
IdUser
êê= C
)
êêC D
;
êêD E
}
ëë 
}
íí 
PrepareRoundOne
ìì 
(
ìì 
)
ìì 
;
ìì 
}
îî 	
private
ññ 
void
ññ !
VerifyThereAreTeams
ññ (
(
ññ( )
)
ññ) *
{
óó 	
if
òò 
(
òò 
playersInGame
òò 
.
òò 
Exists
òò $
(
òò$ %
pla
òò% (
=>
òò) +
pla
òò, /
.
òò/ 0
SideTeam
òò0 8
==
òò9 ;
$num
òò< =
)
òò= >
)
òò> ?
{
ôô 
itsTeamGame
öö 
=
öö 
true
öö "
;
öö" #
imgChatIcon
õõ 
.
õõ 

Visibility
õõ &
=
õõ' (

Visibility
õõ) 3
.
õõ3 4
Visible
õõ4 ;
;
õõ; <
}
úú 
else
ùù 
{
ûû 
itsTeamGame
üü 
=
üü 
false
üü #
;
üü# $
}
†† 
}
°° 	
private
££ 
void
££ 1
#PrepareListOfQuestionsAndCategories
££ 8
(
££8 9
)
££9 :
{
§§ 	
questionsRoundOne
•• 
=
•• 
currentQuestions
••  0
.
••0 1
Where
••1 6
(
••6 7
(
••7 8
currentQuestion
••8 G
)
••G H
=>
••I K
currentQuestion
••L [
.
••[ \
NumberOfRound
••\ i
==
••j l
	ROUND_ONE
••m v
)
••v w
.
••w x
ToList
••x ~
(
••~ 
)•• Ä
;••Ä Å
questionsRoundTwo
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
	ROUND_TWO
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
;¶¶Ä Å
finalQuestion
ßß 
=
ßß 
currentQuestions
ßß ,
.
ßß, -
Find
ßß- 1
(
ßß1 2
(
ßß2 3
currentQuestion
ßß3 B
)
ßßB C
=>
ßßD F
currentQuestion
ßßG V
.
ßßV W
NumberOfRound
ßßW d
==
ßße g
ROUND_THREE
ßßh s
)
ßßs t
;
ßßt u
var
®® 
categoriesRound1
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
	ROUND_ONE
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
categoriesRound1
©©  0
,
©©0 1$
categoriesOfGameRound1
©©2 H
)
©©H I
;
©©I J
var
™™ 
categoriesRound2
™™  
=
™™! "
currentQuestions
™™# 3
.
™™3 4
Where
™™4 9
(
™™9 :
currentQuestion
™™: I
=>
™™J L
currentQuestion
™™M \
.
™™\ ]
NumberOfRound
™™] j
==
™™k m
	ROUND_TWO
™™n w
)
™™w x
.
™™x y
Select
™™y 
(™™ Ä
currentQuestion™™Ä è
=>™™ê í
currentQuestion™™ì ¢
.™™¢ £"
CategoryOfQuestion™™£ µ
)™™µ ∂
.™™∂ ∑
ToList™™∑ Ω
(™™Ω æ
)™™æ ø
;™™ø ¿!
GetUniqueCategories
´´ 
(
´´  
categoriesRound2
´´  0
,
´´0 1$
categoriesOfGameRound2
´´2 H
)
´´H I
;
´´I J
}
¨¨ 	
private
ÆÆ 
void
ÆÆ !
GetUniqueCategories
ÆÆ (
(
ÆÆ( )
List
ÆÆ) -
<
ÆÆ- .
CategoryPojo
ÆÆ. :
>
ÆÆ: ;$
categoriesRepeatedList
ÆÆ< R
,
ÆÆR S
List
ÆÆT X
<
ÆÆX Y
CategoryPojo
ÆÆY e
>
ÆÆe f 
uniqueCategoryList
ÆÆg y
)
ÆÆy z
{
ØØ 	
foreach
∞∞ 
(
∞∞ 
var
∞∞ 
categoryToProve
∞∞ (
in
∞∞) +$
categoriesRepeatedList
∞∞, B
)
∞∞B C
{
±± 
bool
≤≤ 
exist
≤≤ 
=
≤≤ 
false
≤≤ "
;
≤≤" #
foreach
≥≥ 
(
≥≥ 
var
≥≥ 
CategorySaved
≥≥ *
in
≥≥+ - 
uniqueCategoryList
≥≥. @
)
≥≥@ A
{
¥¥ 
if
∂∂ 
(
∂∂ 
categoryToProve
∂∂ '
.
∂∂' (

IdCategory
∂∂( 2
==
∂∂3 5
CategorySaved
∂∂6 C
.
∂∂C D

IdCategory
∂∂D N
)
∂∂N O
{
∑∑ 
exist
∏∏ 
=
∏∏ 
true
∏∏  $
;
∏∏$ %
break
ππ 
;
ππ 
}
∫∫ 
}
ªª 
if
ºº 
(
ºº 
!
ºº 
exist
ºº 
)
ºº 
{
ΩΩ  
uniqueCategoryList
ææ &
.
ææ& '
Add
ææ' *
(
ææ* +
categoryToProve
ææ+ :
)
ææ: ;
;
ææ; <
}
øø 
}
¿¿ 
}
¡¡ 	
private
√√ 
void
√√ '
CreatePlayersScoresBoards
√√ .
(
√√. /
)
√√/ 0
{
ƒƒ 	

stpPlayers
≈≈ 
.
≈≈ 
Children
≈≈ 
.
≈≈  
Clear
≈≈  %
(
≈≈% &
)
≈≈& '
;
≈≈' (
if
∆∆ 
(
∆∆ 
itsTeamGame
∆∆ 
)
∆∆ 
{
«« 
team1
»» 
=
»» 
playersInGame
»» %
.
»»% &
Where
»»& +
(
»»+ ,
pla
»», /
=>
»»0 2
pla
»»3 6
.
»»6 7
SideTeam
»»7 ?
==
»»@ B
$num
»»C D
)
»»D E
.
»»E F
ToList
»»F L
(
»»L M
)
»»M N
;
»»N O
team2
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
……N O

stpPlayers
   
.
   
Children
   #
.
  # $
Add
  $ '
(
  ' (
new
  ( +
GameTeamCard
  , 8
(
  8 9
team1
  9 >
[
  > ?
$num
  ? @
]
  @ A
,
  A B
team1
  C H
[
  H I
$num
  I J
]
  J K
)
  K L
)
  L M
;
  M N

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
team2
ÀÀ9 >
[
ÀÀ> ?
$num
ÀÀ? @
]
ÀÀ@ A
,
ÀÀA B
team2
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
ÀÀM N
	team1Name
ÃÃ 
=
ÃÃ 
$str
ÃÃ 
+
ÃÃ  
team1
ÃÃ  %
[
ÃÃ% &
$num
ÃÃ& '
]
ÃÃ' (
.
ÃÃ( )
IdUser
ÃÃ) /
.
ÃÃ/ 0
ToString
ÃÃ0 8
(
ÃÃ8 9
)
ÃÃ9 :
+
ÃÃ: ;
team1
ÃÃ< A
[
ÃÃA B
$num
ÃÃB C
]
ÃÃC D
.
ÃÃD E
IdUser
ÃÃE K
.
ÃÃK L
ToString
ÃÃL T
(
ÃÃT U
)
ÃÃU V
;
ÃÃV W
	team2Name
ÕÕ 
=
ÕÕ 
$str
ÕÕ 
+
ÕÕ  !
team2
ÕÕ" '
[
ÕÕ' (
$num
ÕÕ( )
]
ÕÕ) *
.
ÕÕ* +
IdUser
ÕÕ+ 1
.
ÕÕ1 2
ToString
ÕÕ2 :
(
ÕÕ: ;
)
ÕÕ; <
+
ÕÕ< =
team2
ÕÕ> C
[
ÕÕC D
$num
ÕÕD E
]
ÕÕE F
.
ÕÕF G
IdUser
ÕÕG M
.
ÕÕM N
ToString
ÕÕN V
(
ÕÕV W
)
ÕÕW X
;
ÕÕX Y
}
ŒŒ 
else
œœ 
{
–– 
foreach
—— 
(
—— 
var
—— 
item
—— !
in
——" $
playersInGame
——% 2
)
——2 3
{
““ 
GamePlayerCard
”” "

playerCard
””# -
=
””. /
new
””0 3
GamePlayerCard
””4 B
(
””B C
item
””C G
)
””G H
;
””H I

stpPlayers
‘‘ 
.
‘‘ 
Children
‘‘ '
.
‘‘' (
Add
‘‘( +
(
‘‘+ ,

playerCard
‘‘, 6
)
‘‘6 7
;
‘‘7 8
}
’’ 
}
÷÷ 
}
◊◊ 	
private
ŸŸ 
void
ŸŸ 
PrepareRoundOne
ŸŸ #
(
ŸŸ# $
)
ŸŸ$ %
{
⁄⁄ 	#
SetInformationInCards
€€ !
(
€€! "$
categoriesOfGameRound1
€€" 8
,
€€8 9
questionsRoundOne
€€: K
)
€€K L
;
€€L M
currentRound
‹‹ 
=
‹‹ 
	ROUND_ONE
‹‹ $
;
‹‹$ %
}
›› 	
private
ﬂﬂ 
async
ﬂﬂ 
Task
ﬂﬂ 
PrepareRoundTwo
ﬂﬂ *
(
ﬂﬂ* +
)
ﬂﬂ+ ,
{
‡‡ 	
wrpBoardOfCards
·· 
.
·· 
Children
·· $
.
··$ %
Clear
··% *
(
··* +
)
··+ ,
;
··, -
await
‚‚ 3
%BeginHostPresentationSecondRoundAsync
‚‚ 7
(
‚‚7 8
)
‚‚8 9
;
‚‚9 :#
SetInformationInCards
„„ !
(
„„! "$
categoriesOfGameRound2
„„" 8
,
„„8 9
questionsRoundTwo
„„: K
)
„„K L
;
„„L M
}
‰‰ 	
private
ÊÊ 
async
ÊÊ 
Task
ÊÊ 
PrepareLastRound
ÊÊ +
(
ÊÊ+ ,
)
ÊÊ, -
{
ÁÁ 	
wrpBoardOfCards
ËË 
.
ËË 
Children
ËË $
.
ËË$ %
Clear
ËË% *
(
ËË* +
)
ËË+ ,
;
ËË, -
wrpBoardOfCards
ÈÈ 
.
ÈÈ 

Visibility
ÈÈ &
=
ÈÈ' (

Visibility
ÈÈ) 3
.
ÈÈ3 4
	Collapsed
ÈÈ4 =
;
ÈÈ= >
await
ÍÍ ,
BeginHostPresentationLastRound
ÍÍ 0
(
ÍÍ0 1
)
ÍÍ1 2
;
ÍÍ2 3
}
ÎÎ 	
private
ÌÌ 
void
ÌÌ #
SetInformationInCards
ÌÌ *
(
ÌÌ* +
List
ÌÌ+ /
<
ÌÌ/ 0
CategoryPojo
ÌÌ0 <
>
ÌÌ< =
categoriesOfGame
ÌÌ> N
,
ÌÌN O
List
ÌÌP T
<
ÌÌT U%
QuestionCardInformation
ÌÌU l
>
ÌÌl m
questionsOfRound
ÌÌn ~
)
ÌÌ~ 
{
ÓÓ 	
foreach
ÔÔ 
(
ÔÔ 
var
ÔÔ 
category
ÔÔ !
in
ÔÔ" $
categoriesOfGame
ÔÔ% 5
)
ÔÔ5 6
{
 
GameCategoryCard
ÒÒ  
categoryCard
ÒÒ! -
=
ÒÒ. /
new
ÒÒ0 3
(
ÒÒ3 4!
GetSpecificResource
ÒÒ4 G
.
ÒÒG H,
GetEnglishOrSpanishDescription
ÒÒH f
(
ÒÒf g
category
ÒÒg o
.
ÒÒo p)
EnglishCategoryDescriptionÒÒp ä
,ÒÒä ã
categoryÒÒå î
.ÒÒî ï*
SpanishCategoryDescriptionÒÒï Ø
)ÒÒØ ∞
)ÒÒ∞ ±
;ÒÒ± ≤
wrpBoardOfCards
ÚÚ 
.
ÚÚ  
Children
ÚÚ  (
.
ÚÚ( )
Add
ÚÚ) ,
(
ÚÚ, -
categoryCard
ÚÚ- 9
)
ÚÚ9 :
;
ÚÚ: ;
var
ÛÛ !
questionsOfCategory
ÛÛ '
=
ÛÛ( )
questionsOfRound
ÛÛ* :
.
ÛÛ: ;
Where
ÛÛ; @
(
ÛÛ@ A
quest
ÛÛA F
=>
ÛÛG I
quest
ÛÛJ O
.
ÛÛO P%
SpecificQuestionDetails
ÛÛP g
.
ÛÛg h
IdCategoryBelong
ÛÛh x
==
ÛÛy {
categoryÛÛ| Ñ
.ÛÛÑ Ö

IdCategoryÛÛÖ è
)ÛÛè ê
.ÛÛê ë
ToListÛÛë ó
(ÛÛó ò
)ÛÛò ô
;ÛÛô ö
foreach
ÙÙ 
(
ÙÙ 
var
ÙÙ 
questionCard
ÙÙ )
in
ÙÙ* ,!
questionsOfCategory
ÙÙ- @
)
ÙÙ@ A
{
ıı 
GamePointsCard
ˆˆ "

pointsCard
ˆˆ# -
=
ˆˆ. /
new
ˆˆ0 3
(
ˆˆ3 4
questionCard
ˆˆ4 @
,
ˆˆ@ A
this
ˆˆB F
)
ˆˆF G
;
ˆˆG H
wrpBoardOfCards
˜˜ #
.
˜˜# $
Children
˜˜$ ,
.
˜˜, -
Add
˜˜- 0
(
˜˜0 1

pointsCard
˜˜1 ;
)
˜˜; <
;
˜˜< =
}
¯¯ 
}
˘˘ 
}
˙˙ 	
private
¸¸ 
async
¸¸ 
Task
¸¸ (
BeginHostPresentationAsync
¸¸ 5
(
¸¸5 6
)
¸¸6 7
{
˝˝ 	
wrpBoardOfCards
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
˛˛3 4
Hidden
˛˛4 :
;
˛˛: ;
stpTurnLigth
ˇˇ 
.
ˇˇ 

Visibility
ˇˇ #
=
ˇˇ$ %

Visibility
ˇˇ& 0
.
ˇˇ0 1
Hidden
ˇˇ1 7
;
ˇˇ7 8
grdPresentation
ÄÄ 
.
ÄÄ 

Visibility
ÄÄ &
=
ÄÄ' (

Visibility
ÄÄ) 3
.
ÄÄ3 4
Visible
ÄÄ4 ;
;
ÄÄ; <
await
ÅÅ &
ShowPresentationOneAsync
ÅÅ *
(
ÅÅ* +
)
ÅÅ+ ,
;
ÅÅ, -
wrpBoardOfCards
ÇÇ 
.
ÇÇ 

Visibility
ÇÇ &
=
ÇÇ' (

Visibility
ÇÇ) 3
.
ÇÇ3 4
Visible
ÇÇ4 ;
;
ÇÇ; <
stpTurnLigth
ÉÉ 
.
ÉÉ 

Visibility
ÉÉ #
=
ÉÉ$ %

Visibility
ÉÉ& 0
.
ÉÉ0 1
Visible
ÉÉ1 8
;
ÉÉ8 9
grdPresentation
ÑÑ 
.
ÑÑ 

Visibility
ÑÑ &
=
ÑÑ' (

Visibility
ÑÑ) 3
.
ÑÑ3 4
	Collapsed
ÑÑ4 =
;
ÑÑ= >
}
ÖÖ 	
private
áá 
async
áá 
Task
áá &
ShowPresentationOneAsync
áá 3
(
áá3 4
)
áá4 5
{
àà 	
string
ââ 
hostPath
ââ 
=
ââ !
GetSpecificResource
ââ 1
.
ââ1 2
GetHosImage
ââ2 =
(
ââ= >
$num
ââ> ?
)
ââ? @
;
ââ@ A
imgHostImage
ää 
.
ää 
Source
ää 
=
ää  !
new
ää" %
BitmapImage
ää& 1
(
ää1 2
new
ää2 5
Uri
ää6 9
(
ää9 :
hostPath
ää: B
,
ääB C
UriKind
ääD K
.
ääK L
Absolute
ääL T
)
ääT U
)
ääU V
;
ääV W
string
ãã 
hostName
ãã 
=
ãã 
System
ãã $
.
ãã$ %
IO
ãã% '
.
ãã' (
Path
ãã( ,
.
ãã, -)
GetFileNameWithoutExtension
ãã- H
(
ããH I
hostPath
ããI Q
)
ããQ R
;
ããR S
txbHostMessage
åå 
.
åå 
Text
åå 
=
åå  !

Properties
åå" ,
.
åå, -
	Resources
åå- 6
.
åå6 7$
HostRound1Presentation
åå7 M
.
ååM N
Replace
ååN U
(
ååU V
$str
ååV Y
,
ååY Z
hostName
åå[ c
)
ååc d
;
ååd e
await
çç 
Task
çç 
.
çç 
Delay
çç 
(
çç 
$num
çç !
)
çç! "
;
çç" #
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
Task
òò 3
%BeginHostPresentationSecondRoundAsync
òò @
(
òò@ A
)
òòA B
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
ùù; <
await
ûû &
ShowPresentationTwoAsync
ûû *
(
ûû* +
)
ûû+ ,
;
ûû, -
wrpBoardOfCards
üü 
.
üü 

Visibility
üü &
=
üü' (

Visibility
üü) 3
.
üü3 4
Visible
üü4 ;
;
üü; <
stpTurnLigth
†† 
.
†† 

Visibility
†† #
=
††$ %

Visibility
††& 0
.
††0 1
Visible
††1 8
;
††8 9
grdPresentation
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
°°3 4
	Collapsed
°°4 =
;
°°= >
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
¶¶ 	
txbHostMessage
ßß 
.
ßß 
Text
ßß 
=
ßß  !

Properties
ßß" ,
.
ßß, -
	Resources
ßß- 6
.
ßß6 7#
HostRoun2Presentation
ßß7 L
;
ßßL M
await
®® 
Task
®® 
.
®® 
Delay
®® 
(
®® 
$num
®® !
)
®®! "
;
®®" #
string
©© $
categoriesPresentation
©© )
=
©©* +

Properties
©©, 6
.
©©6 7
	Resources
©©7 @
.
©©@ A(
HostCategoriesPresentation
©©A [
;
©©[ \$
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
´´D G
,
´´G H!
GetSpecificResource
´´I \
.
´´\ ],
GetEnglishOrSpanishDescription
´´] {
(
´´{ |%
categoriesOfGameRound2´´| í
[´´í ì
$num´´ì î
]´´î ï
.´´ï ñ*
EnglishCategoryDescription´´ñ ∞
,´´∞ ±&
categoriesOfGameRound2´´≤ »
[´´» …
$num´´…  
]´´  À
.´´À Ã*
SpanishCategoryDescription´´Ã Ê
)´´Ê Á
)´´Á Ë
;´´Ë È$
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
¨¨G H!
GetSpecificResource
¨¨I \
.
¨¨\ ],
GetEnglishOrSpanishDescription
¨¨] {
(
¨¨{ |%
categoriesOfGameRound2¨¨| í
[¨¨í ì
$num¨¨ì î
]¨¨î ï
.¨¨ï ñ*
EnglishCategoryDescription¨¨ñ ∞
,¨¨∞ ±&
categoriesOfGameRound2¨¨≤ »
[¨¨» …
$num¨¨…  
]¨¨  À
.¨¨À Ã*
SpanishCategoryDescription¨¨Ã Ê
)¨¨Ê Á
)¨¨Á Ë
;¨¨Ë È$
categoriesPresentation
≠≠ "
=
≠≠# $$
categoriesPresentation
≠≠% ;
.
≠≠; <
Replace
≠≠< C
(
≠≠C D
$str
≠≠D I
,
≠≠I J
Environment
≠≠K V
.
≠≠V W
NewLine
≠≠W ^
)
≠≠^ _
;
≠≠_ `$
categoriesPresentation
ÆÆ "
=
ÆÆ# $$
categoriesPresentation
ÆÆ% ;
.
ÆÆ; <
Replace
ÆÆ< C
(
ÆÆC D
$str
ÆÆD G
,
ÆÆG H
	ROUND_TWO
ÆÆI R
.
ÆÆR S
ToString
ÆÆS [
(
ÆÆ[ \
)
ÆÆ\ ]
)
ÆÆ] ^
;
ÆÆ^ _
txbHostMessage
ØØ 
.
ØØ 
Text
ØØ 
=
ØØ  !$
categoriesPresentation
ØØ" 8
;
ØØ8 9
await
∞∞ 
Task
∞∞ 
.
∞∞ 
Delay
∞∞ 
(
∞∞ 
$num
∞∞ !
)
∞∞! "
;
∞∞" #
}
±± 	
private
≥≥ 
async
≥≥ 
Task
≥≥ ,
BeginHostPresentationLastRound
≥≥ 9
(
≥≥9 :
)
≥≥: ;
{
¥¥ 	
await
µµ (
ShowPresentationThreeAsync
µµ ,
(
µµ, -
)
µµ- .
;
µµ. /
grdBet
∂∂ 
.
∂∂ 

Visibility
∂∂ 
=
∂∂ 

Visibility
∂∂  *
.
∂∂* +
Visible
∂∂+ 2
;
∂∂2 3
grdPresentation
∑∑ 
.
∑∑ 

Visibility
∑∑ &
=
∑∑' (

Visibility
∑∑) 3
.
∑∑3 4
	Collapsed
∑∑4 =
;
∑∑= >
List
∏∏ 
<
∏∏ 
Border
∏∏ 
>
∏∏ 
playersBorders
∏∏ '
=
∏∏( )

stpPlayers
∏∏* 4
.
∏∏4 5
Children
∏∏5 =
.
∏∏= >
OfType
∏∏> D
<
∏∏D E
Border
∏∏E K
>
∏∏K L
(
∏∏L M
)
∏∏M N
.
∏∏N O
ToList
∏∏O U
(
∏∏U V
)
∏∏V W
;
∏∏W X
if
ππ 
(
ππ 
itsTeamGame
ππ 
)
ππ 
{
∫∫ 
string
ªª 
nameOfBorder
ªª #
;
ªª# $
var
ºº 
playerInGame
ºº  
=
ºº! "
playersInGame
ºº# 0
.
ºº0 1
Find
ºº1 5
(
ºº5 6
pl
ºº6 8
=>
ºº9 ;
pl
ºº< >
.
ºº> ?
IdUser
ºº? E
==
ººF H
userSingleton
ººI V
.
ººV W
IdUser
ººW ]
)
ºº] ^
;
ºº^ _
if
ΩΩ 
(
ΩΩ 
playerInGame
ΩΩ  
!=
ΩΩ! #
null
ΩΩ$ (
&&
ΩΩ) +
playerInGame
ΩΩ, 8
.
ΩΩ8 9
SideTeam
ΩΩ9 A
==
ΩΩB D
$num
ΩΩE F
)
ΩΩF G
{
ææ 
nameOfBorder
øø  
=
øø! "
	team1Name
øø# ,
;
øø, -
}
¿¿ 
else
¡¡ 
{
¬¬ 
nameOfBorder
√√  
=
√√! "
	team2Name
√√# ,
;
√√, -
}
ƒƒ 
GameTeamCard
≈≈ #
currentPointsOfPlayer
≈≈ 2
=
≈≈3 4
(
≈≈5 6
GameTeamCard
≈≈6 B
)
≈≈B C

stpPlayers
≈≈C M
.
≈≈M N
Children
≈≈N V
.
≈≈V W
OfType
≈≈W ]
<
≈≈] ^
Border
≈≈^ d
>
≈≈d e
(
≈≈e f
)
≈≈f g
.
≈≈g h
FirstOrDefault
≈≈h v
(
≈≈v w
pla
≈≈w z
=>
≈≈{ }
pla≈≈~ Å
.≈≈Å Ç
Name≈≈Ç Ü
.≈≈Ü á
Equals≈≈á ç
(≈≈ç é
nameOfBorder≈≈é ö
)≈≈ö õ
)≈≈õ ú
;≈≈ú ù
if
∆∆ 
(
∆∆ #
currentPointsOfPlayer
∆∆ )
!=
∆∆) +
null
∆∆, 0
&&
∆∆1 3#
currentPointsOfPlayer
∆∆4 I
.
∆∆I J
	GetPoints
∆∆J S
(
∆∆S T
)
∆∆T U
<
∆∆V W
$num
∆∆X Y
)
∆∆Y Z
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
ÀÀ 
else
ÃÃ 
{
ÕÕ 
GamePlayerCard
ŒŒ #
currentPointsOfPlayer
ŒŒ 4
=
ŒŒ5 6
(
ŒŒ7 8
GamePlayerCard
ŒŒ8 F
)
ŒŒF G
playersBorders
ŒŒG U
.
ŒŒU V
Find
ŒŒV Z
(
ŒŒZ [
pl
ŒŒ[ ]
=>
ŒŒ^ `
pl
ŒŒa c
.
ŒŒc d
Name
ŒŒd h
.
ŒŒh i
Equals
ŒŒi o
(
ŒŒo p
$str
ŒŒp s
+
ŒŒt u
userSingletonŒŒv É
.ŒŒÉ Ñ
IdUserŒŒÑ ä
.ŒŒä ã
ToStringŒŒã ì
(ŒŒì î
)ŒŒî ï
)ŒŒï ñ
)ŒŒñ ó
;ŒŒó ò
if
œœ 
(
œœ #
currentPointsOfPlayer
œœ )
!=
œœ* ,
null
œœ- 1
&&
œœ2 4#
currentPointsOfPlayer
œœ5 J
.
œœJ K
	GetPoints
œœK T
(
œœT U
)
œœU V
<
œœW X
$num
œœY Z
)
œœZ [
{
–– 
txbPointsToBet
—— "
.
——" #
Text
——# '
=
——( )
$str
——* -
;
——- .
txbPointsToBet
““ "
.
““" #
	IsEnabled
““# ,
=
““- .
false
““/ 4
;
““4 5
}
”” 
}
‘‘ 
}
’’ 	
private
◊◊ 
async
◊◊ 
Task
◊◊ (
ShowPresentationThreeAsync
◊◊ 5
(
◊◊5 6
)
◊◊6 7
{
ÿÿ 	
grTimer
ŸŸ 
.
ŸŸ 

Visibility
ŸŸ 
=
ŸŸ  

Visibility
ŸŸ! +
.
ŸŸ+ ,
Hidden
ŸŸ, 2
;
ŸŸ2 3
wrpBoardOfCards
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
⁄⁄3 4
Hidden
⁄⁄4 :
;
⁄⁄: ;
stpTurnLigth
€€ 
.
€€ 

Visibility
€€ #
=
€€$ %

Visibility
€€& 0
.
€€0 1
Hidden
€€1 7
;
€€7 8
grdPresentation
‹‹ 
.
‹‹ 

Visibility
‹‹ &
=
‹‹' (

Visibility
‹‹) 3
.
‹‹3 4
Visible
‹‹4 ;
;
‹‹; <
txbHostMessage
›› 
.
›› 
Text
›› 
=
››  !

Properties
››" ,
.
››, -
	Resources
››- 6
.
››6 7$
HostRound3Presentation
››7 M
;
››M N
await
ﬁﬁ 
Task
ﬁﬁ 
.
ﬁﬁ 
Delay
ﬁﬁ 
(
ﬁﬁ 
$num
ﬁﬁ !
)
ﬁﬁ! "
;
ﬁﬁ" #
}
ﬂﬂ 	
private
·· 
void
·· 
ClickConfirmBet
·· $
(
··$ %
object
··% +
sender
··, 2
,
··2 3
RoutedEventArgs
··4 C
e
··D E
)
··E F
{
‚‚ 	
string
„„ 
pointsToBets
„„ 
=
„„  !
txbPointsToBet
„„" 0
.
„„0 1
Text
„„1 5
;
„„5 6
if
‰‰ 
(
‰‰ 
!
‰‰ 
string
‰‰ 
.
‰‰ 
IsNullOrEmpty
‰‰ %
(
‰‰% &
pointsToBets
‰‰& 2
)
‰‰2 3
)
‰‰3 4
{
ÂÂ 
	pointsBet
ÊÊ 
=
ÊÊ 
int
ÊÊ 
.
ÊÊ  
Parse
ÊÊ  %
(
ÊÊ% &
txbPointsToBet
ÊÊ& 4
.
ÊÊ4 5
Text
ÊÊ5 9
)
ÊÊ9 :
;
ÊÊ: ;
List
ÁÁ 
<
ÁÁ 
Border
ÁÁ 
>
ÁÁ 
playersBorders
ÁÁ +
=
ÁÁ, -

stpPlayers
ÁÁ. 8
.
ÁÁ8 9
Children
ÁÁ9 A
.
ÁÁA B
OfType
ÁÁB H
<
ÁÁH I
Border
ÁÁI O
>
ÁÁO P
(
ÁÁP Q
)
ÁÁQ R
.
ÁÁR S
ToList
ÁÁS Y
(
ÁÁY Z
)
ÁÁZ [
;
ÁÁ[ \
if
ËË 
(
ËË 
itsTeamGame
ËË 
&&
ËË  "
playersBorders
ËË# 1
.
ËË1 2
Count
ËË2 7
>=
ËË8 :
$num
ËË; <
)
ËË< =
{
ÈÈ &
ConfirmBetFoSinglePlayer
ÍÍ ,
(
ÍÍ, -
playersBorders
ÍÍ- ;
)
ÍÍ; <
;
ÍÍ< =
}
ÎÎ 
else
ÏÏ 
{
ÌÌ 
ConfirmBetForTeam
ÓÓ %
(
ÓÓ% &
playersBorders
ÓÓ& 4
)
ÓÓ4 5
;
ÓÓ5 6
}
ÔÔ 
}
 
}
ÒÒ 	
private
ÛÛ 
void
ÛÛ &
ConfirmBetFoSinglePlayer
ÛÛ -
(
ÛÛ- .
List
ÛÛ. 2
<
ÛÛ2 3
Border
ÛÛ3 9
>
ÛÛ9 :
playersBorders
ÛÛ; I
)
ÛÛI J
{
ÙÙ 	
string
ıı 
nameOfBorder
ıı 
;
ıı  
var
ˆˆ 
playerInGameSide
ˆˆ  
=
ˆˆ! "
playersInGame
ˆˆ# 0
.
ˆˆ0 1
Find
ˆˆ1 5
(
ˆˆ5 6
pl
ˆˆ6 8
=>
ˆˆ9 ;
pl
ˆˆ< >
.
ˆˆ> ?
IdUser
ˆˆ? E
==
ˆˆF H
userSingleton
ˆˆI V
.
ˆˆV W
IdUser
ˆˆW ]
)
ˆˆ] ^
;
ˆˆ^ _
if
˜˜ 
(
˜˜ 
playerInGameSide
˜˜  
!=
˜˜! #
null
˜˜$ (
&&
˜˜) +
playerInGameSide
˜˜, <
.
˜˜< =
SideTeam
˜˜= E
==
˜˜F H
$num
˜˜I J
)
˜˜J K
{
¯¯ 
nameOfBorder
˘˘ 
=
˘˘ 
	team1Name
˘˘ (
;
˘˘( )
}
˙˙ 
else
˚˚ 
{
¸¸ 
nameOfBorder
˝˝ 
=
˝˝ 
	team2Name
˝˝ (
;
˝˝( )
}
˛˛ 
var
ˇˇ #
currentPointsOfPlayer
ˇˇ %
=
ˇˇ& '
playersBorders
ˇˇ( 6
.
ˇˇ6 7
Find
ˇˇ7 ;
(
ˇˇ; <
pla
ˇˇ< ?
=>
ˇˇ@ B
pla
ˇˇC F
.
ˇˇF G
Name
ˇˇG K
.
ˇˇK L
Equals
ˇˇL R
(
ˇˇR S
nameOfBorder
ˇˇS _
)
ˇˇ_ `
)
ˇˇ` a
;
ˇˇa b
if
ÄÄ 
(
ÄÄ 
	pointsBet
ÄÄ 
<=
ÄÄ 
(
ÄÄ 
(
ÄÄ 
GameTeamCard
ÄÄ +
)
ÄÄ+ ,#
currentPointsOfPlayer
ÄÄ, A
)
ÄÄA B
.
ÄÄB C
	GetPoints
ÄÄC L
(
ÄÄL M
)
ÄÄM N
||
ÄÄO Q
	pointsBet
ÄÄR [
==
ÄÄ\ ^
$num
ÄÄ_ `
)
ÄÄ` a
{
ÅÅ 

ConfirmBet
ÇÇ 
(
ÇÇ 
)
ÇÇ 
;
ÇÇ 
}
ÉÉ 
}
ÑÑ 	
private
ÜÜ 
void
ÜÜ 
ConfirmBetForTeam
ÜÜ &
(
ÜÜ& '
List
ÜÜ' +
<
ÜÜ+ ,
Border
ÜÜ, 2
>
ÜÜ2 3
playersBorders
ÜÜ4 B
)
ÜÜB C
{
áá 	
var
àà #
currentPointsOfPlayer
àà %
=
àà& '
playersBorders
àà( 6
.
àà6 7
Find
àà7 ;
(
àà; <
pl
àà< >
=>
àà? A
pl
ààB D
.
ààD E
Name
ààE I
.
ààI J
Equals
ààJ P
(
ààP Q
$str
ààQ T
+
ààU V
userSingleton
ààW d
.
ààd e
IdUser
ààe k
.
ààk l
ToString
ààl t
(
ààt u
)
ààu v
)
ààv w
)
ààw x
;
ààx y
if
ââ 
(
ââ #
currentPointsOfPlayer
ââ %
!=
ââ& (
null
ââ) -
&&
ââ. 0
	pointsBet
ââ1 :
<=
ââ; =
(
ââ> ?
(
ââ? @
GamePlayerCard
ââ@ N
)
ââN O#
currentPointsOfPlayer
ââO d
)
ââd e
.
ââe f
	GetPoints
ââf o
(
ââo p
)
ââp q
||
ââr t
	pointsBet
ââu ~
==ââ Å
$numââÇ É
)ââÉ Ñ
{
ää 

ConfirmBet
ãã 
(
ãã 
)
ãã 
;
ãã 
}
åå 
}
çç 	
private
èè 
void
èè 

ConfirmBet
èè 
(
èè  
)
èè  !
{
êê 	
try
ëë 
{
íí 
GameActionsClient
ìì !,
gameActionsCallBackClientProxy
ìì" @
=
ììA B
new
ììC F
GameActionsClient
ììG X
(
ììX Y
new
ììY \
InstanceContext
ìì] l
(
ììl m
this
ììm q
)
ììq r
)
ììr s
;
ììs t,
gameActionsCallBackClientProxy
îî .
.
îî. /
RenewGameCallBack
îî/ @
(
îî@ A
roomCode
îîA I
,
îîI J
userSingleton
îîK X
.
îîX Y
IdUser
îîY _
)
îî_ `
;
îî` a)
GameActionsOperationsClient
ïï +$
gameActionsClientProxy
ïï, B
=
ïïC D
new
ïïE H
(
ïïH I
)
ïïI J
;
ïïJ K$
gameActionsClientProxy
ññ &
.
ññ& '

ConfirmBet
ññ' 1
(
ññ1 2
roomCode
ññ2 :
,
ññ: ;
userSingleton
ññ< I
.
ññI J
IdUser
ññJ P
)
ññP Q
;
ññQ R
txbPointsToBet
óó 
.
óó 
	IsEnabled
óó (
=
óó) *
false
óó+ 0
;
óó0 1
bttConfirmBet
òò 
.
òò 
	IsEnabled
òò '
=
òò( )
false
òò* /
;
òò/ 0
}
ôô 
catch
öö 
(
öö '
EndpointNotFoundException
öö ,
ex
öö- /
)
öö/ 0
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
úú8 9
lblFailToMakeBet
úú9 I
+
úúJ K
$str
úúL Q
+
úúR S

Properties
úúT ^
.
úú^ _
	Resources
úú_ h
.
úúh i!
lblEndPointNotFound
úúi |
)
úú| }
;
úú} ~
}
ùù 
catch
ûû 
(
ûû 1
#CommunicationObjectFaultedException
ûû 6
ex
ûû7 9
)
ûû9 :
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
††8 9
lblFailToMakeBet
††9 I
+
††J K
$str
††L Q
+
††R S

Properties
††T ^
.
††^ _
	Resources
††_ h
.
††h i'
lblComunicationException††i Å
)††Å Ç
;††Ç É
}
°° 
catch
¢¢ 
(
¢¢ 
TimeoutException
¢¢ #
ex
¢¢$ &
)
¢¢& '
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
§§8 9
lblFailToMakeBet
§§9 I
+
§§J K
$str
§§L Q
+
§§R S

Properties
§§T ^
.
§§^ _
	Resources
§§_ h
.
§§h i
lblTimeException
§§i y
)
§§y z
;
§§z {
}
•• 
catch
¶¶ 
(
¶¶ $
CommunicationException
¶¶ )
ex
¶¶* ,
)
¶¶, -
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
®®8 9
lblFailToMakeBet
®®9 I
+
®®J K
$str
®®L Q
+
®®R S

Properties
®®T ^
.
®®^ _
	Resources
®®_ h
.
®®h i!
lblWithoutConection
®®i |
)
®®| }
;
®®} ~
}
©© 
catch
™™ 
(
™™ 
SocketException
™™ "
ex
™™# %
)
™™% &
{
´´ 
HandleException
¨¨ 
(
¨¨  
ex
¨¨  "
,
¨¨" #

Properties
¨¨$ .
.
¨¨. /
	Resources
¨¨/ 8
.
¨¨8 9 
lblFailToStartGame
¨¨9 K
+
¨¨L M
$str
¨¨N S
+
¨¨T U

Properties
¨¨V `
.
¨¨` a
	Resources
¨¨a j
.
¨¨j k!
lblEndPointNotFound
¨¨k ~
)
¨¨~ 
;¨¨ Ä
}
≠≠ 
}
ÆÆ 	
private
∞∞ 
void
∞∞ 
EntryBetPoints
∞∞ #
(
∞∞# $
object
∞∞$ *
sender
∞∞+ 1
,
∞∞1 2&
TextCompositionEventArgs
∞∞3 K
e
∞∞L M
)
∞∞M N
{
±± 	
if
≤≤ 
(
≤≤ 
!
≤≤ 
int
≤≤ 
.
≤≤ 
TryParse
≤≤ 
(
≤≤ 
e
≤≤ 
.
≤≤  
Text
≤≤  $
,
≤≤$ %
out
≤≤& )
_
≤≤* +
)
≤≤+ ,
)
≤≤, -
{
≥≥ 
e
¥¥ 
.
¥¥ 
Handled
¥¥ 
=
¥¥ 
true
¥¥  
;
¥¥  !
}
µµ 
}
∂∂ 	
public
∏∏ 
void
∏∏ &
ResponseShowLastQuestion
∏∏ ,
(
∏∏, -
)
∏∏- .
{
ππ 	 
questionBeingAsked
∫∫ 
=
∫∫  
finalQuestion
∫∫! .
.
∫∫. /%
SpecificQuestionDetails
∫∫/ F
;
∫∫F G
grdAnswerChoices
ªª 
.
ªª 

Visibility
ªª '
=
ªª( )

Visibility
ªª* 4
.
ªª4 5
Visible
ªª5 <
;
ªª< =
grdBet
ºº 
.
ºº 

Visibility
ºº 
=
ºº 

Visibility
ºº  *
.
ºº* +
	Collapsed
ºº+ 4
;
ºº4 5
grTimer
ΩΩ 
.
ΩΩ 

Visibility
ΩΩ 
=
ΩΩ  

Visibility
ΩΩ! +
.
ΩΩ+ ,
Visible
ΩΩ, 3
;
ΩΩ3 4
txbQuestion
ææ 
.
ææ 
Text
ææ 
=
ææ !
GetSpecificResource
ææ  3
.
ææ3 4,
GetEnglishOrSpanishDescription
ææ4 R
(
ææR S 
questionBeingAsked
ææS e
.
ææe f)
EnglishQuestionDescriptionææf Ä
,ææÄ Å"
questionBeingAskedææÇ î
.ææî ï*
SpanishQuestionDescriptionææï Ø
)ææØ ∞
;ææ∞ ±)
answersOfQuestionBeingAsked
øø '
=
øø( )
new
øø* -
List
øø. 2
<
øø2 3

AnswerPojo
øø3 =
>
øø= >
(
øø> ?
)
øø? @
{
øøA B
finalQuestion
øøC P
.
øøP Q
RightAnswer
øøQ \
,
øø\ ]
finalQuestion
øø^ k
.
øøk l
WrongOptionOne
øøl z
,
øøz {
finalQuestionøø| â
.øøâ ä
WrongOptionTwoøøä ò
,øøò ô
finalQuestionøøö ß
.øøß ® 
WrongOptionThreeøø® ∏
}øøπ ∫
.øø∫ ª
OrderByøøª ¬
(øø¬ √
orderøø√ »
=>øø… À
GuidøøÃ –
.øø– —
NewGuidøø— ÿ
(øøÿ Ÿ
)øøŸ ⁄
)øø⁄ €
.øø€ ‹
ToListøø‹ ‚
(øø‚ „
)øø„ ‰
;øø‰ Â%
answerToCurrentQuestion
¿¿ #
=
¿¿$ %)
answersOfQuestionBeingAsked
¿¿& A
.
¿¿A B
Find
¿¿B F
(
¿¿F G
answer
¿¿G M
=>
¿¿N P
answer
¿¿Q W
.
¿¿W X
IdAnswer
¿¿X `
==
¿¿a c
finalQuestion
¿¿d q
.
¿¿q r&
SpecificQuestionDetails¿¿r â
.¿¿â ä"
IdAnswerOfQuestion¿¿ä ú
)¿¿ú ù
;¿¿ù û
bttFirstAnswer
¡¡ 
.
¡¡ 
Content
¡¡ "
=
¡¡# $!
GetSpecificResource
¡¡% 8
.
¡¡8 9,
GetEnglishOrSpanishDescription
¡¡9 W
(
¡¡W X)
answersOfQuestionBeingAsked
¡¡X s
[
¡¡s t
$num
¡¡t u
]
¡¡u v
.
¡¡v w'
EnglishAnswerDescription¡¡w è
,¡¡è ê+
answersOfQuestionBeingAsked¡¡ë ¨
[¡¡¨ ≠
$num¡¡≠ Æ
]¡¡Æ Ø
.¡¡Ø ∞(
SpanishAnswerDescription¡¡∞ »
)¡¡» …
;¡¡…  
bttSecondAnswer
¬¬ 
.
¬¬ 
Content
¬¬ #
=
¬¬$ %!
GetSpecificResource
¬¬& 9
.
¬¬9 :,
GetEnglishOrSpanishDescription
¬¬: X
(
¬¬X Y)
answersOfQuestionBeingAsked
¬¬Y t
[
¬¬t u
$num
¬¬u v
]
¬¬v w
.
¬¬w x'
EnglishAnswerDescription¬¬x ê
,¬¬ê ë+
answersOfQuestionBeingAsked¬¬í ≠
[¬¬≠ Æ
$num¬¬Æ Ø
]¬¬Ø ∞
.¬¬∞ ±(
SpanishAnswerDescription¬¬± …
)¬¬…  
;¬¬  À
bttThridAnswer
√√ 
.
√√ 
Content
√√ "
=
√√# $!
GetSpecificResource
√√% 8
.
√√8 9,
GetEnglishOrSpanishDescription
√√9 W
(
√√W X)
answersOfQuestionBeingAsked
√√X s
[
√√s t
$num
√√t u
]
√√u v
.
√√v w'
EnglishAnswerDescription√√w è
,√√è ê+
answersOfQuestionBeingAsked√√ë ¨
[√√¨ ≠
$num√√≠ Æ
]√√Æ Ø
.√√Ø ∞(
SpanishAnswerDescription√√∞ »
)√√» …
;√√…  
bttFourAnswer
ƒƒ 
.
ƒƒ 
Content
ƒƒ !
=
ƒƒ" #!
GetSpecificResource
ƒƒ$ 7
.
ƒƒ7 8,
GetEnglishOrSpanishDescription
ƒƒ8 V
(
ƒƒV W)
answersOfQuestionBeingAsked
ƒƒW r
[
ƒƒr s
$num
ƒƒs t
]
ƒƒt u
.
ƒƒu v'
EnglishAnswerDescriptionƒƒv é
,ƒƒé è+
answersOfQuestionBeingAskedƒƒê ´
[ƒƒ´ ¨
$numƒƒ¨ ≠
]ƒƒ≠ Æ
.ƒƒÆ Ø(
SpanishAnswerDescriptionƒƒØ «
)ƒƒ« »
;ƒƒ» …

StartTimer
≈≈ 
(
≈≈ 
)
≈≈ 
;
≈≈ 
}
∆∆ 	
public
»» 
void
»» 
SelectQuestion
»» "
(
»»" #%
QuestionCardInformation
»»# :
question
»»; C
)
»»C D
{
…… 	
if
   
(
   
yourTurn
   
==
   
currentTurn
   '
)
  ' (
{
ÀÀ 
var
ÃÃ #
answersQuestionsAsked
ÃÃ )
=
ÃÃ* +
new
ÃÃ, /
List
ÃÃ0 4
<
ÃÃ4 5

AnswerPojo
ÃÃ5 ?
>
ÃÃ? @
(
ÃÃ@ A
)
ÃÃA B
{
ÃÃC D
question
ÃÃE M
.
ÃÃM N
RightAnswer
ÃÃN Y
,
ÃÃY Z
question
ÃÃ[ c
.
ÃÃc d
WrongOptionOne
ÃÃd r
,
ÃÃr s
question
ÃÃt |
.
ÃÃ| }
WrongOptionTwoÃÃ} ã
,ÃÃã å
questionÃÃç ï
.ÃÃï ñ 
WrongOptionThreeÃÃñ ¶
}ÃÃß ®
.ÃÃ® ©
OrderByÃÃ© ∞
(ÃÃ∞ ±
orderÃÃ± ∂
=>ÃÃ∑ π
GuidÃÃ∫ æ
.ÃÃæ ø
NewGuidÃÃø ∆
(ÃÃ∆ «
)ÃÃ« »
)ÃÃ» …
.ÃÃ…  
ToListÃÃ  –
(ÃÃ– —
)ÃÃ— “
;ÃÃ“ ”+
CurrentQuestionToShowContract
ÕÕ -#
currentQuestionToShow
ÕÕ. C
=
ÕÕD E
new
ÕÕF I+
CurrentQuestionToShowContract
ÕÕJ g
(
ÕÕg h
)
ÕÕh i
{
ŒŒ 

IdQuestion
œœ 
=
œœ  
question
œœ! )
.
œœ) *%
SpecificQuestionDetails
œœ* A
.
œœA B

IdQuestion
œœB L
,
œœL M
IdFirstAnswer
–– !
=
––" ##
answersQuestionsAsked
––$ 9
[
––9 :
$num
––: ;
]
––; <
.
––< =
IdAnswer
––= E
,
––E F
IdSecondAnswer
—— "
=
——# $#
answersQuestionsAsked
——% :
[
——: ;
$num
——; <
]
——< =
.
——= >
IdAnswer
——> F
,
——F G
IdThirdAnswer
““ !
=
““" ##
answersQuestionsAsked
““$ 9
[
““9 :
$num
““: ;
]
““; <
.
““< =
IdAnswer
““= E
,
““E F
IdFourthAnswer
”” "
=
””# $#
answersQuestionsAsked
””% :
[
””: ;
$num
””; <
]
””< =
.
””= >
IdAnswer
””> F
,
””F G
}
‘‘ 
;
‘‘ 
try
’’ 
{
÷÷ 
GameActionsClient
◊◊ %,
gameActionsCallBackClientProxy
◊◊& D
=
◊◊E F
new
◊◊G J
GameActionsClient
◊◊K \
(
◊◊\ ]
new
◊◊] `
InstanceContext
◊◊a p
(
◊◊p q
this
◊◊q u
)
◊◊u v
)
◊◊v w
;
◊◊w x,
gameActionsCallBackClientProxy
ÿÿ 2
.
ÿÿ2 3
RenewGameCallBack
ÿÿ3 D
(
ÿÿD E
roomCode
ÿÿE M
,
ÿÿM N
userSingleton
ÿÿO \
.
ÿÿ\ ]
IdUser
ÿÿ] c
)
ÿÿc d
;
ÿÿd e)
GameActionsOperationsClient
⁄⁄ /$
gameActionsClientProxy
⁄⁄0 F
=
⁄⁄G H
new
⁄⁄I L
(
⁄⁄L M
)
⁄⁄M N
;
⁄⁄N O$
gameActionsClientProxy
€€ *
.
€€* +#
ChooseQuestionOfBoard
€€+ @
(
€€@ A
roomCode
€€A I
,
€€I J
userSingleton
€€K X
.
€€X Y
IdUser
€€Y _
,
€€_ `
question
€€a i
.
€€i j
NumberOfRound
€€j w
,
€€w x$
currentQuestionToShow€€y é
)€€é è
;€€è ê
}
‹‹ 
catch
›› 
(
›› '
EndpointNotFoundException
›› 0
ex
››1 3
)
››3 4
{
ﬁﬁ 
HandleException
ﬂﬂ #
(
ﬂﬂ# $
ex
ﬂﬂ$ &
,
ﬂﬂ& '

Properties
ﬂﬂ( 2
.
ﬂﬂ2 3
	Resources
ﬂﬂ3 <
.
ﬂﬂ< =$
lblFailToChoseQuestion
ﬂﬂ= S
+
ﬂﬂT U
$str
ﬂﬂV [
+
ﬂﬂ\ ]

Properties
ﬂﬂ^ h
.
ﬂﬂh i
	Resources
ﬂﬂi r
.
ﬂﬂr s"
lblEndPointNotFoundﬂﬂs Ü
)ﬂﬂÜ á
;ﬂﬂá à
}
‡‡ 
catch
·· 
(
·· 1
#CommunicationObjectFaultedException
·· :
ex
··; =
)
··= >
{
‚‚ 
HandleException
„„ #
(
„„# $
ex
„„$ &
,
„„& '

Properties
„„( 2
.
„„2 3
	Resources
„„3 <
.
„„< =$
lblFailToChoseQuestion
„„= S
+
„„T U
$str
„„V [
+
„„\ ]

Properties
„„^ h
.
„„h i
	Resources
„„i r
.
„„r s'
lblComunicationException„„s ã
)„„ã å
;„„å ç
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
ÊÊ 
HandleException
ÁÁ #
(
ÁÁ# $
ex
ÁÁ$ &
,
ÁÁ& '

Properties
ÁÁ( 2
.
ÁÁ2 3
	Resources
ÁÁ3 <
.
ÁÁ< =$
lblFailToChoseQuestion
ÁÁ= S
+
ÁÁT U
$str
ÁÁV [
+
ÁÁ\ ]

Properties
ÁÁ^ h
.
ÁÁh i
	Resources
ÁÁi r
.
ÁÁr s
lblTimeExceptionÁÁs É
)ÁÁÉ Ñ
;ÁÁÑ Ö
}
ËË 
catch
ÈÈ 
(
ÈÈ $
CommunicationException
ÈÈ -
ex
ÈÈ. 0
)
ÈÈ0 1
{
ÍÍ 
HandleException
ÎÎ #
(
ÎÎ# $
ex
ÎÎ$ &
,
ÎÎ& '

Properties
ÎÎ( 2
.
ÎÎ2 3
	Resources
ÎÎ3 <
.
ÎÎ< =$
lblFailToChoseQuestion
ÎÎ= S
+
ÎÎT U
$str
ÎÎV [
+
ÎÎ\ ]

Properties
ÎÎ^ h
.
ÎÎh i
	Resources
ÎÎi r
.
ÎÎr s"
lblWithoutConectionÎÎs Ü
)ÎÎÜ á
;ÎÎá à
}
ÏÏ 
catch
ÌÌ 
(
ÌÌ 
SocketException
ÌÌ &
ex
ÌÌ' )
)
ÌÌ) *
{
ÓÓ 
HandleException
ÔÔ #
(
ÔÔ# $
ex
ÔÔ$ &
,
ÔÔ& '

Properties
ÔÔ( 2
.
ÔÔ2 3
	Resources
ÔÔ3 <
.
ÔÔ< = 
lblFailToStartGame
ÔÔ= O
+
ÔÔP Q
$str
ÔÔR W
+
ÔÔX Y

Properties
ÔÔZ d
.
ÔÔd e
	Resources
ÔÔe n
.
ÔÔn o"
lblEndPointNotFoundÔÔo Ç
)ÔÔÇ É
;ÔÔÉ Ñ
}
 
}
ÒÒ 
}
ÚÚ 	
public
ÙÙ 
void
ÙÙ ,
ResponseSomeOneSelectAQuestion
ÙÙ 2
(
ÙÙ2 3+
CurrentQuestionToShowContract
ÙÙ3 P
questionToShow
ÙÙQ _
,
ÙÙ_ `
int
ÙÙa d
currentRound
ÙÙe q
,
ÙÙq r
int
ÙÙs v
idUser
ÙÙw }
)
ÙÙ} ~
{
ıı 	
this
ˆˆ 
.
ˆˆ 
currentRound
ˆˆ 
=
ˆˆ 
currentRound
ˆˆ  ,
;
ˆˆ, -%
QuestionCardInformation
˜˜ #
questionCard
˜˜$ 0
=
˜˜1 2
currentQuestions
˜˜3 C
.
˜˜C D
Find
˜˜D H
(
˜˜H I
quest
˜˜I N
=>
˜˜O Q
quest
˜˜R W
.
˜˜W X%
SpecificQuestionDetails
˜˜X o
.
˜˜o p

IdQuestion
˜˜p z
==
˜˜{ }
questionToShow˜˜~ å
.˜˜å ç

IdQuestion˜˜ç ó
)˜˜ó ò
;˜˜ò ô
if
¯¯ 
(
¯¯ 
questionCard
¯¯ 
!=
¯¯ 
null
¯¯  $
)
¯¯$ %
{
˘˘  
questionBeingAsked
˙˙ "
=
˙˙# $
questionCard
˙˙% 1
.
˙˙1 2%
SpecificQuestionDetails
˙˙2 I
;
˙˙I J
grdAnswerChoices
˚˚  
.
˚˚  !

Visibility
˚˚! +
=
˚˚, -

Visibility
˚˚. 8
.
˚˚8 9
Visible
˚˚9 @
;
˚˚@ A
grTimer
¸¸ 
.
¸¸ 

Visibility
¸¸ "
=
¸¸# $

Visibility
¸¸% /
.
¸¸/ 0
Visible
¸¸0 7
;
¸¸7 8
txbQuestion
˝˝ 
.
˝˝ 
Text
˝˝  
=
˝˝! "!
GetSpecificResource
˝˝# 6
.
˝˝6 7,
GetEnglishOrSpanishDescription
˝˝7 U
(
˝˝U V
questionCard
˝˝V b
.
˝˝b c%
SpecificQuestionDetails
˝˝c z
.
˝˝z {)
EnglishQuestionDescription˝˝{ ï
,˝˝ï ñ
questionCard˝˝ó £
.˝˝£ §'
SpecificQuestionDetails˝˝§ ª
.˝˝ª º*
SpanishQuestionDescription˝˝º ÷
)˝˝÷ ◊
;˝˝◊ ÿ
List
˛˛ 
<
˛˛ 

AnswerPojo
˛˛ 
>
˛˛  $
answersForThisQuestion
˛˛! 7
=
˛˛8 9
new
˛˛: =
List
˛˛> B
<
˛˛B C

AnswerPojo
˛˛C M
>
˛˛M N
(
˛˛N O
)
˛˛O P
{
˛˛Q R
questionCard
˛˛S _
.
˛˛_ `
RightAnswer
˛˛` k
,
˛˛k l
questionCard
˛˛m y
.
˛˛y z
WrongOptionOne˛˛z à
,˛˛à â
questionCard˛˛ä ñ
.˛˛ñ ó
WrongOptionTwo˛˛ó •
,˛˛• ¶
questionCard˛˛ß ≥
.˛˛≥ ¥ 
WrongOptionThree˛˛¥ ƒ
}˛˛≈ ∆
;˛˛∆ «)
answersOfQuestionBeingAsked
ˇˇ +
=
ˇˇ, -$
answersForThisQuestion
ˇˇ. D
.
ˇˇD E
ToList
ˇˇE K
(
ˇˇK L
)
ˇˇL M
;
ˇˇM N%
answerToCurrentQuestion
ÄÄ '
=
ÄÄ( )$
answersForThisQuestion
ÄÄ* @
.
ÄÄ@ A
Find
ÄÄA E
(
ÄÄE F
ans
ÄÄF I
=>
ÄÄJ L
ans
ÄÄM P
.
ÄÄP Q
IdAnswer
ÄÄQ Y
==
ÄÄZ \ 
questionBeingAsked
ÄÄ] o
.
ÄÄo p!
IdAnswerOfQuestionÄÄp Ç
)ÄÄÇ É
;ÄÄÉ Ñ
var
ÅÅ 

answerbtt1
ÅÅ 
=
ÅÅ  $
answersForThisQuestion
ÅÅ! 7
.
ÅÅ7 8
Find
ÅÅ8 <
(
ÅÅ< =
answer
ÅÅ= C
=>
ÅÅD F
answer
ÅÅG M
.
ÅÅM N
IdAnswer
ÅÅN V
==
ÅÅW Y
questionToShow
ÅÅZ h
.
ÅÅh i
IdFirstAnswer
ÅÅi v
)
ÅÅv w
;
ÅÅw x
bttFirstAnswer
ÇÇ 
.
ÇÇ 
Content
ÇÇ &
=
ÇÇ' (!
GetSpecificResource
ÇÇ) <
.
ÇÇ< =,
GetEnglishOrSpanishDescription
ÇÇ= [
(
ÇÇ[ \

answerbtt1
ÇÇ\ f
.
ÇÇf g&
EnglishAnswerDescription
ÇÇg 
,ÇÇ Ä

answerbtt1ÇÇÅ ã
.ÇÇã å(
SpanishAnswerDescriptionÇÇå §
)ÇÇ§ •
;ÇÇ• ¶
var
ÉÉ 

answerbtt2
ÉÉ 
=
ÉÉ  $
answersForThisQuestion
ÉÉ! 7
.
ÉÉ7 8
Find
ÉÉ8 <
(
ÉÉ< =
answer
ÉÉ= C
=>
ÉÉD F
answer
ÉÉG M
.
ÉÉM N
IdAnswer
ÉÉN V
==
ÉÉW Y
questionToShow
ÉÉZ h
.
ÉÉh i
IdSecondAnswer
ÉÉi w
)
ÉÉw x
;
ÉÉx y
bttSecondAnswer
ÑÑ 
.
ÑÑ  
Content
ÑÑ  '
=
ÑÑ( )!
GetSpecificResource
ÑÑ* =
.
ÑÑ= >,
GetEnglishOrSpanishDescription
ÑÑ> \
(
ÑÑ\ ]

answerbtt2
ÑÑ] g
.
ÑÑg h'
EnglishAnswerDescriptionÑÑh Ä
,ÑÑÄ Å

answerbtt2ÑÑÇ å
.ÑÑå ç(
SpanishAnswerDescriptionÑÑç •
)ÑÑ• ¶
;ÑÑ¶ ß
var
ÖÖ 

answerbtt3
ÖÖ 
=
ÖÖ  $
answersForThisQuestion
ÖÖ! 7
.
ÖÖ7 8
Find
ÖÖ8 <
(
ÖÖ< =
answer
ÖÖ= C
=>
ÖÖD F
answer
ÖÖG M
.
ÖÖM N
IdAnswer
ÖÖN V
==
ÖÖW Y
questionToShow
ÖÖZ h
.
ÖÖh i
IdThirdAnswer
ÖÖi v
)
ÖÖv w
;
ÖÖw x
bttThridAnswer
ÜÜ 
.
ÜÜ 
Content
ÜÜ &
=
ÜÜ' (!
GetSpecificResource
ÜÜ) <
.
ÜÜ< =,
GetEnglishOrSpanishDescription
ÜÜ= [
(
ÜÜ[ \

answerbtt3
ÜÜ\ f
.
ÜÜf g&
EnglishAnswerDescription
ÜÜg 
,ÜÜ Ä

answerbtt3ÜÜÅ ã
.ÜÜã å(
SpanishAnswerDescriptionÜÜå §
)ÜÜ§ •
;ÜÜ• ¶
var
áá 

answerbtt4
áá 
=
áá  $
answersForThisQuestion
áá! 7
.
áá7 8
Find
áá8 <
(
áá< =
answer
áá= C
=>
ááD F
answer
ááG M
.
ááM N
IdAnswer
ááN V
==
ááW Y
questionToShow
ááZ h
.
ááh i
IdFourthAnswer
áái w
)
ááw x
;
ááx y
bttFourAnswer
àà 
.
àà 
Content
àà %
=
àà& '!
GetSpecificResource
àà( ;
.
àà; <,
GetEnglishOrSpanishDescription
àà< Z
(
ààZ [

answerbtt4
àà[ e
.
ààe f&
EnglishAnswerDescription
ààf ~
,
àà~ 

answerbtt4ààÄ ä
.ààä ã(
SpanishAnswerDescriptionààã £
)àà£ §
;àà§ •

StartTimer
ââ 
(
ââ 
)
ââ 
;
ââ 
}
ää 
}
ãã 	
private
çç 
void
çç 
ClickSelectAnswer
çç &
(
çç& '
object
çç' -
sender
çç. 4
,
çç4 5
RoutedEventArgs
çç6 E
e
ççF G
)
ççG H
{
éé 	
if
èè 
(
èè 
yourTurn
èè 
==
èè 
currentTurn
èè '
||
èè( *
currentRound
èè+ 7
==
èè8 :
ROUND_THREE
èè; F
)
èèF G
{
êê 
var
ëë 
answerCardChoose
ëë $
=
ëë% &
(
ëë' (
Button
ëë( .
)
ëë. /
sender
ëë/ 5
;
ëë5 6
try
íí 
{
ìì 
GameActionsClient
îî %,
gameActionsCallBackClientProxy
îî& D
=
îîE F
new
îîG J
GameActionsClient
îîK \
(
îî\ ]
new
îî] `
InstanceContext
îîa p
(
îîp q
this
îîq u
)
îîu v
)
îîv w
;
îîw x,
gameActionsCallBackClientProxy
ïï 2
.
ïï2 3
RenewGameCallBack
ïï3 D
(
ïïD E
roomCode
ïïE M
,
ïïM N
userSingleton
ïïO \
.
ïï\ ]
IdUser
ïï] c
)
ïïc d
;
ïïd e
if
ññ 
(
ññ 
currentRound
ññ $
!=
ññ% '
ROUND_THREE
ññ( 3
)
ññ3 4
{
óó 
ConfirmAnswer
òò %
(
òò% &
answerCardChoose
òò& 6
)
òò6 7
;
òò7 8
}
ôô 
else
öö 
{
õõ '
ConfirmLastQuestionAnswer
úú 1
(
úú1 2
answerCardChoose
úú2 B
)
úúB C
;
úúC D
}
ùù 
}
ûû 
catch
üü 
(
üü '
EndpointNotFoundException
üü 0
ex
üü1 3
)
üü3 4
{
†† 
HandleException
°° #
(
°°# $
ex
°°$ &
,
°°& '

Properties
°°( 2
.
°°2 3
	Resources
°°3 <
.
°°< =#
lblFailToChooseAnswer
°°= R
+
°°S T
$str
°°U Z
+
°°[ \

Properties
°°] g
.
°°g h
	Resources
°°h q
.
°°q r"
lblEndPointNotFound°°r Ö
)°°Ö Ü
;°°Ü á
}
¢¢ 
catch
££ 
(
££ 1
#CommunicationObjectFaultedException
££ :
ex
££; =
)
££= >
{
§§ 
HandleException
•• #
(
••# $
ex
••$ &
,
••& '

Properties
••( 2
.
••2 3
	Resources
••3 <
.
••< =#
lblFailToChooseAnswer
••= R
+
••S T
$str
••U Z
+
••[ \

Properties
••] g
.
••g h
	Resources
••h q
.
••q r'
lblComunicationException••r ä
)••ä ã
;••ã å
}
¶¶ 
catch
ßß 
(
ßß 
TimeoutException
ßß '
ex
ßß( *
)
ßß* +
{
®® 
HandleException
©© #
(
©©# $
ex
©©$ &
,
©©& '

Properties
©©( 2
.
©©2 3
	Resources
©©3 <
.
©©< =#
lblFailToChooseAnswer
©©= R
+
©©S T
$str
©©U Z
+
©©[ \

Properties
©©] g
.
©©g h
	Resources
©©h q
.
©©q r
lblTimeException©©r Ç
)©©Ç É
;©©É Ñ
}
™™ 
catch
´´ 
(
´´ $
CommunicationException
´´ -
ex
´´. 0
)
´´0 1
{
¨¨ 
HandleException
≠≠ #
(
≠≠# $
ex
≠≠$ &
,
≠≠& '

Properties
≠≠( 2
.
≠≠2 3
	Resources
≠≠3 <
.
≠≠< =#
lblFailToChooseAnswer
≠≠= R
+
≠≠S T
$str
≠≠U Z
+
≠≠[ \

Properties
≠≠] g
.
≠≠g h
	Resources
≠≠h q
.
≠≠q r"
lblWithoutConection≠≠r Ö
)≠≠Ö Ü
;≠≠Ü á
}
ÆÆ 
catch
ØØ 
(
ØØ 
SocketException
ØØ &
ex
ØØ' )
)
ØØ) *
{
∞∞ 
HandleException
±± #
(
±±# $
ex
±±$ &
,
±±& '

Properties
±±( 2
.
±±2 3
	Resources
±±3 <
.
±±< = 
lblFailToStartGame
±±= O
+
±±P Q
$str
±±R W
+
±±X Y

Properties
±±Z d
.
±±d e
	Resources
±±e n
.
±±n o"
lblEndPointNotFound±±o Ç
)±±Ç É
;±±É Ñ
}
≤≤ 
}
≥≥ 
}
¥¥ 	
private
∂∂ 
void
∂∂ 
ConfirmAnswer
∂∂ "
(
∂∂" #
Button
∂∂# )
answerCardChoose
∂∂* :
)
∂∂: ;
{
∑∑ 	)
GameActionsOperationsClient
∏∏ '$
gameActionsClientProxy
∏∏( >
=
∏∏? @
new
∏∏A D
(
∏∏D E
)
∏∏E F
;
∏∏F G
var
ππ 
answerSelected
ππ 
=
ππ  )
answersOfQuestionBeingAsked
ππ! <
.
ππ< =
Find
ππ= A
(
ππA B
anw
ππB E
=>
ππF H!
GetSpecificResource
ππI \
.
ππ\ ],
GetEnglishOrSpanishDescription
ππ] {
(
ππ{ |
anw
ππ| 
.ππ Ä(
EnglishAnswerDescriptionππÄ ò
,ππò ô
anwππö ù
.ππù û(
SpanishAnswerDescriptionππû ∂
)ππ∂ ∑
.ππ∑ ∏
Equalsππ∏ æ
(ππæ ø 
answerCardChooseππø œ
.ππœ –
Contentππ– ◊
)ππ◊ ÿ
)ππÿ Ÿ
;ππŸ ⁄
if
∫∫ 
(
∫∫ 
answerSelected
∫∫ 
!=
∫∫  
null
∫∫! %
)
∫∫% &
{
ªª 
try
ºº 
{
ΩΩ $
gameActionsClientProxy
ææ *
.
ææ* +
ChooseAnswer
ææ+ 7
(
ææ7 8
roomCode
ææ8 @
,
ææ@ A
userSingleton
ææB O
.
ææO P
IdUser
ææP V
,
ææV W
answerSelected
ææX f
.
ææf g
IdAnswer
ææg o
,
ææo p!
questionBeingAskedææq É
.ææÉ Ñ

ValueWorthææÑ é
,ææé è
yourTurnææê ò
)ææò ô
;ææô ö
}
øø 
catch
¿¿ 
(
¿¿ '
EndpointNotFoundException
¿¿ 0
ex
¿¿1 3
)
¿¿3 4
{
¡¡ 
HandleException
¬¬ #
(
¬¬# $
ex
¬¬$ &
,
¬¬& '

Properties
¬¬( 2
.
¬¬2 3
	Resources
¬¬3 <
.
¬¬< =#
lblFailToChooseAnswer
¬¬= R
+
¬¬S T
$str
¬¬U Z
+
¬¬[ \

Properties
¬¬] g
.
¬¬g h
	Resources
¬¬h q
.
¬¬q r"
lblEndPointNotFound¬¬r Ö
)¬¬Ö Ü
;¬¬Ü á
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
≈≈ 
HandleException
∆∆ #
(
∆∆# $
ex
∆∆$ &
,
∆∆& '

Properties
∆∆( 2
.
∆∆2 3
	Resources
∆∆3 <
.
∆∆< =#
lblFailToChooseAnswer
∆∆= R
+
∆∆S T
$str
∆∆U Z
+
∆∆[ \

Properties
∆∆] g
.
∆∆g h
	Resources
∆∆h q
.
∆∆q r'
lblComunicationException∆∆r ä
)∆∆ä ã
;∆∆ã å
}
«« 
catch
»» 
(
»» 
TimeoutException
»» '
ex
»»( *
)
»»* +
{
…… 
HandleException
   #
(
  # $
ex
  $ &
,
  & '

Properties
  ( 2
.
  2 3
	Resources
  3 <
.
  < =#
lblFailToChooseAnswer
  = R
+
  S T
$str
  U Z
+
  [ \

Properties
  ] g
.
  g h
	Resources
  h q
.
  q r
lblTimeException  r Ç
)  Ç É
;  É Ñ
}
ÀÀ 
catch
ÃÃ 
(
ÃÃ $
CommunicationException
ÃÃ -
ex
ÃÃ. 0
)
ÃÃ0 1
{
ÕÕ 
HandleException
ŒŒ #
(
ŒŒ# $
ex
ŒŒ$ &
,
ŒŒ& '

Properties
ŒŒ( 2
.
ŒŒ2 3
	Resources
ŒŒ3 <
.
ŒŒ< =#
lblFailToChooseAnswer
ŒŒ= R
+
ŒŒS T
$str
ŒŒU Z
+
ŒŒ[ \

Properties
ŒŒ] g
.
ŒŒg h
	Resources
ŒŒh q
.
ŒŒq r"
lblWithoutConectionŒŒr Ö
)ŒŒÖ Ü
;ŒŒÜ á
}
œœ 
catch
–– 
(
–– 
SocketException
–– &
ex
––' )
)
––) *
{
—— 
HandleException
““ #
(
““# $
ex
““$ &
,
““& '

Properties
““( 2
.
““2 3
	Resources
““3 <
.
““< = 
lblFailToStartGame
““= O
+
““P Q
$str
““R W
+
““X Y

Properties
““Z d
.
““d e
	Resources
““e n
.
““n o"
lblEndPointNotFound““o Ç
)““Ç É
;““É Ñ
}
”” 
}
‘‘ 
}
÷÷ 	
private
ÿÿ 
void
ÿÿ '
ConfirmLastQuestionAnswer
ÿÿ .
(
ÿÿ. /
Button
ÿÿ/ 5
answerCardChoose
ÿÿ6 F
)
ÿÿF G
{
ŸŸ 	
bool
⁄⁄ 
	isCorrect
⁄⁄ 
;
⁄⁄ 
if
€€ 
(
€€ !
GetSpecificResource
€€ #
.
€€# $,
GetEnglishOrSpanishDescription
€€$ B
(
€€B C%
answerToCurrentQuestion
€€C Z
.
€€Z [&
EnglishAnswerDescription
€€[ s
,
€€s t&
answerToCurrentQuestion€€u å
.€€å ç(
SpanishAnswerDescription€€ç •
)€€• ¶
.€€¶ ß
Equals€€ß ≠
(€€≠ Æ 
answerCardChoose€€Æ æ
.€€æ ø
Content€€ø ∆
)€€∆ «
)€€« »
{
‹‹ 
	isCorrect
›› 
=
›› 
true
››  
;
››  !
}
ﬁﬁ 
else
ﬂﬂ 
{
‡‡ 
	isCorrect
·· 
=
·· 
false
·· !
;
··! "
}
‚‚ )
GameActionsOperationsClient
„„ '$
gameActionsClientProxy
„„( >
=
„„? @
new
„„A D
(
„„D E
)
„„E F
;
„„F G
answerCardChoose
‰‰ 
.
‰‰ 
BorderBrush
‰‰ (
=
‰‰) *
new
‰‰+ .
SolidColorBrush
‰‰/ >
(
‰‰> ?
Colors
‰‰? E
.
‰‰E F
Blue
‰‰F J
)
‰‰J K
;
‰‰K L
bttFirstAnswer
ÂÂ 
.
ÂÂ 
	IsEnabled
ÂÂ $
=
ÂÂ% &
false
ÂÂ' ,
;
ÂÂ, -
bttSecondAnswer
ÊÊ 
.
ÊÊ 
	IsEnabled
ÊÊ %
=
ÊÊ& '
false
ÊÊ( -
;
ÊÊ- .
bttThridAnswer
ÁÁ 
.
ÁÁ 
	IsEnabled
ÁÁ $
=
ÁÁ% &
false
ÁÁ' ,
;
ÁÁ, -
bttFourAnswer
ËË 
.
ËË 
	IsEnabled
ËË #
=
ËË$ %
false
ËË& +
;
ËË+ ,
txbAdvicement
ÈÈ 
.
ÈÈ 

Visibility
ÈÈ $
=
ÈÈ% &

Visibility
ÈÈ' 1
.
ÈÈ1 2
Visible
ÈÈ2 9
;
ÈÈ9 :
try
ÍÍ 
{
ÎÎ $
gameActionsClientProxy
ÏÏ &
.
ÏÏ& ''
ConfirmLastQuestionAnswer
ÏÏ' @
(
ÏÏ@ A
roomCode
ÏÏA I
,
ÏÏI J
playersInGame
ÏÏK X
.
ÏÏX Y
Find
ÏÏY ]
(
ÏÏ] ^
pla
ÏÏ^ a
=>
ÏÏb d
pla
ÏÏe h
.
ÏÏh i
IdUser
ÏÏi o
==
ÏÏp r
userSingletonÏÏs Ä
.ÏÏÄ Å
IdUserÏÏÅ á
)ÏÏá à
,ÏÏà â
	pointsBetÏÏä ì
,ÏÏì î
	isCorrectÏÏï û
)ÏÏû ü
;ÏÏü †
}
ÌÌ 
catch
ÓÓ 
(
ÓÓ '
EndpointNotFoundException
ÓÓ ,
ex
ÓÓ- /
)
ÓÓ/ 0
{
ÔÔ 
HandleException
 
(
  
ex
  "
,
" #

Properties
$ .
.
. /
	Resources
/ 8
.
8 9#
lblFailToChooseAnswer
9 N
+
O P
$str
Q V
+
W X

Properties
Y c
.
c d
	Resources
d m
.
m n"
lblEndPointNotFoundn Å
)Å Ç
;Ç É
}
ÒÒ 
catch
ÚÚ 
(
ÚÚ 1
#CommunicationObjectFaultedException
ÚÚ 6
ex
ÚÚ7 9
)
ÚÚ9 :
{
ÛÛ 
HandleException
ÙÙ 
(
ÙÙ  
ex
ÙÙ  "
,
ÙÙ" #

Properties
ÙÙ$ .
.
ÙÙ. /
	Resources
ÙÙ/ 8
.
ÙÙ8 9#
lblFailToChooseAnswer
ÙÙ9 N
+
ÙÙO P
$str
ÙÙQ V
+
ÙÙW X

Properties
ÙÙY c
.
ÙÙc d
	Resources
ÙÙd m
.
ÙÙm n'
lblComunicationExceptionÙÙn Ü
)ÙÙÜ á
;ÙÙá à
}
ıı 
catch
ˆˆ 
(
ˆˆ 
TimeoutException
ˆˆ #
ex
ˆˆ$ &
)
ˆˆ& '
{
˜˜ 
HandleException
¯¯ 
(
¯¯  
ex
¯¯  "
,
¯¯" #

Properties
¯¯$ .
.
¯¯. /
	Resources
¯¯/ 8
.
¯¯8 9#
lblFailToChooseAnswer
¯¯9 N
+
¯¯O P
$str
¯¯Q V
+
¯¯W X

Properties
¯¯Y c
.
¯¯c d
	Resources
¯¯d m
.
¯¯m n
lblTimeException
¯¯n ~
)
¯¯~ 
;¯¯ Ä
}
˘˘ 
catch
˙˙ 
(
˙˙ $
CommunicationException
˙˙ )
ex
˙˙* ,
)
˙˙, -
{
˚˚ 
HandleException
¸¸ 
(
¸¸  
ex
¸¸  "
,
¸¸" #

Properties
¸¸$ .
.
¸¸. /
	Resources
¸¸/ 8
.
¸¸8 9#
lblFailToChooseAnswer
¸¸9 N
+
¸¸O P
$str
¸¸Q V
+
¸¸W X

Properties
¸¸Y c
.
¸¸c d
	Resources
¸¸d m
.
¸¸m n"
lblWithoutConection¸¸n Å
)¸¸Å Ç
;¸¸Ç É
}
˝˝ 
catch
˛˛ 
(
˛˛ 
SocketException
˛˛ "
ex
˛˛# %
)
˛˛% &
{
ˇˇ 
HandleException
ÄÄ 
(
ÄÄ  
ex
ÄÄ  "
,
ÄÄ" #

Properties
ÄÄ$ .
.
ÄÄ. /
	Resources
ÄÄ/ 8
.
ÄÄ8 9 
lblFailToStartGame
ÄÄ9 K
+
ÄÄL M
$str
ÄÄN S
+
ÄÄT U

Properties
ÄÄV `
.
ÄÄ` a
	Resources
ÄÄa j
.
ÄÄj k!
lblEndPointNotFound
ÄÄk ~
)
ÄÄ~ 
;ÄÄ Ä
}
ÅÅ 
}
ÉÉ 	
public
ÖÖ 
async
ÖÖ 
void
ÖÖ +
ResponseSomeOneChooseAnAnswer
ÖÖ 8
(
ÖÖ8 9
int
ÖÖ9 <
idAnswerSelected
ÖÖ= M
,
ÖÖM N
int
ÖÖO R
idUserAnswering
ÖÖS b
,
ÖÖb c
int
ÖÖd g
pointsWorth
ÖÖh s
)
ÖÖs t
{
ÜÜ 	
timer
áá 
.
áá 
Stop
áá 
(
áá 
)
áá 
;
áá 
bool
àà 
	isCorrect
àà 
;
àà 
string
ââ *
descriptionOfCurrentQuestion
ââ /
=
ââ0 1!
GetSpecificResource
ââ2 E
.
ââE F,
GetEnglishOrSpanishDescription
ââF d
(
ââd e%
answerToCurrentQuestion
ââe |
.
ââ| }'
EnglishAnswerDescriptionââ} ï
,ââï ñ'
answerToCurrentQuestionââó Æ
.ââÆ Ø(
SpanishAnswerDescriptionââØ «
)ââ« »
;ââ» …
var
ää 
answerSelected
ää 
=
ää  )
answersOfQuestionBeingAsked
ää! <
.
ää< =
Find
ää= A
(
ääA B
ans
ääB E
=>
ääF H
ans
ääI L
.
ääL M
IdAnswer
ääM U
==
ääV X
idAnswerSelected
ääY i
)
ääi j
;
ääj k
if
ãã 
(
ãã *
descriptionOfCurrentQuestion
ãã ,
.
ãã, -
Equals
ãã- 3
(
ãã3 4!
GetSpecificResource
ãã4 G
.
ããG H,
GetEnglishOrSpanishDescription
ããH f
(
ããf g
answerSelected
ããg u
.
ããu v'
EnglishAnswerDescriptionããv é
,ããé è
answerSelectedããê û
.ããû ü(
SpanishAnswerDescriptionããü ∑
)ãã∑ ∏
)ãã∏ π
)ããπ ∫
{
åå 
	isCorrect
çç 
=
çç 
true
çç  
;
çç  !
}
éé 
else
èè 
{
êê 
	isCorrect
ëë 
=
ëë 
false
ëë !
;
ëë! "
}
íí 
await
ìì  
ShowResultOfAnswer
ìì $
(
ìì$ %
	isCorrect
ìì% .
,
ìì. /
idAnswerSelected
ìì0 @
,
ìì@ A
pointsWorth
ììB M
.
ììM N
ToString
ììN V
(
ììV W
)
ììW X
)
ììX Y
;
ììY Z
SumOrRestPoints
îî 
(
îî 
	isCorrect
îî %
,
îî% &
pointsWorth
îî' 2
,
îî2 3
idUserAnswering
îî4 C
)
îîC D
;
îîD E
HideQuestion
ïï 
(
ïï 
)
ïï 
;
ïï %
AssureThereAreQuestions
ññ #
(
ññ# $
)
ññ$ %
;
ññ% &
cnvResultOfAwnser
óó 
.
óó 

Visibility
óó (
=
óó) *

Visibility
óó+ 5
.
óó5 6
Hidden
óó6 <
;
óó< =
grTimer
òò 
.
òò 

Visibility
òò 
=
òò  

Visibility
òò! +
.
òò+ ,
Hidden
òò, 2
;
òò2 3
}
ôô 	
private
õõ 
async
õõ 
Task
õõ  
ShowResultOfAnswer
õõ -
(
õõ- .
bool
õõ. 2
	isCorrect
õõ3 <
,
õõ< =
int
õõ> A
idAnswerSelected
õõB R
,
õõR S
string
õõT Z
points
õõ[ a
)
õõa b
{
úú 	
grdAnswerChoices
ùù 
.
ùù 

Visibility
ùù '
=
ùù( )

Visibility
ùù* 4
.
ùù4 5
Hidden
ùù5 ;
;
ùù; <
cnvResultOfAwnser
ûû 
.
ûû 

Visibility
ûû (
=
ûû) *

Visibility
ûû+ 5
.
ûû5 6
Visible
ûû6 =
;
ûû= >
txbQuestionResult
üü 
.
üü 
Text
üü "
=
üü# $!
GetSpecificResource
üü% 8
.
üü8 9,
GetEnglishOrSpanishDescription
üü9 W
(
üüW X 
questionBeingAsked
üüY k
.
üük l)
EnglishQuestionDescriptionüül Ü
,üüÜ á"
questionBeingAskedüüà ö
.üüö õ*
SpanishQuestionDescriptionüüõ µ
)üüµ ∂
;üü∂ ∑
var
†† 
answerSelected
†† 
=
††  )
answersOfQuestionBeingAsked
††! <
.
††< =
Find
††= A
(
††A B
ans
††B E
=>
††F H
ans
††I L
.
††L M
IdAnswer
††M U
==
††V X
idAnswerSelected
††Y i
)
††i j
;
††j k#
txbStringAnswerChoose
°° !
.
°°! "
Text
°°" &
=
°°' (!
GetSpecificResource
°°) <
.
°°< =,
GetEnglishOrSpanishDescription
°°= [
(
°°[ \
answerSelected
°°\ j
.
°°j k'
EnglishAnswerDescription°°k É
,°°É Ñ
answerSelected°°Ö ì
.°°ì î(
SpanishAnswerDescription°°î ¨
)°°¨ ≠
;°°≠ Æ
if
¢¢ 
(
¢¢ 
	isCorrect
¢¢ 
)
¢¢ 
{
££ 
imgAnswerResult
§§ 
.
§§  
Source
§§  &
=
§§' (
new
§§) ,
BitmapImage
§§- 8
(
§§8 9
new
§§9 <
Uri
§§= @
(
§§@ A
App
§§A D
.
§§D E
Current
§§E L
.
§§L M
	Resources
§§M V
[
§§V W
$str
§§W h
]
§§h i
.
§§i j
ToString
§§j r
(
§§r s
)
§§s t
,
§§t u
UriKind
§§v }
.
§§} ~
Absolute§§~ Ü
)§§Ü á
)§§á à
;§§à â#
txbPointsEarnedOrLost
•• %
.
••% &
Text
••& *
=
••+ ,
$str
••- 1
+
••2 3
points
••4 :
;
••: ;
}
¶¶ 
else
ßß 
{
®® 
imgAnswerResult
©© 
.
©©  
Source
©©  &
=
©©' (
new
©©) ,
BitmapImage
©©- 8
(
©©8 9
new
©©9 <
Uri
©©= @
(
©©@ A
App
©©A D
.
©©D E
Current
©©E L
.
©©L M
	Resources
©©M V
[
©©V W
$str
©©W h
]
©©h i
.
©©i j
ToString
©©j r
(
©©r s
)
©©s t
,
©©t u
UriKind
©©v }
.
©©} ~
Absolute©©~ Ü
)©©Ü á
)©©á à
;©©à â#
txbPointsEarnedOrLost
™™ %
.
™™% &
Text
™™& *
=
™™+ ,
$str
™™- 1
+
™™2 3
points
™™4 :
;
™™: ;
}
´´ 
await
¨¨ 
Task
¨¨ 
.
¨¨ 
Delay
¨¨ 
(
¨¨ 
$num
¨¨ !
)
¨¨! "
;
¨¨" #
}
≠≠ 	
private
ØØ 
void
ØØ 
SumOrRestPoints
ØØ $
(
ØØ$ %
bool
ØØ% )
	isCorrect
ØØ* 3
,
ØØ3 4
int
ØØ5 8
points
ØØ9 ?
,
ØØ? @
int
ØØA D
idUser
ØØE K
)
ØØK L
{
∞∞ 	
var
±± 
playerChoosing
±± 
=
±±  
playersInGame
±±! .
.
±±. /
Find
±±/ 3
(
±±3 4
player
±±4 :
=>
±±; =
player
±±> D
.
±±D E
IdUser
±±E K
==
±±L N
idUser
±±O U
)
±±U V
;
±±V W
GameTeamCard
≤≤ 
specificTeam
≤≤ %
=
≤≤& '
null
≤≤( ,
;
≤≤, -
if
≥≥ 
(
≥≥ 
itsTeamGame
≥≥ 
)
≥≥ 
{
¥¥ 
string
µµ 
nameOfBorder
µµ #
;
µµ# $
if
∂∂ 
(
∂∂ 
playerChoosing
∂∂ "
.
∂∂" #
SideTeam
∂∂# +
==
∂∂, .
$num
∂∂/ 0
)
∂∂0 1
{
∑∑ 
nameOfBorder
∏∏  
=
∏∏! "
	team1Name
∏∏# ,
;
∏∏, -
}
ππ 
else
∫∫ 
{
ªª 
nameOfBorder
ºº  
=
ºº! "
	team2Name
ºº# ,
;
ºº, -
}
ΩΩ 
specificTeam
ææ 
=
ææ 
(
ææ  
GameTeamCard
ææ  ,
)
ææ, -

stpPlayers
ææ- 7
.
ææ7 8
Children
ææ8 @
.
ææ@ A
OfType
ææA G
<
ææG H
Border
ææH N
>
ææN O
(
ææO P
)
ææP Q
.
ææQ R
FirstOrDefault
ææR `
(
ææ` a
pla
ææa d
=>
ææe g
pla
ææh k
.
ææk l
Name
ææl p
.
ææp q
Equals
ææq w
(
ææw x
nameOfBorderææx Ñ
)ææÑ Ö
)ææÖ Ü
;ææÜ á
}
øø 
if
¿¿ 
(
¿¿ 
	isCorrect
¿¿ 
)
¿¿ 
{
¡¡ 
playerChoosing
¬¬ 
.
¬¬ "
CurrentPointsOfRound
¬¬ 3
+=
¬¬4 6
points
¬¬7 =
;
¬¬= >
if
√√ 
(
√√ 
itsTeamGame
√√ 
)
√√  
{
ƒƒ 
specificTeam
≈≈  
.
≈≈  !
UpdatePoints
≈≈! -
(
≈≈- .
points
≈≈. 4
+
≈≈5 6
specificTeam
≈≈7 C
.
≈≈C D
	GetPoints
≈≈D M
(
≈≈M N
)
≈≈N O
)
≈≈O P
;
≈≈P Q
playersInGame
∆∆ !
.
∆∆! "
Where
∆∆" '
(
∆∆' (
pl
∆∆( *
=>
∆∆+ -
pl
∆∆. 0
.
∆∆0 1
SideTeam
∆∆1 9
==
∆∆: <
playerChoosing
∆∆= K
.
∆∆K L
SideTeam
∆∆L T
)
∆∆T U
.
∆∆U V
ToList
∆∆V \
(
∆∆\ ]
)
∆∆] ^
.
∆∆^ _
ForEach
∆∆_ f
(
∆∆f g
pl
∆∆g i
=>
∆∆j l
pl
∆∆m o
.
∆∆o p#
CurrentPointsOfRound∆∆p Ñ
=∆∆Ö Ü
specificTeam∆∆á ì
.∆∆ì î
	GetPoints∆∆î ù
(∆∆ù û
)∆∆û ü
)∆∆ü †
;∆∆† °
}
«« 
}
»» 
else
…… 
{
   
playerChoosing
ÀÀ 
.
ÀÀ "
CurrentPointsOfRound
ÀÀ 3
-=
ÀÀ4 6
points
ÀÀ7 =
;
ÀÀ= >
if
ÃÃ 
(
ÃÃ 
itsTeamGame
ÃÃ 
)
ÃÃ  
{
ÕÕ 
specificTeam
ŒŒ  
.
ŒŒ  !
UpdatePoints
ŒŒ! -
(
ŒŒ- .
specificTeam
ŒŒ. :
.
ŒŒ: ;
	GetPoints
ŒŒ; D
(
ŒŒD E
)
ŒŒE F
-
ŒŒG H
points
ŒŒI O
)
ŒŒO P
;
ŒŒP Q
playersInGame
œœ !
.
œœ! "
Where
œœ" '
(
œœ' (
pl
œœ( *
=>
œœ+ -
pl
œœ. 0
.
œœ0 1
SideTeam
œœ1 9
==
œœ: <
playerChoosing
œœ= K
.
œœK L
SideTeam
œœL T
)
œœT U
.
œœU V
ToList
œœV \
(
œœ\ ]
)
œœ] ^
.
œœ^ _
ForEach
œœ_ f
(
œœf g
pl
œœg i
=>
œœj l
pl
œœm o
.
œœo p#
CurrentPointsOfRoundœœp Ñ
=œœÖ Ü
specificTeamœœá ì
.œœì î
	GetPointsœœî ù
(œœù û
)œœû ü
)œœü †
;œœ† °
}
–– 
}
—— 
if
““ 
(
““ 
!
““ 
itsTeamGame
““ 
)
““ 
{
”” 
GamePlayerCard
‘‘ 
specificPlayer
‘‘ -
=
‘‘. /
(
‘‘0 1
GamePlayerCard
‘‘1 ?
)
‘‘? @

stpPlayers
‘‘@ J
.
‘‘J K
Children
‘‘K S
.
‘‘S T
OfType
‘‘T Z
<
‘‘Z [
Border
‘‘[ a
>
‘‘a b
(
‘‘b c
)
‘‘c d
.
‘‘d e
FirstOrDefault
‘‘e s
(
‘‘s t
pla
‘‘t w
=>
‘‘x z
pla
‘‘{ ~
.
‘‘~ 
Name‘‘ É
.‘‘É Ñ
Equals‘‘Ñ ä
(‘‘ä ã
$str‘‘ã é
+‘‘è ê
playerChoosing‘‘ë ü
.‘‘ü †
IdUser‘‘† ¶
.‘‘¶ ß
ToString‘‘ß Ø
(‘‘Ø ∞
)‘‘∞ ±
)‘‘± ≤
)‘‘≤ ≥
;‘‘≥ ¥
if
’’ 
(
’’ 
specificPlayer
’’ "
!=
’’# %
null
’’& *
)
’’* +
{
÷÷ 
specificPlayer
◊◊ "
.
◊◊" #
UpdatePoints
◊◊# /
(
◊◊/ 0
playerChoosing
◊◊0 >
.
◊◊> ?"
CurrentPointsOfRound
◊◊? S
)
◊◊S T
;
◊◊T U
}
ÿÿ 
}
ŸŸ 
}
⁄⁄ 	
private
›› 
void
›› 
HideQuestion
›› !
(
››! "
)
››" #
{
ﬁﬁ 	
var
ﬂﬂ 

cardToHide
ﬂﬂ 
=
ﬂﬂ 
wrpBoardOfCards
ﬂﬂ ,
.
ﬂﬂ, -
Children
ﬂﬂ- 5
.
ﬂﬂ5 6
OfType
ﬂﬂ6 <
<
ﬂﬂ< =
Border
ﬂﬂ= C
>
ﬂﬂC D
(
ﬂﬂD E
)
ﬂﬂE F
.
ﬂﬂF G
FirstOrDefault
ﬂﬂG U
(
ﬂﬂU V
card
ﬂﬂV Z
=>
ﬂﬂ[ ]
card
ﬂﬂ^ b
.
ﬂﬂb c
Name
ﬂﬂc g
.
ﬂﬂg h
Equals
ﬂﬂh n
(
ﬂﬂn o
$str
ﬂﬂo r
+
ﬂﬂs t!
questionBeingAskedﬂﬂu á
.ﬂﬂá à

IdQuestionﬂﬂà í
.ﬂﬂí ì
ToStringﬂﬂì õ
(ﬂﬂõ ú
)ﬂﬂú ù
)ﬂﬂù û
)ﬂﬂû ü
;ﬂﬂü †
if
‡‡ 
(
‡‡ 

cardToHide
‡‡ 
!=
‡‡ 
null
‡‡ "
)
‡‡" #
{
·· 

cardToHide
‚‚ 
.
‚‚ 
	IsEnabled
‚‚ $
=
‚‚% &
false
‚‚' ,
;
‚‚, -
}
„„ 
}
‰‰ 	
private
ÊÊ 
void
ÊÊ %
AssureThereAreQuestions
ÊÊ ,
(
ÊÊ, -
)
ÊÊ- .
{
ÁÁ 	
if
ËË 
(
ËË 
currentTurn
ËË 
==
ËË 
yourTurn
ËË '
&&
ËË( *
wrpBoardOfCards
ËË+ :
.
ËË: ;
Children
ËË; C
.
ËËC D
OfType
ËËD J
<
ËËJ K
Border
ËËK Q
>
ËËQ R
(
ËËR S
)
ËËS T
.
ËËT U
Count
ËËU Z
(
ËËZ [
card
ËË[ _
=>
ËË` b
card
ËËc g
.
ËËg h
	IsEnabled
ËËh q
)
ËËq r
<=
ËËs u
$num
ËËv w
)
ËËw x
{
ÈÈ 
try
ÍÍ 
{
ÎÎ 
GameActionsClient
ÏÏ %,
gameActionsCallBackClientProxy
ÏÏ& D
=
ÏÏE F
new
ÏÏG J
GameActionsClient
ÏÏK \
(
ÏÏ\ ]
new
ÏÏ] `
InstanceContext
ÏÏa p
(
ÏÏp q
this
ÏÏq u
)
ÏÏu v
)
ÏÏv w
;
ÏÏw x,
gameActionsCallBackClientProxy
ÌÌ 2
.
ÌÌ2 3
RenewGameCallBack
ÌÌ3 D
(
ÌÌD E
roomCode
ÌÌE M
,
ÌÌM N
userSingleton
ÌÌO \
.
ÌÌ\ ]
IdUser
ÌÌ] c
)
ÌÌc d
;
ÌÌd e)
GameActionsOperationsClient
ÓÓ /$
gameActionsClientProxy
ÓÓ0 F
=
ÓÓG H
new
ÓÓI L
(
ÓÓL M
)
ÓÓM N
;
ÓÓN O$
gameActionsClientProxy
ÔÔ *
.
ÔÔ* +
FinishRound
ÔÔ+ 6
(
ÔÔ6 7
roomCode
ÔÔ7 ?
,
ÔÔ? @
playersInGame
ÔÔA N
.
ÔÔN O
ToArray
ÔÔO V
(
ÔÔV W
)
ÔÔW X
,
ÔÔX Y
currentRound
ÔÔZ f
)
ÔÔf g
;
ÔÔg h
}
 
catch
ÒÒ 
(
ÒÒ '
EndpointNotFoundException
ÒÒ 0
ex
ÒÒ1 3
)
ÒÒ3 4
{
ÚÚ 
HandleException
ÛÛ #
(
ÛÛ# $
ex
ÛÛ$ &
,
ÛÛ& '

Properties
ÛÛ( 2
.
ÛÛ2 3
	Resources
ÛÛ3 <
.
ÛÛ< =#
lblFailToChooseAnswer
ÛÛ= R
+
ÛÛS T
$str
ÛÛU Z
+
ÛÛ[ \

Properties
ÛÛ] g
.
ÛÛg h
	Resources
ÛÛh q
.
ÛÛq r"
lblEndPointNotFoundÛÛr Ö
)ÛÛÖ Ü
;ÛÛÜ á
}
ÙÙ 
catch
ıı 
(
ıı 1
#CommunicationObjectFaultedException
ıı :
ex
ıı; =
)
ıı= >
{
ˆˆ 
HandleException
˜˜ #
(
˜˜# $
ex
˜˜$ &
,
˜˜& '

Properties
˜˜( 2
.
˜˜2 3
	Resources
˜˜3 <
.
˜˜< =#
lblFailToChooseAnswer
˜˜= R
+
˜˜S T
$str
˜˜U Z
+
˜˜[ \

Properties
˜˜] g
.
˜˜g h
	Resources
˜˜h q
.
˜˜q r'
lblComunicationException˜˜r ä
)˜˜ä ã
;˜˜ã å
}
¯¯ 
catch
˘˘ 
(
˘˘ 
TimeoutException
˘˘ '
ex
˘˘( *
)
˘˘* +
{
˙˙ 
HandleException
˚˚ #
(
˚˚# $
ex
˚˚$ &
,
˚˚& '

Properties
˚˚( 2
.
˚˚2 3
	Resources
˚˚3 <
.
˚˚< =#
lblFailToChooseAnswer
˚˚= R
+
˚˚S T
$str
˚˚U Z
+
˚˚[ \

Properties
˚˚] g
.
˚˚g h
	Resources
˚˚h q
.
˚˚q r
lblTimeException˚˚r Ç
)˚˚Ç É
;˚˚É Ñ
}
¸¸ 
catch
˝˝ 
(
˝˝ $
CommunicationException
˝˝ -
ex
˝˝. 0
)
˝˝0 1
{
˛˛ 
HandleException
ˇˇ #
(
ˇˇ# $
ex
ˇˇ$ &
,
ˇˇ& '

Properties
ˇˇ( 2
.
ˇˇ2 3
	Resources
ˇˇ3 <
.
ˇˇ< =#
lblFailToChooseAnswer
ˇˇ= R
+
ˇˇS T
$str
ˇˇU Z
+
ˇˇ[ \

Properties
ˇˇ] g
.
ˇˇg h
	Resources
ˇˇh q
.
ˇˇq r"
lblWithoutConectionˇˇr Ö
)ˇˇÖ Ü
;ˇˇÜ á
}
ÄÄ 
catch
ÅÅ 
(
ÅÅ 
SocketException
ÅÅ &
ex
ÅÅ' )
)
ÅÅ) *
{
ÇÇ 
HandleException
ÉÉ #
(
ÉÉ# $
ex
ÉÉ$ &
,
ÉÉ& '

Properties
ÉÉ( 2
.
ÉÉ2 3
	Resources
ÉÉ3 <
.
ÉÉ< = 
lblFailToStartGame
ÉÉ= O
+
ÉÉP Q
$str
ÉÉR W
+
ÉÉX Y

Properties
ÉÉZ d
.
ÉÉd e
	Resources
ÉÉe n
.
ÉÉn o"
lblEndPointNotFoundÉÉo Ç
)ÉÉÇ É
;ÉÉÉ Ñ
}
ÑÑ 
}
ÖÖ 
}
ÜÜ 	
public
àà 
void
àà *
ReceiveNotificationAboutTurn
àà 0
(
àà0 1
int
àà1 4

isYourTurn
àà5 ?
)
àà? @
{
ââ 	
currentTurn
ää 
=
ää 

isYourTurn
ää $
;
ää$ %
ShowIfItsYourTurn
ãã 
(
ãã 
)
ãã 
;
ãã  
}
åå 	
private
éé 
void
éé 
ShowIfItsYourTurn
éé &
(
éé& '
)
éé' (
{
èè 	
var
êê 
userTurn
êê 
=
êê 
playersInGame
êê (
.
êê( )
Find
êê) -
(
êê- .
pla
êê. 1
=>
êê2 4
pla
êê5 8
.
êê8 9
TurnOfPlayer
êê9 E
==
êêF H
currentTurn
êêI T
)
êêT U
;
êêU V
List
ëë 
<
ëë 
Border
ëë 
>
ëë 
specificPlayer
ëë '
=
ëë( )

stpPlayers
ëë* 4
.
ëë4 5
Children
ëë5 =
.
ëë= >
OfType
ëë> D
<
ëëD E
Border
ëëE K
>
ëëK L
(
ëëL M
)
ëëM N
.
ëëN O
ToList
ëëO U
(
ëëU V
)
ëëV W
;
ëëW X
if
íí 
(
íí 
itsTeamGame
íí 
&&
íí 
userTurn
íí '
!=
íí( *
null
íí+ /
)
íí/ 0
{
ìì %
ResaltTeamPlayersBorder
îî '
(
îî' (
specificPlayer
îî( 6
,
îî6 7
userTurn
îî8 @
)
îî@ A
;
îîA B
}
ïï 
else
ññ 
{
óó &
ResaltSinglePlayerBorder
òò (
(
òò( )
specificPlayer
òò) 7
,
òò7 8
userTurn
òò9 A
)
òòA B
;
òòB C
}
ôô 
}
öö 	
private
úú 
void
úú &
ResaltSinglePlayerBorder
úú -
(
úú- .
List
úú. 2
<
úú2 3
Border
úú3 9
>
úú9 :
specificPlayer
úú; I
,
úúI J&
PlayerInGameDataContract
úúK c
userTurn
úúd l
)
úúl m
{
ùù 	
foreach
ûû 
(
ûû 
Border
ûû 
card
ûû  
in
ûû! #
specificPlayer
ûû$ 2
)
ûû2 3
{
üü 
GamePlayerCard
†† 

playerCard
†† )
=
††* +
card
††, 0
as
††1 3
GamePlayerCard
††4 B
;
††B C
if
°° 
(
°° 

playerCard
°° 
.
°° 
Name
°° #
.
°°# $
Equals
°°$ *
(
°°* +
$str
°°+ .
+
°°/ 0
userTurn
°°1 9
.
°°9 :
IdUser
°°: @
)
°°@ A
)
°°A B
{
¢¢ 

playerCard
££ 
.
££ 
MakeBorderSpecial
££ 0
(
££0 1
)
££1 2
;
££2 3
}
§§ 
else
•• 
{
¶¶ 

playerCard
ßß 
.
ßß 
MakeBoredNormal
ßß .
(
ßß. /
)
ßß/ 0
;
ßß0 1
}
®® 
}
©© $
ChangeColorOfTrunLigth
™™ "
(
™™" #
)
™™# $
;
™™$ %
}
´´ 	
private
≠≠ 
void
≠≠ %
ResaltTeamPlayersBorder
≠≠ ,
(
≠≠, -
List
≠≠- 1
<
≠≠1 2
Border
≠≠2 8
>
≠≠8 9
specificPlayer
≠≠: H
,
≠≠H I&
PlayerInGameDataContract
≠≠J b
userTurn
≠≠c k
)
≠≠k l
{
ÆÆ 	
string
ØØ 
nameOfBorder
ØØ 
;
ØØ  
if
∞∞ 
(
∞∞ 
userTurn
∞∞ 
.
∞∞ 
SideTeam
∞∞ !
==
∞∞" $
$num
∞∞% &
)
∞∞& '
{
±± 
nameOfBorder
≤≤ 
=
≤≤ 
	team1Name
≤≤ (
;
≤≤( )
}
≥≥ 
else
¥¥ 
{
µµ 
nameOfBorder
∂∂ 
=
∂∂ 
	team2Name
∂∂ (
;
∂∂( )
}
∑∑ 
foreach
∏∏ 
(
∏∏ 
Border
∏∏ 
card
∏∏  
in
∏∏! #
specificPlayer
∏∏$ 2
)
∏∏2 3
{
ππ 
GameTeamCard
∫∫ 

playerCard
∫∫ '
=
∫∫( )
card
∫∫* .
as
∫∫/ 1
GameTeamCard
∫∫2 >
;
∫∫> ?
if
ªª 
(
ªª 

playerCard
ªª 
.
ªª 
Name
ªª #
.
ªª# $
Equals
ªª$ *
(
ªª* +
nameOfBorder
ªª+ 7
)
ªª7 8
)
ªª8 9
{
ºº 

playerCard
ΩΩ 
.
ΩΩ 
MakeBorderSpecial
ΩΩ 0
(
ΩΩ0 1
)
ΩΩ1 2
;
ΩΩ2 3
}
ææ 
else
øø 
{
¿¿ 

playerCard
¡¡ 
.
¡¡ 
MakeBoredNormal
¡¡ .
(
¡¡. /
)
¡¡/ 0
;
¡¡0 1
}
¬¬ 
}
√√ 
}
ƒƒ 	
private
∆∆ 
void
∆∆ $
ChangeColorOfTrunLigth
∆∆ +
(
∆∆+ ,
)
∆∆, -
{
«« 	
if
»» 
(
»» 
yourTurn
»» 
==
»» 
currentTurn
»» '
)
»»' (
{
…… 
ellYourTurn
   
.
   
Fill
    
=
  ! "
Brushes
  # *
.
  * +
Green
  + 0
;
  0 1
}
ÀÀ 
else
ÃÃ 
{
ÕÕ 
ellYourTurn
ŒŒ 
.
ŒŒ 
Fill
ŒŒ  
=
ŒŒ! "
Brushes
ŒŒ# *
.
ŒŒ* +
Gray
ŒŒ+ /
;
ŒŒ/ 0
}
œœ 
}
–– 	
public
““ 
async
““ 
void
““  
ResponseBeginRound
““ ,
(
““, -
int
““- 0

isYourTurn
““1 ;
,
““; <
int
““= @
roundToStart
““A M
,
““M N&
PlayerInGameDataContract
““O g
[
““g h
]
““h i
playerInGam
““j u
)
““u v
{
”” 	
playersInGame
‘‘ 
=
‘‘ 
playersInGame
‘‘ )
.
‘‘) *
ToList
‘‘* 0
(
‘‘0 1
)
‘‘1 2
;
‘‘2 3
switch
’’ 
(
’’ 
roundToStart
’’  
)
’’  !
{
÷÷ 
case
◊◊ 
$num
◊◊ 
:
◊◊ 
currentRound
ÿÿ  
=
ÿÿ! "
roundToStart
ÿÿ# /
;
ÿÿ/ 0
await
ŸŸ 
PrepareRoundTwo
ŸŸ )
(
ŸŸ) *
)
ŸŸ* +
;
ŸŸ+ ,
break
⁄⁄ 
;
⁄⁄ 
case
€€ 
$num
€€ 
:
€€ 
currentRound
‹‹  
=
‹‹! "
roundToStart
‹‹# /
;
‹‹/ 0
await
›› 
PrepareLastRound
›› *
(
››* +
)
››+ ,
;
››, -
break
ﬁﬁ 
;
ﬁﬁ 
}
ﬂﬂ 
}
‡‡ 	
public
‚‚ 
void
‚‚  
ResponseShowWinner
‚‚ &
(
‚‚& '&
PlayerInGameDataContract
‚‚' ?
[
‚‚? @
]
‚‚@ A
playerInGame
‚‚B N
,
‚‚N O
int
‚‚P S
poinstWereSaved
‚‚T c
)
‚‚c d
{
„„ 	
currentRound
‰‰ 
=
‰‰ 
$num
‰‰ 
;
‰‰ 
playersInGame
ÂÂ 
=
ÂÂ 
playerInGame
ÂÂ (
.
ÂÂ( )
ToList
ÂÂ) /
(
ÂÂ/ 0
)
ÂÂ0 1
;
ÂÂ1 2'
CreatePlayersScoresBoards
ÊÊ %
(
ÊÊ% &
)
ÊÊ& '
;
ÊÊ' (
List
ÁÁ 
<
ÁÁ &
PlayerInGameDataContract
ÁÁ )
>
ÁÁ) *
playersOredered
ÁÁ+ :
=
ÁÁ; <
playerInGame
ÁÁ= I
.
ÁÁI J
OrderByDescending
ÁÁJ [
(
ÁÁ[ \
pl
ÁÁ\ ^
=>
ÁÁ_ a
pl
ÁÁb d
.
ÁÁd e"
CurrentPointsOfRound
ÁÁe y
)
ÁÁy z
.
ÁÁz {
ToListÁÁ{ Å
(ÁÁÅ Ç
)ÁÁÇ É
;ÁÁÉ Ñ
grdAnswerChoices
ËË 
.
ËË 

Visibility
ËË '
=
ËË( )

Visibility
ËË* 4
.
ËË4 5
Hidden
ËË5 ;
;
ËË; <
grTimer
ÈÈ 
.
ÈÈ 

Visibility
ÈÈ 
=
ÈÈ  

Visibility
ÈÈ! +
.
ÈÈ+ ,
Hidden
ÈÈ, 2
;
ÈÈ2 3
grWinnerPanel
ÍÍ 
.
ÍÍ 

Visibility
ÍÍ $
=
ÍÍ% &

Visibility
ÍÍ' 1
.
ÍÍ1 2
Visible
ÍÍ2 9
;
ÍÍ9 :
List
ÎÎ 
<
ÎÎ 
Border
ÎÎ 
>
ÎÎ 
playersBorders
ÎÎ '
=
ÎÎ( )

stpPlayers
ÎÎ* 4
.
ÎÎ4 5
Children
ÎÎ5 =
.
ÎÎ= >
OfType
ÎÎ> D
<
ÎÎD E
Border
ÎÎE K
>
ÎÎK L
(
ÎÎL M
)
ÎÎM N
.
ÎÎN O
ToList
ÎÎO U
(
ÎÎU V
)
ÎÎV W
;
ÎÎW X&
SetPlayerInPositionSpots
ÏÏ $
(
ÏÏ$ %
playersBorders
ÏÏ% 3
,
ÏÏ3 4
playersOredered
ÏÏ5 D
)
ÏÏD E
;
ÏÏE F
if
ÌÌ 
(
ÌÌ 
userSingleton
ÌÌ 
.
ÌÌ 
IdState
ÌÌ $
!=
ÌÌ% '
$num
ÌÌ( )
)
ÌÌ) *
{
ÓÓ 
if
ÔÔ 
(
ÔÔ 
poinstWereSaved
ÔÔ #
==
ÔÔ$ &!
ExceptionDictionary
ÔÔ' :
.
ÔÔ: ;
SUCCESFULL_EVENT
ÔÔ; K
)
ÔÔK L
{
 !
DialogWindowManager
ÒÒ '
.
ÒÒ' (#
ShowInfoOrErrorWindow
ÒÒ( =
(
ÒÒ= >

Properties
ÒÒ> H
.
ÒÒH I
	Resources
ÒÒI R
.
ÒÒR S
txbGameFinish
ÒÒS `
,
ÒÒ` a

Properties
ÒÒb l
.
ÒÒl m
	Resources
ÒÒm v
.
ÒÒv w
GameFinishedÒÒw É
,ÒÒÉ Ñ
WindowÒÒÖ ã
.ÒÒã å
	GetWindowÒÒå ï
(ÒÒï ñ
thisÒÒñ ö
)ÒÒö õ
,ÒÒõ ú#
DialogWindowManagerÒÒù ∞
.ÒÒ∞ ±
INFORMATIONÒÒ± º
)ÒÒº Ω
;ÒÒΩ æ
}
ÚÚ 
else
ÛÛ 
{
ÙÙ !
DialogWindowManager
ıı '
.
ıı' (#
ShowInfoOrErrorWindow
ıı( =
(
ıı= >

Properties
ıı> H
.
ııH I
	Resources
ııI R
.
ııR S
txbErrorTitle
ııS `
,
ıı` a

Properties
ııb l
.
ııl m
	Resources
ıım v
.
ııv w+
lblFailToSavePoinstAfterGameııw ì
,ııì î
Windowııï õ
.ııõ ú
	GetWindowııú •
(ıı• ¶
thisıı¶ ™
)ıı™ ´
,ıı´ ¨#
DialogWindowManagerıı≠ ¿
.ıı¿ ¡
ERRORıı¡ ∆
)ıı∆ «
;ıı« »
}
ˆˆ 
}
˜˜ 
else
¯¯ 
{
˘˘ !
DialogWindowManager
˙˙ #
.
˙˙# $#
ShowInfoOrErrorWindow
˙˙$ 9
(
˙˙9 :

Properties
˙˙: D
.
˙˙D E
	Resources
˙˙E N
.
˙˙N O
txbErrorTitle
˙˙O \
,
˙˙\ ]

Properties
˙˙^ h
.
˙˙h i
	Resources
˙˙i r
.
˙˙r s 
lblGuestEndOfGame˙˙s Ñ
,˙˙Ñ Ö
Window˙˙Ü å
.˙˙å ç
	GetWindow˙˙ç ñ
(˙˙ñ ó
this˙˙ó õ
)˙˙õ ú
,˙˙ú ù#
DialogWindowManager˙˙û ±
.˙˙± ≤
INFORMATION˙˙≤ Ω
)˙˙Ω æ
;˙˙æ ø
}
˚˚ 
}
¸¸ 	
private
˛˛ 
void
˛˛ &
SetPlayerInPositionSpots
˛˛ .
(
˛˛. /
List
˛˛/ 3
<
˛˛3 4
Border
˛˛4 :
>
˛˛: ;
playerBorder
˛˛< H
,
˛˛H I
List
˛˛J N
<
˛˛N O&
PlayerInGameDataContract
˛˛O g
>
˛˛g h
playerInGame
˛˛i u
)
˛˛u v
{
ˇˇ 	
List
ÄÄ 
<
ÄÄ 
Border
ÄÄ 
>
ÄÄ 
pillarRectangles
ÄÄ )
=
ÄÄ* +
new
ÄÄ, /
List
ÄÄ0 4
<
ÄÄ4 5
Border
ÄÄ5 ;
>
ÄÄ; <
(
ÄÄ< =
)
ÄÄ= >
{
ÄÄ? @
brdFirstPlaceSpot
ÄÄA R
,
ÄÄR S 
brdSecondPlaceSpot
ÄÄT f
,
ÄÄf g 
brdtThirdPlaceSpot
ÄÄh z
,
ÄÄz {%
brdForthPlacePlaceSpotÄÄ| í
}ÄÄí ì
;ÄÄì î
List
ÅÅ 
<
ÅÅ 
Border
ÅÅ 
>
ÅÅ 
borderPositions
ÅÅ (
=
ÅÅ) *
new
ÅÅ+ .
List
ÅÅ/ 3
<
ÅÅ3 4
Border
ÅÅ4 :
>
ÅÅ: ;
(
ÅÅ; <
)
ÅÅ< =
{
ÅÅ> ?
brdFirstPlace
ÅÅ@ M
,
ÅÅM N
brdSecondPlace
ÅÅO ]
,
ÅÅ] ^
brdThirdPlace
ÅÅ_ l
,
ÅÅl m
brdForthPlace
ÅÅn {
}
ÅÅ{ |
;
ÅÅ| }
if
ÇÇ 
(
ÇÇ 
itsTeamGame
ÇÇ 
)
ÇÇ 
{
ÉÉ 
var
ÑÑ 
borderTeam1
ÑÑ 
=
ÑÑ  !
playerBorder
ÑÑ" .
.
ÑÑ. /
Find
ÑÑ/ 3
(
ÑÑ3 4
pla
ÑÑ4 7
=>
ÑÑ8 :
pla
ÑÑ; >
.
ÑÑ> ?
Name
ÑÑ? C
.
ÑÑC D
Equals
ÑÑD J
(
ÑÑJ K
	team1Name
ÑÑK T
)
ÑÑT U
)
ÑÑU V
;
ÑÑV W
var
ÖÖ 
borderTeam2
ÖÖ 
=
ÖÖ  !
playerBorder
ÖÖ" .
.
ÖÖ. /
Find
ÖÖ/ 3
(
ÖÖ3 4
pla
ÖÖ4 7
=>
ÖÖ8 :
pla
ÖÖ; >
.
ÖÖ> ?
Name
ÖÖ? C
.
ÖÖC D
Equals
ÖÖD J
(
ÖÖJ K
	team2Name
ÖÖK T
)
ÖÖT U
)
ÖÖU V
;
ÖÖV W
var
ÜÜ 
playersTeam1
ÜÜ  
=
ÜÜ! "
playerInGame
ÜÜ# /
.
ÜÜ/ 0
Find
ÜÜ0 4
(
ÜÜ4 5
pl
ÜÜ5 7
=>
ÜÜ8 :
pl
ÜÜ; =
.
ÜÜ= >
SideTeam
ÜÜ> F
==
ÜÜG I
$num
ÜÜJ K
)
ÜÜK L
;
ÜÜL M
var
áá 
playerTeam2
áá 
=
áá  !
playerInGame
áá" .
.
áá. /
Find
áá/ 3
(
áá3 4
pl
áá4 6
=>
áá7 9
pl
áá: <
.
áá< =
SideTeam
áá= E
==
ááF H
$num
ááI J
)
ááJ K
;
ááK L
if
àà 
(
àà 
playersTeam1
àà  
!=
àà! #
null
àà$ (
&&
àà) +
playerTeam2
àà, 7
!=
àà8 :
null
àà; ?
&&
àà@ B
borderTeam1
ààC N
!=
ààO Q
null
ààR V
&&
ààW Y
borderTeam2
ààZ e
!=
ààf h
null
àài m
)
ààm n
{
ââ 
if
ää 
(
ää 
playersTeam1
ää $
.
ää$ %"
CurrentPointsOfRound
ää% 9
>=
ää: <
playerTeam2
ää= H
.
ääH I"
CurrentPointsOfRound
ääI ]
)
ää] ^
{
ãã 
borderTeam1
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
ååF G
borderTeam2
çç #
.
çç# $
Margin
çç$ *
=
çç+ ,
borderPositions
çç- <
[
çç< =
$num
çç= >
]
çç> ?
.
çç? @
Margin
çç@ F
;
ççF G
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
borderTeam1
éé9 D
.
ééD E

Background
ééE O
;
ééO P
pillarRectangles
èè (
[
èè( )
$num
èè) *
]
èè* +
.
èè+ ,

Background
èè, 6
=
èè7 8
borderTeam2
èè9 D
.
èèD E

Background
èèE O
;
èèO P
}
êê 
else
ëë 
{
íí 
borderTeam1
ìì #
.
ìì# $
Margin
ìì$ *
=
ìì+ ,
borderPositions
ìì- <
[
ìì< =
$num
ìì= >
]
ìì> ?
.
ìì? @
Margin
ìì@ F
;
ììF G
borderTeam2
îî #
.
îî# $
Margin
îî$ *
=
îî+ ,
borderPositions
îî- <
[
îî< =
$num
îî= >
]
îî> ?
.
îî? @
Margin
îî@ F
;
îîF G
pillarRectangles
ïï (
[
ïï( )
$num
ïï) *
]
ïï* +
.
ïï+ ,

Background
ïï, 6
=
ïï7 8
borderTeam1
ïï9 D
.
ïïD E

Background
ïïE O
;
ïïO P
pillarRectangles
ññ (
[
ññ( )
$num
ññ) *
]
ññ* +
.
ññ+ ,

Background
ññ, 6
=
ññ7 8
borderTeam2
ññ9 D
.
ññD E

Background
ññE O
;
ññO P
}
óó 
borderTeam1
òò 
.
òò  
Width
òò  %
=
òò& '
double
òò( .
.
òò. /
NaN
òò/ 2
;
òò2 3
borderTeam1
ôô 
.
ôô  
Height
ôô  &
=
ôô' (
double
ôô) /
.
ôô/ 0
NaN
ôô0 3
;
ôô3 4
borderTeam2
öö 
.
öö  
Width
öö  %
=
öö& '
double
öö( .
.
öö. /
NaN
öö/ 2
;
öö2 3
borderTeam2
õõ 
.
õõ  
Height
õõ  &
=
õõ' (
double
õõ) /
.
õõ/ 0
NaN
õõ0 3
;
õõ3 4

stpPlayers
úú 
.
úú 
Children
úú '
.
úú' (
Clear
úú( -
(
úú- .
)
úú. /
;
úú/ 0
int
ùù 
indexBorder0
ùù $
=
ùù% &
grWinnerPanel
ùù' 4
.
ùù4 5
Children
ùù5 =
.
ùù= >
IndexOf
ùù> E
(
ùùE F
borderPositions
ùùF U
[
ùùU V
$num
ùùV W
]
ùùW X
)
ùùX Y
;
ùùY Z
int
ûû 
indexBorder1
ûû $
=
ûû% &
grWinnerPanel
ûû' 4
.
ûû4 5
Children
ûû5 =
.
ûû= >
IndexOf
ûû> E
(
ûûE F
borderPositions
ûûF U
[
ûûU V
$num
ûûV W
]
ûûW X
)
ûûX Y
;
ûûY Z
grWinnerPanel
üü !
.
üü! "
Children
üü" *
.
üü* +
RemoveAt
üü+ 3
(
üü3 4
indexBorder0
üü4 @
)
üü@ A
;
üüA B
grWinnerPanel
†† !
.
††! "
Children
††" *
.
††* +
RemoveAt
††+ 3
(
††3 4
indexBorder1
††4 @
)
††@ A
;
††A B
grWinnerPanel
°° !
.
°°! "
Children
°°" *
.
°°* +
Insert
°°+ 1
(
°°1 2
indexBorder0
°°2 >
,
°°> ?
borderTeam1
°°@ K
)
°°K L
;
°°L M
grWinnerPanel
¢¢ !
.
¢¢! "
Children
¢¢" *
.
¢¢* +
Insert
¢¢+ 1
(
¢¢1 2
indexBorder1
¢¢2 >
,
¢¢> ?
borderTeam2
¢¢@ K
)
¢¢K L
;
¢¢L M
}
££ 
}
§§ 
else
•• 
{
¶¶ 
for
ßß 
(
ßß 
int
ßß 
i
ßß 
=
ßß 
playerInGame
ßß )
.
ßß) *
Count
ßß* /
-
ßß0 1
$num
ßß2 3
;
ßß3 4
i
ßß5 6
>=
ßß7 9
$num
ßß: ;
;
ßß; <
i
ßß= >
--
ßß> @
)
ßß@ A
{
®® 
pillarRectangles
©© $
[
©©$ %
i
©©% &
]
©©& '
.
©©' (

Visibility
©©( 2
=
©©3 4

Visibility
©©5 ?
.
©©? @
Visible
©©@ G
;
©©G H
int
™™ 
index
™™ 
=
™™ 
grWinnerPanel
™™  -
.
™™- .
Children
™™. 6
.
™™6 7
IndexOf
™™7 >
(
™™> ?
borderPositions
™™? N
[
™™N O
i
™™O P
]
™™P Q
)
™™Q R
;
™™R S
Border
´´ 

borderCopy
´´ %
;
´´% &

borderCopy
¨¨ 
=
¨¨  
playerBorder
¨¨! -
.
¨¨- .
Find
¨¨. 2
(
¨¨2 3
pla
¨¨3 6
=>
¨¨7 9
pla
¨¨: =
.
¨¨= >
Name
¨¨> B
.
¨¨B C
Equals
¨¨C I
(
¨¨I J
$str
¨¨J M
+
¨¨N O
playerInGame
¨¨P \
[
¨¨\ ]
i
¨¨] ^
]
¨¨^ _
.
¨¨_ `
IdUser
¨¨` f
.
¨¨f g
ToString
¨¨g o
(
¨¨o p
)
¨¨p q
)
¨¨q r
)
¨¨r s
;
¨¨s t
if
≠≠ 
(
≠≠ 

borderCopy
≠≠ "
!=
≠≠# %
null
≠≠& *
)
≠≠* +
{
ÆÆ 

stpPlayers
ØØ "
.
ØØ" #
Children
ØØ# +
.
ØØ+ ,
Remove
ØØ, 2
(
ØØ2 3

borderCopy
ØØ3 =
)
ØØ= >
;
ØØ> ?

borderCopy
∞∞ "
.
∞∞" #
Margin
∞∞# )
=
∞∞* +
borderPositions
∞∞, ;
[
∞∞; <
i
∞∞< =
]
∞∞= >
.
∞∞> ?
Margin
∞∞? E
;
∞∞E F
grWinnerPanel
±± %
.
±±% &
Children
±±& .
.
±±. /
RemoveAt
±±/ 7
(
±±7 8
index
±±8 =
)
±±= >
;
±±> ?
grWinnerPanel
≤≤ %
.
≤≤% &
Children
≤≤& .
.
≤≤. /
Insert
≤≤/ 5
(
≤≤5 6
index
≤≤6 ;
,
≤≤; <

borderCopy
≤≤= G
)
≤≤G H
;
≤≤H I
pillarRectangles
≥≥ (
[
≥≥( )
i
≥≥) *
]
≥≥* +
.
≥≥+ ,

Background
≥≥, 6
=
≥≥7 8

borderCopy
≥≥9 C
.
≥≥C D

Background
≥≥D N
;
≥≥N O
}
¥¥ 
}
µµ 
}
∂∂ 
}
∑∑ 	
private
ππ 
void
ππ 

StartTimer
ππ 
(
ππ  
)
ππ  !
{
∫∫ 	
txbTimer
ªª 
.
ªª 
Text
ªª 
=
ªª 
timeLeft
ªª $
.
ªª$ %
ToString
ªª% -
(
ªª- .
)
ªª. /
+
ªª0 1!
secondsAbbreviation
ªª2 E
;
ªªE F
if
ºº 
(
ºº 
currentRound
ºº 
==
ºº 
	ROUND_ONE
ºº (
)
ºº( )
{
ΩΩ 
timeLeft
ææ 
=
ææ 
$num
ææ 
;
ææ 
}
øø 
else
¿¿ 
{
¡¡ 
timeLeft
¬¬ 
=
¬¬ 
$num
¬¬ 
;
¬¬ 
}
√√ 
timer
ƒƒ 
=
ƒƒ 
new
ƒƒ 
DispatcherTimer
ƒƒ '
(
ƒƒ' (
)
ƒƒ( )
;
ƒƒ) *
timer
≈≈ 
.
≈≈ 
Interval
≈≈ 
=
≈≈ 
TimeSpan
≈≈ %
.
≈≈% &
FromSeconds
≈≈& 1
(
≈≈1 2
$num
≈≈2 3
)
≈≈3 4
;
≈≈4 5
timer
∆∆ 
.
∆∆ 
Tick
∆∆ 
+=
∆∆ 

Timer_Tick
∆∆ $
;
∆∆$ %
timer
«« 
.
«« 
Start
«« 
(
«« 
)
«« 
;
«« 
}
»» 	
private
   
void
   

Timer_Tick
   
(
    
object
    &
sender
  ' -
,
  - .
	EventArgs
  / 8
e
  9 :
)
  : ;
{
ÀÀ 	
txbTimer
ÃÃ 
.
ÃÃ 
Text
ÃÃ 
=
ÃÃ 
timeLeft
ÃÃ $
.
ÃÃ$ %
ToString
ÃÃ% -
(
ÃÃ- .
)
ÃÃ. /
+
ÃÃ0 1!
secondsAbbreviation
ÃÃ2 E
;
ÃÃE F
if
ÕÕ 
(
ÕÕ 
timeLeft
ÕÕ 
<=
ÕÕ 
$num
ÕÕ 
)
ÕÕ 
{
ŒŒ 
if
œœ 
(
œœ 
currentRound
œœ  
!=
œœ! #
ROUND_THREE
œœ$ /
&&
œœ0 2
grdAnswerChoices
œœ3 C
.
œœC D
	IsVisible
œœD M
)
œœM N
{
–– 
ChooseWrongAnswer
—— %
(
——% &
)
——& '
;
——' (
}
““ 
}
”” 
else
‘‘ 
{
’’ 
timeLeft
÷÷ 
--
÷÷ 
;
÷÷ 
}
◊◊ 
}
ÿÿ 	
private
⁄⁄ 
void
⁄⁄ 
ChooseWrongAnswer
⁄⁄ &
(
⁄⁄& '
)
⁄⁄' (
{
€€ 	
string
‹‹ )
descriptionAnswerToQuestion
‹‹ .
=
‹‹/ 0!
GetSpecificResource
‹‹1 D
.
‹‹D E,
GetEnglishOrSpanishDescription
‹‹E c
(
‹‹c d%
answerToCurrentQuestion
‹‹d {
.
‹‹{ |'
EnglishAnswerDescription‹‹| î
,‹‹î ï'
answerToCurrentQuestion‹‹ñ ≠
.‹‹≠ Æ(
SpanishAnswerDescription‹‹Æ ∆
)‹‹∆ «
;‹‹« »
Button
›› 
answerButton
›› 
=
››  !
grdAnswerChoices
››" 2
.
››2 3
Children
››3 ;
.
››; <
OfType
››< B
<
››B C
Button
››C I
>
››I J
(
››J K
)
››K L
.
››L M
FirstOrDefault
››M [
(
››[ \
btt
››\ _
=>
››` b
!
››c d
btt
››d g
.
››g h
Content
››h o
.
››o p
Equals
››p v
(
››v w*
descriptionAnswerToQuestion››w í
)››í ì
)››ì î
;››î ï
if
ﬁﬁ 
(
ﬁﬁ 
currentTurn
ﬁﬁ 
==
ﬁﬁ 
yourTurn
ﬁﬁ '
&&
ﬁﬁ( *
answerButton
ﬁﬁ+ 7
!=
ﬁﬁ8 :
null
ﬁﬁ; ?
)
ﬁﬁ? @
{
ﬂﬂ 
try
‡‡ 
{
·· 
if
„„ 
(
„„ 
currentRound
„„ $
!=
„„% '
ROUND_THREE
„„( 3
)
„„3 4
{
‰‰  
ConfirmWrongAnswer
ÂÂ *
(
ÂÂ* +
answerButton
ÂÂ+ 7
)
ÂÂ7 8
;
ÂÂ8 9
}
ÊÊ 
else
ÁÁ 
{
ËË ,
ConfirmWrongLastQuestionAnswer
ÈÈ 6
(
ÈÈ6 7
answerButton
ÈÈ7 C
)
ÈÈC D
;
ÈÈD E
}
ÍÍ 
}
ÎÎ 
catch
ÏÏ 
(
ÏÏ '
EndpointNotFoundException
ÏÏ 0
ex
ÏÏ1 3
)
ÏÏ3 4
{
ÌÌ 
HandleException
ÓÓ #
(
ÓÓ# $
ex
ÓÓ$ &
,
ÓÓ& '

Properties
ÓÓ( 2
.
ÓÓ2 3
	Resources
ÓÓ3 <
.
ÓÓ< =#
lblFailToChooseAnswer
ÓÓ= R
+
ÓÓS T
$str
ÓÓU Z
+
ÓÓ[ \

Properties
ÓÓ] g
.
ÓÓg h
	Resources
ÓÓh q
.
ÓÓq r"
lblEndPointNotFoundÓÓr Ö
)ÓÓÖ Ü
;ÓÓÜ á
}
ÔÔ 
catch
 
(
 1
#CommunicationObjectFaultedException
 :
ex
; =
)
= >
{
ÒÒ 
HandleException
ÚÚ #
(
ÚÚ# $
ex
ÚÚ$ &
,
ÚÚ& '

Properties
ÚÚ( 2
.
ÚÚ2 3
	Resources
ÚÚ3 <
.
ÚÚ< =#
lblFailToChooseAnswer
ÚÚ= R
+
ÚÚS T
$str
ÚÚU Z
+
ÚÚ[ \

Properties
ÚÚ] g
.
ÚÚg h
	Resources
ÚÚh q
.
ÚÚq r'
lblComunicationExceptionÚÚr ä
)ÚÚä ã
;ÚÚã å
}
ÛÛ 
catch
ÙÙ 
(
ÙÙ 
TimeoutException
ÙÙ '
ex
ÙÙ( *
)
ÙÙ* +
{
ıı 
HandleException
ˆˆ #
(
ˆˆ# $
ex
ˆˆ$ &
,
ˆˆ& '

Properties
ˆˆ( 2
.
ˆˆ2 3
	Resources
ˆˆ3 <
.
ˆˆ< =#
lblFailToChooseAnswer
ˆˆ= R
+
ˆˆS T
$str
ˆˆU Z
+
ˆˆ[ \

Properties
ˆˆ] g
.
ˆˆg h
	Resources
ˆˆh q
.
ˆˆq r
lblTimeExceptionˆˆr Ç
)ˆˆÇ É
;ˆˆÉ Ñ
}
˜˜ 
catch
¯¯ 
(
¯¯ $
CommunicationException
¯¯ -
ex
¯¯. 0
)
¯¯0 1
{
˘˘ 
HandleException
˙˙ #
(
˙˙# $
ex
˙˙$ &
,
˙˙& '

Properties
˙˙( 2
.
˙˙2 3
	Resources
˙˙3 <
.
˙˙< =#
lblFailToChooseAnswer
˙˙= R
+
˙˙S T
$str
˙˙U Z
+
˙˙[ \

Properties
˙˙] g
.
˙˙g h
	Resources
˙˙h q
.
˙˙q r"
lblWithoutConection˙˙r Ö
)˙˙Ö Ü
;˙˙Ü á
}
˚˚ 
catch
¸¸ 
(
¸¸ 
SocketException
¸¸ &
ex
¸¸' )
)
¸¸) *
{
˝˝ 
HandleException
˛˛ #
(
˛˛# $
ex
˛˛$ &
,
˛˛& '

Properties
˛˛( 2
.
˛˛2 3
	Resources
˛˛3 <
.
˛˛< = 
lblFailToStartGame
˛˛= O
+
˛˛P Q
$str
˛˛R W
+
˛˛X Y

Properties
˛˛Z d
.
˛˛d e
	Resources
˛˛e n
.
˛˛n o"
lblEndPointNotFound˛˛o Ç
)˛˛Ç É
;˛˛É Ñ
}
ˇˇ 
}
ÄÄ 
}
ÅÅ 	
private
ÑÑ 
void
ÑÑ  
ConfirmWrongAnswer
ÑÑ '
(
ÑÑ' (
Button
ÑÑ( .
answerButton
ÑÑ/ ;
)
ÑÑ; <
{
ÖÖ 	
try
ÜÜ 
{
áá 
GameActionsClient
àà !,
gameActionsCallBackClientProxy
àà" @
=
ààA B
new
ààC F
GameActionsClient
ààG X
(
ààX Y
new
ààY \
InstanceContext
àà] l
(
ààl m
this
ààm q
)
ààq r
)
ààr s
;
ààs t,
gameActionsCallBackClientProxy
ââ .
.
ââ. /
RenewGameCallBack
ââ/ @
(
ââ@ A
roomCode
ââA I
,
ââI J
userSingleton
ââK X
.
ââX Y
IdUser
ââY _
)
ââ_ `
;
ââ` a)
GameActionsOperationsClient
ää +$
gameActionsClientProxy
ää, B
=
ääC D
new
ääE H
(
ääH I
)
ääI J
;
ääJ K
var
ãã 
answerSelected
ãã "
=
ãã# $)
answersOfQuestionBeingAsked
ãã% @
.
ãã@ A
Find
ããA E
(
ããE F
anw
ããF I
=>
ããJ L!
GetSpecificResource
ããM `
.
ãã` a,
GetEnglishOrSpanishDescription
ããa 
(ãã Ä
anwããÄ É
.ããÉ Ñ(
EnglishAnswerDescriptionããÑ ú
,ããú ù
anwããû °
.ãã° ¢(
SpanishAnswerDescriptionãã¢ ∫
)ãã∫ ª
.ããª º
Equalsããº ¬
(ãã¬ √
answerButtonãã√ œ
.ããœ –
Contentãã– ◊
)ãã◊ ÿ
)ããÿ Ÿ
;ããŸ ⁄
if
åå 
(
åå 
answerSelected
åå "
!=
åå# %
null
åå& *
)
åå* +
{
çç $
gameActionsClientProxy
éé *
.
éé* +
ChooseAnswer
éé+ 7
(
éé7 8
roomCode
éé8 @
,
éé@ A
userSingleton
ééB O
.
ééO P
IdUser
ééP V
,
ééV W
answerSelected
ééX f
.
ééf g
IdAnswer
éég o
,
ééo p!
questionBeingAskedééq É
.ééÉ Ñ

ValueWorthééÑ é
,ééé è
yourTurnééê ò
)ééò ô
;ééô ö
}
èè 
}
êê 
catch
ëë 
(
ëë '
EndpointNotFoundException
ëë ,
ex
ëë- /
)
ëë/ 0
{
íí 
throw
ìì 
new
ìì '
EndpointNotFoundException
ìì 3
(
ìì3 4

Properties
ìì4 >
.
ìì> ?
	Resources
ìì? H
.
ììH I#
lblFailToChooseAnswer
ììI ^
,
ìì^ _
ex
ìì` b
)
ììb c
;
ììc d
}
îî 
catch
ïï 
(
ïï 1
#CommunicationObjectFaultedException
ïï 6
ex
ïï7 9
)
ïï9 :
{
ññ 
throw
óó 
new
óó 1
#CommunicationObjectFaultedException
óó =
(
óó= >

Properties
óó> H
.
óóH I
	Resources
óóI R
.
óóR S#
lblFailToChooseAnswer
óóS h
,
óóh i
ex
óój l
)
óól m
;
óóm n
}
òò 
catch
ôô 
(
ôô 
TimeoutException
ôô #
ex
ôô$ &
)
ôô& '
{
öö 
throw
õõ 
new
õõ 
TimeoutException
õõ *
(
õõ* +

Properties
õõ+ 5
.
õõ5 6
	Resources
õõ6 ?
.
õõ? @#
lblFailToChooseAnswer
õõ@ U
,
õõU V
ex
õõW Y
)
õõY Z
;
õõZ [
}
úú 
catch
ùù 
(
ùù $
CommunicationException
ùù )
ex
ùù* ,
)
ùù, -
{
ûû 
throw
üü 
new
üü $
CommunicationException
üü 0
(
üü0 1

Properties
üü1 ;
.
üü; <
	Resources
üü< E
.
üüE F#
lblFailToChooseAnswer
üüF [
,
üü[ \
ex
üü] _
)
üü_ `
;
üü` a
}
†† 
catch
°° 
(
°° 
SocketException
°° "
)
°°" #
{
¢¢ 
throw
££ 
new
££ 
SocketException
££ )
(
££) *
)
££* +
;
££+ ,
}
§§ 
}
•• 	
private
ßß 
void
ßß ,
ConfirmWrongLastQuestionAnswer
ßß 3
(
ßß3 4
Button
ßß4 :
answerButton
ßß; G
)
ßßG H
{
®® 	
try
©© 
{
™™ 
GameActionsClient
´´ !,
gameActionsCallBackClientProxy
´´" @
=
´´A B
new
´´C F
GameActionsClient
´´G X
(
´´X Y
new
´´Y \
InstanceContext
´´] l
(
´´l m
this
´´m q
)
´´q r
)
´´r s
;
´´s t,
gameActionsCallBackClientProxy
¨¨ .
.
¨¨. /
RenewGameCallBack
¨¨/ @
(
¨¨@ A
roomCode
¨¨A I
,
¨¨I J
userSingleton
¨¨K X
.
¨¨X Y
IdUser
¨¨Y _
)
¨¨_ `
;
¨¨` a)
GameActionsOperationsClient
≠≠ +$
gameActionsClientProxy
≠≠, B
=
≠≠C D
new
≠≠E H
(
≠≠H I
)
≠≠I J
;
≠≠J K
bool
ÆÆ 
	isCorrect
ÆÆ 
=
ÆÆ  
false
ÆÆ! &
;
ÆÆ& '
answerButton
ØØ 
.
ØØ 
BorderBrush
ØØ (
=
ØØ) *
new
ØØ+ .
SolidColorBrush
ØØ/ >
(
ØØ> ?
Colors
ØØ? E
.
ØØE F
Blue
ØØF J
)
ØØJ K
;
ØØK L
bttFirstAnswer
∞∞ 
.
∞∞ 
	IsEnabled
∞∞ (
=
∞∞) *
false
∞∞+ 0
;
∞∞0 1
bttSecondAnswer
±± 
.
±±  
	IsEnabled
±±  )
=
±±* +
false
±±, 1
;
±±1 2
bttThridAnswer
≤≤ 
.
≤≤ 
	IsEnabled
≤≤ (
=
≤≤) *
false
≤≤+ 0
;
≤≤0 1
bttFourAnswer
≥≥ 
.
≥≥ 
	IsEnabled
≥≥ '
=
≥≥( )
false
≥≥* /
;
≥≥/ 0
txbAdvicement
¥¥ 
.
¥¥ 

Visibility
¥¥ (
=
¥¥) *

Visibility
¥¥+ 5
.
¥¥5 6
Visible
¥¥6 =
;
¥¥= >$
gameActionsClientProxy
µµ &
.
µµ& ''
ConfirmLastQuestionAnswer
µµ' @
(
µµ@ A
roomCode
µµA I
,
µµI J
playersInGame
µµK X
.
µµX Y
Find
µµY ]
(
µµ] ^
pla
µµ^ a
=>
µµb d
pla
µµe h
.
µµh i
IdUser
µµi o
==
µµp r
userSingletonµµs Ä
.µµÄ Å
IdUserµµÅ á
)µµá à
,µµà â
	pointsBetµµä ì
,µµì î
	isCorrectµµï û
)µµû ü
;µµü †
}
∂∂ 
catch
∑∑ 
(
∑∑ '
EndpointNotFoundException
∑∑ ,
ex
∑∑- /
)
∑∑/ 0
{
∏∏ 
throw
ππ 
new
ππ '
EndpointNotFoundException
ππ 3
(
ππ3 4

Properties
ππ4 >
.
ππ> ?
	Resources
ππ? H
.
ππH I#
lblFailToChooseAnswer
ππI ^
,
ππ^ _
ex
ππ` b
)
ππb c
;
ππc d
}
∫∫ 
catch
ªª 
(
ªª 1
#CommunicationObjectFaultedException
ªª 6
ex
ªª7 9
)
ªª9 :
{
ºº 
throw
ΩΩ 
new
ΩΩ 1
#CommunicationObjectFaultedException
ΩΩ =
(
ΩΩ= >

Properties
ΩΩ> H
.
ΩΩH I
	Resources
ΩΩI R
.
ΩΩR S#
lblFailToChooseAnswer
ΩΩS h
,
ΩΩh i
ex
ΩΩj l
)
ΩΩl m
;
ΩΩm n
}
ææ 
catch
øø 
(
øø 
TimeoutException
øø #
ex
øø$ &
)
øø& '
{
¿¿ 
throw
¡¡ 
new
¡¡ 
TimeoutException
¡¡ *
(
¡¡* +

Properties
¡¡+ 5
.
¡¡5 6
	Resources
¡¡6 ?
.
¡¡? @#
lblFailToChooseAnswer
¡¡@ U
,
¡¡U V
ex
¡¡W Y
)
¡¡Y Z
;
¡¡Z [
}
¬¬ 
catch
√√ 
(
√√ $
CommunicationException
√√ )
ex
√√* ,
)
√√, -
{
ƒƒ 
throw
≈≈ 
new
≈≈ $
CommunicationException
≈≈ 0
(
≈≈0 1

Properties
≈≈1 ;
.
≈≈; <
	Resources
≈≈< E
.
≈≈E F#
lblFailToChooseAnswer
≈≈F [
,
≈≈[ \
ex
≈≈] _
)
≈≈_ `
;
≈≈` a
}
∆∆ 
catch
«« 
(
«« 
SocketException
«« "
)
««" #
{
»» 
throw
…… 
new
…… 
SocketException
…… )
(
……) *
)
……* +
;
……+ ,
}
   
}
ÀÀ 	
private
ÕÕ 
void
ÕÕ 
ClickLeaveGame
ÕÕ #
(
ÕÕ# $
object
ÕÕ$ *
sender
ÕÕ+ 1
,
ÕÕ1 2"
MouseButtonEventArgs
ÕÕ3 G
e
ÕÕH I
)
ÕÕI J
{
ŒŒ 	
if
œœ 
(
œœ 
currentRound
œœ 
==
œœ 
$num
œœ  
)
œœ  !
{
–– 
CloseWindow
—— 
(
—— 
)
—— 
;
—— 
}
““ 
else
”” 
if
”” 
(
”” !
DialogWindowManager
”” '
.
””' ($
ShowWindowConfirmation
””( >
(
””> ?

Properties
””? I
.
””I J
	Resources
””J S
.
””S T
txbWarningTitle
””T c
,
””c d

Properties
””e o
.
””o p
	Resources
””p y
.
””y z$
LeaveGameConfirmation””z è
,””è ê
Window””ë ó
.””ó ò
	GetWindow””ò °
(””° ¢
this””¢ ¶
)””¶ ß
)””ß ®
)””® ©
{
‘‘ 
NotifyLeavingGame
’’ !
(
’’! "
)
’’" #
;
’’# $
CloseWindow
÷÷ 
(
÷÷ 
)
÷÷ 
;
÷÷ 
}
◊◊ 
}
ŸŸ 	
private
⁄⁄ 
void
⁄⁄ 
CloseWindow
⁄⁄  
(
⁄⁄  !
)
⁄⁄! "
{
€€ 	
if
‹‹ 
(
‹‹ 
timer
‹‹ 
!=
‹‹ 
null
‹‹ 
)
‹‹ 
{
›› 
timer
ﬁﬁ 
.
ﬁﬁ 
Stop
ﬁﬁ 
(
ﬁﬁ 
)
ﬁﬁ 
;
ﬁﬁ 
}
ﬂﬂ 
if
‡‡ 
(
‡‡ 
userSingleton
‡‡ 
.
‡‡ 
IdState
‡‡ %
!=
‡‡& (
$num
‡‡) *
)
‡‡* +
{
·· 
MainMenu
‚‚ 
mainMenu
‚‚ !
=
‚‚" #
new
‚‚$ '
MainMenu
‚‚( 0
(
‚‚0 1
)
‚‚1 2
;
‚‚2 3
this
„„ 
.
„„ 
NavigationService
„„ &
.
„„& '
Navigate
„„' /
(
„„/ 0
mainMenu
„„0 8
)
„„8 9
;
„„9 :
NavigationService
‰‰ !
.
‰‰! "
RemoveBackEntry
‰‰" 1
(
‰‰1 2
)
‰‰2 3
;
‰‰3 4
}
ÂÂ 
else
ÊÊ 
{
ÁÁ 
DeleteSingleton
ËË 
(
ËË  
)
ËË  !
;
ËË! "
PrincipalPage
ÈÈ 
principalPage
ÈÈ +
=
ÈÈ, -
new
ÈÈ. 1
PrincipalPage
ÈÈ2 ?
(
ÈÈ? @
)
ÈÈ@ A
;
ÈÈA B
this
ÍÍ 
.
ÍÍ 
NavigationService
ÍÍ &
.
ÍÍ& '
Navigate
ÍÍ' /
(
ÍÍ/ 0
principalPage
ÍÍ0 =
)
ÍÍ= >
;
ÍÍ> ?
NavigationService
ÎÎ !
.
ÎÎ! "
RemoveBackEntry
ÎÎ" 1
(
ÎÎ1 2
)
ÎÎ2 3
;
ÎÎ3 4
}
ÏÏ 
}
ÌÌ 	
private
 
void
 
NotifyLeavingGame
 &
(
& '
)
' (
{
ÒÒ 	
try
ÚÚ 
{
ÛÛ )
GameActionsOperationsClient
ÙÙ +$
gameActionsClientProxy
ÙÙ, B
=
ÙÙC D
new
ÙÙE H
(
ÙÙH I
)
ÙÙI J
;
ÙÙJ K$
gameActionsClientProxy
ıı &
.
ıı& ')
UnSubscribeFromGameCallBack
ıı' B
(
ııB C
roomCode
ııC K
,
ııK L
userSingleton
ııM Z
.
ııZ [
IdUser
ıı[ a
)
ııa b
;
ııb c
}
ˆˆ 
catch
˜˜ 
(
˜˜ '
EndpointNotFoundException
˜˜ ,
ex
˜˜- /
)
˜˜/ 0
{
¯¯ %
ExceptionHandlerForLogs
˘˘ '
.
˘˘' (
LogException
˘˘( 4
(
˘˘4 5
ex
˘˘5 7
,
˘˘7 8!
ExceptionDictionary
˘˘9 L
.
˘˘L M
FATAL_EXCEPTION
˘˘M \
)
˘˘\ ]
;
˘˘] ^
}
˙˙ 
catch
˚˚ 
(
˚˚ 1
#CommunicationObjectFaultedException
˚˚ 6
ex
˚˚7 9
)
˚˚9 :
{
¸¸ %
ExceptionHandlerForLogs
˝˝ '
.
˝˝' (
LogException
˝˝( 4
(
˝˝4 5
ex
˝˝5 7
,
˝˝7 8!
ExceptionDictionary
˝˝9 L
.
˝˝L M
FATAL_EXCEPTION
˝˝M \
)
˝˝\ ]
;
˝˝] ^
}
˛˛ 
catch
ˇˇ 
(
ˇˇ 
TimeoutException
ˇˇ #
ex
ˇˇ$ &
)
ˇˇ& '
{
Ä	Ä	 %
ExceptionHandlerForLogs
Å	Å	 '
.
Å	Å	' (
LogException
Å	Å	( 4
(
Å	Å	4 5
ex
Å	Å	5 7
,
Å	Å	7 8!
ExceptionDictionary
Å	Å	9 L
.
Å	Å	L M
FATAL_EXCEPTION
Å	Å	M \
)
Å	Å	\ ]
;
Å	Å	] ^
}
Ç	Ç	 
catch
É	É	 
(
É	É	 $
CommunicationException
É	É	 )
ex
É	É	* ,
)
É	É	, -
{
Ñ	Ñ	 %
ExceptionHandlerForLogs
Ö	Ö	 '
.
Ö	Ö	' (
LogException
Ö	Ö	( 4
(
Ö	Ö	4 5
ex
Ö	Ö	5 7
,
Ö	Ö	7 8!
ExceptionDictionary
Ö	Ö	9 L
.
Ö	Ö	L M
FATAL_EXCEPTION
Ö	Ö	M \
)
Ö	Ö	\ ]
;
Ö	Ö	] ^
}
Ü	Ü	 
catch
á	á	 
(
á	á	 
SocketException
á	á	 "
ex
á	á	# %
)
á	á	% &
{
à	à	 %
ExceptionHandlerForLogs
â	â	 '
.
â	â	' (
LogException
â	â	( 4
(
â	â	4 5
ex
â	â	5 7
,
â	â	7 8!
ExceptionDictionary
â	â	9 L
.
â	â	L M
FATAL_EXCEPTION
â	â	M \
)
â	â	\ ]
;
â	â	] ^
}
ä	ä	 
}
ã	ã	 	
public
ç	ç	 
void
ç	ç	 ,
ReceiveNotificationSomeOneLeft
ç	ç	 2
(
ç	ç	2 3
int
ç	ç	3 6

isYourTurn
ç	ç	7 A
,
ç	ç	A B&
PlayerInGameDataContract
ç	ç	C [
[
ç	ç	[ \
]
ç	ç	\ ]
playerInGame
ç	ç	^ j
)
ç	ç	j k
{
é	é	 	
try
è	è	 
{
ê	ê	 
if
ë	ë	 
(
ë	ë	 
playerInGame
ë	ë	  
.
ë	ë	  !
Count
ë	ë	! &
(
ë	ë	& '
)
ë	ë	' (
==
ë	ë	) +
$num
ë	ë	, -
||
ë	ë	. 0
itsTeamGame
ë	ë	1 <
)
ë	ë	< =
{
í	í	 
if
ì	ì	 
(
ì	ì	 
itsTeamGame
ì	ì	 #
)
ì	ì	# $
{
î	î	 !
DialogWindowManager
ï	ï	 +
.
ï	ï	+ ,#
ShowInfoOrErrorWindow
ï	ï	, A
(
ï	ï	A B

Properties
ï	ï	B L
.
ï	ï	L M
	Resources
ï	ï	M V
.
ï	ï	V W#
txbInformationMessage
ï	ï	W l
,
ï	ï	l m

Properties
ï	ï	n x
.
ï	ï	x y
	Resourcesï	ï	y Ç
.ï	ï	Ç É.
lblFinishGameBecauseOfTeamLeftï	ï	É °
,ï	ï	° ¢
Windowï	ï	£ ©
.ï	ï	© ™
	GetWindowï	ï	™ ≥
(ï	ï	≥ ¥
thisï	ï	¥ ∏
)ï	ï	∏ π
,ï	ï	π ∫#
DialogWindowManagerï	ï	ª Œ
.ï	ï	Œ œ
INFORMATIONï	ï	œ ⁄
)ï	ï	⁄ €
;ï	ï	€ ‹
}
ñ	ñ	 
else
ó	ó	 
{
ò	ò	 !
DialogWindowManager
ô	ô	 +
.
ô	ô	+ ,#
ShowInfoOrErrorWindow
ô	ô	, A
(
ô	ô	A B

Properties
ô	ô	B L
.
ô	ô	L M
	Resources
ô	ô	M V
.
ô	ô	V W#
txbInformationMessage
ô	ô	W l
,
ô	ô	l m

Properties
ô	ô	n x
.
ô	ô	x y
	Resourcesô	ô	y Ç
.ô	ô	Ç É1
!lblFinishGameBecauseJustOnePlayerô	ô	É §
,ô	ô	§ •
Windowô	ô	¶ ¨
.ô	ô	¨ ≠
	GetWindowô	ô	≠ ∂
(ô	ô	∂ ∑
thisô	ô	∑ ª
)ô	ô	ª º
,ô	ô	º Ω#
DialogWindowManagerô	ô	æ —
.ô	ô	— “
INFORMATIONô	ô	“ ›
)ô	ô	› ﬁ
;ô	ô	ﬁ ﬂ
}
ö	ö	 
CloseWindow
õ	õ	 
(
õ	õ	  
)
õ	õ	  !
;
õ	õ	! "
return
ú	ú	 
;
ú	ú	 
}
ù	ù	 
if
û	û	 
(
û	û	 
currentTurn
û	û	 
==
û	û	  "
playerInGame
û	û	# /
.
û	û	/ 0
Count
û	û	0 5
(
û	û	5 6
)
û	û	6 7
)
û	û	7 8
{
ü	ü	 
currentTurn
†	†	 
=
†	†	  !
$num
†	†	" #
;
†	†	# $
}
°	°	 
grdAnswerChoices
¢	¢	  
.
¢	¢	  !

Visibility
¢	¢	! +
=
¢	¢	, -

Visibility
¢	¢	. 8
.
¢	¢	8 9
Hidden
¢	¢	9 ?
;
¢	¢	? @
yourTurn
£	£	 
=
£	£	 

isYourTurn
£	£	 %
;
£	£	% &
playersInGame
§	§	 
=
§	§	 
playerInGame
§	§	  ,
.
§	§	, -
ToList
§	§	- 3
(
§	§	3 4
)
§	§	4 5
;
§	§	5 6
ShowIfItsYourTurn
•	•	 !
(
•	•	! "
)
•	•	" #
;
•	•	# $
}
¶	¶	 
catch
ß	ß	 
(
ß	ß	 '
EndpointNotFoundException
ß	ß	 ,
ex
ß	ß	- /
)
ß	ß	/ 0
{
®	®	 
HandleException
©	©	 
(
©	©	  
ex
©	©	  "
,
©	©	" #

Properties
©	©	$ .
.
©	©	. /
	Resources
©	©	/ 8
.
©	©	8 9!
lblEndPointNotFound
©	©	9 L
)
©	©	L M
;
©	©	M N
}
™	™	 
catch
´	´	 
(
´	´	 1
#CommunicationObjectFaultedException
´	´	 6
ex
´	´	7 9
)
´	´	9 :
{
¨	¨	 
HandleException
≠	≠	 
(
≠	≠	  
ex
≠	≠	  "
,
≠	≠	" #

Properties
≠	≠	$ .
.
≠	≠	. /
	Resources
≠	≠	/ 8
.
≠	≠	8 9&
lblComunicationException
≠	≠	9 Q
)
≠	≠	Q R
;
≠	≠	R S
}
Æ	Æ	 
catch
Ø	Ø	 
(
Ø	Ø	 
TimeoutException
Ø	Ø	 #
ex
Ø	Ø	$ &
)
Ø	Ø	& '
{
∞	∞	 
HandleException
±	±	 
(
±	±	  
ex
±	±	  "
,
±	±	" #

Properties
±	±	$ .
.
±	±	. /
	Resources
±	±	/ 8
.
±	±	8 9
lblTimeException
±	±	9 I
)
±	±	I J
;
±	±	J K
}
≤	≤	 
catch
≥	≥	 
(
≥	≥	 $
CommunicationException
≥	≥	 )
ex
≥	≥	* ,
)
≥	≥	, -
{
¥	¥	 
HandleException
µ	µ	 
(
µ	µ	  
ex
µ	µ	  "
,
µ	µ	" #

Properties
µ	µ	$ .
.
µ	µ	. /
	Resources
µ	µ	/ 8
.
µ	µ	8 9!
lblWithoutConection
µ	µ	9 L
)
µ	µ	L M
;
µ	µ	M N
}
∂	∂	 
catch
∑	∑	 
(
∑	∑	 
SocketException
∑	∑	 "
ex
∑	∑	# %
)
∑	∑	% &
{
∏	∏	 
HandleException
π	π	 
(
π	π	  
ex
π	π	  "
,
π	π	" #

Properties
π	π	$ .
.
π	π	. /
	Resources
π	π	/ 8
.
π	π	8 9!
lblEndPointNotFound
π	π	9 L
)
π	π	L M
;
π	π	M N
}
∫	∫	 
}
ª	ª	 	
private
æ	æ	 
void
æ	æ	 
DeleteSingleton
æ	æ	 $
(
æ	æ	$ %
)
æ	æ	% &
{
ø	ø	 	
try
¿	¿	 
{
¡	¡	 &
GuestPlayerManagerClient
¬	¬	 (%
guestPlayerManagerProxy
¬	¬	) @
=
¬	¬	A B
new
¬	¬	C F
(
¬	¬	F G
)
¬	¬	G H
;
¬	¬	H I%
guestPlayerManagerProxy
√	√	 '
.
√	√	' (
DeleteGuest
√	√	( 3
(
√	√	3 4
userSingleton
√	√	4 A
.
√	√	A B
IdUser
√	√	B H
)
√	√	H I
;
√	√	I J
}
ƒ	ƒ	 
catch
≈	≈	 
(
≈	≈	 '
EndpointNotFoundException
≈	≈	 ,
ex
≈	≈	- /
)
≈	≈	/ 0
{
∆	∆	 %
ExceptionHandlerForLogs
«	«	 '
.
«	«	' (
LogException
«	«	( 4
(
«	«	4 5
ex
«	«	5 7
,
«	«	7 8!
ExceptionDictionary
«	«	9 L
.
«	«	L M
FATAL_EXCEPTION
«	«	M \
)
«	«	\ ]
;
«	«	] ^
}
»	»	 
catch
…	…	 
(
…	…	 1
#CommunicationObjectFaultedException
…	…	 6
ex
…	…	7 9
)
…	…	9 :
{
 	 	 %
ExceptionHandlerForLogs
À	À	 '
.
À	À	' (
LogException
À	À	( 4
(
À	À	4 5
ex
À	À	5 7
,
À	À	7 8!
ExceptionDictionary
À	À	9 L
.
À	À	L M
FATAL_EXCEPTION
À	À	M \
)
À	À	\ ]
;
À	À	] ^
}
Ã	Ã	 
catch
Õ	Õ	 
(
Õ	Õ	 
TimeoutException
Õ	Õ	 #
ex
Õ	Õ	$ &
)
Õ	Õ	& '
{
Œ	Œ	 %
ExceptionHandlerForLogs
œ	œ	 '
.
œ	œ	' (
LogException
œ	œ	( 4
(
œ	œ	4 5
ex
œ	œ	5 7
,
œ	œ	7 8!
ExceptionDictionary
œ	œ	9 L
.
œ	œ	L M
FATAL_EXCEPTION
œ	œ	M \
)
œ	œ	\ ]
;
œ	œ	] ^
}
–	–	 
catch
—	—	 
(
—	—	 $
CommunicationException
—	—	 )
ex
—	—	* ,
)
—	—	, -
{
“	“	 
HandleException
”	”	 
(
”	”	  
ex
”	”	  "
,
”	”	" #

Properties
”	”	$ .
.
”	”	. /
	Resources
”	”	/ 8
.
”	”	8 9!
lblWithoutConection
”	”	9 L
)
”	”	L M
;
”	”	M N
}
‘	‘	 
catch
’	’	 
(
’	’	 
SocketException
’	’	 "
ex
’	’	# %
)
’	’	% &
{
÷	÷	 
HandleException
◊	◊	 
(
◊	◊	  
ex
◊	◊	  "
,
◊	◊	" #

Properties
◊	◊	$ .
.
◊	◊	. /
	Resources
◊	◊	/ 8
.
◊	◊	8 9!
lblEndPointNotFound
◊	◊	9 L
)
◊	◊	L M
;
◊	◊	M N
}
ÿ	ÿ	 
UserSingleton
Ÿ	Ÿ	 
.
Ÿ	Ÿ	 
CleanSingleton
Ÿ	Ÿ	 (
(
Ÿ	Ÿ	( )
)
Ÿ	Ÿ	) *
;
Ÿ	Ÿ	* +
}
⁄	⁄	 	
private
›	›	 
void
›	›	 
ClickOpenChat
›	›	 "
(
›	›	" #
object
›	›	# )
sender
›	›	* 0
,
›	›	0 1"
MouseButtonEventArgs
›	›	2 F
e
›	›	G H
)
›	›	H I
{
ﬁ	ﬁ	 	
teamChat
ﬂ	ﬂ	 
.
ﬂ	ﬂ	 "
RenewCallBackChannel
ﬂ	ﬂ	 )
(
ﬂ	ﬂ	) *
)
ﬂ	ﬂ	* +
;
ﬂ	ﬂ	+ ,
grdChat
‡	‡	 
.
‡	‡	 

Visibility
‡	‡	 
=
‡	‡	  

Visibility
‡	‡	! +
.
‡	‡	+ ,
Visible
‡	‡	, 3
;
‡	‡	3 4
frmChat
·	·	 
.
·	·	 
Content
·	·	 
=
·	·	 
teamChat
·	·	 &
;
·	·	& '
}
‚	‚	 	
public
‰	‰	 
void
‰	‰	 
CloseLiveChat
‰	‰	 !
(
‰	‰	! "
)
‰	‰	" #
{
Â	Â	 	
grdChat
Ê	Ê	 
.
Ê	Ê	 

Visibility
Ê	Ê	 
=
Ê	Ê	  

Visibility
Ê	Ê	! +
.
Ê	Ê	+ ,
	Collapsed
Ê	Ê	, 5
;
Ê	Ê	5 6
}
Á	Á	 	
public
È	È	 
void
È	È	 $
ReceiveMessageTeamChat
È	È	 *
(
È	È	* +/
!GenericClassOfMessageChatxY0a3WX4
È	È	+ L
message
È	È	M T
)
È	È	T U
{
Í	Í	 	
(
Î	Î	 
(
Î	Î	 #
IChatForTeamsCallback
Î	Î	 #
)
Î	Î	# $
teamChat
Î	Î	$ ,
)
Î	Î	, -
.
Î	Î	- .$
ReceiveMessageTeamChat
Î	Î	. D
(
Î	Î	D E
message
Î	Î	E L
)
Î	Î	L M
;
Î	Î	M N
}
Ï	Ï	 	
private
Ó	Ó	 
void
Ó	Ó	 
HandleException
Ó	Ó	 $
(
Ó	Ó	$ %
	Exception
Ó	Ó	% .
ex
Ó	Ó	/ 1
,
Ó	Ó	1 2
string
Ó	Ó	3 9
errorMessage
Ó	Ó	: F
)
Ó	Ó	F G
{
Ô	Ô	 	%
ExceptionHandlerForLogs
		 #
.
		# $
LogException
		$ 0
(
		0 1
ex
		1 3
,
		3 4!
ExceptionDictionary
		5 H
.
		H I
FATAL_EXCEPTION
		I X
)
		X Y
;
		Y Z!
DialogWindowManager
Ò	Ò	 
.
Ò	Ò	  #
ShowInfoOrErrorWindow
Ò	Ò	  5
(
Ò	Ò	5 6

Properties
Ò	Ò	6 @
.
Ò	Ò	@ A
	Resources
Ò	Ò	A J
.
Ò	Ò	J K
txbErrorTitle
Ò	Ò	K X
,
Ò	Ò	X Y
errorMessage
Ò	Ò	Z f
,
Ò	Ò	f g
Application
Ò	Ò	h s
.
Ò	Ò	s t
Current
Ò	Ò	t {
.
Ò	Ò	{ |

MainWindowÒ	Ò	| Ü
,Ò	Ò	Ü á#
DialogWindowManagerÒ	Ò	à õ
.Ò	Ò	õ ú
ERRORÒ	Ò	ú °
)Ò	Ò	° ¢
;Ò	Ò	¢ £
NotifyLeavingGame
Ú	Ú	 
(
Ú	Ú	 
)
Ú	Ú	 
;
Ú	Ú	  

ReturnPage
Û	Û	 
(
Û	Û	 
)
Û	Û	 
;
Û	Û	 
}
Ù	Ù	 	
private
˜	˜	 
void
˜	˜	 

ReturnPage
˜	˜	 
(
˜	˜	  
)
˜	˜	  !
{
¯	¯	 	
UserSingleton
˘	˘	 
.
˘	˘	 
CleanSingleton
˘	˘	 (
(
˘	˘	( )
)
˘	˘	) *
;
˘	˘	* +
	LogInUser
˙	˙	 
logInUserPage
˙	˙	 #
=
˙	˙	$ %
new
˙	˙	& )
	LogInUser
˙	˙	* 3
(
˙	˙	3 4
)
˙	˙	4 5
;
˙	˙	5 6
this
˚	˚	 
.
˚	˚	 
NavigationService
˚	˚	 "
.
˚	˚	" #
Navigate
˚	˚	# +
(
˚	˚	+ ,
logInUserPage
˚	˚	, 9
)
˚	˚	9 :
;
˚	˚	: ;
NavigationService
¸	¸	 
.
¸	¸	 
RemoveBackEntry
¸	¸	 -
(
¸	¸	- .
)
¸	¸	. /
;
¸	¸	/ 0
}
˝	˝	 	
}
ˇ	ˇ	 
}Ä
Ä
 É—
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
;$$$ %
public&& 
LiveChat&& 
(&& 
)&& 
{'' 	
InitializeComponent(( 
(((  
)((  !
;((! "
})) 	
public++ 
void++ 
	StartPage++ 
(++ 
bool++ "
rol++# &
,++& '
int++( +
room++, 0
,++0 1
	LobbyPage++2 ;
lobby++< A
)++A B
{,, 	
	lobbyPage-- 
=-- 
lobby-- 
;-- 
isAdmin.. 
=.. 
rol.. 
;.. 
roomCode// 
=// 
room// 
;// 
PrepareWindow00 
(00 
)00 
;00 
}11 	
public33 
void33 !
RenewLiveChatCallBack33 )
(33) *
)33* +
{44 	
try55 
{66 
LiveChatClient77 !
liveChatCallBackProxy77 4
=775 6
new777 :
LiveChatClient77; I
(77I J
new77J M
InstanceContext77N ]
(77] ^
this77^ b
)77b c
)77c d
;77d e!
liveChatCallBackProxy88 %
.88% &!
RenewLiveChatCallBack88& ;
(88; <
roomCode88< D
,88D E
userSingleton88F S
.88S T
IdUser88T Z
)88Z [
;88[ \
}99 
catch:: 
(:: %
EndpointNotFoundException:: ,
ex::- /
)::/ 0
{;; 
HandleException<< 
(<<  
ex<<  "
,<<" #

Properties<<$ .
.<<. /
	Resources<</ 8
.<<8 9%
lblFailRegistryToCallBack<<9 R
+<<S T
$str<<U Z
+<<[ \

Properties<<] g
.<<g h
	Resources<<h q
.<<q r 
lblEndPointNotFound	<<r Ö
)
<<Ö Ü
;
<<Ü á
}== 
catch>> 
(>> /
#CommunicationObjectFaultedException>> 6
ex>>7 9
)>>9 :
{?? 
HandleException@@ 
(@@  
ex@@  "
,@@" #

Properties@@$ .
.@@. /
	Resources@@/ 8
.@@8 9%
lblFailRegistryToCallBack@@9 R
+@@S T
$str@@U Z
+@@[ \

Properties@@] g
.@@g h
	Resources@@h q
.@@q r%
lblComunicationException	@@r ä
)
@@ä ã
;
@@ã å
}AA 
catchBB 
(BB 
TimeoutExceptionBB #
exBB$ &
)BB& '
{CC 
HandleExceptionDD 
(DD  
exDD  "
,DD" #

PropertiesDD$ .
.DD. /
	ResourcesDD/ 8
.DD8 9%
lblFailRegistryToCallBackDD9 R
+DDS T
$strDDU Z
+DD[ \

PropertiesDD] g
.DDg h
	ResourcesDDh q
.DDq r
lblTimeException	DDr Ç
)
DDÇ É
;
DDÉ Ñ
}EE 
catchFF 
(FF "
CommunicationExceptionFF )
exFF* ,
)FF, -
{GG 
HandleExceptionHH 
(HH  
exHH  "
,HH" #

PropertiesHH$ .
.HH. /
	ResourcesHH/ 8
.HH8 9%
lblFailRegistryToCallBackHH9 R
+HHS T
$strHHU Z
+HH[ \

PropertiesHH] g
.HHg h
	ResourcesHHh q
.HHq r 
lblWithoutConection	HHr Ö
)
HHÖ Ü
;
HHÜ á
}II 
catchJJ 
(JJ 
SocketExceptionJJ "
exJJ# %
)JJ% &
{KK 
HandleExceptionLL 
(LL  
exLL  "
,LL" #

PropertiesLL$ .
.LL. /
	ResourcesLL/ 8
.LL8 9%
lblFailRegistryToCallBackLL9 R
+LLS T
$strLLU Z
+LL[ \

PropertiesLL] g
.LLg h
	ResourcesLLh q
.LLq r 
lblWithoutConection	LLr Ö
)
LLÖ Ü
;
LLÜ á
}MM 
}NN 	
privatePP 
voidPP 
PrepareWindowPP "
(PP" #
)PP# $
{QQ 	
InstanceContextRR 
contextRR #
=RR$ %
newRR& )
InstanceContextRR* 9
(RR9 :
thisRR: >
)RR> ?
;RR? @
LiveChatClientSS 
liveChatProxySS (
=SS) *
newSS+ .
LiveChatClientSS/ =
(SS= >
contextSS> E
)SSE F
;SSF G
tryTT 
{UU 
userSingletonVV 
=VV 
UserSingletonVV  -
.VV- .
GetMainUserVV. 9
(VV9 :
)VV: ;
;VV; <
ifWW 
(WW 
isAdminWW 
)WW 
{XX 
liveChatProxyYY !
.YY! "
CreateChatForLobbyYY" 4
(YY4 5
roomCodeYY5 =
,YY= >
userSingletonYY? L
.YYL M
IdUserYYM S
)YYS T
;YYT U
}ZZ 
else[[ 
{\\ 
var]] 
serverResponse]] &
=]]' (
liveChatProxy]]) 6
.]]6 7
GetAllMessages]]7 E
(]]E F
roomCode]]F N
,]]N O
userSingleton]]P ]
.]]] ^
IdUser]]^ d
)]]d e
;]]e f
if^^ 
(^^ 
serverResponse^^ &
.^^& '
	CodeEvent^^' 0
==^^1 3
ExceptionDictionary^^4 G
.^^G H
SUCCESFULL_EVENT^^H X
)^^X Y
{__ 
messagesInChats`` '
=``( )
serverResponse``* 8
.``8 9
ObjectSaved``9 D
.``D E
ToList``E K
(``K L
)``L M
;``M N
LoadChataa  
(aa  !
)aa! "
;aa" #
}bb 
}cc 
}dd 
catchee 
(ee %
EndpointNotFoundExceptionee ,
exee- /
)ee/ 0
{ff 
HandleExceptiongg 
(gg  
exgg  "
,gg" #

Propertiesgg$ .
.gg. /
	Resourcesgg/ 8
.gg8 9%
lblFailRegistryToCallBackgg9 R
+ggS T
$strggU Z
+gg[ \

Propertiesgg] g
.ggg h
	Resourcesggh q
.ggq r 
lblEndPointNotFound	ggr Ö
)
ggÖ Ü
;
ggÜ á
}hh 
catchii 
(ii /
#CommunicationObjectFaultedExceptionii 6
exii7 9
)ii9 :
{jj 
HandleExceptionkk 
(kk  
exkk  "
,kk" #

Propertieskk$ .
.kk. /
	Resourceskk/ 8
.kk8 9%
lblFailRegistryToCallBackkk9 R
+kkS T
$strkkU Z
+kk[ \

Propertieskk] g
.kkg h
	Resourceskkh q
.kkq r%
lblComunicationException	kkr ä
)
kkä ã
;
kkã å
}ll 
catchmm 
(mm 
TimeoutExceptionmm #
exmm$ &
)mm& '
{nn 
HandleExceptionoo 
(oo  
exoo  "
,oo" #

Propertiesoo$ .
.oo. /
	Resourcesoo/ 8
.oo8 9%
lblFailRegistryToCallBackoo9 R
+ooS T
$strooU Z
+oo[ \

Propertiesoo] g
.oog h
	Resourcesooh q
.ooq r
lblTimeException	oor Ç
)
ooÇ É
;
ooÉ Ñ
}pp 
catchqq 
(qq "
CommunicationExceptionqq )
exqq* ,
)qq, -
{rr 
HandleExceptionss 
(ss  
exss  "
,ss" #

Propertiesss$ .
.ss. /
	Resourcesss/ 8
.ss8 9%
lblFailRegistryToCallBackss9 R
+ssS T
$strssU Z
+ss[ \

Propertiesss] g
.ssg h
	Resourcesssh q
.ssq r 
lblWithoutConection	ssr Ö
)
ssÖ Ü
;
ssÜ á
}tt 
catchuu 
(uu 
SocketExceptionuu "
exuu# %
)uu% &
{vv 
HandleExceptionww 
(ww  
exww  "
,ww" #

Propertiesww$ .
.ww. /
	Resourcesww/ 8
.ww8 9%
lblFailRegistryToCallBackww9 R
+wwS T
$strwwU Z
+ww[ \

Propertiesww] g
.wwg h
	Resourceswwh q
.wwq r 
lblWithoutConection	wwr Ö
)
wwÖ Ü
;
wwÜ á
}xx 
}yy 	
public{{ 
void{{ 
LoadChat{{ 
({{ 
){{ 
{|| 	
stpChat}} 
.}} 
Children}} 
.}} 
Clear}} "
(}}" #
)}}# $
;}}$ %
foreach~~ 
(~~ 
var~~ 
item~~ 
in~~  
messagesInChats~~! 0
)~~0 1
{ 
ChatMessageCard
ÄÄ 
chatMessageCard
ÄÄ  /
=
ÄÄ0 1
new
ÄÄ2 5
ChatMessageCard
ÄÄ6 E
(
ÄÄE F
item
ÄÄF J
.
ÄÄJ K
UserName
ÄÄK S
,
ÄÄS T
item
ÄÄU Y
.
ÄÄY Z
MessageToSend
ÄÄZ g
)
ÄÄg h
;
ÄÄh i
if
ÅÅ 
(
ÅÅ 
item
ÅÅ 
.
ÅÅ 
IdUser
ÅÅ 
==
ÅÅ  "
userSingleton
ÅÅ# 0
.
ÅÅ0 1
IdUser
ÅÅ1 7
)
ÅÅ7 8
{
ÇÇ 
chatMessageCard
ÉÉ #
.
ÉÉ# $!
HorizontalAlignment
ÉÉ$ 7
=
ÉÉ8 9!
HorizontalAlignment
ÉÉ: M
.
ÉÉM N
Right
ÉÉN S
;
ÉÉS T
}
ÑÑ 
else
ÖÖ 
{
ÜÜ 
chatMessageCard
áá #
.
áá# $!
HorizontalAlignment
áá$ 7
=
áá8 9!
HorizontalAlignment
áá: M
.
ááM N
Left
ááN R
;
ááR S
}
àà 
stpChat
ââ 
.
ââ 
Children
ââ  
.
ââ  !
Add
ââ! $
(
ââ$ %
chatMessageCard
ââ% 4
)
ââ4 5
;
ââ5 6
}
ää 
}
ãã 	
private
çç 
void
çç 
ClickCloseChat
çç #
(
çç# $
object
çç$ *
sender
çç+ 1
,
çç1 2"
MouseButtonEventArgs
çç3 G
e
ççH I
)
ççI J
{
éé 	
	lobbyPage
èè 
.
èè +
CloseSubFrameOfChatAndFriends
èè 3
(
èè3 4
)
èè4 5
;
èè5 6
}
êê 	
private
íí 
void
íí 
ClickSendMessage
íí %
(
íí% &
object
íí& ,
sender
íí- 3
,
íí3 4"
MouseButtonEventArgs
íí5 I
e
ííJ K
)
ííK L
{
ìì 	
try
îî 
{
ïï 
string
ññ 
message
ññ 
=
ññ  
txbMessageToSend
ññ! 1
.
ññ1 2
Text
ññ2 6
;
ññ6 7
if
óó 
(
óó 
!
óó 
string
óó 
.
óó 
IsNullOrEmpty
óó )
(
óó) *
message
óó* 1
)
óó1 2
)
óó2 3
{
òò &
LiveChatOperationsClient
ôô ,
liveChatProxy
ôô- :
=
ôô; <
new
ôô= @
(
ôô@ A
)
ôôA B
;
ôôB C
liveChatProxy
öö !
.
öö! "
SendMessage
öö" -
(
öö- .
userSingleton
öö. ;
.
öö; <
IdUser
öö< B
,
ööB C
roomCode
ööD L
,
ööL M
userSingleton
ööN [
.
öö[ \
UserName
öö\ d
,
ööd e
message
ööf m
)
ööm n
;
öön o
MessageChat
õõ 
messageChat
õõ  +
=
õõ, -
new
õõ. 1
MessageChat
õõ2 =
(
õõ= >
)
õõ> ?
;
õõ? @
messageChat
úú 
.
úú  
IdUser
úú  &
=
úú' (
userSingleton
úú) 6
.
úú6 7
IdUser
úú7 =
;
úú= >
messageChat
ùù 
.
ùù  
UserName
ùù  (
=
ùù) *
userSingleton
ùù+ 8
.
ùù8 9
UserName
ùù9 A
;
ùùA B
messageChat
ûû 
.
ûû  
MessageToSend
ûû  -
=
ûû. /
message
ûû0 7
;
ûû7 8
messagesInChats
üü #
.
üü# $
Add
üü$ '
(
üü' (
messageChat
üü( 3
)
üü3 4
;
üü4 5
ChatMessageCard
†† #
chatMessageCard
††$ 3
=
††4 5
new
††6 9
ChatMessageCard
††: I
(
††I J
userSingleton
††J W
.
††W X
UserName
††X `
,
††` a
message
††b i
)
††i j
;
††j k
chatMessageCard
°° #
.
°°# $!
HorizontalAlignment
°°$ 7
=
°°8 9!
HorizontalAlignment
°°: M
.
°°M N
Right
°°N S
;
°°S T
stpChat
¢¢ 
.
¢¢ 
Children
¢¢ $
.
¢¢$ %
Add
¢¢% (
(
¢¢( )
chatMessageCard
¢¢) 8
)
¢¢8 9
;
¢¢9 :
txbMessageToSend
££ $
.
££$ %
Text
££% )
=
££* +
string
££, 2
.
££2 3
Empty
££3 8
;
££8 9
}
§§ 
}
•• 
catch
¶¶ 
(
¶¶ '
EndpointNotFoundException
¶¶ ,
ex
¶¶- /
)
¶¶/ 0
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
®®] ^
messagesInChats
©© 
.
©©  
Add
©©  #
(
©©# $
new
©©$ '
MessageChat
©©( 3
(
©©3 4
)
©©4 5
{
©©6 7
IdUser
©©8 >
=
©©? @
$num
©©A B
,
©©B C
MessageToSend
©©D Q
=
©©R S

Properties
©©T ^
.
©©^ _
	Resources
©©_ h
.
©©h i,
txbFailToSendOrReciveAMessage©©i Ü
,©©Ü á
UserName©©à ê
=©©ë í

Properties©©ì ù
.©©ù û
	Resources©©û ß
.©©ß ®
txbErrorTitle©©® µ
}©©∂ ∑
)©©∑ ∏
;©©∏ π
}
™™ 
catch
´´ 
(
´´ 1
#CommunicationObjectFaultedException
´´ 6
ex
´´7 9
)
´´9 :
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
≠≠] ^
messagesInChats
ÆÆ 
.
ÆÆ  
Add
ÆÆ  #
(
ÆÆ# $
new
ÆÆ$ '
MessageChat
ÆÆ( 3
(
ÆÆ3 4
)
ÆÆ4 5
{
ÆÆ6 7
IdUser
ÆÆ8 >
=
ÆÆ? @
$num
ÆÆA B
,
ÆÆB C
MessageToSend
ÆÆD Q
=
ÆÆR S

Properties
ÆÆT ^
.
ÆÆ^ _
	Resources
ÆÆ_ h
.
ÆÆh i,
txbFailToSendOrReciveAMessageÆÆi Ü
,ÆÆÜ á
UserNameÆÆà ê
=ÆÆë í

PropertiesÆÆì ù
.ÆÆù û
	ResourcesÆÆû ß
.ÆÆß ®
txbErrorTitleÆÆ® µ
}ÆÆ∂ ∑
)ÆÆ∑ ∏
;ÆÆ∏ π
}
ØØ 
catch
∞∞ 
(
∞∞ 
TimeoutException
∞∞ #
ex
∞∞$ &
)
∞∞& '
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
≤≤] ^
messagesInChats
≥≥ 
.
≥≥  
Add
≥≥  #
(
≥≥# $
new
≥≥$ '
MessageChat
≥≥( 3
(
≥≥3 4
)
≥≥4 5
{
≥≥6 7
IdUser
≥≥8 >
=
≥≥? @
$num
≥≥A B
,
≥≥B C
MessageToSend
≥≥D Q
=
≥≥R S

Properties
≥≥T ^
.
≥≥^ _
	Resources
≥≥_ h
.
≥≥h i,
txbFailToSendOrReciveAMessage≥≥i Ü
,≥≥Ü á
UserName≥≥à ê
=≥≥ë í

Properties≥≥ì ù
.≥≥ù û
	Resources≥≥û ß
.≥≥ß ®
txbErrorTitle≥≥® µ
}≥≥∂ ∑
)≥≥∑ ∏
;≥≥∏ π
}
¥¥ 
catch
µµ 
(
µµ $
CommunicationException
µµ )
ex
µµ* ,
)
µµ, -
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
∑∑] ^
messagesInChats
∏∏ 
.
∏∏  
Add
∏∏  #
(
∏∏# $
new
∏∏$ '
MessageChat
∏∏( 3
(
∏∏3 4
)
∏∏4 5
{
∏∏6 7
IdUser
∏∏8 >
=
∏∏? @
$num
∏∏A B
,
∏∏B C
MessageToSend
∏∏D Q
=
∏∏R S

Properties
∏∏T ^
.
∏∏^ _
	Resources
∏∏_ h
.
∏∏h i,
txbFailToSendOrReciveAMessage∏∏i Ü
,∏∏Ü á
UserName∏∏à ê
=∏∏ë í

Properties∏∏ì ù
.∏∏ù û
	Resources∏∏û ß
.∏∏ß ®
txbErrorTitle∏∏® µ
}∏∏∂ ∑
)∏∏∑ ∏
;∏∏∏ π
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
ºº] ^
messagesInChats
ΩΩ 
.
ΩΩ  
Add
ΩΩ  #
(
ΩΩ# $
new
ΩΩ$ '
MessageChat
ΩΩ( 3
(
ΩΩ3 4
)
ΩΩ4 5
{
ΩΩ6 7
IdUser
ΩΩ8 >
=
ΩΩ? @
$num
ΩΩA B
,
ΩΩB C
MessageToSend
ΩΩD Q
=
ΩΩR S

Properties
ΩΩT ^
.
ΩΩ^ _
	Resources
ΩΩ_ h
.
ΩΩh i,
txbFailToSendOrReciveAMessageΩΩi Ü
,ΩΩÜ á
UserNameΩΩà ê
=ΩΩë í

PropertiesΩΩì ù
.ΩΩù û
	ResourcesΩΩû ß
.ΩΩß ®
txbErrorTitleΩΩ® µ
}ΩΩ∂ ∑
)ΩΩ∑ ∏
;ΩΩ∏ π
}
ææ 
}
øø 	
public
¡¡ 
void
¡¡ 
ReceiveMessage
¡¡ "
(
¡¡" #/
!GenericClassOfMessageChatxY0a3WX4
¡¡# D
message
¡¡E L
)
¡¡L M
{
¬¬ 	
try
√√ 
{
ƒƒ 
if
≈≈ 
(
≈≈ 
message
≈≈ 
.
≈≈ 
	CodeEvent
≈≈ %
==
≈≈& (!
ExceptionDictionary
≈≈) <
.
≈≈< =
SUCCESFULL_EVENT
≈≈= M
)
≈≈M N
{
∆∆ 
messagesInChats
«« #
.
««# $
Add
««$ '
(
««' (
message
««( /
.
««/ 0
ObjectSaved
««0 ;
)
««; <
;
««< =
}
»» 
}
…… 
catch
   
(
   '
EndpointNotFoundException
   ,
ex
  - /
)
  / 0
{
ÀÀ %
ExceptionHandlerForLogs
ÃÃ '
.
ÃÃ' (
LogException
ÃÃ( 4
(
ÃÃ4 5
ex
ÃÃ5 7
,
ÃÃ7 8!
ExceptionDictionary
ÃÃ9 L
.
ÃÃL M
FATAL_EXCEPTION
ÃÃM \
)
ÃÃ\ ]
;
ÃÃ] ^
messagesInChats
ÕÕ 
.
ÕÕ  
Add
ÕÕ  #
(
ÕÕ# $
new
ÕÕ$ '
MessageChat
ÕÕ( 3
(
ÕÕ3 4
)
ÕÕ4 5
{
ÕÕ6 7
IdUser
ÕÕ8 >
=
ÕÕ? @
$num
ÕÕA B
,
ÕÕB C
MessageToSend
ÕÕD Q
=
ÕÕR S

Properties
ÕÕT ^
.
ÕÕ^ _
	Resources
ÕÕ_ h
.
ÕÕh i,
txbFailToSendOrReciveAMessageÕÕi Ü
,ÕÕÜ á
UserNameÕÕà ê
=ÕÕë í

PropertiesÕÕì ù
.ÕÕù û
	ResourcesÕÕû ß
.ÕÕß ®
txbErrorTitleÕÕ® µ
}ÕÕ∂ ∑
)ÕÕ∑ ∏
;ÕÕ∏ π
}
ŒŒ 
catch
œœ 
(
œœ 1
#CommunicationObjectFaultedException
œœ 6
ex
œœ7 9
)
œœ9 :
{
–– %
ExceptionHandlerForLogs
—— '
.
——' (
LogException
——( 4
(
——4 5
ex
——5 7
,
——7 8!
ExceptionDictionary
——9 L
.
——L M
FATAL_EXCEPTION
——M \
)
——\ ]
;
——] ^
messagesInChats
““ 
.
““  
Add
““  #
(
““# $
new
““$ '
MessageChat
““( 3
(
““3 4
)
““4 5
{
““6 7
IdUser
““8 >
=
““? @
$num
““A B
,
““B C
MessageToSend
““D Q
=
““R S

Properties
““T ^
.
““^ _
	Resources
““_ h
.
““h i,
txbFailToSendOrReciveAMessage““i Ü
,““Ü á
UserName““à ê
=““ë í

Properties““ì ù
.““ù û
	Resources““û ß
.““ß ®
txbErrorTitle““® µ
}““∂ ∑
)““∑ ∏
;““∏ π
}
”” 
catch
‘‘ 
(
‘‘ 
TimeoutException
‘‘ #
ex
‘‘$ &
)
‘‘& '
{
’’ %
ExceptionHandlerForLogs
÷÷ '
.
÷÷' (
LogException
÷÷( 4
(
÷÷4 5
ex
÷÷5 7
,
÷÷7 8!
ExceptionDictionary
÷÷9 L
.
÷÷L M
FATAL_EXCEPTION
÷÷M \
)
÷÷\ ]
;
÷÷] ^
messagesInChats
◊◊ 
.
◊◊  
Add
◊◊  #
(
◊◊# $
new
◊◊$ '
MessageChat
◊◊( 3
(
◊◊3 4
)
◊◊4 5
{
◊◊6 7
IdUser
◊◊8 >
=
◊◊? @
$num
◊◊A B
,
◊◊B C
MessageToSend
◊◊D Q
=
◊◊R S

Properties
◊◊T ^
.
◊◊^ _
	Resources
◊◊_ h
.
◊◊h i,
txbFailToSendOrReciveAMessage◊◊i Ü
,◊◊Ü á
UserName◊◊à ê
=◊◊ë í

Properties◊◊ì ù
.◊◊ù û
	Resources◊◊û ß
.◊◊ß ®
txbErrorTitle◊◊® µ
}◊◊∂ ∑
)◊◊∑ ∏
;◊◊∏ π
}
ÿÿ 
catch
ŸŸ 
(
ŸŸ $
CommunicationException
ŸŸ )
ex
ŸŸ* ,
)
ŸŸ, -
{
⁄⁄ %
ExceptionHandlerForLogs
€€ '
.
€€' (
LogException
€€( 4
(
€€4 5
ex
€€5 7
,
€€7 8!
ExceptionDictionary
€€9 L
.
€€L M
FATAL_EXCEPTION
€€M \
)
€€\ ]
;
€€] ^
messagesInChats
‹‹ 
.
‹‹  
Add
‹‹  #
(
‹‹# $
new
‹‹$ '
MessageChat
‹‹( 3
(
‹‹3 4
)
‹‹4 5
{
‹‹6 7
IdUser
‹‹8 >
=
‹‹? @
$num
‹‹A B
,
‹‹B C
MessageToSend
‹‹D Q
=
‹‹R S

Properties
‹‹T ^
.
‹‹^ _
	Resources
‹‹_ h
.
‹‹h i,
txbFailToSendOrReciveAMessage‹‹i Ü
,‹‹Ü á
UserName‹‹à ê
=‹‹ë í

Properties‹‹ì ù
.‹‹ù û
	Resources‹‹û ß
.‹‹ß ®
txbErrorTitle‹‹® µ
}‹‹∂ ∑
)‹‹∑ ∏
;‹‹∏ π
}
›› 
catch
ﬁﬁ 
(
ﬁﬁ 
SocketException
ﬁﬁ "
ex
ﬁﬁ# %
)
ﬁﬁ% &
{
ﬂﬂ %
ExceptionHandlerForLogs
‡‡ '
.
‡‡' (
LogException
‡‡( 4
(
‡‡4 5
ex
‡‡5 7
,
‡‡7 8!
ExceptionDictionary
‡‡9 L
.
‡‡L M
FATAL_EXCEPTION
‡‡M \
)
‡‡\ ]
;
‡‡] ^
messagesInChats
·· 
.
··  
Add
··  #
(
··# $
new
··$ '
MessageChat
··( 3
(
··3 4
)
··4 5
{
··6 7
IdUser
··8 >
=
··? @
$num
··A B
,
··B C
MessageToSend
··D Q
=
··R S

Properties
··T ^
.
··^ _
	Resources
··_ h
.
··h i,
txbFailToSendOrReciveAMessage··i Ü
,··Ü á
UserName··à ê
=··ë í

Properties··ì ù
.··ù û
	Resources··û ß
.··ß ®
txbErrorTitle··® µ
}··∂ ∑
)··∑ ∏
;··∏ π
}
‚‚ 
LoadChat
„„ 
(
„„ 
)
„„ 
;
„„ 
}
‰‰ 	
private
ÂÂ 
void
ÂÂ 
HandleException
ÂÂ $
(
ÂÂ$ %
	Exception
ÂÂ% .
ex
ÂÂ/ 1
,
ÂÂ1 2
string
ÂÂ3 9
errorMessage
ÂÂ: F
)
ÂÂF G
{
ÊÊ 	%
ExceptionHandlerForLogs
ÁÁ #
.
ÁÁ# $
LogException
ÁÁ$ 0
(
ÁÁ0 1
ex
ÁÁ1 3
,
ÁÁ3 4!
ExceptionDictionary
ÁÁ5 H
.
ÁÁH I
FATAL_EXCEPTION
ÁÁI X
)
ÁÁX Y
;
ÁÁY Z!
DialogWindowManager
ËË 
.
ËË  #
ShowInfoOrErrorWindow
ËË  5
(
ËË5 6

Properties
ËË6 @
.
ËË@ A
	Resources
ËËA J
.
ËËJ K
txbErrorTitle
ËËK X
,
ËËX Y
errorMessage
ËËZ f
,
ËËf g
Application
ËËh s
.
ËËs t
Current
ËËt {
.
ËË{ |

MainWindowËË| Ü
,ËËÜ á#
DialogWindowManagerËËà õ
.ËËõ ú
ERRORËËú °
)ËË° ¢
;ËË¢ £
}
ÈÈ 	
}
ÎÎ 
}ÏÏ Å›
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
static&& 
readonly&& 
ThreadLocal&&  +
<&&+ ,
Random&&, 2
>&&2 3
generateAleatory&&4 D
=&&E F
new&&G J
ThreadLocal&&K V
<&&V W
Random&&W ]
>&&] ^
(&&^ _
(&&_ `
)&&` a
=>&&b d
new&&e h
Random&&i o
(&&o p
)&&p q
)&&q r
;&&r s
public(( 
	LobbyPage(( 
((( 
)(( 
{)) 	
InitializeComponent** 
(**  
)**  !
;**! "
isAdminOfLobby++ 
=++ 
true++ !
;++! "
Loaded,, 
+=,, $
LoadedPrepareWindowAdmin,, .
;,,. /
}-- 	
private// 
void// $
LoadedPrepareWindowAdmin// -
(//- .
object//. 4
sender//5 ;
,//; <
RoutedEventArgs//= L
e//M N
)//N O
{00 	
PrepareWindow11 
(11 
)11 
;11 '
LobbyActionsOperationClient22 '
lobbyActionsProxy22( 9
=22: ;
new22< ?
(22? @
)22@ A
;22A B
lobbyActionsProxy33 
.33 '
SelectQuestionsForGameAsync33 9
(339 :
roomCode33: B
)33B C
;33C D
}44 	
public66 
	LobbyPage66 
(66 
int66 
roomCode66 %
)66% &
{77 	
InitializeComponent88 
(88  
)88  !
;88! "
this99 
.99 
roomCode99 
=99 
roomCode99 $
;99$ %
isAdminOfLobby:: 
=:: 
false:: "
;::" #
Loaded;; 
+=;; %
LoadedPrepareWindowPlayer;; /
;;;/ 0
}<< 	
private?? 
void?? %
LoadedPrepareWindowPlayer?? .
(??. /
object??/ 5
sender??6 <
,??< =
RoutedEventArgs??> M
e??N O
)??O P
{@@ 	
PrepareWindowAA 
(AA 
)AA 
;AA 
}BB 	
privateDD 
voidDD 
PrepareWindowDD "
(DD" #
)DD# $
{EE 	
userSingletonFF 
=FF 
UserSingletonFF )
.FF) *
GetMainUserFF* 5
(FF5 6
)FF6 7
;FF7 8
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
LobbyActionsClientKK "
lobbyActionsProxyKK# 4
=KK5 6
newKK7 :
LobbyActionsClientKK; M
(KKM N
contextKKN U
)KKU V
;KKV W
ifMM 
(MM 
isAdminOfLobbyMM "
)MM" #
{NN 
CreateNewlobbyOO "
(OO" #
lobbyActionsProxyOO# 4
)OO4 5
;OO5 6
}PP 
elseQQ 
{RR 
	JoinLobbySS 
(SS 
lobbyActionsProxySS /
)SS/ 0
;SS0 1
}TT 

GetPlayersUU 
(UU 
)UU 
;UU !
PrepareChatAndFriendsVV %
(VV% &
)VV& '
;VV' (
lblAleatoryCodeWW 
.WW  
ContentWW  '
=WW( )
roomCodeWW* 2
;WW2 3
SetPlayerInLabelsXX !
(XX! "
)XX" #
;XX# $#
NotifyFriendsIamPlayingYY '
(YY' (
)YY( )
;YY) *
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
+]]Q R
$str]]S X
+]]Y Z

Properties]][ e
.]]e f
	Resources]]f o
.]]o p 
lblEndPointNotFound	]]p É
)
]]É Ñ
;
]]Ñ Ö
}^^ 
catch__ 
(__ %
EndpointNotFoundException__ ,
ex__- /
)__/ 0
{`` 
HandleExceptionaa 
(aa  
exaa  "
,aa" #

Propertiesaa$ .
.aa. /
	Resourcesaa/ 8
.aa8 9#
lblFailtToEnterTheLobbyaa9 P
+aaQ R
$straaS X
+aaY Z

Propertiesaa[ e
.aae f
	Resourcesaaf o
.aao p 
lblEndPointNotFound	aap É
)
aaÉ Ñ
;
aaÑ Ö
}bb 
catchcc 
(cc /
#CommunicationObjectFaultedExceptioncc 6
excc7 9
)cc9 :
{dd 
HandleExceptionee 
(ee  
exee  "
,ee" #

Propertiesee$ .
.ee. /
	Resourcesee/ 8
.ee8 9#
lblFailtToEnterTheLobbyee9 P
+eeQ R
$streeS X
+eeY Z

Propertiesee[ e
.eee f
	Resourceseef o
.eeo p%
lblComunicationException	eep à
)
eeà â
;
eeâ ä
}ff 
catchgg 
(gg 
TimeoutExceptiongg #
exgg$ &
)gg& '
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
lblTimeException	iip Ä
)
iiÄ Å
;
iiÅ Ç
}jj 
catchkk 
(kk "
CommunicationExceptionkk )
exkk* ,
)kk, -
{ll 
HandleExceptionmm 
(mm  
exmm  "
,mm" #

Propertiesmm$ .
.mm. /
	Resourcesmm/ 8
.mm8 9#
lblFailtToEnterTheLobbymm9 P
+mmQ R
$strmmS X
+mmY Z

Propertiesmm[ e
.mme f
	Resourcesmmf o
.mmo p 
lblWithoutConection	mmp É
)
mmÉ Ñ
;
mmÑ Ö
}nn 
}pp 	
privaterr 
voidrr !
PrepareChatAndFriendsrr *
(rr* +
)rr+ ,
{ss 	
iftt 
(tt 
liveChatInstancett  
==tt! #
nulltt$ (
)tt( )
{uu 
liveChatInstancevv  
=vv! "
newvv# &
LiveChatvv' /
(vv/ 0
)vv0 1
;vv1 2
liveChatInstanceww  
.ww  !
	StartPageww! *
(ww* +
isAdminOfLobbyww+ 9
,ww9 :
roomCodeww; C
,wwC D
thiswwE I
)wwI J
;wwJ K
}xx 
ifyy 
(yy 
activeUsersInstanceyy #
==yy$ &
nullyy' +
)yy+ ,
{zz 
activeUsersInstance{{ #
={{$ %
new{{& )
ActiveFriends{{* 7
({{7 8
userSingleton{{8 E
.{{E F
IdUser{{F L
){{L M
;{{M N
activeUsersInstance|| #
.||# $
	StartPage||$ -
(||- .
this||. 2
)||2 3
;||3 4
}}} 
}~~ 	
private
ÄÄ 
void
ÄÄ 
CreateNewlobby
ÄÄ #
(
ÄÄ# $ 
LobbyActionsClient
ÄÄ$ 6
lobbyActionsProxy
ÄÄ7 H
)
ÄÄH I
{
ÅÅ 	
try
ÇÇ 
{
ÉÉ 
int
ÑÑ 
aleatoryNumber
ÑÑ "
=
ÑÑ# $
generateAleatory
ÑÑ% 5
.
ÑÑ5 6
Value
ÑÑ6 ;
.
ÑÑ; <
Next
ÑÑ< @
(
ÑÑ@ A
$num
ÑÑA F
,
ÑÑF G
$num
ÑÑH M
)
ÑÑM N
;
ÑÑN O
roomCode
ÖÖ 
=
ÖÖ 
aleatoryNumber
ÖÖ )
;
ÖÖ) *
var
ÜÜ 
newLobby
ÜÜ 
=
ÜÜ 
lobbyActionsProxy
ÜÜ 0
.
ÜÜ0 1
CreateNewLobby
ÜÜ1 ?
(
ÜÜ? @
roomCode
ÜÜ@ H
,
ÜÜH I
userSingleton
ÜÜJ W
.
ÜÜW X
IdUser
ÜÜX ^
)
ÜÜ^ _
;
ÜÜ_ `
if
áá 
(
áá 
newLobby
áá 
.
áá 
	CodeEvent
áá %
!=
áá& (!
ExceptionDictionary
áá) <
.
áá< =
SUCCESFULL_EVENT
áá= M
)
ááM N
{
àà 
throw
ââ 
new
ââ $
CommunicationException
ââ 4
(
ââ4 5
)
ââ5 6
;
ââ6 7
}
ää 
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
††, -
Exists
††- 3
(
††3 4
pla
††4 7
=>
††8 :
pla
††; >
.
††> ?
IdPlayer
††? G
==
††H J
userSingleton
††K X
.
††X Y
IdPlayer
††Y a
)
††a b
)
††b c
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
©© !
DialogWindowManager
™™ +
.
™™+ ,#
ShowInfoOrErrorWindow
™™, A
(
™™A B

Properties
™™B L
.
™™L M
	Resources
™™M V
.
™™V W
txbWarningTitle
™™W f
,
™™f g

Properties
™™h r
.
™™r s
	Resources
™™s |
.
™™| }$
lblEliminateFromLobby™™} í
,™™í ì
Window™™î ö
.™™ö õ
	GetWindow™™õ §
(™™§ •
this™™• ©
)™™© ™
,™™™ ´#
DialogWindowManager™™¨ ø
.™™ø ¿
INFORMATION™™¿ À
)™™À Ã
;™™Ã Õ
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
ØØ !
DialogWindowManager
∞∞ '
.
∞∞' (#
ShowInfoOrErrorWindow
∞∞( =
(
∞∞= >

Properties
∞∞> H
.
∞∞H I
	Resources
∞∞I R
.
∞∞R S
txbWarningTitle
∞∞S b
,
∞∞b c

Properties
∞∞d n
.
∞∞n o
	Resources
∞∞o x
.
∞∞x y
KickedFromLobby∞∞y à
,∞∞à â
Window∞∞ä ê
.∞∞ê ë
	GetWindow∞∞ë ö
(∞∞ö õ
this∞∞õ ü
)∞∞ü †
,∞∞† °#
DialogWindowManager∞∞¢ µ
.∞∞µ ∂
ERROR∞∞∂ ª
)∞∞ª º
;∞∞º Ω
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
ÀÀ 
!
ÀÀ 
string
ÀÀ 
.
ÀÀ 
IsNullOrEmpty
ÀÀ )
(
ÀÀ) *
userName
ÀÀ* 2
)
ÀÀ2 3
)
ÀÀ3 4
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
ÒÒ1 2
var
ÚÚ  
playerToEliminated
ÚÚ "
=
ÚÚ# $"
currentPlayerInLobby
ÚÚ& :
.
ÚÚ: ;
Find
ÚÚ; ?
(
ÚÚ? @
item
ÚÚ@ D
=>
ÚÚE G
item
ÚÚH L
.
ÚÚL M
UserName
ÚÚM U
.
ÚÚU V
Equals
ÚÚV \
(
ÚÚ\ ]
userName
ÚÚ] e
)
ÚÚe f
)
ÚÚf g
;
ÚÚg h
if
ÛÛ 
(
ÛÛ  
playerToEliminated
ÛÛ "
.
ÛÛ" #
IdPlayer
ÛÛ# +
!=
ÛÛ, .
$num
ÛÛ/ 0
)
ÛÛ0 1
{
ÙÙ "
currentPlayerInLobby
ıı $
.
ıı$ %
Remove
ıı% +
(
ıı+ , 
playerToEliminated
ıı, >
)
ıı> ?
;
ıı? @
playerInLobby
ˆˆ 
=
ˆˆ  
playerToEliminated
ˆˆ  2
;
ˆˆ2 3
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
¸¸ 	
Image
˝˝ 
	imgChosen
˝˝ 
=
˝˝ 
(
˝˝ 
Image
˝˝ $
)
˝˝$ %
sender
˝˝% +
;
˝˝+ ,

StackPanel
˛˛ 
	stcChosen
˛˛  
=
˛˛! "2
$GetParentOfGraphicInterfaceComponent
˛˛# G
.
˛˛G H

FindParent
˛˛H R
<
˛˛R S

StackPanel
˛˛S ]
>
˛˛] ^
(
˛˛^ _
	imgChosen
˛˛_ h
)
˛˛h i
;
˛˛i j
Label
ˇˇ 
label
ˇˇ 
=
ˇˇ 
	stcChosen
ˇˇ #
.
ˇˇ# $
Children
ˇˇ$ ,
.
ˇˇ, -
OfType
ˇˇ- 3
<
ˇˇ3 4
Label
ˇˇ4 9
>
ˇˇ9 :
(
ˇˇ: ;
)
ˇˇ; <
.
ˇˇ< =
FirstOrDefault
ˇˇ= K
(
ˇˇK L
)
ˇˇL M
;
ˇˇM N
return
ÄÄ 
label
ÄÄ 
?
ÄÄ 
.
ÄÄ 
Content
ÄÄ !
?
ÄÄ! "
.
ÄÄ" #
ToString
ÄÄ# +
(
ÄÄ+ ,
)
ÄÄ, -
;
ÄÄ- .
}
ÅÅ 	
private
ÑÑ 
void
ÑÑ 
ClickTeamUp
ÑÑ  
(
ÑÑ  !
object
ÑÑ! '
sender
ÑÑ( .
,
ÑÑ. /
RoutedEventArgs
ÑÑ0 ?
e
ÑÑ@ A
)
ÑÑA B
{
ÖÖ 	
if
ÜÜ 
(
ÜÜ 
isAdminOfLobby
ÜÜ 
)
ÜÜ 
{
áá 
try
àà 
{
ââ  
LobbyActionsClient
ää &'
lobbyActionsCallBackProxy
ää' @
=
ääA B
new
ääC F 
LobbyActionsClient
ääG Y
(
ääY Z
new
ääZ ]
InstanceContext
ää^ m
(
ääm n
this
ään r
)
äär s
)
ääs t
;
äät u'
lobbyActionsCallBackProxy
ãã -
.
ãã- . 
RenewLobbyCallBack
ãã. @
(
ãã@ A
roomCode
ããA I
,
ããI J
userSingleton
ããK X
.
ããX Y
IdUser
ããY _
)
ãã_ `
;
ãã` a
if
çç 
(
çç "
currentPlayerInLobby
çç ,
.
çç, -
Count
çç- 2
==
çç3 5
$num
çç6 7
)
çç7 8
{
éé 
DoOrUndoTeams
èè %
(
èè% &
true
èè& *
)
èè* +
;
èè+ ,
SetPlayerInLabels
êê )
(
êê) *
)
êê* +
;
êê+ ,)
LobbyActionsOperationClient
ëë 3
lobbyActionsProxy
ëë4 E
=
ëëF G
new
ëëH K
(
ëëK L
)
ëëL M
;
ëëM N
lobbyActionsProxy
íí )
.
íí) *
	MakeTeams
íí* 3
(
íí3 4
roomCode
íí4 <
,
íí< =
userSingleton
íí> K
.
ííK L
IdUser
ííL R
,
ííR S
true
ííT X
)
ííX Y
;
ííY Z
}
ìì 
else
îî 
{
ïï 
	chbTeamUp
ññ !
.
ññ! "
	IsChecked
ññ" +
=
ññ, -
false
ññ. 3
;
ññ3 4!
DialogWindowManager
óó +
.
óó+ ,#
ShowInfoOrErrorWindow
óó, A
(
óóA B

Properties
óóB L
.
óóL M
	Resources
óóM V
.
óóV W!
txbInformationTitle
óóW j
,
óój k

Properties
óól v
.
óóv w
	Resourcesóów Ä
.óóÄ Å
MustBe4PlayersóóÅ è
,óóè ê
Windowóóë ó
.óóó ò
	GetWindowóóò °
(óó° ¢
thisóó¢ ¶
)óó¶ ß
,óóß ®#
DialogWindowManageróó© º
.óóº Ω
ERRORóóΩ ¬
)óó¬ √
;óó√ ƒ
}
òò 
}
ôô 
catch
öö 
(
öö '
EndpointNotFoundException
öö 0
ex
öö1 3
)
öö3 4
{
õõ 

Exceptions
úú 
.
úú %
ExceptionHandlerForLogs
úú 6
.
úú6 7
LogException
úú7 C
(
úúC D
ex
úúD F
,
úúF G

Exceptions
úúH R
.
úúR S!
ExceptionDictionary
úúS f
.
úúf g
ERROR
úúg l
)
úúl m
;
úúm n!
DialogWindowManager
ùù '
.
ùù' (#
ShowInfoOrErrorWindow
ùù( =
(
ùù= >

Properties
ùù> H
.
ùùH I
	Resources
ùùI R
.
ùùR S
txbErrorTitle
ùùS `
,
ùù` a

Properties
ùùb l
.
ùùl m
	Resources
ùùm v
.
ùùv w#
lblFailToManageTeamsùùw ã
+ùùå ç
$strùùé ì
+ùùî ï

Propertiesùùñ †
.ùù† °
	Resourcesùù° ™
.ùù™ ´#
lblEndPointNotFoundùù´ æ
,ùùæ ø
Windowùù¿ ∆
.ùù∆ «
	GetWindowùù« –
(ùù– —
thisùù— ’
)ùù’ ÷
,ùù÷ ◊#
DialogWindowManagerùùÿ Î
.ùùÎ Ï
ERRORùùÏ Ò
)ùùÒ Ú
;ùùÚ Û
	chbTeamUp
ûû 
.
ûû 
	IsChecked
ûû '
=
ûû( )
false
ûû* /
;
ûû/ 0
}
üü 
catch
†† 
(
†† 1
#CommunicationObjectFaultedException
†† :
ex
††; =
)
††= >
{
°° 

Exceptions
¢¢ 
.
¢¢ %
ExceptionHandlerForLogs
¢¢ 6
.
¢¢6 7
LogException
¢¢7 C
(
¢¢C D
ex
¢¢D F
,
¢¢F G

Exceptions
¢¢H R
.
¢¢R S!
ExceptionDictionary
¢¢S f
.
¢¢f g
ERROR
¢¢g l
)
¢¢l m
;
¢¢m n!
DialogWindowManager
££ '
.
££' (#
ShowInfoOrErrorWindow
££( =
(
££= >

Properties
££> H
.
££H I
	Resources
££I R
.
££R S
txbErrorTitle
££S `
,
££` a

Properties
££b l
.
££l m
	Resources
££m v
.
££v w#
lblFailToManageTeams££w ã
+££å ç
$str££é ì
+££î ï

Properties££ñ †
.££† °
	Resources££° ™
.££™ ´(
lblComunicationException££´ √
,££√ ƒ
Window££≈ À
.££À Ã
	GetWindow££Ã ’
(££’ ÷
this££÷ ⁄
)££⁄ €
,££€ ‹#
DialogWindowManager££› 
.££ Ò
ERROR££Ò ˆ
)££ˆ ˜
;££˜ ¯
	chbTeamUp
§§ 
.
§§ 
	IsChecked
§§ '
=
§§( )
false
§§* /
;
§§/ 0
}
•• 
catch
¶¶ 
(
¶¶ 
TimeoutException
¶¶ '
ex
¶¶( *
)
¶¶* +
{
ßß 

Exceptions
®® 
.
®® %
ExceptionHandlerForLogs
®® 6
.
®®6 7
LogException
®®7 C
(
®®C D
ex
®®D F
,
®®F G

Exceptions
®®H R
.
®®R S!
ExceptionDictionary
®®S f
.
®®f g
ERROR
®®g l
)
®®l m
;
®®m n!
DialogWindowManager
©© '
.
©©' (#
ShowInfoOrErrorWindow
©©( =
(
©©= >

Properties
©©> H
.
©©H I
	Resources
©©I R
.
©©R S
txbErrorTitle
©©S `
,
©©` a

Properties
©©b l
.
©©l m
	Resources
©©m v
.
©©v w#
lblFailToManageTeams©©w ã
+©©å ç
$str©©é ì
+©©î ï

Properties©©ñ †
.©©† °
	Resources©©° ™
.©©™ ´ 
lblTimeException©©´ ª
,©©ª º
Window©©Ω √
.©©√ ƒ
	GetWindow©©ƒ Õ
(©©Õ Œ
this©©Œ “
)©©“ ”
,©©” ‘#
DialogWindowManager©©’ Ë
.©©Ë È
ERROR©©È Ó
)©©Ó Ô
;©©Ô 
	chbTeamUp
™™ 
.
™™ 
	IsChecked
™™ '
=
™™( )
false
™™* /
;
™™/ 0
}
´´ 
catch
¨¨ 
(
¨¨ $
CommunicationException
¨¨ -
ex
¨¨. 0
)
¨¨0 1
{
≠≠ 

Exceptions
ÆÆ 
.
ÆÆ %
ExceptionHandlerForLogs
ÆÆ 6
.
ÆÆ6 7
LogException
ÆÆ7 C
(
ÆÆC D
ex
ÆÆD F
,
ÆÆF G

Exceptions
ÆÆH R
.
ÆÆR S!
ExceptionDictionary
ÆÆS f
.
ÆÆf g
ERROR
ÆÆg l
)
ÆÆl m
;
ÆÆm n!
DialogWindowManager
ØØ '
.
ØØ' (#
ShowInfoOrErrorWindow
ØØ( =
(
ØØ= >

Properties
ØØ> H
.
ØØH I
	Resources
ØØI R
.
ØØR S
txbErrorTitle
ØØS `
,
ØØ` a

Properties
ØØb l
.
ØØl m
	Resources
ØØm v
.
ØØv w#
lblFailToManageTeamsØØw ã
+ØØå ç
$strØØé ì
+ØØî ï

PropertiesØØñ †
.ØØ† °
	ResourcesØØ° ™
.ØØ™ ´#
lblWithoutConectionØØ´ æ
,ØØæ ø
WindowØØ¿ ∆
.ØØ∆ «
	GetWindowØØ« –
(ØØ– —
thisØØ— ’
)ØØ’ ÷
,ØØ÷ ◊#
DialogWindowManagerØØÿ Î
.ØØÎ Ï
ERRORØØÏ Ò
)ØØÒ Ú
;ØØÚ Û
	chbTeamUp
∞∞ 
.
∞∞ 
	IsChecked
∞∞ '
=
∞∞( )
false
∞∞* /
;
∞∞/ 0
}
±± 
}
≤≤ 
}
≥≥ 	
private
µµ 
void
µµ 
ClickNoTeamUp
µµ "
(
µµ" #
object
µµ# )
sender
µµ* 0
,
µµ0 1
RoutedEventArgs
µµ2 A
e
µµB C
)
µµC D
{
∂∂ 	
if
∑∑ 
(
∑∑ 
isAdminOfLobby
∑∑ 
)
∑∑ 
{
∏∏ 
try
ππ 
{
∫∫  
LobbyActionsClient
ªª &'
lobbyActionsCallBackProxy
ªª' @
=
ªªA B
new
ªªC F 
LobbyActionsClient
ªªG Y
(
ªªY Z
new
ªªZ ]
InstanceContext
ªª^ m
(
ªªm n
this
ªªn r
)
ªªr s
)
ªªs t
;
ªªt u'
lobbyActionsCallBackProxy
ºº -
.
ºº- . 
RenewLobbyCallBack
ºº. @
(
ºº@ A
roomCode
ººA I
,
ººI J
userSingleton
ººK X
.
ººX Y
IdUser
ººY _
)
ºº_ `
;
ºº` a
DoOrUndoTeams
ææ !
(
ææ! "
false
ææ" '
)
ææ' (
;
ææ( )
SetPlayerInLabels
øø %
(
øø% &
)
øø& '
;
øø' ()
LobbyActionsOperationClient
¿¿ /
lobbyActionsProxy
¿¿0 A
=
¿¿B C
new
¿¿D G
(
¿¿G H
)
¿¿H I
;
¿¿I J
lobbyActionsProxy
¡¡ %
.
¡¡% &
	MakeTeams
¡¡& /
(
¡¡/ 0
roomCode
¡¡0 8
,
¡¡8 9
userSingleton
¡¡: G
.
¡¡G H
IdUser
¡¡H N
,
¡¡N O
false
¡¡P U
)
¡¡U V
;
¡¡V W
}
¬¬ 
catch
√√ 
(
√√ '
EndpointNotFoundException
√√ 0
ex
√√1 3
)
√√3 4
{
ƒƒ 

Exceptions
≈≈ 
.
≈≈ %
ExceptionHandlerForLogs
≈≈ 6
.
≈≈6 7
LogException
≈≈7 C
(
≈≈C D
ex
≈≈D F
,
≈≈F G

Exceptions
≈≈H R
.
≈≈R S!
ExceptionDictionary
≈≈S f
.
≈≈f g
ERROR
≈≈g l
)
≈≈l m
;
≈≈m n!
DialogWindowManager
∆∆ '
.
∆∆' (#
ShowInfoOrErrorWindow
∆∆( =
(
∆∆= >

Properties
∆∆> H
.
∆∆H I
	Resources
∆∆I R
.
∆∆R S
txbErrorTitle
∆∆S `
,
∆∆` a

Properties
∆∆b l
.
∆∆l m
	Resources
∆∆m v
.
∆∆v w#
lblFailToManageTeams∆∆w ã
+∆∆å ç
$str∆∆é ì
+∆∆î ï

Properties∆∆ñ †
.∆∆† °
	Resources∆∆° ™
.∆∆™ ´#
lblEndPointNotFound∆∆´ æ
,∆∆æ ø
Window∆∆¿ ∆
.∆∆∆ «
	GetWindow∆∆« –
(∆∆– —
this∆∆— ’
)∆∆’ ÷
,∆∆÷ ◊#
DialogWindowManager∆∆ÿ Î
.∆∆Î Ï
ERROR∆∆Ï Ò
)∆∆Ò Ú
;∆∆Ú Û
DoOrUndoTeams
«« !
(
««! "
true
««" &
)
««& '
;
««' (
SetPlayerInLabels
»» %
(
»»% &
)
»»& '
;
»»' (
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
ÀÀ 

Exceptions
ÃÃ 
.
ÃÃ %
ExceptionHandlerForLogs
ÃÃ 6
.
ÃÃ6 7
LogException
ÃÃ7 C
(
ÃÃC D
ex
ÃÃD F
,
ÃÃF G

Exceptions
ÃÃH R
.
ÃÃR S!
ExceptionDictionary
ÃÃS f
.
ÃÃf g
ERROR
ÃÃg l
)
ÃÃl m
;
ÃÃm n!
DialogWindowManager
ÕÕ '
.
ÕÕ' (#
ShowInfoOrErrorWindow
ÕÕ( =
(
ÕÕ= >

Properties
ÕÕ> H
.
ÕÕH I
	Resources
ÕÕI R
.
ÕÕR S
txbErrorTitle
ÕÕS `
,
ÕÕ` a

Properties
ÕÕb l
.
ÕÕl m
	Resources
ÕÕm v
.
ÕÕv w#
lblFailToManageTeamsÕÕw ã
+ÕÕå ç
$strÕÕé ì
+ÕÕî ï

PropertiesÕÕñ †
.ÕÕ† °
	ResourcesÕÕ° ™
.ÕÕ™ ´(
lblComunicationExceptionÕÕ´ √
,ÕÕ√ ƒ
WindowÕÕ≈ À
.ÕÕÀ Ã
	GetWindowÕÕÃ ’
(ÕÕ’ ÷
thisÕÕ÷ ⁄
)ÕÕ⁄ €
,ÕÕ€ ‹#
DialogWindowManagerÕÕ› 
.ÕÕ Ò
ERRORÕÕÒ ˆ
)ÕÕˆ ˜
;ÕÕ˜ ¯
DoOrUndoTeams
ŒŒ !
(
ŒŒ! "
true
ŒŒ" &
)
ŒŒ& '
;
ŒŒ' (
SetPlayerInLabels
œœ %
(
œœ% &
)
œœ& '
;
œœ' (
}
–– 
catch
—— 
(
—— 
TimeoutException
—— '
ex
——( *
)
——* +
{
““ 

Exceptions
”” 
.
”” %
ExceptionHandlerForLogs
”” 6
.
””6 7
LogException
””7 C
(
””C D
ex
””D F
,
””F G

Exceptions
””H R
.
””R S!
ExceptionDictionary
””S f
.
””f g
ERROR
””g l
)
””l m
;
””m n!
DialogWindowManager
‘‘ '
.
‘‘' (#
ShowInfoOrErrorWindow
‘‘( =
(
‘‘= >

Properties
‘‘> H
.
‘‘H I
	Resources
‘‘I R
.
‘‘R S
txbErrorTitle
‘‘S `
,
‘‘` a

Properties
‘‘b l
.
‘‘l m
	Resources
‘‘m v
.
‘‘v w#
lblFailToManageTeams‘‘w ã
+‘‘å ç
$str‘‘é ì
+‘‘î ï

Properties‘‘ñ †
.‘‘† °
	Resources‘‘° ™
.‘‘™ ´ 
lblTimeException‘‘´ ª
,‘‘ª º
Window‘‘Ω √
.‘‘√ ƒ
	GetWindow‘‘ƒ Õ
(‘‘Õ Œ
this‘‘Œ “
)‘‘“ ”
,‘‘” ‘#
DialogWindowManager‘‘’ Ë
.‘‘Ë È
ERROR‘‘È Ó
)‘‘Ó Ô
;‘‘Ô 
DoOrUndoTeams
’’ !
(
’’! "
true
’’" &
)
’’& '
;
’’' (
SetPlayerInLabels
÷÷ %
(
÷÷% &
)
÷÷& '
;
÷÷' (
}
◊◊ 
catch
ÿÿ 
(
ÿÿ $
CommunicationException
ÿÿ -
ex
ÿÿ. 0
)
ÿÿ0 1
{
ŸŸ 

Exceptions
⁄⁄ 
.
⁄⁄ %
ExceptionHandlerForLogs
⁄⁄ 6
.
⁄⁄6 7
LogException
⁄⁄7 C
(
⁄⁄C D
ex
⁄⁄D F
,
⁄⁄F G

Exceptions
⁄⁄H R
.
⁄⁄R S!
ExceptionDictionary
⁄⁄S f
.
⁄⁄f g
ERROR
⁄⁄g l
)
⁄⁄l m
;
⁄⁄m n!
DialogWindowManager
€€ '
.
€€' (#
ShowInfoOrErrorWindow
€€( =
(
€€= >

Properties
€€> H
.
€€H I
	Resources
€€I R
.
€€R S
txbErrorTitle
€€S `
,
€€` a

Properties
€€b l
.
€€l m
	Resources
€€m v
.
€€v w#
lblFailToManageTeams€€w ã
+€€å ç
$str€€é ì
+€€î ï

Properties€€ñ †
.€€† °
	Resources€€° ™
.€€™ ´#
lblWithoutConection€€´ æ
,€€æ ø
Window€€¿ ∆
.€€∆ «
	GetWindow€€« –
(€€– —
this€€— ’
)€€’ ÷
,€€÷ ◊#
DialogWindowManager€€ÿ Î
.€€Î Ï
ERROR€€Ï Ò
)€€Ò Ú
;€€Ú Û
DoOrUndoTeams
‹‹ !
(
‹‹! "
true
‹‹" &
)
‹‹& '
;
‹‹' (
SetPlayerInLabels
›› %
(
››% &
)
››& '
;
››' (
}
ﬁﬁ 
}
ﬂﬂ 
}
‡‡ 	
public
‚‚ 
void
‚‚ 
MakeTeamsResponse
‚‚ %
(
‚‚% &
bool
‚‚& *
teamUp
‚‚+ 1
)
‚‚1 2
{
„„ 	
DoOrUndoTeams
‰‰ 
(
‰‰ 
teamUp
‰‰  
)
‰‰  !
;
‰‰! "
SetPlayerInLabels
ÂÂ 
(
ÂÂ 
)
ÂÂ 
;
ÂÂ  
}
ÊÊ 	
private
ËË 
void
ËË 
DoOrUndoTeams
ËË "
(
ËË" #
bool
ËË# '
teamUp
ËË( .
)
ËË. /
{
ÈÈ 	
if
ÍÍ 
(
ÍÍ 
teamUp
ÍÍ 
)
ÍÍ 
{
ÎÎ "
currentPlayerInLobby
ÏÏ $
=
ÏÏ% &"
currentPlayerInLobby
ÏÏ' ;
.
ÏÏ; <
Select
ÏÏ< B
(
ÏÏB C
pla
ÏÏC F
=>
ÏÏG I
{
ÌÌ 
if
ÓÓ 
(
ÓÓ 
pla
ÓÓ 
.
ÓÓ #
NumberOfPlayerInLobby
ÓÓ 1
<=
ÓÓ2 4
TEMA_RIGHT_SIDE
ÓÓ5 D
)
ÓÓD E
{
ÔÔ 
pla
 
.
 

SideOfTeam
 &
=
' (
TEAM_LEFT_SIDE
) 7
;
7 8
}
ÒÒ 
else
ÚÚ 
{
ÛÛ 
pla
ÙÙ 
.
ÙÙ 

SideOfTeam
ÙÙ &
=
ÙÙ' (
TEMA_RIGHT_SIDE
ÙÙ) 8
;
ÙÙ8 9
}
ıı 
return
ˆˆ 
pla
ˆˆ 
;
ˆˆ 
}
˜˜ 
)
˜˜ 
.
˜˜ 
ToList
˜˜ 
(
˜˜ 
)
˜˜ 
;
˜˜ 
}
¯¯ 
else
˘˘ 
{
˙˙ "
currentPlayerInLobby
˚˚ $
=
˚˚% &"
currentPlayerInLobby
˚˚' ;
.
˚˚; <
Select
˚˚< B
(
˚˚B C
pla
˚˚C F
=>
˚˚G I
{
¸¸ 
pla
˝˝ 
.
˝˝ 

SideOfTeam
˝˝ "
=
˝˝# $
TEAM_LEFT_SIDE
˝˝% 3
;
˝˝3 4
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
ÄÄ 
if
ÅÅ 
(
ÅÅ 
!
ÅÅ 
isAdminOfLobby
ÅÅ 
)
ÅÅ  
{
ÇÇ 
	chbTeamUp
ÉÉ 
.
ÉÉ 
	IsChecked
ÉÉ #
=
ÉÉ$ %
teamUp
ÉÉ& ,
;
ÉÉ, -
}
ÑÑ 
}
ÖÖ 	
private
àà 
void
àà !
ClickChangeTeamSide
àà (
(
àà( )
object
àà) /
sender
àà0 6
,
àà6 7"
MouseButtonEventArgs
àà8 L
e
ààM N
)
ààN O
{
ââ 	
if
ää 
(
ää 
isAdminOfLobby
ää 
&&
ää !"
currentPlayerInLobby
ää" 6
.
ää6 7
Count
ää7 <
==
ää= ?
$num
ää@ A
&&
ääB D
(
ääE F
bool
ääF J
)
ääJ K
	chbTeamUp
ääK T
.
ääT U
	IsChecked
ääU ^
)
ää^ _
{
ãã 
string
åå 
userName
åå 
=
åå  !*
GetUserNameFromLabelByBorder
åå" >
(
åå> ?
sender
åå? E
)
ååE F
;
ååF G
if
çç 
(
çç 
userName
çç 
!=
çç 
null
çç  $
)
çç$ %
{
éé 
PlayerInLobby
èè !
userChanged
èè" -
=
èè. / 
ChangeSideOfPlayer
èè0 B
(
èèB C
userName
èèC K
)
èèK L
;
èèL M
if
êê 
(
êê 
userChanged
êê #
.
êê# $
IdUser
êê$ *
!=
êê+ -
NULL_INT_VALUE
êê. <
)
êê< =
{
ëë 
ChangePlayerTeam
íí (
(
íí( )
userChanged
íí) 4
)
íí4 5
;
íí5 6
SetPlayerInLabels
ìì )
(
ìì) *
)
ìì* +
;
ìì+ ,
}
îî 
}
ïï 
}
ññ 
}
óó 	
private
ôô 
void
ôô 
ChangePlayerTeam
ôô %
(
ôô% &
PlayerInLobby
ôô& 3
userChanged
ôô4 ?
)
ôô? @
{
öö 	
try
õõ 
{
úú  
LobbyActionsClient
ùù "'
lobbyActionsCallBackProxy
ùù# <
=
ùù= >
new
ùù? B 
LobbyActionsClient
ùùC U
(
ùùU V
new
ùùV Y
InstanceContext
ùùZ i
(
ùùi j
this
ùùj n
)
ùùn o
)
ùùo p
;
ùùp q'
lobbyActionsCallBackProxy
ûû )
.
ûû) * 
RenewLobbyCallBack
ûû* <
(
ûû< =
roomCode
ûû= E
,
ûûE F
userSingleton
ûûG T
.
ûûT U
IdUser
ûûU [
)
ûû[ \
;
ûû\ ])
LobbyActionsOperationClient
†† +
lobbyActionsProxy
††, =
=
††> ?
new
††@ C
(
††C D
)
††D E
;
††E F
lobbyActionsProxy
°° !
.
°°! "
ChangePlayerSide
°°" 2
(
°°2 3
roomCode
°°3 ;
,
°°; <
userChanged
°°= H
.
°°H I
IdUser
°°I O
,
°°O P
userChanged
°°Q \
.
°°\ ]

SideOfTeam
°°] g
)
°°g h
;
°°h i
}
¢¢ 
catch
££ 
(
££ '
EndpointNotFoundException
££ ,
ex
££- /
)
££/ 0
{
§§ 

Exceptions
•• 
.
•• %
ExceptionHandlerForLogs
•• 2
.
••2 3
LogException
••3 ?
(
••? @
ex
••@ B
,
••B C

Exceptions
••D N
.
••N O!
ExceptionDictionary
••O b
.
••b c
ERROR
••c h
)
••h i
;
••i j!
DialogWindowManager
¶¶ #
.
¶¶# $#
ShowInfoOrErrorWindow
¶¶$ 9
(
¶¶9 :

Properties
¶¶: D
.
¶¶D E
	Resources
¶¶E N
.
¶¶N O
txbErrorTitle
¶¶O \
,
¶¶\ ]

Properties
¶¶^ h
.
¶¶h i
	Resources
¶¶i r
.
¶¶r s#
lblFailToManageTeams¶¶s á
+¶¶à â
$str¶¶ä è
+¶¶ê ë

Properties¶¶í ú
.¶¶ú ù
	Resources¶¶ù ¶
.¶¶¶ ß#
lblEndPointNotFound¶¶ß ∫
,¶¶∫ ª
Window¶¶º ¬
.¶¶¬ √
	GetWindow¶¶√ Ã
(¶¶Ã Õ
this¶¶Õ —
)¶¶— “
,¶¶“ ”#
DialogWindowManager¶¶‘ Á
.¶¶Á Ë
ERROR¶¶Ë Ì
)¶¶Ì Ó
;¶¶Ó Ô 
ChangeSideOfPlayer
ßß "
(
ßß" #
userChanged
ßß# .
.
ßß. /
UserName
ßß/ 7
)
ßß7 8
;
ßß8 9
}
®® 
catch
©© 
(
©© 1
#CommunicationObjectFaultedException
©© 6
ex
©©7 9
)
©©9 :
{
™™ 

Exceptions
´´ 
.
´´ %
ExceptionHandlerForLogs
´´ 2
.
´´2 3
LogException
´´3 ?
(
´´? @
ex
´´@ B
,
´´B C

Exceptions
´´D N
.
´´N O!
ExceptionDictionary
´´O b
.
´´b c
ERROR
´´c h
)
´´h i
;
´´i j!
DialogWindowManager
¨¨ #
.
¨¨# $#
ShowInfoOrErrorWindow
¨¨$ 9
(
¨¨9 :

Properties
¨¨: D
.
¨¨D E
	Resources
¨¨E N
.
¨¨N O
txbErrorTitle
¨¨O \
,
¨¨\ ]

Properties
¨¨^ h
.
¨¨h i
	Resources
¨¨i r
.
¨¨r s#
lblFailToManageTeams¨¨s á
+¨¨à â
$str¨¨ä è
+¨¨ê ë

Properties¨¨í ú
.¨¨ú ù
	Resources¨¨ù ¶
.¨¨¶ ß(
lblComunicationException¨¨ß ø
,¨¨ø ¿
Window¨¨¡ «
.¨¨« »
	GetWindow¨¨» —
(¨¨— “
this¨¨“ ÷
)¨¨÷ ◊
,¨¨◊ ÿ#
DialogWindowManager¨¨Ÿ Ï
.¨¨Ï Ì
ERROR¨¨Ì Ú
)¨¨Ú Û
;¨¨Û Ù 
ChangeSideOfPlayer
≠≠ "
(
≠≠" #
userChanged
≠≠# .
.
≠≠. /
UserName
≠≠/ 7
)
≠≠7 8
;
≠≠8 9
}
ÆÆ 
catch
ØØ 
(
ØØ 
TimeoutException
ØØ #
ex
ØØ$ &
)
ØØ& '
{
∞∞ 

Exceptions
±± 
.
±± %
ExceptionHandlerForLogs
±± 2
.
±±2 3
LogException
±±3 ?
(
±±? @
ex
±±@ B
,
±±B C

Exceptions
±±D N
.
±±N O!
ExceptionDictionary
±±O b
.
±±b c
ERROR
±±c h
)
±±h i
;
±±i j!
DialogWindowManager
≤≤ #
.
≤≤# $#
ShowInfoOrErrorWindow
≤≤$ 9
(
≤≤9 :

Properties
≤≤: D
.
≤≤D E
	Resources
≤≤E N
.
≤≤N O
txbErrorTitle
≤≤O \
,
≤≤\ ]

Properties
≤≤^ h
.
≤≤h i
	Resources
≤≤i r
.
≤≤r s#
lblFailToManageTeams≤≤s á
+≤≤à â
$str≤≤ä è
+≤≤ê ë

Properties≤≤í ú
.≤≤ú ù
	Resources≤≤ù ¶
.≤≤¶ ß 
lblTimeException≤≤ß ∑
,≤≤∑ ∏
Window≤≤π ø
.≤≤ø ¿
	GetWindow≤≤¿ …
(≤≤…  
this≤≤  Œ
)≤≤Œ œ
,≤≤œ –#
DialogWindowManager≤≤— ‰
.≤≤‰ Â
ERROR≤≤Â Í
)≤≤Í Î
;≤≤Î Ï 
ChangeSideOfPlayer
≥≥ "
(
≥≥" #
userChanged
≥≥# .
.
≥≥. /
UserName
≥≥/ 7
)
≥≥7 8
;
≥≥8 9
}
¥¥ 
catch
µµ 
(
µµ $
CommunicationException
µµ )
ex
µµ* ,
)
µµ, -
{
∂∂ 

Exceptions
∑∑ 
.
∑∑ %
ExceptionHandlerForLogs
∑∑ 2
.
∑∑2 3
LogException
∑∑3 ?
(
∑∑? @
ex
∑∑@ B
,
∑∑B C

Exceptions
∑∑D N
.
∑∑N O!
ExceptionDictionary
∑∑O b
.
∑∑b c
ERROR
∑∑c h
)
∑∑h i
;
∑∑i j!
DialogWindowManager
∏∏ #
.
∏∏# $#
ShowInfoOrErrorWindow
∏∏$ 9
(
∏∏9 :

Properties
∏∏: D
.
∏∏D E
	Resources
∏∏E N
.
∏∏N O
txbErrorTitle
∏∏O \
,
∏∏\ ]

Properties
∏∏^ h
.
∏∏h i
	Resources
∏∏i r
.
∏∏r s#
lblFailToManageTeams∏∏s á
+∏∏à â
$str∏∏ä è
+∏∏ê ë

Properties∏∏í ú
.∏∏ú ù
	Resources∏∏ù ¶
.∏∏¶ ß#
lblWithoutConection∏∏ß ∫
,∏∏∫ ª
Window∏∏º ¬
.∏∏¬ √
	GetWindow∏∏√ Ã
(∏∏Ã Õ
this∏∏Õ —
)∏∏— “
,∏∏“ ”#
DialogWindowManager∏∏‘ Á
.∏∏Á Ë
ERROR∏∏Ë Ì
)∏∏Ì Ó
;∏∏Ó Ô 
ChangeSideOfPlayer
ππ "
(
ππ" #
userChanged
ππ# .
.
ππ. /
UserName
ππ/ 7
)
ππ7 8
;
ππ8 9
}
∫∫ 
}
ªª 	
private
ΩΩ 
PlayerInLobby
ΩΩ  
ChangeSideOfPlayer
ΩΩ 0
(
ΩΩ0 1
String
ΩΩ1 7
userName
ΩΩ8 @
)
ΩΩ@ A
{
ææ 	"
currentPlayerInLobby
øø  
=
øø! ""
currentPlayerInLobby
øø# 7
.
øø7 8
Select
øø8 >
(
øø> ?
pla
øø? B
=>
øøC E
{
¿¿ 
if
¡¡ 
(
¡¡ 
pla
¡¡ 
.
¡¡ 
UserName
¡¡  
.
¡¡  !
Equals
¡¡! '
(
¡¡' (
userName
¡¡( 0
)
¡¡0 1
)
¡¡1 2
{
¬¬ 
if
√√ 
(
√√ 
pla
√√ 
.
√√ 

SideOfTeam
√√ &
==
√√' )
TEAM_LEFT_SIDE
√√* 8
)
√√8 9
{
ƒƒ 
pla
≈≈ 
.
≈≈ 

SideOfTeam
≈≈ &
=
≈≈' (
TEMA_RIGHT_SIDE
≈≈) 8
;
≈≈8 9
}
∆∆ 
else
«« 
{
»» 
pla
…… 
.
…… 

SideOfTeam
…… &
=
……' (
TEAM_LEFT_SIDE
……) 7
;
……7 8
}
   
}
ÀÀ 
return
ÃÃ 
pla
ÃÃ 
;
ÃÃ 
}
ÕÕ 
)
ÕÕ 
.
ÕÕ 
ToList
ÕÕ 
(
ÕÕ 
)
ÕÕ 
;
ÕÕ 
PlayerInLobby
ŒŒ 
player
ŒŒ  
=
ŒŒ! ""
currentPlayerInLobby
ŒŒ# 7
.
ŒŒ7 8
Find
ŒŒ8 <
(
ŒŒ< =
x
ŒŒ= >
=>
ŒŒ? A
x
ŒŒB C
.
ŒŒC D
UserName
ŒŒD L
.
ŒŒL M
Equals
ŒŒM S
(
ŒŒS T
userName
ŒŒT \
)
ŒŒ\ ]
)
ŒŒ] ^
;
ŒŒ^ _
return
œœ 
player
œœ 
;
œœ 
}
–– 	
private
““ 
String
““ *
GetUserNameFromLabelByBorder
““ 3
(
““3 4
object
““4 :
sender
““; A
)
““A B
{
”” 	
Border
‘‘ 
	brdChosen
‘‘ 
=
‘‘ 
(
‘‘  
Border
‘‘  &
)
‘‘& '
sender
‘‘' -
;
‘‘- .

StackPanel
’’ 
	stcChosen
’’  
=
’’! "
(
’’# $

StackPanel
’’$ .
)
’’. /
	brdChosen
’’/ 8
.
’’8 9
Child
’’9 >
;
’’> ?
Label
÷÷ 
label
÷÷ 
=
÷÷ 
	stcChosen
÷÷ #
.
÷÷# $
Children
÷÷$ ,
.
÷÷, -
OfType
÷÷- 3
<
÷÷3 4
Label
÷÷4 9
>
÷÷9 :
(
÷÷: ;
)
÷÷; <
.
÷÷< =
FirstOrDefault
÷÷= K
(
÷÷K L
)
÷÷L M
;
÷÷M N
return
◊◊ 
label
◊◊ 
?
◊◊ 
.
◊◊ 
Content
◊◊ !
?
◊◊! "
.
◊◊" #
ToString
◊◊# +
(
◊◊+ ,
)
◊◊, -
;
◊◊- .
}
ÿÿ 	
public
⁄⁄ 
void
⁄⁄ 
UpdateTeamSide
⁄⁄ "
(
⁄⁄" #8
*GenericClassOfArrayOfPlayerInLobbyxY0a3WX4
⁄⁄# M
playersInTheLobby
⁄⁄N _
)
⁄⁄_ `
{
€€ 	
if
‹‹ 
(
‹‹ 
playersInTheLobby
‹‹ !
.
‹‹! "
	CodeEvent
‹‹" +
==
‹‹, .!
ExceptionDictionary
‹‹/ B
.
‹‹B C
SUCCESFULL_EVENT
‹‹C S
)
‹‹S T
{
›› "
currentPlayerInLobby
ﬁﬁ $
=
ﬁﬁ% &
playersInTheLobby
ﬁﬁ' 8
.
ﬁﬁ8 9
ObjectSaved
ﬁﬁ9 D
.
ﬁﬁD E
ToList
ﬁﬁE K
(
ﬁﬁK L
)
ﬁﬁL M
;
ﬁﬁM N
SetPlayerInLabels
ﬂﬂ !
(
ﬂﬂ! "
)
ﬂﬂ" #
;
ﬂﬂ# $
}
‡‡ 
}
·· 	
private
„„ 
void
„„ "
CLicButtonCancelGame
„„ )
(
„„) *
object
„„* 0
sender
„„1 7
,
„„7 8
RoutedEventArgs
„„9 H
e
„„I J
)
„„J K
{
‰‰ 	
if
ÂÂ 
(
ÂÂ !
DialogWindowManager
ÂÂ #
.
ÂÂ# $$
ShowWindowConfirmation
ÂÂ$ :
(
ÂÂ: ;

Properties
ÂÂ; E
.
ÂÂE F
	Resources
ÂÂF O
.
ÂÂO P
txbWarningTitle
ÂÂP _
,
ÂÂ_ `

Properties
ÂÂa k
.
ÂÂk l
	Resources
ÂÂl u
.
ÂÂu v
	txbCancel
ÂÂv 
,ÂÂ Ä
WindowÂÂÅ á
.ÂÂá à
	GetWindowÂÂà ë
(ÂÂë í
thisÂÂí ñ
)ÂÂñ ó
)ÂÂó ò
)ÂÂò ô
{
ÊÊ 
try
ÁÁ 
{
ËË )
LobbyActionsOperationClient
ÈÈ /
lobbyActionsProxy
ÈÈ0 A
=
ÈÈB C
new
ÈÈD G
(
ÈÈG H
)
ÈÈH I
;
ÈÈI J
if
ÍÍ 
(
ÍÍ 
isAdminOfLobby
ÍÍ &
)
ÍÍ& '
{
ÎÎ 
lobbyActionsProxy
ÏÏ )
.
ÏÏ) *
DissolveLobby
ÏÏ* 7
(
ÏÏ7 8
roomCode
ÏÏ8 @
,
ÏÏ@ A
userSingleton
ÏÏB O
.
ÏÏO P
IdUser
ÏÏP V
)
ÏÏV W
;
ÏÏW X
}
ÌÌ 
else
ÓÓ 
{
ÔÔ 
lobbyActionsProxy
 )
.
) *

LeaveLobby
* 4
(
4 5
roomCode
5 =
,
= >
userSingleton
? L
.
L M
IdUser
M S
)
S T
;
T U
}
ÒÒ 
}
ÚÚ 
catch
ÛÛ 
(
ÛÛ '
EndpointNotFoundException
ÛÛ 0
ex
ÛÛ1 3
)
ÛÛ3 4
{
ÙÙ 

Exceptions
ıı 
.
ıı %
ExceptionHandlerForLogs
ıı 6
.
ıı6 7
LogException
ıı7 C
(
ııC D
ex
ııD F
,
ııF G

Exceptions
ııH R
.
ııR S!
ExceptionDictionary
ııS f
.
ııf g
ERROR
ııg l
)
ııl m
;
ıım n
}
ˆˆ 
catch
˜˜ 
(
˜˜ 1
#CommunicationObjectFaultedException
˜˜ :
ex
˜˜; =
)
˜˜= >
{
¯¯ 

Exceptions
˘˘ 
.
˘˘ %
ExceptionHandlerForLogs
˘˘ 6
.
˘˘6 7
LogException
˘˘7 C
(
˘˘C D
ex
˘˘D F
,
˘˘F G

Exceptions
˘˘H R
.
˘˘R S!
ExceptionDictionary
˘˘S f
.
˘˘f g
ERROR
˘˘g l
)
˘˘l m
;
˘˘m n
}
˙˙ 
catch
˚˚ 
(
˚˚ 
TimeoutException
˚˚ '
ex
˚˚( *
)
˚˚* +
{
¸¸ 

Exceptions
˝˝ 
.
˝˝ %
ExceptionHandlerForLogs
˝˝ 6
.
˝˝6 7
LogException
˝˝7 C
(
˝˝C D
ex
˝˝D F
,
˝˝F G

Exceptions
˝˝H R
.
˝˝R S!
ExceptionDictionary
˝˝S f
.
˝˝f g
ERROR
˝˝g l
)
˝˝l m
;
˝˝m n
}
˛˛ 
catch
ˇˇ 
(
ˇˇ $
CommunicationException
ˇˇ -
ex
ˇˇ. 0
)
ˇˇ0 1
{
ÄÄ 

Exceptions
ÅÅ 
.
ÅÅ %
ExceptionHandlerForLogs
ÅÅ 6
.
ÅÅ6 7
LogException
ÅÅ7 C
(
ÅÅC D
ex
ÅÅD F
,
ÅÅF G

Exceptions
ÅÅH R
.
ÅÅR S!
ExceptionDictionary
ÅÅS f
.
ÅÅf g
ERROR
ÅÅg l
)
ÅÅl m
;
ÅÅm n
}
ÇÇ 
CloseWindow
ÉÉ 
(
ÉÉ 
)
ÉÉ 
;
ÉÉ 
}
ÑÑ 
}
ÖÖ 	
private
ÜÜ 
void
ÜÜ 
CloseWindow
ÜÜ  
(
ÜÜ  !
)
ÜÜ! "
{
áá 	
if
àà 
(
àà 
userSingleton
àà 
.
àà 
IdState
àà %
!=
àà& (
$num
àà) *
)
àà* +
{
ââ 
MainMenu
ää 
mainMenu
ää !
=
ää" #
new
ää$ '
MainMenu
ää( 0
(
ää0 1
)
ää1 2
;
ää2 3
this
ãã 
.
ãã 
NavigationService
ãã &
.
ãã& '
Navigate
ãã' /
(
ãã/ 0
mainMenu
ãã0 8
)
ãã8 9
;
ãã9 :
NavigationService
åå !
.
åå! "
RemoveBackEntry
åå" 1
(
åå1 2
)
åå2 3
;
åå3 4
}
çç 
else
éé 
{
èè 
DeleteSingleton
êê 
(
êê  
)
êê  !
;
êê! "
PrincipalPage
ëë 
principalPage
ëë +
=
ëë, -
new
ëë. 1
PrincipalPage
ëë2 ?
(
ëë? @
)
ëë@ A
;
ëëA B
this
íí 
.
íí 
NavigationService
íí &
.
íí& '
Navigate
íí' /
(
íí/ 0
principalPage
íí0 =
)
íí= >
;
íí> ?
NavigationService
ìì !
.
ìì! "
RemoveBackEntry
ìì" 1
(
ìì1 2
)
ìì2 3
;
ìì3 4
}
îî 
}
ïï 	
public
óó 
void
óó 
DissolvingLobby
óó #
(
óó# $
)
óó$ %
{
òò 	!
DialogWindowManager
ôô 
.
ôô  #
ShowInfoOrErrorWindow
ôô  5
(
ôô5 6

Properties
ôô6 @
.
ôô@ A
	Resources
ôôA J
.
ôôJ K
txbWarningTitle
ôôK Z
,
ôôZ [

Properties
ôô\ f
.
ôôf g
	Resources
ôôg p
.
ôôp q
GameCancelled
ôôq ~
,
ôô~ 
WindowôôÄ Ü
.ôôÜ á
	GetWindowôôá ê
(ôôê ë
thisôôë ï
)ôôï ñ
,ôôñ ó#
DialogWindowManagerôôò ´
.ôô´ ¨
INFORMATIONôô¨ ∑
)ôô∑ ∏
;ôô∏ π
CloseWindow
öö 
(
öö 
)
öö 
;
öö 
}
õõ 	
private
ùù 
void
ùù 
DeleteSingleton
ùù $
(
ùù$ %
)
ùù% &
{
ûû 	
try
üü 
{
†† &
GuestPlayerManagerClient
°° (%
guestPlayerManagerProxy
°°) @
=
°°A B
new
°°C F
(
°°F G
)
°°G H
;
°°H I%
guestPlayerManagerProxy
¢¢ '
.
¢¢' (
DeleteGuest
¢¢( 3
(
¢¢3 4
userSingleton
¢¢4 A
.
¢¢A B
IdUser
¢¢B H
)
¢¢H I
;
¢¢I J
}
££ 
catch
§§ 
(
§§ '
EndpointNotFoundException
§§ ,
ex
§§- /
)
§§/ 0
{
•• %
ExceptionHandlerForLogs
¶¶ '
.
¶¶' (
LogException
¶¶( 4
(
¶¶4 5
ex
¶¶5 7
,
¶¶7 8!
ExceptionDictionary
¶¶9 L
.
¶¶L M
FATAL_EXCEPTION
¶¶M \
)
¶¶\ ]
;
¶¶] ^
}
ßß 
catch
®® 
(
®® 1
#CommunicationObjectFaultedException
®® 6
ex
®®7 9
)
®®9 :
{
©© %
ExceptionHandlerForLogs
™™ '
.
™™' (
LogException
™™( 4
(
™™4 5
ex
™™5 7
,
™™7 8!
ExceptionDictionary
™™9 L
.
™™L M
FATAL_EXCEPTION
™™M \
)
™™\ ]
;
™™] ^
}
´´ 
catch
¨¨ 
(
¨¨ 
TimeoutException
¨¨ #
ex
¨¨$ &
)
¨¨& '
{
≠≠ %
ExceptionHandlerForLogs
ÆÆ '
.
ÆÆ' (
LogException
ÆÆ( 4
(
ÆÆ4 5
ex
ÆÆ5 7
,
ÆÆ7 8!
ExceptionDictionary
ÆÆ9 L
.
ÆÆL M
FATAL_EXCEPTION
ÆÆM \
)
ÆÆ\ ]
;
ÆÆ] ^
}
ØØ 
catch
∞∞ 
(
∞∞ $
CommunicationException
∞∞ )
ex
∞∞* ,
)
∞∞, -
{
±± 
HandleException
≤≤ 
(
≤≤  
ex
≤≤  "
,
≤≤" #

Properties
≤≤$ .
.
≤≤. /
	Resources
≤≤/ 8
.
≤≤8 9!
lblWithoutConection
≤≤9 L
)
≤≤L M
;
≤≤M N
}
≥≥ 
UserSingleton
¥¥ 
.
¥¥ 
CleanSingleton
¥¥ (
(
¥¥( )
)
¥¥) *
;
¥¥* +
}
µµ 	
private
∑∑ 
void
∑∑ 
ClickOpenChat
∑∑ "
(
∑∑" #
object
∑∑# )
sender
∑∑* 0
,
∑∑0 1"
MouseButtonEventArgs
∑∑2 F
e
∑∑G H
)
∑∑H I
{
∏∏ 	
if
ππ 
(
ππ 
liveChatInstance
ππ  
==
ππ! #
null
ππ$ (
)
ππ( )
{
∫∫ 
liveChatInstance
ªª  
=
ªª! "
new
ªª# &
LiveChat
ªª' /
(
ªª/ 0
)
ªª0 1
;
ªª1 2
liveChatInstance
ºº  
.
ºº  !
	StartPage
ºº! *
(
ºº* +
isAdminOfLobby
ºº+ 9
,
ºº9 :
roomCode
ºº; C
,
ººC D
this
ººE I
)
ººI J
;
ººJ K
}
ΩΩ 
liveChatInstance
ææ 
.
ææ #
RenewLiveChatCallBack
ææ 2
(
ææ2 3
)
ææ3 4
;
ææ4 5%
frmActiveFriendsAndChat
øø #
.
øø# $
Content
øø$ +
=
øø, -
liveChatInstance
øø. >
;
øø> ?
grdActiveUser
¿¿ 
.
¿¿ 

Visibility
¿¿ $
=
¿¿% &

Visibility
¿¿' 1
.
¿¿1 2
Visible
¿¿2 9
;
¿¿9 :
}
¡¡ 	
public
√√ 
void
√√ 
ReceiveMessage
√√ "
(
√√" #/
!GenericClassOfMessageChatxY0a3WX4
√√# D
message
√√E L
)
√√L M
{
ƒƒ 	
(
≈≈ 
(
≈≈ 
ILiveChatCallback
≈≈ 
)
≈≈  
liveChatInstance
≈≈  0
)
≈≈0 1
.
≈≈1 2
ReceiveMessage
≈≈2 @
(
≈≈@ A
message
≈≈A H
)
≈≈H I
;
≈≈I J
}
∆∆ 	
private
«« 
void
«« 
ClickListFriends
«« %
(
««% &
object
««& ,
sender
««- 3
,
««3 4"
MouseButtonEventArgs
««5 I
e
««J K
)
««K L
{
»» 	
if
…… 
(
…… !
activeUsersInstance
…… #
==
……$ &
null
……' +
)
……+ ,
{
   !
activeUsersInstance
ÀÀ #
=
ÀÀ$ %
new
ÀÀ& )
ActiveFriends
ÀÀ* 7
(
ÀÀ7 8
userSingleton
ÀÀ8 E
.
ÀÀE F
IdUser
ÀÀF L
)
ÀÀL M
;
ÀÀM N!
activeUsersInstance
ÃÃ #
.
ÃÃ# $
	StartPage
ÃÃ$ -
(
ÃÃ- .
this
ÃÃ. 2
)
ÃÃ2 3
;
ÃÃ3 4
}
ÕÕ !
activeUsersInstance
ŒŒ 
.
ŒŒ  (
RenewFriendCallBackChannel
ŒŒ  :
(
ŒŒ: ;
userSingleton
ŒŒ; H
.
ŒŒH I
IdUser
ŒŒI O
)
ŒŒO P
;
ŒŒP Q%
frmActiveFriendsAndChat
œœ #
.
œœ# $
Content
œœ$ +
=
œœ, -!
activeUsersInstance
œœ. A
;
œœA B
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
––1 2
Visible
––2 9
;
––9 :
}
—— 	
private
”” 
void
”” %
NotifyFriendsIamPlaying
”” ,
(
””, -
)
””- .
{
‘‘ 	
try
’’ 
{
÷÷ -
AvailabilityUserManagmentClient
◊◊ /#
availabilityUserProxy
◊◊0 E
=
◊◊F G
new
◊◊H K
(
◊◊K L
)
◊◊L M
;
◊◊M N#
availabilityUserProxy
ÿÿ %
.
ÿÿ% &
PlayerIsPlaying
ÿÿ& 5
(
ÿÿ5 6
userSingleton
ÿÿ6 C
.
ÿÿC D
IdUser
ÿÿD J
)
ÿÿJ K
;
ÿÿK L
}
ŸŸ 
catch
⁄⁄ 
(
⁄⁄ '
EndpointNotFoundException
⁄⁄ ,
ex
⁄⁄- /
)
⁄⁄/ 0
{
€€ %
ExceptionHandlerForLogs
‹‹ '
.
‹‹' (
LogException
‹‹( 4
(
‹‹4 5
ex
‹‹5 7
,
‹‹7 8!
ExceptionDictionary
‹‹9 L
.
‹‹L M
FATAL_EXCEPTION
‹‹M \
)
‹‹\ ]
;
‹‹] ^!
DialogWindowManager
›› #
.
››# $#
ShowInfoOrErrorWindow
››$ 9
(
››9 :

Properties
››: D
.
››D E
	Resources
››E N
.
››N O
txbErrorTitle
››O \
,
››\ ]

Properties
››^ h
.
››h i
	Resources
››i r
.
››r s)
lblFailToNotifyYourFriends››s ç
+››é è
$str››ê ï
+››ñ ó

Properties››ò ¢
.››¢ £
	Resources››£ ¨
.››¨ ≠#
lblEndPointNotFound››≠ ¿
,››¿ ¡
Window››¬ »
.››» …
	GetWindow››… “
(››“ ”
this››” ◊
)››◊ ÿ
,››ÿ Ÿ#
DialogWindowManager››⁄ Ì
.››Ì Ó
ERROR››Ó Û
)››Û Ù
;››Ù ı
}
ﬁﬁ 
catch
ﬂﬂ 
(
ﬂﬂ 1
#CommunicationObjectFaultedException
ﬂﬂ 6
ex
ﬂﬂ7 9
)
ﬂﬂ9 :
{
‡‡ %
ExceptionHandlerForLogs
·· '
.
··' (
LogException
··( 4
(
··4 5
ex
··5 7
,
··7 8!
ExceptionDictionary
··9 L
.
··L M
FATAL_EXCEPTION
··M \
)
··\ ]
;
··] ^!
DialogWindowManager
‚‚ #
.
‚‚# $#
ShowInfoOrErrorWindow
‚‚$ 9
(
‚‚9 :

Properties
‚‚: D
.
‚‚D E
	Resources
‚‚E N
.
‚‚N O
txbErrorTitle
‚‚O \
,
‚‚\ ]

Properties
‚‚^ h
.
‚‚h i
	Resources
‚‚i r
.
‚‚r s)
lblFailToNotifyYourFriends‚‚s ç
+‚‚é è
$str‚‚ê ï
+‚‚ñ ó

Properties‚‚ò ¢
.‚‚¢ £
	Resources‚‚£ ¨
.‚‚¨ ≠(
lblComunicationException‚‚≠ ≈
,‚‚≈ ∆
Window‚‚« Õ
.‚‚Õ Œ
	GetWindow‚‚Œ ◊
(‚‚◊ ÿ
this‚‚ÿ ‹
)‚‚‹ ›
,‚‚› ﬁ#
DialogWindowManager‚‚ﬂ Ú
.‚‚Ú Û
ERROR‚‚Û ¯
)‚‚¯ ˘
;‚‚˘ ˙
}
„„ 
catch
‰‰ 
(
‰‰ 
TimeoutException
‰‰ #
ex
‰‰$ &
)
‰‰& '
{
ÂÂ %
ExceptionHandlerForLogs
ÊÊ '
.
ÊÊ' (
LogException
ÊÊ( 4
(
ÊÊ4 5
ex
ÊÊ5 7
,
ÊÊ7 8!
ExceptionDictionary
ÊÊ9 L
.
ÊÊL M
FATAL_EXCEPTION
ÊÊM \
)
ÊÊ\ ]
;
ÊÊ] ^!
DialogWindowManager
ÁÁ #
.
ÁÁ# $#
ShowInfoOrErrorWindow
ÁÁ$ 9
(
ÁÁ9 :

Properties
ÁÁ: D
.
ÁÁD E
	Resources
ÁÁE N
.
ÁÁN O
txbErrorTitle
ÁÁO \
,
ÁÁ\ ]

Properties
ÁÁ^ h
.
ÁÁh i
	Resources
ÁÁi r
.
ÁÁr s)
lblFailToNotifyYourFriendsÁÁs ç
+ÁÁé è
$strÁÁê ï
+ÁÁñ ó

PropertiesÁÁò ¢
.ÁÁ¢ £
	ResourcesÁÁ£ ¨
.ÁÁ¨ ≠ 
lblTimeExceptionÁÁ≠ Ω
,ÁÁΩ æ
WindowÁÁø ≈
.ÁÁ≈ ∆
	GetWindowÁÁ∆ œ
(ÁÁœ –
thisÁÁ– ‘
)ÁÁ‘ ’
,ÁÁ’ ÷#
DialogWindowManagerÁÁ◊ Í
.ÁÁÍ Î
ERRORÁÁÎ 
)ÁÁ Ò
;ÁÁÒ Ú
}
ËË 
catch
ÈÈ 
(
ÈÈ $
CommunicationException
ÈÈ )
ex
ÈÈ* ,
)
ÈÈ, -
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
ÎÎ] ^!
DialogWindowManager
ÏÏ #
.
ÏÏ# $#
ShowInfoOrErrorWindow
ÏÏ$ 9
(
ÏÏ9 :

Properties
ÏÏ: D
.
ÏÏD E
	Resources
ÏÏE N
.
ÏÏN O
txbErrorTitle
ÏÏO \
,
ÏÏ\ ]

Properties
ÏÏ^ h
.
ÏÏh i
	Resources
ÏÏi r
.
ÏÏr s)
lblFailToNotifyYourFriendsÏÏs ç
+ÏÏé è
$strÏÏê ï
+ÏÏñ ó

PropertiesÏÏò ¢
.ÏÏ¢ £
	ResourcesÏÏ£ ¨
.ÏÏ¨ ≠#
lblWithoutConectionÏÏ≠ ¿
,ÏÏ¿ ¡
WindowÏÏ¬ »
.ÏÏ» …
	GetWindowÏÏ… “
(ÏÏ“ ”
thisÏÏ” ◊
)ÏÏ◊ ÿ
,ÏÏÿ Ÿ#
DialogWindowManagerÏÏ⁄ Ì
.ÏÏÌ Ó
ERRORÏÏÓ Û
)ÏÏÛ Ù
;ÏÏÙ ı
}
ÌÌ 
}
ÓÓ 	
public
 
void
 +
CloseSubFrameOfChatAndFriends
 1
(
1 2
)
2 3
{
ÒÒ 	%
frmActiveFriendsAndChat
ÚÚ #
.
ÚÚ# $
Content
ÚÚ$ +
=
ÚÚ, -
null
ÚÚ. 2
;
ÚÚ2 3
grdActiveUser
ÛÛ 
.
ÛÛ 

Visibility
ÛÛ $
=
ÛÛ% &

Visibility
ÛÛ' 1
.
ÛÛ1 2
Hidden
ÛÛ2 8
;
ÛÛ8 9
}
ÙÙ 	
public
ıı 
void
ıı *
ResponseOfPlayerAvailability
ıı 0
(
ıı0 1
int
ıı1 4
status
ıı5 ;
,
ıı; <
int
ıı= @
idFriend
ııA I
)
ııI J
{
ˆˆ 	
(
˜˜ 
(
˜˜ -
INotifyUserAvailabilityCallback
˜˜ -
)
˜˜- .!
activeUsersInstance
˜˜. A
)
˜˜A B
.
˜˜B C*
ResponseOfPlayerAvailability
˜˜C _
(
˜˜_ `
status
˜˜` f
,
˜˜f g
idFriend
˜˜h p
)
˜˜p q
;
˜˜q r
}
¯¯ 	
public
˚˚ 
void
˚˚ %
NotifyQuestionsAreReady
˚˚ +
(
˚˚+ ,
int
˚˚, /
	codeEvent
˚˚0 9
)
˚˚9 :
{
¸¸ 	
if
˝˝ 
(
˝˝ 
	codeEvent
˝˝ 
==
˝˝ !
ExceptionDictionary
˝˝ 0
.
˝˝0 1
SUCCESFULL_EVENT
˝˝1 A
)
˝˝A B
{
˛˛ 
bttStartGame
ˇˇ 
.
ˇˇ 
	IsEnabled
ˇˇ &
=
ˇˇ' (
true
ˇˇ) -
;
ˇˇ- .
}
ÄÄ 
else
ÅÅ 
{
ÇÇ !
DialogWindowManager
ÉÉ #
.
ÉÉ# $#
ShowInfoOrErrorWindow
ÉÉ$ 9
(
ÉÉ9 :

Properties
ÉÉ: D
.
ÉÉD E
	Resources
ÉÉE N
.
ÉÉN O
txbErrorTitle
ÉÉO \
,
ÉÉ\ ]

Properties
ÉÉ^ h
.
ÉÉh i
	Resources
ÉÉi r
.
ÉÉr s

lblNotGame
ÉÉs }
,
ÉÉ} ~
WindowÉÉ Ö
.ÉÉÖ Ü
	GetWindowÉÉÜ è
(ÉÉè ê
thisÉÉê î
)ÉÉî ï
,ÉÉï ñ#
DialogWindowManagerÉÉó ™
.ÉÉ™ ´
ERRORÉÉ´ ∞
)ÉÉ∞ ±
;ÉÉ± ≤
}
ÑÑ 
}
ÖÖ 	
private
àà 
void
àà 
ClickStartGame
àà #
(
àà# $
object
àà$ *
sender
àà+ 1
,
àà1 2
RoutedEventArgs
àà3 B
e
ààC D
)
ààD E
{
ââ 	
if
ää 
(
ää 
(
ää 
bool
ää 
)
ää 
	chbTeamUp
ää 
.
ää  
	IsChecked
ää  )
)
ää) *
{
ãã 
if
åå 
(
åå "
currentPlayerInLobby
åå (
.
åå( )
Where
åå) .
(
åå. /
pl
åå/ 1
=>
åå2 4
pl
åå5 7
.
åå7 8

SideOfTeam
åå8 B
==
ååC E
TEAM_LEFT_SIDE
ååF T
)
ååT U
.
ååU V
ToList
ååV \
(
åå\ ]
)
åå] ^
.
åå^ _
Count
åå_ d
==
ååe g"
currentPlayerInLobby
ååh |
.
åå| }
Whereåå} Ç
(ååÇ É
plååÉ Ö
=>ååÜ à
plååâ ã
.ååã å

SideOfTeamååå ñ
==ååó ô
TEMA_RIGHT_SIDEååö ©
)åå© ™
.åå™ ´
ToListåå´ ±
(åå± ≤
)åå≤ ≥
.åå≥ ¥
Countåå¥ π
)ååπ ∫
{
çç #
CallMethodToStartGame
éé )
(
éé) *
)
éé* +
;
éé+ ,
}
èè 
else
êê 
{
ëë !
DialogWindowManager
íí '
.
íí' (#
ShowInfoOrErrorWindow
íí( =
(
íí= >

Properties
íí> H
.
ííH I
	Resources
ííI R
.
ííR S
txbErrorTitle
ííS `
,
íí` a

Properties
ííb l
.
ííl m
	Resources
íím v
.
íív w
_2PlayerByTeamííw Ö
,ííÖ Ü
Windowííá ç
.ííç é
	GetWindowííé ó
(ííó ò
thisííò ú
)ííú ù
,ííù û#
DialogWindowManagerííü ≤
.íí≤ ≥
ERRORíí≥ ∏
)íí∏ π
;ííπ ∫
}
ìì 
}
îî 
else
ïï 
if
ïï 
(
ïï "
currentPlayerInLobby
ïï )
.
ïï) *
Count
ïï* /
>
ïï0 1
$num
ïï2 3
)
ïï3 4
{
ññ #
CallMethodToStartGame
óó %
(
óó% &
)
óó& '
;
óó' (
}
òò 
else
ôô 
{
öö !
DialogWindowManager
õõ #
.
õõ# $#
ShowInfoOrErrorWindow
õõ$ 9
(
õõ9 :

Properties
õõ: D
.
õõD E
	Resources
õõE N
.
õõN O
txbErrorTitle
õõO \
,
õõ\ ]

Properties
õõ^ h
.
õõh i
	Resources
õõi r
.
õõr s
MoreThan1Playerõõs Ç
,õõÇ É
WindowõõÑ ä
.õõä ã
	GetWindowõõã î
(õõî ï
thisõõï ô
)õõô ö
,õõö õ#
DialogWindowManagerõõú Ø
.õõØ ∞
ERRORõõ∞ µ
)õõµ ∂
;õõ∂ ∑
}
úú 
}
ùù 	
private
üü 
void
üü #
CallMethodToStartGame
üü *
(
üü* +
)
üü+ ,
{
†† 	
try
°° 
{
¢¢ )
LobbyActionsOperationClient
££ +
lobbyActionsProxy
££, =
=
££> ?
new
££@ C
(
££C D
)
££D E
;
££E F
lobbyActionsProxy
§§ !
.
§§! "
	StartGame
§§" +
(
§§+ ,
roomCode
§§, 4
)
§§4 5
;
§§5 6
}
•• 
catch
¶¶ 
(
¶¶ '
EndpointNotFoundException
¶¶ ,
ex
¶¶- /
)
¶¶/ 0
{
ßß 
HandleException
®® 
(
®®  
ex
®®  "
,
®®" #

Properties
®®$ .
.
®®. /
	Resources
®®/ 8
.
®®8 9 
lblFailToStartGame
®®9 K
+
®®L M
$str
®®N S
+
®®T U

Properties
®®V `
.
®®` a
	Resources
®®a j
.
®®j k!
lblEndPointNotFound
®®k ~
)
®®~ 
;®® Ä
}
©© 
catch
™™ 
(
™™ 1
#CommunicationObjectFaultedException
™™ 6
ex
™™7 9
)
™™9 :
{
´´ 
HandleException
¨¨ 
(
¨¨  
ex
¨¨  "
,
¨¨" #

Properties
¨¨$ .
.
¨¨. /
	Resources
¨¨/ 8
.
¨¨8 9 
lblFailToStartGame
¨¨9 K
+
¨¨L M
$str
¨¨N S
+
¨¨T U

Properties
¨¨V `
.
¨¨` a
	Resources
¨¨a j
.
¨¨j k'
lblComunicationException¨¨k É
)¨¨É Ñ
;¨¨Ñ Ö
}
≠≠ 
catch
ÆÆ 
(
ÆÆ 
TimeoutException
ÆÆ #
ex
ÆÆ$ &
)
ÆÆ& '
{
ØØ 
HandleException
∞∞ 
(
∞∞  
ex
∞∞  "
,
∞∞" #

Properties
∞∞$ .
.
∞∞. /
	Resources
∞∞/ 8
.
∞∞8 9 
lblFailToStartGame
∞∞9 K
+
∞∞L M
$str
∞∞N S
+
∞∞T U

Properties
∞∞V `
.
∞∞` a
	Resources
∞∞a j
.
∞∞j k
lblTimeException
∞∞k {
)
∞∞{ |
;
∞∞| }
}
±± 
catch
≤≤ 
(
≤≤ $
CommunicationException
≤≤ )
ex
≤≤* ,
)
≤≤, -
{
≥≥ 
HandleException
¥¥ 
(
¥¥  
ex
¥¥  "
,
¥¥" #

Properties
¥¥$ .
.
¥¥. /
	Resources
¥¥/ 8
.
¥¥8 9 
lblFailToStartGame
¥¥9 K
+
¥¥L M
$str
¥¥N S
+
¥¥T U

Properties
¥¥V `
.
¥¥` a
	Resources
¥¥a j
.
¥¥j k!
lblWithoutConection
¥¥k ~
)
¥¥~ 
;¥¥ Ä
}
µµ 
}
∂∂ 	
public
∏∏ 
void
∏∏ !
NotifyGameWillStart
∏∏ '
(
∏∏' (%
QuestionCardInformation
∏∏( ?
[
∏∏? @
]
∏∏@ A
questionsForGame
∏∏B R
)
∏∏R S
{
ππ 	
	GameBoard
∫∫ 
game
∫∫ 
=
∫∫ 
new
∫∫  
	GameBoard
∫∫! *
(
∫∫* +
questionsForGame
∫∫+ ;
.
∫∫; <
ToList
∫∫< B
(
∫∫B C
)
∫∫C D
,
∫∫D E
roomCode
∫∫F N
)
∫∫N O
;
∫∫O P
this
ªª 
.
ªª 
NavigationService
ªª "
.
ªª" #
Navigate
ªª# +
(
ªª+ ,
game
ªª, 0
)
ªª0 1
;
ªª1 2
NavigationService
ºº 
.
ºº 
RemoveBackEntry
ºº -
(
ºº- .
)
ºº. /
;
ºº/ 0
}
ΩΩ 	
public
øø 
static
øø 
class
øø 
GameCodeContainer
øø -
{
¿¿ 	
public
¡¡ 
static
¡¡ 
int
¡¡ 
RoomCode
¡¡ &
{
¡¡' (
get
¡¡) ,
;
¡¡, -
set
¡¡. 1
;
¡¡1 2
}
¡¡3 4
}
¬¬ 	
private
√√ 
void
√√ 
HandleException
√√ $
(
√√$ %
	Exception
√√% .
ex
√√/ 1
,
√√1 2
string
√√3 9
errorMessage
√√: F
)
√√F G
{
ƒƒ 	%
ExceptionHandlerForLogs
≈≈ #
.
≈≈# $
LogException
≈≈$ 0
(
≈≈0 1
ex
≈≈1 3
,
≈≈3 4!
ExceptionDictionary
≈≈5 H
.
≈≈H I
FATAL_EXCEPTION
≈≈I X
)
≈≈X Y
;
≈≈Y Z!
DialogWindowManager
∆∆ 
.
∆∆  #
ShowInfoOrErrorWindow
∆∆  5
(
∆∆5 6

Properties
∆∆6 @
.
∆∆@ A
	Resources
∆∆A J
.
∆∆J K
txbErrorTitle
∆∆K X
,
∆∆X Y
errorMessage
∆∆Z f
,
∆∆f g
Application
∆∆h s
.
∆∆s t
Current
∆∆t {
.
∆∆{ |

MainWindow∆∆| Ü
,∆∆Ü á#
DialogWindowManager∆∆à õ
.∆∆õ ú
ERROR∆∆ú °
)∆∆° ¢
;∆∆¢ £
ReturnToLogin
«« 
(
«« 
)
«« 
;
«« 
}
»» 	
private
   
void
   
ReturnToLogin
   "
(
  " #
)
  # $
{
ÀÀ 	
UserSingleton
ÃÃ 
.
ÃÃ 
CleanSingleton
ÃÃ (
(
ÃÃ( )
)
ÃÃ) *
;
ÃÃ* +
	LogInUser
ÕÕ 
logInUserPage
ÕÕ #
=
ÕÕ$ %
new
ÕÕ& )
	LogInUser
ÕÕ* 3
(
ÕÕ3 4
)
ÕÕ4 5
;
ÕÕ5 6
this
ŒŒ 
.
ŒŒ 
NavigationService
ŒŒ "
.
ŒŒ" #
Navigate
ŒŒ# +
(
ŒŒ+ ,
logInUserPage
ŒŒ, 9
)
ŒŒ9 :
;
ŒŒ: ;
NavigationService
œœ 
.
œœ 
RemoveBackEntry
œœ -
(
œœ- .
)
œœ. /
;
œœ/ 0
}
—— 	
}
”” 
}‘‘ äë
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
;$$+ ,
public&& 
	LogInUser&& 
(&& 
)&& 
{'' 	
InitializeComponent(( 
(((  
)((  !
;((! "
txbUserNameLogIn)) 
.)) 
	MaxLength)) &
=))' (
$num))) +
;))+ ,
pssPasswordLogIn** 
.** 
	MaxLength** &
=**' (
$num**) +
;**+ ,
}++ 	
private-- 
void-- 
ClickDoLogIn-- !
(--! "
object--" (
sender--) /
,--/ 0
RoutedEventArgs--1 @
e--A B
)--B C
{.. 	
if// 
(// 
CheckEmptyFields//  
(//  !
)//! "
)//" #
{00 
UserValidate11 
userValidate11 )
=11* +
new11, /
UserValidate110 <
(11< =
)11= >
;11> ?
userValidate22 
.22 
UserName22 %
=22& '
txbUserNameLogIn22( 8
.228 9
Text229 =
.22= >
Trim22> B
(22B C
)22C D
;22D E
userValidate33 
.33 
Password33 %
=33& '
EncryptionClass33( 7
.337 8
EncryptPassword338 G
(33G H
pssPasswordLogIn33H X
.33X Y
Password33Y a
.33a b
Trim33b f
(33f g
)33g h
)33h i
;33i j
try44 
{55 #
LogInVerificationClient66 +"
logInVerificationProxy66, B
=66C D
new66E H#
LogInVerificationClient66I `
(66` a
)66a b
;66b c
var77 
result77 
=77  "
logInVerificationProxy77! 7
.777 8
ValidateCredentials778 K
(77K L
userValidate77L X
)77X Y
;77Y Z
if88 
(88 
result88 
.88 
	CodeEvent88 (
==88) +
ExceptionDictionary88, ?
.88? @
SUCCESFULL_EVENT88@ P
||88Q S
result88T Z
.88Z [
	CodeEvent88[ d
==88e g
ExceptionDictionary88h {
.88{ |
UNSUCCESFULL_EVENT	88| é
)
88é è
{99 
if;; 
(;; 
result;; "
.;;" #
ObjectSaved;;# .
==;;/ 1
RIGTH_CREDENTIALS;;2 C
);;C D
{<< 
ValidateOnlyOneUser== /
(==/ 0
userValidate==0 <
)==< =
;=== >
}>> 
else?? 
if?? 
(??  !
result??! '
.??' (
ObjectSaved??( 3
==??4 6
WRONG_CREDENTIALS??7 H
)??H I
{@@ 
DialogWindowManagerAA /
.AA/ 0!
ShowInfoOrErrorWindowAA0 E
(AAE F

PropertiesAAF P
.AAP Q
	ResourcesAAQ Z
.AAZ [
txbErrorTitleAA[ h
,AAh i

PropertiesAAj t
.AAt u
	ResourcesAAu ~
.AA~ "
lblinvalidCredentials	AA î
,
AAî ï
Application
AAñ °
.
AA° ¢
Current
AA¢ ©
.
AA© ™

MainWindow
AA™ ¥
,
AA¥ µ!
DialogWindowManager
AA∂ …
.
AA…  
ERROR
AA  œ
)
AAœ –
;
AA– —
}BB 
elseCC 
{DD 
DialogWindowManagerEE /
.EE/ 0!
ShowInfoOrErrorWindowEE0 E
(EEE F

PropertiesEEF P
.EEP Q
	ResourcesEEQ Z
.EEZ [
txbErrorTitleEE[ h
,EEh i

PropertiesEEj t
.EEt u
	ResourcesEEu ~
.EE~ %
lblComunicationException	EE ó
,
EEó ò
Application
EEô §
.
EE§ •
Current
EE• ¨
.
EE¨ ≠

MainWindow
EE≠ ∑
,
EE∑ ∏!
DialogWindowManager
EEπ Ã
.
EEÃ Õ
ERROR
EEÕ “
)
EE“ ”
;
EE” ‘
}FF 
}GG 
elseHH 
{II 
DialogWindowManagerJJ +
.JJ+ ,!
ShowInfoOrErrorWindowJJ, A
(JJA B

PropertiesJJB L
.JJL M
	ResourcesJJM V
.JJV W
txbErrorTitleJJW d
,JJd e

PropertiesJJf p
.JJp q
	ResourcesJJq z
.JJz { 
MessageSQLException	JJ{ é
,
JJé è
Application
JJê õ
.
JJõ ú
Current
JJú £
.
JJ£ §

MainWindow
JJ§ Æ
,
JJÆ Ø!
DialogWindowManager
JJ∞ √
.
JJ√ ƒ
ERROR
JJƒ …
)
JJ…  
;
JJ  À
}KK 
}LL 
catchMM 
(MM %
EndpointNotFoundExceptionMM 0
exMM1 3
)MM3 4
{NN 
HandleExceptionOO #
(OO# $
exOO$ &
,OO& '

PropertiesOO( 2
.OO2 3
	ResourcesOO3 <
.OO< =
lblEndPointNotFoundOO= P
)OOP Q
;OOQ R
}PP 
catchQQ 
(QQ /
#CommunicationObjectFaultedExceptionQQ :
exQQ; =
)QQ= >
{RR 
HandleExceptionSS #
(SS# $
exSS$ &
,SS& '

PropertiesSS( 2
.SS2 3
	ResourcesSS3 <
.SS< =$
lblComunicationExceptionSS= U
)SSU V
;SSV W
}TT 
catchUU 
(UU 
TimeoutExceptionUU '
exUU( *
)UU* +
{VV 
HandleExceptionWW #
(WW# $
exWW$ &
,WW& '

PropertiesWW( 2
.WW2 3
	ResourcesWW3 <
.WW< =
lblTimeExceptionWW= M
)WWM N
;WWN O
}XX 
catchYY 
(YY "
CommunicationExceptionYY -
exYY. 0
)YY0 1
{ZZ 
HandleException[[ #
([[# $
ex[[$ &
,[[& '

Properties[[( 2
.[[2 3
	Resources[[3 <
.[[< =
lblWithoutConection[[= P
)[[P Q
;[[Q R
}\\ 
catch]] 
(]] 
SocketException]] &
ex]]' )
)]]) *
{^^ 
HandleException__ #
(__# $
ex__$ &
,__& '

Properties__( 2
.__2 3
	Resources__3 <
.__< =
lblEndPointNotFound__= P
)__P Q
;__Q R
}`` 
}aa 
}bb 	
privatedd 
voiddd 
ValidateOnlyOneUserdd (
(dd( )
UserValidatedd) 5
userValidatedd6 B
)ddB C
{ee 	
tryff 
{gg #
LogInVerificationClienthh '"
logInVerificationProxyhh( >
=hh? @
newhhA D#
LogInVerificationClienthhE \
(hh\ ]
)hh] ^
;hh^ _(
ConsultUserInformationClientii ,#
consultInformationProxyii- D
=iiE F
newiiG J(
ConsultUserInformationClientiiK g
(iig h
)iih i
;iii j
varjj 
userConsultedjj !
=jj" ##
consultInformationProxyjj$ ;
.jj; <!
ConsultUserByUserNamejj< Q
(jjQ R
userValidatejjR ^
.jj^ _
UserNamejj_ g
)jjg h
;jjh i
varkk 
isAlreadyConnectedkk &
=kk' ("
logInVerificationProxykk) ?
.kk? @0
$ValidateThereIsOnlyOneAActiveAccountkk@ d
(kkd e
userConsultedkke r
.kkr s
ObjectSavedkks ~
.kk~ 
UserName	kk á
)
kká à
;
kkà â"
logInVerificationProxyll &
.ll& '
Closell' ,
(ll, -
)ll- .
;ll. /
ifmm 
(mm 
isAlreadyConnectedmm &
==mm' )
ExceptionDictionarymm* =
.mm= >
SUCCESFULL_EVENTmm> N
)mmN O
{nn 
DoLoginoo 
(oo 
userValidateoo (
.oo( )
UserNameoo) 1
)oo1 2
;oo2 3
}pp 
elseqq 
ifqq 
(qq 
isAlreadyConnectedqq +
!=qq, .
ExceptionDictionaryqq/ B
.qqB C
SUCCESFULL_EVENTqqC S
)qqS T
{rr 
DialogWindowManagerss '
.ss' (!
ShowInfoOrErrorWindowss( =
(ss= >

Propertiesss> H
.ssH I
	ResourcesssI R
.ssR S
txbErrorTitlessS `
,ss` a

Propertiesssb l
.ssl m
	Resourcesssm v
.ssv w
lblLogInExist	ssw Ñ
,
ssÑ Ö
Application
ssÜ ë
.
ssë í
Current
ssí ô
.
ssô ö

MainWindow
ssö §
,
ss§ •!
DialogWindowManager
ss¶ π
.
ssπ ∫
ERROR
ss∫ ø
)
ssø ¿
;
ss¿ ¡
}tt 
}uu 
catchvv 
(vv %
EndpointNotFoundExceptionvv ,
exvv- /
)vv/ 0
{ww 
HandleExceptionxx 
(xx  
exxx  "
,xx" #

Propertiesxx$ .
.xx. /
	Resourcesxx/ 8
.xx8 9
lblEndPointNotFoundxx9 L
)xxL M
;xxM N
}yy 
catchzz 
(zz /
#CommunicationObjectFaultedExceptionzz 6
exzz7 9
)zz9 :
{{{ 
HandleException|| 
(||  
ex||  "
,||" #

Properties||$ .
.||. /
	Resources||/ 8
.||8 9$
lblComunicationException||9 Q
)||Q R
;||R S
}}} 
catch~~ 
(~~ 
TimeoutException~~ #
ex~~$ &
)~~& '
{ 
HandleException
ÄÄ 
(
ÄÄ  
ex
ÄÄ  "
,
ÄÄ" #

Properties
ÄÄ$ .
.
ÄÄ. /
	Resources
ÄÄ/ 8
.
ÄÄ8 9
lblTimeException
ÄÄ9 I
)
ÄÄI J
;
ÄÄJ K
}
ÅÅ 
catch
ÇÇ 
(
ÇÇ $
CommunicationException
ÇÇ )
ex
ÇÇ* ,
)
ÇÇ, -
{
ÉÉ 
HandleException
ÑÑ 
(
ÑÑ  
ex
ÑÑ  "
,
ÑÑ" #

Properties
ÑÑ$ .
.
ÑÑ. /
	Resources
ÑÑ/ 8
.
ÑÑ8 9!
lblWithoutConection
ÑÑ9 L
)
ÑÑL M
;
ÑÑM N
}
ÖÖ 
catch
ÜÜ 
(
ÜÜ 
SocketException
ÜÜ "
ex
ÜÜ# %
)
ÜÜ% &
{
áá 
HandleException
àà 
(
àà  
ex
àà  "
,
àà" #

Properties
àà$ .
.
àà. /
	Resources
àà/ 8
.
àà8 9!
lblEndPointNotFound
àà9 L
)
ààL M
;
ààM N
}
ââ 
}
ää 	
private
åå 
bool
åå 
CheckEmptyFields
åå %
(
åå% &
)
åå& '
{
çç 	
bool
éé 
answer
éé 
=
éé 
true
éé 
;
éé 
if
èè 
(
èè 
string
èè 
.
èè 
IsNullOrEmpty
èè $
(
èè$ %
txbUserNameLogIn
èè% 5
.
èè5 6
Text
èè6 :
)
èè: ;
)
èè; <
{
êê 
LblWrongUserName
ëë  
.
ëë  !
Content
ëë! (
=
ëë) *

Properties
ëë+ 5
.
ëë5 6
	Resources
ëë6 ?
.
ëë? @
LblWrongUserName
ëë@ P
;
ëëP Q
LblWrongUserName
íí  
.
íí  !

Visibility
íí! +
=
íí, -

Visibility
íí. 8
.
íí8 9
Visible
íí9 @
;
íí@ A
answer
ìì 
=
ìì 
false
ìì 
;
ìì 
}
îî 
else
ïï 
{
ññ 
LblWrongUserName
óó  
.
óó  !

Visibility
óó! +
=
óó, -

Visibility
óó. 8
.
óó8 9
	Collapsed
óó9 B
;
óóB C
}
òò 
if
öö 
(
öö 
string
öö 
.
öö 
IsNullOrEmpty
öö $
(
öö$ %
pssPasswordLogIn
öö% 5
.
öö5 6
Password
öö6 >
)
öö> ?
)
öö? @
{
õõ 
lblPasswordWrong
úú  
.
úú  !
Content
úú! (
=
úú) *

Properties
úú+ 5
.
úú5 6
	Resources
úú6 ?
.
úú? @
lblPasswordWrong
úú@ P
;
úúP Q
lblPasswordWrong
ùù  
.
ùù  !

Visibility
ùù! +
=
ùù, -

Visibility
ùù. 8
.
ùù8 9
Visible
ùù9 @
;
ùù@ A
answer
ûû 
=
ûû 
false
ûû 
;
ûû 
}
üü 
else
†† 
{
°° 
lblPasswordWrong
¢¢  
.
¢¢  !

Visibility
¢¢! +
=
¢¢, -

Visibility
¢¢. 8
.
¢¢8 9
	Collapsed
¢¢9 B
;
¢¢B C
}
££ 
return
§§ 
answer
§§ 
;
§§ 
}
•• 	
private
ßß 
void
ßß 
DoLogin
ßß 
(
ßß 
String
ßß #
userName
ßß$ ,
)
ßß, -
{
®® 	
try
©© 
{
™™ *
ConsultUserInformationClient
´´ ,%
consultInformationProxy
´´- D
=
´´E F
new
´´G J*
ConsultUserInformationClient
´´K g
(
´´g h
)
´´h i
;
´´i j
var
¨¨ 
currentUser
¨¨ 
=
¨¨  !%
consultInformationProxy
¨¨" 9
.
¨¨9 :#
ConsultUserByUserName
¨¨: O
(
¨¨O P
userName
¨¨P X
)
¨¨X Y
;
¨¨Y Z
if
≠≠ 
(
≠≠ 
currentUser
≠≠ 
.
≠≠  
	CodeEvent
≠≠  )
==
≠≠* ,!
ExceptionDictionary
≠≠- @
.
≠≠@ A
SUCCESFULL_EVENT
≠≠A Q
)
≠≠Q R
{
ÆÆ 
var
ØØ 
currentPlayer
ØØ %
=
ØØ& '%
consultInformationProxy
ØØ( ?
.
ØØ? @#
ConsultPlayerByIdUser
ØØ@ U
(
ØØU V
currentUser
ØØV a
.
ØØa b
ObjectSaved
ØØb m
.
ØØm n
IdUser
ØØn t
)
ØØt u
;
ØØu v
if
∞∞ 
(
∞∞ 
currentPlayer
∞∞ %
.
∞∞% &
	CodeEvent
∞∞& /
==
∞∞0 2!
ExceptionDictionary
∞∞3 F
.
∞∞F G
SUCCESFULL_EVENT
∞∞G W
)
∞∞W X
{
±± 
if
≥≥ 
(
≥≥ 
currentPlayer
≥≥ )
.
≥≥) *
ObjectSaved
≥≥* 5
.
≥≥5 6
	NoReports
≥≥6 ?
>=
≥≥@ B
$num
≥≥C D
)
≥≥D E
{
¥¥ !
DialogWindowManager
µµ /
.
µµ/ 0#
ShowInfoOrErrorWindow
µµ0 E
(
µµE F

Properties
µµF P
.
µµP Q
	Resources
µµQ Z
.
µµZ [
txbErrorTitle
µµ[ h
,
µµh i

Properties
µµj t
.
µµt u
	Resources
µµu ~
.
µµ~ 
lblUserBannerµµ å
,µµå ç
Applicationµµé ô
.µµô ö
Currentµµö °
.µµ° ¢

MainWindowµµ¢ ¨
,µµ¨ ≠#
DialogWindowManagerµµÆ ¡
.µµ¡ ¬
ERRORµµ¬ «
)µµ« »
;µµ» …
UserSingleton
∂∂ )
.
∂∂) *
CleanSingleton
∂∂* 8
(
∂∂8 9
)
∂∂9 :
;
∂∂: ;
}
∑∑ 
else
∏∏ 
if
∏∏ 
(
∏∏  !&
SubscribeToLivingChannel
∏∏! 9
(
∏∏9 :
currentUser
∏∏: E
.
∏∏E F
ObjectSaved
∏∏F Q
)
∏∏Q R
==
∏∏S U!
ExceptionDictionary
∏∏V i
.
∏∏i j
SUCCESFULL_EVENT
∏∏j z
)
∏∏z {
{
ππ 
InstanceSingleton
∫∫ -
(
∫∫- .
currentUser
∫∫. 9
.
∫∫9 :
ObjectSaved
∫∫: E
,
∫∫E F
currentPlayer
∫∫G T
.
∫∫T U
ObjectSaved
∫∫U `
)
∫∫` a
;
∫∫a b
GoToMainMenu
ªª (
(
ªª( )
)
ªª) *
;
ªª* +
}
ºº 
else
ΩΩ 
{
ææ !
DialogWindowManager
øø /
.
øø/ 0#
ShowInfoOrErrorWindow
øø0 E
(
øøE F

Properties
øøF P
.
øøP Q
	Resources
øøQ Z
.
øøZ [
txbErrorTitle
øø[ h
,
øøh i

Properties
øøj t
.
øøt u
	Resources
øøu ~
.
øø~ (
lblFailRegistryToCallBackøø ò
,øøò ô
Applicationøøö •
.øø• ¶
Currentøø¶ ≠
.øø≠ Æ

MainWindowøøÆ ∏
,øø∏ π#
DialogWindowManagerøø∫ Õ
.øøÕ Œ
ERRORøøŒ ”
)øø” ‘
;øø‘ ’
UserSingleton
¿¿ )
.
¿¿) *
CleanSingleton
¿¿* 8
(
¿¿8 9
)
¿¿9 :
;
¿¿: ;
}
¡¡ 
}
¬¬ 
else
√√ 
{
ƒƒ !
DialogWindowManager
≈≈ +
.
≈≈+ ,#
ShowInfoOrErrorWindow
≈≈, A
(
≈≈A B

Properties
≈≈B L
.
≈≈L M
	Resources
≈≈M V
.
≈≈V W
txbErrorTitle
≈≈W d
,
≈≈d e

Properties
≈≈f p
.
≈≈p q
	Resources
≈≈q z
.
≈≈z {"
MessageSQLException≈≈{ é
,≈≈é è
Application≈≈ê õ
.≈≈õ ú
Current≈≈ú £
.≈≈£ §

MainWindow≈≈§ Æ
,≈≈Æ Ø#
DialogWindowManager≈≈∞ √
.≈≈√ ƒ
ERROR≈≈ƒ …
)≈≈…  
;≈≈  À
}
∆∆ 
}
«« 
else
»» 
{
…… !
DialogWindowManager
   '
.
  ' (#
ShowInfoOrErrorWindow
  ( =
(
  = >

Properties
  > H
.
  H I
	Resources
  I R
.
  R S
txbErrorTitle
  S `
,
  ` a

Properties
  b l
.
  l m
	Resources
  m v
.
  v w"
MessageSQLException  w ä
,  ä ã
Application  å ó
.  ó ò
Current  ò ü
.  ü †

MainWindow  † ™
,  ™ ´#
DialogWindowManager  ¨ ø
.  ø ¿
ERROR  ¿ ≈
)  ≈ ∆
;  ∆ «
}
ÀÀ 
}
ÃÃ 
catch
ÕÕ 
(
ÕÕ '
EndpointNotFoundException
ÕÕ ,
ex
ÕÕ- /
)
ÕÕ/ 0
{
ŒŒ %
ExceptionHandlerForLogs
œœ '
.
œœ' (
LogException
œœ( 4
(
œœ4 5
ex
œœ5 7
,
œœ7 8!
ExceptionDictionary
œœ8 K
.
œœK L
ERROR
œœL Q
)
œœQ R
;
œœR S
throw
–– 
new
–– '
EndpointNotFoundException
–– 3
(
––3 4
)
––4 5
;
––5 6
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
”” %
ExceptionHandlerForLogs
‘‘ '
.
‘‘' (
LogException
‘‘( 4
(
‘‘4 5
ex
‘‘5 7
,
‘‘7 8!
ExceptionDictionary
‘‘9 L
.
‘‘L M
ERROR
‘‘M R
)
‘‘R S
;
‘‘S T
throw
’’ 
new
’’ 1
#CommunicationObjectFaultedException
’’ =
(
’’= >
)
’’> ?
;
’’? @
}
÷÷ 
catch
◊◊ 
(
◊◊ 
TimeoutException
◊◊ #
ex
◊◊$ &
)
◊◊& '
{
ÿÿ %
ExceptionHandlerForLogs
ŸŸ '
.
ŸŸ' (
LogException
ŸŸ( 4
(
ŸŸ4 5
ex
ŸŸ5 7
,
ŸŸ7 8!
ExceptionDictionary
ŸŸ9 L
.
ŸŸL M
ERROR
ŸŸM R
)
ŸŸR S
;
ŸŸS T
throw
⁄⁄ 
new
⁄⁄ 
TimeoutException
⁄⁄ *
(
⁄⁄* +
)
⁄⁄+ ,
;
⁄⁄, -
}
€€ 
catch
‹‹ 
(
‹‹ $
CommunicationException
‹‹ )
ex
‹‹* ,
)
‹‹, -
{
›› %
ExceptionHandlerForLogs
ﬁﬁ '
.
ﬁﬁ' (
LogException
ﬁﬁ( 4
(
ﬁﬁ4 5
ex
ﬁﬁ5 7
,
ﬁﬁ7 8!
ExceptionDictionary
ﬁﬁ9 L
.
ﬁﬁL M
ERROR
ﬁﬁM R
)
ﬁﬁR S
;
ﬁﬁS T
throw
ﬂﬂ 
new
ﬂﬂ $
CommunicationException
ﬂﬂ 0
(
ﬂﬂ0 1
)
ﬂﬂ1 2
;
ﬂﬂ2 3
}
‡‡ 
catch
·· 
(
·· 
SocketException
·· "
ex
··# %
)
··% &
{
‚‚ %
ExceptionHandlerForLogs
„„ '
.
„„' (
LogException
„„( 4
(
„„4 5
ex
„„5 7
,
„„7 8!
ExceptionDictionary
„„9 L
.
„„L M
ERROR
„„M R
)
„„R S
;
„„S T
throw
‰‰ 
new
‰‰ 
SocketException
‰‰ )
(
‰‰) *
)
‰‰* +
;
‰‰+ ,
}
ÂÂ 
}
ÊÊ 	
private
ËË 
int
ËË &
SubscribeToLivingChannel
ËË ,
(
ËË, -
UserPojo
ËË- 5
user
ËË6 :
)
ËË: ;
{
ÈÈ 	
try
ÍÍ 
{
ÎÎ 
InstanceContext
ÏÏ 
context
ÏÏ  '
=
ÏÏ( )
new
ÏÏ* -
(
ÏÏ- .
this
ÏÏ. 2
)
ÏÏ2 3
;
ÏÏ3 4#
CheckUserLivingClient
ÌÌ %#
checkUserLivingClient
ÌÌ& ;
=
ÌÌ< =
new
ÌÌ> A
(
ÌÌA B
context
ÌÌB I
)
ÌÌI J
;
ÌÌJ K
return
ÓÓ #
checkUserLivingClient
ÓÓ ,
.
ÓÓ, -)
SubscribeToICheckUserLiving
ÓÓ- H
(
ÓÓH I
user
ÓÓI M
)
ÓÓM N
;
ÓÓN O
}
ÔÔ 
catch
 
(
 '
EndpointNotFoundException
 ,
ex
- /
)
/ 0
{
ÒÒ %
ExceptionHandlerForLogs
ÚÚ '
.
ÚÚ' (
LogException
ÚÚ( 4
(
ÚÚ4 5
ex
ÚÚ5 7
,
ÚÚ7 8!
ExceptionDictionary
ÚÚ9 L
.
ÚÚL M
ERROR
ÚÚM R
)
ÚÚR S
;
ÚÚS T
throw
ÛÛ 
new
ÛÛ '
EndpointNotFoundException
ÛÛ 3
(
ÛÛ3 4
)
ÛÛ4 5
;
ÛÛ5 6
}
ÙÙ 
catch
ıı 
(
ıı 1
#CommunicationObjectFaultedException
ıı 6
ex
ıı7 9
)
ıı9 :
{
ˆˆ %
ExceptionHandlerForLogs
˜˜ '
.
˜˜' (
LogException
˜˜( 4
(
˜˜4 5
ex
˜˜5 7
,
˜˜7 8!
ExceptionDictionary
˜˜9 L
.
˜˜L M
ERROR
˜˜M R
)
˜˜R S
;
˜˜S T
throw
¯¯ 
new
¯¯ 1
#CommunicationObjectFaultedException
¯¯ =
(
¯¯= >
)
¯¯> ?
;
¯¯? @
}
˘˘ 
catch
˙˙ 
(
˙˙ 
TimeoutException
˙˙ #
ex
˙˙$ &
)
˙˙& '
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
¸¸L M
ERROR
¸¸M R
)
¸¸R S
;
¸¸S T
throw
˝˝ 
new
˝˝ 
TimeoutException
˝˝ *
(
˝˝* +
)
˝˝+ ,
;
˝˝, -
}
˛˛ 
catch
ˇˇ 
(
ˇˇ $
CommunicationException
ˇˇ )
ex
ˇˇ* ,
)
ˇˇ, -
{
ÄÄ %
ExceptionHandlerForLogs
ÅÅ '
.
ÅÅ' (
LogException
ÅÅ( 4
(
ÅÅ4 5
ex
ÅÅ5 7
,
ÅÅ7 8!
ExceptionDictionary
ÅÅ9 L
.
ÅÅL M
ERROR
ÅÅM R
)
ÅÅR S
;
ÅÅS T
throw
ÇÇ 
new
ÇÇ $
CommunicationException
ÇÇ 0
(
ÇÇ0 1
)
ÇÇ1 2
;
ÇÇ2 3
}
ÉÉ 
catch
ÑÑ 
(
ÑÑ 
SocketException
ÑÑ "
ex
ÑÑ# %
)
ÑÑ% &
{
ÖÖ %
ExceptionHandlerForLogs
ÜÜ '
.
ÜÜ' (
LogException
ÜÜ( 4
(
ÜÜ4 5
ex
ÜÜ5 7
,
ÜÜ7 8!
ExceptionDictionary
ÜÜ9 L
.
ÜÜL M
ERROR
ÜÜM R
)
ÜÜR S
;
ÜÜS T
throw
áá 
new
áá 
SocketException
áá )
(
áá) *
)
áá* +
;
áá+ ,
}
àà 
}
ââ 	
private
ãã 
void
ãã 
InstanceSingleton
ãã &
(
ãã& '
UserPojo
ãã' /
currentUser
ãã0 ;
,
ãã; <

PlayerPojo
ãã= G
currenPlayer
ããH T
)
ããT U
{
åå 	
userSingleton
çç 
=
çç 
UserSingleton
çç )
.
çç) *
GetMainUser
çç* 5
(
çç5 6
currentUser
çç6 A
,
ççA B
currenPlayer
ççC O
)
ççO P
;
ççP Q
}
éé 	
private
êê 
void
êê 
GoToMainMenu
êê !
(
êê! "
)
êê" #
{
ëë 	
MainMenu
íí 
mainMenuPage
íí !
=
íí" #
new
íí$ '
MainMenu
íí( 0
(
íí0 1
)
íí1 2
;
íí2 3
this
ìì 
.
ìì 
NavigationService
ìì "
.
ìì" #
Navigate
ìì# +
(
ìì+ ,
mainMenuPage
ìì, 8
)
ìì8 9
;
ìì9 :
NavigationService
îî 
.
îî 
RemoveBackEntry
îî -
(
îî- .
)
îî. /
;
îî/ 0
}
ïï 	
private
óó 
void
óó !
CLickButtonRegister
óó (
(
óó( )
object
óó) /
sender
óó0 6
,
óó6 7
RoutedEventArgs
óó8 G
e
óóH I
)
óóI J
{
òò 	
UserRegister
ôô 
userRegistryPage
ôô )
=
ôô* +
new
ôô, /
UserRegister
ôô0 <
(
ôô< =
)
ôô= >
;
ôô> ?
this
öö 
.
öö 
NavigationService
öö "
.
öö" #
Navigate
öö# +
(
öö+ ,
userRegistryPage
öö, <
)
öö< =
;
öö= >
NavigationService
õõ 
.
õõ 
RemoveBackEntry
õõ -
(
õõ- .
)
õõ. /
;
õõ/ 0
}
úú 	
private
ûû 
void
ûû 
ClickSingOut
ûû !
(
ûû! "
object
ûû" (
sender
ûû) /
,
ûû/ 0"
MouseButtonEventArgs
ûû1 E
e
ûûF G
)
ûûG H
{
üü 	
PrincipalPage
†† 
principalPage
†† '
=
††( )
new
††* -
PrincipalPage
††. ;
(
††; <
)
††< =
;
††= >
this
°° 
.
°° 
NavigationService
°° "
.
°°" #
Navigate
°°# +
(
°°+ ,
principalPage
°°, 9
)
°°9 :
;
°°: ;
NavigationService
¢¢ 
.
¢¢ 
RemoveBackEntry
¢¢ -
(
¢¢- .
)
¢¢. /
;
¢¢/ 0
}
££ 	
private
•• 
void
•• 
ClickSeePassword
•• %
(
••% &
object
••& ,
sender
••- 3
,
••3 4"
MouseButtonEventArgs
••5 I
e
••J K
)
••K L
{
¶¶ 	
lblViewPassword
ßß 
.
ßß 
Content
ßß #
=
ßß$ %
pssPasswordLogIn
ßß& 6
.
ßß6 7
Password
ßß7 ?
.
ßß? @
ToString
ßß@ H
(
ßßH I
)
ßßI J
;
ßßJ K
pssPasswordLogIn
®® 
.
®® 

Visibility
®® '
=
®®( )

Visibility
®®* 4
.
®®4 5
	Collapsed
®®5 >
;
®®> ?
lblViewPassword
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
©©3 4
Visible
©©4 ;
;
©©; <
}
™™ 	
private
¨¨ 
void
¨¨ #
OverLeaveHidePassword
¨¨ *
(
¨¨* +
object
¨¨+ 1
sender
¨¨2 8
,
¨¨8 9
MouseEventArgs
¨¨: H
e
¨¨I J
)
¨¨J K
{
≠≠ 	
if
ÆÆ 
(
ÆÆ 
lblViewPassword
ÆÆ 
.
ÆÆ  
	IsVisible
ÆÆ  )
)
ÆÆ) *
{
ØØ 
pssPasswordLogIn
∞∞  
.
∞∞  !

Visibility
∞∞! +
=
∞∞, -

Visibility
∞∞. 8
.
∞∞8 9
Visible
∞∞9 @
;
∞∞@ A
pssPasswordLogIn
±±  
.
±±  !
PasswordChar
±±! -
=
±±. /
$char
±±0 3
;
±±3 4
pssPasswordLogIn
≤≤  
.
≤≤  !
Password
≤≤! )
=
≤≤* +
(
≤≤, -
string
≤≤- 3
)
≤≤3 4
lblViewPassword
≤≤4 C
.
≤≤C D
Content
≤≤D K
;
≤≤K L
lblViewPassword
≥≥ 
.
≥≥  

Visibility
≥≥  *
=
≥≥+ ,

Visibility
≥≥- 7
.
≥≥7 8
	Collapsed
≥≥8 A
;
≥≥A B
}
¥¥ 
}
µµ 	
public
ππ 
bool
ππ 
IsClientActive
ππ "
(
ππ" #
)
ππ# $
{
∫∫ 	
return
ªª 
(
ªª 
(
ªª &
ICheckUserLivingCallback
ªª -
)
ªª- .
userSingleton
ªª. ;
)
ªª; <
.
ªª< =
IsClientActive
ªª= K
(
ªªK L
)
ªªL M
;
ªªM N
}
ºº 	
private
ææ 
void
ææ 
HandleException
ææ $
(
ææ$ %
	Exception
ææ% .
ex
ææ/ 1
,
ææ1 2
string
ææ3 9
errorMessage
ææ: F
)
ææF G
{
øø 	%
ExceptionHandlerForLogs
¿¿ #
.
¿¿# $
LogException
¿¿$ 0
(
¿¿0 1
ex
¿¿1 3
,
¿¿3 4!
ExceptionDictionary
¿¿5 H
.
¿¿H I
FATAL_EXCEPTION
¿¿I X
)
¿¿X Y
;
¿¿Y Z!
DialogWindowManager
¡¡ 
.
¡¡  #
ShowInfoOrErrorWindow
¡¡  5
(
¡¡5 6

Properties
¡¡6 @
.
¡¡@ A
	Resources
¡¡A J
.
¡¡J K
txbErrorTitle
¡¡K X
,
¡¡X Y
errorMessage
¡¡Z f
,
¡¡f g
Application
¡¡h s
.
¡¡s t
Current
¡¡t {
.
¡¡{ |

MainWindow¡¡| Ü
,¡¡Ü á#
DialogWindowManager¡¡à õ
.¡¡õ ú
ERROR¡¡ú °
)¡¡° ¢
;¡¡¢ £
}
¬¬ 	
private
ƒƒ 
void
ƒƒ !
LanguageButtonClick
ƒƒ (
(
ƒƒ( )
object
ƒƒ) /
sender
ƒƒ0 6
,
ƒƒ6 7
RoutedEventArgs
ƒƒ8 G
e
ƒƒH I
)
ƒƒI J
{
≈≈ 	
LanguageOptions
∆∆ 
.
∆∆ 

Visibility
∆∆ &
=
∆∆' (

Visibility
∆∆) 3
.
∆∆3 4
Visible
∆∆4 ;
;
∆∆; <
}
«« 	
private
…… 
void
…… 
SelectLanguage
…… #
(
……# $
object
……$ *
sender
……+ 1
,
……1 2
RoutedEventArgs
……3 B
e
……C D
)
……D E
{
   	
System
ÀÀ 
.
ÀÀ 
Windows
ÀÀ 
.
ÀÀ 
Controls
ÀÀ #
.
ÀÀ# $
Button
ÀÀ$ *
selectedButton
ÀÀ+ 9
=
ÀÀ: ;
sender
ÀÀ< B
as
ÀÀC E
Button
ÀÀF L
;
ÀÀL M
string
ÃÃ 
selectedLanguage
ÃÃ #
=
ÃÃ$ %
selectedButton
ÃÃ& 4
.
ÃÃ4 5
Tag
ÃÃ5 8
.
ÃÃ8 9
ToString
ÃÃ9 A
(
ÃÃA B
)
ÃÃB C
;
ÃÃC D
App
ŒŒ 
.
ŒŒ 
ChangeLanguage
ŒŒ 
(
ŒŒ 
selectedLanguage
ŒŒ /
)
ŒŒ/ 0
;
ŒŒ0 1
RegistryKey
œœ 
key
œœ 
=
œœ 
Registry
œœ &
.
œœ& '
CurrentUser
œœ' 2
.
œœ2 3
CreateSubKey
œœ3 ?
(
œœ? @
$str
œœ@ X
)
œœX Y
;
œœY Z
key
–– 
.
–– 
SetValue
–– 
(
–– 
$str
–– +
,
––+ ,
selectedLanguage
––- =
)
––= >
;
––> ?
key
—— 
.
—— 
Close
—— 
(
—— 
)
—— 
;
—— &
UpdateInterfaceResources
““ $
(
““$ %
)
““% &
;
““& '
LanguageButton
”” 
.
”” 
Content
”” "
=
””# $
selectedButton
””% 3
.
””3 4
Content
””4 ;
;
””; <
LanguageOptions
‘‘ 
.
‘‘ 

Visibility
‘‘ &
=
‘‘' (

Visibility
‘‘) 3
.
‘‘3 4
	Collapsed
‘‘4 =
;
‘‘= >
}
’’ 	
private
◊◊ 
void
◊◊ &
UpdateInterfaceResources
◊◊ -
(
◊◊- .
)
◊◊. /
{
ÿÿ 	
if
ŸŸ 
(
ŸŸ 
lblUserNameLogIn
ŸŸ  
!=
ŸŸ! #
null
ŸŸ$ (
)
ŸŸ( )
lblUserNameLogIn
⁄⁄  
.
⁄⁄  !
Content
⁄⁄! (
=
⁄⁄) *

Properties
⁄⁄+ 5
.
⁄⁄5 6
	Resources
⁄⁄6 ?
.
⁄⁄? @
lblUserNameLogIn
⁄⁄@ P
;
⁄⁄P Q
if
‹‹ 
(
‹‹ 
lblPasswordLogIn
‹‹  
!=
‹‹! #
null
‹‹$ (
)
‹‹( )
lblPasswordLogIn
››  
.
››  !
Content
››! (
=
››) *

Properties
››+ 5
.
››5 6
	Resources
››6 ?
.
››? @
lblPasswordLogIn
››@ P
;
››P Q
if
ﬂﬂ 
(
ﬂﬂ 
btnEnter
ﬂﬂ 
!=
ﬂﬂ 
null
ﬂﬂ  
)
ﬂﬂ  !
btnEnter
‡‡ 
.
‡‡ 
Content
‡‡  
=
‡‡! "

Properties
‡‡# -
.
‡‡- .
	Resources
‡‡. 7
.
‡‡7 8
btnEnter
‡‡8 @
;
‡‡@ A
if
‚‚ 
(
‚‚ 
btnRegistrer
‚‚ 
!=
‚‚ 
null
‚‚  $
)
‚‚$ %
btnRegistrer
„„ 
.
„„ 
Content
„„ $
=
„„% &

Properties
„„' 1
.
„„1 2
	Resources
„„2 ;
.
„„; <
btnRegistrer
„„< H
;
„„H I
}
‰‰ 	
}
ÊÊ 
}ÁÁ ÷±
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
{ 
public 
MainMenu 
( 
) 
{ 	
InitializeComponent 
(  
)  !
;! "
NotifyItIsAvailable 
(  
)  !
;! "
this 
. 
Loaded 
+= 
LoadPlayersData *
;* +
}   	
private"" 
void"" 
NotifyItIsAvailable"" (
(""( )
)"") *
{## 	
try$$ 
{%% 
UserSingleton&& 
userSingleton&& +
=&&, -
UserSingleton&&. ;
.&&; <
GetMainUser&&< G
(&&G H
)&&H I
;&&I J+
AvailabilityUserManagmentClient'' /!
availabilityUserProxy''0 E
=''F G
new''H K
(''K L
)''L M
;''M N!
availabilityUserProxy(( %
.((% &
PlayerIsAvailable((& 7
(((7 8
userSingleton((8 E
.((E F
IdUser((F L
)((L M
;((M N
})) 
catch** 
(** %
EndpointNotFoundException** ,
ex**- /
)**/ 0
{++ #
ExceptionHandlerForLogs,, '
.,,' (
LogException,,( 4
(,,4 5
ex,,5 7
,,,7 8
ExceptionDictionary,,9 L
.,,L M
FATAL_EXCEPTION,,M \
),,\ ]
;,,] ^
}-- 
catch.. 
(.. /
#CommunicationObjectFaultedException.. 6
ex..7 9
)..9 :
{// #
ExceptionHandlerForLogs00 '
.00' (
LogException00( 4
(004 5
ex005 7
,007 8
ExceptionDictionary009 L
.00L M
FATAL_EXCEPTION00M \
)00\ ]
;00] ^
}11 
catch22 
(22 
TimeoutException22 #
ex22$ &
)22& '
{33 #
ExceptionHandlerForLogs44 '
.44' (
LogException44( 4
(444 5
ex445 7
,447 8
ExceptionDictionary449 L
.44L M
FATAL_EXCEPTION44M \
)44\ ]
;44] ^
}55 
catch66 
(66 "
CommunicationException66 )
ex66* ,
)66, -
{77 #
ExceptionHandlerForLogs88 '
.88' (
LogException88( 4
(884 5
ex885 7
,887 8
ExceptionDictionary889 L
.88L M
FATAL_EXCEPTION88M \
)88\ ]
;88] ^
}99 
catch:: 
(:: 
SocketException:: "
ex::# %
)::% &
{;; #
ExceptionHandlerForLogs<< '
.<<' (
LogException<<( 4
(<<4 5
ex<<5 7
,<<7 8
ExceptionDictionary<<9 L
.<<L M
FATAL_EXCEPTION<<M \
)<<\ ]
;<<] ^
}== 
}>> 	
private@@ 
void@@ 
ClickSingOut@@ !
(@@! "
object@@" (
sender@@) /
,@@/ 0 
MouseButtonEventArgs@@1 E
e@@F G
)@@G H
{AA 	
ifBB 
(BB 
DialogWindowManagerBB #
.BB# $"
ShowWindowConfirmationBB$ :
(BB: ;

PropertiesBB; E
.BBE F
	ResourcesBBF O
.BBO P
txbWarningTitleBBP _
,BB_ `

PropertiesBBa k
.BBk l
	ResourcesBBl u
.BBu v

tbxSignOut	BBv Ä
,
BBÄ Å
Application
BBÇ ç
.
BBç é
Current
BBé ï
.
BBï ñ

MainWindow
BBñ †
)
BB† °
)
BB° ¢
{CC 

ReturnPageDD 
(DD 
)DD 
;DD 
}EE 
}FF 	
privateHH 
voidHH !
CleanGlobalParametersHH *
(HH* +
)HH+ ,
{II 	

FriendListJJ 
.JJ 
CleanDictionaryJJ &
(JJ& '
)JJ' (
;JJ( )
UserSingletonKK  
currentUserSingletonKK .
=KK/ 0
UserSingletonKK1 >
.KK> ?
GetMainUserKK? J
(KKJ K
)KKK L
;KKL M+
AvailabilityUserManagmentClientLL +!
userAvailabilityProxyLL, A
=LLB C
newLLD G
(LLG H
)LLH I
;LLI J
tryMM 
{NN !
userAvailabilityProxyOO %
.OO% & 
PlayerIsNotAvailableOO& :
(OO: ; 
currentUserSingletonOO; O
.OOO P
IdUserOOP V
)OOV W
;OOW X
}PP 
catchQQ 
(QQ %
EndpointNotFoundExceptionQQ ,
exQQ- /
)QQ/ 0
{RR #
ExceptionHandlerForLogsSS '
.SS' (
LogExceptionSS( 4
(SS4 5
exSS5 7
,SS7 8
ExceptionDictionarySS9 L
.SSL M
FATAL_EXCEPTIONSSM \
)SS\ ]
;SS] ^
}UU 
catchVV 
(VV /
#CommunicationObjectFaultedExceptionVV 6
exVV7 9
)VV9 :
{WW #
ExceptionHandlerForLogsXX '
.XX' (
LogExceptionXX( 4
(XX4 5
exXX5 7
,XX7 8
ExceptionDictionaryXX9 L
.XXL M
FATAL_EXCEPTIONXXM \
)XX\ ]
;XX] ^
}YY 
catchZZ 
(ZZ 
TimeoutExceptionZZ #
exZZ$ &
)ZZ& '
{[[ #
ExceptionHandlerForLogs\\ '
.\\' (
LogException\\( 4
(\\4 5
ex\\5 7
,\\7 8
ExceptionDictionary\\9 L
.\\L M
FATAL_EXCEPTION\\M \
)\\\ ]
;\\] ^
}]] 
catch^^ 
(^^ "
CommunicationException^^ )
ex^^* ,
)^^, -
{__ #
ExceptionHandlerForLogs`` '
.``' (
LogException``( 4
(``4 5
ex``5 7
,``7 8
ExceptionDictionary``9 L
.``L M
FATAL_EXCEPTION``M \
)``\ ]
;``] ^
}aa 
catchbb 
(bb 
SocketExceptionbb "
exbb# %
)bb% &
{cc #
ExceptionHandlerForLogsdd '
.dd' (
LogExceptiondd( 4
(dd4 5
exdd5 7
,dd7 8
ExceptionDictionarydd9 L
.ddL M
FATAL_EXCEPTIONddM \
)dd\ ]
;dd] ^
}ee 
UserSingletonff 
.ff 
CleanSingletonff (
(ff( )
)ff) *
;ff* +
}gg 	
privateii 
voidii 
ClickUserProfileii %
(ii% &
objectii& ,
senderii- 3
,ii3 4 
MouseButtonEventArgsii5 I
eiiJ K
)iiK L
{jj 	
ProfileDataConsultkk 
profileConsultPagekk 1
=kk2 3
newkk4 7
ProfileDataConsultkk8 J
(kkJ K
)kkK L
;kkL M
thisll 
.ll 
NavigationServicell "
.ll" #
Navigatell# +
(ll+ ,
profileConsultPagell, >
)ll> ?
;ll? @
NavigationServicemm 
.mm 
RemoveBackEntrymm -
(mm- .
)mm. /
;mm/ 0
}nn 	
privatepp 
voidpp 
CLickButtonNewGamepp '
(pp' (
objectpp( .
senderpp/ 5
,pp5 6
RoutedEventArgspp7 F
eppG H
)ppH I
{qq 	
	LobbyPagerr 
lobbyGamePagerr #
=rr$ %
newrr& )
	LobbyPagerr* 3
(rr3 4
)rr4 5
;rr5 6
thisss 
.ss 
NavigationServicess "
.ss" #
Navigatess# +
(ss+ ,
lobbyGamePagess, 9
)ss9 :
;ss: ;
NavigationServicett 
.tt 
RemoveBackEntrytt -
(tt- .
)tt. /
;tt/ 0
}vv 	
privateww 
voidww  
CLickButtonEnterGameww )
(ww) *
objectww* 0
senderww1 7
,ww7 8
RoutedEventArgsww9 H
ewwI J
)wwJ K
{xx 	
Viewsyy 
.yy 
EnterWithGameCodeyy #

codeWindowyy$ .
=yy/ 0
newyy1 4
Viewsyy5 :
.yy: ;
EnterWithGameCodeyy; L
(yyL M
)yyM N
;yyN O

codeWindowzz 
.zz !
WindowStartupLocationzz ,
=zz- .
Systemzz/ 5
.zz5 6
Windowszz6 =
.zz= >!
WindowStartupLocationzz> S
.zzS T
CenterScreenzzT `
;zz` a
enterGameWithCode{{ 
codePage{{ &
={{' (
new{{) ,
enterGameWithCode{{- >
({{> ?
Window{{? E
.{{E F
	GetWindow{{F O
({{O P
this{{P T
){{T U
,{{U V
false{{W \
){{\ ]
;{{] ^

codeWindow|| 
.|| 
contentFrame|| #
.||# $
NavigationService||$ 5
.||5 6
Navigate||6 >
(||> ?
codePage||? G
)||G H
;||H I

codeWindow}} 
.}} 

ShowDialog}} !
(}}! "
)}}" #
;}}# $
}~~ 	
private
ÄÄ 
void
ÄÄ $
CLickButtonFriendsList
ÄÄ +
(
ÄÄ+ ,
object
ÄÄ, 2
sender
ÄÄ3 9
,
ÄÄ9 :
RoutedEventArgs
ÄÄ; J
e
ÄÄK L
)
ÄÄL M
{
ÅÅ 	
FriendManager
ÇÇ 
friendManager
ÇÇ '
=
ÇÇ( )
new
ÇÇ* -
FriendManager
ÇÇ. ;
(
ÇÇ; <
)
ÇÇ< =
;
ÇÇ= >
this
ÉÉ 
.
ÉÉ 
NavigationService
ÉÉ "
.
ÉÉ" #
Navigate
ÉÉ# +
(
ÉÉ+ ,
friendManager
ÉÉ, 9
)
ÉÉ9 :
;
ÉÉ: ;
NavigationService
ÑÑ 
.
ÑÑ 
RemoveBackEntry
ÑÑ -
(
ÑÑ- .
)
ÑÑ. /
;
ÑÑ/ 0
}
ÖÖ 	
private
áá 
void
áá 
LoadPlayersData
áá $
(
áá$ %
object
áá% +
sender
áá, 2
,
áá2 3
RoutedEventArgs
áá4 C
e
ááD E
)
ááE F
{
àà 	
try
ââ 
{
ää *
ConsultUserInformationClient
ãã ,%
consultInformationProxy
ãã- D
=
ããE F
new
ããG J*
ConsultUserInformationClient
ããK g
(
ããg h
)
ããh i
;
ããi j
UserSingleton
åå 
userSingleton
åå +
=
åå, -
UserSingleton
åå. ;
.
åå; <
GetMainUser
åå< G
(
ååG H
)
ååH I
;
ååI J
var
çç 
playersInfo
çç 
=
çç  !%
consultInformationProxy
çç" 9
.
çç9 :#
GetPlayersInformation
çç: O
(
ççO P
userSingleton
ççP ]
.
çç] ^
IdUser
çç^ d
)
ççd e
;
ççe f
if
éé 
(
éé 
playersInfo
éé 
.
éé  
	CodeEvent
éé  )
==
éé* ,!
ExceptionDictionary
éé. A
.
ééA B
SUCCESFULL_EVENT
ééB R
)
ééR S
{
èè 
foreach
êê 
(
êê 
var
êê  

playerInfo
êê! +
in
êê, .
playersInfo
êê/ :
.
êê: ;
ObjectSaved
êê; F
)
êêF G
{
ëë 
string
íí 

playerName
íí )
=
íí* +

playerInfo
íí, 6
.
íí6 7
Name
íí7 ;
;
íí; <
long
ìì 
score
ìì "
=
ìì# $

playerInfo
ìì% /
.
ìì/ 0
Points
ìì0 6
;
ìì6 7
ListBoxItem
ïï #
item
ïï$ (
=
ïï) *
new
ïï+ .
ListBoxItem
ïï/ :
(
ïï: ;
)
ïï; <
;
ïï< =
item
ññ 
.
ññ 
Content
ññ $
=
ññ% &
$"
ññ' )
{
ññ) *

playerName
ññ* 4
}
ññ4 5
$str
ññ5 7
{
ññ7 8
score
ññ8 =
}
ññ= >
"
ññ> ?
;
ññ? @

lstWinners
óó "
.
óó" #
Items
óó# (
.
óó( )
Add
óó) ,
(
óó, -
item
óó- 1
)
óó1 2
;
óó2 3
}
òò 
}
ôô 
}
öö 
catch
õõ 
(
õõ '
EndpointNotFoundException
õõ ,
ex
õõ- /
)
õõ/ 0
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
lblEndPointNotFound
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
üü 1
#CommunicationObjectFaultedException
üü 6
ex
üü7 9
)
üü9 :
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
°°8 9&
lblComunicationException
°°9 Q
)
°°Q R
;
°°R S
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
••8 9
lblTimeException
••9 I
)
••I J
;
••J K
}
¶¶ 
catch
ßß 
(
ßß $
CommunicationException
ßß )
ex
ßß* ,
)
ßß, -
{
®® 
HandleException
©© 
(
©©  
ex
©©  "
,
©©" #

Properties
©©$ .
.
©©. /
	Resources
©©/ 8
.
©©8 9!
lblWithoutConection
©©9 L
)
©©L M
;
©©M N
}
™™ 
catch
´´ 
(
´´ 
SocketException
´´ "
ex
´´# %
)
´´% &
{
¨¨ 
HandleException
≠≠ 
(
≠≠  
ex
≠≠  "
,
≠≠" #

Properties
≠≠$ .
.
≠≠. /
	Resources
≠≠/ 8
.
≠≠8 9!
lblEndPointNotFound
≠≠9 L
)
≠≠L M
;
≠≠M N
}
ÆÆ 
}
ØØ 	
private
±± 
void
±± 
HandleException
±± $
(
±±$ %
	Exception
±±% .
ex
±±/ 1
,
±±1 2
string
±±3 9
errorMessage
±±: F
)
±±F G
{
≤≤ 	%
ExceptionHandlerForLogs
≥≥ #
.
≥≥# $
LogException
≥≥$ 0
(
≥≥0 1
ex
≥≥1 3
,
≥≥3 4!
ExceptionDictionary
≥≥5 H
.
≥≥H I
FATAL_EXCEPTION
≥≥I X
)
≥≥X Y
;
≥≥Y Z!
DialogWindowManager
¥¥ 
.
¥¥  #
ShowInfoOrErrorWindow
¥¥  5
(
¥¥5 6

Properties
¥¥6 @
.
¥¥@ A
	Resources
¥¥A J
.
¥¥J K
txbErrorTitle
¥¥K X
,
¥¥X Y
errorMessage
¥¥Z f
,
¥¥f g
Application
¥¥h s
.
¥¥s t
Current
¥¥t {
.
¥¥{ |

MainWindow¥¥| Ü
,¥¥Ü á#
DialogWindowManager¥¥à õ
.¥¥õ ú
ERROR¥¥ú °
)¥¥° ¢
;¥¥¢ £
}
∂∂ 	
private
∏∏ 
void
∏∏ !
LanguageButtonClick
∏∏ (
(
∏∏( )
object
∏∏) /
sender
∏∏0 6
,
∏∏6 7
RoutedEventArgs
∏∏8 G
e
∏∏H I
)
∏∏I J
{
ππ 	
LanguageOptions
∫∫ 
.
∫∫ 

Visibility
∫∫ &
=
∫∫' (

Visibility
∫∫) 3
.
∫∫3 4
Visible
∫∫4 ;
;
∫∫; <
}
ªª 	
private
ΩΩ 
void
ΩΩ 
SelectLanguage
ΩΩ #
(
ΩΩ# $
object
ΩΩ$ *
sender
ΩΩ+ 1
,
ΩΩ1 2
RoutedEventArgs
ΩΩ3 B
e
ΩΩC D
)
ΩΩD E
{
ææ 	
Button
øø 
selectedButton
øø !
=
øø" #
sender
øø$ *
as
øø+ -
Button
øø. 4
;
øø4 5
string
¿¿ 
selectedLanguage
¿¿ #
=
¿¿$ %
selectedButton
¿¿& 4
.
¿¿4 5
Tag
¿¿5 8
.
¿¿8 9
ToString
¿¿9 A
(
¿¿A B
)
¿¿B C
;
¿¿C D
App
¬¬ 
.
¬¬ 
ChangeLanguage
¬¬ 
(
¬¬ 
selectedLanguage
¬¬ /
)
¬¬/ 0
;
¬¬0 1
RegistryKey
√√ 
key
√√ 
=
√√ 
Registry
√√ &
.
√√& '
CurrentUser
√√' 2
.
√√2 3
CreateSubKey
√√3 ?
(
√√? @
$str
√√@ X
)
√√X Y
;
√√Y Z
key
ƒƒ 
.
ƒƒ 
SetValue
ƒƒ 
(
ƒƒ 
$str
ƒƒ +
,
ƒƒ+ ,
selectedLanguage
ƒƒ- =
)
ƒƒ= >
;
ƒƒ> ?
key
≈≈ 
.
≈≈ 
Close
≈≈ 
(
≈≈ 
)
≈≈ 
;
≈≈ &
UpdateInterfaceResources
∆∆ $
(
∆∆$ %
)
∆∆% &
;
∆∆& '
LanguageButton
»» 
.
»» 
Content
»» "
=
»»# $
selectedButton
»»% 3
.
»»3 4
Content
»»4 ;
;
»»; <
LanguageOptions
   
.
   

Visibility
   &
=
  ' (

Visibility
  ) 3
.
  3 4
	Collapsed
  4 =
;
  = >
}
ÀÀ 	
private
ÕÕ 
void
ÕÕ &
UpdateInterfaceResources
ÕÕ -
(
ÕÕ- .
)
ÕÕ. /
{
ŒŒ 	
if
œœ 
(
œœ 
bttEnterGame
œœ 
!=
œœ 
null
œœ  $
)
œœ$ %
bttEnterGame
–– 
.
–– 
Content
–– #
=
––$ %

Properties
––& 0
.
––0 1
	Resources
––1 :
.
––: ;
bttEnterGame
––; G
;
––G H
if
““ 
(
““ 

bttFriends
““ 
!=
““ 
null
““ "
)
““" #

bttFriends
”” 
.
”” 
Content
”” "
=
””# $

Properties
””% /
.
””/ 0
	Resources
””0 9
.
””9 :

bttFriends
””: D
;
””D E
if
’’ 
(
’’ 

bttNewGame
’’ 
!=
’’ 
null
’’ "
)
’’" #

bttNewGame
÷÷ 
.
÷÷ 
Content
÷÷ "
=
÷÷# $

Properties
÷÷% /
.
÷÷/ 0
	Resources
÷÷0 9
.
÷÷9 :

bttNewGame
÷÷: D
;
÷÷D E
if
ÿÿ 
(
ÿÿ #
lblProfileInformation
ÿÿ %
!=
ÿÿ& (
null
ÿÿ) -
)
ÿÿ- .#
lblProfileInformation
ŸŸ %
.
ŸŸ% &
Content
ŸŸ& -
=
ŸŸ. /

Properties
ŸŸ0 :
.
ŸŸ: ;
	Resources
ŸŸ; D
.
ŸŸD E#
lblProfileInformation
ŸŸE Z
;
ŸŸZ [
}
⁄⁄ 	
private
‹‹ 
void
‹‹ 

ReturnPage
‹‹ 
(
‹‹  
)
‹‹  !
{
›› 	%
NotifyFriendsIamLeaving
ﬁﬁ #
(
ﬁﬁ# $
)
ﬁﬁ$ %
;
ﬁﬁ% &#
CleanGlobalParameters
ﬂﬂ !
(
ﬂﬂ! "
)
ﬂﬂ" #
;
ﬂﬂ# $
	LogInUser
‡‡ 
	logInPage
‡‡ 
=
‡‡  !
new
‡‡" %
	LogInUser
‡‡& /
(
‡‡/ 0
)
‡‡0 1
;
‡‡1 2
this
·· 
.
·· 
NavigationService
·· "
.
··" #
Navigate
··# +
(
··+ ,
	logInPage
··, 5
)
··5 6
;
··6 7
NavigationService
‚‚ 
.
‚‚ 
RemoveBackEntry
‚‚ -
(
‚‚- .
)
‚‚. /
;
‚‚/ 0
}
„„ 	
private
ÂÂ 
void
ÂÂ %
NotifyFriendsIamLeaving
ÂÂ ,
(
ÂÂ, -
)
ÂÂ- .
{
ÊÊ 	
try
ÁÁ 
{
ËË .
 CheckUserLivingUnsubscribeClient
ÈÈ 0#
checkUserLivingClient
ÈÈ1 F
=
ÈÈG H
new
ÈÈI L
(
ÈÈL M
)
ÈÈM N
;
ÈÈN O#
checkUserLivingClient
ÍÍ %
.
ÍÍ% &-
UnsubscribeFromICheckUserLiving
ÍÍ& E
(
ÍÍE F
UserSingleton
ÍÍF S
.
ÍÍS T"
GetUserPojoSingelton
ÍÍT h
(
ÍÍh i
)
ÍÍi j
)
ÍÍj k
;
ÍÍk l
}
ÎÎ 
catch
ÏÏ 
(
ÏÏ '
EndpointNotFoundException
ÏÏ ,
ex
ÏÏ- /
)
ÏÏ/ 0
{
ÌÌ %
ExceptionHandlerForLogs
ÓÓ '
.
ÓÓ' (
LogException
ÓÓ( 4
(
ÓÓ4 5
ex
ÓÓ5 7
,
ÓÓ7 8!
ExceptionDictionary
ÓÓ9 L
.
ÓÓL M
FATAL_EXCEPTION
ÓÓM \
)
ÓÓ\ ]
;
ÓÓ] ^
}
ÔÔ 
catch
 
(
 1
#CommunicationObjectFaultedException
 6
ex
7 9
)
9 :
{
ÒÒ %
ExceptionHandlerForLogs
ÚÚ '
.
ÚÚ' (
LogException
ÚÚ( 4
(
ÚÚ4 5
ex
ÚÚ5 7
,
ÚÚ7 8!
ExceptionDictionary
ÚÚ9 L
.
ÚÚL M
FATAL_EXCEPTION
ÚÚM \
)
ÚÚ\ ]
;
ÚÚ] ^
}
ÛÛ 
catch
ÙÙ 
(
ÙÙ 
TimeoutException
ÙÙ #
ex
ÙÙ$ &
)
ÙÙ& '
{
ıı %
ExceptionHandlerForLogs
ˆˆ '
.
ˆˆ' (
LogException
ˆˆ( 4
(
ˆˆ4 5
ex
ˆˆ5 7
,
ˆˆ7 8!
ExceptionDictionary
ˆˆ9 L
.
ˆˆL M
FATAL_EXCEPTION
ˆˆM \
)
ˆˆ\ ]
;
ˆˆ] ^
}
˜˜ 
catch
¯¯ 
(
¯¯ $
CommunicationException
¯¯ )
ex
¯¯* ,
)
¯¯, -
{
˘˘ %
ExceptionHandlerForLogs
˙˙ '
.
˙˙' (
LogException
˙˙( 4
(
˙˙4 5
ex
˙˙5 7
,
˙˙7 8!
ExceptionDictionary
˙˙9 L
.
˙˙L M
FATAL_EXCEPTION
˙˙M \
)
˙˙\ ]
;
˙˙] ^
}
˚˚ 
catch
¸¸ 
(
¸¸ 
SocketException
¸¸ "
ex
¸¸# %
)
¸¸% &
{
˝˝ %
ExceptionHandlerForLogs
˛˛ '
.
˛˛' (
LogException
˛˛( 4
(
˛˛4 5
ex
˛˛5 7
,
˛˛7 8!
ExceptionDictionary
˛˛9 L
.
˛˛L M
FATAL_EXCEPTION
˛˛M \
)
˛˛\ ]
;
˛˛] ^
}
ˇˇ 
}
ÄÄ 	
}
ÉÉ 
}ÑÑ ®

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
} 	
private 
void 
ClickAcceptButton &
(& '
object' -
sender. 4
,4 5
RoutedEventArgs6 E
eF G
)G H
{ 	
this 
. 
Close 
( 
) 
; 
} 	
} 
} ª

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
;* +
} 	
private 
void 
ClickAcceptButton &
(& '
object' -
sender. 4
,4 5
RoutedEventArgs6 E
eF G
)G H
{ 	
this 
. 
Close 
( 
) 
; 
} 	
} 
} ˘∫
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
;((& '
public++ 
PasswordRecovery++ 
(++  
)++  !
{,, 	
InitializeComponent-- 
(--  
)--  !
;--! "
PrepareWindow.. 
(.. 
).. 
;.. $
txbUserNameCreateAccount// $
.//$ %
	MaxLength//% .
=/// 0
$num//1 3
;//3 4
txbCode00 
.00 
	MaxLength00 
=00 
$num00  !
;00! "
psbPassword11 
.11 
	MaxLength11 !
=11" #
$num11$ &
;11& '
}22 	
private44 
void44 
PrepareWindow44 "
(44" #
)44# $
{55 	
InitializeListeners66 
(66  
)66  !
;66! "
CreateRuleLabels77 
(77 
)77 
;77 
foreach88 
(88 
var88 
rule88 
in88  
ListBoxRules88! -
)88- .
{99 
lsbPasswordRules::  
.::  !
Items::! &
.::& '
Add::' *
(::* +
rule::+ /
)::/ 0
;::0 1
};; 
}<< 	
private>> 
void>> 
InitializeListeners>> (
(>>( )
)>>) *
{?? 	
psbPassword@@ 
.@@ 
PreviewKeyDown@@ &
+=@@' )
EntryTextBoxPaste@@* ;
;@@; <$
txbUserNameCreateAccountAA $
.AA$ %
PreviewTextInputAA% 5
+=AA6 8&
EntryTextBoxCharValidationAA9 S
;AAS T$
txbUserNameCreateAccountBB $
.BB$ %
PreviewKeyDownBB% 3
+=BB4 6
EntryTextBoxPasteBB7 H
;BBH I
}CC 	
privateEE 
voidEE &
EntryTextBoxCharValidationEE /
(EE/ 0
objectEE0 6
senderEE7 =
,EE= >$
TextCompositionEventArgsEE? W
eEEX Y
)EEY Z
{FF 	
TextBoxGG 
currentTextBoxGG "
=GG# $
senderGG% +
asGG, .
TextBoxGG/ 6
;GG6 7%
RegularExpressionsLibraryHH %%
regularExpressionsLibraryHH& ?
=HH@ A
newHHB E%
RegularExpressionsLibraryHHF _
(HH_ `
)HH` a
;HHa b
tryII 
{JJ 
ifKK 
(KK 
(KK %
regularExpressionsLibraryKK .
.KK. /$
ValidationTextBoxRegexesKK/ G
.KKG H
TryGetValueKKH S
(KKS T
currentTextBoxKKT b
.KKb c
NameKKc g
,KKg h
outKKi l
stringKKm s
regexKKt y
)KKy z
)KKz {
&&LL 
!LL 
RegexLL 
.LL 
IsMatchLL  
(LL  !
(LL! "
currentTextBoxLL" 0
.LL0 1
TextLL1 5
+LL6 7
eLL8 9
.LL9 :
TextLL: >
)LL> ?
,LL? @
regexLLA F
,LLF G
RegexOptionsLLH T
.LLT U

IgnoreCaseLLU _
,LL_ `
TimeSpanLLa i
.LLi j
FromMillisecondsLLj z
(LLz {
$numLL{ ~
)LL~ 
)	LL Ä
)
LLÄ Å
{MM 
eNN 
.NN 
HandledNN 
=NN 
trueNN  $
;NN$ %
}OO 
}PP 
catchQQ 
(QQ &
RegexMatchTimeoutExceptionQQ -
exQQ. 0
)QQ0 1
{RR #
ExceptionHandlerForLogsSS '
.SS' (
LogExceptionSS( 4
(SS4 5
exSS5 7
,SS7 8
ExceptionDictionarySS9 L
.SSL M
ERRORSSM R
)SSR S
;SSS T
eTT 
.TT 
HandledTT 
=TT 
trueTT  
;TT  !
}UU 
catchVV 
(VV !
ArgumentNullExceptionVV (
exVV) +
)VV+ ,
{WW #
ExceptionHandlerForLogsXX '
.XX' (
LogExceptionXX( 4
(XX4 5
exXX5 7
,XX7 8
ExceptionDictionaryXX9 L
.XXL M
ERRORXXM R
)XXR S
;XXS T
eYY 
.YY 
HandledYY 
=YY 
trueYY  
;YY  !
}ZZ 
}[[ 	
private]] 
void]] 
EntryTextBoxPaste]] &
(]]& '
object]]' -
sender]]. 4
,]]4 5
KeyEventArgs]]6 B
e]]C D
)]]D E
{^^ 	
if__ 
(__ 
(__ 
Keyboard__ 
.__ 
	Modifiers__ #
&__$ %
ModifierKeys__& 2
.__2 3
Control__3 :
)__: ;
==__< >
ModifierKeys__? K
.__K L
Control__L S
&&__T V
(__W X
e__X Y
.__Y Z
Key__Z ]
==__^ `
Key__a d
.__d e
V__e f
)__f g
)__g h
{`` 
eaa 
.aa 
Handledaa 
=aa 
trueaa  
;aa  !
}bb 
}cc 	
privateee 
voidee 
CreateRuleLabelsee %
(ee% &
)ee& '
{ff 	
Labelgg !
lblPasswordLengthRulegg '
=gg( )
newgg* -
Labelgg. 3
(gg3 4
)gg4 5
;gg5 6!
lblPasswordLengthRulehh !
.hh! "
Contenthh" )
=hh* +

Propertieshh, 6
.hh6 7
	Resourceshh7 @
.hh@ A!
lblPassLengthRuleDeschhA V
;hhV W!
lblPasswordLengthRuleii !
.ii! "

Foregroundii" ,
=ii- .
Brushesii/ 6
.ii6 7
Whiteii7 <
;ii< =!
lblPasswordLengthRulejj !
.jj! "
FontSizejj" *
=jj+ ,
$numjj- /
;jj/ 0
Labelkk "
lblPasswordNumbersRulekk (
=kk) *
newkk+ .
Labelkk/ 4
(kk4 5
)kk5 6
;kk6 7"
lblPasswordNumbersRulell "
.ll" #
Contentll# *
=ll+ ,

Propertiesll- 7
.ll7 8
	Resourcesll8 A
.llA B!
lblPassNumberRuleDescllB W
;llW X"
lblPasswordNumbersRulemm "
.mm" #

Foregroundmm# -
=mm. /
Brushesmm0 7
.mm7 8
Whitemm8 =
;mm= >"
lblPasswordNumbersRulenn "
.nn" #
FontSizenn# +
=nn, -
$numnn. 0
;nn0 1
Labeloo #
lblPasswordCapitalsRuleoo )
=oo* +
newoo, /
Labeloo0 5
(oo5 6
)oo6 7
;oo7 8#
lblPasswordCapitalsRulepp #
.pp# $
Contentpp$ +
=pp, -

Propertiespp. 8
.pp8 9
	Resourcespp9 B
.ppB C"
lblPassCapitalRuleDescppC Y
;ppY Z#
lblPasswordCapitalsRuleqq #
.qq# $

Foregroundqq$ .
=qq/ 0
Brushesqq1 8
.qq8 9
Whiteqq9 >
;qq> ?#
lblPasswordCapitalsRulerr #
.rr# $
FontSizerr$ ,
=rr- .
$numrr/ 1
;rr1 2
Labelss "
lblPasswordSpeCharRuless (
=ss) *
newss+ .
Labelss/ 4
(ss4 5
)ss5 6
;ss6 7"
lblPasswordSpeCharRulett "
.tt" #
Contenttt# *
=tt+ ,

Propertiestt- 7
.tt7 8
	Resourcestt8 A
.ttA B"
lblPassSpeCharRuleDescttB X
;ttX Y"
lblPasswordSpeCharRuleuu "
.uu" #

Foregrounduu# -
=uu. /
Brushesuu0 7
.uu7 8
Whiteuu8 =
;uu= >"
lblPasswordSpeCharRulevv "
.vv" #
FontSizevv# +
=vv, -
$numvv. 0
;vv0 1
Labelww &
lblPasswordPunctuationRuleww ,
=ww- .
newww/ 2
Labelww3 8
(ww8 9
)ww9 :
;ww: ;&
lblPasswordPunctuationRulexx &
.xx& '
Contentxx' .
=xx/ 0

Propertiesxx1 ;
.xx; <
	Resourcesxx< E
.xxE F"
lblPassPuntSigRuleDescxxF \
;xx\ ]&
lblPasswordPunctuationRuleyy &
.yy& '

Foregroundyy' 1
=yy2 3
Brushesyy4 ;
.yy; <
Whiteyy< A
;yyA B&
lblPasswordPunctuationRulezz &
.zz& '
FontSizezz' /
=zz0 1
$numzz2 4
;zz4 5
Label{{ $
lblPasswordSameEmailRule{{ *
={{+ ,
new{{- 0
Label{{1 6
({{6 7
){{7 8
;{{8 9$
lblPasswordSameEmailRule|| $
.||$ %
Content||% ,
=||- .

Properties||/ 9
.||9 :
	Resources||: C
.||C D&
lblPassEqualsEmailRuleDesc||D ^
;||^ _$
lblPasswordSameEmailRule}} $
.}}$ %

Foreground}}% /
=}}0 1
Brushes}}2 9
.}}9 :
White}}: ?
;}}? @$
lblPasswordSameEmailRule~~ $
.~~$ %
FontSize~~% -
=~~. /
$num~~0 2
;~~2 3
ListBoxRules 
. 
Add 
( !
lblPasswordLengthRule 2
)2 3
;3 4
ListBoxRules
ÄÄ 
.
ÄÄ 
Add
ÄÄ 
(
ÄÄ $
lblPasswordNumbersRule
ÄÄ 3
)
ÄÄ3 4
;
ÄÄ4 5
ListBoxRules
ÅÅ 
.
ÅÅ 
Add
ÅÅ 
(
ÅÅ %
lblPasswordCapitalsRule
ÅÅ 4
)
ÅÅ4 5
;
ÅÅ5 6
ListBoxRules
ÇÇ 
.
ÇÇ 
Add
ÇÇ 
(
ÇÇ $
lblPasswordSpeCharRule
ÇÇ 3
)
ÇÇ3 4
;
ÇÇ4 5
ListBoxRules
ÉÉ 
.
ÉÉ 
Add
ÉÉ 
(
ÉÉ (
lblPasswordPunctuationRule
ÉÉ 7
)
ÉÉ7 8
;
ÉÉ8 9
ListBoxRules
ÑÑ 
.
ÑÑ 
Add
ÑÑ 
(
ÑÑ &
lblPasswordSameEmailRule
ÑÑ 5
)
ÑÑ5 6
;
ÑÑ6 7
}
ÖÖ 	
private
àà 
int
àà 
CheckEmptyFields
àà $
(
àà$ %
Label
àà% *
warningLabel
àà+ 7
,
àà7 8
TextBox
àà9 @

txbToCheck
ààA K
)
ààK L
{
ââ 	
int
ää 
answer
ää 
=
ää 
ALLOWED_VALUES
ää '
;
ää' (
if
ãã 
(
ãã 
string
ãã 
.
ãã 
IsNullOrEmpty
ãã $
(
ãã$ %

txbToCheck
ãã% /
.
ãã/ 0
Text
ãã0 4
.
ãã4 5
Trim
ãã5 9
(
ãã9 :
)
ãã: ;
)
ãã; <
)
ãã< =
{
åå 
warningLabel
çç 
.
çç 

Visibility
çç '
=
çç( )

Visibility
çç* 4
.
çç4 5
Visible
çç5 <
;
çç< =
answer
éé 
=
éé 
DISALLOWED_VALUES
éé *
;
éé* +
}
èè 
else
êê 
{
ëë 
warningLabel
íí 
.
íí 

Visibility
íí '
=
íí( )

Visibility
íí* 4
.
íí4 5
	Collapsed
íí5 >
;
íí> ?
}
ìì 
return
îî 
answer
îî 
;
îî 
}
ïï 	
private
óó 
void
óó "
ClickConfirmUserName
óó )
(
óó) *
object
óó* 0
sender
óó1 7
,
óó7 8
RoutedEventArgs
óó9 H
e
óóI J
)
óóJ K
{
òò 	
if
ôô 
(
ôô 
CheckEmptyFields
ôô 
(
ôô  
lblUserNamWarning
ôô  1
,
ôô1 2&
txbUserNameCreateAccount
ôô3 K
)
ôôK L
==
ôôM O
ALLOWED_VALUES
ôôP ^
)
ôô^ _
{
öö 
try
õõ 
{
úú #
RecoverPasswordClient
ùù )"
recoverPasswordProxy
ùù* >
=
ùù? @
new
ùùA D#
RecoverPasswordClient
ùùE Z
(
ùùZ [
)
ùù[ \
;
ùù\ ]
int
ûû 
succes
ûû 
=
ûû  "
recoverPasswordProxy
ûû! 5
.
ûû5 6)
CreateCodeToRecoverPassWord
ûû6 Q
(
ûûQ R&
txbUserNameCreateAccount
ûûR j
.
ûûj k
Text
ûûk o
,
ûûo p

Properties
ûûq {
.
ûû{ |
	Resourcesûû| Ö
.ûûÖ Ü 
EmailSubjectCodeûûÜ ñ
,ûûñ ó

Propertiesûûò ¢
.ûû¢ £
	Resourcesûû£ ¨
.ûû¨ ≠&
RecoverPasswordMessageûû≠ √
)ûû√ ƒ
;ûûƒ ≈
if
üü 
(
üü 
succes
üü 
==
üü  !
ExceptionDictionary
üü! 4
.
üü4 5
SUCCESFULL_EVENT
üü5 E
||
üüF H!
ExceptionDictionary
üüI \
.
üü\ ]$
USERNAME_ALREADY_EXIST
üü] s
==
üüt v
succes
üüw }
)
üü} ~
{
†† %
ConfirmCodeAlreadyExist
°° /
(
°°/ 0
succes
°°0 6
)
°°6 7
;
°°7 8
}
¢¢ 
else
££ 
if
££ 
(
££ 
succes
££ "
==
££# %!
ExceptionDictionary
££& 9
.
££9 :
NULL_PARAEMETER
££: I
)
££I J
{
§§ !
DialogWindowManager
•• +
.
••+ ,#
ShowInfoOrErrorWindow
••, A
(
••A B

Properties
••B L
.
••L M
	Resources
••M V
.
••V W
txbErrorTitle
••W d
,
••d e

Properties
••f p
.
••p q
	Resources
••q z
.
••z {&
lblUserNameDoesNotExist••{ í
,••í ì
Window••î ö
.••ö õ
	GetWindow••õ §
(••§ •
this••• ©
)••© ™
,••™ ´#
DialogWindowManager••¨ ø
.••ø ¿
ERROR••¿ ≈
)••≈ ∆
;••∆ «
}
¶¶ 
else
ßß 
{
®® !
DialogWindowManager
©© +
.
©©+ ,#
ShowInfoOrErrorWindow
©©, A
(
©©A B

Properties
©©B L
.
©©L M
	Resources
©©M V
.
©©V W
txbErrorTitle
©©W d
,
©©d e

Properties
©©f p
.
©©p q
	Resources
©©q z
.
©©z { 
GenericEmailIssue©©{ å
,©©å ç
Window©©é î
.©©î ï
	GetWindow©©ï û
(©©û ü
this©©ü £
)©©£ §
,©©§ •#
DialogWindowManager©©¶ π
.©©π ∫
ERROR©©∫ ø
)©©ø ¿
;©©¿ ¡
}
™™ 
}
´´ 
catch
¨¨ 
(
¨¨ '
EndpointNotFoundException
¨¨ 0
ex
¨¨1 3
)
¨¨3 4
{
≠≠ 
HandleException
ÆÆ #
(
ÆÆ# $
ex
ÆÆ$ &
,
ÆÆ& '

Properties
ÆÆ( 2
.
ÆÆ2 3
	Resources
ÆÆ3 <
.
ÆÆ< =
GenericEmailIssue
ÆÆ= N
+
ÆÆO P
$str
ÆÆQ T
+
ÆÆU V

Properties
ÆÆW a
.
ÆÆa b
	Resources
ÆÆb k
.
ÆÆk l!
lblEndPointNotFound
ÆÆl 
)ÆÆ Ä
;ÆÆÄ Å
}
∞∞ 
catch
±± 
(
±± 1
#CommunicationObjectFaultedException
±± :
ex
±±; =
)
±±= >
{
≤≤ 
HandleException
≥≥ #
(
≥≥# $
ex
≥≥$ &
,
≥≥& '

Properties
≥≥( 2
.
≥≥2 3
	Resources
≥≥3 <
.
≥≥< =
GenericEmailIssue
≥≥= N
+
≥≥O P
$str
≥≥Q T
+
≥≥U V

Properties
≥≥W a
.
≥≥a b
	Resources
≥≥b k
.
≥≥k l'
lblComunicationException≥≥l Ñ
)≥≥Ñ Ö
;≥≥Ö Ü
}
¥¥ 
catch
µµ 
(
µµ 
TimeoutException
µµ '
ex
µµ( *
)
µµ* +
{
∂∂ 
HandleException
∑∑ #
(
∑∑# $
ex
∑∑$ &
,
∑∑& '

Properties
∑∑( 2
.
∑∑2 3
	Resources
∑∑3 <
.
∑∑< =
GenericEmailIssue
∑∑= N
+
∑∑O P
$str
∑∑Q T
+
∑∑U V

Properties
∑∑W a
.
∑∑a b
	Resources
∑∑b k
.
∑∑k l
lblTimeException
∑∑l |
)
∑∑| }
;
∑∑} ~
}
∏∏ 
catch
ππ 
(
ππ $
CommunicationException
ππ -
ex
ππ. 0
)
ππ0 1
{
∫∫ 
HandleException
ªª #
(
ªª# $
ex
ªª$ &
,
ªª& '

Properties
ªª( 2
.
ªª2 3
	Resources
ªª3 <
.
ªª< =
GenericEmailIssue
ªª= N
+
ªªO P
$str
ªªQ T
+
ªªU V

Properties
ªªW a
.
ªªa b
	Resources
ªªb k
.
ªªk l!
lblWithoutConection
ªªl 
)ªª Ä
;ªªÄ Å
}
ºº 
catch
ΩΩ 
(
ΩΩ 
SocketException
ΩΩ &
ex
ΩΩ' )
)
ΩΩ) *
{
ææ 
HandleException
øø #
(
øø# $
ex
øø$ &
,
øø& '

Properties
øø( 2
.
øø2 3
	Resources
øø3 <
.
øø< =
GenericEmailIssue
øø= N
+
øøO P
$str
øøQ T
+
øøU V

Properties
øøW a
.
øøa b
	Resources
øøb k
.
øøk l!
lblEndPointNotFound
øøl 
)øø Ä
;øøÄ Å
}
¿¿ 
}
¡¡ 
}
¬¬ 	
private
ƒƒ 
void
ƒƒ %
ConfirmCodeAlreadyExist
ƒƒ ,
(
ƒƒ, -
int
ƒƒ- 0
succes
ƒƒ1 7
)
ƒƒ7 8
{
≈≈ 	
currentUserName
∆∆ 
=
∆∆ &
txbUserNameCreateAccount
∆∆ 6
.
∆∆6 7
Text
∆∆7 ;
.
∆∆; <
Trim
∆∆< @
(
∆∆@ A
)
∆∆A B
;
∆∆B C
bttConfirmCode
«« 
.
«« 
	IsEnabled
«« $
=
««% &
true
««' +
;
««+ , 
bttConfirmUserName
»» 
.
»» 
	IsEnabled
»» (
=
»») *
false
»»+ 0
;
»»0 1&
txbUserNameCreateAccount
…… $
.
……$ %
	IsEnabled
……% .
=
……/ 0
false
……1 6
;
……6 7
bttSaveUser
   
.
   
	IsEnabled
   !
=
  " #
false
  $ )
;
  ) *

StartTimer
ÀÀ 
(
ÀÀ 
)
ÀÀ 
;
ÀÀ 
if
ÃÃ 
(
ÃÃ 
succes
ÃÃ 
==
ÃÃ !
ExceptionDictionary
ÃÃ -
.
ÃÃ- .$
USERNAME_ALREADY_EXIST
ÃÃ. D
)
ÃÃD E
{
ÕÕ !
DialogWindowManager
ŒŒ #
.
ŒŒ# $#
ShowInfoOrErrorWindow
ŒŒ$ 9
(
ŒŒ9 :

Properties
ŒŒ: D
.
ŒŒD E
	Resources
ŒŒE N
.
ŒŒN O
txbErrorTitle
ŒŒO \
,
ŒŒ\ ]

Properties
ŒŒ^ h
.
ŒŒh i
	Resources
ŒŒi r
.
ŒŒr s3
$lblAlreadyExistACodeToChangePasswordŒŒs ó
,ŒŒó ò
WindowŒŒô ü
.ŒŒü †
	GetWindowŒŒ† ©
(ŒŒ© ™
thisŒŒ™ Æ
)ŒŒÆ Ø
,ŒŒØ ∞#
DialogWindowManagerŒŒ± ƒ
.ŒŒƒ ≈
ERRORŒŒ≈  
)ŒŒ  À
;ŒŒÀ Ã
}
œœ 
else
–– 
{
—— !
DialogWindowManager
““ #
.
““# $#
ShowInfoOrErrorWindow
““$ 9
(
““9 :

Properties
““: D
.
““D E
	Resources
““E N
.
““N O!
txbInformationTitle
““O b
,
““b c

Properties
““d n
.
““n o
	Resources
““o x
.
““x y2
#lblEmailCodePassWordSendSuccesfully““y ú
,““ú ù
Window““û §
.““§ •
	GetWindow““• Æ
(““Æ Ø
this““Ø ≥
)““≥ ¥
,““¥ µ#
DialogWindowManager““∂ …
.““…  
ERROR““  œ
)““œ –
;““– —
}
”” 
}
‘‘ 	
private
÷÷ 
void
÷÷ 
CLickConfirmCode
÷÷ %
(
÷÷% &
object
÷÷& ,
sender
÷÷- 3
,
÷÷3 4
RoutedEventArgs
÷÷5 D
e
÷÷E F
)
÷÷F G
{
◊◊ 	
if
ÿÿ 
(
ÿÿ 
CheckEmptyFields
ÿÿ  
(
ÿÿ  !
lblCodeNamWarning
ÿÿ! 2
,
ÿÿ2 3
txbCode
ÿÿ4 ;
)
ÿÿ; <
==
ÿÿ= ?
ALLOWED_VALUES
ÿÿ@ N
)
ÿÿN O
{
ŸŸ 
try
⁄⁄ 
{
€€ #
RecoverPasswordClient
‹‹ )"
recoverPasswordProxy
‹‹* >
=
‹‹? @
new
‹‹A D#
RecoverPasswordClient
‹‹E Z
(
‹‹Z [
)
‹‹[ \
;
‹‹\ ]
int
›› 
succes
›› 
=
››  "
recoverPasswordProxy
››! 5
.
››5 6)
VerifyCodeToRecoverPassword
››6 Q
(
››Q R
currentUserName
››R a
,
››a b
txbCode
››c j
.
››j k
Text
››k o
.
››o p
Trim
››p t
(
››t u
)
››u v
)
››v w
;
››w x
if
ﬁﬁ 
(
ﬁﬁ 
succes
ﬁﬁ 
==
ﬁﬁ !!
ExceptionDictionary
ﬁﬁ" 5
.
ﬁﬁ5 6
SUCCESFULL_EVENT
ﬁﬁ6 F
)
ﬁﬁF G
{
ﬂﬂ 
bttConfirmCode
‡‡ &
.
‡‡& '
	IsEnabled
‡‡' 0
=
‡‡1 2
false
‡‡3 8
;
‡‡8 9 
bttConfirmUserName
·· *
.
··* +
	IsEnabled
··+ 4
=
··5 6
false
··7 <
;
··< =&
txbUserNameCreateAccount
‚‚ 0
.
‚‚0 1
	IsEnabled
‚‚1 :
=
‚‚; <
false
‚‚= B
;
‚‚B C
txbCode
„„ 
.
„„  
	IsEnabled
„„  )
=
„„* +
false
„„, 1
;
„„1 2
bttSaveUser
‰‰ #
.
‰‰# $
	IsEnabled
‰‰$ -
=
‰‰. /
true
‰‰0 4
;
‰‰4 5!
DialogWindowManager
ÂÂ +
.
ÂÂ+ ,#
ShowInfoOrErrorWindow
ÂÂ, A
(
ÂÂA B

Properties
ÂÂB L
.
ÂÂL M
	Resources
ÂÂM V
.
ÂÂV W!
txbInformationTitle
ÂÂW j
,
ÂÂj k

Properties
ÂÂl v
.
ÂÂv w
	ResourcesÂÂw Ä
.ÂÂÄ Å$
lblRigthCodePasswordÂÂÅ ï
,ÂÂï ñ
WindowÂÂó ù
.ÂÂù û
	GetWindowÂÂû ß
(ÂÂß ®
thisÂÂ® ¨
)ÂÂ¨ ≠
,ÂÂ≠ Æ#
DialogWindowManagerÂÂØ ¬
.ÂÂ¬ √
ERRORÂÂ√ »
)ÂÂ» …
;ÂÂ…  
}
ÁÁ 
else
ËË 
{
ÈÈ %
ShowSpecificCodeMessage
ÍÍ /
(
ÍÍ/ 0
succes
ÍÍ0 6
)
ÍÍ6 7
;
ÍÍ7 8
}
ÎÎ 
}
ÏÏ 
catch
ÌÌ 
(
ÌÌ '
EndpointNotFoundException
ÌÌ 0
ex
ÌÌ1 3
)
ÌÌ3 4
{
ÓÓ 
HandleException
ÔÔ #
(
ÔÔ# $
ex
ÔÔ$ &
,
ÔÔ& '

Properties
ÔÔ( 2
.
ÔÔ2 3
	Resources
ÔÔ3 <
.
ÔÔ< =$
lblFailToVerifyTheCode
ÔÔ= S
+
ÔÔT U
$str
ÔÔV Y
+
ÔÔZ [

Properties
ÔÔ\ f
.
ÔÔf g
	Resources
ÔÔg p
.
ÔÔp q"
lblEndPointNotFoundÔÔq Ñ
)ÔÔÑ Ö
;ÔÔÖ Ü
}
ÒÒ 
catch
ÚÚ 
(
ÚÚ 1
#CommunicationObjectFaultedException
ÚÚ :
ex
ÚÚ; =
)
ÚÚ= >
{
ÛÛ 
HandleException
ÙÙ #
(
ÙÙ# $
ex
ÙÙ$ &
,
ÙÙ& '

Properties
ÙÙ( 2
.
ÙÙ2 3
	Resources
ÙÙ3 <
.
ÙÙ< =$
lblFailToVerifyTheCode
ÙÙ= S
+
ÙÙT U
$str
ÙÙV Y
+
ÙÙZ [

Properties
ÙÙ\ f
.
ÙÙf g
	Resources
ÙÙg p
.
ÙÙp q'
lblComunicationExceptionÙÙq â
)ÙÙâ ä
;ÙÙä ã
}
ıı 
catch
ˆˆ 
(
ˆˆ 
TimeoutException
ˆˆ '
ex
ˆˆ( *
)
ˆˆ* +
{
˜˜ 
HandleException
¯¯ #
(
¯¯# $
ex
¯¯$ &
,
¯¯& '

Properties
¯¯( 2
.
¯¯2 3
	Resources
¯¯3 <
.
¯¯< =$
lblFailToVerifyTheCode
¯¯= S
+
¯¯T U
$str
¯¯V Y
+
¯¯Z [

Properties
¯¯\ f
.
¯¯f g
	Resources
¯¯g p
.
¯¯p q
lblTimeException¯¯q Å
)¯¯Å Ç
;¯¯Ç É
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
¸¸< =$
lblFailToVerifyTheCode
¸¸= S
+
¸¸T U
$str
¸¸V Y
+
¸¸Z [

Properties
¸¸\ f
.
¸¸f g
	Resources
¸¸g p
.
¸¸p q"
lblWithoutConection¸¸q Ñ
)¸¸Ñ Ö
;¸¸Ö Ü
}
˝˝ 
catch
˛˛ 
(
˛˛ 
SocketException
˛˛ &
ex
˛˛' )
)
˛˛) *
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
GenericEmailIssue
ÄÄ= N
+
ÄÄO P
$str
ÄÄQ T
+
ÄÄU V

Properties
ÄÄW a
.
ÄÄa b
	Resources
ÄÄb k
.
ÄÄk l!
lblEndPointNotFound
ÄÄl 
)ÄÄ Ä
;ÄÄÄ Å
}
ÅÅ 
}
ÇÇ 
}
ÉÉ 	
private
ÖÖ 
void
ÖÖ %
ShowSpecificCodeMessage
ÖÖ ,
(
ÖÖ, -
int
ÖÖ- 0
succes
ÖÖ1 7
)
ÖÖ7 8
{
ÜÜ 	
if
áá 
(
áá 
succes
áá 
==
áá !
ExceptionDictionary
áá -
.
áá- .
NULL_PARAEMETER
áá. =
)
áá= >
{
àà !
DialogWindowManager
ââ #
.
ââ# $#
ShowInfoOrErrorWindow
ââ$ 9
(
ââ9 :

Properties
ââ: D
.
ââD E
	Resources
ââE N
.
ââN O
txbErrorTitle
ââO \
,
ââ\ ]

Properties
ââ^ h
.
ââh i
	Resources
ââi r
.
ââr s&
lblUserNameDoesNotExistââs ä
,ââä ã
Windowââå í
.ââí ì
	GetWindowââì ú
(ââú ù
thisââù °
)ââ° ¢
,ââ¢ £#
DialogWindowManagerââ§ ∑
.ââ∑ ∏
ERRORââ∏ Ω
)ââΩ æ
;ââæ ø
}
ää 
else
ãã 
if
ãã 
(
ãã 
succes
ãã 
==
ãã !
ExceptionDictionary
ãã 2
.
ãã2 3
ARGUMENT_NULL
ãã3 @
)
ãã@ A
{
åå !
DialogWindowManager
çç #
.
çç# $#
ShowInfoOrErrorWindow
çç$ 9
(
çç9 :

Properties
çç: D
.
ççD E
	Resources
ççE N
.
ççN O
txbErrorTitle
ççO \
,
çç\ ]

Properties
çç^ h
.
ççh i
	Resources
ççi r
.
ççr s)
lblThereIsnoCodeFoThisUserççs ç
,ççç é
Windowççè ï
.ççï ñ
	GetWindowççñ ü
(ççü †
thisçç† §
)çç§ •
,çç• ¶#
DialogWindowManagerççß ∫
.çç∫ ª
ERRORççª ¿
)çç¿ ¡
;çç¡ ¬
}
éé 
else
èè 
if
èè 
(
èè 
succes
èè 
==
èè !
ExceptionDictionary
èè 2
.
èè2 3
INVALID_OPERATION
èè3 D
)
èèD E
{
êê !
DialogWindowManager
ëë #
.
ëë# $#
ShowInfoOrErrorWindow
ëë$ 9
(
ëë9 :

Properties
ëë: D
.
ëëD E
	Resources
ëëE N
.
ëëN O
txbErrorTitle
ëëO \
,
ëë\ ]

Properties
ëë^ h
.
ëëh i
	Resources
ëëi r
.
ëër s"
lblWrongCodeEnteredëës Ü
,ëëÜ á
Windowëëà é
.ëëé è
	GetWindowëëè ò
(ëëò ô
thisëëô ù
)ëëù û
,ëëû ü#
DialogWindowManagerëë† ≥
.ëë≥ ¥
ERRORëë¥ π
)ëëπ ∫
;ëë∫ ª
}
íí 
else
ìì 
{
îî !
DialogWindowManager
ïï #
.
ïï# $#
ShowInfoOrErrorWindow
ïï$ 9
(
ïï9 :

Properties
ïï: D
.
ïïD E
	Resources
ïïE N
.
ïïN O
txbErrorTitle
ïïO \
,
ïï\ ]

Properties
ïï^ h
.
ïïh i
	Resources
ïïi r
.
ïïr s%
lblFailToVerifyTheCodeïïs â
,ïïâ ä
Windowïïã ë
.ïïë í
	GetWindowïïí õ
(ïïõ ú
thisïïú †
)ïï† °
,ïï° ¢#
DialogWindowManagerïï£ ∂
.ïï∂ ∑
ERRORïï∑ º
)ïïº Ω
;ïïΩ æ
}
ññ 
}
óó 	
private
ôô 
void
ôô +
ClickButtonConfirmNewPassword
ôô 2
(
ôô2 3
object
ôô3 9
sender
ôô: @
,
ôô@ A
RoutedEventArgs
ôôB Q
e
ôôR S
)
ôôS T
{
öö 	
try
õõ 
{
õõ *
ConsultUserInformationClient
úú ,%
consultInformationProxy
úú- D
=
úúE F
new
úúG J*
ConsultUserInformationClient
úúK g
(
úúg h
)
úúh i
;
úúi j
var
ùù 
userCosulted
ùù  
=
ùù! "%
consultInformationProxy
ùù# :
.
ùù: ;#
ConsultUserByUserName
ùù; P
(
ùùP Q
currentUserName
ùùQ `
)
ùù` a
;
ùùa b
if
ûû 
(
ûû 
userCosulted
ûû  
.
ûû  !
	CodeEvent
ûû! *
==
ûû+ -!
ExceptionDictionary
ûû. A
.
ûûA B
SUCCESFULL_EVENT
ûûB R
)
ûûR S
{
üü 
if
†† 
(
†† 
ALLOWED_VALUES
†† &
==
††' )
CheckPassword
††* 7
(
††7 8
userCosulted
††8 D
.
††D E
ObjectSaved
††E P
.
††P Q
EmailAddress
††Q ]
)
††] ^
)
††^ _
{
°° 
UserManagerClient
¢¢ )
userManagerClient
¢¢* ;
=
¢¢< =
new
¢¢> A
UserManagerClient
¢¢B S
(
¢¢S T
)
¢¢T U
;
¢¢U V
var
££ 
succes
££ "
=
££# $
userManagerClient
££% 6
.
££6 7 
UpdatePasswordUser
££7 I
(
££I J
currentUserName
££J Y
,
££Y Z
EncryptionClass
££Z i
.
££i j
EncryptPassword
££j y
(
££y z
psbPassword££z Ö
.££Ö Ü
Password££Ü é
.££é è
ToString££è ó
(££ó ò
)££ò ô
.££ô ö
Trim££ö û
(££û ü
)££ü †
)££† °
)££° ¢
;££¢ £
if
§§ 
(
§§ 
succes
§§ "
.
§§" #
	CodeEvent
§§# ,
==
§§- /!
ExceptionDictionary
§§0 C
.
§§C D
SUCCESFULL_EVENT
§§D T
)
§§T U
{
•• !
DialogWindowManager
¶¶ /
.
¶¶/ 0#
ShowInfoOrErrorWindow
¶¶0 E
(
¶¶E F

Properties
¶¶F P
.
¶¶P Q
	Resources
¶¶Q Z
.
¶¶Z [!
txbInformationTitle
¶¶[ n
,
¶¶n o

Properties
¶¶p z
.
¶¶z {
	Resources¶¶{ Ñ
.¶¶Ñ Ö+
lblPassWordUpdatedCorrectly¶¶Ö †
,¶¶† °
Window¶¶¢ ®
.¶¶® ©
	GetWindow¶¶© ≤
(¶¶≤ ≥
this¶¶≥ ∑
)¶¶∑ ∏
,¶¶∏ π#
DialogWindowManager¶¶∫ Õ
.¶¶Õ Œ
INFORMATION¶¶Œ Ÿ
)¶¶Ÿ ⁄
;¶¶⁄ €!
GoToPrincipalWindow
ßß /
(
ßß/ 0
)
ßß0 1
;
ßß1 2
}
®® 
else
©© 
{
™™ !
DialogWindowManager
´´ /
.
´´/ 0#
ShowInfoOrErrorWindow
´´0 E
(
´´E F

Properties
´´F P
.
´´P Q
	Resources
´´Q Z
.
´´Z [
txbErrorTitle
´´[ h
,
´´h i

Properties
´´j t
.
´´t u
	Resources
´´u ~
.
´´~ &
lblFailToUpdatePassword´´ ñ
+´´ó ò
$str´´ô ú
+´´ù û

Properties´´ü ©
.´´© ™
	Resources´´™ ≥
.´´≥ ¥"
lblFailToConenctBD´´¥ ∆
,´´∆ «
Window´´» Œ
.´´Œ œ
	GetWindow´´œ ÿ
(´´ÿ Ÿ
this´´Ÿ ›
)´´› ﬁ
,´´ﬁ ﬂ#
DialogWindowManager´´‡ Û
.´´Û Ù
ERROR´´Ù ˘
)´´˘ ˙
;´´˙ ˚
}
¨¨ 
}
≠≠ 
else
ÆÆ 
{
ØØ 
ShowPasswordRules
∞∞ )
(
∞∞) *
)
∞∞* +
;
∞∞+ ,
}
±± 
}
≤≤ 
else
≥≥ 
{
¥¥ !
DialogWindowManager
µµ '
.
µµ' (#
ShowInfoOrErrorWindow
µµ( =
(
µµ= >

Properties
µµ> H
.
µµH I
	Resources
µµI R
.
µµR S
txbErrorTitle
µµS `
,
µµ` a

Properties
µµb l
.
µµl m
	Resources
µµm v
.
µµv w&
lblFailToUpdatePasswordµµw é
+µµè ê
$strµµë î
+µµï ñ

Propertiesµµó °
.µµ° ¢
	Resourcesµµ¢ ´
.µµ´ ¨"
lblFailToConenctBDµµ¨ æ
,µµæ ø
Windowµµ¿ ∆
.µµ∆ «
	GetWindowµµ« –
(µµ– —
thisµµ— ’
)µµ’ ÷
,µµ÷ ◊#
DialogWindowManagerµµÿ Î
.µµÎ Ï
ERRORµµÏ Ò
)µµÒ Ú
;µµÚ Û
}
∂∂ 
}
∑∑ 
catch
∏∏ 
(
∏∏ '
EndpointNotFoundException
∏∏ ,
ex
∏∏- /
)
∏∏/ 0
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
∫∫8 9%
lblFailToUpdatePassword
∫∫9 P
+
∫∫Q R
$str
∫∫S V
+
∫∫X Y

Properties
∫∫Z d
.
∫∫d e
	Resources
∫∫e n
.
∫∫n o"
lblEndPointNotFound∫∫o Ç
)∫∫Ç É
;∫∫É Ñ
}
ºº 
catch
ΩΩ 
(
ΩΩ 1
#CommunicationObjectFaultedException
ΩΩ 6
ex
ΩΩ7 9
)
ΩΩ9 :
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
øø8 9%
lblFailToUpdatePassword
øø9 P
+
øøQ R
$str
øøS V
+
øøV W

Properties
øøX b
.
øøb c
	Resources
øøc l
.
øøl m'
lblComunicationExceptionøøm Ö
)øøÖ Ü
;øøÜ á
}
¿¿ 
catch
¡¡ 
(
¡¡ 
TimeoutException
¡¡ #
ex
¡¡$ &
)
¡¡& '
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
√√8 9%
lblFailToUpdatePassword
√√9 P
+
√√Q R
$str
√√S V
+
√√W X

Properties
√√Y c
.
√√c d
	Resources
√√d m
.
√√m n
lblTimeException
√√n ~
)
√√~ 
;√√ Ä
}
ƒƒ 
catch
≈≈ 
(
≈≈ $
CommunicationException
≈≈ )
ex
≈≈* ,
)
≈≈, -
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
««8 9%
lblFailToUpdatePassword
««9 P
+
««Q R
$str
««S V
+
««W X

Properties
««Y c
.
««c d
	Resources
««d m
.
««m n"
lblWithoutConection««n Å
)««Å Ç
;««Ç É
}
»» 
catch
…… 
(
…… 
SocketException
…… "
ex
……# %
)
……% &
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
GenericEmailIssue
ÀÀ9 J
+
ÀÀK L
$str
ÀÀM P
+
ÀÀQ R

Properties
ÀÀS ]
.
ÀÀ] ^
	Resources
ÀÀ^ g
.
ÀÀg h!
lblEndPointNotFound
ÀÀh {
)
ÀÀ{ |
;
ÀÀ| }
}
ÃÃ 
}
ÕÕ 	
private
œœ 
int
œœ 
CheckPassword
œœ !
(
œœ! "
string
œœ" (
email
œœ) .
)
œœ. /
{
–– 	
int
—— 
answer
—— 
=
—— 
ALLOWED_VALUES
—— '
;
——' (
try
““ 
{
”” '
RegularExpressionsLibrary
‘‘ )
regexInstance
‘‘* 7
=
‘‘8 9
new
‘‘: ='
RegularExpressionsLibrary
‘‘> W
(
‘‘W X
)
‘‘X Y
;
‘‘Y Z
string
’’ 
regexExpression
’’ &
;
’’& '
String
÷÷ 
passwordChecked
÷÷ &
=
÷÷' (
psbPassword
÷÷) 4
.
÷÷4 5
Password
÷÷5 =
.
÷÷= >
ToString
÷÷> F
(
÷÷F G
)
÷÷G H
.
÷÷H I
Trim
÷÷I M
(
÷÷M N
)
÷÷N O
;
÷÷O P
if
◊◊ 
(
◊◊ 
passwordChecked
◊◊ #
.
◊◊# $
Length
◊◊$ *
<
◊◊+ ,%
MINIMUN_PASSWORD_LENGTH
◊◊- D
||
◊◊E G
passwordChecked
◊◊H W
.
◊◊W X
Length
◊◊X ^
>
◊◊_ `%
MAXIMUM_PASSWORD_LENGTH
◊◊a x
)
◊◊x y
{
ÿÿ !
HighLightBrokenRule
ŸŸ '
(
ŸŸ' (
ListBoxRules
ŸŸ( 4
[
ŸŸ4 5
$num
ŸŸ5 6
]
ŸŸ6 7
)
ŸŸ7 8
;
ŸŸ8 9
answer
⁄⁄ 
=
⁄⁄ 
DISALLOWED_VALUES
⁄⁄ .
;
⁄⁄. /
}
€€ 
else
‹‹ 
{
›› 
ClearBrokenRule
ﬁﬁ #
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
ﬁﬁ4 5
}
ﬂﬂ 
regexExpression
‡‡ 
=
‡‡  !
regexInstance
‡‡" /
.
‡‡/ 0$
GetAt_LEAST_TWO_NUMBER
‡‡0 F
(
‡‡F G
)
‡‡G H
;
‡‡H I
if
·· 
(
·· 
!
·· 
Regex
·· 
.
·· 
IsMatch
·· "
(
··" #
passwordChecked
··# 2
,
··2 3
regexExpression
··4 C
,
··C D
RegexOptions
··E Q
.
··Q R

IgnoreCase
··R \
,
··\ ]
TimeSpan
··^ f
.
··f g
FromMilliseconds
··g w
(
··w x
$num
··x {
)
··{ |
)
··| }
)
··} ~
{
‚‚ !
HighLightBrokenRule
„„ '
(
„„' (
ListBoxRules
„„( 4
[
„„4 5
$num
„„5 6
]
„„6 7
)
„„7 8
;
„„8 9
answer
‰‰ 
=
‰‰ 
DISALLOWED_VALUES
‰‰ .
;
‰‰. /
}
ÂÂ 
else
ÊÊ 
{
ÁÁ 
ClearBrokenRule
ËË #
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
ËË4 5
}
ÈÈ 
if
ÍÍ 
(
ÍÍ 
!
ÍÍ !
GetSpecificResource
ÍÍ (
.
ÍÍ( )3
%HasAtLeastTwoSeparateUppercaseLetters
ÍÍ) N
(
ÍÍN O
passwordChecked
ÍÍO ^
)
ÍÍ^ _
)
ÍÍ_ `
{
ÎÎ !
HighLightBrokenRule
ÏÏ '
(
ÏÏ' (
ListBoxRules
ÏÏ( 4
[
ÏÏ4 5
$num
ÏÏ5 6
]
ÏÏ6 7
)
ÏÏ7 8
;
ÏÏ8 9
answer
ÌÌ 
=
ÌÌ 
DISALLOWED_VALUES
ÌÌ .
;
ÌÌ. /
}
ÓÓ 
else
ÔÔ 
{
 
ClearBrokenRule
ÒÒ #
(
ÒÒ# $
ListBoxRules
ÒÒ$ 0
[
ÒÒ0 1
$num
ÒÒ1 2
]
ÒÒ2 3
)
ÒÒ3 4
;
ÒÒ4 5
}
ÚÚ 
regexExpression
ÛÛ 
=
ÛÛ  !
regexInstance
ÛÛ" /
.
ÛÛ/ 0/
!GetAt_LEAST_ONE_SPECIAL_CHARACTER
ÛÛ0 Q
(
ÛÛQ R
)
ÛÛR S
;
ÛÛS T
if
ÙÙ 
(
ÙÙ 
!
ÙÙ 
Regex
ÙÙ 
.
ÙÙ 
IsMatch
ÙÙ "
(
ÙÙ" #
passwordChecked
ÙÙ# 2
,
ÙÙ2 3
regexExpression
ÙÙ4 C
,
ÙÙC D
RegexOptions
ÙÙE Q
.
ÙÙQ R

IgnoreCase
ÙÙR \
,
ÙÙ\ ]
TimeSpan
ÙÙ^ f
.
ÙÙf g
FromMilliseconds
ÙÙg w
(
ÙÙw x
$num
ÙÙx {
)
ÙÙ{ |
)
ÙÙ| }
)
ÙÙ} ~
{
ıı !
HighLightBrokenRule
ˆˆ '
(
ˆˆ' (
ListBoxRules
ˆˆ( 4
[
ˆˆ4 5
$num
ˆˆ5 6
]
ˆˆ6 7
)
ˆˆ7 8
;
ˆˆ8 9
answer
˜˜ 
=
˜˜ 
DISALLOWED_VALUES
˜˜ .
;
˜˜. /
}
¯¯ 
else
˘˘ 
{
˙˙ 
ClearBrokenRule
˚˚ #
(
˚˚# $
ListBoxRules
˚˚$ 0
[
˚˚0 1
$num
˚˚1 2
]
˚˚2 3
)
˚˚3 4
;
˚˚4 5
}
¸¸ 
regexExpression
˝˝ 
=
˝˝  !
regexInstance
˝˝" /
.
˝˝/ 0,
GetAt_LEAST_ONE_PUTUATION_MARK
˝˝0 N
(
˝˝N O
)
˝˝O P
;
˝˝P Q
if
˛˛ 
(
˛˛ 
!
˛˛ 
Regex
˛˛ 
.
˛˛ 
IsMatch
˛˛ "
(
˛˛" #
passwordChecked
˛˛# 2
,
˛˛2 3
regexExpression
˛˛4 C
,
˛˛C D
RegexOptions
˛˛E Q
.
˛˛Q R

IgnoreCase
˛˛R \
,
˛˛\ ]
TimeSpan
˛˛^ f
.
˛˛f g
FromMilliseconds
˛˛g w
(
˛˛w x
$num
˛˛x {
)
˛˛{ |
)
˛˛| }
)
˛˛} ~
{
ˇˇ !
HighLightBrokenRule
ÄÄ '
(
ÄÄ' (
ListBoxRules
ÄÄ( 4
[
ÄÄ4 5
$num
ÄÄ5 6
]
ÄÄ6 7
)
ÄÄ7 8
;
ÄÄ8 9
answer
ÅÅ 
=
ÅÅ 
DISALLOWED_VALUES
ÅÅ .
;
ÅÅ. /
}
ÇÇ 
else
ÉÉ 
{
ÑÑ 
ClearBrokenRule
ÖÖ #
(
ÖÖ# $
ListBoxRules
ÖÖ$ 0
[
ÖÖ0 1
$num
ÖÖ1 2
]
ÖÖ2 3
)
ÖÖ3 4
;
ÖÖ4 5
}
ÜÜ 
int
áá 
arrobaIndex
áá 
=
áá  !
(
áá" #
email
áá# (
.
áá( )
IndexOf
áá) 0
(
áá0 1
$char
áá1 4
)
áá4 5
!=
áá6 8
-
áá9 :
$num
áá: ;
)
áá; <
?
áá= >
email
áá? D
.
ááD E
IndexOf
ááE L
(
ááL M
$char
ááM P
)
ááP Q
:
ááR S
$num
ááT U
;
ááU V
if
àà 
(
àà 
email
àà 
.
àà 
Trim
àà 
(
àà 
)
àà  
.
àà  !
	Substring
àà! *
(
àà* +
$num
àà+ ,
,
àà, -
arrobaIndex
àà. 9
)
àà9 :
.
àà: ;
Equals
àà; A
(
ààA B
passwordChecked
ààB Q
)
ààQ R
)
ààR S
{
ââ !
HighLightBrokenRule
ää '
(
ää' (
ListBoxRules
ää( 4
[
ää4 5
$num
ää5 6
]
ää6 7
)
ää7 8
;
ää8 9
answer
ãã 
=
ãã 
DISALLOWED_VALUES
ãã .
;
ãã. /
}
åå 
else
çç 
{
éé 
ClearBrokenRule
èè #
(
èè# $
ListBoxRules
èè$ 0
[
èè0 1
$num
èè1 2
]
èè2 3
)
èè3 4
;
èè4 5
}
êê 
}
íí 
catch
ìì 
(
ìì (
RegexMatchTimeoutException
ìì -
ex
ìì. 0
)
ìì0 1
{
îî %
ExceptionHandlerForLogs
ïï '
.
ïï' (
LogException
ïï( 4
(
ïï4 5
ex
ïï5 7
,
ïï7 8!
ExceptionDictionary
ïï9 L
.
ïïL M
ERROR
ïïM R
)
ïïR S
;
ïïS T
answer
ññ 
=
ññ 
DISALLOWED_VALUES
ññ *
;
ññ* +
}
óó 
return
ôô 
answer
ôô 
;
ôô 
}
öö 	
private
úú 
void
úú !
HighLightBrokenRule
úú (
(
úú( )
Label
úú) .
missingRule
úú/ :
)
úú: ;
{
ùù 	
missingRule
ûû 
.
ûû 

Foreground
ûû "
=
ûû# $
Brushes
ûû% ,
.
ûû, -
Red
ûû- 0
;
ûû0 1
}
üü 	
private
†† 
void
†† 
ClearBrokenRule
†† $
(
††$ %
Label
††% *
missingRule
††+ 6
)
††6 7
{
°° 	
missingRule
¢¢ 
.
¢¢ 

Foreground
¢¢ "
=
¢¢# $
Brushes
¢¢% ,
.
¢¢, -
White
¢¢- 2
;
¢¢2 3
}
££ 	
private
•• 
void
•• $
ClickViewPasswordRules
•• +
(
••+ ,
object
••, 2
sender
••3 9
,
••9 :"
MouseButtonEventArgs
••; O
e
••P Q
)
••Q R
{
¶¶ 	
ShowPasswordRules
ßß 
(
ßß 
)
ßß 
;
ßß  
}
®® 	
private
™™ 
void
™™ 
ShowPasswordRules
™™ &
(
™™& '
)
™™' (
{
´´ 	
if
¨¨ 
(
¨¨ "
imgViewPasswordRules
¨¨ $
.
¨¨$ %

Visibility
¨¨% /
==
¨¨0 2

Visibility
¨¨3 =
.
¨¨= >
Visible
¨¨> E
)
¨¨E F
{
≠≠ 
brdPasswordRules
ÆÆ  
.
ÆÆ  !

Visibility
ÆÆ! +
=
ÆÆ, -

Visibility
ÆÆ. 8
.
ÆÆ8 9
Visible
ÆÆ9 @
;
ÆÆ@ A"
imgViewPasswordRules
ØØ $
.
ØØ$ %

Visibility
ØØ% /
=
ØØ0 1

Visibility
ØØ2 <
.
ØØ< =
Hidden
ØØ= C
;
ØØC D
}
∞∞ 
}
±± 	
private
≤≤ 
void
≤≤ %
ClickClosePasswordRules
≤≤ ,
(
≤≤, -
object
≤≤- 3
sender
≤≤4 :
,
≤≤: ;"
MouseButtonEventArgs
≤≤< P
e
≤≤Q R
)
≤≤R S
{
≥≥ 	
brdPasswordRules
¥¥ 
.
¥¥ 

Visibility
¥¥ '
=
¥¥( )

Visibility
¥¥* 4
.
¥¥4 5
Hidden
¥¥5 ;
;
¥¥; <"
imgViewPasswordRules
µµ  
.
µµ  !

Visibility
µµ! +
=
µµ, -

Visibility
µµ. 8
.
µµ8 9
Visible
µµ9 @
;
µµ@ A
}
∂∂ 	
private
∏∏ 
void
∏∏ 
ClickSeePassword
∏∏ %
(
∏∏% &
object
∏∏& ,
sender
∏∏- 3
,
∏∏3 4"
MouseButtonEventArgs
∏∏5 I
e
∏∏J K
)
∏∏K L
{
ππ 	
lblViewPassword
∫∫ 
.
∫∫ 
Content
∫∫ #
=
∫∫$ %
psbPassword
∫∫& 1
.
∫∫1 2
Password
∫∫2 :
.
∫∫: ;
ToString
∫∫; C
(
∫∫C D
)
∫∫D E
;
∫∫E F
psbPassword
ªª 
.
ªª 

Visibility
ªª "
=
ªª# $

Visibility
ªª% /
.
ªª/ 0
	Collapsed
ªª0 9
;
ªª9 :
lblViewPassword
ºº 
.
ºº 

Visibility
ºº &
=
ºº' (

Visibility
ºº) 3
.
ºº3 4
Visible
ºº4 ;
;
ºº; <
}
ΩΩ 	
private
øø 
void
øø #
OverLeaveHidePassword
øø *
(
øø* +
object
øø+ 1
sender
øø2 8
,
øø8 9
MouseEventArgs
øø: H
e
øøI J
)
øøJ K
{
¿¿ 	
if
¡¡ 
(
¡¡ 
lblViewPassword
¡¡ 
.
¡¡  
	IsVisible
¡¡  )
)
¡¡) *
{
¬¬ 
psbPassword
√√ 
.
√√ 

Visibility
√√ &
=
√√' (

Visibility
√√) 3
.
√√3 4
Visible
√√4 ;
;
√√; <
psbPassword
ƒƒ 
.
ƒƒ 
PasswordChar
ƒƒ (
=
ƒƒ) *
$char
ƒƒ+ .
;
ƒƒ. /
psbPassword
≈≈ 
.
≈≈ 
Password
≈≈ $
=
≈≈% &
(
≈≈' (
string
≈≈( .
)
≈≈. /
lblViewPassword
≈≈/ >
.
≈≈> ?
Content
≈≈? F
;
≈≈F G
lblViewPassword
∆∆ 
.
∆∆  

Visibility
∆∆  *
=
∆∆+ ,

Visibility
∆∆- 7
.
∆∆7 8
	Collapsed
∆∆8 A
;
∆∆A B
}
«« 
}
»» 	
private
ÀÀ 
void
ÀÀ 

StartTimer
ÀÀ 
(
ÀÀ  
)
ÀÀ  !
{
ÃÃ 	
leftTime
ÕÕ 
=
ÕÕ 
$num
ÕÕ 
;
ÕÕ 
timer
ŒŒ 
=
ŒŒ 
new
ŒŒ 
DispatcherTimer
ŒŒ '
(
ŒŒ' (
)
ŒŒ( )
;
ŒŒ) *
timer
œœ 
.
œœ 
Interval
œœ 
=
œœ 
TimeSpan
œœ %
.
œœ% &
FromSeconds
œœ& 1
(
œœ1 2
$num
œœ2 3
)
œœ3 4
;
œœ4 5
timer
–– 
.
–– 
Tick
–– 
+=
–– !
TickTimerResendCode
–– -
;
––- .
timer
—— 
.
—— 
Start
—— 
(
—— 
)
—— 
;
—— 
}
““ 	
private
‘‘ 
void
‘‘ !
TickTimerResendCode
‘‘ (
(
‘‘( )
object
‘‘) /
sender
‘‘0 6
,
‘‘6 7
	EventArgs
‘‘8 A
e
‘‘B C
)
‘‘C D
{
’’ 	
if
÷÷ 
(
÷÷ 
leftTime
÷÷ 
>
÷÷ 
$num
÷÷ 
)
÷÷ 
{
◊◊ 
leftTime
ÿÿ 
--
ÿÿ 
;
ÿÿ 
lblResendCode
ŸŸ 
.
ŸŸ 

Foreground
ŸŸ (
=
ŸŸ) *
new
ŸŸ+ .
SolidColorBrush
ŸŸ/ >
(
ŸŸ> ?
Colors
ŸŸ? E
.
ŸŸE F
	IndianRed
ŸŸF O
)
ŸŸO P
;
ŸŸP Q
lblResendCode
⁄⁄ 
.
⁄⁄ 
Content
⁄⁄ %
=
⁄⁄& '

Properties
⁄⁄( 2
.
⁄⁄2 3
	Resources
⁄⁄3 <
.
⁄⁄< =
lblResentCode
⁄⁄= J
+
⁄⁄K L
$str
⁄⁄M P
+
⁄⁄Q R
leftTime
⁄⁄S [
;
⁄⁄[ \
}
€€ 
else
‹‹ 
{
›› 
lblResendCode
ﬁﬁ 
.
ﬁﬁ 

Foreground
ﬁﬁ (
=
ﬁﬁ) *
new
ﬁﬁ+ .
SolidColorBrush
ﬁﬁ/ >
(
ﬁﬁ> ?
Colors
ﬁﬁ? E
.
ﬁﬁE F
ForestGreen
ﬁﬁF Q
)
ﬁﬁQ R
;
ﬁﬁR S
lblResendCode
ﬂﬂ 
.
ﬂﬂ 
Content
ﬂﬂ %
=
ﬂﬂ& '

Properties
ﬂﬂ( 2
.
ﬂﬂ2 3
	Resources
ﬂﬂ3 <
.
ﬂﬂ< =
lblResentCode
ﬂﬂ= J
+
ﬂﬂK L
$str
ﬂﬂM P
+
ﬂﬂQ R
leftTime
ﬂﬂS [
;
ﬂﬂ[ \
SetDefaultBotons
‡‡  
(
‡‡  !
)
‡‡! "
;
‡‡" #
timer
·· 
.
·· 
Stop
·· 
(
·· 
)
·· 
;
·· 
}
‚‚ 
}
„„ 	
private
ÂÂ 
void
ÂÂ 
SetDefaultBotons
ÂÂ %
(
ÂÂ% &
)
ÂÂ& '
{
ÊÊ 	 
bttConfirmUserName
ÁÁ 
.
ÁÁ 
	IsEnabled
ÁÁ (
=
ÁÁ) *
true
ÁÁ+ /
;
ÁÁ/ 0&
txbUserNameCreateAccount
ËË $
.
ËË$ %
	IsEnabled
ËË% .
=
ËË/ 0
true
ËË1 5
;
ËË5 6
}
ÈÈ 	
private
ÏÏ 
void
ÏÏ %
ClickButtonCancelSaving
ÏÏ ,
(
ÏÏ, -
object
ÏÏ- 3
sender
ÏÏ4 :
,
ÏÏ: ;
RoutedEventArgs
ÏÏ< K
e
ÏÏL M
)
ÏÏM N
{
ÌÌ 	
if
ÓÓ 
(
ÓÓ !
DialogWindowManager
ÓÓ #
.
ÓÓ# $$
ShowWindowConfirmation
ÓÓ$ :
(
ÓÓ: ;

Properties
ÓÓ; E
.
ÓÓE F
	Resources
ÓÓF O
.
ÓÓO P
txbWarningTitle
ÓÓP _
,
ÓÓ_ `

Properties
ÓÓa k
.
ÓÓk l
	Resources
ÓÓl u
.
ÓÓu v.
lblConfirmLeaveRecoveryPasswordÓÓv ï
,ÓÓï ñ
ApplicationÓÓó ¢
.ÓÓ¢ £
CurrentÓÓ£ ™
.ÓÓ™ ´

MainWindowÓÓ´ µ
)ÓÓµ ∂
)ÓÓ∂ ∑
{
ÔÔ !
GoToPrincipalWindow
 #
(
# $
)
$ %
;
% &
}
ÒÒ 
}
ÚÚ 	
private
ÙÙ 
void
ÙÙ !
GoToPrincipalWindow
ÙÙ (
(
ÙÙ( )
)
ÙÙ) *
{
ıı 	
if
ˆˆ 
(
ˆˆ 
timer
ˆˆ 
!=
ˆˆ 
null
ˆˆ 
)
ˆˆ 
{
˜˜ 
timer
˘˘ 
.
˘˘ 
Stop
˘˘ 
(
˘˘ 
)
˘˘ 
;
˘˘ 
}
˙˙ 
PrincipalPage
˚˚ 
principalPage
˚˚ '
=
˚˚( )
new
˚˚* -
(
˚˚- .
)
˚˚. /
;
˚˚/ 0
this
¸¸ 
.
¸¸ 
NavigationService
¸¸ "
.
¸¸" #
Navigate
¸¸# +
(
¸¸+ ,
principalPage
¸¸, 9
)
¸¸9 :
;
¸¸: ;
NavigationService
˝˝ 
.
˝˝ 
RemoveBackEntry
˝˝ -
(
˝˝- .
)
˝˝. /
;
˝˝/ 0
}
˛˛ 	
private
ÄÄ 
void
ÄÄ 
HandleException
ÄÄ $
(
ÄÄ$ %
	Exception
ÄÄ% .
ex
ÄÄ/ 1
,
ÄÄ1 2
string
ÄÄ3 9
errorMessage
ÄÄ: F
)
ÄÄF G
{
ÅÅ 	%
ExceptionHandlerForLogs
ÇÇ #
.
ÇÇ# $
LogException
ÇÇ$ 0
(
ÇÇ0 1
ex
ÇÇ1 3
,
ÇÇ3 4!
ExceptionDictionary
ÇÇ5 H
.
ÇÇH I
FATAL_EXCEPTION
ÇÇI X
)
ÇÇX Y
;
ÇÇY Z!
DialogWindowManager
ÉÉ 
.
ÉÉ  #
ShowInfoOrErrorWindow
ÉÉ  5
(
ÉÉ5 6

Properties
ÉÉ6 @
.
ÉÉ@ A
	Resources
ÉÉA J
.
ÉÉJ K
txbErrorTitle
ÉÉK X
,
ÉÉX Y
errorMessage
ÉÉZ f
,
ÉÉf g
Application
ÉÉh s
.
ÉÉs t
Current
ÉÉt {
.
ÉÉ{ |

MainWindowÉÉ| Ü
,ÉÉÜ á#
DialogWindowManagerÉÉà õ
.ÉÉõ ú
ERRORÉÉú °
)ÉÉ° ¢
;ÉÉ¢ £
}
ÑÑ 	
}
áá 
}àà ‰5
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
}[[ ¥®
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
;# $
public!! 
TeamChat!! 
(!! 
	GameBoard!! !
game!!" &
,!!& '
int!!( +
idTeam!!, 2
)!!2 3
{"" 	
InitializeComponent## 
(##  
)##  !
;##! "
this$$ 
.$$ 
	gameBoard$$ 
=$$ 
game$$ !
;$$! "
this%% 
.%% 

idTeamMate%% 
=%% 
idTeam%% $
;%%$ %
InstanceContext&& 
context&& #
=&&$ %
new&&& )
InstanceContext&&* 9
(&&9 :
this&&: >
)&&> ?
;&&? @
ChatForTeamsClient'' 
chatForTeamProxy'' /
=''0 1
new''2 5
ChatForTeamsClient''6 H
(''H I
context''I P
)''P Q
;''Q R
RegisterForCallBack(( 
(((  
chatForTeamProxy((  0
)((0 1
;((1 2
})) 	
public++ 
void++  
RenewCallBackChannel++ (
(++( )
)++) *
{,, 	
try-- 
{.. 
InstanceContext// 
context//  '
=//( )
new//* -
InstanceContext//. =
(//= >
this//> B
)//B C
;//C D
ChatForTeamsClient00 "
chatForTeamProxy00# 3
=004 5
new006 9
ChatForTeamsClient00: L
(00L M
context00M T
)00T U
;00U V
chatForTeamProxy11  
.11  !!
RenewTeamChatCallBack11! 6
(116 7
userSingleton117 D
.11D E
IdUser11E K
)11K L
;11L M
}22 
catch33 
(33 %
EndpointNotFoundException33 ,
ex33- /
)33/ 0
{44 
HandleException55 
(55  
ex55  "
,55" #

Properties55$ .
.55. /
	Resources55/ 8
.558 9%
lblFailRegistryToCallBack559 R
+55S T
$str55U Z
+55[ \

Properties55] g
.55g h
	Resources55h q
.55q r 
lblEndPointNotFound	55r Ö
)
55Ö Ü
;
55Ü á
}66 
catch77 
(77 /
#CommunicationObjectFaultedException77 6
ex777 9
)779 :
{88 
HandleException99 
(99  
ex99  "
,99" #

Properties99$ .
.99. /
	Resources99/ 8
.998 9%
lblFailRegistryToCallBack999 R
+99S T
$str99U Z
+99[ \

Properties99] g
.99g h
	Resources99h q
.99q r%
lblComunicationException	99r ä
)
99ä ã
;
99ã å
}:: 
catch;; 
(;; 
TimeoutException;; #
ex;;$ &
);;& '
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
lblTimeException	==r Ç
)
==Ç É
;
==É Ñ
}>> 
catch?? 
(?? "
CommunicationException?? )
ex??* ,
)??, -
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
.AAq r 
lblWithoutConection	AAr Ö
)
AAÖ Ü
;
AAÜ á
}BB 
catchCC 
(CC 
SocketExceptionCC "
exCC# %
)CC% &
{DD 
HandleExceptionEE 
(EE  
exEE  "
,EE" #

PropertiesEE$ .
.EE. /
	ResourcesEE/ 8
.EE8 9
GenericEmailIssueEE9 J
+EEK L
$strEEM P
+EEQ R

PropertiesEES ]
.EE] ^
	ResourcesEE^ g
.EEg h
lblEndPointNotFoundEEh {
)EE{ |
;EE| }
}FF 
}GG 	
privateII 
voidII 
RegisterForCallBackII (
(II( )
ChatForTeamsClientII) ;
chatForTeamProxyII< L
)IIL M
{JJ 	
tryKK 
{LL 
chatForTeamProxyMM  
.MM  !
RegisterForTeamChatMM! 4
(MM4 5
userSingletonMM5 B
.MMB C
IdUserMMC I
)MMI J
;MMJ K
}NN 
catchOO 
(OO %
EndpointNotFoundExceptionOO ,
exOO- /
)OO/ 0
{PP 
HandleExceptionQQ 
(QQ  
exQQ  "
,QQ" #

PropertiesQQ$ .
.QQ. /
	ResourcesQQ/ 8
.QQ8 9%
lblFailRegistryToCallBackQQ9 R
+QQS T
$strQQU Z
+QQ[ \

PropertiesQQ] g
.QQg h
	ResourcesQQh q
.QQq r 
lblEndPointNotFound	QQr Ö
)
QQÖ Ü
;
QQÜ á
}RR 
catchSS 
(SS /
#CommunicationObjectFaultedExceptionSS 6
exSS7 9
)SS9 :
{TT 
HandleExceptionUU 
(UU  
exUU  "
,UU" #

PropertiesUU$ .
.UU. /
	ResourcesUU/ 8
.UU8 9%
lblFailRegistryToCallBackUU9 R
+UUS T
$strUUU Z
+UU[ \

PropertiesUU] g
.UUg h
	ResourcesUUh q
.UUq r%
lblComunicationException	UUr ä
)
UUä ã
;
UUã å
}VV 
catchWW 
(WW 
TimeoutExceptionWW #
exWW$ &
)WW& '
{XX 
HandleExceptionYY 
(YY  
exYY  "
,YY" #

PropertiesYY$ .
.YY. /
	ResourcesYY/ 8
.YY8 9%
lblFailRegistryToCallBackYY9 R
+YYS T
$strYYU Z
+YY[ \

PropertiesYY] g
.YYg h
	ResourcesYYh q
.YYq r
lblTimeException	YYr Ç
)
YYÇ É
;
YYÉ Ñ
}ZZ 
catch[[ 
([[ "
CommunicationException[[ )
ex[[* ,
)[[, -
{\\ 
HandleException]] 
(]]  
ex]]  "
,]]" #

Properties]]$ .
.]]. /
	Resources]]/ 8
.]]8 9%
lblFailRegistryToCallBack]]9 R
+]]S T
$str]]U Z
+]][ \

Properties]]] g
.]]g h
	Resources]]h q
.]]q r 
lblWithoutConection	]]r Ö
)
]]Ö Ü
;
]]Ü á
}^^ 
catch__ 
(__ 
SocketException__ "
ex__# %
)__% &
{`` 
HandleExceptionaa 
(aa  
exaa  "
,aa" #

Propertiesaa$ .
.aa. /
	Resourcesaa/ 8
.aa8 9
GenericEmailIssueaa9 J
+aaK L
$straaM P
+aaQ R

PropertiesaaS ]
.aa] ^
	Resourcesaa^ g
.aag h
lblEndPointNotFoundaah {
)aa{ |
;aa| }
}bb 
}cc 	
privateee 
voidee 
ClickCloseChatee #
(ee# $
objectee$ *
senderee+ 1
,ee1 2 
MouseButtonEventArgsee3 G
eeeH I
)eeI J
{ff 	
	gameBoardgg 
.gg 
CloseLiveChatgg #
(gg# $
)gg$ %
;gg% &
}hh 	
privatejj 
voidjj 
ClickSendMessagejj %
(jj% &
objectjj& ,
senderjj- 3
,jj3 4 
MouseButtonEventArgsjj5 I
ejjJ K
)jjK L
{kk 	
tryll 
{mm 
stringnn 
messagenn 
=nn  
txbMessageToSendnn! 1
.nn1 2
Textnn2 6
;nn6 7
ifoo 
(oo 
!oo 
stringoo 
.oo 
IsNullOrEmptyoo )
(oo) *
messageoo* 1
)oo1 2
)oo2 3
{pp (
ChatForTeamsOperationsClientqq 0
chatForTeamProxyqq1 A
=qqB C
newqqD G
(qqG H
)qqH I
;qqI J
chatForTeamProxyrr $
.rr$ %
SendMessageTeamrr% 4
(rr4 5
userSingletonrr5 B
.rrB C
IdUserrrC I
,rrI J

idTeamMaterrK U
,rrU V
userSingletonrrW d
.rrd e
UserNamerre m
,rrm n
messagerro v
)rrv w
;rrw x
ChatMessageCardss #
chatMessageCardss$ 3
=ss4 5
newss6 9
ChatMessageCardss: I
(ssI J
userSingletonssJ W
.ssW X
UserNamessX `
,ss` a
messagessb i
)ssi j
;ssj k
chatMessageCardtt #
.tt# $
HorizontalAlignmenttt$ 7
=tt8 9
HorizontalAlignmenttt: M
.ttM N
RightttN S
;ttS T
stpChatuu 
.uu 
Childrenuu $
.uu$ %
Adduu% (
(uu( )
chatMessageCarduu) 8
)uu8 9
;uu9 :
txbMessageToSendvv $
.vv$ %
Textvv% )
=vv* +
stringvv, 2
.vv2 3
Emptyvv3 8
;vv8 9
}ww 
}xx 
catchyy 
(yy %
EndpointNotFoundExceptionyy ,
exyy- /
)yy/ 0
{zz #
ExceptionHandlerForLogs{{ '
.{{' (
LogException{{( 4
({{4 5
ex{{5 7
,{{7 8
ExceptionDictionary{{9 L
.{{L M
FATAL_EXCEPTION{{M \
){{\ ]
;{{] ^
stpChat|| 
.|| 
Children||  
.||  !
Add||! $
(||$ %
new||% (
ChatMessageCard||) 8
(||8 9

Properties||9 C
.||C D
	Resources||D M
.||M N
txbErrorTitle||N [
,||[ \

Properties||] g
.||g h
	Resources||h q
.||q r*
txbFailToSendOrReciveAMessage	||r è
)
||è ê
)
||ê ë
;
||ë í
}}} 
catch~~ 
(~~ /
#CommunicationObjectFaultedException~~ 6
ex~~7 9
)~~9 :
{ %
ExceptionHandlerForLogs
ÄÄ '
.
ÄÄ' (
LogException
ÄÄ( 4
(
ÄÄ4 5
ex
ÄÄ5 7
,
ÄÄ7 8!
ExceptionDictionary
ÄÄ9 L
.
ÄÄL M
FATAL_EXCEPTION
ÄÄM \
)
ÄÄ\ ]
;
ÄÄ] ^
stpChat
ÅÅ 
.
ÅÅ 
Children
ÅÅ  
.
ÅÅ  !
Add
ÅÅ! $
(
ÅÅ$ %
new
ÅÅ% (
ChatMessageCard
ÅÅ) 8
(
ÅÅ8 9

Properties
ÅÅ9 C
.
ÅÅC D
	Resources
ÅÅD M
.
ÅÅM N
txbErrorTitle
ÅÅN [
,
ÅÅ[ \

Properties
ÅÅ] g
.
ÅÅg h
	Resources
ÅÅh q
.
ÅÅq r,
txbFailToSendOrReciveAMessageÅÅr è
)ÅÅè ê
)ÅÅê ë
;ÅÅë í
}
ÇÇ 
catch
ÉÉ 
(
ÉÉ 
TimeoutException
ÉÉ #
ex
ÉÉ$ &
)
ÉÉ& '
{
ÑÑ %
ExceptionHandlerForLogs
ÖÖ '
.
ÖÖ' (
LogException
ÖÖ( 4
(
ÖÖ4 5
ex
ÖÖ5 7
,
ÖÖ7 8!
ExceptionDictionary
ÖÖ9 L
.
ÖÖL M
FATAL_EXCEPTION
ÖÖM \
)
ÖÖ\ ]
;
ÖÖ] ^
stpChat
ÜÜ 
.
ÜÜ 
Children
ÜÜ  
.
ÜÜ  !
Add
ÜÜ! $
(
ÜÜ$ %
new
ÜÜ% (
ChatMessageCard
ÜÜ) 8
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
ÜÜ[ \

Properties
ÜÜ] g
.
ÜÜg h
	Resources
ÜÜh q
.
ÜÜq r,
txbFailToSendOrReciveAMessageÜÜr è
)ÜÜè ê
)ÜÜê ë
;ÜÜë í
}
áá 
catch
àà 
(
àà $
CommunicationException
àà )
ex
àà* ,
)
àà, -
{
ââ %
ExceptionHandlerForLogs
ää '
.
ää' (
LogException
ää( 4
(
ää4 5
ex
ää5 7
,
ää7 8!
ExceptionDictionary
ää9 L
.
ääL M
FATAL_EXCEPTION
ääM \
)
ää\ ]
;
ää] ^
stpChat
ãã 
.
ãã 
Children
ãã  
.
ãã  !
Add
ãã! $
(
ãã$ %
new
ãã% (
ChatMessageCard
ãã) 8
(
ãã8 9

Properties
ãã9 C
.
ããC D
	Resources
ããD M
.
ããM N
txbErrorTitle
ããN [
,
ãã[ \

Properties
ãã] g
.
ããg h
	Resources
ããh q
.
ããq r,
txbFailToSendOrReciveAMessageããr è
)ããè ê
)ããê ë
;ããë í
}
åå 
catch
çç 
(
çç 
SocketException
çç "
ex
çç# %
)
çç% &
{
éé %
ExceptionHandlerForLogs
èè '
.
èè' (
LogException
èè( 4
(
èè4 5
ex
èè5 7
,
èè7 8!
ExceptionDictionary
èè9 L
.
èèL M
FATAL_EXCEPTION
èèM \
)
èè\ ]
;
èè] ^
stpChat
êê 
.
êê 
Children
êê  
.
êê  !
Add
êê! $
(
êê$ %
new
êê% (
ChatMessageCard
êê) 8
(
êê8 9

Properties
êê9 C
.
êêC D
	Resources
êêD M
.
êêM N
txbErrorTitle
êêN [
,
êê[ \

Properties
êê] g
.
êêg h
	Resources
êêh q
.
êêq r,
txbFailToSendOrReciveAMessageêêr è
)êêè ê
)êêê ë
;êêë í
}
ëë 
}
íí 	
public
îî 
void
îî $
ReceiveMessageTeamChat
îî *
(
îî* +/
!GenericClassOfMessageChatxY0a3WX4
îî+ L
message
îîM T
)
îîT U
{
ïï 	
try
ññ 
{
óó 
if
òò 
(
òò 
message
òò 
.
òò 
	CodeEvent
òò %
==
òò& (

Exceptions
òò) 3
.
òò3 4!
ExceptionDictionary
òò4 G
.
òòG H
SUCCESFULL_EVENT
òòH X
)
òòX Y
{
ôô 
ChatMessageCard
öö #
chatMessageCard
öö$ 3
=
öö4 5
new
öö6 9
ChatMessageCard
öö: I
(
ööI J
message
ööJ Q
.
ööQ R
ObjectSaved
ööR ]
.
öö] ^
UserName
öö^ f
,
ööf g
message
ööh o
.
ööo p
ObjectSaved
ööp {
.
öö{ |
MessageToSendöö| â
)ööâ ä
;ööä ã
chatMessageCard
õõ #
.
õõ# $!
HorizontalAlignment
õõ$ 7
=
õõ8 9!
HorizontalAlignment
õõ: M
.
õõM N
Right
õõN S
;
õõS T
stpChat
úú 
.
úú 
Children
úú $
.
úú$ %
Add
úú% (
(
úú( )
chatMessageCard
úú) 8
)
úú8 9
;
úú9 :
}
ùù 
}
ûû 
catch
üü 
(
üü '
EndpointNotFoundException
üü ,
ex
üü- /
)
üü/ 0
{
†† %
ExceptionHandlerForLogs
°° '
.
°°' (
LogException
°°( 4
(
°°4 5
ex
°°5 7
,
°°7 8!
ExceptionDictionary
°°9 L
.
°°L M
FATAL_EXCEPTION
°°M \
)
°°\ ]
;
°°] ^
stpChat
¢¢ 
.
¢¢ 
Children
¢¢  
.
¢¢  !
Add
¢¢! $
(
¢¢$ %
new
¢¢% (
ChatMessageCard
¢¢) 8
(
¢¢8 9

Properties
¢¢9 C
.
¢¢C D
	Resources
¢¢D M
.
¢¢M N
txbErrorTitle
¢¢N [
,
¢¢[ \

Properties
¢¢] g
.
¢¢g h
	Resources
¢¢h q
.
¢¢q r,
txbFailToSendOrReciveAMessage¢¢r è
)¢¢è ê
)¢¢ê ë
;¢¢ë í
}
££ 
catch
§§ 
(
§§ 1
#CommunicationObjectFaultedException
§§ 6
ex
§§7 9
)
§§9 :
{
•• %
ExceptionHandlerForLogs
¶¶ '
.
¶¶' (
LogException
¶¶( 4
(
¶¶4 5
ex
¶¶5 7
,
¶¶7 8!
ExceptionDictionary
¶¶9 L
.
¶¶L M
FATAL_EXCEPTION
¶¶M \
)
¶¶\ ]
;
¶¶] ^
stpChat
ßß 
.
ßß 
Children
ßß  
.
ßß  !
Add
ßß! $
(
ßß$ %
new
ßß% (
ChatMessageCard
ßß) 8
(
ßß8 9

Properties
ßß9 C
.
ßßC D
	Resources
ßßD M
.
ßßM N
txbErrorTitle
ßßN [
,
ßß[ \

Properties
ßß] g
.
ßßg h
	Resources
ßßh q
.
ßßq r,
txbFailToSendOrReciveAMessageßßr è
)ßßè ê
)ßßê ë
;ßßë í
}
®® 
catch
©© 
(
©© 
TimeoutException
©© #
ex
©©$ &
)
©©& '
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
´´] ^
stpChat
¨¨ 
.
¨¨ 
Children
¨¨  
.
¨¨  !
Add
¨¨! $
(
¨¨$ %
new
¨¨% (
ChatMessageCard
¨¨) 8
(
¨¨8 9

Properties
¨¨9 C
.
¨¨C D
	Resources
¨¨D M
.
¨¨M N
txbErrorTitle
¨¨N [
,
¨¨[ \

Properties
¨¨] g
.
¨¨g h
	Resources
¨¨h q
.
¨¨q r,
txbFailToSendOrReciveAMessage¨¨r è
)¨¨è ê
)¨¨ê ë
;¨¨ë í
}
≠≠ 
catch
ÆÆ 
(
ÆÆ $
CommunicationException
ÆÆ )
ex
ÆÆ* ,
)
ÆÆ, -
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
∞∞] ^
stpChat
±± 
.
±± 
Children
±±  
.
±±  !
Add
±±! $
(
±±$ %
new
±±% (
ChatMessageCard
±±) 8
(
±±8 9

Properties
±±9 C
.
±±C D
	Resources
±±D M
.
±±M N
txbErrorTitle
±±N [
,
±±[ \

Properties
±±] g
.
±±g h
	Resources
±±h q
.
±±q r,
txbFailToSendOrReciveAMessage±±r è
)±±è ê
)±±ê ë
;±±ë í
}
≤≤ 
catch
≥≥ 
(
≥≥ 
SocketException
≥≥ "
ex
≥≥# %
)
≥≥% &
{
¥¥ %
ExceptionHandlerForLogs
µµ '
.
µµ' (
LogException
µµ( 4
(
µµ4 5
ex
µµ5 7
,
µµ7 8!
ExceptionDictionary
µµ9 L
.
µµL M
FATAL_EXCEPTION
µµM \
)
µµ\ ]
;
µµ] ^
stpChat
∂∂ 
.
∂∂ 
Children
∂∂  
.
∂∂  !
Add
∂∂! $
(
∂∂$ %
new
∂∂% (
ChatMessageCard
∂∂) 8
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
∂∂[ \

Properties
∂∂] g
.
∂∂g h
	Resources
∂∂h q
.
∂∂q r,
txbFailToSendOrReciveAMessage∂∂r è
)∂∂è ê
)∂∂ê ë
;∂∂ë í
}
∑∑ 
}
∏∏ 	
private
∫∫ 
void
∫∫ 
HandleException
∫∫ $
(
∫∫$ %
	Exception
∫∫% .
ex
∫∫/ 1
,
∫∫1 2
string
∫∫3 9
errorMessage
∫∫: F
)
∫∫F G
{
ªª 	%
ExceptionHandlerForLogs
ºº #
.
ºº# $
LogException
ºº$ 0
(
ºº0 1
ex
ºº1 3
,
ºº3 4!
ExceptionDictionary
ºº5 H
.
ººH I
FATAL_EXCEPTION
ººI X
)
ººX Y
;
ººY Z!
DialogWindowManager
ΩΩ 
.
ΩΩ  #
ShowInfoOrErrorWindow
ΩΩ  5
(
ΩΩ5 6

Properties
ΩΩ6 @
.
ΩΩ@ A
	Resources
ΩΩA J
.
ΩΩJ K
txbErrorTitle
ΩΩK X
,
ΩΩX Y
errorMessage
ΩΩZ f
,
ΩΩf g
Application
ΩΩh s
.
ΩΩs t
Current
ΩΩt {
.
ΩΩ{ |

MainWindowΩΩ| Ü
,ΩΩÜ á#
DialogWindowManagerΩΩà õ
.ΩΩõ ú
ERRORΩΩú °
)ΩΩ° ¢
;ΩΩ¢ £
}
ææ 	
}
¿¿ 
}¡¡ Ω
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
}99 ÷_
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
vartt 
heartbeatClienttt 
=tt  !
newtt" %
HeartBeatClienttt& 5
(tt5 6
)tt6 7
;tt7 8
heartbeatTimeruu 
=uu 
newuu  
Systemuu! '
.uu' (
	Threadinguu( 1
.uu1 2
Timeruu2 7
(uu7 8
stateuu8 =
=>uu> @
{uuA B
tryvv 
{ww 
heartbeatClientxx #
.xx# $
	Heartbeatxx$ -
(xx- .
)xx. /
;xx/ 0
}yy 
catchzz 
(zz (
AddressAccessDeniedExceptionzz 3
exzz4 6
)zz6 7
{{{ #
ExceptionHandlerForLogs|| +
.||+ ,
LogException||, 8
(||8 9
ex||9 ;
,||; <
ExceptionDictionary||= P
.||P Q
FATAL_EXCEPTION||Q `
)||` a
;||a b
}~~ 
catch 
( 
SocketException &
ex' )
)) *
{
ÄÄ %
ExceptionHandlerForLogs
ÅÅ +
.
ÅÅ+ ,
LogException
ÅÅ, 8
(
ÅÅ8 9
ex
ÅÅ9 ;
,
ÅÅ; <!
ExceptionDictionary
ÅÅ= P
.
ÅÅP Q
FATAL_EXCEPTION
ÅÅQ `
)
ÅÅ` a
;
ÅÅa b
}
ÉÉ 
catch
ÑÑ 
(
ÑÑ '
EndpointNotFoundException
ÑÑ 0
ex
ÑÑ1 3
)
ÑÑ3 4
{
ÖÖ %
ExceptionHandlerForLogs
ÜÜ +
.
ÜÜ+ ,
LogException
ÜÜ, 8
(
ÜÜ8 9
ex
ÜÜ9 ;
,
ÜÜ; <!
ExceptionDictionary
ÜÜ= P
.
ÜÜP Q
FATAL_EXCEPTION
ÜÜQ `
)
ÜÜ` a
;
ÜÜa b
}
àà 
catch
ââ 
(
ââ 1
#CommunicationObjectFaultedException
ââ :
ex
ââ; =
)
ââ= >
{
ää %
ExceptionHandlerForLogs
ãã +
.
ãã+ ,
LogException
ãã, 8
(
ãã8 9
ex
ãã9 ;
,
ãã; <!
ExceptionDictionary
ãã= P
.
ããP Q
FATAL_EXCEPTION
ããQ `
)
ãã` a
;
ããa b
}
åå 
catch
çç 
(
çç 
TimeoutException
çç '
ex
çç( *
)
çç* +
{
éé %
ExceptionHandlerForLogs
èè +
.
èè+ ,
LogException
èè, 8
(
èè8 9
ex
èè9 ;
,
èè; <!
ExceptionDictionary
èè= P
.
èèP Q
FATAL_EXCEPTION
èèQ `
)
èè` a
;
èèa b
}
êê 
catch
ëë 
(
ëë $
CommunicationException
ëë -
ex
ëë. 0
)
ëë0 1
{
íí %
ExceptionHandlerForLogs
ìì +
.
ìì+ ,
LogException
ìì, 8
(
ìì8 9
ex
ìì9 ;
,
ìì; <!
ExceptionDictionary
ìì= P
.
ììP Q
FATAL_EXCEPTION
ììQ `
)
ìì` a
;
ììa b
}
îî 
}
ïï 
,
ïï 
null
ïï 
,
ïï 
TimeSpan
ïï !
.
ïï! "
Zero
ïï" &
,
ïï& '
TimeSpan
ïï( 0
.
ïï0 1
FromSeconds
ïï1 <
(
ïï< =
$num
ïï= ?
)
ïï? @
)
ïï@ A
;
ïïA B
}
ññ 	
private
òò 
static
òò 
void
òò 
StopHeartBeat
òò )
(
òò) *
)
òò* +
{
ôô 	
try
öö 
{
õõ 
heartbeatTimer
úú 
?
úú 
.
úú  
Change
úú  &
(
úú& '
Timeout
úú' .
.
úú. /
Infinite
úú/ 7
,
úú7 8
Timeout
úú9 @
.
úú@ A
Infinite
úúA I
)
úúI J
;
úúJ K
heartbeatTimer
ùù 
?
ùù 
.
ùù  
Dispose
ùù  '
(
ùù' (
)
ùù( )
;
ùù) *
}
ûû 
catch
ûû 
(
ûû %
ObjectDisposedException
ûû *
ex
ûû+ -
)
ûû- .
{
üü %
ExceptionHandlerForLogs
†† '
.
††' (
LogException
††( 4
(
††4 5
ex
††5 7
,
††7 8!
ExceptionDictionary
††9 L
.
††L M
FATAL_EXCEPTION
††M \
)
††\ ]
;
††] ^
}
°° 
}
¢¢ 	
}
¶¶ 
}ßß ß
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
} ÃM
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
private 

Dictionary 
< 
string !
,! "
int# &
>& '
imageIdMappings( 7
;7 8
public 
ProfileDataConsult !
(! "
)" #
{ 	
InitializeComponent 
(  
)  !
;! "#
InitializeImageMappings #
(# $
)$ %
;% &

ImagenInit   
(   
)   
;   
DisplayUserInfo!! 
(!! 
)!! 
;!! 
}"" 	
public$$ 
void$$ 
DisplayUserInfo$$ $
($$$ %
)$$% &
{%% 	
UserSingleton&& 
userSingleton&& '
=&&( )
UserSingleton&&* 7
.&&7 8
GetMainUser&&8 C
(&&C D
)&&D E
;&&E F"
lblUserNameEditAccount'' "
.''" #
Content''# *
=''+ ,
userSingleton''- :
.'': ;
UserName''; C
;''C D
lblNameEditAccount(( 
.(( 
Content(( &
=((' (
userSingleton(() 6
.((6 7
Name((7 ;
;((; < 
lblAddresEditAccount))  
.))  !
Content))! (
=))) *
userSingleton))+ 8
.))8 9
Email))9 >
;))> ?
}** 	
private,, 
void,, $
ClickEditUserInformation,, -
(,,- .
object,,. 4
sender,,5 ;
,,,; <
System,,= C
.,,C D
Windows,,D K
.,,K L
Input,,L Q
.,,Q R 
MouseButtonEventArgs,,R f
e,,g h
),,h i
{-- 	
EditUserProfile.. 
editUserProfilePage.. /
=..0 1
new..2 5
EditUserProfile..6 E
(..E F
)..F G
;..G H
this// 
.// 
NavigationService// "
.//" #
Navigate//# +
(//+ ,
editUserProfilePage//, ?
)//? @
;//@ A
NavigationService00 
.00 
RemoveBackEntry00 -
(00- .
)00. /
;00/ 0
}11 	
private33 
void33 
ClickSingOut33 !
(33! "
object33" (
sender33) /
,33/ 0
System331 7
.337 8
Windows338 ?
.33? @
Input33@ E
.33E F 
MouseButtonEventArgs33F Z
e33[ \
)33\ ]
{44 	
MainMenu55 
mainMenuPage55 !
=55" #
new55$ '
MainMenu55( 0
(550 1
)551 2
;552 3
this66 
.66 
NavigationService66 "
.66" #
Navigate66# +
(66+ ,
mainMenuPage66, 8
)668 9
;669 :
NavigationService77 
.77 
RemoveBackEntry77 -
(77- .
)77. /
;77/ 0
}88 	
private99 
void99 #
InitializeImageMappings99 ,
(99, -
)99- .
{:: 	
imageIdMappings;; 
=;; 
new;; !

Dictionary;;" ,
<;;, -
string;;- 3
,;;3 4
int;;5 8
>;;8 9
{<< 
{== 
$str== 
,== 
$num== 
}==  
,==  !
{>> 
$str>> 
,>>  
$num>>! "
}>># $
,>>$ %
{?? 
$str?? 
,?? 
$num?? 
}?? 
,??  
{@@ 
$str@@ 
,@@ 
$num@@ 
}@@ 
,@@ 
{AA 
$strAA 
,AA 
$numAA 
}AA 
,AA 
{BB 
$strBB 
,BB 
$numBB 
}BB  !
,BB! "
{CC 
$strCC 
,CC 
$numCC 
}CC  
}DD 
;DD 
}EE 	
privateFF 
voidFF 

ImagenInitFF 
(FF  
)FF  !
{GG 	
tryHH 
{II 
intJJ 
idPlayerJJ 
=JJ 
UserSingletonJJ ,
.JJ, -
GetMainUserJJ- 8
(JJ8 9
)JJ9 :
.JJ: ;
IdPlayerJJ; C
;JJC D(
ConsultUserInformationClientKK ,#
consultInformationProxyKK- D
=KKE F
newKKG J(
ConsultUserInformationClientKKK g
(KKg h
)KKh i
;KKi j
varLL 

playerInfoLL 
=LL  #
consultInformationProxyLL! 8
.LL8 9
ConsultPlayerByIdLL9 J
(LLJ K
idPlayerLLK S
)LLS T
;LLT U#
consultInformationProxyMM '
.MM' (
CloseMM( -
(MM- .
)MM. /
;MM/ 0
ifNN 
(NN 

playerInfoNN 
.NN 
	CodeEventNN (
==NN) +
ExceptionDictionaryNN, ?
.NN? @
SUCCESFULL_EVENTNN@ P
&&NNQ S

playerInfoNNT ^
.NN^ _
ObjectSavedNN_ j
!=NNk m
nullNNn r
)NNr s
{OO 
intPP 
imageIdPP 
=PP  !

playerInfoPP" ,
.PP, -
ObjectSavedPP- 8
.PP8 9
IdActualAvatarPP9 G
;PPG H
stringQQ 
	imageNameQQ $
=QQ% &
imageIdMappingsQQ' 6
.QQ6 7
FirstOrDefaultQQ7 E
(QQE F
xQQF G
=>QQH J
xQQK L
.QQL M
ValueQQM R
==QQS U
imageIdQQV ]
)QQ] ^
.QQ^ _
KeyQQ_ b
;QQb c
ifRR 
(RR 
!RR 
stringRR 
.RR  
IsNullOrEmptyRR  -
(RR- .
	imageNameRR. 7
)RR7 8
)RR8 9
{SS 
BitmapTT 
bmpTT "
=TT# $
(TT% &
BitmapTT& ,
)TT, -

PropertiesTT- 7
.TT7 8
ResourcesImageTT8 F
.TTF G
ResourceManagerTTG V
.TTV W
	GetObjectTTW `
(TT` a
	imageNameTTa j
)TTj k
;TTk l
BitmapSourceVV $
bmpImageVV% -
=VV. /
ImagingVV0 7
.VV7 8)
CreateBitmapSourceFromHBitmapVV8 U
(VVU V
bmpWW 
.WW  

GetHbitmapWW  *
(WW* +
)WW+ ,
,WW, -
IntPtrXX "
.XX" #
ZeroXX# '
,XX' (
	Int32RectYY %
.YY% &
EmptyYY& +
,YY+ ,
BitmapSizeOptionsZZ -
.ZZ- .
FromEmptyOptionsZZ. >
(ZZ> ?
)ZZ? @
)[[ 
;[[ 
imageProfile]] $
.]]$ %
Source]]% +
=]], -
bmpImage]]. 6
;]]6 7
}^^ 
}`` 
}aa 
catchbb 
(bb %
EndpointNotFoundExceptionbb ,
exbb- /
)bb/ 0
{cc 
HandleExceptiondd 
(dd  
exdd  "
,dd" #

Propertiesdd$ .
.dd. /
	Resourcesdd/ 8
.dd8 9
lblEndPointNotFounddd9 L
)ddL M
;ddM N
}ee 
catchff 
(ff /
#CommunicationObjectFaultedExceptionff 6
exff7 9
)ff9 :
{gg 
HandleExceptionhh 
(hh  
exhh  "
,hh" #

Propertieshh$ .
.hh. /
	Resourceshh/ 8
.hh8 9$
lblComunicationExceptionhh9 Q
)hhQ R
;hhR S
}ii 
catchjj 
(jj 
TimeoutExceptionjj #
exjj$ &
)jj& '
{kk 
HandleExceptionll 
(ll  
exll  "
,ll" #

Propertiesll$ .
.ll. /
	Resourcesll/ 8
.ll8 9
lblTimeExceptionll9 I
)llI J
;llJ K
}mm 
catchnn 
(nn "
CommunicationExceptionnn )
exnn* ,
)nn, -
{oo 
HandleExceptionpp 
(pp  
expp  "
,pp" #

Propertiespp$ .
.pp. /
	Resourcespp/ 8
.pp8 9
lblWithoutConectionpp9 L
)ppL M
;ppM N
}qq 
catchrr 
(rr 
SocketExceptionrr "
exrr# %
)rr% &
{ss 
HandleExceptiontt 
(tt  
extt  "
,tt" #

Propertiestt$ .
.tt. /
	Resourcestt/ 8
.tt8 9
GenericEmailIssuett9 J
)ttJ K
;ttK L
}uu 
}vv 	
privateww 
voidww 
HandleExceptionww $
(ww$ %
	Exceptionww% .
exww/ 1
,ww1 2
stringww3 9
errorMessageww: F
)wwF G
{xx 	#
ExceptionHandlerForLogsyy #
.yy# $
LogExceptionyy$ 0
(yy0 1
exyy1 3
,yy3 4
ExceptionDictionaryyy5 H
.yyH I
FATAL_EXCEPTIONyyI X
)yyX Y
;yyY Z
DialogWindowManagerzz 
.zz  !
ShowInfoOrErrorWindowzz  5
(zz5 6

Propertieszz6 @
.zz@ A
	ResourceszzA J
.zzJ K
txbErrorTitlezzK X
,zzX Y
errorMessagezzZ f
,zzf g
Applicationzzh s
.zzs t
Currentzzt {
.zz{ |

MainWindow	zz| Ü
,
zzÜ á!
DialogWindowManager
zzà õ
.
zzõ ú
ERROR
zzú °
)
zz° ¢
;
zz¢ £
}{{ 	
}|| 
}}} ÀÎ
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
;6 7
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
;^^a b
try__ 
{`` 
ifaa 
(aa 
(aa %
regularExpressionsLibraryaa .
.aa. /$
ValidationTextBoxRegexesaa/ G
.aaG H
TryGetValueaaH S
(aaS T
currentTextBoxaaT b
.aab c
Nameaac g
,aag h
outaai l
stringaam s
regexaat y
)aay z
)aaz {
&&bb 
!bb 
Regexbb 
.bb 
IsMatchbb  
(bb  !
(bb! "
currentTextBoxbb" 0
.bb0 1
Textbb1 5
+bb6 7
ebb8 9
.bb9 :
Textbb: >
)bb> ?
,bb? @
regexbbA F
,bbF G
RegexOptionsbbH T
.bbT U

IgnoreCasebbU _
,bb_ `
TimeSpanbba i
.bbi j
FromMillisecondsbbj z
(bbz {
$numbb{ ~
)bb~ 
)	bb Ä
)
bbÄ Å
{cc 
edd 
.dd 
Handleddd 
=dd 
truedd  $
;dd$ %
}ee 
}ff 
catchgg 
(gg &
RegexMatchTimeoutExceptiongg -
exgg. 0
)gg0 1
{hh #
ExceptionHandlerForLogsii '
.ii' (
LogExceptionii( 4
(ii4 5
exii5 7
,ii7 8
ExceptionDictionaryii9 L
.iiL M
ERRORiiM R
)iiR S
;iiS T
ejj 
.jj 
Handledjj 
=jj 
truejj  
;jj  !
}kk 
catchll 
(ll !
ArgumentNullExceptionll (
exll) +
)ll+ ,
{mm #
ExceptionHandlerForLogsnn '
.nn' (
LogExceptionnn( 4
(nn4 5
exnn5 7
,nn7 8
ExceptionDictionarynn9 L
.nnL M
ERRORnnM R
)nnR S
;nnS T
eoo 
.oo 
Handledoo 
=oo 
trueoo  
;oo  !
}pp 
}qq 	
privatess 
voidss 
EntryTextBoxPastess &
(ss& '
objectss' -
senderss. 4
,ss4 5
KeyEventArgsss6 B
essC D
)ssD E
{tt 	
ifuu 
(uu 
(uu 
Keyboarduu 
.uu 
	Modifiersuu #
&uu$ %
ModifierKeysuu& 2
.uu2 3
Controluu3 :
)uu: ;
==uu< >
ModifierKeysuu? K
.uuK L
ControluuL S
&&uuT V
(uuW X
euuX Y
.uuY Z
KeyuuZ ]
==uu^ `
Keyuua d
.uud e
Vuue f
)uuf g
)uug h
{vv 
eww 
.ww 
Handledww 
=ww 
trueww  $
;ww$ %
}xx 
}yy 	
private{{ 
void{{ 
CreateRuleLabels{{ %
({{% &
){{& '
{|| 	
Label}} 
PasswordLengthRule}} $
=}}% &
new}}' *
Label}}+ 0
(}}0 1
)}}1 2
;}}2 3
PasswordLengthRule~~ 
.~~ 
Content~~ &
=~~' (

Properties~~) 3
.~~3 4
	Resources~~4 =
.~~= >!
lblPassLengthRuleDesc~~> S
;~~S T
PasswordLengthRule 
. 

Foreground )
=* +
Brushes, 3
.3 4
White4 9
;9 : 
PasswordLengthRule
ÄÄ 
.
ÄÄ 
FontSize
ÄÄ '
=
ÄÄ( )
$num
ÄÄ* ,
;
ÄÄ, -
Label
ÅÅ !
PasswordNumbersRule
ÅÅ %
=
ÅÅ& '
new
ÅÅ( +
Label
ÅÅ, 1
(
ÅÅ1 2
)
ÅÅ2 3
;
ÅÅ3 4!
PasswordNumbersRule
ÇÇ 
.
ÇÇ  
Content
ÇÇ  '
=
ÇÇ( )

Properties
ÇÇ* 4
.
ÇÇ4 5
	Resources
ÇÇ5 >
.
ÇÇ> ?#
lblPassNumberRuleDesc
ÇÇ? T
;
ÇÇT U!
PasswordNumbersRule
ÉÉ 
.
ÉÉ  

Foreground
ÉÉ  *
=
ÉÉ+ ,
Brushes
ÉÉ- 4
.
ÉÉ4 5
White
ÉÉ5 :
;
ÉÉ: ;!
PasswordNumbersRule
ÑÑ 
.
ÑÑ  
FontSize
ÑÑ  (
=
ÑÑ) *
$num
ÑÑ+ -
;
ÑÑ- .
Label
ÖÖ "
PasswordCapitalsRule
ÖÖ &
=
ÖÖ' (
new
ÖÖ) ,
Label
ÖÖ- 2
(
ÖÖ2 3
)
ÖÖ3 4
;
ÖÖ4 5"
PasswordCapitalsRule
ÜÜ  
.
ÜÜ  !
Content
ÜÜ! (
=
ÜÜ) *

Properties
ÜÜ+ 5
.
ÜÜ5 6
	Resources
ÜÜ6 ?
.
ÜÜ? @$
lblPassCapitalRuleDesc
ÜÜ@ V
;
ÜÜV W"
PasswordCapitalsRule
áá  
.
áá  !

Foreground
áá! +
=
áá, -
Brushes
áá. 5
.
áá5 6
White
áá6 ;
;
áá; <"
PasswordCapitalsRule
àà  
.
àà  !
FontSize
àà! )
=
àà* +
$num
àà, .
;
àà. /
Label
ââ !
PasswordSpeCharRule
ââ %
=
ââ& '
new
ââ( +
Label
ââ, 1
(
ââ1 2
)
ââ2 3
;
ââ3 4!
PasswordSpeCharRule
ää 
.
ää  
Content
ää  '
=
ää( )

Properties
ää* 4
.
ää4 5
	Resources
ää5 >
.
ää> ?$
lblPassSpeCharRuleDesc
ää? U
;
ääU V!
PasswordSpeCharRule
ãã 
.
ãã  

Foreground
ãã  *
=
ãã+ ,
Brushes
ãã- 4
.
ãã4 5
White
ãã5 :
;
ãã: ;!
PasswordSpeCharRule
åå 
.
åå  
FontSize
åå  (
=
åå) *
$num
åå+ -
;
åå- .
Label
çç %
PasswordPunctuationRule
çç )
=
çç* +
new
çç, /
Label
çç0 5
(
çç5 6
)
çç6 7
;
çç7 8%
PasswordPunctuationRule
éé #
.
éé# $
Content
éé$ +
=
éé, -

Properties
éé/ 9
.
éé9 :
	Resources
éé: C
.
ééC D$
lblPassPuntSigRuleDesc
ééD Z
;
ééZ [%
PasswordPunctuationRule
èè #
.
èè# $

Foreground
èè$ .
=
èè/ 0
Brushes
èè1 8
.
èè8 9
White
èè9 >
;
èè> ?%
PasswordPunctuationRule
êê #
.
êê# $
FontSize
êê$ ,
=
êê- .
$num
êê/ 1
;
êê1 2
Label
ëë #
PasswordSameEmailRule
ëë '
=
ëë( )
new
ëë* -
Label
ëë. 3
(
ëë3 4
)
ëë4 5
;
ëë5 6#
PasswordSameEmailRule
íí !
.
íí! "
Content
íí" )
=
íí* +

Properties
íí, 6
.
íí6 7
	Resources
íí7 @
.
íí@ A(
lblPassEqualsEmailRuleDesc
ííA [
;
íí[ \#
PasswordSameEmailRule
ìì !
.
ìì! "

Foreground
ìì" ,
=
ìì- .
Brushes
ìì/ 6
.
ìì6 7
White
ìì7 <
;
ìì< =#
PasswordSameEmailRule
îî !
.
îî! "
FontSize
îî" *
=
îî+ ,
$num
îî- /
;
îî/ 0
ListBoxRules
ïï 
.
ïï 
Add
ïï 
(
ïï  
PasswordLengthRule
ïï /
)
ïï/ 0
;
ïï0 1
ListBoxRules
ññ 
.
ññ 
Add
ññ 
(
ññ !
PasswordNumbersRule
ññ 0
)
ññ0 1
;
ññ1 2
ListBoxRules
óó 
.
óó 
Add
óó 
(
óó "
PasswordCapitalsRule
óó 1
)
óó1 2
;
óó2 3
ListBoxRules
òò 
.
òò 
Add
òò 
(
òò !
PasswordSpeCharRule
òò 0
)
òò0 1
;
òò1 2
ListBoxRules
ôô 
.
ôô 
Add
ôô 
(
ôô %
PasswordPunctuationRule
ôô 4
)
ôô4 5
;
ôô5 6
ListBoxRules
öö 
.
öö 
Add
öö 
(
öö #
PasswordSameEmailRule
öö 2
)
öö2 3
;
öö3 4
}
õõ 	
private
ûû 
void
ûû !
ClickButtonSaveUser
ûû (
(
ûû( )
object
ûû) /
sender
ûû0 6
,
ûû6 7
RoutedEventArgs
ûû8 G
e
ûûH I
)
ûûI J
{
üü 	
UserPojo
†† 

userToSave
†† 
=
††  !
new
††" %
UserPojo
††& .
(
††. /
)
††/ 0
;
††0 1

userToSave
°° 
.
°° 
Name
°° 
=
°° "
txbNameCreateAccount
°° 2
.
°°2 3
Text
°°3 7
.
°°7 8
Trim
°°8 <
(
°°< =
)
°°= >
;
°°> ?

userToSave
¢¢ 
.
¢¢ 
UserName
¢¢ 
=
¢¢  !&
txbUserNameCreateAccount
¢¢" :
.
¢¢: ;
Text
¢¢; ?
.
¢¢? @
Trim
¢¢@ D
(
¢¢D E
)
¢¢E F
;
¢¢F G

userToSave
££ 
.
££ 
EmailAddress
££ #
=
££$ %#
txbEmailCreateAccount
££& ;
.
££; <
Text
££< @
.
££@ A
Trim
££A E
(
££E F
)
££F G
;
££G H

userToSave
§§ 
.
§§ 
Password
§§ 
=
§§  !&
psbPasswordCreateAccount
§§" :
.
§§: ;
Password
§§; C
.
§§C D
Trim
§§D H
(
§§H I
)
§§I J
;
§§J K
if
•• 
(
•• 
CheckEmptyFields
••  
(
••  !
)
••! "
==
••# %
ALLOWED_VALUES
••& 4
&&
••5 7%
CheckEmailAddressFormat
¶¶ '
(
¶¶' (
)
¶¶( )
==
¶¶* ,
ALLOWED_VALUES
¶¶- ;
&&
¶¶< >,
CheckUserNameAndEmailExistence
ßß .
(
ßß. /

userToSave
ßß/ 9
)
ßß9 :
==
ßß; =
ALLOWED_VALUES
ßß> L
)
ßßL M
{
®® (
GoToCodeConfirmationWindow
©© *
(
©©* +

userToSave
©©+ 5
)
©©5 6
;
©©6 7
}
™™ 
}
´´ 	
private
≠≠ 
int
≠≠ 
CheckEmptyFields
≠≠ $
(
≠≠$ %
)
≠≠% &
{
ÆÆ 	
int
ØØ 
answer
ØØ 
=
ØØ 
ALLOWED_VALUES
ØØ '
;
ØØ' (
if
∞∞ 
(
∞∞ 
string
∞∞ 
.
∞∞ 
IsNullOrEmpty
∞∞ $
(
∞∞$ %"
txbNameCreateAccount
∞∞% 9
.
∞∞9 :
Text
∞∞: >
.
∞∞> ?
Trim
∞∞? C
(
∞∞C D
)
∞∞D E
)
∞∞E F
)
∞∞F G
{
±± 
lblNameWarning
≤≤ 
.
≤≤ 

Visibility
≤≤ )
=
≤≤* +

Visibility
≤≤, 6
.
≤≤6 7
Visible
≤≤7 >
;
≤≤> ?
answer
≥≥ 
=
≥≥ 
DISALLOWED_VALUES
≥≥ *
;
≥≥* +
}
¥¥ 
else
µµ 
{
∂∂ 
lblNameWarning
∑∑ 
.
∑∑ 

Visibility
∑∑ )
=
∑∑* +

Visibility
∑∑, 6
.
∑∑6 7
	Collapsed
∑∑7 @
;
∑∑@ A
}
∏∏ 
if
ππ 
(
ππ 
string
ππ 
.
ππ 
IsNullOrEmpty
ππ $
(
ππ$ %&
txbUserNameCreateAccount
ππ% =
.
ππ= >
Text
ππ> B
.
ππB C
Trim
ππC G
(
ππG H
)
ππH I
)
ππI J
)
ππJ K
{
∫∫  
lblUserNameWarning
ªª "
.
ªª" #

Visibility
ªª# -
=
ªª. /

Visibility
ªª0 :
.
ªª: ;
Visible
ªª; B
;
ªªB C
answer
ºº 
=
ºº 
DISALLOWED_VALUES
ºº *
;
ºº* +
}
ΩΩ 
else
ææ 
{
øø  
lblUserNameWarning
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
¿¿: ;
	Collapsed
¿¿; D
;
¿¿D E
}
¡¡ 
if
¬¬ 
(
¬¬ 
string
¬¬ 
.
¬¬ 
IsNullOrEmpty
¬¬ $
(
¬¬$ %#
txbEmailCreateAccount
¬¬% :
.
¬¬: ;
Text
¬¬; ?
.
¬¬? @
Trim
¬¬@ D
(
¬¬D E
)
¬¬E F
)
¬¬F G
)
¬¬G H
{
√√ 
lblEmailWarning
ƒƒ 
.
ƒƒ  
Content
ƒƒ  '
=
ƒƒ( )

Properties
ƒƒ* 4
.
ƒƒ4 5
	Resources
ƒƒ5 >
.
ƒƒ> ?
lblEmptyField
ƒƒ? L
;
ƒƒL M
lblEmailWarning
≈≈ 
.
≈≈  

Visibility
≈≈  *
=
≈≈+ ,

Visibility
≈≈- 7
.
≈≈7 8
Visible
≈≈8 ?
;
≈≈? @
answer
∆∆ 
=
∆∆ 
DISALLOWED_VALUES
∆∆ *
;
∆∆* +
}
«« 
else
»» 
{
…… 
lblEmailWarning
   
.
    
Content
    '
=
  ( )
string
  * 0
.
  0 1
Empty
  1 6
;
  6 7
lblEmailWarning
ÀÀ 
.
ÀÀ  

Visibility
ÀÀ  *
=
ÀÀ+ ,

Visibility
ÀÀ- 7
.
ÀÀ7 8
	Collapsed
ÀÀ8 A
;
ÀÀA B
}
ÃÃ 
if
ÕÕ 
(
ÕÕ 
string
ÕÕ 
.
ÕÕ 
IsNullOrEmpty
ÕÕ $
(
ÕÕ$ %&
psbPasswordCreateAccount
ÕÕ% =
.
ÕÕ= >
Password
ÕÕ> F
.
ÕÕF G
Trim
ÕÕG K
(
ÕÕK L
)
ÕÕL M
)
ÕÕM N
)
ÕÕN O
{
ŒŒ  
lblPasswordWarning
œœ "
.
œœ" #

Visibility
œœ# -
=
œœ. /

Visibility
œœ0 :
.
œœ: ;
Visible
œœ; B
;
œœB C
answer
–– 
=
–– 
DISALLOWED_VALUES
–– *
;
––* +
}
—— 
else
““ 
{
””  
lblPasswordWarning
‘‘ "
.
‘‘" #

Visibility
‘‘# -
=
‘‘. /

Visibility
‘‘0 :
.
‘‘: ;
	Collapsed
‘‘; D
;
‘‘D E
}
’’ 
return
÷÷ 
answer
÷÷ 
;
÷÷ 
}
◊◊ 	
private
ŸŸ 
int
ŸŸ %
CheckEmailAddressFormat
ŸŸ +
(
ŸŸ+ ,
)
ŸŸ, -
{
⁄⁄ 	'
RegularExpressionsLibrary
€€ %
regexInstance
€€& 3
=
€€4 5
new
€€6 9'
RegularExpressionsLibrary
€€: S
(
€€S T
)
€€T U
;
€€U V
string
‹‹ 
regexExpression
‹‹ "
=
‹‹# $
regexInstance
‹‹% 2
.
‹‹2 3!
GetEMAIL_RULES_CHAR
‹‹3 F
(
‹‹F G
)
‹‹G H
;
‹‹H I
int
›› 
answer
›› 
;
›› 
String
ﬁﬁ 
email
ﬁﬁ 
=
ﬁﬁ #
txbEmailCreateAccount
ﬁﬁ 0
.
ﬁﬁ0 1
Text
ﬁﬁ1 5
.
ﬁﬁ5 6
Trim
ﬁﬁ6 :
(
ﬁﬁ: ;
)
ﬁﬁ; <
;
ﬁﬁ< =
try
ﬂﬂ 
{
‡‡ 
if
·· 
(
·· 
!
·· 
Regex
·· 
.
·· 
IsMatch
·· "
(
··" #
email
··# (
,
··( )
regexExpression
··* 9
,
··9 :
RegexOptions
··; G
.
··G H

IgnoreCase
··H R
,
··R S
TimeSpan
··T \
.
··\ ]
FromMilliseconds
··] m
(
··m n
$num
··n q
)
··q r
)
··r s
)
··s t
{
‚‚ 
lblEmailWarning
„„ #
.
„„# $
Content
„„$ +
=
„„, -

Properties
„„. 8
.
„„8 9
	Resources
„„9 B
.
„„B C
lblInvalidEmail
„„C R
;
„„R S
lblEmailWarning
‰‰ #
.
‰‰# $

Visibility
‰‰$ .
=
‰‰/ 0

Visibility
‰‰1 ;
.
‰‰; <
Visible
‰‰< C
;
‰‰C D
answer
ÂÂ 
=
ÂÂ 
DISALLOWED_VALUES
ÂÂ .
;
ÂÂ. /
}
ÊÊ 
else
ÁÁ 
{
ËË 
lblEmailWarning
ÈÈ #
.
ÈÈ# $
Content
ÈÈ$ +
=
ÈÈ, -
string
ÈÈ. 4
.
ÈÈ4 5
Empty
ÈÈ5 :
;
ÈÈ: ;
lblEmailWarning
ÍÍ #
.
ÍÍ# $

Visibility
ÍÍ$ .
=
ÍÍ/ 0

Visibility
ÍÍ1 ;
.
ÍÍ; <
	Collapsed
ÍÍ< E
;
ÍÍE F
answer
ÎÎ 
=
ÎÎ 
CheckPassword
ÎÎ *
(
ÎÎ* +
)
ÎÎ+ ,
;
ÎÎ, -
}
ÏÏ 
}
ÌÌ 
catch
ÓÓ 
(
ÓÓ (
RegexMatchTimeoutException
ÓÓ -
ex
ÓÓ. 0
)
ÓÓ0 1
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
L M
ERROR
M R
)
R S
;
S T
answer
ÒÒ 
=
ÒÒ 
DISALLOWED_VALUES
ÒÒ *
;
ÒÒ* +
}
ÚÚ 
catch
ÛÛ 
(
ÛÛ #
ArgumentNullException
ÛÛ (
ex
ÛÛ) +
)
ÛÛ+ ,
{
ÙÙ %
ExceptionHandlerForLogs
ıı '
.
ıı' (
LogException
ıı( 4
(
ıı4 5
ex
ıı5 7
,
ıı7 8!
ExceptionDictionary
ıı9 L
.
ııL M
ERROR
ııM R
)
ııR S
;
ııS T
answer
ˆˆ 
=
ˆˆ 
DISALLOWED_VALUES
ˆˆ *
;
ˆˆ* +
}
˜˜ 
return
¯¯ 
answer
¯¯ 
;
¯¯ 
}
˘˘ 	
private
˚˚ 
int
˚˚ 
CheckPassword
˚˚ !
(
˚˚! "
)
˚˚" #
{
¸¸ 	
int
˝˝ 
answer
˝˝ 
=
˝˝ 
ALLOWED_VALUES
˝˝ '
;
˝˝' (
try
˛˛ 
{
ˇˇ '
RegularExpressionsLibrary
ÄÄ )
regexInstance
ÄÄ* 7
=
ÄÄ8 9
new
ÄÄ: ='
RegularExpressionsLibrary
ÄÄ> W
(
ÄÄW X
)
ÄÄX Y
;
ÄÄY Z
string
ÅÅ 
regexExpression
ÅÅ &
;
ÅÅ& '
String
ÇÇ 
passwordChecked
ÇÇ &
=
ÇÇ' (&
psbPasswordCreateAccount
ÇÇ) A
.
ÇÇA B
Password
ÇÇB J
.
ÇÇJ K
ToString
ÇÇK S
(
ÇÇS T
)
ÇÇT U
.
ÇÇU V
Trim
ÇÇV Z
(
ÇÇZ [
)
ÇÇ[ \
;
ÇÇ\ ]
if
ÉÉ 
(
ÉÉ 
passwordChecked
ÉÉ #
.
ÉÉ# $
Length
ÉÉ$ *
<
ÉÉ+ ,%
MINIMUN_PASSWORD_LENGTH
ÉÉ- D
||
ÉÉE G
passwordChecked
ÉÉH W
.
ÉÉW X
Length
ÉÉX ^
>
ÉÉ_ `%
MAXIMUM_PASSWORD_LENGTH
ÉÉa x
)
ÉÉx y
{
ÑÑ !
HighLightBrokenRule
ÖÖ '
(
ÖÖ' (
ListBoxRules
ÖÖ( 4
[
ÖÖ4 5
$num
ÖÖ5 6
]
ÖÖ6 7
)
ÖÖ7 8
;
ÖÖ8 9
answer
ÜÜ 
=
ÜÜ 
DISALLOWED_VALUES
ÜÜ .
;
ÜÜ. /
}
áá 
else
àà 
{
ââ 
ClearBrokenRule
ää #
(
ää# $
ListBoxRules
ää$ 0
[
ää0 1
$num
ää1 2
]
ää2 3
)
ää3 4
;
ää4 5
}
ãã 
regexExpression
åå 
=
åå  !
regexInstance
åå" /
.
åå/ 0$
GetAt_LEAST_TWO_NUMBER
åå0 F
(
ååF G
)
ååG H
;
ååH I
if
çç 
(
çç 
!
çç 
Regex
çç 
.
çç 
IsMatch
çç "
(
çç" #
passwordChecked
çç# 2
,
çç2 3
regexExpression
çç4 C
,
ççC D
RegexOptions
ççE Q
.
ççQ R

IgnoreCase
ççR \
,
çç\ ]
TimeSpan
çç^ f
.
ççf g
FromMilliseconds
ççg w
(
ççw x
$num
ççx {
)
çç{ |
)
çç| }
)
çç} ~
{
éé !
HighLightBrokenRule
èè '
(
èè' (
ListBoxRules
èè( 4
[
èè4 5
$num
èè5 6
]
èè6 7
)
èè7 8
;
èè8 9
answer
êê 
=
êê 
DISALLOWED_VALUES
êê .
;
êê. /
}
ëë 
else
íí 
{
ìì 
ClearBrokenRule
îî #
(
îî# $
ListBoxRules
îî$ 0
[
îî0 1
$num
îî1 2
]
îî2 3
)
îî3 4
;
îî4 5
}
ïï 
if
ññ 
(
ññ 
!
ññ !
GetSpecificResource
ññ (
.
ññ( )3
%HasAtLeastTwoSeparateUppercaseLetters
ññ) N
(
ññN O
passwordChecked
ññO ^
)
ññ^ _
)
ññ_ `
{
óó !
HighLightBrokenRule
òò '
(
òò' (
ListBoxRules
òò( 4
[
òò4 5
$num
òò5 6
]
òò6 7
)
òò7 8
;
òò8 9
answer
ôô 
=
ôô 
DISALLOWED_VALUES
ôô .
;
ôô. /
}
öö 
else
õõ 
{
úú 
ClearBrokenRule
ùù #
(
ùù# $
ListBoxRules
ùù$ 0
[
ùù0 1
$num
ùù1 2
]
ùù2 3
)
ùù3 4
;
ùù4 5
}
ûû 
regexExpression
üü 
=
üü  !
regexInstance
üü" /
.
üü/ 0/
!GetAt_LEAST_ONE_SPECIAL_CHARACTER
üü0 Q
(
üüQ R
)
üüR S
;
üüS T
if
†† 
(
†† 
!
†† 
Regex
†† 
.
†† 
IsMatch
†† "
(
††" #
passwordChecked
††# 2
,
††2 3
regexExpression
††4 C
,
††C D
RegexOptions
††E Q
.
††Q R

IgnoreCase
††R \
,
††\ ]
TimeSpan
††^ f
.
††f g
FromMilliseconds
††g w
(
††w x
$num
††x {
)
††{ |
)
††| }
)
††} ~
{
°° !
HighLightBrokenRule
¢¢ '
(
¢¢' (
ListBoxRules
¢¢( 4
[
¢¢4 5
$num
¢¢5 6
]
¢¢6 7
)
¢¢7 8
;
¢¢8 9
answer
££ 
=
££ 
DISALLOWED_VALUES
££ .
;
££. /
}
§§ 
else
•• 
{
¶¶ 
ClearBrokenRule
ßß #
(
ßß# $
ListBoxRules
ßß$ 0
[
ßß0 1
$num
ßß1 2
]
ßß2 3
)
ßß3 4
;
ßß4 5
}
®® 
regexExpression
©© 
=
©©  !
regexInstance
©©" /
.
©©/ 0,
GetAt_LEAST_ONE_PUTUATION_MARK
©©0 N
(
©©N O
)
©©O P
;
©©P Q
if
™™ 
(
™™ 
!
™™ 
Regex
™™ 
.
™™ 
IsMatch
™™ "
(
™™" #
passwordChecked
™™# 2
,
™™2 3
regexExpression
™™4 C
,
™™C D
RegexOptions
™™E Q
.
™™Q R

IgnoreCase
™™R \
,
™™\ ]
TimeSpan
™™^ f
.
™™f g
FromMilliseconds
™™g w
(
™™w x
$num
™™x {
)
™™{ |
)
™™| }
)
™™} ~
{
´´ !
HighLightBrokenRule
¨¨ '
(
¨¨' (
ListBoxRules
¨¨( 4
[
¨¨4 5
$num
¨¨5 6
]
¨¨6 7
)
¨¨7 8
;
¨¨8 9
answer
≠≠ 
=
≠≠ 
DISALLOWED_VALUES
≠≠ .
;
≠≠. /
}
ÆÆ 
else
ØØ 
{
∞∞ 
ClearBrokenRule
±± #
(
±±# $
ListBoxRules
±±$ 0
[
±±0 1
$num
±±1 2
]
±±2 3
)
±±3 4
;
±±4 5
}
≤≤ 
int
≥≥ 
arrobaIndex
≥≥ 
=
≥≥  !
(
≥≥" ##
txbEmailCreateAccount
≥≥# 8
.
≥≥8 9
Text
≥≥9 =
.
≥≥= >
IndexOf
≥≥> E
(
≥≥E F
$char
≥≥F I
)
≥≥I J
!=
≥≥K M
-
≥≥N O
$num
≥≥O P
)
≥≥P Q
?
≥≥R S#
txbEmailCreateAccount
≥≥T i
.
≥≥i j
Text
≥≥j n
.
≥≥n o
IndexOf
≥≥o v
(
≥≥v w
$char
≥≥w z
)
≥≥z {
:
≥≥| }
$num
≥≥~ 
;≥≥ Ä
if
¥¥ 
(
¥¥ #
txbEmailCreateAccount
¥¥ )
.
¥¥) *
Text
¥¥* .
.
¥¥. /
Trim
¥¥/ 3
(
¥¥3 4
)
¥¥4 5
.
¥¥5 6
	Substring
¥¥6 ?
(
¥¥? @
$num
¥¥@ A
,
¥¥A B
arrobaIndex
¥¥C N
)
¥¥N O
.
¥¥O P
Equals
¥¥P V
(
¥¥V W
passwordChecked
¥¥W f
)
¥¥f g
)
¥¥g h
{
µµ !
HighLightBrokenRule
∂∂ '
(
∂∂' (
ListBoxRules
∂∂( 4
[
∂∂4 5
$num
∂∂5 6
]
∂∂6 7
)
∂∂7 8
;
∂∂8 9
answer
∑∑ 
=
∑∑ 
DISALLOWED_VALUES
∑∑ .
;
∑∑. /
}
∏∏ 
else
ππ 
{
∫∫ 
ClearBrokenRule
ªª #
(
ªª# $
ListBoxRules
ªª$ 0
[
ªª0 1
$num
ªª1 2
]
ªª2 3
)
ªª3 4
;
ªª4 5
}
ºº 
}
ΩΩ 
catch
ææ 
(
ææ (
RegexMatchTimeoutException
ææ -
ex
ææ. 0
)
ææ0 1
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
¿¿L M
ERROR
¿¿M R
)
¿¿R S
;
¿¿S T
answer
¡¡ 
=
¡¡ 
DISALLOWED_VALUES
¡¡ *
;
¡¡* +
}
¬¬ 
catch
√√ 
(
√√ #
ArgumentNullException
√√ (
ex
√√) +
)
√√+ ,
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
≈≈L M
ERROR
≈≈M R
)
≈≈R S
;
≈≈S T
answer
∆∆ 
=
∆∆ 
DISALLOWED_VALUES
∆∆ *
;
∆∆* +
}
«« 
return
»» 
answer
»» 
;
»» 
}
…… 	
private
ÀÀ 
int
ÀÀ ,
CheckUserNameAndEmailExistence
ÀÀ 2
(
ÀÀ2 3
UserPojo
ÀÀ3 ;
userToVerify
ÀÀ< H
)
ÀÀH I
{
ÃÃ 	
try
ÕÕ 
{
ŒŒ )
ValidateUserExistanceClient
œœ +
dataCheckerProxy
œœ, <
=
œœ= >
new
œœ? B
(
œœC D
)
œœD E
;
œœE F
GenericClassOfint
–– !
	userIsNew
––" +
=
––, -
dataCheckerProxy
––. >
.
––> ?
UserAlreadyExist
––? O
(
––O P
userToVerify
––P \
)
––\ ]
;
––] ^
dataCheckerProxy
——  
.
——  !
Close
——! &
(
——& '
)
——' (
;
——( )
if
““ 
(
““ 
	userIsNew
““ 
.
““ 
	CodeEvent
““ '
==
““( *!
ExceptionDictionary
““+ >
.
““> ?
SUCCESFULL_EVENT
““? O
||
““P R
	userIsNew
““S \
.
““\ ]
	CodeEvent
““] f
==
““g i!
ExceptionDictionary
““j }
.
““} ~!
UNSUCCESFULL_EVENT““~ ê
)““ê ë
{
”” 
if
‘‘ 
(
‘‘ 
	userIsNew
‘‘ !
.
‘‘! "
ObjectSaved
‘‘" -
==
‘‘. 0
ALLOWED_VALUES
‘‘1 ?
)
‘‘? @
{
’’ 
return
÷÷ 
ALLOWED_VALUES
÷÷ -
;
÷÷- .
}
◊◊ 
else
ÿÿ 
{
ŸŸ %
ShowSpecificUserMessage
⁄⁄ /
(
⁄⁄/ 0
	userIsNew
⁄⁄0 9
.
⁄⁄9 :
ObjectSaved
⁄⁄: E
)
⁄⁄E F
;
⁄⁄F G
return
€€ 
DISALLOWED_VALUES
€€ 0
;
€€0 1
}
‹‹ 
}
›› 
else
ﬁﬁ 
{
ﬂﬂ !
DialogWindowManager
‡‡ '
.
‡‡' (#
ShowInfoOrErrorWindow
‡‡( =
(
‡‡= >

Properties
‡‡> H
.
‡‡H I
	Resources
‡‡I R
.
‡‡R S
txbErrorTitle
‡‡S `
,
‡‡` a

Properties
‡‡b l
.
‡‡l m
	Resources
‡‡m v
.
‡‡v w"
MessageSQLException‡‡w ä
,‡‡ä ã
Application‡‡å ó
.‡‡ó ò
Current‡‡ò ü
.‡‡ü †

MainWindow‡‡† ™
,‡‡™ ´#
DialogWindowManager‡‡¨ ø
.‡‡ø ¿
ERROR‡‡¿ ≈
)‡‡≈ ∆
;‡‡∆ «
return
·· 
DISALLOWED_VALUES
·· ,
;
··, -
}
‚‚ 
}
„„ 
catch
‰‰ 
(
‰‰ '
EndpointNotFoundException
‰‰ ,
ex
‰‰- /
)
‰‰/ 0
{
ÂÂ 
HandleException
ÊÊ 
(
ÊÊ  
ex
ÊÊ  "
,
ÊÊ" #

Properties
ÊÊ$ .
.
ÊÊ. /
	Resources
ÊÊ/ 8
.
ÊÊ8 9!
lblEndPointNotFound
ÊÊ9 L
)
ÊÊL M
;
ÊÊM N
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
ÎÎ8 9&
lblComunicationException
ÎÎ9 Q
)
ÎÎQ R
;
ÎÎR S
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
ÔÔ8 9
lblTimeException
ÔÔ9 I
)
ÔÔI J
;
ÔÔJ K
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
ÛÛ8 9!
lblWithoutConection
ÛÛ9 L
)
ÛÛL M
;
ÛÛM N
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
˜˜8 9!
lblEndPointNotFound
˜˜9 L
)
˜˜L M
;
˜˜M N
}
¯¯ 
return
˘˘ 
DISALLOWED_VALUES
˘˘ $
;
˘˘$ %
}
˙˙ 	
private
¸¸ 
void
¸¸ %
ShowSpecificUserMessage
¸¸ ,
(
¸¸, -
int
¸¸- 0
unsucces
¸¸1 9
)
¸¸9 :
{
˝˝ 	
if
˛˛ 
(
˛˛ 
unsucces
˛˛ 
==
˛˛ !
ExceptionDictionary
˛˛ /
.
˛˛/ 0!
EMAIL_ALREADY_EXIST
˛˛0 C
)
˛˛C D
{
ˇˇ !
DialogWindowManager
ÄÄ #
.
ÄÄ# $#
ShowInfoOrErrorWindow
ÄÄ$ 9
(
ÄÄ9 :

Properties
ÄÄ: D
.
ÄÄD E
	Resources
ÄÄE N
.
ÄÄN O
txbErrorTitle
ÄÄO \
,
ÄÄ\ ]

Properties
ÄÄ^ h
.
ÄÄh i
	Resources
ÄÄi r
.
ÄÄr s
lblRepeatedEmailÄÄs É
,ÄÄÉ Ñ
ApplicationÄÄÖ ê
.ÄÄê ë
CurrentÄÄë ò
.ÄÄò ô

MainWindowÄÄô £
,ÄÄ£ §#
DialogWindowManagerÄÄ• ∏
.ÄÄ∏ π
ERRORÄÄπ æ
)ÄÄæ ø
;ÄÄø ¿
}
ÅÅ 
else
ÇÇ 
if
ÇÇ 
(
ÇÇ 
unsucces
ÇÇ 
==
ÇÇ  !
ExceptionDictionary
ÇÇ! 4
.
ÇÇ4 5$
USERNAME_ALREADY_EXIST
ÇÇ5 K
)
ÇÇK L
{
ÉÉ !
DialogWindowManager
ÑÑ #
.
ÑÑ# $#
ShowInfoOrErrorWindow
ÑÑ$ 9
(
ÑÑ9 :

Properties
ÑÑ: D
.
ÑÑD E
	Resources
ÑÑE N
.
ÑÑN O
txbErrorTitle
ÑÑO \
,
ÑÑ\ ]

Properties
ÑÑ^ h
.
ÑÑh i
	Resources
ÑÑi r
.
ÑÑr s"
lblRepeatedUserNameÑÑs Ü
,ÑÑÜ á
ApplicationÑÑà ì
.ÑÑì î
CurrentÑÑî õ
.ÑÑõ ú

MainWindowÑÑú ¶
,ÑÑ¶ ß#
DialogWindowManagerÑÑ® ª
.ÑÑª º
ERRORÑÑº ¡
)ÑÑ¡ ¬
;ÑÑ¬ √
}
ÖÖ 
else
ÜÜ 
{
áá !
DialogWindowManager
àà #
.
àà# $#
ShowInfoOrErrorWindow
àà$ 9
(
àà9 :

Properties
àà: D
.
ààD E
	Resources
ààE N
.
ààN O
txbErrorTitle
ààO \
,
àà\ ]

Properties
àà^ h
.
ààh i
	Resources
àài r
.
ààr s$
lblFailToRegisterUserààs à
,ààà â
Applicationààä ï
.ààï ñ
Currentààñ ù
.ààù û

MainWindowààû ®
,àà® ©#
DialogWindowManageràà™ Ω
.ààΩ æ
ERRORààæ √
)àà√ ƒ
;ààƒ ≈
}
ââ 
}
ää 	
private
åå 
void
åå !
HighLightBrokenRule
åå (
(
åå( )
Label
åå) .
missingRule
åå/ :
)
åå: ;
{
çç 	
missingRule
éé 
.
éé 

Foreground
éé "
=
éé# $
Brushes
éé% ,
.
éé, -
Red
éé- 0
;
éé0 1
}
èè 	
private
êê 
void
êê 
ClearBrokenRule
êê $
(
êê$ %
Label
êê% *
missingRule
êê+ 6
)
êê6 7
{
ëë 	
missingRule
íí 
.
íí 

Foreground
íí "
=
íí# $
Brushes
íí% ,
.
íí, -
White
íí- 2
;
íí2 3
}
ìì 	
private
ïï 
void
ïï $
ClickViewPasswordRules
ïï +
(
ïï+ ,
object
ïï, 2
sender
ïï3 9
,
ïï9 :"
MouseButtonEventArgs
ïï; O
e
ïïP Q
)
ïïQ R
{
ññ 	
brdPasswordRules
óó 
.
óó 

Visibility
óó '
=
óó( )

Visibility
óó* 4
.
óó4 5
Visible
óó5 <
;
óó< ="
imgViewPasswordRules
òò  
.
òò  !

Visibility
òò! +
=
òò, -

Visibility
òò. 8
.
òò8 9
Hidden
òò9 ?
;
òò? @
}
öö 	
private
õõ 
void
õõ %
ClickClosePasswordRules
õõ ,
(
õõ, -
object
õõ- 3
sender
õõ4 :
,
õõ: ;"
MouseButtonEventArgs
õõ< P
e
õõQ R
)
õõR S
{
úú 	
brdPasswordRules
ùù 
.
ùù 

Visibility
ùù '
=
ùù( )

Visibility
ùù* 4
.
ùù4 5
Hidden
ùù5 ;
;
ùù; <"
imgViewPasswordRules
ûû  
.
ûû  !

Visibility
ûû! +
=
ûû, -

Visibility
ûû. 8
.
ûû8 9
Visible
ûû9 @
;
ûû@ A
}
üü 	
private
°° 
void
°° 
ClickSeePassword
°° %
(
°°% &
object
°°& ,
sender
°°- 3
,
°°3 4"
MouseButtonEventArgs
°°5 I
e
°°J K
)
°°K L
{
¢¢ 	
lblViewPassword
££ 
.
££ 
Content
££ #
=
££$ %&
psbPasswordCreateAccount
££& >
.
££> ?
Password
££? G
.
££G H
ToString
££H P
(
££P Q
)
££Q R
;
££R S&
psbPasswordCreateAccount
§§ $
.
§§$ %

Visibility
§§% /
=
§§0 1

Visibility
§§2 <
.
§§< =
	Collapsed
§§= F
;
§§F G
lblViewPassword
•• 
.
•• 

Visibility
•• &
=
••' (

Visibility
••) 3
.
••3 4
Visible
••4 ;
;
••; <
}
¶¶ 	
private
®® 
void
®® #
OverLeaveHidePassword
®® *
(
®®* +
object
®®+ 1
sender
®®2 8
,
®®8 9
MouseEventArgs
®®: H
e
®®I J
)
®®J K
{
©© 	
if
™™ 
(
™™ 
lblViewPassword
™™ 
.
™™  
	IsVisible
™™  )
)
™™) *
{
´´ &
psbPasswordCreateAccount
¨¨ (
.
¨¨( )

Visibility
¨¨) 3
=
¨¨4 5

Visibility
¨¨6 @
.
¨¨@ A
Visible
¨¨A H
;
¨¨H I&
psbPasswordCreateAccount
≠≠ (
.
≠≠( )
PasswordChar
≠≠) 5
=
≠≠6 7
$char
≠≠8 ;
;
≠≠; <&
psbPasswordCreateAccount
ÆÆ (
.
ÆÆ( )
Password
ÆÆ) 1
=
ÆÆ2 3
(
ÆÆ4 5
string
ÆÆ5 ;
)
ÆÆ; <
lblViewPassword
ÆÆ< K
.
ÆÆK L
Content
ÆÆL S
;
ÆÆS T
lblViewPassword
ØØ 
.
ØØ  

Visibility
ØØ  *
=
ØØ+ ,

Visibility
ØØ- 7
.
ØØ7 8
	Collapsed
ØØ8 A
;
ØØA B
}
∞∞ 
}
±± 	
private
≥≥ 
void
≥≥ %
ClickButtonCancelSaving
≥≥ ,
(
≥≥, -
object
≥≥- 3
sender
≥≥4 :
,
≥≥: ;
RoutedEventArgs
≥≥< K
e
≥≥L M
)
≥≥M N
{
¥¥ 	
if
µµ 
(
µµ !
DialogWindowManager
µµ #
.
µµ# $$
ShowWindowConfirmation
µµ$ :
(
µµ: ;

Properties
µµ; E
.
µµE F
	Resources
µµF O
.
µµO P
txbErrorTitle
µµP ]
,
µµ] ^

Properties
µµ_ i
.
µµi j
	Resources
µµj s
.
µµs t
lblRepeatedEmailµµt Ñ
,µµÑ Ö
ApplicationµµÜ ë
.µµë í
Currentµµí ô
.µµô ö

MainWindowµµö §
)µµ§ •
)µµ• ¶
{
∂∂ 
GoToLogInWindow
∑∑ 
(
∑∑  
)
∑∑  !
;
∑∑! "
}
∏∏ 
}
ππ 	
private
ªª 
void
ªª 
GoToLogInWindow
ªª $
(
ªª$ %
)
ªª% &
{
ºº 	
	LogInUser
ΩΩ 
	logInPage
ΩΩ 
=
ΩΩ  !
new
ΩΩ" %
	LogInUser
ΩΩ& /
(
ΩΩ/ 0
)
ΩΩ0 1
;
ΩΩ1 2
this
ææ 
.
ææ 
NavigationService
ææ "
.
ææ" #
Navigate
ææ# +
(
ææ+ ,
	logInPage
ææ, 5
)
ææ5 6
;
ææ6 7
NavigationService
øø 
.
øø 
RemoveBackEntry
øø -
(
øø- .
)
øø. /
;
øø/ 0
}
¿¿ 	
private
¬¬ 
void
¬¬ (
GoToCodeConfirmationWindow
¬¬ /
(
¬¬/ 0
UserPojo
¬¬0 8

userToSave
¬¬9 C
)
¬¬C D
{
√√ 	
CodeConfirmation
ƒƒ 
codeConfirmation
ƒƒ -
=
ƒƒ. /
new
ƒƒ0 3
CodeConfirmation
ƒƒ4 D
(
ƒƒD E

userToSave
ƒƒF P
)
ƒƒP Q
;
ƒƒQ R
this
≈≈ 
.
≈≈ 
NavigationService
≈≈ "
.
≈≈" #
Navigate
≈≈# +
(
≈≈+ ,
codeConfirmation
≈≈, <
)
≈≈< =
;
≈≈= >
NavigationService
∆∆ 
.
∆∆ 
RemoveBackEntry
∆∆ -
(
∆∆- .
)
∆∆. /
;
∆∆/ 0
}
«« 	
private
…… 
void
…… 
HandleException
…… $
(
……$ %
	Exception
……% .
ex
……/ 1
,
……1 2
string
……3 9
errorMessage
……: F
)
……F G
{
   	%
ExceptionHandlerForLogs
ÀÀ #
.
ÀÀ# $
LogException
ÀÀ$ 0
(
ÀÀ0 1
ex
ÀÀ1 3
,
ÀÀ3 4!
ExceptionDictionary
ÀÀ5 H
.
ÀÀH I
FATAL_EXCEPTION
ÀÀI X
)
ÀÀX Y
;
ÀÀY Z!
DialogWindowManager
ÃÃ 
.
ÃÃ  #
ShowInfoOrErrorWindow
ÃÃ  5
(
ÃÃ5 6

Properties
ÃÃ6 @
.
ÃÃ@ A
	Resources
ÃÃA J
.
ÃÃJ K
txbErrorTitle
ÃÃK X
,
ÃÃX Y
errorMessage
ÃÃZ f
,
ÃÃf g
Application
ÃÃh s
.
ÃÃs t
Current
ÃÃt {
.
ÃÃ{ |

MainWindowÃÃ| Ü
,ÃÃÜ á#
DialogWindowManagerÃÃà õ
.ÃÃõ ú
ERRORÃÃú °
)ÃÃ° ¢
;ÃÃ¢ £
}
ÕÕ 	
}
œœ 
}–– ≤
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