%{
	#include <stdio.h>
	#include <stdlib.h>
	#include "parser.tab.h"

%}

NOTE	[A|B|C|D|E|F|G]
OCTAVE	[1|2|3|4|5|6|7]
SHARP	[#]
FLAT	[b]
MINOR	[m]

%%

{NOTE}		{
			yylval.symbol = *yytext;
			return (NOTE);
		}
{OCTAVE}	{
			yylval.symbol = *yytext;
			return (OCTAVE);
		}
{SHARP}		{
			yylval.symbol = *yytext;
			return (SHARP);
		}
{FLAT}		{
			yylval.symbol = *yytext;
			return (FLAT);
		}
{MINOR}		{
			yylval.symbol = *yytext;	
			return (MINOR);
		}

%%
