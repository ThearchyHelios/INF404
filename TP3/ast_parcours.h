/*
 * @Author: ThearchyHelios (Yilun JIANG)
 * @Date: 2021-02-03 18:19:14
 * @LastEditTime: 2023-02-16 14:51:43
 * @LastEditors: ThearchyHelios
 * @Description: 
 * @FilePath: /INF404/TP3/ast_parcours.h
 */
#ifndef __AST_PARCOURS__
#define __AST_PARCOURS__

void afficher(Ast expr);
// affiche l'arbre abstrait de l'expression arithmetique expr

int evaluation(Ast expr);
// calcule la valeur de l'expression arithmetique expr
// FONCTION A COMPLETER !

#endif
