¯>
}C:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameServer\JeopardyGame.Host\Connetion\OpenConnetion.cs
	namespace 	
JeopardyGame
 
. 
Host 
. 

Connection &
{ 
public 

static 
class 
OpenConnection &
{ 
static 
void 
Main 
( 
string 
[  
]  !
args" &
)& '
{ 	
try 
{ 
GetConectionString "
(" #
)# $
;$ %$
UserManagerDataOperation (
.( )
DeleteAllGuestUsers) <
(< =
)= >
;> ?
using 
( 
ServiceHost "
host# '
=( )
new* -
ServiceHost. 9
(9 :
typeof: @
(@ A
ServiceA H
.H I!
ServiceImplementationI ^
.^ _#
ServicesReferenceAuthor_ v
)v w
)w x
)x y
{ 
host 
. 
Open 
( 
) 
;  
Console 
. 
	WriteLine %
(% &

Properties& 0
.0 1
StringResources1 @
.@ A
ServerUpA I
)I J
;J K
Console 
. 
ReadLine $
($ %
)% &
;& '
} 
} 
catch 
( (
SecurityNegotiationException /
ex0 2
)2 3
{ 
ExceptionHandler    
.    !
LogException  ! -
(  - .
ex  . 0
,  0 1
ExceptionDictionary  2 E
.  E F
ERROR  F K
)  K L
;  L M
Console!! 
.!! 
	WriteLine!! !
(!!! "

Properties!!" ,
.!!, -
StringResources!!- <
.!!< =

ServerFail!!= G
)!!G H
;!!H I
Console"" 
."" 
ReadLine""  
(""  !
)""! "
;""" #
}## 
catch$$ 
($$ %
InvalidOperationException$$ ,
ex$$- /
)$$/ 0
{%% 
ExceptionHandler&&  
.&&  !
LogException&&! -
(&&- .
ex&&. 0
,&&0 1
ExceptionDictionary&&2 E
.&&E F
ERROR&&F K
)&&K L
;&&L M
Console'' 
.'' 
	WriteLine'' !
(''! "

Properties''" ,
.'', -
StringResources''- <
.''< =

ServerFail''= G
)''G H
;''H I
Console(( 
.(( 
ReadLine((  
(((  !
)((! "
;((" #
})) 
catch** 
(** (
AddressAlreadyInUseException** /
ex**0 2
)**2 3
{++ 
ExceptionHandler,,  
.,,  !
LogException,,! -
(,,- .
ex,,. 0
,,,0 1
ExceptionDictionary,,2 E
.,,E F
ERROR,,F K
),,K L
;,,L M
Console-- 
.-- 
	WriteLine-- !
(--! "

Properties--" ,
.--, -
StringResources--- <
.--< =

ServerFail--= G
)--G H
;--H I
Console.. 
... 
ReadLine..  
(..  !
)..! "
;.." #
}// 
catch00 
(00 
ProtocolException00 $
ex00% '
)00' (
{11 
ExceptionHandler22  
.22  !
LogException22! -
(22- .
ex22. 0
,220 1
ExceptionDictionary222 E
.22E F
ERROR22F K
)22K L
;22L M
Console33 
.33 
	WriteLine33 !
(33! "

Properties33" ,
.33, -
StringResources33- <
.33< =

ServerFail33= G
)33G H
;33H I
Console44 
.44 
ReadLine44  
(44  !
)44! "
;44" #
}55 
catch66 
(66 /
#CommunicationObjectFaultedException66 6
ex667 9
)669 :
{77 
ExceptionHandler88  
.88  !
LogException88! -
(88- .
ex88. 0
,880 1
ExceptionDictionary882 E
.88E F
ERROR88F K
)88K L
;88L M
Console99 
.99 
	WriteLine99 !
(99! "

Properties99" ,
.99, -
StringResources99- <
.99< =

ServerFail99= G
)99G H
;99H I
Console:: 
.:: 
ReadLine::  
(::  !
)::! "
;::" #
};; 
catch<< 
(<< "
CommunicationException<< )
ex<<* ,
)<<, -
{== 
ExceptionHandler>>  
.>>  !
LogException>>! -
(>>- .
ex>>. 0
,>>0 1
ExceptionDictionary>>2 E
.>>E F
ERROR>>F K
)>>K L
;>>L M
Console?? 
.?? 
	WriteLine?? !
(??! "

Properties??" ,
.??, -
StringResources??- <
.??< =

ServerFail??= G
)??G H
;??H I
Console@@ 
.@@ 
ReadLine@@  
(@@  !
)@@! "
;@@" #
}AA 
catchBB 
(BB 
SystemExceptionBB "
exBB# %
)BB% &
{CC 
ExceptionHandlerDD  
.DD  !
LogExceptionDD! -
(DD- .
exDD. 0
,DD0 1
ExceptionDictionaryDD2 E
.DDE F
ERRORDDF K
)DDK L
;DDL M
ConsoleEE 
.EE 
	WriteLineEE !
(EE! "

PropertiesEE" ,
.EE, -
StringResourcesEE- <
.EE< =

ServerFailEE= G
)EEG H
;EEH I
ConsoleFF 
.FF 
ReadLineFF  
(FF  !
)FF! "
;FF" #
}GG 
}HH 	
publicJJ 
staticJJ 
voidJJ 
GetConectionStringJJ -
(JJ- .
)JJ. /
{KK 	
stringLL 
conectionStringLL "
=LL# $
EnvironmentLL% 0
.LL0 1"
GetEnvironmentVariableLL1 G
(LLG H

PropertiesLLH R
.LLR S
StringResourcesLLS b
.LLb c
EnviromentVariableLLc u
)LLu v
;LLv w
varMM 
configurationMM 
=MM  
ConfigurationManagerMM  4
.MM4 5 
OpenExeConfigurationMM5 I
(MMI J"
ConfigurationUserLevelMMJ `
.MM` a
NoneMMa e
)MMe f
;MMf g
varNN "
conectionStringSectionNN &
=NN' (
configurationNN) 6
.NN6 7
ConnectionStringsNN7 H
.NNH I
ConnectionStringsNNI Z
[NNZ [

PropertiesNN[ e
.NNe f
StringResourcesNNf u
.NNu v
DBNameNNv |
]NN| }
;NN} ~
ifOO 
(OO "
conectionStringSectionOO &
!=OO' )
nullOO* .
)OO. /
{PP "
conectionStringSectionQQ &
.QQ& '
ConnectionStringQQ' 7
=QQ8 9
conectionStringQQ: I
;QQI J
configurationRR 
.RR 
SaveRR "
(RR" #!
ConfigurationSaveModeRR# 8
.RR8 9
ModifiedRR9 A
)RRA B
;RRB C 
ConfigurationManagerSS $
.SS$ %
RefreshSectionSS% 3
(SS3 4

PropertiesSS4 >
.SS> ?
StringResourcesSS? N
.SSN O
ConfigSectionSSO \
)SS\ ]
;SS] ^
}TT 
}UU 	
}YY 
}ZZ ¨
}C:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameServer\JeopardyGame.Host\Properties\AssemblyInfo.cs
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