/*
 * @Author: ThearchyHelios (Yilun JIANG)
 * @Date: 2023-04-19 22:01:10
 * @LastEditTime: 2023-04-21 10:47:52
 * @LastEditors: ThearchyHelios
 * @Description: 
 * @FilePath: /Projet_final/ast.h
 */
#ifndef __AST_H__
#define __AST_H__

typedef enum
{
    TEXT,
    HEADER,
    BOLD,
    ITALIC,
    LINK,
    QUOTE,
    STRIKETHROUGH,
    SUB,
    IMG,
} NodeType;

typedef struct Node
{
    NodeType type;
    char *value;
    struct Node *next;
} Node;

typedef struct
{
    Node *head;
    Node *tail;
} AST;

Node *create_node(NodeType type, char *value);
void free_node(Node *node);
AST *create_ast();
void append_node(AST *ast, Node *node);
void free_ast(AST *ast);

#endif