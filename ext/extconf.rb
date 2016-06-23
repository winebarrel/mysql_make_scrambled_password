require 'mkmf'

mysql_config_version = (`mysql_config --version` rescue '').strip

if mysql_config_version
  mysql_config = 'mysql_config'
else
  mysql_config = with_config('mysql-config')
  mysql_config = 'mysql_config' if mysql_config == 'mysql_config'
end

if mysql_config
  includes = `#{mysql_config} --include`.chomp
  libs = `#{mysql_config} --libs`.chomp
  $INCFLAGS += ' ' + includes
  $libs = libs + ' ' + $libs
else
  have_header('mysql')
  have_library('mysqlclient')
end

create_makefile('ext/mysql_make_scrambled_password_core')
