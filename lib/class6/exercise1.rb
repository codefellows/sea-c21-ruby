#!/usr/bin/env ruby
#
# 5 points
#
# Write a program to figure out when you will turn (or perhaps when you did
# turn) one billion seconds old.
#
# For example, if you were born on August 3, 1976 at 1:31pm PST, the program
# should output the following:
#
#   $ ruby 1_one_billion_seconds.rb
#   I was born on 1976-08-03 13:31:00 -0700
#   And I turn one billion seconds old on 2008-04-11 15:17:40 -0700
#
# Be as accurate (or inaccurate) as you want.
#
# A few methods you might find useful:
#
#   Time.new(year, month, day, hour, min, sec, utc_offset) => Time
#
#     Returns a Time object based on given values. Months may be specified by
#     numbers from 1 to 12, or by the three-letter English month names. Hours
#     are specified on a 24-hour clock (0..23).
#
#     Time.new(2000, 1, 1, 20, 15, 0, '-07:00')  #=> 2000-01-01 20:15:00 -0700
#
#   Time + Integer => Time
#
#     Adds a number of seconds to Time and returns that value as a new Time
#     object.
#
#     t = Time.new    #=> 2014-07-23 14:46:32 -0700
#     t + 60          #=> 2014-07-23 14:47:32 -0700
#
# Hint: The program's output should use one, unified timezone. And you're free
# to use any timezone you want. Here's how timezones work in the US.
#
#   Non-daylight Savings US timezones with UTC offsets
#
#     Pacific Time  = -08:00
#     Mountain Time = -07:00
#     Central Time  = -06:00
#     Eastern Time  = -05:00
#
#   Daylight Savings US timezones with UTC offsets
#
#     Pacific Time  = -07:00
#     Mountain Time = -06:00
#     Central Time  = -05:00
#     Eastern Time  = -04:00
#
#     Daylight Savings begins at 2:00am on the second Sunday in March and
#     reverts to standard time on the first Sunday in November.
