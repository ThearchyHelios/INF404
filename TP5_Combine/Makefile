
calculatrice: calculatrice.o analyse_syntaxique.o ast_construction.o
	gcc -g -Wall -o calculatrice calculatrice.o analyse_syntaxique.o ast_construction.o


ast_construction.o: ast_construction.c type_ast.h
	gcc -g -Wall -c ast_construction.c

analyse_syntaxique.o: analyse_syntaxique.c type_ast.h ast_construction.h
	gcc -g -Wall -c analyse_syntaxique.c

calculatrice.o: calculatrice.c type_ast.h analyse_syntaxique.h
	gcc -g -Wall -c calculatrice.c

clean:
	rm *.o calculatrice

