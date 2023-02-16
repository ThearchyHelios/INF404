/*
 * @Author: ThearchyHelios (Yilun JIANG)
 * @Date: 2021-02-03 18:19:14
 * @LastEditTime: 2023-02-16 14:51:20
 * @LastEditors: ThearchyHelios
 * @Description: 
 * @FilePath: /INF404/TP3/type_ast.h
 */

#ifndef __TYPE_AST__
#define __TYPE_AST__

typedef enum
{
	OPERATION,
	VALEUR
} TypeAst;
typedef enum
{
	N_PLUS,
	N_MUL,
	N_MOINS
} TypeOperateur;

typedef struct noeud
{
	TypeAst nature;
	TypeOperateur operateur;
	struct noeud *gauche, *droite;
	int valeur;
} NoeudAst;

typedef NoeudAst *Ast;

#endif
