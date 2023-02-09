/*
 * @Author: JIANG Yilun, Kante MAMADOU Diouhe
 * @Date: 2023-01-26 08:28:49
 * @LastEditTime: 2023-02-09 08:42:48
 * @LastEditors: JIANG Yilun
 * @Description:
 * @FilePath: /INF404/TP2/analyse_syntaxique.c
 */

#include <stdio.h>
#include <stdlib.h>

#include "analyse_syntaxique.h"

int rank(Nature_Lexeme nature)
{
    switch (nature)
    {
    case PLUS:
    case MOINS:
        return 2;
        break;
    case MUL:
    case DIV:
        return 3;
        break;
    case PARO:
        return 1;
        break;
    case PARF:
        return 4;
        break;
    default:
        return 0;
        break;
    }
}

int math(int a, int b, Nature_Lexeme nature)
{
    switch (nature)
    {
    case PLUS:
        return a + b;
        break;
    case MOINS:
        return a - b;
        break;
    case MUL:
        return a * b;
        break;
    case DIV:
        return a / b;
        break;
    default:
        return 0;
        break;
    }
}

void rec_expr(int *resultat){
    Lexeme lexeme_en_cours = lexeme_courant();
    if (lexeme_en_cours.nature == ENTIER)
    {
        *resultat = lexeme_en_cours.valeur;
        avancer();
    }
    else if (lexeme_en_cours.nature == PARO)
    {
        avancer();
        rec_expr(resultat);
    }
    else
    {
        printf("Erreur de syntaxe entier \n");
        exit(1);
    }
    while (!fin_de_sequence())
    {
        lexeme_en_cours = lexeme_courant();
        switch (lexeme_en_cours.nature)
        {
        case PLUS:
            avancer();
            lexeme_en_cours = lexeme_courant();
            if (lexeme_en_cours.nature == ENTIER)
            {
                *resultat = *resultat + lexeme_en_cours.valeur;
                avancer();
            }
            else if (lexeme_en_cours.nature == PARO)
            {
                int temp = 0;
                rec_expr(&temp);
                *resultat = *resultat + temp;
            }
            else
            {
                printf("Erreur de syntaxe entier \n");
                exit(1);
            }
            break;
        case MOINS:
            avancer();
            lexeme_en_cours = lexeme_courant();
            if (lexeme_en_cours.nature == ENTIER)
            {
                *resultat = *resultat - lexeme_en_cours.valeur;
                avancer();
            }
            else if (lexeme_en_cours.nature == PARO)
            {
                int temp = 0;
                rec_expr(&temp);
                *resultat = *resultat - temp;
            }
            else
            {
                printf("Erreur de syntaxe entier \n");
                exit(1);
            }
            break;
        case MUL:
            avancer();
            lexeme_en_cours = lexeme_courant();
            if (lexeme_en_cours.nature == ENTIER)
            {
                *resultat = *resultat * lexeme_en_cours.valeur;
                avancer();
            }
            else if (lexeme_en_cours.nature == PARO)
            {
                int temp = 0;
                rec_expr(&temp);
                *resultat = *resultat * temp;
            }
            else
            {
                printf("Erreur de syntaxe entier \n");
                exit(1);
            }
            break;
        case DIV:
            avancer();
            lexeme_en_cours = lexeme_courant();
            if (lexeme_en_cours.nature == ENTIER)
            {
                if (lexeme_en_cours.valeur == 0)
                {
                    printf("Erreur de syntaxe division par 0 \n");
                    exit(1);
                }
                *resultat = *resultat / lexeme_en_cours.valeur;
                avancer();
            }
            else if (lexeme_en_cours.nature == PARO)
            {
                int temp = 0;
                rec_expr(&temp);
                if (temp == 0)
                {
                    printf("Erreur de syntaxe division par 0 \n");
                    exit(1);
                }
                *resultat = *resultat / temp;
            }
            else
            {
                printf("Erreur de syntaxe entier \n");
                exit(1);
            }
            break;
        case PARF:
            avancer();
            break;
        default:
            printf("Erreur de syntaxe \n");
            exit(1);
            break;
        }
    }
}

void analyser(char *fichier, int *resultat)
{
    demarrer(fichier);
    rec_expr(resultat);
    if (!fin_de_sequence())
    {
        printf("Erreur de syntaxe \n");
        exit(1);
    }
}