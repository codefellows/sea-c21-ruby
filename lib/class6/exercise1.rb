#!/usr/bin/env ruby
#
# 5 points
#
# Write a program that displays a Hash of person key-value pairs transformed
# into YAML format:
#
#   $ ruby exercise1.rb
#   ---
#   :name: George Harrison
#   :age: 58
#   :song: Something
#   :url: https://www.youtube.com/watch?v=UKAp-jRUp2o
#
# TIP: You need to fix the `person` method so it returns a Hash containing the
# correct key-value pairs.

require 'yaml'

def person
  { change: 'me' }
end

puts person.to_yaml
