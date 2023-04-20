#include <stdio.h>
#include <string.h>
#include "lexer.h"
#include "parser.h"

int main()
{
    char input[1024];
    char output[2048];
    // open a file
    FILE *fp = fopen("README.md", "r");
    if (fp == NULL)
    {
        printf("Error opening file: %s", "test.md");
        return 1;
    } else {
        // remove the ancient output file
        remove("output.html");
        // read each lines of the file
        while (fgets(input, 1024, fp) != NULL)
        {
            // lex the input
            AST *ast = lex(input);
            // parse the ast
            parse(ast, output);
            // print the output
            printf("%s", output);
            // free the ast
            free_ast(ast);
            // write the output to a file
            FILE *fp2 = fopen("output.html", "a");
            if (fp2 == NULL)
            {
                printf("Error opening file: %s", "output.html");
                return 1;
            } else {
                fputs(output, fp2);
                fclose(fp2);
            }
        }
        fclose(fp);
    }
}