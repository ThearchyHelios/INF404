/*
 * @Author: JIANG Yilun, Kante MAMADOU Diouhe
 * @Date: 2023-01-26 08:28:49
 * @LastEditTime: 2023-02-28 22:14:49
 * @LastEditors: ThearchyHelios
 * @Description:
 * @FilePath: /TP3_Combine/analyse_syntaxique.c
 */

#include <stdio.h>
#include <stdlib.h>

#include "analyse_syntaxique.h"
#include "ast_construction.h"
#include "type_ast.h"

void aff_operateur(TypeOperateur op)
{
    switch (op)
    {
    case N_PLUS:
        printf("+");
        break;
    case N_MOINS:
        printf("-");
        break;
    case N_MUL:
        printf("*");
        break;
    case N_DIV:
        printf("/");
        break;
    }
}

void afficher(Ast expr)
{
    switch (expr->nature)
    {
    case OPERATION:
        printf("(");
        afficher(expr->gauche);
        aff_operateur(expr->operateur);
        afficher(expr->droite);
        printf(")");
        break;
    case VALEUR:
        printf("%d", expr->valeur);
        break;
    }
}

// 将文件转换成AST，数字可以是多位数
Ast convert(FILE *fichier)
{
    Ast expr;
    char c;
    int valeur;
    while (fscanf(fichier, "%c", &c) != EOF || c == ' ')
    {
        if (c == '(')
        {
            fscanf(fichier, "%c", &c);
            if (c == '+')
            {
                expr = creer_operation(N_PLUS, convert(fichier), convert(fichier));
            }
            else if (c == '-')
            {
                expr = creer_operation(N_MOINS ,convert(fichier), convert(fichier));
            }
            else if (c == '*')
            {
                expr = creer_operation(N_MUL ,convert(fichier), convert(fichier));
            }
            else if (c == '/')
            {
                expr = creer_operation(N_DIV ,convert(fichier), convert(fichier));
            }
            fscanf(fichier, "%c", &c);
        }
        else if (c == ')')
        {
            break;
        }
        else if (c >= '0' && c <= '9')
        {
            valeur = c - '0';
            while (fscanf(fichier, "%c", &c) != EOF && c >= '0' && c <= '9')
            {
                valeur = valeur * 10 + c - '0';
            }
            expr = creer_valeur(valeur);
        }
    }
    return expr;
}


int evaluation(Ast expr)
{
    int valeur = 0;
    switch (expr->nature)
    {
    case OPERATION:
        switch (expr->operateur)
        {
        case N_PLUS:
            valeur = evaluation(expr->gauche) + evaluation(expr->droite);
            break;
        case N_MOINS:
            valeur = evaluation(expr->gauche) - evaluation(expr->droite);
            break;
        case N_MUL:
            valeur = evaluation(expr->gauche) * evaluation(expr->droite);
            break;
        case N_DIV:
            valeur = evaluation(expr->gauche) / evaluation(expr->droite);
            break;
        }
        break;
    case VALEUR:
        valeur = expr->valeur;
        break;
    }
    return valeur;
}

void analyser(char *fichier, int *resultat)
{
    FILE *f;
    Ast expr;
    f = fopen(fichier, "r");
    if (f == NULL)
    {
        printf("ERREUR_FICHIER\n");
        exit(1);
    }
    expr = convert(f);
    printf("Expression : \n");
    afficher(expr);
    printf(" = ");
    *resultat = evaluation(expr);
    printf("%d\n", *resultat);
}