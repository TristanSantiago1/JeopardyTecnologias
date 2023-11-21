Ì
}C:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameServer\JeopardyGame.Host\Connetion\OpenConnetion.cs
	namespace 	
JeopardyGame
 
. 
Host 
. 

Connection &
{ 
class 	
OpenConnection
 
{		 
static

 
void

 
Main

 
(

 
string

 
[

  
]

  !
args

" &
)

& '
{ 	
try 
{ 
using 
( 
ServiceHost "
host# '
=( )
new* -
ServiceHost. 9
(9 :
typeof: @
(@ A
JeopardyGameA M
.M N
ServiceN U
.U V!
ServiceImplementationV k
.k l$
ServicesReferenceAuthor	l ƒ
)
ƒ „
)
„ …
)
… †
{ 
host 
. 
Open 
( 
) 
;  
Console 
. 
	WriteLine %
(% &
$str& 9
)9 :
;: ;
Console 
. 
ReadLine $
($ %
)% &
;& '
} 
} 
catch 
( (
SecurityNegotiationException /
ex0 2
)2 3
{ 
ExceptionHandler  
.  !
LogException! -
(- .
ex. 0
,0 1
ExceptionDictionary2 E
.E F
ERRORF K
)K L
;L M
} 
catch 
( %
InvalidOperationException ,
ex- /
)/ 0
{ 
ExceptionHandler  
.  !
LogException! -
(- .
ex. 0
,0 1
ExceptionDictionary2 E
.E F
ERRORF K
)K L
;L M
} 
catch 
( (
AddressAlreadyInUseException /
ex0 2
)2 3
{ 
ExceptionHandler  
.  !
LogException! -
(- .
ex. 0
,0 1
ExceptionDictionary2 E
.E F
ERRORF K
)K L
;L M
}   
catch!! 
(!! 
ProtocolException!! $
ex!!% '
)!!' (
{"" 
ExceptionHandler##  
.##  !
LogException##! -
(##- .
ex##. 0
,##0 1
ExceptionDictionary##2 E
.##E F
ERROR##F K
)##K L
;##L M
}$$ 
catch%% 
(%% "
CommunicationException%% )
ex%%* ,
)%%, -
{&& 
ExceptionHandler''  
.''  !
LogException''! -
(''- .
ex''. 0
,''0 1
ExceptionDictionary''2 E
.''E F
ERROR''F K
)''K L
;''L M
}(( 
catch)) 
()) 
SystemException)) "
ex))# %
)))% &
{** 
ExceptionHandler++  
.++  !
LogException++! -
(++- .
ex++. 0
,++0 1
ExceptionDictionary++2 E
.++E F
ERROR++F K
)++K L
;++L M
},, 
}-- 	
}.. 
}// ¨
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