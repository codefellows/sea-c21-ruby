#!/usr/bin/env ruby
#
# 5 points
#
# Write a program that reads birth_dates.yml, creates or updates a name and
# birth date entry, and then saves ALL the birth dates back to birth_dates.yml.
#
# For example:
#
#   $ 4_birthday_helper_write.rb Alex 1997 4 22
#   Birthday 1997-04-22 00:00:00 UTC saved for Alex
#
# The program should also handle names that are not capitalized:
#
#   $ ruby 4_birthday_helper_write.rb jane 1984 11 21
#   Birthday 1984-11-21 00:00:00 UTC saved for Jane
#
# The program should also be compatible with 3_birthday_helper_read.rb.
#
#   $ ruby 4_birthday_helper_write.rb Frank 1944 1 29
#   Birthday 1944-01-29 00:00:00 UTC saved for Frank
#
#   $ ruby 3_birthday_helper_read.rb Frank
#   Frank will be 71 on 2015-01-29
#
# A few methods that may help you:
#
#   File.open(file_path, 'w') do |file| ... end
#
#     Opens the file_path for writing and allows the block to write String.
#     content to the file.
#
#     File.open('file.txt', 'w') do |file|
#       file.write 'Hello world'
#     end
#
#   YAML.dump(obj) => String
#
#     Parses an Object and returns a YAML formatted string.
#
#     YAML.dump('foo')                #=> "--- foo\n...\n"
#     YAML.dump({ 'foo' => 'bar' })   #=> "---\nfoo: bar\n"

require 'yaml'

name = ARGV[0]
year = ARGV[1].to_i
month = ARGV[2].to_i
day = ARGV[3].to_i

if name.nil? || year == 0 || month == 0 || day == 0
  abort 'Usage: 4_birthday_helper_write.rb NAME YEAR MONTH DAY'
end

# replace me
