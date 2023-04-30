PROGRAMS = markdown

all:$(PROGRAMS)

markdown.o: markdown.c analyse_lexicale.h analyse_syntaxique.h
	gcc -g -Wall -c markdown.c

ast.o: ast.c ast.h
	gcc -g -Wall -c ast.c

analyse_lexicale.o: analyse_lexicale.c analyse_lexicale.h
	gcc -g -Wall -c analyse_lexicale.c

analyse_syntaxique.o: analyse_syntaxique.c analyse_syntaxique.h
	gcc -g -Wall -c analyse_syntaxique.c

markdown: markdown.o analyse_lexicale.o analyse_syntaxique.o ast.o
	gcc -g -Wall -o markdown markdown.o analyse_lexicale.o analyse_syntaxique.o ast.o

clean:
	rm -f *.o $(PROGRAMS)

