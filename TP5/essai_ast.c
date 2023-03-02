/*
 * @Author: ThearchyHelios (Yilun JIANG)
 * @Date: 2021-02-03 18:19:14
 * @LastEditTime: 2023-02-28 21:24:53
 * @LastEditors: ThearchyHelios
 * @Description: 
 * @FilePath: /INF404/TP3/essai_ast.c
 */
#include <stdio.h>

#include "ast_construction.h"
#include "ast_parcours.h"

int main()
{

    Ast ast1, ast2, ast3, ast4, ast5, ast;

    // 2 + 3 * 5 - 2
    // ast1 = creer_valeur(2);
    // ast2 = creer_valeur(3);
    // ast3 = creer_valeur(5);
    // ast4 = creer_operation(N_MUL, ast2, ast3);
    // ast5 = creer_operation(N_PLUS, ast1, ast4);
    // ast = creer_operation(N_MOINS, ast5, ast1);

    //(2 + 3) * (5 - 2)
    // ast1 = creer_valeur(2);
    // ast2 = creer_valeur(3);
    // ast3 = creer_valeur(5);
    // ast4 = creer_valeur(2);
    // ast5 = creer_operation(N_MOINS, ast3, ast4);
    // ast3 = creer_operation(N_PLUS, ast1, ast2);
    // ast4 = creer_operation(N_MUL, ast3, ast5);
    // ast = ast4;

    // 2 + 3 / (5 - 2)
    // ast1 = creer_valeur(2);
    // ast2 = creer_valeur(3);
    // ast3 = creer_valeur(5);
    // ast4 = creer_valeur(2);
    // ast5 = creer_operation(N_MOINS, ast3, ast4);
    // ast3 = creer_operation(N_DIV, ast2, ast5);
    // ast4 = creer_operation(N_PLUS, ast1, ast3);
    // ast = ast4;

    // 3 / (5 - 2 - 3)
    ast1 = creer_valeur(3);
    ast2 = creer_valeur(5);
    ast3 = creer_valeur(2);
    ast4 = creer_valeur(3);
    ast5 = creer_operation(N_MOINS, ast2, ast3);
    ast2 = creer_operation(N_MOINS, ast5, ast4);
    ast3 = creer_operation(N_DIV, ast1, ast2);
    ast = ast3;

    printf("Arbre abstrait de l'expression\n");
    afficher(ast);
    printf("\n\nValeur de l'expression : %d\n", evaluation(ast));
    return 0;
}
