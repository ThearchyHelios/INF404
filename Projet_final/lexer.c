/*
 * @Author: ThearchyHelios (Yilun JIANG)
 * @Date: 2023-04-19 21:29:53
 * @LastEditTime: 2023-04-20 12:13:12
 * @LastEditors: ThearchyHelios
 * @Description: Analyse de la chaîne d'entrée et stockage des résultats dans un AST
 * @FilePath: /Projet_final/lexer.c
 */
#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "lexer.h"

AST *lex(const char *input)
{
    AST *ast = create_ast();

    size_t len = strlen(input);
    for (size_t i = 0; i < len; ++i)
    {
        switch (input[i])
        {
        case '#':
        {
            size_t j = i;
            while (input[j] == '#')
            {
                ++j;
            }
            int header_level = j - i;
            if (input[j] == ' ')
            {
                char value[32];
                snprintf(value, sizeof(value), "h%d", header_level);
                append_node(ast, create_node(HEADER, value));
                i = j;
            }
            else
            {
                append_node(ast, create_node(TEXT, "#"));
            }
            break;
        }
        case '*':
        {
            if (input[i + 1] == '*')
            {
                append_node(ast, create_node(BOLD, "**"));
                ++i;
            }
            else
            {
                append_node(ast, create_node(ITALIC, "*"));
            }
            break;
        }
        case '[':
        {
            size_t j = i + 1;
            while (j < len && input[j] != ']')
            {
                ++j;
            }
            if (j < len && input[j + 1] == '(')
            {
                size_t k = j + 2;
                while (k < len && input[k] != ')')
                {
                    ++k;
                }
                if (k < len)
                {
                    append_node(ast, create_node(LINK, input + i));
                    i = k;
                }
            }
            else
            {
                append_node(ast, create_node(TEXT, "["));
            }
            break;
        }
        case '>':
        {
            append_node(ast, create_node(QUOTE, ">"));
            break;
        }
        case '~':
        {
            if (input[i + 1] == '~')
            {
                append_node(ast, create_node(STRIKETHROUGH, "~~"));
                ++i;
            }
            else
            {
                append_node(ast, create_node(SUB, "~"));
            }
            break;
        }
        default:
        {
            char value[2] = {input[i], '\0'};
            append_node(ast, create_node(TEXT, value));
            break;
        }
        }
    }
    return ast;
}
// 此代码在之前的回答中已经给出。lex 函数根据输入字符串中的字符来确定节点类型（例如，文本、标题、粗体、斜体和链接等），并将节点添加到 AST 中。这样，我们就可以在解析阶段使用 AST 来生成 HTML 输出。