≈
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
public $
ConfirmationDialogWindow '
(' (
String( .
title/ 4
,4 5
String6 <
message= D
,D E
WindowF L
currentPageM X
)X Y
{ 	
InitializeComponent 
(  
)  !
;! "
txbErrorTitle 
. 
Text 
=  
title! &
;& '
txbErrorMessage 
. 
Text  
=! "
message# *
;* +
CloseWindow 
= 
false 
;  #
ShowConfirmationMessage #
(# $
currentPage$ /
)/ 0
;0 1
} 	
private 
void 
ClickAccept  
(  !
object! '
sender( .
,. /
RoutedEventArgs0 ?
e@ A
)A B
{ 	
CloseWindow 
= 
true 
; 
this 
. 
Close 
( 
) 
; 
} 	
private   
void   
ClickCancel    
(    !
object  ! '
sender  ( .
,  . /
RoutedEventArgs  0 ?
e  @ A
)  A B
{!! 	
this"" 
."" 
Close"" 
("" 
)"" 
;"" 
}## 	
private$$ 
void$$ #
ShowConfirmationMessage$$ ,
($$, -
Window$$- 3
currentPage$$4 ?
)$$? @
{%% 	
double&& 
left&& 
=&& 
currentPage&& %
.&&% &
Left&&& *
+&&+ ,
(&&- .
currentPage&&. 9
.&&9 :
Width&&: ?
-&&@ A
this&&B F
.&&F G
Width&&G L
)&&L M
/&&N O
$num&&P Q
;&&Q R
double'' 
top'' 
='' 
currentPage'' $
.''$ %
Top''% (
+'') *
(''+ ,
currentPage'', 7
.''7 8
Height''8 >
-''? @
this''A E
.''E F
Height''F L
)''L M
/''N O
$num''P Q
;''Q R
this(( 
.(( 
Left(( 
=(( 
left(( 
;(( 
this)) 
.)) 
Top)) 
=)) 
top)) 
;)) 
this** 
.** 
VerticalAlignment** "
=**# $
VerticalAlignment**% 6
.**6 7
Center**7 =
;**= >
this++ 
.++ 

ShowDialog++ 
(++ 
)++ 
;++ 
},, 	
}-- 
}.. ñ<
kC:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameClient\Helpers\ChatMessageCard.cs
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
{ 

StackPanel 
stpUserMessage !
;! "
Label 
lblUserName 
; 
Label 

lblMessage 
; 
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
= 
$num 
; 
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
(  1 2
(  2 3
Color  3 8
)  8 9
ColorConverter  9 G
.  G H
ConvertFromString  H Y
(  Y Z
$str  Z c
)  c d
)  d e
;  e f
this!! 
.!! 
Opacity!! 
=!! 
$num!! 
;!! 
}"" 	
private$$ 
void$$  
InitializeComponents$$ )
($$) *
)$$* +
{%% 	
lblUserName&& 
=&& 
new&& 
Label&& #
(&&# $
)&&$ %
;&&% &

lblMessage'' 
='' 
new'' 
Label'' "
(''" #
)''# $
;''$ %
stpUserMessage(( 
=(( 
new((  

StackPanel((! +
(((+ ,
)((, -
;((- .
})) 	
private++ 
void++ 
SetStackPanelStyle++ '
(++' (
)++( )
{,, 	
stpUserMessage-- 
.-- 
Orientation-- &
=--' (
System--) /
.--/ 0
Windows--0 7
.--7 8
Controls--8 @
.--@ A
Orientation--A L
.--L M
Vertical--M U
;--U V
stpUserMessage.. 
... 
Height.. !
=.." #
Double..$ *
...* +
NaN..+ .
;... /
stpUserMessage// 
.// 
Width//  
=//! "
Double//# )
.//) *
NaN//* -
;//- .
stpUserMessage00 
.00 
MaxWidth00 #
=00$ %
$num00& )
;00) *
stpUserMessage11 
.11 
Margin11 !
=11" #
new11$ '
System11( .
.11. /
Windows11/ 6
.116 7
	Thickness117 @
(11@ A
$num11A B
)11B C
;11C D
stpUserMessage22 
.22 
Children22 #
.22# $
Add22$ '
(22' (
lblUserName22( 3
)223 4
;224 5
stpUserMessage33 
.33 
Children33 #
.33# $
Add33$ '
(33' (

lblMessage33( 2
)332 3
;333 4
}44 	
private66 
void66 
SetUserNameStyle66 %
(66% &
string66& ,
userName66- 5
)665 6
{77 	
lblUserName88 
.88 
Height88 
=88  
$num88! #
;88# $
lblUserName99 
.99 
Width99 
=99 
Double99  &
.99& '
NaN99' *
;99* +
lblUserName:: 
.:: 
MaxWidth::  
=::! "
$num::# &
;::& '
lblUserName;; 
.;; 
FontSize;;  
=;;! "
$num;;# %
;;;% &
lblUserName<< 
.<< 

Foreground<< "
=<<# $
new<<% (
SolidColorBrush<<) 8
(<<8 9
Colors<<9 ?
.<<? @

WhiteSmoke<<@ J
)<<J K
;<<K L
lblUserName== 
.== &
HorizontalContentAlignment== 2
===3 4
System==5 ;
.==; <
Windows==< C
.==C D
HorizontalAlignment==D W
.==W X
Left==X \
;==\ ]
lblUserName>> 
.>> 
VerticalAlignment>> )
=>>* +
System>>, 2
.>>2 3
Windows>>3 :
.>>: ;
VerticalAlignment>>; L
.>>L M
Top>>M P
;>>P Q
lblUserName?? 
.?? 
Content?? 
=??  !
userName??" *
;??* +
lblUserName@@ 
.@@ 
Margin@@ 
=@@  
new@@! $
System@@% +
.@@+ ,
Windows@@, 3
.@@3 4
	Thickness@@4 =
(@@= >
$num@@> ?
,@@? @
$num@@A B
,@@B C
$num@@D E
,@@E F
$num@@G H
)@@H I
;@@I J
}AA 	
privateCC 
voidCC 
SetMessageStyleCC $
(CC$ %
stringCC% +
messageCC, 3
)CC3 4
{DD 	
lblUserNameEE 
.EE 
HeightEE 
=EE  
DoubleEE! '
.EE' (
NaNEE( +
;EE+ ,
lblUserNameFF 
.FF 
WidthFF 
=FF 
DoubleFF  &
.FF& '
NaNFF' *
;FF* +
lblUserNameGG 
.GG 
MaxWidthGG  
=GG! "
$numGG# &
;GG& '
lblUserNameHH 
.HH 
FontSizeHH  
=HH! "
$numHH# %
;HH% &
lblUserNameII 
.II 

ForegroundII "
=II# $
newII% (
SolidColorBrushII) 8
(II8 9
ColorsII9 ?
.II? @
BlackII@ E
)IIE F
;IIF G
lblUserNameJJ 
.JJ &
HorizontalContentAlignmentJJ 2
=JJ3 4
SystemJJ5 ;
.JJ; <
WindowsJJ< C
.JJC D
HorizontalAlignmentJJD W
.JJW X
LeftJJX \
;JJ\ ]
lblUserNameKK 
.KK 
VerticalAlignmentKK )
=KK* +
SystemKK, 2
.KK2 3
WindowsKK3 :
.KK: ;
VerticalAlignmentKK; L
.KKL M
TopKKM P
;KKP Q
lblUserNameLL 
.LL 
ContentLL 
=LL  !
messageLL" )
;LL) *
}MM 	
}OO 
}QQ À
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
{ 	
byte 
[ 
] 
salt 
; 
new $
RNGCryptoServiceProvider (
(( )
)) *
.* +
GetBytes+ 3
(3 4
salt4 8
=9 :
new; >
byte? C
[C D
$numD F
]F G
)G H
;H I
var 
passBaseKeyDerFun2 "
=# $
new% (
Rfc2898DeriveBytes) ;
(; <
password< D
,D E
saltF J
,J K
$numL Q
,Q R
HashAlgorithmNameS d
.d e
SHA256e k
)k l
;l m
byte 
[ 
] 
hash 
= 
passBaseKeyDerFun2 ,
., -
GetBytes- 5
(5 6
$num6 8
)8 9
;9 :
byte 
[ 
] 
	hashBytes 
= 
new "
byte# '
[' (
$num( *
]* +
;+ ,
Array 
. 
Copy 
( 
salt 
, 
$num 
, 
	hashBytes  )
,) *
$num+ ,
,, -
$num. 0
)0 1
;1 2
Array 
. 
Copy 
( 
hash 
, 
$num 
, 
	hashBytes  )
,) *
$num+ -
,- .
$num/ 1
)1 2
;2 3
string 
hashedPassword !
=" #
Convert$ +
.+ ,
ToBase64String, :
(: ;
	hashBytes; D
)D E
;E F
return 
hashedPassword !
;! "
} 	
} 
} Ã+
fC:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameClient\Helpers\Exceptions.cs
	namespace		 	
JeopardyGame		
 
.		 
Helpers		 
{

 
public 

static 
class 
ExceptionDictionary +
{ 
public 
const 
int 
SUCCESFULL_EVENT )
=* +
-, -
$num- 0
;0 1
public 
const 
int 
UNSUCCESFULL_EVENT +
=, -
-. /
$num/ 1
;1 2
public 
const 
int 
NULL_PARAEMETER (
=) *
-+ ,
$num, /
;/ 0
public 
const 
int 
ARGUMENT_NULL &
=' (
-) *
$num* -
;- .
public 
const 
int +
ARGUMENT_OUT_OF_RANGE_EXCEPTION 8
=9 :
-; <
$num< ?
;? @
public 
const 
int 
FORMMAT_EXCEPTION *
=+ ,
-- .
$num. 1
;1 2
public 
const 
int 
RANK_EXCEPTION '
=( )
-* +
$num+ .
;. /
public 
const 
int  
EMAIL_FORMAT_INVALID -
=. /
-0 1
$num1 4
;4 5
public 
const 
int 
INVALID_OPERATION *
=+ ,
-- .
$num. 1
;1 2
public 
const 
int 
NO_DB_CONECTION (
=) *
-+ ,
$num, /
;/ 0
public 
const 
int 
SAVE_CHANGES_ERROR +
=, -
-. /
$num/ 2
;2 3
public 
const 
int 
	SQL_ERROR "
=# $
-% &
$num& )
;) *
public 
const 
int 
ENTITY_ERROR %
=& '
-( )
$num) ,
;, -
public 
const 
int 
SMTP_EXCEPTION '
=( )
-* +
$num+ .
;. /
public 
const 
int $
UNKOWN_EXCEPTION_OCURRED 1
=2 3
-4 5
$num5 8
;8 9
} 
public 

static 
class 
ExceptionHandler (
{ 
public   
static   
void   
HandleException   *
(  * +
int  + .
codeException  / <
,  < =
String  > D
message  E L
)  L M
{!! 	
switch"" 
("" 
codeException"" !
)""! "
{## 
case$$ 
ExceptionDictionary$$ (
.$$( )
ENTITY_ERROR$$) 5
:$$5 6
ShowErrorMessage%% $
(%%$ %

Properties%%% /
.%%/ 0
	Resources%%0 9
.%%9 :
txbErrorTitle%%: G
,%%G H

Properties%%H R
.%%R S
	Resources%%S \
.%%\ ]"
MessageEntityException%%] s
)%%s t
;%%t u
break&& 
;&& 
case'' 
ExceptionDictionary'' (
.''( )
	SQL_ERROR'') 2
:''2 3
ShowErrorMessage(( $
((($ %

Properties((% /
.((/ 0
	Resources((0 9
.((9 :
txbErrorTitle((: G
,((G H

Properties((I S
.((S T
	Resources((T ]
.((] ^
MessageSQLException((^ q
)((q r
;((r s
break)) 
;)) 
case** 
ExceptionDictionary** (
.**( )
NO_DB_CONECTION**) 8
:**8 9
ShowErrorMessage++ $
(++$ %

Properties++% /
.++/ 0
	Resources++0 9
.++9 :
txbErrorTitle++: G
,++G H

Properties++I S
.++S T
	Resources++T ]
.++] ^
MessageSQLException++^ q
)++q r
;++r s
break,, 
;,, 
case-- 
ExceptionDictionary-- (
.--( )
UNSUCCESFULL_EVENT--) ;
:--; <
ShowErrorMessage.. $
(..$ %
$str..% (
,..( )
$str..* -
)..- .
;... /
break// 
;// 
case00 
ExceptionDictionary00 (
.00( )
NULL_PARAEMETER00) 8
:008 9
break11 
;11 
case22 
ExceptionDictionary22 (
.22( )
SMTP_EXCEPTION22) 7
:227 8
break33 
;33 
default44 
:44 
break55 
;55 
}66 
}77 	
private:: 
static:: 
void:: 
ShowErrorMessage:: ,
(::, -
String::- 3
title::4 9
,::9 :
String::; A
message::B I
)::I J
{;; 	
new<< 
DialogWindows<< 
.<< $
ErrorMessageDialogWindow<< 6
(<<6 7
title<<7 <
,<<< =
message<<> E
,<<E F
Application<<G R
.<<R S
Current<<S Z
.<<Z [

MainWindow<<[ e
)<<e f
;<<f g
}== 	
}?? 
}AA ®W
fC:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameClient\Helpers\FriendCard.cs
	namespace 	
JeopardyGame
 
. 
Helpers 
{ 
public 

partial 
class 

FriendCard #
:$ %

StackPanel& 0
{ 

StackPanel 
stoNameAndStatus #
;# $
Label 
lblFriendName 
; 
Border 
	brdButton 
; 
System 
. 
Windows 
. 
Shapes 
. 
Ellipse %
ellConnectionStatus& 9
;9 :
Button 
bttInviteFriend 
; 
public 

FriendCard 
( 
String  
userName! )
,) *
bool+ /
state0 5
,5 6
String7 =

textInvite> H
)H I
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
stoNameAndStatus .
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
;  ( )
}!! 	
private## 
void## 
SetCardStyle## !
(##! "
)##" #
{$$ 	
this%% 
.%% 
Margin%% 
=%% 
new%% 
System%% $
.%%$ %
Windows%%% ,
.%%, -
	Thickness%%- 6
(%%6 7
$num%%7 8
,%%8 9
$num%%: ;
,%%; <
$num%%= >
,%%> ?
$num%%@ A
)%%A B
;%%B C
this&& 
.&& 
Width&& 
=&& 
$num&& 
;&& 
this'' 
.'' 
MaxWidth'' 
='' 
$num'' 
;''  
this(( 
.(( 
Orientation(( 
=(( 
System(( %
.((% &
Windows((& -
.((- .
Controls((. 6
.((6 7
Orientation((7 B
.((B C

Horizontal((C M
;((M N
this)) 
.)) 

Background)) 
=)) 
new)) !
SolidColorBrush))" 1
())1 2
Colors))2 8
.))8 9
Transparent))9 D
)))D E
;))E F
}** 	
private,, 
void,,  
InitializeComponents,, )
(,,) *
),,* +
{-- 	
lblFriendName.. 
=.. 
new.. 
Label..  %
(..% &
)..& '
;..' (
ellConnectionStatus// 
=//  !
new//" %
System//& ,
.//, -
Windows//- 4
.//4 5
Shapes//5 ;
.//; <
Ellipse//< C
(//C D
)//D E
;//E F
bttInviteFriend00 
=00 
new00 !
Button00" (
(00( )
)00) *
;00* +
stoNameAndStatus11 
=11 
new11 "

StackPanel11# -
(11- .
)11. /
;11/ 0
	brdButton22 
=22 
new22 
Border22 "
(22" #
)22# $
;22$ %
}33 	
private66 
void66 
SetLabelStyle66 "
(66" #
string66# )
userName66* 2
)662 3
{77 	
lblFriendName88 
.88 
Height88  
=88! "
$num88# %
;88% &
lblFriendName99 
.99 
Width99 
=99  !
Double99" (
.99( )
NaN99) ,
;99, -
lblFriendName:: 
.:: 
Margin::  
=::! "
new::# &
System::' -
.::- .
Windows::. 5
.::5 6
	Thickness::6 ?
(::? @
$num::@ A
,::A B
$num::C D
,::D E
$num::F G
,::G H
$num::I J
)::J K
;::K L
lblFriendName;; 
.;; 
FontSize;; "
=;;# $
$num;;% '
;;;' (
lblFriendName<< 
.<< 

Foreground<< $
=<<% &
new<<' *
SolidColorBrush<<+ :
(<<: ;
Colors<<; A
.<<A B
White<<B G
)<<G H
;<<H I
lblFriendName== 
.== &
HorizontalContentAlignment== 4
===5 6
System==7 =
.=== >
Windows==> E
.==E F
HorizontalAlignment==F Y
.==Y Z
Left==Z ^
;==^ _
lblFriendName>> 
.>> 
Content>> !
=>>" #
userName>>$ ,
;>>, -
}?? 	
privateAA 
voidAA 
SetEllipseStyleAA $
(AA$ %
boolAA% )
stateAA* /
)AA/ 0
{BB 	
ellConnectionStatusCC 
.CC  
HeightCC  &
=CC' (
$numCC) +
;CC+ ,
ellConnectionStatusDD 
.DD  
WidthDD  %
=DD& '
$numDD( *
;DD* +
ellConnectionStatusEE 
.EE  
MarginEE  &
=EE' (
newEE) ,
SystemEE- 3
.EE3 4
WindowsEE4 ;
.EE; <
	ThicknessEE< E
(EEE F
$numEEF G
,EEG H
$numEEI J
,EEJ K
$numEEL N
,EEN O
$numEEP Q
)EEQ R
;EER S
ifGG 
(GG 
stateGG 
)GG 
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
elseKK 
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
}NN 
}OO 	
privateQQ 
voidQQ 
SetStackPanelStyleQQ '
(QQ' (
)QQ( )
{RR 	
stoNameAndStatusSS 
.SS 
ChildrenSS %
.SS% &
AddSS& )
(SS) *
lblFriendNameSS* 7
)SS7 8
;SS8 9
stoNameAndStatusTT 
.TT 
ChildrenTT %
.TT% &
AddTT& )
(TT) *
ellConnectionStatusTT* =
)TT= >
;TT> ?
stoNameAndStatusUU 
.UU 
OrientationUU (
=UU) *
SystemUU+ 1
.UU1 2
WindowsUU2 9
.UU9 :
ControlsUU: B
.UUB C
OrientationUUC N
.UUN O

HorizontalUUO Y
;UUY Z
stoNameAndStatusVV 
.VV 
WidthVV "
=VV# $
$numVV% (
;VV( )
stoNameAndStatusWW 
.WW 
HorizontalAlignmentWW 0
=WW1 2
SystemWW3 9
.WW9 :
WindowsWW: A
.WWA B
HorizontalAlignmentWWB U
.WWU V
LeftWWV Z
;WWZ [
}XX 	
privateZZ 
voidZZ 
SetButtonStyleZZ #
(ZZ# $
stringZZ$ *

textInviteZZ+ 5
)ZZ5 6
{[[ 	
bttInviteFriend\\ 
.\\ 
Height\\ "
=\\# $
$num\\% '
;\\' (
bttInviteFriend]] 
.]] 
Width]] !
=]]" #
$num]]$ &
;]]& '
bttInviteFriend^^ 
.^^ 
Margin^^ "
=^^# $
new^^% (
System^^) /
.^^/ 0
Windows^^0 7
.^^7 8
	Thickness^^8 A
(^^A B
$num^^B C
)^^C D
;^^D E
bttInviteFriend__ 
.__ 
HorizontalAlignment__ /
=__0 1
System__2 8
.__8 9
Windows__9 @
.__@ A
HorizontalAlignment__A T
.__T U
Center__U [
;__[ \
bttInviteFriend`` 
.`` 
FontSize`` $
=``% &
$num``' )
;``) *
bttInviteFriendaa 
.aa 

Foregroundaa &
=aa' (
newaa) ,
SolidColorBrushaa- <
(aa< =
Colorsaa= C
.aaC D
WhiteaaD I
)aaI J
;aaJ K
bttInviteFriendbb 
.bb 

Backgroundbb &
=bb' (
newbb) ,
SolidColorBrushbb- <
(bb< =
Colorsbb= C
.bbC D
TransparentbbD O
)bbO P
;bbP Q
bttInviteFriendcc 
.cc 
BorderBrushcc '
=cc( )
newcc* -
SolidColorBrushcc. =
(cc= >
Colorscc> D
.ccD E
TransparentccE P
)ccP Q
;ccQ R
bttInviteFrienddd 
.dd 
Contentdd #
=dd$ %

textInvitedd& 0
;dd0 1
	brdButtonee 
.ee 
CornerRadiusee "
=ee# $
newee% (
Systemee) /
.ee/ 0
Windowsee0 7
.ee7 8
CornerRadiusee8 D
(eeD E
$numeeE G
)eeG H
;eeH I
	brdButtonff 
.ff 
BorderBrushff !
=ff" #
newff$ '
SolidColorBrushff( 7
(ff7 8
Colorsff8 >
.ff> ?
Blueff? C
)ffC D
;ffD E
	brdButtongg 
.gg 

Backgroundgg  
=gg! "
newgg# &
SolidColorBrushgg' 6
(gg6 7
Colorsgg7 =
.gg= >
	CadetBluegg> G
)ggG H
;ggH I
	brdButtonhh 
.hh 
BorderThicknesshh %
=hh& '
newhh( +
Systemhh, 2
.hh2 3
Windowshh3 :
.hh: ;
	Thicknesshh; D
(hhD E
$numhhE F
)hhF G
;hhG H
	brdButtonii 
.ii 
HorizontalAlignmentii )
=ii* +
Systemii, 2
.ii2 3
Windowsii3 :
.ii: ;
HorizontalAlignmentii; N
.iiN O
RightiiO T
;iiT U
	brdButtonjj 
.jj 
Heightjj 
=jj 
$numjj !
;jj! "
	brdButtonkk 
.kk 
Widthkk 
=kk 
$numkk  
;kk  !
	brdButtonll 
.ll 
Childll 
=ll 
bttInviteFriendll -
;ll- .
}nn 	
}qq 
}rr ˜⁄
vC:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameClient\Helpers\FriendCardManagementWindow.cs
	namespace 	
JeopardyGame
 
. 
Helpers 
{ 
public 

class &
FriendCardManagementWindow ,
:- .

StackPanel/ 9
{ 
readonly 
int 
idUser 
; 

StackPanel 
stcName 
; 

StackPanel 

stcButtons 
; 
Label 
lblUserName 
; 
Border 
brdLeftButton 
; 
Border 
brdRigthButton 
; 
System 
. 
Windows 
. 
Shapes 
. 
Ellipse %
ellPointMark& 2
;2 3
Button 
bttLeftFunction 
; 
Button 
bttRightFunction 
;  
readonly 
FriendManager 
friendManager ,
;, -
public &
FriendCardManagementWindow )
() *
int* -
idUser. 4
,4 5
String5 ;
userName< D
,D E
intF I
stateJ O
,O P
StringQ W
textLeftButtonX f
,f g
Stringh n
textRigthButtono ~
,~ 
FriendManager
Ä ç
windowInstance
é ú
)
ú ù
{ 	
SetCardStyle 
( 
) 
; 
this 
. 
idUser 
= 
idUser  
;  !
friendManager 
= 
windowInstance *
;* + 
InitializeComponents    
(    !
)  ! "
;  " #
SetLabelStyle!! 
(!! 
userName!! "
)!!" #
;!!# $
SetEllipseStyle"" 
("" 
)"" 
;"" 
SetLefButtonStyle## 
(## 
textLeftButton## ,
,##, -
state##. 3
)##3 4
;##4 5
SetRigthButtonStyle$$ 
($$  
textRigthButton$$  /
,$$/ 0
state$$1 6
)$$6 7
;$$7 8
SetStackPanelStyle%% 
(%% 
)%%  
;%%  !%
SetStackPanelButtonsStyle&& %
(&&% &
)&&& '
;&&' (
this'' 
.'' 
Children'' 
.'' 
Add'' 
('' 
stcName'' %
)''% &
;''& '
this(( 
.(( 
Children(( 
.(( 
Add(( 
((( 

stcButtons(( (
)((( )
;(() *
})) 	
private++ 
void++ 
SetCardStyle++ !
(++! "
)++" #
{,, 	
this-- 
.-- 
Margin-- 
=-- 
new-- 
System-- $
.--$ %
Windows--% ,
.--, -
	Thickness--- 6
(--6 7
$num--7 8
)--8 9
;--9 :
this.. 
... 
Width.. 
=.. 
$num.. 
;.. 
this// 
.// 
MaxWidth// 
=// 
$num//  
;//  !
this00 
.00 
Orientation00 
=00 
System00 %
.00% &
Windows00& -
.00- .
Controls00. 6
.006 7
Orientation007 B
.00B C

Horizontal00C M
;00M N
this11 
.11 
HorizontalAlignment11 $
=11% &
System11' -
.11- .
Windows11. 5
.115 6
HorizontalAlignment116 I
.11I J
Left11J N
;11N O
this22 
.22 
VerticalAlignment22 "
=22# $
System22% +
.22+ ,
Windows22, 3
.223 4
VerticalAlignment224 E
.22E F
Center22F L
;22L M
}33 	
private55 
void55  
InitializeComponents55 )
(55) *
)55* +
{66 	
stcName77 
=77 
new77 

StackPanel77 $
(77$ %
)77% &
;77& '

stcButtons88 
=88 
new88 

StackPanel88 '
(88' (
)88( )
;88) *
lblUserName99 
=99 
new99 
Label99 #
(99# $
)99$ %
;99% &
brdLeftButton:: 
=:: 
new:: 
Border::  &
(::& '
)::' (
;::( )
brdRigthButton;; 
=;; 
new;;  
Border;;! '
(;;' (
);;( )
;;;) *
ellPointMark<< 
=<< 
new<< 
System<< %
.<<% &
Windows<<& -
.<<- .
Shapes<<. 4
.<<4 5
Ellipse<<5 <
(<<< =
)<<= >
;<<> ?
bttLeftFunction== 
=== 
new== !
Button==" (
(==( )
)==) *
;==* +
bttRightFunction>> 
=>> 
new>> "
Button>># )
(>>) *
)>>* +
;>>+ ,
}?? 	
privateAA 
voidAA 
SetLabelStyleAA "
(AA" #
stringAA# )
userNameAA* 2
)AA2 3
{BB 	
lblUserNameCC 
.CC 
HeightCC 
=CC  
DoubleCC! '
.CC' (
NaNCC( +
;CC+ ,
lblUserNameDD 
.DD 
WidthDD 
=DD 
DoubleDD  &
.DD& '
NaNDD' *
;DD* +
lblUserNameEE 
.EE 
MarginEE 
=EE  
newEE! $
SystemEE% +
.EE+ ,
WindowsEE, 3
.EE3 4
	ThicknessEE4 =
(EE= >
$numEE> ?
,EE? @
$numEEA B
,EEB C
$numEED E
,EEE F
$numEEG H
)EEH I
;EEI J
lblUserNameFF 
.FF 
FontSizeFF  
=FF! "
$numFF# %
;FF% &
lblUserNameGG 
.GG 

FontWeightGG "
=GG# $
FontWeightsGG% 0
.GG0 1
BoldGG1 5
;GG5 6
lblUserNameHH 
.HH 

ForegroundHH "
=HH# $
newHH% (
SolidColorBrushHH) 8
(HH8 9
ColorsHH9 ?
.HH? @
BlackHH@ E
)HHE F
;HHF G
lblUserNameII 
.II &
HorizontalContentAlignmentII 2
=II3 4
SystemII5 ;
.II; <
WindowsII< C
.IIC D
HorizontalAlignmentIID W
.IIW X
LeftIIX \
;II\ ]
lblUserNameJJ 
.JJ 
VerticalAlignmentJJ )
=JJ* +
SystemJJ, 2
.JJ2 3
WindowsJJ3 :
.JJ: ;
VerticalAlignmentJJ; L
.JJL M
TopJJM P
;JJP Q
lblUserNameKK 
.KK 
ContentKK 
=KK  !
userNameKK" *
;KK* +
}LL 	
privateNN 
voidNN 
SetEllipseStyleNN $
(NN$ %
)NN% &
{OO 	
ellPointMarkPP 
.PP 
HeightPP 
=PP  !
$numPP" $
;PP$ %
ellPointMarkQQ 
.QQ 
WidthQQ 
=QQ  
$numQQ! #
;QQ# $
ellPointMarkRR 
.RR 
MarginRR 
=RR  !
newRR" %
SystemRR& ,
.RR, -
WindowsRR- 4
.RR4 5
	ThicknessRR5 >
(RR> ?
$numRR? @
,RR@ A
$numRRB C
,RRC D
$numRRE G
,RRG H
$numRRI J
)RRJ K
;RRK L
ellPointMarkSS 
.SS 
FillSS 
=SS 
newSS  #
SolidColorBrushSS$ 3
(SS3 4
ColorsSS4 :
.SS: ;
BlackSS; @
)SS@ A
;SSA B
}TT 	
privateVV 
voidVV 
SetStackPanelStyleVV '
(VV' (
)VV( )
{WW 	
stcNameXX 
.XX 
ChildrenXX 
.XX 
AddXX  
(XX  !
ellPointMarkXX! -
)XX- .
;XX. /
stcNameYY 
.YY 
ChildrenYY 
.YY 
AddYY  
(YY  !
lblUserNameYY! ,
)YY, -
;YY- .
stcNameZZ 
.ZZ 
OrientationZZ 
=ZZ  !
OrientationZZ" -
.ZZ- .

HorizontalZZ. 8
;ZZ8 9
stcName[[ 
.[[ 
Width[[ 
=[[ 
$num[[ 
;[[  
stcName\\ 
.\\ 
Margin\\ 
=\\ 
new\\  
System\\! '
.\\' (
Windows\\( /
.\\/ 0
	Thickness\\0 9
(\\9 :
$num\\: <
,\\< =
$num\\= >
,\\> ?
$num\\? A
,\\A B
$num\\B C
)\\C D
;\\D E
stcName]] 
.]] 
HorizontalAlignment]] '
=]]( )
System]]* 0
.]]0 1
Windows]]1 8
.]]8 9
HorizontalAlignment]]9 L
.]]L M
Left]]M Q
;]]Q R
stcName^^ 
.^^ 
VerticalAlignment^^ %
=^^& '
System^^( .
.^^. /
Windows^^/ 6
.^^6 7
VerticalAlignment^^7 H
.^^H I
Center^^I O
;^^O P
}__ 	
privateaa 
voidaa 
SetLefButtonStyleaa &
(aa& '
stringaa' -
textLefBaa. 6
,aa6 7
intaa8 ;
typeOfButtonaa< H
)aaH I
{bb 	
bttLeftFunctioncc 
.cc 
Heightcc "
=cc# $
$numcc% '
;cc' (
bttLeftFunctiondd 
.dd 
Widthdd !
=dd" #
Doubledd$ *
.dd* +
NaNdd+ .
;dd. /
bttLeftFunctionee 
.ee 
Paddingee #
=ee$ %
newee& )
	Thicknessee* 3
(ee3 4
$numee4 6
,ee6 7
$numee7 8
,ee8 9
$numee9 ;
,ee; <
$numee< =
)ee= >
;ee> ?
bttLeftFunctionff 
.ff 
Marginff "
=ff# $
newff% (
Systemff) /
.ff/ 0
Windowsff0 7
.ff7 8
	Thicknessff8 A
(ffA B
$numffB C
)ffC D
;ffD E
bttLeftFunctiongg 
.gg 
HorizontalAlignmentgg /
=gg0 1
Systemgg2 8
.gg8 9
Windowsgg9 @
.gg@ A
HorizontalAlignmentggA T
.ggT U
CenterggU [
;gg[ \
bttLeftFunctionhh 
.hh 
FontSizehh $
=hh% &
$numhh' )
;hh) *
bttLeftFunctionii 
.ii 

Foregroundii &
=ii' (
newii) ,
SolidColorBrushii- <
(ii< =
Colorsii= C
.iiC D
WhiteiiD I
)iiI J
;iiJ K
bttLeftFunctionjj 
.jj 

Backgroundjj &
=jj' (
newjj) ,
SolidColorBrushjj- <
(jj< =
Colorsjj= C
.jjC D
TransparentjjD O
)jjO P
;jjP Q
bttLeftFunctionkk 
.kk 
BorderBrushkk '
=kk( )
newkk* -
SolidColorBrushkk. =
(kk= >
Colorskk> D
.kkD E
TransparentkkE P
)kkP Q
;kkQ R
bttLeftFunctionll 
.ll 
Contentll #
=ll$ %
textLefBll& .
;ll. /
SolidColorBrushnn 
backGroundColornn +
;nn+ ,
switchoo 
(oo 
typeOfButtonoo  
)oo  !
{pp 
caseqq 
$numqq 
:qq 
backGroundColorrr #
=rr$ %
newrr& )
SolidColorBrushrr* 9
(rr9 :
(rr: ;
Colorrr; @
)rr@ A
ColorConverterrrA O
.rrO P
ConvertFromStringrrP a
(rra b
$strrrb k
)rrk l
)rrl m
;rrm n
bttLeftFunctionss #
.ss# $
Clickss$ )
+=ss* ,
ClicReportUserss- ;
;ss; <
breaktt 
;tt 
caseuu 
$numuu 
:uu 
backGroundColorvv #
=vv$ %
newvv& )
SolidColorBrushvv* 9
(vv9 :
(vv: ;
Colorvv; @
)vv@ A
ColorConvertervvA O
.vvO P
ConvertFromStringvvP a
(vva b
$strvvb k
)vvk l
)vvl m
;vvm n
bttLeftFunctionww #
.ww# $
Clickww$ )
+=ww* ,
ClicAcceptRequestww- >
;ww> ?
breakxx 
;xx 
caseyy 
$numyy 
:yy 
backGroundColorzz #
=zz$ %
newzz& )
SolidColorBrushzz* 9
(zz9 :
(zz: ;
Colorzz; @
)zz@ A
ColorConverterzzA O
.zzO P
ConvertFromStringzzP a
(zza b
$strzzb k
)zzk l
)zzl m
;zzm n
bttLeftFunction{{ #
.{{# $
Click{{$ )
+={{* ,
ClicSendRequest{{- <
;{{< =
break|| 
;|| 
default}} 
:}} 
backGroundColor~~ #
=~~$ %
new~~& )
SolidColorBrush~~* 9
(~~9 :
(~~: ;
Color~~; @
)~~@ A
ColorConverter~~A O
.~~O P
ConvertFromString~~P a
(~~a b
$str~~b k
)~~k l
)~~l m
;~~m n
break 
; 
}
ÄÄ 
brdLeftButton
ÇÇ 
.
ÇÇ 
CornerRadius
ÇÇ &
=
ÇÇ' (
new
ÇÇ) ,
System
ÇÇ- 3
.
ÇÇ3 4
Windows
ÇÇ4 ;
.
ÇÇ; <
CornerRadius
ÇÇ< H
(
ÇÇH I
$num
ÇÇI K
)
ÇÇK L
;
ÇÇL M
brdLeftButton
ÉÉ 
.
ÉÉ 

Background
ÉÉ $
=
ÉÉ% &
backGroundColor
ÉÉ' 6
;
ÉÉ6 7
brdLeftButton
ÑÑ 
.
ÑÑ 
BorderBrush
ÑÑ %
=
ÑÑ& '
new
ÑÑ( +
SolidColorBrush
ÑÑ, ;
(
ÑÑ; <
Colors
ÑÑ< B
.
ÑÑB C
White
ÑÑC H
)
ÑÑH I
;
ÑÑI J
brdLeftButton
ÖÖ 
.
ÖÖ 
BorderThickness
ÖÖ )
=
ÖÖ* +
new
ÖÖ, /
	Thickness
ÖÖ0 9
(
ÖÖ9 :
$num
ÖÖ: ;
)
ÖÖ; <
;
ÖÖ< =
brdLeftButton
ÜÜ 
.
ÜÜ !
HorizontalAlignment
ÜÜ -
=
ÜÜ. /
System
ÜÜ0 6
.
ÜÜ6 7
Windows
ÜÜ7 >
.
ÜÜ> ?!
HorizontalAlignment
ÜÜ? R
.
ÜÜR S
Left
ÜÜS W
;
ÜÜW X
brdLeftButton
áá 
.
áá 
VerticalAlignment
áá +
=
áá, -
System
áá. 4
.
áá4 5
Windows
áá5 <
.
áá< =
VerticalAlignment
áá= N
.
ááN O
Center
ááO U
;
ááU V
brdLeftButton
àà 
.
àà 
Height
àà  
=
àà! "
$num
àà# %
;
àà% &
brdLeftButton
ââ 
.
ââ 
Width
ââ 
=
ââ  !
Double
ââ" (
.
ââ( )
NaN
ââ) ,
;
ââ, -
brdLeftButton
ää 
.
ää 
Margin
ää  
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
ää@ B
,
ääB C
$num
ääC D
,
ääD E
$num
ääE F
,
ääF G
$num
ääG H
)
ääH I
;
ääI J
brdLeftButton
ãã 
.
ãã 
Child
ãã 
=
ãã  !
bttLeftFunction
ãã" 1
;
ãã1 2
}
åå 	
private
êê 
void
êê !
SetRigthButtonStyle
êê (
(
êê( )
string
êê) /

textRigthB
êê0 :
,
êê: ;
int
êê< ?
typeOfButton
êê@ L
)
êêL M
{
ëë 	
bttRightFunction
íí 
.
íí 
Height
íí #
=
íí$ %
$num
íí& (
;
íí( )
bttRightFunction
ìì 
.
ìì 
Width
ìì "
=
ìì# $
Double
ìì% +
.
ìì+ ,
NaN
ìì, /
;
ìì/ 0
bttRightFunction
îî 
.
îî 
Margin
îî #
=
îî$ %
new
îî& )
System
îî* 0
.
îî0 1
Windows
îî1 8
.
îî8 9
	Thickness
îî9 B
(
îîB C
$num
îîC D
)
îîD E
;
îîE F
bttRightFunction
ïï 
.
ïï 
Padding
ïï $
=
ïï% &
new
ïï' *
	Thickness
ïï+ 4
(
ïï4 5
$num
ïï5 7
,
ïï7 8
$num
ïï8 9
,
ïï9 :
$num
ïï: <
,
ïï< =
$num
ïï= >
)
ïï> ?
;
ïï? @
bttRightFunction
ññ 
.
ññ !
HorizontalAlignment
ññ 0
=
ññ1 2
System
ññ3 9
.
ññ9 :
Windows
ññ: A
.
ññA B!
HorizontalAlignment
ññB U
.
ññU V
Center
ññV \
;
ññ\ ]
bttRightFunction
óó 
.
óó 
FontSize
óó %
=
óó& '
$num
óó( *
;
óó* +
bttRightFunction
òò 
.
òò 

Foreground
òò '
=
òò( )
new
òò* -
SolidColorBrush
òò. =
(
òò= >
Colors
òò> D
.
òòD E
White
òòE J
)
òòJ K
;
òòK L
bttRightFunction
ôô 
.
ôô 

Background
ôô '
=
ôô( )
new
ôô* -
SolidColorBrush
ôô. =
(
ôô= >
Colors
ôô> D
.
ôôD E
Transparent
ôôE P
)
ôôP Q
;
ôôQ R
bttRightFunction
öö 
.
öö 
BorderBrush
öö (
=
öö) *
new
öö+ .
SolidColorBrush
öö/ >
(
öö> ?
Colors
öö? E
.
ööE F
Transparent
ööF Q
)
ööQ R
;
ööR S
bttRightFunction
õõ 
.
õõ 
Content
õõ $
=
õõ% &

textRigthB
õõ' 1
;
õõ1 2
SolidColorBrush
ùù 
backGroundColor
ùù +
;
ùù+ ,
switch
ûû 
(
ûû 
typeOfButton
ûû  
)
ûû  !
{
üü 
case
†† 
$num
†† 
:
†† 
backGroundColor
°° #
=
°°$ %
new
°°& )
SolidColorBrush
°°* 9
(
°°9 :
(
°°: ;
Color
°°; @
)
°°@ A
ColorConverter
°°A O
.
°°O P
ConvertFromString
°°P a
(
°°a b
$str
°°b k
)
°°k l
)
°°l m
;
°°m n
bttRightFunction
¢¢ $
.
¢¢$ %
Click
¢¢% *
+=
¢¢+ -!
ClicEliminateFriend
¢¢. A
;
¢¢A B
break
££ 
;
££ 
case
§§ 
$num
§§ 
:
§§ 
backGroundColor
•• #
=
••$ %
new
••& )
SolidColorBrush
••* 9
(
••9 :
(
••: ;
Color
••; @
)
••@ A
ColorConverter
••A O
.
••O P
ConvertFromString
••P a
(
••a b
$str
••b k
)
••k l
)
••l m
;
••m n
bttRightFunction
¶¶ $
.
¶¶$ %
Click
¶¶% *
+=
¶¶+ - 
ClicDeclineRequest
¶¶. @
;
¶¶@ A
break
ßß 
;
ßß 
case
®® 
$num
®® 
:
®® 
backGroundColor
©© #
=
©©$ %
new
©©& )
SolidColorBrush
©©* 9
(
©©9 :
(
©©: ;
Color
©©; @
)
©©@ A
ColorConverter
©©A O
.
©©O P
ConvertFromString
©©P a
(
©©a b
$str
©©b k
)
©©k l
)
©©l m
;
©©m n
bttRightFunction
™™ $
.
™™$ %
Click
™™% *
+=
™™+ -
ClicReportUser
™™. <
;
™™< =
break
´´ 
;
´´ 
default
¨¨ 
:
¨¨ 
backGroundColor
≠≠ #
=
≠≠$ %
new
≠≠& )
SolidColorBrush
≠≠* 9
(
≠≠9 :
(
≠≠: ;
Color
≠≠; @
)
≠≠@ A
ColorConverter
≠≠A O
.
≠≠O P
ConvertFromString
≠≠P a
(
≠≠a b
$str
≠≠b k
)
≠≠k l
)
≠≠l m
;
≠≠m n
break
ÆÆ 
;
ÆÆ 
}
ØØ 
brdRigthButton
±± 
.
±± 
CornerRadius
±± '
=
±±( )
new
±±* -
System
±±. 4
.
±±4 5
Windows
±±5 <
.
±±< =
CornerRadius
±±= I
(
±±I J
$num
±±J L
)
±±L M
;
±±M N
brdRigthButton
≤≤ 
.
≤≤ 

