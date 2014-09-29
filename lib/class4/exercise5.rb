#!/usr/bin/env ruby
#
# Section 9.5 on page 68
# 5 points
#
# Eventually, someone thought it would be terribly clever if putting a smaller
# number before a larger one meant you had to subtract the smaller one. As a
# result of this development, you must now suffer.
#
# Rewrite your previous program so that, when passed any integer between 1 and
# 3000, it returns a string containing the proper modern Roman numeral. In other
# words:
#
#   modern_roman_numeral(9)
#
# should return
#
#   'IX'
#
# Hint: Run the program from the shell like this:
#
#   $ ruby 5_modern_roman_numerals.rb 9
#   IX

def modern_roman_numeral(num)
  num # replace me
end

input = ARGV[0].to_i

abort 'Usage: 5_modern_roman_numerals [1-3000]' unless input.between?(1, 3000)

puts modern_roman_numeral(input)
