/*
 * @Author: ThearchyHelios (Yilun JIANG)
 * @Date: 2021-02-10 17:29:52
 * @LastEditTime: 2023-03-02 09:45:46
 * @LastEditors: ThearchyHelios
 * @Description: 
 * @FilePath: /TP4/ast_parcours.c
 */

#include <stdio.h>
#include "type_ast.h"

void aff_operateur(TypeOperateur op)
{
	switch (op)
	{
	case N_PLUS:
		printf("+");
		break;
	case N_MOINS:
		printf("-");
		break;
	case N_MUL:
		printf("*");
		break;
	case N_DIV:
		printf("/");
		break;
	case N_PARO:
		printf("(");
		break;
	case N_PARF:
		printf(")");
		break;
	}
}

void afficher_ast(Ast expr)
{
	switch (expr->nature)
	{
	case OPERATION:
		printf("(");
		afficher_ast(expr->gauche);
		aff_operateur(expr->operateur);
		afficher_ast(expr->droite);
		printf(")");
		break;
	case VALEUR:
		printf("%d", expr->valeur);
		break;
	}
}

int evaluation(Ast expr)
{
	int valeur = 0;
	switch (expr->nature)
	{
	case OPERATION:
		switch (expr->operateur)
		{
		case N_PLUS:
			valeur = evaluation(expr->gauche) + evaluation(expr->droite);
			break;
		case N_MOINS:
			valeur = evaluation(expr->gauche) - evaluation(expr->droite);
			break;
		case N_MUL:
			valeur = evaluation(expr->gauche) * evaluation(expr->droite);
			break;
		case N_DIV:
			valeur = evaluation(expr->gauche) / evaluation(expr->droite);
			break;
		case N_PARO:
			valeur = evaluation(expr->gauche);
			break;
		case N_PARF:
			valeur = evaluation(expr->droite);
			break;
		}
		break;
	case VALEUR:
		valeur = expr->valeur;
		break;
	}
	return valeur;
}
