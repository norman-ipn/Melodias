correr: out.csd
	csound out.csd
	
out.csd: melody heyjude.txt
	./melody "heyjude.txt"

melody: lex.yy.c parser.tab.c csd.c
	    gcc lex.yy.c parser.tab.c csd.c -o melody -lfl -lm

lex.yy.c: lexer.l
	  flex lexer.l

parser.tab.c: parser.y
	      bison -d parser.y