Background
≤≤ %
=
≤≤& '
backGroundColor
≤≤( 7
;
≤≤7 8
brdRigthButton
≥≥ 
.
≥≥ 
BorderBrush
≥≥ &
=
≥≥' (
new
≥≥) ,
SolidColorBrush
≥≥- <
(
≥≥< =
Colors
≥≥= C
.
≥≥C D
White
≥≥D I
)
≥≥I J
;
≥≥J K
brdRigthButton
¥¥ 
.
¥¥ 
BorderThickness
¥¥ *
=
¥¥+ ,
new
¥¥- 0
	Thickness
¥¥1 :
(
¥¥: ;
$num
¥¥; <
)
¥¥< =
;
¥¥= >
brdRigthButton
µµ 
.
µµ 
BorderThickness
µµ *
=
µµ+ ,
new
µµ- 0
System
µµ1 7
.
µµ7 8
Windows
µµ8 ?
.
µµ? @
	Thickness
µµ@ I
(
µµI J
$num
µµJ K
)
µµK L
;
µµL M
brdRigthButton
∂∂ 
.
∂∂ 
Margin
∂∂ !
=
∂∂" #
new
∂∂$ '
System
∂∂( .
.
∂∂. /
Windows
∂∂/ 6
.
∂∂6 7
	Thickness
∂∂7 @
(
∂∂@ A
$num
∂∂A C
,
∂∂C D
$num
∂∂D E
,
∂∂E F
$num
∂∂F G
,
∂∂G H
$num
∂∂H I
)
∂∂I J
;
∂∂J K
brdRigthButton
∑∑ 
.
∑∑ !
HorizontalAlignment
∑∑ .
=
∑∑/ 0
System
∑∑1 7
.
∑∑7 8
Windows
∑∑8 ?
.
∑∑? @!
HorizontalAlignment
∑∑@ S
.
∑∑S T
Right
∑∑T Y
;
∑∑Y Z
brdRigthButton
∏∏ 
.
∏∏ 
VerticalAlignment
∏∏ ,
=
∏∏- .
System
∏∏/ 5
.
∏∏5 6
Windows
∏∏6 =
.
∏∏= >
VerticalAlignment
∏∏> O
.
∏∏O P
Center
∏∏P V
;
∏∏V W
brdRigthButton
ππ 
.
ππ 
Height
ππ !
=
ππ" #
$num
ππ$ &
;
ππ& '
brdRigthButton
∫∫ 
.
∫∫ 
Width
∫∫  
=
∫∫! "
Double
∫∫# )
.
∫∫) *
NaN
∫∫* -
;
∫∫- .
brdRigthButton
ªª 
.
ªª 
Child
ªª  
=
ªª! "
bttRightFunction
ªª# 3
;
ªª3 4
}
ºº 	
private
ΩΩ 
void
ΩΩ '
SetStackPanelButtonsStyle
ΩΩ .
(
ΩΩ. /
)
ΩΩ/ 0
{
ææ 	

stcButtons
øø 
.
øø 
Children
øø 
.
øø  
Add
øø  #
(
øø# $
brdLeftButton
øø$ 1
)
øø1 2
;
øø2 3

stcButtons
¿¿ 
.
¿¿ 
Children
¿¿ 
.
¿¿  
Add
¿¿  #
(
¿¿# $
brdRigthButton
¿¿$ 2
)
¿¿2 3
;
¿¿3 4

stcButtons
¡¡ 
.
¡¡ 
Orientation
¡¡ "
=
¡¡# $
System
¡¡% +
.
¡¡+ ,
Windows
¡¡, 3
.
¡¡3 4
Controls
¡¡4 <
.
¡¡< =
Orientation
¡¡= H
.
¡¡H I

Horizontal
¡¡I S
;
¡¡S T

stcButtons
¬¬ 
.
¬¬ 
Margin
¬¬ 
=
¬¬ 
new
¬¬  #
System
¬¬$ *
.
¬¬* +
Windows
¬¬+ 2
.
¬¬2 3
	Thickness
¬¬3 <
(
¬¬< =
$num
¬¬= ?
,
¬¬? @
$num
¬¬@ A
,
¬¬A B
$num
¬¬B C
,
¬¬C D
$num
¬¬D E
)
¬¬E F
;
¬¬F G

stcButtons
√√ 
.
√√ 
MaxWidth
√√ 
=
√√  !
$num
√√" %
;
√√% &

stcButtons
ƒƒ 
.
ƒƒ !
HorizontalAlignment
ƒƒ *
=
ƒƒ+ ,
System
ƒƒ- 3
.
ƒƒ3 4
Windows
ƒƒ4 ;
.
ƒƒ; <!
HorizontalAlignment
ƒƒ< O
.
ƒƒO P
Right
ƒƒP U
;
ƒƒU V

stcButtons
≈≈ 
.
≈≈ 
VerticalAlignment
≈≈ (
=
≈≈) *
System
≈≈+ 1
.
≈≈1 2
Windows
≈≈2 9
.
≈≈9 :
VerticalAlignment
≈≈: K
.
≈≈K L
Center
≈≈L R
;
≈≈R S
}
∆∆ 	
private
«« 
void
«« 
ClicReportUser
«« #
(
««# $
object
««$ *
sender
««+ 1
,
««1 2
RoutedEventArgs
««3 B
e
««C D
)
««D E
{
»» 	
friendManager
…… 
.
…… 

ReportUser
…… $
(
……$ %
idUser
……% +
,
……+ ,
lblUserName
……- 8
.
……8 9
Content
……9 @
.
……@ A
ToString
……A I
(
……I J
)
……J K
)
……K L
;
……L M
}
   	
private
ÃÃ 
void
ÃÃ !
ClicEliminateFriend
ÃÃ (
(
ÃÃ( )
object
ÃÃ) /
sender
ÃÃ0 6
,
ÃÃ6 7
RoutedEventArgs
ÃÃ8 G
e
ÃÃH I
)
ÃÃI J
{
ÕÕ 	
friendManager
ŒŒ 
.
ŒŒ 
EliminateFriend
ŒŒ )
(
ŒŒ) *
idUser
ŒŒ* 0
)
ŒŒ0 1
;
ŒŒ1 2
}
œœ 	
private
—— 
void
—— 
ClicAcceptRequest
—— &
(
——& '
object
——' -
sender
——. 4
,
——4 5
RoutedEventArgs
——6 E
e
——F G
)
——G H
{
““ 	
friendManager
”” 
.
”” !
AcceptFriendRequest
”” -
(
””- .
idUser
””. 4
,
””4 5
lblUserName
””6 A
.
””A B
Content
””B I
.
””I J
ToString
””J R
(
””R S
)
””S T
)
””T U
;
””U V
}
‘‘ 	
private
÷÷ 
void
÷÷  
ClicDeclineRequest
÷÷ '
(
÷÷' (
object
÷÷( .
sender
÷÷/ 5
,
÷÷5 6
RoutedEventArgs
÷÷7 F
e
÷÷G H
)
÷÷H I
{
◊◊ 	
friendManager
ÿÿ 
.
ÿÿ "
DeclineFriendRequest
ÿÿ .
(
ÿÿ. /
idUser
ÿÿ/ 5
,
ÿÿ5 6
lblUserName
ÿÿ7 B
.
ÿÿB C
Content
ÿÿC J
.
ÿÿJ K
ToString
ÿÿK S
(
ÿÿS T
)
ÿÿT U
)
ÿÿU V
;
ÿÿV W
}
ŸŸ 	
private
€€ 
void
€€ 
ClicSendRequest
€€ $
(
€€$ %
object
€€% +
sender
€€, 2
,
€€2 3
RoutedEventArgs
€€4 C
e
€€D E
)
€€E F
{
‹‹ 	
friendManager
›› 
.
›› 
SentFriendRequest
›› +
(
››+ ,
idUser
››, 2
,
››2 3
lblUserName
››4 ?
.
››? @
Content
››@ G
.
››G H
ToString
››H P
(
››P Q
)
››Q R
)
››R S
;
››S T
}
ﬁﬁ 	
}
ﬂﬂ 
}‡‡ Ù$
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
public 
int "
idStatusOfAvailability )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
} 
public 

partial 
class 

FriendList #
{ 
private 
static 

Dictionary !
<! "
int" %
,% &)
FriendAvailabilityInformation' D
>D E
friendOfUserListF V
=W X
newY \

Dictionary] g
<g h
inth k
,k l*
FriendAvailabilityInformation	m ä
>
ä ã
(
ã å
)
å ç
;
ç é
public 
static 
void )
RegisterNewFriendInDictionary 8
(8 9
int9 <
idUser= C
,C D)
FriendAvailabilityInformationE b
friendc i
)i j
{ 	
if 
( 
! 
friendOfUserList !
.! "
ContainsKey" -
(- .
idUser. 4
)4 5
)5 6
{ 
friendOfUserList  
.  !
Add! $
($ %
idUser% +
,+ ,
friend- 3
)3 4
;4 5
} 
} 	
public 
static )
FriendAvailabilityInformation 3
	GetFriend4 =
(= >
int> A
idUserB H
)H I
{ 	
foreach 
( 
var 
item 
in  
friendOfUserList! 1
)1 2
{ 
if 
( 
item 
. 
Key 
== 
idUser  &
)& '
{   
return!! 
item!! 
.!!  
Value!!  %
;!!% &
}"" 
}## 
return$$ 
null$$ 
;$$ 
}%% 	
public'' 
static'' 
void'' &
RemoveFriendFromDictionary'' 5
(''5 6
int''6 9
idUser'': @
)''@ A
{(( 	
if)) 
()) 
friendOfUserList))  
.))  !
ContainsKey))! ,
()), -
idUser))- 3
)))3 4
)))4 5
{** 
friendOfUserList++  
.++  !
Remove++! '
(++' (
idUser++( .
)++. /
;++/ 0
},, 
}-- 	
public// 
static// 
void//  
ChangeStatusOfFriend// /
(/// 0
int//0 3
idUser//4 :
,//: ;
int//< ?
idStatus//@ H
)//H I
{00 	
if11 
(11 
friendOfUserList11  
.11  !
ContainsKey11! ,
(11, -
idUser11- 3
)113 4
)114 5
{22 
foreach33 
(33 
var33 
item33 !
in33" $
friendOfUserList33% 5
)335 6
{44 
if55 
(55 
item55 
.55 
Key55  
==55! #
idUser55$ *
)55* +
{66 
item77 
.77 
Value77 "
.77" #"
idStatusOfAvailability77# 9
=77: ;
idStatus77< D
;77D E
}88 
}99 
}:: 
};; 	
public<< 
static<< 
void<< 
CleanDictionary<< *
(<<* +
)<<+ ,
{== 	
friendOfUserList>> 
.>> 
Clear>> "
(>>" #
)>># $
;>>$ %
}?? 	
publicAA 
staticAA 

DictionaryAA  
<AA  !
intAA! $
,AA$ %)
FriendAvailabilityInformationAA& C
>AAC D 
GetActiveFriendsListAAE Y
(AAY Z
)AAZ [
{BB 	
returnCC 
friendOfUserListCC #
;CC# $
}DD 	
}EE 
}FF ∂8
lC:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameClient\Pages\ActiveFriends.xaml.cs
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
ActiveFriends &
:' (
Page) -
,- .+
INotifyUserAvailabilityCallback/ N
{ 
private 
const 
int 
AVAILABLE_STATUS *
=+ ,
$num- .
;. /
private 
	LobbyPage 
	lobbyPage #
;# $
public 
ActiveFriends 
( 
) 
{ 	
InitializeComponent 
(  
)  !
;! "
}   	
public"" 
void"" 
	StartPage"" 
("" 
	LobbyPage"" '
lobby""( -
)""- .
{## 	
	lobbyPage$$ 
=$$ 
lobby$$ 
;$$ 
	GetFriend%% 
(%% 
)%% 
;%% 
	SetFriend&& 
(&& 
)&& 
;&& 
}'' 	
private)) 
void)) !
ClickCloseListFriends)) *
())* +
object))+ 1
sender))2 8
,))8 9 
MouseButtonEventArgs)): N
e))O P
)))P Q
{** 	
	lobbyPage++ 
.++ 
CloseFriendList++ %
(++% &
)++& '
;++' (
},, 	
private.. 
void.. 
	GetFriend.. 
(..  
)..  !
{// 	 
FriendsManagerClient00  
proxyFriend00! ,
=00- .
new00/ 2 
FriendsManagerClient003 G
(00G H
)00H I
;00I J$
ConsultInformationClient11 $
	proxyUser11% .
=11/ 0
new111 4$
ConsultInformationClient115 M
(11M N
)11N O
;11O P
UserSingleton22 
mainCurrentUser22 )
=22* +
UserSingleton22, 9
.229 :
GetMainUser22: E
(22E F
)22F G
;22G H
var33 
user33 
=33 
	proxyUser33  
.33  !
ConsultUserById33! 0
(330 1
mainCurrentUser331 @
.33@ A
IdUser33A G
)33G H
;33H I
var44 
friends44 
=44 
proxyFriend44 %
.44% &
GetUserFriends44& 4
(444 5
user445 9
.449 :
ObjectSaved44: E
)44E F
;44F G
if55 
(55 
friends55 
.55 
	CodeEvent55  
==55! #
ExceptionDictionary55$ 7
.557 8
SUCCESFULL_EVENT558 H
)55H I
{66 
foreach77 
(77 
var77 
item77 !
in77" $
friends77% ,
.77, -
ObjectSaved77- 8
)778 9
{88 )
FriendAvailabilityInformation99 1
activeFriend992 >
=99? @
new99A D)
FriendAvailabilityInformation99E b
(99b c
)99c d
;99d e
activeFriend::  
.::  !
IdUser::! '
=::( )
item::* .
.::. /
IdUser::/ 5
;::5 6
activeFriend;;  
.;;  !
Name;;! %
=;;& '
item;;( ,
.;;, -
UserName;;- 5
;;;5 6
activeFriend<<  
.<<  !"
idStatusOfAvailability<<! 7
=<<8 9
item<<: >
.<<> ? 
IdStatusAvailability<<? S
;<<S T

FriendList== 
.== )
RegisterNewFriendInDictionary== <
(==< =
item=== A
.==A B
IdUser==B H
,==H I
activeFriend==J V
)==V W
;==W X
}>> 
}?? 
else@@ 
{AA 
ExceptionHandlerBB  
.BB  !
HandleExceptionBB! 0
(BB0 1
friendsBB1 8
.BB8 9
	CodeEventBB9 B
,BBB C
stringBBD J
.BBJ K
EmptyBBK P
)BBP Q
;BBQ R
}CC 
proxyFriendDD 
.DD 
CloseDD 
(DD 
)DD 
;DD  
	proxyUserEE 
.EE 
CloseEE 
(EE 
)EE 
;EE 
}FF 	
privateHH 
voidHH 
	SetFriendHH 
(HH 
)HH  
{II 	
stcFriendListJJ 
.JJ 
ChildrenJJ "
.JJ" #
ClearJJ# (
(JJ( )
)JJ) *
;JJ* +
stcFriendListKK 
.KK 
OrientationKK %
=KK& '
OrientationKK( 3
.KK3 4
VerticalKK4 <
;KK< =

DictionaryLL 
<LL 
intLL 
,LL )
FriendAvailabilityInformationLL 9
>LL9 :

friendListLL; E
=LLF G

FriendListLLH R
.LLR S 
GetActiveFriendsListLLS g
(LLg h
)LLh i
;LLi j
ifMM 
(MM 

friendListMM 
!=MM 
nullMM "
)MM" #
{NN 
foreachOO 
(OO 
varOO 
itemOO !
inOO" $

friendListOO% /
)OO/ 0
{PP 
boolQQ 
stateQQ 
;QQ 
ifRR 
(RR 
itemRR 
.RR 
ValueRR "
.RR" #"
idStatusOfAvailabilityRR# 9
==RR: <
AVAILABLE_STATUSRR= M
)RRM N
{SS 
stateTT 
=TT 
trueTT  $
;TT$ %
}UU 
elseVV 
{WW 
stateXX 
=XX 
falseXX  %
;XX% &
}YY 
stcFriendListZZ !
.ZZ! "
ChildrenZZ" *
.ZZ* +
AddZZ+ .
(ZZ. /
newZZ/ 2

FriendCardZZ3 =
(ZZ= >
itemZZ> B
.ZZB C
ValueZZC H
.ZZH I
NameZZI M
,ZZM N
stateZZO T
,ZZT U
$strZZV ^
)ZZ^ _
)ZZ_ `
;ZZ` a
}\\ 
}]] 
}^^ 	
public__ 
void__ (
ResponseOfPlayerAvailability__ 0
(__0 1
int__1 4
status__5 ;
,__; <
int__= @
idFriend__A I
)__I J
{`` 	

Dictionaryaa 
<aa 
intaa 
,aa )
FriendAvailabilityInformationaa 9
>aa9 :

friendListaa; E
=aaF G

FriendListaaH R
.aaR S 
GetActiveFriendsListaaS g
(aag h
)aah i
;aai j
ifbb 
(bb 

friendListbb 
.bb 
ContainsKeybb &
(bb& '
idFriendbb' /
)bb/ 0
)bb0 1
{cc 

FriendListdd 
.dd  
ChangeStatusOfFrienddd /
(dd/ 0
idFrienddd0 8
,dd8 9
statusdd: @
)dd@ A
;ddA B
}ee 
	SetFriendff 
(ff 
)ff 
;ff 
}gg 	
}hh 
}jj Äî
oC:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameClient\Pages\CodeConfirmation.xaml.cs
	namespace 	
JeopardyGame
 
