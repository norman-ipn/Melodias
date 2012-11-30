run:a.out
	./a.out
a.out:lex.yy.c csd.o
	gcc lex.yy.c csd.o
csd.o:csd.c
	gcc -c csd.c
lex.yy.c:Notas.l
	flex Notas.l
clean: 
	rm a.out
	rm lex.yy.c
	rm csd.o
	rm practica2.csd
ver:practica2.csd
	csound practica2.csd
