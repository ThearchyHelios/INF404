/*
 * @Author: JIANG Yilun, Kante MAMADOU Diouhe
 * @Date: 2023-01-26 08:27:33
 * @LastEditTime: 2023-03-04 22:27:49
 * @LastEditors: ThearchyHelios
 * @Description:
 * @FilePath: /TP4/analyse_syntaxique.h
 */

#include "analyse_lexicale.h"
#include "type_ast.h"
#include "ast_construction.h"
#include "ast_parcours.h"

Ast rec_eag();
Ast rec_seq_terme();
Ast rec_terme();
Ast rec_facteur();
Ast rec_suite_seq_terme(Ast *ag);
Ast creer_op_unaire(TypeOperateur op, Ast a);
TypeOperateur rec_op1();
TypeOperateur rec_op2();
int evaluer(Ast a);

void analyser(char *fichier, Ast *arbre);
// -- e.i : indifferent
// -- e.f : une EAG a ete lue dans le fichier de nom nom_fichier
// -- si elle ne contient pas d’erreur arbre contient son arbre abstrait
// -- sinon une erreur est signalee