#ifndef __CSD_H__
#define __CSD_H__

#include<stdio.h>


int escribir_encabezado(FILE*fp);
int escribir_fin(FILE*fp);
int escribir(FILE*fp,char*cadena,char*frecuencia);

#endif
