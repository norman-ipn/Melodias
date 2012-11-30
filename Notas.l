/* scanner for a toy Pascal-like language */

%{
#include <stdio.h>
#include "csd.h"
FILE *fp=NULL;
%}



%%

do|Do|DO|c|C {escribir(fp,yytext,"65,406");}

re|Re|RE|d|D {escribir(fp,yytext,"73,416");}

mi|Mi|MI|e|E {escribir(fp,yytext,"82,407");}

fa|Fa|FA|f|F {escribir(fp,yytext,"87,307");}

sol|Sol|SOL|g|G {escribir(fp,yytext,"97,999");}

la|La|LA|a|A {escribir(fp,yytext,"110");}

si|Si|SI|b|B {escribir(fp,yytext,"123,471");}

%%

int main( int argc, char **argv )
    {
    
    fp=fopen("practica2.csd","w");
    ++argv, --argc;  /* skip over program name */
    if ( argc > 0 ){
            yyin = fopen( argv[0], "r" );
	}
    else{
	    
            yyin = stdin;
	}
    escribir_encabezado(fp); 
    yylex();
    escribir_fin(fp);
    fclose(fp);
    return 0;
}

yywrap()
{
}
