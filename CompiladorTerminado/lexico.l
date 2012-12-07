%{
	#include <stdio.h>
	#include <stdlib.h>
	#include "sintactico.tab.h"	
%}

DIGITO [7]
GATO   [#]
NOTAS  [D|O|R|E|M|I|F|A|S|L|C|G|B|o|e|i|a|o|l]+
M      [m]

%%

{DIGITO} {return(DIGITO);}
{GATO}   {return(GATO);}
{NOTAS}	 {return(NOTAS);}
{M}      {return(M);}

%%
