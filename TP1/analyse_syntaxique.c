/*
 * @Author: ThearchyHelios
 * @Date: 2023-01-26 08:28:49
 * @LastEditTime: 2023-01-31 17:51:11
 * @LastEditors: ThearchyHelios
 * @Description:
 * @FilePath: \INF404\TP1\analyse_syntaxique.c
 */

#include <stdio.h>
#include <stdlib.h>

#include "analyse_syntaxique.h"
#include "analyse_lexicale.h"

// need to solve the priority problem
void analyser(char *fichier, int *resultat)
{
    demarrer(fichier);
    *resultat = 0;
    Lexeme lexeme_en_cours = lexeme_courant();
    if (lexeme_en_cours.nature == ENTIER)
    {
        *resultat = lexeme_en_cours.valeur;
        avancer();
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
                else
                {
                    printf("Erreur de syntaxe entier \n");
                    exit(1);
                }
                break;
            case MUL:
                // need to solve the priority problem
                avancer();
                lexeme_en_cours = lexeme_courant();
                if (lexeme_en_cours.nature == ENTIER)
                {
                    *resultat = *resultat * lexeme_en_cours.valeur;
                    avancer();
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
                else
                {
                    printf("Erreur de syntaxe entier \n");
                    exit(1);
                }
                break;
            default:
                printf("Erreur de syntaxe \n");
                exit(1);
                break;
        }
    }
}