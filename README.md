# mysql_make_scrambled_password

Execute MySQL PASSWORD() function in Ruby.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'mysql_make_scrambled_password'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install mysql_make_scrambled_password

## Usage

```ruby
require "mysql_make_scrambled_password"
include MysqlMakeScrambledPassword

make_scrambled_password("FOOBARZOO")
#=> "*70B45D8E18771E93E011F30DB91E80D6306EA4C3" }
```
