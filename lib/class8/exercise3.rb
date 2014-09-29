#!/usr/bin/env ruby
#
# 5 points
#
# Extend the previous program so the block also accepts a parameter and displays
# it's value to the user.
#
# For example:
#
#   $ ruby 3_follow_the_execution_part_3.rb
#   Executing the method
#   method_param is dinner
#   Executing the block
#   block_param is lunch
#
# Hint: Don't over think this one. The simpler the better.

def follow_the_execution(method_param, &block)
  method_param && block # replace me
end

follow_the_execution('dinner') do |block_param|
  block_param # replace me
end
