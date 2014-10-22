#!/usr/bin/env ruby
#
# 5 points
#
# Replace the `database` method with your solution from exercise 3.
#
# Write a program that loads the person key-value pairs, in YAML format, from
# anyone's `lib/class6/database.yml` file and then displays each key-value pair.
#
# Here's how it needs to work if Tim runs this program:
#
#   $ ruby exercise4.rb
#   Loaded 4 key-value pairs in /Users/tim/sea-c21-ruby/lib/class6/database.yml
#   :name => "George Harrison"
#   :age => 58
#   :song => "Something"
#   :url => "https://www.youtube.com/watch?v=UKAp-jRUp2o"
#
# TIP #1: See your solution for Class 5 Exercise 4.
#
# TIP #2: How do you iterate over key-value pairs in a Hash?
#
# TIP #3: Here's a method you may find useful:
#
#   object.inspect  #=> String
#
#     Returns a human-readable String of the Ruby `object`.
#
#     9000.inspect  #=> '9000'
#     'hi'.inspect  #=> '"hi"'

require 'yaml'

def database
  '/replace/me'
end

def load
  { fix: 'me' }
end

def display(pairs)
  pairs # fix me
end

person = load

puts "Loaded #{person.size} key-value pairs in #{database}"

display(person)
