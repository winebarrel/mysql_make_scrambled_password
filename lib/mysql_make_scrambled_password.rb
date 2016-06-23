require 'mysql_make_scrambled_password/version'
require 'mysql_make_scrambled_password_core'

module MysqlMakeScrambledPassword
  def make_scrambled_password(password)
    MysqlMakeScrambledPassword::Core.make_scrambled_password(password)
  end
  module_function :make_scrambled_password

  def make_scrambled_password_323(password)
    MysqlMakeScrambledPassword::Core.make_scrambled_password_323(password)
  end
  module_function :make_scrambled_password_323
end
