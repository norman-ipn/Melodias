%{

	#include <stdio.h>
	#include <stdlib.h>
	#include "csd.h"

	extern FILE *yyin;
	void yyerror( char *s );
	extern int yylex( void );
	extern char *yytext;
	FILE *fp = NULL;
	float start = 0;
	
%}

%union
{
	char 	symbol;
	int 	digit;
}

%start START

%token <symbol>	NOTE
%token <symbol>	NOTEL
%token <symbol>	OCTAVE
%token <symbol>	SHARP
%token <symbol>	FLAT
%token <symbol>	MINOR

%%

START: 	value START 
	| value

value: 	NOTE			{
					printf( "Nota: %c\n", $1 );
					write_line( fp, $1, '\0', '\0', '\0', start );
					start = start + 1.01;
				}

	| NOTE OCTAVE 		{
					printf( "Nota: %c, Octava: %c\n", $1, $2 );
					write_line( fp, $1, $2, '\0', '\0', start );
					start = start + 1.01;
				}

	| NOTE OCTAVE SHARP	{
					printf( "Nota: %c, Octava:  %c, Sostenido: %c\n", $1, $2, $3 );
					write_line( fp, $1, $2, '\0', $3, start );
					start = start + 1.01;
				}

	| NOTE OCTAVE FLAT	{
					printf( "Nota: %c, Octava: %c, Bemol: %c\n", $1, $2, $3 );
					write_line( fp, $1, $2, $3, '\0', start );
					start = start + 1.01;
				}

	| NOTEL			{
					printf( "Nota: %s\n", $1 );
					write_linel( fp, $1, '\0', '\0', '\0', start );
					start = start + 1.01;
				}

	| NOTEL OCTAVE 		{
					printf( "Nota: %s, Octava: %c\n", $1, $2 );
					write_linel( fp, $1, $2, '\0', '\0', start );
					start = start + 1.01;
				}

	| NOTE OCTAVE SHARP	{
					printf( "Nota: %s, Octava:  %c, Sostenido: %c\n", $1, $2, $3 );
					write_linel( fp, $1, $2, '\0', $3, start );
					start = start + 1.01;
				}

	| NOTEL OCTAVE FLAT	{
					printf( "Nota: %s, Octava: %c, Bemol: %c\n", $1, $2, $3 );
					write_linel( fp, $1, $2, $3, '\0', start );
					start = start + 1.01;
				}

%%

void yyerror( char *s )
{
	printf( "Error sintactico %s \n", s );
}

int main( int argc, char **argv )
{
	fp = fopen( "out.csd", "w" );
	
	file_start( fp );

	if( argc > 1 )
	{
		yyin = fopen( argv[1], "rt" );
	}
	else
	{
		yyin = stdin;
		yyin = fopen( "file.txt", "rt" );
	}

	yyparse();

	file_end( fp );
	
	return 0;
}
