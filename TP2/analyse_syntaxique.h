#include "analyse_lexicale.h"
/*
 * @Author: ThearchyHelios
 * @Date: 2023-01-26 08:27:33
 * @LastEditTime: 2023-02-09 08:37:58
 * @LastEditors: ThearchyHelios
 * @Description: 
 * @FilePath: /INF404/TP2/analyse_syntaxique.h
 */
void rec_expr(int *resultat);


void analyser(char *fichier, int *resultat);
// -- e.i : indifferent
// -- e.f : une Expression Arithmetique a ete lue dans fichier
// -- si elle ne contient pas d'erreur de syntaxe un message est affiche
// -- sinon le pgm termine sur un message d'erreur

int rank(Nature_Lexeme nature);

int math(int a, int b, Nature_Lexeme nature);