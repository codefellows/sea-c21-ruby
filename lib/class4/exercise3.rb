#!/usr/bin/env ruby
#
# 5 points
#
# Write a program that asks whether or not you like tacos:
#
# If you reply with 'y', then we're friends:
#
#   $ ruby exercise3.rb
#   Do you like eating tacos? (y or n)
#   y
#   We can be friends!
#
# If you reply with 'n', then we're enemies:
#
#   $ ruby exercise3.rb
#   Do you like eating tacos? (y or n)
#   n
#   Get out of my sight!
#
# And if you reply with **anything** else, you have to try again:
#
#   $ ruby exercise3.rb
#   Do you like eating tacos? (y or n)
#   maybe
#   Try again
#   Do you like eating tacos? (y or n)
#   y
#   We can be friends!
#
# TIP #1: You only need to change the `ask` method.
#
# TIP #2: Use `return` to preemptively exit the `ask` method.

def ask(question)
  question # change me
end

puts ask('Do you like eating tacos? (y or n)')
