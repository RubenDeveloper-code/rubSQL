#include "types.h"
#include <stdlib.h>
#include <string.h>

struct token_value *new_token_value(int token, struct wrapped_value *w_value,
                                    enum TYPE_VALUE expected_type) {
      struct token_value *tkval = malloc(sizeof(struct token_value));
      tkval->token = token;
      tkval->w_value = w_value;
      return tkval;
}

struct wrapped_value *new_wrapped_value(int token, union value *value) {
      struct wrapped_value *w_value = malloc(sizeof(struct wrapped_value));
      w_value->type = token;
      w_value->val = value;
      return w_value;
}

struct wrapped_value *i_init_w_value(int i) {
      union value *val = malloc(sizeof(union value));
      val->number = i;
      struct wrapped_value *w_value = new_wrapped_value(T_NUMBER, val);
      return w_value;
}

struct wrapped_value *f_init_w_value(float f) {
      union value *val = malloc(sizeof(union value));
      val->real = f;
      struct wrapped_value *w_value = new_wrapped_value(T_REAL, val);
      return w_value;
}

struct wrapped_value *c_init_w_value(char *c) {
      union value *val = malloc(sizeof(union value));
      val->c = strdup(c);
      struct wrapped_value *w_value = new_wrapped_value(T_REAL, val);
      return w_value;
}

struct column_info *pack_column_info(char *identifier,
                                     struct token_value *tkval,
                                     void *attributes, void *restrictions) {
      struct column_info *col_info = malloc(sizeof(struct column_info));
      col_info->tkval = tkval;
      col_info->identifier = strdup(identifier);
      free(identifier);
      col_info->collection_attributes = attributes;
      col_info->collection_restrictions = restrictions;
      return col_info;
}
