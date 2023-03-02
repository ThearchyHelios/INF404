/*
 * @Author: ThearchyHelios (Yilun JIANG)
 * @Date: 2023-02-23 11:03:47
 * @LastEditTime: 2023-02-23 11:03:49
 * @LastEditors: ThearchyHelios
 * @Description: 
 * @FilePath: /INF404/TP3_Combine/ast_construction.c
 */

#include <stdlib.h>
#include <stdio.h>

#include "type_ast.h"

Ast creer_operation(TypeOperateur opr, Ast opde_gauche, Ast opde_droit)
{
      Ast expr;
      expr = (Ast)malloc(sizeof(NoeudAst));
      expr->nature = OPERATION;
      expr->operateur = opr;
      if (opde_gauche == NULL || opde_droit == NULL)
      {
            printf("ERREUR_EXPRESSION\n");
            exit(1);
      }
      else
      {
            expr->gauche = opde_gauche;
            expr->droite = opde_droit;
      };
      return expr;
}

Ast creer_valeur(int val)
{
      Ast expr;
      expr = (Ast)malloc(sizeof(NoeudAst));
      expr->nature = VALEUR;
      expr->valeur = val;
      return expr;
}
