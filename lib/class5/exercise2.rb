#!/usr/bin/env ruby
#
# 5 points
#
# Absolute paths start with a `/`. For example:
#
#   /Users/tim/sea-c21-ruby
#
# Relative paths don't start with a `/`. For example
#
#   lib/class5/database.yml
#
# Write a program that displays the absolute path for anyone's
# `lib/class5/database.yml` file.
#
# In other words, it needs to calculate an absolute path for
# `lib/class5/database.yml` that'll work on anyone's filesystem.
#
# So on Tim's laptop, it works like this:
#
#   $ ruby exercise2.rb
#   /Users/tim/sea-c21-ruby/lib/class5/database.yml
#
# And on Eva's laptop, it works like this:
#
#   $ ruby exercise2.rb
#   /Users/eva/Projects/sea-c21-ruby/lib/class5/database.yml
#
# TIP: Here are some methods that you may find useful:
#
#   File.absolute_path(relative)  #=> absolute
#
#     Converts a `relative` path String to an `absolute` path String. Relative
#     paths are referenced from the current working directory of the running
#     program.
#
#     So, if the program was started in the following directory:
#
#       /Users/tim/sea-c21-ruby/
#
#     Then `File.absolute_path('database.yml')` returns:
#
#       '/Users/tim/sea-c21-ruby/database.yml'
#
#   __FILE__  #=> relative
#
#     Returns the `relative` path String of the current Ruby file. Relative
#     paths are referenced from the current working directory of the running
#     program.
#
#     So, if the program was started in the following directory:
#
#       /Users/tim/sea-c21-ruby/
#
#     Then `__FILE__` returns:
#
#       'lib/class5/exercise2.rb'
#
#   File.dirname(long_path)  #=> shorter_path
#
#     Returns a `shorter_path` String with all components of the `long_path`
#     String except the last one.
#
#     So if the program called:
#
#       File.dirname('/Users/tim/sea-c21-ruby/lib/class5/exercise2.rb')
#
#     It would return:
#
#       '/Users/tim/sea-c21-ruby/lib/class5/'

def database
  '/change/me'
end

puts database
