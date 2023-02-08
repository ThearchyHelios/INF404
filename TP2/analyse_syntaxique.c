/*
 * @Author: ThearchyHelios
 * @Date: 2023-01-26 08:28:49
 * @LastEditTime: 2023-02-08 22:03:00
 * @LastEditors: ThearchyHelios
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

void analyser(char *fichier, int *resultat, int *first)
{
    if (*first == 1)
    {
        demarrer(fichier);
        *first = 0;
    }
    Lexeme lexeme_en_cours = lexeme_courant();
    if (lexeme_en_cours.nature == ENTIER)
    {
        *resultat = lexeme_en_cours.valeur;
        avancer();
    }
    else if (lexeme_en_cours.nature == PARO)
    {
        avancer();
        analyser(fichier, resultat, first);
    }
    else
    {
        printf("Erreur de syntaxe entier \n");
        exit(1);
    }
    while (!fin_de_sequence())
    {
        lexeme_en_cours = lexeme_courant();
        printf("Valeur:%d \n", lexeme_en_cours.valeur);
        printf("Nature:%s \n", Nature_vers_Chaine(lexeme_en_cours.nature));
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
                    analyser(fichier, &temp, first);
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
                    analyser(fichier, &temp, first);
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
                    analyser(fichier, &temp, first);
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
                    *resultat = *resultat / lexeme_en_cours.valeur;
                    avancer();
                }
                else if (lexeme_en_cours.nature == PARO)
                {
                    int temp = 0;
                    analyser(fichier, &temp, first);
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