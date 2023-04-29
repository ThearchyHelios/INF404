/*
 * @Author: ThearchyHelios (Yilun JIANG)
 * @Date: 2023-04-19 21:29:53
 * @LastEditTime: 2023-04-29 20:01:05
 * @LastEditors: ThearchyHelios
 * @Description: Analyse de la chaîne d'entrée et stockage des résultats dans un AST
 * @FilePath: /INF404/Projet_final/lexer.c
 */
#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "lexer.h"

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

    count_tabs += count_spaces / 4;
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
                // tabs_before_dash = count_tabs(input, i);
                // printf("\ntabs_before_dash: %d\n", tabs_before_dash);
                // char li_value[16];
                // sprintf(li_value, "li-%d", tabs_before_dash);
                // append_node(ast, create_node(LI, li_value));
                // ++i;
                int tab_before_dash_before = tabs_before_dash;
                int tabs_before_dash_after = count_tabs(input, i);
                printf("\ntabs_before_dash_after: %d\n", tabs_before_dash_after);
                // 如果当前行的 tab 数量大于上一行的 tab 数量，那么就进入 UL 列表嵌套，使用UL
                // 如果当前行的 tab 数量小于上一行的 tab 数量，那么就退出 UL 列表嵌套，使用UL_CLOSE
                // 可以使用tabs_before_dash_old来记录上一行的 tab 数量
                if (tabs_before_dash_after > tabs_before_dash_old)
                {
                    for (int j = 0; j < tabs_before_dash_after - tabs_before_dash_old; ++j)
                    {
                        append_node(ast, create_node(UL, "\t"));
                    }
                    tabs_before_dash_old = tabs_before_dash_after;
                    printf("\ntabs_before_dash_old: %d\n", tabs_before_dash_old);
                }
                else if (tabs_before_dash_after < tabs_before_dash_old)
                {
                    for (int j = 0; j < tabs_before_dash_old - tabs_before_dash_after; ++j)
                    {
                        append_node(ast, create_node(UL_CLOSE, "\t"));
                    }
                    tabs_before_dash_old = tabs_before_dash_after;
                    printf("\ntabs_before_dash_old: %d\n", tabs_before_dash_old);
                }
            }
            else
            {
                append_node(ast, create_node(LI, "-"));
            }
            break;
        }
            // 制表符表示进入UL列表嵌套，制表符数量表示嵌套层级（使用count_tabs函数计算）
            // case '\t':
            // {
            //     int tab_count = count_tabs(input, i);
            //     printf("\ntab_count: %d\n", tab_count);
            //     if (tab_count > tab_level)
            //     {
            //         for (int j = 0; j < tab_count - tab_level; ++j)
            //         {
            //             append_node(ast, create_node(UL, "\t"));
            //         }
            //         tab_level = tab_count;
            //         printf("\ntab_level: %d\n", tab_level);
            //     }
            //     else if (tab_count < tab_level)
            //     {
            //         for (int j = 0; j < tab_level - tab_count; ++j)
            //         {
            //             append_node(ast, create_node(UL_CLOSE, "\t"));
            //         }
            //         tab_level = tab_count;
            //         printf("\ntab_level: %d\n", tab_level);
            //     }
            //     break;
            // }

        case '\n':
        {
            append_node(ast, create_node(BR, "\n"));
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
