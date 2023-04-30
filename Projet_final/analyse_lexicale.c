/*
 * @Author: ThearchyHelios (Yilun JIANG)
 * @Date: 2023-04-19 21:29:53
 * @LastEditTime: 2023-04-30 16:35:42
 * @LastEditors: ThearchyHelios
 * @Description: Analyse de la chaîne d'entrée et stockage des résultats dans un AST
 * @FilePath: /INF404/Projet_final/analyse_lexicale.c
 */
#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "analyse_lexicale.h"

int tab_level = 0;
int tabs_before_dash = 0;
int tabs_before_dash_old = 0;

// fonction count_tabs: 计算当前行在首部的 tab 数量或者空格数量
int count_tabs(const char *input, int dash_position)
{
    int count_tabs = 0;
    int count_spaces = 0;
    int i = dash_position - 1;

    // 计算前导制表符数量
    while (i >= 0 && input[i] == '\t')
    {
        count_tabs++;
        i--;
    }

    // 计算前导空格数量
    while (i >= 0 && input[i] == ' ')
    {
        count_spaces++;
        i--;
    }

    count_tabs += count_spaces / 2;
    return count_tabs;
}

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
        case '!':
        {
            if (input[i + 1] == '[')
            {
                size_t j = i + 2;
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
                        append_node(ast, create_node(IMG, input + i));
                        i = k;
                    }
                }
                else
                {
                    append_node(ast, create_node(TEXT, "!"));
                }
            }
            else
            {
                append_node(ast, create_node(TEXT, "!"));
            }
            break;
        }
        case '-':
        {
            if (input[i + 1] == ' ')
            {
                int tab_before_dash_before = tabs_before_dash;
                int tabs_before_dash_after = count_tabs(input, i);
                if (tabs_before_dash_after > tab_before_dash_before)
                {
                    for (int j = 0; j < tabs_before_dash_after - tab_before_dash_before; ++j)
                    {
                        append_node(ast, create_node(UL, "\t"));
                    }
                    tabs_before_dash = tabs_before_dash_after;
                }
                else if (tabs_before_dash_after < tab_before_dash_before)
                {
                    for (int j = 0; j < tab_before_dash_before - tabs_before_dash_after; ++j)
                    {
                        append_node(ast, create_node(UL_CLOSE, "\t"));
                    }
                    tabs_before_dash = tabs_before_dash_after;
                }
                if (input[i + 2] == '[' && input[i + 3] == 'x' && input[i + 4] == ']')
                {
                    append_node(ast, create_node(CHECKED_BOX, "[x]"));
                    i += 4;
                }
                else if (input[i + 2] == '[' && input[i + 3] == ' ' && input[i + 4] == ']')
                {
                    append_node(ast, create_node(UNCHECKED_BOX, "[ ]"));
                    i += 4;
                }
                append_node(ast, create_node(LI, "-"));
                ++i;
            }
            else
            {
                append_node(ast, create_node(TEXT, "-"));
            }
            break;
        }
        case '\n':
        {
            if (input[i + 1] == '\n')
            {
                if (tabs_before_dash_old > 0)
                {
                    for (int j = 0; j < tabs_before_dash_old; ++j)
                    {
                        append_node(ast, create_node(UL_CLOSE, "\t"));
                    }
                    tabs_before_dash_old = 0;
                }
                append_node(ast, create_node(BR, "\n"));
                ++i;
            }
            else
            {
                append_node(ast, create_node(BR, "\n"));
            }
            break;
        }
        case '`':
        {
            // 两种情况：代码块 ```CODE_BLOCK``` 和代码 `code`
            // 如果是代码块，那么就将两个```之间的内容都作为代码块的内容， 并且不进行翻译，比如\n -> <br>
            // 如果是代码，那么就将`之间的内容作为代码的内容
            size_t j = i + 1;
            while (j < len && input[j] != '`')
            {
                ++j;
            }
            if (j < len && input[j + 1] == '`' && input[j + 2] == '`')
            {
                size_t k = j + 3;
                while (k < len && input[k] != '`')
                {
                    ++k;
                }
                if (k < len)
                {
                    append_node(ast, create_node(CODE_BLOCK, input + i));
                    i = k;
                }
            }
            else
            {
                append_node(ast, create_node(CODE, "`"));
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
// lex 函数根据输入字符串中的字符来确定节点类型（例如，文本、标题、粗体、斜体和链接等），并将节点添加到 AST 中。这样，我们就可以在解析阶段使用 AST 来生成 HTML 输出。
