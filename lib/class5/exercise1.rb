#!/usr/bin/env ruby
#
# 5 points
#
# Serialization is the process of translating computer data into a format that
# can be stored (e.g. in a file) and reconstructed later by the same or
# different program.
#
# In other words, Ruby data is transformed into a String and saved to a file.
# Then that String is read from the file and transformed back into Ruby data.
#
# In a series of 4 exercises, you'll learn how Ruby serializes data to and from
# files.
#
# In this exercise, you'll play with YAML -- a human friendly data serialization
# format.
#
# Your first assignment is to write a program that displays an Array of
# corporate buzzwords transformed into YAML format:
#
#   $ ruby exercise1.rb
#   ---
#   - Incentivized methodologies
#   - Seemless innovation
#   - Corporate synergy
#   - Scalable globalization
#   - Monetized assets
#
# TIP: You need to fix the `records` method so it returns an Array containing
# the correct words.

require 'yaml'

def records
  ['change me']
end

puts records.to_yaml
