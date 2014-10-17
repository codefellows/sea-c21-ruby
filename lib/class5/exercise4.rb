#!/usr/bin/env ruby
#
# 5 points
#
# Replace the `database` methods with your solution from exercise 2.
#
# Then write a program that loads the corporate buzzwords -- in YAML format --
# from anyone's `lib/class5/database.yml` file and displays the result.
#
# Here's how it needs to work if Tim runs this program successfully:
#
#   $ ruby exercise4.rb
#   Loaded 5 records from /Users/tim/sea-c21-ruby/lib/class5/database.yml
#   Incentivized methodologies
#   Seemless innovation
#   Corporate synergy
#   Scalable globalization
#   Monetized assets
#
# TIP: Read section 11.4 carefully.

require 'yaml'

def database
  '/replace/me'
end

def load
  ['fix me']
end

records = load

puts "Loaded #{records.size} records from #{database}"
puts records
