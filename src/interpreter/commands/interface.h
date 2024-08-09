#ifndef __INTERFACE_PARSER_HPP__
#define __INTERFACE_PARSER_HPP__

#include "../parser/helper/helper.h"

#ifdef __cplusplus
extern "C" {
#endif

void create_table(char *identifier, void *col_info);
void create_database();

#ifdef __cplusplus
}
#endif
#endif
