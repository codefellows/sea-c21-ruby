#!/usr/bin/env ruby
#
# 5 points
#
# Write the following method:
#
#   Array#each_without_yolo(&block)
#
#     Iterates through an array, replacing all occurances of 'YOLO' and 'yolo'
#     with 'Life is too short'.
#
#     ['OMG', 'YOLO'].each_without_yolo { |e| puts e }
#
#     Output:
#
#     OMG
#     Life is too short

# replace me

%w(OMG YOLO ROTFL yolo FTW).each_without_yolo { |e| puts e }
