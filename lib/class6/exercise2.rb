#!/usr/bin/env ruby
#
# 5 points
#
# Write a program that asks a person their birth date and gives them a big
# CHEER! for each birthday they've had so far.
#
# For example:
#
#   $ ruby 2_happy_birthday.rb 2008 11 8
#   The birth date is 2008-11-08 00:00:00 UTC
#   CHEER!
#   CHEER!
#   CHEER!
#   CHEER!
#   CHEER!
#
# The program should only CHEER! for birthdays that have actually happened.
#
# Hint: Represent a birth date as a Time on midnight in UTC.
#
# UTC -- or Coordinated Universal Time -- is the primary time standard by which
# the world regulates clocks and time.
#
# A few methods you may find useful:
#
#   Time.utc(year, month, day) => Time
#
#     Returns a Time object based on given values, interpreted as UTC.
#
#     Time.utc(2000, 1, 1)   #=> 2000-01-01 00:00:00 UTC
#
#   Time#utc => Time
#
#     Returns a Time converted into UTC
#
#     t = Time.new  #=> 2014-07-23 15:38:44 -0700
#     t.utc         #=> 2014-07-23 22:38:44 UTC
#
#   Time#year => Integer
#   Time#month => Integer
#   Time#day => Integer
#
#     Returns the year, month, and day component of a Time.
#
#     t = Time.new  #=> 2014-07-23 08:58:58 -0700
#     t.year        #=> 2014
#     t.month       #=> 7
#     t.day         #=> 23
#
#   Integer#times do ... end
#
#     Iterates over the block Integer times.
#
#     2.times { puts 'hi' }
#
#     Output:
#
#     hi
#     hi

year = ARGV[0].to_i
month = ARGV[1].to_i
day = ARGV[2].to_i

if year == 0 || month == 0 || day == 0
  abort 'Usage: 2_happy_birthday.rb YEAR MONTH DAY'
end

# replace me
