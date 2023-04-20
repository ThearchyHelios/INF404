#ifndef __AST_H__
#define __AST_H__

typedef enum
{
    TEXT,
    HEADER,
    BOLD,
    ITALIC,
    LINK,
    BLOD_ITALIC,
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