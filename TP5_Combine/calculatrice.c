/*
 * @Author: ThearchyHelios (Yilun JIANG)
 * @Date: 2023-02-28 21:06:02
 * @LastEditTime: 2023-02-28 21:49:10
 * @LastEditors: ThearchyHelios
 * @Description: 
 * @FilePath: /TP3_Combine/calculatrice.c
 */

#include <stdio.h>
#include <stdlib.h>

#include "type_ast.h"
#include "analyse_syntaxique.h"


int main(int argc, char *argv[])
{
    int resultat;
    if (argc != 2)
    {
        printf("Usage : %s fichier \n", argv[0]);
        exit(1);
    }
    analyser(argv[1], &resultat);
    printf("Resultat : %d \n", resultat);
    return 0;
}