. 
Pages 
{ 
public 

partial 
class 
CodeConfirmation )
:* +
Page, 0
,0 1+
INotifyUserAvailabilityCallback2 Q
{ 
private 
static 
ActiveFriends $!
activeFriendsInstance% :
=; <
new= @
ActiveFriendsA N
(N O
)O P
;P Q
public 
const 
int 
NULL_INT_VALUE '
=( )
$num* +
;+ ,
private 
DispatcherTimer 
timer  %
;% &
private   
int   
leftTime   
=   
$num   "
;  " #
private!! 
String!! 
currentEmail!! #
;!!# $
private"" 
String"" 
currentCode"" "
;""" #
private## 
static## 
Random## 
randomNumber## *
=##+ ,
new##- 0
Random##1 7
(##7 8
)##8 9
;##9 :
private$$ 
UserPOJO$$ 

userToSave$$ #
;$$# $
public%% 
static%% 
ActiveFriends%% #!
ActiveFriendsInstance%%$ 9
{%%: ;
get%%< ?
=>%%@ B!
activeFriendsInstance%%C X
;%%X Y
set%%Z ]
=>%%^ `!
activeFriendsInstance%%a v
=%%w x
value%%y ~
;%%~ 
}
%%Ä Å
public'' 
CodeConfirmation'' 
(''  
String''  &
emailToConfirm''' 5
,''5 6
UserPOJO''7 ?
user''@ D
)''D E
{(( 	
this)) 
.)) 

userToSave)) 
=)) 
user)) "
;))" #
this** 
.** 
currentEmail** 
=** 
emailToConfirm**  .
;**. /
InitializeComponent++ 
(++  
)++  !
;++! "
GenerateCode,, 
(,, 
),, 
;,, 

StartTimer-- 
(-- 
)-- 
;-- 
	SentEmail.. 
(.. 
currentEmail.. "
).." #
;..# $
}00 	
private11 
void11 
GenerateCode11 !
(11! "
)11" #
{22 	
int33 $
fourDigitsAleatoryNumber33 (
=33) *
randomNumber33+ 7
.337 8
Next338 <
(33< =
$num33= A
,33A B
$num33C G
)33G H
;33H I
char44  
firstRandomCharacter44 %
=44& '
(44( )
char44) -
)44- .
randomNumber44. :
.44: ;
Next44; ?
(44? @
$char44@ C
,44C D
$char44E H
+44I J
$num44K L
)44L M
;44M N
char55 !
secondRandomCharacter55 &
=55' (
(55) *
char55* .
)55. /
randomNumber55/ ;
.55; <
Next55< @
(55@ A
$char55A D
,55D E
$char55F I
+55J K
$num55L M
)55M N
;55N O
currentCode66 
=66 
$"66 
{66  
firstRandomCharacter66 1
}661 2
{662 3!
secondRandomCharacter663 H
}66H I
{66I J$
fourDigitsAleatoryNumber66J b
:66b c
$str66c e
}66e f
"66f g
;66g h
}77 	
private99 
void99 

StartTimer99 
(99  
)99  !
{:: 	
timer;; 
=;; 
new;; 
DispatcherTimer;; '
(;;' (
);;( )
;;;) *
timer<< 
.<< 
Interval<< 
=<< 
TimeSpan<< %
.<<% &
FromSeconds<<& 1
(<<1 2
$num<<2 3
)<<3 4
;<<4 5
timer== 
.== 
Tick== 
+=== 

Timer_Tick== $
;==$ %
}>> 	
private@@ 
void@@ 

Timer_Tick@@ 
(@@  
object@@  &
sender@@' -
,@@- .
	EventArgs@@/ 8
e@@9 :
)@@: ;
{AA 	
ifBB 
(BB 
leftTimeBB 
>BB 
NULL_INT_VALUEBB )
)BB) *
{CC 
leftTimeDD 
--DD 
;DD 
lblResentCodeEE 
.EE 
ContentEE %
=EE& '
lblResentCodeEE( 5
.EE5 6
ContentEE6 =
+EE> ?
$strEE@ C
+EED E
leftTimeEEF N
;EEN O
}FF 
elseGG 
{HH 
timerII 
.II 
StopII 
(II 
)II 
;II 
}JJ 
}KK 	
privateNN 
voidNN 
	SentEmailNN 
(NN 
StringNN %
emailNN& +
)NN+ ,
{OO 	
UserManagerClientPP 
proxyServerPP )
=PP* +
newPP, /
UserManagerClientPP0 A
(PPA B
)PPB C
;PPC D
GenericClassOfintQQ 
sentEmailSuccQQ +
=QQ, -
proxyServerQQ. 9
.QQ9 :%
SentEmailCodeConfirmationQQ: S
(QQS T
emailQQT Y
,QQY Z

PropertiesQQ[ e
.QQe f
	ResourcesQQf o
.QQo p
EmailSubjectCode	QQp Ä
,
QQÄ Å
currentCode
QQÇ ç
+
QQé è
$str
QQê ì
+
QQî ï

Properties
QQñ †
.
QQ† °
	Resources
QQ° ™
.
QQ™ ´
EmailCodeDescrip
QQ´ ª
)
QQª º
;
QQº Ω
ifRR 
(RR 
sentEmailSuccRR 
.RR 
	CodeEventRR '
!=RR( *
ExceptionDictionaryRR+ >
.RR> ?
SUCCESFULL_EVENTRR? O
)RRO P
{SS 
ExceptionHandlerTT  
.TT  !
HandleExceptionTT! 0
(TT0 1
sentEmailSuccTT1 >
.TT> ?
	CodeEventTT? H
,TTH I
$strTTJ S
)TTS T
;TTT U
}VV 
ifWW 
(WW 
sentEmailSuccWW 
.WW 
ObjectSavedWW )
==WW* ,
NULL_INT_VALUEWW- ;
)WW; <
{XX 
newYY $
ErrorMessageDialogWindowYY ,
(YY, -

PropertiesYY- 7
.YY7 8
	ResourcesYY8 A
.YYA B
txbErrorTitleYYB O
,YYO P

PropertiesYYQ [
.YY[ \
	ResourcesYY\ e
.YYe f
SentEmailIssueYYf t
,YYt u
Application	YYv Å
.
YYÅ Ç
Current
YYÇ â
.
YYâ ä

MainWindow
YYä î
)
YYî ï
;
YYï ñ
}ZZ 
}[[ 	
private]] 
void]] 
CLicButtonSaveUser]] '
(]]' (
object]]( .
sender]]/ 5
,]]5 6
RoutedEventArgs]]7 F
e]]G H
)]]H I
{^^ 	
if__ 
(__ 
txbCodeCreateAcc__  
.__  !
Text__! %
.__% &
Trim__& *
(__* +
)__+ ,
.__, -
Equals__- 3
(__3 4
currentCode__4 ?
)__? @
)__@ A
{``  
PrepareUserToBeSavedaa $
(aa$ %
)aa% &
;aa& '
UserManagerClientbb !
proxyServerbb" -
=bb. /
newbb0 3
UserManagerClientbb4 E
(bbE F
)bbF G
;bbG H
GenericClassOfintcc !
	userSavedcc" +
=cc, -
proxyServercc. 9
.cc9 :
SaveUsercc: B
(ccB C

userToSaveccC M
)ccM N
;ccN O
ifdd 
(dd 
	userSaveddd 
.dd 
	CodeEventdd '
==dd( *
ExceptionDictionarydd+ >
.dd> ?
SUCCESFULL_EVENTdd? O
)ddO P
{ee 
SetSingletonff $
(ff$ %
)ff% &
;ff& '
newgg *
InformationMessageDialogWindowgg :
(gg: ;

Propertiesgg; E
.ggE F
	ResourcesggF O
.ggO P'
txbUserRegisteredSuccTittleggP k
,ggk l

Propertiesggl v
.ggv w
	Resources	ggw Ä
.
ggÄ Å%
txbInfoMessgSuccRegUser
ggÅ ò
,
ggò ô
Application
ggö •
.
gg• ¶
Current
gg¶ ≠
.
gg≠ Æ

MainWindow
ggÆ ∏
)
gg∏ π
;
ggπ ∫
MainMenuhh  
lobbyhh! &
=hh' (
newhh) ,
MainMenuhh- 5
(hh5 6
)hh6 7
;hh7 8
thisii 
.ii 
NavigationServiceii .
.ii. /
Navigateii/ 7
(ii7 8
lobbyii8 =
)ii= >
;ii> ?
NavigationServicejj )
.jj) *
RemoveBackEntryjj* 9
(jj9 :
)jj: ;
;jj; <
}kk 
elsell 
{mm 
ExceptionHandlernn $
.nn$ %
HandleExceptionnn% 4
(nn4 5
	userSavednn5 >
.nn> ?
	CodeEventnn? H
,nnH I

PropertiesnnJ T
.nnT U
	ResourcesnnU ^
.nn^ _'
txbErrorMessageRegisterUsernn_ z
)nnz {
;nn{ |
}pp 
}qq 
elserr 
{ss 
txbWrongCodett 
.tt 

Visibilitytt '
=tt( )

Visibilitytt* 4
.tt4 5
Visiblett5 <
;tt< =
}uu 
}vv 	
privatexx 
voidxx  
PrepareUserToBeSavedxx )
(xx) *
)xx* +
{yy 	
Stringzz 
encryptedPasswordzz $
=zz% &
EncryptionClasszz' 6
.zz6 7
EncryptPasswordzz7 F
(zzF G

userToSavezzG Q
.zzQ R
PasswordzzR Z
.zzZ [
ToStringzz[ c
(zzc d
)zzd e
.zze f
Trimzzf j
(zzj k
)zzk l
)zzl m
;zzm n

userToSave{{ 
.{{ 
Password{{ 
={{  !
encryptedPassword{{" 3
;{{3 4

userToSave|| 
.|| 
IdUser|| 
=|| 
NULL_INT_VALUE||  .
;||. /
}}} 	
private 
void #
CLickButtonCancelSaving ,
(, -
object- 3
sender4 :
,: ;
RoutedEventArgs< K
eL M
)M N
{
ÄÄ 	
UserRegister
ÅÅ 
userToRegister
ÅÅ '
=
ÅÅ( )
new
ÅÅ* -
UserRegister
ÅÅ. :
(
ÅÅ: ;
)
ÅÅ; <
;
ÅÅ< =
this
ÇÇ 
.
ÇÇ 
NavigationService
ÇÇ "
.
ÇÇ" #
Navigate
ÇÇ# +
(
ÇÇ+ ,
userToRegister
ÇÇ, :
)
ÇÇ: ;
;
ÇÇ; <
userToRegister
ÉÉ 
.
ÉÉ 
ChargeField
ÉÉ &
(
ÉÉ& '

userToSave
ÉÉ' 1
)
ÉÉ1 2
;
ÉÉ2 3
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
ClickResentCode
áá $
(
áá$ %
object
áá% +
sender
áá, 2
,
áá2 3"
MouseButtonEventArgs
áá4 H
e
ááI J
)
ááJ K
{
àà 	
if
ââ 
(
ââ 
leftTime
ââ 
==
ââ 
NULL_INT_VALUE
ââ *
)
ââ* +
{
ää 
currentCode
ãã 
=
ãã 
null
ãã "
;
ãã" #
GenerateCode
åå 
(
åå 
)
åå 
;
åå 
	SentEmail
çç 
(
çç 
currentEmail
çç &
)
çç& '
;
çç' (

StartTimer
éé 
(
éé 
)
éé 
;
éé 
}
èè 
}
êê 	
private
ëë 
void
ëë  
CodeEntryValidator
ëë '
(
ëë' (
object
ëë( .
sender
ëë/ 5
,
ëë5 6"
TextChangedEventArgs
ëë7 K
e
ëëL M
)
ëëM N
{
íí 	
if
ìì 
(
ìì 
txbCodeCreateAcc
ìì  
.
ìì  !
Text
ìì! %
.
ìì% &
Trim
ìì& *
(
ìì* +
)
ìì+ ,
.
ìì, -
Length
ìì- 3
==
ìì4 6
$num
ìì7 8
)
ìì8 9
{
îî 
bttSaveUser
ïï 
.
ïï 
	IsEnabled
ïï %
=
ïï& '
true
ïï( ,
;
ïï, -
}
ññ 
else
óó 
{
òò 
bttSaveUser
ôô 
.
ôô 
	IsEnabled
ôô %
=
ôô% &
false
ôô& +
;
ôô+ ,
}
öö 
}
õõ 	
private
ùù 
void
ùù 
SetSingleton
ùù !
(
ùù! "
)
ùù" #
{
ûû 	&
ConsultInformationClient
üü $&
consultInformationClient
üü% =
=
üü> ?
new
üü@ C&
ConsultInformationClient
üüD \
(
üü\ ]
)
üü] ^
;
üü^ _
var
†† 
	userSaved
†† 
=
†† &
consultInformationClient
†† 5
.
††5 6#
ConsultUserByUserName
††6 K
(
††K L

userToSave
††L V
.
††V W
UserName
††W _
)
††_ `
;
††` a
if
°° 
(
°° 
	userSaved
°° 
.
°° 
	CodeEvent
°° "
==
°°# %!
ExceptionDictionary
°°& 9
.
°°9 :
SUCCESFULL_EVENT
°°: J
)
°°J K
{
¢¢ 
var
££ 
playerSaved
££ 
=
££  !&
consultInformationClient
££" :
.
££: ;#
ConsultPlayerByIdUser
££; P
(
££P Q
	userSaved
££Q Z
.
££Z [
ObjectSaved
££[ f
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
§§ 
playerSaved
§§ 
.
§§  
	CodeEvent
§§  )
==
§§* ,!
ExceptionDictionary
§§- @
.
§§@ A
SUCCESFULL_EVENT
§§A Q
)
§§Q R
{
•• 
UserSingleton
¶¶ !
userSingleton
¶¶" /
=
¶¶0 1
UserSingleton
¶¶2 ?
.
¶¶? @
GetMainUser
¶¶@ K
(
¶¶K L
)
¶¶L M
;
¶¶M N
userSingleton
ßß !
.
ßß! "
IdUser
ßß" (
=
ßß) *
	userSaved
ßß+ 4
.
ßß4 5
ObjectSaved
ßß5 @
.
ßß@ A
IdUser
ßßA G
;
ßßG H
userSingleton
®® !
.
®®! "
Name
®®" &
=
®®' (
	userSaved
®®) 2
.
®®2 3
ObjectSaved
®®3 >
.
®®> ?
Name
®®? C
;
®®C D
userSingleton
©© !
.
©©! "
UserName
©©" *
=
©©+ ,
	userSaved
©©- 6
.
©©6 7
ObjectSaved
©©7 B
.
©©B C
UserName
©©C K
;
©©K L
userSingleton
™™ !
.
™™! "
Email
™™" '
=
™™( )
	userSaved
™™* 3
.
™™3 4
ObjectSaved
™™4 ?
.
™™? @
EmailAddress
™™@ L
;
™™L M
userSingleton
´´ !
.
´´! "
Password
´´" *
=
´´+ ,
	userSaved
´´- 6
.
´´6 7
ObjectSaved
´´7 B
.
´´B C
Password
´´C K
;
´´K L
userSingleton
¨¨ !
.
¨¨! "
IdPlayer
¨¨" *
=
¨¨+ ,
playerSaved
¨¨- 8
.
¨¨8 9
ObjectSaved
¨¨9 D
.
¨¨D E
IdPlayer
¨¨E M
;
¨¨M N
userSingleton
≠≠ !
.
≠≠! "
GeneralPoints
≠≠" /
=
≠≠0 1
playerSaved
≠≠2 =
.
≠≠= >
ObjectSaved
≠≠> I
.
≠≠I J
GeneralPoints
≠≠J W
;
≠≠W X
userSingleton
ÆÆ !
.
ÆÆ! "
	NoReports
ÆÆ" +
=
ÆÆ, -
playerSaved
ÆÆ. 9
.
ÆÆ9 :
ObjectSaved
ÆÆ: E
.
ÆÆE F
	NoReports
ÆÆF O
;
ÆÆO P
userSingleton
ØØ !
.
ØØ! "
IdState
ØØ" )
=
ØØ* +
playerSaved
ØØ, 7
.
ØØ7 8
ObjectSaved
ØØ8 C
.
ØØC D
IdState
ØØD K
;
ØØK L
userSingleton
∞∞ !
.
∞∞! "
IdCurrentAvatar
∞∞" 1
=
∞∞2 3
playerSaved
∞∞4 ?
.
∞∞? @
ObjectSaved
∞∞@ K
.
∞∞K L
IdActualAvatar
∞∞L Z
;
∞∞Z [
InstanceContext
±± #
context
±±$ +
=
±±, -
new
±±. 1
InstanceContext
±±2 A
(
±±A B
this
±±B F
)
±±F G
;
±±G H*
NotifyUserAvailabilityClient
≤≤ 0"
proxyChannelCallback
≤≤1 E
=
≤≤F G
new
≤≤H K*
NotifyUserAvailabilityClient
≤≤L h
(
≤≤h i
context
≤≤i p
)
≤≤p q
;
≤≤q r
userSingleton
≥≥ !
.
≥≥! ""
proxyForAvailability
≥≥" 6
=
≥≥7 8"
proxyChannelCallback
≥≥9 M
;
≥≥M N
userSingleton
¥¥ !
.
¥¥! ""
proxyForAvailability
¥¥" 6
.
¥¥6 7
PlayerIsAvailable
¥¥7 H
(
¥¥H I
userSingleton
¥¥I V
.
¥¥V W
IdUser
¥¥W ]
,
¥¥] ^
userSingleton
¥¥_ l
.
¥¥l m
IdPlayer
¥¥m u
)
¥¥u v
;
¥¥v w
}
µµ 
else
∂∂ 
{
∑∑ 
ExceptionHandler
∏∏ $
.
∏∏$ %
HandleException
∏∏% 4
(
∏∏4 5
playerSaved
∏∏5 @
.
∏∏@ A
	CodeEvent
∏∏A J
,
∏∏J K
$str
∏∏L N
)
∏∏N O
;
∏∏O P
}
ππ 
}
∫∫ 
else
ªª 
{
ºº 
ExceptionHandler
ΩΩ  
.
ΩΩ  !
HandleException
ΩΩ! 0
(
ΩΩ0 1
	userSaved
ΩΩ1 :
.
ΩΩ: ;
	CodeEvent
ΩΩ; D
,
ΩΩD E
$str
ΩΩF H
)
ΩΩH I
;
ΩΩI J
}
ææ 
}
øø 	
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
¬¬ 	
(
√√ 
(
√√ -
INotifyUserAvailabilityCallback
√√ -
)
√√- .#
ActiveFriendsInstance
√√. C
)
√√C D
.
√√D E*
ResponseOfPlayerAvailability
√√E a
(
√√a b
status
√√b h
,
√√h i
idFriend
√√j r
)
√√r s
;
√√s t
}
ƒƒ 	
}
∆∆ 
}»»  ,
nC:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameClient\Pages\EditUserProfile.xaml.cs
	namespace 	
JeopardyGame
 
. 
Pages 
{ 
public 

partial 
class 
EditUserProfile (
:) *
Page+ /
{ 
public 
EditUserProfile 
( 
)  
{ 	
InitializeComponent 
(  
)  !
;! "
DisplayUserInfo 
( 
txbEditName '
,' (
txbEditUserName) 8
,8 9
txbEditEmail: F
)F G
;G H
} 	
public   
static   
void   
DisplayUserInfo   *
(  * +
TextBox  + 2
txbEditName  3 >
,  > ?
TextBox  @ G
txbEditUserName  H W
,  W X
TextBox  Y `
txbEditEmail  a m
)  m n
{!! 	
txbEditUserName"" 
."" 

IsReadOnly"" &
=""' (
true"") -
;""- .
txbEditEmail## 
.## 

IsReadOnly## #
=##$ %
true##& *
;##* +
UserSingleton$$ 
userSingleton$$ '
=$$( )
UserSingleton$$* 7
.$$7 8
GetMainUser$$8 C
($$C D
)$$D E
;$$E F
txbEditName%% 
.%% 
Text%% 
=%% 
userSingleton%% ,
.%%, -
Name%%- 1
;%%1 2
txbEditUserName&& 
.&& 
Text&&  
=&&! "
userSingleton&&# 0
.&&0 1
UserName&&1 9
;&&9 :
txbEditEmail'' 
.'' 
Text'' 
='' 
userSingleton''  -
.''- .
Email''. 3
;''3 4
})) 	
private++ 
void++  
CLicButtonChoseImage++ )
(++) *
object++* 0
sender++1 7
,++7 8
RoutedEventArgs++9 H
e++I J
)++J K
{,, 	
}.. 	
private00 
void00 !
CLicButtonSaveChanges00 *
(00* +
object00+ 1
sender002 8
,008 9
RoutedEventArgs00: I
e00J K
)00K L
{11 	
String22 

nameEdited22 
=22 
txbEditName22  +
.22+ ,
Text22, 0
;220 1
String33 
originalName33 
=33  !
UserSingleton33" /
.33/ 0
GetMainUser330 ;
(33; <
)33< =
.33= >
Name33> B
;33B C
UserManagerClient44 
proxyServer44 )
=44* +
new44, /
UserManagerClient440 A
(44A B
)44B C
;44C D
var55 
result55 
=55 
proxyServer55 %
.55% &!
UpdateUserInformation55& ;
(55; <

nameEdited55< F
,55F G
originalName55H T
)55T U
;55U V
if66 
(66 
result66 
.66 
	CodeEvent66  
==66! #
ExceptionDictionary66$ 7
.667 8
SUCCESFULL_EVENT668 H
)66H I
{77 
new88 *
InformationMessageDialogWindow88 2
(882 3
$str883 :
,88: ;
$str88; d
,88d e
Application88e p
.88p q
Current88q x
.88x y

MainWindow	88y É
)
88É Ñ
;
88Ñ Ö
}99 
else:: 
{;; 
ExceptionHandler<<  
.<<  !
HandleException<<! 0
(<<0 1
result<<1 7
.<<7 8
	CodeEvent<<8 A
,<<A B
$str<<C L
)<<L M
;<<M N
new== $
ErrorMessageDialogWindow== ,
(==, -
$str==- 4
,==4 5
$str==6 j
,==j k
Application==l w
.==w x
Current==x 
.	== Ä

MainWindow
==Ä ä
)
==ä ã
;
==ã å
}>> 
proxyServer?? 
.?? 
Close?? 
(?? 
)?? 
;??  
}@@ 	
privateBB 
voidBB #
CLicButtonCancelChangesBB ,
(BB, -
objectBB- 3
senderBB4 :
,BB: ;
RoutedEventArgsBB< K
eBBL M
)BBM N
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
.DDg h"
txbWarningMessCloseWinDDh ~
,DD~ 
Application
DDÄ ã
.
DDã å
Current
DDå ì
.
DDì î

MainWindow
DDî û
)
DDû ü
.
DDü †
CloseWindow
DD† ´
)
DD´ ¨
{EE 
CloseWindowFF 
(FF 
)FF 
;FF 
}GG 
}HH 	
privateJJ 
voidJJ 
CloseWindowJJ  
(JJ  !
)JJ! "
{KK 	
MainMenuLL 
mainMenuPageLL !
=LL" #
newLL$ '
MainMenuLL( 0
(LL0 1
)LL1 2
;LL2 3
thisMM 
.MM 
NavigationServiceMM "
.MM" #
NavigateMM# +
(MM+ ,
mainMenuPageMM, 8
)MM8 9
;MM9 :
NavigationServiceNN 
.NN 
RemoveBackEntryNN -
(NN- .
)NN. /
;NN/ 0
}OO 	
}PP 
}QQ ·
pC:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameClient\Pages\enterGameWithCode.xaml.cs
	namespace 	
JeopardyGame
 
. 
Pages 
{ 
public 

partial 
class 
enterGameWithCode *
:+ ,
Page- 1
{ 
public 
enterGameWithCode  
(  !
)! "
{ 	
InitializeComponent 
(  
)  !
;! "
} 	
private 
void #
clickEnterLobbyWithCode ,
(, -
object- 3
sender4 :
,: ;
RoutedEventArgs< K
eL M
)M N
{ 	
int 
enteredCode 
; 
if   
(   
int   
.   
TryParse   
(   
tbxCode   $
.  $ %
Text  % )
,  ) *
out  + .
enteredCode  / :
)  : ;
)  ; <
{!! 
Views"" 
."" 
PrincipalWindow"" %

gameWindow""& 0
=""1 2
new""3 6
Views""7 <
.""< =
PrincipalWindow""= L
(""L M
)""M N
;""N O

gameWindow## 
.## 
Show## 
(##  
)##  !
;##! "
	LobbyPage$$ 
	lobbyPage$$ #
=$$$ %
new$$& )
	LobbyPage$$* 3
($$3 4
enteredCode$$4 ?
)$$? @
;$$@ A

gameWindow%% 
.%% 
contentFrame%% '
.%%' (
NavigationService%%( 9
.%%9 :
Navigate%%: B
(%%B C
	lobbyPage%%C L
)%%L M
;%%M N
}&& 
else'' 
{(( 
new)) $
ErrorMessageDialogWindow)) ,
()), -
$str))- 4
,))4 5
$str))6 P
,))P Q
Application))R ]
.))] ^
Current))^ e
.))e f

MainWindow))f p
)))p q
;))q r
}** 
}++ 	
private-- 
void-- 

ClickClose-- 
(--  
object--  &
sender--' -
,--- . 
MouseButtonEventArgs--/ C
e--D E
)--E F
{.. 	
UserSingleton// 
userSingleton// '
=//( )
UserSingleton//* 7
.//7 8
GetMainUser//8 C
(//C D
)//D E
;//E F
if00 
(00 
userSingleton00 
.00  
proxyForAvailability00 2
==003 5
null006 :
)00: ;
{11 
PrincipalPage22 
pagePrincipal22 +
=22, -
new22. 1
PrincipalPage222 ?
(22? @
)22@ A
;22A B
this33 
.33 
NavigationService33 &
.33& '
Navigate33' /
(33/ 0
pagePrincipal330 =
)33= >
;33> ?
NavigationService44 !
.44! "
RemoveBackEntry44" 1
(441 2
)442 3
;443 4
}55 
else66 
{77 
MainMenu88 
mainMenu88 !
=88" #
new88$ '
MainMenu88( 0
(880 1
)881 2
;882 3
this99 
.99 
NavigationService99 &
.99& '
Navigate99' /
(99/ 0
mainMenu990 8
)998 9
;999 :
NavigationService:: !
.::! "
RemoveBackEntry::" 1
(::1 2
)::2 3
;::3 4
};; 
}<< 	
}>> 
}?? ˙µ
lC:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameClient\Pages\FriendManager.xaml.cs
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
FriendManager &
:' (
Page) -
,- .3
'INotifyUserActionFriendsManagerCallback/ V
{ 
private 
List 
< "
FriendBasicInformation +
>+ ,
friends- 4
;4 5
private 
List 
< "
FriendBasicInformation +
>+ ,
friendRequests- ;
;; <
private 
List 
< "
FriendBasicInformation +
>+ ,
otherPeople- 8
;8 9
private 
String 
textLeftButton %
=& '

Properties( 2
.2 3
	Resources3 <
.< =
	bttReport= F
;F G
private 
String 
textRightButton &
=' (

Properties) 3
.3 4
	Resources4 =
.= >
bttEliminate> J
;J K
private 
DispatcherTimer 
timer  %
;% &
private 
int 
leftTime 
= 
$num  
;  !
private   
const   
int   

NOT_STATUS   $
=  % &
$num  ' (
;  ( )
private!! 
const!! 
int!! 

MY_FRIENDS!! $
=!!% &
$num!!' (
;!!( )
private"" 
const"" 
int"" 
FRIENDS_REQUEST"" )
=""* +
$num"", -
;""- .
private## 
const## 
int## 
OTHER_PEOPLE## &
=##' (
$num##) *
;##* +
private$$ 
const$$ 
int$$ 
DECLINED_REQUEST$$ *
=$$+ ,
$num$$- .
;$$. /
private%% 
const%% 
int%% 
SEND_REQUEST%% &
=%%' (
$num%%) *
;%%* +
private&& 
const&& 
int&& 
ACCEPT_REQUEST&& (
=&&) *
$num&&+ ,
;&&, -
private'' 
int'' 
typeUserConsult'' #
=''$ %

MY_FRIENDS''& 0
;''0 10
$NotifyUserActionFriendsManagerClient(( ,0
$notifyUserActionFriendsManagerClient((- Q
;((Q R
private)) 
InstanceContext)) 
context))  '
;))' (
public++ 
FriendManager++ 
(++ 
)++ 
{,, 	
InitializeComponent-- 
(--  
)--  !
;--! "
PrepareWindow.. 
(.. 
).. 
;.. 
}// 	
private11 
void11 
PrepareWindow11 "
(11" #
)11# $
{22 	
context33 
=33 
new33 
InstanceContext33 )
(33) *
this33* .
)33. /
;33/ 00
$notifyUserActionFriendsManagerClient44 0
=441 2
new443 60
$NotifyUserActionFriendsManagerClient447 [
(44[ \
context44\ c
)44c d
;44d e
UserSingleton55 
userSingleton55 '
=55( )
UserSingleton55* 7
.557 8
GetMainUser558 C
(55C D
)55D E
;55E F0
$notifyUserActionFriendsManagerClient66 0
.660 1%
RegisterFriendManagerUser661 J
(66J K
userSingleton66K X
.66X Y
IdUser66Y _
)66_ `
;66` a
GetAllTables77 
(77 
)77 
;77 
SetCards88 
(88 
)88 
;88 
}99 	
private;; 
void;; 
GetAllTables;; !
(;;! "
);;" #
{<< 	 
FriendsManagerClient==  
proxyFriend==! ,
===- .
new==/ 2 
FriendsManagerClient==3 G
(==G H
)==H I
;==I J$
ConsultInformationClient>> $
	proxyUser>>% .
=>>/ 0
new>>1 4$
ConsultInformationClient>>5 M
(>>M N
)>>N O
;>>O P
UserSingleton?? 
userSingleton?? '
=??( )
UserSingleton??* 7
.??7 8
GetMainUser??8 C
(??C D
)??D E
;??E F
var@@ 
userConsulted@@ 
=@@ 
	proxyUser@@  )
.@@) *
ConsultUserById@@* 9
(@@9 :
userSingleton@@: G
.@@G H
IdUser@@H N
)@@N O
;@@O P
ifAA 
(AA 
userConsultedAA 
.AA 
	CodeEventAA '
==AA( *
ExceptionDictionaryAA+ >
.AA> ?
SUCCESFULL_EVENTAA? O
)AAO P
{BB 
varCC 
friendsConsultedCC $
=CC% &
proxyFriendCC' 2
.CC2 3
GetUserFriendsCC3 A
(CCA B
userConsultedCCB O
.CCO P
ObjectSavedCCP [
)CC[ \
;CC\ ]
ifDD 
(DD 
friendsConsultedDD $
.DD$ %
	CodeEventDD% .
==DD/ 1
ExceptionDictionaryDD2 E
.DDE F
SUCCESFULL_EVENTDDF V
)DDV W
{EE 
varFF #
friendRequestsConsultedFF /
=FF0 1
proxyFriendFF2 =
.FF= >!
GetUserFriendRequestsFF> S
(FFS T
userConsultedFFT a
.FFa b
ObjectSavedFFb m
)FFm n
;FFn o
ifGG 
(GG #
friendRequestsConsultedGG /
.GG/ 0
	CodeEventGG0 9
==GG: <
ExceptionDictionaryGG= P
.GGP Q
SUCCESFULL_EVENTGGQ a
)GGa b
{HH 
varII  
otherPeopleConsultedII 0
=II1 2
proxyFriendII3 >
.II> ?
GetUsersNotFriendsII? Q
(IIQ R
userConsultedIIR _
.II_ `
ObjectSavedII` k
)IIk l
;IIl m
ifJJ 
(JJ  
otherPeopleConsultedJJ 0
.JJ0 1
	CodeEventJJ1 :
==JJ; =
ExceptionDictionaryJJ> Q
.JJQ R
SUCCESFULL_EVENTJJR b
)JJb c
{KK 
friendsLL #
=LL$ %
friendsConsultedLL& 6
.LL6 7
ObjectSavedLL7 B
.LLB C
ToListLLC I
(LLI J
)LLJ K
;LLK L
friendRequestsMM *
=MM+ ,#
friendRequestsConsultedMM- D
.MMD E
ObjectSavedMME P
.MMP Q
ToListMMQ W
(MMW X
)MMX Y
;MMY Z
otherPeopleNN '
=NN( ) 
otherPeopleConsultedNN* >
.NN> ?
ObjectSavedNN? J
.NNJ K
ToListNNK Q
(NNQ R
)NNR S
;NNS T
}OO 
elsePP 
{QQ 
ExceptionHandlerRR ,
.RR, -
HandleExceptionRR- <
(RR< = 
otherPeopleConsultedRR= Q
.RRQ R
	CodeEventRRR [
,RR[ \
$strRR] _
)RR_ `
;RR` a
}SS 
}TT 
elseUU 
{VV 
ExceptionHandlerWW (
.WW( )
HandleExceptionWW) 8
(WW8 9#
friendRequestsConsultedWW9 P
.WWP Q
	CodeEventWWQ Z
,WWZ [
$strWW\ ^
)WW^ _
;WW_ `
}XX 
}YY 
elseZZ 
{[[ 
ExceptionHandler\\ $
.\\$ %
HandleException\\% 4
(\\4 5
friendsConsulted\\5 E
.\\E F
	CodeEvent\\F O
,\\O P
$str\\Q S
)\\S T
;\\T U
}]] 
proxyFriend^^ 
.^^ 
Close^^ !
(^^! "
)^^" #
;^^# $
	proxyUser__ 
.__ 
Close__ 
(__  
)__  !
;__! "
}`` 
elseaa 
{bb 
ExceptionHandlercc  
.cc  !
HandleExceptioncc! 0
(cc0 1
userConsultedcc1 >
.cc> ?
	CodeEventcc? H
,ccH I
$strccJ S
)ccS T
;ccT U
}ee 
}ff 	
privatehh 
voidhh 
SetCardshh 
(hh 
)hh 
{ii 	!
stcFrinedsManagerListjj !
.jj! "
Childrenjj" *
.jj* +
Clearjj+ 0
(jj0 1
)jj1 2
;jj2 3
Listkk 
<kk "
FriendBasicInformationkk '
>kk' (
listOfUserskk) 4
;kk4 5
switchll 
(ll 
typeUserConsultll #
)ll# $
{mm 
casenn 

MY_FRIENDSnn 
:nn  
listOfUsersoo 
=oo  !
newoo" %
Listoo& *
<oo* +"
FriendBasicInformationoo+ A
>ooA B
(ooB C
friendsooC J
)ooJ K
;ooK L
breakpp 
;pp 
caseqq 
FRIENDS_REQUESTqq $
:qq$ %
listOfUsersrr 
=rr  !
newrr" %
Listrr& *
<rr* +"
FriendBasicInformationrr+ A
>rrA B
(rrB C
friendRequestsrrC Q
)rrQ R
;rrR S
breakss 
;ss 
casett 
OTHER_PEOPLEtt !
:tt! "
listOfUsersuu 
=uu  !
newuu" %
Listuu& *
<uu* +"
FriendBasicInformationuu+ A
>uuA B
(uuB C
otherPeopleuuC N
)uuN O
;uuO P
breakvv 
;vv 
defaultww 
:ww 
listOfUsersxx 
=xx  !
newxx" %
Listxx& *
<xx* +"
FriendBasicInformationxx+ A
>xxA B
(xxB C
)xxC D
;xxD E
breakyy 
;yy 
}zz 
foreach{{ 
({{ 
var{{ 
item{{ 
in{{  
listOfUsers{{! ,
){{, -
{|| 
Border}} 
brdCard}} 
=}}  
new}}! $
Border}}% +
(}}+ ,
)}}, -
;}}- .&
FriendCardManagementWindow~~ * 
friendCardManagement~~+ ?
=~~@ A
new~~B E&
FriendCardManagementWindow~~F `
(~~` a
item~~a e
.~~e f
IdUser~~f l
,~~l m
item~~n r
.~~r s
UserName~~s {
,~~{ |
typeUserConsult	~~} å
,
~~å ç
textLeftButton
~~é ú
,
~~ú ù
textRightButton
~~û ≠
,
~~≠ Æ
this
~~Ø ≥
)
~~≥ ¥
;
~~¥ µ
brdCard 
. 
Child 
=  
friendCardManagement  4
;4 5#
stcFrinedsManagerList
ÄÄ %
.
ÄÄ% &
Children
ÄÄ& .
.
ÄÄ. /
Add
ÄÄ/ 2
(
ÄÄ2 3 
SetBorderCardStyle
ÄÄ3 E
(
ÄÄE F
brdCard
ÄÄF M
)
ÄÄM N
)
ÄÄN O
;
ÄÄO P
}
ÅÅ 
}
ÇÇ 	
private
ÖÖ 
Border
ÖÖ  
SetBorderCardStyle
ÖÖ )
(
ÖÖ) *
Border
ÖÖ* 0
brdCard
ÖÖ1 8
)
ÖÖ8 9
{
ÜÜ 	
brdCard
áá 
.
áá 

Background
áá 
=
áá  
new
áá! $
SolidColorBrush
áá% 4
(
áá4 5
(
áá5 6
Color
áá6 ;
)
áá; <
ColorConverter
áá< J
.
ááJ K
ConvertFromString
ááK \
(
áá\ ]
$str
áá] f
)
ááf g
)
áág h
;
ááh i
brdCard
àà 
.
àà 

Background
àà 
.
àà 
Opacity
àà &
=
àà' (
$num
àà) -
;
àà- .
brdCard
ââ 
.
ââ 
CornerRadius
ââ  
=
ââ! "
new
ââ# &
CornerRadius
ââ' 3
(
ââ3 4
$num
ââ4 6
)
ââ6 7
;
ââ7 8
brdCard
ää 
.
ää 
Margin
ää 
=
ää 
new
ää  
	Thickness
ää! *
(
ää* +
$num
ää+ -
,
ää- .
$num
ää/ 1
,
ää1 2
$num
ää3 4
,
ää4 5
$num
ää6 8
)
ää8 9
;
ää9 :
brdCard
ãã 
.
ãã 
Width
ãã 
=
ãã 
$num
ãã  
;
ãã  !
brdCard
åå 
.
åå 
MaxWidth
åå 
=
åå 
$num
åå #
;
åå# $
brdCard
çç 
.
çç 
Height
çç 
=
çç 
$num
çç 
;
çç  
brdCard
éé 
.
éé !
HorizontalAlignment
éé '
=
éé( )!
HorizontalAlignment
éé* =
.
éé= >
Left
éé> B
;
ééB C
return
èè 
brdCard
èè 
;
èè 
}
êê 	
private
íí 
void
íí #
ClickConsultMyFriends
íí *
(
íí* +
object
íí+ 1
sender
íí2 8
,
íí8 9"
MouseButtonEventArgs
íí: N
e
ííO P
)
ííP Q
{
ìì 	
typeUserConsult
îî 
=
îî 

MY_FRIENDS
îî (
;
îî( )
textLeftButton
ïï 
=
ïï 

Properties
ïï '
.
ïï' (
	Resources
ïï( 1
.
ïï1 2
	bttReport
ïï2 ;
;
ïï; <
textRightButton
ññ 
=
ññ 

Properties
ññ (
.
ññ( )
	Resources
ññ) 2
.
ññ2 3
bttEliminate
ññ3 ?
;
ññ? @
SelectLabel
óó 
(
óó 
lblMyFriends
óó $
)
óó$ %
;
óó% &
if
òò 
(
òò 
friends
òò 
==
òò 
null
òò 
)
òò  
{
ôô 
GetAllTables
öö 
(
öö 
)
öö 
;
öö 
}
õõ 
SetCards
úú 
(
úú 
)
úú 
;
úú 
}
ùù 	
private
üü 
void
üü +
ClickConsultFriendSolicitudes
üü 2
(
üü2 3
object
üü3 9
sender
üü: @
,
üü@ A"
MouseButtonEventArgs
üüB V
e
üüW X
)
üüX Y
{
†† 	
typeUserConsult
°° 
=
°° 
FRIENDS_REQUEST
°° -
;
°°- .
textLeftButton
¢¢ 
=
¢¢ 

Properties
¢¢ '
.
¢¢' (
	Resources
¢¢( 1
.
¢¢1 2$
bttAcceptFriendRequest
¢¢2 H
;
¢¢H I
textRightButton
££ 
=
££ 

Properties
££ (
.
££( )
	Resources
££) 2
.
££2 3%
bttDeclineFriendRequest
££3 J
;
££J K
SelectLabel
§§ 
(
§§ 
lblRequests
§§ #
)
§§# $
;
§§$ %
if
•• 
(
•• 
friendRequests
•• 
==
•• !
null
••" &
)
••& '
{
¶¶ 
GetAllTables
ßß 
(
ßß 
)
ßß 
;
ßß 
}
®® 
SetCards
©© 
(
©© 
)
©© 
;
©© 
}
™™ 	
private
¨¨ 
void
¨¨ $
ClickConsultMorePeople
¨¨ +
(
¨¨+ ,
object
¨¨, 2
sender
¨¨3 9
,
¨¨9 :"
MouseButtonEventArgs
¨¨; O
e
¨¨P Q
)
¨¨Q R
{
≠≠ 	
typeUserConsult
ÆÆ 
=
ÆÆ 
OTHER_PEOPLE
ÆÆ *
;
ÆÆ* +
textLeftButton
ØØ 
=
ØØ 

Properties
ØØ '
.
ØØ' (
	Resources
ØØ( 1
.
ØØ1 2
bttAddFriend
ØØ2 >
;
ØØ> ?
textRightButton
∞∞ 
=
∞∞ 

Properties
∞∞ (
.
∞∞( )
	Resources
∞∞) 2
.
∞∞2 3
	bttReport
∞∞3 <
;
∞∞< =
SelectLabel
±± 
(
±± 
lblMorePeople
±± %
)
±±% &
;
±±& '
if
≤≤ 
(
≤≤ 
otherPeople
≤≤ 
==
≤≤ 
null
≤≤ #
)
≤≤# $
{
≥≥ 
GetAllTables
¥¥ 
(
¥¥ 
)
¥¥ 
;
¥¥ 
}
µµ 
SetCards
∂∂ 
(
∂∂ 
)
∂∂ 
;
∂∂ 
}
∑∑ 	
private
ππ 
void
ππ 
SelectLabel
ππ  
(
ππ  !
Label
ππ! &
selectedLabel
ππ' 4
)
ππ4 5
{
∫∫ 	
lblMyFriends
ªª 
.
ªª 
FontSize
ªª !
=
ªª" #
$num
ªª$ &
;
ªª& '
lblMyFriends
ºº 
.
ºº 

Foreground
ºº #
=
ºº$ %
new
ºº& )
SolidColorBrush
ºº* 9
(
ºº9 :
Colors
ºº: @
.
ºº@ A
White
ººA F
)
ººF G
;
ººG H
lblRequests
ΩΩ 
.
ΩΩ 
FontSize
ΩΩ  
=
ΩΩ! "
$num
ΩΩ# %
;
ΩΩ% &
lblRequests
ææ 
.
ææ 

Foreground
ææ "
=
ææ# $
new
ææ% (
SolidColorBrush
ææ) 8
(
ææ8 9
Colors
ææ9 ?
.
ææ? @
White
ææ@ E
)
ææE F
;
ææF G
lblMorePeople
øø 
.
øø 
FontSize
øø "
=
øø# $
$num
øø% '
;
øø' (
lblMorePeople
¿¿ 
.
¿¿ 

Foreground
¿¿ $
=
¿¿% &
new
¿¿' *
SolidColorBrush
¿¿+ :
(
¿¿: ;
Colors
¿¿; A
.
¿¿A B
White
¿¿B G
)
¿¿G H
;
¿¿H I
selectedLabel
¡¡ 
.
¡¡ 
FontSize
¡¡ "
=
¡¡# $
$num
¡¡% '
;
¡¡' (
selectedLabel
¬¬ 
.
¬¬ 

Foreground
¬¬ $
=
¬¬% &
new
¬¬' *
SolidColorBrush
¬¬+ :
(
¬¬: ;
Colors
¬¬; A
.
¬¬A B
	LightGray
¬¬B K
)
¬¬K L
;
¬¬L M
}
√√ 	
public
≈≈ 
void
≈≈ 

ReportUser
≈≈ 
(
≈≈ 
int
≈≈ "
idPlayer
≈≈# +
,
≈≈+ ,
string
≈≈- 3
userNmae
≈≈4 <
)
≈≈< =
{
∆∆ 	2
$notifyUserActionFriendsManagerClient
«« 0
.
««0 1
ReportPlayer
««1 =
(
««= >
idPlayer
««> F
,
««F G
userNmae
««H P
)
««P Q
;
««Q R
}
»» 	
public
   
void
   
EliminateFriend
   #
(
  # $
int
  $ '%
idUserFriendToEliminate
  ( ?
)
  ? @
{
ÀÀ 	
UserSingleton
ÃÃ 
userSingleton
ÃÃ '
=
ÃÃ( )
UserSingleton
ÃÃ* 7
.
ÃÃ7 8
GetMainUser
ÃÃ8 C
(
ÃÃC D
)
ÃÃD E
;
ÃÃE F2
$notifyUserActionFriendsManagerClient
ÕÕ 0
.
ÕÕ0 1&
EliminateUserFromFriends
ÕÕ1 I
(
ÕÕI J
userSingleton
ÕÕJ W
.
ÕÕW X
IdPlayer
ÕÕX `
,
ÕÕ` a%
idUserFriendToEliminate
ÕÕb y
)
ÕÕy z
;
ÕÕz {
String
ŒŒ 
userName
ŒŒ 
=
ŒŒ 
String
ŒŒ $
.
ŒŒ$ %
Empty
ŒŒ% *
;
ŒŒ* +
foreach
œœ 
(
œœ 
var
œœ 
item
œœ 
in
œœ  
friends
œœ! (
)
œœ( )
{
–– 
if
—— 
(
—— 
item
—— 
.
—— 
IdUser
—— 
==
——  "%
idUserFriendToEliminate
——# :
)
——: ;
{
““ 
friends
”” 
.
”” 
Remove
”” "
(
””" #
item
””# '
)
””' (
;
””( )
userName
‘‘ 
=
‘‘ 
item
‘‘ #
.
‘‘# $
UserName
‘‘$ ,
;
‘‘, -
break
’’ 
;
’’ 
}
÷÷ 
}
◊◊ $
FriendBasicInformation
ÿÿ "
	newFriend
ÿÿ# ,
=
ÿÿ- .
new
ÿÿ/ 2$
FriendBasicInformation
ÿÿ3 I
(
ÿÿI J
)
ÿÿJ K
;
ÿÿK L
	newFriend
ŸŸ 
.
ŸŸ 
IdUser
ŸŸ 
=
ŸŸ %
idUserFriendToEliminate
ŸŸ 6
;
ŸŸ6 7
	newFriend
⁄⁄ 
.
⁄⁄ 
UserName
⁄⁄ 
=
⁄⁄  
userName
⁄⁄! )
;
⁄⁄) *
	newFriend
€€ 
.
€€ "
IdStatusAvailability
€€ *
=
€€+ ,

NOT_STATUS
€€- 7
;
€€7 8
otherPeople
‹‹ 
.
‹‹ 
Add
‹‹ 
(
‹‹ 
	newFriend
‹‹ %
)
‹‹% &
;
‹‹& '
SetCards
›› 
(
›› 
)
›› 
;
›› 
}
ﬁﬁ 	
public
‡‡ 
void
‡‡ 
SentFriendRequest
‡‡ %
(
‡‡% &
int
‡‡& )
idUserRequested
‡‡* 9
,
‡‡9 :
String
‡‡; A
userName
‡‡B J
)
‡‡J K
{
·· 	
UserSingleton
‚‚ 
userSingleton
‚‚ '
=
‚‚( )
UserSingleton
‚‚* 7
.
‚‚7 8
GetMainUser
‚‚8 C
(
‚‚C D
)
‚‚D E
;
‚‚E F2
$notifyUserActionFriendsManagerClient
„„ 0
.
„„0 1
SendFriendRequest
„„1 B
(
„„B C
userSingleton
„„C P
.
„„P Q
IdPlayer
„„Q Y
,
„„Y Z
idUserRequested
„„[ j
)
„„j k
;
„„k l
foreach
‰‰ 
(
‰‰ 
var
‰‰ 
item
‰‰ 
in
‰‰  
otherPeople
‰‰! ,
)
‰‰, -
{
ÂÂ 
if
ÊÊ 
(
ÊÊ 
item
ÊÊ 
.
ÊÊ 
IdUser
ÊÊ 
==
ÊÊ  "
idUserRequested
ÊÊ# 2
)
ÊÊ2 3
{
ÁÁ 
otherPeople
ËË 
.
ËË  
Remove
ËË  &
(
ËË& '
item
ËË' +
)
ËË+ ,
;
ËË, -
break
ÈÈ 
;
ÈÈ 
}
ÍÍ 
}
ÎÎ 
SetCards
ÏÏ 
(
ÏÏ 
)
ÏÏ 
;
ÏÏ 
}
ÌÌ 	
public
ÔÔ 
void
ÔÔ !
AcceptFriendRequest
ÔÔ '
(
ÔÔ' (
int
ÔÔ( +
idUserRequesting
ÔÔ, <
,
ÔÔ< =
String
ÔÔ> D
userName
ÔÔE M
)
ÔÔM N
{
 	
UserSingleton
ÒÒ 
userSingleton
ÒÒ '
=
ÒÒ( )
UserSingleton
ÒÒ* 7
.
ÒÒ7 8
GetMainUser
ÒÒ8 C
(
ÒÒC D
)
ÒÒD E
;
ÒÒE F2
$notifyUserActionFriendsManagerClient
ÚÚ 0
.
ÚÚ0 1!
AcceptFriendRequest
ÚÚ1 D
(
ÚÚD E
userSingleton
ÚÚE R
.
ÚÚR S
IdPlayer
ÚÚS [
,
ÚÚ[ \
idUserRequesting
ÚÚ] m
)
ÚÚm n
;
ÚÚn o
foreach
ÛÛ 
(
ÛÛ 
var
ÛÛ 
item
ÛÛ 
in
ÛÛ  
friendRequests
ÛÛ! /
)
ÛÛ/ 0
{
ÙÙ 
if
ıı 
(
ıı 
item
ıı 
.
ıı 
IdUser
ıı 
==
ıı  "
idUserRequesting
ıı# 3
)
ıı3 4
{
ˆˆ 
friendRequests
˜˜ "
.
˜˜" #
Remove
˜˜# )
(
˜˜) *
item
˜˜* .
)
˜˜. /
;
˜˜/ 0
break
¯¯ 
;
¯¯ 
}
˘˘ 
}
˙˙ $
FriendBasicInformation
˚˚ "
	newFriend
˚˚# ,
=
˚˚- .
new
˚˚/ 2$
FriendBasicInformation
˚˚3 I
(
˚˚I J
)
˚˚J K
;
˚˚K L
	newFriend
¸¸ 
.
¸¸ 
IdUser
¸¸ 
=
¸¸ 
idUserRequesting
¸¸ /
;
¸¸/ 0
	newFriend
˝˝ 
.
˝˝ 
UserName
˝˝ 
=
˝˝  
userName
˝˝! )
;
˝˝) *
	newFriend
˛˛ 
.
˛˛ "
IdStatusAvailability
˛˛ *
=
˛˛+ ,

NOT_STATUS
˛˛- 7
;
˛˛7 8
friends
ˇˇ 
.
ˇˇ 
Add
ˇˇ 
(
ˇˇ 
	newFriend
ˇˇ !
)
ˇˇ! "
;
ˇˇ" #
SetCards
ÄÄ 
(
ÄÄ 
)
ÄÄ 
;
ÄÄ 
}
ÅÅ 	
public
ÉÉ 
void
ÉÉ "
DeclineFriendRequest
ÉÉ (
(
ÉÉ( )
int
ÉÉ) ,
idUserRequesting
ÉÉ- =
,
ÉÉ= >
String
ÉÉ? E
userName
ÉÉF N
)
ÉÉN O
{
ÑÑ 	
UserSingleton
ÖÖ 
userSingleton
ÖÖ '
=
ÖÖ( )
UserSingleton
ÖÖ* 7
.
ÖÖ7 8
GetMainUser
ÖÖ8 C
(
ÖÖC D
)
ÖÖD E
;
ÖÖE F2
$notifyUserActionFriendsManagerClient
ÜÜ 0
.
ÜÜ0 1"
DeclineFriendRequest
ÜÜ1 E
(
ÜÜE F
userSingleton
ÜÜF S
.
ÜÜS T
IdPlayer
ÜÜT \
,
ÜÜ\ ]
idUserRequesting
ÜÜ^ n
)
ÜÜn o
;
ÜÜo p
foreach
áá 
(
áá 
var
áá 
item
áá 
in
áá  
friendRequests
áá! /
)
áá/ 0
{
àà 
if
ââ 
(
ââ 
item
ââ 
.
ââ 
IdUser
ââ 
==
ââ  "
idUserRequesting
ââ# 3
)
ââ3 4
{
ää 
friendRequests
ãã "
.
ãã" #
Remove
ãã# )
(
ãã) *
item
ãã* .
)
ãã. /
;
ãã/ 0
break
åå 
;
åå 
}
çç 
}
éé $
FriendBasicInformation
èè "
	newFriend
èè# ,
=
èè- .
new
èè/ 2$
FriendBasicInformation
èè3 I
(
èèI J
)
èèJ K
;
èèK L
	newFriend
êê 
.
êê 
IdUser
êê 
=
êê 
idUserRequesting
êê /
;
êê/ 0
	newFriend
ëë 
.
ëë 
UserName
ëë 
=
ëë  
userName
ëë! )
;
ëë) *
	newFriend
íí 
.
íí "
IdStatusAvailability
íí *
=
íí+ ,

NOT_STATUS
íí- 7
;
íí7 8
otherPeople
ìì 
.
ìì 
Add
ìì 
(
ìì 
	newFriend
ìì %
)
ìì% &
;
ìì& '
SetCards
îî 
(
îî 
)
îî 
;
îî 
}
ïï 	
public
óó 
void
óó 
ResponseReported
óó $
(
óó$ %
int
óó% (

numReports
óó) 3
)
óó3 4
{
òò 	
new
ôô ,
InformationMessageDialogWindow
ôô .
(
ôô. /

Properties
ôô/ 9
.
ôô9 :
	Resources
ôô: C
.
ôôC D%
txbInfoMessgSuccRegUser
ôôD [
,
ôô[ \

Properties
ôô] g
.
ôôg h
	Resources
ôôh q
.
ôôq r
MessageReportedôôr Å
+ôôÇ É

numReportsôôÑ é
.ôôé è
ToStringôôè ó
(ôôó ò
)ôôò ô
,ôôô ö
Applicationôôõ ¶
.ôô¶ ß
Currentôôß Æ
.ôôÆ Ø

MainWindowôôØ π
)ôôπ ∫
;ôô∫ ª
}
öö 	
public
úú 
void
úú #
ResponseRequestAction
úú )
(
úú) *
int
úú* -
idUser
úú. 4
,
úú4 5
int
úú6 9
requestStatus
úú: G
,
úúG H
string
úúI O
userName
úúP X
)
úúX Y
{
ùù 	
switch
ûû 
(
ûû 
requestStatus
ûû !
)
ûû! "
{
üü 
case
†† 
DECLINED_REQUEST
†† %
:
††% &
ManageResponse
°° "
(
°°" #
friendRequests
°°# 1
,
°°1 2
otherPeople
°°3 >
,
°°> ?
idUser
°°? E
,
°°E F
userName
°°F N
)
°°N O
;
°°O P&
lblDeclineRequestMessage
¢¢ ,
.
¢¢, -
Content
¢¢- 4
=
¢¢5 6
idUser
¢¢7 =
+
¢¢> ?
$str
¢¢@ C
+
¢¢D E

Properties
¢¢F P
.
¢¢P Q
	Resources
¢¢Q Z
.
¢¢Z [%
MessageFriRequeDeclined
¢¢[ r
;
¢¢r s

StartTimer
££ 
(
££ 
)
££  
;
££  !
break
§§ 
;
§§ 
case
•• 
SEND_REQUEST
•• !
:
••! "
ManageResponse
¶¶ "
(
¶¶" #
otherPeople
¶¶# .
,
¶¶. /
friendRequests
¶¶0 >
,
¶¶> ?
idUser
¶¶@ F
,
¶¶F G
userName
¶¶H P
)
¶¶P Q
;
¶¶Q R
break
ßß 
;
ßß 
case
®® 
ACCEPT_REQUEST
®® #
:
®®# $
ManageResponse
©© "
(
©©" #
friendRequests
©©# 1
,
©©1 2
friends
©©3 :
,
©©: ;
idUser
©©< B
,
©©B C
userName
©©D L
)
©©L M
;
©©M N
break
™™ 
;
™™ 
}
´´ 
SetCards
¨¨ 
(
¨¨ 
)
¨¨ 
;
¨¨ 
}
≠≠ 	
private
ØØ 
void
ØØ 
ManageResponse
ØØ #
(
ØØ# $
List
ØØ$ (
<
ØØ( )$
FriendBasicInformation
ØØ) ?
>
ØØ? @
deleteFromList
ØØA O
,
ØØO P
List
ØØQ U
<
ØØU V$
FriendBasicInformation
ØØV l
>
ØØl m
	addToList
ØØn w
,
ØØw x
int
ØØy |
idUserOperationØØ} å
,ØØå ç
stringØØé î
userNameØØï ù
)ØØù û
{
∞∞ 	
foreach
±± 
(
±± 
var
±± 
item
±± 
in
±±  
deleteFromList
±±! /
)
±±/ 0
{
≤≤ 
if
≥≥ 
(
≥≥ 
item
≥≥ 
.
≥≥ 
IdUser
≥≥ 
==
≥≥  "
idUserOperation
≥≥# 2
)
≥≥2 3
{
¥¥ 
friendRequests
µµ "
.
µµ" #
Remove
µµ# )
(
µµ) *
item
µµ* .
)
µµ. /
;
µµ/ 0
break
∂∂ 
;
∂∂ 
}
∑∑ 
}
∏∏ $
FriendBasicInformation
ππ "
	newFriend
ππ# ,
=
ππ- .
new
ππ/ 2$
FriendBasicInformation
ππ3 I
(
ππI J
)
ππJ K
;
ππK L
	newFriend
∫∫ 
.
∫∫ 
IdUser
∫∫ 
=
∫∫ 
idUserOperation
∫∫ .
;
∫∫. /
	newFriend
ªª 
.
ªª 
UserName
ªª 
=
ªª  
userName
ªª! )
;
ªª) *
	newFriend
ºº 
.
ºº "
IdStatusAvailability
ºº *
=
ºº+ ,

NOT_STATUS
ºº- 7
;
ºº7 8
	addToList
ΩΩ 
.
ΩΩ 
Add
ΩΩ 
(
ΩΩ 
	newFriend
ΩΩ #
)
ΩΩ# $
;
ΩΩ$ %
}
ææ 	
public
¿¿ 
void
¿¿ ,
ResponseEliminationFromFriends
¿¿ 2
(
¿¿2 3
int
¿¿3 6&
idPlayerWhoEliminatedYou
¿¿7 O
)
¿¿O P
{
¡¡ 	
String
¬¬ 
userName
¬¬ 
=
¬¬ 
String
¬¬ $
.
¬¬$ %
Empty
¬¬% *
;
¬¬* +
foreach
√√ 
(
√√ 
var
√√ 
item
√√ 
in
√√  
friends
√√! (
)
√√( )
{
ƒƒ 
if
≈≈ 
(
≈≈ 
item
≈≈ 
.
≈≈ 
IdUser
≈≈ 
==
≈≈  "&
idPlayerWhoEliminatedYou
≈≈# ;
)
≈≈; <
{
∆∆ 
friends
«« 
.
«« 
Remove
«« "
(
««" #
item
««# '
)
««' (
;
««( )
userName
»» 
=
»» 
item
»» #
.
»»# $
UserName
»»$ ,
;
»», -
break
…… 
;
…… 
}
   
}
ÀÀ $
FriendBasicInformation
ÃÃ "
	newFriend
ÃÃ# ,
=
ÃÃ- .
new
ÃÃ/ 2$
FriendBasicInformation
ÃÃ3 I
(
ÃÃI J
)
ÃÃJ K
;
ÃÃK L
	newFriend
ÕÕ 
.
ÕÕ 
IdUser
ÕÕ 
=
ÕÕ &
idPlayerWhoEliminatedYou
ÕÕ 7
;
ÕÕ7 8
	newFriend
ŒŒ 
.
ŒŒ 
UserName
ŒŒ 
=
ŒŒ  
userName
ŒŒ! )
;
ŒŒ) *
	newFriend
œœ 
.
œœ "
IdStatusAvailability
œœ *
=
œœ+ ,

NOT_STATUS
œœ- 7
;
œœ7 8
otherPeople
–– 
.
–– 
Add
–– 
(
–– 
	newFriend
–– %
)
––% &
;
––& '
SetCards
—— 
(
—— 
)
—— 
;
—— 
}
““ 	
private
‘‘ 
void
‘‘ 
ClickBackToMenu
‘‘ $
(
‘‘$ %
object
‘‘% +
sender
‘‘, 2
,
‘‘2 3"
MouseButtonEventArgs
‘‘4 H
e
‘‘I J
)
‘‘J K
{
’’ 	
UserSingleton
÷÷ 
userSingleton
÷÷ '
=
÷÷( )
UserSingleton
÷÷* 7
.
÷÷7 8
GetMainUser
÷÷8 C
(
÷÷C D
)
÷÷D E
;
÷÷E F2
$notifyUserActionFriendsManagerClient
◊◊ 0
.
◊◊0 1)
UnregisterFriendManagerUser
◊◊1 L
(
◊◊L M
userSingleton
◊◊M Z
.
◊◊Z [
IdUser
◊◊[ a
)
◊◊a b
;
◊◊b c
MainMenu
ÿÿ 
mainMenu
ÿÿ 
=
ÿÿ 
new
ÿÿ  #
MainMenu
ÿÿ$ ,
(
ÿÿ, -
)
ÿÿ- .
;
ÿÿ. /
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
ŸŸ+ ,
mainMenu
ŸŸ, 4
)
ŸŸ4 5
;
ŸŸ5 6
NavigationService
⁄⁄ 
.
⁄⁄ 
RemoveBackEntry
⁄⁄ -
(
⁄⁄- .
)
⁄⁄. /
;
⁄⁄/ 0
}
€€ 	
private
›› 
void
›› %
ClickSearchPlayerButton
›› ,
(
››, -
object
››- 3
sender
››4 :
,
››: ;
RoutedEventArgs
››< K
e
››L M
)
››M N
{
ﬁﬁ 	
String
ﬂﬂ 
userNameToSearch
ﬂﬂ #
=
ﬂﬂ$ %
txbUserToSearch
ﬂﬂ& 5
.
ﬂﬂ5 6
Text
ﬂﬂ6 :
;
ﬂﬂ: ;
if
‡‡ 
(
‡‡ 
!
‡‡ 
userNameToSearch
‡‡ !
.
‡‡! "
Equals
‡‡" (
(
‡‡( )

Properties
‡‡) 3
.
‡‡3 4
	Resources
‡‡4 =
.
‡‡= >
	bttSearch
‡‡> G
)
‡‡G H
)
‡‡H I
{
·· #
stcFrinedsManagerList
‚‚ %
.
‚‚% &
Children
‚‚& .
.
‚‚. /
Clear
‚‚/ 4
(
‚‚4 5
)
‚‚5 6
;
‚‚6 7
List
„„ 
<
„„ $
FriendBasicInformation
„„ +
>
„„+ ,
listOfUsers
„„- 8
;
„„8 9
switch
‰‰ 
(
‰‰ 
typeUserConsult
‰‰ '
)
‰‰' (
{
ÂÂ 
case
ÊÊ 

MY_FRIENDS
ÊÊ #
:
ÊÊ# $
listOfUsers
ÁÁ #
=
ÁÁ$ %
new
ÁÁ& )
List
ÁÁ* .
<
ÁÁ. /$
FriendBasicInformation
ÁÁ/ E
>
ÁÁE F
(
ÁÁF G
friends
ÁÁG N
)
ÁÁN O
;
ÁÁO P
break
ËË 
;
ËË 
case
ÈÈ 
FRIENDS_REQUEST
ÈÈ (
:
ÈÈ( )
listOfUsers
ÍÍ #
=
ÍÍ$ %
new
ÍÍ& )
List
ÍÍ* .
<
ÍÍ. /$
FriendBasicInformation
ÍÍ/ E
>
ÍÍE F
(
ÍÍF G
friendRequests
ÍÍG U
)
ÍÍU V
;
ÍÍV W
break
ÎÎ 
;
ÎÎ 
case
ÏÏ 
OTHER_PEOPLE
ÏÏ %
:
ÏÏ% &
listOfUsers
ÌÌ #
=
ÌÌ$ %
new
ÌÌ& )
List
ÌÌ* .
<
ÌÌ. /$
FriendBasicInformation
ÌÌ/ E
>
ÌÌE F
(
ÌÌF G
otherPeople
ÌÌG R
)
ÌÌR S
;
ÌÌS T
break
ÓÓ 
;
ÓÓ 
default
ÔÔ 
:
ÔÔ 
listOfUsers
 #
=
$ %
new
& )
List
* .
<
. /$
FriendBasicInformation
/ E
>
E F
(
F G
)
G H
;
H I
break
ÒÒ 
;
ÒÒ 
}
ÚÚ 
foreach
ÛÛ 
(
ÛÛ $
FriendBasicInformation
ÛÛ /
item
ÛÛ0 4
in
ÛÛ5 7
listOfUsers
ÛÛ8 C
)
ÛÛC D
{
ÙÙ 
if
ıı 
(
ıı 
item
ıı 
.
ıı 
UserName
ıı %
==
ıı& (
userNameToSearch
ıı) 9
)
ıı9 :
{
ˆˆ 
Border
˜˜ 
brdCard
˜˜ &
=
˜˜' (
new
˜˜) ,
Border
˜˜- 3
(
˜˜3 4
)
˜˜4 5
;
˜˜5 6(
FriendCardManagementWindow
¯¯ 2"
friendCardManagement
¯¯3 G
=
¯¯H I
new
¯¯J M(
FriendCardManagementWindow
¯¯N h
(
¯¯h i
item
¯¯i m
.
¯¯m n
IdUser
¯¯n t
,
¯¯t u
item
¯¯v z
.
¯¯z {
UserName¯¯{ É
,¯¯É Ñ
typeUserConsult¯¯Ö î
,¯¯î ï
textLeftButton¯¯ñ §
,¯¯§ •
textRightButton¯¯¶ µ
,¯¯µ ∂
this¯¯∑ ª
)¯¯ª º
;¯¯º Ω
brdCard
˘˘ 
.
˘˘  
Child
˘˘  %
=
˘˘& '"
friendCardManagement
˘˘( <
;
˘˘< =#
stcFrinedsManagerList
˙˙ -
.
˙˙- .
Children
˙˙. 6
.
˙˙6 7
Add
˙˙7 :
(
˙˙: ; 
SetBorderCardStyle
˙˙; M
(
˙˙M N
brdCard
˙˙N U
)
˙˙U V
)
˙˙V W
;
˙˙W X
}
˚˚ 
}
¸¸ 
}
˝˝ 
}
˛˛ 	
private
ÄÄ 
void
ÄÄ 

StartTimer
ÄÄ 
(
ÄÄ  
)
ÄÄ  !
{
ÅÅ 	
timer
ÇÇ 
=
ÇÇ 
new
ÇÇ 
DispatcherTimer
ÇÇ '
(
ÇÇ' (
)
ÇÇ( )
;
ÇÇ) *
timer
ÉÉ 
.
ÉÉ 
Interval
ÉÉ 
=
ÉÉ 
TimeSpan
ÉÉ %
.
ÉÉ% &
FromSeconds
ÉÉ& 1
(
ÉÉ1 2
$num
ÉÉ2 3
)
ÉÉ3 4
;
ÉÉ4 5
timer
ÑÑ 
.
ÑÑ 
Tick
ÑÑ 
+=
ÑÑ 

Timer_Tick
ÑÑ $
;
ÑÑ$ %
}
ÖÖ 	
private
áá 
void
áá 

Timer_Tick
áá 
(
áá  
object
áá  &
sender
áá' -
,
áá- .
	EventArgs
áá/ 8
e
áá9 :
)
áá: ;
{
àà 	
if
ââ 
(
ââ 
leftTime
ââ 
>
ââ 
$num
ââ 
)
ââ 
{
ää 
leftTime
ãã 
--
ãã 
;
ãã 
}
åå 
else
çç 
{
éé &
lblDeclineRequestMessage
èè (
.
èè( )
Content
èè) 0
=
èè1 2
string
èè3 9
.
èè9 :
Empty
èè: ?
;
èè? @
timer
êê 
.
êê 
Stop
êê 
(
êê 
)
êê 
;
êê 
}
ëë 
}
íí 	
private
ìì 
void
ìì 
WriteInSearchBar
ìì %
(
ìì% &
object
ìì& ,
sender
ìì- 3
,
ìì3 4
MouseEventArgs
ìì5 C
e
ììD E
)
ììE F
{
îî 	
txbUserToSearch
ïï 
.
ïï 
Text
ïï  
=
ïï! "
string
ïï# )
.
ïï) *
Empty
ïï* /
;
ïï/ 0
}
ññ 	
}
óó 
}òò Ï5
hC:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameClient\Pages\GameBoard.xaml.cs
	namespace 	
JeopardyGame
 
. 
Pages 
{ 
public 

partial 
class 
	GameBoard "
:# $
Page% )
{ 
public 
const 
int 

FIRSTVALUE #
=$ %
$num& )
;) *
public 
const 
int 
SECONDVALUE $
=% &
$num' *
;* +
public 
const 
int 

THIRDVALUE #
=$ %
$num& )
;) *
public 
const 
int 
HISTORYCATEGORY (
=) *
$num+ ,
;, -
public 
const 
int 
SCIENCECATEGORY (
=) *
$num+ ,
;, -
public 
const 
int 
MOVIESCATEGORY '
=( )
$num* +
;+ ,
private   
IDictionary   
<   
string   "
,  " #
object  $ *
>  * +
history100Question  , >
;  > ?
public!! 
	GameBoard!! 
(!! 
)!! 
{"" 	
InitializeComponent## 
(##  
)##  !
;##! "
ShowGameBoard$$ 
($$ 
)$$ 
;$$ 
ShowAnswers%% 
(%% 
)%% 
;%% 
}&& 	
private(( 
void(( 
ShowGameBoard(( "
(((" #
)((# $
{)) 	
	boardGrid** 
.** 

Visibility**  
=**! "

Visibility**# -
.**- .
Visible**. 5
;**5 6
}++ 	
private-- 
void-- 
ShowAnswers--  
(--  !
)--! "
{.. 	

answerGrid// 
.// 

Visibility// !
=//" #

Visibility//$ .
.//. /
	Collapsed/// 8
;//8 9
bttChat00 
.00 

Visibility00 
=00  

Visibility00! +
.00+ ,
	Collapsed00, 5
;005 6
}11 	
private22 
void22 
ClickRectangulo22 $
(22$ %
object22% +
sender22, 2
,222 3 
MouseButtonEventArgs224 H
e22I J
)22J K
{33 	
	boardGrid44 
.44 

Visibility44  
=44! "

Visibility44# -
.44- .
	Collapsed44. 7
;447 8

answerGrid55 
.55 

Visibility55 !
=55" #

Visibility55$ .
.55. /
Visible55/ 6
;556 7
bttChat66 
.66 

Visibility66 
=66  

Visibility66! +
.66+ ,
Visible66, 3
;663 4
}88 	
private:: 
void:: 
CLicSelectAnswer:: %
(::% &
object::& ,
sender::- 3
,::3 4
RoutedEventArgs::5 D
e::E F
)::F G
{;; 	
}== 	
private?? 
void?? 
CLicOpenChat?? !
(??! "
object??" (
sender??) /
,??/ 0
RoutedEventArgs??1 @
e??A B
)??B C
{@@ 	
}BB 	
privateDD 
voidDD 
ClickHistory100DD $
(DD$ %
objectDD% +
senderDD, 2
,DD2 3 
MouseButtonEventArgsDD4 H
eDDI J
)DDJ K
{EE 	"
QuestionsManagerClientFF "
proxyQuestionsFF# 1
=FF2 3
newFF4 7"
QuestionsManagerClientFF8 N
(FFN O
)FFO P
;FFP Q
history100QuestionGG 
=GG  
proxyQuestionsGG! /
.GG/ 0
GetQuestionByValueGG0 B
(GGB C

FIRSTVALUEGGC M
,GGM N
HISTORYCATEGORYGGO ^
)GG^ _
;GG_ `%
MostrarPreguntaEnInterfazHH %
(HH% &
)HH& '
;HH' (
}II 	
privateKK 
voidKK 
ClickHistory300KK $
(KK$ %
objectKK% +
senderKK, 2
,KK2 3 
MouseButtonEventArgsKK4 H
eKKI J
)KKJ K
{LL 	
}NN 	
privatePP 
voidPP 
ClickHistory500PP $
(PP$ %
objectPP% +
senderPP, 2
,PP2 3 
MouseButtonEventArgsPP4 H
ePPI J
)PPJ K
{QQ 	
}SS 	
privateUU 
voidUU 
ClickScience100UU $
(UU$ %
objectUU% +
senderUU, 2
,UU2 3 
MouseButtonEventArgsUU4 H
eUUI J
)UUJ K
{VV 	
}XX 	
privateZZ 
voidZZ 
ClickScience300ZZ $
(ZZ$ %
objectZZ% +
senderZZ, 2
,ZZ2 3 
MouseButtonEventArgsZZ4 H
eZZI J
)ZZJ K
{[[ 	
}]] 	
private__ 
void__ 
ClickScience500__ $
(__$ %
object__% +
sender__, 2
,__2 3 
MouseButtonEventArgs__4 H
e__I J
)__J K
{`` 	
}bb 	
privatedd 
voiddd 
ClickMovies100dd #
(dd# $
objectdd$ *
senderdd+ 1
,dd1 2 
MouseButtonEventArgsdd3 G
eddH I
)ddI J
{ee 	
}gg 	
privateii 
voidii 
ClickMovies300ii #
(ii# $
objectii$ *
senderii+ 1
,ii1 2 
MouseButtonEventArgsii3 G
eiiH I
)iiI J
{jj 	
}ll 	
privatenn 
voidnn 
ClickMovies500nn #
(nn# $
objectnn$ *
sendernn+ 1
,nn1 2 
MouseButtonEventArgsnn3 G
ennH I
)nnI J
{oo 	
}qq 	
privaterr 
voidrr %
MostrarPreguntaEnInterfazrr .
(rr. /
)rr/ 0
{ss 	
iftt 
(tt 
history100Questiontt "
!=tt# %
nulltt& *
&&tt+ -
history100Questiontt. @
.tt@ A
ContainsKeyttA L
(ttL M
$strttM Z
)ttZ [
)tt[ \
{uu 
stringvv 
questionDescriptionvv *
=vv+ ,
history100Questionvv- ?
[vv? @
$strvv@ M
]vvM N
.vvN O
ToStringvvO W
(vvW X
)vvX Y
;vvY Z
lblQuestionww 
.ww 
Contentww #
=ww$ %
questionDescriptionww& 9
;ww9 :
}xx 
elseyy 
{zz 
}|| 
}}} 	
}~~ 
} û<
gC:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameClient\Pages\LiveChat.xaml.cs
	namespace 	
JeopardyGame
 
. 
Pages 
{ 
public 

partial 
class 
LiveChat !
:" #
Page$ (
,( )
ILiveChatCallback* ;
{ 
private 
bool 
isAdmin 
; 
private 
int 
roomCode 
; 
private 
UserSingleton 
userSingleton +
;+ ,
private 
List 
< 
MessageChat  
>  !
messagesInChats" 1
=2 3
new4 7
List8 <
<< =
MessageChat= H
>H I
(I J
)J K
;K L
private 
LiveChatClient  
proxyChannelCallback 3
;3 4
private 
	LobbyPage 
	lobbyPage #
;# $
public   
LiveChat   
(   
)   
{!! 	
InitializeComponent"" 
(""  
)""  !
;""! "
InstanceContext## 
context## #
=##$ %
new##& )
InstanceContext##* 9
(##9 :
this##: >
)##> ?
;##? @ 
proxyChannelCallback$$  
=$$! "
new$$# &
LiveChatClient$$' 5
($$5 6
context$$6 =
)$$= >
;$$> ?
}%% 	
public'' 
void'' 
	StartPage'' 
('' 
bool'' "
rol''# &
,''& '
int''' *
room''+ /
,''/ 0
	LobbyPage''1 :
lobby''; @
)''@ A
{(( 	
	lobbyPage)) 
=)) 
lobby)) 
;)) 
isAdmin** 
=** 
rol** 
;** 
roomCode++ 
=++ 
room++ 
;++ 
PrepareWindow,, 
(,, 
),, 
;,, 
}-- 	
private// 
void// 
PrepareWindow// "
(//" #
)//# $
{00 	
userSingleton11 
=11 
UserSingleton11 )
.11) *
GetMainUser11* 5
(115 6
)116 7
;117 8
if22 
(22 
isAdmin22 
)22 
{33  
proxyChannelCallback44 $
.44$ %
CreateChatForLobby44% 7
(447 8
roomCode448 @
,44@ A
userSingleton44A N
.44N O
IdUser44O U
)44U V
;44V W
}55 
else66 
{77 
var88 
serverResponse88 "
=88# $ 
proxyChannelCallback88% 9
.889 :
GetAllMessages88: H
(88H I
roomCode88I Q
,88Q R
userSingleton88S `
.88` a
IdUser88a g
)88g h
;88h i
if99 
(99 
serverResponse99 "
.99" #
	CodeEvent99# ,
==99- /
ExceptionDictionary990 C
.99C D
SUCCESFULL_EVENT99D T
)99T U
{:: 
messagesInChats;; #
=;;$ %
serverResponse;;& 4
.;;4 5
ObjectSaved;;5 @
.;;@ A
ToList;;A G
(;;G H
);;H I
;;;I J
LoadChat<< 
(<< 
)<< 
;<< 
}== 
}>> 
}?? 	
publicAA 
voidAA 
LoadChatAA 
(AA 
)AA 
{BB 	
stpChatCC 
.CC 
ChildrenCC 
.CC 
ClearCC "
(CC" #
)CC# $
;CC$ %
foreachDD 
(DD 
varDD 
itemDD 
inDD  
messagesInChatsDD! 0
)DD0 1
{EE 
ChatMessageCardFF 
chatMessageCardFF  /
=FF0 1
newFF2 5
ChatMessageCardFF6 E
(FFE F
itemFFF J
.FFJ K
UserNameFFK S
,FFS T
itemFFU Y
.FFY Z
MessageToSendFFZ g
)FFg h
;FFh i
ifGG 
(GG 
itemGG 
.GG 
IdUserGG 
==GG  "
userSingletonGG# 0
.GG0 1
IdUserGG1 7
)GG7 8
{HH 
chatMessageCardII #
.II# $
HorizontalAlignmentII$ 7
=II8 9
HorizontalAlignmentII: M
.IIM N
RightIIN S
;IIS T
}JJ 
elseKK 
{LL 
chatMessageCardMM #
.MM# $
HorizontalAlignmentMM$ 7
=MM8 9
HorizontalAlignmentMM: M
.MMM N
LeftMMN R
;MMR S
}NN 
stpChatOO 
.OO 
ChildrenOO  
.OO  !
AddOO! $
(OO$ %
chatMessageCardOO% 4
)OO4 5
;OO5 6
}PP 
}QQ 	
privateSS 
voidSS 
ClickCloseChatSS #
(SS# $
objectSS$ *
senderSS+ 1
,SS1 2 
MouseButtonEventArgsSS3 G
eSSH I
)SSI J
{TT 	
	lobbyPageUU 
.UU 
CloseLiveChatUU #
(UU# $
)UU$ %
;UU% &
}VV 	
privateXX 
voidXX 
ClickSendMessageXX %
(XX% &
objectXX& ,
senderXX- 3
,XX3 4 
MouseButtonEventArgsXX5 I
eXXJ K
)XXK L
{YY 	
stringZZ 
messageZZ 
=ZZ 
txbMessageToSendZZ -
.ZZ- .
TextZZ. 2
;ZZ2 3
if[[ 
([[ 
![[ 
string[[ 
.[[ 
IsNullOrEmpty[[ %
([[% &
message[[& -
)[[- .
)[[. /
{\\  
proxyChannelCallback]] $
.]]$ %
SendMessage]]% 0
(]]0 1
userSingleton]]1 >
.]]> ?
IdUser]]? E
,]]E F
roomCode]]G O
,]]O P
userSingleton]]Q ^
.]]^ _
UserName]]_ g
,]]g h
message]]i p
)]]p q
;]]q r
ChatMessageCard^^ 
chatMessageCard^^  /
=^^0 1
new^^2 5
ChatMessageCard^^6 E
(^^E F
userSingleton^^F S
.^^S T
UserName^^T \
,^^\ ]
message^^^ e
)^^e f
;^^f g
chatMessageCard__ 
.__  
HorizontalAlignment__  3
=__4 5
HorizontalAlignment__6 I
.__I J
Right__J O
;__O P
stpChat`` 
.`` 
Children``  
.``  !
Add``! $
(``$ %
chatMessageCard``% 4
)``4 5
;``5 6
txbMessageToSendaa  
.aa  !
Textaa! %
=aa& '
stringaa( .
.aa. /
Emptyaa/ 4
;aa4 5
}bb 
}cc 	
publicee 
voidee 
ReceiveMessageee "
(ee" #-
!GenericClassOfMessageChatxY0a3WX4ee# D
messageeeE L
)eeL M
{ff 	
ifgg 
(gg 
messagegg 
.gg 
	CodeEventgg  
==gg! #
ExceptionDictionarygg$ 7
.gg7 8
SUCCESFULL_EVENTgg8 H
)ggH I
{hh 
messagesInChatsii 
.ii  
Addii  #
(ii# $
messageii$ +
.ii+ ,
ObjectSavedii, 7
)ii7 8
;ii8 9
LoadChatjj 
(jj 
)jj 
;jj 
}kk 
}ll 	
}nn 
}pp  ≠
hC:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameClient\Pages\LobbyPage.xaml.cs
	namespace 	
JeopardyGame
 
. 
Pages 
{ 
public 

partial 
class 
	LobbyPage "
:# $
Page% )
,) *!
ILobbyActionsCallback+ @
,@ A
ILiveChatCallbackB S
{   
private!! 
static!! 
ActiveFriends!! $
activeUsersControls!!% 8
;!!8 9
private"" 
static"" 
LiveChat"" 
liveChatUser""  ,
;"", -
private## 
const## 
int## 
NULL_INT_VALUE## (
=##) *
$num##+ ,
;##, -
private$$ 
const$$ 
int$$ 
TEAM_LEFT_SIDE$$ (
=$$) *
$num$$+ ,
;$$, -
private%% 
const%% 
int%% 
TEMA_RIGHT_SIDE%% )
=%%* +
$num%%, -
;%%- .
private&& 
Random&& 
generateAleatory&& '
;&&' (
private'' 
int'' 
roomCode'' 
;'' 
private(( 
bool(( 
isAdminOfLobby(( #
;((# $
private)) 
InstanceContext)) 
context))  '
;))' (
private** 
List** 
<** 
PlayerInLobby** #
>**# $ 
currentPlayerInLobby**% 9
;**9 :
private++ 
UserSingleton++ 
userSingleton++ +
;+++ ,
public-- 
	LobbyPage-- 
(-- 
)-- 
{.. 	
InitializeComponent// 
(//  
)//  !
;//! "
isAdminOfLobby00 
=00 
true00 !
;00! "$
PrepareChatAndFriendList11 $
(11$ %
)11% &
;11& '
PrepareWindow22 
(22 
)22 
;22 
}44 	
public55 
	LobbyPage55 
(55 
int55 
roomCode55 %
)55% &
{66 	
InitializeComponent77 
(77  
)77  !
;77! "
this88 
.88 
roomCode88 
=88 
roomCode88 $
;88$ %
isAdminOfLobby99 
=99 
false99 "
;99" #$
PrepareChatAndFriendList:: $
(::$ %
)::% &
;::& '
PrepareWindow;; 
(;; 
);; 
;;; 
}<< 	
private>> 
static>> 
void>> $
PrepareChatAndFriendList>> 5
(>>5 6
)>>6 7
{?? 	
activeUsersControls@@ 
=@@  !
	LogInUser@@" +
.@@+ ,!
ActiveFriendsInstance@@, A
;@@A B
liveChatUserAA 
=AA 
newAA 
LiveChatAA '
(AA' (
)AA( )
;AA) *
}BB 	
privateDD 
voidDD 
PrepareWindowDD "
(DD" #
)DD# $
{EE 	
userSingletonFF 
=FF 
UserSingletonFF *
.FF* +
GetMainUserFF+ 6
(FF6 7
)FF7 8
;FF8 9
contextGG 
=GG 
newGG 
InstanceContextGG )
(GG) *
thisGG* .
)GG. /
;GG/ 0
LobbyActionsClientHH 
lobbyActionsClientHH 1
=HH2 3
newHH4 7
LobbyActionsClientHH8 J
(HHJ K
contextHHK R
)HHR S
;HHS T
	chbTeamUpII 
.II 
	IsCheckedII 
=II  !
falseII" '
;II' (
ifJJ 
(JJ 
isAdminOfLobbyJJ 
)JJ 
{KK 
generateAleatoryLL  
=LL! "
newLL# &
RandomLL' -
(LL- .
)LL. /
;LL/ 0
intMM 
aleatoryNumberMM "
=MM# $
generateAleatoryMM% 5
.MM5 6
NextMM6 :
(MM: ;
$numMM; @
,MM@ A
$numMMB G
)MMG H
;MMH I
roomCodeNN 
=NN 
aleatoryNumberNN )
;NN) *
lobbyActionsClientOO "
.OO" #
CreateNewLobbyOO# 1
(OO1 2
roomCodeOO2 :
,OO: ;
userSingletonOO< I
.OOI J
IdUserOOJ P
)OOP Q
;OOQ R
}PP 
elseQQ 
{RR 
GenericClassOfintSS !

successfulSS" ,
=SS- .
lobbyActionsClientSS/ A
.SSA B
	JoinLobbySSB K
(SSK L
roomCodeSSL T
,SST U
userSingletonSSV c
.SSc d
IdUserSSd j
)SSj k
;SSk l
ifTT 
(TT 

successfulTT 
.TT 
	CodeEventTT '
==TT( *
ExceptionDictionaryTT+ >
.TT> ?
SUCCESFULL_EVENTTT? O
)TTO P
{UU 
lobbyActionsClientVV &
.VV& '
NotifyPlayerInLobbyVV' :
(VV: ;
roomCodeVV; C
,VVC D
userSingletonVVE R
.VVR S
IdUserVVS Y
)VVY Z
;VVZ [
}WW 
elseXX 
{YY 
newZZ $
ErrorMessageDialogWindowZZ 0
(ZZ0 1

PropertiesZZ1 ;
.ZZ; <
	ResourcesZZ< E
.ZZE F
txbErrorTitleZZF S
,ZZS T
$strZZU \
,ZZ\ ]
ApplicationZZ^ i
.ZZi j
CurrentZZj q
.ZZq r

MainWindowZZr |
)ZZ| }
;ZZ} ~
return[[ 
;[[ 
}\\ 
}]] 
var^^ 
playersInLobby^^ 
=^^  
lobbyActionsClient^^! 3
.^^3 4&
GetAllCurrentPlayerInLobby^^4 N
(^^N O
roomCode^^O W
,^^W X
userSingleton^^Y f
.^^f g
IdUser^^g m
)^^m n
;^^n o
if__ 
(__ 
playersInLobby__ 
.__ 
	CodeEvent__ '
==__( *
ExceptionDictionary__+ >
.__> ?
SUCCESFULL_EVENT__? O
)__O P
{``  
currentPlayerInLobbyaa $
=aa% &
playersInLobbyaa' 5
.aa5 6
ObjectSavedaa6 A
.aaA B
ToListaaB H
(aaH I
)aaI J
;aaJ K
ThereAreTeamsbb 
(bb 
)bb 
;bb  
}cc 
elsedd 
{ee 
returnff 
;ff 
}gg 
lblAleatoryCodehh 
.hh 
Contenthh #
=hh$ %
roomCodehh& .
;hh. /
SetPlayerInLabelsii 
(ii 
)ii 
;ii  
}jj 	
privatell 
voidll 
ThereAreTeamsll "
(ll" #
)ll# $
{mm 	
foreachnn 
(nn 
varnn 
itemnn 
innn   
currentPlayerInLobbynn! 5
)nn5 6
{oo 
ifpp 
(pp 
itempp 
.pp 

SideOfTeampp #
==pp$ &
TEMA_RIGHT_SIDEpp' 6
)pp6 7
{qq 
	chbTeamUprr 
.rr 
	IsCheckedrr '
=rr( )
truerr* .
;rr. /
breakss 
;ss 
}tt 
}uu 
}vv 	
privatexx 
voidxx 
SetPlayerInLabelsxx &
(xx& '
)xx' (
{yy 	
CleanAllLabelszz 
(zz 
)zz 
;zz 
if{{ 
({{  
currentPlayerInLobby{{ $
!={{% '
null{{( ,
){{, -
{|| 
foreach}} 
(}} 
var}} 
item}} !
in}}" $ 
currentPlayerInLobby}}% 9
)}}9 :
{~~ 
switch 
( 
item  
.  !!
NumberOfPlayerInLobby! 6
)6 7
{
ÄÄ 
case
ÅÅ 
$num
ÅÅ 
:
ÅÅ 

ShowPlayer
ÇÇ &
(
ÇÇ& '
lblLeaderBlue
ÇÇ' 4
,
ÇÇ4 5
lblLeaderRed
ÇÇ6 B
,
ÇÇB C
brdLeaderBlue
ÇÇD Q
,
ÇÇQ R
brdLeaderRed
ÇÇS _
,
ÇÇ_ `
item
ÇÇa e
.
ÇÇe f
UserName
ÇÇf n
,
ÇÇn o
item
ÇÇp t
.
ÇÇt u

SideOfTeam
ÇÇu 
)ÇÇ Ä
;ÇÇÄ Å
break
ÉÉ !
;
ÉÉ! "
case
ÑÑ 
$num
ÑÑ 
:
ÑÑ 

ShowPlayer
ÖÖ &
(
ÖÖ& '
lblPlayer2Blue
ÖÖ' 5
,
ÖÖ5 6
lblPlayer2Red
ÖÖ7 D
,
ÖÖD E
brdPlayer2Blue
ÖÖF T
,
ÖÖT U
brdPlayer2Red
ÖÖV c
,
ÖÖc d
item
ÖÖe i
.
ÖÖi j
UserName
ÖÖj r
,
ÖÖr s
item
ÖÖt x
.
ÖÖx y

SideOfTeamÖÖy É
)ÖÖÉ Ñ
;ÖÖÑ Ö
break
ÜÜ !
;
ÜÜ! "
case
áá 
$num
áá 
:
áá 

ShowPlayer
àà &
(
àà& '
lblPlayer3Blue
àà' 5
,
àà5 6
lblPlayer3Red
àà7 D
,
ààD E
brdPlayer3Blue
ààF T
,
ààT U
brdPlayer3Red
ààV c
,
ààc d
item
ààe i
.
àài j
UserName
ààj r
,
ààr s
item
ààt x
.
ààx y

SideOfTeamàày É
)ààÉ Ñ
;ààÑ Ö
break
ââ !
;
ââ! "
case
ää 
$num
ää 
:
ää 

ShowPlayer
ãã &
(
ãã& '
lblPlayer4Blue
ãã' 5
,
ãã5 6
lblPlayer4Red
ãã7 D
,
ããD E
brdPlayer4Blue
ããF T
,
ããT U
brdPlayer4Red
ããV c
,
ããc d
item
ããd h
.
ããh i
UserName
ããi q
,
ããq r
item
ããs w
.
ããw x

SideOfTeamããx Ç
)ããÇ É
;ããÉ Ñ
break
åå !
;
åå! "
}
çç 
}
éé 
}
èè 
}
êê 	
private
íí 
void
íí 
CleanAllLabels
íí #
(
íí# $
)
íí$ %
{
ìì 	
brdLeaderBlue
îî 
.
îî 

Visibility
îî $
=
îî% &

Visibility
îî' 1
.
îî1 2
Hidden
îî2 8
;
îî8 9
brdLeaderRed
ïï 
.
ïï 

Visibility
ïï #
=
ïï$ %

Visibility
ïï& 0
.
ïï0 1
Hidden
ïï1 7
;
ïï7 8
brdPlayer2Blue
ññ 
.
ññ 

Visibility
ññ %
=
ññ& '

Visibility
ññ( 2
.
ññ2 3
Hidden
ññ3 9
;
ññ9 :
brdPlayer2Red
óó 
.
óó 

Visibility
óó $
=
óó% &

Visibility
óó' 1
.
óó1 2
Hidden
óó2 8
;
óó8 9
brdPlayer3Blue
òò 
.
òò 

Visibility
òò %
=
òò& '

Visibility
òò( 2
.
òò2 3
Hidden
òò3 9
;
òò9 :
brdPlayer3Red
ôô 
.
ôô 

Visibility
ôô $
=
ôô% &

Visibility
ôô' 1
.
ôô1 2
Hidden
ôô2 8
;
ôô8 9
brdPlayer4Blue
öö 
.
öö 

Visibility
öö %
=
öö& '

Visibility
öö( 2
.
öö2 3
Hidden
öö3 9
;
öö9 :
brdPlayer4Red
õõ 
.
õõ 

Visibility
õõ $
=
õõ% &

Visibility
õõ' 1
.
õõ1 2
Hidden
õõ2 8
;
õõ8 9
lblLeaderBlue
úú 
.
úú 
Content
úú !
=
úú" #
string
úú$ *
.
úú* +
Empty
úú+ 0
;
úú0 1
lblLeaderRed
ùù 
.
ùù 
Content
ùù  
=
ùù! "
string
ùù# )
.
ùù) *
Empty
ùù* /
;
ùù/ 0
lblPlayer2Blue
ûû 
.
ûû 
Content
ûû "
=
ûû# $
string
ûû% +
.
ûû+ ,
Empty
ûû, 1
;
ûû1 2
lblPlayer2Red
üü 
.
üü 
Content
üü !
=
üü" #
string
üü$ *
.
üü* +
Empty
üü+ 0
;
üü0 1
lblPlayer3Blue
†† 
.
†† 
Content
†† "
=
††# $
string
††% +
.
††+ ,
Empty
††, 1
;
††1 2
lblPlayer3Red
°° 
.
°° 
Content
°° !
=
°°" #
string
°°$ *
.
°°* +
Empty
°°+ 0
;
°°0 1
lblPlayer4Blue
¢¢ 
.
¢¢ 
Content
¢¢ "
=
¢¢# $
string
¢¢% +
.
¢¢+ ,
Empty
¢¢, 1
;
¢¢1 2
lblPlayer4Red
££ 
.
££ 
Content
££ !
=
££" #
string
££$ *
.
££* +
Empty
££+ 0
;
££0 1
}
§§ 	
private
¶¶ 
void
¶¶ 

ShowPlayer
¶¶ 
(
¶¶  
Label
¶¶  %
	labelBlue
¶¶& /
,
¶¶/ 0
Label
¶¶1 6
labelRed
¶¶7 ?
,
¶¶? @
Border
¶¶A G

borderBlue
¶¶H R
,
¶¶R S
Border
¶¶T Z
	borderRed
¶¶[ d
,
¶¶d e
String
¶¶f l
userName
¶¶m u
,
¶¶u v
int
¶¶w z
side
¶¶{ 
)¶¶ Ä
{
ßß 	
if
®® 
(
®® 
side
®® 
==
®® 
TEAM_LEFT_SIDE
®® &
)
®®& '
{
©© 
	labelBlue
™™ 
.
™™ 
Content
™™ !
=
™™" #
userName
™™$ ,
;
™™, -

borderBlue
´´ 
.
´´ 

Visibility
´´ %
=
´´& '

Visibility
´´( 2
.
´´2 3
Visible
´´3 :
;
´´: ;
	borderRed
¨¨ 
.
¨¨ 

Visibility
¨¨ $
=
¨¨% &

Visibility
¨¨' 1
.
¨¨1 2
Hidden
¨¨2 8
;
¨¨8 9
}
≠≠ 
else
ÆÆ 
{
ØØ 
labelRed
∞∞ 
.
∞∞ 
Content
∞∞  
=
∞∞! "
userName
∞∞# +
;
∞∞+ ,

borderBlue
±± 
.
±± 

Visibility
±± %
=
±±% &

Visibility
±±' 1
.
±±1 2
Visible
±±2 9
;
±±9 :
	borderRed
≤≤ 
.
≤≤ 

Visibility
≤≤ $
=
≤≤$ %

Visibility
≤≤& 0
.
≤≤0 1
Hidden
≤≤1 7
;
≤≤7 8
}
≥≥ 
}
¥¥ 	
void
µµ #
ILobbyActionsCallback
µµ "
.
µµ" #(
UpdateJoinedPlayerResponse
µµ# =
(
µµ= >8
*GenericClassOfArrayOfPlayerInLobbyxY0a3WX4
µµ> h
playersInTheLobby
µµi z
)
µµz {
{
∂∂ 	
bool
∑∑ 
	iAmActive
∑∑ 
=
∑∑ 
false
∑∑ "
;
∑∑" #
if
∏∏ 
(
∏∏ 
playersInTheLobby
∏∏  
.
∏∏  !
	CodeEvent
∏∏! *
==
∏∏+ -!
ExceptionDictionary
∏∏. A
.
∏∏A B
SUCCESFULL_EVENT
∏∏B R
)
∏∏R S
{
ππ "
currentPlayerInLobby
∫∫ $
=
∫∫% &
playersInTheLobby
∫∫' 8
.
∫∫8 9
ObjectSaved
∫∫9 D
.
∫∫D E
ToList
∫∫E K
(
∫∫K L
)
∫∫L M
;
∫∫M N
foreach
ªª 
(
ªª 
var
ªª 
item
ªª !
in
ªª" $"
currentPlayerInLobby
ªª% 9
)
ªª9 :
{
ºº 
if
ΩΩ 
(
ΩΩ 
item
ΩΩ 
.
ΩΩ 
IdPlayer
ΩΩ %
==
ΩΩ& (
userSingleton
ΩΩ) 6
.
ΩΩ6 7
IdPlayer
ΩΩ7 ?
)
ΩΩ? @
{
ææ 
	iAmActive
øø !
=
øø" #
true
øø$ (
;
øø( )
}
¿¿ 
}
¡¡ 
if
¬¬ 
(
¬¬ 
	iAmActive
¬¬ 
)
¬¬ 
{
√√ 
SetPlayerInLabels
ƒƒ %
(
ƒƒ% &
)
ƒƒ& '
;
ƒƒ' (
}
≈≈ 
else
∆∆ 
{
«« 
new
»» ,
InformationMessageDialogWindow
»» 6
(
»»6 7

Properties
»»7 A
.
»»A B
	Resources
»»B K
.
»»K L
txbWarningTitle
»»L [
,
»»[ \
$str
»»] x
,
»»x y
Application»»z Ö
.»»Ö Ü
Current»»Ü ç
.»»ç é

MainWindow»»é ò
)»»ò ô
;»»ô ö
CloseWindow
…… 
(
……  
)
……  !
;
……! "
}
   
}
ÀÀ 
}
ÃÃ 	
public
œœ 
void
œœ 
DissolvingLobby
œœ #
(
œœ# $
)
œœ$ %
{
–– 	
new
—— ,
InformationMessageDialogWindow
—— .
(
——. /

Properties
——/ 9
.
——9 :
	Resources
——: C
.
——C D
txbWarningTitle
——D S
,
——S T
$str
——U q
,
——q r
Application
——s ~
.
——~ 
Current—— Ü
.——Ü á

MainWindow——á ë
)——ë í
;——í ì
CloseWindow
““ 
(
““ 
)
““ 
;
““ 
}
”” 	
public
’’ 
void
’’ 
MakeTeamsResponse
’’ %
(
’’% &
bool
’’& *
teamUp
’’+ 1
)
’’1 2
{
÷÷ 	
DoOrUndoTeams
◊◊ 
(
◊◊ 
teamUp
◊◊  
)
◊◊  !
;
◊◊! "
SetPlayerInLabels
ÿÿ 
(
ÿÿ 
)
ÿÿ 
;
ÿÿ  
}
ŸŸ 	
private
€€ 
void
€€ 
DoOrUndoTeams
€€ "
(
€€" #
bool
€€# '
teamUp
€€( .
)
€€. /
{
‹‹ 	
List
›› 
<
›› 
PlayerInLobby
›› 
>
›› "
auxiliaryPlayerLobby
››  4
=
››5 6
new
››7 :
List
››; ?
<
››? @
PlayerInLobby
››@ M
>
››M N
(
››N O
)
››O P
;
››P Q
if
ﬁﬁ 
(
ﬁﬁ 
teamUp
ﬁﬁ 
)
ﬁﬁ 
{
ﬂﬂ 
	chbTeamUp
‡‡ 
.
‡‡ 
	IsChecked
‡‡ #
=
‡‡$ %
true
‡‡& *
;
‡‡* +
foreach
·· 
(
·· 
var
·· 
item
·· !
in
··" $"
currentPlayerInLobby
··% 9
)
··9 :
{
‚‚ 
var
„„ 
updatedPlayer
„„ %
=
„„& '
item
„„( ,
;
„„, -
if
‰‰ 
(
‰‰ 
item
‰‰ 
.
‰‰ #
NumberOfPlayerInLobby
‰‰ 2
<=
‰‰3 5
TEAM_LEFT_SIDE
‰‰6 D
)
‰‰D E
{
ÂÂ 
updatedPlayer
ÊÊ %
.
ÊÊ% &

SideOfTeam
ÊÊ& 0
=
ÊÊ1 2
TEAM_LEFT_SIDE
ÊÊ3 A
;
ÊÊA B"
auxiliaryPlayerLobby
ÁÁ ,
.
ÁÁ, -
Add
ÁÁ- 0
(
ÁÁ0 1
updatedPlayer
ÁÁ1 >
)
ÁÁ> ?
;
ÁÁ? @
break
ËË 
;
ËË 
}
ÈÈ 
else
ÍÍ 
{
ÎÎ 
updatedPlayer
ÏÏ %
.
ÏÏ% &

SideOfTeam
ÏÏ& 0
=
ÏÏ1 2
TEMA_RIGHT_SIDE
ÏÏ3 B
;
ÏÏB C"
auxiliaryPlayerLobby
ÌÌ ,
.
ÌÌ, -
Add
ÌÌ- 0
(
ÌÌ0 1
updatedPlayer
ÌÌ1 >
)
ÌÌ> ?
;
ÌÌ? @
break
ÓÓ 
;
ÓÓ 
}
ÔÔ 
}
 
}
ÒÒ 
else
ÚÚ 
{
ÛÛ 
	chbTeamUp
ÙÙ 
.
ÙÙ 
	IsChecked
ÙÙ #
=
ÙÙ$ %
false
ÙÙ& +
;
ÙÙ+ ,
foreach
ıı 
(
ıı 
var
ıı 
item
ıı !
in
ıı" $"
currentPlayerInLobby
ıı% 9
)
ıı9 :
{
ˆˆ 
var
˜˜ 
updatedPlayer
˜˜ %
=
˜˜& '
item
˜˜( ,
;
˜˜, -
updatedPlayer
¯¯ !
.
¯¯! "

SideOfTeam
¯¯" ,
=
¯¯- .
TEAM_LEFT_SIDE
¯¯/ =
;
¯¯= >"
auxiliaryPlayerLobby
˘˘ (
.
˘˘( )
Add
˘˘) ,
(
˘˘, -
updatedPlayer
˘˘- :
)
˘˘: ;
;
˘˘; <
}
˙˙ 
}
˚˚ "
currentPlayerInLobby
¸¸  
.
¸¸  !
Clear
¸¸! &
(
¸¸& '
)
¸¸' (
;
¸¸( )"
currentPlayerInLobby
˝˝  
.
˝˝  !
AddRange
˝˝! )
(
˝˝) *"
auxiliaryPlayerLobby
˝˝* >
)
˝˝> ?
;
˝˝? @
}
˛˛ 	
public
ÄÄ 
void
ÄÄ 
UpdateTeamSide
ÄÄ "
(
ÄÄ" #8
*GenericClassOfArrayOfPlayerInLobbyxY0a3WX4
ÄÄ# M
playersInTheLobby
ÄÄN _
)
ÄÄ_ `
{
ÅÅ 	
if
ÇÇ 
(
ÇÇ 
playersInTheLobby
ÇÇ !
.
ÇÇ! "
	CodeEvent
ÇÇ" +
==
ÇÇ, .!
ExceptionDictionary
ÇÇ/ B
.
ÇÇB C
SUCCESFULL_EVENT
ÇÇC S
)
ÇÇS T
{
ÉÉ "
currentPlayerInLobby
ÑÑ $
=
ÑÑ% &
playersInTheLobby
ÑÑ' 8
.
ÑÑ8 9
ObjectSaved
ÑÑ9 D
.
ÑÑD E
ToList
ÑÑE K
(
ÑÑK L
)
ÑÑL M
;
ÑÑM N
SetPlayerInLabels
ÖÖ !
(
ÖÖ! "
)
ÖÖ" #
;
ÖÖ# $
}
ÜÜ 
}
áá 	
private
ää 
void
ää +
ClickEliminatePlayerFromLobby
ää 2
(
ää2 3
object
ää3 9
sender
ää: @
,
ää@ A"
MouseButtonEventArgs
ääB V
e
ääW X
)
ääX Y
{
ãã 	
if
åå 
(
åå 
isAdminOfLobby
åå 
)
åå 
{
çç 
string
éé 
userName
éé 
=
éé  !"
GetUserNameFromLabel
éé" 6
(
éé6 7
sender
éé7 =
)
éé= >
;
éé> ?
if
èè 
(
èè 
userName
èè 
!=
èè 
null
èè  $
)
èè$ %
{
êê 
var
ëë 
userChanged
ëë #
=
ëë$ %$
EliminateUserFromLobby
ëë& <
(
ëë< =
userName
ëë= E
)
ëëE F
;
ëëF G
if
íí 
(
íí 
userChanged
íí #
.
íí# $
IdUser
íí$ *
!=
íí+ -
NULL_INT_VALUE
íí. <
)
íí< =
{
ìì  
LobbyActionsClient
îî * 
lobbyActionsClient
îî+ =
=
îî> ?
new
îî@ C 
LobbyActionsClient
îîD V
(
îîV W
context
îîW ^
)
îî^ _
;
îî_ ` 
lobbyActionsClient
ïï *
.
ïï* +&
EliminatePlayerFromMatch
ïï+ C
(
ïïC D
roomCode
ïïD L
,
ïïL M
userChanged
ïïN Y
.
ïïY Z
IdUser
ïïZ `
)
ïï` a
;
ïïa b
}
ññ 
}
óó 
SetPlayerInLabels
òò !
(
òò! "
)
òò" #
;
òò# $
}
ôô 
}
öö 	
private
úú 
PlayerInLobby
úú $
EliminateUserFromLobby
úú 4
(
úú4 5
String
úú5 ;
userName
úú< D
)
úúD E
{
ùù 	
PlayerInLobby
ûû 
playerInLobby
ûû '
=
ûû( )
new
ûû* -
PlayerInLobby
ûû. ;
(
ûû; <
)
ûû< =
;
ûû= >
playerInLobby
üü 
.
üü 
IdUser
üü  
=
üü! "
NULL_INT_VALUE
üü# 1
;
üü1 2
foreach
†† 
(
†† 
var
†† 
item
†† 
in
††  
from
††! %
item
††& *
in
††+ -"
currentPlayerInLobby
††. B
where
††C H
item
††I M
.
††M N
UserName
††N V
.
††V W
Equals
††W ]
(
††] ^
userName
††^ f
)
††f g
select
††h n
item
††o s
)
††s t
{
°° "
currentPlayerInLobby
¢¢ $
.
¢¢$ %
Remove
¢¢% +
(
¢¢+ ,
item
¢¢, 0
)
¢¢0 1
;
¢¢1 2
playerInLobby
££ 
=
££ 
item
££  $
;
££$ %
break
§§ 
;
§§ 
}
•• 
return
¶¶ 
playerInLobby
¶¶  
;
¶¶  !
}
ßß 	
private
©© 
void
©© !
ClickChangeTeamSide
©© (
(
©©( )
object
©©) /
sender
©©0 6
,
©©6 7"
MouseButtonEventArgs
©©8 L
e
©©M N
)
©©N O
{
™™ 	
if
´´ 
(
´´ 
isAdminOfLobby
´´ 
&&
´´ !"
currentPlayerInLobby
´´" 6
.
´´6 7
Count
´´7 <
==
´´= ?
$num
´´@ A
&&
´´B D
(
´´E F
bool
´´F J
)
´´J K
	chbTeamUp
´´K T
.
´´T U
	IsChecked
´´U ^
)
´´^ _
{
¨¨ 
string
≠≠ 
userName
≠≠ 
=
≠≠  !"
GetUserNameFromLabel
≠≠" 6
(
≠≠6 7
sender
≠≠7 =
)
≠≠= >
;
≠≠> ?
if
ÆÆ 
(
ÆÆ 
userName
ÆÆ 
!=
ÆÆ 
null
ÆÆ  $
)
ÆÆ$ %
{
ØØ 
var
∞∞ 
userChanged
∞∞ #
=
∞∞$ % 
ChangeSideOfPlayer
∞∞& 8
(
∞∞8 9
userName
∞∞9 A
)
∞∞A B
;
∞∞B C
if
±± 
(
±± 
userChanged
±± #
.
±±# $
IdUser
±±$ *
!=
±±+ -
NULL_INT_VALUE
±±. <
)
±±< =
{
≤≤  
LobbyActionsClient
≥≥ * 
lobbyActionsClient
≥≥+ =
=
≥≥> ?
new
≥≥@ C 
LobbyActionsClient
≥≥D V
(
≥≥V W
context
≥≥W ^
)
≥≥^ _
;
≥≥_ ` 
lobbyActionsClient
¥¥ *
.
¥¥* +
ChangePlayerSide
¥¥+ ;
(
¥¥; <
roomCode
¥¥< D
,
¥¥D E
userChanged
¥¥F Q
.
¥¥Q R
IdUser
¥¥R X
,
¥¥X Y
userChanged
¥¥Z e
.
¥¥e f

SideOfTeam
¥¥f p
)
¥¥p q
;
¥¥q r
SetPlayerInLabels
µµ )
(
µµ) *
)
µµ* +
;
µµ+ ,
}
∂∂ 
}
∑∑ 
}
∏∏ 
}
ππ 	
private
ªª 
String
ªª "
GetUserNameFromLabel
ªª +
(
ªª+ ,
object
ªª, 2
sender
ªª3 9
)
ªª9 :
{
ºº 	
String
ΩΩ 
userName
ΩΩ 
=
ΩΩ 
null
ΩΩ "
;
ΩΩ" #
Border
ææ 
	brdChosen
ææ 
=
ææ 
(
ææ  
Border
ææ  &
)
ææ& '
sender
ææ' -
;
ææ- .

StackPanel
øø 
	stcChosen
øø  
=
øø! "
(
øø# $

StackPanel
øø$ .
)
øø. /
	brdChosen
øø/ 8
.
øø8 9
Child
øø9 >
;
øø> ?
foreach
¿¿ 
(
¿¿ 
var
¿¿ 
item
¿¿ 
in
¿¿  
	stcChosen
¿¿! *
.
¿¿* +
Children
¿¿+ 3
)
¿¿3 4
{
¡¡ 
if
¬¬ 
(
¬¬ 
item
¬¬ 
is
¬¬ 
Label
¬¬ !
)
¬¬! "
{
√√ 
Label
ƒƒ 
label
ƒƒ 
=
ƒƒ  !
item
ƒƒ" &
as
ƒƒ' )
Label
ƒƒ* /
;
ƒƒ/ 0
userName
≈≈ 
=
≈≈ 
label
≈≈ $
.
≈≈$ %
Content
≈≈% ,
.
≈≈, -
ToString
≈≈- 5
(
≈≈5 6
)
≈≈6 7
;
≈≈7 8
}
∆∆ 
}
«« 
return
»» 
userName
»» 
;
»» 
}
…… 	
private
ÀÀ 
void
ÀÀ 
ClickNoTeamUp
ÀÀ "
(
ÀÀ" #
object
ÀÀ# )
sender
ÀÀ* 0
,
ÀÀ0 1
RoutedEventArgs
ÀÀ2 A
e
ÀÀB C
)
ÀÀC D
{
ÃÃ 	
if
ÕÕ 
(
ÕÕ 
isAdminOfLobby
ÕÕ 
)
ÕÕ 
{
ŒŒ 
bool
œœ 
teamUp
œœ 
=
œœ 
false
œœ #
;
œœ# $ 
LobbyActionsClient
–– " 
lobbyActionsClient
––# 5
=
––6 7
new
––8 ; 
LobbyActionsClient
––< N
(
––N O
context
––O V
)
––V W
;
––W X 
lobbyActionsClient
—— "
.
——" #
	MakeTeams
——# ,
(
——, -
roomCode
——- 5
,
——5 6
userSingleton
——7 D
.
——D E
IdUser
——E K
,
——K L
teamUp
——M S
)
——S T
;
——T U
}
““ 
}
”” 	
private
’’ 
void
’’ 
ClickTeamUp
’’  
(
’’  !
object
’’! '
sender
’’( .
,
’’. /
RoutedEventArgs
’’0 ?
e
’’@ A
)
’’A B
{
÷÷ 	
if
◊◊ 
(
◊◊ 
isAdminOfLobby
◊◊ 
)
◊◊ 
{
ÿÿ 
if
ŸŸ 
(
ŸŸ "
currentPlayerInLobby
ŸŸ (
.
ŸŸ( )
Count
ŸŸ) .
==
ŸŸ/ 1
$num
ŸŸ2 3
)
ŸŸ3 4
{
⁄⁄ 
bool
€€ 
teamUp
€€ 
=
€€  !
true
€€" &
;
€€& ' 
LobbyActionsClient
‹‹ & 
lobbyActionsClient
‹‹' 9
=
‹‹: ;
new
‹‹< ? 
LobbyActionsClient
‹‹@ R
(
‹‹R S
context
‹‹S Z
)
‹‹Z [
;
‹‹[ \ 
lobbyActionsClient
›› &
.
››& '
	MakeTeams
››' 0
(
››0 1
roomCode
››1 9
,
››9 :
userSingleton
››; H
.
››H I
IdUser
››I O
,
››O P
teamUp
››Q W
)
››W X
;
››X Y
DoOrUndoTeams
ﬁﬁ !
(
ﬁﬁ! "
teamUp
ﬁﬁ" (
)
ﬁﬁ( )
;
ﬁﬁ) *
SetPlayerInLabels
ﬂﬂ %
(
ﬂﬂ% &
)
ﬂﬂ& '
;
ﬂﬂ' (
}
‡‡ 
else
·· 
{
‚‚ 
new
„„ &
ErrorMessageDialogWindow
„„ 0
(
„„0 1
$str
„„1 8
,
„„8 9
$str
„„: [
,
„„[ \
Application
„„] h
.
„„h i
Current
„„i p
.
„„p q

MainWindow
„„q {
)
„„{ |
;
„„| }
}
‰‰ 
}
ÂÂ 
}
ÊÊ 	
private
ËË 
PlayerInLobby
ËË  
ChangeSideOfPlayer
ËË 0
(
ËË0 1
String
ËË1 7
userName
ËË8 @
)
ËË@ A
{
ÈÈ 	
PlayerInLobby
ÍÍ 
playerInLobby
ÍÍ '
=
ÍÍ( )
new
ÍÍ* -
PlayerInLobby
ÍÍ. ;
(
ÍÍ; <
)
ÍÍ< =
;
ÍÍ= >
playerInLobby
ÎÎ 
.
ÎÎ 
IdUser
ÎÎ  
=
ÎÎ! "
NULL_INT_VALUE
ÎÎ# 1
;
ÎÎ1 2
foreach
ÏÏ 
(
ÏÏ 
var
ÏÏ 
item
ÏÏ 
in
ÏÏ  "
currentPlayerInLobby
ÏÏ! 5
)
ÏÏ5 6
{
ÌÌ 
if
ÓÓ 
(
ÓÓ 
item
ÓÓ 
.
ÓÓ 
UserName
ÓÓ !
.
ÓÓ! "
Equals
ÓÓ" (
(
ÓÓ( )
userName
ÓÓ) 1
)
ÓÓ1 2
)
ÓÓ2 3
{
ÔÔ 
var
 
updatedSide
 #
=
$ %
item
& *
;
* +
if
ÒÒ 
(
ÒÒ 
item
ÒÒ 
.
ÒÒ 

SideOfTeam
ÒÒ '
==
ÒÒ( *
TEAM_LEFT_SIDE
ÒÒ+ 9
)
ÒÒ9 :
{
ÚÚ 
updatedSide
ÛÛ #
.
ÛÛ# $

SideOfTeam
ÛÛ$ .
=
ÛÛ/ 0
TEMA_RIGHT_SIDE
ÛÛ1 @
;
ÛÛ@ A
}
ÙÙ 
else
ıı 
{
ˆˆ 
updatedSide
˜˜ #
.
˜˜# $

SideOfTeam
˜˜$ .
=
˜˜/ 0
TEAM_LEFT_SIDE
˜˜1 ?
;
˜˜? @
}
¯¯ "
currentPlayerInLobby
˘˘ (
.
˘˘( )
Remove
˘˘) /
(
˘˘/ 0
item
˘˘0 4
)
˘˘4 5
;
˘˘5 6"
currentPlayerInLobby
˙˙ (
.
˙˙( )
Add
˙˙) ,
(
˙˙, -
updatedSide
˙˙- 8
)
˙˙8 9
;
˙˙9 :
playerInLobby
˚˚ !
=
˚˚" #
updatedSide
˚˚$ /
;
˚˚/ 0
break
¸¸ 
;
¸¸ 
}
˝˝ 
}
˛˛ 
return
ˇˇ 
playerInLobby
ˇˇ  
;
ˇˇ  !
}
ÄÄ 	
private
ÇÇ 
void
ÇÇ 
ClickOpenChat
ÇÇ "
(
ÇÇ" #
object
ÇÇ# )
sender
ÇÇ* 0
,
ÇÇ0 1"
MouseButtonEventArgs
ÇÇ2 F
e
ÇÇG H
)
ÇÇH I
{
ÉÉ 	%
frmActiveFriendsAndChat
ÑÑ #
.
ÑÑ# $
Content
ÑÑ$ +
=
ÑÑ, -
liveChatUser
ÑÑ. :
;
ÑÑ: ;
liveChatUser
ÖÖ 
.
ÖÖ 
	StartPage
ÖÖ "
(
ÖÖ" #
isAdminOfLobby
ÖÖ# 1
,
ÖÖ1 2
roomCode
ÖÖ3 ;
,
ÖÖ; <
this
ÖÖ= A
)
ÖÖA B
;
ÖÖB C
grdActiveUser
ÜÜ 
.
ÜÜ 

Visibility
ÜÜ $
=
ÜÜ% &

Visibility
ÜÜ' 1
.
ÜÜ1 2
Visible
ÜÜ2 9
;
ÜÜ9 :
}
áá 	
private
ââ 
void
ââ 
ClickListFriends
ââ %
(
ââ% &
object
ââ& ,
sender
ââ- 3
,
ââ3 4"
MouseButtonEventArgs
ââ5 I
e
ââJ K
)
ââK L
{
ää 	%
frmActiveFriendsAndChat
ãã #
.
ãã# $
Content
ãã$ +
=
ãã, -!
activeUsersControls
ãã. A
;
ããA B!
activeUsersControls
åå 
.
åå  
	StartPage
åå  )
(
åå) *
this
åå* .
)
åå. /
;
åå/ 0
grdActiveUser
çç 
.
çç 

Visibility
çç $
=
çç% &

Visibility
çç' 1
.
çç1 2
Visible
çç2 9
;
çç9 :
}
éé 	
private
êê 
void
êê "
CLicButtonCancelGame
êê )
(
êê) *
object
êê* 0
sender
êê1 7
,
êê7 8
RoutedEventArgs
êê9 H
e
êêI J
)
êêJ K
{
ëë 	
if
íí 
(
íí 
new
íí &
ConfirmationDialogWindow
íí ,
(
íí, -

Properties
íí- 7
.
íí7 8
	Resources
íí8 A
.
ííA B
txbWarningTitle
ííB Q
,
ííQ R

Properties
ííS ]
.
íí] ^
	Resources
íí^ g
.
ííg h$
txbWarningMessCloseWin
ííh ~
,
íí~ 
ApplicationííÄ ã
.ííã å
Currentííå ì
.ííì î

MainWindowííî û
)ííû ü
.ííü †
CloseWindowíí† ´
)íí´ ¨
{
ìì 
ClosingLobby
îî 
(
îî 
)
îî 
;
îî 
}
ïï 
}
ññ 	
private
òò 
void
òò 
ClosingLobby
òò !
(
òò! "
)
òò" #
{
ôô 	 
LobbyActionsClient
öö  
lobbyActionsClient
öö 1
=
öö2 3
new
öö4 7 
LobbyActionsClient
öö8 J
(
ööJ K
context
ööK R
)
ööR S
;
ööS T
if
õõ 
(
õõ 
isAdminOfLobby
õõ 
)
õõ 
{
úú  
lobbyActionsClient
ùù "
.
ùù" #
DissolveLobby
ùù# 0
(
ùù0 1
roomCode
ùù1 9
,
ùù9 :
userSingleton
ùù; H
.
ùùH I
IdUser
ùùI O
)
ùùO P
;
ùùP Q
}
ûû 
else
üü 
{
††  
lobbyActionsClient
°° "
.
°°" #

LeaveLobby
°°# -
(
°°- .
roomCode
°°. 6
,
°°6 7
userSingleton
°°8 E
.
°°E F
IdUser
°°F L
)
°°L M
;
°°M N
}
¢¢ 
CloseWindow
££ 
(
££ 
)
££ 
;
££ 
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
®® 
mainMenu
®® 
=
®® 
new
®®  #
MainMenu
®®$ ,
(
®®, -
)
®®- .
;
®®. /
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
©©+ ,
mainMenu
©©, 4
)
©©4 5
;
©©5 6
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
´´ 	
public
≠≠ 
void
≠≠ 
CloseFriendList
≠≠ #
(
≠≠# $
)
≠≠$ %
{
ÆÆ 	%
frmActiveFriendsAndChat
ØØ #
.
ØØ# $
Content
ØØ$ +
=
ØØ, -
null
ØØ. 2
;
ØØ2 3
grdActiveUser
∞∞ 
.
∞∞ 

Visibility
∞∞ $
=
∞∞% &

Visibility
∞∞' 1
.
∞∞1 2
	Collapsed
∞∞2 ;
;
∞∞; <
}
±± 	
public
≥≥ 
void
≥≥ 
CloseLiveChat
≥≥ !
(
≥≥! "
)
≥≥" #
{
¥¥ 	%
frmActiveFriendsAndChat
µµ #
.
µµ# $
Content
µµ$ +
=
µµ, -
null
µµ. 2
;
µµ2 3
grdActiveUser
∂∂ 
.
∂∂ 

Visibility
∂∂ $
=
∂∂% &

Visibility
∂∂' 1
.
∂∂1 2
	Collapsed
∂∂2 ;
;
∂∂; <
}
∑∑ 	
public
ππ 
void
ππ 
ReceiveMessage
ππ "
(
ππ" #/
!GenericClassOfMessageChatxY0a3WX4
ππ# D
message
ππE L
)
ππL M
{
∫∫ 	
(
ªª 
(
ªª 
ILiveChatCallback
ªª 
)
ªª  
liveChatUser
ªª  ,
)
ªª, -
.
ªª- .
ReceiveMessage
ªª. <
(
ªª< =
message
ªª= D
)
ªªD E
;
ªªE F
}
ºº 	
private
ææ 
void
ææ  
bttStartGame_Click
ææ '
(
ææ' (
object
ææ( .
sender
ææ/ 5
,
ææ5 6
RoutedEventArgs
ææ7 F
e
ææG H
)
ææH I
{
øø 	
	GameBoard
¿¿ 
	gameBoard
¿¿ 
=
¿¿  !
new
¿¿" %
	GameBoard
¿¿& /
(
¿¿/ 0
)
¿¿0 1
;
¿¿1 2
this
¡¡ 
.
¡¡ 
NavigationService
¡¡ "
.
¡¡" #
Navigate
¡¡# +
(
¡¡+ ,
	gameBoard
¡¡, 5
)
¡¡5 6
;
¡¡6 7
NavigationService
¬¬ 
.
¬¬ 
RemoveBackEntry
¬¬ -
(
¬¬- .
)
¬¬. /
;
¬¬/ 0
}
√√ 	
}
ƒƒ 
}≈≈ ñµ
hC:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameClient\Pages\LogInUser.xaml.cs
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
	LogInUser "
:# $
System% +
.+ ,
Windows, 3
.3 4
Controls4 <
.< =
Page= A
,A B+
INotifyUserAvailabilityCallbackC b
{ 
private 
static 
ActiveFriends $!
activeFriendsInstance% :
=; <
new= @
ActiveFriendsA N
(N O
)O P
;P Q
private 
const 
int 
RIGTH_CREDENTIALS +
=, -
$num. /
;/ 0
private 
const 
int 
WRONG_CREDENTIALS +
=, -
$num. /
;/ 0
public 
static 
ActiveFriends #!
ActiveFriendsInstance$ 9
{: ;
get< ?
=>@ B!
activeFriendsInstanceC X
;X Y
setZ ]
=>^ `!
activeFriendsInstancea v
=w x
valuey ~
;~ 
}
Ä Å
public!! 
	LogInUser!! 
(!! 
)!! 
{"" 	
InitializeComponent## 
(##  
)##  !
;##! "
PrepareLogInWindow$$ 
($$ 
)$$  
;$$  !
}%% 	
private'' 
void'' 
PrepareLogInWindow'' '
(''' (
)''( )
{(( 	
RegistryKey)) 
key)) 
=)) 
Registry)) &
.))& '
CurrentUser))' 2
.))2 3

OpenSubKey))3 =
())= >
$str))> V
)))V W
;))W X
if** 
(** 
key** 
!=** 
null** 
)** 
{++ 
string,, 
selectedLanguage,, '
=,,( )
key,,* -
.,,- .
GetValue,,. 6
(,,6 7
$str,,7 I
),,I J
as,,K M
string,,N T
;,,T U
System-- 
.-- 
	Threading--  
.--  !
Thread--! '
.--' (
CurrentThread--( 5
.--5 6
CurrentUICulture--6 F
=--G H
new--I L
System--M S
.--S T
Globalization--T a
.--a b
CultureInfo--b m
(--m n
selectedLanguage--n ~
)--~ 
;	-- Ä
foreach.. 
(.. 
ComboBoxItem.. %
item..& *
in..+ -
LanguajeComboBox... >
...> ?
Items..? D
)..D E
{// 
if00 
(00 
item00 
.00 
Tag00  
.00  !
ToString00! )
(00) *
)00* +
==00, .
selectedLanguage00/ ?
)00? @
{11 
LanguajeComboBox22 (
.22( )
SelectedItem22) 5
=226 7
item228 <
;22< =
break33 
;33 
}44 
}55 
}66 
}77 	
private99 
void99 

CLickLogIn99 
(99  
object99  &
sender99' -
,99- .
RoutedEventArgs99/ >
e99? @
)99@ A
{:: 	
if;; 
(;; 
CheckEmptyFields;;  
(;;  !
);;! "
);;" #
{<< 
UserValidate== 
userValidate== )
===* +
new==, /
UserValidate==0 <
(==< =
)=== >
;==> ?
userValidate>> 
.>> 
UserName>> %
=>>& '
txbUserNameLogIn>>( 8
.>>8 9
Text>>9 =
;>>= >
userValidate?? 
.?? 
Password?? %
=??& '
PssPasswordLogIn??( 8
.??8 9
Password??9 A
;??A B
try@@ 
{AA 
UserManagerClientBB %
proxyServerBB& 1
=BB2 3
newBB4 7
UserManagerClientBB8 I
(BBI J
)BBJ K
;BBK L
varCC 
resultCC 
=CC  
proxyServerCC! ,
.CC, -
ValidateCredentialsCC- @
(CC@ A
userValidateCCA M
)CCM N
;CCN O
proxyServerDD 
.DD  
CloseDD  %
(DD% &
)DD& '
;DD' (
ifEE 
(EE 
resultEE 
.EE 
	CodeEventEE (
==EE) +
ExceptionDictionaryEE, ?
.EE? @
SUCCESFULL_EVENTEE@ P
||EEQ S
resultEET Z
.EEZ [
	CodeEventEE[ d
==EEe g
ExceptionDictionaryEEh {
.EE{ |
UNSUCCESFULL_EVENT	EE| é
)
EEé è
{FF 
ifGG 
(GG 
resultGG "
.GG" #
ObjectSavedGG# .
==GG/ 1
RIGTH_CREDENTIALSGG2 C
)GGC D
{HH 
DoLoginII #
(II# $
userValidateII$ 0
.II0 1
UserNameII1 9
)II9 :
;II: ;
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
{LL 
newMM $
ErrorMessageDialogWindowMM  8
(MM8 9
$strMM9 @
,MM@ A
$strMMB i
,MMi j
ApplicationMMk v
.MMv w
CurrentMMw ~
.MM~ 

MainWindow	MM â
)
MMâ ä
;
MMä ã
}NN 
elseOO 
{PP 
ExceptionHandlerQQ ,
.QQ, -
HandleExceptionQQ- <
(QQ< =
resultQQ= C
.QQC D
	CodeEventQQD M
,QQM N
$strQQO X
)QQX Y
;QQY Z
}SS 
}TT 
elseUU 
{VV 
ExceptionHandlerWW (
.WW( )
HandleExceptionWW) 8
(WW8 9
resultWW9 ?
.WW? @
	CodeEventWW@ I
,WWI J
$strWWK T
)WWT U
;WWU V
}ZZ 
}[[ 
catch\\ 
(\\ 
	Exception\\  
ex\\! #
)\\# $
{]] 
}__ 
}`` 
}aa 	
privatecc 
boolcc 
CheckEmptyFieldscc %
(cc% &
)cc& '
{dd 	
boolee 
answeree 
=ee 
trueee 
;ee 
ifff 
(ff 
stringff 
.ff 
IsNullOrEmptyff $
(ff$ %
txbUserNameLogInff% 5
.ff5 6
Textff6 :
)ff: ;
)ff; <
{gg 
LblWrongUserNamehh  
.hh  !
Contenthh! (
=hh) *

Propertieshh+ 5
.hh5 6
	Resourceshh6 ?
.hh? @
LblWrongUserNamehh@ P
;hhP Q
LblWrongUserNameii  
.ii  !

Visibilityii! +
=ii, -

Visibilityii. 8
.ii8 9
Visibleii9 @
;ii@ A
answerjj 
=jj 
falsejj 
;jj 
}kk 
elsell 
{mm 
LblWrongUserNamenn  
.nn  !

Visibilitynn! +
=nn, -

Visibilitynn. 8
.nn8 9
	Collapsednn9 B
;nnB C
}oo 
ifqq 
(qq 
stringqq 
.qq 
IsNullOrEmptyqq $
(qq$ %
PssPasswordLogInqq% 5
.qq5 6
Passwordqq6 >
)qq> ?
)qq? @
{rr 
lblPasswordWrongss  
.ss  !
Contentss! (
=ss) *

Propertiesss+ 5
.ss5 6
	Resourcesss6 ?
.ss? @
lblPasswordWrongss@ P
;ssP Q
lblPasswordWrongtt  
.tt  !

Visibilitytt! +
=tt, -

Visibilitytt. 8
.tt8 9
Visiblett9 @
;tt@ A
answeruu 
=uu 
falseuu 
;uu 
}vv 
elseww 
{xx 
lblPasswordWrongyy  
.yy  !

Visibilityyy! +
=yy, -

Visibilityyy. 8
.yy8 9
	Collapsedyy9 B
;yyB C
}zz 
return{{ 
answer{{ 
;{{ 
}|| 	
private~~ 
void~~ 
DoLogin~~ 
(~~ 
String~~ #
userName~~$ ,
)~~, -
{ 	&
ConsultInformationClient
ÄÄ $
proxyConsult
ÄÄ% 1
=
ÄÄ2 3
new
ÄÄ4 7&
ConsultInformationClient
ÄÄ8 P
(
ÄÄP Q
)
ÄÄQ R
;
ÄÄR S
var
ÅÅ 
currentUser
ÅÅ 
=
ÅÅ 
proxyConsult
ÅÅ *
.
ÅÅ* +#
ConsultUserByUserName
ÅÅ+ @
(
ÅÅ@ A
userName
ÅÅA I
)
ÅÅI J
;
ÅÅJ K
if
ÇÇ 
(
ÇÇ 
currentUser
ÇÇ 
.
ÇÇ 
	CodeEvent
ÇÇ %
==
ÇÇ& (!
ExceptionDictionary
ÇÇ) <
.
ÇÇ< =
SUCCESFULL_EVENT
ÇÇ= M
)
ÇÇM N
{
ÉÉ 
var
ÑÑ 
currentPlayer
ÑÑ !
=
ÑÑ" #
proxyConsult
ÑÑ$ 0
.
ÑÑ0 1#
ConsultPlayerByIdUser
ÑÑ1 F
(
ÑÑF G
currentUser
ÑÑG R
.
ÑÑR S
ObjectSaved
ÑÑS ^
.
ÑÑ^ _
IdUser
ÑÑ_ e
)
ÑÑe f
;
ÑÑf g
if
ÖÖ 
(
ÖÖ 
currentPlayer
ÖÖ !
.
ÖÖ! "
	CodeEvent
ÖÖ" +
==
ÖÖ, .!
ExceptionDictionary
ÖÖ/ B
.
ÖÖB C
SUCCESFULL_EVENT
ÖÖC S
)
ÖÖS T
{
ÜÜ 
InstanceSingleton
áá %
(
áá% &
currentUser
áá& 1
.
áá1 2
ObjectSaved
áá2 =
,
áá= >
currentPlayer
áá? L
.
ááL M
ObjectSaved
ááM X
,
ááX Y#
ObtainCallBackChannel
ááZ o
(
ááo p
)
ááp q
)
ááq r
;
áár s 
NotifyAvailability
àà &
(
àà& '
)
àà' (
;
àà( )
GoToMainMenu
ââ  
(
ââ  !
)
ââ! "
;
ââ" #
}
ää 
else
ãã 
{
åå 
ExceptionHandler
çç $
.
çç$ %
HandleException
çç% 4
(
çç4 5
currentPlayer
çç5 B
.
ççB C
	CodeEvent
ççC L
,
ççL M
$str
ççN W
)
ççW X
;
ççX Y
}
èè 
}
êê 
else
ëë 
{
íí 
ExceptionHandler
ìì  
.
ìì  !
HandleException
ìì! 0
(
ìì0 1
currentUser
ìì1 <
.
ìì< =
	CodeEvent
ìì= F
,
ììF G
$str
ììH Q
)
ììQ R
;
ììR S
}
ïï 
}
ññ 	
private
òò *
NotifyUserAvailabilityClient
òò ,#
ObtainCallBackChannel
òò- B
(
òòB C
)
òòC D
{
ôô 	
InstanceContext
öö 
context
öö #
=
öö$ %
new
öö& )
InstanceContext
öö* 9
(
öö9 :
this
öö: >
)
öö> ?
;
öö? @*
NotifyUserAvailabilityClient
õõ ("
proxyChannelCallback
õõ) =
=
õõ> ?
new
õõ@ C*
NotifyUserAvailabilityClient
õõD `
(
õõ` a
context
õõa h
)
õõh i
;
õõi j
return
úú "
proxyChannelCallback
úú '
;
úú' (
}
ùù 	
private
üü 
void
üü  
NotifyAvailability
üü '
(
üü' (
)
üü( )
{
†† 	
UserSingleton
°° 
us
°° 
=
°° 
UserSingleton
°° ,
.
°°, -
GetMainUser
°°- 8
(
°°8 9
)
°°9 :
;
°°: ;
us
¢¢ 
.
¢¢ "
proxyForAvailability
¢¢ #
.
¢¢# $
PlayerIsAvailable
¢¢$ 5
(
¢¢5 6
us
¢¢6 8
.
¢¢8 9
IdUser
¢¢9 ?
,
¢¢? @
us
¢¢A C
.
¢¢C D
IdPlayer
¢¢D L
)
¢¢L M
;
¢¢M N
}
££ 	
private
•• 
void
•• !
ClickSelectLanguage
•• (
(
••( )
object
••) /
sender
••0 6
,
••6 7'
SelectionChangedEventArgs
••8 Q
e
••R S
)
••S T
{
¶¶ 	
if
ßß 
(
ßß 
LanguajeComboBox
ßß  
.
ßß  !
SelectedItem
ßß! -
!=
ßß. 0
null
ßß1 5
)
ßß5 6
{
®® 
ComboBoxItem
©© 
selectedItem
©© )
=
©©* +
(
©©, -
ComboBoxItem
©©- 9
)
©©9 :
LanguajeComboBox
©©: J
.
©©J K
SelectedItem
©©K W
;
©©W X
string
™™ 
selectedLanguage
™™ '
=
™™( )
selectedItem
™™* 6
.
™™6 7
Tag
™™7 :
.
™™: ;
ToString
™™; C
(
™™C D
)
™™D E
;
™™E F
App
´´ 
.
´´ 
ChangeLanguaje
´´ "
(
´´" #
selectedLanguage
´´# 3
)
´´3 4
;
´´4 5
RegistryKey
¨¨ 
key
¨¨ 
=
¨¨  !
Registry
¨¨" *
.
¨¨* +
CurrentUser
¨¨+ 6
.
¨¨6 7
CreateSubKey
¨¨7 C
(
¨¨C D
$str
¨¨D \
)
¨¨\ ]
;
¨¨] ^
key
≠≠ 
.
≠≠ 
SetValue
≠≠ 
(
≠≠ 
$str
≠≠ /
,
≠≠/ 0
selectedLanguage
≠≠1 A
)
≠≠A B
;
≠≠B C
key
ÆÆ 
.
ÆÆ 
Close
ÆÆ 
(
ÆÆ 
)
ÆÆ 
;
ÆÆ 
if
ØØ 
(
ØØ 
selectedLanguage
ØØ $
==
ØØ% '
$str
ØØ( /
)
ØØ/ 0
{
∞∞ 
lblUserNameLogIn
±± $
.
±±$ %
Content
±±% ,
=
±±- .

Properties
±±/ 9
.
±±9 :
	Resources
±±: C
.
±±C D
lblUserNameLogIn
±±D T
;
±±T U
lblPasswordLogIn
≤≤ $
.
≤≤$ %
Content
≤≤% ,
=
≤≤- .

Properties
≤≤/ 9
.
≤≤9 :
	Resources
≤≤: C
.
≤≤C D
lblPasswordLogIn
≤≤D T
;
≤≤T U
btnEnter
≥≥ 
.
≥≥ 
Content
≥≥ $
=
≥≥% &

Properties
≥≥' 1
.
≥≥1 2
	Resources
≥≥2 ;
.
≥≥; <
btnEnter
≥≥< D
;
≥≥D E
btnRegistrer
¥¥  
.
¥¥  !
Content
¥¥! (
=
¥¥) *

Properties
¥¥+ 5
.
¥¥5 6
	Resources
¥¥6 ?
.
¥¥? @
btnRegistrer
¥¥@ L
;
¥¥L M
}
µµ 
if
∂∂ 
(
∂∂ 
selectedLanguage
∂∂ $
==
∂∂% '
$str
∂∂( ,
)
∂∂, -
{
∑∑ 
lblUserNameLogIn
∏∏ $
.
∏∏$ %
Content
∏∏% ,
=
∏∏- .

Properties
∏∏/ 9
.
∏∏9 :
	Resources
∏∏: C
.
∏∏C D
lblUserNameLogIn
∏∏D T
;
∏∏T U
lblPasswordLogIn
ππ $
.
ππ$ %
Content
ππ% ,
=
ππ- .

Properties
ππ/ 9
.
ππ9 :
	Resources
ππ: C
.
ππC D
lblPasswordLogIn
ππD T
;
ππT U
btnEnter
∫∫ 
.
∫∫ 
Content
∫∫ $
=
∫∫% &

Properties
∫∫' 1
.
∫∫1 2
	Resources
∫∫2 ;
.
∫∫; <
btnEnter
∫∫< D
;
∫∫D E
btnRegistrer
ªª  
.
ªª  !
Content
ªª! (
=
ªª) *

Properties
ªª+ 5
.
ªª5 6
	Resources
ªª6 ?
.
ªª? @
btnRegistrer
ªª@ L
;
ªªL M
}
ºº 
}
ΩΩ 
}
ææ 	
private
¿¿ 
void
¿¿ 
InstanceSingleton
¿¿ &
(
¿¿& '
UserPOJO
¿¿' /
currentUser
¿¿0 ;
,
¿¿; <

PlayerPOJO
¿¿= G
currenPlayer
¿¿H T
,
¿¿T U*
NotifyUserAvailabilityClient
¿¿V r*
connectionAvailabilityProxy¿¿s é
)¿¿é è
{
¡¡ 	
UserSingleton
¬¬ 
userSingleton
¬¬ '
=
¬¬( )
UserSingleton
¬¬* 7
.
¬¬7 8
GetMainUser
¬¬8 C
(
¬¬C D
)
¬¬D E
;
¬¬E F
userSingleton
√√ 
.
√√ 
IdUser
√√  
=
√√! "
currentUser
√√# .
.
√√. /
IdUser
√√/ 5
;
√√5 6
userSingleton
ƒƒ 
.
ƒƒ 
Name
ƒƒ 
=
ƒƒ  
currentUser
ƒƒ! ,
.
ƒƒ, -
Name
ƒƒ- 1
;
ƒƒ1 2
userSingleton
≈≈ 
.
≈≈ 
UserName
≈≈ "
=
≈≈# $
currentUser
≈≈% 0
.
≈≈0 1
UserName
≈≈1 9
;
≈≈9 :
userSingleton
∆∆ 
.
∆∆ 
Email
∆∆ 
=
∆∆  !
currentUser
∆∆" -
.
∆∆- .
EmailAddress
∆∆. :
;
∆∆: ;
userSingleton
«« 
.
«« 
Password
«« "
=
««# $
currentUser
««% 0
.
««0 1
Password
««1 9
;
««9 :
userSingleton
»» 
.
»» 
IdPlayer
»» "
=
»»# $
currenPlayer
»»% 1
.
»»1 2
IdPlayer
»»2 :
;
»»: ;
userSingleton
…… 
.
…… 
GeneralPoints
…… '
=
……( )
currenPlayer
……* 6
.
……6 7
GeneralPoints
……7 D
;
……D E
userSingleton
   
.
   
	NoReports
   #
=
  $ %
currenPlayer
  & 2
.
  2 3
	NoReports
  3 <
;
  < =
userSingleton
ÀÀ 
.
ÀÀ 
IdState
ÀÀ !
=
ÀÀ" #
currenPlayer
ÀÀ$ 0
.
ÀÀ0 1
IdState
ÀÀ1 8
;
ÀÀ8 9
userSingleton
ÃÃ 
.
ÃÃ 
IdCurrentAvatar
ÃÃ )
=
ÃÃ* +
currenPlayer
ÃÃ, 8
.
ÃÃ8 9
IdActualAvatar
ÃÃ9 G
;
ÃÃG H
userSingleton
ÕÕ 
.
ÕÕ "
proxyForAvailability
ÕÕ .
=
ÕÕ/ 0)
connectionAvailabilityProxy
ÕÕ1 L
;
ÕÕL M
}
ŒŒ 	
private
–– 
void
–– 
GoToMainMenu
–– !
(
––! "
)
––" #
{
—— 	
MainMenu
““ 
mainMenuPage
““ !
=
““" #
new
““$ '
MainMenu
““( 0
(
““0 1
)
““1 2
;
““2 3
this
”” 
.
”” 
NavigationService
”” "
.
””" #
Navigate
””# +
(
””+ ,
mainMenuPage
””, 8
)
””8 9
;
””9 :
NavigationService
‘‘ 
.
‘‘ 
RemoveBackEntry
‘‘ -
(
‘‘- .
)
‘‘. /
;
‘‘/ 0
}
’’ 	
private
◊◊ 
void
◊◊  
CLicButtonRegister
◊◊ '
(
◊◊' (
object
◊◊( .
sender
◊◊/ 5
,
◊◊5 6
RoutedEventArgs
◊◊7 F
e
◊◊G H
)
◊◊H I
{
ÿÿ 	
UserRegister
ŸŸ 
userRegistryPage
ŸŸ )
=
ŸŸ* +
new
ŸŸ, /
UserRegister
ŸŸ0 <
(
ŸŸ< =
)
ŸŸ= >
;
ŸŸ> ?
this
⁄⁄ 
.
⁄⁄ 
NavigationService
⁄⁄ "
.
⁄⁄" #
Navigate
⁄⁄# +
(
⁄⁄+ ,
userRegistryPage
⁄⁄, <
)
⁄⁄< =
;
⁄⁄= >
NavigationService
€€ 
.
€€ 
RemoveBackEntry
€€ -
(
€€- .
)
€€. /
;
€€/ 0
}
‹‹ 	
private
ﬁﬁ 
void
ﬁﬁ 
ClickSingOut
ﬁﬁ !
(
ﬁﬁ! "
object
ﬁﬁ" (
sender
ﬁﬁ) /
,
ﬁﬁ/ 0
System
ﬁﬁ1 7
.
ﬁﬁ7 8
Windows
ﬁﬁ8 ?
.
ﬁﬁ? @
Input
ﬁﬁ@ E
.
ﬁﬁE F"
MouseButtonEventArgs
ﬁﬁF Z
e
ﬁﬁ[ \
)
ﬁﬁ\ ]
{
ﬂﬂ 	
PrincipalPage
‡‡ 
principalPage
‡‡ '
=
‡‡( )
new
‡‡* -
PrincipalPage
‡‡. ;
(
‡‡; <
)
‡‡< =
;
‡‡= >
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
··+ ,
principalPage
··, 9
)
··9 :
;
··: ;
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
ÂÂ 
ClickSeePassword
ÂÂ %
(
ÂÂ% &
object
ÂÂ& ,
sender
ÂÂ- 3
,
ÂÂ3 4"
MouseButtonEventArgs
ÂÂ5 I
e
ÂÂJ K
)
ÂÂK L
{
ÊÊ 	
lblViewPassword
ÁÁ 
.
ÁÁ 
Content
ÁÁ #
=
ÁÁ$ %
PssPasswordLogIn
ÁÁ& 6
.
ÁÁ6 7
Password
ÁÁ7 ?
.
ÁÁ? @
ToString
ÁÁ@ H
(
ÁÁH I
)
ÁÁI J
;
ÁÁJ K
PssPasswordLogIn
ËË 
.
ËË 

Visibility
ËË '
=
ËË( )

Visibility
ËË* 4
.
ËË4 5
	Collapsed
ËË5 >
;
ËË> ?
lblViewPassword
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
ÈÈ3 4
Visible
ÈÈ4 ;
;
ÈÈ; <
}
ÍÍ 	
private
ÏÏ 
void
ÏÏ 
HidePassword
ÏÏ !
(
ÏÏ! "
object
ÏÏ" (
sender
ÏÏ) /
,
ÏÏ/ 0
MouseEventArgs
ÏÏ1 ?
e
ÏÏ@ A
)
ÏÏA B
{
ÌÌ 	
if
ÓÓ 
(
ÓÓ 
lblViewPassword
ÓÓ 
.
ÓÓ  
	IsVisible
ÓÓ  )
)
ÓÓ) *
{
ÔÔ 
PssPasswordLogIn
  
.
  !

Visibility
! +
=
, -

Visibility
. 8
.
8 9
Visible
9 @
;
@ A
PssPasswordLogIn
ÒÒ  
.
ÒÒ  !
PasswordChar
ÒÒ! -
=
ÒÒ. /
$char
ÒÒ0 3
;
ÒÒ3 4
PssPasswordLogIn
ÚÚ  
.
ÚÚ  !
Password
ÚÚ! )
=
ÚÚ* +
(
ÚÚ, -
string
ÚÚ- 3
)
ÚÚ3 4
lblViewPassword
ÚÚ4 C
.
ÚÚC D
Content
ÚÚD K
;
ÚÚK L
lblViewPassword
ÛÛ 
.
ÛÛ  

Visibility
ÛÛ  *
=
ÛÛ+ ,

Visibility
ÛÛ- 7
.
ÛÛ7 8
	Collapsed
ÛÛ8 A
;
ÛÛA B
}
ÙÙ 
}
ıı 	
public
˜˜ 
void
˜˜ *
ResponseOfPlayerAvailability
˜˜ 0
(
˜˜0 1
int
˜˜1 4
status
˜˜5 ;
,
˜˜; <
int
˜˜= @
idFriend
˜˜A I
)
˜˜I J
{
¯¯ 	
(
˘˘ 
(
˘˘ -
INotifyUserAvailabilityCallback
˘˘ -
)
˘˘- .#
ActiveFriendsInstance
˘˘. C
)
˘˘C D
.
˘˘D E*
ResponseOfPlayerAvailability
˘˘E a
(
˘˘a b
status
˘˘b h
,
˘˘h i
idFriend
˘˘j r
)
˘˘r s
;
˘˘s t
}
˙˙ 	
}
¸¸ 
}˝˝ ÒV
gC:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameClient\Pages\MainMenu.xaml.cs
	namespace 	
JeopardyGame
 
. 
Pages 
{ 
public 

partial 
class 
MainMenu !
:" #
Page$ (
{ 
public 
MainMenu 
( 
) 
{ 	
InitializeComponent 
(  
)  !
;! "!
PrepareMainMenuWindow !
(! "
)" #
;# $
} 	
private 
void !
PrepareMainMenuWindow *
(* +
)+ ,
{ 	
RegistryKey 
key 
= 
Registry &
.& '
CurrentUser' 2
.2 3

OpenSubKey3 =
(= >
$str> V
)V W
;W X
if 
( 
key 
!= 
null 
) 
{ 
string 
selectedLanguage '
=( )
key* -
.- .
GetValue. 6
(6 7
$str7 I
)I J
asK M
stringN T
;T U
System   
.   
	Threading    
.    !
Thread  ! '
.  ' (
CurrentThread  ( 5
.  5 6
CurrentUICulture  6 F
=  G H
new  I L
System  M S
.  S T
Globalization  T a
.  a b
CultureInfo  b m
(  m n
selectedLanguage  n ~
)  ~ 
;	   Ä
foreach"" 
("" 
ComboBoxItem"" %
item""& *
in""+ -
LanguajeComboBox"". >
.""> ?
Items""? D
)""D E
{## 
if$$ 
($$ 
item$$ 
.$$ 
Tag$$  
.$$  !
ToString$$! )
($$) *
)$$* +
==$$, .
selectedLanguage$$/ ?
)$$? @
{%% 
LanguajeComboBox&& (
.&&( )
SelectedItem&&) 5
=&&6 7
item&&8 <
;&&< =
break'' 
;'' 
}(( 
})) 
}** 
}++ 	
private-- 
void-- 
ClickSingOut-- !
(--! "
object--" (
sender--) /
,--/ 0 
MouseButtonEventArgs--1 E
e--F G
)--G H
{.. 	
if// 
(// 
new// $
ConfirmationDialogWindow// +
(//+ ,

Properties//, 6
.//6 7
	Resources//7 @
.//@ A
txbWarningTitle//A P
,//P Q

Properties//R \
.//\ ]
	Resources//] f
.//f g

tbxSignOut//g q
,//q r
Application//s ~
.//~ 
Current	// Ü
.
//Ü á

MainWindow
//á ë
)
//ë í
.
//í ì
CloseWindow
//ì û
)
//û ü
{00 !
CleanGlobalParameters11 %
(11% &
)11& '
;11' (
	LogInUser22 
	logInPage22 #
=22$ %
new22& )
	LogInUser22* 3
(223 4
)224 5
;225 6
this33 
.33 
NavigationService33 &
.33& '
Navigate33' /
(33/ 0
	logInPage330 9
)339 :
;33: ;
NavigationService44 !
.44! "
RemoveBackEntry44" 1
(441 2
)442 3
;443 4
}55 
}66 	
private88 
void88 !
CleanGlobalParameters88 *
(88* +
)88+ ,
{99 	

FriendList:: 
.:: 
CleanDictionary:: &
(::& '
)::' (
;::( )
UserSingleton;;  
currentUserSingleton;; .
=;;/ 0
UserSingleton;;1 >
.;;> ?
GetMainUser;;? J
(;;J K
);;K L
;;;L M 
currentUserSingleton<<  
.<<  ! 
proxyForAvailability<<! 5
.<<5 6 
PlayerIsNotAvailable<<6 J
(<<J K 
currentUserSingleton<<K _
.<<_ `
IdUser<<` f
,<<f g 
currentUserSingleton<<h |
.<<| }
IdPlayer	<<} Ö
)
<<Ö Ü
;
<<Ü á 
currentUserSingleton==  
.==  ! 
proxyForAvailability==! 5
.==5 6
Close==6 ;
(==; <
)==< =
;=== > 
currentUserSingleton>>  
.>>  ! 
proxyForAvailability>>! 5
=>>6 7
null>>8 <
;>>< =
UserSingleton?? 
.?? 
CleanSingleton?? (
(??( )
)??) *
;??* +
}@@ 	
privateBB 
voidBB 
ClickSelectLanguageBB (
(BB( )
objectBB) /
senderBB0 6
,BB6 7%
SelectionChangedEventArgsBB8 Q
eBBR S
)BBS T
{CC 	
ifDD 
(DD 
LanguajeComboBoxDD  
.DD  !
SelectedItemDD! -
!=DD. 0
nullDD1 5
)DD5 6
{EE 
ComboBoxItemFF 
selectedItemFF )
=FF* +
(FF, -
ComboBoxItemFF- 9
)FF9 :
LanguajeComboBoxFF: J
.FFJ K
SelectedItemFFK W
;FFW X
stringGG 
selectedLanguageGG '
=GG( )
selectedItemGG* 6
.GG6 7
TagGG7 :
.GG: ;
ToStringGG; C
(GGC D
)GGD E
;GGE F
AppHH 
.HH 
ChangeLanguajeHH "
(HH" #
selectedLanguageHH# 3
)HH3 4
;HH4 5
RegistryKeyII 
keyII 
=II  !
RegistryII" *
.II* +
CurrentUserII+ 6
.II6 7
CreateSubKeyII7 C
(IIC D
$strIID \
)II\ ]
;II] ^
keyJJ 
.JJ 
SetValueJJ 
(JJ 
$strJJ /
,JJ/ 0
selectedLanguageJJ1 A
)JJA B
;JJB C
keyKK 
.KK 
CloseKK 
(KK 
)KK 
;KK 
ifLL 
(LL 
selectedLanguageLL $
==LL% '
$strLL( /
)LL/ 0
{MM 
bttEnterGameNN  
.NN  !
ContentNN! (
=NN) *

PropertiesNN+ 5
.NN5 6
	ResourcesNN6 ?
.NN? @
bttEnterGameNN@ L
;NNL M

bttFriendsOO 
.OO 
ContentOO &
=OO' (

PropertiesOO) 3
.OO3 4
	ResourcesOO4 =
.OO= >

bttFriendsOO> H
;OOH I

bttNewGamePP 
.PP 
ContentPP &
=PP' (

PropertiesPP) 3
.PP3 4
	ResourcesPP4 =
.PP= >

bttNewGamePP> H
;PPH I!
lblProfileInformationQQ )
.QQ) *
ContentQQ* 1
=QQ2 3

PropertiesQQ4 >
.QQ> ?
	ResourcesQQ? H
.QQH I!
lblProfileInformationQQI ^
;QQ^ _
}RR 
elseRR 
ifRR 
(RR 
selectedLanguageRR )
==RR* ,
$strRR- 1
)RR1 2
{SS 
bttEnterGameTT  
.TT  !
ContentTT! (
=TT) *

PropertiesTT+ 5
.TT5 6
	ResourcesTT6 ?
.TT? @
bttEnterGameTT@ L
;TTL M

bttFriendsUU 
.UU 
ContentUU &
=UU' (

PropertiesUU) 3
.UU3 4
	ResourcesUU4 =
.UU= >

bttFriendsUU> H
;UUH I

bttNewGameVV 
.VV 
ContentVV &
=VV' (

PropertiesVV) 3
.VV3 4
	ResourcesVV4 =
.VV= >

bttNewGameVV> H
;VVH I!
lblProfileInformationWW )
.WW) *
ContentWW* 1
=WW2 3

PropertiesWW4 >
.WW> ?
	ResourcesWW? H
.WWH I!
lblProfileInformationWWI ^
;WW^ _
}XX 
}YY 
}ZZ 	
private\\ 
void\\ 
ClickUserProfile\\ %
(\\% &
object\\& ,
sender\\- 3
,\\3 4 
MouseButtonEventArgs\\5 I
e\\J K
)\\K L
{]] 	
ProfileDataConsult^^ 
profileInformation^^ 1
=^^2 3
new^^4 7
ProfileDataConsult^^8 J
(^^J K
)^^K L
;^^L M
this__ 
.__ 
NavigationService__ "
.__" #
Navigate__# +
(__+ ,
profileInformation__, >
)__> ?
;__? @
NavigationService`` 
.`` 
RemoveBackEntry`` -
(``- .
)``. /
;``/ 0
}aa 	
privatecc 
voidcc '
lstWinners_SelectionChangedcc 0
(cc0 1
objectcc1 7
sendercc8 >
,cc> ?%
SelectionChangedEventArgscc@ Y
eccZ [
)cc[ \
{dd 	
}hh 	
privatejj 
voidjj 
CLickButtonNewGamejj '
(jj' (
objectjj( .
senderjj/ 5
,jj5 6
RoutedEventArgsjj7 F
ejjG H
)jjH I
{kk 	
	LobbyPagell 
lobbyGamePagell #
=ll$ %
newll& )
	LobbyPagell* 3
(ll3 4
)ll4 5
;ll5 6
thismm 
.mm 
NavigationServicemm "
.mm" #
Navigatemm# +
(mm+ ,
lobbyGamePagemm, 9
)mm9 :
;mm: ;
NavigationServicenn 
.nn 
RemoveBackEntrynn -
(nn- .
)nn. /
;nn/ 0
}pp 	
privateqq 
voidqq  
CLickButtonEnterGameqq )
(qq) *
objectqq* 0
senderqq1 7
,qq7 8
RoutedEventArgsqq9 H
eqqI J
)qqJ K
{rr 	
enterGameWithCodess 
enterGameWithCodess /
=ss0 1
newss2 5
enterGameWithCodess6 G
(ssG H
)ssH I
;ssI J
thistt 
.tt 
NavigationServicett "
.tt" #
Navigatett# +
(tt+ ,
enterGameWithCodett, =
)tt= >
;tt> ?
NavigationServiceuu 
.uu 
RemoveBackEntryuu -
(uu- .
)uu. /
;uu/ 0
}vv 	
privateww 
voidww "
CLickButtonFriendsListww +
(ww+ ,
objectww, 2
senderww3 9
,ww9 :
RoutedEventArgsww; J
ewwK L
)wwL M
{xx 	
FriendManageryy 
friendManageryy '
=yy( )
newyy* -
FriendManageryy. ;
(yy; <
)yy< =
;yy= >
thiszz 
.zz 
NavigationServicezz "
.zz" #
Navigatezz# +
(zz+ ,
friendManagerzz, 9
)zz9 :
;zz: ;
NavigationService{{ 
.{{ 
RemoveBackEntry{{ -
({{- .
){{. /
;{{/ 0
}|| 	
} 
}ÄÄ ñ
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
WindowL R
currentPageS ^
)^ _
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
( 
currentPage (
)( )
;) *
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
Window& ,
currentPage- 8
)8 9
{ 	
double 
left 
= 
currentPage %
.% &
Left& *
++ ,
(- .
currentPage. 9
.9 :
Width: ?
-@ A
thisB F
.F G
WidthG L
)L M
/N O
$numP Q
;Q R
double 
top 
= 
currentPage $
.$ %
Top% (
+) *
(+ ,
currentPage, 7
.7 8
Height8 >
-? @
thisA E
.E F
HeightF L
)L M
/N O
$numP Q
;Q R
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
}!! 
}"" µ
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
WindowS Y
currentPageZ e
)e f
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
(" #
currentPage# .
). /
;/ 0
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
Window, 2
currentPage3 >
)> ?
{ 	
double 
left 
= 
currentPage %
.% &
Left& *
++ ,
(- .
currentPage. 9
.9 :
Width: ?
-@ A
thisB F
.F G
WidthG L
)L M
/N O
$numP Q
;Q R
double 
top 
= 
currentPage $
.$ %
Top% (
+) *
(+ ,
currentPage, 7
.7 8
Height8 >
-? @
thisA E
.E F
HeightF L
)L M
/N O
$numP Q
;Q R
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
}## È
lC:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameClient\Pages\PrincipalPage.xaml.cs
	namespace 	
JeopardyGame
 
. 
Pages 
{ 
public 

partial 
class 
PrincipalPage &
:' (
Page) -
{ 
public 
PrincipalPage 
( 
) 
{ 	
InitializeComponent 
(  
)  !
;! "
} 	
private 
void 
CLickButtonLogin %
(% &
object& ,
sender- 3
,3 4
RoutedEventArgs5 D
eE F
)F G
{ 	
	LogInUser 
	logInPage 
=  !
new" %
	LogInUser& /
(/ 0
)0 1
;1 2
this   
.   
NavigationService   "
.  " #
Navigate  # +
(  + ,
	logInPage  , 5
)  5 6
;  6 7
NavigationService!! 
.!! 
RemoveBackEntry!! -
(!!- .
)!!. /
;!!/ 0
}"" 	
private$$ 
void$$ 
CLickButtonInvite$$ &
($$& '
object$$' -
sender$$. 4
,$$4 5
RoutedEventArgs$$6 E
e$$F G
)$$G H
{%% 	
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
.(( 
Show(( 
((( 
)(( 
;(( 
enterGameWithCode)) 
codePage)) &
=))' (
new))) ,
enterGameWithCode))- >
())> ?
)))? @
;))@ A

codeWindow** 
.** 
contentFrame** #
.**# $
NavigationService**$ 5
.**5 6
Navigate**6 >
(**> ?
codePage**? G
)**G H
;**H I
}++ 	
},, 
}-- ∫"
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
String		  & 
AT_LEAST_TWO_NUMBERS		' ;
=		< =
$str		> f
;		f g
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
  &'
AT_LEAST_TWO_CAPITAL_LETTER

' B
=

C D
$str	

E Ç
;


Ç É
private 
static 
readonly 
String  &*
AT_LEAST_ONE_SPECIAL_CHARACTER' E
=F G
$strH Y
;Y Z
private 
static 
readonly 
String  &(
AT_LEAST_ONE_PUNTUATION_MARK' C
=D E
$strF O
;O P
private 
static 
readonly 
string  &
NAME_RULES_CHAR' 6
=7 8
$str9 Z
;Z [
private 
static 
readonly 
string  &
USERNAME_RULES_CHAR' :
=; <
$str= ]
;] ^
private 
static 
readonly 
string  &
EMAIL_RULES_CHAR' 7
=8 9
$str: y
;y z
private 
static 
readonly 
string  &
EMAIL_ALLOW_CHAR' 7
=8 9
$str: T
;T U
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
(+ ,
NAME_RULES_CHAR, ;
); <
}= >
,> ?
{ 
$str $
,$ %
new& )
Regex* /
(/ 0
USERNAME_RULES_CHAR0 C
)C D
}E F
,F G
{ 
$str  
,  !
new" %
Regex& +
(+ ,
EMAIL_ALLOW_CHAR, <
)< =
}> ?
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
return  
AT_LEAST_TWO_NUMBERS '
;' (
} 	
public!! 
String!! *
GetAt_LEAST_TWO_CAPITAL_LETTER!! 4
(!!4 5
)!!5 6
{"" 	
return## '
AT_LEAST_TWO_CAPITAL_LETTER## .
;##. /
}$$ 	
public&& 
String&& -
!GetAt_LEAST_ONE_SPECIAL_CHARACTER&& 7
(&&7 8
)&&8 9
{'' 	
return(( *
AT_LEAST_ONE_SPECIAL_CHARACTER(( 1
;((1 2
})) 	
public++ 
String++ *
GetAt_LEAST_ONE_PUTUATION_MARK++ 4
(++4 5
)++5 6
{,, 	
return-- (
AT_LEAST_ONE_PUNTUATION_MARK-- /
;--/ 0
}.. 	
public00 
String00 
GetNAME_RULES_CHAR00 (
(00( )
)00) *
{11 	
return22 
NAME_RULES_CHAR22 "
;22" #
}33 	
public55 
String55 "
GetUSERNAME_RULES_CHAR55 ,
(55, -
)55- .
{66 	
return77 
USERNAME_RULES_CHAR77 &
;77& '
}88 	
public:: 
String:: 
GetEMAIL_RULES_CHAR:: )
(::) *
)::* +
{;; 	
return<< 
EMAIL_RULES_CHAR<< #
;<<# $
}== 	
}?? 
}AA ı0
xC:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameClient\UserControls\ActiveUsersControl.xaml.cs
	namespace 	
JeopardyGame
 
. 
UserControls #
{ 
public 

partial 
class 
ActiveUsersControls -
:. /
UserControl0 ;
{ 
private 
const 
int 
AVAILABLE_STATUS *
=+ ,
$num- .
;. /
private 
	LobbyPage 
	lobbyPage #
;# $
public 
ActiveUsersControls "
(" #
)# $
{ 	
InitializeComponent 
(  
)  !
;! "
} 	
public!! 
void!! 
	StartPage!! 
(!! 
	LobbyPage!! '
currentLobby!!( 4
)!!4 5
{"" 	
	lobbyPage## 
=## 
currentLobby## $
;##$ %
	GetFriend$$ 
($$ 
)$$ 
;$$ 
	SetFriend%% 
(%% 
)%% 
;%% 
}&& 	
public(( 
void(( !
ClickCloseListFriends(( )
((() *
object((* 0
sender((1 7
,((7 8 
MouseButtonEventArgs((9 M
e((N O
)((O P
{)) 	
	lobbyPage** 
.** 
CloseFriendList** %
(**% &
)**& '
;**' (
}++ 	
private-- 
void-- 
	GetFriend-- 
(-- 
)--  
{.. 	 
FriendsManagerClient//  
proxyFriend//! ,
=//- .
new/// 2 
FriendsManagerClient//3 G
(//G H
)//H I
;//I J$
ConsultInformationClient00 $
	proxyUser00% .
=00/ 0
new001 4$
ConsultInformationClient005 M
(00M N
)00N O
;00O P
UserSingleton11 
mainCurrentUser11 )
=11* +
UserSingleton11, 9
.119 :
GetMainUser11: E
(11E F
)11F G
;11G H
var22 
user22 
=22 
	proxyUser22  
.22  !
ConsultUserById22! 0
(220 1
mainCurrentUser221 @
.22@ A
IdUser22A G
)22G H
;22H I
var33 
friends33 
=33 
proxyFriend33 %
.33% &
GetUserFriends33& 4
(334 5
user335 9
.339 :
ObjectSaved33: E
)33E F
;33F G
if44 
(44 
friends44 
.44 
	CodeEvent44 !
==44" $
ExceptionDictionary44% 8
.448 9
SUCCESFULL_EVENT449 I
)44I J
{55 
foreach66 
(66 
var66 
item66 !
in66" $
friends66% ,
.66, -
ObjectSaved66- 8
)668 9
{77 )
FriendAvailabilityInformation88 1
activeFriend882 >
=88? @
new88A D)
FriendAvailabilityInformation88E b
(88b c
)88c d
;88d e
activeFriend99  
.99  !
IdUser99! '
=99( )
item99* .
.99. /
IdUser99/ 5
;995 6
activeFriend::  
.::  !
Name::! %
=::& '
item::( ,
.::, -
UserName::- 5
;::5 6
activeFriend;;  
.;;  !"
idStatusOfAvailability;;! 7
=;;8 9
item;;: >
.;;> ? 
IdStatusAvailability;;? S
;;;S T

FriendList<< 
.<< )
RegisterNewFriendInDictionary<< <
(<<< =
item<<= A
.<<A B
IdUser<<B H
,<<H I
activeFriend<<J V
)<<V W
;<<W X
}== 
}>> 
else?? 
{@@ 
ExceptionHandlerAA  
.AA  !
HandleExceptionAA! 0
(AA0 1
friendsAA1 8
.AA8 9
	CodeEventAA9 B
,AAB C
stringAAD J
.AAJ K
EmptyAAK P
)AAP Q
;AAQ R
}BB 
proxyFriendCC 
.CC 
CloseCC 
(CC 
)CC 
;CC  
	proxyUserDD 
.DD 
CloseDD 
(DD 
)DD 
;DD 
}EE 	
privateGG 
voidGG 
	SetFriendGG 
(GG 
)GG  
{HH 	
stcFriendListII 
.II 
ChildrenII "
.II" #
ClearII# (
(II( )
)II) *
;II* +
stcFriendListJJ 
.JJ 
OrientationJJ %
=JJ& '
OrientationJJ( 3
.JJ3 4
VerticalJJ4 <
;JJ< =

DictionaryKK 
<KK 
intKK 
,KK )
FriendAvailabilityInformationKK 9
>KK9 :

friendListKK; E
=KKF G

FriendListKKH R
.KKR S 
GetActiveFriendsListKKS g
(KKg h
)KKh i
;KKi j
ifLL 
(LL 

friendListLL 
!=LL 
nullLL "
)LL" #
{MM 
foreachNN 
(NN 
varNN 
itemNN !
inNN" $

friendListNN% /
)NN/ 0
{OO 
boolPP 
statePP 
;PP 
ifQQ 
(QQ 
itemQQ 
.QQ 
ValueQQ "
.QQ" #"
idStatusOfAvailabilityQQ# 9
==QQ: <
AVAILABLE_STATUSQQ= M
)QQM N
{RR 
stateSS 
=SS 
trueSS  $
;SS$ %
}TT 
elseUU 
{VV 
stateWW 
=WW 
falseWW  %
;WW% &
}XX 
stcFriendListYY  
.YY  !
ChildrenYY! )
.YY) *
AddYY* -
(YY- .
newYY. 1

FriendCardYY2 <
(YY< =
itemYY= A
.YYA B
ValueYYB G
.YYG H
NameYYH L
,YYL M
stateYYN S
,YYS T
$strYYU ]
)YY] ^
)YY^ _
;YY_ `
}ZZ 
}[[ 
}\\ 	
}^^ 
}__ ≠7
yC:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameClient\UserControls\LiveChatUserControl.xaml.cs
	namespace 	
JeopardyGame
 
. 
UserControls #
{ 
public 

partial 
class 
LiveChatUserControl ,
:- .
UserControl/ :
{ 
private 
bool 
isAdmin 
; 
private 
int 
roomCode 
; 
private 
UserSingleton 
userSingleton +
;+ ,
private 
List 
< 
MessageChat  
>  !
messagesInChats" 1
=2 3
new4 7
List8 <
<< =
MessageChat= H
>H I
(I J
)J K
;K L
private 
LiveChatClient  
proxyChannelCallback 3
;3 4
private   
	LobbyPage   
	lobbyPage   #
;  # $
public"" 
LiveChatUserControl"" "
(""" #
)""# $
{## 	
InitializeComponent$$ 
($$  
)$$  !
;$$! "
}&& 	
public(( 
void(( 
	StartPage(( 
((( 
bool(( "
rol((# &
,((& '
int((( +
room((, 0
,((0 1
	LobbyPage((2 ;
lobby((< A
)((A B
{)) 	
isAdmin** 
=** 
rol** 
;** 
roomCode++ 
=++ 
room++ 
;++ 
	lobbyPage,, 
=,, 
lobby,, 
;,, 
InstanceContext-- 
contextChat-- '
=--( )
new--* -
InstanceContext--. =
(--= >
lobby--> C
)--C D
;--D E 
proxyChannelCallback..  
=..! "
new..# &
LiveChatClient..' 5
(..5 6
contextChat..6 A
)..A B
;..B C
PrepareWindow// 
(// 
)// 
;// 
}00 	
private22 
void22 
PrepareWindow22 "
(22" #
)22# $
{33 	
userSingleton44 
=44 
UserSingleton44 )
.44) *
GetMainUser44* 5
(445 6
)446 7
;447 8
if55 
(55 
isAdmin55 
)55 
{66  
proxyChannelCallback77 $
.77$ %
CreateChatForLobby77% 7
(777 8
roomCode778 @
,77@ A
userSingleton77B O
.77O P
IdUser77P V
)77V W
;77W X
}88 
GetAllMessages99 
(99 
)99 
;99 
}:: 	
private<< 
void<< 
GetAllMessages<< #
(<<# $
)<<$ %
{== 	
var>> 
serverResponse>> 
=>>   
proxyChannelCallback>>! 5
.>>5 6
GetAllMessages>>6 D
(>>D E
roomCode>>E M
,>>M N
userSingleton>>O \
.>>\ ]
IdUser>>] c
)>>c d
;>>d e
if?? 
(?? 
serverResponse?? 
.?? 
	CodeEvent?? (
==??) +
ExceptionDictionary??, ?
.??? @
SUCCESFULL_EVENT??@ P
)??P Q
{@@ 
messagesInChatsAA 
=AA  !
serverResponseAA" 0
.AA0 1
ObjectSavedAA1 <
.AA< =
ToListAA= C
(AAC D
)AAD E
;AAE F
LoadChatBB 
(BB 
)BB 
;BB 
}CC 
}DD 	
publicFF 
voidFF 
LoadChatFF 
(FF 
)FF 
{GG 	
foreachHH 
(HH 
varHH 
itemHH 
inHH  
messagesInChatsHH! 0
)HH0 1
{II 
ChatMessageCardJJ 
chatMessageCardJJ  /
=JJ0 1
newJJ2 5
ChatMessageCardJJ6 E
(JJE F
itemJJF J
.JJJ K
UserNameJJK S
,JJS T
itemJJU Y
.JJY Z
MessageToSendJJZ g
)JJg h
;JJh i
ifKK 
(KK 
itemKK 
.KK 
IdUserKK 
==KK  "
userSingletonKK# 0
.KK0 1
IdUserKK1 7
)KK7 8
{LL 
chatMessageCardMM #
.MM# $
HorizontalAlignmentMM$ 7
=MM8 9
HorizontalAlignmentMM: M
.MMM N
RightMMN S
;MMS T
}NN 
elseOO 
{PP 
chatMessageCardQQ #
.QQ# $
HorizontalAlignmentQQ$ 7
=QQ8 9
HorizontalAlignmentQQ: M
.QQM N
LeftQQN R
;QQR S
}RR 
stpChatSS 
.SS 
ChildrenSS  
.SS  !
AddSS! $
(SS$ %
chatMessageCardSS% 4
)SS4 5
;SS5 6
}TT 
}UU 	
privateWW 
voidWW 
ClickCloseChatWW #
(WW# $
objectWW$ *
senderWW+ 1
,WW1 2 
MouseButtonEventArgsWW3 G
eWWH I
)WWI J
{XX 	
	lobbyPageYY 
.YY 
CloseLiveChatYY #
(YY# $
)YY$ %
;YY% &
}ZZ 	
private\\ 
void\\ 
ClickSendMessage\\ %
(\\% &
object\\& ,
sender\\- 3
,\\3 4 
MouseButtonEventArgs\\5 I
e\\J K
)\\K L
{]] 	
string^^ 
message^^ 
=^^ 
txbMessageToSend^^ -
.^^- .
Text^^. 2
;^^2 3
if__ 
(__ 
!__ 
string__ 
.__ 
IsNullOrEmpty__ %
(__% &
message__& -
)__- .
)__. /
{``  
proxyChannelCallbackaa $
.aa$ %
SendMessageaa% 0
(aa0 1
userSingletonaa1 >
.aa> ?
IdUseraa? E
,aaE F
roomCodeaaG O
,aaO P
userSingletonaaQ ^
.aa^ _
UserNameaa_ g
,aag h
messageaai p
)aap q
;aaq r
ChatMessageCardbb 
chatMessageCardbb  /
=bb0 1
newbb2 5
ChatMessageCardbb6 E
(bbE F
userSingletonbbF S
.bbS T
UserNamebbT \
,bb\ ]
messagebb^ e
)bbe f
;bbf g
chatMessageCardcc 
.cc  
HorizontalAlignmentcc  3
=cc4 5
HorizontalAlignmentcc6 I
.ccI J
RightccJ O
;ccO P
stpChatdd 
.dd 
Childrendd  
.dd  !
Adddd! $
(dd$ %
chatMessageCarddd% 4
)dd4 5
;dd5 6
txbMessageToSendee  
.ee  !
Textee! %
=ee& '
stringee( .
.ee. /
Emptyee/ 4
;ee4 5
}ff 
}gg 	
}ii 
}jj Ÿ'
aC:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameClient\UserSingleton.cs
	namespace		 	
JeopardyGame		
 
{

 
public 

class 
UserSingleton 
{ 
private 
static 
UserSingleton $#
instanceOfUserSingleton% <
;< =
public 
int 
IdUser 
{ 
get 
;  
set! $
;$ %
}& '
public 
String 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
String 
UserName 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
String 
Email 
{ 
get !
;! "
set# &
;& '
}( )
public 
String 
Password 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
int 
IdPlayer 
{ 
get !
;! "
set# &
;& '
}( )
public 
int 
GeneralPoints  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
int 
	NoReports 
{ 
get "
;" #
set$ '
;' (
}) *
public 
int 
IdCurrentAvatar "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
int 
IdState 
{ 
get  
;  !
set" %
;% &
}' (
public (
NotifyUserAvailabilityClient + 
proxyForAvailability, @
{A B
getC F
;F G
setH K
;K L
}M N
private 
UserSingleton 
( 
) 
{  !
}" #
private 
UserSingleton 
( 
UserPOJO &
userSingleton' 4
,4 5

PlayerPOJO6 @
playerSingletonA P
)P Q
{ 	
IdUser 
= 
userSingleton "
." #
IdUser# )
;) *
Name 
= 
userSingleton  
.  !
Name! %
;% &
UserName 
= 
userSingleton $
.$ %
UserName% -
;- .
Email   
=   
userSingleton   !
.  ! "
EmailAddress  " .
;  . /
Password!! 
=!! 
userSingleton!! $
.!!$ %
Password!!% -
;!!- .
IdPlayer"" 
="" 
playerSingleton"" &
.""& '
IdPlayer""' /
;""/ 0
GeneralPoints## 
=## 
playerSingleton## +
.##+ ,
GeneralPoints##, 9
;##9 :
	NoReports$$ 
=$$ 
playerSingleton$$ '
.$$' (
	NoReports$$( 1
;$$1 2
IdCurrentAvatar%% 
=%% 
playerSingleton%% -
.%%- .
IdActualAvatar%%. <
;%%< =
IdState&& 
=&& 
playerSingleton&& %
.&&% &
IdState&&& -
;&&- .
}'' 	
public)) 
static)) 
UserSingleton)) #
GetMainUser))$ /
())/ 0
)))0 1
{** 	
if++ 
(++ #
instanceOfUserSingleton++ '
==++( *
null+++ /
)++/ 0
{,, #
instanceOfUserSingleton-- '
=--( )
new--* -
UserSingleton--. ;
(--; <
)--< =
;--= >
}.. 
return// #
instanceOfUserSingleton// *
;//* +
}00 	
public22 
static22 
UserSingleton22 #
GetMainUser22$ /
(22/ 0
UserPOJO220 8
userSingleton229 F
,22F G

PlayerPOJO22H R
playerSingleton22S b
)22b c
{33 	
if44 
(44 #
instanceOfUserSingleton44 '
==44( *
null44+ /
)44/ 0
{55 #
instanceOfUserSingleton66 '
=66( )
new66* -
UserSingleton66. ;
(66; <
userSingleton66< I
,66I J
playerSingleton66K Z
)66Z [
;66[ \
}77 
return88 #
instanceOfUserSingleton88 *
;88* +
}99 	
public;; 
static;; 
void;; 
CleanSingleton;; )
(;;) *
);;* +
{<< 	#
instanceOfUserSingleton== #
===$ %
null==& *
;==* +
}>> 	
}@@ 
}AA ∂
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
} ›
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
PrincipalWindowLoaded +
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
PrincipalWindowLoaded *
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
} 
}   á
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
} §
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
{ 
	protected 
override 
void 
	OnStartup  )
() *
StartupEventArgs* :
e; <
)< =
{		 	
base

 
.

 
	OnStartup

 
(

 
e

 
)

 
;

 
Views 
. 
PrincipalWindow !

mainWindow" ,
=- .
new/ 2
Views3 8
.8 9
PrincipalWindow9 H
(H I
)I J
;J K
this 
. 

MainWindow 
= 

mainWindow (
;( )

mainWindow 
. 
Show 
( 
) 
; 
} 	
App 
( 
) 
{ 	
System 
. 
	Threading 
. 
Thread #
.# $
CurrentThread$ 1
.1 2
CurrentUICulture2 B
=C D
newE H
SystemI O
.O P
GlobalizationP ]
.] ^
CultureInfo^ i
(i j
$strj q
)q r
;r s
} 	
public 
static 
void 
ChangeLanguaje )
(* +
string+ 1
languaje2 :
): ;
{ 	
System 
. 
	Threading 
. 
Thread #
.# $
CurrentThread$ 1
.1 2
CurrentUICulture2 B
=C D
newE H
SystemI O
.O P
GlobalizationP ]
.] ^
CultureInfo^ i
(i j
languajej r
)r s
;s t
} 	
} 
} £
qC:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameClient\Pages\ProfileDataConsult.xaml.cs
	namespace		 	
