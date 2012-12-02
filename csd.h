#ifndef __CSD_H__
#define __CSD_H__

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

void file_start( FILE *fp );
void file_end( FILE *fp );
void write_line( FILE *fp, char note, char octave, char bemol, char sharp, float start );

#endif
