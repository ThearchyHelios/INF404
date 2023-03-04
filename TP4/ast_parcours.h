/*
 * @Author: ThearchyHelios (Yilun JIANG)
 * @Date: 2021-02-03 18:19:14
 * @LastEditTime: 2023-03-02 09:43:24
 * @LastEditors: ThearchyHelios
 * @Description: 
 * @FilePath: /TP4/ast_parcours.h
 */
#ifndef __AST_PARCOURS__
#define __AST_PARCOURS__

void afficher_ast(Ast expr);
// affiche l'arbre abstrait de l'expression arithmetique expr

int evaluation(Ast expr);
// calcule la valeur de l'expression arithmetique expr
// FONCTION A COMPLETER !

#endif