JeopardyGame		
 
.		 
Pages		 
{

 
public 

partial 
class 
ProfileDataConsult +
:, -
Page. 2
{ 
public 
ProfileDataConsult !
(! "
)" #
{ 	
InitializeComponent 
(  
)  !
;! "
DisplayUserInfo 
( 
lblNameEditAccount .
,. /"
lblUserNameEditAccount0 F
,F G 
lblAddresEditAccountH \
)\ ]
;] ^
} 	
public 
static 
void 
DisplayUserInfo *
(* +
Label+ 0
lblNameEditAccount1 C
,C D
LabelE J"
lblUserNameEditAccountK a
,a b
Labelc h!
lblAddressEditAccounti ~
)~ 
{ 	
UserSingleton 
userSingleton '
=( )
UserSingleton* 7
.7 8
GetMainUser8 C
(C D
)D E
;E F"
lblUserNameEditAccount "
." #
Content# *
=+ ,
userSingleton- :
.: ;
UserName; C
;C D
lblNameEditAccount 
. 
Content &
=' (
userSingleton) 6
.6 7
Name7 ;
;; <!
lblAddressEditAccount !
.! "
Content" )
=* +
userSingleton, 9
.9 :
Email: ?
;? @
} 	
private 
void $
ClickEditUserInformation -
(- .
object. 4
sender5 ;
,; <
System= C
.C D
WindowsD K
.K L
InputL Q
.Q R 
MouseButtonEventArgsR f
eg h
)h i
{   	
EditUserProfile!! 
editUserProfilePage!! /
=!!0 1
new!!2 5
EditUserProfile!!6 E
(!!E F
)!!F G
;!!G H
this"" 
."" 
NavigationService"" "
.""" #
Navigate""# +
(""+ ,
editUserProfilePage"", ?
)""? @
;""@ A
NavigationService## 
.## 
RemoveBackEntry## -
(##- .
)##. /
;##/ 0
}$$ 	
private&& 
void&& 
ClickSingOut&& !
(&&! "
object&&" (
sender&&) /
,&&/ 0
System&&1 7
.&&7 8
Windows&&8 ?
.&&? @
Input&&@ E
.&&E F 
MouseButtonEventArgs&&F Z
e&&[ \
)&&\ ]
{'' 	
MainMenu(( 
mainMenuPage(( !
=((" #
new(($ '
MainMenu((( 0
(((0 1
)((1 2
;((2 3
this)) 
.)) 
NavigationService)) "
.))" #
Navigate))# +
())+ ,
mainMenuPage)), 8
)))8 9
;))9 :
NavigationService** 
.** 
RemoveBackEntry** -
(**- .
)**. /
;**/ 0
}++ 	
},, 
}-- ”æ
kC:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameClient\Pages\UserRegister.xaml.cs
	namespace 	
JeopardyGame
 
. 
Pages 
{ 
public 

partial 
class 
UserRegister %
:& '
Page( ,
{ 
private 
List 
< 
Label 
> 
ListBoxRules (
=) *
new+ .
List/ 3
<3 4
Label4 9
>9 :
(: ;
); <
;< =
private 
const 
int 
DISALLOWED_VALUES +
=, -
$num. /
;/ 0
private 
const 
int 
ALLOWED_VALUES (
=) *
$num+ ,
;, -
private 
const 
int #
MINIMUN_PASSWORD_LENGTH 1
=2 3
$num4 6
;6 7
private 
const 
int #
MAXIMUM_PASSWORD_LENGTH 1
=2 3
$num4 6
;6 7
public 
UserRegister 
( 
) 
{ 	
InitializeComponent 
(  
)  !
;! "
PrepareWindow 
( 
) 
; 
} 	
public   
void   
ChargeField   
(    
UserPOJO    (
user  ) -
)  - .
{!! 	
ListBoxRules"" 
."" 
Clear"" 
("" 
)""  
;""  !
PrepareWindow## 
(## 
)## 
;##  
txbNameCreateAccount$$  
.$$  !
Text$$! %
=$$& '
user$$( ,
.$$, -
Name$$- 1
;$$1 2$
txbUserNameCreateAccount%% $
.%%$ %
Text%%% )
=%%* +
user%%, 0
.%%0 1
UserName%%1 9
;%%9 :!
txbEmailCreateAccount&& !
.&&! "
Text&&" &
=&&' (
user&&) -
.&&- .
EmailAddress&&. :
;&&: ;$
psbPasswordCreateAccount'' $
.''$ %
Password''% -
=''. /
user''0 4
.''4 5
Password''5 =
;''= >
}(( 	
private** 
void** 
PrepareWindow** "
(**" #
)**# $
{++ 	
InitializeListeners,, 
(,,  
),,  !
;,,! "
CreateRuleLabels-- 
(-- 
)-- 
;-- 
foreach.. 
(.. 
var.. 
rule.. 
in..  
ListBoxRules..! -
)..- .
{// 
lsbPasswordRules00  
.00  !
Items00! &
.00& '
Add00' *
(00* +
rule00+ /
)00/ 0
;000 1
}11 
}22 	
private44 
void44 
InitializeListeners44 (
(44( )
)44) *
{55 	$
psbPasswordCreateAccount66 $
.66$ %
PasswordChanged66% 4
+=665 7 
PasswordChangedEvent668 L
;66L M$
psbPasswordCreateAccount77 $
.77$ %
PreviewKeyDown77% 3
+=774 6*
TextBoxPasteBlockConfiguration777 U
;77U V 
txbNameCreateAccount99  
.99  !
PreviewTextInput99! 1
+=992 4%
TextBoxRegexConfiguration995 N
;99N O$
txbUserNameCreateAccount:: $
.::$ %
PreviewTextInput::% 5
+=::6 8%
TextBoxRegexConfiguration::9 R
;::R S 
txbNameCreateAccount<<  
.<<  !
PreviewKeyDown<<! /
+=<<0 2*
TextBoxPasteBlockConfiguration<<3 Q
;<<Q R$
txbUserNameCreateAccount== $
.==$ %
PreviewKeyDown==% 3
+===4 6*
TextBoxPasteBlockConfiguration==7 U
;==U V!
txbEmailCreateAccount>> !
.>>! "
PreviewTextInput>>" 2
+=>>3 5%
TextBoxRegexConfiguration>>6 O
;>>O P!
txbEmailCreateAccount?? !
.??! "
PreviewKeyDown??" 0
+=??1 3*
TextBoxPasteBlockConfiguration??4 R
;??R S
}@@ 	
privateBB 
voidBB  
PasswordChangedEventBB )
(BB) *
objectBB* 0
senderBB1 7
,BB7 8
RoutedEventArgsBB9 H
eBBI J
)BBJ K
{CC 	
intDD (
changeButtonStateForPasswordDD ,
=DD- .
CheckPasswordDD/ <
(DD< =
)DD= >
;DD> ?
ifEE 
(EE (
changeButtonStateForPasswordEE ,
==EE- /
ALLOWED_VALUESEE0 >
)EE> ?
{FF 
bttSaveUserGG 
.GG 
	IsEnabledGG %
=GG& '
trueGG( ,
;GG, -
}HH 
elseII 
{JJ 
bttSaveUserKK 
.KK 
	IsEnabledKK %
=KK& '
falseKK( -
;KK- .
}LL 
}MM 	
privateOO 
voidOO %
TextBoxRegexConfigurationOO .
(OO. /
objectOO/ 5
senderOO6 <
,OO< =$
TextCompositionEventArgsOO> V
eOOW X
)OOX Y
{PP 	
TextBoxQQ 
currentTextBoxQQ "
=QQ# $
senderQQ% +
asQQ, .
TextBoxQQ/ 6
;QQ6 7%
RegularExpressionsLibraryRR %%
regularExpressionsLibraryRR& ?
=RR@ A
newRRB E%
RegularExpressionsLibraryRRF _
(RR_ `
)RR` a
;RRa b
ifSS 
(SS 
(SS %
regularExpressionsLibrarySS *
.SS* +$
ValidationTextBoxRegexesSS+ C
.SSC D
TryGetValueSSD O
(SSO P
currentTextBoxSSP ^
.SS^ _
NameSS_ c
,SSc d
outSSe h
RegexSSi n
regexSSo t
)SSt u
)SSu v
&&SSw y
(SSz {
!SS{ |
regex	SS| Å
.
SSÅ Ç
IsMatch
SSÇ â
(
SSâ ä
currentTextBox
SSä ò
.
SSò ô
Text
SSô ù
+
SSû ü
e
SS† °
.
SS° ¢
Text
SS¢ ¶
)
SS¶ ß
)
SSß ®
)
SS® ©
{TT 
eUU 
.UU 
HandledUU 
=UU 
trueUU  
;UU  !
}VV 
}WW 	
privateXX 
voidXX *
TextBoxPasteBlockConfigurationXX 3
(XX3 4
objectXX4 :
senderXX; A
,XXA B
KeyEventArgsXXC O
eXXP Q
)XXQ R
{YY 	
ifZZ 
(ZZ 
(ZZ 
KeyboardZZ 
.ZZ 
	ModifiersZZ #
&ZZ$ %
ModifierKeysZZ& 2
.ZZ2 3
ControlZZ3 :
)ZZ: ;
==ZZ< >
ModifierKeysZZ? K
.ZZK L
ControlZZL S
&&ZZT V
(ZZW X
eZZX Y
.ZZY Z
KeyZZZ ]
==ZZ^ `
KeyZZa d
.ZZd e
VZZe f
)ZZf g
)ZZg h
{[[ 
e\\ 
.\\ 
Handled\\ 
=\\ 
true\\  $
;\\$ %
}]] 
}^^ 	
private`` 
void`` 
CreateRuleLabels`` %
(``% &
)``& '
{aa 	
Labelbb 
PasswordLengthRulebb $
=bb% &
newbb' *
Labelbb+ 0
(bb0 1
)bb1 2
;bb2 3
PasswordLengthRulecc 
.cc 
Contentcc &
=cc' (

Propertiescc) 3
.cc3 4
	Resourcescc4 =
.cc= >!
lblPassLengthRuleDesccc> S
;ccS T
PasswordLengthRuledd 
.dd 

Foregrounddd )
=dd* +
Brushesdd, 3
.dd3 4
Whitedd4 9
;dd9 :
PasswordLengthRuleee 
.ee 
FontSizeee '
=ee( )
$numee* ,
;ee, -
Labelff 
PasswordNumbersRuleff %
=ff& '
newff( +
Labelff, 1
(ff1 2
)ff2 3
;ff3 4
PasswordNumbersRulegg 
.gg  
Contentgg  '
=gg( )

Propertiesgg* 4
.gg4 5
	Resourcesgg5 >
.gg> ?!
lblPassNumberRuleDescgg? T
;ggT U
PasswordNumbersRulehh 
.hh  

Foregroundhh  *
=hh+ ,
Brusheshh- 4
.hh4 5
Whitehh5 :
;hh: ;
PasswordNumbersRuleii 
.ii  
FontSizeii  (
=ii) *
$numii+ -
;ii- .
Labeljj  
PasswordCapitalsRulejj &
=jj' (
newjj) ,
Labeljj- 2
(jj2 3
)jj3 4
;jj4 5 
PasswordCapitalsRulekk  
.kk  !
Contentkk! (
=kk) *

Propertieskk+ 5
.kk5 6
	Resourceskk6 ?
.kk? @"
lblPassCapitalRuleDesckk@ V
;kkV W 
PasswordCapitalsRulell  
.ll  !

Foregroundll! +
=ll, -
Brushesll. 5
.ll5 6
Whitell6 ;
;ll; < 
PasswordCapitalsRulemm  
.mm  !
FontSizemm! )
=mm* +
$nummm, .
;mm. /
Labelnn 
PasswordSpeCharRulenn %
=nn& '
newnn( +
Labelnn, 1
(nn1 2
)nn2 3
;nn3 4
PasswordSpeCharRuleoo 
.oo  
Contentoo  '
=oo( )

Propertiesoo* 4
.oo4 5
	Resourcesoo5 >
.oo> ?"
lblPassSpeCharRuleDescoo? U
;ooU V
PasswordSpeCharRulepp 
.pp  

Foregroundpp  *
=pp+ ,
Brushespp- 4
.pp4 5
Whitepp5 :
;pp: ;
PasswordSpeCharRuleqq 
.qq  
FontSizeqq  (
=qq) *
$numqq+ -
;qq- .
Labelrr #
PasswordPunctuationRulerr )
=rr* +
newrr, /
Labelrr0 5
(rr5 6
)rr6 7
;rr7 8#
PasswordPunctuationRuless #
.ss# $
Contentss$ +
=ss, -

Propertiesss/ 9
.ss9 :
	Resourcesss: C
.ssC D"
lblPassPuntSigRuleDescssD Z
;ssZ [#
PasswordPunctuationRulett #
.tt# $

Foregroundtt$ .
=tt/ 0
Brushestt1 8
.tt8 9
Whitett9 >
;tt> ?#
PasswordPunctuationRuleuu #
.uu# $
FontSizeuu$ ,
=uu- .
$numuu/ 1
;uu1 2
Labelvv !
PasswordSameEmailRulevv '
=vv( )
newvv* -
Labelvv. 3
(vv3 4
)vv4 5
;vv5 6!
PasswordSameEmailRuleww !
.ww! "
Contentww" )
=ww* +

Propertiesww, 6
.ww6 7
	Resourcesww7 @
.ww@ A&
lblPassEqualsEmailRuleDescwwA [
;ww[ \!
PasswordSameEmailRulexx !
.xx! "

Foregroundxx" ,
=xx- .
Brushesxx/ 6
.xx6 7
Whitexx7 <
;xx< =!
PasswordSameEmailRuleyy !
.yy! "
FontSizeyy" *
=yy+ ,
$numyy- /
;yy/ 0
ListBoxRuleszz 
.zz 
Addzz 
(zz 
PasswordLengthRulezz /
)zz/ 0
;zz0 1
ListBoxRules{{ 
.{{ 
Add{{ 
({{ 
PasswordNumbersRule{{ 0
){{0 1
;{{1 2
ListBoxRules|| 
.|| 
Add|| 
(||  
PasswordCapitalsRule|| 1
)||1 2
;||2 3
ListBoxRules}} 
.}} 
Add}} 
(}} 
PasswordSpeCharRule}} 0
)}}0 1
;}}1 2
ListBoxRules~~ 
.~~ 
Add~~ 
(~~ #
PasswordPunctuationRule~~ 4
)~~4 5
;~~5 6
ListBoxRules 
. 
Add 
( !
PasswordSameEmailRule 2
)2 3
;3 4
}
ÄÄ 	
private
ÉÉ 
void
ÉÉ  
CLicButtonSaveUser
ÉÉ '
(
ÉÉ' (
object
ÉÉ( .
sender
ÉÉ/ 5
,
ÉÉ5 6
RoutedEventArgs
ÉÉ7 F
e
ÉÉG H
)
ÉÉH I
{
ÑÑ 	
if
ÖÖ 
(
ÖÖ 
CheckEmptyFields
ÖÖ  
(
ÖÖ  !
)
ÖÖ! "
==
ÖÖ# %
ALLOWED_VALUES
ÖÖ& 4
&&
ÖÖ5 7%
CheckEmailAddressFormat
ÜÜ '
(
ÜÜ' (
)
ÜÜ( )
==
ÜÜ* ,
ALLOWED_VALUES
ÜÜ- ;
&&
ÜÜ< >$
CheckUserNameExistence
áá &
(
áá& '&
txbUserNameCreateAccount
áá' ?
.
áá? @
Text
áá@ D
.
ááD E
Trim
ááE I
(
ááI J
)
ááJ K
)
ááK L
==
ááM O
ALLOWED_VALUES
ááP ^
&&
áá_ a(
CheckEmailAddressExistence
àà *
(
àà* +#
txbEmailCreateAccount
àà+ @
.
àà@ A
Text
ààA E
.
ààE F
Trim
ààF J
(
ààJ K
)
ààK L
)
ààL M
==
ààN P
ALLOWED_VALUES
ààQ _
)
àà_ `
{
ââ 
UserPOJO
ää 

userToSave
ää #
=
ää$ %
new
ää& )
UserPOJO
ää* 2
(
ää2 3
)
ää3 4
;
ää4 5

userToSave
ãã 
.
ãã 
Name
ãã 
=
ãã  !"
txbNameCreateAccount
ãã" 6
.
ãã6 7
Text
ãã7 ;
.
ãã; <
Trim
ãã< @
(
ãã@ A
)
ããA B
;
ããB C

userToSave
åå 
.
åå 
UserName
åå #
=
åå$ %&
txbUserNameCreateAccount
åå& >
.
åå> ?
Text
åå? C
.
ååC D
Trim
ååD H
(
ååH I
)
ååI J
;
ååJ K

userToSave
çç 
.
çç 
EmailAddress
çç '
=
çç( )#
txbEmailCreateAccount
çç* ?
.
çç? @
Text
çç@ D
.
ççD E
Trim
ççE I
(
ççI J
)
ççJ K
;
ççK L

userToSave
éé 
.
éé 
Password
éé #
=
éé$ %&
psbPasswordCreateAccount
éé& >
.
éé> ?
Password
éé? G
.
ééG H
Trim
ééH L
(
ééL M
)
ééM N
;
ééN O(
GoToCodeConfirmationWindow
èè *
(
èè* +

userToSave
èè+ 5
)
èè5 6
;
èè6 7
}
êê 
}
ëë 	
private
ìì 
int
ìì 
CheckEmptyFields
ìì $
(
ìì$ %
)
ìì% &
{
îî 	
int
ïï 
answer
ïï 
=
ïï 
ALLOWED_VALUES
ïï '
;
ïï' (
if
ññ 
(
ññ 
string
ññ 
.
ññ 
IsNullOrEmpty
ññ $
(
ññ$ %"
txbNameCreateAccount
ññ% 9
.
ññ9 :
Text
ññ: >
.
ññ> ?
Trim
ññ? C
(
ññC D
)
ññD E
)
ññE F
)
ññF G
{
óó 
lblNameWarning
òò 
.
òò 

Visibility
òò )
=
òò* +

Visibility
òò, 6
.
òò6 7
Visible
òò7 >
;
òò> ?
answer
ôô 
=
ôô 
DISALLOWED_VALUES
ôô *
;
ôô* +
}
öö 
else
õõ 
{
úú 
lblNameWarning
ùù 
.
ùù 

Visibility
ùù )
=
ùù* +

Visibility
ùù, 6
.
ùù6 7
	Collapsed
ùù7 @
;
ùù@ A
}
ûû 
if
üü 
(
üü 
string
üü 
.
üü 
IsNullOrEmpty
üü $
(
üü$ %&
txbUserNameCreateAccount
üü% =
.
üü= >
Text
üü> B
.
üüB C
Trim
üüC G
(
üüG H
)
üüH I
)
üüI J
)
üüJ K
{
††  
lblUserNameWarning
°° "
.
°°" #

Visibility
°°# -
=
°°. /

Visibility
°°0 :
.
°°: ;
Visible
°°; B
;
°°B C
answer
¢¢ 
=
¢¢ 
DISALLOWED_VALUES
¢¢ *
;
¢¢* +
}
££ 
else
§§ 
{
••  
lblUserNameWarning
¶¶ "
.
¶¶" #

Visibility
¶¶# -
=
¶¶. /

Visibility
¶¶0 :
.
¶¶: ;
	Collapsed
¶¶; D
;
¶¶D E
}
ßß 
if
®® 
(
®® 
string
®® 
.
®® 
IsNullOrEmpty
®® $
(
®®$ %#
txbEmailCreateAccount
®®% :
.
®®: ;
Text
®®; ?
.
®®? @
Trim
®®@ D
(
®®D E
)
®®E F
)
®®F G
)
®®G H
{
©© 
lblEmailWarning
™™ 
.
™™  
Content
™™  '
=
™™( )

Properties
™™* 4
.
™™4 5
	Resources
™™5 >
.
™™> ?
lblEmptyField
™™? L
;
™™L M
lblEmailWarning
´´ 
.
´´  

Visibility
´´  *
=
´´+ ,

Visibility
´´- 7
.
´´7 8
Visible
´´8 ?
;
´´? @
answer
¨¨ 
=
¨¨ 
DISALLOWED_VALUES
¨¨ *
;
¨¨* +
}
≠≠ 
else
ÆÆ 
{
ØØ 
lblEmailWarning
∞∞ 
.
∞∞  
Content
∞∞  '
=
∞∞( )
string
∞∞* 0
.
∞∞0 1
Empty
∞∞1 6
;
∞∞6 7
lblEmailWarning
±± 
.
±±  

Visibility
±±  *
=
±±+ ,

Visibility
±±- 7
.
±±7 8
	Collapsed
±±8 A
;
±±A B
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
≥≥$ %&
psbPasswordCreateAccount
≥≥% =
.
≥≥= >
Password
≥≥> F
.
≥≥F G
Trim
≥≥G K
(
≥≥K L
)
≥≥L M
)
≥≥M N
)
≥≥N O
{
¥¥  
lblPasswordWarning
µµ "
.
µµ" #

Visibility
µµ# -
=
µµ. /

Visibility
µµ0 :
.
µµ: ;
Visible
µµ; B
;
µµB C
answer
∂∂ 
=
∂∂ 
DISALLOWED_VALUES
∂∂ *
;
∂∂* +
}
∑∑ 
else
∏∏ 
{
ππ  
lblPasswordWarning
∫∫ "
.
∫∫" #

Visibility
∫∫# -
=
∫∫. /

Visibility
∫∫0 :
.
∫∫: ;
	Collapsed
∫∫; D
;
∫∫D E
}
ªª 
return
ºº 
answer
ºº 
;
ºº 
}
ΩΩ 	
private
øø 
int
øø %
CheckEmailAddressFormat
øø +
(
øø+ ,
)
øø, -
{
¿¿ 	'
RegularExpressionsLibrary
¡¡ %
regexInstance
¡¡& 3
=
¡¡4 5
new
¡¡6 9'
RegularExpressionsLibrary
¡¡: S
(
¡¡S T
)
¡¡T U
;
¡¡U V
Regex
¬¬ 
regexExpression
¬¬ !
=
¬¬" #
new
¬¬$ '
Regex
¬¬( -
(
¬¬- .
regexInstance
¬¬. ;
.
¬¬; <!
GetEMAIL_RULES_CHAR
¬¬< O
(
¬¬O P
)
¬¬P Q
)
¬¬Q R
;
¬¬R S
int
√√ 
answer
√√ 
=
√√ 
ALLOWED_VALUES
√√ '
;
√√' (
String
ƒƒ 
email
ƒƒ 
=
ƒƒ #
txbEmailCreateAccount
ƒƒ 0
.
ƒƒ0 1
Text
ƒƒ1 5
.
ƒƒ5 6
Trim
ƒƒ6 :
(
ƒƒ: ;
)
ƒƒ; <
;
ƒƒ< =
if
≈≈ 
(
≈≈ 
!
≈≈ 
regexExpression
≈≈  
.
≈≈  !
IsMatch
≈≈! (
(
≈≈( )
email
≈≈) .
)
≈≈. /
)
≈≈/ 0
{
∆∆ 
lblEmailWarning
«« 
.
««  
Content
««  '
=
««( )

Properties
««* 4
.
««4 5
	Resources
««5 >
.
««> ?
lblInvalidEmail
««? N
;
««N O
lblEmailWarning
»» 
.
»»  

Visibility
»»  *
=
»»+ ,

Visibility
»»- 7
.
»»7 8
Visible
»»8 ?
;
»»? @
answer
…… 
=
…… 
DISALLOWED_VALUES
…… *
;
……* +
}
   
else
ÀÀ 
{
ÃÃ 
lblEmailWarning
ÕÕ 
.
ÕÕ  
Content
ÕÕ  '
=
ÕÕ( )
string
ÕÕ* 0
.
ÕÕ0 1
Empty
ÕÕ1 6
;
ÕÕ6 7
lblEmailWarning
ŒŒ 
.
ŒŒ  

Visibility
ŒŒ  *
=
ŒŒ+ ,

Visibility
ŒŒ- 7
.
ŒŒ7 8
	Collapsed
ŒŒ8 A
;
ŒŒA B
answer
œœ 
=
œœ 
CheckPassword
œœ &
(
œœ& '
)
œœ' (
;
œœ( )
}
–– 
return
—— 
answer
—— 
;
—— 
}
““ 	
private
‘‘ 
int
‘‘ 
CheckPassword
‘‘ !
(
‘‘! "
)
‘‘" #
{
’’ 	
int
÷÷ 
answer
÷÷ 
=
÷÷ 
ALLOWED_VALUES
÷÷ '
;
÷÷' ('
RegularExpressionsLibrary
◊◊ %
regexInstance
◊◊& 3
=
◊◊4 5
new
◊◊6 9'
RegularExpressionsLibrary
◊◊: S
(
◊◊S T
)
◊◊T U
;
◊◊U V
Regex
ÿÿ 
regexExpression
ÿÿ !
;
ÿÿ! "
String
ŸŸ 
passwordChecked
ŸŸ "
=
ŸŸ# $&
psbPasswordCreateAccount
ŸŸ% =
.
ŸŸ= >
Password
ŸŸ> F
.
ŸŸF G
ToString
ŸŸG O
(
ŸŸO P
)
ŸŸP Q
.
ŸŸQ R
Trim
ŸŸR V
(
ŸŸV W
)
ŸŸW X
;
ŸŸX Y
if
⁄⁄ 
(
⁄⁄ 
passwordChecked
⁄⁄ 
.
⁄⁄  
Length
⁄⁄  &
<
⁄⁄' (%
MINIMUN_PASSWORD_LENGTH
⁄⁄) @
||
⁄⁄A C
passwordChecked
⁄⁄D S
.
⁄⁄S T
Length
⁄⁄T Z
>
⁄⁄[ \%
MAXIMUM_PASSWORD_LENGTH
⁄⁄] t
)
⁄⁄t u
{
€€ !
HighLightBrokenRule
‹‹ #
(
‹‹# $
ListBoxRules
‹‹$ 0
[
‹‹0 1
$num
‹‹1 2
]
‹‹2 3
)
‹‹3 4
;
‹‹4 5
answer
›› 
=
›› 
DISALLOWED_VALUES
›› *
;
››* +
}
ﬁﬁ 
else
ﬂﬂ 
{
‡‡ 
ClearBrokenRule
·· 
(
··  
ListBoxRules
··  ,
[
··, -
$num
··- .
]
··. /
)
··/ 0
;
··0 1
}
‚‚ 
regexExpression
„„ 
=
„„ 
new
„„ !
Regex
„„" '
(
„„' (
regexInstance
„„( 5
.
„„5 6$
GetAt_LEAST_TWO_NUMBER
„„6 L
(
„„L M
)
„„M N
)
„„N O
;
„„O P
if
‰‰ 
(
‰‰ 
!
‰‰ 
regexExpression
‰‰  
.
‰‰  !
IsMatch
‰‰! (
(
‰‰( )
passwordChecked
‰‰) 8
)
‰‰8 9
)
‰‰9 :
{
ÂÂ !
HighLightBrokenRule
ÊÊ #
(
ÊÊ# $
ListBoxRules
ÊÊ$ 0
[
ÊÊ0 1
$num
ÊÊ1 2
]
ÊÊ2 3
)
ÊÊ3 4
;
ÊÊ4 5
answer
ÁÁ 
=
ÁÁ 
DISALLOWED_VALUES
ÁÁ *
;
ÁÁ* +
}
ËË 
else
ÈÈ 
{
ÍÍ 
ClearBrokenRule
ÎÎ 
(
ÎÎ  
ListBoxRules
ÎÎ  ,
[
ÎÎ, -
$num
ÎÎ- .
]
ÎÎ. /
)
ÎÎ/ 0
;
ÎÎ0 1
}
ÏÏ 
regexExpression
ÌÌ 
=
ÌÌ 
new
ÌÌ !
Regex
ÌÌ" '
(
ÌÌ' (
regexInstance
ÌÌ( 5
.
ÌÌ5 6,
GetAt_LEAST_TWO_CAPITAL_LETTER
ÌÌ6 T
(
ÌÌT U
)
ÌÌU V
)
ÌÌV W
;
ÌÌW X
if
ÓÓ 
(
ÓÓ 
!
ÓÓ 
regexExpression
ÓÓ  
.
ÓÓ  !
IsMatch
ÓÓ! (
(
ÓÓ( )
passwordChecked
ÓÓ) 8
)
ÓÓ8 9
)
ÓÓ9 :
{
ÔÔ !
HighLightBrokenRule
 #
(
# $
ListBoxRules
$ 0
[
0 1
$num
1 2
]
2 3
)
3 4
;
4 5
answer
ÒÒ 
=
ÒÒ 
DISALLOWED_VALUES
ÒÒ *
;
ÒÒ* +
}
ÚÚ 
else
ÛÛ 
{
ÙÙ 
ClearBrokenRule
ıı 
(
ıı  
ListBoxRules
ıı  ,
[
ıı, -
$num
ıı- .
]
ıı. /
)
ıı/ 0
;
ıı0 1
}
ˆˆ 
regexExpression
˜˜ 
=
˜˜ 
new
˜˜ !
Regex
˜˜" '
(
˜˜' (
regexInstance
˜˜( 5
.
˜˜5 6/
!GetAt_LEAST_ONE_SPECIAL_CHARACTER
˜˜6 W
(
˜˜W X
)
˜˜X Y
)
˜˜Y Z
;
˜˜Z [
if
¯¯ 
(
¯¯ 
!
¯¯ 
regexExpression
¯¯  
.
¯¯  !
IsMatch
¯¯! (
(
¯¯( )
passwordChecked
¯¯) 8
)
¯¯8 9
)
¯¯9 :
{
˘˘ !
HighLightBrokenRule
˙˙ #
(
˙˙# $
ListBoxRules
˙˙$ 0
[
˙˙0 1
$num
˙˙1 2
]
˙˙2 3
)
˙˙3 4
;
˙˙4 5
answer
˚˚ 
=
˚˚ 
DISALLOWED_VALUES
˚˚ *
;
˚˚* +
}
¸¸ 
else
˝˝ 
{
˛˛ 
ClearBrokenRule
ˇˇ 
(
ˇˇ  
ListBoxRules
ˇˇ  ,
[
ˇˇ, -
$num
ˇˇ- .
]
ˇˇ. /
)
ˇˇ/ 0
;
ˇˇ0 1
}
ÄÄ 
regexExpression
ÅÅ 
=
ÅÅ 
new
ÅÅ !
Regex
ÅÅ" '
(
ÅÅ' (
regexInstance
ÅÅ( 5
.
ÅÅ5 6,
GetAt_LEAST_ONE_PUTUATION_MARK
ÅÅ6 T
(
ÅÅT U
)
ÅÅU V
)
ÅÅV W
;
ÅÅW X
if
ÇÇ 
(
ÇÇ 
!
ÇÇ 
regexExpression
ÇÇ  
.
ÇÇ  !
IsMatch
ÇÇ! (
(
ÇÇ( )
passwordChecked
ÇÇ) 8
)
ÇÇ8 9
)
ÇÇ9 :
{
ÉÉ !
HighLightBrokenRule
ÑÑ #
(
ÑÑ# $
ListBoxRules
ÑÑ$ 0
[
ÑÑ0 1
$num
ÑÑ1 2
]
ÑÑ2 3
)
ÑÑ3 4
;
ÑÑ4 5
answer
ÖÖ 
=
ÖÖ 
DISALLOWED_VALUES
ÖÖ *
;
ÖÖ* +
}
ÜÜ 
else
áá 
{
àà 
ClearBrokenRule
ââ 
(
ââ  
ListBoxRules
ââ  ,
[
ââ, -
$num
ââ- .
]
ââ. /
)
ââ/ 0
;
ââ0 1
}
ää 
int
ãã 
arrobaIndex
ãã 
=
ãã 
(
ãã #
txbEmailCreateAccount
ãã 4
.
ãã4 5
Text
ãã5 9
.
ãã9 :
IndexOf
ãã: A
(
ããA B
$char
ããB E
)
ããE F
!=
ããG I
-
ããJ K
$num
ããK L
)
ããL M
?
ããN O#
txbEmailCreateAccount
ããP e
.
ããe f
Text
ããf j
.
ããj k
IndexOf
ããk r
(
ããr s
$char
ããs v
)
ããv w
:
ããx y
$num
ããz {
;
ãã{ |
if
åå 
(
åå #
txbEmailCreateAccount
åå %
.
åå% &
Text
åå& *
.
åå* +
Trim
åå+ /
(
åå/ 0
)
åå0 1
.
åå1 2
	Substring
åå2 ;
(
åå; <
$num
åå< =
,
åå= >
arrobaIndex
åå? J
)
ååJ K
.
ååK L
Equals
ååL R
(
ååR S
passwordChecked
ååS b
)
ååb c
)
ååc d
{
çç !
HighLightBrokenRule
éé #
(
éé# $
ListBoxRules
éé$ 0
[
éé0 1
$num
éé1 2
]
éé2 3
)
éé3 4
;
éé4 5
answer
èè 
=
èè 
DISALLOWED_VALUES
èè *
;
èè* +
}
êê 
else
ëë 
{
íí 
ClearBrokenRule
ìì 
(
ìì  
ListBoxRules
ìì  ,
[
ìì, -
$num
ìì- .
]
ìì. /
)
ìì/ 0
;
ìì0 1
}
îî 
return
ïï 
answer
ïï 
;
ïï 
}
ññ 	
private
óó 
int
óó $
CheckUserNameExistence
óó *
(
óó* +
String
óó+ 1
userName
óó2 :
)
óó: ;
{
òò 	
UserManagerClient
ôô 
proxyServer
ôô )
=
ôô* +
new
ôô, /
UserManagerClient
ôô0 A
(
ôôA B
)
ôôB C
;
ôôC D
GenericClassOfint
öö 
	userIsNew
öö '
=
öö( )
proxyServer
öö* 5
.
öö5 6"
UserNameAlreadyExist
öö6 J
(
ööJ K
userName
ööK S
)
ööS T
;
ööT U
proxyServer
õõ 
.
õõ 
Close
õõ 
(
õõ 
)
õõ 
;
õõ  
if
ùù 
(
ùù 
	userIsNew
ùù 
.
ùù 
	CodeEvent
ùù #
==
ùù$ &!
ExceptionDictionary
ùù' :
.
ùù: ;
SUCCESFULL_EVENT
ùù; K
||
ùùL N
	userIsNew
ùùO X
.
ùùX Y
	CodeEvent
ùùY b
==
ùùc e!
ExceptionDictionary
ùùf y
.
ùùy z!
UNSUCCESFULL_EVENTùùz å
)ùùå ç
{
ûû 
if
üü 
(
üü 
	userIsNew
üü 
.
üü 
ObjectSaved
üü )
==
üü* ,
ALLOWED_VALUES
üü- ;
)
üü; <
{
†† 
return
°° 
ALLOWED_VALUES
°° )
;
°°) *
}
¢¢ 
else
££ 
{
§§ 
if
•• 
(
•• 
	userIsNew
•• !
.
••! "
ObjectSaved
••" -
==
••. 0
DISALLOWED_VALUES
••1 B
)
••B C
{
¶¶ 
new
ßß &
ErrorMessageDialogWindow
ßß 4
(
ßß4 5

Properties
ßß5 ?
.
ßß? @
	Resources
ßß@ I
.
ßßI J
txbErrorTitle
ßßJ W
,
ßßW X

Properties
ßßY c
.
ßßc d
	Resources
ßßd m
.
ßßm n"
lblRepeatedUserNameßßn Å
,ßßÅ Ç
ApplicationßßÉ é
.ßßé è
Currentßßè ñ
.ßßñ ó

MainWindowßßó °
)ßß° ¢
;ßß¢ £
}
®® 
else
©© 
{
™™ 
new
´´ &
ErrorMessageDialogWindow
´´ 4
(
´´4 5

Properties
´´5 ?
.
´´? @
	Resources
´´@ I
.
´´I J
txbErrorTitle
´´J W
,
´´W X

Properties
´´Y c
.
´´c d
	Resources
´´d m
.
´´m n$
lblFailToRegisterUser´´n É
,´´É Ñ
Application´´Ö ê
.´´ê ë
Current´´ë ò
.´´ò ô

MainWindow´´ô £
)´´£ §
;´´§ •
}
¨¨ 
return
≠≠ 
DISALLOWED_VALUES
≠≠ ,
;
≠≠, -
}
ÆÆ 
}
ØØ 
else
∞∞ 
{
±± 
ExceptionHandler
≤≤  
.
≤≤  !
HandleException
≤≤! 0
(
≤≤0 1
	userIsNew
≤≤1 :
.
≤≤: ;
	CodeEvent
≤≤; D
,
≤≤D E
$str
≤≤F O
)
≤≤O P
;
≤≤P Q
return
≥≥ 
DISALLOWED_VALUES
≥≥ (
;
≥≥( )
}
¥¥ 
}
∂∂ 	
private
∏∏ 
int
∏∏ (
CheckEmailAddressExistence
∏∏ .
(
∏∏. /
String
∏∏/ 5
email
∏∏6 ;
)
∏∏; <
{
ππ 	
UserManagerClient
∫∫ 
proxyServer
∫∫ )
=
∫∫* +
new
∫∫, /
UserManagerClient
∫∫0 A
(
∫∫A B
)
∫∫B C
;
∫∫C D
GenericClassOfint
ªª 

emailIsNew
ªª (
=
ªª) *
proxyServer
ªª+ 6
.
ªª6 7
EmailAlreadyExist
ªª7 H
(
ªªH I
email
ªªI N
)
ªªN O
;
ªªO P
proxyServer
ºº 
.
ºº 
Close
ºº 
(
ºº 
)
ºº 
;
ºº  
if
ΩΩ 
(
ΩΩ 

emailIsNew
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
||
ΩΩM O

emailIsNew
ΩΩP Z
.
ΩΩZ [
	CodeEvent
ΩΩ[ d
==
ΩΩe g!
ExceptionDictionary
ΩΩh {
.
ΩΩ{ |!
UNSUCCESFULL_EVENTΩΩ| é
)ΩΩé è
{
ææ 
if
øø 
(
øø 

emailIsNew
øø 
.
øø 
ObjectSaved
øø *
==
øø+ -
ALLOWED_VALUES
øø. <
)
øø< =
{
¿¿ 
return
¡¡ 
ALLOWED_VALUES
¡¡ )
;
¡¡) *
}
¬¬ 
else
√√ 
{
ƒƒ 
if
≈≈ 
(
≈≈ 

emailIsNew
≈≈ "
.
≈≈" #
ObjectSaved
≈≈# .
==
≈≈/ 1
DISALLOWED_VALUES
≈≈2 C
)
≈≈C D
{
∆∆ 
new
«« &
ErrorMessageDialogWindow
«« 4
(
««4 5

Properties
««5 ?
.
««? @
	Resources
««@ I
.
««I J
txbErrorTitle
««J W
,
««W X

Properties
««Y c
.
««c d
	Resources
««d m
.
««m n
lblRepeatedEmail
««n ~
,
««~ 
Application««Ä ã
.««ã å
Current««å ì
.««ì î

MainWindow««î û
)««û ü
;««ü †
}
»» 
else
…… 
{
   
new
ÀÀ &
ErrorMessageDialogWindow
ÀÀ 4
(
ÀÀ4 5

Properties
ÀÀ5 ?
.
ÀÀ? @
	Resources
ÀÀ@ I
.
ÀÀI J
txbErrorTitle
ÀÀJ W
,
ÀÀW X

Properties
ÀÀX b
.
ÀÀb c
	Resources
ÀÀc l
.
ÀÀl m$
lblFailToRegisterUserÀÀm Ç
,ÀÀÇ É
ApplicationÀÀÑ è
.ÀÀè ê
CurrentÀÀê ó
.ÀÀó ò

MainWindowÀÀò ¢
)ÀÀ¢ £
;ÀÀ£ §
}
ÃÃ 
return
ÕÕ 
DISALLOWED_VALUES
ÕÕ ,
;
ÕÕ, -
}
ŒŒ 
}
œœ 
else
–– 
{
—— 
ExceptionHandler
““  
.
““  !
HandleException
““! 0
(
““0 1

emailIsNew
““1 ;
.
““; <
	CodeEvent
““< E
,
““E F
$str
““G P
)
““P Q
;
““Q R
return
”” 
DISALLOWED_VALUES
”” (
;
””( )
}
‘‘ 
}
’’ 	
private
◊◊ 
void
◊◊ !
HighLightBrokenRule
◊◊ (
(
◊◊( )
Label
◊◊) .
missingRule
◊◊/ :
)
◊◊: ;
{
ÿÿ 	
missingRule
ŸŸ 
.
ŸŸ 

Foreground
ŸŸ "
=
ŸŸ# $
Brushes
ŸŸ% ,
.
ŸŸ, -
Red
ŸŸ- 0
;
ŸŸ0 1
}
⁄⁄ 	
private
€€ 
void
€€ 
ClearBrokenRule
€€ $
(
€€$ %
Label
€€% *
missingRule
€€+ 6
)
€€6 7
{
‹‹ 	
missingRule
›› 
.
›› 

Foreground
›› "
=
››# $
Brushes
››% ,
.
››, -
White
››- 2
;
››2 3
}
ﬁﬁ 	
private
‡‡ 
void
‡‡ $
ClickViewPasswordRules
‡‡ +
(
‡‡+ ,
object
‡‡, 2
sender
‡‡3 9
,
‡‡9 :"
MouseButtonEventArgs
‡‡; O
e
‡‡P Q
)
‡‡Q R
{
·· 	
brdPasswordRules
‚‚ 
.
‚‚ 

Visibility
‚‚ '
=
‚‚( )

Visibility
‚‚* 4
.
‚‚4 5
Visible
‚‚5 <
;
‚‚< ="
imgViewPasswordRules
„„  
.
„„  !

Visibility
„„! +
=
„„, -

Visibility
„„. 8
.
„„8 9
Hidden
„„9 ?
;
„„? @
}
ÂÂ 	
private
ÊÊ 
void
ÊÊ  
ClosePasswordRules
ÊÊ '
(
ÊÊ' (
object
ÊÊ( .
sender
ÊÊ/ 5
,
ÊÊ5 6"
MouseButtonEventArgs
ÊÊ7 K
e
ÊÊL M
)
ÊÊM N
{
ÁÁ 	
brdPasswordRules
ËË 
.
ËË 

Visibility
ËË '
=
ËË( )

Visibility
ËË* 4
.
ËË4 5
Hidden
ËË5 ;
;
ËË; <"
imgViewPasswordRules
ÈÈ  
.
ÈÈ  !

Visibility
ÈÈ! +
=
ÈÈ, -

Visibility
ÈÈ. 8
.
ÈÈ8 9
Visible
ÈÈ9 @
;
ÈÈ@ A
}
ÍÍ 	
private
ÏÏ 
void
ÏÏ 
ClickSeePassword
ÏÏ %
(
ÏÏ% &
object
ÏÏ& ,
sender
ÏÏ- 3
,
ÏÏ3 4"
MouseButtonEventArgs
ÏÏ5 I
e
ÏÏJ K
)
ÏÏK L
{
ÌÌ 	
lblViewPassword
ÓÓ 
.
ÓÓ 
Content
ÓÓ #
=
ÓÓ$ %&
psbPasswordCreateAccount
ÓÓ& >
.
ÓÓ> ?
Password
ÓÓ? G
.
ÓÓG H
ToString
ÓÓH P
(
ÓÓP Q
)
ÓÓQ R
;
ÓÓR S&
psbPasswordCreateAccount
ÔÔ $
.
ÔÔ$ %

Visibility
ÔÔ% /
=
ÔÔ0 1

Visibility
ÔÔ2 <
.
ÔÔ< =
	Collapsed
ÔÔ= F
;
ÔÔF G
lblViewPassword
 
.
 

Visibility
 &
=
' (

Visibility
) 3
.
3 4
Visible
4 ;
;
; <
}
ÒÒ 	
private
ÛÛ 
void
ÛÛ 
HidePassword
ÛÛ !
(
ÛÛ! "
object
ÛÛ" (
sender
ÛÛ) /
,
ÛÛ/ 0
MouseEventArgs
ÛÛ1 ?
e
ÛÛ@ A
)
ÛÛA B
{
ÙÙ 	
if
ıı 
(
ıı 
lblViewPassword
ıı 
.
ıı  
	IsVisible
ıı  )
)
ıı) *
{
ˆˆ &
psbPasswordCreateAccount
˜˜ (
.
˜˜( )

Visibility
˜˜) 3
=
˜˜4 5

Visibility
˜˜6 @
.
˜˜@ A
Visible
˜˜A H
;
˜˜H I&
psbPasswordCreateAccount
¯¯ (
.
¯¯( )
PasswordChar
¯¯) 5
=
¯¯6 7
$char
¯¯8 ;
;
¯¯; <&
psbPasswordCreateAccount
˘˘ (
.
˘˘( )
Password
˘˘) 1
=
˘˘2 3
(
˘˘4 5
string
˘˘5 ;
)
˘˘; <
lblViewPassword
˘˘< K
.
˘˘K L
Content
˘˘L S
;
˘˘S T
lblViewPassword
˙˙ 
.
˙˙  

Visibility
˙˙  *
=
˙˙+ ,

Visibility
˙˙- 7
.
˙˙7 8
	Collapsed
˙˙8 A
;
˙˙A B
}
˚˚ 
}
¸¸ 	
private
ˇˇ 
void
ˇˇ %
CLickButtonCancelSaving
ˇˇ ,
(
ˇˇ, -
object
ˇˇ- 3
sender
ˇˇ4 :
,
ˇˇ: ;
RoutedEventArgs
ˇˇ< K
e
ˇˇL M
)
ˇˇM N
{
ÄÄ 	
if
ÅÅ 
(
ÅÅ 
new
ÅÅ &
ConfirmationDialogWindow
ÅÅ +
(
ÅÅ+ ,

Properties
ÅÅ, 6
.
ÅÅ6 7
	Resources
ÅÅ7 @
.
ÅÅ@ A
txbWarningTitle
ÅÅA P
,
ÅÅP Q

Properties
ÅÅR \
.
ÅÅ\ ]
	Resources
ÅÅ] f
.
ÅÅf g$
txbWarningMessCloseWin
ÅÅg }
,
ÅÅ} ~
ApplicationÅÅ ä
.ÅÅä ã
CurrentÅÅã í
.ÅÅí ì

MainWindowÅÅì ù
)ÅÅù û
.ÅÅû ü
CloseWindowÅÅü ™
)ÅÅ™ ´
{
ÇÇ 
GoToLogInWindow
ÉÉ 
(
ÉÉ  
)
ÉÉ  !
;
ÉÉ! "
}
ÑÑ 
}
ÖÖ 	
private
áá 
void
áá 
GoToLogInWindow
áá $
(
áá$ %
)
áá% &
{
àà 	
	LogInUser
ââ 
	logInPage
ââ 
=
ââ  !
new
ââ" %
	LogInUser
ââ& /
(
ââ/ 0
)
ââ0 1
;
ââ1 2
this
ää 
.
ää 
NavigationService
ää "
.
ää" #
Navigate
ää# +
(
ää+ ,
	logInPage
ää, 5
)
ää5 6
;
ää6 7
NavigationService
ãã 
.
ãã 
RemoveBackEntry
ãã -
(
ãã- .
)
ãã. /
;
ãã/ 0
}
åå 	
private
çç 
void
çç (
GoToCodeConfirmationWindow
çç /
(
çç/ 0
UserPOJO
çç0 8

userToSave
çç9 C
)
ççC D
{
éé 	
CodeConfirmation
èè 

codeWindow
èè '
=
èè( )
new
èè* -
CodeConfirmation
èè. >
(
èè> ?#
txbEmailCreateAccount
èè? T
.
èèT U
Text
èèU Y
.
èèY Z
Trim
èèZ ^
(
èè^ _
)
èè_ `
,
èè` a

userToSave
èèb l
)
èèl m
;
èèm n
this
êê 
.
êê 
NavigationService
êê "
.
êê" #
Navigate
êê# +
(
êê+ ,

codeWindow
êê, 6
)
êê6 7
;
êê7 8
NavigationService
ëë 
.
ëë 
RemoveBackEntry
ëë -
(
ëë- .
)
ëë. /
;
ëë/ 0
}
íí 	
}
îî 
}ïï ≤
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