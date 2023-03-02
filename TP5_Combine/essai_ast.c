/*
 * @Author: ThearchyHelios (Yilun JIANG)
 * @Date: 2021-02-03 18:19:14
 * @LastEditTime: 2023-02-23 11:08:25
 * @LastEditors: ThearchyHelios
 * @Description:
 * @FilePath: /INF404/TP3_Combine/essai_ast.c
 */
#include <stdio.h>

#include "ast_construction.h"
#include "ast_parcours.h"

int main()
{

    Ast ast1, ast2, ast3, ast4, ast;

    ast1 = creer_valeur(12);
    ast2 = creer_valeur(18);
    ast3 = creer_operation(N_PLUS, ast1, ast2);
    ast4 = creer_valeur(2);
    ast = creer_operation(N_MUL, ast3, ast4);

    printf("Arbre abstrait de l'expression\n");
    afficher(ast);
    printf("\n\nValeur de l'expression : %d\n", evaluation(ast));
    return 0;
}
