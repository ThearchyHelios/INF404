/*
 * @Author: JIANG Yilun, Kante MAMADOU Diouhe
 * @Date: 2023-01-26 08:27:33
 * @LastEditTime: 2023-02-28 21:13:56
 * @LastEditors: ThearchyHelios
 * @Description:
 * @FilePath: /INF404/TP3_Combine/analyse_syntaxique.h
 */
#ifndef __AST_PARCOURS__
#define __AST_PARCOURS__

#include "type_ast.h"

void afficher(Ast expr);
// affiche l'arbre abstrait de l'expression arithmetique expr

int evaluation(Ast expr);
// calcule la valeur de l'expression arithmetique expr
// FONCTION A COMPLETER !

#endif

void analyser(char *fichier, int *resultat);
// -- e.i : indifferent
// -- e.f : une Expression Arithmetique a ete lue dans fichier
// -- si elle ne contient pas d'erreur de syntaxe un message est affiche
// -- sinon le pgm termine sur un message d'erreur