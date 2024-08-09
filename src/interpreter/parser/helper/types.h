#ifndef __TYPES_C_H
#define __TYPES_C_H
#define NO_VAL NULL, T_NONE

enum TYPE_VALUE { T_NUMBER, T_REAL, T_STRING, T_SAME_AS_FATHER, T_NONE };
union value {
      int number;
      float real;
      char *c;
};

struct wrapped_value {
      enum TYPE_VALUE type;
      union value *val;
};

struct token_value {
      int token;
      enum TYPE_VALUE expected_type;
      struct wrapped_value *w_value;
};

struct column_info {
      char *identifier;
      struct token_value *tkval;
      void *collection_attributes;
      void *collection_restrictions;
};

struct wrapped_value *i_init_w_value(int i);
struct wrapped_value *f_init_w_value(float f);
struct wrapped_value *c_init_w_value(char *c);
struct wrapped_value *new_wrapped_value(int token, union value *value);
struct token_value *new_token_value(int token, struct wrapped_value *w_value,
                                    enum TYPE_VALUE expected_type);
struct column_info *pack_column_info(char *identifier,
                                     struct token_value *tkval,
                                     void *attributes, void *restrictions);
#endif
