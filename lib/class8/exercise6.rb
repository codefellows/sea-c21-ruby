#!/usr/bin/env ruby
#
# 5 points
#
# Extend your previous program to act like a smart grandfather clock. Given both
# the hour of the day and a sound, your program will display the sound that many
# times.
#
# For example:
#
#   $ ruby exercise6.rb 4 GONGGG!
#   GONGGG!
#   GONGGG!
#   GONGGG!
#   GONGGG!

def grandfather_clock(hour, sound, &block)
  hour && sound && block # fix me
end

input1 = ARGV[0]
input2 = ARGV[1]

usage = 'Usage: exercise6.rb 1-12 SOUND'

abort usage unless input1
abort usage unless input1.match(/^\d+$/)
abort usage unless input1.to_i.between?(1, 12)
abort usage unless input2

grandfather_clock(input1.to_i, input2) do |sound|
  puts sound
end
