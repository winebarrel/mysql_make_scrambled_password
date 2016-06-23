#include "mysql_make_scrambled_password_core.h"

static VALUE rb_make_scrambled_password(VALUE self, VALUE v_password) {
  char *password;
  char *buf;
  size_t len;

  Check_Type(v_password, T_STRING);

  len = RSTRING_LEN(v_password);

  if (len < 1) {
    return v_password;
  }

  password = RSTRING_PTR(v_password);
  buf = alloca(CRYPT_MAX_PASSWORD_SIZE_PLUS_BUF + 1);

  make_scrambled_password(buf, password);

  return rb_str_new2(buf);
}

void Init_mysql_make_scrambled_password_core() {
  VALUE rb_mMysqlMakeScrambledPassword = rb_define_module("MysqlMakeScrambledPassword");
  VALUE rb_mMysqlMakeScrambledPasswordCore = rb_define_module_under(rb_mMysqlMakeScrambledPassword, "Core");
  rb_define_module_function(rb_mMysqlMakeScrambledPasswordCore, "make_scrambled_password", rb_make_scrambled_password, 1);
}
