#!/usr/bin/env ruby
#
# 5 points
#
# Write a program that follows the execution of a block and a method. It will
# display a short message informing the user when execution has reached both the
# method and the block.
#
# For example:
#
#   $ ruby exercise1.rb
#   Executing the method
#   Executing the block
#
# TIP: Don't over think this one. The simpler the better.

def follow_the_execution(&block)
  block # fix me
end

follow_the_execution do
  # fix me
end
