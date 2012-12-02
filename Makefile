run: melody notas.txt
	./melody "notas.txt"
compile: lex.yy.c parser.tab.c csd.c
	gcc lex.yy.c parser.tab.c csd.c -o melody -lfl -lm
getlexer:
	flex lexer.l
getparser: parser.y
	bison -d parser.y
clear:
	rm parser.tab.c
	rm parser.tab.h
	rm lex.yy.c
	rm out.csd
	rm melody
