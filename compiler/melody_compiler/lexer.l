%{
	#include <stdio.h>
	#include <stdlib.h>
	#include "parser.tab.h"

%}

NOTE	[A|B|C|D|E|F|G|]
NOTEL	[la|si|do|re|mi|fa|sol]
OCTAVE	[1|2|3|4|5|6|7]
SHARP	[#]
FLAT	[b]
MINOR	[m]

%%

{NOTE}		{
			yylval.symbol = *yytext;
			return (NOTE);
		}

{NOTEL}		{
			yylval.symbol = *yytext;
			return (NOTEL);
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
