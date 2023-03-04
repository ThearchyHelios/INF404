/*
 * @Author: JIANG Yilun, Kante MAMADOU Diouhe
 * @Date: 2023-01-26 08:28:49
 * @LastEditTime: 2023-03-04 22:55:54
 * @LastEditors: ThearchyHelios
 * @Description:
 * @FilePath: /TP4/analyse_syntaxique.c
 */

#include <stdio.h>
#include <stdlib.h>

#include "analyse_syntaxique.h"

Ast rec_eag()
{
    return rec_seq_terme();
}

Ast rec_seq_terme()
{
    Ast a1 = rec_terme();
    return rec_suite_seq_terme(a1);
}

Ast rec_terme()
{
    return rec_facteur();
}

Ast rec_facteur()
{
    Lexeme LC = lexeme_courant();
    Ast a;
    switch (LC.nature)
    {
    case ENTIER:
        a = creer_valeur(LC.valeur);
        avancer();
        break;
    case PARO:
        avancer();
        a = rec_eag();
        if (LC.nature == PARF)
            avancer();
        else
            printf("Erreur de syntaxe : ')' attendu ");
        break;
    case MOINS:
        avancer();
        a = rec_facteur();
        a = creer_op_unaire(MOINS, a);
        break;
    default:
        printf("Erreur de syntaxe : '(', entier ou ')' attendu ");
        break;
    }
    return a;
}

Ast rec_suite_seq_terme(Ast *ag)
{
    Ast *ad, *a1;
    TypeOperateur op;
    Lexeme LC = lexeme_courant();
    switch (LC.nature)
    {
    case PLUS:
    case MOINS:
        op = rec_op1();
        ad = rec_terme();
        a1 = creer_operation(op, ag, ad);
        return rec_suite_seq_terme(a1);
    case MUL:
    case DIV:
        op = rec_op2();
        ad = rec_terme();
        a1 = creer_operation(op, ag, ad);
        return rec_suite_seq_terme(a1);
    default:
        return ag;
    }
}

Ast creer_op_unaire(TypeOperateur op, Ast a)
{
    Ast a1 = (Ast)malloc(sizeof(NoeudAst));
    a1->nature = OPERATION;
    a1->operateur = op;
    a1->gauche = a;
    a1->droite = NULL;
    return a1;
}

TypeOperateur rec_op1()
{
    Lexeme LC = lexeme_courant();
    TypeOperateur op;
    switch (LC.nature)
    {
    case PLUS:
        op = N_PLUS;
        avancer();
        break;
    case MOINS:
        op = N_MOINS;
        avancer();
        break;
    default:
        printf("Erreur de syntaxe : '+' ou '-' attendu ");
        break;
    }
    return op;
}

TypeOperateur rec_op2()
{
    Lexeme LC = lexeme_courant();
    TypeOperateur op;
    switch (LC.nature)
    {
    case MUL:
        op = N_MUL;
        avancer();
        break;
    case DIV:
        op = N_DIV;
        avancer();
        break;
    default:
        printf("Erreur de syntaxe : '*' ou '/' attendu ");
        break;
    }
    return op;
}

int evaluer(Ast a)
{
    int vg, vd;
    switch (a->nature)
    {
    case VALEUR:
        return a->valeur;
    case OPERATION:
        vg = evaluer(a->gauche);
        vd = evaluer(a->droite);
        switch (a->operateur)
        {
        case N_PLUS:
            return vg + vd;
        case N_MOINS:
            return vg - vd;
        case N_MUL:
            return vg * vd;
        case N_DIV:
            return vg / vd;
        }
    }
}

void analyser(char *fichier, Ast *arbre)
{
    // use all the functions above to analyse the syntax of the file
    printf("Analyse syntaxique\n");
    demarrer(fichier);
    *arbre = rec_eag();
    if (lexeme_courant().nature != FIN_SEQUENCE)
        printf("Erreur de syntaxe : fin de fichier attendue ");
    printf("Analyse syntaxique terminee\n");
    int resultat = evaluer(*arbre);
    printf("Resultat = %d", resultat);
}
