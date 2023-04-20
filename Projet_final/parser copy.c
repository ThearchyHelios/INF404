#include <string.h>
#include <stdio.h>
#include "parser.h"
#include "ast.h"

// 在 parser.c 中的 parse 函数中，我们从抽象语法树（AST）中读取节点，并将其转换为相应的 HTML 标签。

void parse(AST *ast, char *output) {
    Node *node = ast->head;
    size_t output_idx = 0;
    int header_level = 0;
    int bold_open = 0;
    int italic_open = 0;

    while (node != NULL) {
        switch (node->type) {
            case TEXT:
                if (header_level > 0) {
                    sprintf(output + output_idx, "</h%d>", header_level);
                    output_idx += strlen(output + output_idx);
                    header_level = 0;
                }
                output[output_idx++] = node->value[0];
                break;
            case HEADER:
                sscanf(node->value, "h%d", &header_level);
                sprintf(output + output_idx, "<%s>", node->value);
                output_idx += strlen(output + output_idx);
                break;
            case BOLD:
                if (!bold_open) {
                    strcpy(output + output_idx, "<strong>");
                    bold_open = 1;
                } else {
                    strcpy(output + output_idx, "</strong>");
                    bold_open = 0;
                }
                output_idx += strlen(output + output_idx);
                break;
            case ITALIC:
                if (!italic_open) {
                    strcpy(output + output_idx, "<em>");
                    italic_open = 1;
                } else {
                    strcpy(output + output_idx, "</em>");
                    italic_open = 0;
                }
                output_idx += strlen(output + output_idx);
                break;
            case LINK: {
                char link_text[256];
                char link_url[256];

                sscanf(node->value, "[%255[^]]](%255[^)])", link_text, link_url);
                sprintf(output + output_idx, "<a>%s</a>", link_url, link_text);
                output_idx += strlen(output + output_idx);
                break;
            }
        }

        node = node->next;
    }

    // Close open tags at the end of the input
    if (header_level > 0) {
        sprintf(output + output_idx, "</h%d>", header_level);
        output_idx += strlen(output + output_idx);
    }
    if (bold_open) {
        strcpy(output + output_idx, "</strong>");
        output_idx += strlen(output + output_idx);
    }
    if (italic_open) {
        strcpy(output + output_idx, "</em>");
        output_idx += strlen(output + output_idx);
    }

    output[output_idx] = '\0';
}

// parse 函数逐个处理 AST 中的节点，根据节点类型将它们转换为 HTML。例如，将标题节点转换为 <h1> 至 <h6> 标签，将粗体节点转换为 <strong> 标签，将斜体节点转换为 <em> 标签，以及将链接节点转换为 <a> 标签。这样，我们就可以根据 Markdown 输入生成正确的 HTML 输出。