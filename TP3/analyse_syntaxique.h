#include "analyse_lexicale.h"
/*
 * @Author: JIANG Yilun, Kante MAMADOU Diouhe
 * @Date: 2023-01-26 08:27:33
 * @LastEditTime: 2023-02-09 09:06:58
 * @LastEditors: ThearchyHelios
 * @Description:
 * @FilePath: /INF404/TP2/analyse_syntaxique.h
 */
void rec_expr(int *resultat);

void count_PARO_PARF(int *count_PARO, int *count_PARF);

void analyser(char *fichier, int *resultat);
// -- e.i : indifferent
// -- e.f : une Expression Arithmetique a ete lue dans fichier
// -- si elle ne contient pas d'erreur de syntaxe un message est affiche
// -- sinon le pgm termine sur un message d'erreur

int rank(Nature_Lexeme nature);

int math(int a, int b, Nature_Lexeme nature);