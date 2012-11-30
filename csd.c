#include "csd.h"

int escribir_encabezado(FILE*fp){
fprintf(fp,"<CSoundSynthesizer>\n\n");
fprintf(fp,"\t<CsOptions>\n");
fprintf(fp,"\t\t-odac\n");
fprintf(fp,"\t</CsOptions>\n");
fprintf(fp,"\t<CsInstruments>\n");
fprintf(fp,"\t\tsr	=	44100\n");
fprintf(fp,"\t\tksmps	=	32\n");
fprintf(fp,"\t\tnchnls	=	2\n");
fprintf(fp,"\t\t0dbfs	=	1\n\n");
fprintf(fp,"\t\tinstr 1\n");
fprintf(fp,"\t\t\tasig    oscils	.2, p4, 0\n");
fprintf(fp,"\t\t\t\touts    asig, asig\n");
fprintf(fp,"\t\tendin\n\n");
fprintf(fp,"\t</CsInstruments>\n\n");
fprintf(fp,"\t<CsScore>\n\n");
}

int escribir_fin(FILE*fp){
fprintf(fp,"\t</CsScore>\n\n");
fprintf(fp,"</CsoundSynthesizer>\n");
}

int escribir(FILE*fp,char*cadena,char*frecuencia){
fprintf(fp,"\t\ti 1	0	1	%s;%s\n",frecuencia,cadena);
}
