/*
 * @Author: ThearchyHelios (Yilun JIANG)
 * @Date: 2021-02-03 18:19:14
 * @LastEditTime: 2023-02-16 14:51:55
 * @LastEditors: ThearchyHelios
 * @Description: 
 * @FilePath: /INF404/TP3/ast_construction.h
 */

#ifndef __AST_CONSTRUCTION__
#define __AST_CONSTRUCTION__

#include "type_ast.h"

Ast creer_operation(TypeOperateur opr, Ast opde_gauche, Ast opde_droit);
// renvoie un arbre abstrait de nature OPERATEUR,  d'operateur opr
// et ayant opde_gauche et opde_droit pour fils gauche et droit

Ast creer_valeur(int val);
// renvoie un arbre abstrait "feuille", de nature OPERATION
// et de valeur val

#endif
