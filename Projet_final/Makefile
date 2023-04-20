PROGRAMS = markdown

all:$(PROGRAMS)

markdown.o: markdown.c lexer.h parser.h
	gcc -g -Wall -c markdown.c

ast.o: ast.c ast.h
	gcc -g -Wall -c ast.c

lexer.o: lexer.c lexer.h
	gcc -g -Wall -c lexer.c

parser.o: parser.c parser.h
	gcc -g -Wall -c parser.c

markdown: markdown.o lexer.o parser.o ast.o
	gcc -g -Wall -o markdown markdown.o lexer.o parser.o ast.o

clean:
	rm -f *.o $(PROGRAMS)

