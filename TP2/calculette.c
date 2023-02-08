/*
 * @Author: ThearchyHelios
 * @Date: 2023-01-26 08:53:57
 * @LastEditTime: 2023-02-08 21:54:25
 * @LastEditors: ThearchyHelios
 * @Description: 
 * @FilePath: /INF404/TP2/calculette.c
 */
# include <stdio.h>
# include <stdlib.h>

# include "analyse_syntaxique.h"

int main(int argc, char *argv[])
{
    int resultat;
    int first = 1;
    if (argc != 2)
    {
        printf("Usage : %s fichier \n", argv[0]);
        exit(1);
    }
    analyser(argv[1], &resultat, &first);
    printf("Resultat : %d \n", resultat);
    return 0;
}