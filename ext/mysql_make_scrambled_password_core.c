#include "mysql_make_scrambled_password_core.h"

static VALUE rb_make_scrambled_password(VALUE self, VALUE v_password) {
  Check_Type(v_password, T_STRING);

  size_t len = RSTRING_LEN(v_password);

  if (len < 1) {
    return v_password;
  }

  char *password = RSTRING_PTR(v_password);
  char *buf = alloca(CRYPT_MAX_PASSWORD_SIZE_PLUS_BUF + 1);

  make_scrambled_password(buf, password);

  return rb_str_new2(buf);
}

void Init_mysql_make_scrambled_password_core() {
  VALUE rb_mMysqlMakeScrambledPassword = rb_define_module("MysqlMakeScrambledPassword");
  VALUE rb_mMysqlMakeScrambledPasswordCore = rb_define_module_under(rb_mMysqlMakeScrambledPassword, "Core");
  rb_define_module_function(rb_mMysqlMakeScrambledPasswordCore, "make_scrambled_password", rb_make_scrambled_password, 1);
}
